
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
   (.out({ir[15],ir[14],ir[13],ir[12],ir[11],ir[10],ir[9],ir[8],ir[7],ir[6],ir[5],ir[2],ir[1],ir[0]}),
    in0,
    D,
    ctl_sp_dec,
    ctl_sp_inc,
    \stat_reg[0] ,
    \stat_reg[0]_0 ,
    rst_n_fl_reg_0,
    ccmd,
    crdy_0,
    rst_n_fl_reg_1,
    rst_n_fl_reg_2,
    rst_n_fl_reg_3,
    rst_n_fl_reg_4,
    rst_n_fl_reg_5,
    rst_n_fl_reg_6,
    rst_n_fl_reg_7,
    crdy_1,
    rst_n_fl_reg_8,
    \stat_reg[1] ,
    \sr_reg[4] ,
    cbus,
    \sr_reg[6] ,
    \iv[13]_i_3_0 ,
    \sr_reg[5] ,
    \sr_reg[3] ,
    \sr_reg[2] ,
    \sr_reg[7] ,
    \bdatw[12]_INST_0_i_30_0 ,
    gr4_bus1__0,
    gr3_bus1__0,
    gr2_bus1__0,
    gr1_bus1__0,
    gr3_bus1__0_0,
    gr4_bus1__0_1,
    gr5_bus1__0,
    gr3_bus1__0_2,
    gr2_bus1__0_3,
    \grn_reg[0] ,
    gr2_bus1__0_4,
    gr1_bus1__0_5,
    \grn_reg[1] ,
    \grn_reg[2] ,
    \grn_reg[3] ,
    \grn_reg[4] ,
    gr3_bus1__0_6,
    gr4_bus1__0_7,
    gr4_bus1__0_8,
    gr5_bus1__0_9,
    gr6_bus1__0,
    gr5_bus1__0_10,
    \grn_reg[0]_0 ,
    gr6_bus1__0_11,
    gr5_bus1__0_12,
    \grn_reg[1]_0 ,
    \grn_reg[2]_0 ,
    \grn_reg[3]_0 ,
    \grn_reg[4]_0 ,
    gr6_bus1__0_13,
    \grn_reg[0]_1 ,
    \grn_reg[1]_1 ,
    \grn_reg[2]_1 ,
    \grn_reg[3]_1 ,
    \grn_reg[4]_1 ,
    gr7_bus1__0,
    gr7_bus1__0_14,
    gr7_bus1__0_15,
    gr1_bus1__0_16,
    gr2_bus1__0_17,
    gr0_bus1__0,
    gr0_bus1__0_18,
    gr0_bus1__0_19,
    bbus_sel_0,
    gr5_bus1__0_20,
    gr5_bus1__0_21,
    gr5_bus1__0_22,
    gr5_bus1__0_23,
    gr1_bus1__0_24,
    gr1_bus1__0_25,
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
    gr1_bus1__0_26,
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
    gr4_bus1__0_27,
    gr4_bus1__0_28,
    gr4_bus1__0_29,
    abus_sel_0,
    gr0_bus1__0_30,
    gr0_bus1__0_31,
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
    gr0_bus1__0_32,
    gr3_bus1__0_33,
    gr3_bus1__0_34,
    gr7_bus1__0_35,
    gr7_bus1__0_36,
    gr7_bus1__0_37,
    gr2_bus1__0_38,
    gr2_bus1__0_39,
    gr2_bus1__0_40,
    gr6_bus1__0_41,
    gr6_bus1__0_42,
    gr6_bus1__0_43,
    \sr_reg[13] ,
    badrx,
    \stat_reg[2] ,
    \stat_reg[1]_0 ,
    bdatw,
    \bdatw[11]_INST_0_i_2_0 ,
    \iv[14]_i_31_0 ,
    \sr[7]_i_12 ,
    \bdatw[12]_INST_0_i_2_0 ,
    \bdatw[9]_INST_0_i_2_0 ,
    tout__1_carry_i_10_0,
    \bdatw[8]_INST_0_i_2_0 ,
    \badr[1]_INST_0_i_1 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \iv[14]_i_31_1 ,
    \badr[15]_INST_0_i_1 ,
    \sp_reg[0] ,
    \bdatw[9]_INST_0_i_2_1 ,
    bbus_o,
    \badr[0]_INST_0_i_1 ,
    cbus_sel_cr,
    \stat_reg[1]_1 ,
    \pc_reg[15] ,
    E,
    \sr_reg[1] ,
    \sr_reg[0] ,
    \sr_reg[1]_0 ,
    \sr_reg[1]_1 ,
    \sr_reg[0]_0 ,
    \sr_reg[1]_2 ,
    \sr_reg[1]_3 ,
    \sr_reg[1]_4 ,
    \sr_reg[0]_1 ,
    \sr_reg[1]_5 ,
    \sr_reg[1]_6 ,
    \sr_reg[1]_7 ,
    \sr_reg[0]_2 ,
    \sr_reg[1]_8 ,
    \sr_reg[1]_9 ,
    \sr_reg[1]_10 ,
    \sr_reg[1]_11 ,
    \sr_reg[0]_3 ,
    \sr_reg[1]_12 ,
    \sr_reg[1]_13 ,
    \sr_reg[0]_4 ,
    \sr_reg[1]_14 ,
    \sr_reg[1]_15 ,
    \sr_reg[1]_16 ,
    \sr_reg[0]_5 ,
    \sr_reg[1]_17 ,
    \sr_reg[1]_18 ,
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
    \sp_reg[0]_0 ,
    \sr_reg[15] ,
    \sr_reg[14] ,
    \sr_reg[13]_0 ,
    \sr_reg[12] ,
    \sr_reg[11] ,
    \sr_reg[10] ,
    \sr_reg[9] ,
    \sr_reg[8] ,
    \sr_reg[7]_0 ,
    \sr_reg[6]_0 ,
    \sr_reg[5]_0 ,
    \sr_reg[4]_0 ,
    \sr_reg[3]_0 ,
    \sr_reg[2]_0 ,
    \sr_reg[1]_19 ,
    \sr_reg[0]_6 ,
    brdy_0,
    badr,
    \badr[14]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1_0 ,
    \badr[15]_INST_0_i_1_1 ,
    \badr[15]_INST_0_i_1_2 ,
    DI,
    S,
    \bdatw[8]_INST_0_i_2_2 ,
    rst_n_0,
    \sr_reg[0]_7 ,
    \sr_reg[10]_0 ,
    \sr_reg[11]_0 ,
    \sr_reg[1]_20 ,
    \sr_reg[1]_21 ,
    \sr_reg[1]_22 ,
    \sr_reg[0]_8 ,
    \sr_reg[1]_23 ,
    \badr[6]_INST_0_i_1 ,
    tout__1_carry__0_i_1_0,
    \badr[10]_INST_0_i_1 ,
    tout__1_carry__1_i_1_0,
    fch_irq_req,
    clk,
    ctl_fetch_fl_reg_0,
    rst_n,
    brdy,
    Q,
    crdy,
    .badr_0_sp_1(badr_0_sn_1),
    \stat_reg[1]_2 ,
    \sp[15]_i_3_0 ,
    \bcmd[1] ,
    ctl_fetch_fl_reg_1,
    ctl_fetch_inferred_i_14_0,
    \stat_reg[1]_3 ,
    \stat_reg[1]_4 ,
    \stat[1]_i_3_0 ,
    \stat[1]_i_8_0 ,
    \stat[1]_i_8_1 ,
    \badr[15]_INST_0_i_2 ,
    \stat_reg[2]_0 ,
    \stat_reg[0]_1 ,
    \bdatw[8]_INST_0_i_6_0 ,
    \badr[15]_INST_0_i_90_0 ,
    \badr[15]_INST_0_i_49_0 ,
    \badr[15]_INST_0_i_136_0 ,
    \tr_reg[0]_0 ,
    \stat_reg[1]_5 ,
    \ccmd[1]_INST_0_i_1_0 ,
    \tr[15]_i_12_0 ,
    \stat[0]_i_8_0 ,
    ctl_fetch_inferred_i_4_0,
    \badr[15]_INST_0_i_77_0 ,
    ctl_fetch_inferred_i_15_0,
    ctl_fetch_fl_reg_2,
    \stat_reg[0]_2 ,
    \stat_reg[0]_3 ,
    \bdatw[15]_INST_0_i_15_0 ,
    \ccmd[3]_INST_0_i_13_0 ,
    \stat[0]_i_8_1 ,
    \tr[15]_i_8_0 ,
    ctl_fetch_ext_fl_reg_0,
    ctl_fetch_ext_fl_reg_1,
    \stat[1]_i_2_0 ,
    \badr[15]_INST_0_i_135_0 ,
    \bdatw[15]_INST_0_i_15_1 ,
    \badr[15]_INST_0_i_76_0 ,
    \sp[15]_i_6_0 ,
    \ccmd[4]_INST_0_i_6_0 ,
    ctl_fetch_inferred_i_15_1,
    \badr[15]_INST_0_i_27_0 ,
    \tr[15]_i_2_0 ,
    \stat_reg[2]_1 ,
    \ccmd[3]_INST_0_i_1_0 ,
    \ccmd[3]_INST_0_i_1_1 ,
    irq,
    ctl_fetch_fl_reg_3,
    \ccmd[1]_INST_0_i_1_1 ,
    \badr[15]_INST_0_i_1_3 ,
    sp_dec_0,
    \bdatw[12] ,
    \bdatw[13]_INST_0_i_2_0 ,
    \bdatw[8]_INST_0_i_1_0 ,
    \bdatw[9]_INST_0_i_1_0 ,
    \bdatw[10]_INST_0_i_1_0 ,
    \bdatw[11]_INST_0_i_1_0 ,
    \bdatw[12]_INST_0_i_1_0 ,
    \bdatw[13]_INST_0_i_1_0 ,
    \bdatw[14]_INST_0_i_1_0 ,
    \bdatw[15]_INST_0_i_1_0 ,
    \bdatw[8]_INST_0_i_2_3 ,
    \bdatw[8]_INST_0_i_2_4 ,
    \bdatw[9]_INST_0_i_2_2 ,
    \bdatw[9]_INST_0_i_2_3 ,
    \bdatw[10]_INST_0_i_2_0 ,
    \bdatw[10]_INST_0_i_2_1 ,
    \bdatw[11]_INST_0_i_2_1 ,
    \bdatw[11]_INST_0_i_2_2 ,
    \bdatw[12]_INST_0_i_2_1 ,
    \bdatw[12]_INST_0_i_2_2 ,
    \badrx[15] ,
    \badr[15]_INST_0_i_1_4 ,
    \pc_reg[15]_0 ,
    \bdatw[12]_INST_0_i_7_0 ,
    \bdatw[12]_INST_0_i_7_1 ,
    bank_sel,
    \bdatw[12]_INST_0_i_7_2 ,
    \bdatw[12]_INST_0_i_7_3 ,
    \bdatw[12]_INST_0_i_20_0 ,
    \bdatw[13]_INST_0_i_7_0 ,
    \bdatw[15]_INST_0_i_6_0 ,
    \bdatw[15]_INST_0_i_6_1 ,
    \bdatw[15]_INST_0_i_20_0 ,
    \bdatw[15]_INST_0_i_20_1 ,
    \bdatw[14]_INST_0_i_6_0 ,
    \bdatw[15]_INST_0_i_8_0 ,
    \bdatw[8]_INST_0_i_4_0 ,
    \bdatw[9]_INST_0_i_4_0 ,
    \bdatw[10]_INST_0_i_4_0 ,
    \bdatw[11]_INST_0_i_4_0 ,
    \bdatw[12]_INST_0_i_4_0 ,
    \bdatw[13]_INST_0_i_4_0 ,
    \bdatw[14]_INST_0_i_4_0 ,
    \bdatw[15]_INST_0_i_6_2 ,
    \bdatw[12]_INST_0_i_8 ,
    \bdatw[12]_INST_0_i_8_0 ,
    \bdatw[12]_INST_0_i_26_0 ,
    \bdatw[12]_INST_0_i_20_1 ,
    \bdatw[12]_INST_0_i_26_1 ,
    \bdatw[12]_INST_0_i_17_0 ,
    \bdatw[12]_INST_0_i_7_4 ,
    \bdatw[12]_INST_0_i_7_5 ,
    \bdatw[12]_INST_0_i_8_1 ,
    \bdatw[12]_INST_0_i_8_2 ,
    \bdatw[12]_INST_0_i_17_1 ,
    \badr[15]_INST_0_i_5 ,
    \badr[15]_INST_0_i_5_0 ,
    \badr[15]_INST_0_i_5_1 ,
    \bdatw[12]_INST_0_i_19_0 ,
    \bdatw[12]_INST_0_i_25_0 ,
    \bdatw[12]_INST_0_i_19_1 ,
    \bdatw[12]_INST_0_i_25_1 ,
    \badr[15]_INST_0_i_4 ,
    cpuid,
    \tr_reg[7]_0 ,
    \tr_reg[6]_0 ,
    \tr_reg[5]_0 ,
    O,
    \tr_reg[3]_0 ,
    \tr_reg[1]_0 ,
    \tr_reg[2]_0 ,
    \tr_reg[11]_0 ,
    \tr_reg[9]_0 ,
    \tr_reg[8]_0 ,
    \sr_reg[7]_1 ,
    \tr_reg[13]_0 ,
    \tr_reg[11]_1 ,
    \tr_reg[12]_0 ,
    \tr_reg[10]_0 ,
    \tr_reg[7]_1 ,
    \tr_reg[4]_0 ,
    \tr_reg[0]_1 ,
    \sr[4]_i_2_0 ,
    cbus_i,
    bdatr,
    \tr_reg[14]_0 ,
    \sr_reg[6]_1 ,
    \tr_reg[6]_1 ,
    \tr_reg[5]_1 ,
    \tr_reg[5]_2 ,
    \tr_reg[4]_1 ,
    \tr_reg[3]_1 ,
    \tr_reg[0]_2 ,
    \tr_reg[13]_1 ,
    \tr_reg[13]_2 ,
    \tr_reg[2]_1 ,
    \tr_reg[1]_1 ,
    \sr[6]_i_2_0 ,
    \sr[4]_i_10_0 ,
    \iv[0]_i_2_0 ,
    \iv[8]_i_2_0 ,
    \iv[10]_i_5_0 ,
    \iv[10]_i_5_1 ,
    abus_0,
    \iv[9]_i_2_0 ,
    \iv[9]_i_2_1 ,
    \iv[1]_i_7_0 ,
    \iv[1]_i_8_0 ,
    \iv[4]_i_2_0 ,
    \iv[13]_i_2_0 ,
    \iv[14]_i_4_0 ,
    \iv[1]_i_2_0 ,
    \sr[6]_i_3_0 ,
    \iv[11]_i_2_0 ,
    \iv[3]_i_2_0 ,
    \iv[7]_i_2_0 ,
    \iv[7]_i_2_1 ,
    \iv[7]_i_2_2 ,
    \iv[0]_i_2_1 ,
    \iv[11]_i_2_1 ,
    \iv[11]_i_2_2 ,
    \iv[10]_i_5_2 ,
    \iv[2]_i_2_0 ,
    \iv[6]_i_2_0 ,
    \iv[9]_i_2_2 ,
    \iv[14]_i_3_0 ,
    \iv[9]_i_2_3 ,
    \sr[7]_i_9_0 ,
    \iv[7]_i_2_3 ,
    \iv[2]_i_2_1 ,
    \iv[4]_i_2_1 ,
    \iv[8]_i_2_1 ,
    \tr_reg[14]_1 ,
    \iv[10]_i_2_0 ,
    \iv[2]_i_2_2 ,
    \iv[12]_i_5_0 ,
    \sr[6]_i_3_1 ,
    \iv[1]_i_2_1 ,
    \iv[9]_i_2_4 ,
    \iv[3]_i_2_1 ,
    \iv[11]_i_2_3 ,
    \iv[10]_i_5_3 ,
    \iv[5]_i_2_0 ,
    \iv[12]_i_7_0 ,
    \iv[13]_i_7_0 ,
    \sr[6]_i_3_2 ,
    \iv[4]_i_8_0 ,
    \iv[4]_i_8_1 ,
    \iv[12]_i_5_1 ,
    \iv[2]_i_2_3 ,
    \sr[7]_i_3_0 ,
    \bdatw[14]_INST_0_i_2_0 ,
    \bdatw[14]_INST_0_i_2_1 ,
    \bdatw[15]_INST_0_i_2_0 ,
    \bdatw[15]_INST_0_i_2_1 ,
    irq_vec,
    \iv[9]_i_2_5 ,
    \iv[9]_i_2_6 ,
    \badr[15]_INST_0_i_93_0 ,
    \sp_reg[6]_0 ,
    \sp_reg[5]_0 ,
    \sp_reg[3]_0 ,
    \sp_reg[1]_0 ,
    \sp_reg[2]_0 ,
    \sp_reg[9]_0 ,
    \sp_reg[8]_0 ,
    \sp_reg[14]_0 ,
    \sp_reg[13]_0 ,
    \sp_reg[11]_0 ,
    \sp_reg[12]_0 ,
    \sp_reg[10]_0 ,
    \sp_reg[7]_0 ,
    \sp_reg[4]_0 ,
    \sp_reg[0]_1 ,
    \sp_reg[15]_0 ,
    \sp_reg[15]_1 ,
    fch_pc,
    read_cyc,
    \sr[7]_i_3_1 ,
    \iv[1]_i_2_2 ,
    \iv[0]_i_7_0 ,
    \iv[10]_i_2_1 ,
    \iv[12]_i_5_2 ,
    \iv[4]_i_2_2 ,
    \iv[11]_i_2_4 ,
    \iv[12]_i_7_1 ,
    \iv[14]_i_4_1 ,
    \iv[2]_i_2_4 ,
    \sr[7]_i_9_1 ,
    \sr[7]_i_9_2 ,
    \sr[7]_i_9_3 ,
    irq_lev,
    p_0_in,
    fdat);
  output in0;
  output [2:0]D;
  output ctl_sp_dec;
  output ctl_sp_inc;
  output \stat_reg[0] ;
  output \stat_reg[0]_0 ;
  output rst_n_fl_reg_0;
  output [4:0]ccmd;
  output crdy_0;
  output rst_n_fl_reg_1;
  output rst_n_fl_reg_2;
  output rst_n_fl_reg_3;
  output rst_n_fl_reg_4;
  output rst_n_fl_reg_5;
  output rst_n_fl_reg_6;
  output rst_n_fl_reg_7;
  output crdy_1;
  output rst_n_fl_reg_8;
  output \stat_reg[1] ;
  output \sr_reg[4] ;
  output [14:0]cbus;
  output \sr_reg[6] ;
  output [0:0]\iv[13]_i_3_0 ;
  output \sr_reg[5] ;
  output \sr_reg[3] ;
  output \sr_reg[2] ;
  output \sr_reg[7] ;
  output [2:0]\bdatw[12]_INST_0_i_30_0 ;
  output gr4_bus1__0;
  output gr3_bus1__0;
  output gr2_bus1__0;
  output gr1_bus1__0;
  output gr3_bus1__0_0;
  output gr4_bus1__0_1;
  output gr5_bus1__0;
  output gr3_bus1__0_2;
  output gr2_bus1__0_3;
  output \grn_reg[0] ;
  output gr2_bus1__0_4;
  output gr1_bus1__0_5;
  output \grn_reg[1] ;
  output \grn_reg[2] ;
  output \grn_reg[3] ;
  output \grn_reg[4] ;
  output gr3_bus1__0_6;
  output gr4_bus1__0_7;
  output gr4_bus1__0_8;
  output gr5_bus1__0_9;
  output gr6_bus1__0;
  output gr5_bus1__0_10;
  output \grn_reg[0]_0 ;
  output gr6_bus1__0_11;
  output gr5_bus1__0_12;
  output \grn_reg[1]_0 ;
  output \grn_reg[2]_0 ;
  output \grn_reg[3]_0 ;
  output \grn_reg[4]_0 ;
  output gr6_bus1__0_13;
  output \grn_reg[0]_1 ;
  output \grn_reg[1]_1 ;
  output \grn_reg[2]_1 ;
  output \grn_reg[3]_1 ;
  output \grn_reg[4]_1 ;
  output gr7_bus1__0;
  output gr7_bus1__0_14;
  output gr7_bus1__0_15;
  output gr1_bus1__0_16;
  output gr2_bus1__0_17;
  output gr0_bus1__0;
  output gr0_bus1__0_18;
  output gr0_bus1__0_19;
  output [0:0]bbus_sel_0;
  output gr5_bus1__0_20;
  output gr5_bus1__0_21;
  output gr5_bus1__0_22;
  output gr5_bus1__0_23;
  output gr1_bus1__0_24;
  output gr1_bus1__0_25;
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
  output gr1_bus1__0_26;
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
  output gr4_bus1__0_27;
  output gr4_bus1__0_28;
  output gr4_bus1__0_29;
  output [2:0]abus_sel_0;
  output gr0_bus1__0_30;
  output gr0_bus1__0_31;
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
  output gr0_bus1__0_32;
  output gr3_bus1__0_33;
  output gr3_bus1__0_34;
  output gr7_bus1__0_35;
  output gr7_bus1__0_36;
  output gr7_bus1__0_37;
  output gr2_bus1__0_38;
  output gr2_bus1__0_39;
  output gr2_bus1__0_40;
  output gr6_bus1__0_41;
  output gr6_bus1__0_42;
  output gr6_bus1__0_43;
  output [1:0]\sr_reg[13] ;
  output [15:0]badrx;
  output \stat_reg[2] ;
  output \stat_reg[1]_0 ;
  output [15:0]bdatw;
  output \bdatw[11]_INST_0_i_2_0 ;
  output \iv[14]_i_31_0 ;
  output \sr[7]_i_12 ;
  output \bdatw[12]_INST_0_i_2_0 ;
  output \bdatw[9]_INST_0_i_2_0 ;
  output tout__1_carry_i_10_0;
  output \bdatw[8]_INST_0_i_2_0 ;
  output \badr[1]_INST_0_i_1 ;
  output \bdatw[8]_INST_0_i_2_1 ;
  output \iv[14]_i_31_1 ;
  output \badr[15]_INST_0_i_1 ;
  output \sp_reg[0] ;
  output \bdatw[9]_INST_0_i_2_1 ;
  output [15:0]bbus_o;
  output \badr[0]_INST_0_i_1 ;
  output [1:0]cbus_sel_cr;
  output [15:0]\stat_reg[1]_1 ;
  output [15:0]\pc_reg[15] ;
  output [0:0]E;
  output [0:0]\sr_reg[1] ;
  output [0:0]\sr_reg[0] ;
  output [0:0]\sr_reg[1]_0 ;
  output [0:0]\sr_reg[1]_1 ;
  output [0:0]\sr_reg[0]_0 ;
  output [0:0]\sr_reg[1]_2 ;
  output [0:0]\sr_reg[1]_3 ;
  output [0:0]\sr_reg[1]_4 ;
  output [0:0]\sr_reg[0]_1 ;
  output [0:0]\sr_reg[1]_5 ;
  output [0:0]\sr_reg[1]_6 ;
  output [0:0]\sr_reg[1]_7 ;
  output [0:0]\sr_reg[0]_2 ;
  output [0:0]\sr_reg[1]_8 ;
  output [0:0]\sr_reg[1]_9 ;
  output [0:0]\sr_reg[1]_10 ;
  output [0:0]\sr_reg[1]_11 ;
  output [0:0]\sr_reg[0]_3 ;
  output [0:0]\sr_reg[1]_12 ;
  output [0:0]\sr_reg[1]_13 ;
  output [0:0]\sr_reg[0]_4 ;
  output [0:0]\sr_reg[1]_14 ;
  output [0:0]\sr_reg[1]_15 ;
  output [0:0]\sr_reg[1]_16 ;
  output [0:0]\sr_reg[0]_5 ;
  output [0:0]\sr_reg[1]_17 ;
  output [0:0]\sr_reg[1]_18 ;
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
  output \sp_reg[0]_0 ;
  output \sr_reg[15] ;
  output \sr_reg[14] ;
  output \sr_reg[13]_0 ;
  output \sr_reg[12] ;
  output \sr_reg[11] ;
  output \sr_reg[10] ;
  output \sr_reg[9] ;
  output \sr_reg[8] ;
  output \sr_reg[7]_0 ;
  output \sr_reg[6]_0 ;
  output \sr_reg[5]_0 ;
  output \sr_reg[4]_0 ;
  output \sr_reg[3]_0 ;
  output \sr_reg[2]_0 ;
  output \sr_reg[1]_19 ;
  output \sr_reg[0]_6 ;
  output brdy_0;
  output [15:0]badr;
  output [3:0]\badr[14]_INST_0_i_1 ;
  output [3:0]\badr[15]_INST_0_i_1_0 ;
  output [1:0]\badr[15]_INST_0_i_1_1 ;
  output [0:0]\badr[15]_INST_0_i_1_2 ;
  output [2:0]DI;
  output [3:0]S;
  output \bdatw[8]_INST_0_i_2_2 ;
  output rst_n_0;
  output \sr_reg[0]_7 ;
  output \sr_reg[10]_0 ;
  output \sr_reg[11]_0 ;
  output \sr_reg[1]_20 ;
  output [0:0]\sr_reg[1]_21 ;
  output [0:0]\sr_reg[1]_22 ;
  output [0:0]\sr_reg[0]_8 ;
  output [0:0]\sr_reg[1]_23 ;
  output [3:0]\badr[6]_INST_0_i_1 ;
  output [3:0]tout__1_carry__0_i_1_0;
  output [3:0]\badr[10]_INST_0_i_1 ;
  output [3:0]tout__1_carry__1_i_1_0;
  input fch_irq_req;
  input clk;
  input ctl_fetch_fl_reg_0;
  input rst_n;
  input brdy;
  input [2:0]Q;
  input crdy;
  input \stat_reg[1]_2 ;
  input \sp[15]_i_3_0 ;
  input \bcmd[1] ;
  input ctl_fetch_fl_reg_1;
  input ctl_fetch_inferred_i_14_0;
  input \stat_reg[1]_3 ;
  input \stat_reg[1]_4 ;
  input \stat[1]_i_3_0 ;
  input \stat[1]_i_8_0 ;
  input \stat[1]_i_8_1 ;
  input [15:0]\badr[15]_INST_0_i_2 ;
  input \stat_reg[2]_0 ;
  input \stat_reg[0]_1 ;
  input \bdatw[8]_INST_0_i_6_0 ;
  input \badr[15]_INST_0_i_90_0 ;
  input \badr[15]_INST_0_i_49_0 ;
  input \badr[15]_INST_0_i_136_0 ;
  input \tr_reg[0]_0 ;
  input \stat_reg[1]_5 ;
  input \ccmd[1]_INST_0_i_1_0 ;
  input \tr[15]_i_12_0 ;
  input \stat[0]_i_8_0 ;
  input ctl_fetch_inferred_i_4_0;
  input \badr[15]_INST_0_i_77_0 ;
  input ctl_fetch_inferred_i_15_0;
  input ctl_fetch_fl_reg_2;
  input \stat_reg[0]_2 ;
  input \stat_reg[0]_3 ;
  input \bdatw[15]_INST_0_i_15_0 ;
  input \ccmd[3]_INST_0_i_13_0 ;
  input \stat[0]_i_8_1 ;
  input \tr[15]_i_8_0 ;
  input ctl_fetch_ext_fl_reg_0;
  input ctl_fetch_ext_fl_reg_1;
  input \stat[1]_i_2_0 ;
  input \badr[15]_INST_0_i_135_0 ;
  input \bdatw[15]_INST_0_i_15_1 ;
  input \badr[15]_INST_0_i_76_0 ;
  input \sp[15]_i_6_0 ;
  input \ccmd[4]_INST_0_i_6_0 ;
  input ctl_fetch_inferred_i_15_1;
  input \badr[15]_INST_0_i_27_0 ;
  input \tr[15]_i_2_0 ;
  input \stat_reg[2]_1 ;
  input \ccmd[3]_INST_0_i_1_0 ;
  input \ccmd[3]_INST_0_i_1_1 ;
  input irq;
  input ctl_fetch_fl_reg_3;
  input \ccmd[1]_INST_0_i_1_1 ;
  input [15:0]\badr[15]_INST_0_i_1_3 ;
  input [14:0]sp_dec_0;
  input [4:0]\bdatw[12] ;
  input \bdatw[13]_INST_0_i_2_0 ;
  input \bdatw[8]_INST_0_i_1_0 ;
  input \bdatw[9]_INST_0_i_1_0 ;
  input \bdatw[10]_INST_0_i_1_0 ;
  input \bdatw[11]_INST_0_i_1_0 ;
  input \bdatw[12]_INST_0_i_1_0 ;
  input \bdatw[13]_INST_0_i_1_0 ;
  input \bdatw[14]_INST_0_i_1_0 ;
  input \bdatw[15]_INST_0_i_1_0 ;
  input \bdatw[8]_INST_0_i_2_3 ;
  input \bdatw[8]_INST_0_i_2_4 ;
  input \bdatw[9]_INST_0_i_2_2 ;
  input \bdatw[9]_INST_0_i_2_3 ;
  input \bdatw[10]_INST_0_i_2_0 ;
  input \bdatw[10]_INST_0_i_2_1 ;
  input \bdatw[11]_INST_0_i_2_1 ;
  input \bdatw[11]_INST_0_i_2_2 ;
  input \bdatw[12]_INST_0_i_2_1 ;
  input \bdatw[12]_INST_0_i_2_2 ;
  input [15:0]\badrx[15] ;
  input [15:0]\badr[15]_INST_0_i_1_4 ;
  input [15:0]\pc_reg[15]_0 ;
  input [4:0]\bdatw[12]_INST_0_i_7_0 ;
  input [4:0]\bdatw[12]_INST_0_i_7_1 ;
  input [3:0]bank_sel;
  input [4:0]\bdatw[12]_INST_0_i_7_2 ;
  input [4:0]\bdatw[12]_INST_0_i_7_3 ;
  input [4:0]\bdatw[12]_INST_0_i_20_0 ;
  input \bdatw[13]_INST_0_i_7_0 ;
  input [10:0]\bdatw[15]_INST_0_i_6_0 ;
  input [10:0]\bdatw[15]_INST_0_i_6_1 ;
  input [10:0]\bdatw[15]_INST_0_i_20_0 ;
  input [10:0]\bdatw[15]_INST_0_i_20_1 ;
  input \bdatw[14]_INST_0_i_6_0 ;
  input \bdatw[15]_INST_0_i_8_0 ;
  input \bdatw[8]_INST_0_i_4_0 ;
  input \bdatw[9]_INST_0_i_4_0 ;
  input \bdatw[10]_INST_0_i_4_0 ;
  input \bdatw[11]_INST_0_i_4_0 ;
  input \bdatw[12]_INST_0_i_4_0 ;
  input \bdatw[13]_INST_0_i_4_0 ;
  input \bdatw[14]_INST_0_i_4_0 ;
  input \bdatw[15]_INST_0_i_6_2 ;
  input [4:0]\bdatw[12]_INST_0_i_8 ;
  input [4:0]\bdatw[12]_INST_0_i_8_0 ;
  input [4:0]\bdatw[12]_INST_0_i_26_0 ;
  input [4:0]\bdatw[12]_INST_0_i_20_1 ;
  input [4:0]\bdatw[12]_INST_0_i_26_1 ;
  input [4:0]\bdatw[12]_INST_0_i_17_0 ;
  input [4:0]\bdatw[12]_INST_0_i_7_4 ;
  input [4:0]\bdatw[12]_INST_0_i_7_5 ;
  input [4:0]\bdatw[12]_INST_0_i_8_1 ;
  input [4:0]\bdatw[12]_INST_0_i_8_2 ;
  input [4:0]\bdatw[12]_INST_0_i_17_1 ;
  input [15:0]\badr[15]_INST_0_i_5 ;
  input [15:0]\badr[15]_INST_0_i_5_0 ;
  input [15:0]\badr[15]_INST_0_i_5_1 ;
  input [4:0]\bdatw[12]_INST_0_i_19_0 ;
  input [4:0]\bdatw[12]_INST_0_i_25_0 ;
  input [4:0]\bdatw[12]_INST_0_i_19_1 ;
  input [4:0]\bdatw[12]_INST_0_i_25_1 ;
  input [15:0]\badr[15]_INST_0_i_4 ;
  input [1:0]cpuid;
  input [3:0]\tr_reg[7]_0 ;
  input \tr_reg[6]_0 ;
  input \tr_reg[5]_0 ;
  input [3:0]O;
  input \tr_reg[3]_0 ;
  input \tr_reg[1]_0 ;
  input \tr_reg[2]_0 ;
  input [3:0]\tr_reg[11]_0 ;
  input \tr_reg[9]_0 ;
  input \tr_reg[8]_0 ;
  input [3:0]\sr_reg[7]_1 ;
  input \tr_reg[13]_0 ;
  input \tr_reg[11]_1 ;
  input \tr_reg[12]_0 ;
  input \tr_reg[10]_0 ;
  input \tr_reg[7]_1 ;
  input \tr_reg[4]_0 ;
  input \tr_reg[0]_1 ;
  input \sr[4]_i_2_0 ;
  input [0:0]cbus_i;
  input [0:0]bdatr;
  input \tr_reg[14]_0 ;
  input [0:0]\sr_reg[6]_1 ;
  input \tr_reg[6]_1 ;
  input \tr_reg[5]_1 ;
  input \tr_reg[5]_2 ;
  input \tr_reg[4]_1 ;
  input \tr_reg[3]_1 ;
  input \tr_reg[0]_2 ;
  input \tr_reg[13]_1 ;
  input \tr_reg[13]_2 ;
  input \tr_reg[2]_1 ;
  input \tr_reg[1]_1 ;
  input \sr[6]_i_2_0 ;
  input \sr[4]_i_10_0 ;
  input \iv[0]_i_2_0 ;
  input \iv[8]_i_2_0 ;
  input \iv[10]_i_5_0 ;
  input \iv[10]_i_5_1 ;
  input [15:0]abus_0;
  input \iv[9]_i_2_0 ;
  input \iv[9]_i_2_1 ;
  input \iv[1]_i_7_0 ;
  input \iv[1]_i_8_0 ;
  input \iv[4]_i_2_0 ;
  input \iv[13]_i_2_0 ;
  input \iv[14]_i_4_0 ;
  input \iv[1]_i_2_0 ;
  input \sr[6]_i_3_0 ;
  input \iv[11]_i_2_0 ;
  input \iv[3]_i_2_0 ;
  input \iv[7]_i_2_0 ;
  input \iv[7]_i_2_1 ;
  input \iv[7]_i_2_2 ;
  input \iv[0]_i_2_1 ;
  input \iv[11]_i_2_1 ;
  input \iv[11]_i_2_2 ;
  input \iv[10]_i_5_2 ;
  input \iv[2]_i_2_0 ;
  input \iv[6]_i_2_0 ;
  input \iv[9]_i_2_2 ;
  input \iv[14]_i_3_0 ;
  input \iv[9]_i_2_3 ;
  input \sr[7]_i_9_0 ;
  input \iv[7]_i_2_3 ;
  input \iv[2]_i_2_1 ;
  input \iv[4]_i_2_1 ;
  input \iv[8]_i_2_1 ;
  input \tr_reg[14]_1 ;
  input \iv[10]_i_2_0 ;
  input \iv[2]_i_2_2 ;
  input \iv[12]_i_5_0 ;
  input \sr[6]_i_3_1 ;
  input \iv[1]_i_2_1 ;
  input \iv[9]_i_2_4 ;
  input \iv[3]_i_2_1 ;
  input \iv[11]_i_2_3 ;
  input \iv[10]_i_5_3 ;
  input \iv[5]_i_2_0 ;
  input \iv[12]_i_7_0 ;
  input \iv[13]_i_7_0 ;
  input \sr[6]_i_3_2 ;
  input \iv[4]_i_8_0 ;
  input \iv[4]_i_8_1 ;
  input \iv[12]_i_5_1 ;
  input \iv[2]_i_2_3 ;
  input \sr[7]_i_3_0 ;
  input \bdatw[14]_INST_0_i_2_0 ;
  input \bdatw[14]_INST_0_i_2_1 ;
  input \bdatw[15]_INST_0_i_2_0 ;
  input \bdatw[15]_INST_0_i_2_1 ;
  input [5:0]irq_vec;
  input \iv[9]_i_2_5 ;
  input \iv[9]_i_2_6 ;
  input \badr[15]_INST_0_i_93_0 ;
  input \sp_reg[6]_0 ;
  input \sp_reg[5]_0 ;
  input \sp_reg[3]_0 ;
  input \sp_reg[1]_0 ;
  input \sp_reg[2]_0 ;
  input \sp_reg[9]_0 ;
  input \sp_reg[8]_0 ;
  input \sp_reg[14]_0 ;
  input \sp_reg[13]_0 ;
  input \sp_reg[11]_0 ;
  input \sp_reg[12]_0 ;
  input \sp_reg[10]_0 ;
  input \sp_reg[7]_0 ;
  input \sp_reg[4]_0 ;
  input \sp_reg[0]_1 ;
  input [0:0]\sp_reg[15]_0 ;
  input \sp_reg[15]_1 ;
  input [15:0]fch_pc;
  input [0:0]read_cyc;
  input \sr[7]_i_3_1 ;
  input \iv[1]_i_2_2 ;
  input \iv[0]_i_7_0 ;
  input \iv[10]_i_2_1 ;
  input \iv[12]_i_5_2 ;
  input \iv[4]_i_2_2 ;
  input \iv[11]_i_2_4 ;
  input \iv[12]_i_7_1 ;
  input \iv[14]_i_4_1 ;
  input \iv[2]_i_2_4 ;
  input \sr[7]_i_9_1 ;
  input \sr[7]_i_9_2 ;
  input \sr[7]_i_9_3 ;
  input [1:0]irq_lev;
  input p_0_in;
  input [15:0]fdat;
     output [15:0]ir;
  input badr_0_sn_1;

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
  wire [2:2]acmd;
  wire [2:2]alu_sr_flag;
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
  wire \badr[15]_INST_0_i_119_n_0 ;
  wire \badr[15]_INST_0_i_120_n_0 ;
  wire \badr[15]_INST_0_i_121_n_0 ;
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
  wire \badr[15]_INST_0_i_135_0 ;
  wire \badr[15]_INST_0_i_135_n_0 ;
  wire \badr[15]_INST_0_i_136_0 ;
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
  wire \badr[15]_INST_0_i_171_n_0 ;
  wire \badr[15]_INST_0_i_172_n_0 ;
  wire \badr[15]_INST_0_i_173_n_0 ;
  wire \badr[15]_INST_0_i_174_n_0 ;
  wire \badr[15]_INST_0_i_175_n_0 ;
  wire \badr[15]_INST_0_i_176_n_0 ;
  wire \badr[15]_INST_0_i_177_n_0 ;
  wire \badr[15]_INST_0_i_178_n_0 ;
  wire \badr[15]_INST_0_i_179_n_0 ;
  wire \badr[15]_INST_0_i_180_n_0 ;
  wire \badr[15]_INST_0_i_181_n_0 ;
  wire \badr[15]_INST_0_i_182_n_0 ;
  wire \badr[15]_INST_0_i_183_n_0 ;
  wire \badr[15]_INST_0_i_184_n_0 ;
  wire \badr[15]_INST_0_i_185_n_0 ;
  wire \badr[15]_INST_0_i_187_n_0 ;
  wire \badr[15]_INST_0_i_188_n_0 ;
  wire \badr[15]_INST_0_i_189_n_0 ;
  wire \badr[15]_INST_0_i_190_n_0 ;
  wire \badr[15]_INST_0_i_191_n_0 ;
  wire [3:0]\badr[15]_INST_0_i_1_0 ;
  wire [1:0]\badr[15]_INST_0_i_1_1 ;
  wire [0:0]\badr[15]_INST_0_i_1_2 ;
  wire [15:0]\badr[15]_INST_0_i_1_3 ;
  wire [15:0]\badr[15]_INST_0_i_1_4 ;
  wire [15:0]\badr[15]_INST_0_i_2 ;
  wire \badr[15]_INST_0_i_27_0 ;
  wire \badr[15]_INST_0_i_30_n_0 ;
  wire [15:0]\badr[15]_INST_0_i_4 ;
  wire \badr[15]_INST_0_i_45_n_0 ;
  wire \badr[15]_INST_0_i_49_0 ;
  wire [15:0]\badr[15]_INST_0_i_5 ;
  wire [15:0]\badr[15]_INST_0_i_5_0 ;
  wire [15:0]\badr[15]_INST_0_i_5_1 ;
  wire \badr[15]_INST_0_i_67_n_0 ;
  wire \badr[15]_INST_0_i_68_n_0 ;
  wire \badr[15]_INST_0_i_69_n_0 ;
  wire \badr[15]_INST_0_i_70_n_0 ;
  wire \badr[15]_INST_0_i_71_n_0 ;
  wire \badr[15]_INST_0_i_72_n_0 ;
  wire \badr[15]_INST_0_i_73_n_0 ;
  wire \badr[15]_INST_0_i_74_n_0 ;
  wire \badr[15]_INST_0_i_75_n_0 ;
  wire \badr[15]_INST_0_i_76_0 ;
  wire \badr[15]_INST_0_i_76_n_0 ;
  wire \badr[15]_INST_0_i_77_0 ;
  wire \badr[15]_INST_0_i_77_n_0 ;
  wire \badr[15]_INST_0_i_78_n_0 ;
  wire \badr[15]_INST_0_i_81_n_0 ;
  wire \badr[15]_INST_0_i_82_n_0 ;
  wire \badr[15]_INST_0_i_83_n_0 ;
  wire \badr[15]_INST_0_i_84_n_0 ;
  wire \badr[15]_INST_0_i_89_n_0 ;
  wire \badr[15]_INST_0_i_90_0 ;
  wire \badr[15]_INST_0_i_90_n_0 ;
  wire \badr[15]_INST_0_i_92_n_0 ;
  wire \badr[15]_INST_0_i_93_0 ;
  wire \badr[15]_INST_0_i_97_n_0 ;
  wire \badr[15]_INST_0_i_98_n_0 ;
  wire \badr[15]_INST_0_i_99_n_0 ;
  wire \badr[1]_INST_0_i_1 ;
  wire [3:0]\badr[6]_INST_0_i_1 ;
  wire badr_0_sn_1;
  wire [15:0]badrx;
  wire [15:0]\badrx[15] ;
  wire \badrx[15]_INST_0_i_2_n_0 ;
  wire \badrx[15]_INST_0_i_3_n_0 ;
  wire \badrx[15]_INST_0_i_5_n_0 ;
  wire \badrx[15]_INST_0_i_6_n_0 ;
  wire \badrx[15]_INST_0_i_7_n_0 ;
  wire [3:0]bank_sel;
  wire [15:0]bbus_o;
  wire [0:0]bbus_sel_0;
  wire \bcmd[0]_INST_0_i_1_n_0 ;
  wire \bcmd[0]_INST_0_i_2_n_0 ;
  wire \bcmd[0]_INST_0_i_3_n_0 ;
  wire \bcmd[0]_INST_0_i_4_n_0 ;
  wire \bcmd[0]_INST_0_i_5_n_0 ;
  wire \bcmd[0]_INST_0_i_6_n_0 ;
  wire \bcmd[0]_INST_0_i_7_n_0 ;
  wire \bcmd[1] ;
  wire \bcmd[1]_INST_0_i_10_n_0 ;
  wire \bcmd[1]_INST_0_i_11_n_0 ;
  wire \bcmd[1]_INST_0_i_1_n_0 ;
  wire \bcmd[1]_INST_0_i_3_n_0 ;
  wire \bcmd[1]_INST_0_i_4_n_0 ;
  wire \bcmd[1]_INST_0_i_5_n_0 ;
  wire \bcmd[1]_INST_0_i_6_n_0 ;
  wire \bcmd[1]_INST_0_i_7_n_0 ;
  wire \bcmd[1]_INST_0_i_8_n_0 ;
  wire \bcmd[1]_INST_0_i_9_n_0 ;
  wire \bcmd[2]_INST_0_i_1_n_0 ;
  wire \bcmd[2]_INST_0_i_2_n_0 ;
  wire [0:0]bdatr;
  wire [15:0]bdatw;
  wire \bdatw[10]_INST_0_i_10_n_0 ;
  wire \bdatw[10]_INST_0_i_11_n_0 ;
  wire \bdatw[10]_INST_0_i_12_n_0 ;
  wire \bdatw[10]_INST_0_i_13_n_0 ;
  wire \bdatw[10]_INST_0_i_16_n_0 ;
  wire \bdatw[10]_INST_0_i_18_n_0 ;
  wire \bdatw[10]_INST_0_i_19_n_0 ;
  wire \bdatw[10]_INST_0_i_1_0 ;
  wire \bdatw[10]_INST_0_i_1_n_0 ;
  wire \bdatw[10]_INST_0_i_20_n_0 ;
  wire \bdatw[10]_INST_0_i_21_n_0 ;
  wire \bdatw[10]_INST_0_i_29_n_0 ;
  wire \bdatw[10]_INST_0_i_2_0 ;
  wire \bdatw[10]_INST_0_i_2_1 ;
  wire \bdatw[10]_INST_0_i_2_n_0 ;
  wire \bdatw[10]_INST_0_i_33_n_0 ;
  wire \bdatw[10]_INST_0_i_34_n_0 ;
  wire \bdatw[10]_INST_0_i_35_n_0 ;
  wire \bdatw[10]_INST_0_i_36_n_0 ;
  wire \bdatw[10]_INST_0_i_37_n_0 ;
  wire \bdatw[10]_INST_0_i_38_n_0 ;
  wire \bdatw[10]_INST_0_i_39_n_0 ;
  wire \bdatw[10]_INST_0_i_40_n_0 ;
  wire \bdatw[10]_INST_0_i_41_n_0 ;
  wire \bdatw[10]_INST_0_i_42_n_0 ;
  wire \bdatw[10]_INST_0_i_43_n_0 ;
  wire \bdatw[10]_INST_0_i_44_n_0 ;
  wire \bdatw[10]_INST_0_i_4_0 ;
  wire \bdatw[10]_INST_0_i_4_n_0 ;
  wire \bdatw[10]_INST_0_i_5_n_0 ;
  wire \bdatw[10]_INST_0_i_7_n_0 ;
  wire \bdatw[10]_INST_0_i_9_n_0 ;
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
  wire \bdatw[11]_INST_0_i_40_n_0 ;
  wire \bdatw[11]_INST_0_i_41_n_0 ;
  wire \bdatw[11]_INST_0_i_42_n_0 ;
  wire \bdatw[11]_INST_0_i_43_n_0 ;
  wire \bdatw[11]_INST_0_i_4_0 ;
  wire \bdatw[11]_INST_0_i_4_n_0 ;
  wire \bdatw[11]_INST_0_i_5_n_0 ;
  wire \bdatw[11]_INST_0_i_6_n_0 ;
  wire \bdatw[11]_INST_0_i_8_n_0 ;
  wire [4:0]\bdatw[12] ;
  wire \bdatw[12]_INST_0_i_10_n_0 ;
  wire \bdatw[12]_INST_0_i_11_n_0 ;
  wire \bdatw[12]_INST_0_i_12_n_0 ;
  wire \bdatw[12]_INST_0_i_15_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_17_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_17_1 ;
  wire \bdatw[12]_INST_0_i_17_n_0 ;
  wire \bdatw[12]_INST_0_i_18_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_19_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_19_1 ;
  wire \bdatw[12]_INST_0_i_19_n_0 ;
  wire \bdatw[12]_INST_0_i_1_0 ;
  wire \bdatw[12]_INST_0_i_1_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_20_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_20_1 ;
  wire \bdatw[12]_INST_0_i_20_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_25_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_25_1 ;
  wire [4:0]\bdatw[12]_INST_0_i_26_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_26_1 ;
  wire \bdatw[12]_INST_0_i_28_n_0 ;
  wire \bdatw[12]_INST_0_i_2_0 ;
  wire \bdatw[12]_INST_0_i_2_1 ;
  wire \bdatw[12]_INST_0_i_2_2 ;
  wire \bdatw[12]_INST_0_i_2_n_0 ;
  wire [2:0]\bdatw[12]_INST_0_i_30_0 ;
  wire \bdatw[12]_INST_0_i_30_n_0 ;
  wire \bdatw[12]_INST_0_i_31_n_0 ;
  wire \bdatw[12]_INST_0_i_35_n_0 ;
  wire \bdatw[12]_INST_0_i_40_n_0 ;
  wire \bdatw[12]_INST_0_i_41_n_0 ;
  wire \bdatw[12]_INST_0_i_44_n_0 ;
  wire \bdatw[12]_INST_0_i_45_n_0 ;
  wire \bdatw[12]_INST_0_i_48_n_0 ;
  wire \bdatw[12]_INST_0_i_49_n_0 ;
  wire \bdatw[12]_INST_0_i_4_0 ;
  wire \bdatw[12]_INST_0_i_4_n_0 ;
  wire \bdatw[12]_INST_0_i_58_n_0 ;
  wire \bdatw[12]_INST_0_i_59_n_0 ;
  wire \bdatw[12]_INST_0_i_5_n_0 ;
  wire \bdatw[12]_INST_0_i_62_n_0 ;
  wire \bdatw[12]_INST_0_i_63_n_0 ;
  wire \bdatw[12]_INST_0_i_64_n_0 ;
  wire \bdatw[12]_INST_0_i_65_n_0 ;
  wire \bdatw[12]_INST_0_i_66_n_0 ;
  wire \bdatw[12]_INST_0_i_77_n_0 ;
  wire \bdatw[12]_INST_0_i_78_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_7_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_7_1 ;
  wire [4:0]\bdatw[12]_INST_0_i_7_2 ;
  wire [4:0]\bdatw[12]_INST_0_i_7_3 ;
  wire [4:0]\bdatw[12]_INST_0_i_7_4 ;
  wire [4:0]\bdatw[12]_INST_0_i_7_5 ;
  wire \bdatw[12]_INST_0_i_7_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_8 ;
  wire \bdatw[12]_INST_0_i_80_n_0 ;
  wire \bdatw[12]_INST_0_i_81_n_0 ;
  wire \bdatw[12]_INST_0_i_82_n_0 ;
  wire \bdatw[12]_INST_0_i_83_n_0 ;
  wire \bdatw[12]_INST_0_i_84_n_0 ;
  wire \bdatw[12]_INST_0_i_85_n_0 ;
  wire \bdatw[12]_INST_0_i_86_n_0 ;
  wire \bdatw[12]_INST_0_i_87_n_0 ;
  wire \bdatw[12]_INST_0_i_88_n_0 ;
  wire \bdatw[12]_INST_0_i_89_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_8_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_8_1 ;
  wire [4:0]\bdatw[12]_INST_0_i_8_2 ;
  wire \bdatw[12]_INST_0_i_90_n_0 ;
  wire \bdatw[12]_INST_0_i_91_n_0 ;
  wire \bdatw[12]_INST_0_i_92_n_0 ;
  wire \bdatw[12]_INST_0_i_9_n_0 ;
  wire \bdatw[13]_INST_0_i_12_n_0 ;
  wire \bdatw[13]_INST_0_i_13_n_0 ;
  wire \bdatw[13]_INST_0_i_14_n_0 ;
  wire \bdatw[13]_INST_0_i_15_n_0 ;
  wire \bdatw[13]_INST_0_i_18_n_0 ;
  wire \bdatw[13]_INST_0_i_1_0 ;
  wire \bdatw[13]_INST_0_i_1_n_0 ;
  wire \bdatw[13]_INST_0_i_22_n_0 ;
  wire \bdatw[13]_INST_0_i_23_n_0 ;
  wire \bdatw[13]_INST_0_i_27_n_0 ;
  wire \bdatw[13]_INST_0_i_2_0 ;
  wire \bdatw[13]_INST_0_i_2_n_0 ;
  wire \bdatw[13]_INST_0_i_38_n_0 ;
  wire \bdatw[13]_INST_0_i_4_0 ;
  wire \bdatw[13]_INST_0_i_4_n_0 ;
  wire \bdatw[13]_INST_0_i_5_n_0 ;
  wire \bdatw[13]_INST_0_i_7_0 ;
  wire \bdatw[13]_INST_0_i_7_n_0 ;
  wire \bdatw[13]_INST_0_i_8_n_0 ;
  wire \bdatw[13]_INST_0_i_9_n_0 ;
  wire \bdatw[14]_INST_0_i_10_n_0 ;
  wire \bdatw[14]_INST_0_i_14_n_0 ;
  wire \bdatw[14]_INST_0_i_15_n_0 ;
  wire \bdatw[14]_INST_0_i_19_n_0 ;
  wire \bdatw[14]_INST_0_i_1_0 ;
  wire \bdatw[14]_INST_0_i_1_n_0 ;
  wire \bdatw[14]_INST_0_i_23_n_0 ;
  wire \bdatw[14]_INST_0_i_24_n_0 ;
  wire \bdatw[14]_INST_0_i_2_0 ;
  wire \bdatw[14]_INST_0_i_2_1 ;
  wire \bdatw[14]_INST_0_i_2_n_0 ;
  wire \bdatw[14]_INST_0_i_35_n_0 ;
  wire \bdatw[14]_INST_0_i_4_0 ;
  wire \bdatw[14]_INST_0_i_4_n_0 ;
  wire \bdatw[14]_INST_0_i_5_n_0 ;
  wire \bdatw[14]_INST_0_i_6_0 ;
  wire \bdatw[14]_INST_0_i_6_n_0 ;
  wire \bdatw[14]_INST_0_i_7_n_0 ;
  wire \bdatw[15]_INST_0_i_107_n_0 ;
  wire \bdatw[15]_INST_0_i_10_n_0 ;
  wire \bdatw[15]_INST_0_i_118_n_0 ;
  wire \bdatw[15]_INST_0_i_119_n_0 ;
  wire \bdatw[15]_INST_0_i_11_n_0 ;
  wire \bdatw[15]_INST_0_i_120_n_0 ;
  wire \bdatw[15]_INST_0_i_121_n_0 ;
  wire \bdatw[15]_INST_0_i_122_n_0 ;
  wire \bdatw[15]_INST_0_i_123_n_0 ;
  wire \bdatw[15]_INST_0_i_12_n_0 ;
  wire \bdatw[15]_INST_0_i_13_n_0 ;
  wire \bdatw[15]_INST_0_i_15_0 ;
  wire \bdatw[15]_INST_0_i_15_1 ;
  wire \bdatw[15]_INST_0_i_15_n_0 ;
  wire \bdatw[15]_INST_0_i_16_n_0 ;
  wire \bdatw[15]_INST_0_i_17_n_0 ;
  wire \bdatw[15]_INST_0_i_1_0 ;
  wire \bdatw[15]_INST_0_i_1_n_0 ;
  wire [10:0]\bdatw[15]_INST_0_i_20_0 ;
  wire [10:0]\bdatw[15]_INST_0_i_20_1 ;
  wire \bdatw[15]_INST_0_i_25_n_0 ;
  wire \bdatw[15]_INST_0_i_29_n_0 ;
  wire \bdatw[15]_INST_0_i_2_0 ;
  wire \bdatw[15]_INST_0_i_2_1 ;
  wire \bdatw[15]_INST_0_i_2_n_0 ;
  wire \bdatw[15]_INST_0_i_30_n_0 ;
  wire \bdatw[15]_INST_0_i_31_n_0 ;
  wire \bdatw[15]_INST_0_i_32_n_0 ;
  wire \bdatw[15]_INST_0_i_33_n_0 ;
  wire \bdatw[15]_INST_0_i_34_n_0 ;
  wire \bdatw[15]_INST_0_i_35_n_0 ;
  wire \bdatw[15]_INST_0_i_36_n_0 ;
  wire \bdatw[15]_INST_0_i_37_n_0 ;
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
  wire \bdatw[15]_INST_0_i_4_n_0 ;
  wire \bdatw[15]_INST_0_i_50_n_0 ;
  wire \bdatw[15]_INST_0_i_53_n_0 ;
  wire \bdatw[15]_INST_0_i_61_n_0 ;
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
  wire \bdatw[15]_INST_0_i_8_0 ;
  wire \bdatw[15]_INST_0_i_8_n_0 ;
  wire \bdatw[15]_INST_0_i_91_n_0 ;
  wire \bdatw[15]_INST_0_i_92_n_0 ;
  wire \bdatw[15]_INST_0_i_93_n_0 ;
  wire \bdatw[15]_INST_0_i_94_n_0 ;
  wire \bdatw[15]_INST_0_i_9_n_0 ;
  wire \bdatw[8]_INST_0_i_10_n_0 ;
  wire \bdatw[8]_INST_0_i_11_n_0 ;
  wire \bdatw[8]_INST_0_i_12_n_0 ;
  wire \bdatw[8]_INST_0_i_16_n_0 ;
  wire \bdatw[8]_INST_0_i_17_n_0 ;
  wire \bdatw[8]_INST_0_i_19_n_0 ;
  wire \bdatw[8]_INST_0_i_1_0 ;
  wire \bdatw[8]_INST_0_i_1_n_0 ;
  wire \bdatw[8]_INST_0_i_20_n_0 ;
  wire \bdatw[8]_INST_0_i_21_n_0 ;
  wire \bdatw[8]_INST_0_i_22_n_0 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_2_3 ;
  wire \bdatw[8]_INST_0_i_2_4 ;
  wire \bdatw[8]_INST_0_i_30_n_0 ;
  wire \bdatw[8]_INST_0_i_34_n_0 ;
  wire \bdatw[8]_INST_0_i_35_n_0 ;
  wire \bdatw[8]_INST_0_i_36_n_0 ;
  wire \bdatw[8]_INST_0_i_37_n_0 ;
  wire \bdatw[8]_INST_0_i_38_n_0 ;
  wire \bdatw[8]_INST_0_i_39_n_0 ;
  wire \bdatw[8]_INST_0_i_40_n_0 ;
  wire \bdatw[8]_INST_0_i_41_n_0 ;
  wire \bdatw[8]_INST_0_i_42_n_0 ;
  wire \bdatw[8]_INST_0_i_43_n_0 ;
  wire \bdatw[8]_INST_0_i_44_n_0 ;
  wire \bdatw[8]_INST_0_i_4_0 ;
  wire \bdatw[8]_INST_0_i_4_n_0 ;
  wire \bdatw[8]_INST_0_i_5_n_0 ;
  wire \bdatw[8]_INST_0_i_6_0 ;
  wire \bdatw[8]_INST_0_i_7_n_0 ;
  wire \bdatw[8]_INST_0_i_9_n_0 ;
  wire \bdatw[9]_INST_0_i_10_n_0 ;
  wire \bdatw[9]_INST_0_i_11_n_0 ;
  wire \bdatw[9]_INST_0_i_12_n_0 ;
  wire \bdatw[9]_INST_0_i_13_n_0 ;
  wire \bdatw[9]_INST_0_i_16_n_0 ;
  wire \bdatw[9]_INST_0_i_18_n_0 ;
  wire \bdatw[9]_INST_0_i_19_n_0 ;
  wire \bdatw[9]_INST_0_i_1_0 ;
  wire \bdatw[9]_INST_0_i_1_n_0 ;
  wire \bdatw[9]_INST_0_i_20_n_0 ;
  wire \bdatw[9]_INST_0_i_21_n_0 ;
  wire \bdatw[9]_INST_0_i_29_n_0 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_2_1 ;
  wire \bdatw[9]_INST_0_i_2_2 ;
  wire \bdatw[9]_INST_0_i_2_3 ;
  wire \bdatw[9]_INST_0_i_2_n_0 ;
  wire \bdatw[9]_INST_0_i_33_n_0 ;
  wire \bdatw[9]_INST_0_i_34_n_0 ;
  wire \bdatw[9]_INST_0_i_35_n_0 ;
  wire \bdatw[9]_INST_0_i_36_n_0 ;
  wire \bdatw[9]_INST_0_i_37_n_0 ;
  wire \bdatw[9]_INST_0_i_38_n_0 ;
  wire \bdatw[9]_INST_0_i_39_n_0 ;
  wire \bdatw[9]_INST_0_i_40_n_0 ;
  wire \bdatw[9]_INST_0_i_41_n_0 ;
  wire \bdatw[9]_INST_0_i_42_n_0 ;
  wire \bdatw[9]_INST_0_i_43_n_0 ;
  wire \bdatw[9]_INST_0_i_4_0 ;
  wire \bdatw[9]_INST_0_i_4_n_0 ;
  wire \bdatw[9]_INST_0_i_5_n_0 ;
  wire \bdatw[9]_INST_0_i_7_n_0 ;
  wire \bdatw[9]_INST_0_i_9_n_0 ;
  wire brdy;
  wire brdy_0;
  wire [14:0]cbus;
  wire [0:0]cbus_i;
  wire [1:0]cbus_sel_cr;
  wire [4:0]ccmd;
  wire \ccmd[0]_INST_0_i_11_n_0 ;
  wire \ccmd[0]_INST_0_i_12_n_0 ;
  wire \ccmd[0]_INST_0_i_14_n_0 ;
  wire \ccmd[0]_INST_0_i_15_n_0 ;
  wire \ccmd[0]_INST_0_i_16_n_0 ;
  wire \ccmd[0]_INST_0_i_17_n_0 ;
  wire \ccmd[0]_INST_0_i_18_n_0 ;
  wire \ccmd[0]_INST_0_i_19_n_0 ;
  wire \ccmd[0]_INST_0_i_1_n_0 ;
  wire \ccmd[0]_INST_0_i_20_n_0 ;
  wire \ccmd[0]_INST_0_i_21_n_0 ;
  wire \ccmd[0]_INST_0_i_2_n_0 ;
  wire \ccmd[0]_INST_0_i_3_n_0 ;
  wire \ccmd[0]_INST_0_i_4_n_0 ;
  wire \ccmd[0]_INST_0_i_5_n_0 ;
  wire \ccmd[0]_INST_0_i_6_n_0 ;
  wire \ccmd[0]_INST_0_i_7_n_0 ;
  wire \ccmd[0]_INST_0_i_8_n_0 ;
  wire \ccmd[0]_INST_0_i_9_n_0 ;
  wire \ccmd[1]_INST_0_i_11_n_0 ;
  wire \ccmd[1]_INST_0_i_12_n_0 ;
  wire \ccmd[1]_INST_0_i_13_n_0 ;
  wire \ccmd[1]_INST_0_i_14_n_0 ;
  wire \ccmd[1]_INST_0_i_15_n_0 ;
  wire \ccmd[1]_INST_0_i_16_n_0 ;
  wire \ccmd[1]_INST_0_i_17_n_0 ;
  wire \ccmd[1]_INST_0_i_18_n_0 ;
  wire \ccmd[1]_INST_0_i_19_n_0 ;
  wire \ccmd[1]_INST_0_i_1_0 ;
  wire \ccmd[1]_INST_0_i_1_1 ;
  wire \ccmd[1]_INST_0_i_1_n_0 ;
  wire \ccmd[1]_INST_0_i_20_n_0 ;
  wire \ccmd[1]_INST_0_i_2_n_0 ;
  wire \ccmd[1]_INST_0_i_3_n_0 ;
  wire \ccmd[1]_INST_0_i_4_n_0 ;
  wire \ccmd[1]_INST_0_i_5_n_0 ;
  wire \ccmd[1]_INST_0_i_6_n_0 ;
  wire \ccmd[1]_INST_0_i_7_n_0 ;
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
  wire \ccmd[2]_INST_0_i_1_n_0 ;
  wire \ccmd[2]_INST_0_i_20_n_0 ;
  wire \ccmd[2]_INST_0_i_21_n_0 ;
  wire \ccmd[2]_INST_0_i_22_n_0 ;
  wire \ccmd[2]_INST_0_i_23_n_0 ;
  wire \ccmd[2]_INST_0_i_24_n_0 ;
  wire \ccmd[2]_INST_0_i_25_n_0 ;
  wire \ccmd[2]_INST_0_i_26_n_0 ;
  wire \ccmd[2]_INST_0_i_27_n_0 ;
  wire \ccmd[2]_INST_0_i_2_n_0 ;
  wire \ccmd[2]_INST_0_i_3_n_0 ;
  wire \ccmd[2]_INST_0_i_4_n_0 ;
  wire \ccmd[2]_INST_0_i_5_n_0 ;
  wire \ccmd[2]_INST_0_i_6_n_0 ;
  wire \ccmd[2]_INST_0_i_7_n_0 ;
  wire \ccmd[2]_INST_0_i_8_n_0 ;
  wire \ccmd[2]_INST_0_i_9_n_0 ;
  wire \ccmd[3]_INST_0_i_10_n_0 ;
  wire \ccmd[3]_INST_0_i_11_n_0 ;
  wire \ccmd[3]_INST_0_i_12_n_0 ;
  wire \ccmd[3]_INST_0_i_13_0 ;
  wire \ccmd[3]_INST_0_i_13_n_0 ;
  wire \ccmd[3]_INST_0_i_15_n_0 ;
  wire \ccmd[3]_INST_0_i_16_n_0 ;
  wire \ccmd[3]_INST_0_i_17_n_0 ;
  wire \ccmd[3]_INST_0_i_18_n_0 ;
  wire \ccmd[3]_INST_0_i_19_n_0 ;
  wire \ccmd[3]_INST_0_i_1_0 ;
  wire \ccmd[3]_INST_0_i_1_1 ;
  wire \ccmd[3]_INST_0_i_1_n_0 ;
  wire \ccmd[3]_INST_0_i_20_n_0 ;
  wire \ccmd[3]_INST_0_i_2_n_0 ;
  wire \ccmd[3]_INST_0_i_3_n_0 ;
  wire \ccmd[3]_INST_0_i_4_n_0 ;
  wire \ccmd[3]_INST_0_i_5_n_0 ;
  wire \ccmd[3]_INST_0_i_6_n_0 ;
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
  wire \ccmd[4]_INST_0_i_2_n_0 ;
  wire \ccmd[4]_INST_0_i_3_n_0 ;
  wire \ccmd[4]_INST_0_i_4_n_0 ;
  wire \ccmd[4]_INST_0_i_5_n_0 ;
  wire \ccmd[4]_INST_0_i_6_0 ;
  wire \ccmd[4]_INST_0_i_6_n_0 ;
  wire \ccmd[4]_INST_0_i_7_n_0 ;
  wire \ccmd[4]_INST_0_i_8_n_0 ;
  wire \ccmd[4]_INST_0_i_9_n_0 ;
  wire clk;
  wire [1:0]cpuid;
  wire crdy;
  wire crdy_0;
  wire crdy_1;
  wire ctl_extadr;
  wire ctl_fetch_ext;
  wire ctl_fetch_ext_fl;
  wire ctl_fetch_ext_fl_i_2_n_0;
  wire ctl_fetch_ext_fl_i_3_n_0;
  wire ctl_fetch_ext_fl_i_4_n_0;
  wire ctl_fetch_ext_fl_i_7_n_0;
  wire ctl_fetch_ext_fl_reg_0;
  wire ctl_fetch_ext_fl_reg_1;
  wire ctl_fetch_fl;
  wire ctl_fetch_fl_reg_0;
  wire ctl_fetch_fl_reg_1;
  wire ctl_fetch_fl_reg_2;
  wire ctl_fetch_fl_reg_3;
  wire ctl_fetch_inferred_i_10_n_0;
  wire ctl_fetch_inferred_i_11_n_0;
  wire ctl_fetch_inferred_i_12_n_0;
  wire ctl_fetch_inferred_i_13_n_0;
  wire ctl_fetch_inferred_i_14_0;
  wire ctl_fetch_inferred_i_14_n_0;
  wire ctl_fetch_inferred_i_15_0;
  wire ctl_fetch_inferred_i_15_1;
  wire ctl_fetch_inferred_i_15_n_0;
  wire ctl_fetch_inferred_i_18_n_0;
  wire ctl_fetch_inferred_i_19_n_0;
  wire ctl_fetch_inferred_i_21_n_0;
  wire ctl_fetch_inferred_i_22_n_0;
  wire ctl_fetch_inferred_i_23_n_0;
  wire ctl_fetch_inferred_i_24_n_0;
  wire ctl_fetch_inferred_i_25_n_0;
  wire ctl_fetch_inferred_i_26_n_0;
  wire ctl_fetch_inferred_i_27_n_0;
  wire ctl_fetch_inferred_i_28_n_0;
  wire ctl_fetch_inferred_i_29_n_0;
  wire ctl_fetch_inferred_i_2_n_0;
  wire ctl_fetch_inferred_i_30_n_0;
  wire ctl_fetch_inferred_i_31_n_0;
  wire ctl_fetch_inferred_i_35_n_0;
  wire ctl_fetch_inferred_i_37_n_0;
  wire ctl_fetch_inferred_i_3_n_0;
  wire ctl_fetch_inferred_i_4_0;
  wire ctl_fetch_inferred_i_4_n_0;
  wire ctl_fetch_inferred_i_5_n_0;
  wire ctl_fetch_inferred_i_6_n_0;
  wire ctl_fetch_inferred_i_7_n_0;
  wire ctl_fetch_inferred_i_8_n_0;
  wire ctl_fetch_inferred_i_9_n_0;
  wire ctl_irq_ack;
  wire [4:1]ctl_sela;
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
  wire \fch_irq_lev[1]_i_4_n_0 ;
  wire \fch_irq_lev[1]_i_5_n_0 ;
  wire fch_irq_req;
  wire fch_irq_req_fl;
  wire [15:0]fch_pc;
  wire [15:0]fdat;
  wire gr0_bus1__0;
  wire gr0_bus1__0_18;
  wire gr0_bus1__0_19;
  wire gr0_bus1__0_30;
  wire gr0_bus1__0_31;
  wire gr0_bus1__0_32;
  wire gr1_bus1__0;
  wire gr1_bus1__0_16;
  wire gr1_bus1__0_24;
  wire gr1_bus1__0_25;
  wire gr1_bus1__0_26;
  wire gr1_bus1__0_5;
  wire gr2_bus1__0;
  wire gr2_bus1__0_17;
  wire gr2_bus1__0_3;
  wire gr2_bus1__0_38;
  wire gr2_bus1__0_39;
  wire gr2_bus1__0_4;
  wire gr2_bus1__0_40;
  wire gr3_bus1__0;
  wire gr3_bus1__0_0;
  wire gr3_bus1__0_2;
  wire gr3_bus1__0_33;
  wire gr3_bus1__0_34;
  wire gr3_bus1__0_6;
  wire gr4_bus1__0;
  wire gr4_bus1__0_1;
  wire gr4_bus1__0_27;
  wire gr4_bus1__0_28;
  wire gr4_bus1__0_29;
  wire gr4_bus1__0_7;
  wire gr4_bus1__0_8;
  wire gr5_bus1__0;
  wire gr5_bus1__0_10;
  wire gr5_bus1__0_12;
  wire gr5_bus1__0_20;
  wire gr5_bus1__0_21;
  wire gr5_bus1__0_22;
  wire gr5_bus1__0_23;
  wire gr5_bus1__0_9;
  wire gr6_bus1__0;
  wire gr6_bus1__0_11;
  wire gr6_bus1__0_13;
  wire gr6_bus1__0_41;
  wire gr6_bus1__0_42;
  wire gr6_bus1__0_43;
  wire gr7_bus1__0;
  wire gr7_bus1__0_14;
  wire gr7_bus1__0_15;
  wire gr7_bus1__0_35;
  wire gr7_bus1__0_36;
  wire gr7_bus1__0_37;
  wire \grn[15]_i_2_n_0 ;
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
  wire \iv[0]_i_7_0 ;
  wire \iv[0]_i_7_n_0 ;
  wire \iv[0]_i_8_n_0 ;
  wire \iv[10]_i_10_n_0 ;
  wire \iv[10]_i_11_n_0 ;
  wire \iv[10]_i_12_n_0 ;
  wire \iv[10]_i_13_n_0 ;
  wire \iv[10]_i_14_n_0 ;
  wire \iv[10]_i_18_n_0 ;
  wire \iv[10]_i_2_0 ;
  wire \iv[10]_i_2_1 ;
  wire \iv[10]_i_2_n_0 ;
  wire \iv[10]_i_4_n_0 ;
  wire \iv[10]_i_5_0 ;
  wire \iv[10]_i_5_1 ;
  wire \iv[10]_i_5_2 ;
  wire \iv[10]_i_5_3 ;
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
  wire \iv[12]_i_13_n_0 ;
  wire \iv[12]_i_14_n_0 ;
  wire \iv[12]_i_16_n_0 ;
  wire \iv[12]_i_2_n_0 ;
  wire \iv[12]_i_4_n_0 ;
  wire \iv[12]_i_5_0 ;
  wire \iv[12]_i_5_1 ;
  wire \iv[12]_i_5_2 ;
  wire \iv[12]_i_5_n_0 ;
  wire \iv[12]_i_6_n_0 ;
  wire \iv[12]_i_7_0 ;
  wire \iv[12]_i_7_1 ;
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
  wire \iv[14]_i_26_n_0 ;
  wire \iv[14]_i_29_n_0 ;
  wire \iv[14]_i_2_n_0 ;
  wire \iv[14]_i_30_n_0 ;
  wire \iv[14]_i_31_0 ;
  wire \iv[14]_i_31_1 ;
  wire \iv[14]_i_3_0 ;
  wire \iv[14]_i_3_n_0 ;
  wire \iv[14]_i_4_0 ;
  wire \iv[14]_i_4_1 ;
  wire \iv[14]_i_4_n_0 ;
  wire \iv[14]_i_5_n_0 ;
  wire \iv[14]_i_6_n_0 ;
  wire \iv[14]_i_9_n_0 ;
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
  wire \iv[2]_i_2_3 ;
  wire \iv[2]_i_2_4 ;
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
  wire \iv[4]_i_2_2 ;
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
  wire \iv[6]_i_14_n_0 ;
  wire \iv[6]_i_2_0 ;
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
  wire \iv[9]_i_18_n_0 ;
  wire \iv[9]_i_2_0 ;
  wire \iv[9]_i_2_1 ;
  wire \iv[9]_i_2_2 ;
  wire \iv[9]_i_2_3 ;
  wire \iv[9]_i_2_4 ;
  wire \iv[9]_i_2_5 ;
  wire \iv[9]_i_2_6 ;
  wire \iv[9]_i_2_n_0 ;
  wire \iv[9]_i_4_n_0 ;
  wire \iv[9]_i_5_n_0 ;
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
  wire [4:1]\rgf/abus_sel_cr ;
  wire \rgf/bank02/abuso2l/gr0_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr1_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr6_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr7_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr1_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr6_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr7_bus1__0 ;
  wire [15:5]\rgf/bbus_b02 ;
  wire [4:1]\rgf/bbus_sel_cr ;
  wire \rgf/rctl/p_0_in ;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_fl;
  wire rst_n_fl_reg_0;
  wire rst_n_fl_reg_1;
  wire rst_n_fl_reg_2;
  wire rst_n_fl_reg_3;
  wire rst_n_fl_reg_4;
  wire rst_n_fl_reg_5;
  wire rst_n_fl_reg_6;
  wire rst_n_fl_reg_7;
  wire rst_n_fl_reg_8;
  wire \sp[15]_i_11_n_0 ;
  wire \sp[15]_i_12_n_0 ;
  wire \sp[15]_i_13_n_0 ;
  wire \sp[15]_i_14_n_0 ;
  wire \sp[15]_i_15_n_0 ;
  wire \sp[15]_i_3_0 ;
  wire \sp[15]_i_6_0 ;
  wire \sp[15]_i_6_n_0 ;
  wire \sp[15]_i_7_n_0 ;
  wire \sp[15]_i_8_n_0 ;
  wire \sp[15]_i_9_n_0 ;
  wire [14:0]sp_dec_0;
  wire \sp_reg[0] ;
  wire \sp_reg[0]_0 ;
  wire \sp_reg[0]_1 ;
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
  wire \sr[15]_i_40_n_0 ;
  wire \sr[15]_i_41_n_0 ;
  wire \sr[15]_i_42_n_0 ;
  wire \sr[15]_i_43_n_0 ;
  wire \sr[15]_i_44_n_0 ;
  wire \sr[15]_i_45_n_0 ;
  wire \sr[15]_i_46_n_0 ;
  wire \sr[15]_i_47_n_0 ;
  wire \sr[15]_i_48_n_0 ;
  wire \sr[15]_i_49_n_0 ;
  wire \sr[15]_i_4_n_0 ;
  wire \sr[15]_i_50_n_0 ;
  wire \sr[15]_i_51_n_0 ;
  wire \sr[15]_i_52_n_0 ;
  wire \sr[15]_i_53_n_0 ;
  wire \sr[15]_i_54_n_0 ;
  wire \sr[15]_i_55_n_0 ;
  wire \sr[15]_i_56_n_0 ;
  wire \sr[15]_i_57_n_0 ;
  wire \sr[15]_i_5_n_0 ;
  wire \sr[15]_i_6_n_0 ;
  wire \sr[15]_i_7_n_0 ;
  wire \sr[15]_i_8_n_0 ;
  wire \sr[15]_i_9_n_0 ;
  wire \sr[2]_i_2_n_0 ;
  wire \sr[3]_i_2_n_0 ;
  wire \sr[4]_i_10_0 ;
  wire \sr[4]_i_10_n_0 ;
  wire \sr[4]_i_11_n_0 ;
  wire \sr[4]_i_12_n_0 ;
  wire \sr[4]_i_13_n_0 ;
  wire \sr[4]_i_14_n_0 ;
  wire \sr[4]_i_2_0 ;
  wire \sr[4]_i_2_n_0 ;
  wire \sr[4]_i_3_n_0 ;
  wire \sr[4]_i_4_n_0 ;
  wire \sr[4]_i_5_n_0 ;
  wire \sr[4]_i_6_n_0 ;
  wire \sr[4]_i_7_n_0 ;
  wire \sr[4]_i_8_n_0 ;
  wire \sr[4]_i_9_n_0 ;
  wire \sr[5]_i_2_n_0 ;
  wire \sr[5]_i_3_n_0 ;
  wire \sr[5]_i_4_n_0 ;
  wire \sr[6]_i_2_0 ;
  wire \sr[6]_i_3_0 ;
  wire \sr[6]_i_3_1 ;
  wire \sr[6]_i_3_2 ;
  wire \sr[6]_i_3_n_0 ;
  wire \sr[6]_i_4_n_0 ;
  wire \sr[6]_i_6_n_0 ;
  wire \sr[6]_i_7_n_0 ;
  wire \sr[7]_i_10_n_0 ;
  wire \sr[7]_i_12 ;
  wire \sr[7]_i_13_n_0 ;
  wire \sr[7]_i_15_n_0 ;
  wire \sr[7]_i_16_n_0 ;
  wire \sr[7]_i_17_n_0 ;
  wire \sr[7]_i_18_n_0 ;
  wire \sr[7]_i_21_n_0 ;
  wire \sr[7]_i_3_0 ;
  wire \sr[7]_i_3_1 ;
  wire \sr[7]_i_4_n_0 ;
  wire \sr[7]_i_5_n_0 ;
  wire \sr[7]_i_6_n_0 ;
  wire \sr[7]_i_7_n_0 ;
  wire \sr[7]_i_8_n_0 ;
  wire \sr[7]_i_9_0 ;
  wire \sr[7]_i_9_1 ;
  wire \sr[7]_i_9_2 ;
  wire \sr[7]_i_9_3 ;
  wire \sr[7]_i_9_n_0 ;
  wire [0:0]\sr_reg[0] ;
  wire [0:0]\sr_reg[0]_0 ;
  wire [0:0]\sr_reg[0]_1 ;
  wire [0:0]\sr_reg[0]_2 ;
  wire [0:0]\sr_reg[0]_3 ;
  wire [0:0]\sr_reg[0]_4 ;
  wire [0:0]\sr_reg[0]_5 ;
  wire \sr_reg[0]_6 ;
  wire \sr_reg[0]_7 ;
  wire [0:0]\sr_reg[0]_8 ;
  wire \sr_reg[10] ;
  wire \sr_reg[10]_0 ;
  wire \sr_reg[11] ;
  wire \sr_reg[11]_0 ;
  wire \sr_reg[12] ;
  wire [1:0]\sr_reg[13] ;
  wire \sr_reg[13]_0 ;
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
  wire \sr_reg[1]_19 ;
  wire [0:0]\sr_reg[1]_2 ;
  wire \sr_reg[1]_20 ;
  wire [0:0]\sr_reg[1]_21 ;
  wire [0:0]\sr_reg[1]_22 ;
  wire [0:0]\sr_reg[1]_23 ;
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
  wire \sr_reg[4] ;
  wire \sr_reg[4]_0 ;
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
  wire \stat[0]_i_15_n_0 ;
  wire \stat[0]_i_16_n_0 ;
  wire \stat[0]_i_17_n_0 ;
  wire \stat[0]_i_18_n_0 ;
  wire \stat[0]_i_20_n_0 ;
  wire \stat[0]_i_21_n_0 ;
  wire \stat[0]_i_22_n_0 ;
  wire \stat[0]_i_23_n_0 ;
  wire \stat[0]_i_24_n_0 ;
  wire \stat[0]_i_25_n_0 ;
  wire \stat[0]_i_26_n_0 ;
  wire \stat[0]_i_27_n_0 ;
  wire \stat[0]_i_29_n_0 ;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_31_n_0 ;
  wire \stat[0]_i_32_n_0 ;
  wire \stat[0]_i_33_n_0 ;
  wire \stat[0]_i_34_n_0 ;
  wire \stat[0]_i_35_n_0 ;
  wire \stat[0]_i_36_n_0 ;
  wire \stat[0]_i_37_n_0 ;
  wire \stat[0]_i_38_n_0 ;
  wire \stat[0]_i_39_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_6_n_0 ;
  wire \stat[0]_i_7_n_0 ;
  wire \stat[0]_i_8_0 ;
  wire \stat[0]_i_8_1 ;
  wire \stat[0]_i_8_n_0 ;
  wire \stat[1]_i_10_n_0 ;
  wire \stat[1]_i_12_n_0 ;
  wire \stat[1]_i_13_n_0 ;
  wire \stat[1]_i_14_n_0 ;
  wire \stat[1]_i_16_n_0 ;
  wire \stat[1]_i_17_n_0 ;
  wire \stat[1]_i_19_n_0 ;
  wire \stat[1]_i_21_n_0 ;
  wire \stat[1]_i_2_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[1]_i_7_n_0 ;
  wire \stat[1]_i_8_0 ;
  wire \stat[1]_i_8_1 ;
  wire \stat[1]_i_8_n_0 ;
  wire \stat[2]_i_13_n_0 ;
  wire \stat[2]_i_16_n_0 ;
  wire \stat[2]_i_18_n_0 ;
  wire \stat[2]_i_19_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire \stat[2]_i_4_n_0 ;
  wire \stat[2]_i_5_n_0 ;
  wire \stat[2]_i_7_n_0 ;
  wire \stat[2]_i_9_n_0 ;
  wire \stat_reg[0] ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[0]_2 ;
  wire \stat_reg[0]_3 ;
  wire \stat_reg[1] ;
  wire \stat_reg[1]_0 ;
  wire [15:0]\stat_reg[1]_1 ;
  wire \stat_reg[1]_2 ;
  wire \stat_reg[1]_3 ;
  wire \stat_reg[1]_4 ;
  wire \stat_reg[1]_5 ;
  wire \stat_reg[2] ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire [3:0]tout__1_carry__0_i_1_0;
  wire [3:0]tout__1_carry__1_i_1_0;
  wire tout__1_carry_i_10_0;
  wire tout__1_carry_i_11_n_0;
  wire tout__1_carry_i_12_n_0;
  wire tout__1_carry_i_13_n_0;
  wire tout__1_carry_i_8_n_0;
  wire \tr[15]_i_10_n_0 ;
  wire \tr[15]_i_11_n_0 ;
  wire \tr[15]_i_12_0 ;
  wire \tr[15]_i_12_n_0 ;
  wire \tr[15]_i_13_n_0 ;
  wire \tr[15]_i_14_n_0 ;
  wire \tr[15]_i_15_n_0 ;
  wire \tr[15]_i_16_n_0 ;
  wire \tr[15]_i_17_n_0 ;
  wire \tr[15]_i_23_n_0 ;
  wire \tr[15]_i_24_n_0 ;
  wire \tr[15]_i_25_n_0 ;
  wire \tr[15]_i_26_n_0 ;
  wire \tr[15]_i_27_n_0 ;
  wire \tr[15]_i_28_n_0 ;
  wire \tr[15]_i_29_n_0 ;
  wire \tr[15]_i_2_0 ;
  wire \tr[15]_i_30_n_0 ;
  wire \tr[15]_i_31_n_0 ;
  wire \tr[15]_i_32_n_0 ;
  wire \tr[15]_i_33_n_0 ;
  wire \tr[15]_i_34_n_0 ;
  wire \tr[15]_i_35_n_0 ;
  wire \tr[15]_i_36_n_0 ;
  wire \tr[15]_i_37_n_0 ;
  wire \tr[15]_i_38_n_0 ;
  wire \tr[15]_i_39_n_0 ;
  wire \tr[15]_i_40_n_0 ;
  wire \tr[15]_i_41_n_0 ;
  wire \tr[15]_i_42_n_0 ;
  wire \tr[15]_i_43_n_0 ;
  wire \tr[15]_i_44_n_0 ;
  wire \tr[15]_i_45_n_0 ;
  wire \tr[15]_i_46_n_0 ;
  wire \tr[15]_i_47_n_0 ;
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
  wire \tr[15]_i_8_0 ;
  wire \tr[15]_i_8_n_0 ;
  wire \tr[15]_i_9_n_0 ;
  wire \tr_reg[0] ;
  wire \tr_reg[0]_0 ;
  wire \tr_reg[0]_1 ;
  wire \tr_reg[0]_2 ;
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

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[0]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(ctl_extadr),
        .I3(abus_0[0]),
        .O(badr[0]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[0]_INST_0_i_13 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(ctl_sela[4]),
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
  LUT4 #(
    .INIT(16'h2000)) 
    \badr[0]_INST_0_i_6 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_30_n_0 ),
        .I3(\badr[15]_INST_0_i_1_3 [0]),
        .O(\sp_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[0]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [0]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [0]),
        .I4(\pc_reg[15]_0 [0]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[0] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[10]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(ctl_extadr),
        .I3(abus_0[10]),
        .O(badr[10]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[10]_INST_0_i_13 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2 [10]),
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
        .I1(\badr[15]_INST_0_i_5 [10]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [10]),
        .I4(\badr[15]_INST_0_i_5_1 [10]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[10] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[10]_INST_0_i_6 
       (.I0(ctl_sela[3]),
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
        .I3(\badr[15]_INST_0_i_1_4 [10]),
        .I4(\pc_reg[15]_0 [10]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[10] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[11]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(ctl_extadr),
        .I3(abus_0[11]),
        .O(badr[11]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[11]_INST_0_i_13 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(ctl_sela[4]),
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
    .INIT(64'h2200200002000000)) 
    \badr[11]_INST_0_i_6 
       (.I0(ctl_sela[3]),
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
        .I3(\badr[15]_INST_0_i_1_4 [11]),
        .I4(\pc_reg[15]_0 [11]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[11] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[12]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(ctl_extadr),
        .I3(abus_0[12]),
        .O(badr[12]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[12]_INST_0_i_13 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(ctl_sela[4]),
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
    .INIT(64'h2200200002000000)) 
    \badr[12]_INST_0_i_6 
       (.I0(ctl_sela[3]),
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
        .I3(\badr[15]_INST_0_i_1_4 [12]),
        .I4(\pc_reg[15]_0 [12]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[12] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[13]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(ctl_extadr),
        .I3(abus_0[13]),
        .O(badr[13]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[13]_INST_0_i_13 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2 [13]),
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
        .I1(\badr[15]_INST_0_i_5 [13]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [13]),
        .I4(\badr[15]_INST_0_i_5_1 [13]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[13] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[13]_INST_0_i_6 
       (.I0(ctl_sela[3]),
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
        .I3(\badr[15]_INST_0_i_1_4 [13]),
        .I4(\pc_reg[15]_0 [13]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[13] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[14]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(ctl_extadr),
        .I3(abus_0[14]),
        .O(badr[14]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[14]_INST_0_i_13 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(ctl_sela[4]),
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
    .INIT(64'h2200200002000000)) 
    \badr[14]_INST_0_i_6 
       (.I0(ctl_sela[3]),
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
        .I3(\badr[15]_INST_0_i_1_4 [14]),
        .I4(\pc_reg[15]_0 [14]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[14] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[15]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(ctl_extadr),
        .I3(abus_0[15]),
        .O(badr[15]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \badr[15]_INST_0_i_100 
       (.I0(\tr[15]_i_55_n_0 ),
        .I1(ir[2]),
        .I2(ir[11]),
        .I3(\fch_irq_lev[1]_i_5_n_0 ),
        .I4(\badr[15]_INST_0_i_138_n_0 ),
        .I5(\badr[15]_INST_0_i_139_n_0 ),
        .O(rst_n_fl_reg_5));
  LUT4 #(
    .INIT(16'h0100)) 
    \badr[15]_INST_0_i_101 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(ir[10]),
        .I3(ir[8]),
        .O(\badr[15]_INST_0_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h0000300000F00050)) 
    \badr[15]_INST_0_i_102 
       (.I0(ir[6]),
        .I1(\badr[15]_INST_0_i_140_n_0 ),
        .I2(ir[10]),
        .I3(ir[8]),
        .I4(Q[0]),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_102_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFBFAAAAFFBF)) 
    \badr[15]_INST_0_i_103 
       (.I0(\bcmd[1]_INST_0_i_11_n_0 ),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(\stat[2]_i_9_n_0 ),
        .I4(\stat[1]_i_19_n_0 ),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_103_n_0 ));
  LUT4 #(
    .INIT(16'hF77F)) 
    \badr[15]_INST_0_i_104 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[10]),
        .I3(ir[11]),
        .O(\badr[15]_INST_0_i_104_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_105 
       (.I0(ir[2]),
        .I1(ir[6]),
        .O(\badr[15]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD000FFFFFFFF)) 
    \badr[15]_INST_0_i_106 
       (.I0(ir[11]),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(Q[0]),
        .I5(ir[15]),
        .O(\badr[15]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCEFCFDCFCCCC)) 
    \badr[15]_INST_0_i_107 
       (.I0(ir[6]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[5]),
        .I5(ir[2]),
        .O(\badr[15]_INST_0_i_107_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \badr[15]_INST_0_i_108 
       (.I0(ir[10]),
        .I1(ir[11]),
        .O(\badr[15]_INST_0_i_108_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \badr[15]_INST_0_i_109 
       (.I0(ir[2]),
        .I1(ir[6]),
        .I2(ir[5]),
        .O(\badr[15]_INST_0_i_109_n_0 ));
  LUT6 #(
    .INIT(64'h44444044FFFFFFFF)) 
    \badr[15]_INST_0_i_110 
       (.I0(\badr[15]_INST_0_i_141_n_0 ),
        .I1(ir[5]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[6]),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h557555D555555575)) 
    \badr[15]_INST_0_i_111 
       (.I0(ir[7]),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(ir[5]),
        .I4(ir[4]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h5155555555555511)) 
    \badr[15]_INST_0_i_112 
       (.I0(ir[7]),
        .I1(ir[2]),
        .I2(ir[3]),
        .I3(ir[6]),
        .I4(ir[4]),
        .I5(ir[5]),
        .O(\badr[15]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h0000000007FF37FF)) 
    \badr[15]_INST_0_i_113 
       (.I0(\badr[15]_INST_0_i_105_n_0 ),
        .I1(ir[9]),
        .I2(\badr[15]_INST_0_i_142_n_0 ),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_113_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \badr[15]_INST_0_i_114 
       (.I0(ir[11]),
        .I1(crdy),
        .O(\badr[15]_INST_0_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h0EFA0000020A0000)) 
    \badr[15]_INST_0_i_115 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(\badrx[15]_INST_0_i_7_n_0 ),
        .I5(ir[2]),
        .O(\badr[15]_INST_0_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h8C008C0F8C0F8C00)) 
    \badr[15]_INST_0_i_116 
       (.I0(\stat[1]_i_19_n_0 ),
        .I1(\badr[15]_INST_0_i_143_n_0 ),
        .I2(Q[0]),
        .I3(ir[13]),
        .I4(\badr[15]_INST_0_i_2 [7]),
        .I5(\badr[15]_INST_0_i_2 [5]),
        .O(\badr[15]_INST_0_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h8A888888AAAAAAAA)) 
    \badr[15]_INST_0_i_117 
       (.I0(\badr[15]_INST_0_i_144_n_0 ),
        .I1(ir[6]),
        .I2(\badr[15]_INST_0_i_145_n_0 ),
        .I3(ir[10]),
        .I4(Q[0]),
        .I5(\badr[15]_INST_0_i_146_n_0 ),
        .O(\badr[15]_INST_0_i_117_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_118 
       (.I0(ir[11]),
        .I1(ir[12]),
        .O(\badr[15]_INST_0_i_118_n_0 ));
  LUT6 #(
    .INIT(64'hDDD5DDDDFFFFFFFF)) 
    \badr[15]_INST_0_i_119 
       (.I0(ir[11]),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[12]),
        .I4(\badr[15]_INST_0_i_2 [5]),
        .I5(\badr[15]_INST_0_i_76_0 ),
        .O(\badr[15]_INST_0_i_119_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001530)) 
    \badr[15]_INST_0_i_120 
       (.I0(\badr[15]_INST_0_i_77_0 ),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[2]),
        .I4(ir[12]),
        .I5(ir[14]),
        .O(\badr[15]_INST_0_i_120_n_0 ));
  LUT5 #(
    .INIT(32'h33223320)) 
    \badr[15]_INST_0_i_121 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(ir[3]),
        .I4(Q[0]),
        .O(\badr[15]_INST_0_i_121_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \badr[15]_INST_0_i_123 
       (.I0(\badr[15]_INST_0_i_149_n_0 ),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(\ccmd[4]_INST_0_i_6_0 ),
        .I4(\badrx[15]_INST_0_i_7_n_0 ),
        .I5(\bcmd[2]_INST_0_i_2_n_0 ),
        .O(\badr[15]_INST_0_i_123_n_0 ));
  LUT6 #(
    .INIT(64'h00A2AAAAA0A2AAAA)) 
    \badr[15]_INST_0_i_124 
       (.I0(\badr[15]_INST_0_i_150_n_0 ),
        .I1(\stat[0]_i_36_n_0 ),
        .I2(\badrx[15]_INST_0_i_7_n_0 ),
        .I3(\badr[15]_INST_0_i_151_n_0 ),
        .I4(ir[8]),
        .I5(crdy),
        .O(\badr[15]_INST_0_i_124_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_125 
       (.I0(ir[12]),
        .I1(ir[14]),
        .O(\badr[15]_INST_0_i_125_n_0 ));
  LUT5 #(
    .INIT(32'hDFDDDFDF)) 
    \badr[15]_INST_0_i_126 
       (.I0(crdy),
        .I1(ir[11]),
        .I2(\badr[15]_INST_0_i_152_n_0 ),
        .I3(\badr[15]_INST_0_i_153_n_0 ),
        .I4(ir[10]),
        .O(\badr[15]_INST_0_i_126_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1F11)) 
    \badr[15]_INST_0_i_127 
       (.I0(\badr[15]_INST_0_i_154_n_0 ),
        .I1(\badr[15]_INST_0_i_108_n_0 ),
        .I2(\badr[15]_INST_0_i_153_n_0 ),
        .I3(\sr[15]_i_31_n_0 ),
        .I4(\badr[15]_INST_0_i_155_n_0 ),
        .I5(\badr[15]_INST_0_i_156_n_0 ),
        .O(\badr[15]_INST_0_i_127_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4FFF4F4)) 
    \badr[15]_INST_0_i_128 
       (.I0(\badr[15]_INST_0_i_157_n_0 ),
        .I1(\sr[15]_i_22_n_0 ),
        .I2(\badr[15]_INST_0_i_158_n_0 ),
        .I3(\badr[15]_INST_0_i_106_n_0 ),
        .I4(ir[9]),
        .I5(\badr[15]_INST_0_i_159_n_0 ),
        .O(\badr[15]_INST_0_i_128_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \badr[15]_INST_0_i_129 
       (.I0(ir[5]),
        .I1(ir[4]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(\bcmd[1]_INST_0_i_11_n_0 ),
        .I5(\bcmd[2]_INST_0_i_2_n_0 ),
        .O(\badr[15]_INST_0_i_129_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[15]_INST_0_i_13 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2 [15]),
        .O(\sr_reg[15] ));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_130 
       (.I0(ir[15]),
        .I1(Q[0]),
        .O(\badr[15]_INST_0_i_130_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFCFA0AFC0C0)) 
    \badr[15]_INST_0_i_131 
       (.I0(\badr[15]_INST_0_i_160_n_0 ),
        .I1(\badr[15]_INST_0_i_161_n_0 ),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_162_n_0 ),
        .I4(ir[10]),
        .I5(\badr[15]_INST_0_i_163_n_0 ),
        .O(\badr[15]_INST_0_i_131_n_0 ));
  LUT6 #(
    .INIT(64'h0400FFFF04000400)) 
    \badr[15]_INST_0_i_132 
       (.I0(\badr[15]_INST_0_i_164_n_0 ),
        .I1(\bcmd[1]_INST_0_i_6_n_0 ),
        .I2(ir[15]),
        .I3(Q[0]),
        .I4(\badr[15]_INST_0_i_106_n_0 ),
        .I5(ir[8]),
        .O(\badr[15]_INST_0_i_132_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEAAAAAAAAA)) 
    \badr[15]_INST_0_i_133 
       (.I0(\bdatw[15]_INST_0_i_50_n_0 ),
        .I1(\badr[15]_INST_0_i_165_n_0 ),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_166_n_0 ),
        .I4(\badr[15]_INST_0_i_163_n_0 ),
        .I5(\ccmd[2]_INST_0_i_2_n_0 ),
        .O(\badr[15]_INST_0_i_133_n_0 ));
  LUT6 #(
    .INIT(64'h88808080AAAAAAAA)) 
    \badr[15]_INST_0_i_134 
       (.I0(\stat[2]_i_7_n_0 ),
        .I1(ir[14]),
        .I2(\badr[15]_INST_0_i_167_n_0 ),
        .I3(\ccmd[3]_INST_0_i_8_n_0 ),
        .I4(\badr[15]_INST_0_i_102_n_0 ),
        .I5(\stat[0]_i_10_n_0 ),
        .O(\badr[15]_INST_0_i_134_n_0 ));
  LUT6 #(
    .INIT(64'h5554555455545555)) 
    \badr[15]_INST_0_i_135 
       (.I0(Q[2]),
        .I1(\badr[15]_INST_0_i_168_n_0 ),
        .I2(\tr[15]_i_9_n_0 ),
        .I3(rst_n_fl_reg_5),
        .I4(\badr[15]_INST_0_i_169_n_0 ),
        .I5(\badr[15]_INST_0_i_93_0 ),
        .O(\badr[15]_INST_0_i_135_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0E0EFFFFFF00)) 
    \badr[15]_INST_0_i_136 
       (.I0(\badr[15]_INST_0_i_171_n_0 ),
        .I1(\badr[15]_INST_0_i_124_n_0 ),
        .I2(\badr[15]_INST_0_i_123_n_0 ),
        .I3(\badr[15]_INST_0_i_172_n_0 ),
        .I4(ir[15]),
        .I5(ir[13]),
        .O(\badr[15]_INST_0_i_136_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4440)) 
    \badr[15]_INST_0_i_137 
       (.I0(\ccmd[2]_INST_0_i_18_n_0 ),
        .I1(\badr[15]_INST_0_i_118_n_0 ),
        .I2(\badr[15]_INST_0_i_173_n_0 ),
        .I3(\badr[15]_INST_0_i_116_n_0 ),
        .I4(rst_n_fl_reg_5),
        .I5(\badr[15]_INST_0_i_174_n_0 ),
        .O(\badr[15]_INST_0_i_137_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \badr[15]_INST_0_i_138 
       (.I0(ir[9]),
        .I1(ir[5]),
        .I2(ir[3]),
        .I3(ir[7]),
        .I4(ir[4]),
        .O(\badr[15]_INST_0_i_138_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \badr[15]_INST_0_i_139 
       (.I0(ir[1]),
        .I1(Q[1]),
        .I2(ir[6]),
        .I3(ir[0]),
        .O(\badr[15]_INST_0_i_139_n_0 ));
  LUT4 #(
    .INIT(16'h6465)) 
    \badr[15]_INST_0_i_140 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(ir[3]),
        .O(\badr[15]_INST_0_i_140_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \badr[15]_INST_0_i_141 
       (.I0(crdy),
        .I1(ir[8]),
        .I2(ir[9]),
        .O(\badr[15]_INST_0_i_141_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_142 
       (.I0(ir[5]),
        .I1(ir[6]),
        .O(\badr[15]_INST_0_i_142_n_0 ));
  LUT5 #(
    .INIT(32'h0055F355)) 
    \badr[15]_INST_0_i_143 
       (.I0(Q[0]),
        .I1(ir[8]),
        .I2(crdy),
        .I3(ir[10]),
        .I4(ir[9]),
        .O(\badr[15]_INST_0_i_143_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF3BD7FFFFFFFF)) 
    \badr[15]_INST_0_i_144 
       (.I0(ir[4]),
        .I1(ir[7]),
        .I2(ir[5]),
        .I3(ir[3]),
        .I4(Q[0]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_144_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \badr[15]_INST_0_i_145 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(ir[3]),
        .I3(ir[7]),
        .O(\badr[15]_INST_0_i_145_n_0 ));
  LUT6 #(
    .INIT(64'hBBFBFBBFBBFBFBFF)) 
    \badr[15]_INST_0_i_146 
       (.I0(Q[0]),
        .I1(ir[10]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(ir[4]),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_146_n_0 ));
  LUT5 #(
    .INIT(32'h00011101)) 
    \badr[15]_INST_0_i_149 
       (.I0(ir[14]),
        .I1(Q[0]),
        .I2(\badr[15]_INST_0_i_2 [6]),
        .I3(ir[12]),
        .I4(\badr[15]_INST_0_i_2 [7]),
        .O(\badr[15]_INST_0_i_149_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \badr[15]_INST_0_i_150 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(Q[0]),
        .I3(crdy),
        .O(\badr[15]_INST_0_i_150_n_0 ));
  LUT4 #(
    .INIT(16'h00EA)) 
    \badr[15]_INST_0_i_151 
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(ir[6]),
        .I3(Q[0]),
        .O(\badr[15]_INST_0_i_151_n_0 ));
  LUT6 #(
    .INIT(64'h050C050C000C0000)) 
    \badr[15]_INST_0_i_152 
       (.I0(\badr[15]_INST_0_i_175_n_0 ),
        .I1(ir[4]),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(ir[10]),
        .I5(\badrx[15]_INST_0_i_7_n_0 ),
        .O(\badr[15]_INST_0_i_152_n_0 ));
  LUT6 #(
    .INIT(64'h335FFFFF3F5FFFFF)) 
    \badr[15]_INST_0_i_153 
       (.I0(ir[1]),
        .I1(ir[4]),
        .I2(ir[9]),
        .I3(ir[6]),
        .I4(ir[8]),
        .I5(ir[7]),
        .O(\badr[15]_INST_0_i_153_n_0 ));
  LUT6 #(
    .INIT(64'h0F1B0F27331B0F0F)) 
    \badr[15]_INST_0_i_154 
       (.I0(ir[7]),
        .I1(ir[1]),
        .I2(ir[4]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_154_n_0 ));
  LUT6 #(
    .INIT(64'h54FF545454545454)) 
    \badr[15]_INST_0_i_155 
       (.I0(\bdatw[15]_INST_0_i_119_n_0 ),
        .I1(ir[4]),
        .I2(\sr[15]_i_54_n_0 ),
        .I3(\ccmd[4]_INST_0_i_8_n_0 ),
        .I4(\badrx[15]_INST_0_i_7_n_0 ),
        .I5(\bdatw[15]_INST_0_i_76_n_0 ),
        .O(\badr[15]_INST_0_i_155_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \badr[15]_INST_0_i_156 
       (.I0(\badr[15]_INST_0_i_176_n_0 ),
        .I1(\badr[15]_INST_0_i_177_n_0 ),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_156_n_0 ));
  LUT4 #(
    .INIT(16'h8AEF)) 
    \badr[15]_INST_0_i_157 
       (.I0(ir[3]),
        .I1(ir[1]),
        .I2(ir[2]),
        .I3(ir[0]),
        .O(\badr[15]_INST_0_i_157_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA800000)) 
    \badr[15]_INST_0_i_158 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(ir[0]),
        .I2(fch_irq_req),
        .I3(ir[1]),
        .I4(\ccmd[0]_INST_0_i_21_n_0 ),
        .I5(\badr[15]_INST_0_i_178_n_0 ),
        .O(\badr[15]_INST_0_i_158_n_0 ));
  LUT6 #(
    .INIT(64'h0008AAAA00080008)) 
    \badr[15]_INST_0_i_159 
       (.I0(\sr[15]_i_20_n_0 ),
        .I1(\ccmd[2]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_69_n_0 ),
        .I3(\bdatw[15]_INST_0_i_79_n_0 ),
        .I4(\badr[15]_INST_0_i_104_n_0 ),
        .I5(\badr[15]_INST_0_i_179_n_0 ),
        .O(\badr[15]_INST_0_i_159_n_0 ));
  LUT6 #(
    .INIT(64'h1010101010FF1010)) 
    \badr[15]_INST_0_i_160 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_180_n_0 ),
        .I2(\badr[15]_INST_0_i_181_n_0 ),
        .I3(\badr[15]_INST_0_i_141_n_0 ),
        .I4(ir[3]),
        .I5(\sr[15]_i_54_n_0 ),
        .O(\badr[15]_INST_0_i_160_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCD8E4F0CCD8CC)) 
    \badr[15]_INST_0_i_161 
       (.I0(ir[7]),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_161_n_0 ));
  LUT6 #(
    .INIT(64'h2AAA2A2A2AAAAAAA)) 
    \badr[15]_INST_0_i_162 
       (.I0(\badr[15]_INST_0_i_182_n_0 ),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[3]),
        .I4(ir[6]),
        .I5(ir[0]),
        .O(\badr[15]_INST_0_i_162_n_0 ));
  LUT6 #(
    .INIT(64'h000011110F000000)) 
    \badr[15]_INST_0_i_163 
       (.I0(\badr[15]_INST_0_i_183_n_0 ),
        .I1(\ccmd[4]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_184_n_0 ),
        .I3(ctl_fetch_inferred_i_8_n_0),
        .I4(crdy),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_163_n_0 ));
  LUT6 #(
    .INIT(64'hFAF2FAFAFFFFFFFF)) 
    \badr[15]_INST_0_i_164 
       (.I0(\badr[15]_INST_0_i_104_n_0 ),
        .I1(\bcmd[1]_INST_0_i_3_n_0 ),
        .I2(ir[6]),
        .I3(\bdatw[15]_INST_0_i_69_n_0 ),
        .I4(ir[3]),
        .I5(ir[0]),
        .O(\badr[15]_INST_0_i_164_n_0 ));
  LUT6 #(
    .INIT(64'hFF10FFFFFF100000)) 
    \badr[15]_INST_0_i_165 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_180_n_0 ),
        .I2(\badr[15]_INST_0_i_181_n_0 ),
        .I3(\badr[15]_INST_0_i_185_n_0 ),
        .I4(ir[10]),
        .I5(\badr[15]_INST_0_i_161_n_0 ),
        .O(\badr[15]_INST_0_i_165_n_0 ));
  LUT6 #(
    .INIT(64'h0000A808AAAAAAAA)) 
    \badr[15]_INST_0_i_166 
       (.I0(ir[10]),
        .I1(ir[0]),
        .I2(ir[6]),
        .I3(ir[3]),
        .I4(\bcmd[2]_INST_0_i_2_n_0 ),
        .I5(\badr[15]_INST_0_i_182_n_0 ),
        .O(\badr[15]_INST_0_i_166_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \badr[15]_INST_0_i_167 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(\bdatw[12]_INST_0_i_89_n_0 ),
        .I3(ir[6]),
        .I4(Q[0]),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_167_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \badr[15]_INST_0_i_168 
       (.I0(\tr[15]_i_55_n_0 ),
        .I1(rst_n_fl_reg_6),
        .I2(\fch_irq_lev[1]_i_5_n_0 ),
        .I3(\badr[15]_INST_0_i_99_n_0 ),
        .I4(ir[0]),
        .I5(\stat[2]_i_19_n_0 ),
        .O(\badr[15]_INST_0_i_168_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFAB)) 
    \badr[15]_INST_0_i_169 
       (.I0(\ccmd[2]_INST_0_i_27_n_0 ),
        .I1(ir[1]),
        .I2(\badr[15]_INST_0_i_135_0 ),
        .I3(ir[2]),
        .I4(\badr[15]_INST_0_i_138_n_0 ),
        .I5(\badr[15]_INST_0_i_97_n_0 ),
        .O(\badr[15]_INST_0_i_169_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \badr[15]_INST_0_i_171 
       (.I0(ir[10]),
        .I1(ir[14]),
        .I2(ir[12]),
        .O(\badr[15]_INST_0_i_171_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8AAAA)) 
    \badr[15]_INST_0_i_172 
       (.I0(\badr[15]_INST_0_i_136_0 ),
        .I1(\badr[15]_INST_0_i_187_n_0 ),
        .I2(\bdatw[15]_INST_0_i_79_n_0 ),
        .I3(\badr[15]_INST_0_i_121_n_0 ),
        .I4(\badr[15]_INST_0_i_188_n_0 ),
        .I5(\badr[15]_INST_0_i_189_n_0 ),
        .O(\badr[15]_INST_0_i_172_n_0 ));
  LUT6 #(
    .INIT(64'h0000004044444444)) 
    \badr[15]_INST_0_i_173 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(ir[13]),
        .I2(\badr[15]_INST_0_i_146_n_0 ),
        .I3(\badr[15]_INST_0_i_190_n_0 ),
        .I4(ir[6]),
        .I5(\badr[15]_INST_0_i_144_n_0 ),
        .O(\badr[15]_INST_0_i_173_n_0 ));
  LUT6 #(
    .INIT(64'h0444555504440444)) 
    \badr[15]_INST_0_i_174 
       (.I0(Q[0]),
        .I1(ir[15]),
        .I2(ir[13]),
        .I3(ir[12]),
        .I4(\badr[15]_INST_0_i_191_n_0 ),
        .I5(\badr[15]_INST_0_i_76_0 ),
        .O(\badr[15]_INST_0_i_174_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \badr[15]_INST_0_i_175 
       (.I0(ir[4]),
        .I1(ir[1]),
        .I2(ir[6]),
        .O(\badr[15]_INST_0_i_175_n_0 ));
  LUT6 #(
    .INIT(64'hB3B3F7B7F3B3B7B3)) 
    \badr[15]_INST_0_i_176 
       (.I0(ir[5]),
        .I1(ir[7]),
        .I2(ir[6]),
        .I3(ir[1]),
        .I4(ir[4]),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_176_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFFCFFFF)) 
    \badr[15]_INST_0_i_177 
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ir[1]),
        .I5(ir[7]),
        .O(\badr[15]_INST_0_i_177_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_178 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(ir[2]),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_178_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_179 
       (.I0(ir[1]),
        .I1(ir[6]),
        .O(\badr[15]_INST_0_i_179_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFFFFCFF)) 
    \badr[15]_INST_0_i_180 
       (.I0(ir[3]),
        .I1(ir[5]),
        .I2(ir[4]),
        .I3(ir[0]),
        .I4(ir[6]),
        .I5(ir[7]),
        .O(\badr[15]_INST_0_i_180_n_0 ));
  LUT6 #(
    .INIT(64'h557555D555555575)) 
    \badr[15]_INST_0_i_181 
       (.I0(ir[7]),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(ir[5]),
        .I4(ir[4]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_181_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5DDDFFFFFFFF)) 
    \badr[15]_INST_0_i_182 
       (.I0(ir[3]),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[9]),
        .I5(crdy),
        .O(\badr[15]_INST_0_i_182_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \badr[15]_INST_0_i_183 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[3]),
        .O(\badr[15]_INST_0_i_183_n_0 ));
  LUT5 #(
    .INIT(32'hCF08CF7F)) 
    \badr[15]_INST_0_i_184 
       (.I0(ir[6]),
        .I1(ir[9]),
        .I2(ir[0]),
        .I3(ir[8]),
        .I4(ir[3]),
        .O(\badr[15]_INST_0_i_184_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F000D0D0)) 
    \badr[15]_INST_0_i_185 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[3]),
        .I3(crdy),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_185_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \badr[15]_INST_0_i_187 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[7]),
        .I3(ir[8]),
        .O(\badr[15]_INST_0_i_187_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \badr[15]_INST_0_i_188 
       (.I0(ir[2]),
        .I1(Q[0]),
        .I2(crdy),
        .O(\badr[15]_INST_0_i_188_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFEEEF)) 
    \badr[15]_INST_0_i_189 
       (.I0(ir[14]),
        .I1(ir[12]),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(ir[3]),
        .O(\badr[15]_INST_0_i_189_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888880888)) 
    \badr[15]_INST_0_i_190 
       (.I0(Q[0]),
        .I1(ir[10]),
        .I2(ir[7]),
        .I3(ir[3]),
        .I4(ir[5]),
        .I5(ir[4]),
        .O(\badr[15]_INST_0_i_190_n_0 ));
  LUT5 #(
    .INIT(32'hFD00FFFF)) 
    \badr[15]_INST_0_i_191 
       (.I0(\badr[15]_INST_0_i_2 [5]),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(ir[11]),
        .O(\badr[15]_INST_0_i_191_n_0 ));
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
    .INIT(64'hFFFF0DFF0D0D0D0D)) 
    \badr[15]_INST_0_i_27 
       (.I0(\badr[15]_INST_0_i_67_n_0 ),
        .I1(\badr[15]_INST_0_i_68_n_0 ),
        .I2(Q[2]),
        .I3(\stat[0]_i_10_n_0 ),
        .I4(\badr[15]_INST_0_i_69_n_0 ),
        .I5(\stat[2]_i_7_n_0 ),
        .O(ctl_sela[3]));
  LUT6 #(
    .INIT(64'h8A8A8A888A8A8A8A)) 
    \badr[15]_INST_0_i_28 
       (.I0(ctl_fetch_fl_reg_1),
        .I1(\badr[15]_INST_0_i_70_n_0 ),
        .I2(\badr[15]_INST_0_i_71_n_0 ),
        .I3(\badr[15]_INST_0_i_72_n_0 ),
        .I4(\badr[15]_INST_0_i_73_n_0 ),
        .I5(\badr[15]_INST_0_i_74_n_0 ),
        .O(ctl_sela[2]));
  LUT6 #(
    .INIT(64'h00000000EFEEEFEF)) 
    \badr[15]_INST_0_i_29 
       (.I0(\badr[15]_INST_0_i_75_n_0 ),
        .I1(\badr[15]_INST_0_i_76_n_0 ),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_77_n_0 ),
        .I4(\badr[15]_INST_0_i_78_n_0 ),
        .I5(\badr[15]_INST_0_i_49_0 ),
        .O(ctl_sela[4]));
  LUT6 #(
    .INIT(64'h00000000222A2222)) 
    \badr[15]_INST_0_i_30 
       (.I0(ctl_sela[1]),
        .I1(ctl_fetch_fl_reg_1),
        .I2(\badr[15]_INST_0_i_81_n_0 ),
        .I3(\badr[15]_INST_0_i_82_n_0 ),
        .I4(\badr[15]_INST_0_i_83_n_0 ),
        .I5(\badr[15]_INST_0_i_84_n_0 ),
        .O(\badr[15]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \badr[15]_INST_0_i_32 
       (.I0(ctl_sela[2]),
        .I1(ctl_sela[3]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_45_n_0 ),
        .O(\rgf/abus_sel_cr [4]));
  LUT4 #(
    .INIT(16'h0020)) 
    \badr[15]_INST_0_i_33 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_89_n_0 ),
        .O(\rgf/abus_sel_cr [3]));
  LUT4 #(
    .INIT(16'h2000)) 
    \badr[15]_INST_0_i_34 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_90_n_0 ),
        .I3(ctl_sela[4]),
        .O(\rgf/abus_sel_cr [1]));
  LUT6 #(
    .INIT(64'h0000000088800000)) 
    \badr[15]_INST_0_i_35 
       (.I0(bank_sel[3]),
        .I1(ctl_sela[1]),
        .I2(\badr[15]_INST_0_i_92_n_0 ),
        .I3(\badr[15]_INST_0_i_84_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\rgf/rctl/p_0_in ),
        .O(gr7_bus1__0_35));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \badr[15]_INST_0_i_36 
       (.I0(bank_sel[3]),
        .I1(ctl_sela[2]),
        .I2(\rgf/rctl/p_0_in ),
        .I3(ctl_sela[1]),
        .I4(\badr[15]_INST_0_i_92_n_0 ),
        .I5(\badr[15]_INST_0_i_84_n_0 ),
        .O(gr0_bus1__0_30));
  LUT6 #(
    .INIT(64'h0000000022200000)) 
    \badr[15]_INST_0_i_37 
       (.I0(bank_sel[1]),
        .I1(\rgf/rctl/p_0_in ),
        .I2(\badr[15]_INST_0_i_84_n_0 ),
        .I3(\badr[15]_INST_0_i_92_n_0 ),
        .I4(ctl_sela[1]),
        .I5(ctl_sela[2]),
        .O(gr3_bus1__0_33));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \badr[15]_INST_0_i_38 
       (.I0(bank_sel[1]),
        .I1(ctl_sela[1]),
        .I2(\badr[15]_INST_0_i_92_n_0 ),
        .I3(\badr[15]_INST_0_i_84_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\rgf/rctl/p_0_in ),
        .O(gr4_bus1__0_27));
  LUT6 #(
    .INIT(64'h0000000002020200)) 
    \badr[15]_INST_0_i_39 
       (.I0(bank_sel[1]),
        .I1(ctl_sela[2]),
        .I2(\rgf/rctl/p_0_in ),
        .I3(\badr[15]_INST_0_i_92_n_0 ),
        .I4(\badr[15]_INST_0_i_84_n_0 ),
        .I5(ctl_sela[1]),
        .O(gr1_bus1__0_25));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \badr[15]_INST_0_i_40 
       (.I0(bank_sel[1]),
        .I1(ctl_sela[2]),
        .I2(\rgf/rctl/p_0_in ),
        .I3(ctl_sela[1]),
        .I4(\badr[15]_INST_0_i_92_n_0 ),
        .I5(\badr[15]_INST_0_i_84_n_0 ),
        .O(gr2_bus1__0_39));
  LUT6 #(
    .INIT(64'h0000000088800000)) 
    \badr[15]_INST_0_i_41 
       (.I0(bank_sel[1]),
        .I1(ctl_sela[1]),
        .I2(\badr[15]_INST_0_i_92_n_0 ),
        .I3(\badr[15]_INST_0_i_84_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\rgf/rctl/p_0_in ),
        .O(gr7_bus1__0_36));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \badr[15]_INST_0_i_42 
       (.I0(bank_sel[1]),
        .I1(ctl_sela[2]),
        .I2(\rgf/rctl/p_0_in ),
        .I3(ctl_sela[1]),
        .I4(\badr[15]_INST_0_i_92_n_0 ),
        .I5(\badr[15]_INST_0_i_84_n_0 ),
        .O(gr0_bus1__0_31));
  LUT6 #(
    .INIT(64'h0000000008080800)) 
    \badr[15]_INST_0_i_43 
       (.I0(bank_sel[1]),
        .I1(ctl_sela[2]),
        .I2(\rgf/rctl/p_0_in ),
        .I3(\badr[15]_INST_0_i_92_n_0 ),
        .I4(\badr[15]_INST_0_i_84_n_0 ),
        .I5(ctl_sela[1]),
        .O(gr5_bus1__0_21));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \badr[15]_INST_0_i_44 
       (.I0(bank_sel[1]),
        .I1(ctl_sela[1]),
        .I2(\badr[15]_INST_0_i_92_n_0 ),
        .I3(\badr[15]_INST_0_i_84_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\rgf/rctl/p_0_in ),
        .O(gr6_bus1__0_42));
  LUT6 #(
    .INIT(64'h0000000011151111)) 
    \badr[15]_INST_0_i_45 
       (.I0(ctl_sela[1]),
        .I1(ctl_fetch_fl_reg_1),
        .I2(\badr[15]_INST_0_i_81_n_0 ),
        .I3(\badr[15]_INST_0_i_82_n_0 ),
        .I4(\badr[15]_INST_0_i_83_n_0 ),
        .I5(\badr[15]_INST_0_i_84_n_0 ),
        .O(\badr[15]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008080800)) 
    \badr[15]_INST_0_i_46 
       (.I0(bank_sel[3]),
        .I1(ctl_sela[2]),
        .I2(\rgf/rctl/p_0_in ),
        .I3(\badr[15]_INST_0_i_92_n_0 ),
        .I4(\badr[15]_INST_0_i_84_n_0 ),
        .I5(ctl_sela[1]),
        .O(gr5_bus1__0_20));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \badr[15]_INST_0_i_47 
       (.I0(bank_sel[3]),
        .I1(ctl_sela[1]),
        .I2(\badr[15]_INST_0_i_92_n_0 ),
        .I3(\badr[15]_INST_0_i_84_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\rgf/rctl/p_0_in ),
        .O(gr6_bus1__0_41));
  LUT6 #(
    .INIT(64'h0000000044400000)) 
    \badr[15]_INST_0_i_48 
       (.I0(ctl_sela[2]),
        .I1(ctl_sela[1]),
        .I2(\badr[15]_INST_0_i_92_n_0 ),
        .I3(\badr[15]_INST_0_i_84_n_0 ),
        .I4(ctl_sela[4]),
        .I5(ctl_sela[3]),
        .O(abus_sel_0[1]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \badr[15]_INST_0_i_49 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[4]),
        .I2(ctl_sela[2]),
        .I3(\badr[15]_INST_0_i_84_n_0 ),
        .I4(\badr[15]_INST_0_i_92_n_0 ),
        .I5(ctl_sela[1]),
        .O(abus_sel_0[2]));
  LUT6 #(
    .INIT(64'h0000000002020200)) 
    \badr[15]_INST_0_i_50 
       (.I0(bank_sel[3]),
        .I1(ctl_sela[2]),
        .I2(\rgf/rctl/p_0_in ),
        .I3(\badr[15]_INST_0_i_92_n_0 ),
        .I4(\badr[15]_INST_0_i_84_n_0 ),
        .I5(ctl_sela[1]),
        .O(gr1_bus1__0_24));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \badr[15]_INST_0_i_51 
       (.I0(bank_sel[3]),
        .I1(ctl_sela[2]),
        .I2(\rgf/rctl/p_0_in ),
        .I3(ctl_sela[1]),
        .I4(\badr[15]_INST_0_i_92_n_0 ),
        .I5(\badr[15]_INST_0_i_84_n_0 ),
        .O(gr2_bus1__0_38));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \badr[15]_INST_0_i_52 
       (.I0(bank_sel[2]),
        .I1(ctl_sela[1]),
        .I2(\badr[15]_INST_0_i_92_n_0 ),
        .I3(\badr[15]_INST_0_i_84_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\rgf/rctl/p_0_in ),
        .O(gr4_bus1__0_28));
  LUT6 #(
    .INIT(64'h0000000008080800)) 
    \badr[15]_INST_0_i_53 
       (.I0(bank_sel[2]),
        .I1(ctl_sela[2]),
        .I2(\rgf/rctl/p_0_in ),
        .I3(\badr[15]_INST_0_i_92_n_0 ),
        .I4(\badr[15]_INST_0_i_84_n_0 ),
        .I5(ctl_sela[1]),
        .O(gr5_bus1__0_22));
  LUT6 #(
    .INIT(64'h0000000022200000)) 
    \badr[15]_INST_0_i_54 
       (.I0(bank_sel[0]),
        .I1(\rgf/rctl/p_0_in ),
        .I2(\badr[15]_INST_0_i_84_n_0 ),
        .I3(\badr[15]_INST_0_i_92_n_0 ),
        .I4(ctl_sela[1]),
        .I5(ctl_sela[2]),
        .O(gr3_bus1__0_34));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \badr[15]_INST_0_i_55 
       (.I0(bank_sel[0]),
        .I1(ctl_sela[1]),
        .I2(\badr[15]_INST_0_i_92_n_0 ),
        .I3(\badr[15]_INST_0_i_84_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\rgf/rctl/p_0_in ),
        .O(gr4_bus1__0_29));
  LUT6 #(
    .INIT(64'h0000000002020200)) 
    \badr[15]_INST_0_i_56 
       (.I0(bank_sel[0]),
        .I1(ctl_sela[2]),
        .I2(\rgf/rctl/p_0_in ),
        .I3(\badr[15]_INST_0_i_92_n_0 ),
        .I4(\badr[15]_INST_0_i_84_n_0 ),
        .I5(ctl_sela[1]),
        .O(gr1_bus1__0_26));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \badr[15]_INST_0_i_57 
       (.I0(bank_sel[0]),
        .I1(ctl_sela[2]),
        .I2(\rgf/rctl/p_0_in ),
        .I3(ctl_sela[1]),
        .I4(\badr[15]_INST_0_i_92_n_0 ),
        .I5(\badr[15]_INST_0_i_84_n_0 ),
        .O(gr2_bus1__0_40));
  LUT6 #(
    .INIT(64'h0000000088800000)) 
    \badr[15]_INST_0_i_58 
       (.I0(bank_sel[0]),
        .I1(ctl_sela[1]),
        .I2(\badr[15]_INST_0_i_92_n_0 ),
        .I3(\badr[15]_INST_0_i_84_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\rgf/rctl/p_0_in ),
        .O(gr7_bus1__0_37));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \badr[15]_INST_0_i_59 
       (.I0(bank_sel[0]),
        .I1(ctl_sela[2]),
        .I2(\rgf/rctl/p_0_in ),
        .I3(ctl_sela[1]),
        .I4(\badr[15]_INST_0_i_92_n_0 ),
        .I5(\badr[15]_INST_0_i_84_n_0 ),
        .O(gr0_bus1__0_32));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[15]_INST_0_i_6 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(sp_dec_0[14]),
        .I5(\badr[15]_INST_0_i_1_3 [15]),
        .O(\sp_reg[15] ));
  LUT6 #(
    .INIT(64'h0000000008080800)) 
    \badr[15]_INST_0_i_60 
       (.I0(bank_sel[0]),
        .I1(ctl_sela[2]),
        .I2(\rgf/rctl/p_0_in ),
        .I3(\badr[15]_INST_0_i_92_n_0 ),
        .I4(\badr[15]_INST_0_i_84_n_0 ),
        .I5(ctl_sela[1]),
        .O(gr5_bus1__0_23));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \badr[15]_INST_0_i_61 
       (.I0(bank_sel[0]),
        .I1(ctl_sela[1]),
        .I2(\badr[15]_INST_0_i_92_n_0 ),
        .I3(\badr[15]_INST_0_i_84_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\rgf/rctl/p_0_in ),
        .O(gr6_bus1__0_43));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \badr[15]_INST_0_i_62 
       (.I0(bank_sel[2]),
        .I1(ctl_sela[2]),
        .I2(\rgf/rctl/p_0_in ),
        .I3(ctl_sela[1]),
        .I4(\badr[15]_INST_0_i_92_n_0 ),
        .I5(\badr[15]_INST_0_i_84_n_0 ),
        .O(\rgf/bank02/abuso2l/gr0_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000000088800000)) 
    \badr[15]_INST_0_i_63 
       (.I0(bank_sel[2]),
        .I1(ctl_sela[1]),
        .I2(\badr[15]_INST_0_i_92_n_0 ),
        .I3(\badr[15]_INST_0_i_84_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\rgf/rctl/p_0_in ),
        .O(\rgf/bank02/abuso2l/gr7_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \badr[15]_INST_0_i_64 
       (.I0(bank_sel[2]),
        .I1(ctl_sela[1]),
        .I2(\badr[15]_INST_0_i_92_n_0 ),
        .I3(\badr[15]_INST_0_i_84_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\rgf/rctl/p_0_in ),
        .O(\rgf/bank02/abuso2l/gr6_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000000002020200)) 
    \badr[15]_INST_0_i_65 
       (.I0(bank_sel[2]),
        .I1(ctl_sela[2]),
        .I2(\rgf/rctl/p_0_in ),
        .I3(\badr[15]_INST_0_i_92_n_0 ),
        .I4(\badr[15]_INST_0_i_84_n_0 ),
        .I5(ctl_sela[1]),
        .O(\rgf/bank02/abuso2l/gr1_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \badr[15]_INST_0_i_66 
       (.I0(\badr[15]_INST_0_i_84_n_0 ),
        .I1(\badr[15]_INST_0_i_92_n_0 ),
        .I2(ctl_sela[1]),
        .I3(ctl_sela[3]),
        .I4(ctl_sela[4]),
        .I5(ctl_sela[2]),
        .O(abus_sel_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \badr[15]_INST_0_i_67 
       (.I0(\badr[15]_INST_0_i_97_n_0 ),
        .I1(\badr[15]_INST_0_i_98_n_0 ),
        .I2(ir[15]),
        .I3(ir[12]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\badr[15]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \badr[15]_INST_0_i_68 
       (.I0(\stat[2]_i_19_n_0 ),
        .I1(ir[0]),
        .I2(\badr[15]_INST_0_i_99_n_0 ),
        .I3(\sr[13]_i_6_n_0 ),
        .I4(\tr[15]_i_9_n_0 ),
        .I5(rst_n_fl_reg_5),
        .O(\badr[15]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAA00800080008000)) 
    \badr[15]_INST_0_i_69 
       (.I0(ir[14]),
        .I1(\badr[15]_INST_0_i_101_n_0 ),
        .I2(\ccmd[4]_INST_0_i_14_n_0 ),
        .I3(ir[11]),
        .I4(ir[7]),
        .I5(\badr[15]_INST_0_i_102_n_0 ),
        .O(\badr[15]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[15]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\badrx[15] [15]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [15]),
        .I4(\pc_reg[15]_0 [15]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[15] ));
  LUT6 #(
    .INIT(64'h7500FFFF75007500)) 
    \badr[15]_INST_0_i_70 
       (.I0(\badr[15]_INST_0_i_103_n_0 ),
        .I1(\badr[15]_INST_0_i_104_n_0 ),
        .I2(\badr[15]_INST_0_i_105_n_0 ),
        .I3(\sr[15]_i_20_n_0 ),
        .I4(\badr[15]_INST_0_i_106_n_0 ),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_70_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \badr[15]_INST_0_i_71 
       (.I0(ir[14]),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(Q[0]),
        .I4(ir[15]),
        .O(\badr[15]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h2222202200222022)) 
    \badr[15]_INST_0_i_72 
       (.I0(\badr[15]_INST_0_i_107_n_0 ),
        .I1(\badr[15]_INST_0_i_108_n_0 ),
        .I2(ir[5]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(\badr[15]_INST_0_i_109_n_0 ),
        .O(\badr[15]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAE0000)) 
    \badr[15]_INST_0_i_73 
       (.I0(\badr[15]_INST_0_i_110_n_0 ),
        .I1(\badr[15]_INST_0_i_111_n_0 ),
        .I2(\badr[15]_INST_0_i_112_n_0 ),
        .I3(\bcmd[2]_INST_0_i_2_n_0 ),
        .I4(ir[10]),
        .I5(\badr[15]_INST_0_i_113_n_0 ),
        .O(\badr[15]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBABBBBB)) 
    \badr[15]_INST_0_i_74 
       (.I0(\badr[15]_INST_0_i_114_n_0 ),
        .I1(\badr[15]_INST_0_i_115_n_0 ),
        .I2(ir[5]),
        .I3(ir[8]),
        .I4(ir[10]),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AABA0000)) 
    \badr[15]_INST_0_i_75 
       (.I0(\badr[15]_INST_0_i_116_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(ir[13]),
        .I3(\badr[15]_INST_0_i_117_n_0 ),
        .I4(\badr[15]_INST_0_i_118_n_0 ),
        .I5(\ccmd[2]_INST_0_i_18_n_0 ),
        .O(\badr[15]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00007F55)) 
    \badr[15]_INST_0_i_76 
       (.I0(\badr[15]_INST_0_i_119_n_0 ),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(ir[15]),
        .I4(Q[0]),
        .I5(rst_n_fl_reg_5),
        .O(\badr[15]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h0000001011111111)) 
    \badr[15]_INST_0_i_77 
       (.I0(ir[13]),
        .I1(ir[15]),
        .I2(\badr[15]_INST_0_i_120_n_0 ),
        .I3(\badr[15]_INST_0_i_121_n_0 ),
        .I4(rst_n_fl_reg_2),
        .I5(\badr[15]_INST_0_i_136_0 ),
        .O(\badr[15]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hDFDDDFDFDFDFDFDF)) 
    \badr[15]_INST_0_i_78 
       (.I0(ir[13]),
        .I1(ir[15]),
        .I2(\badr[15]_INST_0_i_123_n_0 ),
        .I3(\badr[15]_INST_0_i_124_n_0 ),
        .I4(\badr[15]_INST_0_i_125_n_0 ),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAFBAAAAAAAA)) 
    \badr[15]_INST_0_i_80 
       (.I0(\badr[15]_INST_0_i_84_n_0 ),
        .I1(\badr[15]_INST_0_i_126_n_0 ),
        .I2(\badr[15]_INST_0_i_127_n_0 ),
        .I3(\badr[15]_INST_0_i_71_n_0 ),
        .I4(\badr[15]_INST_0_i_128_n_0 ),
        .I5(ctl_fetch_fl_reg_1),
        .O(ctl_sela[1]));
  LUT6 #(
    .INIT(64'h0080008000808888)) 
    \badr[15]_INST_0_i_81 
       (.I0(\sr[15]_i_20_n_0 ),
        .I1(ir[0]),
        .I2(ir[3]),
        .I3(\badr[15]_INST_0_i_129_n_0 ),
        .I4(\badr[15]_INST_0_i_104_n_0 ),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h0008080800080008)) 
    \badr[15]_INST_0_i_82 
       (.I0(ir[8]),
        .I1(ir[15]),
        .I2(Q[0]),
        .I3(\ccmd[2]_INST_0_i_2_n_0 ),
        .I4(ir[14]),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h5757575757F7F7F7)) 
    \badr[15]_INST_0_i_83 
       (.I0(\badr[15]_INST_0_i_130_n_0 ),
        .I1(\badr[15]_INST_0_i_90_0 ),
        .I2(ir[14]),
        .I3(\ccmd[2]_INST_0_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_131_n_0 ),
        .I5(\bdatw[15]_INST_0_i_50_n_0 ),
        .O(\badr[15]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \badr[15]_INST_0_i_84 
       (.I0(ir[11]),
        .I1(rst_n_fl_reg_2),
        .I2(\fch_irq_lev[1]_i_5_n_0 ),
        .I3(ctl_fetch_ext_fl_i_7_n_0),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\badr[15]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h55555555777F7777)) 
    \badr[15]_INST_0_i_89 
       (.I0(ctl_sela[1]),
        .I1(ctl_fetch_fl_reg_1),
        .I2(\badr[15]_INST_0_i_81_n_0 ),
        .I3(\badr[15]_INST_0_i_82_n_0 ),
        .I4(\badr[15]_INST_0_i_83_n_0 ),
        .I5(\badr[15]_INST_0_i_84_n_0 ),
        .O(\badr[15]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFA8AA)) 
    \badr[15]_INST_0_i_90 
       (.I0(ctl_fetch_fl_reg_1),
        .I1(\badr[15]_INST_0_i_81_n_0 ),
        .I2(\badr[15]_INST_0_i_82_n_0 ),
        .I3(\badr[15]_INST_0_i_83_n_0 ),
        .I4(\badr[15]_INST_0_i_84_n_0 ),
        .I5(ctl_sela[1]),
        .O(\badr[15]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8888888A888)) 
    \badr[15]_INST_0_i_92 
       (.I0(ctl_fetch_fl_reg_1),
        .I1(\badr[15]_INST_0_i_132_n_0 ),
        .I2(\badr[15]_INST_0_i_130_n_0 ),
        .I3(\badr[15]_INST_0_i_90_0 ),
        .I4(ir[14]),
        .I5(\badr[15]_INST_0_i_133_n_0 ),
        .O(\badr[15]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFFFFFFFE)) 
    \badr[15]_INST_0_i_93 
       (.I0(\badr[15]_INST_0_i_134_n_0 ),
        .I1(\badr[15]_INST_0_i_135_n_0 ),
        .I2(\badr[15]_INST_0_i_49_0 ),
        .I3(\badr[15]_INST_0_i_136_n_0 ),
        .I4(ir[11]),
        .I5(\badr[15]_INST_0_i_137_n_0 ),
        .O(\rgf/rctl/p_0_in ));
  LUT5 #(
    .INIT(32'h3B0B0434)) 
    \badr[15]_INST_0_i_97 
       (.I0(\badr[15]_INST_0_i_2 [5]),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(\badr[15]_INST_0_i_2 [6]),
        .I4(ir[11]),
        .O(\badr[15]_INST_0_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEFFF)) 
    \badr[15]_INST_0_i_98 
       (.I0(\badr[15]_INST_0_i_138_n_0 ),
        .I1(ir[2]),
        .I2(ir[0]),
        .I3(fch_irq_req),
        .I4(ir[1]),
        .I5(\ccmd[2]_INST_0_i_27_n_0 ),
        .O(\badr[15]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \badr[15]_INST_0_i_99 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\badr[15]_INST_0_i_99_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[1]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(ctl_extadr),
        .I3(abus_0[1]),
        .O(badr[1]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[1]_INST_0_i_13 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[1]_19 ));
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
    .INIT(64'h2200200002000000)) 
    \badr[1]_INST_0_i_6 
       (.I0(ctl_sela[3]),
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
        .I3(\badr[15]_INST_0_i_1_4 [1]),
        .I4(\pc_reg[15]_0 [1]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[1] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[2]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(ctl_extadr),
        .I3(abus_0[2]),
        .O(badr[2]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[2]_INST_0_i_13 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2 [2]),
        .O(\sr_reg[2]_0 ));
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
    .INIT(64'h2200200002000000)) 
    \badr[2]_INST_0_i_6 
       (.I0(ctl_sela[3]),
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
        .I3(\badr[15]_INST_0_i_1_4 [2]),
        .I4(\pc_reg[15]_0 [2]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[2] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[3]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(ctl_extadr),
        .I3(abus_0[3]),
        .O(badr[3]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[3]_INST_0_i_13 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2 [3]),
        .O(\sr_reg[3]_0 ));
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
    .INIT(64'h2200200002000000)) 
    \badr[3]_INST_0_i_6 
       (.I0(ctl_sela[3]),
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
        .I3(\badr[15]_INST_0_i_1_4 [3]),
        .I4(\pc_reg[15]_0 [3]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[3] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[4]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(ctl_extadr),
        .I3(abus_0[4]),
        .O(badr[4]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[4]_INST_0_i_13 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2 [4]),
        .O(\sr_reg[4]_0 ));
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
    .INIT(64'h2200200002000000)) 
    \badr[4]_INST_0_i_6 
       (.I0(ctl_sela[3]),
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
        .I3(\badr[15]_INST_0_i_1_4 [4]),
        .I4(\pc_reg[15]_0 [4]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[4] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[5]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(ctl_extadr),
        .I3(abus_0[5]),
        .O(badr[5]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[5]_INST_0_i_13 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2 [5]),
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
        .I1(\badr[15]_INST_0_i_5 [5]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [5]),
        .I4(\badr[15]_INST_0_i_5_1 [5]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[5] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[5]_INST_0_i_6 
       (.I0(ctl_sela[3]),
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
        .I3(\badr[15]_INST_0_i_1_4 [5]),
        .I4(\pc_reg[15]_0 [5]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[5] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[6]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(ctl_extadr),
        .I3(abus_0[6]),
        .O(badr[6]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[6]_INST_0_i_13 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(ctl_sela[4]),
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
    .INIT(64'h2200200002000000)) 
    \badr[6]_INST_0_i_6 
       (.I0(ctl_sela[3]),
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
        .I3(\badr[15]_INST_0_i_1_4 [6]),
        .I4(\pc_reg[15]_0 [6]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[6] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[7]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(ctl_extadr),
        .I3(abus_0[7]),
        .O(badr[7]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[7]_INST_0_i_13 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2 [7]),
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
        .I1(\badr[15]_INST_0_i_5 [7]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [7]),
        .I4(\badr[15]_INST_0_i_5_1 [7]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\grn_reg[7] ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \badr[7]_INST_0_i_6 
       (.I0(ctl_sela[3]),
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
        .I3(\badr[15]_INST_0_i_1_4 [7]),
        .I4(\pc_reg[15]_0 [7]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[7] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[8]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(ctl_extadr),
        .I3(abus_0[8]),
        .O(badr[8]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[8]_INST_0_i_13 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(ctl_sela[4]),
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
    .INIT(64'h2200200002000000)) 
    \badr[8]_INST_0_i_6 
       (.I0(ctl_sela[3]),
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
        .I3(\badr[15]_INST_0_i_1_4 [8]),
        .I4(\pc_reg[15]_0 [8]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[8] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[9]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
        .I2(ctl_extadr),
        .I3(abus_0[9]),
        .O(badr[9]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[9]_INST_0_i_13 
       (.I0(ctl_sela[3]),
        .I1(ctl_sela[2]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(ctl_sela[4]),
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
    .INIT(64'h2200200002000000)) 
    \badr[9]_INST_0_i_6 
       (.I0(ctl_sela[3]),
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
        .I3(\badr[15]_INST_0_i_1_4 [9]),
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
    .INIT(64'h0000000000004000)) 
    \badrx[15]_INST_0_i_1 
       (.I0(\badrx[15]_INST_0_i_2_n_0 ),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(badr_0_sn_1),
        .I3(ir[12]),
        .I4(\badrx[15]_INST_0_i_5_n_0 ),
        .I5(\badrx[15]_INST_0_i_6_n_0 ),
        .O(ctl_extadr));
  LUT3 #(
    .INIT(8'h7F)) 
    \badrx[15]_INST_0_i_2 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[10]),
        .O(\badrx[15]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[15]_INST_0_i_3 
       (.I0(ir[14]),
        .I1(ir[13]),
        .O(\badrx[15]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \badrx[15]_INST_0_i_5 
       (.I0(ir[15]),
        .I1(Q[2]),
        .O(\badrx[15]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \badrx[15]_INST_0_i_6 
       (.I0(ir[11]),
        .I1(crdy),
        .I2(\badrx[15]_INST_0_i_7_n_0 ),
        .O(\badrx[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \badrx[15]_INST_0_i_7 
       (.I0(ir[15]),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\badrx[15]_INST_0_i_7_n_0 ));
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
    .INIT(4'h2)) 
    \bbus_o[0]_INST_0 
       (.I0(\sp_reg[0] ),
        .I1(crdy_0),
        .O(bbus_o[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \bbus_o[10]_INST_0 
       (.I0(crdy_0),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .O(bbus_o[10]));
  LUT2 #(
    .INIT(4'h1)) 
    \bbus_o[11]_INST_0 
       (.I0(crdy_0),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .O(bbus_o[11]));
  LUT2 #(
    .INIT(4'h1)) 
    \bbus_o[12]_INST_0 
       (.I0(crdy_0),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .O(bbus_o[12]));
  LUT2 #(
    .INIT(4'h1)) 
    \bbus_o[13]_INST_0 
       (.I0(crdy_0),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .O(bbus_o[13]));
  LUT2 #(
    .INIT(4'h1)) 
    \bbus_o[14]_INST_0 
       (.I0(crdy_0),
        .I1(\bdatw[14]_INST_0_i_1_n_0 ),
        .O(bbus_o[14]));
  LUT2 #(
    .INIT(4'h1)) 
    \bbus_o[15]_INST_0 
       (.I0(crdy_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .O(bbus_o[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[1]_INST_0 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(crdy_0),
        .O(bbus_o[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[2]_INST_0 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(crdy_0),
        .O(bbus_o[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \bbus_o[3]_INST_0 
       (.I0(crdy_0),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bbus_o[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[4]_INST_0 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(crdy_0),
        .O(bbus_o[4]));
  LUT2 #(
    .INIT(4'h1)) 
    \bbus_o[5]_INST_0 
       (.I0(crdy_0),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bbus_o[5]));
  LUT2 #(
    .INIT(4'h1)) 
    \bbus_o[6]_INST_0 
       (.I0(crdy_0),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bbus_o[6]));
  LUT2 #(
    .INIT(4'h1)) 
    \bbus_o[7]_INST_0 
       (.I0(crdy_0),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bbus_o[7]));
  LUT2 #(
    .INIT(4'h1)) 
    \bbus_o[8]_INST_0 
       (.I0(crdy_0),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .O(bbus_o[8]));
  LUT2 #(
    .INIT(4'h1)) 
    \bbus_o[9]_INST_0 
       (.I0(crdy_0),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .O(bbus_o[9]));
  LUT6 #(
    .INIT(64'h0002000300020000)) 
    \bcmd[0]_INST_0 
       (.I0(\bcmd[0]_INST_0_i_1_n_0 ),
        .I1(\bcmd[0]_INST_0_i_2_n_0 ),
        .I2(\bcmd[0]_INST_0_i_3_n_0 ),
        .I3(\bcmd[0]_INST_0_i_4_n_0 ),
        .I4(ir[12]),
        .I5(\bcmd[0]_INST_0_i_5_n_0 ),
        .O(\stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8000000080808080)) 
    \bcmd[0]_INST_0_i_1 
       (.I0(\bcmd[0]_INST_0_i_6_n_0 ),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(ir[6]),
        .O(\bcmd[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0FFD)) 
    \bcmd[0]_INST_0_i_2 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(ir[7]),
        .I3(ir[10]),
        .I4(ir[9]),
        .I5(ir[8]),
        .O(\bcmd[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABAAEFAAEFAAEFAA)) 
    \bcmd[0]_INST_0_i_3 
       (.I0(\bcmd[1] ),
        .I1(ir[6]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(ir[3]),
        .O(\bcmd[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \bcmd[0]_INST_0_i_4 
       (.I0(\bcmd[0]_INST_0_i_7_n_0 ),
        .I1(Q[0]),
        .I2(ir[1]),
        .I3(ir[8]),
        .I4(ir[2]),
        .I5(ir[0]),
        .O(\bcmd[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bcmd[0]_INST_0_i_5 
       (.I0(rst_n_fl_reg_7),
        .I1(ir[4]),
        .I2(ir[6]),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(ir[2]),
        .O(\bcmd[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000808F6660000)) 
    \bcmd[0]_INST_0_i_6 
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(ir[6]),
        .I3(ir[5]),
        .I4(ir[9]),
        .I5(Q[0]),
        .O(\bcmd[0]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \bcmd[0]_INST_0_i_7 
       (.I0(ir[4]),
        .I1(ir[7]),
        .I2(ir[3]),
        .I3(ir[5]),
        .O(\bcmd[0]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \bcmd[0]_INST_0_i_8 
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(ir[5]),
        .I3(ir[9]),
        .O(rst_n_fl_reg_7));
  LUT6 #(
    .INIT(64'h2200223022002200)) 
    \bcmd[1]_INST_0 
       (.I0(\bcmd[1]_INST_0_i_1_n_0 ),
        .I1(\bcmd[1] ),
        .I2(\bcmd[1]_INST_0_i_3_n_0 ),
        .I3(ir[6]),
        .I4(\bcmd[1]_INST_0_i_4_n_0 ),
        .I5(\bcmd[1]_INST_0_i_5_n_0 ),
        .O(\stat_reg[0] ));
  LUT6 #(
    .INIT(64'h4040808044408080)) 
    \bcmd[1]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(\bcmd[1]_INST_0_i_6_n_0 ),
        .I2(\bcmd[1]_INST_0_i_7_n_0 ),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(\bcmd[1]_INST_0_i_8_n_0 ),
        .O(\bcmd[1]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \bcmd[1]_INST_0_i_10 
       (.I0(ir[2]),
        .I1(ir[8]),
        .I2(ir[9]),
        .O(\bcmd[1]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bcmd[1]_INST_0_i_11 
       (.I0(ir[11]),
        .I1(ir[10]),
        .O(\bcmd[1]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bcmd[1]_INST_0_i_3 
       (.I0(ir[5]),
        .I1(ir[4]),
        .O(\bcmd[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEBEFEBF)) 
    \bcmd[1]_INST_0_i_4 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(ir[11]),
        .I2(ir[12]),
        .I3(Q[0]),
        .I4(fch_irq_req),
        .I5(\bcmd[1]_INST_0_i_10_n_0 ),
        .O(\bcmd[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8100000000000081)) 
    \bcmd[1]_INST_0_i_5 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[9]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\bcmd[1]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bcmd[1]_INST_0_i_6 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(ir[14]),
        .O(\bcmd[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0004000440040004)) 
    \bcmd[1]_INST_0_i_7 
       (.I0(\bcmd[1]_INST_0_i_11_n_0 ),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(ir[5]),
        .I5(ir[3]),
        .O(\bcmd[1]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bcmd[1]_INST_0_i_8 
       (.I0(ir[11]),
        .I1(ir[10]),
        .O(\bcmd[1]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h3F3FFEFF)) 
    \bcmd[1]_INST_0_i_9 
       (.I0(ir[1]),
        .I1(ir[8]),
        .I2(ir[7]),
        .I3(ir[0]),
        .I4(ir[3]),
        .O(\bcmd[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000280000)) 
    \bcmd[2]_INST_0 
       (.I0(\bcmd[2]_INST_0_i_1_n_0 ),
        .I1(ir[11]),
        .I2(ir[10]),
        .I3(Q[1]),
        .I4(ir[12]),
        .I5(ir[15]),
        .O(\stat_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \bcmd[2]_INST_0_i_1 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(ir[13]),
        .I2(Q[0]),
        .I3(ir[7]),
        .I4(ir[14]),
        .I5(Q[2]),
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
       (.I0(\stat_reg[0] ),
        .I1(\sp_reg[0] ),
        .O(bdatw[0]));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[10]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[1] ),
        .I2(\bdatw[10]_INST_0_i_1_n_0 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[10]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[10]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[10]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(p_1_in[10]),
        .I4(\bdatw[10]_INST_0_i_4_n_0 ),
        .I5(\bdatw[10]_INST_0_i_5_n_0 ),
        .O(\bdatw[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_10 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [2]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [2]),
        .I4(\pc_reg[15]_0 [2]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[10]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatw[10]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[2]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .O(\bdatw[10]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \bdatw[10]_INST_0_i_12 
       (.I0(ir[3]),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(ir[2]),
        .O(\bdatw[10]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[10]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(\bdatw[10]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[10]_INST_0_i_14 
       (.I0(\bdatw[10]_INST_0_i_29_n_0 ),
        .I1(\bdatw[10]_INST_0_i_4_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [5]),
        .I3(gr4_bus1__0_1),
        .I4(\bdatw[15]_INST_0_i_6_1 [5]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [10]));
  LUT6 #(
    .INIT(64'hF0FFFFF03F3F5F5F)) 
    \bdatw[10]_INST_0_i_16 
       (.I0(ir[1]),
        .I1(ir[2]),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[10]_INST_0_i_33_n_0 ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(\bdatw[10]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[10]_INST_0_i_18 
       (.I0(gr4_bus1__0),
        .I1(\bdatw[12]_INST_0_i_7_0 [2]),
        .I2(gr3_bus1__0),
        .I3(\bdatw[12]_INST_0_i_7_1 [2]),
        .I4(\bdatw[10]_INST_0_i_34_n_0 ),
        .I5(\bdatw[10]_INST_0_i_35_n_0 ),
        .O(\bdatw[10]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \bdatw[10]_INST_0_i_19 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(ctl_selb[4]),
        .I4(\badr[15]_INST_0_i_2 [2]),
        .O(\bdatw[10]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[10]_INST_0_i_2 
       (.I0(p_1_in[2]),
        .I1(\bdatw[10]_INST_0_i_7_n_0 ),
        .I2(\bdatw[12] [2]),
        .I3(\bdatw[10]_INST_0_i_9_n_0 ),
        .I4(\bdatw[10]_INST_0_i_10_n_0 ),
        .I5(\bdatw[10]_INST_0_i_11_n_0 ),
        .O(\bdatw[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[10]_INST_0_i_20 
       (.I0(gr6_bus1__0),
        .I1(\bdatw[12]_INST_0_i_7_4 [2]),
        .I2(gr5_bus1__0_10),
        .I3(\bdatw[12]_INST_0_i_7_5 [2]),
        .I4(\bdatw[10]_INST_0_i_36_n_0 ),
        .I5(\bdatw[10]_INST_0_i_37_n_0 ),
        .O(\bdatw[10]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[10]_INST_0_i_21 
       (.I0(gr2_bus1__0),
        .I1(\bdatw[12]_INST_0_i_7_2 [2]),
        .I2(gr1_bus1__0),
        .I3(\bdatw[12]_INST_0_i_7_3 [2]),
        .I4(\bdatw[10]_INST_0_i_38_n_0 ),
        .I5(\bdatw[10]_INST_0_i_39_n_0 ),
        .O(\bdatw[10]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_24 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [2]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [2]),
        .I4(\badr[15]_INST_0_i_5_1 [2]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[10]_INST_0_i_26 
       (.I0(gr6_bus1__0_11),
        .I1(\bdatw[12]_INST_0_i_8_1 [2]),
        .I2(gr5_bus1__0_12),
        .I3(\bdatw[12]_INST_0_i_8_2 [2]),
        .I4(\bdatw[10]_INST_0_i_40_n_0 ),
        .I5(\bdatw[10]_INST_0_i_41_n_0 ),
        .O(\grn_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[10]_INST_0_i_27 
       (.I0(gr2_bus1__0_4),
        .I1(\bdatw[12]_INST_0_i_8 [2]),
        .I2(gr1_bus1__0_5),
        .I3(\bdatw[12]_INST_0_i_8_0 [2]),
        .I4(\bdatw[10]_INST_0_i_42_n_0 ),
        .I5(\bdatw[10]_INST_0_i_43_n_0 ),
        .O(\grn_reg[2] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[10]_INST_0_i_29 
       (.I0(\bdatw[10]_INST_0_i_44_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_20_0 [5]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_20_1 [5]),
        .O(\bdatw[10]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h8008800880AA8008)) 
    \bdatw[10]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[13]_INST_0_i_12_n_0 ),
        .I2(\bdatw[10]_INST_0_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(ir[9]),
        .I5(\bdatw[10]_INST_0_i_13_n_0 ),
        .O(p_1_in[10]));
  LUT4 #(
    .INIT(16'h0004)) 
    \bdatw[10]_INST_0_i_33 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(ir[2]),
        .O(\bdatw[10]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \bdatw[10]_INST_0_i_34 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[15]_INST_0_i_10_n_0 ),
        .I4(bank_sel[3]),
        .I5(\bdatw[12]_INST_0_i_17_1 [2]),
        .O(\bdatw[10]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \bdatw[10]_INST_0_i_35 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[12]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(bank_sel[3]),
        .I5(\bdatw[12]_INST_0_i_17_0 [2]),
        .O(\bdatw[10]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \bdatw[10]_INST_0_i_36 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[12]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_19_1 [2]),
        .O(\bdatw[10]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \bdatw[10]_INST_0_i_37 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_19_0 [2]),
        .O(\bdatw[10]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \bdatw[10]_INST_0_i_38 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_20_1 [2]),
        .O(\bdatw[10]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[10]_INST_0_i_39 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[12]_INST_0_i_77_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_20_0 [2]),
        .O(\bdatw[10]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[10]_INST_0_i_4 
       (.I0(\bdatw[12]_INST_0_i_30_0 [1]),
        .I1(\badr[15]_INST_0_i_1_3 [10]),
        .I2(\bdatw[12]_INST_0_i_30_0 [2]),
        .I3(sp_dec_0[9]),
        .I4(\rgf/bbus_b02 [10]),
        .I5(\bdatw[10]_INST_0_i_1_0 ),
        .O(\bdatw[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \bdatw[10]_INST_0_i_40 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[12]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_25_1 [2]),
        .O(\bdatw[10]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \bdatw[10]_INST_0_i_41 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_25_0 [2]),
        .O(\bdatw[10]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \bdatw[10]_INST_0_i_42 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_26_1 [2]),
        .O(\bdatw[10]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[10]_INST_0_i_43 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[12]_INST_0_i_77_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_26_0 [2]),
        .O(\bdatw[10]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_44 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [10]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [10]),
        .I4(\badr[15]_INST_0_i_5_1 [10]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [10]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [10]),
        .I4(\pc_reg[15]_0 [10]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[10]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[10]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[10]_INST_0_i_16_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[10]_INST_0_i_7 
       (.I0(\bdatw[10]_INST_0_i_2_0 ),
        .I1(\bdatw[10]_INST_0_i_18_n_0 ),
        .I2(\bdatw[10]_INST_0_i_19_n_0 ),
        .I3(\bdatw[10]_INST_0_i_20_n_0 ),
        .I4(\bdatw[10]_INST_0_i_21_n_0 ),
        .I5(\bdatw[10]_INST_0_i_2_1 ),
        .O(\bdatw[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF888F000F000F000)) 
    \bdatw[10]_INST_0_i_9 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb[4]),
        .I2(sp_dec_0[1]),
        .I3(\bdatw[12]_INST_0_i_30_0 [2]),
        .I4(\badr[15]_INST_0_i_1_3 [2]),
        .I5(\bdatw[12]_INST_0_i_30_n_0 ),
        .O(\bdatw[10]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[11]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[1] ),
        .I2(\bdatw[11]_INST_0_i_1_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bdatw[11]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[11]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[11]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(p_1_in[11]),
        .I4(\bdatw[11]_INST_0_i_4_n_0 ),
        .I5(\bdatw[11]_INST_0_i_5_n_0 ),
        .O(\bdatw[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F000F000F000)) 
    \bdatw[11]_INST_0_i_10 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb[4]),
        .I2(sp_dec_0[2]),
        .I3(\bdatw[12]_INST_0_i_30_0 [2]),
        .I4(\badr[15]_INST_0_i_1_3 [3]),
        .I5(\bdatw[12]_INST_0_i_30_n_0 ),
        .O(\bdatw[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_11 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [3]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [3]),
        .I4(\pc_reg[15]_0 [3]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFFAAEAAAAA)) 
    \bdatw[11]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[2]),
        .I4(ir[0]),
        .I5(\bdatw[15]_INST_0_i_4_n_0 ),
        .O(\bdatw[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[11]_INST_0_i_13 
       (.I0(\bdatw[11]_INST_0_i_28_n_0 ),
        .I1(\bdatw[11]_INST_0_i_4_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [6]),
        .I3(gr4_bus1__0_1),
        .I4(\bdatw[15]_INST_0_i_6_1 [6]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [11]));
  LUT6 #(
    .INIT(64'hF0FFFFF03F3F5F5F)) 
    \bdatw[11]_INST_0_i_15 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[11]_INST_0_i_32_n_0 ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(\bdatw[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[11]_INST_0_i_17 
       (.I0(gr4_bus1__0),
        .I1(\bdatw[12]_INST_0_i_7_0 [3]),
        .I2(gr3_bus1__0),
        .I3(\bdatw[12]_INST_0_i_7_1 [3]),
        .I4(\bdatw[11]_INST_0_i_33_n_0 ),
        .I5(\bdatw[11]_INST_0_i_34_n_0 ),
        .O(\bdatw[11]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \bdatw[11]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(ctl_selb[4]),
        .I4(\badr[15]_INST_0_i_2 [3]),
        .O(\bdatw[11]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[11]_INST_0_i_19 
       (.I0(gr6_bus1__0),
        .I1(\bdatw[12]_INST_0_i_7_4 [3]),
        .I2(gr5_bus1__0_10),
        .I3(\bdatw[12]_INST_0_i_7_5 [3]),
        .I4(\bdatw[11]_INST_0_i_35_n_0 ),
        .I5(\bdatw[11]_INST_0_i_36_n_0 ),
        .O(\bdatw[11]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatw[11]_INST_0_i_2 
       (.I0(\bdatw[11]_INST_0_i_6_n_0 ),
        .I1(p_1_in[3]),
        .I2(\bdatw[11]_INST_0_i_8_n_0 ),
        .I3(\bdatw[12] [3]),
        .I4(\bdatw[11]_INST_0_i_10_n_0 ),
        .I5(\bdatw[11]_INST_0_i_11_n_0 ),
        .O(\bdatw[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[11]_INST_0_i_20 
       (.I0(gr2_bus1__0),
        .I1(\bdatw[12]_INST_0_i_7_2 [3]),
        .I2(gr1_bus1__0),
        .I3(\bdatw[12]_INST_0_i_7_3 [3]),
        .I4(\bdatw[11]_INST_0_i_37_n_0 ),
        .I5(\bdatw[11]_INST_0_i_38_n_0 ),
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
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[11]_INST_0_i_25 
       (.I0(gr6_bus1__0_11),
        .I1(\bdatw[12]_INST_0_i_8_1 [3]),
        .I2(gr5_bus1__0_12),
        .I3(\bdatw[12]_INST_0_i_8_2 [3]),
        .I4(\bdatw[11]_INST_0_i_39_n_0 ),
        .I5(\bdatw[11]_INST_0_i_40_n_0 ),
        .O(\grn_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[11]_INST_0_i_26 
       (.I0(gr2_bus1__0_4),
        .I1(\bdatw[12]_INST_0_i_8 [3]),
        .I2(gr1_bus1__0_5),
        .I3(\bdatw[12]_INST_0_i_8_0 [3]),
        .I4(\bdatw[11]_INST_0_i_41_n_0 ),
        .I5(\bdatw[11]_INST_0_i_42_n_0 ),
        .O(\grn_reg[3] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[11]_INST_0_i_28 
       (.I0(\bdatw[11]_INST_0_i_43_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_20_0 [6]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_20_1 [6]),
        .O(\bdatw[11]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000F200FF00FF00)) 
    \bdatw[11]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_9_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .I4(\bdatw[11]_INST_0_i_12_n_0 ),
        .I5(\bdatw[15]_INST_0_i_17_n_0 ),
        .O(p_1_in[11]));
  LUT4 #(
    .INIT(16'h0400)) 
    \bdatw[11]_INST_0_i_32 
       (.I0(ir[2]),
        .I1(ir[0]),
        .I2(ir[3]),
        .I3(ir[1]),
        .O(\bdatw[11]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \bdatw[11]_INST_0_i_33 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[15]_INST_0_i_10_n_0 ),
        .I4(bank_sel[3]),
        .I5(\bdatw[12]_INST_0_i_17_1 [3]),
        .O(\bdatw[11]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \bdatw[11]_INST_0_i_34 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[12]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(bank_sel[3]),
        .I5(\bdatw[12]_INST_0_i_17_0 [3]),
        .O(\bdatw[11]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \bdatw[11]_INST_0_i_35 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[12]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_19_1 [3]),
        .O(\bdatw[11]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \bdatw[11]_INST_0_i_36 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_19_0 [3]),
        .O(\bdatw[11]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \bdatw[11]_INST_0_i_37 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_20_1 [3]),
        .O(\bdatw[11]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[11]_INST_0_i_38 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[12]_INST_0_i_77_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_20_0 [3]),
        .O(\bdatw[11]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \bdatw[11]_INST_0_i_39 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[12]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_25_1 [3]),
        .O(\bdatw[11]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[11]_INST_0_i_4 
       (.I0(\bdatw[12]_INST_0_i_30_0 [1]),
        .I1(\badr[15]_INST_0_i_1_3 [11]),
        .I2(\bdatw[12]_INST_0_i_30_0 [2]),
        .I3(sp_dec_0[10]),
        .I4(\rgf/bbus_b02 [11]),
        .I5(\bdatw[11]_INST_0_i_1_0 ),
        .O(\bdatw[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \bdatw[11]_INST_0_i_40 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_25_0 [3]),
        .O(\bdatw[11]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \bdatw[11]_INST_0_i_41 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_26_1 [3]),
        .O(\bdatw[11]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[11]_INST_0_i_42 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[12]_INST_0_i_77_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_26_0 [3]),
        .O(\bdatw[11]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_43 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [11]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [11]),
        .I4(\badr[15]_INST_0_i_5_1 [11]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [11]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [11]),
        .I4(\pc_reg[15]_0 [11]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[11]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatw[11]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[3]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .O(\bdatw[11]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[11]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[11]_INST_0_i_15_n_0 ),
        .O(p_1_in[3]));
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
    .INIT(16'h8A02)) 
    \bdatw[12]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[1] ),
        .I2(\bdatw[12]_INST_0_i_1_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(bdatw[12]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[12]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[12]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(p_1_in[12]),
        .I4(\bdatw[12]_INST_0_i_4_n_0 ),
        .I5(\bdatw[12]_INST_0_i_5_n_0 ),
        .O(\bdatw[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_10 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [4]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [4]),
        .I4(\pc_reg[15]_0 [4]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[12]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatw[12]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[4]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .O(\bdatw[12]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \bdatw[12]_INST_0_i_12 
       (.I0(ir[3]),
        .I1(ir[2]),
        .I2(ir[0]),
        .I3(ir[1]),
        .O(\bdatw[12]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[12]_INST_0_i_13 
       (.I0(\bdatw[12]_INST_0_i_31_n_0 ),
        .I1(\bdatw[12]_INST_0_i_4_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [7]),
        .I3(gr4_bus1__0_1),
        .I4(\bdatw[15]_INST_0_i_6_1 [7]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [12]));
  LUT6 #(
    .INIT(64'h0F0F0FF03535FFFF)) 
    \bdatw[12]_INST_0_i_15 
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[12]_INST_0_i_35_n_0 ),
        .I4(\bdatw[15]_INST_0_i_10_n_0 ),
        .I5(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(\bdatw[12]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[12]_INST_0_i_17 
       (.I0(gr4_bus1__0),
        .I1(\bdatw[12]_INST_0_i_7_0 [4]),
        .I2(gr3_bus1__0),
        .I3(\bdatw[12]_INST_0_i_7_1 [4]),
        .I4(\bdatw[12]_INST_0_i_40_n_0 ),
        .I5(\bdatw[12]_INST_0_i_41_n_0 ),
        .O(\bdatw[12]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \bdatw[12]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(ctl_selb[4]),
        .I4(\badr[15]_INST_0_i_2 [4]),
        .O(\bdatw[12]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[12]_INST_0_i_19 
       (.I0(gr6_bus1__0),
        .I1(\bdatw[12]_INST_0_i_7_4 [4]),
        .I2(gr5_bus1__0_10),
        .I3(\bdatw[12]_INST_0_i_7_5 [4]),
        .I4(\bdatw[12]_INST_0_i_44_n_0 ),
        .I5(\bdatw[12]_INST_0_i_45_n_0 ),
        .O(\bdatw[12]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[12]_INST_0_i_2 
       (.I0(p_1_in[4]),
        .I1(\bdatw[12]_INST_0_i_7_n_0 ),
        .I2(\bdatw[12] [4]),
        .I3(\bdatw[12]_INST_0_i_9_n_0 ),
        .I4(\bdatw[12]_INST_0_i_10_n_0 ),
        .I5(\bdatw[12]_INST_0_i_11_n_0 ),
        .O(\bdatw[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[12]_INST_0_i_20 
       (.I0(gr2_bus1__0),
        .I1(\bdatw[12]_INST_0_i_7_2 [4]),
        .I2(gr1_bus1__0),
        .I3(\bdatw[12]_INST_0_i_7_3 [4]),
        .I4(\bdatw[12]_INST_0_i_48_n_0 ),
        .I5(\bdatw[12]_INST_0_i_49_n_0 ),
        .O(\bdatw[12]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_23 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [4]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [4]),
        .I4(\badr[15]_INST_0_i_5_1 [4]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[12]_INST_0_i_25 
       (.I0(gr6_bus1__0_11),
        .I1(\bdatw[12]_INST_0_i_8_1 [4]),
        .I2(gr5_bus1__0_12),
        .I3(\bdatw[12]_INST_0_i_8_2 [4]),
        .I4(\bdatw[12]_INST_0_i_58_n_0 ),
        .I5(\bdatw[12]_INST_0_i_59_n_0 ),
        .O(\grn_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[12]_INST_0_i_26 
       (.I0(gr2_bus1__0_4),
        .I1(\bdatw[12]_INST_0_i_8 [4]),
        .I2(gr1_bus1__0_5),
        .I3(\bdatw[12]_INST_0_i_8_0 [4]),
        .I4(\bdatw[12]_INST_0_i_62_n_0 ),
        .I5(\bdatw[12]_INST_0_i_63_n_0 ),
        .O(\grn_reg[4] ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[12]_INST_0_i_28 
       (.I0(ctl_selb[3]),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(\bdatw[12]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AE0000AA)) 
    \bdatw[12]_INST_0_i_29 
       (.I0(\bdatw[12]_INST_0_i_64_n_0 ),
        .I1(ir[12]),
        .I2(\bdatw[12]_INST_0_i_65_n_0 ),
        .I3(ir[14]),
        .I4(ir[13]),
        .I5(\bcmd[1] ),
        .O(ctl_selb[4]));
  LUT6 #(
    .INIT(64'h8880202888800008)) 
    \bdatw[12]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[12]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(ir[10]),
        .O(p_1_in[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[12]_INST_0_i_30 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .O(\bdatw[12]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[12]_INST_0_i_31 
       (.I0(\bdatw[12]_INST_0_i_66_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_20_0 [7]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_20_1 [7]),
        .O(\bdatw[12]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \bdatw[12]_INST_0_i_35 
       (.I0(ir[3]),
        .I1(ir[2]),
        .I2(ir[0]),
        .I3(ir[1]),
        .O(\bdatw[12]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \bdatw[12]_INST_0_i_36 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(ctl_selb[4]),
        .I3(ctl_selb[3]),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(gr1_bus1__0_16));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \bdatw[12]_INST_0_i_37 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(ctl_selb[4]),
        .I3(ctl_selb[3]),
        .I4(\bdatw[15]_INST_0_i_10_n_0 ),
        .I5(\bdatw[15]_INST_0_i_4_n_0 ),
        .O(gr2_bus1__0_17));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \bdatw[12]_INST_0_i_38 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .I5(ctl_selb[3]),
        .O(gr4_bus1__0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \bdatw[12]_INST_0_i_39 
       (.I0(bank_sel[3]),
        .I1(ctl_selb[3]),
        .I2(ctl_selb[4]),
        .I3(\bdatw[15]_INST_0_i_10_n_0 ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(gr3_bus1__0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[12]_INST_0_i_4 
       (.I0(\bdatw[12]_INST_0_i_30_0 [1]),
        .I1(\badr[15]_INST_0_i_1_3 [12]),
        .I2(\bdatw[12]_INST_0_i_30_0 [2]),
        .I3(sp_dec_0[11]),
        .I4(\rgf/bbus_b02 [12]),
        .I5(\bdatw[12]_INST_0_i_1_0 ),
        .O(\bdatw[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \bdatw[12]_INST_0_i_40 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[15]_INST_0_i_10_n_0 ),
        .I4(bank_sel[3]),
        .I5(\bdatw[12]_INST_0_i_17_1 [4]),
        .O(\bdatw[12]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \bdatw[12]_INST_0_i_41 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[12]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(bank_sel[3]),
        .I5(\bdatw[12]_INST_0_i_17_0 [4]),
        .O(\bdatw[12]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \bdatw[12]_INST_0_i_42 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .I5(ctl_selb[3]),
        .O(gr6_bus1__0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \bdatw[12]_INST_0_i_43 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(ctl_selb[4]),
        .I3(ctl_selb[3]),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(gr5_bus1__0_10));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \bdatw[12]_INST_0_i_44 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[12]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_19_1 [4]),
        .O(\bdatw[12]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \bdatw[12]_INST_0_i_45 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_19_0 [4]),
        .O(\bdatw[12]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \bdatw[12]_INST_0_i_46 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(ctl_selb[4]),
        .I3(ctl_selb[3]),
        .I4(\bdatw[15]_INST_0_i_10_n_0 ),
        .I5(\bdatw[15]_INST_0_i_4_n_0 ),
        .O(gr2_bus1__0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \bdatw[12]_INST_0_i_47 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(ctl_selb[4]),
        .I3(ctl_selb[3]),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(gr1_bus1__0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \bdatw[12]_INST_0_i_48 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_20_1 [4]),
        .O(\bdatw[12]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[12]_INST_0_i_49 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[12]_INST_0_i_77_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_20_0 [4]),
        .O(\bdatw[12]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [12]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [12]),
        .I4(\pc_reg[15]_0 [12]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \bdatw[12]_INST_0_i_50 
       (.I0(bank_sel[2]),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(ctl_selb[4]),
        .I3(ctl_selb[3]),
        .I4(\bdatw[15]_INST_0_i_10_n_0 ),
        .I5(\bdatw[15]_INST_0_i_4_n_0 ),
        .O(gr2_bus1__0_3));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \bdatw[12]_INST_0_i_51 
       (.I0(bank_sel[2]),
        .I1(ctl_selb[3]),
        .I2(ctl_selb[4]),
        .I3(\bdatw[15]_INST_0_i_10_n_0 ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(gr3_bus1__0_2));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \bdatw[12]_INST_0_i_52 
       (.I0(bank_sel[2]),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .I5(ctl_selb[3]),
        .O(\rgf/bank02/bbuso2l/gr7_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \bdatw[12]_INST_0_i_53 
       (.I0(bank_sel[2]),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .I5(ctl_selb[3]),
        .O(\rgf/bank02/bbuso2l/gr6_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \bdatw[12]_INST_0_i_54 
       (.I0(bank_sel[2]),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(ctl_selb[4]),
        .I3(ctl_selb[3]),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(\rgf/bank02/bbuso2l/gr1_bus1__0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \bdatw[12]_INST_0_i_55 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(ctl_selb[3]),
        .I3(ctl_selb[4]),
        .I4(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(bbus_sel_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \bdatw[12]_INST_0_i_56 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .I5(ctl_selb[3]),
        .O(gr6_bus1__0_11));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \bdatw[12]_INST_0_i_57 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(ctl_selb[4]),
        .I3(ctl_selb[3]),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(gr5_bus1__0_12));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \bdatw[12]_INST_0_i_58 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[12]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_25_1 [4]),
        .O(\bdatw[12]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \bdatw[12]_INST_0_i_59 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_25_0 [4]),
        .O(\bdatw[12]_INST_0_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[12]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[12]_INST_0_i_15_n_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \bdatw[12]_INST_0_i_60 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(ctl_selb[4]),
        .I3(ctl_selb[3]),
        .I4(\bdatw[15]_INST_0_i_10_n_0 ),
        .I5(\bdatw[15]_INST_0_i_4_n_0 ),
        .O(gr2_bus1__0_4));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \bdatw[12]_INST_0_i_61 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(ctl_selb[4]),
        .I3(ctl_selb[3]),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(gr1_bus1__0_5));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \bdatw[12]_INST_0_i_62 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_26_1 [4]),
        .O(\bdatw[12]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[12]_INST_0_i_63 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[12]_INST_0_i_77_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_26_0 [4]),
        .O(\bdatw[12]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000EA40)) 
    \bdatw[12]_INST_0_i_64 
       (.I0(ir[2]),
        .I1(\bdatw[12]_INST_0_i_78_n_0 ),
        .I2(\stat[0]_i_8_0 ),
        .I3(\ccmd[2]_INST_0_i_12_n_0 ),
        .I4(\bdatw[12]_INST_0_i_80_n_0 ),
        .I5(\bdatw[12]_INST_0_i_81_n_0 ),
        .O(\bdatw[12]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAEAAAEA)) 
    \bdatw[12]_INST_0_i_65 
       (.I0(\bdatw[12]_INST_0_i_82_n_0 ),
        .I1(\bdatw[12]_INST_0_i_83_n_0 ),
        .I2(ir[8]),
        .I3(\ccmd[3]_INST_0_i_8_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(\bdatw[12]_INST_0_i_85_n_0 ),
        .O(\bdatw[12]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_66 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [12]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [12]),
        .I4(\badr[15]_INST_0_i_5_1 [12]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[12]_INST_0_i_7 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[12]_INST_0_i_17_n_0 ),
        .I2(\bdatw[12]_INST_0_i_18_n_0 ),
        .I3(\bdatw[12]_INST_0_i_19_n_0 ),
        .I4(\bdatw[12]_INST_0_i_20_n_0 ),
        .I5(\bdatw[12]_INST_0_i_2_2 ),
        .O(\bdatw[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEFEFFFF)) 
    \bdatw[12]_INST_0_i_77 
       (.I0(ctl_selb[3]),
        .I1(\bdatw[12]_INST_0_i_86_n_0 ),
        .I2(\bdatw[12]_INST_0_i_87_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(\ccmd[2]_INST_0_i_2_n_0 ),
        .I5(\bdatw[12]_INST_0_i_64_n_0 ),
        .O(\bdatw[12]_INST_0_i_77_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[12]_INST_0_i_78 
       (.I0(ir[0]),
        .I1(ir[3]),
        .O(\bdatw[12]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hFFD0FFD0FFD0FFFF)) 
    \bdatw[12]_INST_0_i_80 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(\ccmd[3]_INST_0_i_16_n_0 ),
        .I4(crdy),
        .I5(\stat[0]_i_8_0 ),
        .O(\bdatw[12]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[12]_INST_0_i_81 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(\bdatw[15]_INST_0_i_80_n_0 ),
        .I4(ir[6]),
        .I5(\bcmd[1]_INST_0_i_3_n_0 ),
        .O(\bdatw[12]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFAAAB)) 
    \bdatw[12]_INST_0_i_82 
       (.I0(Q[0]),
        .I1(ir[11]),
        .I2(ir[10]),
        .I3(ctl_fetch_inferred_i_8_n_0),
        .I4(\bdatw[12]_INST_0_i_88_n_0 ),
        .I5(ir[8]),
        .O(\bdatw[12]_INST_0_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFDFDFFFFFFFF)) 
    \bdatw[12]_INST_0_i_83 
       (.I0(ir[10]),
        .I1(\bdatw[12]_INST_0_i_89_n_0 ),
        .I2(ir[11]),
        .I3(crdy),
        .I4(\badrx[15]_INST_0_i_7_n_0 ),
        .I5(ir[6]),
        .O(\bdatw[12]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hF77FF7D733333333)) 
    \bdatw[12]_INST_0_i_84 
       (.I0(ir[9]),
        .I1(ir[6]),
        .I2(ir[3]),
        .I3(ir[5]),
        .I4(ir[4]),
        .I5(ir[10]),
        .O(\bdatw[12]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h80FF000080800000)) 
    \bdatw[12]_INST_0_i_85 
       (.I0(\bdatw[12]_INST_0_i_90_n_0 ),
        .I1(ir[6]),
        .I2(ir[10]),
        .I3(Q[0]),
        .I4(ir[11]),
        .I5(\bdatw[12]_INST_0_i_91_n_0 ),
        .O(\bdatw[12]_INST_0_i_85_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFE)) 
    \bdatw[12]_INST_0_i_86 
       (.I0(ir[15]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(ir[13]),
        .I4(ir[14]),
        .O(\bdatw[12]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB000B0B0)) 
    \bdatw[12]_INST_0_i_87 
       (.I0(\bdatw[12]_INST_0_i_84_n_0 ),
        .I1(\ccmd[3]_INST_0_i_8_n_0 ),
        .I2(ir[8]),
        .I3(\bdatw[15]_INST_0_i_84_n_0 ),
        .I4(\bdatw[12]_INST_0_i_92_n_0 ),
        .I5(\bdatw[12]_INST_0_i_82_n_0 ),
        .O(\bdatw[12]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hFCDDCCDDFCDD0055)) 
    \bdatw[12]_INST_0_i_88 
       (.I0(crdy),
        .I1(ir[9]),
        .I2(ir[7]),
        .I3(ir[11]),
        .I4(ir[6]),
        .I5(ir[10]),
        .O(\bdatw[12]_INST_0_i_88_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[12]_INST_0_i_89 
       (.I0(ir[9]),
        .I1(ir[7]),
        .O(\bdatw[12]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hF888F000F000F000)) 
    \bdatw[12]_INST_0_i_9 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb[4]),
        .I2(sp_dec_0[3]),
        .I3(\bdatw[12]_INST_0_i_30_0 [2]),
        .I4(\badr[15]_INST_0_i_1_3 [4]),
        .I5(\bdatw[12]_INST_0_i_30_n_0 ),
        .O(\bdatw[12]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \bdatw[12]_INST_0_i_90 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[9]),
        .O(\bdatw[12]_INST_0_i_90_n_0 ));
  LUT5 #(
    .INIT(32'h0A0AF00C)) 
    \bdatw[12]_INST_0_i_91 
       (.I0(crdy),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[6]),
        .I4(ir[10]),
        .O(\bdatw[12]_INST_0_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h00A2)) 
    \bdatw[12]_INST_0_i_92 
       (.I0(ir[6]),
        .I1(\badrx[15]_INST_0_i_7_n_0 ),
        .I2(crdy),
        .I3(ir[11]),
        .O(\bdatw[12]_INST_0_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[13]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[1] ),
        .I2(\bdatw[13]_INST_0_i_1_n_0 ),
        .I3(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[13]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[13]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[13]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(p_1_in[13]),
        .I4(\bdatw[13]_INST_0_i_4_n_0 ),
        .I5(\bdatw[13]_INST_0_i_5_n_0 ),
        .O(\bdatw[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_10 
       (.I0(\bdatw[13]_INST_0_i_18_n_0 ),
        .I1(\bdatw[13]_INST_0_i_4_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [8]),
        .I3(gr4_bus1__0_1),
        .I4(\bdatw[15]_INST_0_i_6_1 [8]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [13]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[13]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[13]_INST_0_i_22_n_0 ),
        .O(\bdatw[13]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[13]_INST_0_i_13 
       (.I0(ir[2]),
        .I1(ir[3]),
        .O(\bdatw[13]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[13]_INST_0_i_14 
       (.I0(ir[1]),
        .I1(ir[0]),
        .O(\bdatw[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000D333F)) 
    \bdatw[13]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_9_n_0 ),
        .I3(ir[5]),
        .I4(ir[4]),
        .I5(\bdatw[10]_INST_0_i_13_n_0 ),
        .O(\bdatw[13]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_16 
       (.I0(\bdatw[13]_INST_0_i_23_n_0 ),
        .I1(\bdatw[13]_INST_0_i_7_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [0]),
        .I3(gr4_bus1__0_1),
        .I4(\bdatw[15]_INST_0_i_6_1 [0]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [5]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[13]_INST_0_i_18 
       (.I0(\bdatw[13]_INST_0_i_27_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_20_0 [8]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_20_1 [8]),
        .O(\bdatw[13]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[13]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(eir[5]),
        .I2(\bdatw[15]_INST_0_i_3_n_0 ),
        .I3(p_1_in[5]),
        .I4(\bdatw[13]_INST_0_i_7_n_0 ),
        .I5(\bdatw[13]_INST_0_i_8_n_0 ),
        .O(\bdatw[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888A8AA)) 
    \bdatw[13]_INST_0_i_22 
       (.I0(\bdatw[15]_INST_0_i_37_n_0 ),
        .I1(\bdatw[15]_INST_0_i_36_n_0 ),
        .I2(\bdatw[15]_INST_0_i_35_n_0 ),
        .I3(\ccmd[2]_INST_0_i_2_n_0 ),
        .I4(\bdatw[15]_INST_0_i_50_n_0 ),
        .I5(\ccmd[2]_INST_0_i_18_n_0 ),
        .O(\bdatw[13]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[13]_INST_0_i_23 
       (.I0(\bdatw[13]_INST_0_i_38_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_20_0 [0]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_20_1 [0]),
        .O(\bdatw[13]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_27 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [13]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [13]),
        .I4(\badr[15]_INST_0_i_5_1 [13]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000F200FF00FF00)) 
    \bdatw[13]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_9_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .I4(\bdatw[13]_INST_0_i_9_n_0 ),
        .I5(\bdatw[15]_INST_0_i_17_n_0 ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_38 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [5]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [5]),
        .I4(\badr[15]_INST_0_i_5_1 [5]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[13]_INST_0_i_4 
       (.I0(\bdatw[12]_INST_0_i_30_0 [1]),
        .I1(\badr[15]_INST_0_i_1_3 [13]),
        .I2(\bdatw[12]_INST_0_i_30_0 [2]),
        .I3(sp_dec_0[12]),
        .I4(\rgf/bbus_b02 [13]),
        .I5(\bdatw[13]_INST_0_i_1_0 ),
        .O(\bdatw[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [13]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [13]),
        .I4(\pc_reg[15]_0 [13]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00808808AAAAAAAA)) 
    \bdatw[13]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[13]_INST_0_i_12_n_0 ),
        .I2(\bdatw[13]_INST_0_i_13_n_0 ),
        .I3(\bdatw[13]_INST_0_i_14_n_0 ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[13]_INST_0_i_15_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[13]_INST_0_i_7 
       (.I0(\bdatw[12]_INST_0_i_30_0 [1]),
        .I1(\badr[15]_INST_0_i_1_3 [5]),
        .I2(\bdatw[12]_INST_0_i_30_0 [2]),
        .I3(sp_dec_0[4]),
        .I4(\rgf/bbus_b02 [5]),
        .I5(\bdatw[13]_INST_0_i_2_0 ),
        .O(\bdatw[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_8 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [5]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [5]),
        .I4(\pc_reg[15]_0 [5]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEBEEEEEEE)) 
    \bdatw[13]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(ir[3]),
        .I3(ir[2]),
        .I4(ir[0]),
        .I5(ir[1]),
        .O(\bdatw[13]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[14]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[1] ),
        .I2(\bdatw[14]_INST_0_i_1_n_0 ),
        .I3(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[14]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[14]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[14]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(p_1_in[14]),
        .I4(\bdatw[14]_INST_0_i_4_n_0 ),
        .I5(\bdatw[14]_INST_0_i_5_n_0 ),
        .O(\bdatw[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_10 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [6]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [6]),
        .I4(\pc_reg[15]_0 [6]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_12 
       (.I0(\bdatw[14]_INST_0_i_19_n_0 ),
        .I1(\bdatw[14]_INST_0_i_6_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [1]),
        .I3(gr4_bus1__0_1),
        .I4(\bdatw[15]_INST_0_i_6_1 [1]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [6]));
  LUT6 #(
    .INIT(64'h0F0F0FF03535FFFF)) 
    \bdatw[14]_INST_0_i_14 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[14]_INST_0_i_23_n_0 ),
        .I4(\bdatw[15]_INST_0_i_10_n_0 ),
        .I5(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(\bdatw[14]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[14]_INST_0_i_15 
       (.I0(\bdatw[14]_INST_0_i_24_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_20_0 [9]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_20_1 [9]),
        .O(\bdatw[14]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[14]_INST_0_i_19 
       (.I0(\bdatw[14]_INST_0_i_35_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_20_0 [1]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_20_1 [1]),
        .O(\bdatw[14]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h00FB)) 
    \bdatw[14]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(eir[6]),
        .I2(\bdatw[15]_INST_0_i_3_n_0 ),
        .I3(\bdatw[14]_INST_0_i_6_n_0 ),
        .O(\bdatw[14]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \bdatw[14]_INST_0_i_23 
       (.I0(ir[3]),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(ir[2]),
        .O(\bdatw[14]_INST_0_i_23_n_0 ));
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
    .INIT(64'h40001000FF00FF00)) 
    \bdatw[14]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_9_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .I4(\bdatw[14]_INST_0_i_7_n_0 ),
        .I5(\bdatw[15]_INST_0_i_17_n_0 ),
        .O(p_1_in[14]));
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
       (.I0(\bdatw[12]_INST_0_i_30_0 [1]),
        .I1(\badr[15]_INST_0_i_1_3 [14]),
        .I2(\bdatw[12]_INST_0_i_30_0 [2]),
        .I3(sp_dec_0[13]),
        .I4(\rgf/bbus_b02 [14]),
        .I5(\bdatw[14]_INST_0_i_1_0 ),
        .O(\bdatw[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [14]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [14]),
        .I4(\pc_reg[15]_0 [14]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    \bdatw[14]_INST_0_i_6 
       (.I0(\bdatw[14]_INST_0_i_10_n_0 ),
        .I1(\bdatw[14]_INST_0_i_2_0 ),
        .I2(\rgf/bbus_b02 [6]),
        .I3(\bdatw[14]_INST_0_i_2_1 ),
        .I4(\bdatw[14]_INST_0_i_14_n_0 ),
        .I5(\bdatw[15]_INST_0_i_15_n_0 ),
        .O(\bdatw[14]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \bdatw[14]_INST_0_i_7 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(ir[2]),
        .O(\bdatw[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_8 
       (.I0(\bdatw[14]_INST_0_i_15_n_0 ),
        .I1(\bdatw[14]_INST_0_i_4_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [9]),
        .I3(gr4_bus1__0_1),
        .I4(\bdatw[15]_INST_0_i_6_1 [9]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [14]));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[15]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[1] ),
        .I2(\bdatw[15]_INST_0_i_1_n_0 ),
        .I3(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[15]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[15]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[15]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(p_1_in[15]),
        .I4(\bdatw[15]_INST_0_i_6_n_0 ),
        .I5(\bdatw[15]_INST_0_i_7_n_0 ),
        .O(\bdatw[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000445455555555)) 
    \bdatw[15]_INST_0_i_10 
       (.I0(Q[2]),
        .I1(\bdatw[15]_INST_0_i_34_n_0 ),
        .I2(\ccmd[2]_INST_0_i_2_n_0 ),
        .I3(\bdatw[15]_INST_0_i_35_n_0 ),
        .I4(\bdatw[15]_INST_0_i_36_n_0 ),
        .I5(\bdatw[15]_INST_0_i_37_n_0 ),
        .O(\bdatw[15]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[15]_INST_0_i_102 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .I2(ctl_selb[4]),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\bdatw[12]_INST_0_i_30_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_107 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [7]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [7]),
        .I4(\badr[15]_INST_0_i_5_1 [7]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFDDDDDDDD)) 
    \bdatw[15]_INST_0_i_11 
       (.I0(\tr[15]_i_12_0 ),
        .I1(ir[15]),
        .I2(\bdatw[15]_INST_0_i_39_n_0 ),
        .I3(ir[0]),
        .I4(\bdatw[15]_INST_0_i_40_n_0 ),
        .I5(\bdatw[15]_INST_0_i_41_n_0 ),
        .O(\bdatw[15]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[15]_INST_0_i_118 
       (.I0(ir[2]),
        .I1(ir[3]),
        .O(\bdatw[15]_INST_0_i_118_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4FFF)) 
    \bdatw[15]_INST_0_i_119 
       (.I0(crdy),
        .I1(ir[8]),
        .I2(ir[11]),
        .I3(ir[10]),
        .I4(ir[9]),
        .O(\bdatw[15]_INST_0_i_119_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \bdatw[15]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_42_n_0 ),
        .I1(\bdatw[15]_INST_0_i_43_n_0 ),
        .I2(\bdatw[15]_INST_0_i_44_n_0 ),
        .I3(\bdatw[15]_INST_0_i_45_n_0 ),
        .I4(\bdatw[15]_INST_0_i_46_n_0 ),
        .I5(ctl_fetch_inferred_i_8_n_0),
        .O(\bdatw[15]_INST_0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \bdatw[15]_INST_0_i_120 
       (.I0(ir[3]),
        .I1(ir[5]),
        .I2(ir[4]),
        .O(\bdatw[15]_INST_0_i_120_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bdatw[15]_INST_0_i_121 
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(ir[8]),
        .I3(ir[9]),
        .O(\bdatw[15]_INST_0_i_121_n_0 ));
  LUT5 #(
    .INIT(32'h5FBF5EBE)) 
    \bdatw[15]_INST_0_i_122 
       (.I0(ir[8]),
        .I1(ir[11]),
        .I2(ir[10]),
        .I3(ir[9]),
        .I4(ir[2]),
        .O(\bdatw[15]_INST_0_i_122_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_123 
       (.I0(ir[6]),
        .I1(ir[4]),
        .O(\bdatw[15]_INST_0_i_123_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \bdatw[15]_INST_0_i_124 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .I5(ctl_selb[3]),
        .O(gr7_bus1__0_15));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \bdatw[15]_INST_0_i_125 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(ctl_selb[4]),
        .I3(ctl_selb[3]),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(gr0_bus1__0_19));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \bdatw[15]_INST_0_i_126 
       (.I0(bank_sel[0]),
        .I1(ctl_selb[3]),
        .I2(ctl_selb[4]),
        .I3(\bdatw[15]_INST_0_i_10_n_0 ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(gr3_bus1__0_6));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \bdatw[15]_INST_0_i_127 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .I5(ctl_selb[3]),
        .O(gr4_bus1__0_8));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \bdatw[15]_INST_0_i_128 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(ctl_selb[4]),
        .I3(ctl_selb[3]),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(gr5_bus1__0_9));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \bdatw[15]_INST_0_i_129 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .I5(ctl_selb[3]),
        .O(gr6_bus1__0_13));
  LUT6 #(
    .INIT(64'h00FF00F1000000F1)) 
    \bdatw[15]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_47_n_0 ),
        .I1(\bdatw[15]_INST_0_i_48_n_0 ),
        .I2(\badr[15]_INST_0_i_90_0 ),
        .I3(ir[15]),
        .I4(ir[14]),
        .I5(\bdatw[15]_INST_0_i_50_n_0 ),
        .O(\bdatw[15]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \bdatw[15]_INST_0_i_130 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .I5(ctl_selb[3]),
        .O(gr7_bus1__0_14));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \bdatw[15]_INST_0_i_131 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(ctl_selb[4]),
        .I3(ctl_selb[3]),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(gr0_bus1__0_18));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \bdatw[15]_INST_0_i_132 
       (.I0(bank_sel[1]),
        .I1(ctl_selb[3]),
        .I2(ctl_selb[4]),
        .I3(\bdatw[15]_INST_0_i_10_n_0 ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(gr3_bus1__0_0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \bdatw[15]_INST_0_i_133 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .I5(ctl_selb[3]),
        .O(gr4_bus1__0_7));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_15 
       (.I0(ctl_selb[4]),
        .I1(ctl_selb[3]),
        .O(\bdatw[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFEAAAAAAA)) 
    \bdatw[15]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(ir[1]),
        .I2(ir[2]),
        .I3(ir[0]),
        .I4(ir[3]),
        .I5(\bdatw[15]_INST_0_i_4_n_0 ),
        .O(\bdatw[15]_INST_0_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatw[15]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(ir[10]),
        .I2(\bdatw[10]_INST_0_i_13_n_0 ),
        .O(\bdatw[15]_INST_0_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[15]_INST_0_i_18 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb[4]),
        .I2(\bdatw[12]_INST_0_i_30_n_0 ),
        .O(\bdatw[12]_INST_0_i_30_0 [1]));
  LUT3 #(
    .INIT(8'h40)) 
    \bdatw[15]_INST_0_i_19 
       (.I0(ctl_selb[4]),
        .I1(\bdatw[12]_INST_0_i_28_n_0 ),
        .I2(\bdatw[12]_INST_0_i_30_n_0 ),
        .O(\bdatw[12]_INST_0_i_30_0 [2]));
  LUT4 #(
    .INIT(16'h00FB)) 
    \bdatw[15]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(eir[7]),
        .I2(\bdatw[15]_INST_0_i_3_n_0 ),
        .I3(\bdatw[15]_INST_0_i_8_n_0 ),
        .O(\bdatw[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_20 
       (.I0(\bdatw[15]_INST_0_i_53_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [10]),
        .I3(gr4_bus1__0_1),
        .I4(\bdatw[15]_INST_0_i_6_1 [10]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [15]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \bdatw[15]_INST_0_i_22 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .I2(\bdatw[15]_INST_0_i_9_n_0 ),
        .I3(ctl_selb[3]),
        .I4(ctl_selb[4]),
        .O(\rgf/bbus_sel_cr [4]));
  LUT4 #(
    .INIT(16'h4000)) 
    \bdatw[15]_INST_0_i_23 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .I2(ctl_selb[4]),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\rgf/bbus_sel_cr [3]));
  LUT4 #(
    .INIT(16'h1000)) 
    \bdatw[15]_INST_0_i_24 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .I2(ctl_selb[4]),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\rgf/bbus_sel_cr [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_25 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [7]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [7]),
        .I4(\pc_reg[15]_0 [7]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[15]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_27 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_8_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [2]),
        .I3(gr4_bus1__0_1),
        .I4(\bdatw[15]_INST_0_i_6_1 [2]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [7]));
  LUT6 #(
    .INIT(64'hF0FFFFF03F3F5F5F)) 
    \bdatw[15]_INST_0_i_29 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_65_n_0 ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_9_n_0 ),
        .O(\bdatw[15]_INST_0_i_29_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[15]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(\bdatw[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF444444444444444)) 
    \bdatw[15]_INST_0_i_30 
       (.I0(\bdatw[15]_INST_0_i_66_n_0 ),
        .I1(\bdatw[15]_INST_0_i_67_n_0 ),
        .I2(\stat[1]_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_68_n_0 ),
        .I4(ctl_fetch_ext_fl_i_3_n_0),
        .I5(\sr[15]_i_20_n_0 ),
        .O(\bdatw[15]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h000000001C14B614)) 
    \bdatw[15]_INST_0_i_31 
       (.I0(ir[6]),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(ir[2]),
        .I4(ir[3]),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[15]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000CA0000)) 
    \bdatw[15]_INST_0_i_32 
       (.I0(\bdatw[15]_INST_0_i_40_n_0 ),
        .I1(crdy),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(ir[2]),
        .I5(\bcmd[1]_INST_0_i_11_n_0 ),
        .O(\bdatw[15]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0B000B0BFFFFFFFF)) 
    \bdatw[15]_INST_0_i_33 
       (.I0(\badr[15]_INST_0_i_114_n_0 ),
        .I1(\bdatw[15]_INST_0_i_70_n_0 ),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_72_n_0 ),
        .I4(ir[6]),
        .I5(ir[2]),
        .O(\bdatw[15]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFEAEABF)) 
    \bdatw[15]_INST_0_i_34 
       (.I0(\ccmd[2]_INST_0_i_18_n_0 ),
        .I1(\badr[15]_INST_0_i_2 [7]),
        .I2(ir[12]),
        .I3(\badr[15]_INST_0_i_2 [5]),
        .I4(ir[11]),
        .I5(ir[13]),
        .O(\bdatw[15]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000000D000D000D)) 
    \bdatw[15]_INST_0_i_35 
       (.I0(\bdatw[15]_INST_0_i_73_n_0 ),
        .I1(\bdatw[15]_INST_0_i_72_n_0 ),
        .I2(\bdatw[15]_INST_0_i_74_n_0 ),
        .I3(\bdatw[15]_INST_0_i_75_n_0 ),
        .I4(\bdatw[15]_INST_0_i_70_n_0 ),
        .I5(\bdatw[15]_INST_0_i_76_n_0 ),
        .O(\bdatw[15]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000054)) 
    \bdatw[15]_INST_0_i_36 
       (.I0(\badr[15]_INST_0_i_90_0 ),
        .I1(\bdatw[15]_INST_0_i_66_n_0 ),
        .I2(\ccmd[3]_INST_0_i_16_n_0 ),
        .I3(ir[14]),
        .I4(ir[15]),
        .I5(\bdatw[15]_INST_0_i_77_n_0 ),
        .O(\bdatw[15]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFDDDDDDDD)) 
    \bdatw[15]_INST_0_i_37 
       (.I0(\tr[15]_i_12_0 ),
        .I1(ir[15]),
        .I2(\bdatw[15]_INST_0_i_39_n_0 ),
        .I3(ir[1]),
        .I4(\bdatw[15]_INST_0_i_40_n_0 ),
        .I5(\bdatw[15]_INST_0_i_41_n_0 ),
        .O(\bdatw[15]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \bdatw[15]_INST_0_i_39 
       (.I0(ir[11]),
        .I1(ir[12]),
        .I2(ir[10]),
        .I3(ir[9]),
        .I4(\badrx[15]_INST_0_i_3_n_0 ),
        .I5(ir[8]),
        .O(\bdatw[15]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF08AA)) 
    \bdatw[15]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_11_n_0 ),
        .I1(\bdatw[15]_INST_0_i_12_n_0 ),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(badr_0_sn_1),
        .I4(Q[2]),
        .I5(\bdatw[8]_INST_0_i_6_0 ),
        .O(\bdatw[15]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatw[15]_INST_0_i_40 
       (.I0(ir[7]),
        .I1(ir[6]),
        .O(\bdatw[15]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \bdatw[15]_INST_0_i_41 
       (.I0(rst_n_fl_reg_4),
        .I1(rst_n_fl_reg_1),
        .I2(\bdatw[15]_INST_0_i_79_n_0 ),
        .I3(\bdatw[15]_INST_0_i_80_n_0 ),
        .I4(\bdatw[15]_INST_0_i_81_n_0 ),
        .I5(\bdatw[15]_INST_0_i_82_n_0 ),
        .O(\bdatw[15]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008FF0808)) 
    \bdatw[15]_INST_0_i_42 
       (.I0(\ccmd[2]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_83_n_0 ),
        .I2(\bdatw[15]_INST_0_i_84_n_0 ),
        .I3(\badr[15]_INST_0_i_108_n_0 ),
        .I4(ir[9]),
        .I5(\bdatw[15]_INST_0_i_85_n_0 ),
        .O(\bdatw[15]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030002020)) 
    \bdatw[15]_INST_0_i_43 
       (.I0(\bdatw[15]_INST_0_i_40_n_0 ),
        .I1(\bcmd[1]_INST_0_i_11_n_0 ),
        .I2(ir[0]),
        .I3(crdy),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\bdatw[15]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F0C070)) 
    \bdatw[15]_INST_0_i_44 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[0]),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(\badr[15]_INST_0_i_108_n_0 ),
        .O(\bdatw[15]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAEE0000)) 
    \bdatw[15]_INST_0_i_45 
       (.I0(\bdatw[15]_INST_0_i_86_n_0 ),
        .I1(\badrx[15]_INST_0_i_7_n_0 ),
        .I2(\bdatw[15]_INST_0_i_87_n_0 ),
        .I3(\bdatw[15]_INST_0_i_88_n_0 ),
        .I4(ir[0]),
        .I5(\badr[15]_INST_0_i_114_n_0 ),
        .O(\bdatw[15]_INST_0_i_45_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \bdatw[15]_INST_0_i_46 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[11]),
        .I3(ir[10]),
        .I4(\bdatw[15]_INST_0_i_89_n_0 ),
        .O(\bdatw[15]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[15]_INST_0_i_47 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(\bdatw[15]_INST_0_i_81_n_0 ),
        .I3(\bdatw[15]_INST_0_i_80_n_0 ),
        .I4(ir[5]),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_47_n_0 ));
  LUT5 #(
    .INIT(32'hF0FDFDFD)) 
    \bdatw[15]_INST_0_i_48 
       (.I0(fch_irq_req),
        .I1(ctl_fetch_ext_fl_i_7_n_0),
        .I2(ir[4]),
        .I3(crdy),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .O(\bdatw[15]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0000F200FF00FF00)) 
    \bdatw[15]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_9_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .I4(\bdatw[15]_INST_0_i_16_n_0 ),
        .I5(\bdatw[15]_INST_0_i_17_n_0 ),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h14414141)) 
    \bdatw[15]_INST_0_i_50 
       (.I0(ir[13]),
        .I1(ir[11]),
        .I2(\badr[15]_INST_0_i_2 [5]),
        .I3(ir[12]),
        .I4(\badr[15]_INST_0_i_2 [7]),
        .O(\bdatw[15]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[15]_INST_0_i_51 
       (.I0(ctl_fetch_ext_fl_i_7_n_0),
        .I1(ir[11]),
        .I2(ir[14]),
        .I3(ir[15]),
        .I4(ir[12]),
        .I5(ir[13]),
        .O(rst_n_fl_reg_8));
  LUT6 #(
    .INIT(64'h00AE00AE000000AE)) 
    \bdatw[15]_INST_0_i_52 
       (.I0(\bdatw[15]_INST_0_i_15_1 ),
        .I1(\bcmd[1]_INST_0_i_6_n_0 ),
        .I2(\bdatw[15]_INST_0_i_15_0 ),
        .I3(\bdatw[15]_INST_0_i_91_n_0 ),
        .I4(\bdatw[15]_INST_0_i_92_n_0 ),
        .I5(\bdatw[15]_INST_0_i_93_n_0 ),
        .O(ctl_selb[3]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[15]_INST_0_i_53 
       (.I0(\bdatw[15]_INST_0_i_94_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_20_0 [10]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_20_1 [10]),
        .O(\bdatw[15]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \bdatw[15]_INST_0_i_55 
       (.I0(bank_sel[2]),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .I5(ctl_selb[3]),
        .O(gr4_bus1__0_1));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \bdatw[15]_INST_0_i_56 
       (.I0(bank_sel[2]),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(ctl_selb[4]),
        .I3(ctl_selb[3]),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(gr5_bus1__0));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \bdatw[15]_INST_0_i_59 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(ctl_selb[4]),
        .I5(ctl_selb[3]),
        .O(gr7_bus1__0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[15]_INST_0_i_6 
       (.I0(\bdatw[12]_INST_0_i_30_0 [1]),
        .I1(\badr[15]_INST_0_i_1_3 [15]),
        .I2(\bdatw[12]_INST_0_i_30_0 [2]),
        .I3(sp_dec_0[14]),
        .I4(\rgf/bbus_b02 [15]),
        .I5(\bdatw[15]_INST_0_i_1_0 ),
        .O(\bdatw[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \bdatw[15]_INST_0_i_60 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(ctl_selb[4]),
        .I3(ctl_selb[3]),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(gr0_bus1__0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[15]_INST_0_i_61 
       (.I0(\bdatw[15]_INST_0_i_107_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_20_0 [2]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_20_1 [2]),
        .O(\bdatw[15]_INST_0_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \bdatw[15]_INST_0_i_65 
       (.I0(ir[3]),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(ir[2]),
        .O(\bdatw[15]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \bdatw[15]_INST_0_i_66 
       (.I0(\bdatw[15]_INST_0_i_81_n_0 ),
        .I1(\bdatw[15]_INST_0_i_80_n_0 ),
        .I2(\bdatw[15]_INST_0_i_79_n_0 ),
        .I3(\bdatw[15]_INST_0_i_118_n_0 ),
        .I4(ir[1]),
        .I5(ir[0]),
        .O(\bdatw[15]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bdatw[15]_INST_0_i_67 
       (.I0(Q[0]),
        .I1(ir[15]),
        .I2(ir[14]),
        .I3(ir[13]),
        .I4(ir[11]),
        .I5(ir[12]),
        .O(\bdatw[15]_INST_0_i_67_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[15]_INST_0_i_68 
       (.I0(ir[6]),
        .I1(ir[2]),
        .O(\bdatw[15]_INST_0_i_68_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \bdatw[15]_INST_0_i_69 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[11]),
        .I3(ir[10]),
        .I4(ir[7]),
        .O(\bdatw[15]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_7 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [15]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [15]),
        .I4(\pc_reg[15]_0 [15]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hC0C002FAC00002FA)) 
    \bdatw[15]_INST_0_i_70 
       (.I0(\badrx[15]_INST_0_i_7_n_0 ),
        .I1(ir[6]),
        .I2(ir[10]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[7]),
        .O(\bdatw[15]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h00003D0000003300)) 
    \bdatw[15]_INST_0_i_71 
       (.I0(ir[6]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(ir[11]),
        .I4(ir[10]),
        .I5(ir[7]),
        .O(\bdatw[15]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFFFFBBBB57FF)) 
    \bdatw[15]_INST_0_i_72 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[7]),
        .I3(\bdatw[15]_INST_0_i_83_n_0 ),
        .I4(ir[11]),
        .I5(\badrx[15]_INST_0_i_7_n_0 ),
        .O(\bdatw[15]_INST_0_i_72_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[15]_INST_0_i_73 
       (.I0(ir[6]),
        .I1(ir[1]),
        .O(\bdatw[15]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h5500551155005F11)) 
    \bdatw[15]_INST_0_i_74 
       (.I0(\bdatw[15]_INST_0_i_119_n_0 ),
        .I1(ir[8]),
        .I2(\bdatw[15]_INST_0_i_120_n_0 ),
        .I3(ir[1]),
        .I4(\bdatw[15]_INST_0_i_40_n_0 ),
        .I5(\bdatw[15]_INST_0_i_121_n_0 ),
        .O(\bdatw[15]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h1040005010500050)) 
    \bdatw[15]_INST_0_i_75 
       (.I0(\badr[15]_INST_0_i_108_n_0 ),
        .I1(ir[9]),
        .I2(ir[1]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_75_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatw[15]_INST_0_i_76 
       (.I0(ir[1]),
        .I1(crdy),
        .I2(ir[11]),
        .O(\bdatw[15]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8000)) 
    \bdatw[15]_INST_0_i_77 
       (.I0(ir[15]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[14]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\bdatw[15]_INST_0_i_77_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[15]_INST_0_i_78 
       (.I0(ir[11]),
        .I1(ir[12]),
        .O(rst_n_fl_reg_4));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[15]_INST_0_i_79 
       (.I0(ir[6]),
        .I1(ir[4]),
        .I2(ir[5]),
        .O(\bdatw[15]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    \bdatw[15]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_25_n_0 ),
        .I1(\bdatw[15]_INST_0_i_2_0 ),
        .I2(\rgf/bbus_b02 [7]),
        .I3(\bdatw[15]_INST_0_i_2_1 ),
        .I4(\bdatw[15]_INST_0_i_29_n_0 ),
        .I5(\bdatw[15]_INST_0_i_15_n_0 ),
        .O(\bdatw[15]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[15]_INST_0_i_80 
       (.I0(ir[8]),
        .I1(ir[7]),
        .O(\bdatw[15]_INST_0_i_80_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[15]_INST_0_i_81 
       (.I0(ir[9]),
        .I1(ir[10]),
        .O(\bdatw[15]_INST_0_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h088C)) 
    \bdatw[15]_INST_0_i_82 
       (.I0(ir[0]),
        .I1(ir[2]),
        .I2(ir[1]),
        .I3(ir[3]),
        .O(\bdatw[15]_INST_0_i_82_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[15]_INST_0_i_83 
       (.I0(ir[8]),
        .I1(crdy),
        .O(\bdatw[15]_INST_0_i_83_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \bdatw[15]_INST_0_i_84 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(ir[10]),
        .O(\bdatw[15]_INST_0_i_84_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatw[15]_INST_0_i_85 
       (.I0(ir[6]),
        .I1(ir[0]),
        .O(\bdatw[15]_INST_0_i_85_n_0 ));
  LUT5 #(
    .INIT(32'hCB000300)) 
    \bdatw[15]_INST_0_i_86 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(ir[10]),
        .I4(ir[6]),
        .O(\bdatw[15]_INST_0_i_86_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatw[15]_INST_0_i_87 
       (.I0(ir[6]),
        .I1(ir[10]),
        .I2(ir[8]),
        .O(\bdatw[15]_INST_0_i_87_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[15]_INST_0_i_88 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[9]),
        .O(\bdatw[15]_INST_0_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hF57DFFFFCCCFFFFF)) 
    \bdatw[15]_INST_0_i_89 
       (.I0(ir[0]),
        .I1(ir[4]),
        .I2(ir[3]),
        .I3(ir[5]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A888A8A8A8A)) 
    \bdatw[15]_INST_0_i_9 
       (.I0(ctl_fetch_fl_reg_1),
        .I1(\bdatw[15]_INST_0_i_30_n_0 ),
        .I2(\badr[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_31_n_0 ),
        .I4(\bdatw[15]_INST_0_i_32_n_0 ),
        .I5(\bdatw[15]_INST_0_i_33_n_0 ),
        .O(\bdatw[15]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFEFFE)) 
    \bdatw[15]_INST_0_i_91 
       (.I0(\bdatw[15]_INST_0_i_122_n_0 ),
        .I1(ir[15]),
        .I2(ir[7]),
        .I3(ir[10]),
        .I4(ir[1]),
        .O(\bdatw[15]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFBBBBFFFFFFFF)) 
    \bdatw[15]_INST_0_i_92 
       (.I0(ir[7]),
        .I1(ir[0]),
        .I2(ir[5]),
        .I3(ir[8]),
        .I4(ir[3]),
        .I5(\bdatw[15]_INST_0_i_123_n_0 ),
        .O(\bdatw[15]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h08080000FF080000)) 
    \bdatw[15]_INST_0_i_93 
       (.I0(ir[5]),
        .I1(ir[4]),
        .I2(ir[3]),
        .I3(ir[7]),
        .I4(ir[6]),
        .I5(ir[8]),
        .O(\bdatw[15]_INST_0_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_94 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [15]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [15]),
        .I4(\badr[15]_INST_0_i_5_1 [15]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_94_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[1]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(bdatw[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[2]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[3]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bdatw[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[4]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(bdatw[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[5]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[6]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[7]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[7]));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[8]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[1] ),
        .I2(\bdatw[8]_INST_0_i_1_n_0 ),
        .I3(\sp_reg[0] ),
        .O(bdatw[8]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[8]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[8]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(p_1_in[8]),
        .I4(\bdatw[8]_INST_0_i_4_n_0 ),
        .I5(\bdatw[8]_INST_0_i_5_n_0 ),
        .O(\bdatw[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_10 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [0]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [0]),
        .I4(\pc_reg[15]_0 [0]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[8]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatw[8]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[0]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .O(\bdatw[8]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \bdatw[8]_INST_0_i_12 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(ir[2]),
        .I3(ir[3]),
        .O(\bdatw[8]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[8]_INST_0_i_13 
       (.I0(\bdatw[8]_INST_0_i_30_n_0 ),
        .I1(\bdatw[8]_INST_0_i_4_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [3]),
        .I3(gr4_bus1__0_1),
        .I4(\bdatw[15]_INST_0_i_6_1 [3]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [8]));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[8]_INST_0_i_15 
       (.I0(ir[1]),
        .I1(ir[3]),
        .O(rst_n_fl_reg_0));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[8]_INST_0_i_16 
       (.I0(ir[2]),
        .I1(ir[0]),
        .O(\bdatw[8]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[8]_INST_0_i_17 
       (.I0(\bdatw[10]_INST_0_i_13_n_0 ),
        .I1(ir[0]),
        .O(\bdatw[8]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[8]_INST_0_i_19 
       (.I0(gr4_bus1__0),
        .I1(\bdatw[12]_INST_0_i_7_0 [0]),
        .I2(gr3_bus1__0),
        .I3(\bdatw[12]_INST_0_i_7_1 [0]),
        .I4(\bdatw[8]_INST_0_i_34_n_0 ),
        .I5(\bdatw[8]_INST_0_i_35_n_0 ),
        .O(\bdatw[8]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[8]_INST_0_i_2 
       (.I0(p_1_in[0]),
        .I1(\bdatw[8]_INST_0_i_7_n_0 ),
        .I2(\bdatw[12] [0]),
        .I3(\bdatw[8]_INST_0_i_9_n_0 ),
        .I4(\bdatw[8]_INST_0_i_10_n_0 ),
        .I5(\bdatw[8]_INST_0_i_11_n_0 ),
        .O(\sp_reg[0] ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \bdatw[8]_INST_0_i_20 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(ctl_selb[4]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .O(\bdatw[8]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[8]_INST_0_i_21 
       (.I0(gr6_bus1__0),
        .I1(\bdatw[12]_INST_0_i_7_4 [0]),
        .I2(gr5_bus1__0_10),
        .I3(\bdatw[12]_INST_0_i_7_5 [0]),
        .I4(\bdatw[8]_INST_0_i_36_n_0 ),
        .I5(\bdatw[8]_INST_0_i_37_n_0 ),
        .O(\bdatw[8]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[8]_INST_0_i_22 
       (.I0(gr2_bus1__0),
        .I1(\bdatw[12]_INST_0_i_7_2 [0]),
        .I2(gr1_bus1__0),
        .I3(\bdatw[12]_INST_0_i_7_3 [0]),
        .I4(\bdatw[8]_INST_0_i_38_n_0 ),
        .I5(\bdatw[8]_INST_0_i_39_n_0 ),
        .O(\bdatw[8]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_25 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [0]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [0]),
        .I4(\badr[15]_INST_0_i_5_1 [0]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[8]_INST_0_i_27 
       (.I0(gr6_bus1__0_11),
        .I1(\bdatw[12]_INST_0_i_8_1 [0]),
        .I2(gr5_bus1__0_12),
        .I3(\bdatw[12]_INST_0_i_8_2 [0]),
        .I4(\bdatw[8]_INST_0_i_40_n_0 ),
        .I5(\bdatw[8]_INST_0_i_41_n_0 ),
        .O(\grn_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[8]_INST_0_i_28 
       (.I0(gr2_bus1__0_4),
        .I1(\bdatw[12]_INST_0_i_8 [0]),
        .I2(gr1_bus1__0_5),
        .I3(\bdatw[12]_INST_0_i_8_0 [0]),
        .I4(\bdatw[8]_INST_0_i_42_n_0 ),
        .I5(\bdatw[8]_INST_0_i_43_n_0 ),
        .O(\grn_reg[0] ));
  LUT6 #(
    .INIT(64'h8880202888800008)) 
    \bdatw[8]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[8]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(ir[7]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[8]_INST_0_i_30 
       (.I0(\bdatw[8]_INST_0_i_44_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_20_0 [3]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_20_1 [3]),
        .O(\bdatw[8]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \bdatw[8]_INST_0_i_34 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[15]_INST_0_i_10_n_0 ),
        .I4(bank_sel[3]),
        .I5(\bdatw[12]_INST_0_i_17_1 [0]),
        .O(\bdatw[8]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \bdatw[8]_INST_0_i_35 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[12]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(bank_sel[3]),
        .I5(\bdatw[12]_INST_0_i_17_0 [0]),
        .O(\bdatw[8]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \bdatw[8]_INST_0_i_36 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[12]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_19_1 [0]),
        .O(\bdatw[8]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \bdatw[8]_INST_0_i_37 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_19_0 [0]),
        .O(\bdatw[8]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \bdatw[8]_INST_0_i_38 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_20_1 [0]),
        .O(\bdatw[8]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[8]_INST_0_i_39 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[12]_INST_0_i_77_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_20_0 [0]),
        .O(\bdatw[8]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[8]_INST_0_i_4 
       (.I0(\bdatw[12]_INST_0_i_30_0 [1]),
        .I1(\badr[15]_INST_0_i_1_3 [8]),
        .I2(\bdatw[12]_INST_0_i_30_0 [2]),
        .I3(sp_dec_0[7]),
        .I4(\rgf/bbus_b02 [8]),
        .I5(\bdatw[8]_INST_0_i_1_0 ),
        .O(\bdatw[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \bdatw[8]_INST_0_i_40 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[12]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_25_1 [0]),
        .O(\bdatw[8]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \bdatw[8]_INST_0_i_41 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_25_0 [0]),
        .O(\bdatw[8]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \bdatw[8]_INST_0_i_42 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_26_1 [0]),
        .O(\bdatw[8]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[8]_INST_0_i_43 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[12]_INST_0_i_77_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_26_0 [0]),
        .O(\bdatw[8]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_44 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [8]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [8]),
        .I4(\badr[15]_INST_0_i_5_1 [8]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [8]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [8]),
        .I4(\pc_reg[15]_0 [8]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h80000888AAAA0888)) 
    \bdatw[8]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[13]_INST_0_i_12_n_0 ),
        .I2(rst_n_fl_reg_0),
        .I3(\bdatw[8]_INST_0_i_16_n_0 ),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .I5(\bdatw[8]_INST_0_i_17_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[8]_INST_0_i_7 
       (.I0(\bdatw[8]_INST_0_i_2_3 ),
        .I1(\bdatw[8]_INST_0_i_19_n_0 ),
        .I2(\bdatw[8]_INST_0_i_20_n_0 ),
        .I3(\bdatw[8]_INST_0_i_21_n_0 ),
        .I4(\bdatw[8]_INST_0_i_22_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_4 ),
        .O(\bdatw[8]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF800F000)) 
    \bdatw[8]_INST_0_i_9 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb[4]),
        .I2(\bdatw[12]_INST_0_i_30_0 [2]),
        .I3(\badr[15]_INST_0_i_1_3 [0]),
        .I4(\bdatw[12]_INST_0_i_30_n_0 ),
        .O(\bdatw[8]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[9]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[1] ),
        .I2(\bdatw[9]_INST_0_i_1_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(bdatw[9]));
  LUT6 #(
    .INIT(64'h00000000000000FB)) 
    \bdatw[9]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[9]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(p_1_in[9]),
        .I4(\bdatw[9]_INST_0_i_4_n_0 ),
        .I5(\bdatw[9]_INST_0_i_5_n_0 ),
        .O(\bdatw[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_10 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [1]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [1]),
        .I4(\pc_reg[15]_0 [1]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[9]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatw[9]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[1]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .O(\bdatw[9]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[9]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(\bdatw[9]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \bdatw[9]_INST_0_i_13 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(ir[1]),
        .O(\bdatw[9]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[9]_INST_0_i_14 
       (.I0(\bdatw[9]_INST_0_i_29_n_0 ),
        .I1(\bdatw[9]_INST_0_i_4_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [4]),
        .I3(gr4_bus1__0_1),
        .I4(\bdatw[15]_INST_0_i_6_1 [4]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [9]));
  LUT6 #(
    .INIT(64'hFFFF3355F00FFFFF)) 
    \bdatw[9]_INST_0_i_16 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(ctl_fetch_ext_fl_i_7_n_0),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(\bdatw[15]_INST_0_i_9_n_0 ),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(\bdatw[9]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[9]_INST_0_i_18 
       (.I0(gr4_bus1__0),
        .I1(\bdatw[12]_INST_0_i_7_0 [1]),
        .I2(gr3_bus1__0),
        .I3(\bdatw[12]_INST_0_i_7_1 [1]),
        .I4(\bdatw[9]_INST_0_i_33_n_0 ),
        .I5(\bdatw[9]_INST_0_i_34_n_0 ),
        .O(\bdatw[9]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \bdatw[9]_INST_0_i_19 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(ctl_selb[4]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .O(\bdatw[9]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[9]_INST_0_i_2 
       (.I0(p_1_in[1]),
        .I1(\bdatw[9]_INST_0_i_7_n_0 ),
        .I2(\bdatw[12] [1]),
        .I3(\bdatw[9]_INST_0_i_9_n_0 ),
        .I4(\bdatw[9]_INST_0_i_10_n_0 ),
        .I5(\bdatw[9]_INST_0_i_11_n_0 ),
        .O(\bdatw[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[9]_INST_0_i_20 
       (.I0(gr6_bus1__0),
        .I1(\bdatw[12]_INST_0_i_7_4 [1]),
        .I2(gr5_bus1__0_10),
        .I3(\bdatw[12]_INST_0_i_7_5 [1]),
        .I4(\bdatw[9]_INST_0_i_35_n_0 ),
        .I5(\bdatw[9]_INST_0_i_36_n_0 ),
        .O(\bdatw[9]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[9]_INST_0_i_21 
       (.I0(gr2_bus1__0),
        .I1(\bdatw[12]_INST_0_i_7_2 [1]),
        .I2(gr1_bus1__0),
        .I3(\bdatw[12]_INST_0_i_7_3 [1]),
        .I4(\bdatw[9]_INST_0_i_37_n_0 ),
        .I5(\bdatw[9]_INST_0_i_38_n_0 ),
        .O(\bdatw[9]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_24 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [1]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [1]),
        .I4(\badr[15]_INST_0_i_5_1 [1]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[9]_INST_0_i_26 
       (.I0(gr6_bus1__0_11),
        .I1(\bdatw[12]_INST_0_i_8_1 [1]),
        .I2(gr5_bus1__0_12),
        .I3(\bdatw[12]_INST_0_i_8_2 [1]),
        .I4(\bdatw[9]_INST_0_i_39_n_0 ),
        .I5(\bdatw[9]_INST_0_i_40_n_0 ),
        .O(\grn_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[9]_INST_0_i_27 
       (.I0(gr2_bus1__0_4),
        .I1(\bdatw[12]_INST_0_i_8 [1]),
        .I2(gr1_bus1__0_5),
        .I3(\bdatw[12]_INST_0_i_8_0 [1]),
        .I4(\bdatw[9]_INST_0_i_41_n_0 ),
        .I5(\bdatw[9]_INST_0_i_42_n_0 ),
        .O(\grn_reg[1] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[9]_INST_0_i_29 
       (.I0(\bdatw[9]_INST_0_i_43_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_20_0 [4]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_20_1 [4]),
        .O(\bdatw[9]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h8008800880AA8008)) 
    \bdatw[9]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[9]_INST_0_i_12_n_0 ),
        .I2(\bdatw[9]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(ir[8]),
        .I5(\bdatw[10]_INST_0_i_13_n_0 ),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \bdatw[9]_INST_0_i_33 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[15]_INST_0_i_10_n_0 ),
        .I4(bank_sel[3]),
        .I5(\bdatw[12]_INST_0_i_17_1 [1]),
        .O(\bdatw[9]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \bdatw[9]_INST_0_i_34 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[12]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(bank_sel[3]),
        .I5(\bdatw[12]_INST_0_i_17_0 [1]),
        .O(\bdatw[9]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \bdatw[9]_INST_0_i_35 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[12]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_19_1 [1]),
        .O(\bdatw[9]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \bdatw[9]_INST_0_i_36 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_19_0 [1]),
        .O(\bdatw[9]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \bdatw[9]_INST_0_i_37 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_20_1 [1]),
        .O(\bdatw[9]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[9]_INST_0_i_38 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[12]_INST_0_i_77_n_0 ),
        .I4(bank_sel[1]),
        .I5(\bdatw[12]_INST_0_i_20_0 [1]),
        .O(\bdatw[9]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \bdatw[9]_INST_0_i_39 
       (.I0(\bdatw[15]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[12]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_9_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_25_1 [1]),
        .O(\bdatw[9]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[9]_INST_0_i_4 
       (.I0(\bdatw[12]_INST_0_i_30_0 [1]),
        .I1(\badr[15]_INST_0_i_1_3 [9]),
        .I2(\bdatw[12]_INST_0_i_30_0 [2]),
        .I3(sp_dec_0[8]),
        .I4(\rgf/bbus_b02 [9]),
        .I5(\bdatw[9]_INST_0_i_1_0 ),
        .O(\bdatw[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \bdatw[9]_INST_0_i_40 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_25_0 [1]),
        .O(\bdatw[9]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \bdatw[9]_INST_0_i_41 
       (.I0(\bdatw[12]_INST_0_i_77_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[15]_INST_0_i_4_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_26_1 [1]),
        .O(\bdatw[9]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \bdatw[9]_INST_0_i_42 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_INST_0_i_10_n_0 ),
        .I3(\bdatw[12]_INST_0_i_77_n_0 ),
        .I4(bank_sel[0]),
        .I5(\bdatw[12]_INST_0_i_26_0 [1]),
        .O(\bdatw[9]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_43 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\badr[15]_INST_0_i_5 [9]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_5_0 [9]),
        .I4(\badr[15]_INST_0_i_5_1 [9]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\badrx[15] [9]),
        .I2(\rgf/bbus_sel_cr [3]),
        .I3(\badr[15]_INST_0_i_1_4 [9]),
        .I4(\pc_reg[15]_0 [9]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[9]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[9]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[9]_INST_0_i_16_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[9]_INST_0_i_7 
       (.I0(\bdatw[9]_INST_0_i_2_2 ),
        .I1(\bdatw[9]_INST_0_i_18_n_0 ),
        .I2(\bdatw[9]_INST_0_i_19_n_0 ),
        .I3(\bdatw[9]_INST_0_i_20_n_0 ),
        .I4(\bdatw[9]_INST_0_i_21_n_0 ),
        .I5(\bdatw[9]_INST_0_i_2_3 ),
        .O(\bdatw[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF888F000F000F000)) 
    \bdatw[9]_INST_0_i_9 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb[4]),
        .I2(sp_dec_0[0]),
        .I3(\bdatw[12]_INST_0_i_30_0 [2]),
        .I4(\badr[15]_INST_0_i_1_3 [1]),
        .I5(\bdatw[12]_INST_0_i_30_n_0 ),
        .O(\bdatw[9]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[0]_INST_0 
       (.I0(crdy_0),
        .I1(\ccmd[0]_INST_0_i_1_n_0 ),
        .O(ccmd[0]));
  LUT6 #(
    .INIT(64'hE0FFE0FFE0FFE0E0)) 
    \ccmd[0]_INST_0_i_1 
       (.I0(ir[15]),
        .I1(\ccmd[0]_INST_0_i_2_n_0 ),
        .I2(\ccmd[0]_INST_0_i_3_n_0 ),
        .I3(\ccmd[0]_INST_0_i_4_n_0 ),
        .I4(Q[2]),
        .I5(\ccmd[0]_INST_0_i_5_n_0 ),
        .O(\ccmd[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB0BBBBBB003BBBBB)) 
    \ccmd[0]_INST_0_i_11 
       (.I0(\ccmd[0]_INST_0_i_15_n_0 ),
        .I1(\ccmd[0]_INST_0_i_16_n_0 ),
        .I2(Q[0]),
        .I3(\ccmd[0]_INST_0_i_17_n_0 ),
        .I4(\ccmd[0]_INST_0_i_18_n_0 ),
        .I5(\ccmd[0]_INST_0_i_19_n_0 ),
        .O(\ccmd[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0010204500000800)) 
    \ccmd[0]_INST_0_i_12 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[3]),
        .I3(ir[4]),
        .I4(Q[0]),
        .I5(ir[7]),
        .O(\ccmd[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h1010101010101011)) 
    \ccmd[0]_INST_0_i_14 
       (.I0(ir[10]),
        .I1(Q[1]),
        .I2(\ccmd[0]_INST_0_i_20_n_0 ),
        .I3(\ccmd[0]_INST_0_i_21_n_0 ),
        .I4(\sp[15]_i_6_0 ),
        .I5(ir[9]),
        .O(\ccmd[0]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \ccmd[0]_INST_0_i_15 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[7]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\ccmd[0]_INST_0_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \ccmd[0]_INST_0_i_16 
       (.I0(\badrx[15]_INST_0_i_7_n_0 ),
        .I1(ir[8]),
        .I2(ir[11]),
        .O(\ccmd[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h4504050000004504)) 
    \ccmd[0]_INST_0_i_17 
       (.I0(Q[0]),
        .I1(crdy),
        .I2(ir[8]),
        .I3(ir[11]),
        .I4(ir[6]),
        .I5(ir[7]),
        .O(\ccmd[0]_INST_0_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \ccmd[0]_INST_0_i_18 
       (.I0(Q[1]),
        .I1(ir[9]),
        .I2(ir[10]),
        .O(\ccmd[0]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[0]_INST_0_i_19 
       (.I0(ir[7]),
        .I1(crdy),
        .O(\ccmd[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFFF7D7DDDDD)) 
    \ccmd[0]_INST_0_i_2 
       (.I0(badr_0_sn_1),
        .I1(ir[11]),
        .I2(\badr[15]_INST_0_i_2 [7]),
        .I3(\ccmd[0]_INST_0_i_6_n_0 ),
        .I4(ir[12]),
        .I5(ir[14]),
        .O(\ccmd[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \ccmd[0]_INST_0_i_20 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(\badrx[15]_INST_0_i_7_n_0 ),
        .I2(Q[0]),
        .I3(ir[6]),
        .I4(ir[11]),
        .I5(crdy),
        .O(\ccmd[0]_INST_0_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ccmd[0]_INST_0_i_21 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[8]),
        .O(\ccmd[0]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \ccmd[0]_INST_0_i_3 
       (.I0(ir[13]),
        .I1(ir[15]),
        .I2(\badr[15]_INST_0_i_2 [6]),
        .I3(badr_0_sn_1),
        .I4(ir[14]),
        .I5(ir[12]),
        .O(\ccmd[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000001011111111)) 
    \ccmd[0]_INST_0_i_4 
       (.I0(ir[12]),
        .I1(Q[2]),
        .I2(\ccmd[0]_INST_0_i_7_n_0 ),
        .I3(\ccmd[0]_INST_0_i_8_n_0 ),
        .I4(rst_n_fl_reg_2),
        .I5(\ccmd[0]_INST_0_i_9_n_0 ),
        .O(\ccmd[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000F0F0F060F0F0F)) 
    \ccmd[0]_INST_0_i_5 
       (.I0(ir[11]),
        .I1(\badr[15]_INST_0_i_27_0 ),
        .I2(\ccmd[0]_INST_0_i_3_n_0 ),
        .I3(badr_0_sn_1),
        .I4(ir[12]),
        .I5(ir[15]),
        .O(\ccmd[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAA2A)) 
    \ccmd[0]_INST_0_i_6 
       (.I0(\ccmd[0]_INST_0_i_11_n_0 ),
        .I1(\ccmd[0]_INST_0_i_12_n_0 ),
        .I2(ir[9]),
        .I3(\bcmd[1]_INST_0_i_11_n_0 ),
        .I4(\tr[15]_i_8_0 ),
        .I5(\ccmd[0]_INST_0_i_14_n_0 ),
        .O(\ccmd[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0007088008880888)) 
    \ccmd[0]_INST_0_i_7 
       (.I0(Q[0]),
        .I1(ir[2]),
        .I2(ir[3]),
        .I3(ir[1]),
        .I4(ir[0]),
        .I5(Q[1]),
        .O(\ccmd[0]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \ccmd[0]_INST_0_i_8 
       (.I0(ir[11]),
        .I1(ir[14]),
        .I2(ir[15]),
        .O(\ccmd[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF95A5)) 
    \ccmd[0]_INST_0_i_9 
       (.I0(ir[11]),
        .I1(ir[15]),
        .I2(ir[14]),
        .I3(\badr[15]_INST_0_i_2 [5]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\ccmd[0]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[1]_INST_0 
       (.I0(crdy_0),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .O(ccmd[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF2222EE2E)) 
    \ccmd[1]_INST_0_i_1 
       (.I0(\ccmd[1]_INST_0_i_2_n_0 ),
        .I1(\ccmd[1]_INST_0_i_3_n_0 ),
        .I2(\ccmd[1]_INST_0_i_4_n_0 ),
        .I3(\ccmd[1]_INST_0_i_5_n_0 ),
        .I4(\ccmd[1]_INST_0_i_6_n_0 ),
        .I5(Q[1]),
        .O(\ccmd[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006000E800)) 
    \ccmd[1]_INST_0_i_11 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(crdy),
        .I3(ir[2]),
        .I4(ir[0]),
        .I5(\ccmd[1]_INST_0_i_5_n_0 ),
        .O(\ccmd[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00F800F8000000F8)) 
    \ccmd[1]_INST_0_i_12 
       (.I0(\badrx[15]_INST_0_i_7_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(\ccmd[4]_INST_0_i_9_n_0 ),
        .I3(\ccmd[1]_INST_0_i_14_n_0 ),
        .I4(\sr[15]_i_20_n_0 ),
        .I5(\ccmd[1]_INST_0_i_15_n_0 ),
        .O(\ccmd[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04500040)) 
    \ccmd[1]_INST_0_i_13 
       (.I0(\ccmd[1]_INST_0_i_16_n_0 ),
        .I1(ir[4]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(\ccmd[1]_INST_0_i_17_n_0 ),
        .I5(\ccmd[1]_INST_0_i_18_n_0 ),
        .O(\ccmd[1]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h4457C7D7)) 
    \ccmd[1]_INST_0_i_14 
       (.I0(crdy),
        .I1(ir[7]),
        .I2(ir[6]),
        .I3(Q[0]),
        .I4(ir[10]),
        .O(\ccmd[1]_INST_0_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[1]_INST_0_i_15 
       (.I0(ir[11]),
        .I1(ir[10]),
        .O(\ccmd[1]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \ccmd[1]_INST_0_i_16 
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(Q[0]),
        .I3(ir[9]),
        .O(\ccmd[1]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[1]_INST_0_i_17 
       (.I0(ir[6]),
        .I1(ir[3]),
        .O(\ccmd[1]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEEEAAAAAAAAA)) 
    \ccmd[1]_INST_0_i_18 
       (.I0(\ccmd[1]_INST_0_i_19_n_0 ),
        .I1(crdy),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(Q[0]),
        .I5(\ccmd[1]_INST_0_i_20_n_0 ),
        .O(\ccmd[1]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0001000102000505)) 
    \ccmd[1]_INST_0_i_19 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(Q[0]),
        .I3(ir[7]),
        .I4(ir[6]),
        .I5(ir[10]),
        .O(\ccmd[1]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBBFBFFFFBFFFF)) 
    \ccmd[1]_INST_0_i_2 
       (.I0(Q[2]),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(Q[0]),
        .I4(ir[15]),
        .I5(\ccmd[1]_INST_0_i_7_n_0 ),
        .O(\ccmd[1]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ccmd[1]_INST_0_i_20 
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(ir[9]),
        .O(\ccmd[1]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h10FF)) 
    \ccmd[1]_INST_0_i_3 
       (.I0(ir[11]),
        .I1(ir[13]),
        .I2(ir[15]),
        .I3(ir[12]),
        .O(\ccmd[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0066100000000000)) 
    \ccmd[1]_INST_0_i_4 
       (.I0(ir[3]),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(Q[2]),
        .I4(ir[2]),
        .I5(\ccmd[1]_INST_0_i_1_1 ),
        .O(\ccmd[1]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ccmd[1]_INST_0_i_5 
       (.I0(rst_n_fl_reg_2),
        .I1(ir[11]),
        .I2(ir[14]),
        .I3(ir[13]),
        .O(\ccmd[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8A88AA8888888A88)) 
    \ccmd[1]_INST_0_i_6 
       (.I0(\ccmd[1]_INST_0_i_1_0 ),
        .I1(\ccmd[1]_INST_0_i_11_n_0 ),
        .I2(ir[11]),
        .I3(ir[15]),
        .I4(ir[14]),
        .I5(ir[13]),
        .O(\ccmd[1]_INST_0_i_6_n_0 ));
  MUXF7 \ccmd[1]_INST_0_i_7 
       (.I0(\ccmd[1]_INST_0_i_12_n_0 ),
        .I1(\ccmd[1]_INST_0_i_13_n_0 ),
        .O(\ccmd[1]_INST_0_i_7_n_0 ),
        .S(ir[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \ccmd[1]_INST_0_i_9 
       (.I0(\bcmd[1]_INST_0_i_3_n_0 ),
        .I1(ir[6]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(rst_n_fl_reg_2));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[2]_INST_0 
       (.I0(crdy_0),
        .I1(\ccmd[2]_INST_0_i_1_n_0 ),
        .O(ccmd[2]));
  LUT6 #(
    .INIT(64'h000000000000FFFD)) 
    \ccmd[2]_INST_0_i_1 
       (.I0(\ccmd[2]_INST_0_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\ccmd[2]_INST_0_i_3_n_0 ),
        .I4(\ccmd[2]_INST_0_i_4_n_0 ),
        .I5(\ccmd[2]_INST_0_i_5_n_0 ),
        .O(\ccmd[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \ccmd[2]_INST_0_i_10 
       (.I0(ir[14]),
        .I1(ir[6]),
        .I2(\ccmd[2]_INST_0_i_20_n_0 ),
        .I3(ir[12]),
        .I4(\bcmd[1]_INST_0_i_3_n_0 ),
        .I5(ctl_fetch_ext_fl_i_7_n_0),
        .O(\ccmd[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10003030)) 
    \ccmd[2]_INST_0_i_11 
       (.I0(ir[11]),
        .I1(Q[1]),
        .I2(\ccmd[2]_INST_0_i_21_n_0 ),
        .I3(ir[14]),
        .I4(ir[13]),
        .I5(\ccmd[2]_INST_0_i_22_n_0 ),
        .O(\ccmd[2]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hEEEE000E)) 
    \ccmd[2]_INST_0_i_12 
       (.I0(Q[0]),
        .I1(crdy),
        .I2(ir[1]),
        .I3(ir[3]),
        .I4(ir[0]),
        .O(\ccmd[2]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[2]_INST_0_i_13 
       (.I0(ir[1]),
        .I1(ir[3]),
        .O(\ccmd[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFDFFFDFFF)) 
    \ccmd[2]_INST_0_i_14 
       (.I0(\ccmd[2]_INST_0_i_23_n_0 ),
        .I1(\ccmd[2]_INST_0_i_24_n_0 ),
        .I2(\ccmd[2]_INST_0_i_20_n_0 ),
        .I3(ir[2]),
        .I4(\ccmd[2]_INST_0_i_21_n_0 ),
        .I5(ir[14]),
        .O(\ccmd[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hEE00000000000222)) 
    \ccmd[2]_INST_0_i_15 
       (.I0(crdy),
        .I1(Q[1]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\ccmd[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h5555555545555555)) 
    \ccmd[2]_INST_0_i_16 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[13]),
        .I3(ir[12]),
        .I4(ir[14]),
        .I5(ir[15]),
        .O(\ccmd[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000029)) 
    \ccmd[2]_INST_0_i_17 
       (.I0(ir[7]),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(Q[1]),
        .I5(\bcmd[1]_INST_0_i_11_n_0 ),
        .O(\ccmd[2]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd[2]_INST_0_i_18 
       (.I0(ir[15]),
        .I1(ir[14]),
        .O(\ccmd[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFDFFFDDDDDFFF)) 
    \ccmd[2]_INST_0_i_19 
       (.I0(ir[7]),
        .I1(\badr[15]_INST_0_i_114_n_0 ),
        .I2(\badrx[15]_INST_0_i_7_n_0 ),
        .I3(ir[6]),
        .I4(ir[10]),
        .I5(ir[9]),
        .O(\ccmd[2]_INST_0_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[2]_INST_0_i_2 
       (.I0(ir[12]),
        .I1(ir[13]),
        .O(\ccmd[2]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[2]_INST_0_i_20 
       (.I0(ir[15]),
        .I1(ir[13]),
        .O(\ccmd[2]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[2]_INST_0_i_21 
       (.I0(ir[15]),
        .I1(Q[0]),
        .O(\ccmd[2]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \ccmd[2]_INST_0_i_22 
       (.I0(\ccmd[2]_INST_0_i_25_n_0 ),
        .I1(ir[4]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(\ccmd[2]_INST_0_i_26_n_0 ),
        .I5(\ccmd[2]_INST_0_i_27_n_0 ),
        .O(\ccmd[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ccmd[2]_INST_0_i_23 
       (.I0(Q[1]),
        .I1(ir[9]),
        .I2(ir[7]),
        .I3(ir[4]),
        .I4(ir[5]),
        .I5(ir[6]),
        .O(\ccmd[2]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \ccmd[2]_INST_0_i_24 
       (.I0(Q[0]),
        .I1(ir[0]),
        .I2(\ccmd[2]_INST_0_i_13_n_0 ),
        .I3(ir[11]),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(\ccmd[2]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \ccmd[2]_INST_0_i_25 
       (.I0(Q[1]),
        .I1(ir[11]),
        .I2(ir[2]),
        .I3(ir[9]),
        .I4(ir[15]),
        .O(\ccmd[2]_INST_0_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h14)) 
    \ccmd[2]_INST_0_i_26 
       (.I0(ir[0]),
        .I1(ir[3]),
        .I2(ir[1]),
        .O(\ccmd[2]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ccmd[2]_INST_0_i_27 
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(ir[8]),
        .I3(ir[10]),
        .I4(ir[6]),
        .O(\ccmd[2]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFAEAFAEAF00AFAE)) 
    \ccmd[2]_INST_0_i_3 
       (.I0(\ccmd[2]_INST_0_i_6_n_0 ),
        .I1(\ccmd[2]_INST_0_i_7_n_0 ),
        .I2(\ccmd[2]_INST_0_i_8_n_0 ),
        .I3(Q[1]),
        .I4(ir[15]),
        .I5(ir[14]),
        .O(\ccmd[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAAAAAA)) 
    \ccmd[2]_INST_0_i_4 
       (.I0(\ccmd[2]_INST_0_i_9_n_0 ),
        .I1(\ccmd[2]_INST_0_i_10_n_0 ),
        .I2(ctl_fetch_ext_fl_reg_1),
        .I3(Q[0]),
        .I4(ir[7]),
        .I5(ctl_fetch_ext_fl_i_3_n_0),
        .O(\ccmd[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1010101011111110)) 
    \ccmd[2]_INST_0_i_5 
       (.I0(ir[12]),
        .I1(Q[2]),
        .I2(\ccmd[2]_INST_0_i_11_n_0 ),
        .I3(\ccmd[2]_INST_0_i_12_n_0 ),
        .I4(\ccmd[2]_INST_0_i_13_n_0 ),
        .I5(\ccmd[2]_INST_0_i_14_n_0 ),
        .O(\ccmd[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00D0F0D0)) 
    \ccmd[2]_INST_0_i_6 
       (.I0(\ccmd[2]_INST_0_i_15_n_0 ),
        .I1(\ccmd[2]_INST_0_i_16_n_0 ),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(\ccmd[2]_INST_0_i_17_n_0 ),
        .I5(\ccmd[2]_INST_0_i_18_n_0 ),
        .O(\ccmd[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAA222A2AAA2AA22)) 
    \ccmd[2]_INST_0_i_7 
       (.I0(\ccmd[2]_INST_0_i_19_n_0 ),
        .I1(ir[11]),
        .I2(ir[7]),
        .I3(ir[9]),
        .I4(ir[10]),
        .I5(ir[6]),
        .O(\ccmd[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABAAAAAAA)) 
    \ccmd[2]_INST_0_i_8 
       (.I0(ir[8]),
        .I1(ir[11]),
        .I2(Q[1]),
        .I3(ir[7]),
        .I4(ir[10]),
        .I5(ir[9]),
        .O(\ccmd[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000D000)) 
    \ccmd[2]_INST_0_i_9 
       (.I0(ir[11]),
        .I1(ir[14]),
        .I2(ctl_fetch_fl_reg_1),
        .I3(ir[15]),
        .I4(Q[0]),
        .I5(ir[13]),
        .O(\ccmd[2]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[3]_INST_0 
       (.I0(crdy_0),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .O(ccmd[3]));
  LUT6 #(
    .INIT(64'h000000000000F2FF)) 
    \ccmd[3]_INST_0_i_1 
       (.I0(\ccmd[3]_INST_0_i_2_n_0 ),
        .I1(\ccmd[3]_INST_0_i_3_n_0 ),
        .I2(\badrx[15]_INST_0_i_5_n_0 ),
        .I3(\bcmd[1]_INST_0_i_6_n_0 ),
        .I4(\ccmd[3]_INST_0_i_4_n_0 ),
        .I5(\ccmd[3]_INST_0_i_5_n_0 ),
        .O(\ccmd[3]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \ccmd[3]_INST_0_i_10 
       (.I0(\badrx[15]_INST_0_i_7_n_0 ),
        .I1(ir[8]),
        .I2(ir[9]),
        .O(\ccmd[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800080000)) 
    \ccmd[3]_INST_0_i_11 
       (.I0(badr_0_sn_1),
        .I1(ir[11]),
        .I2(ir[7]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[10]),
        .O(\ccmd[3]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h14141714)) 
    \ccmd[3]_INST_0_i_12 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\ccmd[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF0E)) 
    \ccmd[3]_INST_0_i_13 
       (.I0(ir[14]),
        .I1(\ccmd[3]_INST_0_i_16_n_0 ),
        .I2(\ccmd[3]_INST_0_i_17_n_0 ),
        .I3(\badrx[15]_INST_0_i_5_n_0 ),
        .I4(\ccmd[3]_INST_0_i_18_n_0 ),
        .I5(\ccmd[3]_INST_0_i_19_n_0 ),
        .O(\ccmd[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0057000000000C0C)) 
    \ccmd[3]_INST_0_i_15 
       (.I0(\stat[2]_i_19_n_0 ),
        .I1(ir[6]),
        .I2(Q[0]),
        .I3(ir[5]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\ccmd[3]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[3]_INST_0_i_16 
       (.I0(ir[12]),
        .I1(ir[13]),
        .O(\ccmd[3]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[3]_INST_0_i_17 
       (.I0(\badrx[15]_INST_0_i_7_n_0 ),
        .I1(crdy),
        .O(\ccmd[3]_INST_0_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \ccmd[3]_INST_0_i_18 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[11]),
        .O(\ccmd[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDFFFFF0FF)) 
    \ccmd[3]_INST_0_i_19 
       (.I0(\ccmd[3]_INST_0_i_20_n_0 ),
        .I1(\tr[15]_i_8_0 ),
        .I2(\ccmd[3]_INST_0_i_13_0 ),
        .I3(\bcmd[1]_INST_0_i_3_n_0 ),
        .I4(\bdatw[15]_INST_0_i_80_n_0 ),
        .I5(ir[12]),
        .O(\ccmd[3]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h54FFFFFFFFFF55FF)) 
    \ccmd[3]_INST_0_i_2 
       (.I0(\ccmd[3]_INST_0_i_6_n_0 ),
        .I1(ir[9]),
        .I2(\ccmd[3]_INST_0_i_1_0 ),
        .I3(\ccmd[3]_INST_0_i_8_n_0 ),
        .I4(ir[8]),
        .I5(ir[10]),
        .O(\ccmd[3]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[3]_INST_0_i_20 
       (.I0(ir[7]),
        .I1(Q[0]),
        .O(\ccmd[3]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00A0AAE0)) 
    \ccmd[3]_INST_0_i_3 
       (.I0(\ccmd[3]_INST_0_i_9_n_0 ),
        .I1(\ccmd[3]_INST_0_i_10_n_0 ),
        .I2(crdy),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\ccmd[3]_INST_0_i_11_n_0 ),
        .O(\ccmd[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000098989888)) 
    \ccmd[3]_INST_0_i_4 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(\ccmd[3]_INST_0_i_12_n_0 ),
        .I3(ir[2]),
        .I4(ir[0]),
        .I5(\ccmd[3]_INST_0_i_13_n_0 ),
        .O(\ccmd[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5070A00000000000)) 
    \ccmd[3]_INST_0_i_5 
       (.I0(ir[13]),
        .I1(ir[11]),
        .I2(\ccmd[3]_INST_0_i_1_1 ),
        .I3(ir[12]),
        .I4(ir[14]),
        .I5(ir[15]),
        .O(\ccmd[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000082808AA)) 
    \ccmd[3]_INST_0_i_6 
       (.I0(\ccmd[3]_INST_0_i_15_n_0 ),
        .I1(ir[6]),
        .I2(Q[0]),
        .I3(ir[4]),
        .I4(ir[3]),
        .I5(Q[1]),
        .O(\ccmd[3]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[3]_INST_0_i_8 
       (.I0(ir[11]),
        .I1(ir[7]),
        .O(\ccmd[3]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \ccmd[3]_INST_0_i_9 
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[11]),
        .I4(ir[10]),
        .O(\ccmd[3]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[4]_INST_0 
       (.I0(crdy_0),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .O(ccmd[4]));
  LUT6 #(
    .INIT(64'hFFB0FFB0FFB0FFBB)) 
    \ccmd[4]_INST_0_i_1 
       (.I0(\ccmd[4]_INST_0_i_3_n_0 ),
        .I1(\bcmd[1]_INST_0_i_6_n_0 ),
        .I2(ir[11]),
        .I3(\badrx[15]_INST_0_i_5_n_0 ),
        .I4(\ccmd[4]_INST_0_i_4_n_0 ),
        .I5(\ccmd[4]_INST_0_i_5_n_0 ),
        .O(crdy_0));
  LUT6 #(
    .INIT(64'hFFFF00FF00FFE8FF)) 
    \ccmd[4]_INST_0_i_10 
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(\ccmd[4]_INST_0_i_18_n_0 ),
        .I3(\bcmd[1]_INST_0_i_6_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\ccmd[4]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ccmd[4]_INST_0_i_11 
       (.I0(ir[4]),
        .I1(ir[9]),
        .I2(ir[10]),
        .I3(ir[8]),
        .O(\ccmd[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \ccmd[4]_INST_0_i_12 
       (.I0(rst_n_fl_reg_1),
        .I1(ctl_fetch_ext_fl_i_4_n_0),
        .I2(\ccmd[4]_INST_0_i_19_n_0 ),
        .I3(ir[12]),
        .I4(\ccmd[2]_INST_0_i_13_n_0 ),
        .I5(\ccmd[3]_INST_0_i_13_0 ),
        .O(\ccmd[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF77FF77FF77FF777)) 
    \ccmd[4]_INST_0_i_13 
       (.I0(crdy),
        .I1(\badrx[15]_INST_0_i_7_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(\ccmd[4]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0_i_14 
       (.I0(ir[6]),
        .I1(Q[0]),
        .O(\ccmd[4]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \ccmd[4]_INST_0_i_15 
       (.I0(ir[11]),
        .I1(\bcmd[1]_INST_0_i_6_n_0 ),
        .I2(ir[10]),
        .I3(\ccmd[4]_INST_0_i_6_0 ),
        .I4(\ccmd[4]_INST_0_i_8_n_0 ),
        .O(\ccmd[4]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \ccmd[4]_INST_0_i_16 
       (.I0(ir[14]),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(ir[10]),
        .I4(ir[11]),
        .O(\ccmd[4]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[4]_INST_0_i_17 
       (.I0(ir[8]),
        .I1(ir[7]),
        .O(\ccmd[4]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd[4]_INST_0_i_18 
       (.I0(ir[9]),
        .I1(crdy),
        .O(\ccmd[4]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0_i_19 
       (.I0(ir[2]),
        .I1(ir[7]),
        .O(\ccmd[4]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFBFBD9)) 
    \ccmd[4]_INST_0_i_2 
       (.I0(ir[11]),
        .I1(ir[12]),
        .I2(\ccmd[4]_INST_0_i_6_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\ccmd[4]_INST_0_i_7_n_0 ),
        .O(\ccmd[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFEEEEFFEFEF)) 
    \ccmd[4]_INST_0_i_3 
       (.I0(\ccmd[4]_INST_0_i_8_n_0 ),
        .I1(\bcmd[1]_INST_0_i_11_n_0 ),
        .I2(crdy),
        .I3(ir[7]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\ccmd[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000ECCEA08A)) 
    \ccmd[4]_INST_0_i_4 
       (.I0(\ccmd[4]_INST_0_i_9_n_0 ),
        .I1(crdy),
        .I2(ir[7]),
        .I3(Q[1]),
        .I4(\badrx[15]_INST_0_i_7_n_0 ),
        .I5(\ccmd[4]_INST_0_i_10_n_0 ),
        .O(\ccmd[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000027FF)) 
    \ccmd[4]_INST_0_i_5 
       (.I0(rst_n_fl_reg_0),
        .I1(Q[0]),
        .I2(ir[0]),
        .I3(Q[1]),
        .I4(\ccmd[4]_INST_0_i_11_n_0 ),
        .I5(\ccmd[4]_INST_0_i_12_n_0 ),
        .O(\ccmd[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \ccmd[4]_INST_0_i_6 
       (.I0(\ccmd[4]_INST_0_i_13_n_0 ),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(Q[1]),
        .I4(\ccmd[4]_INST_0_i_14_n_0 ),
        .I5(\ccmd[4]_INST_0_i_15_n_0 ),
        .O(\ccmd[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF40FFFFFFFFF)) 
    \ccmd[4]_INST_0_i_7 
       (.I0(\ccmd[4]_INST_0_i_16_n_0 ),
        .I1(\ccmd[4]_INST_0_i_17_n_0 ),
        .I2(ir[15]),
        .I3(ir[12]),
        .I4(Q[2]),
        .I5(\badrx[15]_INST_0_i_3_n_0 ),
        .O(\ccmd[4]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd[4]_INST_0_i_8 
       (.I0(ir[9]),
        .I1(ir[8]),
        .O(\ccmd[4]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \ccmd[4]_INST_0_i_9 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[8]),
        .O(\ccmd[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    ctl_fetch_ext_fl_i_1
       (.I0(ctl_fetch_ext_fl_i_2_n_0),
        .I1(ctl_fetch_ext_fl_i_3_n_0),
        .I2(ctl_fetch_ext_fl_i_4_n_0),
        .I3(ctl_fetch_ext_fl_reg_0),
        .I4(ir[4]),
        .I5(ctl_fetch_ext_fl_reg_1),
        .O(ctl_fetch_ext));
  LUT5 #(
    .INIT(32'h00000001)) 
    ctl_fetch_ext_fl_i_2
       (.I0(ir[15]),
        .I1(ir[12]),
        .I2(ir[14]),
        .I3(ir[13]),
        .I4(ctl_fetch_ext_fl_i_7_n_0),
        .O(ctl_fetch_ext_fl_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_ext_fl_i_3
       (.I0(ir[9]),
        .I1(ir[8]),
        .O(ctl_fetch_ext_fl_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ctl_fetch_ext_fl_i_4
       (.I0(ir[5]),
        .I1(ir[6]),
        .O(ctl_fetch_ext_fl_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    ctl_fetch_ext_fl_i_7
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(ir[2]),
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
    .INIT(64'hF200F2F2F200F200)) 
    ctl_fetch_inferred_i_1
       (.I0(ctl_fetch_inferred_i_2_n_0),
        .I1(ctl_fetch_inferred_i_3_n_0),
        .I2(brdy),
        .I3(ctl_fetch_inferred_i_4_n_0),
        .I4(ctl_fetch_inferred_i_5_n_0),
        .I5(ir[11]),
        .O(in0));
  LUT2 #(
    .INIT(4'h8)) 
    ctl_fetch_inferred_i_10
       (.I0(ir[9]),
        .I1(ir[10]),
        .O(ctl_fetch_inferred_i_10_n_0));
  LUT6 #(
    .INIT(64'h00000000222208AA)) 
    ctl_fetch_inferred_i_11
       (.I0(ctl_fetch_inferred_i_4_0),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(Q[1]),
        .I4(ctl_fetch_inferred_i_21_n_0),
        .I5(\ccmd[4]_INST_0_i_11_n_0 ),
        .O(ctl_fetch_inferred_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFDFFFC)) 
    ctl_fetch_inferred_i_12
       (.I0(ir[0]),
        .I1(ir[12]),
        .I2(\ccmd[2]_INST_0_i_13_n_0 ),
        .I3(Q[2]),
        .I4(ctl_fetch_inferred_i_22_n_0),
        .I5(ctl_fetch_inferred_i_23_n_0),
        .O(ctl_fetch_inferred_i_12_n_0));
  LUT4 #(
    .INIT(16'h4777)) 
    ctl_fetch_inferred_i_13
       (.I0(ir[3]),
        .I1(\badr[15]_INST_0_i_2 [10]),
        .I2(ir[2]),
        .I3(ir[1]),
        .O(ctl_fetch_inferred_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFE0FFE0FFFFFFE0)) 
    ctl_fetch_inferred_i_14
       (.I0(Q[1]),
        .I1(ctl_fetch_inferred_i_24_n_0),
        .I2(crdy),
        .I3(ctl_fetch_inferred_i_25_n_0),
        .I4(ctl_fetch_inferred_i_26_n_0),
        .I5(\badrx[15]_INST_0_i_7_n_0 ),
        .O(ctl_fetch_inferred_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFABAAAAAA)) 
    ctl_fetch_inferred_i_15
       (.I0(ctl_fetch_inferred_i_27_n_0),
        .I1(\badrx[15]_INST_0_i_7_n_0 ),
        .I2(ir[11]),
        .I3(Q[0]),
        .I4(ir[8]),
        .I5(ctl_fetch_inferred_i_28_n_0),
        .O(ctl_fetch_inferred_i_15_n_0));
  LUT6 #(
    .INIT(64'hA800A8CCFC00FC00)) 
    ctl_fetch_inferred_i_18
       (.I0(ctl_fetch_inferred_i_29_n_0),
        .I1(ir[8]),
        .I2(ir[7]),
        .I3(ir[10]),
        .I4(ir[6]),
        .I5(ir[9]),
        .O(ctl_fetch_inferred_i_18_n_0));
  LUT6 #(
    .INIT(64'h75FF0000FFFFFFFF)) 
    ctl_fetch_inferred_i_19
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(Q[0]),
        .I5(ctl_fetch_fl_reg_1),
        .O(ctl_fetch_inferred_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFEEFFEEFEEE)) 
    ctl_fetch_inferred_i_2
       (.I0(ctl_fetch_inferred_i_6_n_0),
        .I1(ctl_fetch_inferred_i_7_n_0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(ir[9]),
        .I5(ir[6]),
        .O(ctl_fetch_inferred_i_2_n_0));
  LUT3 #(
    .INIT(8'hEC)) 
    ctl_fetch_inferred_i_21
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[1]),
        .O(ctl_fetch_inferred_i_21_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_inferred_i_22
       (.I0(ir[2]),
        .I1(ir[1]),
        .O(ctl_fetch_inferred_i_22_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ctl_fetch_inferred_i_23
       (.I0(ir[13]),
        .I1(ir[15]),
        .I2(ir[6]),
        .I3(ir[14]),
        .O(ctl_fetch_inferred_i_23_n_0));
  LUT6 #(
    .INIT(64'h0501000150545054)) 
    ctl_fetch_inferred_i_24
       (.I0(ctl_fetch_inferred_i_30_n_0),
        .I1(\badr[15]_INST_0_i_2 [11]),
        .I2(ir[9]),
        .I3(ir[7]),
        .I4(Q[0]),
        .I5(ir[8]),
        .O(ctl_fetch_inferred_i_24_n_0));
  LUT6 #(
    .INIT(64'h00000000FFF6FFFE)) 
    ctl_fetch_inferred_i_25
       (.I0(Q[1]),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(\badrx[15]_INST_0_i_5_n_0 ),
        .I3(Q[0]),
        .I4(ir[12]),
        .I5(ctl_fetch_inferred_i_31_n_0),
        .O(ctl_fetch_inferred_i_25_n_0));
  LUT6 #(
    .INIT(64'hA8AAA8AAA8A8AAAA)) 
    ctl_fetch_inferred_i_26
       (.I0(\bcmd[1]_INST_0_i_6_n_0 ),
        .I1(Q[1]),
        .I2(ctl_fetch_inferred_i_14_0),
        .I3(ir[8]),
        .I4(ir[10]),
        .I5(ir[9]),
        .O(ctl_fetch_inferred_i_26_n_0));
  LUT6 #(
    .INIT(64'h80808000AAAAAAAA)) 
    ctl_fetch_inferred_i_27
       (.I0(\sr[15]_i_33_n_0 ),
        .I1(Q[0]),
        .I2(crdy),
        .I3(\badrx[15]_INST_0_i_7_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [10]),
        .I5(ctl_fetch_inferred_i_15_1),
        .O(ctl_fetch_inferred_i_27_n_0));
  LUT6 #(
    .INIT(64'h4044404040404040)) 
    ctl_fetch_inferred_i_28
       (.I0(ctl_fetch_inferred_i_15_0),
        .I1(ctl_fetch_fl_reg_2),
        .I2(ctl_fetch_inferred_i_35_n_0),
        .I3(ctl_fetch_inferred_i_13_n_0),
        .I4(ir[0]),
        .I5(crdy),
        .O(ctl_fetch_inferred_i_28_n_0));
  LUT6 #(
    .INIT(64'h000000004400000D)) 
    ctl_fetch_inferred_i_29
       (.I0(Q[0]),
        .I1(ir[3]),
        .I2(ir[4]),
        .I3(ir[6]),
        .I4(ir[5]),
        .I5(\ccmd[4]_INST_0_i_17_n_0 ),
        .O(ctl_fetch_inferred_i_29_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    ctl_fetch_inferred_i_3
       (.I0(ctl_fetch_fl_reg_1),
        .I1(ctl_fetch_inferred_i_8_n_0),
        .I2(ir[11]),
        .I3(ctl_fetch_inferred_i_9_n_0),
        .I4(ir[3]),
        .I5(ctl_fetch_inferred_i_10_n_0),
        .O(ctl_fetch_inferred_i_3_n_0));
  LUT5 #(
    .INIT(32'hFF7F7F7F)) 
    ctl_fetch_inferred_i_30
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[10]),
        .I3(\badr[15]_INST_0_i_2 [10]),
        .I4(Q[0]),
        .O(ctl_fetch_inferred_i_30_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    ctl_fetch_inferred_i_31
       (.I0(ir[15]),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(ctl_fetch_inferred_i_31_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    ctl_fetch_inferred_i_35
       (.I0(\ccmd[2]_INST_0_i_27_n_0 ),
        .I1(\ccmd[2]_INST_0_i_13_n_0 ),
        .I2(\bcmd[1]_INST_0_i_3_n_0 ),
        .I3(ir[9]),
        .I4(ir[7]),
        .I5(ctl_fetch_inferred_i_37_n_0),
        .O(ctl_fetch_inferred_i_35_n_0));
  LUT6 #(
    .INIT(64'hE0600000E060E060)) 
    ctl_fetch_inferred_i_36
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(crdy),
        .I5(\badrx[15]_INST_0_i_7_n_0 ),
        .O(crdy_1));
  LUT6 #(
    .INIT(64'h1111111100101111)) 
    ctl_fetch_inferred_i_37
       (.I0(ir[1]),
        .I1(ir[2]),
        .I2(irq),
        .I3(fch_irq_req),
        .I4(ir[0]),
        .I5(ir[3]),
        .O(ctl_fetch_inferred_i_37_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDDF0000)) 
    ctl_fetch_inferred_i_4
       (.I0(ctl_fetch_inferred_i_11_n_0),
        .I1(ctl_fetch_inferred_i_12_n_0),
        .I2(Q[1]),
        .I3(ctl_fetch_inferred_i_13_n_0),
        .I4(ctl_fetch_inferred_i_14_n_0),
        .I5(ctl_fetch_inferred_i_15_n_0),
        .O(ctl_fetch_inferred_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000E200E2E2)) 
    ctl_fetch_inferred_i_5
       (.I0(ctl_fetch_fl_reg_2),
        .I1(ir[12]),
        .I2(ctl_fetch_fl_reg_3),
        .I3(ctl_fetch_inferred_i_18_n_0),
        .I4(\badrx[15]_INST_0_i_3_n_0 ),
        .I5(ctl_fetch_inferred_i_19_n_0),
        .O(ctl_fetch_inferred_i_5_n_0));
  LUT6 #(
    .INIT(64'h27A7A7A755555555)) 
    ctl_fetch_inferred_i_6
       (.I0(ir[10]),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[5]),
        .I5(ir[11]),
        .O(ctl_fetch_inferred_i_6_n_0));
  LUT6 #(
    .INIT(64'hFDFFFFFDFDFFFFFF)) 
    ctl_fetch_inferred_i_7
       (.I0(\bcmd[1]_INST_0_i_6_n_0 ),
        .I1(ir[15]),
        .I2(Q[2]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[11]),
        .O(ctl_fetch_inferred_i_7_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    ctl_fetch_inferred_i_8
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(ir[14]),
        .I3(ir[15]),
        .O(ctl_fetch_inferred_i_8_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    ctl_fetch_inferred_i_9
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(ir[5]),
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
    .INIT(64'h0020000000000000)) 
    \fch_irq_lev[1]_i_2 
       (.I0(rst_n_fl_reg_3),
        .I1(\stat_reg[0]_1 ),
        .I2(fch_irq_req),
        .I3(ir[1]),
        .I4(\fch_irq_lev[1]_i_4_n_0 ),
        .I5(\fch_irq_lev[1]_i_5_n_0 ),
        .O(ctl_irq_ack));
  LUT3 #(
    .INIT(8'h01)) 
    \fch_irq_lev[1]_i_3 
       (.I0(rst_n_fl_reg_2),
        .I1(ir[3]),
        .I2(ir[2]),
        .O(rst_n_fl_reg_3));
  LUT2 #(
    .INIT(4'h8)) 
    \fch_irq_lev[1]_i_4 
       (.I0(ir[0]),
        .I1(brdy),
        .O(\fch_irq_lev[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \fch_irq_lev[1]_i_5 
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(ir[15]),
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
  LUT5 #(
    .INIT(32'h20000000)) 
    \grn[15]_i_1 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(\pc[15]_i_2_n_0 ),
        .I3(\badr[15]_INST_0_i_2 [1]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .O(E));
  LUT5 #(
    .INIT(32'h00200000)) 
    \grn[15]_i_1__0 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(\pc[15]_i_2_n_0 ),
        .I3(\badr[15]_INST_0_i_2 [1]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1] ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \grn[15]_i_1__1 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(\pc[15]_i_2_n_0 ),
        .I3(\badr[15]_INST_0_i_2 [0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0] ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \grn[15]_i_1__10 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_6 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \grn[15]_i_1__11 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_7 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \grn[15]_i_1__12 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \grn[15]_i_1__13 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_8 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \grn[15]_i_1__14 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_9 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \grn[15]_i_1__15 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(\pc[15]_i_2_n_0 ),
        .I3(\badr[15]_INST_0_i_2 [1]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_10 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \grn[15]_i_1__16 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(\pc[15]_i_2_n_0 ),
        .I3(\badr[15]_INST_0_i_2 [1]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_11 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \grn[15]_i_1__17 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(\pc[15]_i_2_n_0 ),
        .I3(\badr[15]_INST_0_i_2 [0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_3 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \grn[15]_i_1__18 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(\pc[15]_i_2_n_0 ),
        .I3(\badr[15]_INST_0_i_2 [1]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_12 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \grn[15]_i_1__19 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_13 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \grn[15]_i_1__2 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(\pc[15]_i_2_n_0 ),
        .I3(\badr[15]_INST_0_i_2 [1]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \grn[15]_i_1__20 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \grn[15]_i_1__21 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_14 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \grn[15]_i_1__22 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_15 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \grn[15]_i_1__23 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_16 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \grn[15]_i_1__24 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_5 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \grn[15]_i_1__25 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_17 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \grn[15]_i_1__26 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_18 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \grn[15]_i_1__27 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_21 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \grn[15]_i_1__28 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_22 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \grn[15]_i_1__29 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_8 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \grn[15]_i_1__3 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \grn[15]_i_1__30 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_23 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \grn[15]_i_1__4 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \grn[15]_i_1__5 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \grn[15]_i_1__6 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \grn[15]_i_1__7 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_4 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \grn[15]_i_1__8 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \grn[15]_i_1__9 
       (.I0(ctl_selc[2]),
        .I1(\grn[15]_i_2_n_0 ),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_5 ));
  LUT2 #(
    .INIT(4'hB)) 
    \grn[15]_i_2 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[4]),
        .O(\grn[15]_i_2_n_0 ));
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
        .I3(\tr_reg[0]_1 ),
        .I4(\iv[0]_i_4_n_0 ),
        .O(cbus[0]));
  LUT6 #(
    .INIT(64'h0220200020202000)) 
    \iv[0]_i_10 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(\stat_reg[1]_0 ),
        .I3(abus_0[0]),
        .I4(\sp_reg[0] ),
        .I5(\stat_reg[2] ),
        .O(\iv[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF3F3303F5F50)) 
    \iv[0]_i_11 
       (.I0(abus_0[8]),
        .I1(\sp_reg[0] ),
        .I2(\stat_reg[1]_0 ),
        .I3(abus_0[0]),
        .I4(\stat_reg[2] ),
        .I5(acmd),
        .O(\iv[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7077)) 
    \iv[0]_i_13 
       (.I0(tout__1_carry_i_10_0),
        .I1(\badr[15]_INST_0_i_2 [6]),
        .I2(\stat_reg[2] ),
        .I3(\sr[7]_i_3_0 ),
        .O(\iv[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \iv[0]_i_14 
       (.I0(\sp_reg[0] ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \iv[0]_i_16 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\sp_reg[0] ),
        .O(\bdatw[8]_INST_0_i_2_1 ));
  LUT6 #(
    .INIT(64'h4444454445454545)) 
    \iv[0]_i_2 
       (.I0(\iv[14]_i_2_n_0 ),
        .I1(\iv[0]_i_5_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\tr_reg[0]_2 ),
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
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\iv[0]_i_14_n_0 ),
        .O(\iv[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h757F757F0000757F)) 
    \iv[0]_i_7 
       (.I0(tout__1_carry_i_10_0),
        .I1(\iv[8]_i_2_1 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[8]_i_16_n_0 ),
        .I4(\iv[14]_i_31_0 ),
        .I5(\stat_reg[2] ),
        .O(\iv[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \iv[0]_i_8 
       (.I0(\iv[8]_i_15_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_10_0),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
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
       (.I0(acmd),
        .I1(\stat_reg[1]_0 ),
        .I2(\stat_reg[2] ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(abus_0[10]),
        .O(\iv[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[10]_i_11 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(abus_0[10]),
        .I3(\bdatw[10]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[2] ),
        .I5(\stat_reg[1]_0 ),
        .O(\iv[10]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h084C)) 
    \iv[10]_i_12 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\iv[14]_i_24_n_0 ),
        .I2(\iv[10]_i_5_1 ),
        .I3(\iv[10]_i_5_2 ),
        .O(\iv[10]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h1B00FFFF)) 
    \iv[10]_i_13 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\iv[10]_i_5_0 ),
        .I2(\iv[10]_i_5_3 ),
        .I3(\iv[14]_i_31_0 ),
        .I4(\sr[7]_i_12 ),
        .O(\iv[10]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF2AFF55FF00FF)) 
    \iv[10]_i_14 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(abus_0[15]),
        .I2(\bdatw[8]_INST_0_i_2_1 ),
        .I3(\iv[14]_i_26_n_0 ),
        .I4(\iv[10]_i_5_2 ),
        .I5(\iv[10]_i_2_1 ),
        .O(\iv[10]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0A0F0F0C0A)) 
    \iv[10]_i_18 
       (.I0(abus_0[2]),
        .I1(abus_0[1]),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\sp_reg[0] ),
        .I4(\bdatw[8]_INST_0_i_2_1 ),
        .I5(\badr[0]_INST_0_i_1 ),
        .O(\iv[10]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AFAF03A3)) 
    \iv[10]_i_2 
       (.I0(\iv[10]_i_5_n_0 ),
        .I1(\iv[10]_i_6_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[10]_i_7_n_0 ),
        .I4(\iv[10]_i_8_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[10]_i_2_n_0 ));
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
        .I5(\iv[10]_i_14_n_0 ),
        .O(\iv[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF3FBB3F)) 
    \iv[10]_i_6 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\stat_reg[2] ),
        .I2(\iv[10]_i_2_0 ),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .I4(\bdatw[8]_INST_0_i_2_2 ),
        .O(\iv[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hC840CCCC)) 
    \iv[10]_i_7 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\stat_reg[2] ),
        .I2(\iv[10]_i_5_2 ),
        .I3(\iv[10]_i_2_1 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \iv[10]_i_8 
       (.I0(\iv[10]_i_18_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\iv[10]_i_2_0 ),
        .I3(\iv[14]_i_31_0 ),
        .I4(\iv[2]_i_2_2 ),
        .I5(\stat_reg[2] ),
        .O(\iv[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDCFFCCDCDCFFC)) 
    \iv[10]_i_9 
       (.I0(abus_0[2]),
        .I1(acmd),
        .I2(\stat_reg[2] ),
        .I3(abus_0[10]),
        .I4(\stat_reg[1]_0 ),
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
        .I1(acmd),
        .I2(\stat_reg[2] ),
        .I3(abus_0[11]),
        .I4(\stat_reg[1]_0 ),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[11]_i_11 
       (.I0(abus_0[11]),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2] ),
        .O(\iv[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[11]_i_12 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(abus_0[11]),
        .I3(\bdatw[11]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[2] ),
        .I5(\stat_reg[1]_0 ),
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
       (.I0(\sp_reg[0] ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\bdatw[9]_INST_0_i_2_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F2F0000)) 
    \iv[11]_i_4 
       (.I0(acmd),
        .I1(\stat_reg[1]_0 ),
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
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\iv[2]_i_2_3 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \iv[11]_i_7 
       (.I0(\iv[11]_i_2_1 ),
        .I1(\iv[14]_i_24_n_0 ),
        .I2(\iv[14]_i_31_0 ),
        .I3(\iv[11]_i_2_2 ),
        .I4(\bdatw[12]_INST_0_i_2_0 ),
        .O(\iv[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h4F03FFFF)) 
    \iv[11]_i_8 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(abus_0[15]),
        .I3(\iv[11]_i_2_4 ),
        .I4(\stat_reg[1]_0 ),
        .O(\iv[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hD0FFD0FFFFFFD0FF)) 
    \iv[11]_i_9 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[11]_i_2_3 ),
        .I2(\stat_reg[2] ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
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
        .I1(acmd),
        .I2(\stat_reg[2] ),
        .I3(abus_0[12]),
        .I4(\stat_reg[1]_0 ),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2200022000002200)) 
    \iv[12]_i_11 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(\stat_reg[2] ),
        .I3(\stat_reg[1]_0 ),
        .I4(\bdatw[12]_INST_0_i_1_n_0 ),
        .I5(abus_0[12]),
        .O(\iv[12]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \iv[12]_i_12 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\iv[12]_i_5_2 ),
        .O(\iv[12]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h4C08)) 
    \iv[12]_i_13 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\iv[14]_i_31_0 ),
        .I2(\iv[8]_i_16_n_0 ),
        .I3(\iv[12]_i_5_1 ),
        .O(\iv[12]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h8B8B88BB)) 
    \iv[12]_i_14 
       (.I0(\iv[4]_i_15_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\sr[6]_i_3_2 ),
        .I3(\iv[12]_i_5_0 ),
        .I4(\bdatw[9]_INST_0_i_2_0 ),
        .O(\iv[12]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h084C)) 
    \iv[12]_i_16 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\iv[14]_i_31_0 ),
        .I2(\iv[12]_i_7_0 ),
        .I3(\iv[12]_i_7_1 ),
        .O(\iv[12]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \iv[12]_i_18 
       (.I0(\stat_reg[2] ),
        .I1(\sp_reg[0] ),
        .I2(\bdatw[9]_INST_0_i_2_n_0 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .I5(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\bdatw[12]_INST_0_i_2_0 ));
  LUT6 #(
    .INIT(64'h00000000AA2A2222)) 
    \iv[12]_i_2 
       (.I0(\iv[12]_i_5_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
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
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\iv[12]_i_12_n_0 ),
        .I2(\stat_reg[2] ),
        .I3(\iv[12]_i_13_n_0 ),
        .I4(\iv[14]_i_31_0 ),
        .I5(\iv[12]_i_14_n_0 ),
        .O(\iv[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h4F00FFFF)) 
    \iv[12]_i_6 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(abus_0[15]),
        .I3(\iv[12]_i_12_n_0 ),
        .I4(\stat_reg[1]_0 ),
        .O(\iv[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4F0FEF0)) 
    \iv[12]_i_7 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\iv[12]_i_5_2 ),
        .I2(\iv[12]_i_16_n_0 ),
        .I3(\iv[14]_i_24_n_0 ),
        .I4(\iv[4]_i_2_2 ),
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
    .INIT(32'hF3F7FFF7)) 
    \iv[12]_i_9 
       (.I0(abus_0[12]),
        .I1(acmd),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[2] ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
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
  LUT3 #(
    .INIT(8'h2A)) 
    \iv[13]_i_10 
       (.I0(crdy_0),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .I2(\ccmd[3]_INST_0_i_1_n_0 ),
        .O(\iv[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDCFFCCDCDCFFC)) 
    \iv[13]_i_11 
       (.I0(abus_0[5]),
        .I1(acmd),
        .I2(\stat_reg[2] ),
        .I3(abus_0[13]),
        .I4(\stat_reg[1]_0 ),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[13]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[13]_i_12 
       (.I0(abus_0[13]),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2] ),
        .O(\iv[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[13]_i_13 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(abus_0[13]),
        .I3(\bdatw[13]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[2] ),
        .I5(\stat_reg[1]_0 ),
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
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\tr_reg[13]_2 ),
        .I4(\iv[13]_i_9_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[13]_i_23 
       (.I0(\sp_reg[0] ),
        .I1(abus_0[1]),
        .O(\badr[1]_INST_0_i_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[13]_i_29 
       (.I0(\sp_reg[0] ),
        .I1(abus_0[15]),
        .O(\badr[15]_INST_0_i_1 ));
  LUT5 #(
    .INIT(32'hFF00FD0D)) 
    \iv[13]_i_3 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(\stat_reg[1]_0 ),
        .I3(tout__1_carry_i_11_n_0),
        .I4(\stat_reg[2] ),
        .O(\iv[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F2F0000)) 
    \iv[13]_i_5 
       (.I0(acmd),
        .I1(\stat_reg[1]_0 ),
        .I2(\iv[13]_i_11_n_0 ),
        .I3(\iv[13]_i_12_n_0 ),
        .I4(\sr[7]_i_7_n_0 ),
        .I5(\iv[13]_i_13_n_0 ),
        .O(\iv[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h74337400CCCCCCCC)) 
    \iv[13]_i_7 
       (.I0(\iv[13]_i_17_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\iv[4]_i_2_0 ),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(\iv[13]_i_2_0 ),
        .I5(\stat_reg[2] ),
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
    .INIT(64'h4F444FFF44444444)) 
    \iv[14]_i_10 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(\iv[14]_i_26_n_0 ),
        .I2(\iv[14]_i_3_0 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\iv[10]_i_5_3 ),
        .I5(\iv[14]_i_31_0 ),
        .O(\iv[14]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \iv[14]_i_11 
       (.I0(\iv[14]_i_29_n_0 ),
        .I1(\stat_reg[2] ),
        .I2(\sr[7]_i_3_0 ),
        .O(\iv[14]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \iv[14]_i_12 
       (.I0(\iv[14]_i_30_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\stat_reg[2] ),
        .O(\iv[14]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h084C)) 
    \iv[14]_i_13 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\iv[14]_i_31_0 ),
        .I2(\iv[14]_i_4_1 ),
        .I3(\iv[14]_i_4_0 ),
        .O(\iv[14]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_14 
       (.I0(\stat_reg[1]_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[14]_i_31_0 ));
  LUT6 #(
    .INIT(64'hFDFDCFFCCDCDCFFC)) 
    \iv[14]_i_17 
       (.I0(abus_0[6]),
        .I1(acmd),
        .I2(\stat_reg[2] ),
        .I3(abus_0[14]),
        .I4(\stat_reg[1]_0 ),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00080C08)) 
    \iv[14]_i_18 
       (.I0(abus_0[14]),
        .I1(acmd),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[2] ),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[14]_i_19 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(abus_0[14]),
        .I3(\bdatw[14]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[2] ),
        .I5(\stat_reg[1]_0 ),
        .O(\iv[14]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFAF7FFFFFFF7FFF)) 
    \iv[14]_i_2 
       (.I0(acmd),
        .I1(\stat_reg[1]_0 ),
        .I2(crdy_0),
        .I3(\ccmd[4]_INST_0_i_2_n_0 ),
        .I4(\ccmd[3]_INST_0_i_1_n_0 ),
        .I5(tout__1_carry_i_10_0),
        .O(\iv[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \iv[14]_i_20 
       (.I0(\bdatw[12]_INST_0_i_2_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\sr[7]_i_3_0 ),
        .O(\sr[7]_i_12 ));
  LUT4 #(
    .INIT(16'h666A)) 
    \iv[14]_i_22 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\sp_reg[0] ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\bdatw[9]_INST_0_i_2_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_24 
       (.I0(\stat_reg[1]_0 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[14]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0F1D)) 
    \iv[14]_i_25 
       (.I0(abus_0[14]),
        .I1(\sp_reg[0] ),
        .I2(abus_0[15]),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\bdatw[8]_INST_0_i_2_1 ),
        .O(\iv[14]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[14]_i_26 
       (.I0(\stat_reg[1]_0 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[14]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \iv[14]_i_29 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .I4(\sp_reg[0] ),
        .O(\iv[14]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0808AA08AA08AA08)) 
    \iv[14]_i_3 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
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
        .I3(\sp_reg[0] ),
        .I4(\bdatw[8]_INST_0_i_2_1 ),
        .O(\iv[14]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h6666666A)) 
    \iv[14]_i_31 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .I4(\sp_reg[0] ),
        .O(\bdatw[8]_INST_0_i_2_0 ));
  LUT5 #(
    .INIT(32'hF033F055)) 
    \iv[14]_i_34 
       (.I0(abus_0[2]),
        .I1(abus_0[1]),
        .I2(\badr[0]_INST_0_i_1 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .I4(\sp_reg[0] ),
        .O(\bdatw[8]_INST_0_i_2_2 ));
  LUT5 #(
    .INIT(32'hFE0001FF)) 
    \iv[14]_i_35 
       (.I0(\sp_reg[0] ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\bdatw[11]_INST_0_i_2_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[14]_i_39 
       (.I0(\sp_reg[0] ),
        .I1(abus_0[0]),
        .O(\badr[0]_INST_0_i_1 ));
  LUT6 #(
    .INIT(64'hD8DFD8DF888F8888)) 
    \iv[14]_i_4 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(\stat_reg[2] ),
        .I3(\iv[14]_i_13_n_0 ),
        .I4(\iv[14]_i_31_0 ),
        .I5(\tr_reg[14]_1 ),
        .O(\iv[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \iv[14]_i_5 
       (.I0(\iv[13]_i_3_n_0 ),
        .I1(\sr_reg[7]_1 [2]),
        .I2(cbus_i),
        .I3(crdy_0),
        .I4(bdatr),
        .I5(\tr_reg[14]_0 ),
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
    .INIT(4'h2)) 
    \iv[14]_i_7 
       (.I0(crdy_0),
        .I1(\ccmd[2]_INST_0_i_1_n_0 ),
        .O(acmd));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_8 
       (.I0(\stat_reg[1]_0 ),
        .I1(\stat_reg[2] ),
        .O(tout__1_carry_i_10_0));
  LUT5 #(
    .INIT(32'h8A80AAAA)) 
    \iv[14]_i_9 
       (.I0(\sr[7]_i_12 ),
        .I1(\iv[10]_i_5_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[10]_i_5_1 ),
        .I4(\iv[14]_i_24_n_0 ),
        .O(\iv[14]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \iv[15]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .O(cbus_sel_cr[0]));
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
    .INIT(64'hF300F53FF3FFF530)) 
    \iv[1]_i_10 
       (.I0(abus_0[9]),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(acmd),
        .I3(\stat_reg[1]_0 ),
        .I4(\stat_reg[2] ),
        .I5(abus_0[1]),
        .O(\iv[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0220222020000000)) 
    \iv[1]_i_11 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(\bdatw[9]_INST_0_i_2_n_0 ),
        .I3(abus_0[1]),
        .I4(\stat_reg[2] ),
        .I5(\stat_reg[1]_0 ),
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
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
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
        .I4(\stat_reg[2] ),
        .I5(\iv[9]_i_2_4 ),
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
        .I2(\stat_reg[1]_0 ),
        .I3(abus_0[2]),
        .I4(\stat_reg[2] ),
        .I5(acmd),
        .O(\iv[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0220222020000000)) 
    \iv[2]_i_11 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(abus_0[2]),
        .I4(\stat_reg[2] ),
        .I5(\stat_reg[1]_0 ),
        .O(\iv[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002FF0200)) 
    \iv[2]_i_2 
       (.I0(\tr_reg[2]_1 ),
        .I1(\iv[2]_i_6_n_0 ),
        .I2(\iv[2]_i_7_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
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
    .INIT(64'hCCC04C408C800C00)) 
    \iv[2]_i_6 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\stat_reg[2] ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\iv[2]_i_2_4 ),
        .I4(\iv[2]_i_2_0 ),
        .I5(\iv[2]_i_2_1 ),
        .O(\iv[2]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \iv[2]_i_7 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(abus_0[1]),
        .I2(tout__1_carry_i_10_0),
        .O(\iv[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF01F0010F010001)) 
    \iv[2]_i_8 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\bdatw[8]_INST_0_i_2_2 ),
        .I2(\bdatw[11]_INST_0_i_2_0 ),
        .I3(tout__1_carry_i_10_0),
        .I4(\iv[2]_i_2_2 ),
        .I5(\iv[2]_i_2_3 ),
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
        .I1(acmd),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[2] ),
        .I4(abus_0[3]),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[3]_i_11 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(abus_0[3]),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\stat_reg[2] ),
        .I5(\stat_reg[1]_0 ),
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
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
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
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \iv[3]_i_6 
       (.I0(\bdatw[12]_INST_0_i_2_0 ),
        .I1(\sr[7]_i_9_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[7]_i_2_3 ),
        .I4(\iv[14]_i_31_0 ),
        .O(\iv[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FF4444444444)) 
    \iv[3]_i_7 
       (.I0(\iv[3]_i_13_n_0 ),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\iv[3]_i_2_1 ),
        .I3(\iv[11]_i_2_3 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\stat_reg[2] ),
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
  LUT6 #(
    .INIT(64'h0220200020202000)) 
    \iv[4]_i_10 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(\stat_reg[1]_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(abus_0[4]),
        .I5(\stat_reg[2] ),
        .O(\iv[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8B98CFBA8BDCCFFE)) 
    \iv[4]_i_11 
       (.I0(acmd),
        .I1(\stat_reg[1]_0 ),
        .I2(abus_0[4]),
        .I3(\stat_reg[2] ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
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
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\iv[4]_i_5_n_0 ),
        .I2(\tr_reg[4]_1 ),
        .I3(\iv[4]_i_7_n_0 ),
        .I4(\iv[4]_i_8_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \iv[4]_i_4 
       (.I0(\iv[4]_i_10_n_0 ),
        .I1(\iv[4]_i_11_n_0 ),
        .I2(\sr[7]_i_7_n_0 ),
        .O(\iv[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \iv[4]_i_5 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(tout__1_carry_i_10_0),
        .I2(abus_0[3]),
        .O(\iv[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hCFCFCDCF)) 
    \iv[4]_i_7 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\stat_reg[2] ),
        .I2(\iv[14]_i_29_n_0 ),
        .I3(\iv[14]_i_31_0 ),
        .I4(\iv[4]_i_2_2 ),
        .O(\iv[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033550FFF)) 
    \iv[4]_i_8 
       (.I0(\iv[4]_i_2_0 ),
        .I1(\iv[4]_i_2_1 ),
        .I2(\iv[4]_i_15_n_0 ),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(tout__1_carry_i_10_0),
        .I5(\bdatw[12]_INST_0_i_2_n_0 ),
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
        .I1(acmd),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[2] ),
        .I4(abus_0[5]),
        .I5(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(\iv[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[5]_i_11 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(abus_0[5]),
        .I3(\bdatw[13]_INST_0_i_2_n_0 ),
        .I4(\stat_reg[2] ),
        .I5(\stat_reg[1]_0 ),
        .O(\iv[5]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[5]_i_12 
       (.I0(\stat_reg[1]_0 ),
        .I1(abus_0[4]),
        .O(\iv[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EFF0E00)) 
    \iv[5]_i_2 
       (.I0(\tr_reg[5]_1 ),
        .I1(\iv[5]_i_6_n_0 ),
        .I2(\iv[5]_i_7_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
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
        .I3(\iv[10]_i_5_3 ),
        .I4(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF8888FCCC8888)) 
    \iv[5]_i_7 
       (.I0(\iv[5]_i_12_n_0 ),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\iv[13]_i_17_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .I4(\stat_reg[2] ),
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
        .I2(\stat_reg[1]_0 ),
        .I3(abus_0[6]),
        .I4(\stat_reg[2] ),
        .I5(acmd),
        .O(\iv[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[6]_i_11 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(abus_0[6]),
        .I3(\bdatw[14]_INST_0_i_2_n_0 ),
        .I4(\stat_reg[2] ),
        .I5(\stat_reg[1]_0 ),
        .O(\iv[6]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[6]_i_12 
       (.I0(\stat_reg[1]_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[14]_i_31_1 ));
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
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
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
       (.I0(\iv[14]_i_31_1 ),
        .I1(\iv[14]_i_25_n_0 ),
        .I2(\iv[10]_i_5_2 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\iv[2]_i_2_0 ),
        .I5(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \iv[6]_i_6 
       (.I0(\bdatw[12]_INST_0_i_2_0 ),
        .I1(\iv[10]_i_5_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[10]_i_5_1 ),
        .I4(\iv[14]_i_31_0 ),
        .O(\iv[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF4FF4444F4444444)) 
    \iv[6]_i_7 
       (.I0(\iv[6]_i_14_n_0 ),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\iv[14]_i_30_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .I4(\stat_reg[2] ),
        .I5(\iv[6]_i_2_0 ),
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
  LUT6 #(
    .INIT(64'h00A0007000000080)) 
    \iv[7]_i_10 
       (.I0(abus_0[7]),
        .I1(\stat_reg[2] ),
        .I2(acmd),
        .I3(\iv[13]_i_10_n_0 ),
        .I4(\bdatw[15]_INST_0_i_2_n_0 ),
        .I5(\stat_reg[1]_0 ),
        .O(\iv[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0DFFFDCC0D3CFD0)) 
    \iv[7]_i_11 
       (.I0(abus_0[15]),
        .I1(acmd),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[2] ),
        .I4(abus_0[7]),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FF00FF00FF00)) 
    \iv[7]_i_14 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\sp_reg[0] ),
        .I3(\stat_reg[2] ),
        .I4(abus_0[15]),
        .I5(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \iv[7]_i_17 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[1]_0 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000D5DD)) 
    \iv[7]_i_2 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
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
    .INIT(64'h0000000057DF5555)) 
    \iv[7]_i_6 
       (.I0(\sr[7]_i_12 ),
        .I1(\bdatw[9]_INST_0_i_2_0 ),
        .I2(\sr[7]_i_9_0 ),
        .I3(\iv[2]_i_2_1 ),
        .I4(\iv[14]_i_31_0 ),
        .I5(\iv[7]_i_14_n_0 ),
        .O(\iv[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \iv[7]_i_7 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\iv[12]_i_7_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[7]_i_2_3 ),
        .O(\iv[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AEAE00AE)) 
    \iv[7]_i_8 
       (.I0(\iv[7]_i_17_n_0 ),
        .I1(\iv[7]_i_2_0 ),
        .I2(\iv[7]_i_2_1 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\iv[7]_i_2_2 ),
        .I5(\bdatw[12]_INST_0_i_2_n_0 ),
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
        .I1(acmd),
        .I2(\stat_reg[2] ),
        .I3(abus_0[8]),
        .I4(\stat_reg[1]_0 ),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[8]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0C080008)) 
    \iv[8]_i_11 
       (.I0(abus_0[8]),
        .I1(acmd),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[2] ),
        .I4(\sp_reg[0] ),
        .O(\iv[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[8]_i_12 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(abus_0[8]),
        .I3(\bdatw[8]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[2] ),
        .I5(\stat_reg[1]_0 ),
        .O(\iv[8]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \iv[8]_i_15 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(abus_0[0]),
        .I2(\sp_reg[0] ),
        .O(\iv[8]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hF088F0FF)) 
    \iv[8]_i_16 
       (.I0(\badr[15]_INST_0_i_2 [6]),
        .I1(\sp_reg[0] ),
        .I2(\iv[0]_i_7_0 ),
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
    .INIT(64'h44444F444444FFFF)) 
    \iv[8]_i_5 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\iv[0]_i_2_0 ),
        .I2(\iv[8]_i_2_0 ),
        .I3(\iv[14]_i_31_0 ),
        .I4(\stat_reg[2] ),
        .I5(\sr[7]_i_12 ),
        .O(\iv[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFB00FFFF)) 
    \iv[8]_i_6 
       (.I0(\stat_reg[2] ),
        .I1(abus_0[7]),
        .I2(\stat_reg[1]_0 ),
        .I3(\iv[14]_i_11_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
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
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\iv[12]_i_5_1 ),
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
    .INIT(8'h35)) 
    \iv[9]_i_10 
       (.I0(abus_0[9]),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2] ),
        .O(\iv[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[9]_i_11 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(abus_0[9]),
        .I3(\bdatw[9]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[2] ),
        .I5(\stat_reg[1]_0 ),
        .O(\iv[9]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \iv[9]_i_18 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\badr[1]_INST_0_i_1 ),
        .I2(\iv[1]_i_7_0 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .O(\iv[9]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EFF0E00)) 
    \iv[9]_i_2 
       (.I0(\iv[9]_i_5_n_0 ),
        .I1(\iv[9]_i_6_n_0 ),
        .I2(\iv[9]_i_7_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\iv[9]_i_8_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F2F0000)) 
    \iv[9]_i_4 
       (.I0(acmd),
        .I1(\stat_reg[1]_0 ),
        .I2(\iv[9]_i_9_n_0 ),
        .I3(\iv[9]_i_10_n_0 ),
        .I4(\sr[7]_i_7_n_0 ),
        .I5(\iv[9]_i_11_n_0 ),
        .O(\iv[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h220FFF0F220A220A)) 
    \iv[9]_i_5 
       (.I0(\iv[14]_i_26_n_0 ),
        .I1(\iv[9]_i_2_2 ),
        .I2(\iv[14]_i_3_0 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\iv[9]_i_2_3 ),
        .I5(\iv[14]_i_24_n_0 ),
        .O(\iv[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h808AFFFF)) 
    \iv[9]_i_6 
       (.I0(\iv[14]_i_31_0 ),
        .I1(\iv[9]_i_2_5 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[9]_i_2_6 ),
        .I4(\sr[7]_i_12 ),
        .O(\iv[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD0FFFFFFD0D0D0D0)) 
    \iv[9]_i_7 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[9]_i_2_4 ),
        .I2(\stat_reg[2] ),
        .I3(tout__1_carry_i_10_0),
        .I4(abus_0[8]),
        .I5(\iv[14]_i_11_n_0 ),
        .O(\iv[9]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hBB8B888B)) 
    \iv[9]_i_8 
       (.I0(\iv[9]_i_2_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\iv[9]_i_18_n_0 ),
        .I3(tout__1_carry_i_10_0),
        .I4(\iv[9]_i_2_1 ),
        .O(\iv[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDCFFCCDCDCFFC)) 
    \iv[9]_i_9 
       (.I0(abus_0[1]),
        .I1(acmd),
        .I2(\stat_reg[2] ),
        .I3(abus_0[9]),
        .I4(\stat_reg[1]_0 ),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[9]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[0]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_4_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [0]),
        .I4(fch_pc[0]),
        .I5(cbus[0]),
        .O(\pc_reg[15] [0]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[10]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_4_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [10]),
        .I4(fch_pc[10]),
        .I5(cbus[10]),
        .O(\pc_reg[15] [10]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[11]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_4_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [11]),
        .I4(fch_pc[11]),
        .I5(cbus[11]),
        .O(\pc_reg[15] [11]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[12]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_4_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [12]),
        .I4(fch_pc[12]),
        .I5(cbus[12]),
        .O(\pc_reg[15] [12]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[13]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_4_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [13]),
        .I4(fch_pc[13]),
        .I5(cbus[13]),
        .O(\pc_reg[15] [13]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[14]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_4_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [14]),
        .I4(fch_pc[14]),
        .I5(cbus[14]),
        .O(\pc_reg[15] [14]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[15]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_4_n_0 ),
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
        .I1(\sr[15]_i_4_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [1]),
        .I4(fch_pc[1]),
        .I5(cbus[1]),
        .O(\pc_reg[15] [1]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[2]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_4_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [2]),
        .I4(fch_pc[2]),
        .I5(cbus[2]),
        .O(\pc_reg[15] [2]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[3]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_4_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [3]),
        .I4(fch_pc[3]),
        .I5(cbus[3]),
        .O(\pc_reg[15] [3]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[4]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_4_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [4]),
        .I4(fch_pc[4]),
        .I5(cbus[4]),
        .O(\pc_reg[15] [4]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[5]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_4_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [5]),
        .I4(fch_pc[5]),
        .I5(cbus[5]),
        .O(\pc_reg[15] [5]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[6]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_4_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [6]),
        .I4(fch_pc[6]),
        .I5(cbus[6]),
        .O(\pc_reg[15] [6]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[7]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_4_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [7]),
        .I4(fch_pc[7]),
        .I5(cbus[7]),
        .O(\pc_reg[15] [7]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[8]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_4_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [8]),
        .I4(fch_pc[8]),
        .I5(cbus[8]),
        .O(\pc_reg[15] [8]));
  LUT6 #(
    .INIT(64'hFFF88F8877700700)) 
    \pc[9]_i_1 
       (.I0(\pc[15]_i_2_n_0 ),
        .I1(\sr[15]_i_4_n_0 ),
        .I2(\pc[15]_i_3_n_0 ),
        .I3(\pc_reg[15]_0 [9]),
        .I4(fch_pc[9]),
        .I5(cbus[9]),
        .O(\pc_reg[15] [9]));
  LUT6 #(
    .INIT(64'hFE00FFFFFE000000)) 
    \read_cyc[0]_i_1 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[0] ),
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
  LUT5 #(
    .INIT(32'hFFDF2000)) 
    \sp[0]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[0]),
        .I4(\sp_reg[0]_1 ),
        .O(\stat_reg[1]_1 [0]));
  LUT5 #(
    .INIT(32'hFFDF2000)) 
    \sp[10]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[10]),
        .I4(\sp_reg[10]_0 ),
        .O(\stat_reg[1]_1 [10]));
  LUT5 #(
    .INIT(32'hFFDF2000)) 
    \sp[11]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[11]),
        .I4(\sp_reg[11]_0 ),
        .O(\stat_reg[1]_1 [11]));
  LUT5 #(
    .INIT(32'hFFDF2000)) 
    \sp[12]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[12]),
        .I4(\sp_reg[12]_0 ),
        .O(\stat_reg[1]_1 [12]));
  LUT5 #(
    .INIT(32'hFFDF2000)) 
    \sp[13]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[13]),
        .I4(\sp_reg[13]_0 ),
        .O(\stat_reg[1]_1 [13]));
  LUT5 #(
    .INIT(32'hFFDF2000)) 
    \sp[14]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[14]),
        .I4(\sp_reg[14]_0 ),
        .O(\stat_reg[1]_1 [14]));
  LUT5 #(
    .INIT(32'hFFDF2000)) 
    \sp[15]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(\sp_reg[15]_0 ),
        .I4(\sp_reg[15]_1 ),
        .O(\stat_reg[1]_1 [15]));
  LUT6 #(
    .INIT(64'hFFFF76FF76767676)) 
    \sp[15]_i_11 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[2]),
        .I3(ir[12]),
        .I4(\sp[15]_i_6_0 ),
        .I5(ir[10]),
        .O(\sp[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAFAAFBFFFB)) 
    \sp[15]_i_12 
       (.I0(\sp[15]_i_15_n_0 ),
        .I1(ir[0]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(ir[6]),
        .I5(ir[3]),
        .O(\sp[15]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sp[15]_i_13 
       (.I0(ir[1]),
        .I1(ir[0]),
        .O(\sp[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sp[15]_i_14 
       (.I0(ir[2]),
        .I1(ir[3]),
        .O(\sp[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F3F3F3F3F3E3F)) 
    \sp[15]_i_15 
       (.I0(ir[6]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(\stat[0]_i_8_0 ),
        .I4(ir[12]),
        .I5(ir[11]),
        .O(\sp[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0015001)) 
    \sp[15]_i_3 
       (.I0(ir[4]),
        .I1(ir[1]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[6]),
        .I5(\sp[15]_i_6_n_0 ),
        .O(ctl_sp_dec));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \sp[15]_i_4 
       (.I0(\sp[15]_i_7_n_0 ),
        .I1(brdy),
        .I2(\bcmd[1] ),
        .I3(\sp[15]_i_8_n_0 ),
        .I4(\sp[15]_i_9_n_0 ),
        .I5(\bcmd[1]_INST_0_i_5_n_0 ),
        .O(ctl_sp_inc));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7EFF)) 
    \sp[15]_i_6 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(\sp[15]_i_3_0 ),
        .I4(\sp[15]_i_11_n_0 ),
        .I5(\sp[15]_i_12_n_0 ),
        .O(\sp[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3E3E3E3EFF3E3E3E)) 
    \sp[15]_i_7 
       (.I0(ir[4]),
        .I1(ir[7]),
        .I2(ir[6]),
        .I3(Q[0]),
        .I4(\sp[15]_i_13_n_0 ),
        .I5(\sp[15]_i_14_n_0 ),
        .O(\sp[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE6FFFFFFE6FFFFE6)) 
    \sp[15]_i_8 
       (.I0(ir[12]),
        .I1(ir[11]),
        .I2(Q[0]),
        .I3(ir[5]),
        .I4(ir[6]),
        .I5(ir[2]),
        .O(\sp[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h7EFF7EFFFF7EFFFF)) 
    \sp[15]_i_9 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(ir[3]),
        .I4(ir[1]),
        .I5(ir[5]),
        .O(\sp[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFDF2000)) 
    \sp[1]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[1]),
        .I4(\sp_reg[1]_0 ),
        .O(\stat_reg[1]_1 [1]));
  LUT5 #(
    .INIT(32'hFFDF2000)) 
    \sp[2]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[2]),
        .I4(\sp_reg[2]_0 ),
        .O(\stat_reg[1]_1 [2]));
  LUT5 #(
    .INIT(32'hFFDF2000)) 
    \sp[3]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[3]),
        .I4(\sp_reg[3]_0 ),
        .O(\stat_reg[1]_1 [3]));
  LUT5 #(
    .INIT(32'hFFDF2000)) 
    \sp[4]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[4]),
        .I4(\sp_reg[4]_0 ),
        .O(\stat_reg[1]_1 [4]));
  LUT5 #(
    .INIT(32'hFFDF2000)) 
    \sp[5]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[5]),
        .I4(\sp_reg[5]_0 ),
        .O(\stat_reg[1]_1 [5]));
  LUT5 #(
    .INIT(32'hFFDF2000)) 
    \sp[6]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[6]),
        .I4(\sp_reg[6]_0 ),
        .O(\stat_reg[1]_1 [6]));
  LUT5 #(
    .INIT(32'hFFDF2000)) 
    \sp[7]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[7]),
        .I4(\sp_reg[7]_0 ),
        .O(\stat_reg[1]_1 [7]));
  LUT5 #(
    .INIT(32'hFFDF2000)) 
    \sp[8]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[8]),
        .I4(\sp_reg[8]_0 ),
        .O(\stat_reg[1]_1 [8]));
  LUT5 #(
    .INIT(32'hFFDF2000)) 
    \sp[9]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[9]),
        .I4(\sp_reg[9]_0 ),
        .O(\stat_reg[1]_1 [9]));
  LUT6 #(
    .INIT(64'hFFEFEFEFFF000000)) 
    \sr[0]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[0]),
        .I4(\sr[13]_i_3_n_0 ),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[0]_7 ));
  LUT6 #(
    .INIT(64'hFFEFEFEFFF000000)) 
    \sr[10]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[10]),
        .I4(\sr[13]_i_3_n_0 ),
        .I5(\badr[15]_INST_0_i_2 [10]),
        .O(\sr_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hFFEFEFEFFF000000)) 
    \sr[11]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[11]),
        .I4(\sr[13]_i_3_n_0 ),
        .I5(\badr[15]_INST_0_i_2 [11]),
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
  LUT4 #(
    .INIT(16'h1000)) 
    \sr[13]_i_3 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(\sr[7]_i_4_n_0 ),
        .O(\sr[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \sr[13]_i_4 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[2]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\sr[15]_i_4_n_0 ),
        .I5(ctl_selc[4]),
        .O(\sr[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \sr[13]_i_5 
       (.I0(\sr[13]_i_6_n_0 ),
        .I1(\sr[13]_i_7_n_0 ),
        .I2(ir[6]),
        .I3(ir[5]),
        .I4(ir[4]),
        .I5(ir[7]),
        .O(ctl_sr_ldie));
  LUT5 #(
    .INIT(32'h00000002)) 
    \sr[13]_i_6 
       (.I0(\fch_irq_lev[1]_i_5_n_0 ),
        .I1(ir[11]),
        .I2(ir[2]),
        .I3(ir[8]),
        .I4(ir[10]),
        .O(\sr[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \sr[13]_i_7 
       (.I0(ir[3]),
        .I1(brdy),
        .I2(\bdatw[13]_INST_0_i_14_n_0 ),
        .I3(Q[0]),
        .I4(ir[9]),
        .I5(ctl_fetch_fl_reg_1),
        .O(\sr[13]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h10FF)) 
    \sr[15]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(rst_n),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'h00000000FFF7F7DF)) 
    \sr[15]_i_10 
       (.I0(\sr[15]_i_22_n_0 ),
        .I1(ir[2]),
        .I2(ir[0]),
        .I3(ir[1]),
        .I4(ir[3]),
        .I5(\sr[15]_i_23_n_0 ),
        .O(\sr[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00F8)) 
    \sr[15]_i_11 
       (.I0(\badrx[15]_INST_0_i_7_n_0 ),
        .I1(ir[4]),
        .I2(\sr[15]_i_24_n_0 ),
        .I3(\badr[15]_INST_0_i_114_n_0 ),
        .I4(\sr[15]_i_25_n_0 ),
        .I5(\sr[15]_i_26_n_0 ),
        .O(\sr[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFEFFFF)) 
    \sr[15]_i_12 
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[6]),
        .I3(ir[5]),
        .I4(ir[1]),
        .I5(\sr[15]_i_27_n_0 ),
        .O(\sr[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h1100F0FF11000000)) 
    \sr[15]_i_13 
       (.I0(\sr[15]_i_28_n_0 ),
        .I1(ir[5]),
        .I2(crdy),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(\sr[15]_i_29_n_0 ),
        .O(\sr[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5050D050)) 
    \sr[15]_i_14 
       (.I0(\sr[15]_i_30_n_0 ),
        .I1(\sr[15]_i_31_n_0 ),
        .I2(ir[4]),
        .I3(\sr[15]_i_32_n_0 ),
        .I4(\ccmd[4]_INST_0_i_17_n_0 ),
        .I5(Q[0]),
        .O(\sr[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \sr[15]_i_15 
       (.I0(\ccmd[4]_INST_0_i_9_n_0 ),
        .I1(\sr[15]_i_33_n_0 ),
        .I2(ir[7]),
        .I3(ir[1]),
        .I4(\sr[15]_i_34_n_0 ),
        .I5(\sr[15]_i_35_n_0 ),
        .O(\sr[15]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \sr[15]_i_16 
       (.I0(Q[0]),
        .I1(ir[15]),
        .I2(ir[13]),
        .I3(ir[14]),
        .O(\sr[15]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0600)) 
    \sr[15]_i_17 
       (.I0(ir[3]),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(ir[2]),
        .O(\sr[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h57575757F7F757F7)) 
    \sr[15]_i_18 
       (.I0(\badr[15]_INST_0_i_130_n_0 ),
        .I1(\badr[15]_INST_0_i_90_0 ),
        .I2(ir[14]),
        .I3(\ccmd[2]_INST_0_i_2_n_0 ),
        .I4(\sr[15]_i_36_n_0 ),
        .I5(\bdatw[15]_INST_0_i_50_n_0 ),
        .O(\sr[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000A088080)) 
    \sr[15]_i_19 
       (.I0(\sr[15]_i_22_n_0 ),
        .I1(ir[2]),
        .I2(ir[3]),
        .I3(brdy),
        .I4(ir[1]),
        .I5(ir[0]),
        .O(\sr[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FFF2F2)) 
    \sr[15]_i_2 
       (.I0(ir[9]),
        .I1(\sr[15]_i_5_n_0 ),
        .I2(\sr[15]_i_6_n_0 ),
        .I3(\sr[15]_i_7_n_0 ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(ctl_selc[1]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \sr[15]_i_20 
       (.I0(ir[14]),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(ir[15]),
        .I4(Q[0]),
        .O(\sr[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFCAC33A3F0A03)) 
    \sr[15]_i_21 
       (.I0(\sr[15]_i_37_n_0 ),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(crdy),
        .I4(\sr[15]_i_38_n_0 ),
        .I5(\sr[15]_i_39_n_0 ),
        .O(\sr[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \sr[15]_i_22 
       (.I0(ir[15]),
        .I1(Q[0]),
        .I2(\sr[15]_i_40_n_0 ),
        .I3(\bdatw[15]_INST_0_i_79_n_0 ),
        .I4(\bdatw[15]_INST_0_i_80_n_0 ),
        .I5(\bdatw[15]_INST_0_i_81_n_0 ),
        .O(\sr[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAAEAAAAAAAAAA)) 
    \sr[15]_i_23 
       (.I0(\sr[15]_i_41_n_0 ),
        .I1(\bdatw[15]_INST_0_i_67_n_0 ),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(brdy),
        .I5(rst_n_fl_reg_3),
        .O(\sr[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h88800080AAAAAAAA)) 
    \sr[15]_i_24 
       (.I0(ir[10]),
        .I1(ctl_fetch_ext_fl_i_3_n_0),
        .I2(ir[1]),
        .I3(ir[7]),
        .I4(ir[4]),
        .I5(\sr[15]_i_42_n_0 ),
        .O(\sr[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h40FF40FFF0FFFFFF)) 
    \sr[15]_i_25 
       (.I0(\sr[15]_i_43_n_0 ),
        .I1(\bdatw[12]_INST_0_i_89_n_0 ),
        .I2(\sr[15]_i_31_n_0 ),
        .I3(Q[0]),
        .I4(\badr[15]_INST_0_i_108_n_0 ),
        .I5(\sr[15]_i_42_n_0 ),
        .O(\sr[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h4000555540004000)) 
    \sr[15]_i_26 
       (.I0(\bcmd[1]_INST_0_i_11_n_0 ),
        .I1(\sr[15]_i_44_n_0 ),
        .I2(\ccmd[2]_INST_0_i_13_n_0 ),
        .I3(ir[9]),
        .I4(\ccmd[0]_INST_0_i_19_n_0 ),
        .I5(\sr[15]_i_45_n_0 ),
        .O(\sr[15]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \sr[15]_i_27 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[9]),
        .O(\sr[15]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \sr[15]_i_28 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[1]),
        .O(\sr[15]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sr[15]_i_29 
       (.I0(ir[4]),
        .I1(ir[7]),
        .O(\sr[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00C0005500C0FF55)) 
    \sr[15]_i_3 
       (.I0(\sr[15]_i_8_n_0 ),
        .I1(\sr[15]_i_9_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\sr[15]_i_10_n_0 ),
        .O(ctl_selc[0]));
  LUT6 #(
    .INIT(64'hFF30A8FFFFFFA8FF)) 
    \sr[15]_i_30 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[7]),
        .I3(ir[11]),
        .I4(ir[10]),
        .I5(\sr[15]_i_46_n_0 ),
        .O(\sr[15]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \sr[15]_i_31 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(crdy),
        .O(\sr[15]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sr[15]_i_32 
       (.I0(ir[6]),
        .I1(ir[9]),
        .O(\sr[15]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sr[15]_i_33 
       (.I0(ir[12]),
        .I1(ir[11]),
        .O(\sr[15]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFF00202000000000)) 
    \sr[15]_i_34 
       (.I0(ir[4]),
        .I1(ir[6]),
        .I2(brdy),
        .I3(ir[1]),
        .I4(ir[8]),
        .I5(ir[7]),
        .O(\sr[15]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \sr[15]_i_35 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[12]),
        .I3(ir[11]),
        .O(\sr[15]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h888A888A0000888A)) 
    \sr[15]_i_36 
       (.I0(\sr[15]_i_47_n_0 ),
        .I1(ir[11]),
        .I2(\sr[15]_i_48_n_0 ),
        .I3(\sr[15]_i_49_n_0 ),
        .I4(ir[3]),
        .I5(\tr[15]_i_41_n_0 ),
        .O(\sr[15]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00005DDD5DDD5DDD)) 
    \sr[15]_i_37 
       (.I0(ir[10]),
        .I1(\sr[15]_i_50_n_0 ),
        .I2(ctl_fetch_ext_fl_i_3_n_0),
        .I3(\sr[15]_i_51_n_0 ),
        .I4(ir[3]),
        .I5(\badrx[15]_INST_0_i_7_n_0 ),
        .O(\sr[15]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA2AAAAAAAA)) 
    \sr[15]_i_38 
       (.I0(\sr[15]_i_50_n_0 ),
        .I1(ir[0]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[9]),
        .I5(\sr[15]_i_31_n_0 ),
        .O(\sr[15]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h7770777755555555)) 
    \sr[15]_i_39 
       (.I0(\sr[15]_i_52_n_0 ),
        .I1(crdy),
        .I2(\sr[15]_i_53_n_0 ),
        .I3(\bcmd[2]_INST_0_i_2_n_0 ),
        .I4(ir[3]),
        .I5(ir[7]),
        .O(\sr[15]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \sr[15]_i_4 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[2]),
        .I2(ctl_selc[4]),
        .O(\sr[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[15]_i_40 
       (.I0(ir[12]),
        .I1(ir[11]),
        .I2(ir[13]),
        .I3(ir[14]),
        .O(\sr[15]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h80000000AAAAAAAA)) 
    \sr[15]_i_41 
       (.I0(\sr[15]_i_16_n_0 ),
        .I1(\sr[15]_i_35_n_0 ),
        .I2(\sr[15]_i_54_n_0 ),
        .I3(ir[3]),
        .I4(brdy),
        .I5(\sr[15]_i_55_n_0 ),
        .O(\sr[15]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \sr[15]_i_42 
       (.I0(ir[4]),
        .I1(ir[6]),
        .I2(brdy),
        .I3(ir[9]),
        .I4(ir[8]),
        .O(\sr[15]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sr[15]_i_43 
       (.I0(ir[8]),
        .I1(ir[1]),
        .O(\sr[15]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \sr[15]_i_44 
       (.I0(brdy),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(ir[8]),
        .I4(ir[7]),
        .O(\sr[15]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h0000E200)) 
    \sr[15]_i_45 
       (.I0(ir[1]),
        .I1(ir[7]),
        .I2(ir[4]),
        .I3(ir[8]),
        .I4(ir[9]),
        .O(\sr[15]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h20002222)) 
    \sr[15]_i_46 
       (.I0(crdy),
        .I1(ir[9]),
        .I2(ir[7]),
        .I3(ir[6]),
        .I4(ir[8]),
        .O(\sr[15]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFBFBAAFBFB)) 
    \sr[15]_i_47 
       (.I0(\bcmd[1]_INST_0_i_11_n_0 ),
        .I1(\sr[15]_i_56_n_0 ),
        .I2(\sr[15]_i_57_n_0 ),
        .I3(ir[7]),
        .I4(ir[3]),
        .I5(\badr[15]_INST_0_i_141_n_0 ),
        .O(\sr[15]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h2000020200000000)) 
    \sr[15]_i_48 
       (.I0(ir[10]),
        .I1(\ccmd[4]_INST_0_i_18_n_0 ),
        .I2(ir[7]),
        .I3(ir[6]),
        .I4(ir[8]),
        .I5(ir[3]),
        .O(\sr[15]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \sr[15]_i_49 
       (.I0(ir[10]),
        .I1(crdy),
        .I2(\ccmd[4]_INST_0_i_8_n_0 ),
        .I3(ir[3]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\sr[15]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFDDDFDDDDFDDDDDD)) 
    \sr[15]_i_5 
       (.I0(ir[15]),
        .I1(Q[0]),
        .I2(ir[14]),
        .I3(ir[13]),
        .I4(ir[11]),
        .I5(ir[12]),
        .O(\sr[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \sr[15]_i_50 
       (.I0(brdy),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[3]),
        .O(\sr[15]_i_50_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \sr[15]_i_51 
       (.I0(ir[0]),
        .I1(ir[3]),
        .I2(ir[7]),
        .O(\sr[15]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'h0000D800)) 
    \sr[15]_i_52 
       (.I0(ir[7]),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(ir[8]),
        .I4(ir[9]),
        .O(\sr[15]_i_52_n_0 ));
  LUT5 #(
    .INIT(32'h3EFEFEFE)) 
    \sr[15]_i_53 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(ir[0]),
        .I4(brdy),
        .O(\sr[15]_i_53_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \sr[15]_i_54 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[8]),
        .O(\sr[15]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h6FFFFFFFFFFFFFFF)) 
    \sr[15]_i_55 
       (.I0(ir[8]),
        .I1(ir[11]),
        .I2(ir[12]),
        .I3(\stat[0]_i_27_n_0 ),
        .I4(ir[7]),
        .I5(ir[0]),
        .O(\sr[15]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000100)) 
    \sr[15]_i_56 
       (.I0(ir[3]),
        .I1(ir[5]),
        .I2(ir[4]),
        .I3(ir[0]),
        .I4(ir[6]),
        .I5(ir[7]),
        .O(\sr[15]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hFFABAAAAFFFBAAAA)) 
    \sr[15]_i_57 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(\stat[2]_i_19_n_0 ),
        .I2(ir[6]),
        .I3(ir[5]),
        .I4(ir[7]),
        .I5(ir[0]),
        .O(\sr[15]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h8888888800008808)) 
    \sr[15]_i_6 
       (.I0(\sr[15]_i_11_n_0 ),
        .I1(ctl_fetch_inferred_i_8_n_0),
        .I2(\sr[15]_i_12_n_0 ),
        .I3(\sr[15]_i_13_n_0 ),
        .I4(\bcmd[1]_INST_0_i_11_n_0 ),
        .I5(\sr[15]_i_14_n_0 ),
        .O(\sr[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7777777077777777)) 
    \sr[15]_i_7 
       (.I0(\sr[15]_i_15_n_0 ),
        .I1(\sr[15]_i_16_n_0 ),
        .I2(\ccmd[1]_INST_0_i_5_n_0 ),
        .I3(ir[12]),
        .I4(ir[15]),
        .I5(\sr[15]_i_17_n_0 ),
        .O(\sr[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h008A008A0000008A)) 
    \sr[15]_i_8 
       (.I0(\sr[15]_i_18_n_0 ),
        .I1(\sr[15]_i_5_n_0 ),
        .I2(ir[8]),
        .I3(\sr[15]_i_19_n_0 ),
        .I4(\sr[15]_i_20_n_0 ),
        .I5(\sr[15]_i_21_n_0 ),
        .O(\sr[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \sr[15]_i_9 
       (.I0(ctl_fetch_ext_fl_i_7_n_0),
        .I1(rst_n_fl_reg_1),
        .I2(ir[12]),
        .I3(ir[15]),
        .I4(rst_n_fl_reg_2),
        .I5(ir[11]),
        .O(\sr[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFEFEFFF000000)) 
    \sr[1]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(cbus[1]),
        .I4(\sr[13]_i_3_n_0 ),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[1]_20 ));
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
    .INIT(64'hFAFFF0FFF8FDF0FD)) 
    \sr[4]_i_13 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(\iv[4]_i_4_n_0 ),
        .I3(\sr[7]_i_7_n_0 ),
        .I4(\stat_reg[1]_0 ),
        .I5(tout__1_carry_i_10_0),
        .O(\sr[4]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \sr[4]_i_14 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(tout__1_carry_i_10_0),
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
        .I1(\stat_reg[2] ),
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
  LUT6 #(
    .INIT(64'hFFFF0000EEE4EEE4)) 
    \sr[5]_i_1 
       (.I0(ctl_sr_upd),
        .I1(\badr[15]_INST_0_i_2 [5]),
        .I2(\sr[5]_i_2_n_0 ),
        .I3(\sr[5]_i_3_n_0 ),
        .I4(cbus[5]),
        .I5(\sr[7]_i_4_n_0 ),
        .O(\sr_reg[5] ));
  LUT4 #(
    .INIT(16'h0060)) 
    \sr[5]_i_2 
       (.I0(\sr[6]_i_3_n_0 ),
        .I1(\sr[7]_i_9_n_0 ),
        .I2(\sr[5]_i_4_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\sr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00090060)) 
    \sr[5]_i_3 
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(\sr_reg[7]_1 [3]),
        .I3(\iv[13]_i_3_n_0 ),
        .I4(abus_0[15]),
        .O(\sr[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \sr[5]_i_4 
       (.I0(crdy_0),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .I2(\ccmd[3]_INST_0_i_1_n_0 ),
        .I3(tout__1_carry_i_10_0),
        .I4(acmd),
        .O(\sr[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF00E4E4)) 
    \sr[6]_i_1 
       (.I0(ctl_sr_upd),
        .I1(\badr[15]_INST_0_i_2 [6]),
        .I2(alu_sr_flag),
        .I3(cbus[6]),
        .I4(\sr[7]_i_4_n_0 ),
        .O(\sr_reg[6] ));
  LUT4 #(
    .INIT(16'hBAAB)) 
    \sr[6]_i_2 
       (.I0(\sr[6]_i_3_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\stat_reg[2] ),
        .I3(\sr_reg[6]_1 ),
        .O(alu_sr_flag));
  LUT6 #(
    .INIT(64'h00000000DDDDFF0F)) 
    \sr[6]_i_3 
       (.I0(\sr[6]_i_4_n_0 ),
        .I1(\sr[6]_i_2_0 ),
        .I2(\sr[6]_i_6_n_0 ),
        .I3(\sr[6]_i_7_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
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
        .I2(\iv[12]_i_5_0 ),
        .I3(\sr[6]_i_3_1 ),
        .I4(\stat_reg[1]_0 ),
        .I5(\sr[6]_i_3_0 ),
        .O(\sr[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h001B)) 
    \sr[6]_i_7 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\sr[6]_i_3_2 ),
        .I2(\iv[12]_i_5_1 ),
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
    .INIT(64'hFFF5FD550005FD55)) 
    \sr[7]_i_10 
       (.I0(ir[11]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[10]),
        .I4(ir[8]),
        .I5(\sr[7]_i_18_n_0 ),
        .O(\sr[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \sr[7]_i_13 
       (.I0(tout__1_carry_i_10_0),
        .I1(abus_0[14]),
        .I2(\iv[14]_i_11_n_0 ),
        .O(\sr[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hE4FF)) 
    \sr[7]_i_15 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\sr[7]_i_9_0 ),
        .I2(\iv[2]_i_2_1 ),
        .I3(\iv[14]_i_24_n_0 ),
        .O(\sr[7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hF8F0F8F8)) 
    \sr[7]_i_16 
       (.I0(\stat_reg[2] ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\iv[14]_i_2_n_0 ),
        .I3(\iv[0]_i_14_n_0 ),
        .I4(abus_0[15]),
        .O(\sr[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FFB1B1)) 
    \sr[7]_i_17 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\sr[7]_i_9_1 ),
        .I2(\sr[7]_i_9_2 ),
        .I3(\sr[7]_i_9_3 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .I5(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\sr[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFEFFFFFFFEFF)) 
    \sr[7]_i_18 
       (.I0(\sr[7]_i_21_n_0 ),
        .I1(ir[11]),
        .I2(\stat[1]_i_14_n_0 ),
        .I3(ir[6]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\sr[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0002000200020000)) 
    \sr[7]_i_2 
       (.I0(\sr[7]_i_5_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(ir[15]),
        .I5(ir[14]),
        .O(ctl_sr_upd));
  LUT6 #(
    .INIT(64'hC0FFBFFFC0FFFFC0)) 
    \sr[7]_i_21 
       (.I0(ir[3]),
        .I1(ir[9]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ir[7]),
        .I5(ir[4]),
        .O(\sr[7]_i_21_n_0 ));
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
  LUT6 #(
    .INIT(64'h000F0000000F0002)) 
    \sr[7]_i_4 
       (.I0(ctl_selc[3]),
        .I1(ctl_selc[2]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[0]),
        .I4(\sr[15]_i_4_n_0 ),
        .I5(ctl_selc[4]),
        .O(\sr[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00DDFF550F000000)) 
    \sr[7]_i_5 
       (.I0(ir[14]),
        .I1(ir[11]),
        .I2(\sr[7]_i_10_n_0 ),
        .I3(ir[13]),
        .I4(ir[12]),
        .I5(ir[15]),
        .O(\sr[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCF0FFC0CF5F50)) 
    \sr[7]_i_6 
       (.I0(abus_0[7]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[1]_0 ),
        .I3(abus_0[15]),
        .I4(\stat_reg[2] ),
        .I5(acmd),
        .O(\sr[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \sr[7]_i_7 
       (.I0(crdy_0),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .I2(\ccmd[3]_INST_0_i_1_n_0 ),
        .O(\sr[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2202200200002002)) 
    \sr[7]_i_8 
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(\sr[7]_i_3_1 ),
        .I3(\stat_reg[1]_0 ),
        .I4(\bdatw[15]_INST_0_i_1_n_0 ),
        .I5(\sr[7]_i_3_0 ),
        .O(\sr[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000D5DD)) 
    \sr[7]_i_9 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\sr[7]_i_13_n_0 ),
        .I2(\sr[4]_i_10_0 ),
        .I3(\sr[7]_i_15_n_0 ),
        .I4(\sr[7]_i_16_n_0 ),
        .I5(\sr[7]_i_17_n_0 ),
        .O(\sr[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF5D0000)) 
    \stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(\stat[0]_i_3_n_0 ),
        .I2(\stat_reg[0]_1 ),
        .I3(\stat_reg[0]_2 ),
        .I4(\stat[0]_i_6_n_0 ),
        .I5(\stat[0]_i_7_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFDEDEFFFF0ED0)) 
    \stat[0]_i_10 
       (.I0(\badr[15]_INST_0_i_27_0 ),
        .I1(ir[13]),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_2 [7]),
        .I4(Q[0]),
        .I5(ir[14]),
        .O(\stat[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088888808)) 
    \stat[0]_i_11 
       (.I0(\stat[0]_i_20_n_0 ),
        .I1(\stat[0]_i_12_n_0 ),
        .I2(\stat[0]_i_21_n_0 ),
        .I3(ir[11]),
        .I4(crdy),
        .I5(\stat[0]_i_22_n_0 ),
        .O(\stat[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8088AAAA8088A2AA)) 
    \stat[0]_i_12 
       (.I0(Q[0]),
        .I1(brdy),
        .I2(\stat[0]_i_23_n_0 ),
        .I3(ir[9]),
        .I4(\stat[0]_i_24_n_0 ),
        .I5(\bcmd[1]_INST_0_i_11_n_0 ),
        .O(\stat[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDCCCCDD0D0CCC)) 
    \stat[0]_i_13 
       (.I0(\stat[0]_i_25_n_0 ),
        .I1(\stat[0]_i_26_n_0 ),
        .I2(\stat[0]_i_27_n_0 ),
        .I3(\badr[15]_INST_0_i_2 [11]),
        .I4(ir[11]),
        .I5(ir[7]),
        .O(\stat[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8F8F0F0F050)) 
    \stat[0]_i_15 
       (.I0(ir[0]),
        .I1(\badr[15]_INST_0_i_2 [10]),
        .I2(Q[2]),
        .I3(ir[2]),
        .I4(ir[1]),
        .I5(ir[3]),
        .O(\stat[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFEFEFEFEFF)) 
    \stat[0]_i_16 
       (.I0(\stat[0]_i_8_1 ),
        .I1(ir[4]),
        .I2(\ccmd[3]_INST_0_i_18_n_0 ),
        .I3(ir[1]),
        .I4(ir[0]),
        .I5(ir[3]),
        .O(\stat[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000E000F0000)) 
    \stat[0]_i_17 
       (.I0(Q[1]),
        .I1(\stat[0]_i_8_0 ),
        .I2(ir[6]),
        .I3(\bdatw[15]_INST_0_i_80_n_0 ),
        .I4(ir[2]),
        .I5(ir[0]),
        .O(\stat[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCFFFCCFFCF)) 
    \stat[0]_i_18 
       (.I0(\badr[15]_INST_0_i_2 [10]),
        .I1(\stat[0]_i_29_n_0 ),
        .I2(ir[1]),
        .I3(ir[2]),
        .I4(Q[2]),
        .I5(\ccmd[4]_INST_0_i_6_0 ),
        .O(\stat[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFEEEE)) 
    \stat[0]_i_2 
       (.I0(\stat[0]_i_8_n_0 ),
        .I1(ir[13]),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_2 [5]),
        .I4(ir[14]),
        .I5(\stat_reg[0]_3 ),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \stat[0]_i_20 
       (.I0(ir[6]),
        .I1(ir[10]),
        .I2(brdy),
        .I3(ir[9]),
        .I4(ir[11]),
        .I5(\stat[0]_i_31_n_0 ),
        .O(\stat[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \stat[0]_i_21 
       (.I0(ir[7]),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(ir[9]),
        .O(\stat[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00000080AAAAAAAA)) 
    \stat[0]_i_22 
       (.I0(\ccmd[3]_INST_0_i_8_n_0 ),
        .I1(ir[3]),
        .I2(ctl_fetch_inferred_i_10_n_0),
        .I3(brdy),
        .I4(\stat[0]_i_32_n_0 ),
        .I5(\stat[0]_i_33_n_0 ),
        .O(\stat[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \stat[0]_i_23 
       (.I0(ir[5]),
        .I1(ir[3]),
        .O(\stat[0]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[0]_i_24 
       (.I0(ir[11]),
        .I1(ir[8]),
        .O(\stat[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h2022222222222222)) 
    \stat[0]_i_25 
       (.I0(\stat[0]_i_34_n_0 ),
        .I1(\stat[0]_i_35_n_0 ),
        .I2(ir[10]),
        .I3(ir[8]),
        .I4(\stat[0]_i_36_n_0 ),
        .I5(brdy),
        .O(\stat[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h1FBF000000A500A5)) 
    \stat[0]_i_26 
       (.I0(ir[8]),
        .I1(\stat[0]_i_37_n_0 ),
        .I2(ir[9]),
        .I3(\stat[0]_i_38_n_0 ),
        .I4(crdy),
        .I5(\badrx[15]_INST_0_i_7_n_0 ),
        .O(\stat[0]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[0]_i_27 
       (.I0(ir[10]),
        .I1(ir[9]),
        .O(\stat[0]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \stat[0]_i_29 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[11]),
        .O(\stat[0]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h0252)) 
    \stat[0]_i_3 
       (.I0(ir[14]),
        .I1(\badr[15]_INST_0_i_2 [5]),
        .I2(ir[13]),
        .I3(\badr[15]_INST_0_i_2 [6]),
        .O(\stat[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[0]_i_30 
       (.I0(ir[11]),
        .I1(ir[2]),
        .O(rst_n_fl_reg_6));
  LUT6 #(
    .INIT(64'hB8BBBBBBBBBBBBBB)) 
    \stat[0]_i_31 
       (.I0(crdy),
        .I1(\badrx[15]_INST_0_i_7_n_0 ),
        .I2(brdy),
        .I3(\stat[0]_i_36_n_0 ),
        .I4(ir[8]),
        .I5(ir[10]),
        .O(\stat[0]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \stat[0]_i_32 
       (.I0(ir[4]),
        .I1(ir[6]),
        .I2(ir[5]),
        .O(\stat[0]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \stat[0]_i_33 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(crdy),
        .I3(ir[10]),
        .O(\stat[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFFFFFFFEFFFEF)) 
    \stat[0]_i_34 
       (.I0(\stat[0]_i_32_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(\stat[0]_i_39_n_0 ),
        .I3(ir[5]),
        .I4(brdy),
        .I5(ir[3]),
        .O(\stat[0]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h30220000)) 
    \stat[0]_i_35 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(crdy),
        .I3(ir[8]),
        .I4(ir[10]),
        .O(\stat[0]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[0]_i_36 
       (.I0(ir[9]),
        .I1(ir[6]),
        .O(\stat[0]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[0]_i_37 
       (.I0(ir[7]),
        .I1(ir[6]),
        .O(\stat[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFAFFF3FFFFFFF3F)) 
    \stat[0]_i_38 
       (.I0(ir[6]),
        .I1(crdy),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(ir[9]),
        .I5(brdy),
        .O(\stat[0]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \stat[0]_i_39 
       (.I0(ir[10]),
        .I1(ir[7]),
        .O(\stat[0]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[0]_i_6 
       (.I0(ir[15]),
        .I1(ir[12]),
        .O(\stat[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4C444C444C444444)) 
    \stat[0]_i_7 
       (.I0(\stat[0]_i_10_n_0 ),
        .I1(\stat[2]_i_7_n_0 ),
        .I2(\stat[0]_i_11_n_0 ),
        .I3(ir[14]),
        .I4(\stat[0]_i_12_n_0 ),
        .I5(\stat[0]_i_13_n_0 ),
        .O(\stat[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA8AA8888A8AAA8AA)) 
    \stat[0]_i_8 
       (.I0(\bdatw[15]_INST_0_i_15_0 ),
        .I1(\stat[0]_i_15_n_0 ),
        .I2(\stat[0]_i_16_n_0 ),
        .I3(\stat[0]_i_17_n_0 ),
        .I4(\stat[0]_i_18_n_0 ),
        .I5(\ccmd[2]_INST_0_i_23_n_0 ),
        .O(\stat[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000DD0FDD)) 
    \stat[1]_i_1 
       (.I0(\stat_reg[1]_2 ),
        .I1(\stat[1]_i_2_n_0 ),
        .I2(\stat[1]_i_3_n_0 ),
        .I3(ir[12]),
        .I4(Q[2]),
        .I5(ir[15]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[1]_i_10 
       (.I0(ir[1]),
        .I1(ir[0]),
        .O(\stat[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAEAAAA)) 
    \stat[1]_i_12 
       (.I0(\stat[1]_i_17_n_0 ),
        .I1(ctl_fetch_ext_fl_i_3_n_0),
        .I2(ir[6]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(brdy),
        .O(\stat[1]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \stat[1]_i_13 
       (.I0(ir[7]),
        .I1(ir[10]),
        .I2(ir[11]),
        .O(\stat[1]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[1]_i_14 
       (.I0(\badrx[15]_INST_0_i_7_n_0 ),
        .I1(crdy),
        .O(\stat[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h008C008C0000000C)) 
    \stat[1]_i_16 
       (.I0(\stat[1]_i_8_0 ),
        .I1(\stat[1]_i_19_n_0 ),
        .I2(ir[9]),
        .I3(\stat[1]_i_8_1 ),
        .I4(\badr[15]_INST_0_i_2 [10]),
        .I5(\badrx[15]_INST_0_i_7_n_0 ),
        .O(\stat[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000082AAAAAA)) 
    \stat[1]_i_17 
       (.I0(\stat[1]_i_21_n_0 ),
        .I1(ir[3]),
        .I2(Q[0]),
        .I3(\bcmd[1]_INST_0_i_3_n_0 ),
        .I4(ir[9]),
        .I5(\tr[15]_i_8_0 ),
        .O(\stat[1]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[1]_i_19 
       (.I0(ir[7]),
        .I1(ir[8]),
        .O(\stat[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A8800008A88)) 
    \stat[1]_i_2 
       (.I0(\stat[1]_i_4_n_0 ),
        .I1(\stat[0]_i_3_n_0 ),
        .I2(rst_n_fl_reg_2),
        .I3(\stat[1]_i_5_n_0 ),
        .I4(\stat_reg[1]_5 ),
        .I5(\stat[1]_i_7_n_0 ),
        .O(\stat[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F20202020202020)) 
    \stat[1]_i_21 
       (.I0(\bcmd[1]_INST_0_i_3_n_0 ),
        .I1(ir[6]),
        .I2(ir[9]),
        .I3(crdy),
        .I4(Q[0]),
        .I5(\badr[15]_INST_0_i_2 [10]),
        .O(\stat[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBF8F0000BF8F)) 
    \stat[1]_i_3 
       (.I0(\stat[1]_i_8_n_0 ),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(\stat_reg[1]_3 ),
        .I4(\stat_reg[1]_4 ),
        .I5(Q[1]),
        .O(\stat[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h04000F000F0F0F0F)) 
    \stat[1]_i_4 
       (.I0(rst_n_fl_reg_2),
        .I1(ir[3]),
        .I2(ir[11]),
        .I3(rst_n_fl_reg_1),
        .I4(\stat[1]_i_10_n_0 ),
        .I5(Q[1]),
        .O(\stat[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00F000F000F0D0F0)) 
    \stat[1]_i_5 
       (.I0(\badr[15]_INST_0_i_2 [10]),
        .I1(Q[1]),
        .I2(rst_n_fl_reg_1),
        .I3(ir[3]),
        .I4(ir[0]),
        .I5(ir[1]),
        .O(\stat[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000A4FFA)) 
    \stat[1]_i_7 
       (.I0(ir[0]),
        .I1(\badr[15]_INST_0_i_2 [10]),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(Q[2]),
        .I5(\stat[1]_i_2_0 ),
        .O(\stat[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7777777700000777)) 
    \stat[1]_i_8 
       (.I0(\stat[1]_i_12_n_0 ),
        .I1(\stat[1]_i_13_n_0 ),
        .I2(\stat[1]_i_14_n_0 ),
        .I3(\stat[1]_i_3_0 ),
        .I4(\stat[1]_i_16_n_0 ),
        .I5(ir[11]),
        .O(\stat[1]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[2]_i_12 
       (.I0(ir[14]),
        .I1(ir[13]),
        .O(rst_n_fl_reg_1));
  LUT6 #(
    .INIT(64'hFFCCAAF0FFCCAAFF)) 
    \stat[2]_i_13 
       (.I0(\badr[15]_INST_0_i_2 [6]),
        .I1(\badr[15]_INST_0_i_2 [5]),
        .I2(\stat[2]_i_18_n_0 ),
        .I3(ir[13]),
        .I4(ir[14]),
        .I5(\stat[2]_i_19_n_0 ),
        .O(\stat[2]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \stat[2]_i_16 
       (.I0(Q[1]),
        .I1(ir[12]),
        .I2(ir[15]),
        .O(\stat[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \stat[2]_i_18 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\stat[2]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[2]_i_19 
       (.I0(ir[4]),
        .I1(ir[3]),
        .O(\stat[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFEEEEEEEFEEEF)) 
    \stat[2]_i_2 
       (.I0(\stat[2]_i_3_n_0 ),
        .I1(\stat[2]_i_4_n_0 ),
        .I2(ir[12]),
        .I3(ir[15]),
        .I4(\stat[2]_i_5_n_0 ),
        .I5(\stat_reg[1]_2 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA02000002)) 
    \stat[2]_i_3 
       (.I0(\stat[2]_i_7_n_0 ),
        .I1(ir[14]),
        .I2(Q[0]),
        .I3(\badr[15]_INST_0_i_2 [7]),
        .I4(ir[11]),
        .I5(\stat_reg[1]_4 ),
        .O(\stat[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000090)) 
    \stat[2]_i_4 
       (.I0(Q[0]),
        .I1(ir[3]),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(\bcmd[1]_INST_0_i_11_n_0 ),
        .I4(\stat[2]_i_9_n_0 ),
        .I5(\stat_reg[2]_1 ),
        .O(\stat[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001110F0F)) 
    \stat[2]_i_5 
       (.I0(ir[2]),
        .I1(\stat_reg[2]_0 ),
        .I2(\stat_reg[0]_1 ),
        .I3(ir[11]),
        .I4(rst_n_fl_reg_1),
        .I5(\stat[2]_i_13_n_0 ),
        .O(\stat[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000BAAB)) 
    \stat[2]_i_7 
       (.I0(ir[13]),
        .I1(Q[0]),
        .I2(\badr[15]_INST_0_i_27_0 ),
        .I3(ir[11]),
        .I4(\stat[2]_i_16_n_0 ),
        .I5(Q[2]),
        .O(\stat[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FFFF)) 
    \stat[2]_i_9 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(ir[9]),
        .I5(ir[6]),
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
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(abus_0[4]),
        .O(\badr[6]_INST_0_i_1 [1]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__0_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
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
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
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
    .INIT(4'h2)) 
    tout__1_carry_i_10
       (.I0(crdy_0),
        .I1(\ccmd[0]_INST_0_i_1_n_0 ),
        .O(\stat_reg[2] ));
  LUT2 #(
    .INIT(4'hE)) 
    tout__1_carry_i_11
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .O(tout__1_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tout__1_carry_i_12
       (.I0(\sp_reg[0] ),
        .I1(tout__1_carry_i_8_n_0),
        .O(tout__1_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    tout__1_carry_i_13
       (.I0(\stat_reg[1]_0 ),
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
       (.I0(\stat_reg[1]_0 ),
        .I1(\stat_reg[2] ),
        .I2(tout__1_carry_i_11_n_0),
        .I3(\badr[15]_INST_0_i_2 [6]),
        .I4(tout__1_carry_i_12_n_0),
        .I5(abus_0[0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9669)) 
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
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[1]),
        .I3(DI[0]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hF50C0AF30AF3F50C)) 
    tout__1_carry_i_7
       (.I0(\stat_reg[1]_0 ),
        .I1(\stat_reg[2] ),
        .I2(tout__1_carry_i_11_n_0),
        .I3(\badr[15]_INST_0_i_2 [6]),
        .I4(abus_0[0]),
        .I5(tout__1_carry_i_12_n_0),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h0000FF20)) 
    tout__1_carry_i_8
       (.I0(acmd),
        .I1(\iv[13]_i_10_n_0 ),
        .I2(tout__1_carry_i_10_0),
        .I3(tout__1_carry_i_13_n_0),
        .I4(\stat_reg[2] ),
        .O(tout__1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    tout__1_carry_i_9
       (.I0(crdy_0),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .O(\stat_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \tr[15]_i_1 
       (.I0(ctl_selc[1]),
        .I1(ctl_selc[0]),
        .I2(ctl_selc[2]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[4]),
        .O(cbus_sel_cr[1]));
  LUT6 #(
    .INIT(64'h000000000000FF0D)) 
    \tr[15]_i_10 
       (.I0(ir[13]),
        .I1(\tr[15]_i_28_n_0 ),
        .I2(\tr[15]_i_29_n_0 ),
        .I3(\stat[2]_i_16_n_0 ),
        .I4(\tr[15]_i_30_n_0 ),
        .I5(\tr[15]_i_31_n_0 ),
        .O(\tr[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \tr[15]_i_11 
       (.I0(\tr[15]_i_32_n_0 ),
        .I1(\fch_irq_lev[1]_i_5_n_0 ),
        .I2(Q[2]),
        .I3(ir[0]),
        .I4(Q[0]),
        .I5(\tr[15]_i_33_n_0 ),
        .O(\tr[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h10FF10FF10FF1010)) 
    \tr[15]_i_12 
       (.I0(ir[11]),
        .I1(Q[1]),
        .I2(\ccmd[2]_INST_0_i_21_n_0 ),
        .I3(\tr[15]_i_34_n_0 ),
        .I4(\tr[15]_i_35_n_0 ),
        .I5(\tr[15]_i_36_n_0 ),
        .O(\tr[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    \tr[15]_i_13 
       (.I0(\tr[15]_i_37_n_0 ),
        .I1(ir[13]),
        .I2(ir[15]),
        .I3(\tr[15]_i_38_n_0 ),
        .I4(badr_0_sn_1),
        .I5(\tr[15]_i_39_n_0 ),
        .O(\tr[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBB0BFF0FBB0B0000)) 
    \tr[15]_i_14 
       (.I0(\tr[15]_i_40_n_0 ),
        .I1(ir[10]),
        .I2(ir[5]),
        .I3(\tr[15]_i_41_n_0 ),
        .I4(ir[11]),
        .I5(\tr[15]_i_42_n_0 ),
        .O(\tr[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FDDDD00000000)) 
    \tr[15]_i_15 
       (.I0(\tr[15]_i_43_n_0 ),
        .I1(\tr[15]_i_44_n_0 ),
        .I2(\tr[15]_i_45_n_0 ),
        .I3(\tr[15]_i_46_n_0 ),
        .I4(ir[11]),
        .I5(ir[12]),
        .O(\tr[15]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \tr[15]_i_16 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[11]),
        .I4(ir[12]),
        .O(\tr[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hA080808020000000)) 
    \tr[15]_i_17 
       (.I0(\sr[15]_i_35_n_0 ),
        .I1(ir[8]),
        .I2(ir[7]),
        .I3(\tr[15]_i_47_n_0 ),
        .I4(brdy),
        .I5(ir[2]),
        .O(\tr[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCDDCCCCCCFD)) 
    \tr[15]_i_2 
       (.I0(\tr[15]_i_5_n_0 ),
        .I1(\tr[15]_i_6_n_0 ),
        .I2(ir[10]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\sr[15]_i_5_n_0 ),
        .O(ctl_selc[2]));
  LUT6 #(
    .INIT(64'h00000000FFFF7BFD)) 
    \tr[15]_i_23 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[7]),
        .I4(Q[1]),
        .I5(\ccmd[3]_INST_0_i_17_n_0 ),
        .O(\tr[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h5555555541400000)) 
    \tr[15]_i_24 
       (.I0(\tr[15]_i_8_0 ),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(ir[3]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\tr[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFF7777)) 
    \tr[15]_i_25 
       (.I0(ir[3]),
        .I1(Q[0]),
        .I2(brdy),
        .I3(\tr[15]_i_49_n_0 ),
        .I4(ir[4]),
        .I5(ir[6]),
        .O(\tr[15]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h1FFF)) 
    \tr[15]_i_26 
       (.I0(Q[1]),
        .I1(ir[11]),
        .I2(ir[14]),
        .I3(ir[12]),
        .O(\tr[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h000099000000C300)) 
    \tr[15]_i_27 
       (.I0(\badr[15]_INST_0_i_2 [7]),
        .I1(ir[11]),
        .I2(\badr[15]_INST_0_i_2 [6]),
        .I3(badr_0_sn_1),
        .I4(ir[14]),
        .I5(ir[12]),
        .O(\tr[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h20A02AAA2AAA2AAA)) 
    \tr[15]_i_28 
       (.I0(\tr[15]_i_50_n_0 ),
        .I1(\badrx[15]_INST_0_i_7_n_0 ),
        .I2(Q[0]),
        .I3(crdy),
        .I4(ctl_fetch_ext_fl_i_3_n_0),
        .I5(ir[11]),
        .O(\tr[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000069)) 
    \tr[15]_i_29 
       (.I0(\badr[15]_INST_0_i_2 [5]),
        .I1(\badr[15]_INST_0_i_2 [7]),
        .I2(ir[11]),
        .I3(Q[0]),
        .I4(ir[13]),
        .I5(\tr[15]_i_51_n_0 ),
        .O(\tr[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00050005FFFF0C05)) 
    \tr[15]_i_3 
       (.I0(\tr_reg[0]_0 ),
        .I1(\tr[15]_i_8_n_0 ),
        .I2(ir[15]),
        .I3(ir[13]),
        .I4(\tr[15]_i_9_n_0 ),
        .I5(Q[2]),
        .O(ctl_selc[3]));
  LUT6 #(
    .INIT(64'h0000000A00000A0B)) 
    \tr[15]_i_30 
       (.I0(ir[15]),
        .I1(\tr[15]_i_52_n_0 ),
        .I2(Q[0]),
        .I3(ir[13]),
        .I4(Q[1]),
        .I5(ir[12]),
        .O(\tr[15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF080000)) 
    \tr[15]_i_31 
       (.I0(ir[11]),
        .I1(brdy),
        .I2(ir[6]),
        .I3(\ccmd[0]_INST_0_i_16_n_0 ),
        .I4(\tr[15]_i_53_n_0 ),
        .I5(\ccmd[0]_INST_0_i_15_n_0 ),
        .O(\tr[15]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tr[15]_i_32 
       (.I0(ir[4]),
        .I1(ir[11]),
        .I2(ir[10]),
        .I3(ir[9]),
        .O(\tr[15]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \tr[15]_i_33 
       (.I0(Q[1]),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(ir[3]),
        .I4(ctl_fetch_inferred_i_22_n_0),
        .I5(\bdatw[15]_INST_0_i_80_n_0 ),
        .O(\tr[15]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \tr[15]_i_34 
       (.I0(\tr[15]_i_54_n_0 ),
        .I1(\tr[15]_i_55_n_0 ),
        .I2(ir[9]),
        .I3(ir[11]),
        .I4(ir[12]),
        .I5(\ccmd[2]_INST_0_i_20_n_0 ),
        .O(\tr[15]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0028202000280000)) 
    \tr[15]_i_35 
       (.I0(\tr[15]_i_12_0 ),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(ir[2]),
        .I5(brdy),
        .O(\tr[15]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0500500000002200)) 
    \tr[15]_i_36 
       (.I0(ir[0]),
        .I1(\tr[15]_i_56_n_0 ),
        .I2(ir[1]),
        .I3(Q[1]),
        .I4(ir[3]),
        .I5(ir[2]),
        .O(\tr[15]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h9C)) 
    \tr[15]_i_37 
       (.I0(\badr[15]_INST_0_i_2 [4]),
        .I1(ir[11]),
        .I2(ir[12]),
        .O(\tr[15]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \tr[15]_i_38 
       (.I0(rst_n_fl_reg_0),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(ir[9]),
        .I4(ir[7]),
        .I5(\tr[15]_i_57_n_0 ),
        .O(\tr[15]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h005AFF6600000000)) 
    \tr[15]_i_39 
       (.I0(ir[11]),
        .I1(\badr[15]_INST_0_i_2 [6]),
        .I2(\badr[15]_INST_0_i_2 [7]),
        .I3(ir[15]),
        .I4(ir[12]),
        .I5(ir[13]),
        .O(\tr[15]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCDDDDFFFC)) 
    \tr[15]_i_4 
       (.I0(\tr[15]_i_10_n_0 ),
        .I1(\tr[15]_i_11_n_0 ),
        .I2(\tr[15]_i_12_n_0 ),
        .I3(\tr[15]_i_13_n_0 ),
        .I4(ir[14]),
        .I5(Q[2]),
        .O(ctl_selc[4]));
  LUT6 #(
    .INIT(64'h00000000FEFECEFE)) 
    \tr[15]_i_40 
       (.I0(\tr[15]_i_58_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(ir[7]),
        .I3(ir[2]),
        .I4(\tr[15]_i_59_n_0 ),
        .I5(\tr[15]_i_60_n_0 ),
        .O(\tr[15]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hFDFDFDDD)) 
    \tr[15]_i_41 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[7]),
        .O(\tr[15]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFBF0FFFFFFF0FFFF)) 
    \tr[15]_i_42 
       (.I0(\bdatw[15]_INST_0_i_80_n_0 ),
        .I1(ir[5]),
        .I2(ir[9]),
        .I3(ctl_fetch_inferred_i_9_n_0),
        .I4(ir[10]),
        .I5(crdy),
        .O(\tr[15]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0D0F5D7FFFFFFFFF)) 
    \tr[15]_i_43 
       (.I0(\ccmd[4]_INST_0_i_9_n_0 ),
        .I1(ir[7]),
        .I2(ir[5]),
        .I3(ir[2]),
        .I4(\badrx[15]_INST_0_i_7_n_0 ),
        .I5(crdy),
        .O(\tr[15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \tr[15]_i_44 
       (.I0(crdy),
        .I1(ir[7]),
        .I2(ir[2]),
        .I3(\ccmd[4]_INST_0_i_9_n_0 ),
        .I4(\tr[15]_i_61_n_0 ),
        .I5(ir[10]),
        .O(\tr[15]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hBBFFBFBFFFFFBFBF)) 
    \tr[15]_i_45 
       (.I0(\ccmd[4]_INST_0_i_8_n_0 ),
        .I1(ir[10]),
        .I2(ir[2]),
        .I3(ir[5]),
        .I4(ir[7]),
        .I5(crdy),
        .O(\tr[15]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h008000800000FFFF)) 
    \tr[15]_i_46 
       (.I0(ir[9]),
        .I1(\bdatw[15]_INST_0_i_118_n_0 ),
        .I2(brdy),
        .I3(ctl_fetch_inferred_i_9_n_0),
        .I4(\tr[15]_i_61_n_0 ),
        .I5(ir[10]),
        .O(\tr[15]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tr[15]_i_47 
       (.I0(ir[5]),
        .I1(ir[6]),
        .O(\tr[15]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tr[15]_i_49 
       (.I0(ir[7]),
        .I1(ir[5]),
        .O(\tr[15]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hF0FBFFFBFFFBFFFB)) 
    \tr[15]_i_5 
       (.I0(\tr[15]_i_14_n_0 ),
        .I1(\bcmd[1]_INST_0_i_6_n_0 ),
        .I2(ir[15]),
        .I3(Q[0]),
        .I4(\badrx[15]_INST_0_i_3_n_0 ),
        .I5(\tr[15]_i_15_n_0 ),
        .O(\tr[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAABAAABAAAAA)) 
    \tr[15]_i_50 
       (.I0(\tr[15]_i_62_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(Q[0]),
        .I3(brdy),
        .I4(ir[5]),
        .I5(\bcmd[1]_INST_0_i_11_n_0 ),
        .O(\tr[15]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \tr[15]_i_51 
       (.I0(ir[11]),
        .I1(ir[13]),
        .I2(ir[10]),
        .I3(Q[0]),
        .I4(ir[7]),
        .I5(ir[8]),
        .O(\tr[15]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tr[15]_i_52 
       (.I0(ir[11]),
        .I1(\badr[15]_INST_0_i_2 [5]),
        .O(\tr[15]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \tr[15]_i_53 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(ir[15]),
        .O(\tr[15]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tr[15]_i_54 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[4]),
        .I3(ir[7]),
        .O(\tr[15]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \tr[15]_i_55 
       (.I0(ir[8]),
        .I1(ir[10]),
        .O(\tr[15]_i_55_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \tr[15]_i_56 
       (.I0(ir[1]),
        .I1(Q[0]),
        .I2(brdy),
        .O(\tr[15]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF1FFFFFFFF)) 
    \tr[15]_i_57 
       (.I0(\ccmd[2]_INST_0_i_13_n_0 ),
        .I1(crdy),
        .I2(ir[6]),
        .I3(\tr[15]_i_55_n_0 ),
        .I4(ir[12]),
        .I5(\bcmd[1]_INST_0_i_3_n_0 ),
        .O(\tr[15]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFD)) 
    \tr[15]_i_58 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[6]),
        .I3(ir[4]),
        .I4(ir[5]),
        .O(\tr[15]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \tr[15]_i_59 
       (.I0(ir[5]),
        .I1(ir[6]),
        .O(\tr[15]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hFF08000000000000)) 
    \tr[15]_i_6 
       (.I0(ir[2]),
        .I1(ir[7]),
        .I2(\tr[15]_i_16_n_0 ),
        .I3(\tr[15]_i_17_n_0 ),
        .I4(\sr[15]_i_16_n_0 ),
        .I5(\tr[15]_i_2_0 ),
        .O(\tr[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h040E000E)) 
    \tr[15]_i_60 
       (.I0(ir[7]),
        .I1(ir[5]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(crdy),
        .O(\tr[15]_i_60_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \tr[15]_i_61 
       (.I0(brdy),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[5]),
        .O(\tr[15]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h00FCAAAAFFFFAAAA)) 
    \tr[15]_i_62 
       (.I0(\tr[15]_i_63_n_0 ),
        .I1(\tr[15]_i_64_n_0 ),
        .I2(ir[6]),
        .I3(\tr[15]_i_65_n_0 ),
        .I4(ir[9]),
        .I5(ir[8]),
        .O(\tr[15]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAA2222)) 
    \tr[15]_i_63 
       (.I0(\tr[15]_i_66_n_0 ),
        .I1(ir[11]),
        .I2(\ccmd[4]_INST_0_i_17_n_0 ),
        .I3(ir[6]),
        .I4(Q[0]),
        .I5(ir[10]),
        .O(\tr[15]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h0E0F0FFFFE0F0FFF)) 
    \tr[15]_i_64 
       (.I0(\tr[15]_i_67_n_0 ),
        .I1(\tr[15]_i_68_n_0 ),
        .I2(Q[0]),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(\badr[15]_INST_0_i_145_n_0 ),
        .O(\tr[15]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hA0000F4000000000)) 
    \tr[15]_i_65 
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(ir[7]),
        .I4(Q[0]),
        .I5(\tr[15]_i_69_n_0 ),
        .O(\tr[15]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h6F66FFFFFF6FFFFF)) 
    \tr[15]_i_66 
       (.I0(ir[8]),
        .I1(ir[11]),
        .I2(Q[0]),
        .I3(ir[7]),
        .I4(ir[10]),
        .I5(crdy),
        .O(\tr[15]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'hB0)) 
    \tr[15]_i_67 
       (.I0(ir[5]),
        .I1(ir[7]),
        .I2(ir[4]),
        .O(\tr[15]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h0232)) 
    \tr[15]_i_68 
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(ir[7]),
        .O(\tr[15]_i_68_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \tr[15]_i_69 
       (.I0(ir[6]),
        .I1(ir[10]),
        .I2(ir[11]),
        .O(\tr[15]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000145)) 
    \tr[15]_i_8 
       (.I0(\tr[15]_i_23_n_0 ),
        .I1(\tr[15]_i_24_n_0 ),
        .I2(Q[0]),
        .I3(\tr[15]_i_25_n_0 ),
        .I4(\tr[15]_i_26_n_0 ),
        .I5(\tr[15]_i_27_n_0 ),
        .O(\tr[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0004040000000000)) 
    \tr[15]_i_9 
       (.I0(ir[13]),
        .I1(\ccmd[2]_INST_0_i_21_n_0 ),
        .I2(Q[1]),
        .I3(ir[11]),
        .I4(ir[12]),
        .I5(ir[14]),
        .O(\tr[15]_i_9_n_0 ));
endmodule

module mcvm_fsm
   (brdy_0,
    Q,
    \stat_reg[1]_0 ,
    \stat_reg[1]_1 ,
    \stat_reg[2]_0 ,
    \stat_reg[1]_2 ,
    \stat_reg[2]_1 ,
    \stat_reg[0]_0 ,
    crdy_0,
    \stat_reg[2]_2 ,
    \stat_reg[0]_1 ,
    \stat_reg[2]_3 ,
    \stat_reg[0]_2 ,
    \stat_reg[0]_3 ,
    \stat_reg[0]_4 ,
    \sr_reg[7] ,
    \stat_reg[1]_3 ,
    \sr_reg[6] ,
    \stat_reg[2]_4 ,
    \stat_reg[0]_5 ,
    \stat_reg[0]_6 ,
    \stat_reg[0]_7 ,
    brdy_1,
    \stat_reg[0]_8 ,
    \stat_reg[1]_4 ,
    \stat_reg[0]_9 ,
    \stat_reg[0]_10 ,
    crdy_1,
    \stat_reg[1]_5 ,
    \stat_reg[0]_11 ,
    \stat_reg[1]_6 ,
    \stat_reg[0]_12 ,
    \stat_reg[0]_13 ,
    \stat_reg[1]_7 ,
    \stat_reg[1]_8 ,
    \stat_reg[0]_14 ,
    \stat_reg[2]_5 ,
    \stat_reg[0]_15 ,
    \stat_reg[2]_6 ,
    \stat_reg[0]_16 ,
    \stat_reg[1]_9 ,
    brdy,
    out,
    crdy,
    \tr[15]_i_3 ,
    \bdatw[15]_INST_0_i_4 ,
    \bdatw[15]_INST_0_i_4_0 ,
    \badr[15]_INST_0_i_29 ,
    \stat[1]_i_7 ,
    \tr[15]_i_7_0 ,
    fch_irq_req,
    \bdatw[15]_INST_0_i_52 ,
    ctl_fetch_inferred_i_11,
    rgf_sr_flag,
    \tr[15]_i_7_1 ,
    rgf_iv_ve,
    \stat[0]_i_9_0 ,
    p_0_in,
    D,
    clk);
  output brdy_0;
  output [2:0]Q;
  output \stat_reg[1]_0 ;
  output \stat_reg[1]_1 ;
  output \stat_reg[2]_0 ;
  output \stat_reg[1]_2 ;
  output \stat_reg[2]_1 ;
  output \stat_reg[0]_0 ;
  output crdy_0;
  output \stat_reg[2]_2 ;
  output \stat_reg[0]_1 ;
  output \stat_reg[2]_3 ;
  output \stat_reg[0]_2 ;
  output \stat_reg[0]_3 ;
  output \stat_reg[0]_4 ;
  output \sr_reg[7] ;
  output \stat_reg[1]_3 ;
  output \sr_reg[6] ;
  output \stat_reg[2]_4 ;
  output \stat_reg[0]_5 ;
  output \stat_reg[0]_6 ;
  output \stat_reg[0]_7 ;
  output brdy_1;
  output \stat_reg[0]_8 ;
  output \stat_reg[1]_4 ;
  output \stat_reg[0]_9 ;
  output \stat_reg[0]_10 ;
  output crdy_1;
  output \stat_reg[1]_5 ;
  output \stat_reg[0]_11 ;
  output \stat_reg[1]_6 ;
  output \stat_reg[0]_12 ;
  output \stat_reg[0]_13 ;
  output \stat_reg[1]_7 ;
  output \stat_reg[1]_8 ;
  output \stat_reg[0]_14 ;
  output \stat_reg[2]_5 ;
  output \stat_reg[0]_15 ;
  output \stat_reg[2]_6 ;
  output \stat_reg[0]_16 ;
  output \stat_reg[1]_9 ;
  input brdy;
  input [13:0]out;
  input crdy;
  input \tr[15]_i_3 ;
  input \bdatw[15]_INST_0_i_4 ;
  input \bdatw[15]_INST_0_i_4_0 ;
  input \badr[15]_INST_0_i_29 ;
  input \stat[1]_i_7 ;
  input \tr[15]_i_7_0 ;
  input fch_irq_req;
  input \bdatw[15]_INST_0_i_52 ;
  input ctl_fetch_inferred_i_11;
  input [2:0]rgf_sr_flag;
  input \tr[15]_i_7_1 ;
  input rgf_iv_ve;
  input \stat[0]_i_9_0 ;
  input p_0_in;
  input [2:0]D;
  input clk;

  wire \<const1> ;
  wire [2:0]D;
  wire [2:0]Q;
  wire \badr[15]_INST_0_i_29 ;
  wire \bdatw[15]_INST_0_i_4 ;
  wire \bdatw[15]_INST_0_i_4_0 ;
  wire \bdatw[15]_INST_0_i_52 ;
  wire brdy;
  wire brdy_0;
  wire brdy_1;
  wire clk;
  wire crdy;
  wire crdy_0;
  wire crdy_1;
  wire ctl_fetch_inferred_i_11;
  wire fch_irq_req;
  wire [13:0]out;
  wire p_0_in;
  wire rgf_iv_ve;
  wire [2:0]rgf_sr_flag;
  wire \sr_reg[6] ;
  wire \sr_reg[7] ;
  wire \stat[0]_i_19_n_0 ;
  wire \stat[0]_i_9_0 ;
  wire \stat[1]_i_7 ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[0]_10 ;
  wire \stat_reg[0]_11 ;
  wire \stat_reg[0]_12 ;
  wire \stat_reg[0]_13 ;
  wire \stat_reg[0]_14 ;
  wire \stat_reg[0]_15 ;
  wire \stat_reg[0]_16 ;
  wire \stat_reg[0]_2 ;
  wire \stat_reg[0]_3 ;
  wire \stat_reg[0]_4 ;
  wire \stat_reg[0]_5 ;
  wire \stat_reg[0]_6 ;
  wire \stat_reg[0]_7 ;
  wire \stat_reg[0]_8 ;
  wire \stat_reg[0]_9 ;
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
  wire \tr[15]_i_19_n_0 ;
  wire \tr[15]_i_20_n_0 ;
  wire \tr[15]_i_21_n_0 ;
  wire \tr[15]_i_22_n_0 ;
  wire \tr[15]_i_3 ;
  wire \tr[15]_i_48_n_0 ;
  wire \tr[15]_i_7_0 ;
  wire \tr[15]_i_7_1 ;

  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_148 
       (.I0(crdy),
        .I1(Q[0]),
        .O(crdy_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \badr[15]_INST_0_i_170 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(out[10]),
        .I3(out[13]),
        .O(\stat_reg[0]_4 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \badr[15]_INST_0_i_79 
       (.I0(Q[2]),
        .I1(\badr[15]_INST_0_i_29 ),
        .I2(Q[1]),
        .O(\stat_reg[2]_2 ));
  LUT2 #(
    .INIT(4'h1)) 
    \badrx[15]_INST_0_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\stat_reg[1]_3 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bcmd[1]_INST_0_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(out[13]),
        .O(\stat_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h00000060)) 
    \bdatw[15]_INST_0_i_14 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\bdatw[15]_INST_0_i_4 ),
        .I4(\bdatw[15]_INST_0_i_4_0 ),
        .O(\stat_reg[1]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[15]_INST_0_i_38 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\stat_reg[0]_10 ));
  LUT6 #(
    .INIT(64'h0000500050005040)) 
    \bdatw[15]_INST_0_i_90 
       (.I0(\tr[15]_i_7_0 ),
        .I1(fch_irq_req),
        .I2(\bdatw[15]_INST_0_i_52 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\stat_reg[0]_2 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd[0]_INST_0_i_13 
       (.I0(Q[1]),
        .I1(out[6]),
        .O(\stat_reg[1]_5 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[1]_INST_0_i_10 
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(\stat_reg[2]_5 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[1]_INST_0_i_8 
       (.I0(Q[0]),
        .I1(out[13]),
        .O(\stat_reg[0]_9 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ccmd[3]_INST_0_i_14 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(\stat_reg[1]_4 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \ccmd[3]_INST_0_i_7 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(crdy),
        .O(\stat_reg[0]_11 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ccmd[4]_INST_0_i_20 
       (.I0(Q[0]),
        .I1(crdy),
        .I2(Q[1]),
        .O(\stat_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0_i_21 
       (.I0(crdy),
        .I1(Q[0]),
        .O(crdy_1));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_ext_fl_i_5
       (.I0(Q[0]),
        .I1(out[5]),
        .O(\stat_reg[0]_15 ));
  LUT4 #(
    .INIT(16'h0010)) 
    ctl_fetch_ext_fl_i_6
       (.I0(Q[1]),
        .I1(out[9]),
        .I2(Q[2]),
        .I3(out[8]),
        .O(\stat_reg[1]_7 ));
  LUT6 #(
    .INIT(64'h0000000D000F000F)) 
    ctl_fetch_inferred_i_20
       (.I0(Q[0]),
        .I1(ctl_fetch_inferred_i_11),
        .I2(out[5]),
        .I3(out[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\stat_reg[0]_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    ctl_fetch_inferred_i_32
       (.I0(Q[0]),
        .I1(out[5]),
        .O(\stat_reg[0]_13 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ctl_fetch_inferred_i_34
       (.I0(out[10]),
        .I1(out[9]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\stat_reg[1]_8 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \sp[15]_i_10 
       (.I0(brdy),
        .I1(out[13]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(brdy_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \stat[0]_i_14 
       (.I0(out[9]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\stat_reg[0]_6 ));
  LUT6 #(
    .INIT(64'hF2FFF2FFFFFFF2FF)) 
    \stat[0]_i_19 
       (.I0(Q[1]),
        .I1(out[1]),
        .I2(Q[2]),
        .I3(\stat[0]_i_9_0 ),
        .I4(brdy),
        .I5(Q[0]),
        .O(\stat[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEFFEEFEEEFEFE)) 
    \stat[0]_i_28 
       (.I0(Q[2]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(Q[0]),
        .I4(crdy),
        .I5(Q[1]),
        .O(\stat_reg[2]_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stat[0]_i_4 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(out[9]),
        .O(\stat_reg[0]_14 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \stat[0]_i_5 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(out[9]),
        .I4(out[12]),
        .I5(rgf_sr_flag[1]),
        .O(\stat_reg[0]_8 ));
  LUT6 #(
    .INIT(64'h00000000D555D5D5)) 
    \stat[0]_i_9 
       (.I0(Q[0]),
        .I1(brdy),
        .I2(out[0]),
        .I3(out[1]),
        .I4(rgf_iv_ve),
        .I5(\stat[0]_i_19_n_0 ),
        .O(\stat_reg[0]_7 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01FFFFFF)) 
    \stat[1]_i_11 
       (.I0(Q[2]),
        .I1(out[2]),
        .I2(brdy),
        .I3(\stat[1]_i_7 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\stat_reg[2]_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[1]_i_15 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\stat_reg[1]_6 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[1]_i_18 
       (.I0(Q[0]),
        .I1(out[4]),
        .O(\stat_reg[0]_12 ));
  LUT5 #(
    .INIT(32'hBBFBBFFF)) 
    \stat[1]_i_20 
       (.I0(Q[1]),
        .I1(crdy),
        .I2(out[8]),
        .I3(Q[0]),
        .I4(out[7]),
        .O(\stat_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFEFBFAFBFAFFFE)) 
    \stat[1]_i_6 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\stat[1]_i_7 ),
        .I4(out[0]),
        .I5(out[2]),
        .O(\stat_reg[0]_1 ));
  LUT4 #(
    .INIT(16'hFFF6)) 
    \stat[1]_i_9 
       (.I0(rgf_sr_flag[2]),
        .I1(out[9]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sr_reg[7] ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \stat[2]_i_10 
       (.I0(Q[2]),
        .I1(out[13]),
        .I2(out[10]),
        .I3(Q[1]),
        .O(\stat_reg[2]_6 ));
  LUT6 #(
    .INIT(64'hFFD0FFFFF0FFFF7F)) 
    \stat[2]_i_11 
       (.I0(brdy),
        .I1(Q[0]),
        .I2(out[1]),
        .I3(Q[2]),
        .I4(out[0]),
        .I5(Q[1]),
        .O(brdy_1));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[2]_i_14 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\stat_reg[2]_4 ));
  LUT2 #(
    .INIT(4'hB)) 
    \stat[2]_i_15 
       (.I0(Q[0]),
        .I1(out[9]),
        .O(\stat_reg[0]_5 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[2]_i_17 
       (.I0(Q[0]),
        .I1(out[11]),
        .O(\stat_reg[0]_16 ));
  LUT6 #(
    .INIT(64'hFFDDFFFFDFDDDFDD)) 
    \stat[2]_i_6 
       (.I0(\stat_reg[2]_4 ),
        .I1(\stat_reg[0]_5 ),
        .I2(rgf_sr_flag[1]),
        .I3(out[11]),
        .I4(rgf_sr_flag[0]),
        .I5(out[12]),
        .O(\sr_reg[6] ));
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
    .INIT(4'h2)) 
    \tr[15]_i_18 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\stat_reg[1]_9 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFD)) 
    \tr[15]_i_19 
       (.I0(\tr[15]_i_48_n_0 ),
        .I1(out[10]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(out[9]),
        .O(\tr[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFEFAFEFEEEEAEEEE)) 
    \tr[15]_i_20 
       (.I0(\tr[15]_i_7_0 ),
        .I1(out[12]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(rgf_sr_flag[0]),
        .I5(Q[2]),
        .O(\tr[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h8ABB8A7FFFFFFF7F)) 
    \tr[15]_i_21 
       (.I0(out[1]),
        .I1(Q[0]),
        .I2(brdy),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(out[0]),
        .O(\tr[15]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFFFEF)) 
    \tr[15]_i_22 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(out[10]),
        .I3(\tr[15]_i_7_1 ),
        .I4(out[9]),
        .O(\tr[15]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hA8AA)) 
    \tr[15]_i_48 
       (.I0(out[12]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(rgf_sr_flag[0]),
        .O(\tr[15]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAAA2AAA2AAA20000)) 
    \tr[15]_i_7 
       (.I0(\tr[15]_i_19_n_0 ),
        .I1(\tr[15]_i_3 ),
        .I2(\tr[15]_i_20_n_0 ),
        .I3(\tr[15]_i_21_n_0 ),
        .I4(Q[2]),
        .I5(\tr[15]_i_22_n_0 ),
        .O(\stat_reg[2]_0 ));
endmodule

module mcvm_mem
   (cbus,
    \read_cyc_reg[0] ,
    .cbus_i_0_sp_1(cbus_i_0_sn_1),
    .cbus_i_1_sp_1(cbus_i_1_sn_1),
    .cbus_i_2_sp_1(cbus_i_2_sn_1),
    .cbus_i_3_sp_1(cbus_i_3_sn_1),
    .cbus_i_4_sp_1(cbus_i_4_sn_1),
    .cbus_i_5_sp_1(cbus_i_5_sn_1),
    .cbus_i_6_sp_1(cbus_i_6_sn_1),
    .cbus_i_7_sp_1(cbus_i_7_sn_1),
    \read_cyc_reg[1] ,
    \read_cyc_reg[1]_0 ,
    \read_cyc_reg[1]_1 ,
    \read_cyc_reg[1]_2 ,
    \read_cyc_reg[1]_3 ,
    \read_cyc_reg[1]_4 ,
    \read_cyc_reg[1]_5 ,
    bdatr,
    cbus_i,
    \tr_reg[15] ,
    \tr_reg[15]_0 ,
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
  input [14:0]cbus_i;
  input \tr_reg[15] ;
  input [0:0]\tr_reg[15]_0 ;
  input [1:0]bcmd;
  input brdy;
  input p_0_in;
  input clk;
  input \read_cyc_reg[0]_0 ;
  output cbus_i_0_sn_1;
  output cbus_i_1_sn_1;
  output cbus_i_2_sn_1;
  output cbus_i_3_sn_1;
  output cbus_i_4_sn_1;
  output cbus_i_5_sn_1;
  output cbus_i_6_sn_1;
  output cbus_i_7_sn_1;

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
  wire \tr_reg[15] ;
  wire [0:0]\tr_reg[15]_0 ;

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
        .\tr_reg[15] (\tr_reg[15] ),
        .\tr_reg[15]_0 (\tr_reg[15]_0 ));
endmodule

module mcvm_mem_bctl
   (cbus,
    .cbus_i_0_sp_1(cbus_i_0_sn_1),
    .cbus_i_1_sp_1(cbus_i_1_sn_1),
    .cbus_i_2_sp_1(cbus_i_2_sn_1),
    .cbus_i_3_sp_1(cbus_i_3_sn_1),
    .cbus_i_4_sp_1(cbus_i_4_sn_1),
    .cbus_i_5_sp_1(cbus_i_5_sn_1),
    .cbus_i_6_sp_1(cbus_i_6_sn_1),
    .cbus_i_7_sp_1(cbus_i_7_sn_1),
    \read_cyc_reg[1]_0 ,
    \read_cyc_reg[1]_1 ,
    \read_cyc_reg[1]_2 ,
    \read_cyc_reg[1]_3 ,
    \read_cyc_reg[1]_4 ,
    \read_cyc_reg[1]_5 ,
    \read_cyc_reg[1]_6 ,
    \read_cyc_reg[0]_0 ,
    bdatr,
    cbus_i,
    \tr_reg[15] ,
    \tr_reg[15]_0 ,
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
  input [14:0]cbus_i;
  input \tr_reg[15] ;
  input [0:0]\tr_reg[15]_0 ;
  input [1:0]bcmd;
  input brdy;
  input p_0_in;
  input clk;
  input \read_cyc_reg[0]_1 ;
  output cbus_i_0_sn_1;
  output cbus_i_1_sn_1;
  output cbus_i_2_sn_1;
  output cbus_i_3_sn_1;
  output cbus_i_4_sn_1;
  output cbus_i_5_sn_1;
  output cbus_i_6_sn_1;
  output cbus_i_7_sn_1;

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
  wire \tr_reg[15] ;
  wire [0:0]\tr_reg[15]_0 ;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hAEAEAEAEFFAEAEAE)) 
    \iv[0]_i_3 
       (.I0(\iv[0]_i_9_n_0 ),
        .I1(cbus_i[0]),
        .I2(\tr_reg[15] ),
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
    .INIT(32'h40FF4040)) 
    \iv[10]_i_3 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[10]),
        .I3(\tr_reg[15] ),
        .I4(cbus_i[10]),
        .O(\read_cyc_reg[1]_2 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \iv[11]_i_3 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[11]),
        .I3(\tr_reg[15] ),
        .I4(cbus_i[11]),
        .O(\read_cyc_reg[1]_3 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \iv[12]_i_3 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[12]),
        .I3(\tr_reg[15] ),
        .I4(cbus_i[12]),
        .O(\read_cyc_reg[1]_4 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \iv[13]_i_4 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[13]),
        .I3(\tr_reg[15] ),
        .I4(cbus_i[13]),
        .O(\read_cyc_reg[1]_5 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[14]_i_16 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .O(\read_cyc_reg[1]_6 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4040FF40)) 
    \iv[15]_i_2 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[15]),
        .I3(cbus_i[14]),
        .I4(\tr_reg[15] ),
        .I5(\tr_reg[15]_0 ),
        .O(cbus));
  LUT6 #(
    .INIT(64'hAEAEAEAEFFAEAEAE)) 
    \iv[1]_i_3 
       (.I0(\iv[1]_i_9_n_0 ),
        .I1(cbus_i[1]),
        .I2(\tr_reg[15] ),
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
    .INIT(64'hAEAEAEAEFFAEAEAE)) 
    \iv[2]_i_3 
       (.I0(\iv[2]_i_9_n_0 ),
        .I1(cbus_i[2]),
        .I2(\tr_reg[15] ),
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
    .INIT(64'hAEAEAEAEFFAEAEAE)) 
    \iv[3]_i_3 
       (.I0(\iv[3]_i_9_n_0 ),
        .I1(cbus_i[3]),
        .I2(\tr_reg[15] ),
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
    .INIT(64'hAEAEAEAEFFAEAEAE)) 
    \iv[4]_i_3 
       (.I0(\iv[4]_i_9_n_0 ),
        .I1(cbus_i[4]),
        .I2(\tr_reg[15] ),
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
    .INIT(64'hAEAEAEAEFFAEAEAE)) 
    \iv[5]_i_3 
       (.I0(\iv[5]_i_9_n_0 ),
        .I1(cbus_i[5]),
        .I2(\tr_reg[15] ),
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
    .INIT(64'hAEAEAEAEFFAEAEAE)) 
    \iv[6]_i_3 
       (.I0(\iv[6]_i_9_n_0 ),
        .I1(cbus_i[6]),
        .I2(\tr_reg[15] ),
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
    .INIT(64'hAEAEAEAEFFAEAEAE)) 
    \iv[7]_i_3 
       (.I0(\iv[7]_i_9_n_0 ),
        .I1(cbus_i[7]),
        .I2(\tr_reg[15] ),
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
    .INIT(32'h40FF4040)) 
    \iv[8]_i_3 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[8]),
        .I3(\tr_reg[15] ),
        .I4(cbus_i[8]),
        .O(\read_cyc_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \iv[9]_i_3 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[9]),
        .I3(\tr_reg[15] ),
        .I4(cbus_i[9]),
        .O(\read_cyc_reg[1]_1 ));
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
    \sr_reg[7] ,
    \sr_reg[4] ,
    \stat_reg[0] ,
    \sr_reg[6] ,
    \sr_reg[7]_0 ,
    \sr_reg[7]_1 ,
    \sr_reg[7]_2 ,
    \sr_reg[7]_3 ,
    \sr_reg[6]_0 ,
    irq_0,
    p_0_in,
    sp_dec_0,
    \sp_reg[6] ,
    \sp_reg[7] ,
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
    \grn_reg[4]_19 ,
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
    abus_0,
    bank_sel,
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
    \iv[13]_i_21 ,
    \iv[13]_i_30 ,
    \iv[12]_i_15 ,
    \iv[0]_i_16_0 ,
    \iv[0]_i_16_1 ,
    \iv[13]_i_20 ,
    \sr[7]_i_12 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \bdatw[8]_INST_0_i_2_3 ,
    tout__1_carry_i_9,
    \iv[13]_i_35_0 ,
    \iv[0]_i_16_2 ,
    \iv[8]_i_20 ,
    \iv[6]_i_12 ,
    \iv[0]_i_16_3 ,
    \sr_reg[6]_4 ,
    \badr[13]_INST_0_i_1 ,
    \iv[1]_i_14 ,
    \iv[5]_i_15 ,
    \sr_reg[6]_5 ,
    \sr_reg[6]_6 ,
    \badr[2]_INST_0_i_1 ,
    \badr[4]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1 ,
    \iv[6]_i_18 ,
    \iv[10]_i_20 ,
    \sr_reg[6]_7 ,
    \iv[5]_i_15_0 ,
    \iv[5]_i_15_1 ,
    \iv[13]_i_28 ,
    \iv[14]_i_22_0 ,
    \iv[14]_i_37 ,
    \iv[0]_i_16_4 ,
    \iv[0]_i_16_5 ,
    \iv[0]_i_16_6 ,
    \iv[14]_i_37_0 ,
    \iv[13]_i_25 ,
    \iv[0]_i_17_0 ,
    \iv[14]_i_22_1 ,
    \iv[13]_i_24 ,
    \iv[0]_i_15 ,
    tout__1_carry_i_10_0,
    fch_irq_req,
    fch_pc,
    abus_o,
    \sp_reg[0] ,
    \sp_reg[1] ,
    \sp_reg[2] ,
    \sp_reg[3] ,
    \sp_reg[4] ,
    \sp_reg[5] ,
    \sp_reg[6]_0 ,
    \sp_reg[7]_0 ,
    \sp_reg[8] ,
    \sp_reg[9] ,
    \sp_reg[10] ,
    \sp_reg[11] ,
    \sp_reg[12] ,
    \sp_reg[13] ,
    \sp_reg[14] ,
    \sp_reg[15]_0 ,
    \iv[0]_i_18 ,
    \iv[14]_i_31 ,
    \iv[13]_i_28_0 ,
    \sr_reg[6]_8 ,
    \sr_reg[6]_9 ,
    \sr_reg[6]_10 ,
    \iv[11]_i_21 ,
    \bdatw[8]_INST_0_i_2_4 ,
    \bdatw[8]_INST_0_i_2_5 ,
    \bdatw[8]_INST_0_i_2_6 ,
    \bdatw[8]_INST_0_i_2_7 ,
    \bdatw[8]_INST_0_i_2_8 ,
    \bdatw[8]_INST_0_i_2_9 ,
    \bdatw[8]_INST_0_i_2_10 ,
    \bdatw[8]_INST_0_i_2_11 ,
    \bdatw[8]_INST_0_i_2_12 ,
    \badr[15]_INST_0_i_1_0 ,
    \sr_reg[6]_11 ,
    \sr_reg[6]_12 ,
    \sr_reg[6]_13 ,
    \bdatw[8]_INST_0_i_2_13 ,
    \iv[13]_i_28_1 ,
    \badr[15]_INST_0_i_119 ,
    ctl_fetch_inferred_i_27,
    Q,
    irq,
    irq_lev,
    \stat[2]_i_3 ,
    rst_n,
    \bdatw[14]_INST_0_i_6 ,
    gr7_bus1__0,
    gr0_bus1__0,
    gr3_bus1__0,
    gr4_bus1__0,
    gr3_bus1__0_0,
    gr4_bus1__0_1,
    \bdatw[8]_INST_0_i_2_14 ,
    \bdatw[8]_INST_0_i_2_15 ,
    \bdatw[8]_INST_0_i_2_16 ,
    gr2_bus1__0,
    gr3_bus1__0_2,
    \bdatw[9]_INST_0_i_2 ,
    \bdatw[9]_INST_0_i_2_0 ,
    \bdatw[9]_INST_0_i_2_1 ,
    \bdatw[10]_INST_0_i_2 ,
    \bdatw[10]_INST_0_i_2_0 ,
    \bdatw[10]_INST_0_i_2_1 ,
    \bdatw[11]_INST_0_i_2 ,
    \bdatw[11]_INST_0_i_2_0 ,
    \bdatw[11]_INST_0_i_2_1 ,
    \bdatw[12]_INST_0_i_2 ,
    \bdatw[12]_INST_0_i_2_0 ,
    \bdatw[12]_INST_0_i_2_1 ,
    gr3_bus1__0_3,
    gr4_bus1__0_4,
    gr4_bus1__0_5,
    gr5_bus1__0,
    gr5_bus1__0_6,
    gr6_bus1__0,
    gr5_bus1__0_7,
    gr6_bus1__0_8,
    gr5_bus1__0_9,
    gr6_bus1__0_10,
    gr7_bus1__0_11,
    gr0_bus1__0_12,
    gr7_bus1__0_13,
    gr0_bus1__0_14,
    gr1_bus1__0,
    gr2_bus1__0_15,
    gr1_bus1__0_16,
    gr2_bus1__0_17,
    gr1_bus1__0_18,
    gr2_bus1__0_19,
    bbus_sel_0,
    .abus_o_0_sp_1(abus_o_0_sn_1),
    \abus_o[0]_0 ,
    gr5_bus1__0_20,
    gr6_bus1__0_21,
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
    gr5_bus1__0_22,
    gr6_bus1__0_23,
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
    \badr[0]_INST_0_i_1_0 ,
    gr4_bus1__0_24,
    gr5_bus1__0_25,
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
    gr5_bus1__0_26,
    gr6_bus1__0_27,
    gr1_bus1__0_28,
    gr2_bus1__0_29,
    gr1_bus1__0_30,
    gr2_bus1__0_31,
    \badr[0]_INST_0_i_1_1 ,
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
    gr1_bus1__0_32,
    gr2_bus1__0_33,
    abus_sel_0,
    gr3_bus1__0_34,
    gr4_bus1__0_35,
    gr3_bus1__0_36,
    gr4_bus1__0_37,
    gr7_bus1__0_38,
    gr0_bus1__0_39,
    gr7_bus1__0_40,
    gr0_bus1__0_41,
    gr7_bus1__0_42,
    gr0_bus1__0_43,
    \iv[8]_i_5 ,
    \iv[8]_i_5_0 ,
    \iv[2]_i_2 ,
    \iv[2]_i_2_0 ,
    \iv[2]_i_2_1 ,
    \iv[8]_i_14 ,
    \iv[5]_i_2 ,
    \iv[5]_i_2_0 ,
    \iv[13]_i_2 ,
    \iv[13]_i_2_0 ,
    \iv[13]_i_7 ,
    \iv[13]_i_2_1 ,
    \iv[5]_i_2_1 ,
    \iv[9]_i_7 ,
    \iv[11]_i_9 ,
    \iv[14]_i_4 ,
    \iv[6]_i_8 ,
    \abus_o[15]_1 ,
    ctl_sp_inc,
    ctl_sp_dec,
    D,
    clk,
    \sr_reg[15]_0 ,
    \sr_reg[11] ,
    \sr_reg[10] ,
    \sr_reg[7]_4 ,
    \sr_reg[6]_14 ,
    \sr_reg[5] ,
    \sr_reg[4]_0 ,
    \sr_reg[3] ,
    \sr_reg[2] ,
    \sr_reg[1] ,
    \sr_reg[0] ,
    \pc_reg[15] ,
    \sp_reg[15]_1 ,
    cbus_sel_cr,
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
  output \sr_reg[7] ;
  output \sr_reg[4] ;
  output \stat_reg[0] ;
  output \sr_reg[6] ;
  output \sr_reg[7]_0 ;
  output \sr_reg[7]_1 ;
  output \sr_reg[7]_2 ;
  output \sr_reg[7]_3 ;
  output \sr_reg[6]_0 ;
  output irq_0;
  output p_0_in;
  output [14:0]sp_dec_0;
  output \sp_reg[6] ;
  output \sp_reg[7] ;
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
  output [4:0]\grn_reg[4]_19 ;
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
  output [15:0]abus_0;
  output [3:0]bank_sel;
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
  output \iv[13]_i_21 ;
  output \iv[13]_i_30 ;
  output \iv[12]_i_15 ;
  output \iv[0]_i_16_0 ;
  output \iv[0]_i_16_1 ;
  output \iv[13]_i_20 ;
  output \sr[7]_i_12 ;
  output \bdatw[8]_INST_0_i_2_2 ;
  output \bdatw[8]_INST_0_i_2_3 ;
  output tout__1_carry_i_9;
  output \iv[13]_i_35_0 ;
  output \iv[0]_i_16_2 ;
  output \iv[8]_i_20 ;
  output \iv[6]_i_12 ;
  output \iv[0]_i_16_3 ;
  output \sr_reg[6]_4 ;
  output \badr[13]_INST_0_i_1 ;
  output \iv[1]_i_14 ;
  output \iv[5]_i_15 ;
  output \sr_reg[6]_5 ;
  output \sr_reg[6]_6 ;
  output \badr[2]_INST_0_i_1 ;
  output \badr[4]_INST_0_i_1 ;
  output \badr[15]_INST_0_i_1 ;
  output \iv[6]_i_18 ;
  output \iv[10]_i_20 ;
  output \sr_reg[6]_7 ;
  output \iv[5]_i_15_0 ;
  output \iv[5]_i_15_1 ;
  output \iv[13]_i_28 ;
  output \iv[14]_i_22_0 ;
  output \iv[14]_i_37 ;
  output \iv[0]_i_16_4 ;
  output \iv[0]_i_16_5 ;
  output \iv[0]_i_16_6 ;
  output \iv[14]_i_37_0 ;
  output \iv[13]_i_25 ;
  output \iv[0]_i_17_0 ;
  output \iv[14]_i_22_1 ;
  output \iv[13]_i_24 ;
  output \iv[0]_i_15 ;
  output tout__1_carry_i_10_0;
  output fch_irq_req;
  output [15:0]fch_pc;
  output [15:0]abus_o;
  output \sp_reg[0] ;
  output \sp_reg[1] ;
  output \sp_reg[2] ;
  output \sp_reg[3] ;
  output \sp_reg[4] ;
  output \sp_reg[5] ;
  output \sp_reg[6]_0 ;
  output \sp_reg[7]_0 ;
  output \sp_reg[8] ;
  output \sp_reg[9] ;
  output \sp_reg[10] ;
  output \sp_reg[11] ;
  output \sp_reg[12] ;
  output \sp_reg[13] ;
  output \sp_reg[14] ;
  output \sp_reg[15]_0 ;
  output \iv[0]_i_18 ;
  output \iv[14]_i_31 ;
  output \iv[13]_i_28_0 ;
  output \sr_reg[6]_8 ;
  output \sr_reg[6]_9 ;
  output \sr_reg[6]_10 ;
  output \iv[11]_i_21 ;
  output \bdatw[8]_INST_0_i_2_4 ;
  output \bdatw[8]_INST_0_i_2_5 ;
  output \bdatw[8]_INST_0_i_2_6 ;
  output \bdatw[8]_INST_0_i_2_7 ;
  output \bdatw[8]_INST_0_i_2_8 ;
  output \bdatw[8]_INST_0_i_2_9 ;
  output \bdatw[8]_INST_0_i_2_10 ;
  output \bdatw[8]_INST_0_i_2_11 ;
  output \bdatw[8]_INST_0_i_2_12 ;
  output \badr[15]_INST_0_i_1_0 ;
  output \sr_reg[6]_11 ;
  output \sr_reg[6]_12 ;
  output \sr_reg[6]_13 ;
  output \bdatw[8]_INST_0_i_2_13 ;
  output \iv[13]_i_28_1 ;
  input [5:0]\badr[15]_INST_0_i_119 ;
  input ctl_fetch_inferred_i_27;
  input [0:0]Q;
  input irq;
  input [1:0]irq_lev;
  input \stat[2]_i_3 ;
  input rst_n;
  input [2:0]\bdatw[14]_INST_0_i_6 ;
  input gr7_bus1__0;
  input gr0_bus1__0;
  input gr3_bus1__0;
  input gr4_bus1__0;
  input gr3_bus1__0_0;
  input gr4_bus1__0_1;
  input \bdatw[8]_INST_0_i_2_14 ;
  input \bdatw[8]_INST_0_i_2_15 ;
  input \bdatw[8]_INST_0_i_2_16 ;
  input gr2_bus1__0;
  input gr3_bus1__0_2;
  input \bdatw[9]_INST_0_i_2 ;
  input \bdatw[9]_INST_0_i_2_0 ;
  input \bdatw[9]_INST_0_i_2_1 ;
  input \bdatw[10]_INST_0_i_2 ;
  input \bdatw[10]_INST_0_i_2_0 ;
  input \bdatw[10]_INST_0_i_2_1 ;
  input \bdatw[11]_INST_0_i_2 ;
  input \bdatw[11]_INST_0_i_2_0 ;
  input \bdatw[11]_INST_0_i_2_1 ;
  input \bdatw[12]_INST_0_i_2 ;
  input \bdatw[12]_INST_0_i_2_0 ;
  input \bdatw[12]_INST_0_i_2_1 ;
  input gr3_bus1__0_3;
  input gr4_bus1__0_4;
  input gr4_bus1__0_5;
  input gr5_bus1__0;
  input gr5_bus1__0_6;
  input gr6_bus1__0;
  input gr5_bus1__0_7;
  input gr6_bus1__0_8;
  input gr5_bus1__0_9;
  input gr6_bus1__0_10;
  input gr7_bus1__0_11;
  input gr0_bus1__0_12;
  input gr7_bus1__0_13;
  input gr0_bus1__0_14;
  input gr1_bus1__0;
  input gr2_bus1__0_15;
  input gr1_bus1__0_16;
  input gr2_bus1__0_17;
  input gr1_bus1__0_18;
  input gr2_bus1__0_19;
  input [0:0]bbus_sel_0;
  input \abus_o[0]_0 ;
  input gr5_bus1__0_20;
  input gr6_bus1__0_21;
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
  input gr5_bus1__0_22;
  input gr6_bus1__0_23;
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
  input \badr[0]_INST_0_i_1_0 ;
  input gr4_bus1__0_24;
  input gr5_bus1__0_25;
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
  input gr5_bus1__0_26;
  input gr6_bus1__0_27;
  input gr1_bus1__0_28;
  input gr2_bus1__0_29;
  input gr1_bus1__0_30;
  input gr2_bus1__0_31;
  input \badr[0]_INST_0_i_1_1 ;
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
  input gr1_bus1__0_32;
  input gr2_bus1__0_33;
  input [2:0]abus_sel_0;
  input gr3_bus1__0_34;
  input gr4_bus1__0_35;
  input gr3_bus1__0_36;
  input gr4_bus1__0_37;
  input gr7_bus1__0_38;
  input gr0_bus1__0_39;
  input gr7_bus1__0_40;
  input gr0_bus1__0_41;
  input gr7_bus1__0_42;
  input gr0_bus1__0_43;
  input \iv[8]_i_5 ;
  input \iv[8]_i_5_0 ;
  input \iv[2]_i_2 ;
  input \iv[2]_i_2_0 ;
  input \iv[2]_i_2_1 ;
  input \iv[8]_i_14 ;
  input \iv[5]_i_2 ;
  input \iv[5]_i_2_0 ;
  input \iv[13]_i_2 ;
  input \iv[13]_i_2_0 ;
  input \iv[13]_i_7 ;
  input \iv[13]_i_2_1 ;
  input \iv[5]_i_2_1 ;
  input \iv[9]_i_7 ;
  input \iv[11]_i_9 ;
  input \iv[14]_i_4 ;
  input \iv[6]_i_8 ;
  input \abus_o[15]_1 ;
  input ctl_sp_inc;
  input ctl_sp_dec;
  input [1:0]D;
  input clk;
  input \sr_reg[15]_0 ;
  input \sr_reg[11] ;
  input \sr_reg[10] ;
  input \sr_reg[7]_4 ;
  input \sr_reg[6]_14 ;
  input \sr_reg[5] ;
  input \sr_reg[4]_0 ;
  input \sr_reg[3] ;
  input \sr_reg[2] ;
  input \sr_reg[1] ;
  input \sr_reg[0] ;
  input [15:0]\pc_reg[15] ;
  input [15:0]\sp_reg[15]_1 ;
  input [1:0]cbus_sel_cr;
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
  wire [0:0]Q;
  wire [15:0]abus_0;
  wire [15:0]abus_o;
  wire \abus_o[0]_0 ;
  wire \abus_o[10]_0 ;
  wire \abus_o[11]_0 ;
  wire \abus_o[12]_0 ;
  wire \abus_o[13]_0 ;
  wire \abus_o[14]_0 ;
  wire \abus_o[15]_0 ;
  wire \abus_o[15]_1 ;
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
  wire [5:0]\badr[15]_INST_0_i_119 ;
  wire \badr[15]_INST_0_i_1_0 ;
  wire \badr[15]_INST_0_i_1_1 ;
  wire \badr[15]_INST_0_i_1_2 ;
  wire \badr[15]_INST_0_i_1_3 ;
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
  wire bank02_n_190;
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
  wire [0:0]bbus_sel_0;
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
  wire [2:0]\bdatw[14]_INST_0_i_6 ;
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
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_2_3 ;
  wire \bdatw[8]_INST_0_i_2_4 ;
  wire \bdatw[8]_INST_0_i_2_5 ;
  wire \bdatw[8]_INST_0_i_2_6 ;
  wire \bdatw[8]_INST_0_i_2_7 ;
  wire \bdatw[8]_INST_0_i_2_8 ;
  wire \bdatw[8]_INST_0_i_2_9 ;
  wire \bdatw[9]_INST_0_i_2 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_2_1 ;
  wire [1:0]cbus_sel_cr;
  wire clk;
  wire ctl_fetch_inferred_i_27;
  wire ctl_sp_dec;
  wire ctl_sp_inc;
  wire [15:0]fadr;
  wire fch_irq_req;
  wire [15:0]fch_pc;
  wire gr0_bus1__0;
  wire gr0_bus1__0_12;
  wire gr0_bus1__0_14;
  wire gr0_bus1__0_39;
  wire gr0_bus1__0_41;
  wire gr0_bus1__0_43;
  wire gr1_bus1__0;
  wire gr1_bus1__0_16;
  wire gr1_bus1__0_18;
  wire gr1_bus1__0_28;
  wire gr1_bus1__0_30;
  wire gr1_bus1__0_32;
  wire gr2_bus1__0;
  wire gr2_bus1__0_15;
  wire gr2_bus1__0_17;
  wire gr2_bus1__0_19;
  wire gr2_bus1__0_29;
  wire gr2_bus1__0_31;
  wire gr2_bus1__0_33;
  wire gr3_bus1__0;
  wire gr3_bus1__0_0;
  wire gr3_bus1__0_2;
  wire gr3_bus1__0_3;
  wire gr3_bus1__0_34;
  wire gr3_bus1__0_36;
  wire gr4_bus1__0;
  wire gr4_bus1__0_1;
  wire gr4_bus1__0_24;
  wire gr4_bus1__0_35;
  wire gr4_bus1__0_37;
  wire gr4_bus1__0_4;
  wire gr4_bus1__0_5;
  wire gr5_bus1__0;
  wire gr5_bus1__0_20;
  wire gr5_bus1__0_22;
  wire gr5_bus1__0_25;
  wire gr5_bus1__0_26;
  wire gr5_bus1__0_6;
  wire gr5_bus1__0_7;
  wire gr5_bus1__0_9;
  wire gr6_bus1__0;
  wire gr6_bus1__0_10;
  wire gr6_bus1__0_21;
  wire gr6_bus1__0_23;
  wire gr6_bus1__0_27;
  wire gr6_bus1__0_8;
  wire gr7_bus1__0;
  wire gr7_bus1__0_11;
  wire gr7_bus1__0_13;
  wire gr7_bus1__0_38;
  wire gr7_bus1__0_40;
  wire gr7_bus1__0_42;
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
  wire irq_0;
  wire [1:0]irq_lev;
  wire \iv[0]_i_15 ;
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
  wire \iv[10]_i_20 ;
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
  wire \iv[13]_i_28_1 ;
  wire \iv[13]_i_2_0 ;
  wire \iv[13]_i_2_1 ;
  wire \iv[13]_i_30 ;
  wire \iv[13]_i_35 ;
  wire \iv[13]_i_35_0 ;
  wire \iv[13]_i_7 ;
  wire \iv[14]_i_22 ;
  wire \iv[14]_i_22_0 ;
  wire \iv[14]_i_22_1 ;
  wire \iv[14]_i_31 ;
  wire \iv[14]_i_37 ;
  wire \iv[14]_i_37_0 ;
  wire \iv[14]_i_4 ;
  wire \iv[1]_i_14 ;
  wire \iv[2]_i_2 ;
  wire \iv[2]_i_2_0 ;
  wire \iv[2]_i_2_1 ;
  wire \iv[5]_i_15 ;
  wire \iv[5]_i_15_0 ;
  wire \iv[5]_i_15_1 ;
  wire \iv[5]_i_2 ;
  wire \iv[5]_i_2_0 ;
  wire \iv[5]_i_2_1 ;
  wire \iv[6]_i_12 ;
  wire \iv[6]_i_18 ;
  wire \iv[6]_i_8 ;
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
  wire \sp_reg[0] ;
  wire \sp_reg[10] ;
  wire \sp_reg[11] ;
  wire \sp_reg[12] ;
  wire \sp_reg[13] ;
  wire \sp_reg[14] ;
  wire [15:0]\sp_reg[15] ;
  wire \sp_reg[15]_0 ;
  wire [15:0]\sp_reg[15]_1 ;
  wire \sp_reg[1] ;
  wire \sp_reg[2] ;
  wire \sp_reg[3] ;
  wire \sp_reg[4] ;
  wire \sp_reg[5] ;
  wire \sp_reg[6] ;
  wire \sp_reg[6]_0 ;
  wire \sp_reg[7] ;
  wire \sp_reg[7]_0 ;
  wire \sp_reg[8] ;
  wire \sp_reg[9] ;
  wire \sr[6]_i_9 ;
  wire \sr[7]_i_12 ;
  wire \sr_reg[0] ;
  wire \sr_reg[10] ;
  wire \sr_reg[11] ;
  wire [15:0]\sr_reg[15] ;
  wire \sr_reg[15]_0 ;
  wire \sr_reg[1] ;
  wire \sr_reg[2] ;
  wire \sr_reg[3] ;
  wire \sr_reg[4] ;
  wire \sr_reg[4]_0 ;
  wire \sr_reg[5] ;
  wire \sr_reg[6] ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[6]_10 ;
  wire \sr_reg[6]_11 ;
  wire \sr_reg[6]_12 ;
  wire \sr_reg[6]_13 ;
  wire \sr_reg[6]_14 ;
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
  wire \sr_reg[7]_2 ;
  wire \sr_reg[7]_3 ;
  wire \sr_reg[7]_4 ;
  wire sreg_n_26;
  wire sreg_n_27;
  wire sreg_n_28;
  wire sreg_n_29;
  wire sreg_n_30;
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
  wire sreg_n_42;
  wire sreg_n_43;
  wire sreg_n_44;
  wire sreg_n_45;
  wire sreg_n_46;
  wire sreg_n_47;
  wire sreg_n_54;
  wire sreg_n_57;
  wire \stat[2]_i_3 ;
  wire \stat_reg[0] ;
  wire tout__1_carry_i_10;
  wire tout__1_carry_i_10_0;
  wire tout__1_carry_i_9;
  wire [15:0]\tr_reg[15] ;
  wire [15:0]\tr_reg[15]_0 ;

  mcvm_rgf_bank bank02
       (.E(E),
        .SR(p_0_in),
        .\badr[0]_INST_0_i_1 (\badr[0]_INST_0_i_1_0 ),
        .\badr[10]_INST_0_i_1 (\badr[10]_INST_0_i_1_0 ),
        .\badr[11]_INST_0_i_1 (\badr[11]_INST_0_i_1_0 ),
        .\badr[12]_INST_0_i_1 (\badr[12]_INST_0_i_1_0 ),
        .\badr[13]_INST_0_i_1 (\badr[13]_INST_0_i_1_1 ),
        .\badr[14]_INST_0_i_1 (\badr[14]_INST_0_i_1_0 ),
        .\badr[15]_INST_0_i_1 (\badr[15]_INST_0_i_1_2 ),
        .\badr[1]_INST_0_i_1 (\badr[1]_INST_0_i_1_0 ),
        .\badr[2]_INST_0_i_1 (\badr[2]_INST_0_i_1_1 ),
        .\badr[3]_INST_0_i_1 (\badr[3]_INST_0_i_1_0 ),
        .\badr[4]_INST_0_i_1 (\badr[4]_INST_0_i_1_1 ),
        .\badr[5]_INST_0_i_1 (\badr[5]_INST_0_i_1_0 ),
        .\badr[6]_INST_0_i_1 (\badr[6]_INST_0_i_1_0 ),
        .\badr[7]_INST_0_i_1 (\badr[7]_INST_0_i_1_0 ),
        .\badr[8]_INST_0_i_1 (\badr[8]_INST_0_i_1_0 ),
        .\badr[9]_INST_0_i_1 (\badr[9]_INST_0_i_1_0 ),
        .\bdatw[10]_INST_0_i_2 (\bdatw[10]_INST_0_i_2 ),
        .\bdatw[10]_INST_0_i_2_0 (sreg_n_28),
        .\bdatw[10]_INST_0_i_2_1 (\bdatw[10]_INST_0_i_2_0 ),
        .\bdatw[10]_INST_0_i_2_2 (\bdatw[10]_INST_0_i_2_1 ),
        .\bdatw[11]_INST_0_i_2 (\bdatw[11]_INST_0_i_2 ),
        .\bdatw[11]_INST_0_i_2_0 (sreg_n_29),
        .\bdatw[11]_INST_0_i_2_1 (\bdatw[11]_INST_0_i_2_0 ),
        .\bdatw[11]_INST_0_i_2_2 (\bdatw[11]_INST_0_i_2_1 ),
        .\bdatw[12]_INST_0_i_2 (\bdatw[12]_INST_0_i_2 ),
        .\bdatw[12]_INST_0_i_2_0 (sreg_n_30),
        .\bdatw[12]_INST_0_i_2_1 (\bdatw[12]_INST_0_i_2_0 ),
        .\bdatw[12]_INST_0_i_2_2 (\bdatw[12]_INST_0_i_2_1 ),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2_14 ),
        .\bdatw[8]_INST_0_i_2_0 (sreg_n_26),
        .\bdatw[8]_INST_0_i_2_1 (\bdatw[8]_INST_0_i_2_15 ),
        .\bdatw[8]_INST_0_i_2_2 (\bdatw[8]_INST_0_i_2_16 ),
        .\bdatw[9]_INST_0_i_2 (\bdatw[9]_INST_0_i_2 ),
        .\bdatw[9]_INST_0_i_2_0 (sreg_n_27),
        .\bdatw[9]_INST_0_i_2_1 (\bdatw[9]_INST_0_i_2_0 ),
        .\bdatw[9]_INST_0_i_2_2 (\bdatw[9]_INST_0_i_2_1 ),
        .clk(clk),
        .gr0_bus1__0(\bbuso2l/gr0_bus1__0 ),
        .gr0_bus1__0_14(gr0_bus1__0_14),
        .gr0_bus1__0_43(gr0_bus1__0_43),
        .gr1_bus1__0_18(gr1_bus1__0_18),
        .gr1_bus1__0_32(gr1_bus1__0_32),
        .gr2_bus1__0(gr2_bus1__0),
        .gr2_bus1__0_19(gr2_bus1__0_19),
        .gr2_bus1__0_33(gr2_bus1__0_33),
        .gr3_bus1__0_2(gr3_bus1__0_2),
        .gr3_bus1__0_3(gr3_bus1__0_3),
        .gr3_bus1__0_36(gr3_bus1__0_36),
        .gr4_bus1__0_24(gr4_bus1__0_24),
        .gr4_bus1__0_37(gr4_bus1__0_37),
        .gr4_bus1__0_4(gr4_bus1__0_4),
        .gr4_bus1__0_5(gr4_bus1__0_5),
        .gr5_bus1__0(gr5_bus1__0),
        .gr5_bus1__0_25(gr5_bus1__0_25),
        .gr5_bus1__0_26(gr5_bus1__0_26),
        .gr5_bus1__0_9(gr5_bus1__0_9),
        .gr6_bus1__0_10(gr6_bus1__0_10),
        .gr6_bus1__0_27(gr6_bus1__0_27),
        .gr7_bus1__0_13(gr7_bus1__0_13),
        .gr7_bus1__0_42(gr7_bus1__0_42),
        .\grn_reg[0] (bank02_n_175),
        .\grn_reg[10] (\grn_reg[10]_0 ),
        .\grn_reg[10]_0 (bank02_n_185),
        .\grn_reg[11] (\grn_reg[11]_0 ),
        .\grn_reg[11]_0 (bank02_n_186),
        .\grn_reg[12] (\grn_reg[12]_0 ),
        .\grn_reg[12]_0 (bank02_n_187),
        .\grn_reg[13] (\grn_reg[13]_0 ),
        .\grn_reg[13]_0 (bank02_n_188),
        .\grn_reg[14] (\grn_reg[14]_0 ),
        .\grn_reg[14]_0 (bank02_n_189),
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
        .\grn_reg[15]_6 (\grn_reg[15]_7 ),
        .\grn_reg[15]_7 (bank02_n_190),
        .\grn_reg[15]_8 (\tr_reg[15]_0 ),
        .\grn_reg[15]_9 (\grn_reg[15]_8 ),
        .\grn_reg[1] (bank02_n_176),
        .\grn_reg[2] (bank02_n_177),
        .\grn_reg[3] (bank02_n_178),
        .\grn_reg[4] (\grn_reg[4] ),
        .\grn_reg[4]_0 (\grn_reg[4]_0 ),
        .\grn_reg[4]_1 (\grn_reg[4]_1 ),
        .\grn_reg[4]_2 (\grn_reg[4]_2 ),
        .\grn_reg[4]_3 (\grn_reg[4]_3 ),
        .\grn_reg[4]_4 (\grn_reg[4]_4 ),
        .\grn_reg[4]_5 (\grn_reg[4]_5 ),
        .\grn_reg[4]_6 (\grn_reg[4]_6 ),
        .\grn_reg[4]_7 (\grn_reg[4]_19 ),
        .\grn_reg[4]_8 (bank02_n_179),
        .\grn_reg[5] (\grn_reg[5]_0 ),
        .\grn_reg[5]_0 (bank02_n_180),
        .\grn_reg[6] (\grn_reg[6]_0 ),
        .\grn_reg[6]_0 (bank02_n_181),
        .\grn_reg[7] (\grn_reg[7]_0 ),
        .\grn_reg[7]_0 (bank02_n_182),
        .\grn_reg[8] (\grn_reg[8]_0 ),
        .\grn_reg[8]_0 (bank02_n_183),
        .\grn_reg[9] (\grn_reg[9]_0 ),
        .\grn_reg[9]_0 (bank02_n_184),
        .out(out),
        .rst_n(rst_n));
  mcvm_rgf_bank_0 bank13
       (.SR(p_0_in),
        .abus_o(abus_o),
        .\abus_o[0]_0 (sreg_n_32),
        .\abus_o[0]_1 (abus_o_0_sn_1),
        .\abus_o[0]_2 (\abus_o[0]_0 ),
        .\abus_o[10]_0 (sreg_n_42),
        .\abus_o[10]_1 (abus_o_10_sn_1),
        .\abus_o[10]_2 (\abus_o[10]_0 ),
        .\abus_o[11]_0 (sreg_n_43),
        .\abus_o[11]_1 (abus_o_11_sn_1),
        .\abus_o[11]_2 (\abus_o[11]_0 ),
        .\abus_o[12]_0 (sreg_n_44),
        .\abus_o[12]_1 (abus_o_12_sn_1),
        .\abus_o[12]_2 (\abus_o[12]_0 ),
        .\abus_o[13]_0 (sreg_n_45),
        .\abus_o[13]_1 (abus_o_13_sn_1),
        .\abus_o[13]_2 (\abus_o[13]_0 ),
        .\abus_o[14]_0 (sreg_n_46),
        .\abus_o[14]_1 (abus_o_14_sn_1),
        .\abus_o[14]_2 (\abus_o[14]_0 ),
        .\abus_o[15]_0 (sreg_n_47),
        .\abus_o[15]_1 (abus_o_15_sn_1),
        .\abus_o[15]_2 (\abus_o[15]_0 ),
        .\abus_o[15]_3 (\abus_o[15]_1 ),
        .\abus_o[1]_0 (sreg_n_33),
        .\abus_o[1]_1 (abus_o_1_sn_1),
        .\abus_o[1]_2 (\abus_o[1]_0 ),
        .\abus_o[2]_0 (sreg_n_34),
        .\abus_o[2]_1 (abus_o_2_sn_1),
        .\abus_o[2]_2 (\abus_o[2]_0 ),
        .\abus_o[3]_0 (sreg_n_35),
        .\abus_o[3]_1 (abus_o_3_sn_1),
        .\abus_o[3]_2 (\abus_o[3]_0 ),
        .\abus_o[4]_0 (sreg_n_36),
        .\abus_o[4]_1 (abus_o_4_sn_1),
        .\abus_o[4]_2 (\abus_o[4]_0 ),
        .\abus_o[5]_0 (sreg_n_37),
        .\abus_o[5]_1 (abus_o_5_sn_1),
        .\abus_o[5]_2 (\abus_o[5]_0 ),
        .\abus_o[6]_0 (sreg_n_38),
        .\abus_o[6]_1 (abus_o_6_sn_1),
        .\abus_o[6]_2 (\abus_o[6]_0 ),
        .\abus_o[7]_0 (sreg_n_39),
        .\abus_o[7]_1 (abus_o_7_sn_1),
        .\abus_o[7]_2 (\abus_o[7]_0 ),
        .\abus_o[8]_0 (sreg_n_40),
        .\abus_o[8]_1 (abus_o_8_sn_1),
        .\abus_o[8]_2 (\abus_o[8]_0 ),
        .\abus_o[9]_0 (sreg_n_41),
        .\abus_o[9]_1 (abus_o_9_sn_1),
        .\abus_o[9]_2 (\abus_o[9]_0 ),
        .abus_o_0_sp_1(bank02_n_175),
        .abus_o_10_sp_1(bank02_n_185),
        .abus_o_11_sp_1(bank02_n_186),
        .abus_o_12_sp_1(bank02_n_187),
        .abus_o_13_sp_1(bank02_n_188),
        .abus_o_14_sp_1(bank02_n_189),
        .abus_o_15_sp_1(bank02_n_190),
        .abus_o_1_sp_1(bank02_n_176),
        .abus_o_2_sp_1(bank02_n_177),
        .abus_o_3_sp_1(bank02_n_178),
        .abus_o_4_sp_1(bank02_n_179),
        .abus_o_5_sp_1(bank02_n_180),
        .abus_o_6_sp_1(bank02_n_181),
        .abus_o_7_sp_1(bank02_n_182),
        .abus_o_8_sp_1(bank02_n_183),
        .abus_o_9_sp_1(bank02_n_184),
        .\badr[0]_INST_0_i_1_0 (\badr[0]_INST_0_i_1 ),
        .\badr[10]_INST_0_i_1_0 (\badr[10]_INST_0_i_1 ),
        .\badr[11]_INST_0_i_1_0 (\badr[11]_INST_0_i_1 ),
        .\badr[12]_INST_0_i_1_0 (\badr[12]_INST_0_i_1 ),
        .\badr[13]_INST_0_i_1_0 (\badr[13]_INST_0_i_1 ),
        .\badr[13]_INST_0_i_1_1 (\badr[13]_INST_0_i_1_0 ),
        .\badr[14]_INST_0_i_1_0 (\badr[14]_INST_0_i_1 ),
        .\badr[15]_INST_0_i_1_0 (\badr[15]_INST_0_i_1 ),
        .\badr[15]_INST_0_i_1_1 (\badr[15]_INST_0_i_1_0 ),
        .\badr[15]_INST_0_i_1_2 (\badr[15]_INST_0_i_1_1 ),
        .\badr[1]_INST_0_i_1_0 (\badr[1]_INST_0_i_1 ),
        .\badr[2]_INST_0_i_1_0 (\badr[2]_INST_0_i_1 ),
        .\badr[2]_INST_0_i_1_1 (\badr[2]_INST_0_i_1_0 ),
        .\badr[3]_INST_0_i_1_0 (\badr[3]_INST_0_i_1 ),
        .\badr[4]_INST_0_i_1_0 (\badr[4]_INST_0_i_1 ),
        .\badr[4]_INST_0_i_1_1 (\badr[4]_INST_0_i_1_0 ),
        .\badr[5]_INST_0_i_1_0 (\badr[5]_INST_0_i_1 ),
        .\badr[6]_INST_0_i_1_0 (\badr[6]_INST_0_i_1 ),
        .\badr[7]_INST_0_i_1_0 (\badr[7]_INST_0_i_1 ),
        .\badr[8]_INST_0_i_1_0 (\badr[8]_INST_0_i_1 ),
        .\badr[9]_INST_0_i_1_0 (\badr[9]_INST_0_i_1 ),
        .\bdatw[8]_INST_0_i_14_0 (\bdatw[14]_INST_0_i_6 [0]),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2 ),
        .\bdatw[8]_INST_0_i_2_0 (\bdatw[8]_INST_0_i_2_0 ),
        .\bdatw[8]_INST_0_i_2_1 (\bdatw[8]_INST_0_i_2_1 ),
        .\bdatw[8]_INST_0_i_2_10 (\bdatw[8]_INST_0_i_2_10 ),
        .\bdatw[8]_INST_0_i_2_11 (\bdatw[8]_INST_0_i_2_11 ),
        .\bdatw[8]_INST_0_i_2_12 (\bdatw[8]_INST_0_i_2_12 ),
        .\bdatw[8]_INST_0_i_2_13 (\bdatw[8]_INST_0_i_2_13 ),
        .\bdatw[8]_INST_0_i_2_2 (\bdatw[8]_INST_0_i_2_2 ),
        .\bdatw[8]_INST_0_i_2_3 (\bdatw[8]_INST_0_i_2_3 ),
        .\bdatw[8]_INST_0_i_2_4 (\bdatw[8]_INST_0_i_2_4 ),
        .\bdatw[8]_INST_0_i_2_5 (\bdatw[8]_INST_0_i_2_5 ),
        .\bdatw[8]_INST_0_i_2_6 (\bdatw[8]_INST_0_i_2_6 ),
        .\bdatw[8]_INST_0_i_2_7 (\bdatw[8]_INST_0_i_2_7 ),
        .\bdatw[8]_INST_0_i_2_8 (\bdatw[8]_INST_0_i_2_8 ),
        .\bdatw[8]_INST_0_i_2_9 (\bdatw[8]_INST_0_i_2_9 ),
        .clk(clk),
        .gr0_bus1__0(gr0_bus1__0),
        .gr0_bus1__0_12(gr0_bus1__0_12),
        .gr0_bus1__0_39(gr0_bus1__0_39),
        .gr0_bus1__0_41(gr0_bus1__0_41),
        .gr1_bus1__0(gr1_bus1__0),
        .gr1_bus1__0_16(gr1_bus1__0_16),
        .gr1_bus1__0_28(gr1_bus1__0_28),
        .gr1_bus1__0_30(gr1_bus1__0_30),
        .gr2_bus1__0_15(gr2_bus1__0_15),
        .gr2_bus1__0_17(gr2_bus1__0_17),
        .gr2_bus1__0_29(gr2_bus1__0_29),
        .gr2_bus1__0_31(gr2_bus1__0_31),
        .gr3_bus1__0(gr3_bus1__0),
        .gr3_bus1__0_0(gr3_bus1__0_0),
        .gr3_bus1__0_1(\abuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_34(gr3_bus1__0_34),
        .gr4_bus1__0(gr4_bus1__0),
        .gr4_bus1__0_1(gr4_bus1__0_1),
        .gr4_bus1__0_2(\abuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_35(gr4_bus1__0_35),
        .gr5_bus1__0_20(gr5_bus1__0_20),
        .gr5_bus1__0_22(gr5_bus1__0_22),
        .gr5_bus1__0_6(gr5_bus1__0_6),
        .gr5_bus1__0_7(gr5_bus1__0_7),
        .gr6_bus1__0(gr6_bus1__0),
        .gr6_bus1__0_21(gr6_bus1__0_21),
        .gr6_bus1__0_23(gr6_bus1__0_23),
        .gr6_bus1__0_8(gr6_bus1__0_8),
        .gr7_bus1__0(gr7_bus1__0),
        .gr7_bus1__0_11(gr7_bus1__0_11),
        .gr7_bus1__0_38(gr7_bus1__0_38),
        .gr7_bus1__0_40(gr7_bus1__0_40),
        .\grn_reg[0] (\grn_reg[0] ),
        .\grn_reg[0]_0 (\grn_reg[0]_0 ),
        .\grn_reg[0]_1 (abus_0[0]),
        .\grn_reg[10] (\grn_reg[10] ),
        .\grn_reg[10]_0 (abus_0[10]),
        .\grn_reg[11] (\grn_reg[11] ),
        .\grn_reg[11]_0 (abus_0[11]),
        .\grn_reg[12] (\grn_reg[12] ),
        .\grn_reg[12]_0 (abus_0[12]),
        .\grn_reg[13] (\grn_reg[13] ),
        .\grn_reg[13]_0 (abus_0[13]),
        .\grn_reg[14] (\grn_reg[14] ),
        .\grn_reg[14]_0 (abus_0[14]),
        .\grn_reg[15] (\grn_reg[15]_6 ),
        .\grn_reg[15]_0 (abus_0[15]),
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
        .\grn_reg[1] (\grn_reg[1] ),
        .\grn_reg[1]_0 (\grn_reg[1]_0 ),
        .\grn_reg[1]_1 (abus_0[1]),
        .\grn_reg[2] (\grn_reg[2] ),
        .\grn_reg[2]_0 (\grn_reg[2]_0 ),
        .\grn_reg[2]_1 (abus_0[2]),
        .\grn_reg[3] (\grn_reg[3] ),
        .\grn_reg[3]_0 (\grn_reg[3]_0 ),
        .\grn_reg[3]_1 (abus_0[3]),
        .\grn_reg[4] (\grn_reg[4]_7 ),
        .\grn_reg[4]_0 (\grn_reg[4]_8 ),
        .\grn_reg[4]_1 (\grn_reg[4]_9 ),
        .\grn_reg[4]_10 (\grn_reg[4]_18 ),
        .\grn_reg[4]_11 (\grn_reg[4]_20 ),
        .\grn_reg[4]_12 (\grn_reg[4]_21 ),
        .\grn_reg[4]_13 (abus_0[4]),
        .\grn_reg[4]_2 (\grn_reg[4]_10 ),
        .\grn_reg[4]_3 (\grn_reg[4]_11 ),
        .\grn_reg[4]_4 (\grn_reg[4]_12 ),
        .\grn_reg[4]_5 (\grn_reg[4]_13 ),
        .\grn_reg[4]_6 (\grn_reg[4]_14 ),
        .\grn_reg[4]_7 (\grn_reg[4]_15 ),
        .\grn_reg[4]_8 (\grn_reg[4]_16 ),
        .\grn_reg[4]_9 (\grn_reg[4]_17 ),
        .\grn_reg[5] (\grn_reg[5] ),
        .\grn_reg[5]_0 (abus_0[5]),
        .\grn_reg[6] (\grn_reg[6] ),
        .\grn_reg[6]_0 (abus_0[6]),
        .\grn_reg[7] (\grn_reg[7] ),
        .\grn_reg[7]_0 (abus_0[7]),
        .\grn_reg[8] (\grn_reg[8] ),
        .\grn_reg[8]_0 (abus_0[8]),
        .\grn_reg[9] (\grn_reg[9] ),
        .\grn_reg[9]_0 (abus_0[9]),
        .\iv[0]_i_15_0 (\iv[0]_i_15 ),
        .\iv[0]_i_16 (\iv[0]_i_16 ),
        .\iv[0]_i_16_0 (\iv[0]_i_16_0 ),
        .\iv[0]_i_16_1 (\iv[0]_i_16_1 ),
        .\iv[0]_i_16_2 (\iv[0]_i_16_2 ),
        .\iv[0]_i_16_3 (\iv[0]_i_16_3 ),
        .\iv[0]_i_16_4 (\iv[0]_i_16_4 ),
        .\iv[0]_i_16_5 (\iv[0]_i_16_5 ),
        .\iv[0]_i_16_6 (\iv[0]_i_16_6 ),
        .\iv[0]_i_17_0 (\iv[0]_i_17 ),
        .\iv[0]_i_17_1 (\iv[0]_i_17_0 ),
        .\iv[0]_i_18_0 (\iv[0]_i_18 ),
        .\iv[10]_i_20_0 (\iv[10]_i_20 ),
        .\iv[11]_i_17_0 (\iv[11]_i_17 ),
        .\iv[11]_i_21_0 (\iv[11]_i_21 ),
        .\iv[11]_i_9 (\iv[11]_i_9 ),
        .\iv[12]_i_15_0 (\iv[12]_i_15 ),
        .\iv[13]_i_16_0 (\iv[13]_i_16 ),
        .\iv[13]_i_2 (\iv[13]_i_2 ),
        .\iv[13]_i_20_0 (\iv[13]_i_20 ),
        .\iv[13]_i_21_0 (\iv[13]_i_21 ),
        .\iv[13]_i_24_0 (\iv[13]_i_24 ),
        .\iv[13]_i_25_0 (\iv[13]_i_25 ),
        .\iv[13]_i_28_0 (\iv[13]_i_28 ),
        .\iv[13]_i_28_1 (\iv[13]_i_28_0 ),
        .\iv[13]_i_28_2 (\iv[13]_i_28_1 ),
        .\iv[13]_i_2_0 (\iv[13]_i_2_0 ),
        .\iv[13]_i_2_1 (\iv[13]_i_2_1 ),
        .\iv[13]_i_30_0 (\iv[13]_i_30 ),
        .\iv[13]_i_35_0 (\iv[13]_i_35 ),
        .\iv[13]_i_35_1 (\iv[13]_i_35_0 ),
        .\iv[13]_i_7 (\iv[13]_i_7 ),
        .\iv[14]_i_22 (\iv[14]_i_22 ),
        .\iv[14]_i_22_0 (\iv[14]_i_22_0 ),
        .\iv[14]_i_22_1 (\iv[14]_i_22_1 ),
        .\iv[14]_i_31 (\iv[14]_i_31 ),
        .\iv[14]_i_37_0 (\iv[14]_i_37 ),
        .\iv[14]_i_37_1 (\iv[14]_i_37_0 ),
        .\iv[14]_i_4 (\iv[14]_i_4 ),
        .\iv[1]_i_14_0 (\iv[1]_i_14 ),
        .\iv[2]_i_2 (\iv[2]_i_2 ),
        .\iv[2]_i_2_0 (\iv[2]_i_2_0 ),
        .\iv[2]_i_2_1 (\iv[2]_i_2_1 ),
        .\iv[2]_i_8 (sreg_n_54),
        .\iv[5]_i_15_0 (\iv[5]_i_15 ),
        .\iv[5]_i_15_1 (\iv[5]_i_15_0 ),
        .\iv[5]_i_15_2 (\iv[5]_i_15_1 ),
        .\iv[5]_i_2 (\iv[5]_i_2 ),
        .\iv[5]_i_2_0 (\iv[5]_i_2_0 ),
        .\iv[5]_i_2_1 (\iv[5]_i_2_1 ),
        .\iv[5]_i_8_0 (\sr_reg[6]_2 ),
        .\iv[6]_i_12 (\iv[6]_i_12 ),
        .\iv[6]_i_18_0 (\iv[6]_i_18 ),
        .\iv[6]_i_8_0 (\iv[6]_i_8 ),
        .\iv[8]_i_14_0 (\iv[8]_i_14 ),
        .\iv[8]_i_20_0 (\iv[8]_i_20 ),
        .\iv[8]_i_5 (\iv[8]_i_5 ),
        .\iv[8]_i_5_0 (\iv[8]_i_5_0 ),
        .\iv[9]_i_7 (\iv[9]_i_7 ),
        .out(\sr_reg[15] [15:5]),
        .\sr[6]_i_9_0 (\sr[6]_i_9 ),
        .\sr[7]_i_12_0 (\sr[7]_i_12 ),
        .\sr_reg[6] (\sr_reg[6]_1 ),
        .\sr_reg[6]_0 (\sr_reg[6]_3 ),
        .\sr_reg[6]_1 (\sr_reg[6]_4 ),
        .\sr_reg[6]_10 (\sr_reg[6]_13 ),
        .\sr_reg[6]_2 (\sr_reg[6]_5 ),
        .\sr_reg[6]_3 (\sr_reg[6]_6 ),
        .\sr_reg[6]_4 (\sr_reg[6]_7 ),
        .\sr_reg[6]_5 (\sr_reg[6]_8 ),
        .\sr_reg[6]_6 (\sr_reg[6]_9 ),
        .\sr_reg[6]_7 (\sr_reg[6]_10 ),
        .\sr_reg[6]_8 (\sr_reg[6]_11 ),
        .\sr_reg[6]_9 (\sr_reg[6]_12 ),
        .tout__1_carry_i_10(tout__1_carry_i_10),
        .tout__1_carry_i_10_0(tout__1_carry_i_10_0),
        .tout__1_carry_i_9(tout__1_carry_i_9));
  mcvm_rgf_ivec ivec
       (.SR(p_0_in),
        .cbus_sel_cr(cbus_sel_cr[0]),
        .clk(clk),
        .\iv_reg[15]_0 (\iv_reg[15] ),
        .\iv_reg[15]_1 (\tr_reg[15]_0 ));
  mcvm_rgf_pcnt pcnt
       (.S(sreg_n_57),
        .SR(p_0_in),
        .clk(clk),
        .fadr(fadr),
        .fch_pc(fch_pc),
        .\pc_reg[15]_0 (\pc_reg[15] ));
  mcvm_rgf_sptr sptr
       (.SR(p_0_in),
        .\bdatw[14]_INST_0_i_6 (\bdatw[14]_INST_0_i_6 [2:1]),
        .clk(clk),
        .ctl_sp_dec(ctl_sp_dec),
        .ctl_sp_inc(ctl_sp_inc),
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
        .\sp_reg[1]_0 (\sp_reg[1] ),
        .\sp_reg[2]_0 (\sp_reg[2] ),
        .\sp_reg[3]_0 (\sp_reg[3] ),
        .\sp_reg[4]_0 (\sp_reg[4] ),
        .\sp_reg[5]_0 (\sp_reg[5] ),
        .\sp_reg[6]_0 (\sp_reg[6] ),
        .\sp_reg[6]_1 (\sp_reg[6]_0 ),
        .\sp_reg[7]_0 (\sp_reg[7] ),
        .\sp_reg[7]_1 (\sp_reg[7]_0 ),
        .\sp_reg[8]_0 (\sp_reg[8] ),
        .\sp_reg[9]_0 (\sp_reg[9] ));
  mcvm_rgf_sreg sreg
       (.D(D),
        .Q(Q),
        .S(sreg_n_57),
        .SR(p_0_in),
        .abus_0({abus_0[15],abus_0[0]}),
        .abus_sel_0(abus_sel_0),
        .\badr[0]_INST_0_i_1 (\badr[0]_INST_0_i_1_1 ),
        .\badr[10]_INST_0_i_1 (\badr[10]_INST_0_i_1_1 ),
        .\badr[11]_INST_0_i_1 (\badr[11]_INST_0_i_1_1 ),
        .\badr[12]_INST_0_i_1 (\badr[12]_INST_0_i_1_1 ),
        .\badr[13]_INST_0_i_1 (\badr[13]_INST_0_i_1_2 ),
        .\badr[14]_INST_0_i_1 (\badr[14]_INST_0_i_1_1 ),
        .\badr[15]_INST_0_i_1 ({\grn_reg[15]_1 ,bank02_n_59,bank02_n_60,bank02_n_61,bank02_n_62,bank02_n_63}),
        .\badr[15]_INST_0_i_119 (\badr[15]_INST_0_i_119 ),
        .\badr[15]_INST_0_i_1_0 ({\grn_reg[15]_0 ,bank02_n_43,bank02_n_44,bank02_n_45,bank02_n_46,bank02_n_47}),
        .\badr[15]_INST_0_i_1_1 (\badr[15]_INST_0_i_1_3 ),
        .\badr[1]_INST_0_i_1 (\badr[1]_INST_0_i_1_1 ),
        .\badr[2]_INST_0_i_1 (\badr[2]_INST_0_i_1_2 ),
        .\badr[3]_INST_0_i_1 (\badr[3]_INST_0_i_1_1 ),
        .\badr[4]_INST_0_i_1 (\badr[4]_INST_0_i_1_2 ),
        .\badr[5]_INST_0_i_1 (\badr[5]_INST_0_i_1_1 ),
        .\badr[6]_INST_0_i_1 (\badr[6]_INST_0_i_1_1 ),
        .\badr[7]_INST_0_i_1 (\badr[7]_INST_0_i_1_1 ),
        .\badr[8]_INST_0_i_1 (\badr[8]_INST_0_i_1_1 ),
        .\badr[9]_INST_0_i_1 (\badr[9]_INST_0_i_1_1 ),
        .bank_sel(bank_sel),
        .bbus_sel_0(bbus_sel_0),
        .clk(clk),
        .ctl_fetch_inferred_i_27(ctl_fetch_inferred_i_27),
        .fadr(fadr[1]),
        .fch_irq_req(fch_irq_req),
        .gr0_bus1__0(\bbuso2l/gr0_bus1__0 ),
        .gr3_bus1__0(\abuso2l/gr3_bus1__0 ),
        .gr4_bus1__0(\abuso2l/gr4_bus1__0 ),
        .\grn_reg[0] (sreg_n_32),
        .\grn_reg[10] (sreg_n_42),
        .\grn_reg[11] (sreg_n_43),
        .\grn_reg[12] (sreg_n_44),
        .\grn_reg[13] (sreg_n_45),
        .\grn_reg[14] (sreg_n_46),
        .\grn_reg[15] (sreg_n_47),
        .\grn_reg[1] (sreg_n_33),
        .\grn_reg[2] (sreg_n_34),
        .\grn_reg[3] (sreg_n_35),
        .\grn_reg[4] (sreg_n_36),
        .\grn_reg[5] (sreg_n_37),
        .\grn_reg[6] (sreg_n_38),
        .\grn_reg[7] (sreg_n_39),
        .\grn_reg[8] (sreg_n_40),
        .\grn_reg[9] (sreg_n_41),
        .irq(irq),
        .irq_0(irq_0),
        .irq_lev(irq_lev),
        .\iv[10]_i_19 (\iv[8]_i_14 ),
        .out(out[4:0]),
        .\sr_reg[0]_0 (\sr_reg[0] ),
        .\sr_reg[10]_0 (\sr_reg[10] ),
        .\sr_reg[11]_0 (\sr_reg[11] ),
        .\sr_reg[15]_0 (\sr_reg[15] ),
        .\sr_reg[15]_1 (\sr_reg[15]_0 ),
        .\sr_reg[1]_0 (sreg_n_26),
        .\sr_reg[1]_1 (sreg_n_27),
        .\sr_reg[1]_2 (sreg_n_28),
        .\sr_reg[1]_3 (sreg_n_29),
        .\sr_reg[1]_4 (sreg_n_30),
        .\sr_reg[1]_5 (\sr_reg[1] ),
        .\sr_reg[2]_0 (\sr_reg[2] ),
        .\sr_reg[3]_0 (\sr_reg[3] ),
        .\sr_reg[4]_0 (\sr_reg[4] ),
        .\sr_reg[4]_1 (\sr_reg[4]_0 ),
        .\sr_reg[5]_0 (\sr_reg[5] ),
        .\sr_reg[6]_0 (\sr_reg[6] ),
        .\sr_reg[6]_1 (\sr_reg[6]_0 ),
        .\sr_reg[6]_2 (sreg_n_54),
        .\sr_reg[6]_3 (\sr_reg[6]_2 ),
        .\sr_reg[6]_4 (\sr_reg[6]_14 ),
        .\sr_reg[7]_0 (\sr_reg[7] ),
        .\sr_reg[7]_1 (\sr_reg[7]_0 ),
        .\sr_reg[7]_2 (\sr_reg[7]_1 ),
        .\sr_reg[7]_3 (\sr_reg[7]_2 ),
        .\sr_reg[7]_4 (\sr_reg[7]_3 ),
        .\sr_reg[7]_5 (\sr_reg[7]_4 ),
        .\stat[2]_i_3 (\stat[2]_i_3 ),
        .\stat_reg[0] (\stat_reg[0] ));
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
    SR,
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
    rst_n,
    \bdatw[8]_INST_0_i_2 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \bdatw[8]_INST_0_i_2_2 ,
    gr2_bus1__0,
    gr3_bus1__0_2,
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
    gr0_bus1__0,
    gr3_bus1__0_3,
    gr4_bus1__0_4,
    gr4_bus1__0_5,
    gr5_bus1__0,
    gr5_bus1__0_9,
    gr6_bus1__0_10,
    gr7_bus1__0_13,
    gr0_bus1__0_14,
    gr1_bus1__0_18,
    gr2_bus1__0_19,
    \badr[0]_INST_0_i_1 ,
    gr4_bus1__0_24,
    gr5_bus1__0_25,
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
    gr5_bus1__0_26,
    gr6_bus1__0_27,
    gr1_bus1__0_32,
    gr2_bus1__0_33,
    gr3_bus1__0_36,
    gr4_bus1__0_37,
    gr7_bus1__0_42,
    gr0_bus1__0_43,
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
  output [0:0]SR;
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
  input rst_n;
  input \bdatw[8]_INST_0_i_2 ;
  input \bdatw[8]_INST_0_i_2_0 ;
  input \bdatw[8]_INST_0_i_2_1 ;
  input \bdatw[8]_INST_0_i_2_2 ;
  input gr2_bus1__0;
  input gr3_bus1__0_2;
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
  input gr0_bus1__0;
  input gr3_bus1__0_3;
  input gr4_bus1__0_4;
  input gr4_bus1__0_5;
  input gr5_bus1__0;
  input gr5_bus1__0_9;
  input gr6_bus1__0_10;
  input gr7_bus1__0_13;
  input gr0_bus1__0_14;
  input gr1_bus1__0_18;
  input gr2_bus1__0_19;
  input \badr[0]_INST_0_i_1 ;
  input gr4_bus1__0_24;
  input gr5_bus1__0_25;
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
  input gr5_bus1__0_26;
  input gr6_bus1__0_27;
  input gr1_bus1__0_32;
  input gr2_bus1__0_33;
  input gr3_bus1__0_36;
  input gr4_bus1__0_37;
  input gr7_bus1__0_42;
  input gr0_bus1__0_43;
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
  wire \bdatw[10]_INST_0_i_2 ;
  wire \bdatw[10]_INST_0_i_23_n_0 ;
  wire \bdatw[10]_INST_0_i_28_n_0 ;
  wire \bdatw[10]_INST_0_i_2_0 ;
  wire \bdatw[10]_INST_0_i_2_1 ;
  wire \bdatw[10]_INST_0_i_2_2 ;
  wire \bdatw[10]_INST_0_i_45_n_0 ;
  wire \bdatw[10]_INST_0_i_46_n_0 ;
  wire \bdatw[10]_INST_0_i_47_n_0 ;
  wire \bdatw[10]_INST_0_i_48_n_0 ;
  wire \bdatw[11]_INST_0_i_2 ;
  wire \bdatw[11]_INST_0_i_22_n_0 ;
  wire \bdatw[11]_INST_0_i_27_n_0 ;
  wire \bdatw[11]_INST_0_i_2_0 ;
  wire \bdatw[11]_INST_0_i_2_1 ;
  wire \bdatw[11]_INST_0_i_2_2 ;
  wire \bdatw[11]_INST_0_i_44_n_0 ;
  wire \bdatw[11]_INST_0_i_45_n_0 ;
  wire \bdatw[11]_INST_0_i_46_n_0 ;
  wire \bdatw[11]_INST_0_i_47_n_0 ;
  wire \bdatw[12]_INST_0_i_2 ;
  wire \bdatw[12]_INST_0_i_22_n_0 ;
  wire \bdatw[12]_INST_0_i_27_n_0 ;
  wire \bdatw[12]_INST_0_i_2_0 ;
  wire \bdatw[12]_INST_0_i_2_1 ;
  wire \bdatw[12]_INST_0_i_2_2 ;
  wire \bdatw[12]_INST_0_i_67_n_0 ;
  wire \bdatw[12]_INST_0_i_68_n_0 ;
  wire \bdatw[12]_INST_0_i_69_n_0 ;
  wire \bdatw[12]_INST_0_i_70_n_0 ;
  wire \bdatw[13]_INST_0_i_28_n_0 ;
  wire \bdatw[13]_INST_0_i_29_n_0 ;
  wire \bdatw[13]_INST_0_i_30_n_0 ;
  wire \bdatw[13]_INST_0_i_31_n_0 ;
  wire \bdatw[14]_INST_0_i_25_n_0 ;
  wire \bdatw[14]_INST_0_i_26_n_0 ;
  wire \bdatw[14]_INST_0_i_27_n_0 ;
  wire \bdatw[14]_INST_0_i_28_n_0 ;
  wire \bdatw[15]_INST_0_i_96_n_0 ;
  wire \bdatw[15]_INST_0_i_97_n_0 ;
  wire \bdatw[15]_INST_0_i_98_n_0 ;
  wire \bdatw[15]_INST_0_i_99_n_0 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_24_n_0 ;
  wire \bdatw[8]_INST_0_i_29_n_0 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_45_n_0 ;
  wire \bdatw[8]_INST_0_i_46_n_0 ;
  wire \bdatw[8]_INST_0_i_47_n_0 ;
  wire \bdatw[8]_INST_0_i_48_n_0 ;
  wire \bdatw[9]_INST_0_i_2 ;
  wire \bdatw[9]_INST_0_i_23_n_0 ;
  wire \bdatw[9]_INST_0_i_28_n_0 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_2_1 ;
  wire \bdatw[9]_INST_0_i_2_2 ;
  wire \bdatw[9]_INST_0_i_44_n_0 ;
  wire \bdatw[9]_INST_0_i_45_n_0 ;
  wire \bdatw[9]_INST_0_i_46_n_0 ;
  wire \bdatw[9]_INST_0_i_47_n_0 ;
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
  wire gr0_bus1__0_14;
  wire gr0_bus1__0_43;
  wire gr1_bus1__0_18;
  wire gr1_bus1__0_32;
  (* DONT_TOUCH *) wire [15:0]gr20;
  (* DONT_TOUCH *) wire [15:0]gr21;
  (* DONT_TOUCH *) wire [15:0]gr22;
  (* DONT_TOUCH *) wire [15:0]gr23;
  (* DONT_TOUCH *) wire [15:0]gr24;
  (* DONT_TOUCH *) wire [15:0]gr25;
  (* DONT_TOUCH *) wire [15:0]gr26;
  (* DONT_TOUCH *) wire [15:0]gr27;
  wire gr2_bus1__0;
  wire gr2_bus1__0_19;
  wire gr2_bus1__0_33;
  wire gr3_bus1__0_2;
  wire gr3_bus1__0_3;
  wire gr3_bus1__0_36;
  wire gr4_bus1__0_24;
  wire gr4_bus1__0_37;
  wire gr4_bus1__0_4;
  wire gr4_bus1__0_5;
  wire gr5_bus1__0;
  wire gr5_bus1__0_25;
  wire gr5_bus1__0_26;
  wire gr5_bus1__0_9;
  wire gr6_bus1__0_10;
  wire gr6_bus1__0_27;
  wire gr7_bus1__0_13;
  wire gr7_bus1__0_42;
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
        .I1(gr4_bus1__0_24),
        .I2(gr25[0]),
        .I3(gr5_bus1__0_25),
        .O(\badr[0]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_17 
       (.I0(gr03[0]),
        .I1(gr3_bus1__0_36),
        .I2(gr04[0]),
        .I3(gr4_bus1__0_37),
        .O(\badr[0]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_18 
       (.I0(gr01[0]),
        .I1(gr1_bus1__0_32),
        .I2(gr02[0]),
        .I3(gr2_bus1__0_33),
        .O(\badr[0]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_19 
       (.I0(gr07[0]),
        .I1(gr7_bus1__0_42),
        .I2(gr00[0]),
        .I3(gr0_bus1__0_43),
        .O(\badr[0]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_20 
       (.I0(gr05[0]),
        .I1(gr5_bus1__0_26),
        .I2(gr06[0]),
        .I3(gr6_bus1__0_27),
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
    \badr[10]_INST_0_i_16 
       (.I0(gr24[10]),
        .I1(gr4_bus1__0_24),
        .I2(gr25[10]),
        .I3(gr5_bus1__0_25),
        .O(\badr[10]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_17 
       (.I0(gr03[10]),
        .I1(gr3_bus1__0_36),
        .I2(gr04[10]),
        .I3(gr4_bus1__0_37),
        .O(\badr[10]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_18 
       (.I0(gr01[10]),
        .I1(gr1_bus1__0_32),
        .I2(gr02[10]),
        .I3(gr2_bus1__0_33),
        .O(\badr[10]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_19 
       (.I0(gr07[10]),
        .I1(gr7_bus1__0_42),
        .I2(gr00[10]),
        .I3(gr0_bus1__0_43),
        .O(\badr[10]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_20 
       (.I0(gr05[10]),
        .I1(gr5_bus1__0_26),
        .I2(gr06[10]),
        .I3(gr6_bus1__0_27),
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
       (.I0(gr24[11]),
        .I1(gr4_bus1__0_24),
        .I2(gr25[11]),
        .I3(gr5_bus1__0_25),
        .O(\badr[11]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_17 
       (.I0(gr03[11]),
        .I1(gr3_bus1__0_36),
        .I2(gr04[11]),
        .I3(gr4_bus1__0_37),
        .O(\badr[11]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_18 
       (.I0(gr01[11]),
        .I1(gr1_bus1__0_32),
        .I2(gr02[11]),
        .I3(gr2_bus1__0_33),
        .O(\badr[11]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_19 
       (.I0(gr07[11]),
        .I1(gr7_bus1__0_42),
        .I2(gr00[11]),
        .I3(gr0_bus1__0_43),
        .O(\badr[11]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_20 
       (.I0(gr05[11]),
        .I1(gr5_bus1__0_26),
        .I2(gr06[11]),
        .I3(gr6_bus1__0_27),
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
        .I1(gr4_bus1__0_24),
        .I2(gr25[12]),
        .I3(gr5_bus1__0_25),
        .O(\badr[12]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_17 
       (.I0(gr03[12]),
        .I1(gr3_bus1__0_36),
        .I2(gr04[12]),
        .I3(gr4_bus1__0_37),
        .O(\badr[12]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_18 
       (.I0(gr01[12]),
        .I1(gr1_bus1__0_32),
        .I2(gr02[12]),
        .I3(gr2_bus1__0_33),
        .O(\badr[12]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_19 
       (.I0(gr07[12]),
        .I1(gr7_bus1__0_42),
        .I2(gr00[12]),
        .I3(gr0_bus1__0_43),
        .O(\badr[12]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_20 
       (.I0(gr05[12]),
        .I1(gr5_bus1__0_26),
        .I2(gr06[12]),
        .I3(gr6_bus1__0_27),
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
        .I1(gr4_bus1__0_24),
        .I2(gr25[13]),
        .I3(gr5_bus1__0_25),
        .O(\badr[13]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_17 
       (.I0(gr03[13]),
        .I1(gr3_bus1__0_36),
        .I2(gr04[13]),
        .I3(gr4_bus1__0_37),
        .O(\badr[13]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_18 
       (.I0(gr01[13]),
        .I1(gr1_bus1__0_32),
        .I2(gr02[13]),
        .I3(gr2_bus1__0_33),
        .O(\badr[13]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_19 
       (.I0(gr07[13]),
        .I1(gr7_bus1__0_42),
        .I2(gr00[13]),
        .I3(gr0_bus1__0_43),
        .O(\badr[13]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_20 
       (.I0(gr05[13]),
        .I1(gr5_bus1__0_26),
        .I2(gr06[13]),
        .I3(gr6_bus1__0_27),
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
        .I1(gr4_bus1__0_24),
        .I2(gr25[14]),
        .I3(gr5_bus1__0_25),
        .O(\badr[14]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_17 
       (.I0(gr03[14]),
        .I1(gr3_bus1__0_36),
        .I2(gr04[14]),
        .I3(gr4_bus1__0_37),
        .O(\badr[14]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_18 
       (.I0(gr01[14]),
        .I1(gr1_bus1__0_32),
        .I2(gr02[14]),
        .I3(gr2_bus1__0_33),
        .O(\badr[14]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_19 
       (.I0(gr07[14]),
        .I1(gr7_bus1__0_42),
        .I2(gr00[14]),
        .I3(gr0_bus1__0_43),
        .O(\badr[14]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_20 
       (.I0(gr05[14]),
        .I1(gr5_bus1__0_26),
        .I2(gr06[14]),
        .I3(gr6_bus1__0_27),
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
       (.I0(gr24[15]),
        .I1(gr4_bus1__0_24),
        .I2(gr25[15]),
        .I3(gr5_bus1__0_25),
        .O(\badr[15]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_19 
       (.I0(gr03[15]),
        .I1(gr3_bus1__0_36),
        .I2(gr04[15]),
        .I3(gr4_bus1__0_37),
        .O(\badr[15]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_20 
       (.I0(gr01[15]),
        .I1(gr1_bus1__0_32),
        .I2(gr02[15]),
        .I3(gr2_bus1__0_33),
        .O(\badr[15]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_21 
       (.I0(gr07[15]),
        .I1(gr7_bus1__0_42),
        .I2(gr00[15]),
        .I3(gr0_bus1__0_43),
        .O(\badr[15]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_22 
       (.I0(gr05[15]),
        .I1(gr5_bus1__0_26),
        .I2(gr06[15]),
        .I3(gr6_bus1__0_27),
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
        .O(\grn_reg[15]_7 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_16 
       (.I0(gr24[1]),
        .I1(gr4_bus1__0_24),
        .I2(gr25[1]),
        .I3(gr5_bus1__0_25),
        .O(\badr[1]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_17 
       (.I0(gr03[1]),
        .I1(gr3_bus1__0_36),
        .I2(gr04[1]),
        .I3(gr4_bus1__0_37),
        .O(\badr[1]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_18 
       (.I0(gr01[1]),
        .I1(gr1_bus1__0_32),
        .I2(gr02[1]),
        .I3(gr2_bus1__0_33),
        .O(\badr[1]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_19 
       (.I0(gr07[1]),
        .I1(gr7_bus1__0_42),
        .I2(gr00[1]),
        .I3(gr0_bus1__0_43),
        .O(\badr[1]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_20 
       (.I0(gr05[1]),
        .I1(gr5_bus1__0_26),
        .I2(gr06[1]),
        .I3(gr6_bus1__0_27),
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
        .O(\grn_reg[1] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_16 
       (.I0(gr24[2]),
        .I1(gr4_bus1__0_24),
        .I2(gr25[2]),
        .I3(gr5_bus1__0_25),
        .O(\badr[2]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_17 
       (.I0(gr03[2]),
        .I1(gr3_bus1__0_36),
        .I2(gr04[2]),
        .I3(gr4_bus1__0_37),
        .O(\badr[2]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_18 
       (.I0(gr01[2]),
        .I1(gr1_bus1__0_32),
        .I2(gr02[2]),
        .I3(gr2_bus1__0_33),
        .O(\badr[2]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_19 
       (.I0(gr07[2]),
        .I1(gr7_bus1__0_42),
        .I2(gr00[2]),
        .I3(gr0_bus1__0_43),
        .O(\badr[2]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_20 
       (.I0(gr05[2]),
        .I1(gr5_bus1__0_26),
        .I2(gr06[2]),
        .I3(gr6_bus1__0_27),
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
        .O(\grn_reg[2] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_16 
       (.I0(gr24[3]),
        .I1(gr4_bus1__0_24),
        .I2(gr25[3]),
        .I3(gr5_bus1__0_25),
        .O(\badr[3]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_17 
       (.I0(gr03[3]),
        .I1(gr3_bus1__0_36),
        .I2(gr04[3]),
        .I3(gr4_bus1__0_37),
        .O(\badr[3]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_18 
       (.I0(gr01[3]),
        .I1(gr1_bus1__0_32),
        .I2(gr02[3]),
        .I3(gr2_bus1__0_33),
        .O(\badr[3]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_19 
       (.I0(gr07[3]),
        .I1(gr7_bus1__0_42),
        .I2(gr00[3]),
        .I3(gr0_bus1__0_43),
        .O(\badr[3]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_20 
       (.I0(gr05[3]),
        .I1(gr5_bus1__0_26),
        .I2(gr06[3]),
        .I3(gr6_bus1__0_27),
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
        .O(\grn_reg[3] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_16 
       (.I0(gr24[4]),
        .I1(gr4_bus1__0_24),
        .I2(gr25[4]),
        .I3(gr5_bus1__0_25),
        .O(\badr[4]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_17 
       (.I0(gr03[4]),
        .I1(gr3_bus1__0_36),
        .I2(gr04[4]),
        .I3(gr4_bus1__0_37),
        .O(\badr[4]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_18 
       (.I0(gr01[4]),
        .I1(gr1_bus1__0_32),
        .I2(gr02[4]),
        .I3(gr2_bus1__0_33),
        .O(\badr[4]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_19 
       (.I0(gr07[4]),
        .I1(gr7_bus1__0_42),
        .I2(gr00[4]),
        .I3(gr0_bus1__0_43),
        .O(\badr[4]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_20 
       (.I0(gr05[4]),
        .I1(gr5_bus1__0_26),
        .I2(gr06[4]),
        .I3(gr6_bus1__0_27),
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
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_16 
       (.I0(gr24[5]),
        .I1(gr4_bus1__0_24),
        .I2(gr25[5]),
        .I3(gr5_bus1__0_25),
        .O(\badr[5]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_17 
       (.I0(gr03[5]),
        .I1(gr3_bus1__0_36),
        .I2(gr04[5]),
        .I3(gr4_bus1__0_37),
        .O(\badr[5]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_18 
       (.I0(gr01[5]),
        .I1(gr1_bus1__0_32),
        .I2(gr02[5]),
        .I3(gr2_bus1__0_33),
        .O(\badr[5]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_19 
       (.I0(gr07[5]),
        .I1(gr7_bus1__0_42),
        .I2(gr00[5]),
        .I3(gr0_bus1__0_43),
        .O(\badr[5]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_20 
       (.I0(gr05[5]),
        .I1(gr5_bus1__0_26),
        .I2(gr06[5]),
        .I3(gr6_bus1__0_27),
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
       (.I0(gr24[6]),
        .I1(gr4_bus1__0_24),
        .I2(gr25[6]),
        .I3(gr5_bus1__0_25),
        .O(\badr[6]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_17 
       (.I0(gr03[6]),
        .I1(gr3_bus1__0_36),
        .I2(gr04[6]),
        .I3(gr4_bus1__0_37),
        .O(\badr[6]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_18 
       (.I0(gr01[6]),
        .I1(gr1_bus1__0_32),
        .I2(gr02[6]),
        .I3(gr2_bus1__0_33),
        .O(\badr[6]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_19 
       (.I0(gr07[6]),
        .I1(gr7_bus1__0_42),
        .I2(gr00[6]),
        .I3(gr0_bus1__0_43),
        .O(\badr[6]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_20 
       (.I0(gr05[6]),
        .I1(gr5_bus1__0_26),
        .I2(gr06[6]),
        .I3(gr6_bus1__0_27),
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
       (.I0(gr24[7]),
        .I1(gr4_bus1__0_24),
        .I2(gr25[7]),
        .I3(gr5_bus1__0_25),
        .O(\badr[7]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_17 
       (.I0(gr03[7]),
        .I1(gr3_bus1__0_36),
        .I2(gr04[7]),
        .I3(gr4_bus1__0_37),
        .O(\badr[7]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_18 
       (.I0(gr01[7]),
        .I1(gr1_bus1__0_32),
        .I2(gr02[7]),
        .I3(gr2_bus1__0_33),
        .O(\badr[7]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_19 
       (.I0(gr07[7]),
        .I1(gr7_bus1__0_42),
        .I2(gr00[7]),
        .I3(gr0_bus1__0_43),
        .O(\badr[7]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_20 
       (.I0(gr05[7]),
        .I1(gr5_bus1__0_26),
        .I2(gr06[7]),
        .I3(gr6_bus1__0_27),
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
       (.I0(gr24[8]),
        .I1(gr4_bus1__0_24),
        .I2(gr25[8]),
        .I3(gr5_bus1__0_25),
        .O(\badr[8]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_17 
       (.I0(gr03[8]),
        .I1(gr3_bus1__0_36),
        .I2(gr04[8]),
        .I3(gr4_bus1__0_37),
        .O(\badr[8]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_18 
       (.I0(gr01[8]),
        .I1(gr1_bus1__0_32),
        .I2(gr02[8]),
        .I3(gr2_bus1__0_33),
        .O(\badr[8]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_19 
       (.I0(gr07[8]),
        .I1(gr7_bus1__0_42),
        .I2(gr00[8]),
        .I3(gr0_bus1__0_43),
        .O(\badr[8]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_20 
       (.I0(gr05[8]),
        .I1(gr5_bus1__0_26),
        .I2(gr06[8]),
        .I3(gr6_bus1__0_27),
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
       (.I0(gr24[9]),
        .I1(gr4_bus1__0_24),
        .I2(gr25[9]),
        .I3(gr5_bus1__0_25),
        .O(\badr[9]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_17 
       (.I0(gr03[9]),
        .I1(gr3_bus1__0_36),
        .I2(gr04[9]),
        .I3(gr4_bus1__0_37),
        .O(\badr[9]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_18 
       (.I0(gr01[9]),
        .I1(gr1_bus1__0_32),
        .I2(gr02[9]),
        .I3(gr2_bus1__0_33),
        .O(\badr[9]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_19 
       (.I0(gr07[9]),
        .I1(gr7_bus1__0_42),
        .I2(gr00[9]),
        .I3(gr0_bus1__0_43),
        .O(\badr[9]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_20 
       (.I0(gr05[9]),
        .I1(gr5_bus1__0_26),
        .I2(gr06[9]),
        .I3(gr6_bus1__0_27),
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
    \bdatw[10]_INST_0_i_23 
       (.I0(gr22[2]),
        .I1(gr2_bus1__0),
        .I2(gr23[2]),
        .I3(gr3_bus1__0_2),
        .O(\bdatw[10]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_28 
       (.I0(gr24[2]),
        .I1(gr4_bus1__0_5),
        .I2(gr25[2]),
        .I3(gr5_bus1__0),
        .O(\bdatw[10]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[10]_INST_0_i_30 
       (.I0(gr20[10]),
        .I1(gr0_bus1__0),
        .I2(\bdatw[10]_INST_0_i_45_n_0 ),
        .I3(\bdatw[10]_INST_0_i_46_n_0 ),
        .I4(\bdatw[10]_INST_0_i_47_n_0 ),
        .I5(\bdatw[10]_INST_0_i_48_n_0 ),
        .O(\grn_reg[10] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_45 
       (.I0(gr05[10]),
        .I1(gr5_bus1__0_9),
        .I2(gr06[10]),
        .I3(gr6_bus1__0_10),
        .O(\bdatw[10]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_46 
       (.I0(gr07[10]),
        .I1(gr7_bus1__0_13),
        .I2(gr00[10]),
        .I3(gr0_bus1__0_14),
        .O(\bdatw[10]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_47 
       (.I0(gr01[10]),
        .I1(gr1_bus1__0_18),
        .I2(gr02[10]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[10]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_48 
       (.I0(gr03[10]),
        .I1(gr3_bus1__0_3),
        .I2(gr04[10]),
        .I3(gr4_bus1__0_4),
        .O(\bdatw[10]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[10]_INST_0_i_8 
       (.I0(\bdatw[10]_INST_0_i_23_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2 ),
        .I2(\bdatw[10]_INST_0_i_2_0 ),
        .I3(\bdatw[10]_INST_0_i_2_1 ),
        .I4(\bdatw[10]_INST_0_i_2_2 ),
        .I5(\bdatw[10]_INST_0_i_28_n_0 ),
        .O(\grn_reg[4]_7 [2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_22 
       (.I0(gr22[3]),
        .I1(gr2_bus1__0),
        .I2(gr23[3]),
        .I3(gr3_bus1__0_2),
        .O(\bdatw[11]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_27 
       (.I0(gr24[3]),
        .I1(gr4_bus1__0_5),
        .I2(gr25[3]),
        .I3(gr5_bus1__0),
        .O(\bdatw[11]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[11]_INST_0_i_29 
       (.I0(gr20[11]),
        .I1(gr0_bus1__0),
        .I2(\bdatw[11]_INST_0_i_44_n_0 ),
        .I3(\bdatw[11]_INST_0_i_45_n_0 ),
        .I4(\bdatw[11]_INST_0_i_46_n_0 ),
        .I5(\bdatw[11]_INST_0_i_47_n_0 ),
        .O(\grn_reg[11] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_44 
       (.I0(gr05[11]),
        .I1(gr5_bus1__0_9),
        .I2(gr06[11]),
        .I3(gr6_bus1__0_10),
        .O(\bdatw[11]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_45 
       (.I0(gr07[11]),
        .I1(gr7_bus1__0_13),
        .I2(gr00[11]),
        .I3(gr0_bus1__0_14),
        .O(\bdatw[11]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_46 
       (.I0(gr01[11]),
        .I1(gr1_bus1__0_18),
        .I2(gr02[11]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[11]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_47 
       (.I0(gr03[11]),
        .I1(gr3_bus1__0_3),
        .I2(gr04[11]),
        .I3(gr4_bus1__0_4),
        .O(\bdatw[11]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[11]_INST_0_i_9 
       (.I0(\bdatw[11]_INST_0_i_22_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .I2(\bdatw[11]_INST_0_i_2_0 ),
        .I3(\bdatw[11]_INST_0_i_2_1 ),
        .I4(\bdatw[11]_INST_0_i_2_2 ),
        .I5(\bdatw[11]_INST_0_i_27_n_0 ),
        .O(\grn_reg[4]_7 [3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_22 
       (.I0(gr22[4]),
        .I1(gr2_bus1__0),
        .I2(gr23[4]),
        .I3(gr3_bus1__0_2),
        .O(\bdatw[12]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_27 
       (.I0(gr24[4]),
        .I1(gr4_bus1__0_5),
        .I2(gr25[4]),
        .I3(gr5_bus1__0),
        .O(\bdatw[12]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[12]_INST_0_i_32 
       (.I0(gr20[12]),
        .I1(gr0_bus1__0),
        .I2(\bdatw[12]_INST_0_i_67_n_0 ),
        .I3(\bdatw[12]_INST_0_i_68_n_0 ),
        .I4(\bdatw[12]_INST_0_i_69_n_0 ),
        .I5(\bdatw[12]_INST_0_i_70_n_0 ),
        .O(\grn_reg[12] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_67 
       (.I0(gr05[12]),
        .I1(gr5_bus1__0_9),
        .I2(gr06[12]),
        .I3(gr6_bus1__0_10),
        .O(\bdatw[12]_INST_0_i_67_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_68 
       (.I0(gr07[12]),
        .I1(gr7_bus1__0_13),
        .I2(gr00[12]),
        .I3(gr0_bus1__0_14),
        .O(\bdatw[12]_INST_0_i_68_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_69 
       (.I0(gr01[12]),
        .I1(gr1_bus1__0_18),
        .I2(gr02[12]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[12]_INST_0_i_69_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_70 
       (.I0(gr03[12]),
        .I1(gr3_bus1__0_3),
        .I2(gr04[12]),
        .I3(gr4_bus1__0_4),
        .O(\bdatw[12]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[12]_INST_0_i_8 
       (.I0(\bdatw[12]_INST_0_i_22_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2 ),
        .I2(\bdatw[12]_INST_0_i_2_0 ),
        .I3(\bdatw[12]_INST_0_i_2_1 ),
        .I4(\bdatw[12]_INST_0_i_2_2 ),
        .I5(\bdatw[12]_INST_0_i_27_n_0 ),
        .O(\grn_reg[4]_7 [4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_19 
       (.I0(gr20[13]),
        .I1(gr0_bus1__0),
        .I2(\bdatw[13]_INST_0_i_28_n_0 ),
        .I3(\bdatw[13]_INST_0_i_29_n_0 ),
        .I4(\bdatw[13]_INST_0_i_30_n_0 ),
        .I5(\bdatw[13]_INST_0_i_31_n_0 ),
        .O(\grn_reg[13] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_28 
       (.I0(gr05[13]),
        .I1(gr5_bus1__0_9),
        .I2(gr06[13]),
        .I3(gr6_bus1__0_10),
        .O(\bdatw[13]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_29 
       (.I0(gr07[13]),
        .I1(gr7_bus1__0_13),
        .I2(gr00[13]),
        .I3(gr0_bus1__0_14),
        .O(\bdatw[13]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_30 
       (.I0(gr01[13]),
        .I1(gr1_bus1__0_18),
        .I2(gr02[13]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[13]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_31 
       (.I0(gr03[13]),
        .I1(gr3_bus1__0_3),
        .I2(gr04[13]),
        .I3(gr4_bus1__0_4),
        .O(\bdatw[13]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_16 
       (.I0(gr20[14]),
        .I1(gr0_bus1__0),
        .I2(\bdatw[14]_INST_0_i_25_n_0 ),
        .I3(\bdatw[14]_INST_0_i_26_n_0 ),
        .I4(\bdatw[14]_INST_0_i_27_n_0 ),
        .I5(\bdatw[14]_INST_0_i_28_n_0 ),
        .O(\grn_reg[14] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_25 
       (.I0(gr05[14]),
        .I1(gr5_bus1__0_9),
        .I2(gr06[14]),
        .I3(gr6_bus1__0_10),
        .O(\bdatw[14]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_26 
       (.I0(gr07[14]),
        .I1(gr7_bus1__0_13),
        .I2(gr00[14]),
        .I3(gr0_bus1__0_14),
        .O(\bdatw[14]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_27 
       (.I0(gr01[14]),
        .I1(gr1_bus1__0_18),
        .I2(gr02[14]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[14]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_28 
       (.I0(gr03[14]),
        .I1(gr3_bus1__0_3),
        .I2(gr04[14]),
        .I3(gr4_bus1__0_4),
        .O(\bdatw[14]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_54 
       (.I0(gr20[15]),
        .I1(gr0_bus1__0),
        .I2(\bdatw[15]_INST_0_i_96_n_0 ),
        .I3(\bdatw[15]_INST_0_i_97_n_0 ),
        .I4(\bdatw[15]_INST_0_i_98_n_0 ),
        .I5(\bdatw[15]_INST_0_i_99_n_0 ),
        .O(\grn_reg[15]_6 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_96 
       (.I0(gr05[15]),
        .I1(gr5_bus1__0_9),
        .I2(gr06[15]),
        .I3(gr6_bus1__0_10),
        .O(\bdatw[15]_INST_0_i_96_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_97 
       (.I0(gr07[15]),
        .I1(gr7_bus1__0_13),
        .I2(gr00[15]),
        .I3(gr0_bus1__0_14),
        .O(\bdatw[15]_INST_0_i_97_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_98 
       (.I0(gr01[15]),
        .I1(gr1_bus1__0_18),
        .I2(gr02[15]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[15]_INST_0_i_98_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_99 
       (.I0(gr03[15]),
        .I1(gr3_bus1__0_3),
        .I2(gr04[15]),
        .I3(gr4_bus1__0_4),
        .O(\bdatw[15]_INST_0_i_99_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_24 
       (.I0(gr22[0]),
        .I1(gr2_bus1__0),
        .I2(gr23[0]),
        .I3(gr3_bus1__0_2),
        .O(\bdatw[8]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_29 
       (.I0(gr24[0]),
        .I1(gr4_bus1__0_5),
        .I2(gr25[0]),
        .I3(gr5_bus1__0),
        .O(\bdatw[8]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[8]_INST_0_i_31 
       (.I0(gr20[8]),
        .I1(gr0_bus1__0),
        .I2(\bdatw[8]_INST_0_i_45_n_0 ),
        .I3(\bdatw[8]_INST_0_i_46_n_0 ),
        .I4(\bdatw[8]_INST_0_i_47_n_0 ),
        .I5(\bdatw[8]_INST_0_i_48_n_0 ),
        .O(\grn_reg[8] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_45 
       (.I0(gr05[8]),
        .I1(gr5_bus1__0_9),
        .I2(gr06[8]),
        .I3(gr6_bus1__0_10),
        .O(\bdatw[8]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_46 
       (.I0(gr07[8]),
        .I1(gr7_bus1__0_13),
        .I2(gr00[8]),
        .I3(gr0_bus1__0_14),
        .O(\bdatw[8]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_47 
       (.I0(gr01[8]),
        .I1(gr1_bus1__0_18),
        .I2(gr02[8]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[8]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_48 
       (.I0(gr03[8]),
        .I1(gr3_bus1__0_3),
        .I2(gr04[8]),
        .I3(gr4_bus1__0_4),
        .O(\bdatw[8]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[8]_INST_0_i_8 
       (.I0(\bdatw[8]_INST_0_i_24_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .I4(\bdatw[8]_INST_0_i_2_2 ),
        .I5(\bdatw[8]_INST_0_i_29_n_0 ),
        .O(\grn_reg[4]_7 [0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_23 
       (.I0(gr22[1]),
        .I1(gr2_bus1__0),
        .I2(gr23[1]),
        .I3(gr3_bus1__0_2),
        .O(\bdatw[9]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_28 
       (.I0(gr24[1]),
        .I1(gr4_bus1__0_5),
        .I2(gr25[1]),
        .I3(gr5_bus1__0),
        .O(\bdatw[9]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[9]_INST_0_i_30 
       (.I0(gr20[9]),
        .I1(gr0_bus1__0),
        .I2(\bdatw[9]_INST_0_i_44_n_0 ),
        .I3(\bdatw[9]_INST_0_i_45_n_0 ),
        .I4(\bdatw[9]_INST_0_i_46_n_0 ),
        .I5(\bdatw[9]_INST_0_i_47_n_0 ),
        .O(\grn_reg[9] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_44 
       (.I0(gr05[9]),
        .I1(gr5_bus1__0_9),
        .I2(gr06[9]),
        .I3(gr6_bus1__0_10),
        .O(\bdatw[9]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_45 
       (.I0(gr07[9]),
        .I1(gr7_bus1__0_13),
        .I2(gr00[9]),
        .I3(gr0_bus1__0_14),
        .O(\bdatw[9]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_46 
       (.I0(gr01[9]),
        .I1(gr1_bus1__0_18),
        .I2(gr02[9]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[9]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_47 
       (.I0(gr03[9]),
        .I1(gr3_bus1__0_3),
        .I2(gr04[9]),
        .I3(gr4_bus1__0_4),
        .O(\bdatw[9]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[9]_INST_0_i_8 
       (.I0(\bdatw[9]_INST_0_i_23_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\bdatw[9]_INST_0_i_2_1 ),
        .I4(\bdatw[9]_INST_0_i_2_2 ),
        .I5(\bdatw[9]_INST_0_i_28_n_0 ),
        .O(\grn_reg[4]_7 [1]));
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
        .\bdatw[15]_INST_0_i_62_0 (gr03[7:5]),
        .\bdatw[15]_INST_0_i_62_1 (gr04[7:5]),
        .\bdatw[15]_INST_0_i_62_2 (gr05[7:5]),
        .\bdatw[15]_INST_0_i_62_3 (gr06[7:5]),
        .\bdatw[15]_INST_0_i_62_4 (gr07[7:5]),
        .\bdatw[15]_INST_0_i_62_5 (gr00[7:5]),
        .\bdatw[15]_INST_0_i_62_6 (gr01[7:5]),
        .\bdatw[15]_INST_0_i_62_7 (gr02[7:5]),
        .clk(clk),
        .gr0_bus1__0(gr0_bus1__0),
        .gr0_bus1__0_14(gr0_bus1__0_14),
        .gr1_bus1__0_18(gr1_bus1__0_18),
        .gr2_bus1__0_19(gr2_bus1__0_19),
        .gr3_bus1__0_3(gr3_bus1__0_3),
        .gr4_bus1__0_4(gr4_bus1__0_4),
        .gr5_bus1__0_9(gr5_bus1__0_9),
        .gr6_bus1__0_10(gr6_bus1__0_10),
        .gr7_bus1__0_13(gr7_bus1__0_13),
        .\grn_reg[15]_0 (\grn_reg[15]_23 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ),
        .\grn_reg[5]_0 (\grn_reg[5] ),
        .\grn_reg[6]_0 (\grn_reg[6] ),
        .\grn_reg[7]_0 (\grn_reg[7] ),
        .out(gr20[7:5]));
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
    \grn_reg[0] ,
    \grn_reg[1] ,
    \grn_reg[2] ,
    \grn_reg[3] ,
    \grn_reg[4]_11 ,
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
    \iv[11]_i_17_0 ,
    \iv[13]_i_35_0 ,
    \iv[13]_i_16_0 ,
    \iv[14]_i_22 ,
    tout__1_carry_i_10,
    \iv[0]_i_17_0 ,
    \sr_reg[6]_0 ,
    \sr[6]_i_9_0 ,
    \bdatw[8]_INST_0_i_2 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \iv[0]_i_16 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \iv[13]_i_21_0 ,
    \iv[13]_i_30_0 ,
    \iv[12]_i_15_0 ,
    \iv[0]_i_16_0 ,
    \iv[0]_i_16_1 ,
    \iv[13]_i_20_0 ,
    \sr[7]_i_12_0 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \bdatw[8]_INST_0_i_2_3 ,
    tout__1_carry_i_9,
    \iv[13]_i_35_1 ,
    \iv[0]_i_16_2 ,
    \iv[8]_i_20_0 ,
    \iv[6]_i_12 ,
    \iv[0]_i_16_3 ,
    \sr_reg[6]_1 ,
    \badr[13]_INST_0_i_1_0 ,
    \iv[1]_i_14_0 ,
    \iv[5]_i_15_0 ,
    \sr_reg[6]_2 ,
    \sr_reg[6]_3 ,
    \badr[2]_INST_0_i_1_0 ,
    \badr[4]_INST_0_i_1_0 ,
    \badr[15]_INST_0_i_1_0 ,
    \iv[6]_i_18_0 ,
    \iv[10]_i_20_0 ,
    \sr_reg[6]_4 ,
    \iv[5]_i_15_1 ,
    \iv[5]_i_15_2 ,
    \iv[13]_i_28_0 ,
    \iv[14]_i_22_0 ,
    \iv[14]_i_37_0 ,
    \iv[0]_i_16_4 ,
    \iv[0]_i_16_5 ,
    \iv[0]_i_16_6 ,
    \iv[14]_i_37_1 ,
    \iv[13]_i_25_0 ,
    \iv[0]_i_17_1 ,
    \iv[14]_i_22_1 ,
    \iv[13]_i_24_0 ,
    \iv[0]_i_15_0 ,
    tout__1_carry_i_10_0,
    abus_o,
    \iv[0]_i_18_0 ,
    \iv[14]_i_31 ,
    \iv[13]_i_28_1 ,
    \sr_reg[6]_5 ,
    \sr_reg[6]_6 ,
    \sr_reg[6]_7 ,
    \iv[11]_i_21_0 ,
    \bdatw[8]_INST_0_i_2_4 ,
    \bdatw[8]_INST_0_i_2_5 ,
    \bdatw[8]_INST_0_i_2_6 ,
    \bdatw[8]_INST_0_i_2_7 ,
    \bdatw[8]_INST_0_i_2_8 ,
    \bdatw[8]_INST_0_i_2_9 ,
    \bdatw[8]_INST_0_i_2_10 ,
    \bdatw[8]_INST_0_i_2_11 ,
    \bdatw[8]_INST_0_i_2_12 ,
    \badr[15]_INST_0_i_1_1 ,
    \sr_reg[6]_8 ,
    \sr_reg[6]_9 ,
    \sr_reg[6]_10 ,
    \bdatw[8]_INST_0_i_2_13 ,
    \iv[13]_i_28_2 ,
    gr7_bus1__0,
    gr0_bus1__0,
    out,
    \bdatw[8]_INST_0_i_14_0 ,
    gr3_bus1__0,
    gr4_bus1__0,
    gr3_bus1__0_0,
    gr4_bus1__0_1,
    gr5_bus1__0_6,
    gr6_bus1__0,
    gr5_bus1__0_7,
    gr6_bus1__0_8,
    gr7_bus1__0_11,
    gr0_bus1__0_12,
    gr1_bus1__0,
    gr2_bus1__0_15,
    gr1_bus1__0_16,
    gr2_bus1__0_17,
    .abus_o_0_sp_1(abus_o_0_sn_1),
    \abus_o[0]_0 ,
    \abus_o[0]_1 ,
    \abus_o[0]_2 ,
    gr3_bus1__0_1,
    gr4_bus1__0_2,
    gr5_bus1__0_20,
    gr6_bus1__0_21,
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
    \badr[0]_INST_0_i_1_0 ,
    gr5_bus1__0_22,
    gr6_bus1__0_23,
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
    gr1_bus1__0_28,
    gr2_bus1__0_29,
    gr1_bus1__0_30,
    gr2_bus1__0_31,
    gr3_bus1__0_34,
    gr4_bus1__0_35,
    gr7_bus1__0_38,
    gr0_bus1__0_39,
    gr7_bus1__0_40,
    gr0_bus1__0_41,
    \iv[8]_i_5 ,
    \iv[8]_i_5_0 ,
    \iv[2]_i_2 ,
    \iv[2]_i_2_0 ,
    \iv[2]_i_2_1 ,
    \iv[8]_i_14_0 ,
    \iv[5]_i_2 ,
    \iv[5]_i_2_0 ,
    \iv[13]_i_2 ,
    \iv[13]_i_2_0 ,
    \iv[5]_i_8_0 ,
    \iv[13]_i_7 ,
    \iv[13]_i_2_1 ,
    \iv[5]_i_2_1 ,
    \iv[2]_i_8 ,
    \iv[9]_i_7 ,
    \iv[11]_i_9 ,
    \iv[14]_i_4 ,
    \iv[6]_i_8_0 ,
    \abus_o[15]_3 ,
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
  output \grn_reg[0] ;
  output \grn_reg[1] ;
  output \grn_reg[2] ;
  output \grn_reg[3] ;
  output \grn_reg[4]_11 ;
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
  output \iv[11]_i_17_0 ;
  output \iv[13]_i_35_0 ;
  output \iv[13]_i_16_0 ;
  output \iv[14]_i_22 ;
  output tout__1_carry_i_10;
  output \iv[0]_i_17_0 ;
  output \sr_reg[6]_0 ;
  output \sr[6]_i_9_0 ;
  output \bdatw[8]_INST_0_i_2 ;
  output \bdatw[8]_INST_0_i_2_0 ;
  output \iv[0]_i_16 ;
  output \bdatw[8]_INST_0_i_2_1 ;
  output \iv[13]_i_21_0 ;
  output \iv[13]_i_30_0 ;
  output \iv[12]_i_15_0 ;
  output \iv[0]_i_16_0 ;
  output \iv[0]_i_16_1 ;
  output \iv[13]_i_20_0 ;
  output \sr[7]_i_12_0 ;
  output \bdatw[8]_INST_0_i_2_2 ;
  output \bdatw[8]_INST_0_i_2_3 ;
  output tout__1_carry_i_9;
  output \iv[13]_i_35_1 ;
  output \iv[0]_i_16_2 ;
  output \iv[8]_i_20_0 ;
  output \iv[6]_i_12 ;
  output \iv[0]_i_16_3 ;
  output \sr_reg[6]_1 ;
  output \badr[13]_INST_0_i_1_0 ;
  output \iv[1]_i_14_0 ;
  output \iv[5]_i_15_0 ;
  output \sr_reg[6]_2 ;
  output \sr_reg[6]_3 ;
  output \badr[2]_INST_0_i_1_0 ;
  output \badr[4]_INST_0_i_1_0 ;
  output \badr[15]_INST_0_i_1_0 ;
  output \iv[6]_i_18_0 ;
  output \iv[10]_i_20_0 ;
  output \sr_reg[6]_4 ;
  output \iv[5]_i_15_1 ;
  output \iv[5]_i_15_2 ;
  output \iv[13]_i_28_0 ;
  output \iv[14]_i_22_0 ;
  output \iv[14]_i_37_0 ;
  output \iv[0]_i_16_4 ;
  output \iv[0]_i_16_5 ;
  output \iv[0]_i_16_6 ;
  output \iv[14]_i_37_1 ;
  output \iv[13]_i_25_0 ;
  output \iv[0]_i_17_1 ;
  output \iv[14]_i_22_1 ;
  output \iv[13]_i_24_0 ;
  output \iv[0]_i_15_0 ;
  output tout__1_carry_i_10_0;
  output [15:0]abus_o;
  output \iv[0]_i_18_0 ;
  output \iv[14]_i_31 ;
  output \iv[13]_i_28_1 ;
  output \sr_reg[6]_5 ;
  output \sr_reg[6]_6 ;
  output \sr_reg[6]_7 ;
  output \iv[11]_i_21_0 ;
  output \bdatw[8]_INST_0_i_2_4 ;
  output \bdatw[8]_INST_0_i_2_5 ;
  output \bdatw[8]_INST_0_i_2_6 ;
  output \bdatw[8]_INST_0_i_2_7 ;
  output \bdatw[8]_INST_0_i_2_8 ;
  output \bdatw[8]_INST_0_i_2_9 ;
  output \bdatw[8]_INST_0_i_2_10 ;
  output \bdatw[8]_INST_0_i_2_11 ;
  output \bdatw[8]_INST_0_i_2_12 ;
  output \badr[15]_INST_0_i_1_1 ;
  output \sr_reg[6]_8 ;
  output \sr_reg[6]_9 ;
  output \sr_reg[6]_10 ;
  output \bdatw[8]_INST_0_i_2_13 ;
  output \iv[13]_i_28_2 ;
  input gr7_bus1__0;
  input gr0_bus1__0;
  input [10:0]out;
  input [0:0]\bdatw[8]_INST_0_i_14_0 ;
  input gr3_bus1__0;
  input gr4_bus1__0;
  input gr3_bus1__0_0;
  input gr4_bus1__0_1;
  input gr5_bus1__0_6;
  input gr6_bus1__0;
  input gr5_bus1__0_7;
  input gr6_bus1__0_8;
  input gr7_bus1__0_11;
  input gr0_bus1__0_12;
  input gr1_bus1__0;
  input gr2_bus1__0_15;
  input gr1_bus1__0_16;
  input gr2_bus1__0_17;
  input \abus_o[0]_0 ;
  input \abus_o[0]_1 ;
  input \abus_o[0]_2 ;
  input gr3_bus1__0_1;
  input gr4_bus1__0_2;
  input gr5_bus1__0_20;
  input gr6_bus1__0_21;
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
  input \badr[0]_INST_0_i_1_0 ;
  input gr5_bus1__0_22;
  input gr6_bus1__0_23;
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
  input gr1_bus1__0_28;
  input gr2_bus1__0_29;
  input gr1_bus1__0_30;
  input gr2_bus1__0_31;
  input gr3_bus1__0_34;
  input gr4_bus1__0_35;
  input gr7_bus1__0_38;
  input gr0_bus1__0_39;
  input gr7_bus1__0_40;
  input gr0_bus1__0_41;
  input \iv[8]_i_5 ;
  input \iv[8]_i_5_0 ;
  input \iv[2]_i_2 ;
  input \iv[2]_i_2_0 ;
  input \iv[2]_i_2_1 ;
  input \iv[8]_i_14_0 ;
  input \iv[5]_i_2 ;
  input \iv[5]_i_2_0 ;
  input \iv[13]_i_2 ;
  input \iv[13]_i_2_0 ;
  input \iv[5]_i_8_0 ;
  input \iv[13]_i_7 ;
  input \iv[13]_i_2_1 ;
  input \iv[5]_i_2_1 ;
  input \iv[2]_i_8 ;
  input \iv[9]_i_7 ;
  input \iv[11]_i_9 ;
  input \iv[14]_i_4 ;
  input \iv[6]_i_8_0 ;
  input \abus_o[15]_3 ;
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
  wire \abus_o[15]_3 ;
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
  wire \badr[15]_INST_0_i_1_2 ;
  wire \badr[15]_INST_0_i_2_n_0 ;
  wire \badr[15]_INST_0_i_3_n_0 ;
  wire \badr[15]_INST_0_i_8_n_0 ;
  wire \badr[15]_INST_0_i_9_n_0 ;
  wire \badr[1]_INST_0_i_10_n_0 ;
  wire \badr[1]_INST_0_i_11_n_0 ;
  wire \badr[1]_INST_0_i_12_n_0 ;
  wire \badr[1]_INST_0_i_14_n_0 ;
  wire \badr[1]_INST_0_i_15_n_0 ;
  wire \badr[1]_INST_0_i_1_0 ;
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
  wire \bdatw[10]_INST_0_i_31_n_0 ;
  wire \bdatw[10]_INST_0_i_32_n_0 ;
  wire \bdatw[10]_INST_0_i_49_n_0 ;
  wire \bdatw[10]_INST_0_i_50_n_0 ;
  wire \bdatw[10]_INST_0_i_51_n_0 ;
  wire \bdatw[10]_INST_0_i_52_n_0 ;
  wire \bdatw[10]_INST_0_i_53_n_0 ;
  wire \bdatw[10]_INST_0_i_54_n_0 ;
  wire \bdatw[11]_INST_0_i_30_n_0 ;
  wire \bdatw[11]_INST_0_i_31_n_0 ;
  wire \bdatw[11]_INST_0_i_48_n_0 ;
  wire \bdatw[11]_INST_0_i_49_n_0 ;
  wire \bdatw[11]_INST_0_i_50_n_0 ;
  wire \bdatw[11]_INST_0_i_51_n_0 ;
  wire \bdatw[11]_INST_0_i_52_n_0 ;
  wire \bdatw[11]_INST_0_i_53_n_0 ;
  wire \bdatw[12]_INST_0_i_33_n_0 ;
  wire \bdatw[12]_INST_0_i_34_n_0 ;
  wire \bdatw[12]_INST_0_i_71_n_0 ;
  wire \bdatw[12]_INST_0_i_72_n_0 ;
  wire \bdatw[12]_INST_0_i_73_n_0 ;
  wire \bdatw[12]_INST_0_i_74_n_0 ;
  wire \bdatw[12]_INST_0_i_75_n_0 ;
  wire \bdatw[12]_INST_0_i_76_n_0 ;
  wire \bdatw[13]_INST_0_i_20_n_0 ;
  wire \bdatw[13]_INST_0_i_21_n_0 ;
  wire \bdatw[13]_INST_0_i_32_n_0 ;
  wire \bdatw[13]_INST_0_i_33_n_0 ;
  wire \bdatw[13]_INST_0_i_34_n_0 ;
  wire \bdatw[13]_INST_0_i_35_n_0 ;
  wire \bdatw[13]_INST_0_i_36_n_0 ;
  wire \bdatw[13]_INST_0_i_37_n_0 ;
  wire \bdatw[14]_INST_0_i_17_n_0 ;
  wire \bdatw[14]_INST_0_i_18_n_0 ;
  wire \bdatw[14]_INST_0_i_29_n_0 ;
  wire \bdatw[14]_INST_0_i_30_n_0 ;
  wire \bdatw[14]_INST_0_i_31_n_0 ;
  wire \bdatw[14]_INST_0_i_32_n_0 ;
  wire \bdatw[14]_INST_0_i_33_n_0 ;
  wire \bdatw[14]_INST_0_i_34_n_0 ;
  wire \bdatw[15]_INST_0_i_100_n_0 ;
  wire \bdatw[15]_INST_0_i_101_n_0 ;
  wire \bdatw[15]_INST_0_i_103_n_0 ;
  wire \bdatw[15]_INST_0_i_104_n_0 ;
  wire \bdatw[15]_INST_0_i_105_n_0 ;
  wire \bdatw[15]_INST_0_i_106_n_0 ;
  wire \bdatw[15]_INST_0_i_57_n_0 ;
  wire \bdatw[15]_INST_0_i_58_n_0 ;
  wire [0:0]\bdatw[8]_INST_0_i_14_0 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_10 ;
  wire \bdatw[8]_INST_0_i_2_11 ;
  wire \bdatw[8]_INST_0_i_2_12 ;
  wire \bdatw[8]_INST_0_i_2_13 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_2_3 ;
  wire \bdatw[8]_INST_0_i_2_4 ;
  wire \bdatw[8]_INST_0_i_2_5 ;
  wire \bdatw[8]_INST_0_i_2_6 ;
  wire \bdatw[8]_INST_0_i_2_7 ;
  wire \bdatw[8]_INST_0_i_2_8 ;
  wire \bdatw[8]_INST_0_i_2_9 ;
  wire \bdatw[8]_INST_0_i_32_n_0 ;
  wire \bdatw[8]_INST_0_i_33_n_0 ;
  wire \bdatw[8]_INST_0_i_49_n_0 ;
  wire \bdatw[8]_INST_0_i_50_n_0 ;
  wire \bdatw[8]_INST_0_i_51_n_0 ;
  wire \bdatw[8]_INST_0_i_52_n_0 ;
  wire \bdatw[8]_INST_0_i_53_n_0 ;
  wire \bdatw[8]_INST_0_i_54_n_0 ;
  wire \bdatw[9]_INST_0_i_31_n_0 ;
  wire \bdatw[9]_INST_0_i_32_n_0 ;
  wire \bdatw[9]_INST_0_i_48_n_0 ;
  wire \bdatw[9]_INST_0_i_49_n_0 ;
  wire \bdatw[9]_INST_0_i_50_n_0 ;
  wire \bdatw[9]_INST_0_i_51_n_0 ;
  wire \bdatw[9]_INST_0_i_52_n_0 ;
  wire \bdatw[9]_INST_0_i_53_n_0 ;
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
  wire gr0_bus1__0_12;
  wire gr0_bus1__0_39;
  wire gr0_bus1__0_41;
  wire gr1_bus1__0;
  wire gr1_bus1__0_16;
  wire gr1_bus1__0_28;
  wire gr1_bus1__0_30;
  (* DONT_TOUCH *) wire [15:0]gr20;
  (* DONT_TOUCH *) wire [15:0]gr21;
  (* DONT_TOUCH *) wire [15:0]gr22;
  (* DONT_TOUCH *) wire [15:0]gr23;
  (* DONT_TOUCH *) wire [15:0]gr24;
  (* DONT_TOUCH *) wire [15:0]gr25;
  (* DONT_TOUCH *) wire [15:0]gr26;
  (* DONT_TOUCH *) wire [15:0]gr27;
  wire gr2_bus1__0_15;
  wire gr2_bus1__0_17;
  wire gr2_bus1__0_29;
  wire gr2_bus1__0_31;
  wire gr3_bus1__0;
  wire gr3_bus1__0_0;
  wire gr3_bus1__0_1;
  wire gr3_bus1__0_34;
  wire gr4_bus1__0;
  wire gr4_bus1__0_1;
  wire gr4_bus1__0_2;
  wire gr4_bus1__0_35;
  wire gr5_bus1__0_20;
  wire gr5_bus1__0_22;
  wire gr5_bus1__0_6;
  wire gr5_bus1__0_7;
  wire gr6_bus1__0;
  wire gr6_bus1__0_21;
  wire gr6_bus1__0_23;
  wire gr6_bus1__0_8;
  wire gr7_bus1__0;
  wire gr7_bus1__0_11;
  wire gr7_bus1__0_38;
  wire gr7_bus1__0_40;
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
  wire \iv[0]_i_15_0 ;
  wire \iv[0]_i_15_n_0 ;
  wire \iv[0]_i_16 ;
  wire \iv[0]_i_16_0 ;
  wire \iv[0]_i_16_1 ;
  wire \iv[0]_i_16_2 ;
  wire \iv[0]_i_16_3 ;
  wire \iv[0]_i_16_4 ;
  wire \iv[0]_i_16_5 ;
  wire \iv[0]_i_16_6 ;
  wire \iv[0]_i_17_0 ;
  wire \iv[0]_i_17_1 ;
  wire \iv[0]_i_17_n_0 ;
  wire \iv[0]_i_18_0 ;
  wire \iv[0]_i_18_n_0 ;
  wire \iv[10]_i_20_0 ;
  wire \iv[11]_i_17_0 ;
  wire \iv[11]_i_21_0 ;
  wire \iv[11]_i_21_n_0 ;
  wire \iv[11]_i_22_n_0 ;
  wire \iv[11]_i_9 ;
  wire \iv[12]_i_15_0 ;
  wire \iv[13]_i_16_0 ;
  wire \iv[13]_i_16_n_0 ;
  wire \iv[13]_i_18_n_0 ;
  wire \iv[13]_i_19_n_0 ;
  wire \iv[13]_i_2 ;
  wire \iv[13]_i_20_0 ;
  wire \iv[13]_i_20_n_0 ;
  wire \iv[13]_i_21_0 ;
  wire \iv[13]_i_21_n_0 ;
  wire \iv[13]_i_22_n_0 ;
  wire \iv[13]_i_24_0 ;
  wire \iv[13]_i_24_n_0 ;
  wire \iv[13]_i_25_0 ;
  wire \iv[13]_i_25_n_0 ;
  wire \iv[13]_i_26_n_0 ;
  wire \iv[13]_i_28_0 ;
  wire \iv[13]_i_28_1 ;
  wire \iv[13]_i_28_2 ;
  wire \iv[13]_i_2_0 ;
  wire \iv[13]_i_2_1 ;
  wire \iv[13]_i_30_0 ;
  wire \iv[13]_i_30_n_0 ;
  wire \iv[13]_i_31_n_0 ;
  wire \iv[13]_i_32_n_0 ;
  wire \iv[13]_i_33_n_0 ;
  wire \iv[13]_i_34_n_0 ;
  wire \iv[13]_i_35_0 ;
  wire \iv[13]_i_35_1 ;
  wire \iv[13]_i_35_n_0 ;
  wire \iv[13]_i_36_n_0 ;
  wire \iv[13]_i_7 ;
  wire \iv[14]_i_22 ;
  wire \iv[14]_i_22_0 ;
  wire \iv[14]_i_22_1 ;
  wire \iv[14]_i_31 ;
  wire \iv[14]_i_37_0 ;
  wire \iv[14]_i_37_1 ;
  wire \iv[14]_i_4 ;
  wire \iv[1]_i_12_n_0 ;
  wire \iv[1]_i_13_n_0 ;
  wire \iv[1]_i_14_0 ;
  wire \iv[2]_i_12_n_0 ;
  wire \iv[2]_i_13_n_0 ;
  wire \iv[2]_i_2 ;
  wire \iv[2]_i_2_0 ;
  wire \iv[2]_i_2_1 ;
  wire \iv[2]_i_8 ;
  wire \iv[4]_i_12_n_0 ;
  wire \iv[4]_i_13_n_0 ;
  wire \iv[5]_i_14_n_0 ;
  wire \iv[5]_i_15_0 ;
  wire \iv[5]_i_15_1 ;
  wire \iv[5]_i_15_2 ;
  wire \iv[5]_i_15_n_0 ;
  wire \iv[5]_i_16_n_0 ;
  wire \iv[5]_i_17_n_0 ;
  wire \iv[5]_i_2 ;
  wire \iv[5]_i_2_0 ;
  wire \iv[5]_i_2_1 ;
  wire \iv[5]_i_8_0 ;
  wire \iv[6]_i_12 ;
  wire \iv[6]_i_16_n_0 ;
  wire \iv[6]_i_18_0 ;
  wire \iv[6]_i_18_n_0 ;
  wire \iv[6]_i_20_n_0 ;
  wire \iv[6]_i_8_0 ;
  wire \iv[8]_i_14_0 ;
  wire \iv[8]_i_20_0 ;
  wire \iv[8]_i_20_n_0 ;
  wire \iv[8]_i_21_n_0 ;
  wire \iv[8]_i_22_n_0 ;
  wire \iv[8]_i_23_n_0 ;
  wire \iv[8]_i_24_n_0 ;
  wire \iv[8]_i_25_n_0 ;
  wire \iv[8]_i_5 ;
  wire \iv[8]_i_5_0 ;
  wire \iv[9]_i_20_n_0 ;
  wire \iv[9]_i_21_n_0 ;
  wire \iv[9]_i_22_n_0 ;
  wire \iv[9]_i_7 ;
  wire [10:0]out;
  wire \sr[6]_i_9_0 ;
  wire \sr[6]_i_9_n_0 ;
  wire \sr[7]_i_12_0 ;
  wire \sr_reg[6] ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[6]_10 ;
  wire \sr_reg[6]_2 ;
  wire \sr_reg[6]_3 ;
  wire \sr_reg[6]_4 ;
  wire \sr_reg[6]_5 ;
  wire \sr_reg[6]_6 ;
  wire \sr_reg[6]_7 ;
  wire \sr_reg[6]_8 ;
  wire \sr_reg[6]_9 ;
  wire tout__1_carry_i_10;
  wire tout__1_carry_i_10_0;
  wire tout__1_carry_i_9;

  LUT2 #(
    .INIT(4'h2)) 
    \abus_o[0]_INST_0 
       (.I0(\grn_reg[0]_1 ),
        .I1(\abus_o[15]_3 ),
        .O(abus_o[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \abus_o[10]_INST_0 
       (.I0(\grn_reg[10]_0 ),
        .I1(\abus_o[15]_3 ),
        .O(abus_o[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \abus_o[11]_INST_0 
       (.I0(\grn_reg[11]_0 ),
        .I1(\abus_o[15]_3 ),
        .O(abus_o[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \abus_o[12]_INST_0 
       (.I0(\grn_reg[12]_0 ),
        .I1(\abus_o[15]_3 ),
        .O(abus_o[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \abus_o[13]_INST_0 
       (.I0(\grn_reg[13]_0 ),
        .I1(\abus_o[15]_3 ),
        .O(abus_o[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \abus_o[14]_INST_0 
       (.I0(\grn_reg[14]_0 ),
        .I1(\abus_o[15]_3 ),
        .O(abus_o[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \abus_o[15]_INST_0 
       (.I0(\grn_reg[15]_0 ),
        .I1(\abus_o[15]_3 ),
        .O(abus_o[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \abus_o[1]_INST_0 
       (.I0(\grn_reg[1]_1 ),
        .I1(\abus_o[15]_3 ),
        .O(abus_o[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \abus_o[2]_INST_0 
       (.I0(\grn_reg[2]_1 ),
        .I1(\abus_o[15]_3 ),
        .O(abus_o[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \abus_o[3]_INST_0 
       (.I0(\grn_reg[3]_1 ),
        .I1(\abus_o[15]_3 ),
        .O(abus_o[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \abus_o[4]_INST_0 
       (.I0(\grn_reg[4]_13 ),
        .I1(\abus_o[15]_3 ),
        .O(abus_o[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \abus_o[5]_INST_0 
       (.I0(\grn_reg[5]_0 ),
        .I1(\abus_o[15]_3 ),
        .O(abus_o[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \abus_o[6]_INST_0 
       (.I0(\grn_reg[6]_0 ),
        .I1(\abus_o[15]_3 ),
        .O(abus_o[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \abus_o[7]_INST_0 
       (.I0(\grn_reg[7]_0 ),
        .I1(\abus_o[15]_3 ),
        .O(abus_o[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \abus_o[8]_INST_0 
       (.I0(\grn_reg[8]_0 ),
        .I1(\abus_o[15]_3 ),
        .O(abus_o[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \abus_o[9]_INST_0 
       (.I0(\grn_reg[9]_0 ),
        .I1(\abus_o[15]_3 ),
        .O(abus_o[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[0]_INST_0_i_1 
       (.I0(\badr[0]_INST_0_i_2_n_0 ),
        .I1(\badr[0]_INST_0_i_3_n_0 ),
        .I2(abus_o_0_sn_1),
        .I3(\abus_o[0]_0 ),
        .I4(\abus_o[0]_1 ),
        .I5(\abus_o[0]_2 ),
        .O(\grn_reg[0]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_10 
       (.I0(gr01[0]),
        .I1(gr1_bus1__0_30),
        .I2(gr02[0]),
        .I3(gr2_bus1__0_31),
        .O(\badr[0]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_11 
       (.I0(gr07[0]),
        .I1(gr7_bus1__0_40),
        .I2(gr00[0]),
        .I3(gr0_bus1__0_41),
        .O(\badr[0]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_12 
       (.I0(gr05[0]),
        .I1(gr5_bus1__0_22),
        .I2(gr06[0]),
        .I3(gr6_bus1__0_23),
        .O(\badr[0]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_14 
       (.I0(gr25[0]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[0]),
        .I3(gr6_bus1__0_21),
        .O(\badr[0]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_15 
       (.I0(gr21[0]),
        .I1(gr1_bus1__0_28),
        .I2(gr22[0]),
        .I3(gr2_bus1__0_29),
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
        .I2(gr3_bus1__0_1),
        .I3(gr24[0]),
        .I4(gr4_bus1__0_2),
        .I5(\badr[0]_INST_0_i_15_n_0 ),
        .O(\badr[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_8 
       (.I0(gr27[0]),
        .I1(gr7_bus1__0_38),
        .I2(gr20[0]),
        .I3(gr0_bus1__0_39),
        .O(\badr[0]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_9 
       (.I0(gr03[0]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[0]),
        .I3(gr4_bus1__0_35),
        .O(\badr[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[10]_INST_0_i_1 
       (.I0(\badr[10]_INST_0_i_2_n_0 ),
        .I1(\badr[10]_INST_0_i_3_n_0 ),
        .I2(abus_o_10_sn_1),
        .I3(\abus_o[10]_0 ),
        .I4(\abus_o[10]_1 ),
        .I5(\abus_o[10]_2 ),
        .O(\grn_reg[10]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_10 
       (.I0(gr01[10]),
        .I1(gr1_bus1__0_30),
        .I2(gr02[10]),
        .I3(gr2_bus1__0_31),
        .O(\badr[10]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_11 
       (.I0(gr07[10]),
        .I1(gr7_bus1__0_40),
        .I2(gr00[10]),
        .I3(gr0_bus1__0_41),
        .O(\badr[10]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_12 
       (.I0(gr05[10]),
        .I1(gr5_bus1__0_22),
        .I2(gr06[10]),
        .I3(gr6_bus1__0_23),
        .O(\badr[10]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_14 
       (.I0(gr25[10]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[10]),
        .I3(gr6_bus1__0_21),
        .O(\badr[10]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_15 
       (.I0(gr21[10]),
        .I1(gr1_bus1__0_28),
        .I2(gr22[10]),
        .I3(gr2_bus1__0_29),
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
        .I1(gr23[10]),
        .I2(gr3_bus1__0_1),
        .I3(gr24[10]),
        .I4(gr4_bus1__0_2),
        .I5(\badr[10]_INST_0_i_15_n_0 ),
        .O(\badr[10]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_8 
       (.I0(gr27[10]),
        .I1(gr7_bus1__0_38),
        .I2(gr20[10]),
        .I3(gr0_bus1__0_39),
        .O(\badr[10]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_9 
       (.I0(gr03[10]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[10]),
        .I3(gr4_bus1__0_35),
        .O(\badr[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[11]_INST_0_i_1 
       (.I0(\badr[11]_INST_0_i_2_n_0 ),
        .I1(\badr[11]_INST_0_i_3_n_0 ),
        .I2(abus_o_11_sn_1),
        .I3(\abus_o[11]_0 ),
        .I4(\abus_o[11]_1 ),
        .I5(\abus_o[11]_2 ),
        .O(\grn_reg[11]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_10 
       (.I0(gr01[11]),
        .I1(gr1_bus1__0_30),
        .I2(gr02[11]),
        .I3(gr2_bus1__0_31),
        .O(\badr[11]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_11 
       (.I0(gr07[11]),
        .I1(gr7_bus1__0_40),
        .I2(gr00[11]),
        .I3(gr0_bus1__0_41),
        .O(\badr[11]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_12 
       (.I0(gr05[11]),
        .I1(gr5_bus1__0_22),
        .I2(gr06[11]),
        .I3(gr6_bus1__0_23),
        .O(\badr[11]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_14 
       (.I0(gr25[11]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[11]),
        .I3(gr6_bus1__0_21),
        .O(\badr[11]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_15 
       (.I0(gr21[11]),
        .I1(gr1_bus1__0_28),
        .I2(gr22[11]),
        .I3(gr2_bus1__0_29),
        .O(\badr[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[11]_INST_0_i_2 
       (.I0(\badr[11]_INST_0_i_8_n_0 ),
        .I1(\badr[11]_INST_0_i_9_n_0 ),
        .I2(\badr[11]_INST_0_i_10_n_0 ),
        .I3(\badr[11]_INST_0_i_11_n_0 ),
        .I4(\badr[11]_INST_0_i_12_n_0 ),
        .I5(\badr[11]_INST_0_i_1_0 ),
        .O(\badr[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[11]_INST_0_i_3 
       (.I0(\badr[11]_INST_0_i_14_n_0 ),
        .I1(gr23[11]),
        .I2(gr3_bus1__0_1),
        .I3(gr24[11]),
        .I4(gr4_bus1__0_2),
        .I5(\badr[11]_INST_0_i_15_n_0 ),
        .O(\badr[11]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_8 
       (.I0(gr27[11]),
        .I1(gr7_bus1__0_38),
        .I2(gr20[11]),
        .I3(gr0_bus1__0_39),
        .O(\badr[11]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_9 
       (.I0(gr03[11]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[11]),
        .I3(gr4_bus1__0_35),
        .O(\badr[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[12]_INST_0_i_1 
       (.I0(\badr[12]_INST_0_i_2_n_0 ),
        .I1(\badr[12]_INST_0_i_3_n_0 ),
        .I2(abus_o_12_sn_1),
        .I3(\abus_o[12]_0 ),
        .I4(\abus_o[12]_1 ),
        .I5(\abus_o[12]_2 ),
        .O(\grn_reg[12]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_10 
       (.I0(gr01[12]),
        .I1(gr1_bus1__0_30),
        .I2(gr02[12]),
        .I3(gr2_bus1__0_31),
        .O(\badr[12]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_11 
       (.I0(gr07[12]),
        .I1(gr7_bus1__0_40),
        .I2(gr00[12]),
        .I3(gr0_bus1__0_41),
        .O(\badr[12]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_12 
       (.I0(gr05[12]),
        .I1(gr5_bus1__0_22),
        .I2(gr06[12]),
        .I3(gr6_bus1__0_23),
        .O(\badr[12]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_14 
       (.I0(gr25[12]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[12]),
        .I3(gr6_bus1__0_21),
        .O(\badr[12]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_15 
       (.I0(gr21[12]),
        .I1(gr1_bus1__0_28),
        .I2(gr22[12]),
        .I3(gr2_bus1__0_29),
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
        .I1(gr23[12]),
        .I2(gr3_bus1__0_1),
        .I3(gr24[12]),
        .I4(gr4_bus1__0_2),
        .I5(\badr[12]_INST_0_i_15_n_0 ),
        .O(\badr[12]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_8 
       (.I0(gr27[12]),
        .I1(gr7_bus1__0_38),
        .I2(gr20[12]),
        .I3(gr0_bus1__0_39),
        .O(\badr[12]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_9 
       (.I0(gr03[12]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[12]),
        .I3(gr4_bus1__0_35),
        .O(\badr[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[13]_INST_0_i_1 
       (.I0(\badr[13]_INST_0_i_2_n_0 ),
        .I1(\badr[13]_INST_0_i_3_n_0 ),
        .I2(abus_o_13_sn_1),
        .I3(\abus_o[13]_0 ),
        .I4(\abus_o[13]_1 ),
        .I5(\abus_o[13]_2 ),
        .O(\grn_reg[13]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_10 
       (.I0(gr01[13]),
        .I1(gr1_bus1__0_30),
        .I2(gr02[13]),
        .I3(gr2_bus1__0_31),
        .O(\badr[13]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_11 
       (.I0(gr07[13]),
        .I1(gr7_bus1__0_40),
        .I2(gr00[13]),
        .I3(gr0_bus1__0_41),
        .O(\badr[13]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_12 
       (.I0(gr05[13]),
        .I1(gr5_bus1__0_22),
        .I2(gr06[13]),
        .I3(gr6_bus1__0_23),
        .O(\badr[13]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_14 
       (.I0(gr25[13]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[13]),
        .I3(gr6_bus1__0_21),
        .O(\badr[13]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_15 
       (.I0(gr21[13]),
        .I1(gr1_bus1__0_28),
        .I2(gr22[13]),
        .I3(gr2_bus1__0_29),
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
        .I2(gr3_bus1__0_1),
        .I3(gr24[13]),
        .I4(gr4_bus1__0_2),
        .I5(\badr[13]_INST_0_i_15_n_0 ),
        .O(\badr[13]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_8 
       (.I0(gr27[13]),
        .I1(gr7_bus1__0_38),
        .I2(gr20[13]),
        .I3(gr0_bus1__0_39),
        .O(\badr[13]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_9 
       (.I0(gr03[13]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[13]),
        .I3(gr4_bus1__0_35),
        .O(\badr[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[14]_INST_0_i_1 
       (.I0(\badr[14]_INST_0_i_2_n_0 ),
        .I1(\badr[14]_INST_0_i_3_n_0 ),
        .I2(abus_o_14_sn_1),
        .I3(\abus_o[14]_0 ),
        .I4(\abus_o[14]_1 ),
        .I5(\abus_o[14]_2 ),
        .O(\grn_reg[14]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_10 
       (.I0(gr01[14]),
        .I1(gr1_bus1__0_30),
        .I2(gr02[14]),
        .I3(gr2_bus1__0_31),
        .O(\badr[14]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_11 
       (.I0(gr07[14]),
        .I1(gr7_bus1__0_40),
        .I2(gr00[14]),
        .I3(gr0_bus1__0_41),
        .O(\badr[14]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_12 
       (.I0(gr05[14]),
        .I1(gr5_bus1__0_22),
        .I2(gr06[14]),
        .I3(gr6_bus1__0_23),
        .O(\badr[14]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_14 
       (.I0(gr25[14]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[14]),
        .I3(gr6_bus1__0_21),
        .O(\badr[14]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_15 
       (.I0(gr21[14]),
        .I1(gr1_bus1__0_28),
        .I2(gr22[14]),
        .I3(gr2_bus1__0_29),
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
        .I1(gr23[14]),
        .I2(gr3_bus1__0_1),
        .I3(gr24[14]),
        .I4(gr4_bus1__0_2),
        .I5(\badr[14]_INST_0_i_15_n_0 ),
        .O(\badr[14]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_8 
       (.I0(gr27[14]),
        .I1(gr7_bus1__0_38),
        .I2(gr20[14]),
        .I3(gr0_bus1__0_39),
        .O(\badr[14]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_9 
       (.I0(gr03[14]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[14]),
        .I3(gr4_bus1__0_35),
        .O(\badr[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_1 
       (.I0(\badr[15]_INST_0_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_3_n_0 ),
        .I2(abus_o_15_sn_1),
        .I3(\abus_o[15]_0 ),
        .I4(\abus_o[15]_1 ),
        .I5(\abus_o[15]_2 ),
        .O(\grn_reg[15]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_10 
       (.I0(gr01[15]),
        .I1(gr1_bus1__0_30),
        .I2(gr02[15]),
        .I3(gr2_bus1__0_31),
        .O(\badr[15]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_11 
       (.I0(gr07[15]),
        .I1(gr7_bus1__0_40),
        .I2(gr00[15]),
        .I3(gr0_bus1__0_41),
        .O(\badr[15]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_12 
       (.I0(gr05[15]),
        .I1(gr5_bus1__0_22),
        .I2(gr06[15]),
        .I3(gr6_bus1__0_23),
        .O(\badr[15]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_14 
       (.I0(gr25[15]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[15]),
        .I3(gr6_bus1__0_21),
        .O(\badr[15]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_17 
       (.I0(gr21[15]),
        .I1(gr1_bus1__0_28),
        .I2(gr22[15]),
        .I3(gr2_bus1__0_29),
        .O(\badr[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_11_n_0 ),
        .I4(\badr[15]_INST_0_i_12_n_0 ),
        .I5(\badr[15]_INST_0_i_1_2 ),
        .O(\badr[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[15]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_14_n_0 ),
        .I1(gr23[15]),
        .I2(gr3_bus1__0_1),
        .I3(gr24[15]),
        .I4(gr4_bus1__0_2),
        .I5(\badr[15]_INST_0_i_17_n_0 ),
        .O(\badr[15]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_8 
       (.I0(gr27[15]),
        .I1(gr7_bus1__0_38),
        .I2(gr20[15]),
        .I3(gr0_bus1__0_39),
        .O(\badr[15]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_9 
       (.I0(gr03[15]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[15]),
        .I3(gr4_bus1__0_35),
        .O(\badr[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[1]_INST_0_i_1 
       (.I0(\badr[1]_INST_0_i_2_n_0 ),
        .I1(\badr[1]_INST_0_i_3_n_0 ),
        .I2(abus_o_1_sn_1),
        .I3(\abus_o[1]_0 ),
        .I4(\abus_o[1]_1 ),
        .I5(\abus_o[1]_2 ),
        .O(\grn_reg[1]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_10 
       (.I0(gr01[1]),
        .I1(gr1_bus1__0_30),
        .I2(gr02[1]),
        .I3(gr2_bus1__0_31),
        .O(\badr[1]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_11 
       (.I0(gr07[1]),
        .I1(gr7_bus1__0_40),
        .I2(gr00[1]),
        .I3(gr0_bus1__0_41),
        .O(\badr[1]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_12 
       (.I0(gr05[1]),
        .I1(gr5_bus1__0_22),
        .I2(gr06[1]),
        .I3(gr6_bus1__0_23),
        .O(\badr[1]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_14 
       (.I0(gr25[1]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[1]),
        .I3(gr6_bus1__0_21),
        .O(\badr[1]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_15 
       (.I0(gr21[1]),
        .I1(gr1_bus1__0_28),
        .I2(gr22[1]),
        .I3(gr2_bus1__0_29),
        .O(\badr[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[1]_INST_0_i_2 
       (.I0(\badr[1]_INST_0_i_8_n_0 ),
        .I1(\badr[1]_INST_0_i_9_n_0 ),
        .I2(\badr[1]_INST_0_i_10_n_0 ),
        .I3(\badr[1]_INST_0_i_11_n_0 ),
        .I4(\badr[1]_INST_0_i_12_n_0 ),
        .I5(\badr[1]_INST_0_i_1_0 ),
        .O(\badr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[1]_INST_0_i_3 
       (.I0(\badr[1]_INST_0_i_14_n_0 ),
        .I1(gr23[1]),
        .I2(gr3_bus1__0_1),
        .I3(gr24[1]),
        .I4(gr4_bus1__0_2),
        .I5(\badr[1]_INST_0_i_15_n_0 ),
        .O(\badr[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_8 
       (.I0(gr27[1]),
        .I1(gr7_bus1__0_38),
        .I2(gr20[1]),
        .I3(gr0_bus1__0_39),
        .O(\badr[1]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_9 
       (.I0(gr03[1]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[1]),
        .I3(gr4_bus1__0_35),
        .O(\badr[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[2]_INST_0_i_1 
       (.I0(\badr[2]_INST_0_i_2_n_0 ),
        .I1(\badr[2]_INST_0_i_3_n_0 ),
        .I2(abus_o_2_sn_1),
        .I3(\abus_o[2]_0 ),
        .I4(\abus_o[2]_1 ),
        .I5(\abus_o[2]_2 ),
        .O(\grn_reg[2]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_10 
       (.I0(gr01[2]),
        .I1(gr1_bus1__0_30),
        .I2(gr02[2]),
        .I3(gr2_bus1__0_31),
        .O(\badr[2]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_11 
       (.I0(gr07[2]),
        .I1(gr7_bus1__0_40),
        .I2(gr00[2]),
        .I3(gr0_bus1__0_41),
        .O(\badr[2]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_12 
       (.I0(gr05[2]),
        .I1(gr5_bus1__0_22),
        .I2(gr06[2]),
        .I3(gr6_bus1__0_23),
        .O(\badr[2]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_14 
       (.I0(gr25[2]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[2]),
        .I3(gr6_bus1__0_21),
        .O(\badr[2]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_15 
       (.I0(gr21[2]),
        .I1(gr1_bus1__0_28),
        .I2(gr22[2]),
        .I3(gr2_bus1__0_29),
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
        .I1(gr23[2]),
        .I2(gr3_bus1__0_1),
        .I3(gr24[2]),
        .I4(gr4_bus1__0_2),
        .I5(\badr[2]_INST_0_i_15_n_0 ),
        .O(\badr[2]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_8 
       (.I0(gr27[2]),
        .I1(gr7_bus1__0_38),
        .I2(gr20[2]),
        .I3(gr0_bus1__0_39),
        .O(\badr[2]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_9 
       (.I0(gr03[2]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[2]),
        .I3(gr4_bus1__0_35),
        .O(\badr[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[3]_INST_0_i_1 
       (.I0(\badr[3]_INST_0_i_2_n_0 ),
        .I1(\badr[3]_INST_0_i_3_n_0 ),
        .I2(abus_o_3_sn_1),
        .I3(\abus_o[3]_0 ),
        .I4(\abus_o[3]_1 ),
        .I5(\abus_o[3]_2 ),
        .O(\grn_reg[3]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_10 
       (.I0(gr01[3]),
        .I1(gr1_bus1__0_30),
        .I2(gr02[3]),
        .I3(gr2_bus1__0_31),
        .O(\badr[3]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_11 
       (.I0(gr07[3]),
        .I1(gr7_bus1__0_40),
        .I2(gr00[3]),
        .I3(gr0_bus1__0_41),
        .O(\badr[3]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_12 
       (.I0(gr05[3]),
        .I1(gr5_bus1__0_22),
        .I2(gr06[3]),
        .I3(gr6_bus1__0_23),
        .O(\badr[3]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_14 
       (.I0(gr25[3]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[3]),
        .I3(gr6_bus1__0_21),
        .O(\badr[3]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_15 
       (.I0(gr21[3]),
        .I1(gr1_bus1__0_28),
        .I2(gr22[3]),
        .I3(gr2_bus1__0_29),
        .O(\badr[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[3]_INST_0_i_2 
       (.I0(\badr[3]_INST_0_i_8_n_0 ),
        .I1(\badr[3]_INST_0_i_9_n_0 ),
        .I2(\badr[3]_INST_0_i_10_n_0 ),
        .I3(\badr[3]_INST_0_i_11_n_0 ),
        .I4(\badr[3]_INST_0_i_12_n_0 ),
        .I5(\badr[3]_INST_0_i_1_0 ),
        .O(\badr[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[3]_INST_0_i_3 
       (.I0(\badr[3]_INST_0_i_14_n_0 ),
        .I1(gr23[3]),
        .I2(gr3_bus1__0_1),
        .I3(gr24[3]),
        .I4(gr4_bus1__0_2),
        .I5(\badr[3]_INST_0_i_15_n_0 ),
        .O(\badr[3]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_8 
       (.I0(gr27[3]),
        .I1(gr7_bus1__0_38),
        .I2(gr20[3]),
        .I3(gr0_bus1__0_39),
        .O(\badr[3]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_9 
       (.I0(gr03[3]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[3]),
        .I3(gr4_bus1__0_35),
        .O(\badr[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[4]_INST_0_i_1 
       (.I0(\badr[4]_INST_0_i_2_n_0 ),
        .I1(\badr[4]_INST_0_i_3_n_0 ),
        .I2(abus_o_4_sn_1),
        .I3(\abus_o[4]_0 ),
        .I4(\abus_o[4]_1 ),
        .I5(\abus_o[4]_2 ),
        .O(\grn_reg[4]_13 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_10 
       (.I0(gr01[4]),
        .I1(gr1_bus1__0_30),
        .I2(gr02[4]),
        .I3(gr2_bus1__0_31),
        .O(\badr[4]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_11 
       (.I0(gr07[4]),
        .I1(gr7_bus1__0_40),
        .I2(gr00[4]),
        .I3(gr0_bus1__0_41),
        .O(\badr[4]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_12 
       (.I0(gr05[4]),
        .I1(gr5_bus1__0_22),
        .I2(gr06[4]),
        .I3(gr6_bus1__0_23),
        .O(\badr[4]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_14 
       (.I0(gr25[4]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[4]),
        .I3(gr6_bus1__0_21),
        .O(\badr[4]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_15 
       (.I0(gr21[4]),
        .I1(gr1_bus1__0_28),
        .I2(gr22[4]),
        .I3(gr2_bus1__0_29),
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
        .I2(gr3_bus1__0_1),
        .I3(gr24[4]),
        .I4(gr4_bus1__0_2),
        .I5(\badr[4]_INST_0_i_15_n_0 ),
        .O(\badr[4]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_8 
       (.I0(gr27[4]),
        .I1(gr7_bus1__0_38),
        .I2(gr20[4]),
        .I3(gr0_bus1__0_39),
        .O(\badr[4]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_9 
       (.I0(gr03[4]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[4]),
        .I3(gr4_bus1__0_35),
        .O(\badr[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[5]_INST_0_i_1 
       (.I0(\badr[5]_INST_0_i_2_n_0 ),
        .I1(\badr[5]_INST_0_i_3_n_0 ),
        .I2(abus_o_5_sn_1),
        .I3(\abus_o[5]_0 ),
        .I4(\abus_o[5]_1 ),
        .I5(\abus_o[5]_2 ),
        .O(\grn_reg[5]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_10 
       (.I0(gr01[5]),
        .I1(gr1_bus1__0_30),
        .I2(gr02[5]),
        .I3(gr2_bus1__0_31),
        .O(\badr[5]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_11 
       (.I0(gr07[5]),
        .I1(gr7_bus1__0_40),
        .I2(gr00[5]),
        .I3(gr0_bus1__0_41),
        .O(\badr[5]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_12 
       (.I0(gr05[5]),
        .I1(gr5_bus1__0_22),
        .I2(gr06[5]),
        .I3(gr6_bus1__0_23),
        .O(\badr[5]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_14 
       (.I0(gr25[5]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[5]),
        .I3(gr6_bus1__0_21),
        .O(\badr[5]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_15 
       (.I0(gr21[5]),
        .I1(gr1_bus1__0_28),
        .I2(gr22[5]),
        .I3(gr2_bus1__0_29),
        .O(\badr[5]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[5]_INST_0_i_2 
       (.I0(\badr[5]_INST_0_i_8_n_0 ),
        .I1(\badr[5]_INST_0_i_9_n_0 ),
        .I2(\badr[5]_INST_0_i_10_n_0 ),
        .I3(\badr[5]_INST_0_i_11_n_0 ),
        .I4(\badr[5]_INST_0_i_12_n_0 ),
        .I5(\badr[5]_INST_0_i_1_0 ),
        .O(\badr[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[5]_INST_0_i_3 
       (.I0(\badr[5]_INST_0_i_14_n_0 ),
        .I1(gr23[5]),
        .I2(gr3_bus1__0_1),
        .I3(gr24[5]),
        .I4(gr4_bus1__0_2),
        .I5(\badr[5]_INST_0_i_15_n_0 ),
        .O(\badr[5]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_8 
       (.I0(gr27[5]),
        .I1(gr7_bus1__0_38),
        .I2(gr20[5]),
        .I3(gr0_bus1__0_39),
        .O(\badr[5]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_9 
       (.I0(gr03[5]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[5]),
        .I3(gr4_bus1__0_35),
        .O(\badr[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[6]_INST_0_i_1 
       (.I0(\badr[6]_INST_0_i_2_n_0 ),
        .I1(\badr[6]_INST_0_i_3_n_0 ),
        .I2(abus_o_6_sn_1),
        .I3(\abus_o[6]_0 ),
        .I4(\abus_o[6]_1 ),
        .I5(\abus_o[6]_2 ),
        .O(\grn_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_10 
       (.I0(gr01[6]),
        .I1(gr1_bus1__0_30),
        .I2(gr02[6]),
        .I3(gr2_bus1__0_31),
        .O(\badr[6]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_11 
       (.I0(gr07[6]),
        .I1(gr7_bus1__0_40),
        .I2(gr00[6]),
        .I3(gr0_bus1__0_41),
        .O(\badr[6]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_12 
       (.I0(gr05[6]),
        .I1(gr5_bus1__0_22),
        .I2(gr06[6]),
        .I3(gr6_bus1__0_23),
        .O(\badr[6]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_14 
       (.I0(gr25[6]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[6]),
        .I3(gr6_bus1__0_21),
        .O(\badr[6]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_15 
       (.I0(gr21[6]),
        .I1(gr1_bus1__0_28),
        .I2(gr22[6]),
        .I3(gr2_bus1__0_29),
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
        .I1(gr23[6]),
        .I2(gr3_bus1__0_1),
        .I3(gr24[6]),
        .I4(gr4_bus1__0_2),
        .I5(\badr[6]_INST_0_i_15_n_0 ),
        .O(\badr[6]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_8 
       (.I0(gr27[6]),
        .I1(gr7_bus1__0_38),
        .I2(gr20[6]),
        .I3(gr0_bus1__0_39),
        .O(\badr[6]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_9 
       (.I0(gr03[6]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[6]),
        .I3(gr4_bus1__0_35),
        .O(\badr[6]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[7]_INST_0_i_1 
       (.I0(\badr[7]_INST_0_i_2_n_0 ),
        .I1(\badr[7]_INST_0_i_3_n_0 ),
        .I2(abus_o_7_sn_1),
        .I3(\abus_o[7]_0 ),
        .I4(\abus_o[7]_1 ),
        .I5(\abus_o[7]_2 ),
        .O(\grn_reg[7]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_10 
       (.I0(gr01[7]),
        .I1(gr1_bus1__0_30),
        .I2(gr02[7]),
        .I3(gr2_bus1__0_31),
        .O(\badr[7]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_11 
       (.I0(gr07[7]),
        .I1(gr7_bus1__0_40),
        .I2(gr00[7]),
        .I3(gr0_bus1__0_41),
        .O(\badr[7]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_12 
       (.I0(gr05[7]),
        .I1(gr5_bus1__0_22),
        .I2(gr06[7]),
        .I3(gr6_bus1__0_23),
        .O(\badr[7]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_14 
       (.I0(gr25[7]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[7]),
        .I3(gr6_bus1__0_21),
        .O(\badr[7]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_15 
       (.I0(gr21[7]),
        .I1(gr1_bus1__0_28),
        .I2(gr22[7]),
        .I3(gr2_bus1__0_29),
        .O(\badr[7]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[7]_INST_0_i_2 
       (.I0(\badr[7]_INST_0_i_8_n_0 ),
        .I1(\badr[7]_INST_0_i_9_n_0 ),
        .I2(\badr[7]_INST_0_i_10_n_0 ),
        .I3(\badr[7]_INST_0_i_11_n_0 ),
        .I4(\badr[7]_INST_0_i_12_n_0 ),
        .I5(\badr[7]_INST_0_i_1_0 ),
        .O(\badr[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[7]_INST_0_i_3 
       (.I0(\badr[7]_INST_0_i_14_n_0 ),
        .I1(gr23[7]),
        .I2(gr3_bus1__0_1),
        .I3(gr24[7]),
        .I4(gr4_bus1__0_2),
        .I5(\badr[7]_INST_0_i_15_n_0 ),
        .O(\badr[7]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_8 
       (.I0(gr27[7]),
        .I1(gr7_bus1__0_38),
        .I2(gr20[7]),
        .I3(gr0_bus1__0_39),
        .O(\badr[7]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_9 
       (.I0(gr03[7]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[7]),
        .I3(gr4_bus1__0_35),
        .O(\badr[7]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[8]_INST_0_i_1 
       (.I0(\badr[8]_INST_0_i_2_n_0 ),
        .I1(\badr[8]_INST_0_i_3_n_0 ),
        .I2(abus_o_8_sn_1),
        .I3(\abus_o[8]_0 ),
        .I4(\abus_o[8]_1 ),
        .I5(\abus_o[8]_2 ),
        .O(\grn_reg[8]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_10 
       (.I0(gr01[8]),
        .I1(gr1_bus1__0_30),
        .I2(gr02[8]),
        .I3(gr2_bus1__0_31),
        .O(\badr[8]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_11 
       (.I0(gr07[8]),
        .I1(gr7_bus1__0_40),
        .I2(gr00[8]),
        .I3(gr0_bus1__0_41),
        .O(\badr[8]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_12 
       (.I0(gr05[8]),
        .I1(gr5_bus1__0_22),
        .I2(gr06[8]),
        .I3(gr6_bus1__0_23),
        .O(\badr[8]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_14 
       (.I0(gr25[8]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[8]),
        .I3(gr6_bus1__0_21),
        .O(\badr[8]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_15 
       (.I0(gr21[8]),
        .I1(gr1_bus1__0_28),
        .I2(gr22[8]),
        .I3(gr2_bus1__0_29),
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
        .I1(gr23[8]),
        .I2(gr3_bus1__0_1),
        .I3(gr24[8]),
        .I4(gr4_bus1__0_2),
        .I5(\badr[8]_INST_0_i_15_n_0 ),
        .O(\badr[8]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_8 
       (.I0(gr27[8]),
        .I1(gr7_bus1__0_38),
        .I2(gr20[8]),
        .I3(gr0_bus1__0_39),
        .O(\badr[8]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_9 
       (.I0(gr03[8]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[8]),
        .I3(gr4_bus1__0_35),
        .O(\badr[8]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[9]_INST_0_i_1 
       (.I0(\badr[9]_INST_0_i_2_n_0 ),
        .I1(\badr[9]_INST_0_i_3_n_0 ),
        .I2(abus_o_9_sn_1),
        .I3(\abus_o[9]_0 ),
        .I4(\abus_o[9]_1 ),
        .I5(\abus_o[9]_2 ),
        .O(\grn_reg[9]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_10 
       (.I0(gr01[9]),
        .I1(gr1_bus1__0_30),
        .I2(gr02[9]),
        .I3(gr2_bus1__0_31),
        .O(\badr[9]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_11 
       (.I0(gr07[9]),
        .I1(gr7_bus1__0_40),
        .I2(gr00[9]),
        .I3(gr0_bus1__0_41),
        .O(\badr[9]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_12 
       (.I0(gr05[9]),
        .I1(gr5_bus1__0_22),
        .I2(gr06[9]),
        .I3(gr6_bus1__0_23),
        .O(\badr[9]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_14 
       (.I0(gr25[9]),
        .I1(gr5_bus1__0_20),
        .I2(gr26[9]),
        .I3(gr6_bus1__0_21),
        .O(\badr[9]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_15 
       (.I0(gr21[9]),
        .I1(gr1_bus1__0_28),
        .I2(gr22[9]),
        .I3(gr2_bus1__0_29),
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
        .I1(gr23[9]),
        .I2(gr3_bus1__0_1),
        .I3(gr24[9]),
        .I4(gr4_bus1__0_2),
        .I5(\badr[9]_INST_0_i_15_n_0 ),
        .O(\badr[9]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_8 
       (.I0(gr27[9]),
        .I1(gr7_bus1__0_38),
        .I2(gr20[9]),
        .I3(gr0_bus1__0_39),
        .O(\badr[9]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_9 
       (.I0(gr03[9]),
        .I1(gr3_bus1__0_34),
        .I2(gr04[9]),
        .I3(gr4_bus1__0_35),
        .O(\badr[9]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[10]_INST_0_i_15 
       (.I0(\bdatw[10]_INST_0_i_31_n_0 ),
        .I1(\bdatw[10]_INST_0_i_32_n_0 ),
        .I2(gr27[10]),
        .I3(gr7_bus1__0),
        .I4(gr20[10]),
        .I5(gr0_bus1__0),
        .O(\grn_reg[10] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_17 
       (.I0(gr21[2]),
        .I1(gr1_bus1__0),
        .I2(gr22[2]),
        .I3(gr2_bus1__0_15),
        .O(\grn_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_22 
       (.I0(gr27[2]),
        .I1(gr7_bus1__0),
        .I2(gr20[2]),
        .I3(gr0_bus1__0),
        .O(\grn_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[10]_INST_0_i_31 
       (.I0(\bdatw[10]_INST_0_i_49_n_0 ),
        .I1(gr23[10]),
        .I2(gr3_bus1__0),
        .I3(gr24[10]),
        .I4(gr4_bus1__0),
        .I5(\bdatw[10]_INST_0_i_50_n_0 ),
        .O(\bdatw[10]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[10]_INST_0_i_32 
       (.I0(out[5]),
        .I1(\bdatw[8]_INST_0_i_14_0 ),
        .I2(\bdatw[10]_INST_0_i_51_n_0 ),
        .I3(\bdatw[10]_INST_0_i_52_n_0 ),
        .I4(\bdatw[10]_INST_0_i_53_n_0 ),
        .I5(\bdatw[10]_INST_0_i_54_n_0 ),
        .O(\bdatw[10]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_49 
       (.I0(gr25[10]),
        .I1(gr5_bus1__0_6),
        .I2(gr26[10]),
        .I3(gr6_bus1__0),
        .O(\bdatw[10]_INST_0_i_49_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_50 
       (.I0(gr21[10]),
        .I1(gr1_bus1__0),
        .I2(gr22[10]),
        .I3(gr2_bus1__0_15),
        .O(\bdatw[10]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_51 
       (.I0(gr05[10]),
        .I1(gr5_bus1__0_7),
        .I2(gr06[10]),
        .I3(gr6_bus1__0_8),
        .O(\bdatw[10]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_52 
       (.I0(gr07[10]),
        .I1(gr7_bus1__0_11),
        .I2(gr00[10]),
        .I3(gr0_bus1__0_12),
        .O(\bdatw[10]_INST_0_i_52_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_53 
       (.I0(gr01[10]),
        .I1(gr1_bus1__0_16),
        .I2(gr02[10]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[10]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_54 
       (.I0(gr03[10]),
        .I1(gr3_bus1__0_0),
        .I2(gr04[10]),
        .I3(gr4_bus1__0_1),
        .O(\bdatw[10]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[11]_INST_0_i_14 
       (.I0(\bdatw[11]_INST_0_i_30_n_0 ),
        .I1(\bdatw[11]_INST_0_i_31_n_0 ),
        .I2(gr27[11]),
        .I3(gr7_bus1__0),
        .I4(gr20[11]),
        .I5(gr0_bus1__0),
        .O(\grn_reg[11] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_16 
       (.I0(gr21[3]),
        .I1(gr1_bus1__0),
        .I2(gr22[3]),
        .I3(gr2_bus1__0_15),
        .O(\grn_reg[3]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_21 
       (.I0(gr27[3]),
        .I1(gr7_bus1__0),
        .I2(gr20[3]),
        .I3(gr0_bus1__0),
        .O(\grn_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[11]_INST_0_i_30 
       (.I0(\bdatw[11]_INST_0_i_48_n_0 ),
        .I1(gr23[11]),
        .I2(gr3_bus1__0),
        .I3(gr24[11]),
        .I4(gr4_bus1__0),
        .I5(\bdatw[11]_INST_0_i_49_n_0 ),
        .O(\bdatw[11]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[11]_INST_0_i_31 
       (.I0(out[6]),
        .I1(\bdatw[8]_INST_0_i_14_0 ),
        .I2(\bdatw[11]_INST_0_i_50_n_0 ),
        .I3(\bdatw[11]_INST_0_i_51_n_0 ),
        .I4(\bdatw[11]_INST_0_i_52_n_0 ),
        .I5(\bdatw[11]_INST_0_i_53_n_0 ),
        .O(\bdatw[11]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_48 
       (.I0(gr25[11]),
        .I1(gr5_bus1__0_6),
        .I2(gr26[11]),
        .I3(gr6_bus1__0),
        .O(\bdatw[11]_INST_0_i_48_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_49 
       (.I0(gr21[11]),
        .I1(gr1_bus1__0),
        .I2(gr22[11]),
        .I3(gr2_bus1__0_15),
        .O(\bdatw[11]_INST_0_i_49_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_50 
       (.I0(gr05[11]),
        .I1(gr5_bus1__0_7),
        .I2(gr06[11]),
        .I3(gr6_bus1__0_8),
        .O(\bdatw[11]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_51 
       (.I0(gr07[11]),
        .I1(gr7_bus1__0_11),
        .I2(gr00[11]),
        .I3(gr0_bus1__0_12),
        .O(\bdatw[11]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_52 
       (.I0(gr01[11]),
        .I1(gr1_bus1__0_16),
        .I2(gr02[11]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[11]_INST_0_i_52_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_53 
       (.I0(gr03[11]),
        .I1(gr3_bus1__0_0),
        .I2(gr04[11]),
        .I3(gr4_bus1__0_1),
        .O(\bdatw[11]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[12]_INST_0_i_14 
       (.I0(\bdatw[12]_INST_0_i_33_n_0 ),
        .I1(\bdatw[12]_INST_0_i_34_n_0 ),
        .I2(gr27[12]),
        .I3(gr7_bus1__0),
        .I4(gr20[12]),
        .I5(gr0_bus1__0),
        .O(\grn_reg[12] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_16 
       (.I0(gr21[4]),
        .I1(gr1_bus1__0),
        .I2(gr22[4]),
        .I3(gr2_bus1__0_15),
        .O(\grn_reg[4]_12 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_21 
       (.I0(gr27[4]),
        .I1(gr7_bus1__0),
        .I2(gr20[4]),
        .I3(gr0_bus1__0),
        .O(\grn_reg[4]_11 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[12]_INST_0_i_33 
       (.I0(\bdatw[12]_INST_0_i_71_n_0 ),
        .I1(gr23[12]),
        .I2(gr3_bus1__0),
        .I3(gr24[12]),
        .I4(gr4_bus1__0),
        .I5(\bdatw[12]_INST_0_i_72_n_0 ),
        .O(\bdatw[12]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[12]_INST_0_i_34 
       (.I0(out[7]),
        .I1(\bdatw[8]_INST_0_i_14_0 ),
        .I2(\bdatw[12]_INST_0_i_73_n_0 ),
        .I3(\bdatw[12]_INST_0_i_74_n_0 ),
        .I4(\bdatw[12]_INST_0_i_75_n_0 ),
        .I5(\bdatw[12]_INST_0_i_76_n_0 ),
        .O(\bdatw[12]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_71 
       (.I0(gr25[12]),
        .I1(gr5_bus1__0_6),
        .I2(gr26[12]),
        .I3(gr6_bus1__0),
        .O(\bdatw[12]_INST_0_i_71_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_72 
       (.I0(gr21[12]),
        .I1(gr1_bus1__0),
        .I2(gr22[12]),
        .I3(gr2_bus1__0_15),
        .O(\bdatw[12]_INST_0_i_72_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_73 
       (.I0(gr05[12]),
        .I1(gr5_bus1__0_7),
        .I2(gr06[12]),
        .I3(gr6_bus1__0_8),
        .O(\bdatw[12]_INST_0_i_73_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_74 
       (.I0(gr07[12]),
        .I1(gr7_bus1__0_11),
        .I2(gr00[12]),
        .I3(gr0_bus1__0_12),
        .O(\bdatw[12]_INST_0_i_74_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_75 
       (.I0(gr01[12]),
        .I1(gr1_bus1__0_16),
        .I2(gr02[12]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[12]_INST_0_i_75_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_76 
       (.I0(gr03[12]),
        .I1(gr3_bus1__0_0),
        .I2(gr04[12]),
        .I3(gr4_bus1__0_1),
        .O(\bdatw[12]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_11 
       (.I0(\bdatw[13]_INST_0_i_20_n_0 ),
        .I1(\bdatw[13]_INST_0_i_21_n_0 ),
        .I2(gr27[13]),
        .I3(gr7_bus1__0),
        .I4(gr20[13]),
        .I5(gr0_bus1__0),
        .O(\grn_reg[13] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[13]_INST_0_i_20 
       (.I0(\bdatw[13]_INST_0_i_32_n_0 ),
        .I1(gr23[13]),
        .I2(gr3_bus1__0),
        .I3(gr24[13]),
        .I4(gr4_bus1__0),
        .I5(\bdatw[13]_INST_0_i_33_n_0 ),
        .O(\bdatw[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_21 
       (.I0(out[8]),
        .I1(\bdatw[8]_INST_0_i_14_0 ),
        .I2(\bdatw[13]_INST_0_i_34_n_0 ),
        .I3(\bdatw[13]_INST_0_i_35_n_0 ),
        .I4(\bdatw[13]_INST_0_i_36_n_0 ),
        .I5(\bdatw[13]_INST_0_i_37_n_0 ),
        .O(\bdatw[13]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_32 
       (.I0(gr25[13]),
        .I1(gr5_bus1__0_6),
        .I2(gr26[13]),
        .I3(gr6_bus1__0),
        .O(\bdatw[13]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_33 
       (.I0(gr21[13]),
        .I1(gr1_bus1__0),
        .I2(gr22[13]),
        .I3(gr2_bus1__0_15),
        .O(\bdatw[13]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_34 
       (.I0(gr05[13]),
        .I1(gr5_bus1__0_7),
        .I2(gr06[13]),
        .I3(gr6_bus1__0_8),
        .O(\bdatw[13]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_35 
       (.I0(gr07[13]),
        .I1(gr7_bus1__0_11),
        .I2(gr00[13]),
        .I3(gr0_bus1__0_12),
        .O(\bdatw[13]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_36 
       (.I0(gr01[13]),
        .I1(gr1_bus1__0_16),
        .I2(gr02[13]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[13]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_37 
       (.I0(gr03[13]),
        .I1(gr3_bus1__0_0),
        .I2(gr04[13]),
        .I3(gr4_bus1__0_1),
        .O(\bdatw[13]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[14]_INST_0_i_17 
       (.I0(\bdatw[14]_INST_0_i_29_n_0 ),
        .I1(gr23[14]),
        .I2(gr3_bus1__0),
        .I3(gr24[14]),
        .I4(gr4_bus1__0),
        .I5(\bdatw[14]_INST_0_i_30_n_0 ),
        .O(\bdatw[14]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_18 
       (.I0(out[9]),
        .I1(\bdatw[8]_INST_0_i_14_0 ),
        .I2(\bdatw[14]_INST_0_i_31_n_0 ),
        .I3(\bdatw[14]_INST_0_i_32_n_0 ),
        .I4(\bdatw[14]_INST_0_i_33_n_0 ),
        .I5(\bdatw[14]_INST_0_i_34_n_0 ),
        .O(\bdatw[14]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_29 
       (.I0(gr25[14]),
        .I1(gr5_bus1__0_6),
        .I2(gr26[14]),
        .I3(gr6_bus1__0),
        .O(\bdatw[14]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_30 
       (.I0(gr21[14]),
        .I1(gr1_bus1__0),
        .I2(gr22[14]),
        .I3(gr2_bus1__0_15),
        .O(\bdatw[14]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_31 
       (.I0(gr05[14]),
        .I1(gr5_bus1__0_7),
        .I2(gr06[14]),
        .I3(gr6_bus1__0_8),
        .O(\bdatw[14]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_32 
       (.I0(gr07[14]),
        .I1(gr7_bus1__0_11),
        .I2(gr00[14]),
        .I3(gr0_bus1__0_12),
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
        .I1(gr3_bus1__0_0),
        .I2(gr04[14]),
        .I3(gr4_bus1__0_1),
        .O(\bdatw[14]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_9 
       (.I0(\bdatw[14]_INST_0_i_17_n_0 ),
        .I1(\bdatw[14]_INST_0_i_18_n_0 ),
        .I2(gr27[14]),
        .I3(gr7_bus1__0),
        .I4(gr20[14]),
        .I5(gr0_bus1__0),
        .O(\grn_reg[14] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_100 
       (.I0(gr25[15]),
        .I1(gr5_bus1__0_6),
        .I2(gr26[15]),
        .I3(gr6_bus1__0),
        .O(\bdatw[15]_INST_0_i_100_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_101 
       (.I0(gr21[15]),
        .I1(gr1_bus1__0),
        .I2(gr22[15]),
        .I3(gr2_bus1__0_15),
        .O(\bdatw[15]_INST_0_i_101_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_103 
       (.I0(gr05[15]),
        .I1(gr5_bus1__0_7),
        .I2(gr06[15]),
        .I3(gr6_bus1__0_8),
        .O(\bdatw[15]_INST_0_i_103_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_104 
       (.I0(gr07[15]),
        .I1(gr7_bus1__0_11),
        .I2(gr00[15]),
        .I3(gr0_bus1__0_12),
        .O(\bdatw[15]_INST_0_i_104_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_105 
       (.I0(gr01[15]),
        .I1(gr1_bus1__0_16),
        .I2(gr02[15]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[15]_INST_0_i_105_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_106 
       (.I0(gr03[15]),
        .I1(gr3_bus1__0_0),
        .I2(gr04[15]),
        .I3(gr4_bus1__0_1),
        .O(\bdatw[15]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_21 
       (.I0(\bdatw[15]_INST_0_i_57_n_0 ),
        .I1(\bdatw[15]_INST_0_i_58_n_0 ),
        .I2(gr27[15]),
        .I3(gr7_bus1__0),
        .I4(gr20[15]),
        .I5(gr0_bus1__0),
        .O(\grn_reg[15] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[15]_INST_0_i_57 
       (.I0(\bdatw[15]_INST_0_i_100_n_0 ),
        .I1(gr23[15]),
        .I2(gr3_bus1__0),
        .I3(gr24[15]),
        .I4(gr4_bus1__0),
        .I5(\bdatw[15]_INST_0_i_101_n_0 ),
        .O(\bdatw[15]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_58 
       (.I0(out[10]),
        .I1(\bdatw[8]_INST_0_i_14_0 ),
        .I2(\bdatw[15]_INST_0_i_103_n_0 ),
        .I3(\bdatw[15]_INST_0_i_104_n_0 ),
        .I4(\bdatw[15]_INST_0_i_105_n_0 ),
        .I5(\bdatw[15]_INST_0_i_106_n_0 ),
        .O(\bdatw[15]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[8]_INST_0_i_14 
       (.I0(\bdatw[8]_INST_0_i_32_n_0 ),
        .I1(\bdatw[8]_INST_0_i_33_n_0 ),
        .I2(gr27[8]),
        .I3(gr7_bus1__0),
        .I4(gr20[8]),
        .I5(gr0_bus1__0),
        .O(\grn_reg[8] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_18 
       (.I0(gr21[0]),
        .I1(gr1_bus1__0),
        .I2(gr22[0]),
        .I3(gr2_bus1__0_15),
        .O(\grn_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_23 
       (.I0(gr27[0]),
        .I1(gr7_bus1__0),
        .I2(gr20[0]),
        .I3(gr0_bus1__0),
        .O(\grn_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[8]_INST_0_i_32 
       (.I0(\bdatw[8]_INST_0_i_49_n_0 ),
        .I1(gr23[8]),
        .I2(gr3_bus1__0),
        .I3(gr24[8]),
        .I4(gr4_bus1__0),
        .I5(\bdatw[8]_INST_0_i_50_n_0 ),
        .O(\bdatw[8]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[8]_INST_0_i_33 
       (.I0(out[3]),
        .I1(\bdatw[8]_INST_0_i_14_0 ),
        .I2(\bdatw[8]_INST_0_i_51_n_0 ),
        .I3(\bdatw[8]_INST_0_i_52_n_0 ),
        .I4(\bdatw[8]_INST_0_i_53_n_0 ),
        .I5(\bdatw[8]_INST_0_i_54_n_0 ),
        .O(\bdatw[8]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_49 
       (.I0(gr25[8]),
        .I1(gr5_bus1__0_6),
        .I2(gr26[8]),
        .I3(gr6_bus1__0),
        .O(\bdatw[8]_INST_0_i_49_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_50 
       (.I0(gr21[8]),
        .I1(gr1_bus1__0),
        .I2(gr22[8]),
        .I3(gr2_bus1__0_15),
        .O(\bdatw[8]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_51 
       (.I0(gr05[8]),
        .I1(gr5_bus1__0_7),
        .I2(gr06[8]),
        .I3(gr6_bus1__0_8),
        .O(\bdatw[8]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_52 
       (.I0(gr07[8]),
        .I1(gr7_bus1__0_11),
        .I2(gr00[8]),
        .I3(gr0_bus1__0_12),
        .O(\bdatw[8]_INST_0_i_52_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_53 
       (.I0(gr01[8]),
        .I1(gr1_bus1__0_16),
        .I2(gr02[8]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[8]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_54 
       (.I0(gr03[8]),
        .I1(gr3_bus1__0_0),
        .I2(gr04[8]),
        .I3(gr4_bus1__0_1),
        .O(\bdatw[8]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[9]_INST_0_i_15 
       (.I0(\bdatw[9]_INST_0_i_31_n_0 ),
        .I1(\bdatw[9]_INST_0_i_32_n_0 ),
        .I2(gr27[9]),
        .I3(gr7_bus1__0),
        .I4(gr20[9]),
        .I5(gr0_bus1__0),
        .O(\grn_reg[9] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_17 
       (.I0(gr21[1]),
        .I1(gr1_bus1__0),
        .I2(gr22[1]),
        .I3(gr2_bus1__0_15),
        .O(\grn_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_22 
       (.I0(gr27[1]),
        .I1(gr7_bus1__0),
        .I2(gr20[1]),
        .I3(gr0_bus1__0),
        .O(\grn_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[9]_INST_0_i_31 
       (.I0(\bdatw[9]_INST_0_i_48_n_0 ),
        .I1(gr23[9]),
        .I2(gr3_bus1__0),
        .I3(gr24[9]),
        .I4(gr4_bus1__0),
        .I5(\bdatw[9]_INST_0_i_49_n_0 ),
        .O(\bdatw[9]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[9]_INST_0_i_32 
       (.I0(out[4]),
        .I1(\bdatw[8]_INST_0_i_14_0 ),
        .I2(\bdatw[9]_INST_0_i_50_n_0 ),
        .I3(\bdatw[9]_INST_0_i_51_n_0 ),
        .I4(\bdatw[9]_INST_0_i_52_n_0 ),
        .I5(\bdatw[9]_INST_0_i_53_n_0 ),
        .O(\bdatw[9]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_48 
       (.I0(gr25[9]),
        .I1(gr5_bus1__0_6),
        .I2(gr26[9]),
        .I3(gr6_bus1__0),
        .O(\bdatw[9]_INST_0_i_48_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_49 
       (.I0(gr21[9]),
        .I1(gr1_bus1__0),
        .I2(gr22[9]),
        .I3(gr2_bus1__0_15),
        .O(\bdatw[9]_INST_0_i_49_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_50 
       (.I0(gr05[9]),
        .I1(gr5_bus1__0_7),
        .I2(gr06[9]),
        .I3(gr6_bus1__0_8),
        .O(\bdatw[9]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_51 
       (.I0(gr07[9]),
        .I1(gr7_bus1__0_11),
        .I2(gr00[9]),
        .I3(gr0_bus1__0_12),
        .O(\bdatw[9]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_52 
       (.I0(gr01[9]),
        .I1(gr1_bus1__0_16),
        .I2(gr02[9]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[9]_INST_0_i_52_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_53 
       (.I0(gr03[9]),
        .I1(gr3_bus1__0_0),
        .I2(gr04[9]),
        .I3(gr4_bus1__0_1),
        .O(\bdatw[9]_INST_0_i_53_n_0 ));
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
        .\bdatw[15]_INST_0_i_28_0 (out[2:0]),
        .\bdatw[15]_INST_0_i_28_1 (\bdatw[8]_INST_0_i_14_0 ),
        .\bdatw[15]_INST_0_i_28_2 (gr23[7:5]),
        .\bdatw[15]_INST_0_i_28_3 (gr24[7:5]),
        .\bdatw[15]_INST_0_i_63_0 (gr25[7:5]),
        .\bdatw[15]_INST_0_i_63_1 (gr26[7:5]),
        .\bdatw[15]_INST_0_i_63_2 (gr21[7:5]),
        .\bdatw[15]_INST_0_i_63_3 (gr22[7:5]),
        .\bdatw[15]_INST_0_i_64_0 (gr03[7:5]),
        .\bdatw[15]_INST_0_i_64_1 (gr04[7:5]),
        .\bdatw[15]_INST_0_i_64_2 (gr05[7:5]),
        .\bdatw[15]_INST_0_i_64_3 (gr06[7:5]),
        .\bdatw[15]_INST_0_i_64_4 (gr07[7:5]),
        .\bdatw[15]_INST_0_i_64_5 (gr00[7:5]),
        .\bdatw[15]_INST_0_i_64_6 (gr01[7:5]),
        .\bdatw[15]_INST_0_i_64_7 (gr02[7:5]),
        .\bdatw[15]_INST_0_i_8 (gr20[7:5]),
        .clk(clk),
        .gr0_bus1__0(gr0_bus1__0),
        .gr0_bus1__0_12(gr0_bus1__0_12),
        .gr1_bus1__0(gr1_bus1__0),
        .gr1_bus1__0_16(gr1_bus1__0_16),
        .gr2_bus1__0_15(gr2_bus1__0_15),
        .gr2_bus1__0_17(gr2_bus1__0_17),
        .gr3_bus1__0(gr3_bus1__0),
        .gr3_bus1__0_0(gr3_bus1__0_0),
        .gr4_bus1__0(gr4_bus1__0),
        .gr4_bus1__0_1(gr4_bus1__0_1),
        .gr5_bus1__0_6(gr5_bus1__0_6),
        .gr5_bus1__0_7(gr5_bus1__0_7),
        .gr6_bus1__0(gr6_bus1__0),
        .gr6_bus1__0_8(gr6_bus1__0_8),
        .gr7_bus1__0(gr7_bus1__0),
        .gr7_bus1__0_11(gr7_bus1__0_11),
        .\grn_reg[15]_0 (\grn_reg[15]_17 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ),
        .\grn_reg[5]_0 (\grn_reg[5] ),
        .\grn_reg[6]_0 (\grn_reg[6] ),
        .\grn_reg[7]_0 (\grn_reg[7] ),
        .out(gr27[7:5]));
  LUT6 #(
    .INIT(64'h5030503F5F305F3F)) 
    \iv[0]_i_12 
       (.I0(\iv[13]_i_35_n_0 ),
        .I1(\iv[13]_i_36_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[8]_i_5_0 ),
        .I4(\iv[13]_i_31_n_0 ),
        .I5(\iv[13]_i_30_n_0 ),
        .O(\iv[13]_i_30_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[0]_i_15 
       (.I0(\grn_reg[6]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[7]_0 ),
        .O(\iv[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[0]_i_17 
       (.I0(\grn_reg[8]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[9]_0 ),
        .O(\iv[0]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \iv[0]_i_18 
       (.I0(\grn_reg[3]_1 ),
        .I1(\grn_reg[2]_1 ),
        .I2(\iv[8]_i_14_0 ),
        .I3(\iv[8]_i_5_0 ),
        .I4(\iv[13]_i_22_n_0 ),
        .O(\iv[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFB8FF00FFB8)) 
    \iv[0]_i_6 
       (.I0(\iv[0]_i_15_n_0 ),
        .I1(\iv[8]_i_5_0 ),
        .I2(\iv[0]_i_17_n_0 ),
        .I3(\iv[2]_i_2 ),
        .I4(\iv[8]_i_5 ),
        .I5(\iv[0]_i_18_n_0 ),
        .O(\iv[0]_i_18_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[10]_i_15 
       (.I0(\iv[0]_i_16_4 ),
        .I1(\iv[8]_i_5 ),
        .I2(\iv[0]_i_16_6 ),
        .O(\iv[14]_i_37_1 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[10]_i_16 
       (.I0(\grn_reg[13]_0 ),
        .I1(\grn_reg[12]_0 ),
        .I2(\grn_reg[11]_0 ),
        .I3(\grn_reg[10]_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_2 ));
  LUT4 #(
    .INIT(16'hF5F3)) 
    \iv[10]_i_17 
       (.I0(\grn_reg[15]_0 ),
        .I1(\grn_reg[14]_0 ),
        .I2(\iv[8]_i_5_0 ),
        .I3(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_13 ));
  LUT6 #(
    .INIT(64'hAFAFA0A0C0CFC0CF)) 
    \iv[10]_i_19 
       (.I0(\iv[13]_i_25_n_0 ),
        .I1(\badr[15]_INST_0_i_1_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\badr[2]_INST_0_i_1_0 ),
        .I4(\iv[2]_i_8 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\sr_reg[6]_4 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[10]_i_20 
       (.I0(\grn_reg[14]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[15]_0 ),
        .O(\badr[15]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[10]_i_21 
       (.I0(\grn_reg[1]_1 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[2]_1 ),
        .O(\badr[2]_INST_0_i_1_0 ));
  LUT5 #(
    .INIT(32'h350035FF)) 
    \iv[11]_i_13 
       (.I0(\grn_reg[14]_0 ),
        .I1(\grn_reg[13]_0 ),
        .I2(\iv[8]_i_14_0 ),
        .I3(\iv[8]_i_5_0 ),
        .I4(\iv[5]_i_8_0 ),
        .O(\sr_reg[6]_9 ));
  LUT6 #(
    .INIT(64'h00000C0A0F0F0C0A)) 
    \iv[11]_i_14 
       (.I0(\grn_reg[3]_1 ),
        .I1(\grn_reg[2]_1 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[8]_i_14_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[11]_i_21_n_0 ),
        .O(\iv[11]_i_21_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[11]_i_15 
       (.I0(\iv[13]_i_22_n_0 ),
        .I1(\iv[0]_i_15_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[0]_i_17_n_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[13]_i_24_n_0 ),
        .O(\iv[13]_i_24_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[11]_i_16 
       (.I0(\iv[13]_i_31_n_0 ),
        .I1(\iv[13]_i_32_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\badr[13]_INST_0_i_1_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[11]_i_22_n_0 ),
        .O(\sr_reg[6]_2 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[11]_i_17 
       (.I0(\iv[13]_i_36_n_0 ),
        .I1(\iv[13]_i_30_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[13]_i_34_n_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[13]_i_35_n_0 ),
        .O(\iv[13]_i_35_0 ));
  LUT6 #(
    .INIT(64'hFFFFF5F3F0F0F5F3)) 
    \iv[11]_i_18 
       (.I0(\grn_reg[12]_0 ),
        .I1(\grn_reg[11]_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[8]_i_14_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[13]_i_28_1 ));
  LUT6 #(
    .INIT(64'hFF00FFFFB8B8B8B8)) 
    \iv[11]_i_19 
       (.I0(\badr[13]_INST_0_i_1_0 ),
        .I1(\iv[8]_i_5_0 ),
        .I2(\iv[11]_i_22_n_0 ),
        .I3(\iv[11]_i_9 ),
        .I4(\grn_reg[15]_0 ),
        .I5(\iv[8]_i_5 ),
        .O(\iv[14]_i_22_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \iv[11]_i_21 
       (.I0(\grn_reg[1]_1 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[0]_1 ),
        .O(\iv[11]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[11]_i_22 
       (.I0(\grn_reg[12]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[11]_0 ),
        .O(\iv[11]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCCF0F0FF00)) 
    \iv[12]_i_15 
       (.I0(\grn_reg[15]_0 ),
        .I1(\grn_reg[14]_0 ),
        .I2(\grn_reg[13]_0 ),
        .I3(\grn_reg[12]_0 ),
        .I4(\iv[8]_i_14_0 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\iv[0]_i_16_1 ));
  LUT6 #(
    .INIT(64'h505F3030505F303F)) 
    \iv[12]_i_17 
       (.I0(\grn_reg[2]_1 ),
        .I1(\grn_reg[1]_1 ),
        .I2(\iv[8]_i_5_0 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .I4(\iv[8]_i_14_0 ),
        .I5(out[1]),
        .O(\sr_reg[6]_6 ));
  LUT6 #(
    .INIT(64'h0F000F0F5C5C5C5C)) 
    \iv[13]_i_14 
       (.I0(\iv[13]_i_21_n_0 ),
        .I1(\iv[13]_i_22_n_0 ),
        .I2(\iv[8]_i_5_0 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .I4(\iv[13]_i_7 ),
        .I5(\iv[8]_i_5 ),
        .O(\iv[14]_i_22 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[13]_i_15 
       (.I0(\iv[13]_i_24_n_0 ),
        .I1(\iv[13]_i_25_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[0]_i_15_n_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[0]_i_17_n_0 ),
        .O(\iv[0]_i_17_0 ));
  LUT6 #(
    .INIT(64'hF5F5FC0C0505FC0C)) 
    \iv[13]_i_16 
       (.I0(\iv[13]_i_21_n_0 ),
        .I1(\iv[13]_i_22_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[13]_i_26_n_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[5]_i_8_0 ),
        .O(\iv[13]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[13]_i_18 
       (.I0(\iv[13]_i_30_n_0 ),
        .I1(\iv[13]_i_31_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[13]_i_32_n_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[13]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \iv[13]_i_19 
       (.I0(\iv[13]_i_33_n_0 ),
        .I1(\iv[13]_i_34_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[13]_i_35_n_0 ),
        .I4(\iv[13]_i_36_n_0 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\iv[13]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h5754)) 
    \iv[13]_i_20 
       (.I0(\grn_reg[15]_0 ),
        .I1(\iv[8]_i_5 ),
        .I2(\iv[8]_i_5_0 ),
        .I3(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[13]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_21 
       (.I0(\grn_reg[2]_1 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[3]_1 ),
        .O(\iv[13]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[13]_i_22 
       (.I0(\grn_reg[4]_13 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[5]_0 ),
        .O(\iv[13]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[13]_i_24 
       (.I0(\grn_reg[10]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[11]_0 ),
        .O(\iv[13]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[13]_i_25 
       (.I0(\grn_reg[12]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[13]_0 ),
        .O(\iv[13]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \iv[13]_i_26 
       (.I0(\grn_reg[1]_1 ),
        .I1(\grn_reg[0]_1 ),
        .I2(\iv[8]_i_14_0 ),
        .O(\iv[13]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_28 
       (.I0(\grn_reg[14]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[13]_0 ),
        .O(\badr[13]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_30 
       (.I0(\grn_reg[3]_1 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[2]_1 ),
        .O(\iv[13]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_31 
       (.I0(\grn_reg[1]_1 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[0]_1 ),
        .O(\iv[13]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \iv[13]_i_32 
       (.I0(\grn_reg[15]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(out[1]),
        .O(\iv[13]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_33 
       (.I0(\grn_reg[11]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[10]_0 ),
        .O(\iv[13]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_34 
       (.I0(\grn_reg[9]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[8]_0 ),
        .O(\iv[13]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_35 
       (.I0(\grn_reg[7]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[6]_0 ),
        .O(\iv[13]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_36 
       (.I0(\grn_reg[5]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[4]_13 ),
        .O(\iv[13]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \iv[13]_i_6 
       (.I0(\iv[14]_i_22 ),
        .I1(\iv[5]_i_2 ),
        .I2(\iv[0]_i_17_0 ),
        .I3(\iv[13]_i_2 ),
        .I4(\iv[13]_i_16_n_0 ),
        .I5(\iv[13]_i_2_0 ),
        .O(tout__1_carry_i_10));
  LUT6 #(
    .INIT(64'hF0F0A03000F0A030)) 
    \iv[13]_i_8 
       (.I0(\iv[13]_i_18_n_0 ),
        .I1(\iv[13]_i_19_n_0 ),
        .I2(\iv[13]_i_2_1 ),
        .I3(\iv[2]_i_2 ),
        .I4(\iv[2]_i_2_0 ),
        .I5(\iv[13]_i_20_n_0 ),
        .O(\iv[13]_i_20_0 ));
  LUT6 #(
    .INIT(64'h3F3FAFA03030AFA0)) 
    \iv[14]_i_15 
       (.I0(\iv[0]_i_16_4 ),
        .I1(\iv[14]_i_4 ),
        .I2(\iv[5]_i_2 ),
        .I3(\iv[0]_i_16_5 ),
        .I4(\iv[8]_i_5 ),
        .I5(\iv[0]_i_16_6 ),
        .O(\iv[14]_i_37_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[14]_i_21 
       (.I0(\grn_reg[4]_13 ),
        .I1(\grn_reg[3]_1 ),
        .I2(\grn_reg[2]_1 ),
        .I3(\grn_reg[1]_1 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_5 ));
  LUT6 #(
    .INIT(64'h0F0F5555000F3333)) 
    \iv[14]_i_23 
       (.I0(\grn_reg[15]_0 ),
        .I1(\grn_reg[14]_0 ),
        .I2(\bdatw[8]_INST_0_i_2_1 ),
        .I3(out[1]),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\sr_reg[6]_10 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[14]_i_27 
       (.I0(\grn_reg[12]_0 ),
        .I1(\grn_reg[11]_0 ),
        .I2(\grn_reg[10]_0 ),
        .I3(\grn_reg[9]_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_11 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[14]_i_28 
       (.I0(\grn_reg[8]_0 ),
        .I1(\grn_reg[7]_0 ),
        .I2(\grn_reg[6]_0 ),
        .I3(\grn_reg[5]_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_8 ));
  LUT6 #(
    .INIT(64'hF000FFFFCACACACA)) 
    \iv[14]_i_32 
       (.I0(\grn_reg[2]_1 ),
        .I1(\grn_reg[1]_1 ),
        .I2(\iv[8]_i_14_0 ),
        .I3(out[1]),
        .I4(\iv[6]_i_8_0 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\sr_reg[6]_7 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \iv[14]_i_33 
       (.I0(\grn_reg[6]_0 ),
        .I1(\grn_reg[5]_0 ),
        .I2(\grn_reg[4]_13 ),
        .I3(\grn_reg[3]_1 ),
        .I4(\iv[8]_i_14_0 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\iv[0]_i_16_4 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \iv[14]_i_36 
       (.I0(\grn_reg[14]_0 ),
        .I1(\grn_reg[13]_0 ),
        .I2(\grn_reg[12]_0 ),
        .I3(\grn_reg[11]_0 ),
        .I4(\iv[8]_i_14_0 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\iv[0]_i_16_5 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \iv[14]_i_37 
       (.I0(\grn_reg[10]_0 ),
        .I1(\grn_reg[9]_0 ),
        .I2(\grn_reg[8]_0 ),
        .I3(\grn_reg[7]_0 ),
        .I4(\iv[8]_i_14_0 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\iv[0]_i_16_6 ));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[14]_i_38 
       (.I0(\grn_reg[0]_1 ),
        .I1(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_1 ));
  LUT6 #(
    .INIT(64'hAA00AAFF330F330F)) 
    \iv[1]_i_12 
       (.I0(\grn_reg[15]_0 ),
        .I1(\iv[11]_i_22_n_0 ),
        .I2(\iv[9]_i_20_n_0 ),
        .I3(\iv[8]_i_5_0 ),
        .I4(\badr[13]_INST_0_i_1_0 ),
        .I5(\iv[8]_i_5 ),
        .O(\iv[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[1]_i_13 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(\iv[9]_i_20_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[13]_i_32_n_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0A0C0CFA0A)) 
    \iv[1]_i_14 
       (.I0(\iv[8]_i_22_n_0 ),
        .I1(\iv[8]_i_25_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[8]_i_24_n_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[5]_i_15_n_0 ),
        .O(\iv[5]_i_15_0 ));
  LUT6 #(
    .INIT(64'hCECCCECFFEFCFEFF)) 
    \iv[1]_i_5 
       (.I0(\iv[1]_i_12_n_0 ),
        .I1(\iv[2]_i_2_1 ),
        .I2(\iv[2]_i_2 ),
        .I3(\iv[2]_i_2_0 ),
        .I4(\iv[1]_i_13_n_0 ),
        .I5(\iv[5]_i_15_0 ),
        .O(\iv[1]_i_14_0 ));
  LUT6 #(
    .INIT(64'h00F0FFF0AACCAACC)) 
    \iv[2]_i_12 
       (.I0(\iv[8]_i_20_n_0 ),
        .I1(\iv[13]_i_33_n_0 ),
        .I2(\iv[8]_i_21_n_0 ),
        .I3(\iv[8]_i_5 ),
        .I4(\grn_reg[15]_0 ),
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
        .I5(\iv[13]_i_35_0 ),
        .O(\iv[11]_i_17_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[3]_i_12 
       (.I0(\iv[8]_i_24_n_0 ),
        .I1(\iv[8]_i_25_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[9]_i_20_n_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[5]_i_15_n_0 ),
        .O(\iv[5]_i_15_1 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \iv[3]_i_14 
       (.I0(\iv[6]_i_20_n_0 ),
        .I1(\iv[5]_i_16_n_0 ),
        .I2(\iv[5]_i_17_n_0 ),
        .I3(\iv[8]_i_5_0 ),
        .I4(\iv[9]_i_21_n_0 ),
        .I5(\iv[8]_i_5 ),
        .O(\iv[14]_i_22_1 ));
  LUT6 #(
    .INIT(64'h0000FFFF8F008F00)) 
    \iv[3]_i_5 
       (.I0(\grn_reg[15]_0 ),
        .I1(\iv[8]_i_5 ),
        .I2(\iv[13]_i_28_1 ),
        .I3(\iv[2]_i_2_0 ),
        .I4(\iv[5]_i_15_1 ),
        .I5(\iv[2]_i_2 ),
        .O(\iv[14]_i_31 ));
  LUT6 #(
    .INIT(64'hAAAACCCCF0F0FF00)) 
    \iv[4]_i_12 
       (.I0(\grn_reg[11]_0 ),
        .I1(\grn_reg[10]_0 ),
        .I2(\grn_reg[9]_0 ),
        .I3(\grn_reg[8]_0 ),
        .I4(\iv[8]_i_14_0 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\iv[4]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[4]_i_13 
       (.I0(tout__1_carry_i_9),
        .I1(\iv[13]_i_2_0 ),
        .O(\iv[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF505F3F3F5050303)) 
    \iv[4]_i_14 
       (.I0(\badr[2]_INST_0_i_1_0 ),
        .I1(\badr[4]_INST_0_i_1_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\badr[15]_INST_0_i_1_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[2]_i_8 ),
        .O(\sr_reg[6]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[4]_i_6 
       (.I0(\iv[4]_i_12_n_0 ),
        .I1(\iv[0]_i_16_0 ),
        .I2(\iv[2]_i_2 ),
        .I3(\iv[4]_i_13_n_0 ),
        .I4(\iv[8]_i_5 ),
        .I5(\iv[0]_i_16_1 ),
        .O(\iv[12]_i_15_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    \iv[5]_i_13 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(\iv[9]_i_20_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[8]_i_24_n_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[5]_i_15_n_0 ),
        .O(\iv[5]_i_15_2 ));
  LUT6 #(
    .INIT(64'h05F505F50303F3F3)) 
    \iv[5]_i_14 
       (.I0(\iv[9]_i_21_n_0 ),
        .I1(\iv[9]_i_22_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[5]_i_16_n_0 ),
        .I4(\iv[5]_i_17_n_0 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\iv[5]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_15 
       (.I0(\grn_reg[8]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[7]_0 ),
        .O(\iv[5]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_16 
       (.I0(\grn_reg[7]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[8]_0 ),
        .O(\iv[5]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_17 
       (.I0(\grn_reg[9]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[10]_0 ),
        .O(\iv[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h4700FFFF47004700)) 
    \iv[5]_i_5 
       (.I0(\iv[0]_i_16_3 ),
        .I1(\iv[8]_i_5 ),
        .I2(\sr_reg[6]_1 ),
        .I3(\iv[13]_i_2 ),
        .I4(\iv[13]_i_20_n_0 ),
        .I5(\iv[5]_i_2_1 ),
        .O(\iv[6]_i_12 ));
  LUT5 #(
    .INIT(32'hF322C022)) 
    \iv[5]_i_8 
       (.I0(\iv[14]_i_22 ),
        .I1(\iv[5]_i_2 ),
        .I2(\iv[5]_i_14_n_0 ),
        .I3(\iv[5]_i_2_0 ),
        .I4(\iv[13]_i_16_n_0 ),
        .O(\iv[13]_i_16_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[6]_i_13 
       (.I0(\grn_reg[9]_0 ),
        .I1(\grn_reg[8]_0 ),
        .I2(\grn_reg[7]_0 ),
        .I3(\grn_reg[6]_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[6]_i_15 
       (.I0(\iv[8]_i_21_n_0 ),
        .I1(\iv[13]_i_33_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[13]_i_34_n_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[13]_i_35_n_0 ),
        .O(\iv[13]_i_35_1 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \iv[6]_i_16 
       (.I0(\badr[4]_INST_0_i_1_0 ),
        .I1(\iv[6]_i_20_n_0 ),
        .I2(\iv[6]_i_8_0 ),
        .I3(\iv[8]_i_5_0 ),
        .I4(\badr[2]_INST_0_i_1_0 ),
        .I5(\iv[8]_i_5 ),
        .O(\iv[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[6]_i_17 
       (.I0(\iv[0]_i_17_n_0 ),
        .I1(\iv[13]_i_24_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[13]_i_25_n_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\badr[15]_INST_0_i_1_0 ),
        .O(\iv[10]_i_20_0 ));
  LUT6 #(
    .INIT(64'hF5F5050503F303F3)) 
    \iv[6]_i_18 
       (.I0(\badr[4]_INST_0_i_1_0 ),
        .I1(\iv[6]_i_20_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\badr[2]_INST_0_i_1_0 ),
        .I4(\iv[2]_i_8 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\iv[6]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[6]_i_19 
       (.I0(\grn_reg[3]_1 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[4]_13 ),
        .O(\badr[4]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[6]_i_20 
       (.I0(\grn_reg[5]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[6]_0 ),
        .O(\iv[6]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hF322C022)) 
    \iv[6]_i_8 
       (.I0(\iv[6]_i_16_n_0 ),
        .I1(\iv[5]_i_2 ),
        .I2(\iv[10]_i_20_0 ),
        .I3(\iv[5]_i_2_0 ),
        .I4(\iv[6]_i_18_n_0 ),
        .O(\iv[6]_i_18_0 ));
  LUT5 #(
    .INIT(32'h53FF5300)) 
    \iv[7]_i_12 
       (.I0(\grn_reg[1]_1 ),
        .I1(\grn_reg[0]_1 ),
        .I2(\iv[8]_i_14_0 ),
        .I3(\iv[8]_i_5_0 ),
        .I4(\iv[13]_i_32_n_0 ),
        .O(\sr_reg[6]_5 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[7]_i_13 
       (.I0(\grn_reg[5]_0 ),
        .I1(\grn_reg[4]_13 ),
        .I2(\grn_reg[3]_1 ),
        .I3(\grn_reg[2]_1 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_7 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[7]_i_15 
       (.I0(\grn_reg[10]_0 ),
        .I1(\grn_reg[9]_0 ),
        .I2(\grn_reg[8]_0 ),
        .I3(\grn_reg[7]_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[7]_i_16 
       (.I0(\grn_reg[14]_0 ),
        .I1(\grn_reg[13]_0 ),
        .I2(\grn_reg[12]_0 ),
        .I3(\grn_reg[11]_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2 ));
  LUT6 #(
    .INIT(64'hF3F3F0FFF5F5F0FF)) 
    \iv[7]_i_18 
       (.I0(\grn_reg[14]_0 ),
        .I1(\grn_reg[13]_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[5]_i_8_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\sr_reg[6]_8 ));
  LUT6 #(
    .INIT(64'hC0C000F0A0A000F0)) 
    \iv[7]_i_19 
       (.I0(\grn_reg[10]_0 ),
        .I1(\grn_reg[9]_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[9]_i_21_n_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_10 ));
  LUT6 #(
    .INIT(64'hF505F3F3F5050303)) 
    \iv[7]_i_20 
       (.I0(\iv[13]_i_22_n_0 ),
        .I1(\iv[0]_i_15_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[11]_i_21_n_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[13]_i_21_n_0 ),
        .O(\iv[13]_i_21_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \iv[8]_i_13 
       (.I0(\iv[8]_i_20_n_0 ),
        .I1(\iv[8]_i_21_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[13]_i_33_n_0 ),
        .I4(\iv[13]_i_34_n_0 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\iv[0]_i_16_2 ));
  LUT6 #(
    .INIT(64'hFA0AFA0AFCFC0C0C)) 
    \iv[8]_i_14 
       (.I0(\iv[8]_i_22_n_0 ),
        .I1(\iv[8]_i_23_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[8]_i_24_n_0 ),
        .I4(\iv[8]_i_25_n_0 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\sr_reg[6] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[8]_i_17 
       (.I0(\iv[13]_i_24_n_0 ),
        .I1(\iv[8]_i_5_0 ),
        .I2(\iv[13]_i_25_n_0 ),
        .O(\iv[13]_i_25_0 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[8]_i_18 
       (.I0(\grn_reg[4]_13 ),
        .I1(\grn_reg[3]_1 ),
        .I2(\grn_reg[2]_1 ),
        .I3(\grn_reg[1]_1 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_6 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[8]_i_19 
       (.I0(\grn_reg[8]_0 ),
        .I1(\grn_reg[7]_0 ),
        .I2(\grn_reg[6]_0 ),
        .I3(\grn_reg[5]_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_9 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[8]_i_20 
       (.I0(\grn_reg[15]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[14]_0 ),
        .O(\iv[8]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[8]_i_21 
       (.I0(\grn_reg[13]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[12]_0 ),
        .O(\iv[8]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[8]_i_22 
       (.I0(\grn_reg[2]_1 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[1]_1 ),
        .O(\iv[8]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[8]_i_23 
       (.I0(\grn_reg[0]_1 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(out[1]),
        .O(\iv[8]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[8]_i_24 
       (.I0(\grn_reg[6]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[5]_0 ),
        .O(\iv[8]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[8]_i_25 
       (.I0(\grn_reg[4]_13 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[3]_1 ),
        .O(\iv[8]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \iv[9]_i_12 
       (.I0(\grn_reg[15]_0 ),
        .I1(\iv[8]_i_5_0 ),
        .I2(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[13]_i_28_2 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[9]_i_13 
       (.I0(\iv[13]_i_32_n_0 ),
        .I1(\iv[8]_i_5_0 ),
        .I2(\badr[13]_INST_0_i_1_0 ),
        .O(\sr_reg[6]_1 ));
  LUT6 #(
    .INIT(64'hAAAACCCCF0F0FF00)) 
    \iv[9]_i_14 
       (.I0(\grn_reg[7]_0 ),
        .I1(\grn_reg[6]_0 ),
        .I2(\grn_reg[5]_0 ),
        .I3(\grn_reg[4]_13 ),
        .I4(\iv[8]_i_14_0 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\iv[0]_i_16_0 ));
  LUT6 #(
    .INIT(64'h555533330F0F00FF)) 
    \iv[9]_i_15 
       (.I0(\grn_reg[3]_1 ),
        .I1(\grn_reg[2]_1 ),
        .I2(\grn_reg[1]_1 ),
        .I3(\grn_reg[0]_1 ),
        .I4(\iv[8]_i_14_0 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\iv[0]_i_16_3 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[9]_i_16 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(\iv[9]_i_20_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[9]_i_7 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[13]_i_28_0 ));
  LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
    \iv[9]_i_17 
       (.I0(\iv[13]_i_21_n_0 ),
        .I1(\iv[13]_i_22_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[0]_i_15_n_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[0]_i_17_n_0 ),
        .O(\iv[0]_i_17_1 ));
  LUT6 #(
    .INIT(64'h5F5F3F3050503F30)) 
    \iv[9]_i_19 
       (.I0(\iv[9]_i_21_n_0 ),
        .I1(\iv[9]_i_22_n_0 ),
        .I2(\iv[8]_i_5 ),
        .I3(\iv[13]_i_26_n_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[5]_i_8_0 ),
        .O(\sr_reg[6]_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[9]_i_20 
       (.I0(\grn_reg[10]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[9]_0 ),
        .O(\iv[9]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[9]_i_21 
       (.I0(\grn_reg[11]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[12]_0 ),
        .O(\iv[9]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[9]_i_22 
       (.I0(\grn_reg[13]_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\grn_reg[14]_0 ),
        .O(\iv[9]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \sr[6]_i_10 
       (.I0(\grn_reg[12]_0 ),
        .I1(\grn_reg[11]_0 ),
        .I2(\grn_reg[10]_0 ),
        .I3(\grn_reg[9]_0 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_12 ));
  LUT6 #(
    .INIT(64'h30305F503F3F5F5F)) 
    \sr[6]_i_11 
       (.I0(\grn_reg[14]_0 ),
        .I1(\grn_reg[13]_0 ),
        .I2(\iv[8]_i_5_0 ),
        .I3(\iv[13]_i_2_0 ),
        .I4(\iv[8]_i_14_0 ),
        .I5(\grn_reg[15]_0 ),
        .O(\badr[15]_INST_0_i_1_1 ));
  LUT6 #(
    .INIT(64'h505F3F3F505F3030)) 
    \sr[6]_i_5 
       (.I0(\bdatw[8]_INST_0_i_2 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\iv[5]_i_2 ),
        .I3(\iv[0]_i_16 ),
        .I4(\iv[8]_i_5 ),
        .I5(\sr[6]_i_9_n_0 ),
        .O(\sr[6]_i_9_0 ));
  LUT6 #(
    .INIT(64'h555533330F0F00FF)) 
    \sr[6]_i_8 
       (.I0(\grn_reg[6]_0 ),
        .I1(\grn_reg[5]_0 ),
        .I2(\grn_reg[4]_13 ),
        .I3(\grn_reg[3]_1 ),
        .I4(\iv[8]_i_14_0 ),
        .I5(\iv[8]_i_5_0 ),
        .O(\iv[0]_i_16 ));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \sr[6]_i_9 
       (.I0(\grn_reg[2]_1 ),
        .I1(\grn_reg[1]_1 ),
        .I2(\iv[8]_i_14_0 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .I4(\iv[8]_i_5_0 ),
        .O(\sr[6]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \sr[7]_i_11 
       (.I0(\grn_reg[15]_0 ),
        .I1(\iv[13]_i_2_0 ),
        .O(tout__1_carry_i_10_0));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[7]_i_12 
       (.I0(\grn_reg[15]_0 ),
        .I1(\iv[2]_i_2_0 ),
        .O(tout__1_carry_i_9));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4700)) 
    \sr[7]_i_14 
       (.I0(\bdatw[8]_INST_0_i_2_2 ),
        .I1(\iv[8]_i_5 ),
        .I2(\bdatw[8]_INST_0_i_2_3 ),
        .I3(\iv[13]_i_2 ),
        .I4(\iv[2]_i_2_1 ),
        .I5(tout__1_carry_i_9),
        .O(\sr[7]_i_12_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[7]_i_19 
       (.I0(\iv[13]_i_22_n_0 ),
        .I1(\iv[8]_i_5_0 ),
        .I2(\iv[0]_i_15_n_0 ),
        .O(\iv[0]_i_15_0 ));
  LUT6 #(
    .INIT(64'h00F0333300F05555)) 
    \sr[7]_i_20 
       (.I0(\grn_reg[3]_1 ),
        .I1(\grn_reg[2]_1 ),
        .I2(\iv[13]_i_7 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .I4(\iv[8]_i_5_0 ),
        .I5(\iv[8]_i_14_0 ),
        .O(\bdatw[8]_INST_0_i_2_4 ));
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
   (\grn_reg[5]_0 ,
    \grn_reg[6]_0 ,
    \grn_reg[7]_0 ,
    Q,
    out,
    gr7_bus1__0,
    \bdatw[15]_INST_0_i_8 ,
    gr0_bus1__0,
    \bdatw[15]_INST_0_i_28_0 ,
    \bdatw[15]_INST_0_i_28_1 ,
    \bdatw[15]_INST_0_i_28_2 ,
    gr3_bus1__0,
    \bdatw[15]_INST_0_i_28_3 ,
    gr4_bus1__0,
    \bdatw[15]_INST_0_i_64_0 ,
    gr3_bus1__0_0,
    \bdatw[15]_INST_0_i_64_1 ,
    gr4_bus1__0_1,
    \bdatw[15]_INST_0_i_63_0 ,
    gr5_bus1__0_6,
    \bdatw[15]_INST_0_i_63_1 ,
    gr6_bus1__0,
    \bdatw[15]_INST_0_i_64_2 ,
    gr5_bus1__0_7,
    \bdatw[15]_INST_0_i_64_3 ,
    gr6_bus1__0_8,
    \bdatw[15]_INST_0_i_64_4 ,
    gr7_bus1__0_11,
    \bdatw[15]_INST_0_i_64_5 ,
    gr0_bus1__0_12,
    \bdatw[15]_INST_0_i_63_2 ,
    gr1_bus1__0,
    \bdatw[15]_INST_0_i_63_3 ,
    gr2_bus1__0_15,
    \bdatw[15]_INST_0_i_64_6 ,
    gr1_bus1__0_16,
    \bdatw[15]_INST_0_i_64_7 ,
    gr2_bus1__0_17,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output \grn_reg[5]_0 ;
  output \grn_reg[6]_0 ;
  output \grn_reg[7]_0 ;
  output [15:0]Q;
  input [2:0]out;
  input gr7_bus1__0;
  input [2:0]\bdatw[15]_INST_0_i_8 ;
  input gr0_bus1__0;
  input [2:0]\bdatw[15]_INST_0_i_28_0 ;
  input [0:0]\bdatw[15]_INST_0_i_28_1 ;
  input [2:0]\bdatw[15]_INST_0_i_28_2 ;
  input gr3_bus1__0;
  input [2:0]\bdatw[15]_INST_0_i_28_3 ;
  input gr4_bus1__0;
  input [2:0]\bdatw[15]_INST_0_i_64_0 ;
  input gr3_bus1__0_0;
  input [2:0]\bdatw[15]_INST_0_i_64_1 ;
  input gr4_bus1__0_1;
  input [2:0]\bdatw[15]_INST_0_i_63_0 ;
  input gr5_bus1__0_6;
  input [2:0]\bdatw[15]_INST_0_i_63_1 ;
  input gr6_bus1__0;
  input [2:0]\bdatw[15]_INST_0_i_64_2 ;
  input gr5_bus1__0_7;
  input [2:0]\bdatw[15]_INST_0_i_64_3 ;
  input gr6_bus1__0_8;
  input [2:0]\bdatw[15]_INST_0_i_64_4 ;
  input gr7_bus1__0_11;
  input [2:0]\bdatw[15]_INST_0_i_64_5 ;
  input gr0_bus1__0_12;
  input [2:0]\bdatw[15]_INST_0_i_63_2 ;
  input gr1_bus1__0;
  input [2:0]\bdatw[15]_INST_0_i_63_3 ;
  input gr2_bus1__0_15;
  input [2:0]\bdatw[15]_INST_0_i_64_6 ;
  input gr1_bus1__0_16;
  input [2:0]\bdatw[15]_INST_0_i_64_7 ;
  input gr2_bus1__0_17;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire \bdatw[13]_INST_0_i_25_n_0 ;
  wire \bdatw[13]_INST_0_i_26_n_0 ;
  wire \bdatw[13]_INST_0_i_43_n_0 ;
  wire \bdatw[13]_INST_0_i_44_n_0 ;
  wire \bdatw[13]_INST_0_i_45_n_0 ;
  wire \bdatw[13]_INST_0_i_46_n_0 ;
  wire \bdatw[13]_INST_0_i_47_n_0 ;
  wire \bdatw[13]_INST_0_i_48_n_0 ;
  wire \bdatw[14]_INST_0_i_21_n_0 ;
  wire \bdatw[14]_INST_0_i_22_n_0 ;
  wire \bdatw[14]_INST_0_i_40_n_0 ;
  wire \bdatw[14]_INST_0_i_41_n_0 ;
  wire \bdatw[14]_INST_0_i_42_n_0 ;
  wire \bdatw[14]_INST_0_i_43_n_0 ;
  wire \bdatw[14]_INST_0_i_44_n_0 ;
  wire \bdatw[14]_INST_0_i_45_n_0 ;
  wire \bdatw[15]_INST_0_i_112_n_0 ;
  wire \bdatw[15]_INST_0_i_113_n_0 ;
  wire \bdatw[15]_INST_0_i_114_n_0 ;
  wire \bdatw[15]_INST_0_i_115_n_0 ;
  wire \bdatw[15]_INST_0_i_116_n_0 ;
  wire \bdatw[15]_INST_0_i_117_n_0 ;
  wire [2:0]\bdatw[15]_INST_0_i_28_0 ;
  wire [0:0]\bdatw[15]_INST_0_i_28_1 ;
  wire [2:0]\bdatw[15]_INST_0_i_28_2 ;
  wire [2:0]\bdatw[15]_INST_0_i_28_3 ;
  wire [2:0]\bdatw[15]_INST_0_i_63_0 ;
  wire [2:0]\bdatw[15]_INST_0_i_63_1 ;
  wire [2:0]\bdatw[15]_INST_0_i_63_2 ;
  wire [2:0]\bdatw[15]_INST_0_i_63_3 ;
  wire \bdatw[15]_INST_0_i_63_n_0 ;
  wire [2:0]\bdatw[15]_INST_0_i_64_0 ;
  wire [2:0]\bdatw[15]_INST_0_i_64_1 ;
  wire [2:0]\bdatw[15]_INST_0_i_64_2 ;
  wire [2:0]\bdatw[15]_INST_0_i_64_3 ;
  wire [2:0]\bdatw[15]_INST_0_i_64_4 ;
  wire [2:0]\bdatw[15]_INST_0_i_64_5 ;
  wire [2:0]\bdatw[15]_INST_0_i_64_6 ;
  wire [2:0]\bdatw[15]_INST_0_i_64_7 ;
  wire \bdatw[15]_INST_0_i_64_n_0 ;
  wire [2:0]\bdatw[15]_INST_0_i_8 ;
  wire clk;
  wire gr0_bus1__0;
  wire gr0_bus1__0_12;
  wire gr1_bus1__0;
  wire gr1_bus1__0_16;
  wire gr2_bus1__0_15;
  wire gr2_bus1__0_17;
  wire gr3_bus1__0;
  wire gr3_bus1__0_0;
  wire gr4_bus1__0;
  wire gr4_bus1__0_1;
  wire gr5_bus1__0_6;
  wire gr5_bus1__0_7;
  wire gr6_bus1__0;
  wire gr6_bus1__0_8;
  wire gr7_bus1__0;
  wire gr7_bus1__0_11;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;
  wire \grn_reg[5]_0 ;
  wire \grn_reg[6]_0 ;
  wire \grn_reg[7]_0 ;
  wire [2:0]out;

  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_17 
       (.I0(\bdatw[13]_INST_0_i_25_n_0 ),
        .I1(\bdatw[13]_INST_0_i_26_n_0 ),
        .I2(out[0]),
        .I3(gr7_bus1__0),
        .I4(\bdatw[15]_INST_0_i_8 [0]),
        .I5(gr0_bus1__0),
        .O(\grn_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[13]_INST_0_i_25 
       (.I0(\bdatw[13]_INST_0_i_43_n_0 ),
        .I1(\bdatw[15]_INST_0_i_28_2 [0]),
        .I2(gr3_bus1__0),
        .I3(\bdatw[15]_INST_0_i_28_3 [0]),
        .I4(gr4_bus1__0),
        .I5(\bdatw[13]_INST_0_i_44_n_0 ),
        .O(\bdatw[13]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_26 
       (.I0(\bdatw[15]_INST_0_i_28_0 [0]),
        .I1(\bdatw[15]_INST_0_i_28_1 ),
        .I2(\bdatw[13]_INST_0_i_45_n_0 ),
        .I3(\bdatw[13]_INST_0_i_46_n_0 ),
        .I4(\bdatw[13]_INST_0_i_47_n_0 ),
        .I5(\bdatw[13]_INST_0_i_48_n_0 ),
        .O(\bdatw[13]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_43 
       (.I0(\bdatw[15]_INST_0_i_63_0 [0]),
        .I1(gr5_bus1__0_6),
        .I2(\bdatw[15]_INST_0_i_63_1 [0]),
        .I3(gr6_bus1__0),
        .O(\bdatw[13]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_44 
       (.I0(\bdatw[15]_INST_0_i_63_2 [0]),
        .I1(gr1_bus1__0),
        .I2(\bdatw[15]_INST_0_i_63_3 [0]),
        .I3(gr2_bus1__0_15),
        .O(\bdatw[13]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_45 
       (.I0(\bdatw[15]_INST_0_i_64_2 [0]),
        .I1(gr5_bus1__0_7),
        .I2(\bdatw[15]_INST_0_i_64_3 [0]),
        .I3(gr6_bus1__0_8),
        .O(\bdatw[13]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_46 
       (.I0(\bdatw[15]_INST_0_i_64_4 [0]),
        .I1(gr7_bus1__0_11),
        .I2(\bdatw[15]_INST_0_i_64_5 [0]),
        .I3(gr0_bus1__0_12),
        .O(\bdatw[13]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_47 
       (.I0(\bdatw[15]_INST_0_i_64_6 [0]),
        .I1(gr1_bus1__0_16),
        .I2(\bdatw[15]_INST_0_i_64_7 [0]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[13]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_48 
       (.I0(\bdatw[15]_INST_0_i_64_0 [0]),
        .I1(gr3_bus1__0_0),
        .I2(\bdatw[15]_INST_0_i_64_1 [0]),
        .I3(gr4_bus1__0_1),
        .O(\bdatw[13]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_13 
       (.I0(\bdatw[14]_INST_0_i_21_n_0 ),
        .I1(\bdatw[14]_INST_0_i_22_n_0 ),
        .I2(out[1]),
        .I3(gr7_bus1__0),
        .I4(\bdatw[15]_INST_0_i_8 [1]),
        .I5(gr0_bus1__0),
        .O(\grn_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[14]_INST_0_i_21 
       (.I0(\bdatw[14]_INST_0_i_40_n_0 ),
        .I1(\bdatw[15]_INST_0_i_28_2 [1]),
        .I2(gr3_bus1__0),
        .I3(\bdatw[15]_INST_0_i_28_3 [1]),
        .I4(gr4_bus1__0),
        .I5(\bdatw[14]_INST_0_i_41_n_0 ),
        .O(\bdatw[14]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_22 
       (.I0(\bdatw[15]_INST_0_i_28_0 [1]),
        .I1(\bdatw[15]_INST_0_i_28_1 ),
        .I2(\bdatw[14]_INST_0_i_42_n_0 ),
        .I3(\bdatw[14]_INST_0_i_43_n_0 ),
        .I4(\bdatw[14]_INST_0_i_44_n_0 ),
        .I5(\bdatw[14]_INST_0_i_45_n_0 ),
        .O(\bdatw[14]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_40 
       (.I0(\bdatw[15]_INST_0_i_63_0 [1]),
        .I1(gr5_bus1__0_6),
        .I2(\bdatw[15]_INST_0_i_63_1 [1]),
        .I3(gr6_bus1__0),
        .O(\bdatw[14]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_41 
       (.I0(\bdatw[15]_INST_0_i_63_2 [1]),
        .I1(gr1_bus1__0),
        .I2(\bdatw[15]_INST_0_i_63_3 [1]),
        .I3(gr2_bus1__0_15),
        .O(\bdatw[14]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_42 
       (.I0(\bdatw[15]_INST_0_i_64_2 [1]),
        .I1(gr5_bus1__0_7),
        .I2(\bdatw[15]_INST_0_i_64_3 [1]),
        .I3(gr6_bus1__0_8),
        .O(\bdatw[14]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_43 
       (.I0(\bdatw[15]_INST_0_i_64_4 [1]),
        .I1(gr7_bus1__0_11),
        .I2(\bdatw[15]_INST_0_i_64_5 [1]),
        .I3(gr0_bus1__0_12),
        .O(\bdatw[14]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_44 
       (.I0(\bdatw[15]_INST_0_i_64_6 [1]),
        .I1(gr1_bus1__0_16),
        .I2(\bdatw[15]_INST_0_i_64_7 [1]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[14]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_45 
       (.I0(\bdatw[15]_INST_0_i_64_0 [1]),
        .I1(gr3_bus1__0_0),
        .I2(\bdatw[15]_INST_0_i_64_1 [1]),
        .I3(gr4_bus1__0_1),
        .O(\bdatw[14]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_112 
       (.I0(\bdatw[15]_INST_0_i_63_0 [2]),
        .I1(gr5_bus1__0_6),
        .I2(\bdatw[15]_INST_0_i_63_1 [2]),
        .I3(gr6_bus1__0),
        .O(\bdatw[15]_INST_0_i_112_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_113 
       (.I0(\bdatw[15]_INST_0_i_63_2 [2]),
        .I1(gr1_bus1__0),
        .I2(\bdatw[15]_INST_0_i_63_3 [2]),
        .I3(gr2_bus1__0_15),
        .O(\bdatw[15]_INST_0_i_113_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_114 
       (.I0(\bdatw[15]_INST_0_i_64_2 [2]),
        .I1(gr5_bus1__0_7),
        .I2(\bdatw[15]_INST_0_i_64_3 [2]),
        .I3(gr6_bus1__0_8),
        .O(\bdatw[15]_INST_0_i_114_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_115 
       (.I0(\bdatw[15]_INST_0_i_64_4 [2]),
        .I1(gr7_bus1__0_11),
        .I2(\bdatw[15]_INST_0_i_64_5 [2]),
        .I3(gr0_bus1__0_12),
        .O(\bdatw[15]_INST_0_i_115_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_116 
       (.I0(\bdatw[15]_INST_0_i_64_6 [2]),
        .I1(gr1_bus1__0_16),
        .I2(\bdatw[15]_INST_0_i_64_7 [2]),
        .I3(gr2_bus1__0_17),
        .O(\bdatw[15]_INST_0_i_116_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_117 
       (.I0(\bdatw[15]_INST_0_i_64_0 [2]),
        .I1(gr3_bus1__0_0),
        .I2(\bdatw[15]_INST_0_i_64_1 [2]),
        .I3(gr4_bus1__0_1),
        .O(\bdatw[15]_INST_0_i_117_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_28 
       (.I0(\bdatw[15]_INST_0_i_63_n_0 ),
        .I1(\bdatw[15]_INST_0_i_64_n_0 ),
        .I2(out[2]),
        .I3(gr7_bus1__0),
        .I4(\bdatw[15]_INST_0_i_8 [2]),
        .I5(gr0_bus1__0),
        .O(\grn_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[15]_INST_0_i_63 
       (.I0(\bdatw[15]_INST_0_i_112_n_0 ),
        .I1(\bdatw[15]_INST_0_i_28_2 [2]),
        .I2(gr3_bus1__0),
        .I3(\bdatw[15]_INST_0_i_28_3 [2]),
        .I4(gr4_bus1__0),
        .I5(\bdatw[15]_INST_0_i_113_n_0 ),
        .O(\bdatw[15]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_64 
       (.I0(\bdatw[15]_INST_0_i_28_0 [2]),
        .I1(\bdatw[15]_INST_0_i_28_1 ),
        .I2(\bdatw[15]_INST_0_i_114_n_0 ),
        .I3(\bdatw[15]_INST_0_i_115_n_0 ),
        .I4(\bdatw[15]_INST_0_i_116_n_0 ),
        .I5(\bdatw[15]_INST_0_i_117_n_0 ),
        .O(\bdatw[15]_INST_0_i_64_n_0 ));
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
   (\grn_reg[5]_0 ,
    \grn_reg[6]_0 ,
    \grn_reg[7]_0 ,
    Q,
    out,
    gr0_bus1__0,
    \bdatw[15]_INST_0_i_62_0 ,
    gr3_bus1__0_3,
    \bdatw[15]_INST_0_i_62_1 ,
    gr4_bus1__0_4,
    \bdatw[15]_INST_0_i_62_2 ,
    gr5_bus1__0_9,
    \bdatw[15]_INST_0_i_62_3 ,
    gr6_bus1__0_10,
    \bdatw[15]_INST_0_i_62_4 ,
    gr7_bus1__0_13,
    \bdatw[15]_INST_0_i_62_5 ,
    gr0_bus1__0_14,
    \bdatw[15]_INST_0_i_62_6 ,
    gr1_bus1__0_18,
    \bdatw[15]_INST_0_i_62_7 ,
    gr2_bus1__0_19,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output \grn_reg[5]_0 ;
  output \grn_reg[6]_0 ;
  output \grn_reg[7]_0 ;
  output [15:0]Q;
  input [2:0]out;
  input gr0_bus1__0;
  input [2:0]\bdatw[15]_INST_0_i_62_0 ;
  input gr3_bus1__0_3;
  input [2:0]\bdatw[15]_INST_0_i_62_1 ;
  input gr4_bus1__0_4;
  input [2:0]\bdatw[15]_INST_0_i_62_2 ;
  input gr5_bus1__0_9;
  input [2:0]\bdatw[15]_INST_0_i_62_3 ;
  input gr6_bus1__0_10;
  input [2:0]\bdatw[15]_INST_0_i_62_4 ;
  input gr7_bus1__0_13;
  input [2:0]\bdatw[15]_INST_0_i_62_5 ;
  input gr0_bus1__0_14;
  input [2:0]\bdatw[15]_INST_0_i_62_6 ;
  input gr1_bus1__0_18;
  input [2:0]\bdatw[15]_INST_0_i_62_7 ;
  input gr2_bus1__0_19;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire \bdatw[13]_INST_0_i_39_n_0 ;
  wire \bdatw[13]_INST_0_i_40_n_0 ;
  wire \bdatw[13]_INST_0_i_41_n_0 ;
  wire \bdatw[13]_INST_0_i_42_n_0 ;
  wire \bdatw[14]_INST_0_i_36_n_0 ;
  wire \bdatw[14]_INST_0_i_37_n_0 ;
  wire \bdatw[14]_INST_0_i_38_n_0 ;
  wire \bdatw[14]_INST_0_i_39_n_0 ;
  wire \bdatw[15]_INST_0_i_108_n_0 ;
  wire \bdatw[15]_INST_0_i_109_n_0 ;
  wire \bdatw[15]_INST_0_i_110_n_0 ;
  wire \bdatw[15]_INST_0_i_111_n_0 ;
  wire [2:0]\bdatw[15]_INST_0_i_62_0 ;
  wire [2:0]\bdatw[15]_INST_0_i_62_1 ;
  wire [2:0]\bdatw[15]_INST_0_i_62_2 ;
  wire [2:0]\bdatw[15]_INST_0_i_62_3 ;
  wire [2:0]\bdatw[15]_INST_0_i_62_4 ;
  wire [2:0]\bdatw[15]_INST_0_i_62_5 ;
  wire [2:0]\bdatw[15]_INST_0_i_62_6 ;
  wire [2:0]\bdatw[15]_INST_0_i_62_7 ;
  wire clk;
  wire gr0_bus1__0;
  wire gr0_bus1__0_14;
  wire gr1_bus1__0_18;
  wire gr2_bus1__0_19;
  wire gr3_bus1__0_3;
  wire gr4_bus1__0_4;
  wire gr5_bus1__0_9;
  wire gr6_bus1__0_10;
  wire gr7_bus1__0_13;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;
  wire \grn_reg[5]_0 ;
  wire \grn_reg[6]_0 ;
  wire \grn_reg[7]_0 ;
  wire [2:0]out;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_24 
       (.I0(out[0]),
        .I1(gr0_bus1__0),
        .I2(\bdatw[13]_INST_0_i_39_n_0 ),
        .I3(\bdatw[13]_INST_0_i_40_n_0 ),
        .I4(\bdatw[13]_INST_0_i_41_n_0 ),
        .I5(\bdatw[13]_INST_0_i_42_n_0 ),
        .O(\grn_reg[5]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_39 
       (.I0(\bdatw[15]_INST_0_i_62_2 [0]),
        .I1(gr5_bus1__0_9),
        .I2(\bdatw[15]_INST_0_i_62_3 [0]),
        .I3(gr6_bus1__0_10),
        .O(\bdatw[13]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_40 
       (.I0(\bdatw[15]_INST_0_i_62_4 [0]),
        .I1(gr7_bus1__0_13),
        .I2(\bdatw[15]_INST_0_i_62_5 [0]),
        .I3(gr0_bus1__0_14),
        .O(\bdatw[13]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_41 
       (.I0(\bdatw[15]_INST_0_i_62_6 [0]),
        .I1(gr1_bus1__0_18),
        .I2(\bdatw[15]_INST_0_i_62_7 [0]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[13]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_42 
       (.I0(\bdatw[15]_INST_0_i_62_0 [0]),
        .I1(gr3_bus1__0_3),
        .I2(\bdatw[15]_INST_0_i_62_1 [0]),
        .I3(gr4_bus1__0_4),
        .O(\bdatw[13]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_20 
       (.I0(out[1]),
        .I1(gr0_bus1__0),
        .I2(\bdatw[14]_INST_0_i_36_n_0 ),
        .I3(\bdatw[14]_INST_0_i_37_n_0 ),
        .I4(\bdatw[14]_INST_0_i_38_n_0 ),
        .I5(\bdatw[14]_INST_0_i_39_n_0 ),
        .O(\grn_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_36 
       (.I0(\bdatw[15]_INST_0_i_62_2 [1]),
        .I1(gr5_bus1__0_9),
        .I2(\bdatw[15]_INST_0_i_62_3 [1]),
        .I3(gr6_bus1__0_10),
        .O(\bdatw[14]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_37 
       (.I0(\bdatw[15]_INST_0_i_62_4 [1]),
        .I1(gr7_bus1__0_13),
        .I2(\bdatw[15]_INST_0_i_62_5 [1]),
        .I3(gr0_bus1__0_14),
        .O(\bdatw[14]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_38 
       (.I0(\bdatw[15]_INST_0_i_62_6 [1]),
        .I1(gr1_bus1__0_18),
        .I2(\bdatw[15]_INST_0_i_62_7 [1]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[14]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_39 
       (.I0(\bdatw[15]_INST_0_i_62_0 [1]),
        .I1(gr3_bus1__0_3),
        .I2(\bdatw[15]_INST_0_i_62_1 [1]),
        .I3(gr4_bus1__0_4),
        .O(\bdatw[14]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_108 
       (.I0(\bdatw[15]_INST_0_i_62_2 [2]),
        .I1(gr5_bus1__0_9),
        .I2(\bdatw[15]_INST_0_i_62_3 [2]),
        .I3(gr6_bus1__0_10),
        .O(\bdatw[15]_INST_0_i_108_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_109 
       (.I0(\bdatw[15]_INST_0_i_62_4 [2]),
        .I1(gr7_bus1__0_13),
        .I2(\bdatw[15]_INST_0_i_62_5 [2]),
        .I3(gr0_bus1__0_14),
        .O(\bdatw[15]_INST_0_i_109_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_110 
       (.I0(\bdatw[15]_INST_0_i_62_6 [2]),
        .I1(gr1_bus1__0_18),
        .I2(\bdatw[15]_INST_0_i_62_7 [2]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[15]_INST_0_i_110_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_111 
       (.I0(\bdatw[15]_INST_0_i_62_0 [2]),
        .I1(gr3_bus1__0_3),
        .I2(\bdatw[15]_INST_0_i_62_1 [2]),
        .I3(gr4_bus1__0_4),
        .O(\bdatw[15]_INST_0_i_111_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_62 
       (.I0(out[2]),
        .I1(gr0_bus1__0),
        .I2(\bdatw[15]_INST_0_i_108_n_0 ),
        .I3(\bdatw[15]_INST_0_i_109_n_0 ),
        .I4(\bdatw[15]_INST_0_i_110_n_0 ),
        .I5(\bdatw[15]_INST_0_i_111_n_0 ),
        .O(\grn_reg[7]_0 ));
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
    \sp_reg[6]_0 ,
    \sp_reg[7]_0 ,
    \sp_reg[0]_0 ,
    \sp_reg[1]_0 ,
    \sp_reg[2]_0 ,
    \sp_reg[3]_0 ,
    \sp_reg[4]_0 ,
    \sp_reg[5]_0 ,
    \sp_reg[6]_1 ,
    \sp_reg[7]_1 ,
    \sp_reg[8]_0 ,
    \sp_reg[9]_0 ,
    \sp_reg[10]_0 ,
    \sp_reg[11]_0 ,
    \sp_reg[12]_0 ,
    \sp_reg[13]_0 ,
    \sp_reg[14]_0 ,
    \sp_reg[15]_0 ,
    \bdatw[14]_INST_0_i_6 ,
    ctl_sp_inc,
    ctl_sp_dec,
    SR,
    \sp_reg[15]_1 ,
    clk);
  output [14:0]sp_dec_0;
  output \sp_reg[6]_0 ;
  output \sp_reg[7]_0 ;
  output \sp_reg[0]_0 ;
  output \sp_reg[1]_0 ;
  output \sp_reg[2]_0 ;
  output \sp_reg[3]_0 ;
  output \sp_reg[4]_0 ;
  output \sp_reg[5]_0 ;
  output \sp_reg[6]_1 ;
  output \sp_reg[7]_1 ;
  output \sp_reg[8]_0 ;
  output \sp_reg[9]_0 ;
  output \sp_reg[10]_0 ;
  output \sp_reg[11]_0 ;
  output \sp_reg[12]_0 ;
  output \sp_reg[13]_0 ;
  output \sp_reg[14]_0 ;
  output \sp_reg[15]_0 ;
  input [1:0]\bdatw[14]_INST_0_i_6 ;
  input ctl_sp_inc;
  input ctl_sp_dec;
  input [0:0]SR;
  input [15:0]\sp_reg[15]_1 ;
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
  wire \badr[15]_INST_0_i_85_n_0 ;
  wire \badr[15]_INST_0_i_86_n_0 ;
  wire \badr[15]_INST_0_i_87_n_0 ;
  wire \badr[15]_INST_0_i_88_n_0 ;
  wire \badr[3]_INST_0_i_23_n_0 ;
  wire \badr[3]_INST_0_i_23_n_1 ;
  wire \badr[3]_INST_0_i_23_n_2 ;
  wire \badr[3]_INST_0_i_23_n_3 ;
  wire \badr[3]_INST_0_i_23_n_7 ;
  wire \badr[3]_INST_0_i_24_n_0 ;
  wire \badr[3]_INST_0_i_25_n_0 ;
  wire \badr[3]_INST_0_i_26_n_0 ;
  wire \badr[7]_INST_0_i_23_n_0 ;
  wire \badr[7]_INST_0_i_23_n_1 ;
  wire \badr[7]_INST_0_i_23_n_2 ;
  wire \badr[7]_INST_0_i_23_n_3 ;
  wire \badr[7]_INST_0_i_24_n_0 ;
  wire \badr[7]_INST_0_i_25_n_0 ;
  wire \badr[7]_INST_0_i_26_n_0 ;
  wire \badr[7]_INST_0_i_27_n_0 ;
  wire [1:0]\bdatw[14]_INST_0_i_6 ;
  wire clk;
  wire ctl_sp_dec;
  wire ctl_sp_inc;
  (* DONT_TOUCH *) wire [15:0]sp;
  wire \sp[3]_i_4_n_0 ;
  wire [14:0]sp_dec_0;
  wire \sp_reg[0]_0 ;
  wire \sp_reg[10]_0 ;
  wire \sp_reg[11]_0 ;
  wire \sp_reg[11]_i_3_n_0 ;
  wire \sp_reg[11]_i_3_n_1 ;
  wire \sp_reg[11]_i_3_n_2 ;
  wire \sp_reg[11]_i_3_n_3 ;
  wire \sp_reg[11]_i_3_n_4 ;
  wire \sp_reg[11]_i_3_n_5 ;
  wire \sp_reg[11]_i_3_n_6 ;
  wire \sp_reg[11]_i_3_n_7 ;
  wire \sp_reg[12]_0 ;
  wire \sp_reg[13]_0 ;
  wire \sp_reg[14]_0 ;
  wire \sp_reg[15]_0 ;
  wire [15:0]\sp_reg[15]_1 ;
  wire \sp_reg[15]_i_5_n_1 ;
  wire \sp_reg[15]_i_5_n_2 ;
  wire \sp_reg[15]_i_5_n_3 ;
  wire \sp_reg[15]_i_5_n_4 ;
  wire \sp_reg[15]_i_5_n_5 ;
  wire \sp_reg[15]_i_5_n_6 ;
  wire \sp_reg[15]_i_5_n_7 ;
  wire \sp_reg[1]_0 ;
  wire \sp_reg[2]_0 ;
  wire \sp_reg[3]_0 ;
  wire \sp_reg[3]_i_3_n_0 ;
  wire \sp_reg[3]_i_3_n_1 ;
  wire \sp_reg[3]_i_3_n_2 ;
  wire \sp_reg[3]_i_3_n_3 ;
  wire \sp_reg[3]_i_3_n_4 ;
  wire \sp_reg[3]_i_3_n_5 ;
  wire \sp_reg[3]_i_3_n_6 ;
  wire \sp_reg[4]_0 ;
  wire \sp_reg[5]_0 ;
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
  wire \sp_reg[9]_0 ;
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
        .S({\badr[15]_INST_0_i_85_n_0 ,\badr[15]_INST_0_i_86_n_0 ,\badr[15]_INST_0_i_87_n_0 ,\badr[15]_INST_0_i_88_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_85 
       (.I0(sp[15]),
        .O(\badr[15]_INST_0_i_85_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_86 
       (.I0(sp[14]),
        .O(\badr[15]_INST_0_i_86_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_87 
       (.I0(sp[13]),
        .O(\badr[15]_INST_0_i_87_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_88 
       (.I0(sp[12]),
        .O(\badr[15]_INST_0_i_88_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[3]_INST_0_i_23 
       (.CI(\<const0> ),
        .CO({\badr[3]_INST_0_i_23_n_0 ,\badr[3]_INST_0_i_23_n_1 ,\badr[3]_INST_0_i_23_n_2 ,\badr[3]_INST_0_i_23_n_3 }),
        .CYINIT(\<const0> ),
        .DI({sp[3:1],\<const0> }),
        .O({sp_dec_0[2:0],\badr[3]_INST_0_i_23_n_7 }),
        .S({\badr[3]_INST_0_i_24_n_0 ,\badr[3]_INST_0_i_25_n_0 ,\badr[3]_INST_0_i_26_n_0 ,sp[0]}));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[3]_INST_0_i_24 
       (.I0(sp[3]),
        .O(\badr[3]_INST_0_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[3]_INST_0_i_25 
       (.I0(sp[2]),
        .O(\badr[3]_INST_0_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[3]_INST_0_i_26 
       (.I0(sp[1]),
        .O(\badr[3]_INST_0_i_26_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[7]_INST_0_i_23 
       (.CI(\badr[3]_INST_0_i_23_n_0 ),
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
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_11 
       (.I0(sp_dec_0[5]),
        .I1(\bdatw[14]_INST_0_i_6 [1]),
        .I2(sp[6]),
        .I3(\bdatw[14]_INST_0_i_6 [0]),
        .O(\sp_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_26 
       (.I0(sp_dec_0[6]),
        .I1(\bdatw[14]_INST_0_i_6 [1]),
        .I2(sp[7]),
        .I3(\bdatw[14]_INST_0_i_6 [0]),
        .O(\sp_reg[7]_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \sp[0]_i_2 
       (.I0(ctl_sp_inc),
        .I1(sp[0]),
        .I2(\badr[3]_INST_0_i_23_n_7 ),
        .O(\sp_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[10]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[10]),
        .I3(sp_dec_0[9]),
        .I4(\sp_reg[11]_i_3_n_5 ),
        .O(\sp_reg[10]_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[11]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[11]),
        .I3(sp_dec_0[10]),
        .I4(\sp_reg[11]_i_3_n_4 ),
        .O(\sp_reg[11]_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[12]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[12]),
        .I3(sp_dec_0[11]),
        .I4(\sp_reg[15]_i_5_n_7 ),
        .O(\sp_reg[12]_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[13]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[13]),
        .I3(sp_dec_0[12]),
        .I4(\sp_reg[15]_i_5_n_6 ),
        .O(\sp_reg[13]_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[14]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[14]),
        .I3(sp_dec_0[13]),
        .I4(\sp_reg[15]_i_5_n_5 ),
        .O(\sp_reg[14]_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[15]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[15]),
        .I3(sp_dec_0[14]),
        .I4(\sp_reg[15]_i_5_n_4 ),
        .O(\sp_reg[15]_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[1]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[1]),
        .I3(sp_dec_0[0]),
        .I4(\sp_reg[3]_i_3_n_6 ),
        .O(\sp_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[2]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[2]),
        .I3(sp_dec_0[1]),
        .I4(\sp_reg[3]_i_3_n_5 ),
        .O(\sp_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[3]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[3]),
        .I3(sp_dec_0[2]),
        .I4(\sp_reg[3]_i_3_n_4 ),
        .O(\sp_reg[3]_0 ));
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
        .O(\sp_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[5]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[5]),
        .I3(sp_dec_0[4]),
        .I4(\sp_reg[7]_i_3_n_6 ),
        .O(\sp_reg[5]_0 ));
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
        .O(\sp_reg[8]_0 ));
  LUT5 #(
    .INIT(32'hFEDC3210)) 
    \sp[9]_i_2 
       (.I0(ctl_sp_dec),
        .I1(ctl_sp_inc),
        .I2(sp[9]),
        .I3(sp_dec_0[8]),
        .I4(\sp_reg[11]_i_3_n_6 ),
        .O(\sp_reg[9]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [0]),
        .Q(sp[0]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [10]),
        .Q(sp[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [11]),
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
        .D(\sp_reg[15]_1 [12]),
        .Q(sp[12]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [13]),
        .Q(sp[13]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [14]),
        .Q(sp[14]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [15]),
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
        .D(\sp_reg[15]_1 [1]),
        .Q(sp[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [2]),
        .Q(sp[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [3]),
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
        .D(\sp_reg[15]_1 [4]),
        .Q(sp[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [5]),
        .Q(sp[5]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [6]),
        .Q(sp[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [7]),
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
        .D(\sp_reg[15]_1 [8]),
        .Q(sp[8]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sp_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp_reg[15]_1 [9]),
        .Q(sp[9]),
        .R(SR));
endmodule

module mcvm_rgf_sreg
   (.\sr_reg[15]_0 ({sr[15],sr[14],sr[13],sr[12],sr[11],sr[10],sr[9],sr[8],sr[7],sr[6],sr[5],sr[4],sr[3],sr[2],sr[1],sr[0]}),
    \sr_reg[7]_0 ,
    \sr_reg[4]_0 ,
    \stat_reg[0] ,
    \sr_reg[6]_0 ,
    \sr_reg[7]_1 ,
    \sr_reg[7]_2 ,
    \sr_reg[7]_3 ,
    \sr_reg[7]_4 ,
    \sr_reg[6]_1 ,
    irq_0,
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
    gr4_bus1__0,
    gr3_bus1__0,
    bank_sel,
    \sr_reg[6]_2 ,
    \sr_reg[6]_3 ,
    fch_irq_req,
    S,
    \badr[15]_INST_0_i_119 ,
    ctl_fetch_inferred_i_27,
    Q,
    irq,
    irq_lev,
    \stat[2]_i_3 ,
    bbus_sel_0,
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
    abus_sel_0,
    abus_0,
    \iv[10]_i_19 ,
    fadr,
    D,
    clk,
    \sr_reg[15]_1 ,
    SR,
    \sr_reg[11]_0 ,
    \sr_reg[10]_0 ,
    \sr_reg[7]_5 ,
    \sr_reg[6]_4 ,
    \sr_reg[5]_0 ,
    \sr_reg[4]_1 ,
    \sr_reg[3]_0 ,
    \sr_reg[2]_0 ,
    \sr_reg[1]_5 ,
    \sr_reg[0]_0 );
  output \sr_reg[7]_0 ;
  output \sr_reg[4]_0 ;
  output \stat_reg[0] ;
  output \sr_reg[6]_0 ;
  output \sr_reg[7]_1 ;
  output \sr_reg[7]_2 ;
  output \sr_reg[7]_3 ;
  output \sr_reg[7]_4 ;
  output \sr_reg[6]_1 ;
  output irq_0;
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
  output gr4_bus1__0;
  output gr3_bus1__0;
  output [3:0]bank_sel;
  output \sr_reg[6]_2 ;
  output \sr_reg[6]_3 ;
  output fch_irq_req;
  output [0:0]S;
  input [5:0]\badr[15]_INST_0_i_119 ;
  input ctl_fetch_inferred_i_27;
  input [0:0]Q;
  input irq;
  input [1:0]irq_lev;
  input \stat[2]_i_3 ;
  input [0:0]bbus_sel_0;
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
  input [2:0]abus_sel_0;
  input [1:0]abus_0;
  input \iv[10]_i_19 ;
  input [0:0]fadr;
  input [1:0]D;
  input clk;
  input \sr_reg[15]_1 ;
  input [0:0]SR;
  input \sr_reg[11]_0 ;
  input \sr_reg[10]_0 ;
  input \sr_reg[7]_5 ;
  input \sr_reg[6]_4 ;
  input \sr_reg[5]_0 ;
  input \sr_reg[4]_1 ;
  input \sr_reg[3]_0 ;
  input \sr_reg[2]_0 ;
  input \sr_reg[1]_5 ;
  input \sr_reg[0]_0 ;
     output [15:0]sr;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]D;
  wire [0:0]Q;
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
  wire [5:0]\badr[15]_INST_0_i_119 ;
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
  wire [0:0]bbus_sel_0;
  wire clk;
  wire ctl_fetch_inferred_i_27;
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
  wire irq_0;
  wire [1:0]irq_lev;
  wire \iv[10]_i_19 ;
  wire [4:0]out;
  (* DONT_TOUCH *) wire [15:0]sr;
  wire \sr_reg[0]_0 ;
  wire \sr_reg[10]_0 ;
  wire \sr_reg[11]_0 ;
  wire \sr_reg[15]_1 ;
  wire \sr_reg[1]_0 ;
  wire \sr_reg[1]_1 ;
  wire \sr_reg[1]_2 ;
  wire \sr_reg[1]_3 ;
  wire \sr_reg[1]_4 ;
  wire \sr_reg[1]_5 ;
  wire \sr_reg[2]_0 ;
  wire \sr_reg[3]_0 ;
  wire \sr_reg[4]_0 ;
  wire \sr_reg[4]_1 ;
  wire \sr_reg[5]_0 ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[6]_2 ;
  wire \sr_reg[6]_3 ;
  wire \sr_reg[6]_4 ;
  wire \sr_reg[7]_0 ;
  wire \sr_reg[7]_1 ;
  wire \sr_reg[7]_2 ;
  wire \sr_reg[7]_3 ;
  wire \sr_reg[7]_4 ;
  wire \sr_reg[7]_5 ;
  wire \stat[2]_i_3 ;
  wire \stat_reg[0] ;

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
  LUT6 #(
    .INIT(64'hFFFFFFFF5FA0CFCF)) 
    \badr[15]_INST_0_i_122 
       (.I0(sr[7]),
        .I1(sr[4]),
        .I2(\badr[15]_INST_0_i_119 [2]),
        .I3(sr[5]),
        .I4(\badr[15]_INST_0_i_119 [4]),
        .I5(Q),
        .O(\sr_reg[7]_1 ));
  LUT6 #(
    .INIT(64'hFFFFB8FFFFFFB833)) 
    \badr[15]_INST_0_i_147 
       (.I0(sr[7]),
        .I1(\badr[15]_INST_0_i_119 [2]),
        .I2(sr[6]),
        .I3(\badr[15]_INST_0_i_119 [3]),
        .I4(\badr[15]_INST_0_i_119 [5]),
        .I5(sr[4]),
        .O(\sr_reg[7]_0 ));
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
  LUT6 #(
    .INIT(64'h0800880808000800)) 
    \badr[15]_INST_0_i_186 
       (.I0(\badr[15]_INST_0_i_119 [0]),
        .I1(irq),
        .I2(irq_lev[1]),
        .I3(sr[3]),
        .I4(irq_lev[0]),
        .I5(sr[2]),
        .O(irq_0));
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
    \badr[15]_INST_0_i_91 
       (.I0(sr[0]),
        .I1(sr[1]),
        .O(bank_sel[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_94 
       (.I0(sr[0]),
        .I1(sr[1]),
        .O(bank_sel[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_95 
       (.I0(sr[1]),
        .I1(sr[0]),
        .O(bank_sel[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_96 
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
    .INIT(16'h0800)) 
    \bdatw[10]_INST_0_i_25 
       (.I0(bbus_sel_0),
        .I1(sr[1]),
        .I2(sr[0]),
        .I3(out[2]),
        .O(\sr_reg[1]_2 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \bdatw[11]_INST_0_i_24 
       (.I0(bbus_sel_0),
        .I1(sr[1]),
        .I2(sr[0]),
        .I3(out[3]),
        .O(\sr_reg[1]_3 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \bdatw[12]_INST_0_i_24 
       (.I0(bbus_sel_0),
        .I1(sr[1]),
        .I2(sr[0]),
        .I3(out[4]),
        .O(\sr_reg[1]_4 ));
  LUT6 #(
    .INIT(64'hAEAAEEAEAEAAAEAA)) 
    \bdatw[12]_INST_0_i_79 
       (.I0(Q),
        .I1(irq),
        .I2(irq_lev[1]),
        .I3(sr[3]),
        .I4(irq_lev[0]),
        .I5(sr[2]),
        .O(\stat_reg[0] ));
  LUT6 #(
    .INIT(64'hCFC0303FAFAF5050)) 
    \bdatw[15]_INST_0_i_49 
       (.I0(sr[6]),
        .I1(sr[7]),
        .I2(\badr[15]_INST_0_i_119 [3]),
        .I3(sr[4]),
        .I4(\badr[15]_INST_0_i_119 [1]),
        .I5(\badr[15]_INST_0_i_119 [2]),
        .O(\sr_reg[6]_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \bdatw[15]_INST_0_i_95 
       (.I0(sr[0]),
        .I1(sr[1]),
        .I2(bbus_sel_0),
        .O(gr0_bus1__0));
  LUT4 #(
    .INIT(16'h0800)) 
    \bdatw[8]_INST_0_i_26 
       (.I0(bbus_sel_0),
        .I1(sr[1]),
        .I2(sr[0]),
        .I3(out[0]),
        .O(\sr_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \bdatw[9]_INST_0_i_25 
       (.I0(bbus_sel_0),
        .I1(sr[1]),
        .I2(sr[0]),
        .I3(out[1]),
        .O(\sr_reg[1]_1 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \ccmd[0]_INST_0_i_10 
       (.I0(sr[7]),
        .I1(sr[5]),
        .I2(\badr[15]_INST_0_i_119 [4]),
        .I3(sr[4]),
        .O(\sr_reg[7]_4 ));
  LUT4 #(
    .INIT(16'hB0BB)) 
    ctl_fetch_inferred_i_16
       (.I0(sr[6]),
        .I1(\badr[15]_INST_0_i_119 [3]),
        .I2(sr[5]),
        .I3(\badr[15]_INST_0_i_119 [4]),
        .O(\sr_reg[6]_1 ));
  LUT5 #(
    .INIT(32'hBEDDBE88)) 
    ctl_fetch_inferred_i_17
       (.I0(\badr[15]_INST_0_i_119 [3]),
        .I1(sr[7]),
        .I2(sr[5]),
        .I3(\badr[15]_INST_0_i_119 [4]),
        .I4(sr[4]),
        .O(\sr_reg[7]_2 ));
  LUT6 #(
    .INIT(64'h000FC355FF0FC355)) 
    ctl_fetch_inferred_i_33
       (.I0(sr[4]),
        .I1(sr[5]),
        .I2(sr[7]),
        .I3(\badr[15]_INST_0_i_119 [4]),
        .I4(\badr[15]_INST_0_i_119 [3]),
        .I5(ctl_fetch_inferred_i_27),
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
    \iv[10]_i_22 
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
        .D(\sr_reg[1]_5 ),
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
        .D(\sr_reg[4]_1 ),
        .Q(sr[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[5]_0 ),
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
        .D(\sr_reg[7]_5 ),
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
  LUT6 #(
    .INIT(64'h28AA2800820082AA)) 
    \stat[2]_i_8 
       (.I0(\stat[2]_i_3 ),
        .I1(sr[7]),
        .I2(sr[5]),
        .I3(\badr[15]_INST_0_i_119 [4]),
        .I4(sr[4]),
        .I5(\badr[15]_INST_0_i_119 [1]),
        .O(\sr_reg[7]_3 ));
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
//	2026/09/12	ver.1.26
//		fix: hcmp; fixed hang up issue
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
  wire [0:0]bbus_sel_0;
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
  wire ctl_n_24;
  wire ctl_n_25;
  wire ctl_n_26;
  wire ctl_n_27;
  wire ctl_n_28;
  wire ctl_n_29;
  wire ctl_n_30;
  wire ctl_n_31;
  wire ctl_n_32;
  wire ctl_n_33;
  wire ctl_n_34;
  wire ctl_n_35;
  wire ctl_n_36;
  wire ctl_n_37;
  wire ctl_n_38;
  wire ctl_n_39;
  wire ctl_n_4;
  wire ctl_n_40;
  wire ctl_n_41;
  wire ctl_n_42;
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
  wire fch_n_114;
  wire fch_n_115;
  wire fch_n_116;
  wire fch_n_117;
  wire fch_n_118;
  wire fch_n_119;
  wire fch_n_120;
  wire fch_n_121;
  wire fch_n_122;
  wire fch_n_123;
  wire fch_n_124;
  wire fch_n_125;
  wire fch_n_126;
  wire fch_n_127;
  wire fch_n_128;
  wire fch_n_129;
  wire fch_n_131;
  wire fch_n_132;
  wire fch_n_133;
  wire fch_n_134;
  wire fch_n_135;
  wire fch_n_136;
  wire fch_n_137;
  wire fch_n_138;
  wire fch_n_139;
  wire fch_n_140;
  wire fch_n_141;
  wire fch_n_142;
  wire fch_n_143;
  wire fch_n_144;
  wire fch_n_145;
  wire fch_n_146;
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
  wire fch_n_201;
  wire fch_n_202;
  wire fch_n_219;
  wire fch_n_22;
  wire fch_n_220;
  wire fch_n_221;
  wire fch_n_222;
  wire fch_n_223;
  wire fch_n_224;
  wire fch_n_225;
  wire fch_n_226;
  wire fch_n_227;
  wire fch_n_228;
  wire fch_n_229;
  wire fch_n_230;
  wire fch_n_231;
  wire fch_n_248;
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
  wire fch_n_28;
  wire fch_n_283;
  wire fch_n_284;
  wire fch_n_285;
  wire fch_n_286;
  wire fch_n_287;
  wire fch_n_288;
  wire fch_n_289;
  wire fch_n_29;
  wire fch_n_290;
  wire fch_n_291;
  wire fch_n_292;
  wire fch_n_293;
  wire fch_n_294;
  wire fch_n_295;
  wire fch_n_296;
  wire fch_n_297;
  wire fch_n_298;
  wire fch_n_299;
  wire fch_n_30;
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
  wire fch_n_31;
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
  wire fch_n_32;
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
  wire fch_n_33;
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
  wire fch_n_34;
  wire fch_n_340;
  wire fch_n_341;
  wire fch_n_342;
  wire fch_n_343;
  wire fch_n_35;
  wire fch_n_36;
  wire fch_n_360;
  wire fch_n_361;
  wire fch_n_362;
  wire fch_n_363;
  wire fch_n_364;
  wire fch_n_365;
  wire fch_n_366;
  wire fch_n_367;
  wire fch_n_368;
  wire fch_n_369;
  wire fch_n_37;
  wire fch_n_370;
  wire fch_n_371;
  wire fch_n_372;
  wire fch_n_373;
  wire fch_n_374;
  wire fch_n_375;
  wire fch_n_376;
  wire fch_n_377;
  wire fch_n_378;
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
  wire fch_n_400;
  wire fch_n_401;
  wire fch_n_402;
  wire fch_n_403;
  wire fch_n_55;
  wire fch_n_57;
  wire fch_n_58;
  wire fch_n_59;
  wire fch_n_60;
  wire fch_n_73;
  wire fch_n_76;
  wire fch_n_77;
  wire fch_n_78;
  wire fch_n_79;
  wire fch_n_86;
  wire fch_n_89;
  wire fch_n_90;
  wire fch_n_91;
  wire fch_n_92;
  wire fch_n_94;
  wire fch_n_95;
  wire fch_n_96;
  wire fch_n_97;
  wire fch_n_98;
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
  wire rgf_n_216;
  wire rgf_n_218;
  wire rgf_n_219;
  wire rgf_n_22;
  wire rgf_n_23;
  wire rgf_n_24;
  wire rgf_n_25;
  wire rgf_n_26;
  wire rgf_n_27;
  wire rgf_n_28;
  wire rgf_n_288;
  wire rgf_n_289;
  wire rgf_n_29;
  wire rgf_n_290;
  wire rgf_n_291;
  wire rgf_n_292;
  wire rgf_n_293;
  wire rgf_n_294;
  wire rgf_n_295;
  wire rgf_n_296;
  wire rgf_n_297;
  wire rgf_n_3;
  wire rgf_n_30;
  wire rgf_n_31;
  wire rgf_n_314;
  wire rgf_n_315;
  wire rgf_n_316;
  wire rgf_n_317;
  wire rgf_n_318;
  wire rgf_n_319;
  wire rgf_n_32;
  wire rgf_n_320;
  wire rgf_n_321;
  wire rgf_n_322;
  wire rgf_n_323;
  wire rgf_n_324;
  wire rgf_n_325;
  wire rgf_n_326;
  wire rgf_n_33;
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
  wire rgf_n_36;
  wire rgf_n_37;
  wire rgf_n_373;
  wire rgf_n_374;
  wire rgf_n_375;
  wire rgf_n_376;
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
  wire rgf_n_43;
  wire rgf_n_44;
  wire rgf_n_45;
  wire rgf_n_46;
  wire rgf_n_462;
  wire rgf_n_463;
  wire rgf_n_464;
  wire rgf_n_465;
  wire rgf_n_466;
  wire rgf_n_467;
  wire rgf_n_468;
  wire rgf_n_469;
  wire rgf_n_47;
  wire rgf_n_470;
  wire rgf_n_471;
  wire rgf_n_472;
  wire rgf_n_473;
  wire rgf_n_474;
  wire rgf_n_475;
  wire rgf_n_476;
  wire rgf_n_477;
  wire rgf_n_478;
  wire rgf_n_479;
  wire rgf_n_48;
  wire rgf_n_480;
  wire rgf_n_481;
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
       (.DI({fch_n_371,fch_n_372,fch_n_373}),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .S({fch_n_374,fch_n_375,fch_n_376,fch_n_377}),
        .\sr[4]_i_17 (alu_n_17),
        .\sr[6]_i_2 (fch_n_370),
        .\sr[6]_i_2_0 ({fch_n_368,fch_n_369}),
        .tout__1_carry__0_i_8({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .tout__1_carry__1_i_8({alu_n_8,alu_n_9,alu_n_10,alu_n_11}),
        .tout__1_carry__2_i_8({\art/p_0_in ,alu_n_13,alu_n_14,alu_n_15}),
        .tout__1_carry__3_i_3(\art/add/tout ),
        .\tr_reg[11] ({fch_n_396,fch_n_397,fch_n_398,fch_n_399}),
        .\tr_reg[11]_0 ({fch_n_400,fch_n_401,fch_n_402,fch_n_403}),
        .\tr_reg[13] ({fch_n_364,fch_n_365,fch_n_366,fch_n_367}),
        .\tr_reg[13]_0 ({fch_n_360,fch_n_361,fch_n_362,fch_n_363}),
        .\tr_reg[7] ({fch_n_388,fch_n_389,fch_n_390,fch_n_391}),
        .\tr_reg[7]_0 ({fch_n_392,fch_n_393,fch_n_394,fch_n_395}));
  mcvm_fsm ctl
       (.D(stat_nx),
        .Q(stat),
        .\badr[15]_INST_0_i_29 (fch_n_33),
        .\bdatw[15]_INST_0_i_4 (fch_n_30),
        .\bdatw[15]_INST_0_i_4_0 (fch_n_37),
        .\bdatw[15]_INST_0_i_52 (fch_n_35),
        .brdy(brdy),
        .brdy_0(ctl_n_0),
        .brdy_1(ctl_n_24),
        .clk(clk),
        .crdy(crdy),
        .crdy_0(ctl_n_10),
        .crdy_1(ctl_n_29),
        .ctl_fetch_inferred_i_11(fch_n_22),
        .fch_irq_req(fch_irq_req),
        .out({fch_ir[15:5],fch_ir[2:0]}),
        .p_0_in(\pcnt/p_0_in ),
        .rgf_iv_ve(rgf_iv_ve),
        .rgf_sr_flag({rgf_n_216,rgf_sr_c,rgf_n_218}),
        .\sr_reg[6] (ctl_n_19),
        .\sr_reg[7] (ctl_n_17),
        .\stat[0]_i_9_0 (fch_n_34),
        .\stat[1]_i_7 (fch_n_29),
        .\stat_reg[0]_0 (ctl_n_9),
        .\stat_reg[0]_1 (ctl_n_12),
        .\stat_reg[0]_10 (ctl_n_28),
        .\stat_reg[0]_11 (ctl_n_31),
        .\stat_reg[0]_12 (ctl_n_33),
        .\stat_reg[0]_13 (ctl_n_34),
        .\stat_reg[0]_14 (ctl_n_37),
        .\stat_reg[0]_15 (ctl_n_39),
        .\stat_reg[0]_16 (ctl_n_41),
        .\stat_reg[0]_2 (ctl_n_14),
        .\stat_reg[0]_3 (ctl_n_15),
        .\stat_reg[0]_4 (ctl_n_16),
        .\stat_reg[0]_5 (ctl_n_21),
        .\stat_reg[0]_6 (ctl_n_22),
        .\stat_reg[0]_7 (ctl_n_23),
        .\stat_reg[0]_8 (ctl_n_25),
        .\stat_reg[0]_9 (ctl_n_27),
        .\stat_reg[1]_0 (ctl_n_4),
        .\stat_reg[1]_1 (ctl_n_5),
        .\stat_reg[1]_2 (ctl_n_7),
        .\stat_reg[1]_3 (ctl_n_18),
        .\stat_reg[1]_4 (ctl_n_26),
        .\stat_reg[1]_5 (ctl_n_30),
        .\stat_reg[1]_6 (ctl_n_32),
        .\stat_reg[1]_7 (ctl_n_35),
        .\stat_reg[1]_8 (ctl_n_36),
        .\stat_reg[1]_9 (ctl_n_42),
        .\stat_reg[2]_0 (ctl_n_6),
        .\stat_reg[2]_1 (ctl_n_8),
        .\stat_reg[2]_2 (ctl_n_11),
        .\stat_reg[2]_3 (ctl_n_13),
        .\stat_reg[2]_4 (ctl_n_20),
        .\stat_reg[2]_5 (ctl_n_38),
        .\stat_reg[2]_6 (ctl_n_40),
        .\tr[15]_i_3 (fch_n_31),
        .\tr[15]_i_7_0 (fch_n_32),
        .\tr[15]_i_7_1 (rgf_n_295));
  mcvm_fch fch
       (.D(stat_nx),
        .DI({fch_n_371,fch_n_372,fch_n_373}),
        .E(fch_n_283),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .Q(stat),
        .S({fch_n_374,fch_n_375,fch_n_376,fch_n_377}),
        .abus_0(abus_0),
        .abus_sel_0(abus_sel_0),
        .badr(badr),
        .\badr[0]_INST_0_i_1 (fch_n_248),
        .\badr[10]_INST_0_i_1 ({fch_n_396,fch_n_397,fch_n_398,fch_n_399}),
        .\badr[14]_INST_0_i_1 ({fch_n_360,fch_n_361,fch_n_362,fch_n_363}),
        .\badr[15]_INST_0_i_1 (fch_n_229),
        .\badr[15]_INST_0_i_135_0 (rgf_n_297),
        .\badr[15]_INST_0_i_136_0 (rgf_n_292),
        .\badr[15]_INST_0_i_1_0 ({fch_n_364,fch_n_365,fch_n_366,fch_n_367}),
        .\badr[15]_INST_0_i_1_1 ({fch_n_368,fch_n_369}),
        .\badr[15]_INST_0_i_1_2 (fch_n_370),
        .\badr[15]_INST_0_i_1_3 (\sptr/p_0_in ),
        .\badr[15]_INST_0_i_1_4 ({\ivec/p_0_in ,rgf_iv_ve}),
        .\badr[15]_INST_0_i_2 ({\sreg/p_2_in [7:4],rgf_sr_ml,rgf_sr_dr,\sreg/p_2_in [1:0],rgf_n_216,rgf_sr_c,rgf_n_218,rgf_n_219,rgf_sr_ie,sr_bank}),
        .\badr[15]_INST_0_i_27_0 (rgf_n_295),
        .\badr[15]_INST_0_i_4 ({rgf_n_0,rgf_n_1,rgf_n_2,rgf_n_3,rgf_n_4,rgf_n_5,rgf_n_6,rgf_n_7,rgf_n_8,rgf_n_9,rgf_n_10,rgf_n_11,rgf_n_12,rgf_n_13,rgf_n_14,rgf_n_15}),
        .\badr[15]_INST_0_i_49_0 (ctl_n_11),
        .\badr[15]_INST_0_i_5 ({rgf_n_92,rgf_n_93,rgf_n_94,rgf_n_95,rgf_n_96,rgf_n_97,rgf_n_98,rgf_n_99,rgf_n_100,rgf_n_101,rgf_n_102,rgf_n_103,rgf_n_104,rgf_n_105,rgf_n_106,rgf_n_107}),
        .\badr[15]_INST_0_i_5_0 ({rgf_n_76,rgf_n_77,rgf_n_78,rgf_n_79,rgf_n_80,rgf_n_81,rgf_n_82,rgf_n_83,rgf_n_84,rgf_n_85,rgf_n_86,rgf_n_87,rgf_n_88,rgf_n_89,rgf_n_90,rgf_n_91}),
        .\badr[15]_INST_0_i_5_1 ({rgf_n_16,rgf_n_17,rgf_n_18,rgf_n_19,rgf_n_20,rgf_n_21,rgf_n_22,rgf_n_23,rgf_n_24,rgf_n_25,rgf_n_26,rgf_n_27,rgf_n_28,rgf_n_29,rgf_n_30,rgf_n_31}),
        .\badr[15]_INST_0_i_76_0 (rgf_n_288),
        .\badr[15]_INST_0_i_77_0 (ctl_n_10),
        .\badr[15]_INST_0_i_90_0 (rgf_n_291),
        .\badr[15]_INST_0_i_93_0 (ctl_n_16),
        .\badr[1]_INST_0_i_1 (fch_n_226),
        .\badr[6]_INST_0_i_1 ({fch_n_388,fch_n_389,fch_n_390,fch_n_391}),
        .badr_0_sp_1(ctl_n_18),
        .badrx(badrx),
        .\badrx[15] (rgf_tr),
        .bank_sel(bank_sel),
        .bbus_o(bbus_o),
        .bbus_sel_0(bbus_sel_0),
        .\bcmd[1] (ctl_n_4),
        .bdatr(bdatr[14]),
        .bdatw(bdatw),
        .\bdatw[10]_INST_0_i_1_0 (rgf_n_321),
        .\bdatw[10]_INST_0_i_2_0 (rgf_n_350),
        .\bdatw[10]_INST_0_i_2_1 (rgf_n_345),
        .\bdatw[10]_INST_0_i_4_0 (rgf_n_337),
        .\bdatw[11]_INST_0_i_1_0 (rgf_n_322),
        .\bdatw[11]_INST_0_i_2_0 (fch_n_219),
        .\bdatw[11]_INST_0_i_2_1 (rgf_n_351),
        .\bdatw[11]_INST_0_i_2_2 (rgf_n_346),
        .\bdatw[11]_INST_0_i_4_0 (rgf_n_338),
        .\bdatw[12] (bbus_b02),
        .\bdatw[12]_INST_0_i_17_0 ({rgf_n_158,rgf_n_159,rgf_n_160,rgf_n_161,rgf_n_162}),
        .\bdatw[12]_INST_0_i_17_1 ({rgf_n_163,rgf_n_164,rgf_n_165,rgf_n_166,rgf_n_167}),
        .\bdatw[12]_INST_0_i_19_0 ({rgf_n_203,rgf_n_204,rgf_n_205,rgf_n_206,rgf_n_207}),
        .\bdatw[12]_INST_0_i_19_1 ({rgf_n_168,rgf_n_169,rgf_n_170,rgf_n_171,rgf_n_172}),
        .\bdatw[12]_INST_0_i_1_0 (rgf_n_323),
        .\bdatw[12]_INST_0_i_20_0 ({rgf_n_183,rgf_n_184,rgf_n_185,rgf_n_186,rgf_n_187}),
        .\bdatw[12]_INST_0_i_20_1 ({rgf_n_188,rgf_n_189,rgf_n_190,rgf_n_191,rgf_n_192}),
        .\bdatw[12]_INST_0_i_25_0 ({rgf_n_143,rgf_n_144,rgf_n_145,rgf_n_146,rgf_n_147}),
        .\bdatw[12]_INST_0_i_25_1 ({rgf_n_108,rgf_n_109,rgf_n_110,rgf_n_111,rgf_n_112}),
        .\bdatw[12]_INST_0_i_26_0 ({rgf_n_123,rgf_n_124,rgf_n_125,rgf_n_126,rgf_n_127}),
        .\bdatw[12]_INST_0_i_26_1 ({rgf_n_128,rgf_n_129,rgf_n_130,rgf_n_131,rgf_n_132}),
        .\bdatw[12]_INST_0_i_2_0 (fch_n_222),
        .\bdatw[12]_INST_0_i_2_1 (rgf_n_352),
        .\bdatw[12]_INST_0_i_2_2 (rgf_n_347),
        .\bdatw[12]_INST_0_i_30_0 ({bbus_sel_cr[5],bbus_sel_cr[2],bbus_sel_cr[0]}),
        .\bdatw[12]_INST_0_i_4_0 (rgf_n_339),
        .\bdatw[12]_INST_0_i_7_0 ({rgf_n_153,rgf_n_154,rgf_n_155,rgf_n_156,rgf_n_157}),
        .\bdatw[12]_INST_0_i_7_1 ({rgf_n_148,rgf_n_149,rgf_n_150,rgf_n_151,rgf_n_152}),
        .\bdatw[12]_INST_0_i_7_2 ({rgf_n_178,rgf_n_179,rgf_n_180,rgf_n_181,rgf_n_182}),
        .\bdatw[12]_INST_0_i_7_3 ({rgf_n_173,rgf_n_174,rgf_n_175,rgf_n_176,rgf_n_177}),
        .\bdatw[12]_INST_0_i_7_4 ({rgf_n_198,rgf_n_199,rgf_n_200,rgf_n_201,rgf_n_202}),
        .\bdatw[12]_INST_0_i_7_5 ({rgf_n_193,rgf_n_194,rgf_n_195,rgf_n_196,rgf_n_197}),
        .\bdatw[12]_INST_0_i_8 ({rgf_n_118,rgf_n_119,rgf_n_120,rgf_n_121,rgf_n_122}),
        .\bdatw[12]_INST_0_i_8_0 ({rgf_n_113,rgf_n_114,rgf_n_115,rgf_n_116,rgf_n_117}),
        .\bdatw[12]_INST_0_i_8_1 ({rgf_n_138,rgf_n_139,rgf_n_140,rgf_n_141,rgf_n_142}),
        .\bdatw[12]_INST_0_i_8_2 ({rgf_n_133,rgf_n_134,rgf_n_135,rgf_n_136,rgf_n_137}),
        .\bdatw[13]_INST_0_i_1_0 (rgf_n_324),
        .\bdatw[13]_INST_0_i_2_0 (rgf_n_316),
        .\bdatw[13]_INST_0_i_4_0 (rgf_n_340),
        .\bdatw[13]_INST_0_i_7_0 (rgf_n_332),
        .\bdatw[14]_INST_0_i_1_0 (rgf_n_325),
        .\bdatw[14]_INST_0_i_2_0 (rgf_n_314),
        .\bdatw[14]_INST_0_i_2_1 (rgf_n_317),
        .\bdatw[14]_INST_0_i_4_0 (rgf_n_341),
        .\bdatw[14]_INST_0_i_6_0 (rgf_n_333),
        .\bdatw[15]_INST_0_i_15_0 (ctl_n_22),
        .\bdatw[15]_INST_0_i_15_1 (ctl_n_14),
        .\bdatw[15]_INST_0_i_1_0 (rgf_n_326),
        .\bdatw[15]_INST_0_i_20_0 ({rgf_n_43,rgf_n_44,rgf_n_45,rgf_n_46,rgf_n_47,rgf_n_48,rgf_n_49,rgf_n_50,rgf_n_51,rgf_n_52,rgf_n_53}),
        .\bdatw[15]_INST_0_i_20_1 ({rgf_n_32,rgf_n_33,rgf_n_34,rgf_n_35,rgf_n_36,rgf_n_37,rgf_n_38,rgf_n_39,rgf_n_40,rgf_n_41,rgf_n_42}),
        .\bdatw[15]_INST_0_i_2_0 (rgf_n_315),
        .\bdatw[15]_INST_0_i_2_1 (rgf_n_318),
        .\bdatw[15]_INST_0_i_6_0 ({rgf_n_54,rgf_n_55,rgf_n_56,rgf_n_57,rgf_n_58,rgf_n_59,rgf_n_60,rgf_n_61,rgf_n_62,rgf_n_63,rgf_n_64}),
        .\bdatw[15]_INST_0_i_6_1 ({rgf_n_65,rgf_n_66,rgf_n_67,rgf_n_68,rgf_n_69,rgf_n_70,rgf_n_71,rgf_n_72,rgf_n_73,rgf_n_74,rgf_n_75}),
        .\bdatw[15]_INST_0_i_6_2 (rgf_n_342),
        .\bdatw[15]_INST_0_i_8_0 (rgf_n_334),
        .\bdatw[8]_INST_0_i_1_0 (rgf_n_319),
        .\bdatw[8]_INST_0_i_2_0 (fch_n_225),
        .\bdatw[8]_INST_0_i_2_1 (fch_n_227),
        .\bdatw[8]_INST_0_i_2_2 (fch_n_378),
        .\bdatw[8]_INST_0_i_2_3 (rgf_n_348),
        .\bdatw[8]_INST_0_i_2_4 (rgf_n_343),
        .\bdatw[8]_INST_0_i_4_0 (rgf_n_335),
        .\bdatw[8]_INST_0_i_6_0 (ctl_n_7),
        .\bdatw[9]_INST_0_i_1_0 (rgf_n_320),
        .\bdatw[9]_INST_0_i_2_0 (fch_n_223),
        .\bdatw[9]_INST_0_i_2_1 (fch_n_231),
        .\bdatw[9]_INST_0_i_2_2 (rgf_n_349),
        .\bdatw[9]_INST_0_i_2_3 (rgf_n_344),
        .\bdatw[9]_INST_0_i_4_0 (rgf_n_336),
        .brdy(brdy),
        .brdy_0(fch_n_343),
        .cbus(cbus[14:0]),
        .cbus_i(cbus_i[14]),
        .cbus_sel_cr(cbus_sel_cr),
        .ccmd(ccmd),
        .\ccmd[1]_INST_0_i_1_0 (ctl_n_38),
        .\ccmd[1]_INST_0_i_1_1 (ctl_n_27),
        .\ccmd[3]_INST_0_i_13_0 (ctl_n_9),
        .\ccmd[3]_INST_0_i_1_0 (ctl_n_31),
        .\ccmd[3]_INST_0_i_1_1 (ctl_n_26),
        .\ccmd[4]_INST_0_i_6_0 (ctl_n_29),
        .clk(clk),
        .cpuid(cpuid),
        .crdy(crdy),
        .crdy_0(fch_n_28),
        .crdy_1(fch_n_36),
        .ctl_fetch_ext_fl_reg_0(ctl_n_39),
        .ctl_fetch_ext_fl_reg_1(ctl_n_35),
        .ctl_fetch_fl_reg_0(ctl_fetch),
        .ctl_fetch_fl_reg_1(ctl_n_20),
        .ctl_fetch_fl_reg_2(rgf_n_296),
        .ctl_fetch_fl_reg_3(rgf_n_293),
        .ctl_fetch_inferred_i_14_0(ctl_n_34),
        .ctl_fetch_inferred_i_15_0(ctl_n_36),
        .ctl_fetch_inferred_i_15_1(rgf_n_289),
        .ctl_fetch_inferred_i_4_0(ctl_n_15),
        .ctl_sp_dec(ctl_sp_dec),
        .ctl_sp_inc(ctl_sp_inc),
        .fch_irq_req(fch_irq_req),
        .fch_pc(fch_pc),
        .fdat(fdat),
        .gr0_bus1__0(\bank13/bbuso2l/gr0_bus1__0 ),
        .gr0_bus1__0_18(\bank13/bbuso/gr0_bus1__0 ),
        .gr0_bus1__0_19(\bank02/bbuso/gr0_bus1__0 ),
        .gr0_bus1__0_30(\bank13/abuso2l/gr0_bus1__0 ),
        .gr0_bus1__0_31(\bank13/abuso/gr0_bus1__0 ),
        .gr0_bus1__0_32(\bank02/abuso/gr0_bus1__0 ),
        .gr1_bus1__0(\bank13/bbuso/gr1_bus1__0 ),
        .gr1_bus1__0_16(\bank13/bbuso2l/gr1_bus1__0 ),
        .gr1_bus1__0_24(\bank13/abuso2l/gr1_bus1__0 ),
        .gr1_bus1__0_25(\bank13/abuso/gr1_bus1__0 ),
        .gr1_bus1__0_26(\bank02/abuso/gr1_bus1__0 ),
        .gr1_bus1__0_5(\bank02/bbuso/gr1_bus1__0 ),
        .gr2_bus1__0(\bank13/bbuso/gr2_bus1__0 ),
        .gr2_bus1__0_17(\bank13/bbuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_3(\bank02/bbuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_38(\bank13/abuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_39(\bank13/abuso/gr2_bus1__0 ),
        .gr2_bus1__0_4(\bank02/bbuso/gr2_bus1__0 ),
        .gr2_bus1__0_40(\bank02/abuso/gr2_bus1__0 ),
        .gr3_bus1__0(\bank13/bbuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_0(\bank13/bbuso/gr3_bus1__0 ),
        .gr3_bus1__0_2(\bank02/bbuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_33(\bank13/abuso/gr3_bus1__0 ),
        .gr3_bus1__0_34(\bank02/abuso/gr3_bus1__0 ),
        .gr3_bus1__0_6(\bank02/bbuso/gr3_bus1__0 ),
        .gr4_bus1__0(\bank13/bbuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_1(\bank02/bbuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_27(\bank13/abuso/gr4_bus1__0 ),
        .gr4_bus1__0_28(\bank02/abuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_29(\bank02/abuso/gr4_bus1__0 ),
        .gr4_bus1__0_7(\bank13/bbuso/gr4_bus1__0 ),
        .gr4_bus1__0_8(\bank02/bbuso/gr4_bus1__0 ),
        .gr5_bus1__0(\bank02/bbuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_10(\bank13/bbuso/gr5_bus1__0 ),
        .gr5_bus1__0_12(\bank02/bbuso/gr5_bus1__0 ),
        .gr5_bus1__0_20(\bank13/abuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_21(\bank13/abuso/gr5_bus1__0 ),
        .gr5_bus1__0_22(\bank02/abuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_23(\bank02/abuso/gr5_bus1__0 ),
        .gr5_bus1__0_9(\bank13/bbuso2l/gr5_bus1__0 ),
        .gr6_bus1__0(\bank13/bbuso/gr6_bus1__0 ),
        .gr6_bus1__0_11(\bank02/bbuso/gr6_bus1__0 ),
        .gr6_bus1__0_13(\bank13/bbuso2l/gr6_bus1__0 ),
        .gr6_bus1__0_41(\bank13/abuso2l/gr6_bus1__0 ),
        .gr6_bus1__0_42(\bank13/abuso/gr6_bus1__0 ),
        .gr6_bus1__0_43(\bank02/abuso/gr6_bus1__0 ),
        .gr7_bus1__0(\bank13/bbuso2l/gr7_bus1__0 ),
        .gr7_bus1__0_14(\bank13/bbuso/gr7_bus1__0 ),
        .gr7_bus1__0_15(\bank02/bbuso/gr7_bus1__0 ),
        .gr7_bus1__0_35(\bank13/abuso2l/gr7_bus1__0 ),
        .gr7_bus1__0_36(\bank13/abuso/gr7_bus1__0 ),
        .gr7_bus1__0_37(\bank02/abuso/gr7_bus1__0 ),
        .\grn_reg[0] (fch_n_73),
        .\grn_reg[0]_0 (fch_n_86),
        .\grn_reg[0]_1 (fch_n_94),
        .\grn_reg[0]_2 (fch_n_114),
        .\grn_reg[0]_3 (fch_n_155),
        .\grn_reg[10] (fch_n_124),
        .\grn_reg[10]_0 (fch_n_165),
        .\grn_reg[11] (fch_n_125),
        .\grn_reg[11]_0 (fch_n_166),
        .\grn_reg[12] (fch_n_126),
        .\grn_reg[12]_0 (fch_n_167),
        .\grn_reg[13] (fch_n_127),
        .\grn_reg[13]_0 (fch_n_168),
        .\grn_reg[14] (fch_n_128),
        .\grn_reg[14]_0 (fch_n_169),
        .\grn_reg[15] (fch_n_129),
        .\grn_reg[15]_0 (fch_n_170),
        .\grn_reg[1] (fch_n_76),
        .\grn_reg[1]_0 (fch_n_89),
        .\grn_reg[1]_1 (fch_n_95),
        .\grn_reg[1]_2 (fch_n_115),
        .\grn_reg[1]_3 (fch_n_156),
        .\grn_reg[2] (fch_n_77),
        .\grn_reg[2]_0 (fch_n_90),
        .\grn_reg[2]_1 (fch_n_96),
        .\grn_reg[2]_2 (fch_n_116),
        .\grn_reg[2]_3 (fch_n_157),
        .\grn_reg[3] (fch_n_78),
        .\grn_reg[3]_0 (fch_n_91),
        .\grn_reg[3]_1 (fch_n_97),
        .\grn_reg[3]_2 (fch_n_117),
        .\grn_reg[3]_3 (fch_n_158),
        .\grn_reg[4] (fch_n_79),
        .\grn_reg[4]_0 (fch_n_92),
        .\grn_reg[4]_1 (fch_n_98),
        .\grn_reg[4]_2 (fch_n_118),
        .\grn_reg[4]_3 (fch_n_159),
        .\grn_reg[5] (fch_n_119),
        .\grn_reg[5]_0 (fch_n_160),
        .\grn_reg[6] (fch_n_120),
        .\grn_reg[6]_0 (fch_n_161),
        .\grn_reg[7] (fch_n_121),
        .\grn_reg[7]_0 (fch_n_162),
        .\grn_reg[8] (fch_n_122),
        .\grn_reg[8]_0 (fch_n_163),
        .\grn_reg[9] (fch_n_123),
        .\grn_reg[9]_0 (fch_n_164),
        .in0(ctl_fetch),
        .irq(irq),
        .irq_lev(irq_lev),
        .irq_vec(irq_vec),
        .\iv[0]_i_2_0 (rgf_n_398),
        .\iv[0]_i_2_1 (rgf_n_388),
        .\iv[0]_i_7_0 (rgf_n_410),
        .\iv[10]_i_2_0 (rgf_n_422),
        .\iv[10]_i_2_1 (rgf_n_498),
        .\iv[10]_i_5_0 (rgf_n_486),
        .\iv[10]_i_5_1 (rgf_n_497),
        .\iv[10]_i_5_2 (rgf_n_394),
        .\iv[10]_i_5_3 (rgf_n_489),
        .\iv[11]_i_2_0 (rgf_n_484),
        .\iv[11]_i_2_1 (rgf_n_406),
        .\iv[11]_i_2_2 (rgf_n_375),
        .\iv[11]_i_2_3 (rgf_n_417),
        .\iv[11]_i_2_4 (rgf_n_480),
        .\iv[12]_i_5_0 (rgf_n_493),
        .\iv[12]_i_5_1 (rgf_n_487),
        .\iv[12]_i_5_2 (rgf_n_391),
        .\iv[12]_i_7_0 (rgf_n_384),
        .\iv[12]_i_7_1 (rgf_n_385),
        .\iv[13]_i_2_0 (rgf_n_377),
        .\iv[13]_i_3_0 (alu_sr_flag),
        .\iv[13]_i_7_0 (rgf_n_403),
        .\iv[14]_i_31_0 (fch_n_220),
        .\iv[14]_i_31_1 (fch_n_228),
        .\iv[14]_i_3_0 (rgf_n_492),
        .\iv[14]_i_4_0 (rgf_n_419),
        .\iv[14]_i_4_1 (rgf_n_483),
        .\iv[1]_i_2_0 (rgf_n_421),
        .\iv[1]_i_2_1 (rgf_n_405),
        .\iv[1]_i_2_2 (rgf_n_420),
        .\iv[1]_i_7_0 (rgf_n_386),
        .\iv[1]_i_8_0 (rgf_n_380),
        .\iv[2]_i_2_0 (rgf_n_395),
        .\iv[2]_i_2_1 (rgf_n_488),
        .\iv[2]_i_2_2 (rgf_n_413),
        .\iv[2]_i_2_3 (rgf_n_426),
        .\iv[2]_i_2_4 (rgf_n_399),
        .\iv[3]_i_2_0 (rgf_n_425),
        .\iv[3]_i_2_1 (rgf_n_414),
        .\iv[4]_i_2_0 (rgf_n_379),
        .\iv[4]_i_2_1 (rgf_n_407),
        .\iv[4]_i_2_2 (rgf_n_482),
        .\iv[4]_i_8_0 (rgf_n_408),
        .\iv[4]_i_8_1 (rgf_n_409),
        .\iv[5]_i_2_0 (rgf_n_415),
        .\iv[6]_i_2_0 (rgf_n_397),
        .\iv[7]_i_2_0 (rgf_n_495),
        .\iv[7]_i_2_1 (rgf_n_491),
        .\iv[7]_i_2_2 (rgf_n_387),
        .\iv[7]_i_2_3 (rgf_n_383),
        .\iv[8]_i_2_0 (rgf_n_373),
        .\iv[8]_i_2_1 (rgf_n_423),
        .\iv[9]_i_2_0 (rgf_n_424),
        .\iv[9]_i_2_1 (rgf_n_381),
        .\iv[9]_i_2_2 (rgf_n_499),
        .\iv[9]_i_2_3 (rgf_n_402),
        .\iv[9]_i_2_4 (rgf_n_416),
        .\iv[9]_i_2_5 (rgf_n_390),
        .\iv[9]_i_2_6 (rgf_n_401),
        .out({fch_ir[15:5],fch_ir[2:0]}),
        .p_0_in(\pcnt/p_0_in ),
        .\pc_reg[15] (\pcnt/p_1_in ),
        .\pc_reg[15]_0 (fadr),
        .read_cyc(read_cyc),
        .rst_n(rst_n),
        .rst_n_0(fch_n_379),
        .rst_n_fl_reg_0(fch_n_22),
        .rst_n_fl_reg_1(fch_n_29),
        .rst_n_fl_reg_2(fch_n_30),
        .rst_n_fl_reg_3(fch_n_31),
        .rst_n_fl_reg_4(fch_n_32),
        .rst_n_fl_reg_5(fch_n_33),
        .rst_n_fl_reg_6(fch_n_34),
        .rst_n_fl_reg_7(fch_n_35),
        .rst_n_fl_reg_8(fch_n_37),
        .\sp[15]_i_3_0 (ctl_n_0),
        .\sp[15]_i_6_0 (ctl_n_21),
        .sp_dec_0(\sptr/sp_dec_0 ),
        .\sp_reg[0] (fch_n_230),
        .\sp_reg[0]_0 (fch_n_326),
        .\sp_reg[0]_1 (rgf_n_462),
        .\sp_reg[10] (fch_n_316),
        .\sp_reg[10]_0 (rgf_n_472),
        .\sp_reg[11] (fch_n_315),
        .\sp_reg[11]_0 (rgf_n_473),
        .\sp_reg[12] (fch_n_314),
        .\sp_reg[12]_0 (rgf_n_474),
        .\sp_reg[13] (fch_n_313),
        .\sp_reg[13]_0 (rgf_n_475),
        .\sp_reg[14] (fch_n_312),
        .\sp_reg[14]_0 (rgf_n_476),
        .\sp_reg[15] (fch_n_311),
        .\sp_reg[15]_0 (cbus[15]),
        .\sp_reg[15]_1 (rgf_n_477),
        .\sp_reg[1] (fch_n_325),
        .\sp_reg[1]_0 (rgf_n_463),
        .\sp_reg[2] (fch_n_324),
        .\sp_reg[2]_0 (rgf_n_464),
        .\sp_reg[3] (fch_n_323),
        .\sp_reg[3]_0 (rgf_n_465),
        .\sp_reg[4] (fch_n_322),
        .\sp_reg[4]_0 (rgf_n_466),
        .\sp_reg[5] (fch_n_321),
        .\sp_reg[5]_0 (rgf_n_467),
        .\sp_reg[6] (fch_n_320),
        .\sp_reg[6]_0 (rgf_n_468),
        .\sp_reg[7] (fch_n_319),
        .\sp_reg[7]_0 (rgf_n_469),
        .\sp_reg[8] (fch_n_318),
        .\sp_reg[8]_0 (rgf_n_470),
        .\sp_reg[9] (fch_n_317),
        .\sp_reg[9]_0 (rgf_n_471),
        .\sr[4]_i_10_0 (rgf_n_393),
        .\sr[4]_i_2_0 (alu_n_17),
        .\sr[6]_i_2_0 (rgf_n_382),
        .\sr[6]_i_3_0 (rgf_n_496),
        .\sr[6]_i_3_1 (rgf_n_494),
        .\sr[6]_i_3_2 (rgf_n_490),
        .\sr[7]_i_12 (fch_n_221),
        .\sr[7]_i_3_0 (rgf_n_396),
        .\sr[7]_i_3_1 (rgf_n_428),
        .\sr[7]_i_9_0 (rgf_n_481),
        .\sr[7]_i_9_1 (rgf_n_427),
        .\sr[7]_i_9_2 (rgf_n_485),
        .\sr[7]_i_9_3 (rgf_n_412),
        .\sr_reg[0] (fch_n_285),
        .\sr_reg[0]_0 (fch_n_288),
        .\sr_reg[0]_1 (fch_n_292),
        .\sr_reg[0]_2 (fch_n_296),
        .\sr_reg[0]_3 (fch_n_301),
        .\sr_reg[0]_4 (fch_n_304),
        .\sr_reg[0]_5 (fch_n_308),
        .\sr_reg[0]_6 (fch_n_342),
        .\sr_reg[0]_7 (fch_n_380),
        .\sr_reg[0]_8 (fch_n_386),
        .\sr_reg[10] (fch_n_332),
        .\sr_reg[10]_0 (fch_n_381),
        .\sr_reg[11] (fch_n_331),
        .\sr_reg[11]_0 (fch_n_382),
        .\sr_reg[12] (fch_n_330),
        .\sr_reg[13] (\sreg/p_0_in ),
        .\sr_reg[13]_0 (fch_n_329),
        .\sr_reg[14] (fch_n_328),
        .\sr_reg[15] (fch_n_327),
        .\sr_reg[1] (fch_n_284),
        .\sr_reg[1]_0 (fch_n_286),
        .\sr_reg[1]_1 (fch_n_287),
        .\sr_reg[1]_10 (fch_n_299),
        .\sr_reg[1]_11 (fch_n_300),
        .\sr_reg[1]_12 (fch_n_302),
        .\sr_reg[1]_13 (fch_n_303),
        .\sr_reg[1]_14 (fch_n_305),
        .\sr_reg[1]_15 (fch_n_306),
        .\sr_reg[1]_16 (fch_n_307),
        .\sr_reg[1]_17 (fch_n_309),
        .\sr_reg[1]_18 (fch_n_310),
        .\sr_reg[1]_19 (fch_n_341),
        .\sr_reg[1]_2 (fch_n_289),
        .\sr_reg[1]_20 (fch_n_383),
        .\sr_reg[1]_21 (fch_n_384),
        .\sr_reg[1]_22 (fch_n_385),
        .\sr_reg[1]_23 (fch_n_387),
        .\sr_reg[1]_3 (fch_n_290),
        .\sr_reg[1]_4 (fch_n_291),
        .\sr_reg[1]_5 (fch_n_293),
        .\sr_reg[1]_6 (fch_n_294),
        .\sr_reg[1]_7 (fch_n_295),
        .\sr_reg[1]_8 (fch_n_297),
        .\sr_reg[1]_9 (fch_n_298),
        .\sr_reg[2] (fch_n_59),
        .\sr_reg[2]_0 (fch_n_340),
        .\sr_reg[3] (fch_n_58),
        .\sr_reg[3]_0 (fch_n_339),
        .\sr_reg[4] (fch_n_39),
        .\sr_reg[4]_0 (fch_n_338),
        .\sr_reg[5] (fch_n_57),
        .\sr_reg[5]_0 (fch_n_337),
        .\sr_reg[6] (fch_n_55),
        .\sr_reg[6]_0 (fch_n_336),
        .\sr_reg[6]_1 (\art/add/tout ),
        .\sr_reg[7] (fch_n_60),
        .\sr_reg[7]_0 (fch_n_335),
        .\sr_reg[7]_1 ({\art/p_0_in ,alu_n_13,alu_n_14,alu_n_15}),
        .\sr_reg[8] (fch_n_334),
        .\sr_reg[9] (fch_n_333),
        .\stat[0]_i_8_0 (rgf_n_290),
        .\stat[0]_i_8_1 (ctl_n_8),
        .\stat[1]_i_2_0 (ctl_n_13),
        .\stat[1]_i_3_0 (ctl_n_32),
        .\stat[1]_i_8_0 (ctl_n_33),
        .\stat[1]_i_8_1 (ctl_n_5),
        .\stat_reg[0] (bcmd[1]),
        .\stat_reg[0]_0 (bcmd[0]),
        .\stat_reg[0]_1 (ctl_n_37),
        .\stat_reg[0]_2 (ctl_n_25),
        .\stat_reg[0]_3 (ctl_n_23),
        .\stat_reg[1] (bcmd[2]),
        .\stat_reg[1]_0 (fch_n_202),
        .\stat_reg[1]_1 ({fch_n_251,fch_n_252,fch_n_253,fch_n_254,fch_n_255,fch_n_256,fch_n_257,fch_n_258,fch_n_259,fch_n_260,fch_n_261,fch_n_262,fch_n_263,fch_n_264,fch_n_265,fch_n_266}),
        .\stat_reg[1]_2 (ctl_n_19),
        .\stat_reg[1]_3 (ctl_n_17),
        .\stat_reg[1]_4 (rgf_n_294),
        .\stat_reg[1]_5 (ctl_n_12),
        .\stat_reg[2] (fch_n_201),
        .\stat_reg[2]_0 (ctl_n_24),
        .\stat_reg[2]_1 (ctl_n_40),
        .tout__1_carry__0_i_1_0({fch_n_392,fch_n_393,fch_n_394,fch_n_395}),
        .tout__1_carry__1_i_1_0({fch_n_400,fch_n_401,fch_n_402,fch_n_403}),
        .tout__1_carry_i_10_0(fch_n_224),
        .\tr[15]_i_12_0 (ctl_n_28),
        .\tr[15]_i_2_0 (ctl_n_42),
        .\tr[15]_i_8_0 (ctl_n_30),
        .\tr_reg[0] (fch_n_131),
        .\tr_reg[0]_0 (ctl_n_6),
        .\tr_reg[0]_1 (mem_n_2),
        .\tr_reg[0]_2 (rgf_n_478),
        .\tr_reg[10] (fch_n_141),
        .\tr_reg[10]_0 (mem_n_12),
        .\tr_reg[11] (fch_n_142),
        .\tr_reg[11]_0 ({alu_n_8,alu_n_9,alu_n_10,alu_n_11}),
        .\tr_reg[11]_1 (mem_n_13),
        .\tr_reg[12] (fch_n_143),
        .\tr_reg[12]_0 (mem_n_14),
        .\tr_reg[13] (fch_n_144),
        .\tr_reg[13]_0 (mem_n_15),
        .\tr_reg[13]_1 (rgf_n_378),
        .\tr_reg[13]_2 (rgf_n_392),
        .\tr_reg[14] (fch_n_145),
        .\tr_reg[14]_0 (mem_n_16),
        .\tr_reg[14]_1 (rgf_n_418),
        .\tr_reg[15] (fch_n_146),
        .\tr_reg[1] (fch_n_132),
        .\tr_reg[1]_0 (mem_n_3),
        .\tr_reg[1]_1 (rgf_n_404),
        .\tr_reg[2] (fch_n_133),
        .\tr_reg[2]_0 (mem_n_4),
        .\tr_reg[2]_1 (rgf_n_374),
        .\tr_reg[3] (fch_n_134),
        .\tr_reg[3]_0 (mem_n_5),
        .\tr_reg[3]_1 (rgf_n_479),
        .\tr_reg[4] (fch_n_135),
        .\tr_reg[4]_0 (mem_n_6),
        .\tr_reg[4]_1 (rgf_n_389),
        .\tr_reg[5] (fch_n_136),
        .\tr_reg[5]_0 (mem_n_7),
        .\tr_reg[5]_1 (rgf_n_400),
        .\tr_reg[5]_2 (rgf_n_376),
        .\tr_reg[6] (fch_n_137),
        .\tr_reg[6]_0 (mem_n_8),
        .\tr_reg[6]_1 (rgf_n_411),
        .\tr_reg[7] (fch_n_138),
        .\tr_reg[7]_0 ({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .\tr_reg[7]_1 (mem_n_9),
        .\tr_reg[8] (fch_n_139),
        .\tr_reg[8]_0 (mem_n_10),
        .\tr_reg[9] (fch_n_140),
        .\tr_reg[9]_0 (mem_n_11));
  mcvm_mem mem
       (.bcmd({bcmd[2],bcmd[0]}),
        .bdatr(bdatr),
        .brdy(brdy),
        .cbus(cbus[15]),
        .cbus_i({cbus_i[15],cbus_i[13:0]}),
        .cbus_i_0_sp_1(mem_n_2),
        .cbus_i_1_sp_1(mem_n_3),
        .cbus_i_2_sp_1(mem_n_4),
        .cbus_i_3_sp_1(mem_n_5),
        .cbus_i_4_sp_1(mem_n_6),
        .cbus_i_5_sp_1(mem_n_7),
        .cbus_i_6_sp_1(mem_n_8),
        .cbus_i_7_sp_1(mem_n_9),
        .clk(clk),
        .p_0_in(\pcnt/p_0_in ),
        .\read_cyc_reg[0] (read_cyc),
        .\read_cyc_reg[0]_0 (fch_n_343),
        .\read_cyc_reg[1] (mem_n_10),
        .\read_cyc_reg[1]_0 (mem_n_11),
        .\read_cyc_reg[1]_1 (mem_n_12),
        .\read_cyc_reg[1]_2 (mem_n_13),
        .\read_cyc_reg[1]_3 (mem_n_14),
        .\read_cyc_reg[1]_4 (mem_n_15),
        .\read_cyc_reg[1]_5 (mem_n_16),
        .\tr_reg[15] (fch_n_28),
        .\tr_reg[15]_0 (alu_sr_flag));
  mcvm_rgf rgf
       (.D(\sreg/p_0_in ),
        .E(fch_n_307),
        .Q(stat[0]),
        .abus_0(abus_0),
        .abus_o(abus_o),
        .\abus_o[0]_0 (fch_n_131),
        .\abus_o[10]_0 (fch_n_141),
        .\abus_o[11]_0 (fch_n_142),
        .\abus_o[12]_0 (fch_n_143),
        .\abus_o[13]_0 (fch_n_144),
        .\abus_o[14]_0 (fch_n_145),
        .\abus_o[15]_0 (fch_n_146),
        .\abus_o[15]_1 (fch_n_28),
        .\abus_o[1]_0 (fch_n_132),
        .\abus_o[2]_0 (fch_n_133),
        .\abus_o[3]_0 (fch_n_134),
        .\abus_o[4]_0 (fch_n_135),
        .\abus_o[5]_0 (fch_n_136),
        .\abus_o[6]_0 (fch_n_137),
        .\abus_o[7]_0 (fch_n_138),
        .\abus_o[8]_0 (fch_n_139),
        .\abus_o[9]_0 (fch_n_140),
        .abus_o_0_sp_1(fch_n_326),
        .abus_o_10_sp_1(fch_n_316),
        .abus_o_11_sp_1(fch_n_315),
        .abus_o_12_sp_1(fch_n_314),
        .abus_o_13_sp_1(fch_n_313),
        .abus_o_14_sp_1(fch_n_312),
        .abus_o_15_sp_1(fch_n_311),
        .abus_o_1_sp_1(fch_n_325),
        .abus_o_2_sp_1(fch_n_324),
        .abus_o_3_sp_1(fch_n_323),
        .abus_o_4_sp_1(fch_n_322),
        .abus_o_5_sp_1(fch_n_321),
        .abus_o_6_sp_1(fch_n_320),
        .abus_o_7_sp_1(fch_n_319),
        .abus_o_8_sp_1(fch_n_318),
        .abus_o_9_sp_1(fch_n_317),
        .abus_sel_0(abus_sel_0),
        .\badr[0]_INST_0_i_1 (fch_n_342),
        .\badr[0]_INST_0_i_1_0 (fch_n_155),
        .\badr[0]_INST_0_i_1_1 (fch_n_114),
        .\badr[10]_INST_0_i_1 (fch_n_332),
        .\badr[10]_INST_0_i_1_0 (fch_n_165),
        .\badr[10]_INST_0_i_1_1 (fch_n_124),
        .\badr[11]_INST_0_i_1 (fch_n_331),
        .\badr[11]_INST_0_i_1_0 (fch_n_166),
        .\badr[11]_INST_0_i_1_1 (fch_n_125),
        .\badr[12]_INST_0_i_1 (fch_n_330),
        .\badr[12]_INST_0_i_1_0 (fch_n_167),
        .\badr[12]_INST_0_i_1_1 (fch_n_126),
        .\badr[13]_INST_0_i_1 (rgf_n_403),
        .\badr[13]_INST_0_i_1_0 (fch_n_329),
        .\badr[13]_INST_0_i_1_1 (fch_n_168),
        .\badr[13]_INST_0_i_1_2 (fch_n_127),
        .\badr[14]_INST_0_i_1 (fch_n_328),
        .\badr[14]_INST_0_i_1_0 (fch_n_169),
        .\badr[14]_INST_0_i_1_1 (fch_n_128),
        .\badr[15]_INST_0_i_1 (rgf_n_410),
        .\badr[15]_INST_0_i_119 ({fch_ir[15:11],fch_ir[0]}),
        .\badr[15]_INST_0_i_1_0 (rgf_n_494),
        .\badr[15]_INST_0_i_1_1 (fch_n_327),
        .\badr[15]_INST_0_i_1_2 (fch_n_170),
        .\badr[15]_INST_0_i_1_3 (fch_n_129),
        .\badr[1]_INST_0_i_1 (fch_n_341),
        .\badr[1]_INST_0_i_1_0 (fch_n_156),
        .\badr[1]_INST_0_i_1_1 (fch_n_115),
        .\badr[2]_INST_0_i_1 (rgf_n_408),
        .\badr[2]_INST_0_i_1_0 (fch_n_340),
        .\badr[2]_INST_0_i_1_1 (fch_n_157),
        .\badr[2]_INST_0_i_1_2 (fch_n_116),
        .\badr[3]_INST_0_i_1 (fch_n_339),
        .\badr[3]_INST_0_i_1_0 (fch_n_158),
        .\badr[3]_INST_0_i_1_1 (fch_n_117),
        .\badr[4]_INST_0_i_1 (rgf_n_409),
        .\badr[4]_INST_0_i_1_0 (fch_n_338),
        .\badr[4]_INST_0_i_1_1 (fch_n_159),
        .\badr[4]_INST_0_i_1_2 (fch_n_118),
        .\badr[5]_INST_0_i_1 (fch_n_337),
        .\badr[5]_INST_0_i_1_0 (fch_n_160),
        .\badr[5]_INST_0_i_1_1 (fch_n_119),
        .\badr[6]_INST_0_i_1 (fch_n_336),
        .\badr[6]_INST_0_i_1_0 (fch_n_161),
        .\badr[6]_INST_0_i_1_1 (fch_n_120),
        .\badr[7]_INST_0_i_1 (fch_n_335),
        .\badr[7]_INST_0_i_1_0 (fch_n_162),
        .\badr[7]_INST_0_i_1_1 (fch_n_121),
        .\badr[8]_INST_0_i_1 (fch_n_334),
        .\badr[8]_INST_0_i_1_0 (fch_n_163),
        .\badr[8]_INST_0_i_1_1 (fch_n_122),
        .\badr[9]_INST_0_i_1 (fch_n_333),
        .\badr[9]_INST_0_i_1_0 (fch_n_164),
        .\badr[9]_INST_0_i_1_1 (fch_n_123),
        .bank_sel(bank_sel),
        .bbus_sel_0(bbus_sel_0),
        .\bdatw[10]_INST_0_i_2 (fch_n_96),
        .\bdatw[10]_INST_0_i_2_0 (fch_n_90),
        .\bdatw[10]_INST_0_i_2_1 (fch_n_77),
        .\bdatw[11]_INST_0_i_2 (fch_n_97),
        .\bdatw[11]_INST_0_i_2_0 (fch_n_91),
        .\bdatw[11]_INST_0_i_2_1 (fch_n_78),
        .\bdatw[12]_INST_0_i_2 (fch_n_98),
        .\bdatw[12]_INST_0_i_2_0 (fch_n_92),
        .\bdatw[12]_INST_0_i_2_1 (fch_n_79),
        .\bdatw[14]_INST_0_i_6 ({bbus_sel_cr[5],bbus_sel_cr[2],bbus_sel_cr[0]}),
        .\bdatw[8]_INST_0_i_2 (rgf_n_383),
        .\bdatw[8]_INST_0_i_2_0 (rgf_n_384),
        .\bdatw[8]_INST_0_i_2_1 (rgf_n_386),
        .\bdatw[8]_INST_0_i_2_10 (rgf_n_491),
        .\bdatw[8]_INST_0_i_2_11 (rgf_n_492),
        .\bdatw[8]_INST_0_i_2_12 (rgf_n_493),
        .\bdatw[8]_INST_0_i_2_13 (rgf_n_498),
        .\bdatw[8]_INST_0_i_2_14 (fch_n_94),
        .\bdatw[8]_INST_0_i_2_15 (fch_n_86),
        .\bdatw[8]_INST_0_i_2_16 (fch_n_73),
        .\bdatw[8]_INST_0_i_2_2 (rgf_n_394),
        .\bdatw[8]_INST_0_i_2_3 (rgf_n_395),
        .\bdatw[8]_INST_0_i_2_4 (rgf_n_485),
        .\bdatw[8]_INST_0_i_2_5 (rgf_n_486),
        .\bdatw[8]_INST_0_i_2_6 (rgf_n_487),
        .\bdatw[8]_INST_0_i_2_7 (rgf_n_488),
        .\bdatw[8]_INST_0_i_2_8 (rgf_n_489),
        .\bdatw[8]_INST_0_i_2_9 (rgf_n_490),
        .\bdatw[9]_INST_0_i_2 (fch_n_95),
        .\bdatw[9]_INST_0_i_2_0 (fch_n_89),
        .\bdatw[9]_INST_0_i_2_1 (fch_n_76),
        .cbus_sel_cr(cbus_sel_cr),
        .clk(clk),
        .ctl_fetch_inferred_i_27(fch_n_36),
        .ctl_sp_dec(ctl_sp_dec),
        .ctl_sp_inc(ctl_sp_inc),
        .fadr(fadr),
        .fch_irq_req(fch_irq_req),
        .fch_pc(fch_pc),
        .gr0_bus1__0(\bank13/bbuso2l/gr0_bus1__0 ),
        .gr0_bus1__0_12(\bank13/bbuso/gr0_bus1__0 ),
        .gr0_bus1__0_14(\bank02/bbuso/gr0_bus1__0 ),
        .gr0_bus1__0_39(\bank13/abuso2l/gr0_bus1__0 ),
        .gr0_bus1__0_41(\bank13/abuso/gr0_bus1__0 ),
        .gr0_bus1__0_43(\bank02/abuso/gr0_bus1__0 ),
        .gr1_bus1__0(\bank13/bbuso2l/gr1_bus1__0 ),
        .gr1_bus1__0_16(\bank13/bbuso/gr1_bus1__0 ),
        .gr1_bus1__0_18(\bank02/bbuso/gr1_bus1__0 ),
        .gr1_bus1__0_28(\bank13/abuso2l/gr1_bus1__0 ),
        .gr1_bus1__0_30(\bank13/abuso/gr1_bus1__0 ),
        .gr1_bus1__0_32(\bank02/abuso/gr1_bus1__0 ),
        .gr2_bus1__0(\bank02/bbuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_15(\bank13/bbuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_17(\bank13/bbuso/gr2_bus1__0 ),
        .gr2_bus1__0_19(\bank02/bbuso/gr2_bus1__0 ),
        .gr2_bus1__0_29(\bank13/abuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_31(\bank13/abuso/gr2_bus1__0 ),
        .gr2_bus1__0_33(\bank02/abuso/gr2_bus1__0 ),
        .gr3_bus1__0(\bank13/bbuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_0(\bank13/bbuso/gr3_bus1__0 ),
        .gr3_bus1__0_2(\bank02/bbuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_3(\bank02/bbuso/gr3_bus1__0 ),
        .gr3_bus1__0_34(\bank13/abuso/gr3_bus1__0 ),
        .gr3_bus1__0_36(\bank02/abuso/gr3_bus1__0 ),
        .gr4_bus1__0(\bank13/bbuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_1(\bank13/bbuso/gr4_bus1__0 ),
        .gr4_bus1__0_24(\bank02/abuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_35(\bank13/abuso/gr4_bus1__0 ),
        .gr4_bus1__0_37(\bank02/abuso/gr4_bus1__0 ),
        .gr4_bus1__0_4(\bank02/bbuso/gr4_bus1__0 ),
        .gr4_bus1__0_5(\bank02/bbuso2l/gr4_bus1__0 ),
        .gr5_bus1__0(\bank02/bbuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_20(\bank13/abuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_22(\bank13/abuso/gr5_bus1__0 ),
        .gr5_bus1__0_25(\bank02/abuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_26(\bank02/abuso/gr5_bus1__0 ),
        .gr5_bus1__0_6(\bank13/bbuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_7(\bank13/bbuso/gr5_bus1__0 ),
        .gr5_bus1__0_9(\bank02/bbuso/gr5_bus1__0 ),
        .gr6_bus1__0(\bank13/bbuso2l/gr6_bus1__0 ),
        .gr6_bus1__0_10(\bank02/bbuso/gr6_bus1__0 ),
        .gr6_bus1__0_21(\bank13/abuso2l/gr6_bus1__0 ),
        .gr6_bus1__0_23(\bank13/abuso/gr6_bus1__0 ),
        .gr6_bus1__0_27(\bank02/abuso/gr6_bus1__0 ),
        .gr6_bus1__0_8(\bank13/bbuso/gr6_bus1__0 ),
        .gr7_bus1__0(\bank13/bbuso2l/gr7_bus1__0 ),
        .gr7_bus1__0_11(\bank13/bbuso/gr7_bus1__0 ),
        .gr7_bus1__0_13(\bank02/bbuso/gr7_bus1__0 ),
        .gr7_bus1__0_38(\bank13/abuso2l/gr7_bus1__0 ),
        .gr7_bus1__0_40(\bank13/abuso/gr7_bus1__0 ),
        .gr7_bus1__0_42(\bank02/abuso/gr7_bus1__0 ),
        .\grn_reg[0] (rgf_n_343),
        .\grn_reg[0]_0 (rgf_n_348),
        .\grn_reg[10] (rgf_n_321),
        .\grn_reg[10]_0 (rgf_n_337),
        .\grn_reg[11] (rgf_n_322),
        .\grn_reg[11]_0 (rgf_n_338),
        .\grn_reg[12] (rgf_n_323),
        .\grn_reg[12]_0 (rgf_n_339),
        .\grn_reg[13] (rgf_n_324),
        .\grn_reg[13]_0 (rgf_n_340),
        .\grn_reg[14] (rgf_n_325),
        .\grn_reg[14]_0 (rgf_n_341),
        .\grn_reg[15] ({rgf_n_16,rgf_n_17,rgf_n_18,rgf_n_19,rgf_n_20,rgf_n_21,rgf_n_22,rgf_n_23,rgf_n_24,rgf_n_25,rgf_n_26,rgf_n_27,rgf_n_28,rgf_n_29,rgf_n_30,rgf_n_31}),
        .\grn_reg[15]_0 ({rgf_n_32,rgf_n_33,rgf_n_34,rgf_n_35,rgf_n_36,rgf_n_37,rgf_n_38,rgf_n_39,rgf_n_40,rgf_n_41,rgf_n_42}),
        .\grn_reg[15]_1 ({rgf_n_43,rgf_n_44,rgf_n_45,rgf_n_46,rgf_n_47,rgf_n_48,rgf_n_49,rgf_n_50,rgf_n_51,rgf_n_52,rgf_n_53}),
        .\grn_reg[15]_10 (fch_n_387),
        .\grn_reg[15]_11 (fch_n_295),
        .\grn_reg[15]_12 (fch_n_286),
        .\grn_reg[15]_13 (fch_n_287),
        .\grn_reg[15]_14 (fch_n_291),
        .\grn_reg[15]_15 (fch_n_308),
        .\grn_reg[15]_16 (fch_n_301),
        .\grn_reg[15]_17 (fch_n_304),
        .\grn_reg[15]_18 (fch_n_386),
        .\grn_reg[15]_19 (fch_n_296),
        .\grn_reg[15]_2 ({rgf_n_54,rgf_n_55,rgf_n_56,rgf_n_57,rgf_n_58,rgf_n_59,rgf_n_60,rgf_n_61,rgf_n_62,rgf_n_63,rgf_n_64}),
        .\grn_reg[15]_20 (fch_n_285),
        .\grn_reg[15]_21 (fch_n_288),
        .\grn_reg[15]_22 (fch_n_292),
        .\grn_reg[15]_23 (fch_n_309),
        .\grn_reg[15]_24 (fch_n_300),
        .\grn_reg[15]_25 (fch_n_305),
        .\grn_reg[15]_26 (fch_n_385),
        .\grn_reg[15]_27 (fch_n_297),
        .\grn_reg[15]_28 (fch_n_284),
        .\grn_reg[15]_29 (fch_n_289),
        .\grn_reg[15]_3 ({rgf_n_65,rgf_n_66,rgf_n_67,rgf_n_68,rgf_n_69,rgf_n_70,rgf_n_71,rgf_n_72,rgf_n_73,rgf_n_74,rgf_n_75}),
        .\grn_reg[15]_30 (fch_n_293),
        .\grn_reg[15]_31 (fch_n_310),
        .\grn_reg[15]_32 (fch_n_299),
        .\grn_reg[15]_33 (fch_n_306),
        .\grn_reg[15]_34 (fch_n_384),
        .\grn_reg[15]_35 (fch_n_298),
        .\grn_reg[15]_36 (fch_n_283),
        .\grn_reg[15]_37 (fch_n_290),
        .\grn_reg[15]_38 (fch_n_294),
        .\grn_reg[15]_4 ({rgf_n_76,rgf_n_77,rgf_n_78,rgf_n_79,rgf_n_80,rgf_n_81,rgf_n_82,rgf_n_83,rgf_n_84,rgf_n_85,rgf_n_86,rgf_n_87,rgf_n_88,rgf_n_89,rgf_n_90,rgf_n_91}),
        .\grn_reg[15]_5 ({rgf_n_92,rgf_n_93,rgf_n_94,rgf_n_95,rgf_n_96,rgf_n_97,rgf_n_98,rgf_n_99,rgf_n_100,rgf_n_101,rgf_n_102,rgf_n_103,rgf_n_104,rgf_n_105,rgf_n_106,rgf_n_107}),
        .\grn_reg[15]_6 (rgf_n_326),
        .\grn_reg[15]_7 (rgf_n_342),
        .\grn_reg[15]_8 (fch_n_302),
        .\grn_reg[15]_9 (fch_n_303),
        .\grn_reg[1] (rgf_n_344),
        .\grn_reg[1]_0 (rgf_n_349),
        .\grn_reg[2] (rgf_n_345),
        .\grn_reg[2]_0 (rgf_n_350),
        .\grn_reg[3] (rgf_n_346),
        .\grn_reg[3]_0 (rgf_n_351),
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
        .\grn_reg[4]_20 (rgf_n_347),
        .\grn_reg[4]_21 (rgf_n_352),
        .\grn_reg[4]_3 ({rgf_n_128,rgf_n_129,rgf_n_130,rgf_n_131,rgf_n_132}),
        .\grn_reg[4]_4 ({rgf_n_133,rgf_n_134,rgf_n_135,rgf_n_136,rgf_n_137}),
        .\grn_reg[4]_5 ({rgf_n_138,rgf_n_139,rgf_n_140,rgf_n_141,rgf_n_142}),
        .\grn_reg[4]_6 ({rgf_n_143,rgf_n_144,rgf_n_145,rgf_n_146,rgf_n_147}),
        .\grn_reg[4]_7 ({rgf_n_148,rgf_n_149,rgf_n_150,rgf_n_151,rgf_n_152}),
        .\grn_reg[4]_8 ({rgf_n_153,rgf_n_154,rgf_n_155,rgf_n_156,rgf_n_157}),
        .\grn_reg[4]_9 ({rgf_n_158,rgf_n_159,rgf_n_160,rgf_n_161,rgf_n_162}),
        .\grn_reg[5] (rgf_n_316),
        .\grn_reg[5]_0 (rgf_n_332),
        .\grn_reg[6] (rgf_n_317),
        .\grn_reg[6]_0 (rgf_n_333),
        .\grn_reg[7] (rgf_n_318),
        .\grn_reg[7]_0 (rgf_n_334),
        .\grn_reg[8] (rgf_n_319),
        .\grn_reg[8]_0 (rgf_n_335),
        .\grn_reg[9] (rgf_n_320),
        .\grn_reg[9]_0 (rgf_n_336),
        .irq(irq),
        .irq_0(rgf_n_297),
        .irq_lev(irq_lev),
        .\iv[0]_i_15 (rgf_n_427),
        .\iv[0]_i_16 (rgf_n_385),
        .\iv[0]_i_16_0 (rgf_n_390),
        .\iv[0]_i_16_1 (rgf_n_391),
        .\iv[0]_i_16_2 (rgf_n_398),
        .\iv[0]_i_16_3 (rgf_n_401),
        .\iv[0]_i_16_4 (rgf_n_419),
        .\iv[0]_i_16_5 (rgf_n_420),
        .\iv[0]_i_16_6 (rgf_n_421),
        .\iv[0]_i_17 (rgf_n_379),
        .\iv[0]_i_17_0 (rgf_n_424),
        .\iv[0]_i_18 (rgf_n_478),
        .\iv[10]_i_20 (rgf_n_412),
        .\iv[11]_i_17 (rgf_n_374),
        .\iv[11]_i_21 (rgf_n_484),
        .\iv[11]_i_9 (fch_n_231),
        .\iv[12]_i_15 (rgf_n_389),
        .\iv[13]_i_16 (rgf_n_376),
        .\iv[13]_i_2 (fch_n_220),
        .\iv[13]_i_20 (rgf_n_392),
        .\iv[13]_i_21 (rgf_n_387),
        .\iv[13]_i_24 (rgf_n_426),
        .\iv[13]_i_25 (rgf_n_423),
        .\iv[13]_i_28 (rgf_n_416),
        .\iv[13]_i_28_0 (rgf_n_480),
        .\iv[13]_i_28_1 (rgf_n_499),
        .\iv[13]_i_2_0 (fch_n_201),
        .\iv[13]_i_2_1 (fch_n_221),
        .\iv[13]_i_30 (rgf_n_388),
        .\iv[13]_i_35 (rgf_n_375),
        .\iv[13]_i_35_0 (rgf_n_397),
        .\iv[13]_i_7 (fch_n_226),
        .\iv[14]_i_22 (rgf_n_377),
        .\iv[14]_i_22_0 (rgf_n_417),
        .\iv[14]_i_22_1 (rgf_n_425),
        .\iv[14]_i_31 (rgf_n_479),
        .\iv[14]_i_37 (rgf_n_418),
        .\iv[14]_i_37_0 (rgf_n_422),
        .\iv[14]_i_4 (fch_n_378),
        .\iv[1]_i_14 (rgf_n_404),
        .\iv[2]_i_2 (fch_n_225),
        .\iv[2]_i_2_0 (fch_n_202),
        .\iv[2]_i_2_1 (fch_n_222),
        .\iv[5]_i_15 (rgf_n_405),
        .\iv[5]_i_15_0 (rgf_n_414),
        .\iv[5]_i_15_1 (rgf_n_415),
        .\iv[5]_i_2 (fch_n_219),
        .\iv[5]_i_2_0 (fch_n_224),
        .\iv[5]_i_2_1 (fch_n_228),
        .\iv[6]_i_12 (rgf_n_400),
        .\iv[6]_i_18 (rgf_n_411),
        .\iv[6]_i_8 (fch_n_248),
        .\iv[8]_i_14 (fch_n_230),
        .\iv[8]_i_20 (rgf_n_399),
        .\iv[8]_i_5 (fch_n_223),
        .\iv[8]_i_5_0 (fch_n_227),
        .\iv[9]_i_7 (fch_n_229),
        .\iv_reg[15] ({\ivec/p_0_in ,rgf_iv_ve}),
        .out({rgf_n_0,rgf_n_1,rgf_n_2,rgf_n_3,rgf_n_4,rgf_n_5,rgf_n_6,rgf_n_7,rgf_n_8,rgf_n_9,rgf_n_10,rgf_n_11,rgf_n_12,rgf_n_13,rgf_n_14,rgf_n_15}),
        .p_0_in(\pcnt/p_0_in ),
        .\pc_reg[15] (\pcnt/p_1_in ),
        .rst_n(rst_n),
        .sp_dec_0(\sptr/sp_dec_0 ),
        .\sp_reg[0] (rgf_n_462),
        .\sp_reg[10] (rgf_n_472),
        .\sp_reg[11] (rgf_n_473),
        .\sp_reg[12] (rgf_n_474),
        .\sp_reg[13] (rgf_n_475),
        .\sp_reg[14] (rgf_n_476),
        .\sp_reg[15] (\sptr/p_0_in ),
        .\sp_reg[15]_0 (rgf_n_477),
        .\sp_reg[15]_1 ({fch_n_251,fch_n_252,fch_n_253,fch_n_254,fch_n_255,fch_n_256,fch_n_257,fch_n_258,fch_n_259,fch_n_260,fch_n_261,fch_n_262,fch_n_263,fch_n_264,fch_n_265,fch_n_266}),
        .\sp_reg[1] (rgf_n_463),
        .\sp_reg[2] (rgf_n_464),
        .\sp_reg[3] (rgf_n_465),
        .\sp_reg[4] (rgf_n_466),
        .\sp_reg[5] (rgf_n_467),
        .\sp_reg[6] (rgf_n_314),
        .\sp_reg[6]_0 (rgf_n_468),
        .\sp_reg[7] (rgf_n_315),
        .\sp_reg[7]_0 (rgf_n_469),
        .\sp_reg[8] (rgf_n_470),
        .\sp_reg[9] (rgf_n_471),
        .\sr[6]_i_9 (rgf_n_382),
        .\sr[7]_i_12 (rgf_n_393),
        .\sr_reg[0] (fch_n_380),
        .\sr_reg[10] (fch_n_381),
        .\sr_reg[11] (fch_n_382),
        .\sr_reg[15] ({\sreg/p_2_in [7:4],rgf_sr_ml,rgf_sr_dr,\sreg/p_2_in [1:0],rgf_n_216,rgf_sr_c,rgf_n_218,rgf_n_219,rgf_sr_ie,sr_bank}),
        .\sr_reg[15]_0 (fch_n_379),
        .\sr_reg[1] (fch_n_383),
        .\sr_reg[2] (fch_n_59),
        .\sr_reg[3] (fch_n_58),
        .\sr_reg[4] (rgf_n_289),
        .\sr_reg[4]_0 (fch_n_39),
        .\sr_reg[5] (fch_n_57),
        .\sr_reg[6] (rgf_n_291),
        .\sr_reg[6]_0 (rgf_n_296),
        .\sr_reg[6]_1 (rgf_n_373),
        .\sr_reg[6]_10 (rgf_n_483),
        .\sr_reg[6]_11 (rgf_n_495),
        .\sr_reg[6]_12 (rgf_n_496),
        .\sr_reg[6]_13 (rgf_n_497),
        .\sr_reg[6]_14 (fch_n_55),
        .\sr_reg[6]_2 (rgf_n_380),
        .\sr_reg[6]_3 (rgf_n_381),
        .\sr_reg[6]_4 (rgf_n_402),
        .\sr_reg[6]_5 (rgf_n_406),
        .\sr_reg[6]_6 (rgf_n_407),
        .\sr_reg[6]_7 (rgf_n_413),
        .\sr_reg[6]_8 (rgf_n_481),
        .\sr_reg[6]_9 (rgf_n_482),
        .\sr_reg[7] (rgf_n_288),
        .\sr_reg[7]_0 (rgf_n_292),
        .\sr_reg[7]_1 (rgf_n_293),
        .\sr_reg[7]_2 (rgf_n_294),
        .\sr_reg[7]_3 (rgf_n_295),
        .\sr_reg[7]_4 (fch_n_60),
        .\stat[2]_i_3 (ctl_n_41),
        .\stat_reg[0] (rgf_n_290),
        .tout__1_carry_i_10(rgf_n_378),
        .tout__1_carry_i_10_0(rgf_n_428),
        .tout__1_carry_i_9(rgf_n_396),
        .\tr_reg[15] (rgf_tr),
        .\tr_reg[15]_0 (cbus));
endmodule
