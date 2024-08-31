
module mcvm_alu
   (O,
    tout__1_carry__0_i_8,
    tout__1_carry__1_i_8,
    tout__1_carry__2_i_8,
    tout__1_carry__3_i_3,
    \sr[4]_i_23 ,
    DI,
    S,
    \iv[4]_i_3 ,
    \iv[4]_i_3_0 ,
    \tr_reg[10] ,
    \tr_reg[10]_0 ,
    \tr_reg[13] ,
    \tr_reg[13]_0 ,
    \sr[6]_i_2 ,
    \sr[6]_i_2_0 );
  output [3:0]O;
  output [3:0]tout__1_carry__0_i_8;
  output [3:0]tout__1_carry__1_i_8;
  output [3:0]tout__1_carry__2_i_8;
  output [0:0]tout__1_carry__3_i_3;
  output \sr[4]_i_23 ;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\iv[4]_i_3 ;
  input [3:0]\iv[4]_i_3_0 ;
  input [3:0]\tr_reg[10] ;
  input [3:0]\tr_reg[10]_0 ;
  input [3:0]\tr_reg[13] ;
  input [3:0]\tr_reg[13]_0 ;
  input [0:0]\sr[6]_i_2 ;
  input [1:0]\sr[6]_i_2_0 ;

  wire [2:0]DI;
  wire [3:0]O;
  wire [3:0]S;
  wire [3:0]\iv[4]_i_3 ;
  wire [3:0]\iv[4]_i_3_0 ;
  wire \sr[4]_i_23 ;
  wire [0:0]\sr[6]_i_2 ;
  wire [1:0]\sr[6]_i_2_0 ;
  wire [3:0]tout__1_carry__0_i_8;
  wire [3:0]tout__1_carry__1_i_8;
  wire [3:0]tout__1_carry__2_i_8;
  wire [0:0]tout__1_carry__3_i_3;
  wire [3:0]\tr_reg[10] ;
  wire [3:0]\tr_reg[10]_0 ;
  wire [3:0]\tr_reg[13] ;
  wire [3:0]\tr_reg[13]_0 ;

  mcvm_alu_art art
       (.DI(DI),
        .O(O),
        .S(S),
        .\iv[4]_i_3 (\iv[4]_i_3 ),
        .\iv[4]_i_3_0 (\iv[4]_i_3_0 ),
        .\sr[4]_i_23 (\sr[4]_i_23 ),
        .\sr[6]_i_2 (\sr[6]_i_2 ),
        .\sr[6]_i_2_0 (\sr[6]_i_2_0 ),
        .tout__1_carry__0_i_8(tout__1_carry__0_i_8),
        .tout__1_carry__1_i_8(tout__1_carry__1_i_8),
        .tout__1_carry__2_i_8(tout__1_carry__2_i_8),
        .tout__1_carry__3_i_3(tout__1_carry__3_i_3),
        .\tr_reg[10] (\tr_reg[10] ),
        .\tr_reg[10]_0 (\tr_reg[10]_0 ),
        .\tr_reg[13] (\tr_reg[13] ),
        .\tr_reg[13]_0 (\tr_reg[13]_0 ));
endmodule

module mcvm_alu_add
   (O,
    tout__1_carry__0_i_8,
    tout__1_carry__1_i_8,
    tout__1_carry__2_i_8,
    tout__1_carry__3_i_3,
    \sr[4]_i_23_0 ,
    DI,
    S,
    \iv[4]_i_3 ,
    \iv[4]_i_3_0 ,
    \tr_reg[10] ,
    \tr_reg[10]_0 ,
    \tr_reg[13] ,
    \tr_reg[13]_0 ,
    \sr[6]_i_2 ,
    \sr[6]_i_2_0 );
  output [3:0]O;
  output [3:0]tout__1_carry__0_i_8;
  output [3:0]tout__1_carry__1_i_8;
  output [3:0]tout__1_carry__2_i_8;
  output [0:0]tout__1_carry__3_i_3;
  output \sr[4]_i_23_0 ;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\iv[4]_i_3 ;
  input [3:0]\iv[4]_i_3_0 ;
  input [3:0]\tr_reg[10] ;
  input [3:0]\tr_reg[10]_0 ;
  input [3:0]\tr_reg[13] ;
  input [3:0]\tr_reg[13]_0 ;
  input [0:0]\sr[6]_i_2 ;
  input [1:0]\sr[6]_i_2_0 ;

  wire \<const0> ;
  wire [2:0]DI;
  wire [3:0]O;
  wire [3:0]S;
  wire [3:0]\iv[4]_i_3 ;
  wire [3:0]\iv[4]_i_3_0 ;
  wire \sr[4]_i_22_n_0 ;
  wire \sr[4]_i_23_0 ;
  wire \sr[4]_i_23_n_0 ;
  wire \sr[4]_i_30_n_0 ;
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
  wire [3:0]\tr_reg[10] ;
  wire [3:0]\tr_reg[10]_0 ;
  wire [3:0]\tr_reg[13] ;
  wire [3:0]\tr_reg[13]_0 ;
  wire [3:0]NLW_tout__1_carry__3_O_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sr[4]_i_18 
       (.I0(\sr[4]_i_22_n_0 ),
        .I1(tout__1_carry__1_i_8[1]),
        .I2(tout__1_carry__2_i_8[2]),
        .I3(O[2]),
        .I4(tout__1_carry__1_i_8[2]),
        .I5(\sr[4]_i_23_n_0 ),
        .O(\sr[4]_i_23_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_22 
       (.I0(O[1]),
        .I1(tout__1_carry__1_i_8[3]),
        .I2(O[0]),
        .I3(tout__1_carry__0_i_8[2]),
        .O(\sr[4]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sr[4]_i_23 
       (.I0(tout__1_carry__1_i_8[0]),
        .I1(O[3]),
        .I2(tout__1_carry__0_i_8[3]),
        .I3(tout__1_carry__0_i_8[1]),
        .I4(\sr[4]_i_30_n_0 ),
        .O(\sr[4]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_30 
       (.I0(tout__1_carry__2_i_8[0]),
        .I1(tout__1_carry__2_i_8[1]),
        .I2(tout__1_carry__0_i_8[0]),
        .I3(tout__1_carry__2_i_8[3]),
        .O(\sr[4]_i_30_n_0 ));
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
        .DI(\iv[4]_i_3 ),
        .O(tout__1_carry__0_i_8),
        .S(\iv[4]_i_3_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__1
       (.CI(tout__1_carry__0_n_0),
        .CO({tout__1_carry__1_n_0,tout__1_carry__1_n_1,tout__1_carry__1_n_2,tout__1_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(\tr_reg[10] ),
        .O(tout__1_carry__1_i_8),
        .S(\tr_reg[10]_0 ));
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
    \sr[4]_i_23 ,
    DI,
    S,
    \iv[4]_i_3 ,
    \iv[4]_i_3_0 ,
    \tr_reg[10] ,
    \tr_reg[10]_0 ,
    \tr_reg[13] ,
    \tr_reg[13]_0 ,
    \sr[6]_i_2 ,
    \sr[6]_i_2_0 );
  output [3:0]O;
  output [3:0]tout__1_carry__0_i_8;
  output [3:0]tout__1_carry__1_i_8;
  output [3:0]tout__1_carry__2_i_8;
  output [0:0]tout__1_carry__3_i_3;
  output \sr[4]_i_23 ;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\iv[4]_i_3 ;
  input [3:0]\iv[4]_i_3_0 ;
  input [3:0]\tr_reg[10] ;
  input [3:0]\tr_reg[10]_0 ;
  input [3:0]\tr_reg[13] ;
  input [3:0]\tr_reg[13]_0 ;
  input [0:0]\sr[6]_i_2 ;
  input [1:0]\sr[6]_i_2_0 ;

  wire [2:0]DI;
  wire [3:0]O;
  wire [3:0]S;
  wire [3:0]\iv[4]_i_3 ;
  wire [3:0]\iv[4]_i_3_0 ;
  wire \sr[4]_i_23 ;
  wire [0:0]\sr[6]_i_2 ;
  wire [1:0]\sr[6]_i_2_0 ;
  wire [3:0]tout__1_carry__0_i_8;
  wire [3:0]tout__1_carry__1_i_8;
  wire [3:0]tout__1_carry__2_i_8;
  wire [0:0]tout__1_carry__3_i_3;
  wire [3:0]\tr_reg[10] ;
  wire [3:0]\tr_reg[10]_0 ;
  wire [3:0]\tr_reg[13] ;
  wire [3:0]\tr_reg[13]_0 ;

  mcvm_alu_add add
       (.DI(DI),
        .O(O),
        .S(S),
        .\iv[4]_i_3 (\iv[4]_i_3 ),
        .\iv[4]_i_3_0 (\iv[4]_i_3_0 ),
        .\sr[4]_i_23_0 (\sr[4]_i_23 ),
        .\sr[6]_i_2 (\sr[6]_i_2 ),
        .\sr[6]_i_2_0 (\sr[6]_i_2_0 ),
        .tout__1_carry__0_i_8(tout__1_carry__0_i_8),
        .tout__1_carry__1_i_8(tout__1_carry__1_i_8),
        .tout__1_carry__2_i_8(tout__1_carry__2_i_8),
        .tout__1_carry__3_i_3(tout__1_carry__3_i_3),
        .\tr_reg[10] (\tr_reg[10] ),
        .\tr_reg[10]_0 (\tr_reg[10]_0 ),
        .\tr_reg[13] (\tr_reg[13] ),
        .\tr_reg[13]_0 (\tr_reg[13]_0 ));
endmodule

module mcvm_fch
   (.out({ir[15],ir[14],ir[13],ir[12],ir[11],ir[10],ir[9],ir[8],ir[7],ir[6],ir[3],ir[2],ir[1],ir[0]}),
    D,
    cbus,
    alu_sr_flag,
    \grn_reg[0] ,
    gr2_bus1__0,
    gr3_bus1__0,
    \grn_reg[1] ,
    \grn_reg[2] ,
    \grn_reg[3] ,
    \grn_reg[4] ,
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
    \grn_reg[0]_1 ,
    \grn_reg[1]_1 ,
    \grn_reg[2]_1 ,
    \grn_reg[3]_1 ,
    \grn_reg[4]_1 ,
    gr3_bus1__0_2,
    gr2_bus1__0_3,
    gr2_bus1__0_4,
    gr3_bus1__0_5,
    gr1_bus1__0_6,
    gr4_bus1__0_7,
    gr6_bus1__0_8,
    gr7_bus1__0_9,
    gr5_bus1__0_10,
    gr0_bus1__0_11,
    gr3_bus1__0_12,
    gr6_bus1__0_13,
    gr4_bus1__0_14,
    gr5_bus1__0_15,
    gr1_bus1__0_16,
    gr2_bus1__0_17,
    gr7_bus1__0_18,
    gr0_bus1__0_19,
    gr4_bus1__0_20,
    \stat_reg[2] ,
    \stat_reg[2]_0 ,
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
    \stat_reg[2]_1 ,
    \stat_reg[2]_2 ,
    \sr_reg[0] ,
    \sr_reg[1] ,
    \sr_reg[2] ,
    \sr_reg[3] ,
    \sr_reg[4] ,
    \sr_reg[5] ,
    \sr_reg[6] ,
    \sr_reg[7] ,
    \sr_reg[8] ,
    \sr_reg[9] ,
    \sr_reg[10] ,
    \sr_reg[11] ,
    \sr_reg[12] ,
    \sr_reg[13] ,
    \sr_reg[14] ,
    \sr_reg[15] ,
    \stat_reg[2]_3 ,
    \stat_reg[2]_4 ,
    \stat_reg[2]_5 ,
    \stat_reg[2]_6 ,
    \stat_reg[2]_7 ,
    \stat_reg[2]_8 ,
    \stat_reg[2]_9 ,
    \stat_reg[0] ,
    \stat_reg[0]_0 ,
    \stat_reg[2]_10 ,
    \stat_reg[2]_11 ,
    \sp_reg[0] ,
    \stat_reg[2]_12 ,
    \iv[12]_i_19_0 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[12]_INST_0_i_2_0 ,
    \bdatw[12]_INST_0_i_2_1 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \badr[15]_INST_0_i_1 ,
    \iv[14]_i_14_0 ,
    \iv[14]_i_30_0 ,
    \iv[14]_i_42 ,
    \badr[0]_INST_0_i_1 ,
    bdatw,
    \stat_reg[0]_1 ,
    bbus_o,
    rst_n_fl_reg_0,
    in0,
    rst_n_fl_reg_1,
    \stat_reg[2]_13 ,
    \stat_reg[2]_14 ,
    rst_n_fl_reg_2,
    rst_n_fl_reg_3,
    ccmd,
    \stat_reg[0]_2 ,
    \stat_reg[2]_15 ,
    crdy_0,
    \stat_reg[1] ,
    rst_n_fl_reg_4,
    brdy_0,
    \sr_reg[10]_0 ,
    \bdatw[9]_INST_0_i_2_0 ,
    abus_o,
    E,
    \sr_reg[1]_0 ,
    \sr_reg[1]_1 ,
    \sr_reg[1]_2 ,
    \sr_reg[0]_0 ,
    \sr_reg[1]_3 ,
    \sr_reg[1]_4 ,
    \sr_reg[1]_5 ,
    \sr_reg[0]_1 ,
    \sr_reg[1]_6 ,
    \sr_reg[1]_7 ,
    \sr_reg[1]_8 ,
    \sr_reg[0]_2 ,
    \sr_reg[1]_9 ,
    \sr_reg[1]_10 ,
    \sr_reg[1]_11 ,
    \sr_reg[0]_3 ,
    \sr_reg[1]_12 ,
    \sr_reg[1]_13 ,
    \sr_reg[1]_14 ,
    \sr_reg[0]_4 ,
    \sr_reg[1]_15 ,
    \sr_reg[1]_16 ,
    \sr_reg[1]_17 ,
    \sr_reg[0]_5 ,
    \sr_reg[1]_18 ,
    \sr_reg[1]_19 ,
    \sr_reg[1]_20 ,
    \sr_reg[0]_6 ,
    \sr_reg[1]_21 ,
    \sr_reg[1]_22 ,
    \sr_reg[1]_23 ,
    \stat_reg[0]_3 ,
    \stat_reg[2]_16 ,
    \pc_reg[15] ,
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
    \badr[14]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1_0 ,
    \badr[15]_INST_0_i_1_1 ,
    \badr[15]_INST_0_i_1_2 ,
    brdy_1,
    badr,
    \iv[14]_i_12_0 ,
    \iv[14]_i_39 ,
    rst_n_0,
    DI,
    S,
    \badr[6]_INST_0_i_1 ,
    tout__1_carry__0_i_1_0,
    \badr[10]_INST_0_i_1 ,
    tout__1_carry__1_i_1_0,
    fch_irq_req,
    clk,
    ctl_fetch_fl_reg_0,
    rst_n,
    \badr[15]_INST_0_i_2 ,
    \sr_reg[6]_0 ,
    \bdatw[12]_INST_0_i_12 ,
    \bdatw[12]_INST_0_i_12_0 ,
    bank_sel,
    \bdatw[12]_INST_0_i_31_0 ,
    \bdatw[12] ,
    \bdatw[13]_INST_0_i_2_0 ,
    \bdatw[15]_INST_0_i_1_0 ,
    \bdatw[15]_INST_0_i_1_1 ,
    \bdatw[14]_INST_0_i_2_0 ,
    \bdatw[15]_INST_0_i_2_0 ,
    \bdatw[8]_INST_0_i_1_0 ,
    \bdatw[9]_INST_0_i_1_0 ,
    \bdatw[10]_INST_0_i_1_0 ,
    \bdatw[11]_INST_0_i_1_0 ,
    \bdatw[12]_INST_0_i_1_0 ,
    \bdatw[13]_INST_0_i_1_0 ,
    \bdatw[14]_INST_0_i_1_0 ,
    \bdatw[15]_INST_0_i_1_2 ,
    \bdatw[12]_INST_0_i_31_1 ,
    \bdatw[12]_INST_0_i_12_1 ,
    \bdatw[12]_INST_0_i_12_2 ,
    \bdatw[12]_INST_0_i_30_0 ,
    \bdatw[12]_INST_0_i_30_1 ,
    \bdatw[15]_INST_0_i_24_0 ,
    \bdatw[15]_INST_0_i_24_1 ,
    \bdatw[15]_INST_0_i_24_2 ,
    \bdatw[15]_INST_0_i_6_0 ,
    \bdatw[15]_INST_0_i_6_1 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \bdatw[8]_INST_0_i_2_3 ,
    \bdatw[12]_INST_0_i_11_0 ,
    \bdatw[12]_INST_0_i_11_1 ,
    \bdatw[12]_INST_0_i_25_0 ,
    \bdatw[9]_INST_0_i_2_1 ,
    \bdatw[9]_INST_0_i_2_2 ,
    \bdatw[10]_INST_0_i_2_0 ,
    \bdatw[10]_INST_0_i_2_1 ,
    \bdatw[11]_INST_0_i_2_0 ,
    \bdatw[11]_INST_0_i_2_1 ,
    \bdatw[12]_INST_0_i_2_2 ,
    \bdatw[12]_INST_0_i_2_3 ,
    \bdatw[12]_INST_0_i_25_1 ,
    \bdatw[12]_INST_0_i_11_2 ,
    \bdatw[12]_INST_0_i_11_3 ,
    \bdatw[12]_INST_0_i_24_0 ,
    \bdatw[12]_INST_0_i_24_1 ,
    \bdatw[12]_INST_0_i_11_4 ,
    \bdatw[12]_INST_0_i_11_5 ,
    \bdatw[12]_INST_0_i_22_0 ,
    \bdatw[12]_INST_0_i_22_1 ,
    \bdatw[15]_INST_0_i_1_3 ,
    \bdatw[15]_INST_0_i_1_4 ,
    \pc_reg[15]_0 ,
    Q,
    \sp_reg[15]_0 ,
    sp_dec_0,
    \ccmd[2]_INST_0_i_3_0 ,
    \tr_reg[0]_0 ,
    cbus_i,
    O,
    abus_0,
    \tr_reg[5]_0 ,
    \sr_reg[7]_0 ,
    \tr_reg[13]_0 ,
    \tr_reg[13]_1 ,
    \tr_reg[13]_2 ,
    \tr_reg[11]_0 ,
    \tr_reg[9]_0 ,
    \tr_reg[9]_1 ,
    \iv[9]_i_2_0 ,
    \iv[9]_i_2_1 ,
    \iv[9]_i_2_2 ,
    \sr[4]_i_5_0 ,
    \tr_reg[1]_0 ,
    \iv[5]_i_2_0 ,
    \iv[5]_i_2_1 ,
    \iv[4]_i_2_0 ,
    \iv[13]_i_2_0 ,
    \sr[4]_i_20_0 ,
    \iv[1]_i_2_0 ,
    \iv[9]_i_2_3 ,
    \tr_reg[11]_1 ,
    \iv[3]_i_2_0 ,
    \iv[3]_i_2_1 ,
    \sr[5]_i_2_0 ,
    \tr_reg[10]_0 ,
    \sr[4]_i_20_1 ,
    \iv[5]_i_2_2 ,
    \tr_reg[8]_0 ,
    \tr_reg[8]_1 ,
    \tr_reg[6]_0 ,
    \iv[10]_i_5_0 ,
    \iv[12]_i_3_0 ,
    \sr[6]_i_3_0 ,
    \iv[11]_i_3_0 ,
    \iv[9]_i_2_4 ,
    \iv[9]_i_2_5 ,
    \iv[3]_i_2_2 ,
    \iv[3]_i_2_3 ,
    \iv[12]_i_2_0 ,
    \iv[4]_i_2_1 ,
    \iv[2]_i_2_0 ,
    \iv[2]_i_2_1 ,
    \iv[11]_i_2_0 ,
    \sr[7]_i_6_0 ,
    \iv[6]_i_2_0 ,
    \tr_reg[14]_0 ,
    \iv[10]_i_13_0 ,
    \iv[3]_i_2_4 ,
    \iv[0]_i_2_0 ,
    \iv[8]_i_2_0 ,
    \iv[0]_i_2_1 ,
    \iv[4]_i_2_2 ,
    \iv[14]_i_4_0 ,
    \iv[14]_i_4_1 ,
    \iv[6]_i_2_1 ,
    \iv[7]_i_2_0 ,
    \iv[10]_i_7_0 ,
    \iv[12]_i_3_1 ,
    \iv[12]_i_3_2 ,
    \iv[2]_i_2_2 ,
    \iv[14]_i_17 ,
    \iv[4]_i_7_0 ,
    \iv[3]_i_7_0 ,
    \sr[4]_i_19 ,
    \tr_reg[1]_1 ,
    \tr_reg[2]_0 ,
    \tr_reg[3]_0 ,
    \tr_reg[4]_0 ,
    \tr_reg[7]_0 ,
    \tr_reg[5]_1 ,
    .bdatw_13_sp_1(bdatw_13_sn_1),
    \tr_reg[6]_1 ,
    .bdatw_14_sp_1(bdatw_14_sn_1),
    \tr_reg[7]_1 ,
    .bdatw_15_sp_1(bdatw_15_sn_1),
    .bdatw_8_sp_1(bdatw_8_sn_1),
    .bdatw_9_sp_1(bdatw_9_sn_1),
    .bdatw_10_sp_1(bdatw_10_sn_1),
    .bdatw_11_sp_1(bdatw_11_sn_1),
    \bdatw[12]_0 ,
    \bdatw[13]_0 ,
    \bdatw[14]_0 ,
    \bdatw[15]_0 ,
    \sp[15]_i_5_0 ,
    \bcmd[1] ,
    ctl_fetch_fl_reg_1,
    crdy,
    \ccmd[0]_INST_0_i_2_0 ,
    brdy,
    irq_vec,
    \stat_reg[0]_4 ,
    \iv[15]_i_15_0 ,
    \badr[15]_INST_0_i_65_0 ,
    \ccmd[1]_INST_0_i_6_0 ,
    ctl_fetch_inferred_i_5_0,
    \stat[0]_i_11_0 ,
    \stat[0]_i_11_1 ,
    \sr[4]_i_3_0 ,
    bdatr,
    \tr_reg[11]_2 ,
    \ccmd[2]_INST_0_i_7_0 ,
    \ccmd[0]_INST_0_i_1_0 ,
    ctl_fetch_ext_fl_reg_0,
    \stat_reg[1]_0 ,
    \stat_reg[1]_1 ,
    \iv[15]_i_9_0 ,
    ctl_fetch_inferred_i_3_0,
    \badr[15]_INST_0_i_92_0 ,
    .ccmd_4_sp_1(ccmd_4_sn_1),
    ctl_fetch_fl_reg_2,
    \stat[1]_i_9_0 ,
    \badr[15]_INST_0_i_65_1 ,
    \badr[15]_INST_0_i_57_0 ,
    \read_cyc_reg[0] ,
    \iv[15]_i_8_0 ,
    \iv[15]_i_8_1 ,
    \ccmd[3]_INST_0_i_8_0 ,
    \ccmd[0]_INST_0_i_1_1 ,
    \ccmd[0]_INST_0_i_4_0 ,
    \ccmd[0]_INST_0_i_4_1 ,
    \ccmd[3]_INST_0_i_8_1 ,
    \sr[13]_i_3_0 ,
    ctl_fetch_inferred_i_32_0,
    \badr[15]_INST_0_i_29_0 ,
    \sp_reg[15]_1 ,
    \sp_reg[15]_2 ,
    \sp_reg[3]_0 ,
    \sp_reg[7]_0 ,
    \sp_reg[11]_0 ,
    fch_pc,
    \iv[11]_i_3_1 ,
    read_cyc,
    \iv[12]_i_12_0 ,
    \iv[10]_i_5_1 ,
    \iv[2]_i_2_3 ,
    \iv[2]_i_2_4 ,
    \iv[2]_i_2_5 ,
    \iv[0]_i_2_2 ,
    \iv[7]_i_2_1 ,
    \iv[7]_i_2_2 ,
    \iv[3]_i_2_5 ,
    \iv[3]_i_2_6 ,
    \iv[0]_i_2_3 ,
    \sr[4]_i_20_2 ,
    \iv[5]_i_2_3 ,
    \iv[8]_i_2_1 ,
    \iv[12]_i_2_1 ,
    \sr[4]_i_20_3 ,
    \iv[14]_i_3_0 ,
    \sr[4]_i_20_4 ,
    \sr[6]_i_5 ,
    \sp_reg[0]_1 ,
    cpuid,
    irq_lev,
    SR,
    fdat);
  output [11:0]D;
  output [14:0]cbus;
  output [0:0]alu_sr_flag;
  output \grn_reg[0] ;
  output gr2_bus1__0;
  output gr3_bus1__0;
  output \grn_reg[1] ;
  output \grn_reg[2] ;
  output \grn_reg[3] ;
  output \grn_reg[4] ;
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
  output \grn_reg[0]_1 ;
  output \grn_reg[1]_1 ;
  output \grn_reg[2]_1 ;
  output \grn_reg[3]_1 ;
  output \grn_reg[4]_1 ;
  output gr3_bus1__0_2;
  output gr2_bus1__0_3;
  output gr2_bus1__0_4;
  output gr3_bus1__0_5;
  output gr1_bus1__0_6;
  output gr4_bus1__0_7;
  output gr6_bus1__0_8;
  output gr7_bus1__0_9;
  output gr5_bus1__0_10;
  output gr0_bus1__0_11;
  output gr3_bus1__0_12;
  output gr6_bus1__0_13;
  output gr4_bus1__0_14;
  output gr5_bus1__0_15;
  output gr1_bus1__0_16;
  output gr2_bus1__0_17;
  output gr7_bus1__0_18;
  output gr0_bus1__0_19;
  output gr4_bus1__0_20;
  output \stat_reg[2] ;
  output \stat_reg[2]_0 ;
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
  output \stat_reg[2]_1 ;
  output \stat_reg[2]_2 ;
  output \sr_reg[0] ;
  output \sr_reg[1] ;
  output \sr_reg[2] ;
  output \sr_reg[3] ;
  output \sr_reg[4] ;
  output \sr_reg[5] ;
  output \sr_reg[6] ;
  output \sr_reg[7] ;
  output \sr_reg[8] ;
  output \sr_reg[9] ;
  output \sr_reg[10] ;
  output \sr_reg[11] ;
  output \sr_reg[12] ;
  output \sr_reg[13] ;
  output \sr_reg[14] ;
  output \sr_reg[15] ;
  output \stat_reg[2]_3 ;
  output \stat_reg[2]_4 ;
  output \stat_reg[2]_5 ;
  output \stat_reg[2]_6 ;
  output \stat_reg[2]_7 ;
  output \stat_reg[2]_8 ;
  output \stat_reg[2]_9 ;
  output [0:0]\stat_reg[0] ;
  output \stat_reg[0]_0 ;
  output \stat_reg[2]_10 ;
  output \stat_reg[2]_11 ;
  output \sp_reg[0] ;
  output \stat_reg[2]_12 ;
  output \iv[12]_i_19_0 ;
  output \bdatw[8]_INST_0_i_2_0 ;
  output \bdatw[12]_INST_0_i_2_0 ;
  output \bdatw[12]_INST_0_i_2_1 ;
  output \bdatw[8]_INST_0_i_2_1 ;
  output \badr[15]_INST_0_i_1 ;
  output \iv[14]_i_14_0 ;
  output \iv[14]_i_30_0 ;
  output \iv[14]_i_42 ;
  output \badr[0]_INST_0_i_1 ;
  output [15:0]bdatw;
  output \stat_reg[0]_1 ;
  output [15:0]bbus_o;
  output rst_n_fl_reg_0;
  output in0;
  output rst_n_fl_reg_1;
  output [2:0]\stat_reg[2]_13 ;
  output \stat_reg[2]_14 ;
  output rst_n_fl_reg_2;
  output rst_n_fl_reg_3;
  output [4:0]ccmd;
  output \stat_reg[0]_2 ;
  output \stat_reg[2]_15 ;
  output crdy_0;
  output \stat_reg[1] ;
  output rst_n_fl_reg_4;
  output brdy_0;
  output \sr_reg[10]_0 ;
  output \bdatw[9]_INST_0_i_2_0 ;
  output [15:0]abus_o;
  output [0:0]E;
  output [0:0]\sr_reg[1]_0 ;
  output [0:0]\sr_reg[1]_1 ;
  output [0:0]\sr_reg[1]_2 ;
  output [0:0]\sr_reg[0]_0 ;
  output [0:0]\sr_reg[1]_3 ;
  output [0:0]\sr_reg[1]_4 ;
  output [0:0]\sr_reg[1]_5 ;
  output [0:0]\sr_reg[0]_1 ;
  output [0:0]\sr_reg[1]_6 ;
  output [0:0]\sr_reg[1]_7 ;
  output [0:0]\sr_reg[1]_8 ;
  output [0:0]\sr_reg[0]_2 ;
  output [0:0]\sr_reg[1]_9 ;
  output [0:0]\sr_reg[1]_10 ;
  output [0:0]\sr_reg[1]_11 ;
  output [0:0]\sr_reg[0]_3 ;
  output [0:0]\sr_reg[1]_12 ;
  output [0:0]\sr_reg[1]_13 ;
  output [0:0]\sr_reg[1]_14 ;
  output [0:0]\sr_reg[0]_4 ;
  output [0:0]\sr_reg[1]_15 ;
  output [0:0]\sr_reg[1]_16 ;
  output [0:0]\sr_reg[1]_17 ;
  output [0:0]\sr_reg[0]_5 ;
  output [0:0]\sr_reg[1]_18 ;
  output [0:0]\sr_reg[1]_19 ;
  output [0:0]\sr_reg[1]_20 ;
  output [0:0]\sr_reg[0]_6 ;
  output [0:0]\sr_reg[1]_21 ;
  output [0:0]\sr_reg[1]_22 ;
  output [0:0]\sr_reg[1]_23 ;
  output [15:0]\stat_reg[0]_3 ;
  output [1:0]\stat_reg[2]_16 ;
  output [15:0]\pc_reg[15] ;
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
  output [3:0]\badr[14]_INST_0_i_1 ;
  output [3:0]\badr[15]_INST_0_i_1_0 ;
  output [1:0]\badr[15]_INST_0_i_1_1 ;
  output [0:0]\badr[15]_INST_0_i_1_2 ;
  output brdy_1;
  output [15:0]badr;
  output \iv[14]_i_12_0 ;
  output \iv[14]_i_39 ;
  output rst_n_0;
  output [2:0]DI;
  output [3:0]S;
  output [3:0]\badr[6]_INST_0_i_1 ;
  output [3:0]tout__1_carry__0_i_1_0;
  output [3:0]\badr[10]_INST_0_i_1 ;
  output [3:0]tout__1_carry__1_i_1_0;
  input fch_irq_req;
  input clk;
  input ctl_fetch_fl_reg_0;
  input rst_n;
  input [15:0]\badr[15]_INST_0_i_2 ;
  input [0:0]\sr_reg[6]_0 ;
  input [4:0]\bdatw[12]_INST_0_i_12 ;
  input [4:0]\bdatw[12]_INST_0_i_12_0 ;
  input [3:0]bank_sel;
  input [4:0]\bdatw[12]_INST_0_i_31_0 ;
  input [4:0]\bdatw[12] ;
  input \bdatw[13]_INST_0_i_2_0 ;
  input [10:0]\bdatw[15]_INST_0_i_1_0 ;
  input [10:0]\bdatw[15]_INST_0_i_1_1 ;
  input \bdatw[14]_INST_0_i_2_0 ;
  input \bdatw[15]_INST_0_i_2_0 ;
  input \bdatw[8]_INST_0_i_1_0 ;
  input \bdatw[9]_INST_0_i_1_0 ;
  input \bdatw[10]_INST_0_i_1_0 ;
  input \bdatw[11]_INST_0_i_1_0 ;
  input \bdatw[12]_INST_0_i_1_0 ;
  input \bdatw[13]_INST_0_i_1_0 ;
  input \bdatw[14]_INST_0_i_1_0 ;
  input \bdatw[15]_INST_0_i_1_2 ;
  input [4:0]\bdatw[12]_INST_0_i_31_1 ;
  input [4:0]\bdatw[12]_INST_0_i_12_1 ;
  input [4:0]\bdatw[12]_INST_0_i_12_2 ;
  input [4:0]\bdatw[12]_INST_0_i_30_0 ;
  input [4:0]\bdatw[12]_INST_0_i_30_1 ;
  input [15:0]\bdatw[15]_INST_0_i_24_0 ;
  input [15:0]\bdatw[15]_INST_0_i_24_1 ;
  input [15:0]\bdatw[15]_INST_0_i_24_2 ;
  input [10:0]\bdatw[15]_INST_0_i_6_0 ;
  input [10:0]\bdatw[15]_INST_0_i_6_1 ;
  input \bdatw[8]_INST_0_i_2_2 ;
  input \bdatw[8]_INST_0_i_2_3 ;
  input [4:0]\bdatw[12]_INST_0_i_11_0 ;
  input [4:0]\bdatw[12]_INST_0_i_11_1 ;
  input [4:0]\bdatw[12]_INST_0_i_25_0 ;
  input \bdatw[9]_INST_0_i_2_1 ;
  input \bdatw[9]_INST_0_i_2_2 ;
  input \bdatw[10]_INST_0_i_2_0 ;
  input \bdatw[10]_INST_0_i_2_1 ;
  input \bdatw[11]_INST_0_i_2_0 ;
  input \bdatw[11]_INST_0_i_2_1 ;
  input \bdatw[12]_INST_0_i_2_2 ;
  input \bdatw[12]_INST_0_i_2_3 ;
  input [4:0]\bdatw[12]_INST_0_i_25_1 ;
  input [4:0]\bdatw[12]_INST_0_i_11_2 ;
  input [4:0]\bdatw[12]_INST_0_i_11_3 ;
  input [4:0]\bdatw[12]_INST_0_i_24_0 ;
  input [4:0]\bdatw[12]_INST_0_i_24_1 ;
  input [4:0]\bdatw[12]_INST_0_i_11_4 ;
  input [4:0]\bdatw[12]_INST_0_i_11_5 ;
  input [4:0]\bdatw[12]_INST_0_i_22_0 ;
  input [4:0]\bdatw[12]_INST_0_i_22_1 ;
  input [15:0]\bdatw[15]_INST_0_i_1_3 ;
  input [15:0]\bdatw[15]_INST_0_i_1_4 ;
  input [15:0]\pc_reg[15]_0 ;
  input [2:0]Q;
  input [15:0]\sp_reg[15]_0 ;
  input [14:0]sp_dec_0;
  input \ccmd[2]_INST_0_i_3_0 ;
  input \tr_reg[0]_0 ;
  input [10:0]cbus_i;
  input [3:0]O;
  input [15:0]abus_0;
  input \tr_reg[5]_0 ;
  input [3:0]\sr_reg[7]_0 ;
  input \tr_reg[13]_0 ;
  input \tr_reg[13]_1 ;
  input \tr_reg[13]_2 ;
  input [3:0]\tr_reg[11]_0 ;
  input \tr_reg[9]_0 ;
  input \tr_reg[9]_1 ;
  input \iv[9]_i_2_0 ;
  input \iv[9]_i_2_1 ;
  input \iv[9]_i_2_2 ;
  input \sr[4]_i_5_0 ;
  input \tr_reg[1]_0 ;
  input \iv[5]_i_2_0 ;
  input \iv[5]_i_2_1 ;
  input \iv[4]_i_2_0 ;
  input \iv[13]_i_2_0 ;
  input \sr[4]_i_20_0 ;
  input \iv[1]_i_2_0 ;
  input \iv[9]_i_2_3 ;
  input \tr_reg[11]_1 ;
  input \iv[3]_i_2_0 ;
  input \iv[3]_i_2_1 ;
  input \sr[5]_i_2_0 ;
  input \tr_reg[10]_0 ;
  input \sr[4]_i_20_1 ;
  input \iv[5]_i_2_2 ;
  input \tr_reg[8]_0 ;
  input \tr_reg[8]_1 ;
  input \tr_reg[6]_0 ;
  input \iv[10]_i_5_0 ;
  input \iv[12]_i_3_0 ;
  input \sr[6]_i_3_0 ;
  input \iv[11]_i_3_0 ;
  input \iv[9]_i_2_4 ;
  input \iv[9]_i_2_5 ;
  input \iv[3]_i_2_2 ;
  input \iv[3]_i_2_3 ;
  input \iv[12]_i_2_0 ;
  input \iv[4]_i_2_1 ;
  input \iv[2]_i_2_0 ;
  input \iv[2]_i_2_1 ;
  input \iv[11]_i_2_0 ;
  input \sr[7]_i_6_0 ;
  input \iv[6]_i_2_0 ;
  input \tr_reg[14]_0 ;
  input \iv[10]_i_13_0 ;
  input \iv[3]_i_2_4 ;
  input \iv[0]_i_2_0 ;
  input \iv[8]_i_2_0 ;
  input \iv[0]_i_2_1 ;
  input \iv[4]_i_2_2 ;
  input \iv[14]_i_4_0 ;
  input \iv[14]_i_4_1 ;
  input \iv[6]_i_2_1 ;
  input \iv[7]_i_2_0 ;
  input \iv[10]_i_7_0 ;
  input \iv[12]_i_3_1 ;
  input \iv[12]_i_3_2 ;
  input \iv[2]_i_2_2 ;
  input \iv[14]_i_17 ;
  input \iv[4]_i_7_0 ;
  input \iv[3]_i_7_0 ;
  input \sr[4]_i_19 ;
  input \tr_reg[1]_1 ;
  input \tr_reg[2]_0 ;
  input \tr_reg[3]_0 ;
  input \tr_reg[4]_0 ;
  input [3:0]\tr_reg[7]_0 ;
  input \tr_reg[5]_1 ;
  input \tr_reg[6]_1 ;
  input \tr_reg[7]_1 ;
  input \bdatw[12]_0 ;
  input \bdatw[13]_0 ;
  input \bdatw[14]_0 ;
  input \bdatw[15]_0 ;
  input \sp[15]_i_5_0 ;
  input \bcmd[1] ;
  input ctl_fetch_fl_reg_1;
  input crdy;
  input \ccmd[0]_INST_0_i_2_0 ;
  input brdy;
  input [5:0]irq_vec;
  input \stat_reg[0]_4 ;
  input \iv[15]_i_15_0 ;
  input \badr[15]_INST_0_i_65_0 ;
  input \ccmd[1]_INST_0_i_6_0 ;
  input ctl_fetch_inferred_i_5_0;
  input \stat[0]_i_11_0 ;
  input \stat[0]_i_11_1 ;
  input \sr[4]_i_3_0 ;
  input [2:0]bdatr;
  input \tr_reg[11]_2 ;
  input \ccmd[2]_INST_0_i_7_0 ;
  input \ccmd[0]_INST_0_i_1_0 ;
  input ctl_fetch_ext_fl_reg_0;
  input \stat_reg[1]_0 ;
  input \stat_reg[1]_1 ;
  input \iv[15]_i_9_0 ;
  input ctl_fetch_inferred_i_3_0;
  input \badr[15]_INST_0_i_92_0 ;
  input ctl_fetch_fl_reg_2;
  input \stat[1]_i_9_0 ;
  input \badr[15]_INST_0_i_65_1 ;
  input \badr[15]_INST_0_i_57_0 ;
  input \read_cyc_reg[0] ;
  input \iv[15]_i_8_0 ;
  input \iv[15]_i_8_1 ;
  input \ccmd[3]_INST_0_i_8_0 ;
  input \ccmd[0]_INST_0_i_1_1 ;
  input \ccmd[0]_INST_0_i_4_0 ;
  input \ccmd[0]_INST_0_i_4_1 ;
  input \ccmd[3]_INST_0_i_8_1 ;
  input \sr[13]_i_3_0 ;
  input ctl_fetch_inferred_i_32_0;
  input \badr[15]_INST_0_i_29_0 ;
  input [3:0]\sp_reg[15]_1 ;
  input [0:0]\sp_reg[15]_2 ;
  input [2:0]\sp_reg[3]_0 ;
  input [3:0]\sp_reg[7]_0 ;
  input [3:0]\sp_reg[11]_0 ;
  input [15:0]fch_pc;
  input \iv[11]_i_3_1 ;
  input [0:0]read_cyc;
  input \iv[12]_i_12_0 ;
  input \iv[10]_i_5_1 ;
  input \iv[2]_i_2_3 ;
  input \iv[2]_i_2_4 ;
  input \iv[2]_i_2_5 ;
  input \iv[0]_i_2_2 ;
  input \iv[7]_i_2_1 ;
  input \iv[7]_i_2_2 ;
  input \iv[3]_i_2_5 ;
  input \iv[3]_i_2_6 ;
  input \iv[0]_i_2_3 ;
  input \sr[4]_i_20_2 ;
  input \iv[5]_i_2_3 ;
  input \iv[8]_i_2_1 ;
  input \iv[12]_i_2_1 ;
  input \sr[4]_i_20_3 ;
  input \iv[14]_i_3_0 ;
  input \sr[4]_i_20_4 ;
  input \sr[6]_i_5 ;
  input [0:0]\sp_reg[0]_1 ;
  input [1:0]cpuid;
  input [1:0]irq_lev;
  input [0:0]SR;
  input [15:0]fdat;
     output [15:0]ir;
  input bdatw_13_sn_1;
  input bdatw_14_sn_1;
  input bdatw_15_sn_1;
  input bdatw_8_sn_1;
  input bdatw_9_sn_1;
  input bdatw_10_sn_1;
  input bdatw_11_sn_1;
  input ccmd_4_sn_1;

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
  wire [0:0]alu_sr_flag;
  wire [15:0]badr;
  wire \badr[0]_INST_0_i_1 ;
  wire [3:0]\badr[10]_INST_0_i_1 ;
  wire [3:0]\badr[14]_INST_0_i_1 ;
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
  wire \badr[15]_INST_0_i_109_n_0 ;
  wire \badr[15]_INST_0_i_110_n_0 ;
  wire \badr[15]_INST_0_i_111_n_0 ;
  wire \badr[15]_INST_0_i_112_n_0 ;
  wire \badr[15]_INST_0_i_113_n_0 ;
  wire \badr[15]_INST_0_i_114_n_0 ;
  wire \badr[15]_INST_0_i_115_n_0 ;
  wire \badr[15]_INST_0_i_117_n_0 ;
  wire \badr[15]_INST_0_i_119_n_0 ;
  wire \badr[15]_INST_0_i_120_n_0 ;
  wire \badr[15]_INST_0_i_121_n_0 ;
  wire \badr[15]_INST_0_i_122_n_0 ;
  wire \badr[15]_INST_0_i_123_n_0 ;
  wire \badr[15]_INST_0_i_124_n_0 ;
  wire \badr[15]_INST_0_i_125_n_0 ;
  wire \badr[15]_INST_0_i_126_n_0 ;
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
  wire [3:0]\badr[15]_INST_0_i_1_0 ;
  wire [1:0]\badr[15]_INST_0_i_1_1 ;
  wire [0:0]\badr[15]_INST_0_i_1_2 ;
  wire [15:0]\badr[15]_INST_0_i_2 ;
  wire \badr[15]_INST_0_i_28_n_0 ;
  wire \badr[15]_INST_0_i_29_0 ;
  wire \badr[15]_INST_0_i_29_n_0 ;
  wire \badr[15]_INST_0_i_51_n_0 ;
  wire \badr[15]_INST_0_i_52_n_0 ;
  wire \badr[15]_INST_0_i_53_n_0 ;
  wire \badr[15]_INST_0_i_54_n_0 ;
  wire \badr[15]_INST_0_i_55_n_0 ;
  wire \badr[15]_INST_0_i_56_n_0 ;
  wire \badr[15]_INST_0_i_57_0 ;
  wire \badr[15]_INST_0_i_58_n_0 ;
  wire \badr[15]_INST_0_i_59_n_0 ;
  wire \badr[15]_INST_0_i_64_n_0 ;
  wire \badr[15]_INST_0_i_65_0 ;
  wire \badr[15]_INST_0_i_65_1 ;
  wire \badr[15]_INST_0_i_65_n_0 ;
  wire \badr[15]_INST_0_i_66_n_0 ;
  wire \badr[15]_INST_0_i_67_n_0 ;
  wire \badr[15]_INST_0_i_68_n_0 ;
  wire \badr[15]_INST_0_i_69_n_0 ;
  wire \badr[15]_INST_0_i_70_n_0 ;
  wire \badr[15]_INST_0_i_72_n_0 ;
  wire \badr[15]_INST_0_i_73_n_0 ;
  wire \badr[15]_INST_0_i_74_n_0 ;
  wire \badr[15]_INST_0_i_75_n_0 ;
  wire \badr[15]_INST_0_i_76_n_0 ;
  wire \badr[15]_INST_0_i_77_n_0 ;
  wire \badr[15]_INST_0_i_78_n_0 ;
  wire \badr[15]_INST_0_i_80_n_0 ;
  wire \badr[15]_INST_0_i_81_n_0 ;
  wire \badr[15]_INST_0_i_82_n_0 ;
  wire \badr[15]_INST_0_i_83_n_0 ;
  wire \badr[15]_INST_0_i_84_n_0 ;
  wire \badr[15]_INST_0_i_85_n_0 ;
  wire \badr[15]_INST_0_i_86_n_0 ;
  wire \badr[15]_INST_0_i_87_n_0 ;
  wire \badr[15]_INST_0_i_88_n_0 ;
  wire \badr[15]_INST_0_i_89_n_0 ;
  wire \badr[15]_INST_0_i_90_n_0 ;
  wire \badr[15]_INST_0_i_91_n_0 ;
  wire \badr[15]_INST_0_i_92_0 ;
  wire \badr[15]_INST_0_i_92_n_0 ;
  wire \badr[15]_INST_0_i_93_n_0 ;
  wire \badr[15]_INST_0_i_94_n_0 ;
  wire \badr[15]_INST_0_i_95_n_0 ;
  wire \badr[15]_INST_0_i_96_n_0 ;
  wire \badr[15]_INST_0_i_97_n_0 ;
  wire \badr[15]_INST_0_i_98_n_0 ;
  wire \badr[15]_INST_0_i_99_n_0 ;
  wire [3:0]\badr[6]_INST_0_i_1 ;
  wire \badrx[15]_INST_0_i_2_n_0 ;
  wire \badrx[15]_INST_0_i_4_n_0 ;
  wire \badrx[15]_INST_0_i_5_n_0 ;
  wire [3:0]bank_sel;
  wire [15:0]bbus_o;
  wire \bcmd[0]_INST_0_i_1_n_0 ;
  wire \bcmd[0]_INST_0_i_2_n_0 ;
  wire \bcmd[0]_INST_0_i_3_n_0 ;
  wire \bcmd[0]_INST_0_i_4_n_0 ;
  wire \bcmd[0]_INST_0_i_5_n_0 ;
  wire \bcmd[0]_INST_0_i_6_n_0 ;
  wire \bcmd[0]_INST_0_i_7_n_0 ;
  wire \bcmd[0]_INST_0_i_8_n_0 ;
  wire \bcmd[1] ;
  wire \bcmd[1]_INST_0_i_10_n_0 ;
  wire \bcmd[1]_INST_0_i_11_n_0 ;
  wire \bcmd[1]_INST_0_i_2_n_0 ;
  wire \bcmd[1]_INST_0_i_3_n_0 ;
  wire \bcmd[1]_INST_0_i_4_n_0 ;
  wire \bcmd[1]_INST_0_i_5_n_0 ;
  wire \bcmd[1]_INST_0_i_6_n_0 ;
  wire \bcmd[1]_INST_0_i_7_n_0 ;
  wire \bcmd[1]_INST_0_i_9_n_0 ;
  wire \bcmd[2]_INST_0_i_1_n_0 ;
  wire \bcmd[2]_INST_0_i_2_n_0 ;
  wire [2:0]bdatr;
  wire [15:0]bdatw;
  wire \bdatw[10]_INST_0_i_10_n_0 ;
  wire \bdatw[10]_INST_0_i_12_n_0 ;
  wire \bdatw[10]_INST_0_i_13_n_0 ;
  wire \bdatw[10]_INST_0_i_14_n_0 ;
  wire \bdatw[10]_INST_0_i_15_n_0 ;
  wire \bdatw[10]_INST_0_i_16_n_0 ;
  wire \bdatw[10]_INST_0_i_19_n_0 ;
  wire \bdatw[10]_INST_0_i_1_0 ;
  wire \bdatw[10]_INST_0_i_1_n_0 ;
  wire \bdatw[10]_INST_0_i_22_n_0 ;
  wire \bdatw[10]_INST_0_i_23_n_0 ;
  wire \bdatw[10]_INST_0_i_24_n_0 ;
  wire \bdatw[10]_INST_0_i_25_n_0 ;
  wire \bdatw[10]_INST_0_i_2_0 ;
  wire \bdatw[10]_INST_0_i_2_1 ;
  wire \bdatw[10]_INST_0_i_2_n_0 ;
  wire \bdatw[10]_INST_0_i_33_n_0 ;
  wire \bdatw[10]_INST_0_i_3_n_0 ;
  wire \bdatw[10]_INST_0_i_40_n_0 ;
  wire \bdatw[10]_INST_0_i_45_n_0 ;
  wire \bdatw[10]_INST_0_i_46_n_0 ;
  wire \bdatw[10]_INST_0_i_47_n_0 ;
  wire \bdatw[10]_INST_0_i_48_n_0 ;
  wire \bdatw[10]_INST_0_i_49_n_0 ;
  wire \bdatw[10]_INST_0_i_4_n_0 ;
  wire \bdatw[10]_INST_0_i_50_n_0 ;
  wire \bdatw[10]_INST_0_i_51_n_0 ;
  wire \bdatw[10]_INST_0_i_52_n_0 ;
  wire \bdatw[10]_INST_0_i_53_n_0 ;
  wire \bdatw[10]_INST_0_i_54_n_0 ;
  wire \bdatw[10]_INST_0_i_7_n_0 ;
  wire \bdatw[10]_INST_0_i_8_n_0 ;
  wire \bdatw[10]_INST_0_i_9_n_0 ;
  wire \bdatw[11]_INST_0_i_10_n_0 ;
  wire \bdatw[11]_INST_0_i_11_n_0 ;
  wire \bdatw[11]_INST_0_i_13_n_0 ;
  wire \bdatw[11]_INST_0_i_14_n_0 ;
  wire \bdatw[11]_INST_0_i_15_n_0 ;
  wire \bdatw[11]_INST_0_i_18_n_0 ;
  wire \bdatw[11]_INST_0_i_1_0 ;
  wire \bdatw[11]_INST_0_i_1_n_0 ;
  wire \bdatw[11]_INST_0_i_20_n_0 ;
  wire \bdatw[11]_INST_0_i_22_n_0 ;
  wire \bdatw[11]_INST_0_i_23_n_0 ;
  wire \bdatw[11]_INST_0_i_24_n_0 ;
  wire \bdatw[11]_INST_0_i_25_n_0 ;
  wire \bdatw[11]_INST_0_i_2_0 ;
  wire \bdatw[11]_INST_0_i_2_1 ;
  wire \bdatw[11]_INST_0_i_2_n_0 ;
  wire \bdatw[11]_INST_0_i_39_n_0 ;
  wire \bdatw[11]_INST_0_i_3_n_0 ;
  wire \bdatw[11]_INST_0_i_44_n_0 ;
  wire \bdatw[11]_INST_0_i_45_n_0 ;
  wire \bdatw[11]_INST_0_i_46_n_0 ;
  wire \bdatw[11]_INST_0_i_47_n_0 ;
  wire \bdatw[11]_INST_0_i_48_n_0 ;
  wire \bdatw[11]_INST_0_i_49_n_0 ;
  wire \bdatw[11]_INST_0_i_4_n_0 ;
  wire \bdatw[11]_INST_0_i_50_n_0 ;
  wire \bdatw[11]_INST_0_i_51_n_0 ;
  wire \bdatw[11]_INST_0_i_52_n_0 ;
  wire \bdatw[11]_INST_0_i_53_n_0 ;
  wire \bdatw[11]_INST_0_i_7_n_0 ;
  wire \bdatw[11]_INST_0_i_8_n_0 ;
  wire \bdatw[11]_INST_0_i_9_n_0 ;
  wire [4:0]\bdatw[12] ;
  wire \bdatw[12]_0 ;
  wire \bdatw[12]_INST_0_i_10_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_11_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_11_1 ;
  wire [4:0]\bdatw[12]_INST_0_i_11_2 ;
  wire [4:0]\bdatw[12]_INST_0_i_11_3 ;
  wire [4:0]\bdatw[12]_INST_0_i_11_4 ;
  wire [4:0]\bdatw[12]_INST_0_i_11_5 ;
  wire \bdatw[12]_INST_0_i_11_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_12 ;
  wire [4:0]\bdatw[12]_INST_0_i_12_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_12_1 ;
  wire [4:0]\bdatw[12]_INST_0_i_12_2 ;
  wire \bdatw[12]_INST_0_i_13_n_0 ;
  wire \bdatw[12]_INST_0_i_14_n_0 ;
  wire \bdatw[12]_INST_0_i_15_n_0 ;
  wire \bdatw[12]_INST_0_i_18_n_0 ;
  wire \bdatw[12]_INST_0_i_1_0 ;
  wire \bdatw[12]_INST_0_i_1_n_0 ;
  wire \bdatw[12]_INST_0_i_20_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_22_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_22_1 ;
  wire \bdatw[12]_INST_0_i_22_n_0 ;
  wire \bdatw[12]_INST_0_i_23_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_24_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_24_1 ;
  wire \bdatw[12]_INST_0_i_24_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_25_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_25_1 ;
  wire \bdatw[12]_INST_0_i_25_n_0 ;
  wire \bdatw[12]_INST_0_i_2_0 ;
  wire \bdatw[12]_INST_0_i_2_1 ;
  wire \bdatw[12]_INST_0_i_2_2 ;
  wire \bdatw[12]_INST_0_i_2_3 ;
  wire \bdatw[12]_INST_0_i_2_n_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_30_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_30_1 ;
  wire [4:0]\bdatw[12]_INST_0_i_31_0 ;
  wire [4:0]\bdatw[12]_INST_0_i_31_1 ;
  wire \bdatw[12]_INST_0_i_39_n_0 ;
  wire \bdatw[12]_INST_0_i_3_n_0 ;
  wire \bdatw[12]_INST_0_i_46_n_0 ;
  wire \bdatw[12]_INST_0_i_48_n_0 ;
  wire \bdatw[12]_INST_0_i_4_n_0 ;
  wire \bdatw[12]_INST_0_i_50_n_0 ;
  wire \bdatw[12]_INST_0_i_51_n_0 ;
  wire \bdatw[12]_INST_0_i_54_n_0 ;
  wire \bdatw[12]_INST_0_i_55_n_0 ;
  wire \bdatw[12]_INST_0_i_62_n_0 ;
  wire \bdatw[12]_INST_0_i_63_n_0 ;
  wire \bdatw[12]_INST_0_i_66_n_0 ;
  wire \bdatw[12]_INST_0_i_67_n_0 ;
  wire \bdatw[12]_INST_0_i_69_n_0 ;
  wire \bdatw[12]_INST_0_i_70_n_0 ;
  wire \bdatw[12]_INST_0_i_71_n_0 ;
  wire \bdatw[12]_INST_0_i_7_n_0 ;
  wire \bdatw[12]_INST_0_i_8_n_0 ;
  wire \bdatw[12]_INST_0_i_9_n_0 ;
  wire \bdatw[13]_0 ;
  wire \bdatw[13]_INST_0_i_12_n_0 ;
  wire \bdatw[13]_INST_0_i_13_n_0 ;
  wire \bdatw[13]_INST_0_i_14_n_0 ;
  wire \bdatw[13]_INST_0_i_15_n_0 ;
  wire \bdatw[13]_INST_0_i_18_n_0 ;
  wire \bdatw[13]_INST_0_i_1_0 ;
  wire \bdatw[13]_INST_0_i_1_n_0 ;
  wire \bdatw[13]_INST_0_i_22_n_0 ;
  wire \bdatw[13]_INST_0_i_24_n_0 ;
  wire \bdatw[13]_INST_0_i_2_0 ;
  wire \bdatw[13]_INST_0_i_2_n_0 ;
  wire \bdatw[13]_INST_0_i_31_n_0 ;
  wire \bdatw[13]_INST_0_i_3_n_0 ;
  wire \bdatw[13]_INST_0_i_42_n_0 ;
  wire \bdatw[13]_INST_0_i_4_n_0 ;
  wire \bdatw[13]_INST_0_i_7_n_0 ;
  wire \bdatw[13]_INST_0_i_8_n_0 ;
  wire \bdatw[13]_INST_0_i_9_n_0 ;
  wire \bdatw[14]_0 ;
  wire \bdatw[14]_INST_0_i_10_n_0 ;
  wire \bdatw[14]_INST_0_i_13_n_0 ;
  wire \bdatw[14]_INST_0_i_14_n_0 ;
  wire \bdatw[14]_INST_0_i_15_n_0 ;
  wire \bdatw[14]_INST_0_i_18_n_0 ;
  wire \bdatw[14]_INST_0_i_1_0 ;
  wire \bdatw[14]_INST_0_i_1_n_0 ;
  wire \bdatw[14]_INST_0_i_20_n_0 ;
  wire \bdatw[14]_INST_0_i_23_n_0 ;
  wire \bdatw[14]_INST_0_i_2_0 ;
  wire \bdatw[14]_INST_0_i_2_n_0 ;
  wire \bdatw[14]_INST_0_i_31_n_0 ;
  wire \bdatw[14]_INST_0_i_3_n_0 ;
  wire \bdatw[14]_INST_0_i_42_n_0 ;
  wire \bdatw[14]_INST_0_i_4_n_0 ;
  wire \bdatw[14]_INST_0_i_7_n_0 ;
  wire \bdatw[14]_INST_0_i_8_n_0 ;
  wire \bdatw[14]_INST_0_i_9_n_0 ;
  wire \bdatw[15]_0 ;
  wire \bdatw[15]_INST_0_i_100_n_0 ;
  wire \bdatw[15]_INST_0_i_101_n_0 ;
  wire \bdatw[15]_INST_0_i_102_n_0 ;
  wire \bdatw[15]_INST_0_i_103_n_0 ;
  wire \bdatw[15]_INST_0_i_104_n_0 ;
  wire \bdatw[15]_INST_0_i_105_n_0 ;
  wire \bdatw[15]_INST_0_i_106_n_0 ;
  wire \bdatw[15]_INST_0_i_107_n_0 ;
  wire \bdatw[15]_INST_0_i_108_n_0 ;
  wire \bdatw[15]_INST_0_i_109_n_0 ;
  wire \bdatw[15]_INST_0_i_10_n_0 ;
  wire \bdatw[15]_INST_0_i_110_n_0 ;
  wire \bdatw[15]_INST_0_i_111_n_0 ;
  wire \bdatw[15]_INST_0_i_112_n_0 ;
  wire \bdatw[15]_INST_0_i_113_n_0 ;
  wire \bdatw[15]_INST_0_i_114_n_0 ;
  wire \bdatw[15]_INST_0_i_120_n_0 ;
  wire \bdatw[15]_INST_0_i_121_n_0 ;
  wire \bdatw[15]_INST_0_i_122_n_0 ;
  wire \bdatw[15]_INST_0_i_123_n_0 ;
  wire \bdatw[15]_INST_0_i_124_n_0 ;
  wire \bdatw[15]_INST_0_i_129_n_0 ;
  wire \bdatw[15]_INST_0_i_130_n_0 ;
  wire \bdatw[15]_INST_0_i_131_n_0 ;
  wire \bdatw[15]_INST_0_i_132_n_0 ;
  wire \bdatw[15]_INST_0_i_133_n_0 ;
  wire \bdatw[15]_INST_0_i_134_n_0 ;
  wire \bdatw[15]_INST_0_i_135_n_0 ;
  wire \bdatw[15]_INST_0_i_136_n_0 ;
  wire \bdatw[15]_INST_0_i_137_n_0 ;
  wire \bdatw[15]_INST_0_i_138_n_0 ;
  wire \bdatw[15]_INST_0_i_139_n_0 ;
  wire \bdatw[15]_INST_0_i_13_n_0 ;
  wire \bdatw[15]_INST_0_i_140_n_0 ;
  wire \bdatw[15]_INST_0_i_141_n_0 ;
  wire \bdatw[15]_INST_0_i_142_n_0 ;
  wire \bdatw[15]_INST_0_i_143_n_0 ;
  wire \bdatw[15]_INST_0_i_144_n_0 ;
  wire \bdatw[15]_INST_0_i_145_n_0 ;
  wire \bdatw[15]_INST_0_i_146_n_0 ;
  wire \bdatw[15]_INST_0_i_147_n_0 ;
  wire \bdatw[15]_INST_0_i_148_n_0 ;
  wire \bdatw[15]_INST_0_i_149_n_0 ;
  wire \bdatw[15]_INST_0_i_14_n_0 ;
  wire \bdatw[15]_INST_0_i_150_n_0 ;
  wire \bdatw[15]_INST_0_i_151_n_0 ;
  wire \bdatw[15]_INST_0_i_152_n_0 ;
  wire \bdatw[15]_INST_0_i_153_n_0 ;
  wire \bdatw[15]_INST_0_i_154_n_0 ;
  wire \bdatw[15]_INST_0_i_155_n_0 ;
  wire \bdatw[15]_INST_0_i_156_n_0 ;
  wire \bdatw[15]_INST_0_i_157_n_0 ;
  wire \bdatw[15]_INST_0_i_158_n_0 ;
  wire \bdatw[15]_INST_0_i_159_n_0 ;
  wire \bdatw[15]_INST_0_i_15_n_0 ;
  wire \bdatw[15]_INST_0_i_160_n_0 ;
  wire \bdatw[15]_INST_0_i_16_n_0 ;
  wire \bdatw[15]_INST_0_i_17_n_0 ;
  wire \bdatw[15]_INST_0_i_18_n_0 ;
  wire [10:0]\bdatw[15]_INST_0_i_1_0 ;
  wire [10:0]\bdatw[15]_INST_0_i_1_1 ;
  wire \bdatw[15]_INST_0_i_1_2 ;
  wire [15:0]\bdatw[15]_INST_0_i_1_3 ;
  wire [15:0]\bdatw[15]_INST_0_i_1_4 ;
  wire \bdatw[15]_INST_0_i_1_n_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_24_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_24_1 ;
  wire [15:0]\bdatw[15]_INST_0_i_24_2 ;
  wire \bdatw[15]_INST_0_i_24_n_0 ;
  wire \bdatw[15]_INST_0_i_28_n_0 ;
  wire \bdatw[15]_INST_0_i_2_0 ;
  wire \bdatw[15]_INST_0_i_2_n_0 ;
  wire \bdatw[15]_INST_0_i_35_n_0 ;
  wire \bdatw[15]_INST_0_i_38_n_0 ;
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
  wire \bdatw[15]_INST_0_i_4_n_0 ;
  wire \bdatw[15]_INST_0_i_50_n_0 ;
  wire \bdatw[15]_INST_0_i_51_n_0 ;
  wire \bdatw[15]_INST_0_i_61_n_0 ;
  wire \bdatw[15]_INST_0_i_62_n_0 ;
  wire \bdatw[15]_INST_0_i_63_n_0 ;
  wire [10:0]\bdatw[15]_INST_0_i_6_0 ;
  wire [10:0]\bdatw[15]_INST_0_i_6_1 ;
  wire \bdatw[15]_INST_0_i_71_n_0 ;
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
  wire \bdatw[15]_INST_0_i_89_n_0 ;
  wire \bdatw[15]_INST_0_i_8_n_0 ;
  wire \bdatw[15]_INST_0_i_94_n_0 ;
  wire \bdatw[15]_INST_0_i_95_n_0 ;
  wire \bdatw[15]_INST_0_i_96_n_0 ;
  wire \bdatw[15]_INST_0_i_97_n_0 ;
  wire \bdatw[15]_INST_0_i_98_n_0 ;
  wire \bdatw[15]_INST_0_i_99_n_0 ;
  wire \bdatw[15]_INST_0_i_9_n_0 ;
  wire \bdatw[8]_INST_0_i_10_n_0 ;
  wire \bdatw[8]_INST_0_i_12_n_0 ;
  wire \bdatw[8]_INST_0_i_13_n_0 ;
  wire \bdatw[8]_INST_0_i_14_n_0 ;
  wire \bdatw[8]_INST_0_i_15_n_0 ;
  wire \bdatw[8]_INST_0_i_18_n_0 ;
  wire \bdatw[8]_INST_0_i_1_0 ;
  wire \bdatw[8]_INST_0_i_1_n_0 ;
  wire \bdatw[8]_INST_0_i_21_n_0 ;
  wire \bdatw[8]_INST_0_i_22_n_0 ;
  wire \bdatw[8]_INST_0_i_23_n_0 ;
  wire \bdatw[8]_INST_0_i_24_n_0 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_2_3 ;
  wire \bdatw[8]_INST_0_i_38_n_0 ;
  wire \bdatw[8]_INST_0_i_3_n_0 ;
  wire \bdatw[8]_INST_0_i_43_n_0 ;
  wire \bdatw[8]_INST_0_i_44_n_0 ;
  wire \bdatw[8]_INST_0_i_45_n_0 ;
  wire \bdatw[8]_INST_0_i_46_n_0 ;
  wire \bdatw[8]_INST_0_i_47_n_0 ;
  wire \bdatw[8]_INST_0_i_48_n_0 ;
  wire \bdatw[8]_INST_0_i_49_n_0 ;
  wire \bdatw[8]_INST_0_i_4_n_0 ;
  wire \bdatw[8]_INST_0_i_50_n_0 ;
  wire \bdatw[8]_INST_0_i_51_n_0 ;
  wire \bdatw[8]_INST_0_i_52_n_0 ;
  wire \bdatw[8]_INST_0_i_7_n_0 ;
  wire \bdatw[8]_INST_0_i_8_n_0 ;
  wire \bdatw[8]_INST_0_i_9_n_0 ;
  wire \bdatw[9]_INST_0_i_10_n_0 ;
  wire \bdatw[9]_INST_0_i_12_n_0 ;
  wire \bdatw[9]_INST_0_i_13_n_0 ;
  wire \bdatw[9]_INST_0_i_14_n_0 ;
  wire \bdatw[9]_INST_0_i_15_n_0 ;
  wire \bdatw[9]_INST_0_i_18_n_0 ;
  wire \bdatw[9]_INST_0_i_1_0 ;
  wire \bdatw[9]_INST_0_i_1_n_0 ;
  wire \bdatw[9]_INST_0_i_21_n_0 ;
  wire \bdatw[9]_INST_0_i_22_n_0 ;
  wire \bdatw[9]_INST_0_i_23_n_0 ;
  wire \bdatw[9]_INST_0_i_24_n_0 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_2_1 ;
  wire \bdatw[9]_INST_0_i_2_2 ;
  wire \bdatw[9]_INST_0_i_2_n_0 ;
  wire \bdatw[9]_INST_0_i_32_n_0 ;
  wire \bdatw[9]_INST_0_i_39_n_0 ;
  wire \bdatw[9]_INST_0_i_3_n_0 ;
  wire \bdatw[9]_INST_0_i_44_n_0 ;
  wire \bdatw[9]_INST_0_i_45_n_0 ;
  wire \bdatw[9]_INST_0_i_46_n_0 ;
  wire \bdatw[9]_INST_0_i_47_n_0 ;
  wire \bdatw[9]_INST_0_i_48_n_0 ;
  wire \bdatw[9]_INST_0_i_49_n_0 ;
  wire \bdatw[9]_INST_0_i_4_n_0 ;
  wire \bdatw[9]_INST_0_i_50_n_0 ;
  wire \bdatw[9]_INST_0_i_51_n_0 ;
  wire \bdatw[9]_INST_0_i_52_n_0 ;
  wire \bdatw[9]_INST_0_i_53_n_0 ;
  wire \bdatw[9]_INST_0_i_7_n_0 ;
  wire \bdatw[9]_INST_0_i_8_n_0 ;
  wire \bdatw[9]_INST_0_i_9_n_0 ;
  wire bdatw_10_sn_1;
  wire bdatw_11_sn_1;
  wire bdatw_13_sn_1;
  wire bdatw_14_sn_1;
  wire bdatw_15_sn_1;
  wire bdatw_8_sn_1;
  wire bdatw_9_sn_1;
  wire brdy;
  wire brdy_0;
  wire brdy_1;
  wire [14:0]cbus;
  wire [10:0]cbus_i;
  wire [4:0]ccmd;
  wire \ccmd[0]_INST_0_i_10_n_0 ;
  wire \ccmd[0]_INST_0_i_11_n_0 ;
  wire \ccmd[0]_INST_0_i_12_n_0 ;
  wire \ccmd[0]_INST_0_i_13_n_0 ;
  wire \ccmd[0]_INST_0_i_15_n_0 ;
  wire \ccmd[0]_INST_0_i_17_n_0 ;
  wire \ccmd[0]_INST_0_i_19_n_0 ;
  wire \ccmd[0]_INST_0_i_1_0 ;
  wire \ccmd[0]_INST_0_i_1_1 ;
  wire \ccmd[0]_INST_0_i_1_n_0 ;
  wire \ccmd[0]_INST_0_i_20_n_0 ;
  wire \ccmd[0]_INST_0_i_21_n_0 ;
  wire \ccmd[0]_INST_0_i_22_n_0 ;
  wire \ccmd[0]_INST_0_i_23_n_0 ;
  wire \ccmd[0]_INST_0_i_24_n_0 ;
  wire \ccmd[0]_INST_0_i_25_n_0 ;
  wire \ccmd[0]_INST_0_i_26_n_0 ;
  wire \ccmd[0]_INST_0_i_2_0 ;
  wire \ccmd[0]_INST_0_i_2_n_0 ;
  wire \ccmd[0]_INST_0_i_3_n_0 ;
  wire \ccmd[0]_INST_0_i_4_0 ;
  wire \ccmd[0]_INST_0_i_4_1 ;
  wire \ccmd[0]_INST_0_i_4_n_0 ;
  wire \ccmd[0]_INST_0_i_5_n_0 ;
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
  wire \ccmd[1]_INST_0_i_21_n_0 ;
  wire \ccmd[1]_INST_0_i_22_n_0 ;
  wire \ccmd[1]_INST_0_i_2_n_0 ;
  wire \ccmd[1]_INST_0_i_3_n_0 ;
  wire \ccmd[1]_INST_0_i_4_n_0 ;
  wire \ccmd[1]_INST_0_i_5_n_0 ;
  wire \ccmd[1]_INST_0_i_6_0 ;
  wire \ccmd[1]_INST_0_i_6_n_0 ;
  wire \ccmd[1]_INST_0_i_7_n_0 ;
  wire \ccmd[1]_INST_0_i_8_n_0 ;
  wire \ccmd[1]_INST_0_i_9_n_0 ;
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
  wire \ccmd[2]_INST_0_i_23_n_0 ;
  wire \ccmd[2]_INST_0_i_24_n_0 ;
  wire \ccmd[2]_INST_0_i_25_n_0 ;
  wire \ccmd[2]_INST_0_i_2_n_0 ;
  wire \ccmd[2]_INST_0_i_3_0 ;
  wire \ccmd[2]_INST_0_i_3_n_0 ;
  wire \ccmd[2]_INST_0_i_4_n_0 ;
  wire \ccmd[2]_INST_0_i_5_n_0 ;
  wire \ccmd[2]_INST_0_i_6_n_0 ;
  wire \ccmd[2]_INST_0_i_7_0 ;
  wire \ccmd[2]_INST_0_i_7_n_0 ;
  wire \ccmd[2]_INST_0_i_8_n_0 ;
  wire \ccmd[2]_INST_0_i_9_n_0 ;
  wire \ccmd[3]_INST_0_i_10_n_0 ;
  wire \ccmd[3]_INST_0_i_11_n_0 ;
  wire \ccmd[3]_INST_0_i_12_n_0 ;
  wire \ccmd[3]_INST_0_i_13_n_0 ;
  wire \ccmd[3]_INST_0_i_14_n_0 ;
  wire \ccmd[3]_INST_0_i_15_n_0 ;
  wire \ccmd[3]_INST_0_i_16_n_0 ;
  wire \ccmd[3]_INST_0_i_1_n_0 ;
  wire \ccmd[3]_INST_0_i_2_n_0 ;
  wire \ccmd[3]_INST_0_i_3_n_0 ;
  wire \ccmd[3]_INST_0_i_4_n_0 ;
  wire \ccmd[3]_INST_0_i_5_n_0 ;
  wire \ccmd[3]_INST_0_i_6_n_0 ;
  wire \ccmd[3]_INST_0_i_7_n_0 ;
  wire \ccmd[3]_INST_0_i_8_0 ;
  wire \ccmd[3]_INST_0_i_8_1 ;
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
  wire \ccmd[4]_INST_0_i_21_n_0 ;
  wire \ccmd[4]_INST_0_i_22_n_0 ;
  wire \ccmd[4]_INST_0_i_23_n_0 ;
  wire \ccmd[4]_INST_0_i_24_n_0 ;
  wire \ccmd[4]_INST_0_i_25_n_0 ;
  wire \ccmd[4]_INST_0_i_26_n_0 ;
  wire \ccmd[4]_INST_0_i_27_n_0 ;
  wire \ccmd[4]_INST_0_i_2_n_0 ;
  wire \ccmd[4]_INST_0_i_3_n_0 ;
  wire \ccmd[4]_INST_0_i_4_n_0 ;
  wire \ccmd[4]_INST_0_i_5_n_0 ;
  wire \ccmd[4]_INST_0_i_6_n_0 ;
  wire \ccmd[4]_INST_0_i_7_n_0 ;
  wire \ccmd[4]_INST_0_i_8_n_0 ;
  wire ccmd_4_sn_1;
  wire clk;
  wire [1:0]cpuid;
  wire crdy;
  wire crdy_0;
  wire ctl_fetch_ext;
  wire ctl_fetch_ext_fl;
  wire ctl_fetch_ext_fl_i_2_n_0;
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
  wire ctl_fetch_inferred_i_17_n_0;
  wire ctl_fetch_inferred_i_18_n_0;
  wire ctl_fetch_inferred_i_19_n_0;
  wire ctl_fetch_inferred_i_21_n_0;
  wire ctl_fetch_inferred_i_22_n_0;
  wire ctl_fetch_inferred_i_23_n_0;
  wire ctl_fetch_inferred_i_24_n_0;
  wire ctl_fetch_inferred_i_25_n_0;
  wire ctl_fetch_inferred_i_26_n_0;
  wire ctl_fetch_inferred_i_28_n_0;
  wire ctl_fetch_inferred_i_29_n_0;
  wire ctl_fetch_inferred_i_2_n_0;
  wire ctl_fetch_inferred_i_30_n_0;
  wire ctl_fetch_inferred_i_31_n_0;
  wire ctl_fetch_inferred_i_32_0;
  wire ctl_fetch_inferred_i_32_n_0;
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
  wire ctl_fetch_inferred_i_5_0;
  wire ctl_fetch_inferred_i_5_n_0;
  wire ctl_fetch_inferred_i_6_n_0;
  wire ctl_fetch_inferred_i_7_n_0;
  wire ctl_fetch_inferred_i_8_n_0;
  wire ctl_fetch_inferred_i_9_n_0;
  wire [0:0]ctl_sela;
  wire [0:0]ctl_selb_0;
  wire [2:0]ctl_selb_rn;
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
  wire \fch_irq_lev[0]_i_1_n_0 ;
  wire \fch_irq_lev[1]_i_1_n_0 ;
  wire \fch_irq_lev[1]_i_2_n_0 ;
  wire \fch_irq_lev[1]_i_3_n_0 ;
  wire \fch_irq_lev[1]_i_5_n_0 ;
  wire \fch_irq_lev[1]_i_6_n_0 ;
  wire fch_irq_req;
  wire fch_irq_req_fl;
  wire [15:0]fch_pc;
  wire [15:0]fdat;
  wire gr0_bus1__0;
  wire gr0_bus1__0_11;
  wire gr0_bus1__0_19;
  wire gr1_bus1__0;
  wire gr1_bus1__0_16;
  wire gr1_bus1__0_6;
  wire gr2_bus1__0;
  wire gr2_bus1__0_17;
  wire gr2_bus1__0_3;
  wire gr2_bus1__0_4;
  wire gr3_bus1__0;
  wire gr3_bus1__0_12;
  wire gr3_bus1__0_2;
  wire gr3_bus1__0_5;
  wire gr4_bus1__0;
  wire gr4_bus1__0_0;
  wire gr4_bus1__0_14;
  wire gr4_bus1__0_20;
  wire gr4_bus1__0_7;
  wire gr5_bus1__0;
  wire gr5_bus1__0_1;
  wire gr5_bus1__0_10;
  wire gr5_bus1__0_15;
  wire gr6_bus1__0;
  wire gr6_bus1__0_13;
  wire gr6_bus1__0_8;
  wire gr7_bus1__0;
  wire gr7_bus1__0_18;
  wire gr7_bus1__0_9;
  wire \grn[15]_i_2__0_n_0 ;
  wire \grn[15]_i_2_n_0 ;
  wire \grn_reg[0] ;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[0]_1 ;
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
  wire in0;
  (* DONT_TOUCH *) wire [15:0]ir;
  wire [15:0]ir_fl;
  wire [1:0]irq_lev;
  wire [5:0]irq_vec;
  wire \iv[0]_i_10_n_0 ;
  wire \iv[0]_i_12_n_0 ;
  wire \iv[0]_i_13_n_0 ;
  wire \iv[0]_i_14_n_0 ;
  wire \iv[0]_i_15_n_0 ;
  wire \iv[0]_i_2_0 ;
  wire \iv[0]_i_2_1 ;
  wire \iv[0]_i_2_2 ;
  wire \iv[0]_i_2_3 ;
  wire \iv[0]_i_2_n_0 ;
  wire \iv[0]_i_3_n_0 ;
  wire \iv[0]_i_4_n_0 ;
  wire \iv[0]_i_5_n_0 ;
  wire \iv[0]_i_6_n_0 ;
  wire \iv[0]_i_7_n_0 ;
  wire \iv[0]_i_8_n_0 ;
  wire \iv[10]_i_10_n_0 ;
  wire \iv[10]_i_11_n_0 ;
  wire \iv[10]_i_12_n_0 ;
  wire \iv[10]_i_13_0 ;
  wire \iv[10]_i_13_n_0 ;
  wire \iv[10]_i_14_n_0 ;
  wire \iv[10]_i_16_n_0 ;
  wire \iv[10]_i_17_n_0 ;
  wire \iv[10]_i_18_n_0 ;
  wire \iv[10]_i_2_n_0 ;
  wire \iv[10]_i_4_n_0 ;
  wire \iv[10]_i_5_0 ;
  wire \iv[10]_i_5_1 ;
  wire \iv[10]_i_5_n_0 ;
  wire \iv[10]_i_6_n_0 ;
  wire \iv[10]_i_7_0 ;
  wire \iv[10]_i_7_n_0 ;
  wire \iv[10]_i_8_n_0 ;
  wire \iv[10]_i_9_n_0 ;
  wire \iv[11]_i_10_n_0 ;
  wire \iv[11]_i_11_n_0 ;
  wire \iv[11]_i_12_n_0 ;
  wire \iv[11]_i_13_n_0 ;
  wire \iv[11]_i_14_n_0 ;
  wire \iv[11]_i_21_n_0 ;
  wire \iv[11]_i_2_0 ;
  wire \iv[11]_i_2_n_0 ;
  wire \iv[11]_i_3_0 ;
  wire \iv[11]_i_3_1 ;
  wire \iv[11]_i_3_n_0 ;
  wire \iv[11]_i_4_n_0 ;
  wire \iv[11]_i_5_n_0 ;
  wire \iv[11]_i_6_n_0 ;
  wire \iv[11]_i_8_n_0 ;
  wire \iv[11]_i_9_n_0 ;
  wire \iv[12]_i_10_n_0 ;
  wire \iv[12]_i_11_n_0 ;
  wire \iv[12]_i_12_0 ;
  wire \iv[12]_i_12_n_0 ;
  wire \iv[12]_i_13_n_0 ;
  wire \iv[12]_i_14_n_0 ;
  wire \iv[12]_i_15_n_0 ;
  wire \iv[12]_i_16_n_0 ;
  wire \iv[12]_i_19_0 ;
  wire \iv[12]_i_19_n_0 ;
  wire \iv[12]_i_23_n_0 ;
  wire \iv[12]_i_25_n_0 ;
  wire \iv[12]_i_2_0 ;
  wire \iv[12]_i_2_1 ;
  wire \iv[12]_i_2_n_0 ;
  wire \iv[12]_i_3_0 ;
  wire \iv[12]_i_3_1 ;
  wire \iv[12]_i_3_2 ;
  wire \iv[12]_i_3_n_0 ;
  wire \iv[12]_i_4_n_0 ;
  wire \iv[12]_i_5_n_0 ;
  wire \iv[12]_i_6_n_0 ;
  wire \iv[12]_i_7_n_0 ;
  wire \iv[12]_i_9_n_0 ;
  wire \iv[13]_i_10_n_0 ;
  wire \iv[13]_i_11_n_0 ;
  wire \iv[13]_i_12_n_0 ;
  wire \iv[13]_i_13_n_0 ;
  wire \iv[13]_i_14_n_0 ;
  wire \iv[13]_i_15_n_0 ;
  wire \iv[13]_i_19_n_0 ;
  wire \iv[13]_i_2_0 ;
  wire \iv[13]_i_2_n_0 ;
  wire \iv[13]_i_3_n_0 ;
  wire \iv[13]_i_5_n_0 ;
  wire \iv[13]_i_7_n_0 ;
  wire \iv[13]_i_9_n_0 ;
  wire \iv[14]_i_10_n_0 ;
  wire \iv[14]_i_11_n_0 ;
  wire \iv[14]_i_12_0 ;
  wire \iv[14]_i_13_n_0 ;
  wire \iv[14]_i_14_0 ;
  wire \iv[14]_i_15_n_0 ;
  wire \iv[14]_i_16_n_0 ;
  wire \iv[14]_i_17 ;
  wire \iv[14]_i_19_n_0 ;
  wire \iv[14]_i_20_n_0 ;
  wire \iv[14]_i_21_n_0 ;
  wire \iv[14]_i_2_n_0 ;
  wire \iv[14]_i_30_0 ;
  wire \iv[14]_i_31_n_0 ;
  wire \iv[14]_i_32_n_0 ;
  wire \iv[14]_i_33_n_0 ;
  wire \iv[14]_i_39 ;
  wire \iv[14]_i_3_0 ;
  wire \iv[14]_i_3_n_0 ;
  wire \iv[14]_i_42 ;
  wire \iv[14]_i_4_0 ;
  wire \iv[14]_i_4_1 ;
  wire \iv[14]_i_4_n_0 ;
  wire \iv[14]_i_5_n_0 ;
  wire \iv[14]_i_6_n_0 ;
  wire \iv[14]_i_7_n_0 ;
  wire \iv[14]_i_8_n_0 ;
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
  wire \iv[15]_i_115_n_0 ;
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
  wire \iv[15]_i_130_n_0 ;
  wire \iv[15]_i_131_n_0 ;
  wire \iv[15]_i_132_n_0 ;
  wire \iv[15]_i_13_n_0 ;
  wire \iv[15]_i_14_n_0 ;
  wire \iv[15]_i_15_0 ;
  wire \iv[15]_i_15_n_0 ;
  wire \iv[15]_i_16_n_0 ;
  wire \iv[15]_i_17_n_0 ;
  wire \iv[15]_i_18_n_0 ;
  wire \iv[15]_i_19_n_0 ;
  wire \iv[15]_i_21_n_0 ;
  wire \iv[15]_i_22_n_0 ;
  wire \iv[15]_i_23_n_0 ;
  wire \iv[15]_i_24_n_0 ;
  wire \iv[15]_i_25_n_0 ;
  wire \iv[15]_i_26_n_0 ;
  wire \iv[15]_i_27_n_0 ;
  wire \iv[15]_i_28_n_0 ;
  wire \iv[15]_i_29_n_0 ;
  wire \iv[15]_i_30_n_0 ;
  wire \iv[15]_i_31_n_0 ;
  wire \iv[15]_i_32_n_0 ;
  wire \iv[15]_i_34_n_0 ;
  wire \iv[15]_i_35_n_0 ;
  wire \iv[15]_i_36_n_0 ;
  wire \iv[15]_i_37_n_0 ;
  wire \iv[15]_i_38_n_0 ;
  wire \iv[15]_i_39_n_0 ;
  wire \iv[15]_i_40_n_0 ;
  wire \iv[15]_i_42_n_0 ;
  wire \iv[15]_i_43_n_0 ;
  wire \iv[15]_i_44_n_0 ;
  wire \iv[15]_i_46_n_0 ;
  wire \iv[15]_i_47_n_0 ;
  wire \iv[15]_i_48_n_0 ;
  wire \iv[15]_i_49_n_0 ;
  wire \iv[15]_i_4_n_0 ;
  wire \iv[15]_i_51_n_0 ;
  wire \iv[15]_i_52_n_0 ;
  wire \iv[15]_i_53_n_0 ;
  wire \iv[15]_i_56_n_0 ;
  wire \iv[15]_i_57_n_0 ;
  wire \iv[15]_i_58_n_0 ;
  wire \iv[15]_i_59_n_0 ;
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
  wire \iv[15]_i_6_n_0 ;
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
  wire \iv[15]_i_86_n_0 ;
  wire \iv[15]_i_87_n_0 ;
  wire \iv[15]_i_88_n_0 ;
  wire \iv[15]_i_89_n_0 ;
  wire \iv[15]_i_8_0 ;
  wire \iv[15]_i_8_1 ;
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
  wire \iv[15]_i_9_0 ;
  wire \iv[15]_i_9_n_0 ;
  wire \iv[1]_i_11_n_0 ;
  wire \iv[1]_i_12_n_0 ;
  wire \iv[1]_i_13_n_0 ;
  wire \iv[1]_i_14_n_0 ;
  wire \iv[1]_i_2_0 ;
  wire \iv[1]_i_2_n_0 ;
  wire \iv[1]_i_3_n_0 ;
  wire \iv[1]_i_5_n_0 ;
  wire \iv[1]_i_6_n_0 ;
  wire \iv[1]_i_7_n_0 ;
  wire \iv[1]_i_8_n_0 ;
  wire \iv[2]_i_14_n_0 ;
  wire \iv[2]_i_15_n_0 ;
  wire \iv[2]_i_16_n_0 ;
  wire \iv[2]_i_2_0 ;
  wire \iv[2]_i_2_1 ;
  wire \iv[2]_i_2_2 ;
  wire \iv[2]_i_2_3 ;
  wire \iv[2]_i_2_4 ;
  wire \iv[2]_i_2_5 ;
  wire \iv[2]_i_2_n_0 ;
  wire \iv[2]_i_3_n_0 ;
  wire \iv[2]_i_4_n_0 ;
  wire \iv[2]_i_5_n_0 ;
  wire \iv[2]_i_6_n_0 ;
  wire \iv[2]_i_7_n_0 ;
  wire \iv[2]_i_8_n_0 ;
  wire \iv[3]_i_10_n_0 ;
  wire \iv[3]_i_15_n_0 ;
  wire \iv[3]_i_16_n_0 ;
  wire \iv[3]_i_17_n_0 ;
  wire \iv[3]_i_2_0 ;
  wire \iv[3]_i_2_1 ;
  wire \iv[3]_i_2_2 ;
  wire \iv[3]_i_2_3 ;
  wire \iv[3]_i_2_4 ;
  wire \iv[3]_i_2_5 ;
  wire \iv[3]_i_2_6 ;
  wire \iv[3]_i_2_n_0 ;
  wire \iv[3]_i_3_n_0 ;
  wire \iv[3]_i_4_n_0 ;
  wire \iv[3]_i_5_n_0 ;
  wire \iv[3]_i_6_n_0 ;
  wire \iv[3]_i_7_0 ;
  wire \iv[3]_i_7_n_0 ;
  wire \iv[3]_i_8_n_0 ;
  wire \iv[4]_i_12_n_0 ;
  wire \iv[4]_i_13_n_0 ;
  wire \iv[4]_i_14_n_0 ;
  wire \iv[4]_i_2_0 ;
  wire \iv[4]_i_2_1 ;
  wire \iv[4]_i_2_2 ;
  wire \iv[4]_i_2_n_0 ;
  wire \iv[4]_i_3_n_0 ;
  wire \iv[4]_i_4_n_0 ;
  wire \iv[4]_i_5_n_0 ;
  wire \iv[4]_i_6_n_0 ;
  wire \iv[4]_i_7_0 ;
  wire \iv[4]_i_7_n_0 ;
  wire \iv[4]_i_8_n_0 ;
  wire \iv[5]_i_15_n_0 ;
  wire \iv[5]_i_16_n_0 ;
  wire \iv[5]_i_17_n_0 ;
  wire \iv[5]_i_2_0 ;
  wire \iv[5]_i_2_1 ;
  wire \iv[5]_i_2_2 ;
  wire \iv[5]_i_2_3 ;
  wire \iv[5]_i_2_n_0 ;
  wire \iv[5]_i_3_n_0 ;
  wire \iv[5]_i_4_n_0 ;
  wire \iv[5]_i_5_n_0 ;
  wire \iv[5]_i_6_n_0 ;
  wire \iv[5]_i_8_n_0 ;
  wire \iv[6]_i_12_n_0 ;
  wire \iv[6]_i_14_n_0 ;
  wire \iv[6]_i_15_n_0 ;
  wire \iv[6]_i_16_n_0 ;
  wire \iv[6]_i_17_n_0 ;
  wire \iv[6]_i_18_n_0 ;
  wire \iv[6]_i_2_0 ;
  wire \iv[6]_i_2_1 ;
  wire \iv[6]_i_2_n_0 ;
  wire \iv[6]_i_3_n_0 ;
  wire \iv[6]_i_5_n_0 ;
  wire \iv[6]_i_6_n_0 ;
  wire \iv[6]_i_7_n_0 ;
  wire \iv[6]_i_8_n_0 ;
  wire \iv[7]_i_10_n_0 ;
  wire \iv[7]_i_14_n_0 ;
  wire \iv[7]_i_15_n_0 ;
  wire \iv[7]_i_16_n_0 ;
  wire \iv[7]_i_2_0 ;
  wire \iv[7]_i_2_1 ;
  wire \iv[7]_i_2_2 ;
  wire \iv[7]_i_2_n_0 ;
  wire \iv[7]_i_3_n_0 ;
  wire \iv[7]_i_4_n_0 ;
  wire \iv[7]_i_5_n_0 ;
  wire \iv[7]_i_6_n_0 ;
  wire \iv[7]_i_7_n_0 ;
  wire \iv[7]_i_8_n_0 ;
  wire \iv[8]_i_10_n_0 ;
  wire \iv[8]_i_11_n_0 ;
  wire \iv[8]_i_12_n_0 ;
  wire \iv[8]_i_16_n_0 ;
  wire \iv[8]_i_2_0 ;
  wire \iv[8]_i_2_1 ;
  wire \iv[8]_i_2_n_0 ;
  wire \iv[8]_i_4_n_0 ;
  wire \iv[8]_i_5_n_0 ;
  wire \iv[8]_i_7_n_0 ;
  wire \iv[8]_i_8_n_0 ;
  wire \iv[8]_i_9_n_0 ;
  wire \iv[9]_i_10_n_0 ;
  wire \iv[9]_i_11_n_0 ;
  wire \iv[9]_i_17_n_0 ;
  wire \iv[9]_i_2_0 ;
  wire \iv[9]_i_2_1 ;
  wire \iv[9]_i_2_2 ;
  wire \iv[9]_i_2_3 ;
  wire \iv[9]_i_2_4 ;
  wire \iv[9]_i_2_5 ;
  wire \iv[9]_i_2_n_0 ;
  wire \iv[9]_i_4_n_0 ;
  wire \iv[9]_i_5_n_0 ;
  wire \iv[9]_i_6_n_0 ;
  wire \iv[9]_i_7_n_0 ;
  wire \iv[9]_i_9_n_0 ;
  wire \iv_reg[15]_i_41_n_0 ;
  wire \iv_reg[15]_i_50_n_0 ;
  wire \iv_reg[15]_i_85_n_0 ;
  wire [15:0]\pc_reg[15] ;
  wire [15:0]\pc_reg[15]_0 ;
  wire [0:0]read_cyc;
  wire \read_cyc_reg[0] ;
  wire [4:0]\rgf/abus_sel_cr ;
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
  wire rst_n_fl_reg_4;
  wire \sp[10]_i_2_n_0 ;
  wire \sp[11]_i_3_n_0 ;
  wire \sp[12]_i_2_n_0 ;
  wire \sp[13]_i_2_n_0 ;
  wire \sp[14]_i_2_n_0 ;
  wire \sp[15]_i_10_n_0 ;
  wire \sp[15]_i_12_n_0 ;
  wire \sp[15]_i_13_n_0 ;
  wire \sp[15]_i_14_n_0 ;
  wire \sp[15]_i_15_n_0 ;
  wire \sp[15]_i_5_0 ;
  wire \sp[15]_i_5_n_0 ;
  wire \sp[15]_i_6_n_0 ;
  wire \sp[15]_i_7_n_0 ;
  wire \sp[15]_i_8_n_0 ;
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
  wire [0:0]\sp_reg[15]_2 ;
  wire \sp_reg[1] ;
  wire \sp_reg[2] ;
  wire \sp_reg[3] ;
  wire [2:0]\sp_reg[3]_0 ;
  wire \sp_reg[4] ;
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
  wire \sr[13]_i_13_n_0 ;
  wire \sr[13]_i_3_0 ;
  wire \sr[13]_i_3_n_0 ;
  wire \sr[13]_i_7_n_0 ;
  wire \sr[13]_i_8_n_0 ;
  wire \sr[2]_i_2_n_0 ;
  wire \sr[3]_i_2_n_0 ;
  wire \sr[3]_i_3_n_0 ;
  wire \sr[4]_i_10_n_0 ;
  wire \sr[4]_i_11_n_0 ;
  wire \sr[4]_i_12_n_0 ;
  wire \sr[4]_i_13_n_0 ;
  wire \sr[4]_i_14_n_0 ;
  wire \sr[4]_i_15_n_0 ;
  wire \sr[4]_i_16_n_0 ;
  wire \sr[4]_i_17_n_0 ;
  wire \sr[4]_i_19 ;
  wire \sr[4]_i_20_0 ;
  wire \sr[4]_i_20_1 ;
  wire \sr[4]_i_20_2 ;
  wire \sr[4]_i_20_3 ;
  wire \sr[4]_i_20_4 ;
  wire \sr[4]_i_20_n_0 ;
  wire \sr[4]_i_21_n_0 ;
  wire \sr[4]_i_26_n_0 ;
  wire \sr[4]_i_27_n_0 ;
  wire \sr[4]_i_28_n_0 ;
  wire \sr[4]_i_29_n_0 ;
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
  wire \sr[5]_i_2_0 ;
  wire \sr[5]_i_2_n_0 ;
  wire \sr[5]_i_3_n_0 ;
  wire \sr[5]_i_4_n_0 ;
  wire \sr[6]_i_2_n_0 ;
  wire \sr[6]_i_3_0 ;
  wire \sr[6]_i_3_n_0 ;
  wire \sr[6]_i_4_n_0 ;
  wire \sr[6]_i_5 ;
  wire \sr[6]_i_6_n_0 ;
  wire \sr[6]_i_7_n_0 ;
  wire \sr[7]_i_10_n_0 ;
  wire \sr[7]_i_11_n_0 ;
  wire \sr[7]_i_12_n_0 ;
  wire \sr[7]_i_13_n_0 ;
  wire \sr[7]_i_14_n_0 ;
  wire \sr[7]_i_16_n_0 ;
  wire \sr[7]_i_2_n_0 ;
  wire \sr[7]_i_3_n_0 ;
  wire \sr[7]_i_5_n_0 ;
  wire \sr[7]_i_6_0 ;
  wire \sr[7]_i_6_n_0 ;
  wire \sr[7]_i_7_n_0 ;
  wire \sr[7]_i_8_n_0 ;
  wire \sr[7]_i_9_n_0 ;
  wire \sr_reg[0] ;
  wire [0:0]\sr_reg[0]_0 ;
  wire [0:0]\sr_reg[0]_1 ;
  wire [0:0]\sr_reg[0]_2 ;
  wire [0:0]\sr_reg[0]_3 ;
  wire [0:0]\sr_reg[0]_4 ;
  wire [0:0]\sr_reg[0]_5 ;
  wire [0:0]\sr_reg[0]_6 ;
  wire \sr_reg[10] ;
  wire \sr_reg[10]_0 ;
  wire \sr_reg[11] ;
  wire \sr_reg[12] ;
  wire \sr_reg[13] ;
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
  wire [0:0]\sr_reg[1]_20 ;
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
  wire \sr_reg[3] ;
  wire \sr_reg[4] ;
  wire \sr_reg[5] ;
  wire \sr_reg[6] ;
  wire [0:0]\sr_reg[6]_0 ;
  wire \sr_reg[7] ;
  wire [3:0]\sr_reg[7]_0 ;
  wire \sr_reg[8] ;
  wire \sr_reg[9] ;
  wire \stat[0]_i_10_n_0 ;
  wire \stat[0]_i_11_0 ;
  wire \stat[0]_i_11_1 ;
  wire \stat[0]_i_11_n_0 ;
  wire \stat[0]_i_12_n_0 ;
  wire \stat[0]_i_13_n_0 ;
  wire \stat[0]_i_14_n_0 ;
  wire \stat[0]_i_15_n_0 ;
  wire \stat[0]_i_16_n_0 ;
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
  wire \stat[0]_i_29_n_0 ;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_30_n_0 ;
  wire \stat[0]_i_32_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_5_n_0 ;
  wire \stat[0]_i_6_n_0 ;
  wire \stat[0]_i_7_n_0 ;
  wire \stat[0]_i_8_n_0 ;
  wire \stat[0]_i_9_n_0 ;
  wire \stat[1]_i_14_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[1]_i_7_n_0 ;
  wire \stat[1]_i_8_n_0 ;
  wire \stat[1]_i_9_0 ;
  wire \stat[1]_i_9_n_0 ;
  wire \stat[2]_i_10_n_0 ;
  wire \stat[2]_i_11_n_0 ;
  wire \stat[2]_i_2_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire \stat[2]_i_4_n_0 ;
  wire \stat[2]_i_5_n_0 ;
  wire \stat[2]_i_6_n_0 ;
  wire \stat[2]_i_7_n_0 ;
  wire \stat[2]_i_8_n_0 ;
  wire \stat[2]_i_9_n_0 ;
  wire [0:0]\stat_reg[0] ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[0]_2 ;
  wire [15:0]\stat_reg[0]_3 ;
  wire \stat_reg[0]_4 ;
  wire \stat_reg[0]_i_4_n_0 ;
  wire \stat_reg[1] ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire \stat_reg[2] ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_10 ;
  wire \stat_reg[2]_11 ;
  wire \stat_reg[2]_12 ;
  wire [2:0]\stat_reg[2]_13 ;
  wire \stat_reg[2]_14 ;
  wire \stat_reg[2]_15 ;
  wire [1:0]\stat_reg[2]_16 ;
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
  wire tout__1_carry_i_8_n_0;
  wire tout__1_carry_i_9_n_0;
  wire \tr[15]_i_2_n_0 ;
  wire \tr_reg[0] ;
  wire \tr_reg[0]_0 ;
  wire \tr_reg[10] ;
  wire \tr_reg[10]_0 ;
  wire \tr_reg[11] ;
  wire [3:0]\tr_reg[11]_0 ;
  wire \tr_reg[11]_1 ;
  wire \tr_reg[11]_2 ;
  wire \tr_reg[12] ;
  wire \tr_reg[13] ;
  wire \tr_reg[13]_0 ;
  wire \tr_reg[13]_1 ;
  wire \tr_reg[13]_2 ;
  wire \tr_reg[14] ;
  wire \tr_reg[14]_0 ;
  wire \tr_reg[15] ;
  wire \tr_reg[1] ;
  wire \tr_reg[1]_0 ;
  wire \tr_reg[1]_1 ;
  wire \tr_reg[2] ;
  wire \tr_reg[2]_0 ;
  wire \tr_reg[3] ;
  wire \tr_reg[3]_0 ;
  wire \tr_reg[4] ;
  wire \tr_reg[4]_0 ;
  wire \tr_reg[5] ;
  wire \tr_reg[5]_0 ;
  wire \tr_reg[5]_1 ;
  wire \tr_reg[6] ;
  wire \tr_reg[6]_0 ;
  wire \tr_reg[6]_1 ;
  wire \tr_reg[7] ;
  wire [3:0]\tr_reg[7]_0 ;
  wire \tr_reg[7]_1 ;
  wire \tr_reg[8] ;
  wire \tr_reg[8]_0 ;
  wire \tr_reg[8]_1 ;
  wire \tr_reg[9] ;
  wire \tr_reg[9]_0 ;
  wire \tr_reg[9]_1 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[0]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(abus_0[0]),
        .O(abus_o[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[10]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(abus_0[10]),
        .O(abus_o[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[11]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(abus_0[11]),
        .O(abus_o[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[12]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(abus_0[12]),
        .O(abus_o[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[13]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(abus_0[13]),
        .O(abus_o[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[14]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(abus_0[14]),
        .O(abus_o[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[15]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(abus_0[15]),
        .O(abus_o[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[1]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(abus_0[1]),
        .O(abus_o[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[2]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(abus_0[2]),
        .O(abus_o[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[3]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(abus_0[3]),
        .O(abus_o[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[4]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(abus_0[4]),
        .O(abus_o[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[5]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(abus_0[5]),
        .O(abus_o[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[6]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(abus_0[6]),
        .O(abus_o[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[7]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(abus_0[7]),
        .O(abus_o[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[8]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(abus_0[8]),
        .O(abus_o[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[9]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(abus_0[9]),
        .O(abus_o[9]));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[0]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[0]),
        .O(badr[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[0]_INST_0_i_13 
       (.I0(\rgf/abus_sel_cr [0]),
        .I1(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[0] ));
  LUT5 #(
    .INIT(32'hFF008000)) 
    \badr[0]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(\sp_reg[15]_0 [0]),
        .I4(\rgf/abus_sel_cr [2]),
        .O(\sp_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[0]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [0]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [0]),
        .I4(\pc_reg[15]_0 [0]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[0] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[10]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[10]),
        .O(badr[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[10]_INST_0_i_13 
       (.I0(\rgf/abus_sel_cr [0]),
        .I1(\badr[15]_INST_0_i_2 [10]),
        .O(\sr_reg[10] ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \badr[10]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(sp_dec_0[9]),
        .I4(\sp_reg[15]_0 [10]),
        .I5(\rgf/abus_sel_cr [2]),
        .O(\sp_reg[10] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[10]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [10]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [10]),
        .I4(\pc_reg[15]_0 [10]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[10] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[11]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[11]),
        .O(badr[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[11]_INST_0_i_13 
       (.I0(\rgf/abus_sel_cr [0]),
        .I1(\badr[15]_INST_0_i_2 [11]),
        .O(\sr_reg[11] ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \badr[11]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(sp_dec_0[10]),
        .I4(\sp_reg[15]_0 [11]),
        .I5(\rgf/abus_sel_cr [2]),
        .O(\sp_reg[11] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[11]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [11]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [11]),
        .I4(\pc_reg[15]_0 [11]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[11] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[12]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[12]),
        .O(badr[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[12]_INST_0_i_13 
       (.I0(\rgf/abus_sel_cr [0]),
        .I1(\badr[15]_INST_0_i_2 [12]),
        .O(\sr_reg[12] ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \badr[12]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(sp_dec_0[11]),
        .I4(\sp_reg[15]_0 [12]),
        .I5(\rgf/abus_sel_cr [2]),
        .O(\sp_reg[12] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[12]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [12]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [12]),
        .I4(\pc_reg[15]_0 [12]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[12] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[13]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[13]),
        .O(badr[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[13]_INST_0_i_13 
       (.I0(\rgf/abus_sel_cr [0]),
        .I1(\badr[15]_INST_0_i_2 [13]),
        .O(\sr_reg[13] ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \badr[13]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(sp_dec_0[12]),
        .I4(\sp_reg[15]_0 [13]),
        .I5(\rgf/abus_sel_cr [2]),
        .O(\sp_reg[13] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[13]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [13]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [13]),
        .I4(\pc_reg[15]_0 [13]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[13] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[14]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[14]),
        .O(badr[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[14]_INST_0_i_13 
       (.I0(\rgf/abus_sel_cr [0]),
        .I1(\badr[15]_INST_0_i_2 [14]),
        .O(\sr_reg[14] ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \badr[14]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(sp_dec_0[13]),
        .I4(\sp_reg[15]_0 [14]),
        .I5(\rgf/abus_sel_cr [2]),
        .O(\sp_reg[14] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[14]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [14]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [14]),
        .I4(\pc_reg[15]_0 [14]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[14] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[15]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[15]),
        .O(badr[15]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \badr[15]_INST_0_i_100 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[10]),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_100_n_0 ));
  LUT5 #(
    .INIT(32'hF1B5FFAB)) 
    \badr[15]_INST_0_i_101 
       (.I0(ir[5]),
        .I1(ir[2]),
        .I2(ir[3]),
        .I3(ir[4]),
        .I4(ir[6]),
        .O(\badr[15]_INST_0_i_101_n_0 ));
  LUT5 #(
    .INIT(32'h40000030)) 
    \badr[15]_INST_0_i_102 
       (.I0(ir[3]),
        .I1(ir[6]),
        .I2(ir[2]),
        .I3(ir[5]),
        .I4(ir[4]),
        .O(\badr[15]_INST_0_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h0D082F7F0B0F4F0F)) 
    \badr[15]_INST_0_i_103 
       (.I0(ir[9]),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(ir[7]),
        .I4(ir[2]),
        .I5(ir[8]),
        .O(\badr[15]_INST_0_i_103_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \badr[15]_INST_0_i_104 
       (.I0(ir[8]),
        .I1(ir[7]),
        .O(\badr[15]_INST_0_i_104_n_0 ));
  LUT5 #(
    .INIT(32'h00CCCA00)) 
    \badr[15]_INST_0_i_105 
       (.I0(ir[5]),
        .I1(ir[2]),
        .I2(ir[6]),
        .I3(ir[9]),
        .I4(ir[8]),
        .O(\badr[15]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \badr[15]_INST_0_i_106 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(ir[14]),
        .I3(ir[15]),
        .I4(ir[10]),
        .I5(crdy),
        .O(\badr[15]_INST_0_i_106_n_0 ));
  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    \badr[15]_INST_0_i_107 
       (.I0(ir[10]),
        .I1(ir[15]),
        .I2(ir[14]),
        .I3(ir[12]),
        .I4(ir[13]),
        .O(\badr[15]_INST_0_i_107_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \badr[15]_INST_0_i_108 
       (.I0(crdy),
        .I1(ir[9]),
        .I2(ir[5]),
        .I3(ir[8]),
        .O(\badr[15]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \badr[15]_INST_0_i_109 
       (.I0(ir[7]),
        .I1(ir[5]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[10]),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_109_n_0 ));
  LUT6 #(
    .INIT(64'h8080880000000000)) 
    \badr[15]_INST_0_i_110 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[5]),
        .I3(ir[2]),
        .I4(ir[6]),
        .I5(ir[8]),
        .O(\badr[15]_INST_0_i_110_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \badr[15]_INST_0_i_111 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[11]),
        .O(\badr[15]_INST_0_i_111_n_0 ));
  LUT5 #(
    .INIT(32'h00903399)) 
    \badr[15]_INST_0_i_112 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(ir[7]),
        .I3(Q[0]),
        .I4(ir[10]),
        .O(\badr[15]_INST_0_i_112_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_113 
       (.I0(ir[7]),
        .I1(ir[5]),
        .O(\badr[15]_INST_0_i_113_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \badr[15]_INST_0_i_114 
       (.I0(ir[4]),
        .I1(ir[6]),
        .I2(Q[0]),
        .O(\badr[15]_INST_0_i_114_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFDFCFCC)) 
    \badr[15]_INST_0_i_115 
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(Q[0]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_115_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFEEFF)) 
    \badr[15]_INST_0_i_117 
       (.I0(rst_n_fl_reg_1),
        .I1(Q[0]),
        .I2(ir[9]),
        .I3(crdy),
        .I4(ir[8]),
        .O(\badr[15]_INST_0_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h3F03323000003230)) 
    \badr[15]_INST_0_i_119 
       (.I0(fch_irq_req),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(ir[2]),
        .I5(crdy),
        .O(\badr[15]_INST_0_i_119_n_0 ));
  LUT6 #(
    .INIT(64'h555555555D555555)) 
    \badr[15]_INST_0_i_120 
       (.I0(\badr[15]_INST_0_i_143_n_0 ),
        .I1(\badr[15]_INST_0_i_144_n_0 ),
        .I2(\badr[15]_INST_0_i_145_n_0 ),
        .I3(ctl_fetch_ext_fl_i_2_n_0),
        .I4(\ccmd[1]_INST_0_i_6_0 ),
        .I5(\ccmd[0]_INST_0_i_15_n_0 ),
        .O(\badr[15]_INST_0_i_120_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \badr[15]_INST_0_i_121 
       (.I0(ir[4]),
        .I1(ir[2]),
        .I2(ir[5]),
        .I3(ir[0]),
        .I4(ir[11]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h1020101030301030)) 
    \badr[15]_INST_0_i_122 
       (.I0(ir[12]),
        .I1(Q[0]),
        .I2(ir[15]),
        .I3(ir[13]),
        .I4(ir[11]),
        .I5(ir[14]),
        .O(\badr[15]_INST_0_i_122_n_0 ));
  LUT6 #(
    .INIT(64'hEEAEAAAEEEAEAAAA)) 
    \badr[15]_INST_0_i_123 
       (.I0(ir[10]),
        .I1(\badr[15]_INST_0_i_146_n_0 ),
        .I2(ir[7]),
        .I3(ir[9]),
        .I4(Q[0]),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_123_n_0 ));
  LUT6 #(
    .INIT(64'h8080808088808080)) 
    \badr[15]_INST_0_i_124 
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(\badr[15]_INST_0_i_147_n_0 ),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(\badr[15]_INST_0_i_148_n_0 ),
        .O(\badr[15]_INST_0_i_124_n_0 ));
  LUT4 #(
    .INIT(16'hCDDD)) 
    \badr[15]_INST_0_i_125 
       (.I0(ir[9]),
        .I1(Q[0]),
        .I2(ir[7]),
        .I3(ir[6]),
        .O(\badr[15]_INST_0_i_125_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_126 
       (.I0(ir[9]),
        .I1(ir[6]),
        .O(\badr[15]_INST_0_i_126_n_0 ));
  LUT6 #(
    .INIT(64'h4000400040FFFF00)) 
    \badr[15]_INST_0_i_128 
       (.I0(ir[4]),
        .I1(\bdatw[15]_INST_0_i_17_n_0 ),
        .I2(\badr[15]_INST_0_i_100_n_0 ),
        .I3(ir[11]),
        .I4(ir[10]),
        .I5(\badr[15]_INST_0_i_149_n_0 ),
        .O(\badr[15]_INST_0_i_128_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFEFEFEFEFE)) 
    \badr[15]_INST_0_i_129 
       (.I0(ir[14]),
        .I1(ir[15]),
        .I2(ir[13]),
        .I3(\badr[15]_INST_0_i_2 [4]),
        .I4(ir[11]),
        .I5(ir[12]),
        .O(\badr[15]_INST_0_i_129_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_13 
       (.I0(\rgf/abus_sel_cr [0]),
        .I1(\badr[15]_INST_0_i_2 [15]),
        .O(\sr_reg[15] ));
  LUT6 #(
    .INIT(64'h20A0A0A000A0A0A0)) 
    \badr[15]_INST_0_i_130 
       (.I0(ir[8]),
        .I1(ir[14]),
        .I2(ir[15]),
        .I3(ir[12]),
        .I4(ir[13]),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_130_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \badr[15]_INST_0_i_131 
       (.I0(ir[10]),
        .I1(\badr[15]_INST_0_i_150_n_0 ),
        .O(\badr[15]_INST_0_i_131_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \badr[15]_INST_0_i_132 
       (.I0(\bdatw[15]_INST_0_i_154_n_0 ),
        .I1(\badr[15]_INST_0_i_151_n_0 ),
        .I2(\badr[15]_INST_0_i_152_n_0 ),
        .I3(\badr[15]_INST_0_i_153_n_0 ),
        .I4(ir[3]),
        .I5(\badr[15]_INST_0_i_154_n_0 ),
        .O(\badr[15]_INST_0_i_132_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAEAEAEAEAEAE)) 
    \badr[15]_INST_0_i_133 
       (.I0(\badr[15]_INST_0_i_155_n_0 ),
        .I1(\badr[15]_INST_0_i_156_n_0 ),
        .I2(\badr[15]_INST_0_i_157_n_0 ),
        .I3(\badr[15]_INST_0_i_158_n_0 ),
        .I4(crdy),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_133_n_0 ));
  LUT6 #(
    .INIT(64'h3000200000002000)) 
    \badr[15]_INST_0_i_134 
       (.I0(crdy),
        .I1(ir[11]),
        .I2(ir[13]),
        .I3(ir[12]),
        .I4(rst_n_fl_reg_1),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_134_n_0 ));
  LUT6 #(
    .INIT(64'h00800000AAAAAAAA)) 
    \badr[15]_INST_0_i_135 
       (.I0(\badr[15]_INST_0_i_159_n_0 ),
        .I1(\badr[15]_INST_0_i_100_n_0 ),
        .I2(\bdatw[10]_INST_0_i_16_n_0 ),
        .I3(ir[4]),
        .I4(ir[11]),
        .I5(\badr[15]_INST_0_i_160_n_0 ),
        .O(\badr[15]_INST_0_i_135_n_0 ));
  LUT5 #(
    .INIT(32'hD4F7FFFF)) 
    \badr[15]_INST_0_i_136 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(ir[2]),
        .I4(\badr[15]_INST_0_i_92_0 ),
        .O(\badr[15]_INST_0_i_136_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \badr[15]_INST_0_i_137 
       (.I0(ctl_fetch_ext_fl_i_6_n_0),
        .I1(ir[2]),
        .I2(ir[1]),
        .I3(\stat[1]_i_7_n_0 ),
        .I4(\badr[15]_INST_0_i_161_n_0 ),
        .I5(\stat[1]_i_8_n_0 ),
        .O(\badr[15]_INST_0_i_137_n_0 ));
  LUT6 #(
    .INIT(64'h2220222000002220)) 
    \badr[15]_INST_0_i_138 
       (.I0(\badr[15]_INST_0_i_162_n_0 ),
        .I1(\badr[15]_INST_0_i_163_n_0 ),
        .I2(\badr[15]_INST_0_i_164_n_0 ),
        .I3(\badrx[15]_INST_0_i_4_n_0 ),
        .I4(\badr[15]_INST_0_i_106_n_0 ),
        .I5(\badr[15]_INST_0_i_165_n_0 ),
        .O(\badr[15]_INST_0_i_138_n_0 ));
  LUT6 #(
    .INIT(64'h0EEEFFFF0EEE0000)) 
    \badr[15]_INST_0_i_139 
       (.I0(\badr[15]_INST_0_i_166_n_0 ),
        .I1(\ccmd[4]_INST_0_i_22_n_0 ),
        .I2(ir[1]),
        .I3(\badr[15]_INST_0_i_152_n_0 ),
        .I4(ir[9]),
        .I5(\badr[15]_INST_0_i_167_n_0 ),
        .O(\badr[15]_INST_0_i_139_n_0 ));
  LUT6 #(
    .INIT(64'h0104080CEFBF7F3F)) 
    \badr[15]_INST_0_i_140 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[1]),
        .I3(ir[7]),
        .I4(ir[6]),
        .I5(ir[4]),
        .O(\badr[15]_INST_0_i_140_n_0 ));
  LUT5 #(
    .INIT(32'hFF1FFFFF)) 
    \badr[15]_INST_0_i_141 
       (.I0(ir[14]),
        .I1(\badr[15]_INST_0_i_2 [7]),
        .I2(ir[13]),
        .I3(ir[15]),
        .I4(ir[12]),
        .O(\badr[15]_INST_0_i_141_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040404000)) 
    \badr[15]_INST_0_i_142 
       (.I0(Q[0]),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(ir[7]),
        .I4(ir[5]),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_142_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \badr[15]_INST_0_i_143 
       (.I0(ir[13]),
        .I1(Q[0]),
        .I2(ir[15]),
        .O(\badr[15]_INST_0_i_143_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \badr[15]_INST_0_i_144 
       (.I0(ir[2]),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(ir[3]),
        .O(\badr[15]_INST_0_i_144_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \badr[15]_INST_0_i_145 
       (.I0(ir[4]),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(ir[8]),
        .O(\badr[15]_INST_0_i_145_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_146 
       (.I0(ir[8]),
        .I1(ir[6]),
        .O(\badr[15]_INST_0_i_146_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F000D0D)) 
    \badr[15]_INST_0_i_147 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(Q[0]),
        .I3(crdy),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_147_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFBFFFFF9EEE)) 
    \badr[15]_INST_0_i_148 
       (.I0(Q[0]),
        .I1(ir[6]),
        .I2(ir[7]),
        .I3(ir[3]),
        .I4(ir[5]),
        .I5(ir[4]),
        .O(\badr[15]_INST_0_i_148_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \badr[15]_INST_0_i_149 
       (.I0(ir[6]),
        .I1(ir[8]),
        .I2(ir[0]),
        .I3(ir[9]),
        .O(\badr[15]_INST_0_i_149_n_0 ));
  LUT6 #(
    .INIT(64'h01EF04BF087F0C3F)) 
    \badr[15]_INST_0_i_150 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[0]),
        .I3(ir[3]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_150_n_0 ));
  LUT5 #(
    .INIT(32'h11E101A0)) 
    \badr[15]_INST_0_i_151 
       (.I0(ir[5]),
        .I1(ir[4]),
        .I2(ir[6]),
        .I3(ir[3]),
        .I4(ir[0]),
        .O(\badr[15]_INST_0_i_151_n_0 ));
  LUT6 #(
    .INIT(64'h0000000440000004)) 
    \badr[15]_INST_0_i_152 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[4]),
        .I3(ir[6]),
        .I4(ir[5]),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_152_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \badr[15]_INST_0_i_153 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[0]),
        .O(\badr[15]_INST_0_i_153_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFFFFFF2FFF2FF)) 
    \badr[15]_INST_0_i_154 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[9]),
        .I3(ir[10]),
        .I4(crdy),
        .I5(ir[8]),
        .O(\badr[15]_INST_0_i_154_n_0 ));
  LUT6 #(
    .INIT(64'h3000301333203333)) 
    \badr[15]_INST_0_i_155 
       (.I0(ir[6]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[3]),
        .I5(ir[0]),
        .O(\badr[15]_INST_0_i_155_n_0 ));
  LUT5 #(
    .INIT(32'h3FFF7F7F)) 
    \badr[15]_INST_0_i_156 
       (.I0(ir[0]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[3]),
        .I4(ir[6]),
        .O(\badr[15]_INST_0_i_156_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEAAAAAAA)) 
    \badr[15]_INST_0_i_157 
       (.I0(crdy),
        .I1(ir[3]),
        .I2(ir[7]),
        .I3(ir[6]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_157_n_0 ));
  LUT5 #(
    .INIT(32'h40004444)) 
    \badr[15]_INST_0_i_158 
       (.I0(ir[9]),
        .I1(ir[3]),
        .I2(ir[7]),
        .I3(ir[6]),
        .I4(ir[8]),
        .O(\badr[15]_INST_0_i_158_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \badr[15]_INST_0_i_159 
       (.I0(ir[15]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(ir[14]),
        .I4(ir[13]),
        .I5(ir[12]),
        .O(\badr[15]_INST_0_i_159_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \badr[15]_INST_0_i_16 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[2]_0 ),
        .I2(\badr[15]_INST_0_i_2 [1]),
        .I3(\badr[15]_INST_0_i_2 [0]),
        .O(gr4_bus1__0_20));
  LUT6 #(
    .INIT(64'hFFFFFF7FFF7FFFFF)) 
    \badr[15]_INST_0_i_160 
       (.I0(ir[1]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(ir[6]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_160_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \badr[15]_INST_0_i_161 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(ir[3]),
        .O(\badr[15]_INST_0_i_161_n_0 ));
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    \badr[15]_INST_0_i_162 
       (.I0(ir[10]),
        .I1(crdy),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[4]),
        .O(\badr[15]_INST_0_i_162_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \badr[15]_INST_0_i_163 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[6]),
        .I3(ir[4]),
        .I4(ir[7]),
        .I5(ir[8]),
        .O(\badr[15]_INST_0_i_163_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \badr[15]_INST_0_i_164 
       (.I0(ir[8]),
        .I1(ir[1]),
        .I2(ir[6]),
        .I3(ir[4]),
        .O(\badr[15]_INST_0_i_164_n_0 ));
  LUT5 #(
    .INIT(32'hF230F73F)) 
    \badr[15]_INST_0_i_165 
       (.I0(ir[6]),
        .I1(ir[1]),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(ir[4]),
        .O(\badr[15]_INST_0_i_165_n_0 ));
  LUT5 #(
    .INIT(32'h3D37FFFD)) 
    \badr[15]_INST_0_i_166 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(ir[6]),
        .O(\badr[15]_INST_0_i_166_n_0 ));
  LUT5 #(
    .INIT(32'h0FFF0D0D)) 
    \badr[15]_INST_0_i_167 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(crdy),
        .I4(ir[8]),
        .O(\badr[15]_INST_0_i_167_n_0 ));
  LUT6 #(
    .INIT(64'h4445555544444444)) 
    \badr[15]_INST_0_i_28 
       (.I0(Q[2]),
        .I1(\badr[15]_INST_0_i_51_n_0 ),
        .I2(ir[15]),
        .I3(\badr[15]_INST_0_i_52_n_0 ),
        .I4(\badr[15]_INST_0_i_53_n_0 ),
        .I5(ctl_fetch_ext_fl_reg_0),
        .O(\badr[15]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFA2)) 
    \badr[15]_INST_0_i_29 
       (.I0(\ccmd[4]_INST_0_i_21_n_0 ),
        .I1(\badr[15]_INST_0_i_54_n_0 ),
        .I2(\badr[15]_INST_0_i_55_n_0 ),
        .I3(\badr[15]_INST_0_i_56_n_0 ),
        .I4(Q[2]),
        .I5(ctl_sela),
        .O(\badr[15]_INST_0_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_30 
       (.I0(\badr[15]_INST_0_i_58_n_0 ),
        .I1(\badr[15]_INST_0_i_59_n_0 ),
        .O(\stat_reg[2]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_32 
       (.I0(\badr[15]_INST_0_i_64_n_0 ),
        .I1(\stat_reg[2]_2 ),
        .O(\rgf/abus_sel_cr [2]));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[15]_INST_0_i_33 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\stat_reg[2]_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .O(\rgf/abus_sel_cr [4]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_34 
       (.I0(\badr[15]_INST_0_i_64_n_0 ),
        .I1(\stat_reg[2]_3 ),
        .O(\rgf/abus_sel_cr [3]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_35 
       (.I0(\badr[15]_INST_0_i_64_n_0 ),
        .I1(\stat_reg[2]_1 ),
        .O(\rgf/abus_sel_cr [1]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \badr[15]_INST_0_i_36 
       (.I0(\badr[15]_INST_0_i_58_n_0 ),
        .I1(\badr[15]_INST_0_i_59_n_0 ),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(ctl_sela),
        .I4(\badr[15]_INST_0_i_65_n_0 ),
        .I5(Q[2]),
        .O(\stat_reg[2]_7 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \badr[15]_INST_0_i_37 
       (.I0(\badr[15]_INST_0_i_58_n_0 ),
        .I1(\badr[15]_INST_0_i_59_n_0 ),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(ctl_sela),
        .I4(\badr[15]_INST_0_i_65_n_0 ),
        .I5(Q[2]),
        .O(\stat_reg[2]_5 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \badr[15]_INST_0_i_38 
       (.I0(\badr[15]_INST_0_i_58_n_0 ),
        .I1(\badr[15]_INST_0_i_59_n_0 ),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(ctl_sela),
        .I4(\badr[15]_INST_0_i_65_n_0 ),
        .I5(Q[2]),
        .O(\stat_reg[2]_6 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \badr[15]_INST_0_i_39 
       (.I0(\badr[15]_INST_0_i_58_n_0 ),
        .I1(\badr[15]_INST_0_i_59_n_0 ),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(ctl_sela),
        .I4(\badr[15]_INST_0_i_65_n_0 ),
        .I5(Q[2]),
        .O(\stat_reg[2]_4 ));
  LUT6 #(
    .INIT(64'h0000000045440000)) 
    \badr[15]_INST_0_i_40 
       (.I0(Q[2]),
        .I1(\badr[15]_INST_0_i_56_n_0 ),
        .I2(\badr[15]_INST_0_i_66_n_0 ),
        .I3(\ccmd[4]_INST_0_i_21_n_0 ),
        .I4(ctl_sela),
        .I5(\badr[15]_INST_0_i_28_n_0 ),
        .O(\stat_reg[2]_9 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_41 
       (.I0(\badr[15]_INST_0_i_59_n_0 ),
        .I1(\badr[15]_INST_0_i_58_n_0 ),
        .O(\stat_reg[2]_2 ));
  LUT6 #(
    .INIT(64'h4544000000000000)) 
    \badr[15]_INST_0_i_43 
       (.I0(Q[2]),
        .I1(\badr[15]_INST_0_i_56_n_0 ),
        .I2(\badr[15]_INST_0_i_66_n_0 ),
        .I3(\ccmd[4]_INST_0_i_21_n_0 ),
        .I4(ctl_sela),
        .I5(\badr[15]_INST_0_i_28_n_0 ),
        .O(\stat_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \badr[15]_INST_0_i_44 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_65_n_0 ),
        .I2(Q[2]),
        .I3(ctl_sela),
        .I4(\badr[15]_INST_0_i_58_n_0 ),
        .I5(\badr[15]_INST_0_i_59_n_0 ),
        .O(\rgf/abus_sel_cr [0]));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_46 
       (.I0(\badr[15]_INST_0_i_59_n_0 ),
        .I1(\badr[15]_INST_0_i_58_n_0 ),
        .O(\stat_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \badr[15]_INST_0_i_49 
       (.I0(\badr[15]_INST_0_i_58_n_0 ),
        .I1(\badr[15]_INST_0_i_59_n_0 ),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(ctl_sela),
        .I4(\badr[15]_INST_0_i_65_n_0 ),
        .I5(Q[2]),
        .O(\stat_reg[2]_8 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_50 
       (.I0(\badr[15]_INST_0_i_59_n_0 ),
        .I1(\badr[15]_INST_0_i_58_n_0 ),
        .O(\stat_reg[2]_3 ));
  LUT6 #(
    .INIT(64'hAAAA0000FFAB0000)) 
    \badr[15]_INST_0_i_51 
       (.I0(\badr[15]_INST_0_i_67_n_0 ),
        .I1(\badr[15]_INST_0_i_68_n_0 ),
        .I2(\badr[15]_INST_0_i_69_n_0 ),
        .I3(\badr[15]_INST_0_i_70_n_0 ),
        .I4(\badr[15]_INST_0_i_92_0 ),
        .I5(ctl_fetch_inferred_i_9_n_0),
        .O(\badr[15]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F2F200F2)) 
    \badr[15]_INST_0_i_52 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(\badr[15]_INST_0_i_73_n_0 ),
        .I2(\ccmd[3]_INST_0_i_3_n_0 ),
        .I3(\ccmd[4]_INST_0_i_6_n_0 ),
        .I4(\badr[15]_INST_0_i_74_n_0 ),
        .I5(\badr[15]_INST_0_i_75_n_0 ),
        .O(\badr[15]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hD555D5D5FFFFFFFF)) 
    \badr[15]_INST_0_i_53 
       (.I0(ir[15]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[14]),
        .I4(ir[11]),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hFF30FF30FFAAFFFF)) 
    \badr[15]_INST_0_i_54 
       (.I0(Q[0]),
        .I1(\badr[15]_INST_0_i_76_n_0 ),
        .I2(\badr[15]_INST_0_i_77_n_0 ),
        .I3(\badr[15]_INST_0_i_78_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [7]),
        .I5(ir[14]),
        .O(\badr[15]_INST_0_i_54_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \badr[15]_INST_0_i_55 
       (.I0(Q[0]),
        .I1(ir[13]),
        .I2(\badr[15]_INST_0_i_29_0 ),
        .I3(\badr[15]_INST_0_i_80_n_0 ),
        .O(\badr[15]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h00001011FFFFFFFF)) 
    \badr[15]_INST_0_i_56 
       (.I0(Q[1]),
        .I1(ir[11]),
        .I2(\badr[15]_INST_0_i_81_n_0 ),
        .I3(ir[13]),
        .I4(\badr[15]_INST_0_i_82_n_0 ),
        .I5(\badr[15]_INST_0_i_83_n_0 ),
        .O(\badr[15]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A8A8A888A88)) 
    \badr[15]_INST_0_i_57 
       (.I0(\ccmd[2]_INST_0_i_3_0 ),
        .I1(\badr[15]_INST_0_i_84_n_0 ),
        .I2(\iv[15]_i_14_n_0 ),
        .I3(\badr[15]_INST_0_i_85_n_0 ),
        .I4(\badr[15]_INST_0_i_86_n_0 ),
        .I5(\badr[15]_INST_0_i_87_n_0 ),
        .O(ctl_sela));
  LUT6 #(
    .INIT(64'h5454545544444444)) 
    \badr[15]_INST_0_i_58 
       (.I0(Q[2]),
        .I1(\badr[15]_INST_0_i_88_n_0 ),
        .I2(\badr[15]_INST_0_i_89_n_0 ),
        .I3(\badr[15]_INST_0_i_90_n_0 ),
        .I4(\badr[15]_INST_0_i_91_n_0 ),
        .I5(ctl_fetch_ext_fl_reg_0),
        .O(\badr[15]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h5454545544444444)) 
    \badr[15]_INST_0_i_59 
       (.I0(Q[2]),
        .I1(\badr[15]_INST_0_i_92_n_0 ),
        .I2(\badr[15]_INST_0_i_93_n_0 ),
        .I3(\bdatw[15]_INST_0_i_76_n_0 ),
        .I4(\badr[15]_INST_0_i_94_n_0 ),
        .I5(ctl_fetch_ext_fl_reg_0),
        .O(\badr[15]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \badr[15]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(sp_dec_0[14]),
        .I4(\sp_reg[15]_0 [15]),
        .I5(\rgf/abus_sel_cr [2]),
        .O(\sp_reg[15] ));
  LUT6 #(
    .INIT(64'h0000000010111010)) 
    \badr[15]_INST_0_i_64 
       (.I0(ctl_sela),
        .I1(Q[2]),
        .I2(\badr[15]_INST_0_i_56_n_0 ),
        .I3(\badr[15]_INST_0_i_66_n_0 ),
        .I4(\ccmd[4]_INST_0_i_21_n_0 ),
        .I5(\badr[15]_INST_0_i_28_n_0 ),
        .O(\badr[15]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880808880)) 
    \badr[15]_INST_0_i_65 
       (.I0(\badr[15]_INST_0_i_95_n_0 ),
        .I1(\badr[15]_INST_0_i_83_n_0 ),
        .I2(\badr[15]_INST_0_i_82_n_0 ),
        .I3(ir[13]),
        .I4(\badr[15]_INST_0_i_81_n_0 ),
        .I5(\badr[15]_INST_0_i_96_n_0 ),
        .O(\badr[15]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF5FBF1)) 
    \badr[15]_INST_0_i_66 
       (.I0(ir[14]),
        .I1(\badr[15]_INST_0_i_2 [7]),
        .I2(\badr[15]_INST_0_i_78_n_0 ),
        .I3(\badr[15]_INST_0_i_97_n_0 ),
        .I4(Q[0]),
        .I5(\badr[15]_INST_0_i_55_n_0 ),
        .O(\badr[15]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \badr[15]_INST_0_i_67 
       (.I0(\ccmd[4]_INST_0_i_14_n_0 ),
        .I1(\ccmd[4]_INST_0_i_13_n_0 ),
        .I2(\bdatw[9]_INST_0_i_32_n_0 ),
        .I3(\ccmd[0]_INST_0_i_20_n_0 ),
        .I4(\badr[15]_INST_0_i_98_n_0 ),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_67_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \badr[15]_INST_0_i_68 
       (.I0(ir[6]),
        .I1(ir[2]),
        .O(\badr[15]_INST_0_i_68_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \badr[15]_INST_0_i_69 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(ir[8]),
        .O(\badr[15]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[15]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [15]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [15]),
        .I4(\pc_reg[15]_0 [15]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[15] ));
  LUT6 #(
    .INIT(64'h8A88888888888888)) 
    \badr[15]_INST_0_i_70 
       (.I0(ir[11]),
        .I1(\badr[15]_INST_0_i_99_n_0 ),
        .I2(ir[4]),
        .I3(ir[3]),
        .I4(ir[2]),
        .I5(\badr[15]_INST_0_i_100_n_0 ),
        .O(\badr[15]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F7F7FFFFF7FFF)) 
    \badr[15]_INST_0_i_72 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(\badr[15]_INST_0_i_101_n_0 ),
        .I5(\badr[15]_INST_0_i_102_n_0 ),
        .O(\badr[15]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hFFF1111111111111)) 
    \badr[15]_INST_0_i_73 
       (.I0(\badr[15]_INST_0_i_103_n_0 ),
        .I1(ir[10]),
        .I2(\badr[15]_INST_0_i_104_n_0 ),
        .I3(ir[6]),
        .I4(\stat[0]_i_24_n_0 ),
        .I5(ir[5]),
        .O(\badr[15]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007707)) 
    \badr[15]_INST_0_i_74 
       (.I0(\badr[15]_INST_0_i_105_n_0 ),
        .I1(\badr[15]_INST_0_i_106_n_0 ),
        .I2(\badr[15]_INST_0_i_107_n_0 ),
        .I3(\badr[15]_INST_0_i_108_n_0 ),
        .I4(\badr[15]_INST_0_i_109_n_0 ),
        .I5(\badr[15]_INST_0_i_110_n_0 ),
        .O(\badr[15]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \badr[15]_INST_0_i_75 
       (.I0(ir[9]),
        .I1(\badr[15]_INST_0_i_98_n_0 ),
        .I2(\ccmd[0]_INST_0_i_20_n_0 ),
        .I3(\bdatw[9]_INST_0_i_32_n_0 ),
        .I4(\badr[15]_INST_0_i_111_n_0 ),
        .I5(fch_irq_req),
        .O(\badr[15]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h000030BB33333333)) 
    \badr[15]_INST_0_i_76 
       (.I0(ir[7]),
        .I1(Q[0]),
        .I2(crdy),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBBAAAAAAAA)) 
    \badr[15]_INST_0_i_77 
       (.I0(\ccmd[2]_INST_0_i_13_n_0 ),
        .I1(\badr[15]_INST_0_i_112_n_0 ),
        .I2(ir[3]),
        .I3(\badr[15]_INST_0_i_113_n_0 ),
        .I4(\badr[15]_INST_0_i_114_n_0 ),
        .I5(\badr[15]_INST_0_i_115_n_0 ),
        .O(\badr[15]_INST_0_i_77_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \badr[15]_INST_0_i_78 
       (.I0(ir[12]),
        .I1(ir[15]),
        .I2(ir[13]),
        .O(\badr[15]_INST_0_i_78_n_0 ));
  LUT5 #(
    .INIT(32'h002200BA)) 
    \badr[15]_INST_0_i_80 
       (.I0(ir[15]),
        .I1(ir[14]),
        .I2(\badr[15]_INST_0_i_2 [6]),
        .I3(Q[0]),
        .I4(ir[12]),
        .O(\badr[15]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8B8B8B8)) 
    \badr[15]_INST_0_i_81 
       (.I0(\badr[15]_INST_0_i_65_1 ),
        .I1(\badr[15]_INST_0_i_90_n_0 ),
        .I2(ir[12]),
        .I3(ir[10]),
        .I4(\badr[15]_INST_0_i_86_n_0 ),
        .I5(\badr[15]_INST_0_i_117_n_0 ),
        .O(\badr[15]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF2AAA)) 
    \badr[15]_INST_0_i_82 
       (.I0(\badr[15]_INST_0_i_65_0 ),
        .I1(\ccmd[4]_INST_0_i_13_n_0 ),
        .I2(\sr[13]_i_8_n_0 ),
        .I3(\badr[15]_INST_0_i_119_n_0 ),
        .I4(Q[0]),
        .I5(\badr[15]_INST_0_i_120_n_0 ),
        .O(\badr[15]_INST_0_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \badr[15]_INST_0_i_83 
       (.I0(\badr[15]_INST_0_i_121_n_0 ),
        .I1(\fch_irq_lev[1]_i_5_n_0 ),
        .I2(\stat[1]_i_8_n_0 ),
        .I3(Q[1]),
        .I4(ir[1]),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00004440)) 
    \badr[15]_INST_0_i_84 
       (.I0(\bdatw[15]_INST_0_i_105_n_0 ),
        .I1(\fch_irq_lev[1]_i_5_n_0 ),
        .I2(Q[0]),
        .I3(crdy),
        .I4(\bdatw[15]_INST_0_i_104_n_0 ),
        .I5(\badr[15]_INST_0_i_122_n_0 ),
        .O(\badr[15]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45444444)) 
    \badr[15]_INST_0_i_85 
       (.I0(\badr[15]_INST_0_i_123_n_0 ),
        .I1(\stat[2]_i_6_n_0 ),
        .I2(Q[0]),
        .I3(\ccmd[2]_INST_0_i_13_n_0 ),
        .I4(\iv[15]_i_69_n_0 ),
        .I5(\badr[15]_INST_0_i_124_n_0 ),
        .O(\badr[15]_INST_0_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h2A003BFF2AFF3BFF)) 
    \badr[15]_INST_0_i_86 
       (.I0(\badr[15]_INST_0_i_125_n_0 ),
        .I1(rst_n_fl_reg_1),
        .I2(\badr[15]_INST_0_i_126_n_0 ),
        .I3(ir[8]),
        .I4(crdy),
        .I5(\badr[15]_INST_0_i_57_0 ),
        .O(\badr[15]_INST_0_i_86_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_87 
       (.I0(ir[10]),
        .I1(ir[11]),
        .O(\badr[15]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h00F000F200F00000)) 
    \badr[15]_INST_0_i_88 
       (.I0(\badr[15]_INST_0_i_128_n_0 ),
        .I1(ctl_fetch_inferred_i_9_n_0),
        .I2(\badr[15]_INST_0_i_67_n_0 ),
        .I3(ir[15]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\badr[15]_INST_0_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAABAAA)) 
    \badr[15]_INST_0_i_89 
       (.I0(\iv[15]_i_79_n_0 ),
        .I1(\bdatw[9]_INST_0_i_32_n_0 ),
        .I2(\sr[13]_i_8_n_0 ),
        .I3(fch_irq_req),
        .I4(\badr[15]_INST_0_i_129_n_0 ),
        .I5(\badr[15]_INST_0_i_130_n_0 ),
        .O(\badr[15]_INST_0_i_89_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \badr[15]_INST_0_i_90 
       (.I0(ir[15]),
        .I1(ir[14]),
        .O(\badr[15]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h5D005D5D00000000)) 
    \badr[15]_INST_0_i_91 
       (.I0(\bdatw[15]_INST_0_i_129_n_0 ),
        .I1(\badr[15]_INST_0_i_131_n_0 ),
        .I2(\badr[15]_INST_0_i_132_n_0 ),
        .I3(\badr[15]_INST_0_i_133_n_0 ),
        .I4(\badr[15]_INST_0_i_134_n_0 ),
        .I5(\stat[2]_i_4_n_0 ),
        .O(\badr[15]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hFF20FF20FFFFFF20)) 
    \badr[15]_INST_0_i_92 
       (.I0(Q[1]),
        .I1(ir[15]),
        .I2(\badr[15]_INST_0_i_67_n_0 ),
        .I3(\badr[15]_INST_0_i_135_n_0 ),
        .I4(\bdatw[15]_INST_0_i_78_n_0 ),
        .I5(\badr[15]_INST_0_i_136_n_0 ),
        .O(\badr[15]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2000000)) 
    \badr[15]_INST_0_i_93 
       (.I0(ir[11]),
        .I1(ir[14]),
        .I2(\bcmd[2]_INST_0_i_2_n_0 ),
        .I3(ir[15]),
        .I4(ir[9]),
        .I5(\badr[15]_INST_0_i_137_n_0 ),
        .O(\badr[15]_INST_0_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AAAAFFFFFFFF)) 
    \badr[15]_INST_0_i_94 
       (.I0(\badr[15]_INST_0_i_138_n_0 ),
        .I1(\badr[15]_INST_0_i_139_n_0 ),
        .I2(ir[10]),
        .I3(\badr[15]_INST_0_i_140_n_0 ),
        .I4(ir[11]),
        .I5(ir[12]),
        .O(\badr[15]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h55555404FFFFFFFF)) 
    \badr[15]_INST_0_i_95 
       (.I0(\badr[15]_INST_0_i_55_n_0 ),
        .I1(Q[0]),
        .I2(ir[14]),
        .I3(\badr[15]_INST_0_i_97_n_0 ),
        .I4(\badr[15]_INST_0_i_141_n_0 ),
        .I5(\ccmd[4]_INST_0_i_21_n_0 ),
        .O(\badr[15]_INST_0_i_95_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \badr[15]_INST_0_i_96 
       (.I0(ir[11]),
        .I1(Q[1]),
        .O(\badr[15]_INST_0_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002FFFFFF)) 
    \badr[15]_INST_0_i_97 
       (.I0(\badr[15]_INST_0_i_115_n_0 ),
        .I1(\badr[15]_INST_0_i_142_n_0 ),
        .I2(\badr[15]_INST_0_i_112_n_0 ),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(\badr[15]_INST_0_i_76_n_0 ),
        .O(\badr[15]_INST_0_i_97_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \badr[15]_INST_0_i_98 
       (.I0(ir[10]),
        .I1(ir[8]),
        .O(\badr[15]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'h020200000202C000)) 
    \badr[15]_INST_0_i_99 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(ir[2]),
        .I4(ir[10]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_99_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[1]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[1]),
        .O(badr[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[1]_INST_0_i_13 
       (.I0(\rgf/abus_sel_cr [0]),
        .I1(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \badr[1]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(sp_dec_0[0]),
        .I4(\sp_reg[15]_0 [1]),
        .I5(\rgf/abus_sel_cr [2]),
        .O(\sp_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[1]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [1]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [1]),
        .I4(\pc_reg[15]_0 [1]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[1] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[2]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[2]),
        .O(badr[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[2]_INST_0_i_13 
       (.I0(\rgf/abus_sel_cr [0]),
        .I1(\badr[15]_INST_0_i_2 [2]),
        .O(\sr_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \badr[2]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(sp_dec_0[1]),
        .I4(\sp_reg[15]_0 [2]),
        .I5(\rgf/abus_sel_cr [2]),
        .O(\sp_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[2]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [2]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [2]),
        .I4(\pc_reg[15]_0 [2]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[2] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[3]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[3]),
        .O(badr[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[3]_INST_0_i_13 
       (.I0(\rgf/abus_sel_cr [0]),
        .I1(\badr[15]_INST_0_i_2 [3]),
        .O(\sr_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \badr[3]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(sp_dec_0[2]),
        .I4(\sp_reg[15]_0 [3]),
        .I5(\rgf/abus_sel_cr [2]),
        .O(\sp_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[3]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [3]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [3]),
        .I4(\pc_reg[15]_0 [3]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[3] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[4]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[4]),
        .O(badr[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[4]_INST_0_i_13 
       (.I0(\rgf/abus_sel_cr [0]),
        .I1(\badr[15]_INST_0_i_2 [4]),
        .O(\sr_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \badr[4]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(sp_dec_0[3]),
        .I4(\sp_reg[15]_0 [4]),
        .I5(\rgf/abus_sel_cr [2]),
        .O(\sp_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[4]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [4]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [4]),
        .I4(\pc_reg[15]_0 [4]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[4] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[5]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[5]),
        .O(badr[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[5]_INST_0_i_13 
       (.I0(\rgf/abus_sel_cr [0]),
        .I1(\badr[15]_INST_0_i_2 [5]),
        .O(\sr_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \badr[5]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(sp_dec_0[4]),
        .I4(\sp_reg[15]_0 [5]),
        .I5(\rgf/abus_sel_cr [2]),
        .O(\sp_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[5]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [5]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [5]),
        .I4(\pc_reg[15]_0 [5]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[5] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[6]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[6]),
        .O(badr[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[6]_INST_0_i_13 
       (.I0(\rgf/abus_sel_cr [0]),
        .I1(\badr[15]_INST_0_i_2 [6]),
        .O(\sr_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \badr[6]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(sp_dec_0[5]),
        .I4(\sp_reg[15]_0 [6]),
        .I5(\rgf/abus_sel_cr [2]),
        .O(\sp_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[6]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [6]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [6]),
        .I4(\pc_reg[15]_0 [6]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[6] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[7]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[7]),
        .O(badr[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[7]_INST_0_i_13 
       (.I0(\rgf/abus_sel_cr [0]),
        .I1(\badr[15]_INST_0_i_2 [7]),
        .O(\sr_reg[7] ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \badr[7]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(sp_dec_0[6]),
        .I4(\sp_reg[15]_0 [7]),
        .I5(\rgf/abus_sel_cr [2]),
        .O(\sp_reg[7] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[7]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [7]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [7]),
        .I4(\pc_reg[15]_0 [7]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[7] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[8]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[8]),
        .O(badr[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[8]_INST_0_i_13 
       (.I0(\rgf/abus_sel_cr [0]),
        .I1(\badr[15]_INST_0_i_2 [8]),
        .O(\sr_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \badr[8]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(sp_dec_0[7]),
        .I4(\sp_reg[15]_0 [8]),
        .I5(\rgf/abus_sel_cr [2]),
        .O(\sp_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[8]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [8]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [8]),
        .I4(\pc_reg[15]_0 [8]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[8] ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[9]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[9]),
        .O(badr[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[9]_INST_0_i_13 
       (.I0(\rgf/abus_sel_cr [0]),
        .I1(\badr[15]_INST_0_i_2 [9]),
        .O(\sr_reg[9] ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \badr[9]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(sp_dec_0[8]),
        .I4(\sp_reg[15]_0 [9]),
        .I5(\rgf/abus_sel_cr [2]),
        .O(\sp_reg[9] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[9]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [9]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [9]),
        .I4(\pc_reg[15]_0 [9]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\tr_reg[9] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \badrx[15]_INST_0_i_1 
       (.I0(\badrx[15]_INST_0_i_2_n_0 ),
        .I1(\read_cyc_reg[0] ),
        .I2(ir[11]),
        .I3(ir[14]),
        .I4(\badrx[15]_INST_0_i_4_n_0 ),
        .I5(\badrx[15]_INST_0_i_5_n_0 ),
        .O(crdy_0));
  LUT3 #(
    .INIT(8'h1F)) 
    \badrx[15]_INST_0_i_2 
       (.I0(rst_n_fl_reg_1),
        .I1(crdy),
        .I2(ir[8]),
        .O(\badrx[15]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \badrx[15]_INST_0_i_4 
       (.I0(ir[10]),
        .I1(ir[9]),
        .O(\badrx[15]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \badrx[15]_INST_0_i_5 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(Q[1]),
        .I3(ir[15]),
        .O(\badrx[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \badrx[15]_INST_0_i_6 
       (.I0(ir[15]),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(rst_n_fl_reg_1));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[0]_INST_0 
       (.I0(\sp_reg[0] ),
        .I1(\stat_reg[2]_10 ),
        .O(bbus_o[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[10]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .O(bbus_o[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[11]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .O(bbus_o[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[12]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .O(bbus_o[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[13]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .O(bbus_o[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[14]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\bdatw[14]_INST_0_i_1_n_0 ),
        .O(bbus_o[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[15]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .O(bbus_o[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[1]_INST_0 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[2]_10 ),
        .O(bbus_o[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[2]_INST_0 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[2]_10 ),
        .O(bbus_o[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[3]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bbus_o[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[4]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(bbus_o[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[5]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bbus_o[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[6]_INST_0 
       (.I0(\bdatw[14]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[2]_10 ),
        .O(bbus_o[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[7]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bbus_o[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[8]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .O(bbus_o[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[9]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .O(bbus_o[9]));
  LUT6 #(
    .INIT(64'h2020202020202023)) 
    \bcmd[0]_INST_0 
       (.I0(\bcmd[0]_INST_0_i_1_n_0 ),
        .I1(\bcmd[0]_INST_0_i_2_n_0 ),
        .I2(ir[12]),
        .I3(\bcmd[0]_INST_0_i_3_n_0 ),
        .I4(ir[2]),
        .I5(\bcmd[0]_INST_0_i_4_n_0 ),
        .O(\stat_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h8080008000800080)) 
    \bcmd[0]_INST_0_i_1 
       (.I0(\bcmd[0]_INST_0_i_5_n_0 ),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[6]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\bcmd[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0040)) 
    \bcmd[0]_INST_0_i_2 
       (.I0(\bcmd[0]_INST_0_i_6_n_0 ),
        .I1(ir[1]),
        .I2(Q[0]),
        .I3(ir[4]),
        .I4(\bcmd[0]_INST_0_i_7_n_0 ),
        .I5(\bcmd[0]_INST_0_i_8_n_0 ),
        .O(\bcmd[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bcmd[0]_INST_0_i_3 
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(ir[10]),
        .I3(ir[6]),
        .I4(ir[11]),
        .I5(ir[9]),
        .O(\bcmd[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[0]_INST_0_i_4 
       (.I0(ir[5]),
        .I1(ir[4]),
        .O(\bcmd[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000088E6660000)) 
    \bcmd[0]_INST_0_i_5 
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ir[9]),
        .I5(Q[0]),
        .O(\bcmd[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bcmd[0]_INST_0_i_6 
       (.I0(ir[8]),
        .I1(ir[5]),
        .I2(ir[7]),
        .I3(ir[3]),
        .I4(ir[2]),
        .I5(ir[0]),
        .O(\bcmd[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2AFF7FFFFFFF00FF)) 
    \bcmd[0]_INST_0_i_7 
       (.I0(ir[6]),
        .I1(ir[3]),
        .I2(ir[7]),
        .I3(\bcmd[1] ),
        .I4(ir[9]),
        .I5(ir[8]),
        .O(\bcmd[0]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000FFD)) 
    \bcmd[0]_INST_0_i_8 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(ir[7]),
        .I3(ir[10]),
        .I4(ir[8]),
        .O(\bcmd[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA02AAAAAAAA)) 
    \bcmd[1]_INST_0 
       (.I0(\bcmd[1] ),
        .I1(Q[0]),
        .I2(\bcmd[1]_INST_0_i_2_n_0 ),
        .I3(\bcmd[1]_INST_0_i_3_n_0 ),
        .I4(\bcmd[1]_INST_0_i_4_n_0 ),
        .I5(\bcmd[1]_INST_0_i_5_n_0 ),
        .O(\stat_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bcmd[1]_INST_0_i_10 
       (.I0(ir[14]),
        .I1(ir[13]),
        .O(\bcmd[1]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bcmd[1]_INST_0_i_11 
       (.I0(ir[3]),
        .I1(ir[5]),
        .O(\bcmd[1]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bcmd[1]_INST_0_i_2 
       (.I0(ir[11]),
        .I1(ir[12]),
        .O(\bcmd[1]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \bcmd[1]_INST_0_i_3 
       (.I0(fch_irq_req),
        .I1(Q[0]),
        .I2(ir[12]),
        .I3(ir[11]),
        .O(\bcmd[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFEFFFFFFFFEFF)) 
    \bcmd[1]_INST_0_i_4 
       (.I0(\bcmd[1]_INST_0_i_6_n_0 ),
        .I1(\bcmd[1]_INST_0_i_7_n_0 ),
        .I2(ir[8]),
        .I3(rst_n_fl_reg_0),
        .I4(ir[1]),
        .I5(ir[7]),
        .O(\bcmd[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFBFFFFFFF)) 
    \bcmd[1]_INST_0_i_5 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(\bcmd[1]_INST_0_i_10_n_0 ),
        .I2(ir[12]),
        .I3(ir[6]),
        .I4(Q[0]),
        .I5(ir[9]),
        .O(\bcmd[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7EFFFFFFFFFFFF7E)) 
    \bcmd[1]_INST_0_i_6 
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(ir[9]),
        .I3(ir[12]),
        .I4(ir[13]),
        .I5(ir[14]),
        .O(\bcmd[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3D3DFFFFFFFFFF3D)) 
    \bcmd[1]_INST_0_i_7 
       (.I0(ir[0]),
        .I1(ir[3]),
        .I2(ir[7]),
        .I3(ir[2]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\bcmd[1]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bcmd[1]_INST_0_i_8 
       (.I0(ir[5]),
        .I1(ir[4]),
        .I2(ir[6]),
        .O(rst_n_fl_reg_0));
  LUT6 #(
    .INIT(64'hB00FFFFFFFFF3FFF)) 
    \bcmd[1]_INST_0_i_9 
       (.I0(\bcmd[1]_INST_0_i_11_n_0 ),
        .I1(ir[7]),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\bcmd[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \bcmd[2]_INST_0 
       (.I0(\bcmd[2]_INST_0_i_1_n_0 ),
        .I1(ir[11]),
        .I2(ir[10]),
        .I3(\bcmd[2]_INST_0_i_2_n_0 ),
        .I4(Q[1]),
        .I5(ir[15]),
        .O(\stat_reg[1] ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \bcmd[2]_INST_0_i_1 
       (.I0(ir[9]),
        .I1(Q[0]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(Q[2]),
        .I5(ir[14]),
        .O(\bcmd[2]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bcmd[2]_INST_0_i_2 
       (.I0(ir[12]),
        .I1(ir[13]),
        .O(\bcmd[2]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[0]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\sp_reg[0] ),
        .O(bdatw[0]));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[10]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\stat_reg[1] ),
        .I2(\bdatw[10]_INST_0_i_1_n_0 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[10]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bdatw[10]_INST_0_i_1 
       (.I0(\bdatw[10]_INST_0_i_3_n_0 ),
        .I1(\bdatw[10]_INST_0_i_4_n_0 ),
        .I2(bdatw_10_sn_1),
        .I3(\rgf/bbus_b02 [10]),
        .I4(\bdatw[10]_INST_0_i_7_n_0 ),
        .I5(\bdatw[10]_INST_0_i_8_n_0 ),
        .O(\bdatw[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[10]_INST_0_i_10 
       (.I0(\bdatw[10]_INST_0_i_2_0 ),
        .I1(\bdatw[10]_INST_0_i_22_n_0 ),
        .I2(\bdatw[10]_INST_0_i_23_n_0 ),
        .I3(\bdatw[10]_INST_0_i_24_n_0 ),
        .I4(\bdatw[10]_INST_0_i_25_n_0 ),
        .I5(\bdatw[10]_INST_0_i_2_1 ),
        .O(\bdatw[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2200202000000000)) 
    \bdatw[10]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(\sp_reg[15]_0 [2]),
        .I3(\bdatw[15]_INST_0_i_1_4 [2]),
        .I4(ctl_selb_rn[0]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[10]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_13 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [2]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[1]),
        .I4(\pc_reg[15]_0 [2]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[10]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h221DEE1DFFFFFFFF)) 
    \bdatw[10]_INST_0_i_14 
       (.I0(\bdatw[10]_INST_0_i_33_n_0 ),
        .I1(\bdatw[15]_INST_0_i_18_n_0 ),
        .I2(ir[2]),
        .I3(ctl_selb_0),
        .I4(ir[1]),
        .I5(\bdatw[15]_INST_0_i_15_n_0 ),
        .O(\bdatw[10]_INST_0_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[10]_INST_0_i_15 
       (.I0(ir[0]),
        .I1(ir[2]),
        .O(\bdatw[10]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[10]_INST_0_i_16 
       (.I0(ir[3]),
        .I1(ir[1]),
        .O(\bdatw[10]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[10]_INST_0_i_19 
       (.I0(\bdatw[10]_INST_0_i_40_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_6_0 [5]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_6_1 [5]),
        .O(\bdatw[10]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[10]_INST_0_i_2 
       (.I0(\bdatw[10]_INST_0_i_9_n_0 ),
        .I1(\bdatw[10]_INST_0_i_10_n_0 ),
        .I2(\bdatw[12] [2]),
        .I3(\bdatw[10]_INST_0_i_12_n_0 ),
        .I4(\bdatw[10]_INST_0_i_13_n_0 ),
        .I5(\bdatw[10]_INST_0_i_14_n_0 ),
        .O(\bdatw[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[10]_INST_0_i_22 
       (.I0(\bdatw[10]_INST_0_i_45_n_0 ),
        .I1(gr3_bus1__0_12),
        .I2(\bdatw[12]_INST_0_i_11_4 [2]),
        .I3(gr6_bus1__0_13),
        .I4(\bdatw[12]_INST_0_i_11_5 [2]),
        .I5(\bdatw[10]_INST_0_i_46_n_0 ),
        .O(\bdatw[10]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[10]_INST_0_i_23 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[0]),
        .I2(\bdatw[15]_INST_0_i_28_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\badr[15]_INST_0_i_2 [2]),
        .O(\bdatw[10]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[10]_INST_0_i_24 
       (.I0(gr6_bus1__0_8),
        .I1(\bdatw[12]_INST_0_i_11_2 [2]),
        .I2(\bdatw[10]_INST_0_i_47_n_0 ),
        .I3(\bdatw[10]_INST_0_i_48_n_0 ),
        .I4(gr7_bus1__0_9),
        .I5(\bdatw[12]_INST_0_i_11_3 [2]),
        .O(\bdatw[10]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[10]_INST_0_i_25 
       (.I0(gr2_bus1__0_4),
        .I1(\bdatw[12]_INST_0_i_11_0 [2]),
        .I2(\bdatw[10]_INST_0_i_49_n_0 ),
        .I3(\bdatw[10]_INST_0_i_50_n_0 ),
        .I4(gr3_bus1__0_5),
        .I5(\bdatw[12]_INST_0_i_11_1 [2]),
        .O(\bdatw[10]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_28 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_24_0 [2]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_24_1 [2]),
        .I4(\bdatw[15]_INST_0_i_24_2 [2]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hAA2A0080002A0080)) 
    \bdatw[10]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[10]_INST_0_i_15_n_0 ),
        .I2(\bdatw[10]_INST_0_i_16_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(ctl_selb_0),
        .I5(ir[9]),
        .O(\bdatw[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[10]_INST_0_i_30 
       (.I0(gr6_bus1__0),
        .I1(\bdatw[12]_INST_0_i_12_1 [2]),
        .I2(\bdatw[10]_INST_0_i_51_n_0 ),
        .I3(\bdatw[10]_INST_0_i_52_n_0 ),
        .I4(gr7_bus1__0),
        .I5(\bdatw[12]_INST_0_i_12_2 [2]),
        .O(\grn_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[10]_INST_0_i_31 
       (.I0(gr2_bus1__0),
        .I1(\bdatw[12]_INST_0_i_12 [2]),
        .I2(\bdatw[10]_INST_0_i_53_n_0 ),
        .I3(\bdatw[10]_INST_0_i_54_n_0 ),
        .I4(gr3_bus1__0),
        .I5(\bdatw[12]_INST_0_i_12_0 [2]),
        .O(\grn_reg[2] ));
  LUT4 #(
    .INIT(16'h0100)) 
    \bdatw[10]_INST_0_i_33 
       (.I0(ir[2]),
        .I1(ir[0]),
        .I2(ir[3]),
        .I3(ir[1]),
        .O(\bdatw[10]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[10]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .I3(eir[10]),
        .O(\bdatw[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_40 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_24_0 [10]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_24_1 [10]),
        .I4(\bdatw[15]_INST_0_i_24_2 [10]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_45 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_22_0 [2]),
        .O(\bdatw[10]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_46 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_22_1 [2]),
        .O(\bdatw[10]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_47 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_24_0 [2]),
        .O(\bdatw[10]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[10]_INST_0_i_48 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_24_1 [2]),
        .O(\bdatw[10]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[10]_INST_0_i_49 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_25_0 [2]),
        .O(\bdatw[10]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_50 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_25_1 [2]),
        .O(\bdatw[10]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_51 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_30_0 [2]),
        .O(\bdatw[10]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[10]_INST_0_i_52 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_30_1 [2]),
        .O(\bdatw[10]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[10]_INST_0_i_53 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_31_0 [2]),
        .O(\bdatw[10]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_54 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_31_1 [2]),
        .O(\bdatw[10]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[10]_INST_0_i_6 
       (.I0(\bdatw[10]_INST_0_i_19_n_0 ),
        .I1(\bdatw[10]_INST_0_i_1_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [5]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_1_1 [5]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [10]));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \bdatw[10]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .I4(\sp_reg[15]_0 [10]),
        .I5(\bdatw[15]_INST_0_i_1_4 [10]),
        .O(\bdatw[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_8 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [10]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[9]),
        .I4(\pc_reg[15]_0 [10]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[10]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[10]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .I3(eir[2]),
        .O(\bdatw[10]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[11]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\stat_reg[1] ),
        .I2(\bdatw[11]_INST_0_i_1_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bdatw[11]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bdatw[11]_INST_0_i_1 
       (.I0(\bdatw[11]_INST_0_i_3_n_0 ),
        .I1(\bdatw[11]_INST_0_i_4_n_0 ),
        .I2(bdatw_11_sn_1),
        .I3(\rgf/bbus_b02 [11]),
        .I4(\bdatw[11]_INST_0_i_7_n_0 ),
        .I5(\bdatw[11]_INST_0_i_8_n_0 ),
        .O(\bdatw[11]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[11]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .I3(eir[3]),
        .O(\bdatw[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[11]_INST_0_i_11 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\bdatw[11]_INST_0_i_22_n_0 ),
        .I2(\bdatw[11]_INST_0_i_23_n_0 ),
        .I3(\bdatw[11]_INST_0_i_24_n_0 ),
        .I4(\bdatw[11]_INST_0_i_25_n_0 ),
        .I5(\bdatw[11]_INST_0_i_2_1 ),
        .O(\bdatw[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2200202000000000)) 
    \bdatw[11]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(\sp_reg[15]_0 [3]),
        .I3(\bdatw[15]_INST_0_i_1_4 [3]),
        .I4(ctl_selb_rn[0]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[11]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_14 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [3]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[2]),
        .I4(\pc_reg[15]_0 [3]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[11]_INST_0_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[11]_INST_0_i_15 
       (.I0(ir[1]),
        .I1(ir[2]),
        .O(\bdatw[11]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[11]_INST_0_i_18 
       (.I0(\bdatw[11]_INST_0_i_39_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_6_0 [6]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_6_1 [6]),
        .O(\bdatw[11]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatw[11]_INST_0_i_2 
       (.I0(\bdatw[11]_INST_0_i_9_n_0 ),
        .I1(\bdatw[11]_INST_0_i_10_n_0 ),
        .I2(\bdatw[11]_INST_0_i_11_n_0 ),
        .I3(\bdatw[12] [3]),
        .I4(\bdatw[11]_INST_0_i_13_n_0 ),
        .I5(\bdatw[11]_INST_0_i_14_n_0 ),
        .O(\bdatw[11]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[11]_INST_0_i_20 
       (.I0(ir[0]),
        .I1(ir[1]),
        .O(\bdatw[11]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[11]_INST_0_i_22 
       (.I0(\bdatw[11]_INST_0_i_44_n_0 ),
        .I1(gr3_bus1__0_12),
        .I2(\bdatw[12]_INST_0_i_11_4 [3]),
        .I3(gr6_bus1__0_13),
        .I4(\bdatw[12]_INST_0_i_11_5 [3]),
        .I5(\bdatw[11]_INST_0_i_45_n_0 ),
        .O(\bdatw[11]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[11]_INST_0_i_23 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[0]),
        .I2(\bdatw[15]_INST_0_i_28_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\badr[15]_INST_0_i_2 [3]),
        .O(\bdatw[11]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[11]_INST_0_i_24 
       (.I0(gr6_bus1__0_8),
        .I1(\bdatw[12]_INST_0_i_11_2 [3]),
        .I2(\bdatw[11]_INST_0_i_46_n_0 ),
        .I3(\bdatw[11]_INST_0_i_47_n_0 ),
        .I4(gr7_bus1__0_9),
        .I5(\bdatw[12]_INST_0_i_11_3 [3]),
        .O(\bdatw[11]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[11]_INST_0_i_25 
       (.I0(gr2_bus1__0_4),
        .I1(\bdatw[12]_INST_0_i_11_0 [3]),
        .I2(\bdatw[11]_INST_0_i_48_n_0 ),
        .I3(\bdatw[11]_INST_0_i_49_n_0 ),
        .I4(gr3_bus1__0_5),
        .I5(\bdatw[12]_INST_0_i_11_1 [3]),
        .O(\bdatw[11]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_28 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_24_0 [3]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_24_1 [3]),
        .I4(\bdatw[15]_INST_0_i_24_2 [3]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hAA2A0080002A0080)) 
    \bdatw[11]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_17_n_0 ),
        .I2(\bdatw[11]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(ctl_selb_0),
        .I5(ir[10]),
        .O(\bdatw[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[11]_INST_0_i_30 
       (.I0(gr6_bus1__0),
        .I1(\bdatw[12]_INST_0_i_12_1 [3]),
        .I2(\bdatw[11]_INST_0_i_50_n_0 ),
        .I3(\bdatw[11]_INST_0_i_51_n_0 ),
        .I4(gr7_bus1__0),
        .I5(\bdatw[12]_INST_0_i_12_2 [3]),
        .O(\grn_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[11]_INST_0_i_31 
       (.I0(gr2_bus1__0),
        .I1(\bdatw[12]_INST_0_i_12 [3]),
        .I2(\bdatw[11]_INST_0_i_52_n_0 ),
        .I3(\bdatw[11]_INST_0_i_53_n_0 ),
        .I4(gr3_bus1__0),
        .I5(\bdatw[12]_INST_0_i_12_0 [3]),
        .O(\grn_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_39 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_24_0 [11]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_24_1 [11]),
        .I4(\bdatw[15]_INST_0_i_24_2 [11]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[11]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .I3(eir[11]),
        .O(\bdatw[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_44 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_22_0 [3]),
        .O(\bdatw[11]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_45 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_22_1 [3]),
        .O(\bdatw[11]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_46 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_24_0 [3]),
        .O(\bdatw[11]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[11]_INST_0_i_47 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_24_1 [3]),
        .O(\bdatw[11]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[11]_INST_0_i_48 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_25_0 [3]),
        .O(\bdatw[11]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_49 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_25_1 [3]),
        .O(\bdatw[11]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_50 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_30_0 [3]),
        .O(\bdatw[11]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[11]_INST_0_i_51 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_30_1 [3]),
        .O(\bdatw[11]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[11]_INST_0_i_52 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_31_0 [3]),
        .O(\bdatw[11]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_53 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_31_1 [3]),
        .O(\bdatw[11]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[11]_INST_0_i_6 
       (.I0(\bdatw[11]_INST_0_i_18_n_0 ),
        .I1(\bdatw[11]_INST_0_i_1_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [6]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_1_1 [6]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [11]));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \bdatw[11]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .I4(\sp_reg[15]_0 [11]),
        .I5(\bdatw[15]_INST_0_i_1_4 [11]),
        .O(\bdatw[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_8 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [11]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[10]),
        .I4(\pc_reg[15]_0 [11]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F0233FDFFFFFFFF)) 
    \bdatw[11]_INST_0_i_9 
       (.I0(\bdatw[11]_INST_0_i_20_n_0 ),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[15]_INST_0_i_15_n_0 ),
        .O(\bdatw[11]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[12]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\stat_reg[1] ),
        .I2(\bdatw[12]_INST_0_i_1_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(bdatw[12]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bdatw[12]_INST_0_i_1 
       (.I0(\bdatw[12]_INST_0_i_3_n_0 ),
        .I1(\bdatw[12]_INST_0_i_4_n_0 ),
        .I2(\bdatw[12]_0 ),
        .I3(\rgf/bbus_b02 [12]),
        .I4(\bdatw[12]_INST_0_i_7_n_0 ),
        .I5(\bdatw[12]_INST_0_i_8_n_0 ),
        .O(\bdatw[12]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[12]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .I3(eir[4]),
        .O(\bdatw[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[12]_INST_0_i_11 
       (.I0(\bdatw[12]_INST_0_i_2_2 ),
        .I1(\bdatw[12]_INST_0_i_22_n_0 ),
        .I2(\bdatw[12]_INST_0_i_23_n_0 ),
        .I3(\bdatw[12]_INST_0_i_24_n_0 ),
        .I4(\bdatw[12]_INST_0_i_25_n_0 ),
        .I5(\bdatw[12]_INST_0_i_2_3 ),
        .O(\bdatw[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2200202000000000)) 
    \bdatw[12]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(\sp_reg[15]_0 [4]),
        .I3(\bdatw[15]_INST_0_i_1_4 [4]),
        .I4(ctl_selb_rn[0]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[12]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_14 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [4]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[3]),
        .I4(\pc_reg[15]_0 [4]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[12]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \bdatw[12]_INST_0_i_15 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(ir[2]),
        .O(\bdatw[12]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[12]_INST_0_i_18 
       (.I0(\bdatw[12]_INST_0_i_39_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_6_0 [7]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_6_1 [7]),
        .O(\bdatw[12]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatw[12]_INST_0_i_2 
       (.I0(\bdatw[12]_INST_0_i_9_n_0 ),
        .I1(\bdatw[12]_INST_0_i_10_n_0 ),
        .I2(\bdatw[12]_INST_0_i_11_n_0 ),
        .I3(\bdatw[12] [4]),
        .I4(\bdatw[12]_INST_0_i_13_n_0 ),
        .I5(\bdatw[12]_INST_0_i_14_n_0 ),
        .O(\bdatw[12]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \bdatw[12]_INST_0_i_20 
       (.I0(ir[0]),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[2]),
        .O(\bdatw[12]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[12]_INST_0_i_22 
       (.I0(\bdatw[12]_INST_0_i_46_n_0 ),
        .I1(gr3_bus1__0_12),
        .I2(\bdatw[12]_INST_0_i_11_4 [4]),
        .I3(gr6_bus1__0_13),
        .I4(\bdatw[12]_INST_0_i_11_5 [4]),
        .I5(\bdatw[12]_INST_0_i_48_n_0 ),
        .O(\bdatw[12]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[12]_INST_0_i_23 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[0]),
        .I2(\bdatw[15]_INST_0_i_28_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\badr[15]_INST_0_i_2 [4]),
        .O(\bdatw[12]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[12]_INST_0_i_24 
       (.I0(gr6_bus1__0_8),
        .I1(\bdatw[12]_INST_0_i_11_2 [4]),
        .I2(\bdatw[12]_INST_0_i_50_n_0 ),
        .I3(\bdatw[12]_INST_0_i_51_n_0 ),
        .I4(gr7_bus1__0_9),
        .I5(\bdatw[12]_INST_0_i_11_3 [4]),
        .O(\bdatw[12]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[12]_INST_0_i_25 
       (.I0(gr2_bus1__0_4),
        .I1(\bdatw[12]_INST_0_i_11_0 [4]),
        .I2(\bdatw[12]_INST_0_i_54_n_0 ),
        .I3(\bdatw[12]_INST_0_i_55_n_0 ),
        .I4(gr3_bus1__0_5),
        .I5(\bdatw[12]_INST_0_i_11_1 [4]),
        .O(\bdatw[12]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_28 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_24_0 [4]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_24_1 [4]),
        .I4(\bdatw[15]_INST_0_i_24_2 [4]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[4]_1 ));
  LUT5 #(
    .INIT(32'hA2080208)) 
    \bdatw[12]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[12]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_0),
        .I4(ir[10]),
        .O(\bdatw[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[12]_INST_0_i_30 
       (.I0(gr6_bus1__0),
        .I1(\bdatw[12]_INST_0_i_12_1 [4]),
        .I2(\bdatw[12]_INST_0_i_62_n_0 ),
        .I3(\bdatw[12]_INST_0_i_63_n_0 ),
        .I4(gr7_bus1__0),
        .I5(\bdatw[12]_INST_0_i_12_2 [4]),
        .O(\grn_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[12]_INST_0_i_31 
       (.I0(gr2_bus1__0),
        .I1(\bdatw[12]_INST_0_i_12 [4]),
        .I2(\bdatw[12]_INST_0_i_66_n_0 ),
        .I3(\bdatw[12]_INST_0_i_67_n_0 ),
        .I4(gr3_bus1__0),
        .I5(\bdatw[12]_INST_0_i_12_0 [4]),
        .O(\grn_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_39 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_24_0 [12]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_24_1 [12]),
        .I4(\bdatw[15]_INST_0_i_24_2 [12]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[12]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .I3(eir[12]),
        .O(\bdatw[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_44 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[15]_INST_0_i_71_n_0 ),
        .I5(bank_sel[3]),
        .O(gr1_bus1__0_16));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_45 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[15]_INST_0_i_124_n_0 ),
        .I5(bank_sel[3]),
        .O(gr2_bus1__0_17));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_46 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_22_0 [4]),
        .O(\bdatw[12]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_47 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_124_n_0 ),
        .I5(bank_sel[3]),
        .O(gr6_bus1__0_13));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_48 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_22_1 [4]),
        .O(\bdatw[12]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_49 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_124_n_0 ),
        .I5(bank_sel[1]),
        .O(gr6_bus1__0_8));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_50 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_24_0 [4]),
        .O(\bdatw[12]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_51 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_24_1 [4]),
        .O(\bdatw[12]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_52 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_61_n_0 ),
        .I5(bank_sel[1]),
        .O(gr7_bus1__0_9));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_53 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[15]_INST_0_i_124_n_0 ),
        .I5(bank_sel[1]),
        .O(gr2_bus1__0_4));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_54 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_25_0 [4]),
        .O(\bdatw[12]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_55 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_25_1 [4]),
        .O(\bdatw[12]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_56 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[15]_INST_0_i_61_n_0 ),
        .I5(bank_sel[1]),
        .O(gr3_bus1__0_5));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_57 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_61_n_0 ),
        .I5(bank_sel[2]),
        .O(\rgf/bank02/bbuso2l/gr7_bus1__0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_58 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_124_n_0 ),
        .I5(bank_sel[2]),
        .O(\rgf/bank02/bbuso2l/gr6_bus1__0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_59 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[15]_INST_0_i_71_n_0 ),
        .I5(bank_sel[2]),
        .O(\rgf/bank02/bbuso2l/gr1_bus1__0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[12]_INST_0_i_6 
       (.I0(\bdatw[12]_INST_0_i_18_n_0 ),
        .I1(\bdatw[12]_INST_0_i_1_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [7]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_1_1 [7]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [12]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \bdatw[12]_INST_0_i_60 
       (.I0(ctl_selb_rn[0]),
        .I1(ctl_selb_rn[1]),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(ctl_selb_0),
        .O(\stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_61 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_124_n_0 ),
        .I5(bank_sel[0]),
        .O(gr6_bus1__0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_62 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_30_0 [4]),
        .O(\bdatw[12]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_63 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_30_1 [4]),
        .O(\bdatw[12]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_64 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_61_n_0 ),
        .I5(bank_sel[0]),
        .O(gr7_bus1__0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_65 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[15]_INST_0_i_124_n_0 ),
        .I5(bank_sel[0]),
        .O(gr2_bus1__0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_66 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_31_0 [4]),
        .O(\bdatw[12]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_67 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_31_1 [4]),
        .O(\bdatw[12]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_68 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[15]_INST_0_i_61_n_0 ),
        .I5(bank_sel[0]),
        .O(gr3_bus1__0));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFEEEEE)) 
    \bdatw[12]_INST_0_i_69 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[12]_INST_0_i_70_n_0 ),
        .I2(\bdatw[15]_INST_0_i_45_n_0 ),
        .I3(\bdatw[15]_INST_0_i_44_n_0 ),
        .I4(ir[12]),
        .I5(\bdatw[15]_INST_0_i_43_n_0 ),
        .O(\bdatw[12]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \bdatw[12]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .I4(\sp_reg[15]_0 [12]),
        .I5(\bdatw[15]_INST_0_i_1_4 [12]),
        .O(\bdatw[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFF1FFFFFFFF)) 
    \bdatw[12]_INST_0_i_70 
       (.I0(\bdatw[15]_INST_0_i_103_n_0 ),
        .I1(\bdatw[12]_INST_0_i_71_n_0 ),
        .I2(\bdatw[15]_INST_0_i_105_n_0 ),
        .I3(rst_n_fl_reg_2),
        .I4(ir[12]),
        .I5(\bcmd[1] ),
        .O(\bdatw[12]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h0000E000E000E0E0)) 
    \bdatw[12]_INST_0_i_71 
       (.I0(Q[0]),
        .I1(crdy),
        .I2(ir[2]),
        .I3(ir[0]),
        .I4(ir[1]),
        .I5(ir[3]),
        .O(\bdatw[12]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_8 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [12]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[11]),
        .I4(\pc_reg[15]_0 [12]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h221DEE1DFFFFFFFF)) 
    \bdatw[12]_INST_0_i_9 
       (.I0(\bdatw[12]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_18_n_0 ),
        .I2(ir[4]),
        .I3(ctl_selb_0),
        .I4(ir[3]),
        .I5(\bdatw[15]_INST_0_i_15_n_0 ),
        .O(\bdatw[12]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[13]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\stat_reg[1] ),
        .I2(\bdatw[13]_INST_0_i_1_n_0 ),
        .I3(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[13]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bdatw[13]_INST_0_i_1 
       (.I0(\bdatw[13]_INST_0_i_3_n_0 ),
        .I1(\bdatw[13]_INST_0_i_4_n_0 ),
        .I2(\bdatw[13]_0 ),
        .I3(\rgf/bbus_b02 [13]),
        .I4(\bdatw[13]_INST_0_i_7_n_0 ),
        .I5(\bdatw[13]_INST_0_i_8_n_0 ),
        .O(\bdatw[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_11 
       (.I0(\bdatw[13]_INST_0_i_22_n_0 ),
        .I1(\bdatw[13]_INST_0_i_2_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [0]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_1_1 [0]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [5]));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \bdatw[13]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .I4(\sp_reg[15]_0 [5]),
        .I5(\bdatw[15]_INST_0_i_1_4 [5]),
        .O(\bdatw[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_13 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [5]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[4]),
        .I4(\pc_reg[15]_0 [5]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[13]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A8080202A808)) 
    \bdatw[13]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[13]_INST_0_i_24_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ir[5]),
        .I4(ctl_selb_0),
        .I5(ir[4]),
        .O(\bdatw[13]_INST_0_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \bdatw[13]_INST_0_i_15 
       (.I0(ir[1]),
        .I1(ir[2]),
        .I2(ir[3]),
        .O(\bdatw[13]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[13]_INST_0_i_18 
       (.I0(\bdatw[13]_INST_0_i_31_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_6_0 [8]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_6_1 [8]),
        .O(\bdatw[13]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bdatw[13]_INST_0_i_2 
       (.I0(\bdatw[13]_INST_0_i_9_n_0 ),
        .I1(bdatw_13_sn_1),
        .I2(\rgf/bbus_b02 [5]),
        .I3(\bdatw[13]_INST_0_i_12_n_0 ),
        .I4(\bdatw[13]_INST_0_i_13_n_0 ),
        .I5(\bdatw[13]_INST_0_i_14_n_0 ),
        .O(\bdatw[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[13]_INST_0_i_22 
       (.I0(\bdatw[13]_INST_0_i_42_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_6_0 [0]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_6_1 [0]),
        .O(\bdatw[13]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \bdatw[13]_INST_0_i_24 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(ir[3]),
        .O(\bdatw[13]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAAA2000800A20008)) 
    \bdatw[13]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(ir[0]),
        .I2(\bdatw[13]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(ctl_selb_0),
        .I5(ir[10]),
        .O(\bdatw[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_31 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_24_0 [13]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_24_1 [13]),
        .I4(\bdatw[15]_INST_0_i_24_2 [13]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[13]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .I3(eir[13]),
        .O(\bdatw[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_42 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_24_0 [5]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_24_1 [5]),
        .I4(\bdatw[15]_INST_0_i_24_2 [5]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_6 
       (.I0(\bdatw[13]_INST_0_i_18_n_0 ),
        .I1(\bdatw[13]_INST_0_i_1_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [8]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_1_1 [8]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [13]));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \bdatw[13]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .I4(\sp_reg[15]_0 [13]),
        .I5(\bdatw[15]_INST_0_i_1_4 [13]),
        .O(\bdatw[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_8 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [13]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[12]),
        .I4(\pc_reg[15]_0 [13]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[13]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[13]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .I3(eir[5]),
        .O(\bdatw[13]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[14]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\stat_reg[1] ),
        .I2(\bdatw[14]_INST_0_i_1_n_0 ),
        .I3(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[14]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bdatw[14]_INST_0_i_1 
       (.I0(\bdatw[14]_INST_0_i_3_n_0 ),
        .I1(\bdatw[14]_INST_0_i_4_n_0 ),
        .I2(\bdatw[14]_0 ),
        .I3(\rgf/bbus_b02 [14]),
        .I4(\bdatw[14]_INST_0_i_7_n_0 ),
        .I5(\bdatw[14]_INST_0_i_8_n_0 ),
        .O(\bdatw[14]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[14]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .I3(eir[6]),
        .O(\bdatw[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_12 
       (.I0(\bdatw[14]_INST_0_i_23_n_0 ),
        .I1(\bdatw[14]_INST_0_i_2_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [1]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_1_1 [1]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [6]));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \bdatw[14]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .I4(\sp_reg[15]_0 [6]),
        .I5(\bdatw[15]_INST_0_i_1_4 [6]),
        .O(\bdatw[14]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_14 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [6]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[5]),
        .I4(\pc_reg[15]_0 [6]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[14]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \bdatw[14]_INST_0_i_15 
       (.I0(ir[2]),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(ir[0]),
        .O(\bdatw[14]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[14]_INST_0_i_18 
       (.I0(\bdatw[14]_INST_0_i_31_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_6_0 [9]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_6_1 [9]),
        .O(\bdatw[14]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[14]_INST_0_i_2 
       (.I0(\bdatw[14]_INST_0_i_9_n_0 ),
        .I1(\bdatw[14]_INST_0_i_10_n_0 ),
        .I2(bdatw_14_sn_1),
        .I3(\rgf/bbus_b02 [6]),
        .I4(\bdatw[14]_INST_0_i_13_n_0 ),
        .I5(\bdatw[14]_INST_0_i_14_n_0 ),
        .O(\bdatw[14]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \bdatw[14]_INST_0_i_20 
       (.I0(ir[0]),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(ir[1]),
        .O(\bdatw[14]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[14]_INST_0_i_23 
       (.I0(\bdatw[14]_INST_0_i_42_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_6_0 [1]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_6_1 [1]),
        .O(\bdatw[14]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hA2080208)) 
    \bdatw[14]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[14]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_0),
        .I4(ir[10]),
        .O(\bdatw[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_31 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_24_0 [14]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_24_1 [14]),
        .I4(\bdatw[15]_INST_0_i_24_2 [14]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[14]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .I3(eir[14]),
        .O(\bdatw[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_42 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_24_0 [6]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_24_1 [6]),
        .I4(\bdatw[15]_INST_0_i_24_2 [6]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_6 
       (.I0(\bdatw[14]_INST_0_i_18_n_0 ),
        .I1(\bdatw[14]_INST_0_i_1_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [9]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_1_1 [9]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [14]));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \bdatw[14]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .I4(\sp_reg[15]_0 [14]),
        .I5(\bdatw[15]_INST_0_i_1_4 [14]),
        .O(\bdatw[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_8 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [14]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[13]),
        .I4(\pc_reg[15]_0 [14]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A8080202A808)) 
    \bdatw[14]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[14]_INST_0_i_20_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ir[6]),
        .I4(ctl_selb_0),
        .I5(ir[5]),
        .O(\bdatw[14]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[15]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\stat_reg[1] ),
        .I2(\bdatw[15]_INST_0_i_1_n_0 ),
        .I3(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[15]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bdatw[15]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .I2(\bdatw[15]_0 ),
        .I3(\rgf/bbus_b02 [15]),
        .I4(\bdatw[15]_INST_0_i_7_n_0 ),
        .I5(\bdatw[15]_INST_0_i_8_n_0 ),
        .O(\bdatw[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[15]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .I3(eir[7]),
        .O(\bdatw[15]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bdatw[15]_INST_0_i_100 
       (.I0(ir[7]),
        .I1(ir[8]),
        .O(\bdatw[15]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h3333BFBFFF3F3737)) 
    \bdatw[15]_INST_0_i_101 
       (.I0(ir[6]),
        .I1(ir[11]),
        .I2(ir[8]),
        .I3(crdy),
        .I4(ir[10]),
        .I5(ir[9]),
        .O(\bdatw[15]_INST_0_i_101_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFCFDFCFEFD)) 
    \bdatw[15]_INST_0_i_102 
       (.I0(ir[3]),
        .I1(\badrx[15]_INST_0_i_4_n_0 ),
        .I2(\ccmd[4]_INST_0_i_22_n_0 ),
        .I3(ir[6]),
        .I4(ir[4]),
        .I5(ir[5]),
        .O(\bdatw[15]_INST_0_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h0000008C00000088)) 
    \bdatw[15]_INST_0_i_103 
       (.I0(Q[0]),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(ir[3]),
        .I5(fch_irq_req),
        .O(\bdatw[15]_INST_0_i_103_n_0 ));
  LUT4 #(
    .INIT(16'h8EFF)) 
    \bdatw[15]_INST_0_i_104 
       (.I0(ir[3]),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(ir[2]),
        .O(\bdatw[15]_INST_0_i_104_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bdatw[15]_INST_0_i_105 
       (.I0(\ccmd[0]_INST_0_i_20_n_0 ),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(ir[11]),
        .I4(ir[9]),
        .O(\bdatw[15]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hE0FFFFFFFFFFE0FF)) 
    \bdatw[15]_INST_0_i_106 
       (.I0(Q[2]),
        .I1(ir[14]),
        .I2(Q[1]),
        .I3(\bdatw[15]_INST_0_i_139_n_0 ),
        .I4(ir[11]),
        .I5(ir[10]),
        .O(\bdatw[15]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7E7EFFFFFF7E)) 
    \bdatw[15]_INST_0_i_107 
       (.I0(ir[11]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[7]),
        .I4(\bcmd[0]_INST_0_i_4_n_0 ),
        .I5(ir[10]),
        .O(\bdatw[15]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFFFFFFFEFF)) 
    \bdatw[15]_INST_0_i_108 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[15]),
        .I3(Q[0]),
        .I4(ir[10]),
        .I5(ir[7]),
        .O(\bdatw[15]_INST_0_i_108_n_0 ));
  LUT4 #(
    .INIT(16'h4004)) 
    \bdatw[15]_INST_0_i_109 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_2 [7]),
        .O(\bdatw[15]_INST_0_i_109_n_0 ));
  LUT6 #(
    .INIT(64'h0000040004000400)) 
    \bdatw[15]_INST_0_i_110 
       (.I0(ir[6]),
        .I1(\bcmd[1]_INST_0_i_10_n_0 ),
        .I2(ir[8]),
        .I3(crdy),
        .I4(\bdatw[15]_INST_0_i_97_n_0 ),
        .I5(rst_n_fl_reg_1),
        .O(\bdatw[15]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \bdatw[15]_INST_0_i_111 
       (.I0(\bdatw[15]_INST_0_i_140_n_0 ),
        .I1(\ccmd[2]_INST_0_i_23_n_0 ),
        .I2(\bdatw[15]_INST_0_i_141_n_0 ),
        .I3(\bdatw[15]_INST_0_i_142_n_0 ),
        .I4(ir[14]),
        .I5(\ccmd[4]_INST_0_i_14_n_0 ),
        .O(\bdatw[15]_INST_0_i_111_n_0 ));
  LUT6 #(
    .INIT(64'hCCB80000CCB80030)) 
    \bdatw[15]_INST_0_i_112 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(crdy),
        .I3(ir[9]),
        .I4(ir[10]),
        .I5(rst_n_fl_reg_1),
        .O(\bdatw[15]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'hF700F3F3FFFFF3F3)) 
    \bdatw[15]_INST_0_i_113 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(\bdatw[15]_INST_0_i_143_n_0 ),
        .I3(\bdatw[15]_INST_0_i_144_n_0 ),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(\bdatw[15]_INST_0_i_113_n_0 ));
  LUT6 #(
    .INIT(64'hDDFFFFCC1D1DAA00)) 
    \bdatw[15]_INST_0_i_114 
       (.I0(ir[7]),
        .I1(ir[10]),
        .I2(crdy),
        .I3(ir[6]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\bdatw[15]_INST_0_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_115 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_71_n_0 ),
        .I5(bank_sel[3]),
        .O(gr5_bus1__0_15));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_116 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_71_n_0 ),
        .I5(bank_sel[1]),
        .O(gr5_bus1__0_10));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_117 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[15]_INST_0_i_62_n_0 ),
        .I5(bank_sel[1]),
        .O(gr0_bus1__0_11));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_118 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[15]_INST_0_i_71_n_0 ),
        .I5(bank_sel[1]),
        .O(gr1_bus1__0_6));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_119 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_62_n_0 ),
        .I5(bank_sel[1]),
        .O(gr4_bus1__0_7));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_38_n_0 ),
        .I1(\bdatw[15]_INST_0_i_2_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [2]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_1_1 [2]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [7]));
  LUT6 #(
    .INIT(64'hAAFEAAEEFEFEFEFE)) 
    \bdatw[15]_INST_0_i_120 
       (.I0(\bdatw[15]_INST_0_i_145_n_0 ),
        .I1(\bcmd[1]_INST_0_i_2_n_0 ),
        .I2(\bdatw[15]_INST_0_i_138_n_0 ),
        .I3(\bdatw[15]_INST_0_i_146_n_0 ),
        .I4(\bdatw[15]_INST_0_i_137_n_0 ),
        .I5(ir[1]),
        .O(\bdatw[15]_INST_0_i_120_n_0 ));
  LUT6 #(
    .INIT(64'h0040555500400040)) 
    \bdatw[15]_INST_0_i_121 
       (.I0(\bdatw[15]_INST_0_i_147_n_0 ),
        .I1(ir[1]),
        .I2(ctl_fetch_inferred_i_21_n_0),
        .I3(\bdatw[15]_INST_0_i_135_n_0 ),
        .I4(\bdatw[15]_INST_0_i_104_n_0 ),
        .I5(\bdatw[15]_INST_0_i_78_n_0 ),
        .O(\bdatw[15]_INST_0_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h00000080A000A080)) 
    \bdatw[15]_INST_0_i_122 
       (.I0(\bcmd[1]_INST_0_i_10_n_0 ),
        .I1(ir[0]),
        .I2(ir[12]),
        .I3(ir[11]),
        .I4(\bdatw[15]_INST_0_i_130_n_0 ),
        .I5(\bdatw[15]_INST_0_i_148_n_0 ),
        .O(\bdatw[15]_INST_0_i_122_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \bdatw[15]_INST_0_i_123 
       (.I0(Q[0]),
        .I1(\bdatw[15]_INST_0_i_77_n_0 ),
        .I2(\bdatw[15]_INST_0_i_78_n_0 ),
        .O(\bdatw[15]_INST_0_i_123_n_0 ));
  LUT6 #(
    .INIT(64'hD000D000D000D0D0)) 
    \bdatw[15]_INST_0_i_124 
       (.I0(\bdatw[15]_INST_0_i_120_n_0 ),
        .I1(\bdatw[15]_INST_0_i_121_n_0 ),
        .I2(\ccmd[2]_INST_0_i_3_0 ),
        .I3(\bdatw[15]_INST_0_i_80_n_0 ),
        .I4(\bdatw[15]_INST_0_i_122_n_0 ),
        .I5(\bdatw[15]_INST_0_i_123_n_0 ),
        .O(\bdatw[15]_INST_0_i_124_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_125 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_71_n_0 ),
        .I5(bank_sel[0]),
        .O(gr5_bus1__0_1));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_126 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[15]_INST_0_i_62_n_0 ),
        .I5(bank_sel[0]),
        .O(gr0_bus1__0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_127 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[15]_INST_0_i_71_n_0 ),
        .I5(bank_sel[0]),
        .O(gr1_bus1__0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_128 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_62_n_0 ),
        .I5(bank_sel[0]),
        .O(gr4_bus1__0_0));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[15]_INST_0_i_129 
       (.I0(ir[11]),
        .I1(ir[13]),
        .I2(ir[12]),
        .O(\bdatw[15]_INST_0_i_129_n_0 ));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \bdatw[15]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .I4(\sp_reg[15]_0 [7]),
        .I5(\bdatw[15]_INST_0_i_1_4 [7]),
        .O(\bdatw[15]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FF5D)) 
    \bdatw[15]_INST_0_i_130 
       (.I0(crdy),
        .I1(\bdatw[15]_INST_0_i_149_n_0 ),
        .I2(\bdatw[15]_INST_0_i_150_n_0 ),
        .I3(rst_n_fl_reg_1),
        .I4(\bdatw[15]_INST_0_i_151_n_0 ),
        .I5(\bdatw[15]_INST_0_i_152_n_0 ),
        .O(\bdatw[15]_INST_0_i_130_n_0 ));
  LUT6 #(
    .INIT(64'h773FFF0CFF0CFF0C)) 
    \bdatw[15]_INST_0_i_131 
       (.I0(\bdatw[15]_INST_0_i_153_n_0 ),
        .I1(ir[8]),
        .I2(crdy),
        .I3(ir[9]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_131_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \bdatw[15]_INST_0_i_132 
       (.I0(ir[10]),
        .I1(ir[12]),
        .I2(ir[11]),
        .O(\bdatw[15]_INST_0_i_132_n_0 ));
  LUT6 #(
    .INIT(64'hFBAEFEFFFFFFFEFF)) 
    \bdatw[15]_INST_0_i_133 
       (.I0(\bdatw[15]_INST_0_i_154_n_0 ),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(ir[3]),
        .I4(ir[6]),
        .I5(ir[0]),
        .O(\bdatw[15]_INST_0_i_133_n_0 ));
  LUT6 #(
    .INIT(64'hF0F020F020202020)) 
    \bdatw[15]_INST_0_i_134 
       (.I0(ir[9]),
        .I1(\bdatw[15]_INST_0_i_155_n_0 ),
        .I2(ir[0]),
        .I3(ir[6]),
        .I4(\badr[15]_INST_0_i_104_n_0 ),
        .I5(\bdatw[15]_INST_0_i_156_n_0 ),
        .O(\bdatw[15]_INST_0_i_134_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \bdatw[15]_INST_0_i_135 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(rst_n_fl_reg_1),
        .I4(\ccmd[3]_INST_0_i_3_n_0 ),
        .O(\bdatw[15]_INST_0_i_135_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[15]_INST_0_i_136 
       (.I0(\bdatw[15]_INST_0_i_104_n_0 ),
        .I1(\ccmd[0]_INST_0_i_20_n_0 ),
        .I2(\badr[15]_INST_0_i_98_n_0 ),
        .I3(ir[11]),
        .I4(ir[9]),
        .I5(\ccmd[3]_INST_0_i_9_n_0 ),
        .O(\bdatw[15]_INST_0_i_136_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF7FFFFF)) 
    \bdatw[15]_INST_0_i_137 
       (.I0(ir[10]),
        .I1(ir[7]),
        .I2(ir[6]),
        .I3(\ccmd[2]_INST_0_i_13_n_0 ),
        .I4(\bdatw[15]_INST_0_i_153_n_0 ),
        .I5(\bdatw[15]_INST_0_i_157_n_0 ),
        .O(\bdatw[15]_INST_0_i_137_n_0 ));
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    \bdatw[15]_INST_0_i_138 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[6]),
        .I3(ir[8]),
        .I4(ir[7]),
        .O(\bdatw[15]_INST_0_i_138_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bdatw[15]_INST_0_i_139 
       (.I0(ir[7]),
        .I1(ir[6]),
        .O(\bdatw[15]_INST_0_i_139_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_14 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [7]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[6]),
        .I4(\pc_reg[15]_0 [7]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[15]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h8FCBADE9)) 
    \bdatw[15]_INST_0_i_140 
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_2 [5]),
        .I4(\badr[15]_INST_0_i_2 [6]),
        .O(\bdatw[15]_INST_0_i_140_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \bdatw[15]_INST_0_i_141 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(ir[10]),
        .I3(ir[8]),
        .I4(crdy),
        .O(\bdatw[15]_INST_0_i_141_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \bdatw[15]_INST_0_i_142 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(ir[2]),
        .I3(ir[6]),
        .O(\bdatw[15]_INST_0_i_142_n_0 ));
  LUT5 #(
    .INIT(32'hBC000000)) 
    \bdatw[15]_INST_0_i_143 
       (.I0(ir[5]),
        .I1(ir[3]),
        .I2(ir[4]),
        .I3(ir[7]),
        .I4(ir[8]),
        .O(\bdatw[15]_INST_0_i_143_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \bdatw[15]_INST_0_i_144 
       (.I0(ir[4]),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(ir[7]),
        .O(\bdatw[15]_INST_0_i_144_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \bdatw[15]_INST_0_i_145 
       (.I0(Q[0]),
        .I1(ir[13]),
        .I2(ir[15]),
        .I3(ir[14]),
        .O(\bdatw[15]_INST_0_i_145_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8AA88888888)) 
    \bdatw[15]_INST_0_i_146 
       (.I0(\iv[15]_i_109_n_0 ),
        .I1(\bdatw[15]_INST_0_i_152_n_0 ),
        .I2(\bdatw[15]_INST_0_i_151_n_0 ),
        .I3(rst_n_fl_reg_1),
        .I4(\bdatw[15]_INST_0_i_158_n_0 ),
        .I5(crdy),
        .O(\bdatw[15]_INST_0_i_146_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_147 
       (.I0(ir[15]),
        .I1(Q[0]),
        .O(\bdatw[15]_INST_0_i_147_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EEEEEEE)) 
    \bdatw[15]_INST_0_i_148 
       (.I0(\bdatw[15]_INST_0_i_159_n_0 ),
        .I1(\bdatw[15]_INST_0_i_154_n_0 ),
        .I2(\bdatw[15]_INST_0_i_156_n_0 ),
        .I3(\bdatw[15]_INST_0_i_96_n_0 ),
        .I4(ir[0]),
        .I5(\bdatw[15]_INST_0_i_160_n_0 ),
        .O(\bdatw[15]_INST_0_i_148_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[15]_INST_0_i_149 
       (.I0(ir[9]),
        .I1(ir[8]),
        .O(\bdatw[15]_INST_0_i_149_n_0 ));
  LUT6 #(
    .INIT(64'h808A8080AAAAAAAA)) 
    \bdatw[15]_INST_0_i_15 
       (.I0(\stat_reg[0]_4 ),
        .I1(ctl_fetch_inferred_i_9_n_0),
        .I2(ir[15]),
        .I3(\bdatw[15]_INST_0_i_40_n_0 ),
        .I4(\bdatw[15]_INST_0_i_41_n_0 ),
        .I5(\bdatw[15]_INST_0_i_42_n_0 ),
        .O(\bdatw[15]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_150 
       (.I0(ir[8]),
        .I1(ir[6]),
        .O(\bdatw[15]_INST_0_i_150_n_0 ));
  LUT5 #(
    .INIT(32'hC80C000C)) 
    \bdatw[15]_INST_0_i_151 
       (.I0(ir[7]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[6]),
        .O(\bdatw[15]_INST_0_i_151_n_0 ));
  LUT6 #(
    .INIT(64'h4040000040000000)) 
    \bdatw[15]_INST_0_i_152 
       (.I0(crdy),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[10]),
        .I5(ir[9]),
        .O(\bdatw[15]_INST_0_i_152_n_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \bdatw[15]_INST_0_i_153 
       (.I0(ir[3]),
        .I1(ir[5]),
        .I2(ir[4]),
        .O(\bdatw[15]_INST_0_i_153_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bdatw[15]_INST_0_i_154 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(ir[7]),
        .O(\bdatw[15]_INST_0_i_154_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \bdatw[15]_INST_0_i_155 
       (.I0(ir[6]),
        .I1(ir[8]),
        .I2(ir[10]),
        .O(\bdatw[15]_INST_0_i_155_n_0 ));
  LUT5 #(
    .INIT(32'h0B080F0F)) 
    \bdatw[15]_INST_0_i_156 
       (.I0(crdy),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[7]),
        .I4(ir[8]),
        .O(\bdatw[15]_INST_0_i_156_n_0 ));
  LUT6 #(
    .INIT(64'h0000AFAFFF0FC3CF)) 
    \bdatw[15]_INST_0_i_157 
       (.I0(crdy),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\bdatw[15]_INST_0_i_157_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \bdatw[15]_INST_0_i_158 
       (.I0(ir[9]),
        .I1(ir[6]),
        .I2(ir[8]),
        .O(\bdatw[15]_INST_0_i_158_n_0 ));
  LUT5 #(
    .INIT(32'hF77FF7C7)) 
    \bdatw[15]_INST_0_i_159 
       (.I0(ir[0]),
        .I1(ir[6]),
        .I2(ir[3]),
        .I3(ir[5]),
        .I4(ir[4]),
        .O(\bdatw[15]_INST_0_i_159_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[15]_INST_0_i_16 
       (.I0(ir[1]),
        .I1(ir[2]),
        .O(\bdatw[15]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h51000000)) 
    \bdatw[15]_INST_0_i_160 
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(ir[9]),
        .I4(ir[0]),
        .O(\bdatw[15]_INST_0_i_160_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[15]_INST_0_i_17 
       (.I0(ir[3]),
        .I1(ir[0]),
        .O(\bdatw[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h54FF00FF54FFFFFF)) 
    \bdatw[15]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_43_n_0 ),
        .I1(\bdatw[15]_INST_0_i_44_n_0 ),
        .I2(\bdatw[15]_INST_0_i_45_n_0 ),
        .I3(\bcmd[1] ),
        .I4(ir[12]),
        .I5(\bdatw[15]_INST_0_i_46_n_0 ),
        .O(\bdatw[15]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h44444444F4F4FFF4)) 
    \bdatw[15]_INST_0_i_19 
       (.I0(\bdatw[15]_INST_0_i_47_n_0 ),
        .I1(\bdatw[15]_INST_0_i_48_n_0 ),
        .I2(\bdatw[15]_INST_0_i_49_n_0 ),
        .I3(\bcmd[1]_INST_0_i_10_n_0 ),
        .I4(\bdatw[15]_INST_0_i_50_n_0 ),
        .I5(\bdatw[15]_INST_0_i_51_n_0 ),
        .O(ctl_selb_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatw[15]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10_n_0 ),
        .I2(bdatw_15_sn_1),
        .I3(\rgf/bbus_b02 [7]),
        .I4(\bdatw[15]_INST_0_i_13_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_22 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_61_n_0 ),
        .I5(bank_sel[3]),
        .O(gr7_bus1__0_18));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_23 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[15]_INST_0_i_62_n_0 ),
        .I5(bank_sel[3]),
        .O(gr0_bus1__0_19));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[15]_INST_0_i_24 
       (.I0(\bdatw[15]_INST_0_i_63_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_6_0 [10]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_6_1 [10]),
        .O(\bdatw[15]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_26 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_62_n_0 ),
        .I5(bank_sel[2]),
        .O(gr4_bus1__0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_27 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_71_n_0 ),
        .I5(bank_sel[2]),
        .O(gr5_bus1__0));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatw[15]_INST_0_i_28 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .O(\bdatw[15]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888A8AA)) 
    \bdatw[15]_INST_0_i_29 
       (.I0(\ccmd[2]_INST_0_i_3_0 ),
        .I1(\bdatw[15]_INST_0_i_73_n_0 ),
        .I2(\bdatw[15]_INST_0_i_74_n_0 ),
        .I3(\bdatw[15]_INST_0_i_75_n_0 ),
        .I4(\bdatw[15]_INST_0_i_76_n_0 ),
        .I5(Q[0]),
        .O(ctl_selb_rn[2]));
  LUT6 #(
    .INIT(64'hAA2A0080002A0080)) 
    \bdatw[15]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_16_n_0 ),
        .I2(\bdatw[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(ctl_selb_0),
        .I5(ir[10]),
        .O(\bdatw[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABAFFBA)) 
    \bdatw[15]_INST_0_i_30 
       (.I0(Q[0]),
        .I1(\bdatw[15]_INST_0_i_77_n_0 ),
        .I2(\bdatw[15]_INST_0_i_78_n_0 ),
        .I3(\bcmd[1]_INST_0_i_10_n_0 ),
        .I4(\bdatw[15]_INST_0_i_79_n_0 ),
        .I5(\bdatw[15]_INST_0_i_80_n_0 ),
        .O(ctl_selb_rn[0]));
  LUT6 #(
    .INIT(64'h000800080008222A)) 
    \bdatw[15]_INST_0_i_31 
       (.I0(\ccmd[2]_INST_0_i_3_0 ),
        .I1(Q[0]),
        .I2(ir[15]),
        .I3(\bdatw[15]_INST_0_i_81_n_0 ),
        .I4(\bdatw[15]_INST_0_i_76_n_0 ),
        .I5(\bdatw[15]_INST_0_i_82_n_0 ),
        .O(ctl_selb_rn[1]));
  LUT4 #(
    .INIT(16'h0200)) 
    \bdatw[15]_INST_0_i_32 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_rn[1]),
        .I2(ctl_selb_rn[0]),
        .I3(\bdatw[15]_INST_0_i_28_n_0 ),
        .O(\rgf/bbus_sel_cr [4]));
  LUT4 #(
    .INIT(16'h0800)) 
    \bdatw[15]_INST_0_i_33 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_rn[0]),
        .I2(ctl_selb_rn[1]),
        .I3(\bdatw[15]_INST_0_i_28_n_0 ),
        .O(\rgf/bbus_sel_cr [5]));
  LUT4 #(
    .INIT(16'h0400)) 
    \bdatw[15]_INST_0_i_34 
       (.I0(ctl_selb_rn[2]),
        .I1(\bdatw[15]_INST_0_i_28_n_0 ),
        .I2(ctl_selb_rn[1]),
        .I3(ctl_selb_rn[0]),
        .O(\rgf/bbus_sel_cr [1]));
  LUT4 #(
    .INIT(16'h0080)) 
    \bdatw[15]_INST_0_i_35 
       (.I0(ir[2]),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(ir[3]),
        .O(\bdatw[15]_INST_0_i_35_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[15]_INST_0_i_38 
       (.I0(\bdatw[15]_INST_0_i_89_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_6_0 [2]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_6_1 [2]),
        .O(\bdatw[15]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[15]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .I3(eir[15]),
        .O(\bdatw[15]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h04FF)) 
    \bdatw[15]_INST_0_i_40 
       (.I0(ir[14]),
        .I1(\badr[15]_INST_0_i_2 [6]),
        .I2(ir[12]),
        .I3(ir[13]),
        .O(\bdatw[15]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0903898309030903)) 
    \bdatw[15]_INST_0_i_41 
       (.I0(ir[12]),
        .I1(ir[11]),
        .I2(ir[14]),
        .I3(\badr[15]_INST_0_i_2 [7]),
        .I4(\bdatw[15]_INST_0_i_94_n_0 ),
        .I5(\bdatw[15]_INST_0_i_95_n_0 ),
        .O(\bdatw[15]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h73737F737F7F737F)) 
    \bdatw[15]_INST_0_i_42 
       (.I0(\ccmd[0]_INST_0_i_1_0 ),
        .I1(\bdatw[15]_INST_0_i_40_n_0 ),
        .I2(ir[12]),
        .I3(ir[14]),
        .I4(\badr[15]_INST_0_i_2 [5]),
        .I5(ir[11]),
        .O(\bdatw[15]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800AAAAAA)) 
    \bdatw[15]_INST_0_i_43 
       (.I0(\bcmd[1]_INST_0_i_10_n_0 ),
        .I1(ir[11]),
        .I2(\bdatw[15]_INST_0_i_96_n_0 ),
        .I3(\bdatw[15]_INST_0_i_97_n_0 ),
        .I4(rst_n_fl_reg_1),
        .I5(\bdatw[15]_INST_0_i_98_n_0 ),
        .O(\bdatw[15]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h05050E0F0F0F0F0F)) 
    \bdatw[15]_INST_0_i_44 
       (.I0(ir[8]),
        .I1(\iv[15]_i_14_n_0 ),
        .I2(ir[11]),
        .I3(crdy),
        .I4(ir[10]),
        .I5(\bdatw[15]_INST_0_i_99_n_0 ),
        .O(\bdatw[15]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDFDFFDDDDDDDD)) 
    \bdatw[15]_INST_0_i_45 
       (.I0(\bcmd[1]_INST_0_i_10_n_0 ),
        .I1(Q[0]),
        .I2(\bdatw[15]_INST_0_i_100_n_0 ),
        .I3(ctl_fetch_ext_fl_i_2_n_0),
        .I4(\bdatw[15]_INST_0_i_101_n_0 ),
        .I5(\bdatw[15]_INST_0_i_102_n_0 ),
        .O(\bdatw[15]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AAFE)) 
    \bdatw[15]_INST_0_i_46 
       (.I0(\bdatw[15]_INST_0_i_103_n_0 ),
        .I1(Q[0]),
        .I2(crdy),
        .I3(\bdatw[15]_INST_0_i_104_n_0 ),
        .I4(\bdatw[15]_INST_0_i_105_n_0 ),
        .I5(rst_n_fl_reg_2),
        .O(\bdatw[15]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEEFFE)) 
    \bdatw[15]_INST_0_i_47 
       (.I0(\bdatw[15]_INST_0_i_106_n_0 ),
        .I1(\bdatw[15]_INST_0_i_107_n_0 ),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(Q[2]),
        .I5(\bdatw[15]_INST_0_i_108_n_0 ),
        .O(\bdatw[15]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2A010200)) 
    \bdatw[15]_INST_0_i_48 
       (.I0(\ccmd[2]_INST_0_i_3_0 ),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[2]),
        .I4(ir[0]),
        .I5(ir[7]),
        .O(\bdatw[15]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFF4FFFF)) 
    \bdatw[15]_INST_0_i_49 
       (.I0(ir[13]),
        .I1(\ccmd[0]_INST_0_i_1_0 ),
        .I2(\bdatw[15]_INST_0_i_109_n_0 ),
        .I3(\bdatw[15]_INST_0_i_110_n_0 ),
        .I4(ir[12]),
        .I5(\bdatw[15]_INST_0_i_111_n_0 ),
        .O(\bdatw[15]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFF770F7700770077)) 
    \bdatw[15]_INST_0_i_50 
       (.I0(\bdatw[15]_INST_0_i_112_n_0 ),
        .I1(ir[6]),
        .I2(ir[9]),
        .I3(ir[11]),
        .I4(\bdatw[15]_INST_0_i_113_n_0 ),
        .I5(\bdatw[15]_INST_0_i_114_n_0 ),
        .O(\bdatw[15]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \bdatw[15]_INST_0_i_51 
       (.I0(ir[12]),
        .I1(\bdatw[15]_INST_0_i_111_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(ir[15]),
        .O(\bdatw[15]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_53 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[15]_INST_0_i_61_n_0 ),
        .I5(bank_sel[3]),
        .O(gr3_bus1__0_12));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_54 
       (.I0(ctl_selb_rn[2]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_62_n_0 ),
        .I5(bank_sel[3]),
        .O(gr4_bus1__0_14));
  LUT4 #(
    .INIT(16'h0004)) 
    \bdatw[15]_INST_0_i_56 
       (.I0(ctl_selb_rn[2]),
        .I1(\bdatw[15]_INST_0_i_28_n_0 ),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .O(\stat_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_24_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_2 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [10]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_1_1 [10]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [15]));
  LUT6 #(
    .INIT(64'h00D000D000D00000)) 
    \bdatw[15]_INST_0_i_61 
       (.I0(\bdatw[15]_INST_0_i_120_n_0 ),
        .I1(\bdatw[15]_INST_0_i_121_n_0 ),
        .I2(\ccmd[2]_INST_0_i_3_0 ),
        .I3(\bdatw[15]_INST_0_i_80_n_0 ),
        .I4(\bdatw[15]_INST_0_i_122_n_0 ),
        .I5(\bdatw[15]_INST_0_i_123_n_0 ),
        .O(\bdatw[15]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h2F002F002F002F2F)) 
    \bdatw[15]_INST_0_i_62 
       (.I0(\bdatw[15]_INST_0_i_120_n_0 ),
        .I1(\bdatw[15]_INST_0_i_121_n_0 ),
        .I2(\ccmd[2]_INST_0_i_3_0 ),
        .I3(\bdatw[15]_INST_0_i_80_n_0 ),
        .I4(\bdatw[15]_INST_0_i_122_n_0 ),
        .I5(\bdatw[15]_INST_0_i_123_n_0 ),
        .O(\bdatw[15]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_63 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_24_0 [15]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_24_1 [15]),
        .I4(\bdatw[15]_INST_0_i_24_2 [15]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_64 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[15]_INST_0_i_61_n_0 ),
        .I5(bank_sel[2]),
        .O(gr3_bus1__0_2));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_65 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\bdatw[15]_INST_0_i_124_n_0 ),
        .I5(bank_sel[2]),
        .O(gr2_bus1__0_3));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \bdatw[15]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .I4(\sp_reg[15]_0 [15]),
        .I5(\bdatw[15]_INST_0_i_1_4 [15]),
        .O(\bdatw[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000540054545454)) 
    \bdatw[15]_INST_0_i_71 
       (.I0(\bdatw[15]_INST_0_i_80_n_0 ),
        .I1(\bdatw[15]_INST_0_i_122_n_0 ),
        .I2(\bdatw[15]_INST_0_i_123_n_0 ),
        .I3(\bdatw[15]_INST_0_i_120_n_0 ),
        .I4(\bdatw[15]_INST_0_i_121_n_0 ),
        .I5(\ccmd[2]_INST_0_i_3_0 ),
        .O(\bdatw[15]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \bdatw[15]_INST_0_i_73 
       (.I0(\badr[15]_INST_0_i_90_n_0 ),
        .I1(ir[2]),
        .I2(Q[0]),
        .I3(ctl_fetch_inferred_i_21_n_0),
        .I4(\bdatw[15]_INST_0_i_129_n_0 ),
        .I5(\ccmd[4]_INST_0_i_17_n_0 ),
        .O(\bdatw[15]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h0020002080A00020)) 
    \bdatw[15]_INST_0_i_74 
       (.I0(ir[2]),
        .I1(ir[11]),
        .I2(ir[12]),
        .I3(\bdatw[15]_INST_0_i_130_n_0 ),
        .I4(ir[10]),
        .I5(\bdatw[15]_INST_0_i_131_n_0 ),
        .O(\bdatw[15]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h55DD7D5DFFFFFFFF)) 
    \bdatw[15]_INST_0_i_75 
       (.I0(ir[2]),
        .I1(ir[8]),
        .I2(ir[7]),
        .I3(ir[6]),
        .I4(ir[9]),
        .I5(\bdatw[15]_INST_0_i_132_n_0 ),
        .O(\bdatw[15]_INST_0_i_75_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \bdatw[15]_INST_0_i_76 
       (.I0(ir[14]),
        .I1(ir[15]),
        .I2(ir[13]),
        .O(\bdatw[15]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hFF3FFFFF3F33FF5F)) 
    \bdatw[15]_INST_0_i_77 
       (.I0(fch_irq_req),
        .I1(crdy),
        .I2(ir[0]),
        .I3(ir[1]),
        .I4(ir[2]),
        .I5(ir[3]),
        .O(\bdatw[15]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatw[15]_INST_0_i_78 
       (.I0(\ccmd[3]_INST_0_i_9_n_0 ),
        .I1(ir[9]),
        .I2(ir[11]),
        .I3(ir[8]),
        .I4(ir[10]),
        .I5(\ccmd[0]_INST_0_i_20_n_0 ),
        .O(\bdatw[15]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h22F0FFFF22FFFFFF)) 
    \bdatw[15]_INST_0_i_79 
       (.I0(\bdatw[15]_INST_0_i_133_n_0 ),
        .I1(\bdatw[15]_INST_0_i_134_n_0 ),
        .I2(\bdatw[15]_INST_0_i_130_n_0 ),
        .I3(ir[11]),
        .I4(ir[12]),
        .I5(ir[0]),
        .O(\bdatw[15]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_8 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [15]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[14]),
        .I4(\pc_reg[15]_0 [15]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBF000000FFFFFFFF)) 
    \bdatw[15]_INST_0_i_80 
       (.I0(\bdatw[15]_INST_0_i_135_n_0 ),
        .I1(ctl_fetch_inferred_i_21_n_0),
        .I2(ir[0]),
        .I3(Q[0]),
        .I4(\bdatw[15]_INST_0_i_136_n_0 ),
        .I5(\bcmd[1] ),
        .O(\bdatw[15]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hDDD0DDDDDDDDDDDD)) 
    \bdatw[15]_INST_0_i_81 
       (.I0(\bdatw[15]_INST_0_i_78_n_0 ),
        .I1(\bdatw[15]_INST_0_i_104_n_0 ),
        .I2(\ccmd[4]_INST_0_i_17_n_0 ),
        .I3(\ccmd[3]_INST_0_i_3_n_0 ),
        .I4(ctl_fetch_inferred_i_21_n_0),
        .I5(ir[1]),
        .O(\bdatw[15]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hDD00F5F5FFFFFFFF)) 
    \bdatw[15]_INST_0_i_82 
       (.I0(ir[1]),
        .I1(\bdatw[15]_INST_0_i_137_n_0 ),
        .I2(\bdatw[15]_INST_0_i_130_n_0 ),
        .I3(\bdatw[15]_INST_0_i_138_n_0 ),
        .I4(ir[11]),
        .I5(ir[12]),
        .O(\bdatw[15]_INST_0_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_89 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_24_0 [7]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_24_1 [7]),
        .I4(\bdatw[15]_INST_0_i_24_2 [7]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h221DEE1DFFFFFFFF)) 
    \bdatw[15]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_35_n_0 ),
        .I1(\bdatw[15]_INST_0_i_18_n_0 ),
        .I2(ir[7]),
        .I3(ctl_selb_0),
        .I4(ir[6]),
        .I5(\bdatw[15]_INST_0_i_15_n_0 ),
        .O(\bdatw[15]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFBBF)) 
    \bdatw[15]_INST_0_i_94 
       (.I0(ir[6]),
        .I1(ir[10]),
        .I2(ir[4]),
        .I3(ir[5]),
        .O(\bdatw[15]_INST_0_i_94_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[15]_INST_0_i_95 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[9]),
        .O(\bdatw[15]_INST_0_i_95_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \bdatw[15]_INST_0_i_96 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[6]),
        .O(\bdatw[15]_INST_0_i_96_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_97 
       (.I0(ir[9]),
        .I1(ir[10]),
        .O(\bdatw[15]_INST_0_i_97_n_0 ));
  LUT5 #(
    .INIT(32'hFBFBFFFB)) 
    \bdatw[15]_INST_0_i_98 
       (.I0(ir[8]),
        .I1(crdy),
        .I2(Q[0]),
        .I3(ir[6]),
        .I4(ir[10]),
        .O(\bdatw[15]_INST_0_i_98_n_0 ));
  LUT4 #(
    .INIT(16'hA08A)) 
    \bdatw[15]_INST_0_i_99 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[9]),
        .O(\bdatw[15]_INST_0_i_99_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[1]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(bdatw[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[2]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[3]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bdatw[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[4]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(bdatw[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[5]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[6]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[7]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[7]));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[8]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\stat_reg[1] ),
        .I2(\bdatw[8]_INST_0_i_1_n_0 ),
        .I3(\sp_reg[0] ),
        .O(bdatw[8]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bdatw[8]_INST_0_i_1 
       (.I0(\bdatw[8]_INST_0_i_3_n_0 ),
        .I1(\bdatw[8]_INST_0_i_4_n_0 ),
        .I2(bdatw_8_sn_1),
        .I3(\rgf/bbus_b02 [8]),
        .I4(\bdatw[8]_INST_0_i_7_n_0 ),
        .I5(\bdatw[8]_INST_0_i_8_n_0 ),
        .O(\bdatw[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[8]_INST_0_i_10 
       (.I0(\bdatw[8]_INST_0_i_2_2 ),
        .I1(\bdatw[8]_INST_0_i_21_n_0 ),
        .I2(\bdatw[8]_INST_0_i_22_n_0 ),
        .I3(\bdatw[8]_INST_0_i_23_n_0 ),
        .I4(\bdatw[8]_INST_0_i_24_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_3 ),
        .O(\bdatw[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2200202000000000)) 
    \bdatw[8]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(\sp_reg[15]_0 [0]),
        .I3(\bdatw[15]_INST_0_i_1_4 [0]),
        .I4(ctl_selb_rn[0]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[8]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_13 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [0]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\sp_reg[15]_0 [0]),
        .I4(\pc_reg[15]_0 [0]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[8]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF0233FDFFFFFFFF)) 
    \bdatw[8]_INST_0_i_14 
       (.I0(\bdatw[9]_INST_0_i_15_n_0 ),
        .I1(ir[0]),
        .I2(ir[3]),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[15]_INST_0_i_15_n_0 ),
        .O(\bdatw[8]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \bdatw[8]_INST_0_i_15 
       (.I0(ir[2]),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(ir[0]),
        .O(\bdatw[8]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[8]_INST_0_i_18 
       (.I0(\bdatw[8]_INST_0_i_38_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_6_0 [3]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_6_1 [3]),
        .O(\bdatw[8]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[8]_INST_0_i_2 
       (.I0(\bdatw[8]_INST_0_i_9_n_0 ),
        .I1(\bdatw[8]_INST_0_i_10_n_0 ),
        .I2(\bdatw[12] [0]),
        .I3(\bdatw[8]_INST_0_i_12_n_0 ),
        .I4(\bdatw[8]_INST_0_i_13_n_0 ),
        .I5(\bdatw[8]_INST_0_i_14_n_0 ),
        .O(\sp_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[8]_INST_0_i_21 
       (.I0(\bdatw[8]_INST_0_i_43_n_0 ),
        .I1(gr3_bus1__0_12),
        .I2(\bdatw[12]_INST_0_i_11_4 [0]),
        .I3(gr6_bus1__0_13),
        .I4(\bdatw[12]_INST_0_i_11_5 [0]),
        .I5(\bdatw[8]_INST_0_i_44_n_0 ),
        .O(\bdatw[8]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[8]_INST_0_i_22 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[0]),
        .I2(\bdatw[15]_INST_0_i_28_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .O(\bdatw[8]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[8]_INST_0_i_23 
       (.I0(gr6_bus1__0_8),
        .I1(\bdatw[12]_INST_0_i_11_2 [0]),
        .I2(\bdatw[8]_INST_0_i_45_n_0 ),
        .I3(\bdatw[8]_INST_0_i_46_n_0 ),
        .I4(gr7_bus1__0_9),
        .I5(\bdatw[12]_INST_0_i_11_3 [0]),
        .O(\bdatw[8]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[8]_INST_0_i_24 
       (.I0(gr2_bus1__0_4),
        .I1(\bdatw[12]_INST_0_i_11_0 [0]),
        .I2(\bdatw[8]_INST_0_i_47_n_0 ),
        .I3(\bdatw[8]_INST_0_i_48_n_0 ),
        .I4(gr3_bus1__0_5),
        .I5(\bdatw[12]_INST_0_i_11_1 [0]),
        .O(\bdatw[8]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_27 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_24_0 [0]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_24_1 [0]),
        .I4(\bdatw[15]_INST_0_i_24_2 [0]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[8]_INST_0_i_29 
       (.I0(gr6_bus1__0),
        .I1(\bdatw[12]_INST_0_i_12_1 [0]),
        .I2(\bdatw[8]_INST_0_i_49_n_0 ),
        .I3(\bdatw[8]_INST_0_i_50_n_0 ),
        .I4(gr7_bus1__0),
        .I5(\bdatw[12]_INST_0_i_12_2 [0]),
        .O(\grn_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hA2080208)) 
    \bdatw[8]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[8]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_18_n_0 ),
        .I3(ctl_selb_0),
        .I4(ir[7]),
        .O(\bdatw[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[8]_INST_0_i_30 
       (.I0(gr2_bus1__0),
        .I1(\bdatw[12]_INST_0_i_12 [0]),
        .I2(\bdatw[8]_INST_0_i_51_n_0 ),
        .I3(\bdatw[8]_INST_0_i_52_n_0 ),
        .I4(gr3_bus1__0),
        .I5(\bdatw[12]_INST_0_i_12_0 [0]),
        .O(\grn_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_38 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_24_0 [8]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_24_1 [8]),
        .I4(\bdatw[15]_INST_0_i_24_2 [8]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[8]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .I3(eir[8]),
        .O(\bdatw[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_43 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_22_0 [0]),
        .O(\bdatw[8]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_44 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_22_1 [0]),
        .O(\bdatw[8]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_45 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_24_0 [0]),
        .O(\bdatw[8]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[8]_INST_0_i_46 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_24_1 [0]),
        .O(\bdatw[8]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[8]_INST_0_i_47 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_25_0 [0]),
        .O(\bdatw[8]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_48 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_25_1 [0]),
        .O(\bdatw[8]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_49 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_30_0 [0]),
        .O(\bdatw[8]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[8]_INST_0_i_50 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_30_1 [0]),
        .O(\bdatw[8]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[8]_INST_0_i_51 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_31_0 [0]),
        .O(\bdatw[8]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_52 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_31_1 [0]),
        .O(\bdatw[8]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[8]_INST_0_i_6 
       (.I0(\bdatw[8]_INST_0_i_18_n_0 ),
        .I1(\bdatw[8]_INST_0_i_1_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [3]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_1_1 [3]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [8]));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \bdatw[8]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .I4(\sp_reg[15]_0 [8]),
        .I5(\bdatw[15]_INST_0_i_1_4 [8]),
        .O(\bdatw[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_8 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [8]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[7]),
        .I4(\pc_reg[15]_0 [8]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[8]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[8]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .I3(eir[0]),
        .O(\bdatw[8]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[9]_INST_0 
       (.I0(\stat_reg[0]_1 ),
        .I1(\stat_reg[1] ),
        .I2(\bdatw[9]_INST_0_i_1_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(bdatw[9]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bdatw[9]_INST_0_i_1 
       (.I0(\bdatw[9]_INST_0_i_3_n_0 ),
        .I1(\bdatw[9]_INST_0_i_4_n_0 ),
        .I2(bdatw_9_sn_1),
        .I3(\rgf/bbus_b02 [9]),
        .I4(\bdatw[9]_INST_0_i_7_n_0 ),
        .I5(\bdatw[9]_INST_0_i_8_n_0 ),
        .O(\bdatw[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[9]_INST_0_i_10 
       (.I0(\bdatw[9]_INST_0_i_2_1 ),
        .I1(\bdatw[9]_INST_0_i_21_n_0 ),
        .I2(\bdatw[9]_INST_0_i_22_n_0 ),
        .I3(\bdatw[9]_INST_0_i_23_n_0 ),
        .I4(\bdatw[9]_INST_0_i_24_n_0 ),
        .I5(\bdatw[9]_INST_0_i_2_2 ),
        .O(\bdatw[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2200202000000000)) 
    \bdatw[9]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(\sp_reg[15]_0 [1]),
        .I3(\bdatw[15]_INST_0_i_1_4 [1]),
        .I4(ctl_selb_rn[0]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_13 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [1]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[0]),
        .I4(\pc_reg[15]_0 [1]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[9]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h112EDD2EFFFFFFFF)) 
    \bdatw[9]_INST_0_i_14 
       (.I0(\bdatw[9]_INST_0_i_32_n_0 ),
        .I1(\bdatw[15]_INST_0_i_18_n_0 ),
        .I2(ir[1]),
        .I3(ctl_selb_0),
        .I4(ir[0]),
        .I5(\bdatw[15]_INST_0_i_15_n_0 ),
        .O(\bdatw[9]_INST_0_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[9]_INST_0_i_15 
       (.I0(ir[1]),
        .I1(ir[2]),
        .O(\bdatw[9]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[9]_INST_0_i_18 
       (.I0(\bdatw[9]_INST_0_i_39_n_0 ),
        .I1(gr3_bus1__0_2),
        .I2(\bdatw[15]_INST_0_i_6_0 [4]),
        .I3(gr2_bus1__0_3),
        .I4(\bdatw[15]_INST_0_i_6_1 [4]),
        .O(\bdatw[9]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[9]_INST_0_i_2 
       (.I0(\bdatw[9]_INST_0_i_9_n_0 ),
        .I1(\bdatw[9]_INST_0_i_10_n_0 ),
        .I2(\bdatw[12] [1]),
        .I3(\bdatw[9]_INST_0_i_12_n_0 ),
        .I4(\bdatw[9]_INST_0_i_13_n_0 ),
        .I5(\bdatw[9]_INST_0_i_14_n_0 ),
        .O(\bdatw[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[9]_INST_0_i_21 
       (.I0(\bdatw[9]_INST_0_i_44_n_0 ),
        .I1(gr3_bus1__0_12),
        .I2(\bdatw[12]_INST_0_i_11_4 [1]),
        .I3(gr6_bus1__0_13),
        .I4(\bdatw[12]_INST_0_i_11_5 [1]),
        .I5(\bdatw[9]_INST_0_i_45_n_0 ),
        .O(\bdatw[9]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[9]_INST_0_i_22 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[0]),
        .I2(\bdatw[15]_INST_0_i_28_n_0 ),
        .I3(ctl_selb_rn[2]),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .O(\bdatw[9]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[9]_INST_0_i_23 
       (.I0(gr6_bus1__0_8),
        .I1(\bdatw[12]_INST_0_i_11_2 [1]),
        .I2(\bdatw[9]_INST_0_i_46_n_0 ),
        .I3(\bdatw[9]_INST_0_i_47_n_0 ),
        .I4(gr7_bus1__0_9),
        .I5(\bdatw[12]_INST_0_i_11_3 [1]),
        .O(\bdatw[9]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[9]_INST_0_i_24 
       (.I0(gr2_bus1__0_4),
        .I1(\bdatw[12]_INST_0_i_11_0 [1]),
        .I2(\bdatw[9]_INST_0_i_48_n_0 ),
        .I3(\bdatw[9]_INST_0_i_49_n_0 ),
        .I4(gr3_bus1__0_5),
        .I5(\bdatw[12]_INST_0_i_11_1 [1]),
        .O(\bdatw[9]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_27 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_24_0 [1]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_24_1 [1]),
        .I4(\bdatw[15]_INST_0_i_24_2 [1]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\grn_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[9]_INST_0_i_29 
       (.I0(gr6_bus1__0),
        .I1(\bdatw[12]_INST_0_i_12_1 [1]),
        .I2(\bdatw[9]_INST_0_i_50_n_0 ),
        .I3(\bdatw[9]_INST_0_i_51_n_0 ),
        .I4(gr7_bus1__0),
        .I5(\bdatw[12]_INST_0_i_12_2 [1]),
        .O(\grn_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAA2A0080002A0080)) 
    \bdatw[9]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[9]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_18_n_0 ),
        .I4(ctl_selb_0),
        .I5(ir[8]),
        .O(\bdatw[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[9]_INST_0_i_30 
       (.I0(gr2_bus1__0),
        .I1(\bdatw[12]_INST_0_i_12 [1]),
        .I2(\bdatw[9]_INST_0_i_52_n_0 ),
        .I3(\bdatw[9]_INST_0_i_53_n_0 ),
        .I4(gr3_bus1__0),
        .I5(\bdatw[12]_INST_0_i_12_0 [1]),
        .O(\grn_reg[1] ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \bdatw[9]_INST_0_i_32 
       (.I0(ir[0]),
        .I1(ir[2]),
        .I2(ir[1]),
        .I3(ir[3]),
        .O(\bdatw[9]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_39 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\bdatw[15]_INST_0_i_24_0 [9]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\bdatw[15]_INST_0_i_24_1 [9]),
        .I4(\bdatw[15]_INST_0_i_24_2 [9]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[9]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .I3(eir[9]),
        .O(\bdatw[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_44 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_22_0 [1]),
        .O(\bdatw[9]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_45 
       (.I0(bank_sel[3]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_22_1 [1]),
        .O(\bdatw[9]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_46 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_24_0 [1]),
        .O(\bdatw[9]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[9]_INST_0_i_47 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_24_1 [1]),
        .O(\bdatw[9]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[9]_INST_0_i_48 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_25_0 [1]),
        .O(\bdatw[9]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_49 
       (.I0(bank_sel[1]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_25_1 [1]),
        .O(\bdatw[9]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_50 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_30_0 [1]),
        .O(\bdatw[9]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[9]_INST_0_i_51 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_30_1 [1]),
        .O(\bdatw[9]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[9]_INST_0_i_52 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(ctl_selb_rn[2]),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[12]_INST_0_i_31_0 [1]),
        .O(\bdatw[9]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_53 
       (.I0(bank_sel[0]),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\bdatw[12]_INST_0_i_69_n_0 ),
        .I3(ctl_selb_0),
        .I4(ctl_selb_rn[2]),
        .I5(\bdatw[12]_INST_0_i_31_1 [1]),
        .O(\bdatw[9]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[9]_INST_0_i_6 
       (.I0(\bdatw[9]_INST_0_i_18_n_0 ),
        .I1(\bdatw[9]_INST_0_i_1_0 ),
        .I2(\bdatw[15]_INST_0_i_1_0 [4]),
        .I3(gr4_bus1__0),
        .I4(\bdatw[15]_INST_0_i_1_1 [4]),
        .I5(gr5_bus1__0),
        .O(\rgf/bbus_b02 [9]));
  LUT6 #(
    .INIT(64'h2200200002000000)) 
    \bdatw[9]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[2]),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .I4(\sp_reg[15]_0 [9]),
        .I5(\bdatw[15]_INST_0_i_1_4 [9]),
        .O(\bdatw[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_8 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\bdatw[15]_INST_0_i_1_3 [9]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(sp_dec_0[8]),
        .I4(\pc_reg[15]_0 [9]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[9]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[9]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_18_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(ctl_selb_0),
        .I3(eir[1]),
        .O(\bdatw[9]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[0]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\ccmd[0]_INST_0_i_1_n_0 ),
        .O(ccmd[0]));
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \ccmd[0]_INST_0_i_1 
       (.I0(ir[15]),
        .I1(\ccmd[0]_INST_0_i_2_n_0 ),
        .I2(\ccmd[0]_INST_0_i_3_n_0 ),
        .I3(\ccmd[0]_INST_0_i_4_n_0 ),
        .I4(Q[2]),
        .O(\ccmd[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFAFFFA)) 
    \ccmd[0]_INST_0_i_10 
       (.I0(\ccmd[0]_INST_0_i_15_n_0 ),
        .I1(\ccmd[0]_INST_0_i_4_0 ),
        .I2(\ccmd[0]_INST_0_i_17_n_0 ),
        .I3(\ccmd[0]_INST_0_i_4_1 ),
        .I4(\ccmd[0]_INST_0_i_19_n_0 ),
        .I5(\ccmd[0]_INST_0_i_20_n_0 ),
        .O(\ccmd[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F6FFFFFF)) 
    \ccmd[0]_INST_0_i_11 
       (.I0(ir[8]),
        .I1(ir[11]),
        .I2(\ccmd[0]_INST_0_i_21_n_0 ),
        .I3(Q[0]),
        .I4(rst_n_fl_reg_1),
        .I5(\ccmd[0]_INST_0_i_22_n_0 ),
        .O(\ccmd[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF3330302222FF30)) 
    \ccmd[0]_INST_0_i_12 
       (.I0(\ccmd[0]_INST_0_i_23_n_0 ),
        .I1(\ccmd[0]_INST_0_i_24_n_0 ),
        .I2(\ccmd[0]_INST_0_i_25_n_0 ),
        .I3(\ccmd[0]_INST_0_i_26_n_0 ),
        .I4(ir[11]),
        .I5(ir[8]),
        .O(\ccmd[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000100020084500)) 
    \ccmd[0]_INST_0_i_13 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[3]),
        .I3(ir[7]),
        .I4(ir[4]),
        .I5(Q[0]),
        .O(\ccmd[0]_INST_0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \ccmd[0]_INST_0_i_15 
       (.I0(ir[12]),
        .I1(ir[15]),
        .I2(ir[14]),
        .O(\ccmd[0]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ccmd[0]_INST_0_i_17 
       (.I0(ir[9]),
        .I1(ir[11]),
        .I2(ir[8]),
        .I3(ir[10]),
        .O(\ccmd[0]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[0]_INST_0_i_19 
       (.I0(ir[3]),
        .I1(ir[1]),
        .O(\ccmd[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h007BFFBBFF7BFFBB)) 
    \ccmd[0]_INST_0_i_2 
       (.I0(ir[11]),
        .I1(ctl_fetch_ext_fl_reg_0),
        .I2(\badr[15]_INST_0_i_2 [7]),
        .I3(ir[14]),
        .I4(ir[12]),
        .I5(\ccmd[0]_INST_0_i_5_n_0 ),
        .O(\ccmd[0]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ccmd[0]_INST_0_i_20 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(ir[7]),
        .O(\ccmd[0]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[0]_INST_0_i_21 
       (.I0(ir[7]),
        .I1(crdy),
        .O(\ccmd[0]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000000009000B9B0)) 
    \ccmd[0]_INST_0_i_22 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[11]),
        .I3(crdy),
        .I4(ir[8]),
        .I5(Q[0]),
        .O(\ccmd[0]_INST_0_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[0]_INST_0_i_23 
       (.I0(ir[7]),
        .I1(ir[6]),
        .O(\ccmd[0]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFFFE)) 
    \ccmd[0]_INST_0_i_24 
       (.I0(ir[10]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(ir[6]),
        .I4(ir[11]),
        .I5(ir[9]),
        .O(\ccmd[0]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h1050)) 
    \ccmd[0]_INST_0_i_25 
       (.I0(rst_n_fl_reg_1),
        .I1(ir[9]),
        .I2(crdy),
        .I3(ir[8]),
        .O(\ccmd[0]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \ccmd[0]_INST_0_i_26 
       (.I0(Q[1]),
        .I1(ir[7]),
        .I2(Q[0]),
        .I3(ir[9]),
        .I4(ir[10]),
        .O(\ccmd[0]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \ccmd[0]_INST_0_i_3 
       (.I0(ir[13]),
        .I1(ir[15]),
        .I2(\badr[15]_INST_0_i_2 [6]),
        .I3(ctl_fetch_ext_fl_reg_0),
        .I4(ir[12]),
        .I5(ir[14]),
        .O(\ccmd[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F100F1000000F1)) 
    \ccmd[0]_INST_0_i_4 
       (.I0(ir[15]),
        .I1(\ccmd[0]_INST_0_i_1_0 ),
        .I2(\ccmd[0]_INST_0_i_1_1 ),
        .I3(\ccmd[0]_INST_0_i_8_n_0 ),
        .I4(\ccmd[0]_INST_0_i_9_n_0 ),
        .I5(\ccmd[0]_INST_0_i_10_n_0 ),
        .O(\ccmd[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FFF1F1F1)) 
    \ccmd[0]_INST_0_i_5 
       (.I0(\ccmd[0]_INST_0_i_11_n_0 ),
        .I1(ir[9]),
        .I2(\ccmd[0]_INST_0_i_12_n_0 ),
        .I3(\ccmd[0]_INST_0_i_13_n_0 ),
        .I4(\stat[2]_i_6_n_0 ),
        .I5(\ccmd[0]_INST_0_i_2_0 ),
        .O(\ccmd[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFFAEBFAAAAAAAAA)) 
    \ccmd[0]_INST_0_i_8 
       (.I0(\ccmd[0]_INST_0_i_3_n_0 ),
        .I1(\badr[15]_INST_0_i_2 [5]),
        .I2(ir[11]),
        .I3(ir[14]),
        .I4(ir[15]),
        .I5(ccmd_4_sn_1),
        .O(\ccmd[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBEAAAAAA3F000000)) 
    \ccmd[0]_INST_0_i_9 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(ir[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\ccmd[0]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[1]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .O(ccmd[1]));
  LUT6 #(
    .INIT(64'hAAFBAAFBFFFBAAFB)) 
    \ccmd[1]_INST_0_i_1 
       (.I0(Q[1]),
        .I1(\ccmd[1]_INST_0_i_2_n_0 ),
        .I2(\ccmd[1]_INST_0_i_3_n_0 ),
        .I3(\ccmd[1]_INST_0_i_4_n_0 ),
        .I4(\ccmd[1]_INST_0_i_5_n_0 ),
        .I5(\ccmd[1]_INST_0_i_6_n_0 ),
        .O(\ccmd[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFEEEEEEEEEEEF)) 
    \ccmd[1]_INST_0_i_10 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(ir[15]),
        .I3(\ccmd[4]_INST_0_i_14_n_0 ),
        .I4(ir[3]),
        .I5(ir[1]),
        .O(\ccmd[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF9FFFFFFFFFFF)) 
    \ccmd[1]_INST_0_i_11 
       (.I0(ir[2]),
        .I1(Q[2]),
        .I2(\ccmd[1]_INST_0_i_19_n_0 ),
        .I3(\ccmd[1]_INST_0_i_6_0 ),
        .I4(\ccmd[4]_INST_0_i_14_n_0 ),
        .I5(ctl_fetch_ext_fl_i_6_n_0),
        .O(\ccmd[1]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ccmd[1]_INST_0_i_12 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[4]),
        .O(\ccmd[1]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h4413F413)) 
    \ccmd[1]_INST_0_i_13 
       (.I0(ir[10]),
        .I1(ir[6]),
        .I2(Q[0]),
        .I3(ir[7]),
        .I4(crdy),
        .O(\ccmd[1]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[1]_INST_0_i_14 
       (.I0(ir[10]),
        .I1(ir[8]),
        .O(\ccmd[1]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0FBF)) 
    \ccmd[1]_INST_0_i_15 
       (.I0(ir[3]),
        .I1(ir[6]),
        .I2(ir[7]),
        .I3(ir[4]),
        .I4(ir[5]),
        .O(\ccmd[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h050500000C000000)) 
    \ccmd[1]_INST_0_i_16 
       (.I0(\ccmd[1]_INST_0_i_21_n_0 ),
        .I1(ir[6]),
        .I2(ir[9]),
        .I3(\ccmd[1]_INST_0_i_22_n_0 ),
        .I4(ir[8]),
        .I5(ir[10]),
        .O(\ccmd[1]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000101F)) 
    \ccmd[1]_INST_0_i_17 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(ir[10]),
        .I3(ir[6]),
        .I4(Q[0]),
        .I5(ir[8]),
        .O(\ccmd[1]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ccmd[1]_INST_0_i_18 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[4]),
        .O(\ccmd[1]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[1]_INST_0_i_19 
       (.I0(ir[6]),
        .I1(ir[5]),
        .O(\ccmd[1]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1D1D1DFF1D1D)) 
    \ccmd[1]_INST_0_i_2 
       (.I0(\ccmd[1]_INST_0_i_7_n_0 ),
        .I1(ir[11]),
        .I2(\ccmd[1]_INST_0_i_8_n_0 ),
        .I3(Q[0]),
        .I4(ir[15]),
        .I5(ir[13]),
        .O(\ccmd[1]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3037)) 
    \ccmd[1]_INST_0_i_21 
       (.I0(ir[6]),
        .I1(crdy),
        .I2(ir[7]),
        .I3(Q[0]),
        .O(\ccmd[1]_INST_0_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[1]_INST_0_i_22 
       (.I0(ir[7]),
        .I1(Q[0]),
        .O(\ccmd[1]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFCBFFFF)) 
    \ccmd[1]_INST_0_i_3 
       (.I0(Q[0]),
        .I1(ir[15]),
        .I2(ir[13]),
        .I3(Q[2]),
        .I4(ir[14]),
        .O(\ccmd[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h10FF)) 
    \ccmd[1]_INST_0_i_4 
       (.I0(ir[11]),
        .I1(ir[13]),
        .I2(ir[15]),
        .I3(ir[12]),
        .O(\ccmd[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7735050)) 
    \ccmd[1]_INST_0_i_5 
       (.I0(ir[13]),
        .I1(ir[15]),
        .I2(ir[14]),
        .I3(ir[11]),
        .I4(\ccmd[1]_INST_0_i_9_n_0 ),
        .I5(\ccmd[1]_INST_0_i_10_n_0 ),
        .O(\ccmd[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000CC2)) 
    \ccmd[1]_INST_0_i_6 
       (.I0(ir[0]),
        .I1(ir[2]),
        .I2(ir[1]),
        .I3(ir[3]),
        .I4(\ccmd[1]_INST_0_i_11_n_0 ),
        .I5(\ccmd[1]_INST_0_i_12_n_0 ),
        .O(\ccmd[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF15BFBF)) 
    \ccmd[1]_INST_0_i_7 
       (.I0(Q[0]),
        .I1(crdy),
        .I2(\ccmd[2]_INST_0_i_13_n_0 ),
        .I3(\ccmd[4]_INST_0_i_17_n_0 ),
        .I4(rst_n_fl_reg_1),
        .I5(\ccmd[1]_INST_0_i_13_n_0 ),
        .O(\ccmd[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFDF)) 
    \ccmd[1]_INST_0_i_8 
       (.I0(ir[9]),
        .I1(Q[0]),
        .I2(\ccmd[1]_INST_0_i_14_n_0 ),
        .I3(\ccmd[1]_INST_0_i_15_n_0 ),
        .I4(\ccmd[1]_INST_0_i_16_n_0 ),
        .I5(\ccmd[1]_INST_0_i_17_n_0 ),
        .O(\ccmd[1]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \ccmd[1]_INST_0_i_9 
       (.I0(\ccmd[1]_INST_0_i_18_n_0 ),
        .I1(ir[2]),
        .I2(ir[13]),
        .I3(crdy),
        .I4(ctl_fetch_ext_fl_i_4_n_0),
        .O(\ccmd[1]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[2]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\ccmd[2]_INST_0_i_1_n_0 ),
        .O(ccmd[2]));
  LUT6 #(
    .INIT(64'h00000000FFFFFFBF)) 
    \ccmd[2]_INST_0_i_1 
       (.I0(\ccmd[2]_INST_0_i_2_n_0 ),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\ccmd[2]_INST_0_i_3_n_0 ),
        .O(\ccmd[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000B000)) 
    \ccmd[2]_INST_0_i_10 
       (.I0(ir[14]),
        .I1(ir[11]),
        .I2(\ccmd[2]_INST_0_i_3_0 ),
        .I3(\ccmd[2]_INST_0_i_17_n_0 ),
        .I4(ir[13]),
        .I5(\ccmd[2]_INST_0_i_19_n_0 ),
        .O(\ccmd[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \ccmd[2]_INST_0_i_11 
       (.I0(\ccmd[2]_INST_0_i_20_n_0 ),
        .I1(Q[1]),
        .I2(ir[7]),
        .I3(ir[11]),
        .I4(crdy),
        .I5(\ccmd[2]_INST_0_i_21_n_0 ),
        .O(\ccmd[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080030)) 
    \ccmd[2]_INST_0_i_12 
       (.I0(ir[10]),
        .I1(Q[1]),
        .I2(ir[11]),
        .I3(ir[9]),
        .I4(ir[7]),
        .I5(ir[8]),
        .O(\ccmd[2]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[2]_INST_0_i_13 
       (.I0(ir[9]),
        .I1(ir[8]),
        .O(\ccmd[2]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd[2]_INST_0_i_14 
       (.I0(ir[6]),
        .I1(ir[10]),
        .O(\ccmd[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h1FFF1FF1FFF1FFF1)) 
    \ccmd[2]_INST_0_i_15 
       (.I0(Q[1]),
        .I1(crdy),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(ir[6]),
        .I5(ir[7]),
        .O(\ccmd[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \ccmd[2]_INST_0_i_16 
       (.I0(\ccmd[4]_INST_0_i_14_n_0 ),
        .I1(ir[15]),
        .I2(\ccmd[2]_INST_0_i_7_0 ),
        .I3(\ccmd[4]_INST_0_i_15_n_0 ),
        .I4(\ccmd[1]_INST_0_i_12_n_0 ),
        .I5(\ccmd[2]_INST_0_i_23_n_0 ),
        .O(\ccmd[2]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[2]_INST_0_i_17 
       (.I0(ir[15]),
        .I1(Q[0]),
        .O(\ccmd[2]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ccmd[2]_INST_0_i_18 
       (.I0(ir[3]),
        .I1(ir[1]),
        .O(\ccmd[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \ccmd[2]_INST_0_i_19 
       (.I0(\ccmd[2]_INST_0_i_9_n_0 ),
        .I1(\ccmd[2]_INST_0_i_24_n_0 ),
        .I2(ir[10]),
        .I3(ir[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\ccmd[2]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCAAFFFFFFAAFF)) 
    \ccmd[2]_INST_0_i_2 
       (.I0(Q[1]),
        .I1(\ccmd[2]_INST_0_i_4_n_0 ),
        .I2(\ccmd[2]_INST_0_i_5_n_0 ),
        .I3(ir[15]),
        .I4(ir[14]),
        .I5(\ccmd[2]_INST_0_i_6_n_0 ),
        .O(\ccmd[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000BFFF)) 
    \ccmd[2]_INST_0_i_20 
       (.I0(ir[15]),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\ccmd[2]_INST_0_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \ccmd[2]_INST_0_i_21 
       (.I0(ir[6]),
        .I1(ir[10]),
        .I2(ir[9]),
        .O(\ccmd[2]_INST_0_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ccmd[2]_INST_0_i_23 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(ir[3]),
        .O(\ccmd[2]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \ccmd[2]_INST_0_i_24 
       (.I0(\ccmd[2]_INST_0_i_25_n_0 ),
        .I1(\bcmd[0]_INST_0_i_4_n_0 ),
        .I2(Q[1]),
        .I3(ir[2]),
        .I4(ir[11]),
        .I5(ir[12]),
        .O(\ccmd[2]_INST_0_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[2]_INST_0_i_25 
       (.I0(ir[0]),
        .I1(ir[1]),
        .O(\ccmd[2]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000075)) 
    \ccmd[2]_INST_0_i_3 
       (.I0(\ccmd[2]_INST_0_i_7_n_0 ),
        .I1(\ccmd[2]_INST_0_i_8_n_0 ),
        .I2(\ccmd[2]_INST_0_i_9_n_0 ),
        .I3(Q[2]),
        .I4(ir[12]),
        .I5(\ccmd[2]_INST_0_i_10_n_0 ),
        .O(\ccmd[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2022222222222022)) 
    \ccmd[2]_INST_0_i_4 
       (.I0(\ccmd[2]_INST_0_i_11_n_0 ),
        .I1(\ccmd[2]_INST_0_i_12_n_0 ),
        .I2(ir[10]),
        .I3(\ccmd[4]_INST_0_i_21_n_0 ),
        .I4(ir[9]),
        .I5(ir[6]),
        .O(\ccmd[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5541555555545555)) 
    \ccmd[2]_INST_0_i_5 
       (.I0(\ccmd[2]_INST_0_i_13_n_0 ),
        .I1(ir[5]),
        .I2(ir[4]),
        .I3(\ccmd[2]_INST_0_i_14_n_0 ),
        .I4(\ccmd[4]_INST_0_i_21_n_0 ),
        .I5(ir[7]),
        .O(\ccmd[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDFDDDFDDDFDDDFDF)) 
    \ccmd[2]_INST_0_i_6 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(\ccmd[2]_INST_0_i_15_n_0 ),
        .I3(ir[11]),
        .I4(rst_n_fl_reg_1),
        .I5(Q[1]),
        .O(\ccmd[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80A0FFF0)) 
    \ccmd[2]_INST_0_i_7 
       (.I0(ir[13]),
        .I1(ir[11]),
        .I2(\ccmd[2]_INST_0_i_16_n_0 ),
        .I3(ir[14]),
        .I4(\ccmd[2]_INST_0_i_17_n_0 ),
        .I5(Q[1]),
        .O(\ccmd[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \ccmd[2]_INST_0_i_8 
       (.I0(\bcmd[0]_INST_0_i_4_n_0 ),
        .I1(\ccmd[3]_INST_0_i_13_n_0 ),
        .I2(ir[0]),
        .I3(ir[2]),
        .I4(Q[1]),
        .I5(\ccmd[2]_INST_0_i_18_n_0 ),
        .O(\ccmd[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \ccmd[2]_INST_0_i_9 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ctl_fetch_ext_fl_i_6_n_0),
        .I5(ir[13]),
        .O(\ccmd[2]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[3]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .O(ccmd[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF5454FF54)) 
    \ccmd[3]_INST_0_i_1 
       (.I0(\ccmd[3]_INST_0_i_2_n_0 ),
        .I1(\ccmd[3]_INST_0_i_3_n_0 ),
        .I2(\ccmd[3]_INST_0_i_4_n_0 ),
        .I3(ir[15]),
        .I4(\ccmd[3]_INST_0_i_5_n_0 ),
        .I5(Q[2]),
        .O(\ccmd[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h10FF10FF10FF1000)) 
    \ccmd[3]_INST_0_i_10 
       (.I0(ir[9]),
        .I1(Q[0]),
        .I2(ir[8]),
        .I3(Q[1]),
        .I4(\ccmd[3]_INST_0_i_15_n_0 ),
        .I5(\ccmd[3]_INST_0_i_16_n_0 ),
        .O(\ccmd[3]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \ccmd[3]_INST_0_i_11 
       (.I0(ir[10]),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[9]),
        .O(\ccmd[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3331333130013333)) 
    \ccmd[3]_INST_0_i_12 
       (.I0(\ccmd[3]_INST_0_i_8_0 ),
        .I1(ir[7]),
        .I2(ir[3]),
        .I3(ir[1]),
        .I4(ir[2]),
        .I5(ir[0]),
        .O(\ccmd[3]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[3]_INST_0_i_13 
       (.I0(ir[11]),
        .I1(ir[10]),
        .O(\ccmd[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5FFF5FFFFFFFFFFC)) 
    \ccmd[3]_INST_0_i_14 
       (.I0(ctl_fetch_ext_fl_reg_0),
        .I1(\ccmd[3]_INST_0_i_8_1 ),
        .I2(ir[12]),
        .I3(ir[8]),
        .I4(\bcmd[0]_INST_0_i_4_n_0 ),
        .I5(ir[7]),
        .O(\ccmd[3]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003000209)) 
    \ccmd[3]_INST_0_i_15 
       (.I0(ir[3]),
        .I1(Q[0]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ir[4]),
        .I5(\ccmd[2]_INST_0_i_13_n_0 ),
        .O(\ccmd[3]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h20232020)) 
    \ccmd[3]_INST_0_i_16 
       (.I0(crdy),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(Q[0]),
        .I4(ir[6]),
        .O(\ccmd[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFFAFAFEFFFEFF)) 
    \ccmd[3]_INST_0_i_2 
       (.I0(\ccmd[3]_INST_0_i_5_n_0 ),
        .I1(\ccmd[3]_INST_0_i_6_n_0 ),
        .I2(\ccmd[3]_INST_0_i_7_n_0 ),
        .I3(\ccmd[3]_INST_0_i_8_n_0 ),
        .I4(\ccmd[3]_INST_0_i_9_n_0 ),
        .I5(\ccmd[4]_INST_0_i_16_n_0 ),
        .O(\ccmd[3]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ccmd[3]_INST_0_i_3 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[11]),
        .O(\ccmd[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0FFBFB0FFFFBFBFF)) 
    \ccmd[3]_INST_0_i_4 
       (.I0(ir[9]),
        .I1(ctl_fetch_ext_fl_reg_0),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[10]),
        .I5(\ccmd[3]_INST_0_i_10_n_0 ),
        .O(\ccmd[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0880088000808080)) 
    \ccmd[3]_INST_0_i_5 
       (.I0(ctl_fetch_ext_fl_reg_0),
        .I1(ir[15]),
        .I2(ir[14]),
        .I3(ir[13]),
        .I4(ir[11]),
        .I5(ir[12]),
        .O(\ccmd[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \ccmd[3]_INST_0_i_6 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[11]),
        .I5(ir[10]),
        .O(\ccmd[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2B20000000000000)) 
    \ccmd[3]_INST_0_i_7 
       (.I0(rst_n_fl_reg_1),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(crdy),
        .I4(\ccmd[3]_INST_0_i_11_n_0 ),
        .I5(\ccmd[4]_INST_0_i_6_n_0 ),
        .O(\ccmd[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFEF)) 
    \ccmd[3]_INST_0_i_8 
       (.I0(\ccmd[3]_INST_0_i_12_n_0 ),
        .I1(ir[9]),
        .I2(\ccmd[3]_INST_0_i_13_n_0 ),
        .I3(ir[6]),
        .I4(ir[7]),
        .I5(\ccmd[3]_INST_0_i_14_n_0 ),
        .O(\ccmd[3]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ccmd[3]_INST_0_i_9 
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(ir[14]),
        .O(\ccmd[3]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0 
       (.I0(\stat_reg[2]_10 ),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .O(ccmd[4]));
  LUT6 #(
    .INIT(64'h1011101010101010)) 
    \ccmd[4]_INST_0_i_1 
       (.I0(ir[15]),
        .I1(Q[2]),
        .I2(\ccmd[4]_INST_0_i_3_n_0 ),
        .I3(\ccmd[4]_INST_0_i_4_n_0 ),
        .I4(\ccmd[4]_INST_0_i_5_n_0 ),
        .I5(\ccmd[4]_INST_0_i_6_n_0 ),
        .O(\stat_reg[2]_10 ));
  LUT6 #(
    .INIT(64'h0444040400400400)) 
    \ccmd[4]_INST_0_i_10 
       (.I0(\ccmd[3]_INST_0_i_3_n_0 ),
        .I1(\ccmd[4]_INST_0_i_23_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(ir[7]),
        .I5(crdy),
        .O(\ccmd[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF9988888F)) 
    \ccmd[4]_INST_0_i_11 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(crdy),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\ccmd[1]_INST_0_i_12_n_0 ),
        .O(\ccmd[4]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h1FFF)) 
    \ccmd[4]_INST_0_i_12 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(Q[1]),
        .O(\ccmd[4]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[4]_INST_0_i_13 
       (.I0(ir[14]),
        .I1(ir[12]),
        .O(\ccmd[4]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[4]_INST_0_i_14 
       (.I0(ir[11]),
        .I1(ir[13]),
        .O(\ccmd[4]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \ccmd[4]_INST_0_i_15 
       (.I0(ir[2]),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(ir[7]),
        .O(\ccmd[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \ccmd[4]_INST_0_i_16 
       (.I0(ir[15]),
        .I1(ir[14]),
        .I2(\bcmd[2]_INST_0_i_2_n_0 ),
        .I3(ir[11]),
        .I4(crdy),
        .I5(ir[10]),
        .O(\ccmd[4]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \ccmd[4]_INST_0_i_17 
       (.I0(rst_n_fl_reg_1),
        .I1(ir[8]),
        .I2(ir[10]),
        .I3(ir[9]),
        .O(\ccmd[4]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \ccmd[4]_INST_0_i_18 
       (.I0(\ccmd[4]_INST_0_i_24_n_0 ),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(ir[15]),
        .I4(\ccmd[4]_INST_0_i_25_n_0 ),
        .O(\ccmd[4]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \ccmd[4]_INST_0_i_19 
       (.I0(crdy),
        .I1(ctl_fetch_inferred_i_9_n_0),
        .I2(ir[11]),
        .I3(\ccmd[4]_INST_0_i_26_n_0 ),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(\ccmd[4]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFFFFFFFEFF)) 
    \ccmd[4]_INST_0_i_2 
       (.I0(\ccmd[4]_INST_0_i_7_n_0 ),
        .I1(\ccmd[4]_INST_0_i_8_n_0 ),
        .I2(Q[2]),
        .I3(\bcmd[1]_INST_0_i_10_n_0 ),
        .I4(ir[11]),
        .I5(ccmd_4_sn_1),
        .O(\ccmd[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000FFFF40)) 
    \ccmd[4]_INST_0_i_20 
       (.I0(\ccmd[4]_INST_0_i_27_n_0 ),
        .I1(ir[10]),
        .I2(rst_n_fl_reg_1),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\ccmd[4]_INST_0_i_16_n_0 ),
        .O(\ccmd[4]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0_i_21 
       (.I0(ir[11]),
        .I1(Q[1]),
        .O(\ccmd[4]_INST_0_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[4]_INST_0_i_22 
       (.I0(ir[7]),
        .I1(ir[8]),
        .O(\ccmd[4]_INST_0_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ccmd[4]_INST_0_i_23 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[9]),
        .O(\ccmd[4]_INST_0_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ccmd[4]_INST_0_i_24 
       (.I0(crdy),
        .I1(ir[8]),
        .I2(ir[9]),
        .O(\ccmd[4]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \ccmd[4]_INST_0_i_25 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(Q[0]),
        .O(\ccmd[4]_INST_0_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[4]_INST_0_i_26 
       (.I0(ir[15]),
        .I1(Q[1]),
        .O(\ccmd[4]_INST_0_i_26_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd[4]_INST_0_i_27 
       (.I0(ir[9]),
        .I1(ir[6]),
        .O(\ccmd[4]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
    \ccmd[4]_INST_0_i_3 
       (.I0(\ccmd[4]_INST_0_i_10_n_0 ),
        .I1(\ccmd[4]_INST_0_i_11_n_0 ),
        .I2(\ccmd[4]_INST_0_i_12_n_0 ),
        .I3(\ccmd[4]_INST_0_i_13_n_0 ),
        .I4(\ccmd[4]_INST_0_i_14_n_0 ),
        .I5(\ccmd[4]_INST_0_i_15_n_0 ),
        .O(\ccmd[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA0A20)) 
    \ccmd[4]_INST_0_i_4 
       (.I0(\ccmd[4]_INST_0_i_16_n_0 ),
        .I1(crdy),
        .I2(ir[7]),
        .I3(Q[1]),
        .I4(\ccmd[4]_INST_0_i_17_n_0 ),
        .O(\ccmd[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A5B5A5B5A5F5F)) 
    \ccmd[4]_INST_0_i_5 
       (.I0(Q[0]),
        .I1(ir[9]),
        .I2(Q[1]),
        .I3(crdy),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(\ccmd[4]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \ccmd[4]_INST_0_i_6 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[11]),
        .O(\ccmd[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0404FF000404FFFF)) 
    \ccmd[4]_INST_0_i_7 
       (.I0(\ccmd[4]_INST_0_i_18_n_0 ),
        .I1(\ccmd[4]_INST_0_i_19_n_0 ),
        .I2(\ccmd[4]_INST_0_i_20_n_0 ),
        .I3(Q[0]),
        .I4(ir[12]),
        .I5(\ccmd[4]_INST_0_i_21_n_0 ),
        .O(\ccmd[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EF00FFFF)) 
    \ccmd[4]_INST_0_i_8 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(\bcmd[1]_INST_0_i_10_n_0 ),
        .I3(\ccmd[4]_INST_0_i_22_n_0 ),
        .I4(ir[12]),
        .I5(ir[15]),
        .O(\ccmd[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    ctl_fetch_ext_fl_i_1
       (.I0(ctl_fetch_ext_fl_i_2_n_0),
        .I1(ctl_fetch_ext_fl_reg_0),
        .I2(ctl_fetch_ext_fl_i_4_n_0),
        .I3(ctl_fetch_ext_fl_i_5_n_0),
        .I4(ir[12]),
        .I5(ctl_fetch_ext_fl_i_6_n_0),
        .O(ctl_fetch_ext));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_ext_fl_i_2
       (.I0(ir[10]),
        .I1(ir[9]),
        .O(ctl_fetch_ext_fl_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ctl_fetch_ext_fl_i_4
       (.I0(ir[6]),
        .I1(ir[8]),
        .I2(ir[5]),
        .I3(ir[7]),
        .O(ctl_fetch_ext_fl_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    ctl_fetch_ext_fl_i_5
       (.I0(Q[2]),
        .I1(ir[1]),
        .I2(\ccmd[4]_INST_0_i_14_n_0 ),
        .I3(ctl_fetch_ext_fl_i_7_n_0),
        .I4(ir[2]),
        .I5(ir[0]),
        .O(ctl_fetch_ext_fl_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_ext_fl_i_6
       (.I0(ir[14]),
        .I1(ir[15]),
        .O(ctl_fetch_ext_fl_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_ext_fl_i_7
       (.I0(ir[3]),
        .I1(ir[4]),
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
    .INIT(64'h8AAA8A888AAA8AAA)) 
    ctl_fetch_inferred_i_1
       (.I0(ctl_fetch_inferred_i_2_n_0),
        .I1(ctl_fetch_inferred_i_3_n_0),
        .I2(ctl_fetch_fl_reg_1),
        .I3(ir[11]),
        .I4(ctl_fetch_inferred_i_5_n_0),
        .I5(ctl_fetch_inferred_i_6_n_0),
        .O(in0));
  LUT6 #(
    .INIT(64'hFFFFFFFF55550155)) 
    ctl_fetch_inferred_i_10
       (.I0(ctl_fetch_inferred_i_24_n_0),
        .I1(ctl_fetch_inferred_i_25_n_0),
        .I2(ctl_fetch_inferred_i_26_n_0),
        .I3(ir[12]),
        .I4(ctl_fetch_inferred_i_3_0),
        .I5(ctl_fetch_inferred_i_28_n_0),
        .O(ctl_fetch_inferred_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000C80000008B00)) 
    ctl_fetch_inferred_i_11
       (.I0(ir[3]),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(Q[0]),
        .I4(ir[12]),
        .I5(ir[2]),
        .O(ctl_fetch_inferred_i_11_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ctl_fetch_inferred_i_12
       (.I0(ir[9]),
        .I1(ir[8]),
        .O(ctl_fetch_inferred_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEF4F5)) 
    ctl_fetch_inferred_i_13
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(\ccmd[0]_INST_0_i_2_0 ),
        .I3(\badr[15]_INST_0_i_2 [11]),
        .I4(ir[8]),
        .I5(ctl_fetch_inferred_i_9_n_0),
        .O(ctl_fetch_inferred_i_13_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ctl_fetch_inferred_i_15
       (.I0(ir[14]),
        .I1(ir[13]),
        .O(rst_n_fl_reg_2));
  LUT6 #(
    .INIT(64'h00000000020202FF)) 
    ctl_fetch_inferred_i_16
       (.I0(ctl_fetch_inferred_i_29_n_0),
        .I1(ctl_fetch_inferred_i_30_n_0),
        .I2(ctl_fetch_inferred_i_31_n_0),
        .I3(Q[2]),
        .I4(\bcmd[1]_INST_0_i_10_n_0 ),
        .I5(ctl_fetch_inferred_i_32_n_0),
        .O(\stat_reg[2]_15 ));
  LUT6 #(
    .INIT(64'hFFEF000000000000)) 
    ctl_fetch_inferred_i_17
       (.I0(ir[2]),
        .I1(ir[1]),
        .I2(\stat_reg[0]_4 ),
        .I3(ctl_fetch_inferred_i_5_0),
        .I4(ctl_fetch_inferred_i_34_n_0),
        .I5(\sr[13]_i_8_n_0 ),
        .O(ctl_fetch_inferred_i_17_n_0));
  LUT4 #(
    .INIT(16'h0020)) 
    ctl_fetch_inferred_i_18
       (.I0(ir[9]),
        .I1(Q[0]),
        .I2(ir[10]),
        .I3(ir[6]),
        .O(ctl_fetch_inferred_i_18_n_0));
  LUT6 #(
    .INIT(64'hA3C0A3CFA330A33F)) 
    ctl_fetch_inferred_i_19
       (.I0(\badrx[15]_INST_0_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_2 [7]),
        .I2(ir[14]),
        .I3(ir[13]),
        .I4(\badr[15]_INST_0_i_2 [4]),
        .I5(\badr[15]_INST_0_i_2 [5]),
        .O(ctl_fetch_inferred_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    ctl_fetch_inferred_i_2
       (.I0(ctl_fetch_inferred_i_7_n_0),
        .I1(ctl_fetch_inferred_i_8_n_0),
        .I2(brdy),
        .I3(ir[15]),
        .I4(Q[2]),
        .I5(ctl_fetch_inferred_i_9_n_0),
        .O(ctl_fetch_inferred_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctl_fetch_inferred_i_21
       (.I0(ir[7]),
        .I1(ir[6]),
        .O(ctl_fetch_inferred_i_21_n_0));
  LUT6 #(
    .INIT(64'h08885F5F88885F5F)) 
    ctl_fetch_inferred_i_22
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(ir[8]),
        .I5(ir[6]),
        .O(ctl_fetch_inferred_i_22_n_0));
  LUT6 #(
    .INIT(64'hD5D5AAAAD5FFFFFF)) 
    ctl_fetch_inferred_i_23
       (.I0(ir[9]),
        .I1(Q[0]),
        .I2(ir[6]),
        .I3(ir[10]),
        .I4(ir[8]),
        .I5(ir[11]),
        .O(ctl_fetch_inferred_i_23_n_0));
  LUT6 #(
    .INIT(64'h4FFF4F4F44444444)) 
    ctl_fetch_inferred_i_24
       (.I0(ctl_fetch_inferred_i_35_n_0),
        .I1(ctl_fetch_inferred_i_36_n_0),
        .I2(\bcmd[1]_INST_0_i_10_n_0 ),
        .I3(\ccmd[2]_INST_0_i_13_n_0 ),
        .I4(ir[12]),
        .I5(\bcmd[1] ),
        .O(ctl_fetch_inferred_i_24_n_0));
  LUT3 #(
    .INIT(8'h51)) 
    ctl_fetch_inferred_i_25
       (.I0(Q[1]),
        .I1(rst_n_fl_reg_1),
        .I2(ir[10]),
        .O(ctl_fetch_inferred_i_25_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_inferred_i_26
       (.I0(crdy),
        .I1(rst_n_fl_reg_1),
        .O(ctl_fetch_inferred_i_26_n_0));
  LUT6 #(
    .INIT(64'hAAAA0A2AAAAAAAA0)) 
    ctl_fetch_inferred_i_28
       (.I0(Q[0]),
        .I1(ctl_fetch_inferred_i_26_n_0),
        .I2(ir[12]),
        .I3(ir[7]),
        .I4(ctl_fetch_inferred_i_37_n_0),
        .I5(ir[13]),
        .O(ctl_fetch_inferred_i_28_n_0));
  LUT6 #(
    .INIT(64'h8F000000FFFFFFFF)) 
    ctl_fetch_inferred_i_29
       (.I0(ir[3]),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(ir[8]),
        .I4(ctl_fetch_inferred_i_38_n_0),
        .I5(ir[9]),
        .O(ctl_fetch_inferred_i_29_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFFFEEE)) 
    ctl_fetch_inferred_i_3
       (.I0(ctl_fetch_inferred_i_10_n_0),
        .I1(ctl_fetch_inferred_i_11_n_0),
        .I2(rst_n_fl_reg_1),
        .I3(ctl_fetch_inferred_i_12_n_0),
        .I4(crdy),
        .I5(ctl_fetch_inferred_i_13_n_0),
        .O(ctl_fetch_inferred_i_3_n_0));
  LUT3 #(
    .INIT(8'h0D)) 
    ctl_fetch_inferred_i_30
       (.I0(ir[9]),
        .I1(ir[6]),
        .I2(ir[10]),
        .O(ctl_fetch_inferred_i_30_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_inferred_i_31
       (.I0(ir[7]),
        .I1(ir[8]),
        .O(ctl_fetch_inferred_i_31_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBF000000)) 
    ctl_fetch_inferred_i_32
       (.I0(\bcmd[0]_INST_0_i_4_n_0 ),
        .I1(ir[10]),
        .I2(ir[3]),
        .I3(Q[0]),
        .I4(ir[9]),
        .I5(ctl_fetch_inferred_i_39_n_0),
        .O(ctl_fetch_inferred_i_32_n_0));
  LUT6 #(
    .INIT(64'h0D0F0F0F3FFFFFFF)) 
    ctl_fetch_inferred_i_34
       (.I0(ir[2]),
        .I1(\badr[15]_INST_0_i_2 [10]),
        .I2(ir[3]),
        .I3(ir[0]),
        .I4(crdy),
        .I5(ir[1]),
        .O(ctl_fetch_inferred_i_34_n_0));
  LUT6 #(
    .INIT(64'hFDFDFDFDFDFDFDF5)) 
    ctl_fetch_inferred_i_35
       (.I0(rst_n_fl_reg_4),
        .I1(Q[2]),
        .I2(ir[15]),
        .I3(Q[1]),
        .I4(ir[10]),
        .I5(ir[3]),
        .O(ctl_fetch_inferred_i_35_n_0));
  LUT6 #(
    .INIT(64'h000D0D0D00000000)) 
    ctl_fetch_inferred_i_36
       (.I0(ir[1]),
        .I1(Q[1]),
        .I2(ir[9]),
        .I3(ir[0]),
        .I4(ir[3]),
        .I5(\ccmd[3]_INST_0_i_9_n_0 ),
        .O(ctl_fetch_inferred_i_36_n_0));
  LUT6 #(
    .INIT(64'h55F544F4FFFF44F4)) 
    ctl_fetch_inferred_i_37
       (.I0(ctl_fetch_inferred_i_40_n_0),
        .I1(ctl_fetch_inferred_i_41_n_0),
        .I2(\ccmd[4]_INST_0_i_24_n_0 ),
        .I3(\badr[15]_INST_0_i_2 [10]),
        .I4(Q[1]),
        .I5(\ccmd[0]_INST_0_i_19_n_0 ),
        .O(ctl_fetch_inferred_i_37_n_0));
  LUT5 #(
    .INIT(32'hFF0F1F0F)) 
    ctl_fetch_inferred_i_38
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(ir[10]),
        .I3(ir[7]),
        .I4(ir[6]),
        .O(ctl_fetch_inferred_i_38_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBABAFABA)) 
    ctl_fetch_inferred_i_39
       (.I0(Q[1]),
        .I1(ir[7]),
        .I2(Q[0]),
        .I3(ir[6]),
        .I4(ir[8]),
        .I5(ctl_fetch_inferred_i_32_0),
        .O(ctl_fetch_inferred_i_39_n_0));
  LUT6 #(
    .INIT(64'h0101010100030303)) 
    ctl_fetch_inferred_i_40
       (.I0(ir[3]),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(ir[2]),
        .I4(ir[1]),
        .I5(\badr[15]_INST_0_i_2 [10]),
        .O(ctl_fetch_inferred_i_40_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ctl_fetch_inferred_i_41
       (.I0(ir[14]),
        .I1(ir[12]),
        .O(ctl_fetch_inferred_i_41_n_0));
  LUT6 #(
    .INIT(64'h00FF00D1000000D1)) 
    ctl_fetch_inferred_i_5
       (.I0(ctl_fetch_inferred_i_17_n_0),
        .I1(ir[14]),
        .I2(\badr[15]_INST_0_i_2 [5]),
        .I3(ir[12]),
        .I4(ir[13]),
        .I5(\badr[15]_INST_0_i_2 [6]),
        .O(ctl_fetch_inferred_i_5_n_0));
  LUT6 #(
    .INIT(64'hC0FFC0FFFFFFE0FF)) 
    ctl_fetch_inferred_i_6
       (.I0(ctl_fetch_ext_fl_i_2_n_0),
        .I1(ctl_fetch_inferred_i_18_n_0),
        .I2(\bcmd[1]_INST_0_i_10_n_0 ),
        .I3(ir[12]),
        .I4(ctl_fetch_inferred_i_19_n_0),
        .I5(ctl_fetch_fl_reg_2),
        .O(ctl_fetch_inferred_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    ctl_fetch_inferred_i_7
       (.I0(ctl_fetch_inferred_i_21_n_0),
        .I1(ir[3]),
        .I2(ir[5]),
        .I3(ir[10]),
        .I4(Q[1]),
        .I5(\stat[2]_i_6_n_0 ),
        .O(ctl_fetch_inferred_i_7_n_0));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFEEE)) 
    ctl_fetch_inferred_i_8
       (.I0(ctl_fetch_inferred_i_22_n_0),
        .I1(ctl_fetch_inferred_i_23_n_0),
        .I2(Q[1]),
        .I3(ir[9]),
        .I4(Q[0]),
        .I5(ir[6]),
        .O(ctl_fetch_inferred_i_8_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    ctl_fetch_inferred_i_9
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(ir[14]),
        .O(ctl_fetch_inferred_i_9_n_0));
  LUT3 #(
    .INIT(8'hFB)) 
    \eir_fl[15]_i_1 
       (.I0(\fch_irq_lev[1]_i_2_n_0 ),
        .I1(rst_n),
        .I2(ctl_fetch_fl_reg_0),
        .O(\eir_fl[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[1]_i_1 
       (.I0(irq_vec[0]),
        .I1(\fch_irq_lev[1]_i_2_n_0 ),
        .I2(eir[1]),
        .O(\eir_fl[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[2]_i_1 
       (.I0(irq_vec[1]),
        .I1(\fch_irq_lev[1]_i_2_n_0 ),
        .I2(eir[2]),
        .O(\eir_fl[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[3]_i_1 
       (.I0(irq_vec[2]),
        .I1(\fch_irq_lev[1]_i_2_n_0 ),
        .I2(eir[3]),
        .O(\eir_fl[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[4]_i_1 
       (.I0(irq_vec[3]),
        .I1(\fch_irq_lev[1]_i_2_n_0 ),
        .I2(eir[4]),
        .O(\eir_fl[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[5]_i_1 
       (.I0(irq_vec[4]),
        .I1(\fch_irq_lev[1]_i_2_n_0 ),
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
        .I1(\fch_irq_lev[1]_i_2_n_0 ),
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
        .I1(\fch_irq_lev[1]_i_2_n_0 ),
        .I2(fch_irq_lev[0]),
        .O(\fch_irq_lev[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \fch_irq_lev[1]_i_1 
       (.I0(irq_lev[1]),
        .I1(\fch_irq_lev[1]_i_2_n_0 ),
        .I2(fch_irq_lev[1]),
        .O(\fch_irq_lev[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fch_irq_lev[1]_i_2 
       (.I0(fch_irq_req),
        .I1(\fch_irq_lev[1]_i_3_n_0 ),
        .I2(ir[1]),
        .I3(rst_n_fl_reg_3),
        .I4(\fch_irq_lev[1]_i_5_n_0 ),
        .I5(\fch_irq_lev[1]_i_6_n_0 ),
        .O(\fch_irq_lev[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \fch_irq_lev[1]_i_3 
       (.I0(ir[4]),
        .I1(ir[2]),
        .I2(brdy),
        .I3(ir[11]),
        .I4(Q[2]),
        .O(\fch_irq_lev[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \fch_irq_lev[1]_i_4 
       (.I0(ir[3]),
        .I1(ir[0]),
        .O(rst_n_fl_reg_3));
  LUT4 #(
    .INIT(16'h0001)) 
    \fch_irq_lev[1]_i_5 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(ir[15]),
        .I3(ir[14]),
        .O(\fch_irq_lev[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \fch_irq_lev[1]_i_6 
       (.I0(ir[7]),
        .I1(ir[5]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ctl_fetch_ext_fl_reg_0),
        .I5(ctl_fetch_ext_fl_i_2_n_0),
        .O(\fch_irq_lev[1]_i_6_n_0 ));
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
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__0 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \grn[15]_i_1__1 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \grn[15]_i_1__10 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_8 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__11 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__12 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_9 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \grn[15]_i_1__13 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_10 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \grn[15]_i_1__14 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_11 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__15 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__16 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_12 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \grn[15]_i_1__17 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_13 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grn[15]_i_1__18 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_14 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__19 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \grn[15]_i_1__2 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__20 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_15 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \grn[15]_i_1__21 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_16 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grn[15]_i_1__22 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_17 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__23 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_5 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__24 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_18 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \grn[15]_i_1__25 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_19 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grn[15]_i_1__26 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_20 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__27 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_6 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__28 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_21 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \grn[15]_i_1__29 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_22 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__3 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grn[15]_i_1__30 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_23 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__4 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \grn[15]_i_1__5 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_4 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \grn[15]_i_1__6 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_5 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__7 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [0]),
        .I5(\badr[15]_INST_0_i_2 [1]),
        .O(\sr_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__8 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_6 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \grn[15]_i_1__9 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\badr[15]_INST_0_i_2 [1]),
        .I5(\badr[15]_INST_0_i_2 [0]),
        .O(\sr_reg[1]_7 ));
  LUT2 #(
    .INIT(4'h1)) 
    \grn[15]_i_2 
       (.I0(ctl_selc_rn),
        .I1(\iv[15]_i_21_n_0 ),
        .O(\grn[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[15]_i_2__0 
       (.I0(ctl_selc_rn),
        .I1(\iv[15]_i_21_n_0 ),
        .O(\grn[15]_i_2__0_n_0 ));
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
  LUT2 #(
    .INIT(4'hE)) 
    \iv[0]_i_1 
       (.I0(\iv[0]_i_2_n_0 ),
        .I1(\iv[0]_i_3_n_0 ),
        .O(cbus[0]));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \iv[0]_i_10 
       (.I0(\sp_reg[0] ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \iv[0]_i_12 
       (.I0(\sp_reg[0] ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(abus_0[0]),
        .O(\iv[0]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h303F5F50)) 
    \iv[0]_i_13 
       (.I0(abus_0[8]),
        .I1(\sp_reg[0] ),
        .I2(\stat_reg[2]_12 ),
        .I3(abus_0[0]),
        .I4(\stat_reg[2]_11 ),
        .O(\iv[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF000B00040000000)) 
    \iv[0]_i_14 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(\ccmd[1]_INST_0_i_1_n_0 ),
        .I4(abus_0[0]),
        .I5(\sp_reg[0] ),
        .O(\iv[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h837F)) 
    \iv[0]_i_15 
       (.I0(\stat_reg[2]_11 ),
        .I1(\sp_reg[0] ),
        .I2(abus_0[0]),
        .I3(\stat_reg[2]_12 ),
        .O(\iv[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFAE00AE)) 
    \iv[0]_i_2 
       (.I0(\iv[0]_i_4_n_0 ),
        .I1(\iv[0]_i_5_n_0 ),
        .I2(\iv[0]_i_6_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\iv[0]_i_7_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFEEEFFFFFEEE)) 
    \iv[0]_i_3 
       (.I0(\iv[0]_i_8_n_0 ),
        .I1(\tr_reg[0]_0 ),
        .I2(\stat_reg[2]_10 ),
        .I3(cbus_i[0]),
        .I4(O[0]),
        .I5(\iv[13]_i_3_n_0 ),
        .O(\iv[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h5444)) 
    \iv[0]_i_4 
       (.I0(\iv[0]_i_10_n_0 ),
        .I1(\iv[14]_i_32_n_0 ),
        .I2(\badr[15]_INST_0_i_2 [6]),
        .I3(\iv[14]_i_14_0 ),
        .O(\iv[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEFCD)) 
    \iv[0]_i_5 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\iv[0]_i_2_3 ),
        .I3(\iv[0]_i_2_2 ),
        .O(\iv[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \iv[0]_i_6 
       (.I0(\iv[14]_i_31_n_0 ),
        .I1(\iv[12]_i_2_0 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\iv[4]_i_2_1 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0C0A0CF)) 
    \iv[0]_i_7 
       (.I0(\iv[0]_i_2_1 ),
        .I1(\iv[0]_i_2_0 ),
        .I2(\iv[14]_i_14_0 ),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(\iv[0]_i_12_n_0 ),
        .O(\iv[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hC0D0CFD0)) 
    \iv[0]_i_8 
       (.I0(\iv[0]_i_13_n_0 ),
        .I1(\iv[0]_i_14_n_0 ),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(\iv[14]_i_7_n_0 ),
        .I4(\iv[0]_i_15_n_0 ),
        .O(\iv[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[10]_i_1 
       (.I0(\iv[10]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\tr_reg[11]_0 [2]),
        .I3(\tr_reg[10]_0 ),
        .I4(\iv[10]_i_4_n_0 ),
        .O(cbus[10]));
  LUT4 #(
    .INIT(16'h65DD)) 
    \iv[10]_i_10 
       (.I0(\stat_reg[2]_12 ),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(abus_0[10]),
        .O(\iv[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD850FFFFFFFF)) 
    \iv[10]_i_11 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[10]_i_17_n_0 ),
        .I2(\iv[10]_i_5_1 ),
        .I3(\iv[10]_i_18_n_0 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\stat_reg[2]_12 ),
        .O(\iv[10]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h1B00FFFF)) 
    \iv[10]_i_12 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[10]_i_5_1 ),
        .I2(\iv[10]_i_5_0 ),
        .I3(\iv[14]_i_30_0 ),
        .I4(\iv[12]_i_19_0 ),
        .O(\iv[10]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0213)) 
    \iv[10]_i_13 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\iv[10]_i_18_n_0 ),
        .I3(\iv[10]_i_5_1 ),
        .O(\iv[10]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[10]_i_14 
       (.I0(\stat_reg[2]_12 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[10]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h03770344)) 
    \iv[10]_i_16 
       (.I0(\iv[14]_i_42 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\iv[14]_i_4_0 ),
        .I3(\bdatw[12]_INST_0_i_2_1 ),
        .I4(\iv[10]_i_7_0 ),
        .O(\iv[10]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \iv[10]_i_17 
       (.I0(\bdatw[8]_INST_0_i_2_1 ),
        .I1(abus_0[15]),
        .O(\iv[10]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[10]_i_18 
       (.I0(\bdatw[8]_INST_0_i_2_1 ),
        .I1(\iv[10]_i_13_0 ),
        .O(\iv[10]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h00004544)) 
    \iv[10]_i_2 
       (.I0(\iv[14]_i_2_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\iv[10]_i_5_n_0 ),
        .I3(\iv[10]_i_6_n_0 ),
        .I4(\iv[10]_i_7_n_0 ),
        .O(\iv[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC0D0CFD0)) 
    \iv[10]_i_4 
       (.I0(\iv[10]_i_8_n_0 ),
        .I1(\iv[10]_i_9_n_0 ),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(\iv[14]_i_7_n_0 ),
        .I4(\iv[10]_i_10_n_0 ),
        .O(\iv[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2222220202022202)) 
    \iv[10]_i_5 
       (.I0(\iv[10]_i_11_n_0 ),
        .I1(\iv[10]_i_12_n_0 ),
        .I2(\iv[14]_i_16_n_0 ),
        .I3(\sr[4]_i_20_1 ),
        .I4(\bdatw[12]_INST_0_i_2_1 ),
        .I5(\iv[5]_i_2_2 ),
        .O(\iv[10]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \iv[10]_i_6 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(\iv[14]_i_14_0 ),
        .I2(abus_0[9]),
        .O(\iv[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h101C1010DCDCDCD0)) 
    \iv[10]_i_7 
       (.I0(\iv[10]_i_13_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(\iv[10]_i_14_n_0 ),
        .I4(\iv[2]_i_2_0 ),
        .I5(\iv[10]_i_16_n_0 ),
        .O(\iv[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hC0CF5F50)) 
    \iv[10]_i_8 
       (.I0(abus_0[2]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_12 ),
        .I3(abus_0[10]),
        .I4(\stat_reg[2]_11 ),
        .O(\iv[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF0004000B0000000)) 
    \iv[10]_i_9 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(\ccmd[1]_INST_0_i_1_n_0 ),
        .I4(abus_0[10]),
        .I5(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(\iv[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5400)) 
    \iv[11]_i_1 
       (.I0(\iv[14]_i_2_n_0 ),
        .I1(\iv[11]_i_2_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[11]_i_3_n_0 ),
        .I4(\iv[11]_i_4_n_0 ),
        .I5(\iv[11]_i_5_n_0 ),
        .O(cbus[11]));
  LUT3 #(
    .INIT(8'hBA)) 
    \iv[11]_i_10 
       (.I0(\iv[11]_i_21_n_0 ),
        .I1(\iv[11]_i_3_0 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .O(\iv[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[11]_i_11 
       (.I0(\iv[11]_i_21_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\iv[2]_i_2_2 ),
        .O(\iv[11]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hC0CF5F50)) 
    \iv[11]_i_12 
       (.I0(abus_0[3]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_12 ),
        .I3(abus_0[11]),
        .I4(\stat_reg[2]_11 ),
        .O(\iv[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB0000000F0004000)) 
    \iv[11]_i_13 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(\ccmd[1]_INST_0_i_1_n_0 ),
        .I4(abus_0[11]),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[11]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h65DD)) 
    \iv[11]_i_14 
       (.I0(\stat_reg[2]_12 ),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(abus_0[11]),
        .O(\iv[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8F8F008F8F)) 
    \iv[11]_i_2 
       (.I0(abus_0[10]),
        .I1(\iv[14]_i_14_0 ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(\iv[11]_i_6_n_0 ),
        .I4(\tr_reg[11]_1 ),
        .I5(\iv[11]_i_8_n_0 ),
        .O(\iv[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[11]_i_20 
       (.I0(\sp_reg[0] ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\bdatw[9]_INST_0_i_2_0 ));
  LUT4 #(
    .INIT(16'h5404)) 
    \iv[11]_i_21 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[3]_i_7_0 ),
        .I2(\bdatw[8]_INST_0_i_2_1 ),
        .I3(\sr[4]_i_19 ),
        .O(\iv[11]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hEFE3EFEF2F232323)) 
    \iv[11]_i_3 
       (.I0(\iv[11]_i_9_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(\iv[11]_i_10_n_0 ),
        .I4(\iv[14]_i_16_n_0 ),
        .I5(\iv[11]_i_11_n_0 ),
        .O(\iv[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \iv[11]_i_4 
       (.I0(\iv[13]_i_3_n_0 ),
        .I1(\tr_reg[11]_0 [3]),
        .I2(cbus_i[8]),
        .I3(\stat_reg[2]_10 ),
        .I4(bdatr[0]),
        .I5(\tr_reg[11]_2 ),
        .O(\iv[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hC0D0CFD0)) 
    \iv[11]_i_5 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[11]_i_13_n_0 ),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(\iv[14]_i_7_n_0 ),
        .I4(\iv[11]_i_14_n_0 ),
        .O(\iv[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8A8BBA8)) 
    \iv[11]_i_6 
       (.I0(\iv[12]_i_19_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\stat_reg[2]_12 ),
        .I4(\iv[11]_i_3_1 ),
        .I5(\bdatw[12]_INST_0_i_2_0 ),
        .O(\iv[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00022202)) 
    \iv[11]_i_8 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\stat_reg[2]_12 ),
        .I2(\iv[11]_i_2_0 ),
        .I3(\bdatw[12]_INST_0_i_2_1 ),
        .I4(\sr[7]_i_6_0 ),
        .O(\iv[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h08000F0F)) 
    \iv[11]_i_9 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(abus_0[15]),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\iv[11]_i_3_1 ),
        .O(\iv[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5400)) 
    \iv[12]_i_1 
       (.I0(\iv[14]_i_2_n_0 ),
        .I1(\iv[12]_i_2_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[12]_i_3_n_0 ),
        .I4(\iv[12]_i_4_n_0 ),
        .I5(\iv[12]_i_5_n_0 ),
        .O(cbus[12]));
  LUT5 #(
    .INIT(32'hFFF7FBF3)) 
    \iv[12]_i_10 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\stat_reg[2]_12 ),
        .I3(\iv[3]_i_2_0 ),
        .I4(\iv[8]_i_2_1 ),
        .O(\iv[12]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h40C8)) 
    \iv[12]_i_11 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[14]_i_30_0 ),
        .I2(\iv[12]_i_2_0 ),
        .I3(\iv[12]_i_2_1 ),
        .O(\iv[12]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h040C0008)) 
    \iv[12]_i_12 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\stat_reg[2]_12 ),
        .I3(\iv[12]_i_23_n_0 ),
        .I4(\iv[12]_i_3_2 ),
        .O(\iv[12]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h333305AF)) 
    \iv[12]_i_13 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[12]_i_25_n_0 ),
        .I2(\iv[12]_i_3_0 ),
        .I3(\iv[12]_i_3_1 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[12]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hC0CF5F50)) 
    \iv[12]_i_14 
       (.I0(abus_0[4]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_12 ),
        .I3(abus_0[12]),
        .I4(\stat_reg[2]_11 ),
        .O(\iv[12]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB0000000F0004000)) 
    \iv[12]_i_15 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(\ccmd[1]_INST_0_i_1_n_0 ),
        .I4(abus_0[12]),
        .I5(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[12]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h65DD)) 
    \iv[12]_i_16 
       (.I0(\stat_reg[2]_12 ),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(abus_0[12]),
        .O(\iv[12]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \iv[12]_i_18 
       (.I0(\stat_reg[2]_11 ),
        .I1(\sp_reg[0] ),
        .I2(\bdatw[9]_INST_0_i_2_n_0 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .I5(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\bdatw[12]_INST_0_i_2_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[12]_i_19 
       (.I0(\stat_reg[2]_12 ),
        .I1(abus_0[15]),
        .O(\iv[12]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA20AAAA)) 
    \iv[12]_i_2 
       (.I0(\iv[12]_i_6_n_0 ),
        .I1(\iv[12]_i_7_n_0 ),
        .I2(\stat_reg[2]_12 ),
        .I3(\iv[12]_i_9_n_0 ),
        .I4(\iv[12]_i_10_n_0 ),
        .I5(\iv[12]_i_11_n_0 ),
        .O(\iv[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF088F0FF)) 
    \iv[12]_i_23 
       (.I0(\badr[15]_INST_0_i_2 [6]),
        .I1(\sp_reg[0] ),
        .I2(\iv[12]_i_12_0 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .I4(\badr[0]_INST_0_i_1 ),
        .O(\iv[12]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8FFB8FFB800B8)) 
    \iv[12]_i_25 
       (.I0(\iv[14]_i_17 ),
        .I1(\bdatw[8]_INST_0_i_2_1 ),
        .I2(\iv[4]_i_7_0 ),
        .I3(\bdatw[12]_INST_0_i_2_1 ),
        .I4(\bdatw[9]_INST_0_i_2_n_0 ),
        .I5(\badr[0]_INST_0_i_1 ),
        .O(\iv[12]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hD3DFD3DF131F1313)) 
    \iv[12]_i_3 
       (.I0(\iv[12]_i_7_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(\iv[12]_i_12_n_0 ),
        .I4(\iv[14]_i_16_n_0 ),
        .I5(\iv[12]_i_13_n_0 ),
        .O(\iv[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \iv[12]_i_4 
       (.I0(\iv[13]_i_3_n_0 ),
        .I1(\sr_reg[7]_0 [0]),
        .I2(cbus_i[9]),
        .I3(\stat_reg[2]_10 ),
        .I4(bdatr[1]),
        .I5(\tr_reg[11]_2 ),
        .O(\iv[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hC0D0CFD0)) 
    \iv[12]_i_5 
       (.I0(\iv[12]_i_14_n_0 ),
        .I1(\iv[12]_i_15_n_0 ),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(\iv[14]_i_7_n_0 ),
        .I4(\iv[12]_i_16_n_0 ),
        .O(\iv[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \iv[12]_i_6 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(\iv[14]_i_14_0 ),
        .I2(abus_0[11]),
        .O(\iv[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \iv[12]_i_7 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\iv[12]_i_2_0 ),
        .O(\iv[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[12]_i_8 
       (.I0(\stat_reg[2]_10 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .O(\stat_reg[2]_12 ));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \iv[12]_i_9 
       (.I0(\bdatw[12]_INST_0_i_2_0 ),
        .I1(\bdatw[12]_INST_0_i_2_1 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\iv[12]_i_19_n_0 ),
        .O(\iv[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFBAFFFF)) 
    \iv[13]_i_1 
       (.I0(\iv[13]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\sr_reg[7]_0 [1]),
        .I3(\tr_reg[13]_0 ),
        .I4(\iv[13]_i_5_n_0 ),
        .O(cbus[13]));
  LUT3 #(
    .INIT(8'hBF)) 
    \iv[13]_i_10 
       (.I0(\iv[13]_i_12_n_0 ),
        .I1(\stat_reg[2]_12 ),
        .I2(\ccmd[2]_INST_0_i_1_n_0 ),
        .O(\iv[13]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \iv[13]_i_11 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .I2(\iv[13]_i_12_n_0 ),
        .I3(\ccmd[0]_INST_0_i_1_n_0 ),
        .O(\iv[13]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[13]_i_12 
       (.I0(\sr[5]_i_3_n_0 ),
        .I1(\iv[14]_i_8_n_0 ),
        .O(\iv[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0202300332323003)) 
    \iv[13]_i_13 
       (.I0(abus_0[5]),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(abus_0[13]),
        .I4(\stat_reg[2]_12 ),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB0000000F0004000)) 
    \iv[13]_i_14 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(\ccmd[1]_INST_0_i_1_n_0 ),
        .I4(abus_0[13]),
        .I5(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(\iv[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8008808800800000)) 
    \iv[13]_i_15 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(abus_0[13]),
        .I3(\bdatw[13]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[2]_11 ),
        .I5(\stat_reg[2]_12 ),
        .O(\iv[13]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \iv[13]_i_19 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\sr[4]_i_20_0 ),
        .I2(\bdatw[8]_INST_0_i_2_1 ),
        .I3(\badr[15]_INST_0_i_1 ),
        .O(\iv[13]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E0EEE0E0)) 
    \iv[13]_i_2 
       (.I0(\tr_reg[13]_1 ),
        .I1(\iv[13]_i_7_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\tr_reg[13]_2 ),
        .I4(\iv[13]_i_9_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2220222222222222)) 
    \iv[13]_i_3 
       (.I0(\iv[13]_i_10_n_0 ),
        .I1(\iv[13]_i_11_n_0 ),
        .I2(\iv[13]_i_12_n_0 ),
        .I3(\iv[14]_i_7_n_0 ),
        .I4(\stat_reg[2]_11 ),
        .I5(\ccmd[1]_INST_0_i_1_n_0 ),
        .O(\iv[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[13]_i_30 
       (.I0(\sp_reg[0] ),
        .I1(abus_0[15]),
        .O(\badr[15]_INST_0_i_1 ));
  LUT4 #(
    .INIT(16'h001F)) 
    \iv[13]_i_5 
       (.I0(\iv[13]_i_13_n_0 ),
        .I1(\iv[13]_i_14_n_0 ),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(\iv[13]_i_15_n_0 ),
        .O(\iv[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3030A0AF0F0F0F0F)) 
    \iv[13]_i_7 
       (.I0(\iv[4]_i_2_0 ),
        .I1(\iv[13]_i_2_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[13]_i_19_n_0 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\stat_reg[2]_11 ),
        .O(\iv[13]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \iv[13]_i_9 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(\iv[14]_i_14_0 ),
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
    .INIT(64'h0000333305AF0000)) 
    \iv[14]_i_10 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[14]_i_3_0 ),
        .I2(\iv[5]_i_2_2 ),
        .I3(\sr[4]_i_20_3 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\stat_reg[2]_12 ),
        .O(\iv[14]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[14]_i_11 
       (.I0(\iv[14]_i_31_n_0 ),
        .I1(\iv[14]_i_32_n_0 ),
        .O(\iv[14]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_12 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .O(\iv[14]_i_14_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \iv[14]_i_13 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[14]_i_33_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .O(\iv[14]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_14 
       (.I0(\stat_reg[2]_10 ),
        .I1(\ccmd[0]_INST_0_i_1_n_0 ),
        .O(\stat_reg[2]_11 ));
  LUT5 #(
    .INIT(32'h040C0008)) 
    \iv[14]_i_15 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\stat_reg[2]_12 ),
        .I3(\iv[14]_i_4_1 ),
        .I4(\iv[14]_i_4_0 ),
        .O(\iv[14]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[14]_i_16 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\stat_reg[2]_12 ),
        .O(\iv[14]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hC0CF5F50)) 
    \iv[14]_i_19 
       (.I0(abus_0[6]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_12 ),
        .I3(abus_0[14]),
        .I4(\stat_reg[2]_11 ),
        .O(\iv[14]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h8F888F8F)) 
    \iv[14]_i_2 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .I2(\sr[5]_i_3_n_0 ),
        .I3(\ccmd[2]_INST_0_i_1_n_0 ),
        .I4(\iv[14]_i_8_n_0 ),
        .O(\iv[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \iv[14]_i_20 
       (.I0(abus_0[14]),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .O(\iv[14]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h65DD)) 
    \iv[14]_i_21 
       (.I0(\stat_reg[2]_12 ),
        .I1(\bdatw[14]_INST_0_i_1_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(abus_0[14]),
        .O(\iv[14]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h13)) 
    \iv[14]_i_22 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\bdatw[12]_INST_0_i_2_0 ),
        .I2(\iv[12]_i_19_n_0 ),
        .O(\iv[12]_i_19_0 ));
  LUT4 #(
    .INIT(16'hAA56)) 
    \iv[14]_i_24 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\sp_reg[0] ),
        .I2(\bdatw[9]_INST_0_i_2_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\bdatw[12]_INST_0_i_2_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_26 
       (.I0(\stat_reg[2]_12 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[14]_i_30_0 ));
  LUT6 #(
    .INIT(64'h0404550455045504)) 
    \iv[14]_i_3 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\iv[14]_i_9_n_0 ),
        .I2(\iv[14]_i_10_n_0 ),
        .I3(\iv[14]_i_11_n_0 ),
        .I4(\iv[14]_i_14_0 ),
        .I5(abus_0[13]),
        .O(\iv[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h66666665)) 
    \iv[14]_i_30 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .I4(\sp_reg[0] ),
        .O(\bdatw[8]_INST_0_i_2_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \iv[14]_i_31 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .I4(\sp_reg[0] ),
        .O(\iv[14]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \iv[14]_i_32 
       (.I0(\ccmd[0]_INST_0_i_1_n_0 ),
        .I1(abus_0[15]),
        .I2(\stat_reg[2]_12 ),
        .O(\iv[14]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \iv[14]_i_33 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[10]_i_13_0 ),
        .I2(\bdatw[8]_INST_0_i_2_1 ),
        .O(\iv[14]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[14]_i_36 
       (.I0(\badr[0]_INST_0_i_1 ),
        .I1(\bdatw[8]_INST_0_i_2_1 ),
        .I2(\iv[14]_i_17 ),
        .O(\iv[14]_i_42 ));
  LUT6 #(
    .INIT(64'hE2EFE2EF222F2222)) 
    \iv[14]_i_4 
       (.I0(\iv[14]_i_13_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(\iv[14]_i_15_n_0 ),
        .I4(\iv[14]_i_16_n_0 ),
        .I5(\tr_reg[14]_0 ),
        .O(\iv[14]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[14]_i_41 
       (.I0(\sp_reg[0] ),
        .I1(abus_0[0]),
        .O(\badr[0]_INST_0_i_1 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \iv[14]_i_5 
       (.I0(\iv[13]_i_3_n_0 ),
        .I1(\sr_reg[7]_0 [2]),
        .I2(cbus_i[10]),
        .I3(\stat_reg[2]_10 ),
        .I4(bdatr[2]),
        .I5(\tr_reg[11]_2 ),
        .O(\iv[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h058D0000058DAAAA)) 
    \iv[14]_i_6 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .I2(\iv[14]_i_19_n_0 ),
        .I3(\iv[14]_i_20_n_0 ),
        .I4(\iv[14]_i_8_n_0 ),
        .I5(\iv[14]_i_21_n_0 ),
        .O(\iv[14]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_7 
       (.I0(\stat_reg[2]_10 ),
        .I1(\ccmd[2]_INST_0_i_1_n_0 ),
        .O(\iv[14]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_8 
       (.I0(\stat_reg[2]_10 ),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .O(\iv[14]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8A80AAAA)) 
    \iv[14]_i_9 
       (.I0(\iv[12]_i_19_0 ),
        .I1(\sr[4]_i_20_1 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\iv[10]_i_5_0 ),
        .I4(\iv[14]_i_30_0 ),
        .O(\iv[14]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \iv[15]_i_1 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .O(\stat_reg[2]_16 [0]));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \iv[15]_i_10 
       (.I0(\iv[15]_i_31_n_0 ),
        .I1(\iv[15]_i_32_n_0 ),
        .I2(ir[2]),
        .I3(Q[2]),
        .I4(ir[13]),
        .I5(\iv[15]_i_15_0 ),
        .O(\iv[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h808080808C808080)) 
    \iv[15]_i_100 
       (.I0(ir[0]),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(brdy),
        .I4(ir[3]),
        .I5(ir[6]),
        .O(\iv[15]_i_100_n_0 ));
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \iv[15]_i_101 
       (.I0(\ccmd[4]_INST_0_i_17_n_0 ),
        .I1(ir[12]),
        .I2(ir[0]),
        .I3(ir[11]),
        .I4(ir[7]),
        .O(\iv[15]_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \iv[15]_i_102 
       (.I0(\bcmd[0]_INST_0_i_4_n_0 ),
        .I1(ir[11]),
        .I2(ir[10]),
        .I3(ir[3]),
        .I4(ir[2]),
        .I5(Q[0]),
        .O(\iv[15]_i_102_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \iv[15]_i_103 
       (.I0(ir[6]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(ir[7]),
        .O(\iv[15]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h3230000002000000)) 
    \iv[15]_i_104 
       (.I0(crdy),
        .I1(ir[11]),
        .I2(rst_n_fl_reg_1),
        .I3(ir[3]),
        .I4(ir[12]),
        .I5(ir[10]),
        .O(\iv[15]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h7755757500007070)) 
    \iv[15]_i_105 
       (.I0(rst_n_fl_reg_1),
        .I1(\bdatw[15]_INST_0_i_149_n_0 ),
        .I2(ir[0]),
        .I3(ir[3]),
        .I4(ir[7]),
        .I5(crdy),
        .O(\iv[15]_i_105_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \iv[15]_i_106 
       (.I0(ir[3]),
        .I1(brdy),
        .I2(ir[6]),
        .I3(ir[9]),
        .I4(ir[8]),
        .O(\iv[15]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hFF1F1F1FFF0FFF0F)) 
    \iv[15]_i_107 
       (.I0(\iv[15]_i_121_n_0 ),
        .I1(\ccmd[2]_INST_0_i_13_n_0 ),
        .I2(ir[10]),
        .I3(\iv[15]_i_122_n_0 ),
        .I4(crdy),
        .I5(ir[7]),
        .O(\iv[15]_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h3CFCFFFF7FFFFFFF)) 
    \iv[15]_i_108 
       (.I0(rst_n_fl_reg_1),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[3]),
        .I5(crdy),
        .O(\iv[15]_i_108_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_109 
       (.I0(ir[12]),
        .I1(ir[11]),
        .O(\iv[15]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \iv[15]_i_11 
       (.I0(\ccmd[0]_INST_0_i_20_n_0 ),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(ir[14]),
        .I4(ir[15]),
        .I5(ir[12]),
        .O(\iv[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEAAA)) 
    \iv[15]_i_110 
       (.I0(\iv[15]_i_123_n_0 ),
        .I1(ir[8]),
        .I2(ir[0]),
        .I3(ir[9]),
        .I4(\iv[15]_i_124_n_0 ),
        .I5(\iv[15]_i_125_n_0 ),
        .O(\iv[15]_i_110_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \iv[15]_i_111 
       (.I0(ir[12]),
        .I1(\badr[15]_INST_0_i_2 [7]),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_2 [5]),
        .O(\iv[15]_i_111_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_112 
       (.I0(ir[5]),
        .I1(ir[6]),
        .O(\iv[15]_i_112_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FDFFFDFF)) 
    \iv[15]_i_113 
       (.I0(ir[5]),
        .I1(ir[11]),
        .I2(ctl_fetch_inferred_i_9_n_0),
        .I3(crdy),
        .I4(\iv[15]_i_126_n_0 ),
        .I5(ir[10]),
        .O(\iv[15]_i_113_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \iv[15]_i_114 
       (.I0(ir[5]),
        .I1(brdy),
        .I2(ir[6]),
        .I3(ir[9]),
        .I4(ir[8]),
        .O(\iv[15]_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h404040FF40404040)) 
    \iv[15]_i_115 
       (.I0(\iv[15]_i_127_n_0 ),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(ir[9]),
        .I4(\ccmd[0]_INST_0_i_21_n_0 ),
        .I5(\iv[15]_i_128_n_0 ),
        .O(\iv[15]_i_115_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00BFFFFF)) 
    \iv[15]_i_116 
       (.I0(ir[8]),
        .I1(\iv[15]_i_129_n_0 ),
        .I2(crdy),
        .I3(\iv[15]_i_130_n_0 ),
        .I4(ir[10]),
        .I5(ir[9]),
        .O(\iv[15]_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF7FFF)) 
    \iv[15]_i_117 
       (.I0(ir[2]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[10]),
        .I4(\iv[15]_i_91_n_0 ),
        .I5(\iv[15]_i_131_n_0 ),
        .O(\iv[15]_i_117_n_0 ));
  LUT5 #(
    .INIT(32'h1A0A0AA3)) 
    \iv[15]_i_118 
       (.I0(ir[7]),
        .I1(ir[3]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ir[4]),
        .O(\iv[15]_i_118_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[15]_i_119 
       (.I0(crdy),
        .I1(ir[8]),
        .O(\iv[15]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFF2FFF0FFF8F)) 
    \iv[15]_i_12 
       (.I0(ir[11]),
        .I1(ir[13]),
        .I2(ir[15]),
        .I3(Q[0]),
        .I4(ir[12]),
        .I5(ir[14]),
        .O(\iv[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF1DDDFFFF)) 
    \iv[15]_i_120 
       (.I0(ir[1]),
        .I1(ir[7]),
        .I2(ir[4]),
        .I3(crdy),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\iv[15]_i_120_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFFF0FFFFFFFF)) 
    \iv[15]_i_121 
       (.I0(brdy),
        .I1(ir[0]),
        .I2(ir[6]),
        .I3(ir[4]),
        .I4(ir[5]),
        .I5(ir[3]),
        .O(\iv[15]_i_121_n_0 ));
  LUT5 #(
    .INIT(32'h0000D800)) 
    \iv[15]_i_122 
       (.I0(ir[7]),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(ir[8]),
        .I4(ir[9]),
        .O(\iv[15]_i_122_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAFFFFFFFF)) 
    \iv[15]_i_123 
       (.I0(\iv[15]_i_132_n_0 ),
        .I1(\iv[15]_i_119_n_0 ),
        .I2(ir[7]),
        .I3(ir[3]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\iv[15]_i_123_n_0 ));
  LUT5 #(
    .INIT(32'hFBFFFFFE)) 
    \iv[15]_i_124 
       (.I0(ir[3]),
        .I1(ir[6]),
        .I2(ir[7]),
        .I3(ir[4]),
        .I4(ir[5]),
        .O(\iv[15]_i_124_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFBBBBB)) 
    \iv[15]_i_125 
       (.I0(\bcmd[1]_INST_0_i_2_n_0 ),
        .I1(ir[3]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\iv[15]_i_125_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000FAFFFAFF)) 
    \iv[15]_i_126 
       (.I0(\bdatw[15]_INST_0_i_149_n_0 ),
        .I1(crdy),
        .I2(ir[7]),
        .I3(ir[2]),
        .I4(\iv[15]_i_74_n_0 ),
        .I5(ir[5]),
        .O(\iv[15]_i_126_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \iv[15]_i_127 
       (.I0(brdy),
        .I1(ir[5]),
        .I2(ir[7]),
        .I3(ir[6]),
        .I4(ir[9]),
        .I5(ir[8]),
        .O(\iv[15]_i_127_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \iv[15]_i_128 
       (.I0(ir[8]),
        .I1(ir[2]),
        .I2(ir[7]),
        .I3(ir[5]),
        .O(\iv[15]_i_128_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_129 
       (.I0(ir[5]),
        .I1(ir[7]),
        .O(\iv[15]_i_129_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \iv[15]_i_13 
       (.I0(ctl_fetch_ext_fl_i_4_n_0),
        .I1(\iv[15]_i_34_n_0 ),
        .I2(\ccmd[0]_INST_0_i_19_n_0 ),
        .I3(\fch_irq_lev[1]_i_5_n_0 ),
        .I4(\ccmd[1]_INST_0_i_18_n_0 ),
        .I5(\iv[15]_i_35_n_0 ),
        .O(\iv[15]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \iv[15]_i_130 
       (.I0(ir[6]),
        .I1(ir[8]),
        .I2(ir[5]),
        .I3(ir[7]),
        .O(\iv[15]_i_130_n_0 ));
  LUT6 #(
    .INIT(64'h03230300333F0000)) 
    \iv[15]_i_131 
       (.I0(crdy),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[5]),
        .I5(ir[10]),
        .O(\iv[15]_i_131_n_0 ));
  LUT6 #(
    .INIT(64'h0404040000040000)) 
    \iv[15]_i_132 
       (.I0(\ccmd[2]_INST_0_i_13_n_0 ),
        .I1(ir[7]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ctl_fetch_ext_fl_i_7_n_0),
        .I5(ir[0]),
        .O(\iv[15]_i_132_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \iv[15]_i_14 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(ir[14]),
        .I3(ir[15]),
        .O(\iv[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h3333333322220333)) 
    \iv[15]_i_15 
       (.I0(\iv[15]_i_36_n_0 ),
        .I1(\iv[15]_i_37_n_0 ),
        .I2(\iv[15]_i_38_n_0 ),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(Q[1]),
        .O(\iv[15]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h40004444)) 
    \iv[15]_i_16 
       (.I0(ir[15]),
        .I1(Q[1]),
        .I2(\iv[15]_i_39_n_0 ),
        .I3(\bdatw[15]_INST_0_i_78_n_0 ),
        .I4(\iv[15]_i_40_n_0 ),
        .O(\iv[15]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \iv[15]_i_17 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[11]),
        .O(\iv[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002AAA)) 
    \iv[15]_i_18 
       (.I0(ir[15]),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\iv[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFEFEFEEEF)) 
    \iv[15]_i_19 
       (.I0(\bdatw[15]_INST_0_i_76_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(ir[12]),
        .I4(\iv_reg[15]_i_41_n_0 ),
        .I5(\iv[15]_i_42_n_0 ),
        .O(\iv[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hDDDD0D00DDDDDDDD)) 
    \iv[15]_i_20 
       (.I0(Q[2]),
        .I1(\iv[15]_i_43_n_0 ),
        .I2(\iv[15]_i_44_n_0 ),
        .I3(\iv[15]_i_9_0 ),
        .I4(\iv[15]_i_46_n_0 ),
        .I5(\iv[15]_i_47_n_0 ),
        .O(ctl_selc_rn));
  LUT6 #(
    .INIT(64'h5555100055555555)) 
    \iv[15]_i_21 
       (.I0(Q[2]),
        .I1(\iv[15]_i_17_n_0 ),
        .I2(ir[10]),
        .I3(\iv[15]_i_18_n_0 ),
        .I4(\iv[15]_i_48_n_0 ),
        .I5(\iv[15]_i_49_n_0 ),
        .O(\iv[15]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00004111)) 
    \iv[15]_i_22 
       (.I0(ir[14]),
        .I1(ir[11]),
        .I2(ir[12]),
        .I3(\badr[15]_INST_0_i_2 [7]),
        .I4(Q[0]),
        .O(\iv[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEEEEEEEFEE)) 
    \iv[15]_i_23 
       (.I0(\iv_reg[15]_i_50_n_0 ),
        .I1(\iv[15]_i_51_n_0 ),
        .I2(ir[9]),
        .I3(\ccmd[0]_INST_0_i_21_n_0 ),
        .I4(rst_n_fl_reg_1),
        .I5(Q[0]),
        .O(\iv[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAABAAAFAAABA)) 
    \iv[15]_i_24 
       (.I0(\iv[15]_i_22_n_0 ),
        .I1(\ccmd[1]_INST_0_i_14_n_0 ),
        .I2(\iv[15]_i_52_n_0 ),
        .I3(Q[0]),
        .I4(crdy),
        .I5(ir[7]),
        .O(\iv[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000400)) 
    \iv[15]_i_25 
       (.I0(ir[7]),
        .I1(crdy),
        .I2(Q[0]),
        .I3(ir[11]),
        .I4(ir[9]),
        .I5(\iv[15]_i_53_n_0 ),
        .O(\iv[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FEFEFFFFFEFE)) 
    \iv[15]_i_26 
       (.I0(\bdatw[15]_INST_0_i_97_n_0 ),
        .I1(\iv[15]_i_8_0 ),
        .I2(ctl_fetch_inferred_i_26_n_0),
        .I3(ir[7]),
        .I4(ir[11]),
        .I5(\iv[15]_i_8_1 ),
        .O(\iv[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFB00FFFF)) 
    \iv[15]_i_27 
       (.I0(ctl_fetch_inferred_i_9_n_0),
        .I1(\ccmd[1]_INST_0_i_22_n_0 ),
        .I2(\bdatw[15]_INST_0_i_97_n_0 ),
        .I3(ir[11]),
        .I4(\iv[15]_i_9_0 ),
        .I5(\iv[15]_i_56_n_0 ),
        .O(\iv[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hE0FFE0E0E0E0E0E0)) 
    \iv[15]_i_28 
       (.I0(ir[11]),
        .I1(\ccmd[4]_INST_0_i_25_n_0 ),
        .I2(\iv[15]_i_57_n_0 ),
        .I3(\iv[15]_i_58_n_0 ),
        .I4(\iv[15]_i_59_n_0 ),
        .I5(\iv[15]_i_60_n_0 ),
        .O(\iv[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0F000000F3000800)) 
    \iv[15]_i_29 
       (.I0(\badr[15]_INST_0_i_2 [6]),
        .I1(ir[11]),
        .I2(ir[12]),
        .I3(ctl_fetch_ext_fl_reg_0),
        .I4(ir[15]),
        .I5(ir[14]),
        .O(\iv[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00F1FFFF00F100F1)) 
    \iv[15]_i_3 
       (.I0(\iv[15]_i_7_n_0 ),
        .I1(\iv[15]_i_8_n_0 ),
        .I2(\iv[15]_i_9_n_0 ),
        .I3(Q[2]),
        .I4(\iv[15]_i_10_n_0 ),
        .I5(\iv[15]_i_11_n_0 ),
        .O(ctl_selc));
  LUT6 #(
    .INIT(64'h00FF00FF000000F4)) 
    \iv[15]_i_30 
       (.I0(\iv[15]_i_61_n_0 ),
        .I1(\iv[15]_i_62_n_0 ),
        .I2(\iv[15]_i_63_n_0 ),
        .I3(\iv[15]_i_64_n_0 ),
        .I4(ir[15]),
        .I5(Q[0]),
        .O(\iv[15]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \iv[15]_i_31 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(ir[3]),
        .O(\iv[15]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[15]_i_32 
       (.I0(ir[11]),
        .I1(ir[9]),
        .O(\iv[15]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_34 
       (.I0(ir[2]),
        .I1(ir[0]),
        .O(\iv[15]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h8888888F)) 
    \iv[15]_i_35 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(crdy),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\iv[15]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFABFFAA00A800)) 
    \iv[15]_i_36 
       (.I0(\iv[15]_i_65_n_0 ),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(ir[10]),
        .I5(\iv[15]_i_66_n_0 ),
        .O(\iv[15]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFF44F4FF44444444)) 
    \iv[15]_i_37 
       (.I0(\ccmd[4]_INST_0_i_16_n_0 ),
        .I1(\iv[15]_i_15_0 ),
        .I2(\iv[15]_i_67_n_0 ),
        .I3(ir[11]),
        .I4(ir[8]),
        .I5(\ccmd[0]_INST_0_i_26_n_0 ),
        .O(\iv[15]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000B2)) 
    \iv[15]_i_38 
       (.I0(Q[0]),
        .I1(ir[7]),
        .I2(crdy),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(\iv[15]_i_68_n_0 ),
        .O(\iv[15]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h0440)) 
    \iv[15]_i_39 
       (.I0(ir[0]),
        .I1(ir[2]),
        .I2(ir[1]),
        .I3(ir[3]),
        .O(\iv[15]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h5501550155015555)) 
    \iv[15]_i_4 
       (.I0(Q[2]),
        .I1(\iv[15]_i_12_n_0 ),
        .I2(Q[1]),
        .I3(\iv[15]_i_13_n_0 ),
        .I4(\iv[15]_i_14_n_0 ),
        .I5(\iv[15]_i_15_n_0 ),
        .O(\iv[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00BFFFFF)) 
    \iv[15]_i_40 
       (.I0(\ccmd[4]_INST_0_i_17_n_0 ),
        .I1(ir[1]),
        .I2(ir[7]),
        .I3(\iv[15]_i_69_n_0 ),
        .I4(\ccmd[4]_INST_0_i_25_n_0 ),
        .I5(\iv[15]_i_70_n_0 ),
        .O(\iv[15]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A2A222)) 
    \iv[15]_i_42 
       (.I0(\iv[15]_i_73_n_0 ),
        .I1(ir[4]),
        .I2(\ccmd[4]_INST_0_i_16_n_0 ),
        .I3(\bcmd[1]_INST_0_i_2_n_0 ),
        .I4(ir[10]),
        .I5(\iv[15]_i_74_n_0 ),
        .O(\iv[15]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \iv[15]_i_43 
       (.I0(\badr[15]_INST_0_i_67_n_0 ),
        .I1(ir[15]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\iv[15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0020222222222222)) 
    \iv[15]_i_44 
       (.I0(\iv[15]_i_75_n_0 ),
        .I1(\iv[15]_i_76_n_0 ),
        .I2(\bdatw[9]_INST_0_i_32_n_0 ),
        .I3(\iv[15]_i_39_n_0 ),
        .I4(\bdatw[15]_INST_0_i_78_n_0 ),
        .I5(Q[0]),
        .O(\iv[15]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA8A8A8A8A8A8)) 
    \iv[15]_i_46 
       (.I0(\badr[15]_INST_0_i_92_0 ),
        .I1(Q[2]),
        .I2(\iv[15]_i_77_n_0 ),
        .I3(\iv[15]_i_78_n_0 ),
        .I4(ir[13]),
        .I5(ir[14]),
        .O(\iv[15]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h45454500FFFFFFFF)) 
    \iv[15]_i_47 
       (.I0(\iv[15]_i_79_n_0 ),
        .I1(\iv[15]_i_17_n_0 ),
        .I2(\iv[15]_i_80_n_0 ),
        .I3(\badr[15]_INST_0_i_90_n_0 ),
        .I4(\iv[15]_i_81_n_0 ),
        .I5(ctl_fetch_ext_fl_reg_0),
        .O(\iv[15]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h3233303302030003)) 
    \iv[15]_i_48 
       (.I0(\ccmd[3]_INST_0_i_11_n_0 ),
        .I1(\iv[15]_i_82_n_0 ),
        .I2(ir[11]),
        .I3(\ccmd[4]_INST_0_i_16_n_0 ),
        .I4(ir[2]),
        .I5(\iv[15]_i_83_n_0 ),
        .O(\iv[15]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFEFFEEEFFEF)) 
    \iv[15]_i_49 
       (.I0(\bdatw[15]_INST_0_i_76_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\iv[15]_i_84_n_0 ),
        .I4(ir[12]),
        .I5(\iv_reg[15]_i_85_n_0 ),
        .O(\iv[15]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h4544444455555555)) 
    \iv[15]_i_5 
       (.I0(Q[2]),
        .I1(\iv[15]_i_16_n_0 ),
        .I2(\iv[15]_i_17_n_0 ),
        .I3(ir[9]),
        .I4(\iv[15]_i_18_n_0 ),
        .I5(\iv[15]_i_19_n_0 ),
        .O(\iv[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4000404040404040)) 
    \iv[15]_i_51 
       (.I0(brdy),
        .I1(Q[0]),
        .I2(ir[9]),
        .I3(ir[5]),
        .I4(ir[11]),
        .I5(ir[10]),
        .O(\iv[15]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_52 
       (.I0(ir[11]),
        .I1(ir[9]),
        .O(\iv[15]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \iv[15]_i_53 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[8]),
        .O(\iv[15]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h4044)) 
    \iv[15]_i_56 
       (.I0(ir[8]),
        .I1(ir[11]),
        .I2(ir[6]),
        .I3(brdy),
        .O(\iv[15]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF1000FFFF)) 
    \iv[15]_i_57 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[7]),
        .I3(ir[10]),
        .I4(\ccmd[4]_INST_0_i_16_n_0 ),
        .I5(ir[11]),
        .O(\iv[15]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \iv[15]_i_58 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[3]),
        .I4(ir[0]),
        .I5(ir[9]),
        .O(\iv[15]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \iv[15]_i_59 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[7]),
        .I3(ir[6]),
        .I4(ir[5]),
        .I5(ir[4]),
        .O(\iv[15]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_6 
       (.I0(ctl_selc_rn),
        .I1(\iv[15]_i_21_n_0 ),
        .O(\iv[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000055AA0CFF0000)) 
    \iv[15]_i_60 
       (.I0(ir[3]),
        .I1(brdy),
        .I2(Q[0]),
        .I3(ir[1]),
        .I4(ir[0]),
        .I5(ir[2]),
        .O(\iv[15]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \iv[15]_i_61 
       (.I0(\ccmd[2]_INST_0_i_18_n_0 ),
        .I1(ir[2]),
        .I2(\iv[15]_i_88_n_0 ),
        .I3(ir[0]),
        .I4(ir[14]),
        .I5(\iv[15]_i_59_n_0 ),
        .O(\iv[15]_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h0451)) 
    \iv[15]_i_62 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(\badr[15]_INST_0_i_2 [5]),
        .I3(ir[11]),
        .O(\iv[15]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h820082AA28AA2800)) 
    \iv[15]_i_63 
       (.I0(ir[12]),
        .I1(\badr[15]_INST_0_i_2 [7]),
        .I2(\badr[15]_INST_0_i_2 [5]),
        .I3(ir[14]),
        .I4(\badr[15]_INST_0_i_2 [4]),
        .I5(ir[11]),
        .O(\iv[15]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \iv[15]_i_64 
       (.I0(\iv[15]_i_11_n_0 ),
        .I1(\bdatw[15]_INST_0_i_17_n_0 ),
        .I2(Q[0]),
        .I3(ir[11]),
        .I4(ir[9]),
        .I5(\iv[15]_i_89_n_0 ),
        .O(\iv[15]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hDFD0FFFFDFDFFFFF)) 
    \iv[15]_i_65 
       (.I0(brdy),
        .I1(\iv[15]_i_90_n_0 ),
        .I2(Q[0]),
        .I3(\iv[15]_i_91_n_0 ),
        .I4(ir[8]),
        .I5(ir[10]),
        .O(\iv[15]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h3FCC331DFFCCFF00)) 
    \iv[15]_i_66 
       (.I0(ir[6]),
        .I1(ir[10]),
        .I2(crdy),
        .I3(Q[0]),
        .I4(ir[7]),
        .I5(ir[8]),
        .O(\iv[15]_i_66_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_67 
       (.I0(brdy),
        .I1(ir[6]),
        .O(\iv[15]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h0280020000800000)) 
    \iv[15]_i_68 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(Q[0]),
        .I3(ir[6]),
        .I4(brdy),
        .I5(ir[7]),
        .O(\iv[15]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F4F0F0)) 
    \iv[15]_i_69 
       (.I0(ir[10]),
        .I1(crdy),
        .I2(ir[11]),
        .I3(\bcmd[2]_INST_0_i_2_n_0 ),
        .I4(ir[14]),
        .I5(ir[15]),
        .O(\iv[15]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h1FFF1F5FFFFFFFFF)) 
    \iv[15]_i_7 
       (.I0(\iv[15]_i_22_n_0 ),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[12]),
        .I4(\badr[15]_INST_0_i_2 [6]),
        .I5(\ccmd[4]_INST_0_i_26_n_0 ),
        .O(\iv[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0D0F0D0F000F0D0)) 
    \iv[15]_i_70 
       (.I0(ir[8]),
        .I1(\iv[15]_i_92_n_0 ),
        .I2(ir[11]),
        .I3(\bdatw[15]_INST_0_i_97_n_0 ),
        .I4(\iv[15]_i_93_n_0 ),
        .I5(\iv[15]_i_94_n_0 ),
        .O(\iv[15]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8AFFAAFF)) 
    \iv[15]_i_71 
       (.I0(\iv[15]_i_95_n_0 ),
        .I1(ir[8]),
        .I2(\iv[15]_i_96_n_0 ),
        .I3(ir[10]),
        .I4(crdy),
        .I5(ir[9]),
        .O(\iv[15]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hBBB88888BBBBBBBB)) 
    \iv[15]_i_72 
       (.I0(\iv[15]_i_97_n_0 ),
        .I1(ir[10]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(ir[4]),
        .O(\iv[15]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'hF7D5FFFF)) 
    \iv[15]_i_73 
       (.I0(ir[12]),
        .I1(ir[11]),
        .I2(\iv[15]_i_98_n_0 ),
        .I3(\iv[15]_i_99_n_0 ),
        .I4(ir[10]),
        .O(\iv[15]_i_73_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \iv[15]_i_74 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[6]),
        .I3(brdy),
        .O(\iv[15]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFDDDDDDDD)) 
    \iv[15]_i_75 
       (.I0(\bcmd[1]_INST_0_i_10_n_0 ),
        .I1(Q[0]),
        .I2(\iv[15]_i_100_n_0 ),
        .I3(\sp[15]_i_14_n_0 ),
        .I4(ir[9]),
        .I5(\iv[15]_i_101_n_0 ),
        .O(\iv[15]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h8080008000000000)) 
    \iv[15]_i_76 
       (.I0(\iv[15]_i_102_n_0 ),
        .I1(\ccmd[3]_INST_0_i_9_n_0 ),
        .I2(\iv[15]_i_103_n_0 ),
        .I3(ir[1]),
        .I4(brdy),
        .I5(ir[0]),
        .O(\iv[15]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h00003C2000000000)) 
    \iv[15]_i_77 
       (.I0(brdy),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[2]),
        .I4(ir[0]),
        .I5(\bdatw[15]_INST_0_i_78_n_0 ),
        .O(\iv[15]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h5070507755775577)) 
    \iv[15]_i_78 
       (.I0(\iv[15]_i_104_n_0 ),
        .I1(\iv[15]_i_105_n_0 ),
        .I2(\bcmd[1]_INST_0_i_2_n_0 ),
        .I3(\iv[15]_i_106_n_0 ),
        .I4(ir[10]),
        .I5(\iv[15]_i_107_n_0 ),
        .O(\iv[15]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h4C44444C4C4C4444)) 
    \iv[15]_i_79 
       (.I0(\stat[1]_i_5_n_0 ),
        .I1(ctl_fetch_ext_fl_i_6_n_0),
        .I2(ir[13]),
        .I3(\badr[15]_INST_0_i_2 [4]),
        .I4(ir[11]),
        .I5(ir[12]),
        .O(\iv[15]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h00CF008A0000008A)) 
    \iv[15]_i_8 
       (.I0(\iv[15]_i_23_n_0 ),
        .I1(\ccmd[4]_INST_0_i_16_n_0 ),
        .I2(Q[0]),
        .I3(\iv[15]_i_24_n_0 ),
        .I4(\iv[15]_i_25_n_0 ),
        .I5(\iv[15]_i_26_n_0 ),
        .O(\iv[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA0000)) 
    \iv[15]_i_80 
       (.I0(ir[15]),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(ir[14]),
        .I4(ir[8]),
        .O(\iv[15]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h00EFFFFF00EF0000)) 
    \iv[15]_i_81 
       (.I0(\iv[15]_i_108_n_0 ),
        .I1(\bdatw[15]_INST_0_i_97_n_0 ),
        .I2(\iv[15]_i_109_n_0 ),
        .I3(\iv[15]_i_110_n_0 ),
        .I4(ir[13]),
        .I5(\iv[15]_i_111_n_0 ),
        .O(\iv[15]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFFFFFF)) 
    \iv[15]_i_82 
       (.I0(Q[0]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[12]),
        .I4(ir[15]),
        .I5(Q[1]),
        .O(\iv[15]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h4500400040004000)) 
    \iv[15]_i_83 
       (.I0(\bdatw[15]_INST_0_i_97_n_0 ),
        .I1(ir[2]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(brdy),
        .I5(\iv[15]_i_112_n_0 ),
        .O(\iv[15]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'h3B3B3BFBFBFB3BFB)) 
    \iv[15]_i_84 
       (.I0(\iv[15]_i_113_n_0 ),
        .I1(ir[12]),
        .I2(ir[11]),
        .I3(\iv[15]_i_114_n_0 ),
        .I4(ir[10]),
        .I5(\iv[15]_i_115_n_0 ),
        .O(\iv[15]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FF0FF7F7FFFFF)) 
    \iv[15]_i_86 
       (.I0(\iv[15]_i_118_n_0 ),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(ir[7]),
        .I4(ir[9]),
        .I5(ir[6]),
        .O(\iv[15]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F707F0F0F0F0F)) 
    \iv[15]_i_87 
       (.I0(\stat[0]_i_18_n_0 ),
        .I1(\stat[0]_i_16_n_0 ),
        .I2(ir[11]),
        .I3(ir[10]),
        .I4(ir[6]),
        .I5(ir[9]),
        .O(\iv[15]_i_87_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[15]_i_88 
       (.I0(ir[9]),
        .I1(crdy),
        .O(\iv[15]_i_88_n_0 ));
  LUT5 #(
    .INIT(32'hFF0FC5FF)) 
    \iv[15]_i_89 
       (.I0(brdy),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(ir[1]),
        .I4(ir[3]),
        .O(\iv[15]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4F4F4FF)) 
    \iv[15]_i_9 
       (.I0(\iv[15]_i_27_n_0 ),
        .I1(\iv[15]_i_28_n_0 ),
        .I2(\iv[15]_i_29_n_0 ),
        .I3(ir[13]),
        .I4(Q[1]),
        .I5(\iv[15]_i_30_n_0 ),
        .O(\iv[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFF00FF00)) 
    \iv[15]_i_90 
       (.I0(ir[5]),
        .I1(ir[7]),
        .I2(ir[3]),
        .I3(ir[6]),
        .I4(ir[4]),
        .I5(ir[10]),
        .O(\iv[15]_i_90_n_0 ));
  LUT5 #(
    .INIT(32'hFFDF0FFE)) 
    \iv[15]_i_91 
       (.I0(ir[4]),
        .I1(ir[3]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[5]),
        .O(\iv[15]_i_91_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \iv[15]_i_92 
       (.I0(ir[7]),
        .I1(ir[1]),
        .O(\iv[15]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_93 
       (.I0(ir[4]),
        .I1(ir[6]),
        .O(\iv[15]_i_93_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \iv[15]_i_94 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(brdy),
        .O(\iv[15]_i_94_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \iv[15]_i_95 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[4]),
        .I3(ir[6]),
        .O(\iv[15]_i_95_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_96 
       (.I0(ir[4]),
        .I1(ir[7]),
        .O(\iv[15]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'hFB00FBFBFBFBFBFB)) 
    \iv[15]_i_97 
       (.I0(\iv[15]_i_91_n_0 ),
        .I1(ir[1]),
        .I2(\ccmd[2]_INST_0_i_13_n_0 ),
        .I3(\stat[0]_i_13_n_0 ),
        .I4(\iv[15]_i_119_n_0 ),
        .I5(ir[4]),
        .O(\iv[15]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA2AAAAAAAAAAA)) 
    \iv[15]_i_98 
       (.I0(\iv[15]_i_120_n_0 ),
        .I1(brdy),
        .I2(ir[5]),
        .I3(ctl_fetch_inferred_i_21_n_0),
        .I4(\ccmd[2]_INST_0_i_13_n_0 ),
        .I5(\bdatw[10]_INST_0_i_16_n_0 ),
        .O(\iv[15]_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hAFAF0F23AFAFAF23)) 
    \iv[15]_i_99 
       (.I0(\iv[15]_i_74_n_0 ),
        .I1(ir[1]),
        .I2(ir[4]),
        .I3(ir[7]),
        .I4(\bdatw[15]_INST_0_i_149_n_0 ),
        .I5(crdy),
        .O(\iv[15]_i_99_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[1]_i_1 
       (.I0(\iv[1]_i_2_n_0 ),
        .I1(\iv[1]_i_3_n_0 ),
        .O(cbus[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[1]_i_11 
       (.I0(\iv[14]_i_14_0 ),
        .I1(abus_0[0]),
        .O(\iv[1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h004FB0FF)) 
    \iv[1]_i_12 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(abus_0[1]),
        .I4(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\iv[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB1B3B9BBF4F6FCFE)) 
    \iv[1]_i_13 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(abus_0[9]),
        .I4(\bdatw[9]_INST_0_i_2_n_0 ),
        .I5(abus_0[1]),
        .O(\iv[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0880800088800000)) 
    \iv[1]_i_14 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(\bdatw[9]_INST_0_i_2_n_0 ),
        .I3(abus_0[1]),
        .I4(\stat_reg[2]_12 ),
        .I5(\stat_reg[2]_11 ),
        .O(\iv[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002F20202)) 
    \iv[1]_i_2 
       (.I0(\tr_reg[1]_0 ),
        .I1(\iv[1]_i_5_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[1]_i_6_n_0 ),
        .I4(\iv[1]_i_7_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFEAFFFFFFEA)) 
    \iv[1]_i_3 
       (.I0(\iv[1]_i_8_n_0 ),
        .I1(\stat_reg[2]_10 ),
        .I2(cbus_i[1]),
        .I3(\tr_reg[1]_1 ),
        .I4(O[1]),
        .I5(\iv[13]_i_3_n_0 ),
        .O(\iv[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF44F4F444444444)) 
    \iv[1]_i_5 
       (.I0(\iv[1]_i_11_n_0 ),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\iv[1]_i_2_0 ),
        .I3(\iv[9]_i_2_3 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\stat_reg[2]_11 ),
        .O(\iv[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF333F3FF33223322)) 
    \iv[1]_i_6 
       (.I0(\iv[9]_i_17_n_0 ),
        .I1(\iv[14]_i_14_0 ),
        .I2(\iv[14]_i_4_0 ),
        .I3(\bdatw[12]_INST_0_i_2_1 ),
        .I4(\iv[10]_i_7_0 ),
        .I5(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFBFFFBBB)) 
    \iv[1]_i_7 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[14]_i_14_0 ),
        .I2(\iv[9]_i_2_4 ),
        .I3(\bdatw[12]_INST_0_i_2_1 ),
        .I4(\iv[9]_i_2_5 ),
        .O(\iv[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF087F0000)) 
    \iv[1]_i_8 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .I2(\iv[1]_i_12_n_0 ),
        .I3(\iv[1]_i_13_n_0 ),
        .I4(\iv[14]_i_8_n_0 ),
        .I5(\iv[1]_i_14_n_0 ),
        .O(\iv[1]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[2]_i_1 
       (.I0(\iv[2]_i_2_n_0 ),
        .I1(\iv[2]_i_3_n_0 ),
        .O(cbus[2]));
  LUT5 #(
    .INIT(32'h303F5F50)) 
    \iv[2]_i_14 
       (.I0(abus_0[10]),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_12 ),
        .I3(abus_0[2]),
        .I4(\stat_reg[2]_11 ),
        .O(\iv[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF0004000B0000000)) 
    \iv[2]_i_15 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(\ccmd[1]_INST_0_i_1_n_0 ),
        .I4(\bdatw[10]_INST_0_i_2_n_0 ),
        .I5(abus_0[2]),
        .O(\iv[2]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9757)) 
    \iv[2]_i_16 
       (.I0(\stat_reg[2]_12 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(abus_0[2]),
        .I3(\stat_reg[2]_11 ),
        .O(\iv[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF020002)) 
    \iv[2]_i_2 
       (.I0(\iv[2]_i_4_n_0 ),
        .I1(\iv[2]_i_5_n_0 ),
        .I2(\iv[2]_i_6_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\iv[2]_i_7_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFEEEFFFFFEEE)) 
    \iv[2]_i_3 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\tr_reg[2]_0 ),
        .I2(\stat_reg[2]_10 ),
        .I3(cbus_i[2]),
        .I4(O[2]),
        .I5(\iv[13]_i_3_n_0 ),
        .O(\iv[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F0FAFDFDF5FF)) 
    \iv[2]_i_4 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[2]_i_2_3 ),
        .I2(\bdatw[12]_INST_0_i_2_0 ),
        .I3(\iv[2]_i_2_4 ),
        .I4(\stat_reg[2]_12 ),
        .I5(\iv[2]_i_2_5 ),
        .O(\iv[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2808080A280)) 
    \iv[2]_i_5 
       (.I0(\stat_reg[2]_11 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\iv[2]_i_2_1 ),
        .I3(\iv[11]_i_2_0 ),
        .I4(\bdatw[12]_INST_0_i_2_1 ),
        .I5(\sr[7]_i_6_0 ),
        .O(\iv[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \iv[2]_i_6 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(abus_0[1]),
        .I2(\iv[14]_i_14_0 ),
        .O(\iv[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCC0F0000CC0F0055)) 
    \iv[2]_i_7 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\iv[2]_i_2_2 ),
        .I2(\iv[2]_i_2_0 ),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(\iv[14]_i_14_0 ),
        .I5(\iv[14]_i_42 ),
        .O(\iv[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hC0D0CFD0)) 
    \iv[2]_i_8 
       (.I0(\iv[2]_i_14_n_0 ),
        .I1(\iv[2]_i_15_n_0 ),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(\iv[14]_i_7_n_0 ),
        .I4(\iv[2]_i_16_n_0 ),
        .O(\iv[2]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[3]_i_1 
       (.I0(\iv[3]_i_2_n_0 ),
        .I1(\iv[3]_i_3_n_0 ),
        .O(cbus[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[3]_i_10 
       (.I0(\iv[14]_i_14_0 ),
        .I1(abus_0[2]),
        .O(\iv[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hC0CF5F50)) 
    \iv[3]_i_15 
       (.I0(abus_0[11]),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_12 ),
        .I3(abus_0[3]),
        .I4(\stat_reg[2]_11 ),
        .O(\iv[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h40000000F000B000)) 
    \iv[3]_i_16 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(\ccmd[1]_INST_0_i_1_n_0 ),
        .I4(abus_0[3]),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[3]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h65DD)) 
    \iv[3]_i_17 
       (.I0(\stat_reg[2]_12 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(abus_0[3]),
        .O(\iv[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF0E)) 
    \iv[3]_i_2 
       (.I0(\iv[3]_i_4_n_0 ),
        .I1(\iv[3]_i_5_n_0 ),
        .I2(\iv[3]_i_6_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\iv[3]_i_7_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFEEEFFFFFEEE)) 
    \iv[3]_i_3 
       (.I0(\iv[3]_i_8_n_0 ),
        .I1(\tr_reg[3]_0 ),
        .I2(\stat_reg[2]_10 ),
        .I3(cbus_i[3]),
        .I4(O[3]),
        .I5(\iv[13]_i_3_n_0 ),
        .O(\iv[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8080D0D000A050F0)) 
    \iv[3]_i_4 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(abus_0[15]),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\iv[3]_i_2_4 ),
        .I4(\iv[3]_i_2_1 ),
        .I5(\stat_reg[2]_12 ),
        .O(\iv[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F2F3)) 
    \iv[3]_i_5 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\bdatw[12]_INST_0_i_2_0 ),
        .I3(\iv[8]_i_2_1 ),
        .I4(\iv[3]_i_2_0 ),
        .O(\iv[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFBA303075303030)) 
    \iv[3]_i_6 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[3]_i_10_n_0 ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(\iv[3]_i_2_5 ),
        .I4(\stat_reg[2]_11 ),
        .I5(\iv[3]_i_2_6 ),
        .O(\iv[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF1300000F130000)) 
    \iv[3]_i_7 
       (.I0(\iv[3]_i_2_2 ),
        .I1(\iv[11]_i_21_n_0 ),
        .I2(\iv[14]_i_14_0 ),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\iv[3]_i_2_3 ),
        .O(\iv[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hC0D0CFD0)) 
    \iv[3]_i_8 
       (.I0(\iv[3]_i_15_n_0 ),
        .I1(\iv[3]_i_16_n_0 ),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(\iv[14]_i_7_n_0 ),
        .I4(\iv[3]_i_17_n_0 ),
        .O(\iv[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[4]_i_1 
       (.I0(\iv[4]_i_2_n_0 ),
        .I1(\iv[4]_i_3_n_0 ),
        .O(cbus[4]));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[4]_i_12 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(abus_0[4]),
        .I2(\stat_reg[2]_11 ),
        .O(\iv[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h464E030B444C0109)) 
    \iv[4]_i_13 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(abus_0[4]),
        .I5(abus_0[12]),
        .O(\iv[4]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h80802888)) 
    \iv[4]_i_14 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\stat_reg[2]_12 ),
        .I2(abus_0[4]),
        .I3(\stat_reg[2]_11 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF8A)) 
    \iv[4]_i_2 
       (.I0(\iv[4]_i_4_n_0 ),
        .I1(\iv[4]_i_5_n_0 ),
        .I2(\iv[4]_i_6_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\iv[4]_i_7_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFEEEFFFFFEEE)) 
    \iv[4]_i_3 
       (.I0(\iv[4]_i_8_n_0 ),
        .I1(\tr_reg[4]_0 ),
        .I2(\stat_reg[2]_10 ),
        .I3(cbus_i[4]),
        .I4(\tr_reg[7]_0 [0]),
        .I5(\iv[13]_i_3_n_0 ),
        .O(\iv[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \iv[4]_i_4 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(\iv[14]_i_14_0 ),
        .I2(abus_0[3]),
        .O(\iv[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFA50EEEEFA504444)) 
    \iv[4]_i_5 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[0]_i_2_2 ),
        .I2(\iv[4]_i_2_1 ),
        .I3(\iv[14]_i_32_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_1 ),
        .I5(\iv[12]_i_2_0 ),
        .O(\iv[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0FFF0FFF0F7)) 
    \iv[4]_i_6 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(\iv[14]_i_31_n_0 ),
        .I4(\stat_reg[2]_12 ),
        .I5(\iv[12]_i_2_1 ),
        .O(\iv[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h40CC4CCC40C04CC0)) 
    \iv[4]_i_7 
       (.I0(\iv[4]_i_2_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\iv[14]_i_14_0 ),
        .I4(\iv[4]_i_2_2 ),
        .I5(\iv[12]_i_25_n_0 ),
        .O(\iv[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \iv[4]_i_8 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .I2(\iv[4]_i_12_n_0 ),
        .I3(\iv[4]_i_13_n_0 ),
        .I4(\iv[14]_i_8_n_0 ),
        .I5(\iv[4]_i_14_n_0 ),
        .O(\iv[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[5]_i_1 
       (.I0(\iv[5]_i_2_n_0 ),
        .I1(\iv[5]_i_3_n_0 ),
        .O(cbus[5]));
  LUT5 #(
    .INIT(32'hC0CF5F50)) 
    \iv[5]_i_15 
       (.I0(abus_0[13]),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_12 ),
        .I3(abus_0[5]),
        .I4(\stat_reg[2]_11 ),
        .O(\iv[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h40000000F000B000)) 
    \iv[5]_i_16 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(\ccmd[1]_INST_0_i_1_n_0 ),
        .I4(abus_0[5]),
        .I5(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(\iv[5]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h65DD)) 
    \iv[5]_i_17 
       (.I0(\stat_reg[2]_12 ),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(abus_0[5]),
        .O(\iv[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF0E000E)) 
    \iv[5]_i_2 
       (.I0(\iv[5]_i_4_n_0 ),
        .I1(\iv[5]_i_5_n_0 ),
        .I2(\iv[5]_i_6_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\tr_reg[5]_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFEAFFFFFFEA)) 
    \iv[5]_i_3 
       (.I0(\iv[5]_i_8_n_0 ),
        .I1(\stat_reg[2]_10 ),
        .I2(cbus_i[5]),
        .I3(\tr_reg[5]_1 ),
        .I4(\tr_reg[7]_0 [1]),
        .I5(\iv[13]_i_3_n_0 ),
        .O(\iv[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAA202A202A)) 
    \iv[5]_i_4 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[0]_i_2_3 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\sr[4]_i_20_2 ),
        .I4(\iv[5]_i_2_3 ),
        .I5(\stat_reg[2]_12 ),
        .O(\iv[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCCDEF)) 
    \iv[5]_i_5 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[12]_INST_0_i_2_0 ),
        .I2(\iv[5]_i_2_2 ),
        .I3(\sr[4]_i_20_3 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF4444FCCC4444)) 
    \iv[5]_i_6 
       (.I0(\iv[5]_i_2_0 ),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\iv[13]_i_19_n_0 ),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(\stat_reg[2]_11 ),
        .I5(\iv[5]_i_2_1 ),
        .O(\iv[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hC0D0CFD0)) 
    \iv[5]_i_8 
       (.I0(\iv[5]_i_15_n_0 ),
        .I1(\iv[5]_i_16_n_0 ),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(\iv[14]_i_7_n_0 ),
        .I4(\iv[5]_i_17_n_0 ),
        .O(\iv[5]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[6]_i_1 
       (.I0(\iv[6]_i_2_n_0 ),
        .I1(\iv[6]_i_3_n_0 ),
        .O(cbus[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[6]_i_12 
       (.I0(\iv[14]_i_14_0 ),
        .I1(abus_0[5]),
        .O(\iv[6]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[6]_i_14 
       (.I0(\iv[14]_i_14_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[6]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[6]_i_15 
       (.I0(\iv[14]_i_14_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[6]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h004FB0FF)) 
    \iv[6]_i_16 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(abus_0[6]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\iv[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hB1B3F4F6B9BBFCFE)) 
    \iv[6]_i_17 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(abus_0[14]),
        .I4(abus_0[6]),
        .I5(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\iv[6]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0880800088800000)) 
    \iv[6]_i_18 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(\bdatw[14]_INST_0_i_2_n_0 ),
        .I3(abus_0[6]),
        .I4(\stat_reg[2]_12 ),
        .I5(\stat_reg[2]_11 ),
        .O(\iv[6]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF22F022)) 
    \iv[6]_i_2 
       (.I0(\tr_reg[6]_0 ),
        .I1(\iv[6]_i_5_n_0 ),
        .I2(\iv[6]_i_6_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\iv[6]_i_7_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFEEEFFFFFEEE)) 
    \iv[6]_i_3 
       (.I0(\iv[6]_i_8_n_0 ),
        .I1(\tr_reg[6]_1 ),
        .I2(\stat_reg[2]_10 ),
        .I3(cbus_i[6]),
        .I4(\tr_reg[7]_0 [2]),
        .I5(\iv[13]_i_3_n_0 ),
        .O(\iv[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF4FF4444F4444444)) 
    \iv[6]_i_5 
       (.I0(\iv[6]_i_12_n_0 ),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\iv[14]_i_33_n_0 ),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(\stat_reg[2]_11 ),
        .I5(\iv[6]_i_2_0 ),
        .O(\iv[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \iv[6]_i_6 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[6]_i_2_1 ),
        .I2(\iv[14]_i_14_0 ),
        .O(\iv[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF2F200FA222200FA)) 
    \iv[6]_i_7 
       (.I0(\iv[6]_i_14_n_0 ),
        .I1(\iv[14]_i_42 ),
        .I2(\iv[6]_i_15_n_0 ),
        .I3(\iv[14]_i_4_0 ),
        .I4(\bdatw[12]_INST_0_i_2_1 ),
        .I5(\iv[14]_i_4_1 ),
        .O(\iv[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF087F0000)) 
    \iv[6]_i_8 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .I2(\iv[6]_i_16_n_0 ),
        .I3(\iv[6]_i_17_n_0 ),
        .I4(\iv[14]_i_8_n_0 ),
        .I5(\iv[6]_i_18_n_0 ),
        .O(\iv[6]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[7]_i_1 
       (.I0(\iv[7]_i_2_n_0 ),
        .I1(\iv[7]_i_3_n_0 ),
        .O(cbus[7]));
  LUT6 #(
    .INIT(64'hFE00FF00FF00FF00)) 
    \iv[7]_i_10 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\sp_reg[0] ),
        .I3(\stat_reg[2]_11 ),
        .I4(abus_0[15]),
        .I5(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h80800088)) 
    \iv[7]_i_14 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .I2(abus_0[7]),
        .I3(\bdatw[15]_INST_0_i_2_n_0 ),
        .I4(\stat_reg[2]_11 ),
        .O(\iv[7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hC0CF5F50)) 
    \iv[7]_i_15 
       (.I0(abus_0[15]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_12 ),
        .I3(abus_0[7]),
        .I4(\stat_reg[2]_11 ),
        .O(\iv[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h4ABF)) 
    \iv[7]_i_16 
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[2]_11 ),
        .I2(abus_0[7]),
        .I3(\stat_reg[2]_12 ),
        .O(\iv[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF8A)) 
    \iv[7]_i_2 
       (.I0(\iv[7]_i_4_n_0 ),
        .I1(\iv[7]_i_5_n_0 ),
        .I2(\iv[7]_i_6_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\iv[7]_i_7_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFEEEFFFFFEEE)) 
    \iv[7]_i_3 
       (.I0(\iv[7]_i_8_n_0 ),
        .I1(\tr_reg[7]_1 ),
        .I2(\stat_reg[2]_10 ),
        .I3(cbus_i[7]),
        .I4(\tr_reg[7]_0 [3]),
        .I5(\iv[13]_i_3_n_0 ),
        .O(\iv[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \iv[7]_i_4 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(\iv[14]_i_14_0 ),
        .I2(abus_0[6]),
        .O(\iv[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055577757)) 
    \iv[7]_i_5 
       (.I0(\iv[12]_i_19_0 ),
        .I1(\iv[10]_i_14_n_0 ),
        .I2(\iv[3]_i_2_4 ),
        .I3(\bdatw[12]_INST_0_i_2_1 ),
        .I4(\iv[11]_i_2_0 ),
        .I5(\iv[7]_i_10_n_0 ),
        .O(\iv[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \iv[7]_i_6 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[3]_i_2_0 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\iv[3]_i_2_1 ),
        .O(\iv[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7F7700002A220000)) 
    \iv[7]_i_7 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[14]_i_14_0 ),
        .I2(\iv[7]_i_2_1 ),
        .I3(\iv[7]_i_2_2 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\iv[7]_i_2_0 ),
        .O(\iv[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0B0AFB0)) 
    \iv[7]_i_8 
       (.I0(\iv[7]_i_14_n_0 ),
        .I1(\iv[7]_i_15_n_0 ),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(\iv[14]_i_7_n_0 ),
        .I4(\iv[7]_i_16_n_0 ),
        .O(\iv[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[8]_i_1 
       (.I0(\iv[8]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\tr_reg[11]_0 [0]),
        .I3(\tr_reg[8]_0 ),
        .I4(\iv[8]_i_4_n_0 ),
        .O(cbus[8]));
  LUT5 #(
    .INIT(32'hC0CF5F50)) 
    \iv[8]_i_10 
       (.I0(abus_0[0]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_12 ),
        .I3(abus_0[8]),
        .I4(\stat_reg[2]_11 ),
        .O(\iv[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0004000B0000000)) 
    \iv[8]_i_11 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(\ccmd[1]_INST_0_i_1_n_0 ),
        .I4(abus_0[8]),
        .I5(\sp_reg[0] ),
        .O(\iv[8]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h65DD)) 
    \iv[8]_i_12 
       (.I0(\stat_reg[2]_12 ),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(abus_0[8]),
        .O(\iv[8]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \iv[8]_i_16 
       (.I0(\iv[0]_i_12_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\iv[14]_i_14_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFA8AA)) 
    \iv[8]_i_2 
       (.I0(\iv[8]_i_5_n_0 ),
        .I1(\tr_reg[8]_1 ),
        .I2(\iv[8]_i_7_n_0 ),
        .I3(\iv[8]_i_8_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\iv[8]_i_9_n_0 ),
        .O(\iv[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC0D0CFD0)) 
    \iv[8]_i_4 
       (.I0(\iv[8]_i_10_n_0 ),
        .I1(\iv[8]_i_11_n_0 ),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(\iv[14]_i_7_n_0 ),
        .I4(\iv[8]_i_12_n_0 ),
        .O(\iv[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h5575)) 
    \iv[8]_i_5 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(\stat_reg[2]_12 ),
        .I2(abus_0[7]),
        .I3(\stat_reg[2]_11 ),
        .O(\iv[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h008040C0)) 
    \iv[8]_i_7 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\iv[14]_i_14_0 ),
        .I3(\iv[8]_i_2_1 ),
        .I4(\iv[12]_i_2_1 ),
        .O(\iv[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[8]_i_8 
       (.I0(\stat_reg[2]_11 ),
        .I1(\iv[12]_i_19_0 ),
        .O(\iv[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABBFFFAFA)) 
    \iv[8]_i_9 
       (.I0(\iv[14]_i_2_n_0 ),
        .I1(\iv[0]_i_2_0 ),
        .I2(\iv[8]_i_2_0 ),
        .I3(\iv[14]_i_14_0 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\iv[8]_i_16_n_0 ),
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
        .I2(\stat_reg[2]_11 ),
        .O(\iv[9]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h65DD)) 
    \iv[9]_i_11 
       (.I0(\stat_reg[2]_12 ),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(abus_0[9]),
        .O(\iv[9]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[9]_i_17 
       (.I0(\bdatw[8]_INST_0_i_2_1 ),
        .I1(\sr[4]_i_19 ),
        .O(\iv[9]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \iv[9]_i_19 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\sp_reg[0] ),
        .O(\bdatw[8]_INST_0_i_2_1 ));
  LUT6 #(
    .INIT(64'h00000000FF220F22)) 
    \iv[9]_i_2 
       (.I0(\iv[9]_i_5_n_0 ),
        .I1(\iv[9]_i_6_n_0 ),
        .I2(\iv[9]_i_7_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\tr_reg[9]_1 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\iv[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h058D0000058DAAAA)) 
    \iv[9]_i_4 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .I2(\iv[9]_i_9_n_0 ),
        .I3(\iv[9]_i_10_n_0 ),
        .I4(\iv[14]_i_8_n_0 ),
        .I5(\iv[9]_i_11_n_0 ),
        .O(\iv[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55D555DF5FD55FDF)) 
    \iv[9]_i_5 
       (.I0(\iv[12]_i_19_0 ),
        .I1(\iv[9]_i_2_0 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\stat_reg[2]_12 ),
        .I4(\iv[9]_i_2_1 ),
        .I5(\iv[9]_i_2_2 ),
        .O(\iv[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE0FFFFFFE0E0E0E0)) 
    \iv[9]_i_6 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[9]_i_2_3 ),
        .I2(\stat_reg[2]_11 ),
        .I3(\iv[14]_i_14_0 ),
        .I4(abus_0[8]),
        .I5(\iv[14]_i_11_n_0 ),
        .O(\iv[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5533FFF0FFFFFFFF)) 
    \iv[9]_i_7 
       (.I0(\iv[9]_i_2_4 ),
        .I1(\iv[9]_i_2_5 ),
        .I2(\iv[9]_i_17_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_1 ),
        .I4(\iv[14]_i_14_0 ),
        .I5(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[9]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hC0CF5F50)) 
    \iv[9]_i_9 
       (.I0(abus_0[1]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_12 ),
        .I3(abus_0[9]),
        .I4(\stat_reg[2]_11 ),
        .O(\iv[9]_i_9_n_0 ));
  MUXF7 \iv_reg[15]_i_41 
       (.I0(\iv[15]_i_71_n_0 ),
        .I1(\iv[15]_i_72_n_0 ),
        .O(\iv_reg[15]_i_41_n_0 ),
        .S(ir[11]));
  MUXF7 \iv_reg[15]_i_50 
       (.I0(\iv[15]_i_86_n_0 ),
        .I1(\iv[15]_i_87_n_0 ),
        .O(\iv_reg[15]_i_50_n_0 ),
        .S(Q[0]));
  MUXF7 \iv_reg[15]_i_85 
       (.I0(\iv[15]_i_116_n_0 ),
        .I1(\iv[15]_i_117_n_0 ),
        .O(\iv_reg[15]_i_85_n_0 ),
        .S(ir[11]));
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
        .I5(\sp_reg[15]_2 ),
        .O(\pc_reg[15] [15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \pc[15]_i_3 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
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
       (.I0(\stat_reg[0]_1 ),
        .I1(crdy_0),
        .I2(\stat_reg[0]_2 ),
        .I3(abus_0[0]),
        .I4(brdy),
        .I5(read_cyc),
        .O(brdy_1));
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
        .I3(\sp_reg[15]_2 ),
        .I4(\sp[15]_i_5_n_0 ),
        .O(\stat_reg[0]_3 [15]));
  LUT6 #(
    .INIT(64'h7E7EFFFFFFFFFF7E)) 
    \sp[15]_i_10 
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[2]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\sp[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEFEFFF0)) 
    \sp[15]_i_12 
       (.I0(Q[0]),
        .I1(\sp[15]_i_14_n_0 ),
        .I2(ir[6]),
        .I3(ir[10]),
        .I4(ir[9]),
        .I5(\sp[15]_i_15_n_0 ),
        .O(\sp[15]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hEEFF7747)) 
    \sp[15]_i_13 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[0]),
        .I3(ir[7]),
        .I4(ir[3]),
        .O(\sp[15]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \sp[15]_i_14 
       (.I0(ir[12]),
        .I1(ir[10]),
        .I2(ir[11]),
        .O(\sp[15]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h50FFFFFC)) 
    \sp[15]_i_15 
       (.I0(ir[6]),
        .I1(ir[1]),
        .I2(ir[4]),
        .I3(ir[7]),
        .I4(ir[8]),
        .O(\sp[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000015)) 
    \sp[15]_i_2 
       (.I0(\sp[15]_i_6_n_0 ),
        .I1(Q[0]),
        .I2(\bdatw[10]_INST_0_i_33_n_0 ),
        .I3(\sp[15]_i_7_n_0 ),
        .I4(\sp[15]_i_8_n_0 ),
        .I5(\bcmd[1]_INST_0_i_6_n_0 ),
        .O(ctl_sp_inc));
  LUT4 #(
    .INIT(16'h2000)) 
    \sp[15]_i_3 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
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
  LUT6 #(
    .INIT(64'h76FF76FFFF76FFFF)) 
    \sp[15]_i_6 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(ir[3]),
        .I4(ir[1]),
        .I5(ir[5]),
        .O(\sp[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3EFFFFFFFFFFFF3E)) 
    \sp[15]_i_7 
       (.I0(ir[2]),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(ir[7]),
        .O(\sp[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBCFFFFFFFFFF)) 
    \sp[15]_i_8 
       (.I0(Q[0]),
        .I1(ir[12]),
        .I2(ir[11]),
        .I3(brdy),
        .I4(Q[2]),
        .I5(\ccmd[4]_INST_0_i_26_n_0 ),
        .O(\sp[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000000E)) 
    \sp[15]_i_9 
       (.I0(\bcmd[1]_INST_0_i_3_n_0 ),
        .I1(ir[10]),
        .I2(\sp[15]_i_10_n_0 ),
        .I3(\sp[15]_i_5_0 ),
        .I4(\sp[15]_i_12_n_0 ),
        .I5(\sp[15]_i_13_n_0 ),
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
    .INIT(64'h00000000FB080808)) 
    \sr[13]_i_10 
       (.I0(\sr[13]_i_11_n_0 ),
        .I1(ir[8]),
        .I2(ctl_fetch_ext_fl_i_2_n_0),
        .I3(ir[11]),
        .I4(\sr[13]_i_12_n_0 ),
        .I5(\badr[15]_INST_0_i_78_n_0 ),
        .O(\sr[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CC100010)) 
    \sr[13]_i_11 
       (.I0(ctl_fetch_inferred_i_26_n_0),
        .I1(ir[11]),
        .I2(ir[6]),
        .I3(ir[9]),
        .I4(ir[10]),
        .I5(\sr[13]_i_13_n_0 ),
        .O(\sr[13]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h37)) 
    \sr[13]_i_12 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[7]),
        .O(\sr[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0FFFFBFFFFFC0)) 
    \sr[13]_i_13 
       (.I0(ir[3]),
        .I1(ir[9]),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(ir[6]),
        .I5(ir[7]),
        .O(\sr[13]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \sr[13]_i_2 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
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
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(ir[14]),
        .I5(ir[15]),
        .O(ctl_sr_upd));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \sr[13]_i_6 
       (.I0(\sr[13]_i_8_n_0 ),
        .I1(\fch_irq_lev[1]_i_5_n_0 ),
        .I2(ir[1]),
        .I3(ir[0]),
        .I4(brdy),
        .I5(\sr[13]_i_3_0 ),
        .O(ctl_sr_ldie));
  LUT6 #(
    .INIT(64'hBBBBAAAAEAFFAAAA)) 
    \sr[13]_i_7 
       (.I0(\sr[13]_i_10_n_0 ),
        .I1(ir[12]),
        .I2(ir[11]),
        .I3(ir[14]),
        .I4(ir[15]),
        .I5(ir[13]),
        .O(\sr[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sr[13]_i_8 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(\bcmd[0]_INST_0_i_4_n_0 ),
        .I3(ir[10]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\sr[13]_i_8_n_0 ));
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
    .INIT(8'hFE)) 
    \sr[4]_i_10 
       (.I0(\iv[5]_i_8_n_0 ),
        .I1(\iv[7]_i_8_n_0 ),
        .I2(\sr[7]_i_7_n_0 ),
        .O(\sr[4]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \sr[4]_i_11 
       (.I0(\iv[13]_i_5_n_0 ),
        .I1(\iv[10]_i_4_n_0 ),
        .I2(\iv[11]_i_5_n_0 ),
        .O(\sr[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000BABB)) 
    \sr[4]_i_12 
       (.I0(\badr[15]_INST_0_i_2 [4]),
        .I1(\iv[13]_i_11_n_0 ),
        .I2(\iv[13]_i_10_n_0 ),
        .I3(\stat_reg[2]_11 ),
        .I4(\sr[4]_i_3_0 ),
        .I5(\iv[13]_i_3_n_0 ),
        .O(\sr[4]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sr[4]_i_13 
       (.I0(\iv[14]_i_2_n_0 ),
        .I1(\iv[0]_i_2_n_0 ),
        .I2(\sr[7]_i_6_n_0 ),
        .I3(\iv[4]_i_2_n_0 ),
        .I4(\iv[5]_i_2_n_0 ),
        .O(\sr[4]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hBBBAAAAA)) 
    \sr[4]_i_14 
       (.I0(\iv[7]_i_2_n_0 ),
        .I1(\iv[14]_i_2_n_0 ),
        .I2(\iv[12]_i_2_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\iv[12]_i_3_n_0 ),
        .O(\sr[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0C0A0A0C0C)) 
    \sr[4]_i_15 
       (.I0(\sr[4]_i_5_0 ),
        .I1(\sr[4]_i_20_n_0 ),
        .I2(\iv[14]_i_2_n_0 ),
        .I3(\sr[4]_i_21_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\iv[14]_i_4_n_0 ),
        .O(\sr[4]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hBBBAAAAA)) 
    \sr[4]_i_16 
       (.I0(\iv[13]_i_2_n_0 ),
        .I1(\iv[14]_i_2_n_0 ),
        .I2(\iv[11]_i_2_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\iv[11]_i_3_n_0 ),
        .O(\sr[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF803FFFFFFFF)) 
    \sr[4]_i_17 
       (.I0(\ccmd[0]_INST_0_i_1_n_0 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .I2(\ccmd[2]_INST_0_i_1_n_0 ),
        .I3(\ccmd[3]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[2]_10 ),
        .I5(\ccmd[4]_INST_0_i_2_n_0 ),
        .O(\sr[4]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[4]_i_2 
       (.I0(\sr[7]_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_2 [4]),
        .O(\sr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFEE0E)) 
    \sr[4]_i_20 
       (.I0(\bdatw[12]_INST_0_i_2_0 ),
        .I1(\sr[4]_i_26_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(\sr[4]_i_27_n_0 ),
        .I4(\sr[4]_i_28_n_0 ),
        .I5(\sr[4]_i_29_n_0 ),
        .O(\sr[4]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h8F008F8F)) 
    \sr[4]_i_21 
       (.I0(abus_0[13]),
        .I1(\iv[14]_i_14_0 ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(\iv[14]_i_10_n_0 ),
        .I4(\iv[14]_i_9_n_0 ),
        .O(\sr[4]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFEF)) 
    \sr[4]_i_25 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\bdatw[12]_INST_0_i_2_1 ),
        .I2(\sr[4]_i_19 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .I4(\iv[14]_i_14_0 ),
        .O(\iv[14]_i_12_0 ));
  LUT6 #(
    .INIT(64'h0044084C88CC084C)) 
    \sr[4]_i_26 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\sr[4]_i_20_2 ),
        .I3(\sr[4]_i_20_3 ),
        .I4(\stat_reg[2]_12 ),
        .I5(\sr[4]_i_20_4 ),
        .O(\sr[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h202A0000757F0000)) 
    \sr[4]_i_27 
       (.I0(\bdatw[12]_INST_0_i_2_1 ),
        .I1(\badr[15]_INST_0_i_1 ),
        .I2(\bdatw[8]_INST_0_i_2_1 ),
        .I3(\sr[4]_i_20_0 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\sr[4]_i_20_3 ),
        .O(\sr[4]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \sr[4]_i_28 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\sr[4]_i_20_1 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\iv[5]_i_2_2 ),
        .O(\sr[4]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \sr[4]_i_29 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(abus_0[0]),
        .I2(\iv[14]_i_14_0 ),
        .O(\sr[4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \sr[4]_i_3 
       (.I0(\sr[4]_i_7_n_0 ),
        .I1(\sr[4]_i_8_n_0 ),
        .I2(\sr[4]_i_9_n_0 ),
        .I3(\sr[4]_i_10_n_0 ),
        .I4(\sr[4]_i_11_n_0 ),
        .I5(\sr[4]_i_12_n_0 ),
        .O(\sr[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \sr[4]_i_4 
       (.I0(\sr[4]_i_13_n_0 ),
        .I1(\iv[9]_i_2_n_0 ),
        .I2(\iv[8]_i_2_n_0 ),
        .I3(\iv[6]_i_2_n_0 ),
        .I4(\iv[10]_i_2_n_0 ),
        .O(\sr[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sr[4]_i_5 
       (.I0(\iv[3]_i_2_n_0 ),
        .I1(\iv[2]_i_2_n_0 ),
        .I2(\sr[4]_i_14_n_0 ),
        .I3(\sr[4]_i_15_n_0 ),
        .I4(\sr[4]_i_16_n_0 ),
        .O(\sr[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[4]_i_6 
       (.I0(\sr[7]_i_5_n_0 ),
        .I1(cbus[4]),
        .O(\sr[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_7 
       (.I0(\iv[14]_i_6_n_0 ),
        .I1(\iv[9]_i_4_n_0 ),
        .I2(\iv[12]_i_5_n_0 ),
        .I3(\iv[8]_i_4_n_0 ),
        .O(\sr[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sr[4]_i_8 
       (.I0(\iv[0]_i_8_n_0 ),
        .I1(\iv[1]_i_8_n_0 ),
        .I2(\iv[3]_i_8_n_0 ),
        .O(\sr[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_9 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\sr[4]_i_17_n_0 ),
        .I2(\iv[4]_i_8_n_0 ),
        .I3(\iv[6]_i_8_n_0 ),
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
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\sr[5]_i_3_n_0 ),
        .I5(\sr[5]_i_4_n_0 ),
        .O(\sr[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sr[5]_i_3 
       (.I0(\stat_reg[2]_10 ),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .O(\sr[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00090600)) 
    \sr[5]_i_4 
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(\iv[13]_i_3_n_0 ),
        .I3(\sr_reg[7]_0 [3]),
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
  LUT5 #(
    .INIT(32'hAAAA0028)) 
    \sr[6]_i_2 
       (.I0(\sr[7]_i_3_n_0 ),
        .I1(tout__1_carry_i_8_n_0),
        .I2(\sr_reg[6]_0 ),
        .I3(\iv[13]_i_3_n_0 ),
        .I4(\sr[6]_i_3_n_0 ),
        .O(\sr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFDD0FDD)) 
    \sr[6]_i_3 
       (.I0(\sr[6]_i_4_n_0 ),
        .I1(\sr[5]_i_2_0 ),
        .I2(\sr[6]_i_6_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\sr[6]_i_7_n_0 ),
        .I5(\iv[14]_i_2_n_0 ),
        .O(\sr[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sr[6]_i_4 
       (.I0(\iv[0]_i_10_n_0 ),
        .I1(abus_0[15]),
        .O(\sr[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBEAFBFBFBEAEAEA)) 
    \sr[6]_i_6 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\bdatw[12]_INST_0_i_2_1 ),
        .I2(\iv[12]_i_3_0 ),
        .I3(\sr[6]_i_3_0 ),
        .I4(\stat_reg[2]_12 ),
        .I5(\iv[11]_i_3_0 ),
        .O(\sr[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \sr[6]_i_7 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[12]_i_3_1 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\iv[12]_i_3_2 ),
        .O(\sr[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hEA40)) 
    \sr[6]_i_8 
       (.I0(\bdatw[8]_INST_0_i_2_1 ),
        .I1(abus_0[0]),
        .I2(\sp_reg[0] ),
        .I3(\sr[6]_i_5 ),
        .O(\iv[14]_i_39 ));
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
    .INIT(32'hFFFFFD5D)) 
    \sr[7]_i_10 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\sr[7]_i_6_0 ),
        .I2(\bdatw[12]_INST_0_i_2_1 ),
        .I3(\iv[10]_i_5_1 ),
        .I4(\stat_reg[2]_12 ),
        .O(\sr[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7020)) 
    \sr[7]_i_11 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\iv[6]_i_2_1 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[7]_i_2_0 ),
        .I4(\sr[7]_i_16_n_0 ),
        .O(\sr[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hC0CF5F50)) 
    \sr[7]_i_12 
       (.I0(abus_0[7]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\stat_reg[2]_12 ),
        .I3(abus_0[15]),
        .I4(\stat_reg[2]_11 ),
        .O(\sr[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB0000000F0004000)) 
    \sr[7]_i_13 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(\ccmd[1]_INST_0_i_1_n_0 ),
        .I4(abus_0[15]),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\sr[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9A22)) 
    \sr[7]_i_14 
       (.I0(\stat_reg[2]_12 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(abus_0[15]),
        .O(\sr[7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hAEAAAEAE)) 
    \sr[7]_i_16 
       (.I0(\iv[14]_i_2_n_0 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[0]_i_10_n_0 ),
        .I4(abus_0[15]),
        .O(\sr[7]_i_16_n_0 ));
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
        .I2(\sr_reg[7]_0 [3]),
        .I3(\iv[13]_i_3_n_0 ),
        .O(alu_sr_flag));
  LUT3 #(
    .INIT(8'hE0)) 
    \sr[7]_i_5 
       (.I0(\rgf/cbus_sel_cr [5]),
        .I1(\rgf/cbus_sel_cr [0]),
        .I2(rst_n),
        .O(\sr[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF8A)) 
    \sr[7]_i_6 
       (.I0(\sr[7]_i_8_n_0 ),
        .I1(\sr[7]_i_9_n_0 ),
        .I2(\sr[7]_i_10_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\sr[7]_i_11_n_0 ),
        .O(\sr[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hCFC0D0D0)) 
    \sr[7]_i_7 
       (.I0(\sr[7]_i_12_n_0 ),
        .I1(\sr[7]_i_13_n_0 ),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(\sr[7]_i_14_n_0 ),
        .I4(\iv[14]_i_7_n_0 ),
        .O(\sr[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \sr[7]_i_8 
       (.I0(\iv[14]_i_14_0 ),
        .I1(abus_0[14]),
        .I2(\iv[14]_i_11_n_0 ),
        .O(\sr[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFFFEEEEEEEE)) 
    \sr[7]_i_9 
       (.I0(\iv[12]_i_19_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_0 ),
        .I2(\iv[11]_i_2_0 ),
        .I3(\bdatw[12]_INST_0_i_2_1 ),
        .I4(\iv[3]_i_2_4 ),
        .I5(\iv[14]_i_30_0 ),
        .O(\sr[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04540404)) 
    \stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(\stat[0]_i_3_n_0 ),
        .I2(ir[13]),
        .I3(\stat_reg[0]_i_4_n_0 ),
        .I4(ir[12]),
        .I5(\stat[0]_i_5_n_0 ),
        .O(\stat_reg[2]_13 [0]));
  LUT6 #(
    .INIT(64'hEFAAAAEFAAAAAAAA)) 
    \stat[0]_i_10 
       (.I0(\stat[0]_i_20_n_0 ),
        .I1(ir[1]),
        .I2(Q[1]),
        .I3(brdy),
        .I4(Q[0]),
        .I5(\stat[0]_i_21_n_0 ),
        .O(\stat[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000000050FF7F)) 
    \stat[0]_i_11 
       (.I0(ir[3]),
        .I1(\badr[15]_INST_0_i_2 [10]),
        .I2(ir[0]),
        .I3(ir[1]),
        .I4(Q[2]),
        .I5(\stat[0]_i_22_n_0 ),
        .O(\stat[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \stat[0]_i_12 
       (.I0(ir[5]),
        .I1(ir[10]),
        .I2(ir[3]),
        .O(\stat[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \stat[0]_i_13 
       (.I0(ir[7]),
        .I1(ir[9]),
        .O(\stat[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5F535F5F50505050)) 
    \stat[0]_i_14 
       (.I0(\stat[0]_i_23_n_0 ),
        .I1(ir[7]),
        .I2(ir[10]),
        .I3(ir[6]),
        .I4(ir[9]),
        .I5(\ccmd[0]_INST_0_i_25_n_0 ),
        .O(\stat[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h1F001F1F5F5F5F5F)) 
    \stat[0]_i_15 
       (.I0(ir[7]),
        .I1(\badr[15]_INST_0_i_2 [11]),
        .I2(\stat[0]_i_24_n_0 ),
        .I3(\stat[0]_i_25_n_0 ),
        .I4(ir[9]),
        .I5(ir[8]),
        .O(\stat[0]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \stat[0]_i_16 
       (.I0(ir[3]),
        .I1(ir[10]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(ir[6]),
        .O(\stat[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00A0002000A00000)) 
    \stat[0]_i_17 
       (.I0(ir[9]),
        .I1(ir[6]),
        .I2(ir[8]),
        .I3(brdy),
        .I4(ir[11]),
        .I5(ir[10]),
        .O(\stat[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hDDDFDDDDDDDDDDDD)) 
    \stat[0]_i_18 
       (.I0(ir[10]),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(ir[7]),
        .I5(ir[3]),
        .O(\stat[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000009000000000)) 
    \stat[0]_i_19 
       (.I0(ir[8]),
        .I1(ir[11]),
        .I2(ir[7]),
        .I3(crdy),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\stat[0]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \stat[0]_i_2 
       (.I0(ir[14]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(ir[15]),
        .O(\stat[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBFAA)) 
    \stat[0]_i_20 
       (.I0(ir[13]),
        .I1(\badr[15]_INST_0_i_2 [4]),
        .I2(ir[11]),
        .I3(ir[12]),
        .O(\stat[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1000101011111111)) 
    \stat[0]_i_21 
       (.I0(\stat[0]_i_26_n_0 ),
        .I1(ir[2]),
        .I2(ir[0]),
        .I3(ir[1]),
        .I4(\bdatw[15]_INST_0_i_1_4 [0]),
        .I5(Q[0]),
        .O(\stat[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \stat[0]_i_22 
       (.I0(\ccmd[0]_INST_0_i_20_n_0 ),
        .I1(Q[1]),
        .I2(\bdatw[10]_INST_0_i_16_n_0 ),
        .I3(\ccmd[0]_INST_0_i_17_n_0 ),
        .I4(\stat[0]_i_11_0 ),
        .I5(\stat[0]_i_11_1 ),
        .O(\stat[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hE6EEF7FFE6EEFFFF)) 
    \stat[0]_i_23 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[6]),
        .I3(brdy),
        .I4(crdy),
        .I5(rst_n_fl_reg_1),
        .O(\stat[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h00D0)) 
    \stat[0]_i_24 
       (.I0(ir[8]),
        .I1(crdy),
        .I2(ir[10]),
        .I3(ir[9]),
        .O(\stat[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFFFFFAA)) 
    \stat[0]_i_25 
       (.I0(\stat[0]_i_29_n_0 ),
        .I1(ir[7]),
        .I2(ir[3]),
        .I3(ir[6]),
        .I4(ir[10]),
        .I5(\stat[0]_i_30_n_0 ),
        .O(\stat[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \stat[0]_i_26 
       (.I0(ir[11]),
        .I1(Q[2]),
        .O(\stat[0]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \stat[0]_i_29 
       (.I0(ir[5]),
        .I1(brdy),
        .O(\stat[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015404015)) 
    \stat[0]_i_3 
       (.I0(Q[0]),
        .I1(ir[12]),
        .I2(\badr[15]_INST_0_i_2 [7]),
        .I3(ir[11]),
        .I4(\badr[15]_INST_0_i_2 [5]),
        .I5(ir[13]),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00CC0000D0CC0000)) 
    \stat[0]_i_30 
       (.I0(ir[3]),
        .I1(brdy),
        .I2(ir[7]),
        .I3(ir[10]),
        .I4(\ccmd[1]_INST_0_i_19_n_0 ),
        .I5(ir[4]),
        .O(\stat[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEBFBEBEF)) 
    \stat[0]_i_31 
       (.I0(\stat[0]_i_32_n_0 ),
        .I1(ir[2]),
        .I2(ir[0]),
        .I3(ir[1]),
        .I4(ir[3]),
        .I5(\ccmd[1]_INST_0_i_18_n_0 ),
        .O(\stat_reg[2]_14 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \stat[0]_i_32 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(Q[2]),
        .I3(ir[7]),
        .I4(ir[8]),
        .I5(\bdatw[10]_INST_0_i_16_n_0 ),
        .O(\stat[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A888A888A88)) 
    \stat[0]_i_5 
       (.I0(ctl_fetch_ext_fl_i_6_n_0),
        .I1(\stat[0]_i_9_n_0 ),
        .I2(\stat[0]_i_10_n_0 ),
        .I3(\stat[0]_i_11_n_0 ),
        .I4(\stat_reg[0]_4 ),
        .I5(ir[11]),
        .O(\stat[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0F0F0F000F0F0)) 
    \stat[0]_i_6 
       (.I0(ir[9]),
        .I1(\stat[0]_i_12_n_0 ),
        .I2(Q[0]),
        .I3(ir[8]),
        .I4(ir[11]),
        .I5(brdy),
        .O(\stat[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000008FF08FF)) 
    \stat[0]_i_7 
       (.I0(ir[10]),
        .I1(\badr[15]_INST_0_i_2 [11]),
        .I2(\stat[0]_i_13_n_0 ),
        .I3(\stat[0]_i_14_n_0 ),
        .I4(\stat[0]_i_15_n_0 ),
        .I5(ir[11]),
        .O(\stat[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007F77)) 
    \stat[0]_i_8 
       (.I0(\stat[0]_i_16_n_0 ),
        .I1(\stat[0]_i_17_n_0 ),
        .I2(\stat[0]_i_18_n_0 ),
        .I3(ir[11]),
        .I4(\stat[0]_i_19_n_0 ),
        .I5(ctl_fetch_inferred_i_26_n_0),
        .O(\stat[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000020AAAAAAAA)) 
    \stat[0]_i_9 
       (.I0(\stat_reg[0]_4 ),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[11]),
        .I4(\badr[15]_INST_0_i_2 [4]),
        .I5(\stat[1]_i_5_n_0 ),
        .O(\stat[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000D0F0D000D000D)) 
    \stat[1]_i_1 
       (.I0(\stat[1]_i_2_n_0 ),
        .I1(\stat[1]_i_3_n_0 ),
        .I2(ir[15]),
        .I3(ir[14]),
        .I4(Q[2]),
        .I5(\stat[1]_i_4_n_0 ),
        .O(\stat_reg[2]_13 [1]));
  LUT4 #(
    .INIT(16'h0FE0)) 
    \stat[1]_i_11 
       (.I0(ir[3]),
        .I1(ir[1]),
        .I2(ir[2]),
        .I3(ir[0]),
        .O(rst_n_fl_reg_4));
  LUT2 #(
    .INIT(4'h8)) 
    \stat[1]_i_12 
       (.I0(ir[3]),
        .I1(\badr[15]_INST_0_i_2 [10]),
        .O(\sr_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h003333AA0000F388)) 
    \stat[1]_i_13 
       (.I0(brdy),
        .I1(ir[1]),
        .I2(\badr[15]_INST_0_i_2 [10]),
        .I3(ir[2]),
        .I4(Q[2]),
        .I5(ir[0]),
        .O(brdy_0));
  LUT6 #(
    .INIT(64'hFFFFFF77FFFFFEFF)) 
    \stat[1]_i_14 
       (.I0(Q[0]),
        .I1(ir[10]),
        .I2(ir[6]),
        .I3(ir[9]),
        .I4(\stat[1]_i_9_0 ),
        .I5(rst_n_fl_reg_1),
        .O(\stat[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA280AFFFFFFFF)) 
    \stat[1]_i_2 
       (.I0(\stat[1]_i_5_n_0 ),
        .I1(\badr[15]_INST_0_i_2 [4]),
        .I2(ir[11]),
        .I3(ir[12]),
        .I4(ir[13]),
        .I5(\stat_reg[0]_4 ),
        .O(\stat[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \stat[1]_i_3 
       (.I0(\stat_reg[1]_1 ),
        .I1(rst_n_fl_reg_0),
        .I2(\stat[1]_i_7_n_0 ),
        .I3(\stat[1]_i_8_n_0 ),
        .I4(\bdatw[15]_INST_0_i_17_n_0 ),
        .I5(\bdatw[10]_INST_0_i_16_n_0 ),
        .O(\stat[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEAEAEAE)) 
    \stat[1]_i_4 
       (.I0(\stat[1]_i_9_n_0 ),
        .I1(ctl_fetch_ext_fl_reg_0),
        .I2(\stat[2]_i_4_n_0 ),
        .I3(\stat_reg[1]_0 ),
        .I4(\stat[2]_i_5_n_0 ),
        .I5(ir[11]),
        .O(\stat[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h1DE2FFFF)) 
    \stat[1]_i_5 
       (.I0(\badr[15]_INST_0_i_2 [6]),
        .I1(ir[12]),
        .I2(\badr[15]_INST_0_i_2 [7]),
        .I3(ir[11]),
        .I4(ir[13]),
        .O(\stat[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \stat[1]_i_7 
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(ir[11]),
        .O(\stat[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stat[1]_i_8 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[7]),
        .O(\stat[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0010000011111111)) 
    \stat[1]_i_9 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(ir[11]),
        .I2(ctl_fetch_inferred_i_26_n_0),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\stat[1]_i_14_n_0 ),
        .O(\stat[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000101000FF)) 
    \stat[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\stat[2]_i_2_n_0 ),
        .I3(\stat[2]_i_3_n_0 ),
        .I4(ir[14]),
        .I5(ir[15]),
        .O(\stat_reg[2]_13 [2]));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[2]_i_10 
       (.I0(ir[3]),
        .I1(ir[2]),
        .O(\stat[2]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \stat[2]_i_11 
       (.I0(ir[4]),
        .I1(ir[9]),
        .I2(ir[10]),
        .O(\stat[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hC00000005555D555)) 
    \stat[2]_i_2 
       (.I0(\stat[2]_i_4_n_0 ),
        .I1(rst_n_fl_reg_0),
        .I2(\stat[2]_i_5_n_0 ),
        .I3(\stat[2]_i_6_n_0 ),
        .I4(ir[3]),
        .I5(Q[0]),
        .O(\stat[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8A8A8)) 
    \stat[2]_i_3 
       (.I0(\stat[1]_i_2_n_0 ),
        .I1(\stat[2]_i_7_n_0 ),
        .I2(\stat[2]_i_8_n_0 ),
        .I3(\stat[2]_i_9_n_0 ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\stat[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEBBEBEBE)) 
    \stat[2]_i_4 
       (.I0(ir[13]),
        .I1(\badr[15]_INST_0_i_2 [5]),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_2 [7]),
        .I4(ir[12]),
        .O(\stat[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \stat[2]_i_5 
       (.I0(ir[10]),
        .I1(ir[7]),
        .I2(ir[13]),
        .I3(ir[12]),
        .O(\stat[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \stat[2]_i_6 
       (.I0(ir[9]),
        .I1(ir[11]),
        .I2(ir[8]),
        .O(\stat[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000CFF7)) 
    \stat[2]_i_7 
       (.I0(brdy),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\stat[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF57FFFF)) 
    \stat[2]_i_8 
       (.I0(\stat[2]_i_10_n_0 ),
        .I1(ir[0]),
        .I2(Q[0]),
        .I3(\stat[2]_i_11_n_0 ),
        .I4(\stat[1]_i_7_n_0 ),
        .I5(ctl_fetch_ext_fl_i_4_n_0),
        .O(\stat[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hD0FF)) 
    \stat[2]_i_9 
       (.I0(brdy),
        .I1(Q[0]),
        .I2(ir[1]),
        .I3(ir[0]),
        .O(\stat[2]_i_9_n_0 ));
  MUXF7 \stat_reg[0]_i_4 
       (.I0(\stat[0]_i_7_n_0 ),
        .I1(\stat[0]_i_8_n_0 ),
        .O(\stat_reg[0]_i_4_n_0 ),
        .S(\stat[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
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
    .INIT(8'h90)) 
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
    .INIT(16'h6996)) 
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
    .INIT(16'h9669)) 
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
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[1]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'hF660)) 
    tout__1_carry_i_3
       (.I0(\sp_reg[0] ),
        .I1(tout__1_carry_i_8_n_0),
        .I2(tout__1_carry_i_9_n_0),
        .I3(abus_0[0]),
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
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry_i_7
       (.I0(\sp_reg[0] ),
        .I1(tout__1_carry_i_8_n_0),
        .I2(tout__1_carry_i_9_n_0),
        .I3(abus_0[0]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h0D)) 
    tout__1_carry_i_8
       (.I0(\iv[13]_i_10_n_0 ),
        .I1(\iv[13]_i_11_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .O(tout__1_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h10EE10FF)) 
    tout__1_carry_i_9
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\iv[13]_i_12_n_0 ),
        .I2(\stat_reg[2]_12 ),
        .I3(\badr[15]_INST_0_i_2 [6]),
        .I4(\stat_reg[2]_11 ),
        .O(tout__1_carry_i_9_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \tr[15]_i_1 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .O(\stat_reg[2]_16 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \tr[15]_i_2 
       (.I0(\iv[15]_i_21_n_0 ),
        .I1(ctl_selc_rn),
        .O(\tr[15]_i_2_n_0 ));
endmodule

module mcvm_fsm
   (\stat_reg[0]_0 ,
    Q,
    rst_n_fl_reg,
    crdy_0,
    \stat_reg[1]_0 ,
    \stat_reg[1]_1 ,
    \stat_reg[2]_0 ,
    \stat_reg[1]_2 ,
    \stat_reg[2]_1 ,
    \stat_reg[1]_3 ,
    \stat_reg[1]_4 ,
    \stat_reg[0]_1 ,
    \stat_reg[2]_2 ,
    crdy_1,
    \stat_reg[1]_5 ,
    \stat_reg[0]_2 ,
    \stat_reg[0]_3 ,
    \stat_reg[0]_4 ,
    \stat_reg[2]_3 ,
    \stat_reg[1]_6 ,
    \stat_reg[2]_4 ,
    \stat_reg[0]_5 ,
    \stat_reg[1]_7 ,
    \stat_reg[1]_8 ,
    \stat_reg[0]_6 ,
    \stat_reg[0]_7 ,
    \stat_reg[0]_8 ,
    \stat_reg[1]_9 ,
    \stat_reg[1]_10 ,
    \stat_reg[1]_11 ,
    crdy,
    out,
    fch_irq_req,
    \stat[0]_i_22 ,
    \stat_reg[1]_i_10_0 ,
    rgf_sr_dr,
    ctl_fetch_inferred_i_6,
    brdy,
    \stat[1]_i_3 ,
    \stat[1]_i_3_0 ,
    \stat[1]_i_3_1 ,
    SR,
    D,
    clk);
  output \stat_reg[0]_0 ;
  output [2:0]Q;
  output rst_n_fl_reg;
  output crdy_0;
  output \stat_reg[1]_0 ;
  output \stat_reg[1]_1 ;
  output \stat_reg[2]_0 ;
  output \stat_reg[1]_2 ;
  output \stat_reg[2]_1 ;
  output \stat_reg[1]_3 ;
  output \stat_reg[1]_4 ;
  output \stat_reg[0]_1 ;
  output \stat_reg[2]_2 ;
  output crdy_1;
  output \stat_reg[1]_5 ;
  output \stat_reg[0]_2 ;
  output \stat_reg[0]_3 ;
  output \stat_reg[0]_4 ;
  output \stat_reg[2]_3 ;
  output \stat_reg[1]_6 ;
  output \stat_reg[2]_4 ;
  output \stat_reg[0]_5 ;
  output \stat_reg[1]_7 ;
  output \stat_reg[1]_8 ;
  output \stat_reg[0]_6 ;
  output \stat_reg[0]_7 ;
  output \stat_reg[0]_8 ;
  output \stat_reg[1]_9 ;
  output \stat_reg[1]_10 ;
  output \stat_reg[1]_11 ;
  input crdy;
  input [11:0]out;
  input fch_irq_req;
  input \stat[0]_i_22 ;
  input \stat_reg[1]_i_10_0 ;
  input rgf_sr_dr;
  input ctl_fetch_inferred_i_6;
  input brdy;
  input \stat[1]_i_3 ;
  input \stat[1]_i_3_0 ;
  input \stat[1]_i_3_1 ;
  input [0:0]SR;
  input [2:0]D;
  input clk;

  wire \<const1> ;
  wire [2:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire brdy;
  wire clk;
  wire crdy;
  wire crdy_0;
  wire crdy_1;
  wire ctl_fetch_inferred_i_6;
  wire fch_irq_req;
  wire [11:0]out;
  wire rgf_sr_dr;
  wire rst_n_fl_reg;
  wire \stat[0]_i_22 ;
  wire \stat[1]_i_15_n_0 ;
  wire \stat[1]_i_16_n_0 ;
  wire \stat[1]_i_18_n_0 ;
  wire \stat[1]_i_19_n_0 ;
  wire \stat[1]_i_3 ;
  wire \stat[1]_i_3_0 ;
  wire \stat[1]_i_3_1 ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[0]_2 ;
  wire \stat_reg[0]_3 ;
  wire \stat_reg[0]_4 ;
  wire \stat_reg[0]_5 ;
  wire \stat_reg[0]_6 ;
  wire \stat_reg[0]_7 ;
  wire \stat_reg[0]_8 ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire \stat_reg[1]_10 ;
  wire \stat_reg[1]_11 ;
  wire \stat_reg[1]_2 ;
  wire \stat_reg[1]_3 ;
  wire \stat_reg[1]_4 ;
  wire \stat_reg[1]_5 ;
  wire \stat_reg[1]_6 ;
  wire \stat_reg[1]_7 ;
  wire \stat_reg[1]_8 ;
  wire \stat_reg[1]_9 ;
  wire \stat_reg[1]_i_10_0 ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_2 ;
  wire \stat_reg[2]_3 ;
  wire \stat_reg[2]_4 ;

  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_127 
       (.I0(Q[0]),
        .I1(out[7]),
        .O(\stat_reg[0]_6 ));
  LUT3 #(
    .INIT(8'h04)) 
    \badr[15]_INST_0_i_71 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(out[11]),
        .O(\stat_reg[1]_11 ));
  LUT2 #(
    .INIT(4'hE)) 
    \badrx[15]_INST_0_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(\stat_reg[2]_3 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bcmd[1]_INST_0_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(out[11]),
        .O(\stat_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_72 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\stat_reg[2]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd[0]_INST_0_i_14 
       (.I0(Q[1]),
        .I1(out[8]),
        .O(\stat_reg[1]_7 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[0]_INST_0_i_16 
       (.I0(Q[0]),
        .I1(out[2]),
        .O(\stat_reg[0]_5 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[0]_INST_0_i_18 
       (.I0(Q[1]),
        .I1(out[0]),
        .O(\stat_reg[1]_6 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \ccmd[0]_INST_0_i_7 
       (.I0(out[10]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\stat_reg[1]_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[1]_INST_0_i_20 
       (.I0(Q[0]),
        .I1(out[5]),
        .O(\stat_reg[0]_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[2]_INST_0_i_22 
       (.I0(crdy),
        .I1(Q[0]),
        .O(crdy_1));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[3]_INST_0_i_17 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\stat_reg[1]_8 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ccmd[3]_INST_0_i_18 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(crdy),
        .O(\stat_reg[1]_10 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ccmd[4]_INST_0_i_9 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(out[10]),
        .O(\stat_reg[1]_4 ));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_ext_fl_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\stat_reg[0]_1 ));
  LUT3 #(
    .INIT(8'h01)) 
    ctl_fetch_inferred_i_14
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(\stat_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h8088)) 
    ctl_fetch_inferred_i_20
       (.I0(crdy),
        .I1(Q[0]),
        .I2(rgf_sr_dr),
        .I3(ctl_fetch_inferred_i_6),
        .O(crdy_0));
  LUT2 #(
    .INIT(4'hE)) 
    ctl_fetch_inferred_i_27
       (.I0(Q[2]),
        .I1(out[11]),
        .O(\stat_reg[2]_4 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_33 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\stat_reg[0]_7 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_45 
       (.I0(Q[1]),
        .I1(out[11]),
        .O(\stat_reg[1]_9 ));
  LUT3 #(
    .INIT(8'h4D)) 
    \iv[15]_i_54 
       (.I0(Q[0]),
        .I1(out[5]),
        .I2(crdy),
        .O(\stat_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[15]_i_55 
       (.I0(Q[0]),
        .I1(out[8]),
        .O(\stat_reg[0]_8 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \sp[15]_i_11 
       (.I0(Q[1]),
        .I1(out[11]),
        .I2(Q[2]),
        .I3(brdy),
        .O(\stat_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \sr[13]_i_9 
       (.I0(Q[2]),
        .I1(out[9]),
        .I2(Q[1]),
        .I3(out[2]),
        .I4(out[3]),
        .I5(Q[0]),
        .O(\stat_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hFFFF0000BFBB00FF)) 
    \stat[0]_i_27 
       (.I0(Q[0]),
        .I1(crdy),
        .I2(rgf_sr_dr),
        .I3(out[1]),
        .I4(out[2]),
        .I5(Q[2]),
        .O(\stat_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h00000000545F545A)) 
    \stat[0]_i_28 
       (.I0(Q[0]),
        .I1(crdy),
        .I2(Q[1]),
        .I3(out[2]),
        .I4(fch_irq_req),
        .I5(\stat[0]_i_22 ),
        .O(\stat_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00000024)) 
    \stat[1]_i_15 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(brdy),
        .I3(out[4]),
        .I4(out[7]),
        .O(\stat[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B080808)) 
    \stat[1]_i_16 
       (.I0(\stat_reg[1]_i_10_0 ),
        .I1(out[7]),
        .I2(\stat[1]_i_18_n_0 ),
        .I3(\stat[1]_i_19_n_0 ),
        .I4(crdy),
        .I5(Q[1]),
        .O(\stat[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBBBFFFFFFFF)) 
    \stat[1]_i_17 
       (.I0(Q[1]),
        .I1(crdy),
        .I2(Q[0]),
        .I3(rgf_sr_dr),
        .I4(out[6]),
        .I5(out[5]),
        .O(\stat_reg[1]_5 ));
  LUT2 #(
    .INIT(4'h6)) 
    \stat[1]_i_18 
       (.I0(Q[0]),
        .I1(out[3]),
        .O(\stat[1]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \stat[1]_i_19 
       (.I0(Q[0]),
        .I1(rgf_sr_dr),
        .O(\stat[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000F440000004400)) 
    \stat[1]_i_6 
       (.I0(Q[2]),
        .I1(\stat[1]_i_3 ),
        .I2(\stat[1]_i_3_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\stat[1]_i_3_1 ),
        .O(\stat_reg[2]_2 ));
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
  MUXF7 \stat_reg[1]_i_10 
       (.I0(\stat[1]_i_15_n_0 ),
        .I1(\stat[1]_i_16_n_0 ),
        .O(rst_n_fl_reg),
        .S(out[6]));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
endmodule

module mcvm_mem
   (cbus,
    \read_cyc_reg[0] ,
    \cbus_i[8] ,
    \cbus_i[9] ,
    \read_cyc_reg[1] ,
    \cbus_i[13] ,
    \read_cyc_reg[2] ,
    \read_cyc_reg[0]_0 ,
    \read_cyc_reg[2]_0 ,
    \read_cyc_reg[2]_1 ,
    \read_cyc_reg[2]_2 ,
    \read_cyc_reg[0]_1 ,
    \read_cyc_reg[2]_3 ,
    \read_cyc_reg[2]_4 ,
    \read_cyc_reg[1]_0 ,
    bdatr,
    cbus_i,
    \tr_reg[15] ,
    alu_sr_flag,
    bcmd,
    brdy,
    SR,
    clk,
    \read_cyc_reg[0]_2 );
  output [0:0]cbus;
  output [0:0]\read_cyc_reg[0] ;
  output \cbus_i[8] ;
  output \cbus_i[9] ;
  output \read_cyc_reg[1] ;
  output \cbus_i[13] ;
  output \read_cyc_reg[2] ;
  output \read_cyc_reg[0]_0 ;
  output \read_cyc_reg[2]_0 ;
  output \read_cyc_reg[2]_1 ;
  output \read_cyc_reg[2]_2 ;
  output \read_cyc_reg[0]_1 ;
  output \read_cyc_reg[2]_3 ;
  output \read_cyc_reg[2]_4 ;
  output \read_cyc_reg[1]_0 ;
  input [15:0]bdatr;
  input [4:0]cbus_i;
  input \tr_reg[15] ;
  input [0:0]alu_sr_flag;
  input [1:0]bcmd;
  input brdy;
  input [0:0]SR;
  input clk;
  input \read_cyc_reg[0]_2 ;

  wire [0:0]SR;
  wire [0:0]alu_sr_flag;
  wire [1:0]bcmd;
  wire [15:0]bdatr;
  wire brdy;
  wire [0:0]cbus;
  wire [4:0]cbus_i;
  wire \cbus_i[13] ;
  wire \cbus_i[8] ;
  wire \cbus_i[9] ;
  wire clk;
  wire [0:0]\read_cyc_reg[0] ;
  wire \read_cyc_reg[0]_0 ;
  wire \read_cyc_reg[0]_1 ;
  wire \read_cyc_reg[0]_2 ;
  wire \read_cyc_reg[1] ;
  wire \read_cyc_reg[1]_0 ;
  wire \read_cyc_reg[2] ;
  wire \read_cyc_reg[2]_0 ;
  wire \read_cyc_reg[2]_1 ;
  wire \read_cyc_reg[2]_2 ;
  wire \read_cyc_reg[2]_3 ;
  wire \read_cyc_reg[2]_4 ;
  wire \tr_reg[15] ;

  mcvm_mem_bctl bctl
       (.SR(SR),
        .alu_sr_flag(alu_sr_flag),
        .bcmd(bcmd),
        .bdatr(bdatr),
        .brdy(brdy),
        .cbus(cbus),
        .cbus_i(cbus_i),
        .\cbus_i[13] (\cbus_i[13] ),
        .\cbus_i[8] (\cbus_i[8] ),
        .\cbus_i[9] (\cbus_i[9] ),
        .clk(clk),
        .\read_cyc_reg[0]_0 (\read_cyc_reg[0] ),
        .\read_cyc_reg[0]_1 (\read_cyc_reg[0]_0 ),
        .\read_cyc_reg[0]_2 (\read_cyc_reg[0]_1 ),
        .\read_cyc_reg[0]_3 (\read_cyc_reg[0]_2 ),
        .\read_cyc_reg[1]_0 (\read_cyc_reg[1] ),
        .\read_cyc_reg[1]_1 (\read_cyc_reg[1]_0 ),
        .\read_cyc_reg[2]_0 (\read_cyc_reg[2] ),
        .\read_cyc_reg[2]_1 (\read_cyc_reg[2]_0 ),
        .\read_cyc_reg[2]_2 (\read_cyc_reg[2]_1 ),
        .\read_cyc_reg[2]_3 (\read_cyc_reg[2]_2 ),
        .\read_cyc_reg[2]_4 (\read_cyc_reg[2]_3 ),
        .\read_cyc_reg[2]_5 (\read_cyc_reg[2]_4 ),
        .\tr_reg[15] (\tr_reg[15] ));
endmodule

module mcvm_mem_bctl
   (cbus,
    \cbus_i[8] ,
    \cbus_i[9] ,
    \read_cyc_reg[1]_0 ,
    \cbus_i[13] ,
    \read_cyc_reg[2]_0 ,
    \read_cyc_reg[0]_0 ,
    \read_cyc_reg[0]_1 ,
    \read_cyc_reg[2]_1 ,
    \read_cyc_reg[2]_2 ,
    \read_cyc_reg[2]_3 ,
    \read_cyc_reg[0]_2 ,
    \read_cyc_reg[2]_4 ,
    \read_cyc_reg[2]_5 ,
    \read_cyc_reg[1]_1 ,
    bdatr,
    cbus_i,
    \tr_reg[15] ,
    alu_sr_flag,
    bcmd,
    brdy,
    SR,
    clk,
    \read_cyc_reg[0]_3 );
  output [0:0]cbus;
  output \cbus_i[8] ;
  output \cbus_i[9] ;
  output \read_cyc_reg[1]_0 ;
  output \cbus_i[13] ;
  output \read_cyc_reg[2]_0 ;
  output \read_cyc_reg[0]_0 ;
  output \read_cyc_reg[0]_1 ;
  output \read_cyc_reg[2]_1 ;
  output \read_cyc_reg[2]_2 ;
  output \read_cyc_reg[2]_3 ;
  output \read_cyc_reg[0]_2 ;
  output \read_cyc_reg[2]_4 ;
  output \read_cyc_reg[2]_5 ;
  output \read_cyc_reg[1]_1 ;
  input [15:0]bdatr;
  input [4:0]cbus_i;
  input \tr_reg[15] ;
  input [0:0]alu_sr_flag;
  input [1:0]bcmd;
  input brdy;
  input [0:0]SR;
  input clk;
  input \read_cyc_reg[0]_3 ;

  wire \<const1> ;
  wire [0:0]SR;
  wire [0:0]alu_sr_flag;
  wire [1:0]bcmd;
  wire [15:0]bdatr;
  wire brdy;
  wire [0:0]cbus;
  wire [4:0]cbus_i;
  wire \cbus_i[13] ;
  wire \cbus_i[8] ;
  wire \cbus_i[9] ;
  wire clk;
  wire [2:1]read_cyc;
  wire \read_cyc[1]_i_1_n_0 ;
  wire \read_cyc[2]_i_1_n_0 ;
  wire \read_cyc_reg[0]_0 ;
  wire \read_cyc_reg[0]_1 ;
  wire \read_cyc_reg[0]_2 ;
  wire \read_cyc_reg[0]_3 ;
  wire \read_cyc_reg[1]_0 ;
  wire \read_cyc_reg[1]_1 ;
  wire \read_cyc_reg[2]_0 ;
  wire \read_cyc_reg[2]_1 ;
  wire \read_cyc_reg[2]_2 ;
  wire \read_cyc_reg[2]_3 ;
  wire \read_cyc_reg[2]_4 ;
  wire \read_cyc_reg[2]_5 ;
  wire \tr_reg[15] ;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hA0A8A020)) 
    \iv[0]_i_9 
       (.I0(read_cyc[2]),
        .I1(read_cyc[1]),
        .I2(bdatr[0]),
        .I3(\read_cyc_reg[0]_0 ),
        .I4(bdatr[8]),
        .O(\read_cyc_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[10]_i_3 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[10]),
        .I3(\tr_reg[15] ),
        .I4(cbus_i[2]),
        .O(\read_cyc_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \iv[13]_i_4 
       (.I0(\tr_reg[15] ),
        .I1(cbus_i[3]),
        .I2(read_cyc[1]),
        .I3(read_cyc[2]),
        .I4(bdatr[13]),
        .O(\cbus_i[13] ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[14]_i_18 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .O(\read_cyc_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF404040)) 
    \iv[15]_i_2 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[15]),
        .I3(cbus_i[4]),
        .I4(\tr_reg[15] ),
        .I5(alu_sr_flag),
        .O(cbus));
  LUT5 #(
    .INIT(32'hEF004000)) 
    \iv[1]_i_9 
       (.I0(\read_cyc_reg[0]_0 ),
        .I1(bdatr[9]),
        .I2(read_cyc[1]),
        .I3(read_cyc[2]),
        .I4(bdatr[1]),
        .O(\read_cyc_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hA0A8A020)) 
    \iv[2]_i_9 
       (.I0(read_cyc[2]),
        .I1(read_cyc[1]),
        .I2(bdatr[2]),
        .I3(\read_cyc_reg[0]_0 ),
        .I4(bdatr[10]),
        .O(\read_cyc_reg[2]_1 ));
  LUT5 #(
    .INIT(32'hA0A8A020)) 
    \iv[3]_i_9 
       (.I0(read_cyc[2]),
        .I1(read_cyc[1]),
        .I2(bdatr[3]),
        .I3(\read_cyc_reg[0]_0 ),
        .I4(bdatr[11]),
        .O(\read_cyc_reg[2]_2 ));
  LUT5 #(
    .INIT(32'hA0A8A020)) 
    \iv[4]_i_9 
       (.I0(read_cyc[2]),
        .I1(read_cyc[1]),
        .I2(bdatr[4]),
        .I3(\read_cyc_reg[0]_0 ),
        .I4(bdatr[12]),
        .O(\read_cyc_reg[2]_3 ));
  LUT5 #(
    .INIT(32'hEF004000)) 
    \iv[5]_i_9 
       (.I0(\read_cyc_reg[0]_0 ),
        .I1(bdatr[13]),
        .I2(read_cyc[1]),
        .I3(read_cyc[2]),
        .I4(bdatr[5]),
        .O(\read_cyc_reg[0]_2 ));
  LUT5 #(
    .INIT(32'hA0A8A020)) 
    \iv[6]_i_9 
       (.I0(read_cyc[2]),
        .I1(read_cyc[1]),
        .I2(bdatr[6]),
        .I3(\read_cyc_reg[0]_0 ),
        .I4(bdatr[14]),
        .O(\read_cyc_reg[2]_4 ));
  LUT5 #(
    .INIT(32'hA0A8A020)) 
    \iv[7]_i_9 
       (.I0(read_cyc[2]),
        .I1(read_cyc[1]),
        .I2(bdatr[7]),
        .I3(\read_cyc_reg[0]_0 ),
        .I4(bdatr[15]),
        .O(\read_cyc_reg[2]_5 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \iv[8]_i_3 
       (.I0(\tr_reg[15] ),
        .I1(cbus_i[0]),
        .I2(read_cyc[1]),
        .I3(read_cyc[2]),
        .I4(bdatr[8]),
        .O(\cbus_i[8] ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \iv[9]_i_3 
       (.I0(\tr_reg[15] ),
        .I1(cbus_i[1]),
        .I2(read_cyc[1]),
        .I3(read_cyc[2]),
        .I4(bdatr[9]),
        .O(\cbus_i[9] ));
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
        .D(\read_cyc_reg[0]_3 ),
        .Q(\read_cyc_reg[0]_0 ),
        .R(SR));
  FDRE \read_cyc_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc[1]_i_1_n_0 ),
        .Q(read_cyc[1]),
        .R(SR));
  FDRE \read_cyc_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc[2]_i_1_n_0 ),
        .Q(read_cyc[2]),
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
    \grn_reg[15]_5 ,
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
    \grn_reg[15]_6 ,
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
    \iv[13]_i_22 ,
    \iv[13]_i_29 ,
    \iv[12]_i_18 ,
    \iv[13]_i_29_0 ,
    \sr_reg[6] ,
    \iv[14]_i_39 ,
    \badr[13]_INST_0_i_1 ,
    \sr_reg[6]_0 ,
    \iv[13]_i_29_1 ,
    \iv[14]_i_26 ,
    \bdatw[8]_INST_0_i_2 ,
    \sr_reg[6]_1 ,
    \iv[11]_i_20 ,
    \sr[6]_i_8 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \iv[9]_i_19 ,
    \iv[9]_i_23 ,
    \iv[5]_i_19 ,
    \badr[1]_INST_0_i_1 ,
    \iv[6]_i_11 ,
    \iv[9]_i_19_0 ,
    \iv[13]_i_31 ,
    \badr[15]_INST_0_i_1 ,
    \iv[13]_i_18 ,
    \iv[14]_i_24 ,
    \iv[14]_i_14 ,
    \iv[13]_i_27 ,
    \badr[0]_INST_0_i_1 ,
    \badr[3]_INST_0_i_1 ,
    \sr[4]_i_25 ,
    \iv[9]_i_19_1 ,
    \iv[9]_i_19_2 ,
    \iv[14]_i_30 ,
    \iv[9]_i_19_3 ,
    \iv[14]_i_40 ,
    \sr_reg[6]_2 ,
    \iv[14]_i_24_0 ,
    \iv[14]_i_40_0 ,
    \iv[13]_i_35 ,
    \iv[14]_i_24_1 ,
    \sr_reg[6]_3 ,
    \badr[15]_INST_0_i_1_0 ,
    \sr_reg[6]_4 ,
    \badr[2]_INST_0_i_1 ,
    \badr[4]_INST_0_i_1 ,
    \sr_reg[6]_5 ,
    \iv[14]_i_38 ,
    \iv[9]_i_19_4 ,
    \iv[8]_i_18 ,
    \iv[13]_i_25 ,
    \iv[13]_i_26 ,
    \iv[8]_i_18_0 ,
    \iv[13]_i_24 ,
    \iv[12]_i_29 ,
    \iv[12]_i_8 ,
    .irq_lev_0_sp_1(irq_lev_0_sn_1),
    \sr_reg[5] ,
    badrx,
    fch_irq_req,
    \sr_reg[5]_0 ,
    \sr_reg[4] ,
    \sr_reg[7] ,
    \sr_reg[6]_6 ,
    fch_pc,
    \sr_reg[6]_7 ,
    \sr_reg[4]_0 ,
    \iv[14]_i_30_0 ,
    \sr_reg[6]_8 ,
    \iv[9]_i_19_5 ,
    \iv[14]_i_39_0 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \iv[9]_i_19_6 ,
    \bdatw[8]_INST_0_i_2_3 ,
    \bdatw[8]_INST_0_i_2_4 ,
    \bdatw[8]_INST_0_i_2_5 ,
    \bdatw[8]_INST_0_i_2_6 ,
    \iv[9]_i_19_7 ,
    \iv[13]_i_29_2 ,
    \bdatw[8]_INST_0_i_2_7 ,
    \bdatw[8]_INST_0_i_2_8 ,
    \badr[15]_INST_0_i_1_1 ,
    \iv[13]_i_29_3 ,
    \sr_reg[6]_9 ,
    \sr_reg[6]_10 ,
    \sr_reg[6]_11 ,
    \sr_reg[6]_12 ,
    \sr_reg[6]_13 ,
    \bdatw[8]_INST_0_i_2_9 ,
    \bdatw[8]_INST_0_i_2_10 ,
    \bdatw[8]_INST_0_i_2_11 ,
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
    \badr[13]_INST_0_i_4 ,
    \badr[13]_INST_0_i_4_0 ,
    \badr[13]_INST_0_i_4_1 ,
    \abus_o[1] ,
    \abus_o[1]_0 ,
    \abus_o[2] ,
    \abus_o[2]_0 ,
    \abus_o[3] ,
    \abus_o[3]_0 ,
    \abus_o[4] ,
    \abus_o[4]_0 ,
    \abus_o[5] ,
    \abus_o[5]_0 ,
    \abus_o[6] ,
    \abus_o[6]_0 ,
    \abus_o[7] ,
    \abus_o[7]_0 ,
    \abus_o[8] ,
    \abus_o[8]_0 ,
    \abus_o[9] ,
    \abus_o[9]_0 ,
    \abus_o[10] ,
    \abus_o[10]_0 ,
    \abus_o[11] ,
    \abus_o[11]_0 ,
    \abus_o[12] ,
    \abus_o[12]_0 ,
    \abus_o[13] ,
    \abus_o[13]_0 ,
    \abus_o[14] ,
    \abus_o[14]_0 ,
    \abus_o[15] ,
    \abus_o[15]_0 ,
    \badr[13]_INST_0_i_4_2 ,
    \badr[13]_INST_0_i_4_3 ,
    \badr[13]_INST_0_i_4_4 ,
    \badr[13]_INST_0_i_4_5 ,
    \badr[13]_INST_0_i_4_6 ,
    gr2_bus1__0_0,
    gr3_bus1__0_1,
    gr4_bus1__0_2,
    gr5_bus1__0_3,
    \bdatw[8]_INST_0_i_11 ,
    \badr[0]_INST_0_i_5 ,
    \badr[13]_INST_0_i_5 ,
    \badr[13]_INST_0_i_4_7 ,
    gr7_bus1__0_4,
    gr0_bus1__0_5,
    \bdatw[13]_INST_0_i_10 ,
    gr1_bus1__0_6,
    gr2_bus1__0_7,
    gr3_bus1__0_8,
    gr4_bus1__0_9,
    gr5_bus1__0_10,
    gr6_bus1__0_11,
    gr7_bus1__0_12,
    gr0_bus1__0_13,
    \badr[0]_INST_0_i_1_0 ,
    \badr[1]_INST_0_i_1_0 ,
    \badr[2]_INST_0_i_1_0 ,
    \badr[3]_INST_0_i_1_0 ,
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
    \badr[15]_INST_0_i_1_2 ,
    gr3_bus1__0_14,
    gr4_bus1__0_15,
    gr5_bus1__0_16,
    gr6_bus1__0_17,
    gr1_bus1__0_18,
    gr2_bus1__0_19,
    gr4_bus1__0_20,
    rst_n,
    \iv[13]_i_2 ,
    \iv[13]_i_2_0 ,
    \iv[13]_i_2_1 ,
    \iv[6]_i_2 ,
    \iv[13]_i_8 ,
    \iv[13]_i_8_0 ,
    \iv[9]_i_6 ,
    \iv[11]_i_2 ,
    \iv[3]_i_6 ,
    \sr[6]_i_3 ,
    \sr[4]_i_27 ,
    \iv[5]_i_2 ,
    \iv[13]_i_2_2 ,
    \sr[4]_i_15 ,
    \iv[14]_i_4 ,
    ctl_fetch_inferred_i_17,
    irq_lev,
    irq,
    ctl_fetch_fl_reg,
    ctl_fetch_fl_reg_0,
    ctl_fetch_fl_reg_1,
    .badrx_15_sp_1(badrx_15_sn_1),
    \badr[15]_INST_0_i_55 ,
    Q,
    \iv[14]_i_15 ,
    D,
    clk,
    \sr_reg[8] ,
    \pc_reg[15] ,
    \sp_reg[15]_1 ,
    \tr_reg[0] ,
    \tr_reg[15]_0 ,
    E,
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
    \grn_reg[15]_34 ,
    \grn_reg[15]_35 ,
    \grn_reg[15]_36 ,
    \grn_reg[15]_37 );
  output [15:0]out;
  output [10:0]\grn_reg[15] ;
  output [10:0]\grn_reg[15]_0 ;
  output [10:0]\grn_reg[15]_1 ;
  output [10:0]\grn_reg[15]_2 ;
  output [15:0]\grn_reg[15]_3 ;
  output [15:0]\grn_reg[15]_4 ;
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
  output \grn_reg[15]_5 ;
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
  output \grn_reg[15]_6 ;
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
  output \iv[13]_i_22 ;
  output \iv[13]_i_29 ;
  output \iv[12]_i_18 ;
  output \iv[13]_i_29_0 ;
  output \sr_reg[6] ;
  output \iv[14]_i_39 ;
  output \badr[13]_INST_0_i_1 ;
  output \sr_reg[6]_0 ;
  output \iv[13]_i_29_1 ;
  output \iv[14]_i_26 ;
  output \bdatw[8]_INST_0_i_2 ;
  output \sr_reg[6]_1 ;
  output \iv[11]_i_20 ;
  output \sr[6]_i_8 ;
  output \bdatw[8]_INST_0_i_2_0 ;
  output \iv[9]_i_19 ;
  output \iv[9]_i_23 ;
  output \iv[5]_i_19 ;
  output \badr[1]_INST_0_i_1 ;
  output \iv[6]_i_11 ;
  output \iv[9]_i_19_0 ;
  output \iv[13]_i_31 ;
  output \badr[15]_INST_0_i_1 ;
  output \iv[13]_i_18 ;
  output \iv[14]_i_24 ;
  output \iv[14]_i_14 ;
  output \iv[13]_i_27 ;
  output \badr[0]_INST_0_i_1 ;
  output \badr[3]_INST_0_i_1 ;
  output \sr[4]_i_25 ;
  output \iv[9]_i_19_1 ;
  output \iv[9]_i_19_2 ;
  output \iv[14]_i_30 ;
  output \iv[9]_i_19_3 ;
  output \iv[14]_i_40 ;
  output \sr_reg[6]_2 ;
  output \iv[14]_i_24_0 ;
  output \iv[14]_i_40_0 ;
  output \iv[13]_i_35 ;
  output \iv[14]_i_24_1 ;
  output \sr_reg[6]_3 ;
  output \badr[15]_INST_0_i_1_0 ;
  output \sr_reg[6]_4 ;
  output \badr[2]_INST_0_i_1 ;
  output \badr[4]_INST_0_i_1 ;
  output \sr_reg[6]_5 ;
  output \iv[14]_i_38 ;
  output \iv[9]_i_19_4 ;
  output \iv[8]_i_18 ;
  output \iv[13]_i_25 ;
  output \iv[13]_i_26 ;
  output \iv[8]_i_18_0 ;
  output \iv[13]_i_24 ;
  output \iv[12]_i_29 ;
  output \iv[12]_i_8 ;
  output \sr_reg[5] ;
  output [15:0]badrx;
  output fch_irq_req;
  output \sr_reg[5]_0 ;
  output \sr_reg[4] ;
  output \sr_reg[7] ;
  output \sr_reg[6]_6 ;
  output [15:0]fch_pc;
  output \sr_reg[6]_7 ;
  output \sr_reg[4]_0 ;
  output \iv[14]_i_30_0 ;
  output \sr_reg[6]_8 ;
  output \iv[9]_i_19_5 ;
  output \iv[14]_i_39_0 ;
  output \bdatw[8]_INST_0_i_2_1 ;
  output \bdatw[8]_INST_0_i_2_2 ;
  output \iv[9]_i_19_6 ;
  output \bdatw[8]_INST_0_i_2_3 ;
  output \bdatw[8]_INST_0_i_2_4 ;
  output \bdatw[8]_INST_0_i_2_5 ;
  output \bdatw[8]_INST_0_i_2_6 ;
  output \iv[9]_i_19_7 ;
  output \iv[13]_i_29_2 ;
  output \bdatw[8]_INST_0_i_2_7 ;
  output \bdatw[8]_INST_0_i_2_8 ;
  output \badr[15]_INST_0_i_1_1 ;
  output \iv[13]_i_29_3 ;
  output \sr_reg[6]_9 ;
  output \sr_reg[6]_10 ;
  output \sr_reg[6]_11 ;
  output \sr_reg[6]_12 ;
  output \sr_reg[6]_13 ;
  input \bdatw[8]_INST_0_i_2_9 ;
  input \bdatw[8]_INST_0_i_2_10 ;
  input \bdatw[8]_INST_0_i_2_11 ;
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
  input \badr[13]_INST_0_i_4 ;
  input \badr[13]_INST_0_i_4_0 ;
  input \badr[13]_INST_0_i_4_1 ;
  input \abus_o[1] ;
  input \abus_o[1]_0 ;
  input \abus_o[2] ;
  input \abus_o[2]_0 ;
  input \abus_o[3] ;
  input \abus_o[3]_0 ;
  input \abus_o[4] ;
  input \abus_o[4]_0 ;
  input \abus_o[5] ;
  input \abus_o[5]_0 ;
  input \abus_o[6] ;
  input \abus_o[6]_0 ;
  input \abus_o[7] ;
  input \abus_o[7]_0 ;
  input \abus_o[8] ;
  input \abus_o[8]_0 ;
  input \abus_o[9] ;
  input \abus_o[9]_0 ;
  input \abus_o[10] ;
  input \abus_o[10]_0 ;
  input \abus_o[11] ;
  input \abus_o[11]_0 ;
  input \abus_o[12] ;
  input \abus_o[12]_0 ;
  input \abus_o[13] ;
  input \abus_o[13]_0 ;
  input \abus_o[14] ;
  input \abus_o[14]_0 ;
  input \abus_o[15] ;
  input \abus_o[15]_0 ;
  input \badr[13]_INST_0_i_4_2 ;
  input \badr[13]_INST_0_i_4_3 ;
  input \badr[13]_INST_0_i_4_4 ;
  input \badr[13]_INST_0_i_4_5 ;
  input \badr[13]_INST_0_i_4_6 ;
  input gr2_bus1__0_0;
  input gr3_bus1__0_1;
  input gr4_bus1__0_2;
  input gr5_bus1__0_3;
  input \bdatw[8]_INST_0_i_11 ;
  input \badr[0]_INST_0_i_5 ;
  input \badr[13]_INST_0_i_5 ;
  input \badr[13]_INST_0_i_4_7 ;
  input gr7_bus1__0_4;
  input gr0_bus1__0_5;
  input [0:0]\bdatw[13]_INST_0_i_10 ;
  input gr1_bus1__0_6;
  input gr2_bus1__0_7;
  input gr3_bus1__0_8;
  input gr4_bus1__0_9;
  input gr5_bus1__0_10;
  input gr6_bus1__0_11;
  input gr7_bus1__0_12;
  input gr0_bus1__0_13;
  input \badr[0]_INST_0_i_1_0 ;
  input \badr[1]_INST_0_i_1_0 ;
  input \badr[2]_INST_0_i_1_0 ;
  input \badr[3]_INST_0_i_1_0 ;
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
  input \badr[15]_INST_0_i_1_2 ;
  input gr3_bus1__0_14;
  input gr4_bus1__0_15;
  input gr5_bus1__0_16;
  input gr6_bus1__0_17;
  input gr1_bus1__0_18;
  input gr2_bus1__0_19;
  input gr4_bus1__0_20;
  input rst_n;
  input \iv[13]_i_2 ;
  input \iv[13]_i_2_0 ;
  input \iv[13]_i_2_1 ;
  input \iv[6]_i_2 ;
  input \iv[13]_i_8 ;
  input \iv[13]_i_8_0 ;
  input \iv[9]_i_6 ;
  input \iv[11]_i_2 ;
  input \iv[3]_i_6 ;
  input \sr[6]_i_3 ;
  input \sr[4]_i_27 ;
  input \iv[5]_i_2 ;
  input \iv[13]_i_2_2 ;
  input \sr[4]_i_15 ;
  input \iv[14]_i_4 ;
  input ctl_fetch_inferred_i_17;
  input [1:0]irq_lev;
  input irq;
  input ctl_fetch_fl_reg;
  input ctl_fetch_fl_reg_0;
  input ctl_fetch_fl_reg_1;
  input [4:0]\badr[15]_INST_0_i_55 ;
  input [0:0]Q;
  input \iv[14]_i_15 ;
  input [11:0]D;
  input clk;
  input \sr_reg[8] ;
  input [15:0]\pc_reg[15] ;
  input [15:0]\sp_reg[15]_1 ;
  input [1:0]\tr_reg[0] ;
  input [15:0]\tr_reg[15]_0 ;
  input [0:0]E;
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
  input [0:0]\grn_reg[15]_35 ;
  input [0:0]\grn_reg[15]_36 ;
  input [0:0]\grn_reg[15]_37 ;
  output irq_lev_0_sn_1;
  input badrx_15_sn_1;

  wire [11:0]D;
  wire [0:0]E;
  wire [0:0]Q;
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
  wire \badr[0]_INST_0_i_1 ;
  wire \badr[0]_INST_0_i_1_0 ;
  wire \badr[0]_INST_0_i_5 ;
  wire \badr[10]_INST_0_i_1 ;
  wire \badr[11]_INST_0_i_1 ;
  wire \badr[12]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_1_0 ;
  wire \badr[13]_INST_0_i_4 ;
  wire \badr[13]_INST_0_i_4_0 ;
  wire \badr[13]_INST_0_i_4_1 ;
  wire \badr[13]_INST_0_i_4_2 ;
  wire \badr[13]_INST_0_i_4_3 ;
  wire \badr[13]_INST_0_i_4_4 ;
  wire \badr[13]_INST_0_i_4_5 ;
  wire \badr[13]_INST_0_i_4_6 ;
  wire \badr[13]_INST_0_i_4_7 ;
  wire \badr[13]_INST_0_i_5 ;
  wire \badr[14]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_1_0 ;
  wire \badr[15]_INST_0_i_1_1 ;
  wire \badr[15]_INST_0_i_1_2 ;
  wire [4:0]\badr[15]_INST_0_i_55 ;
  wire \badr[1]_INST_0_i_1 ;
  wire \badr[1]_INST_0_i_1_0 ;
  wire \badr[2]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_1_0 ;
  wire \badr[3]_INST_0_i_1 ;
  wire \badr[3]_INST_0_i_1_0 ;
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_1_0 ;
  wire \badr[5]_INST_0_i_1 ;
  wire \badr[6]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[8]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_1 ;
  wire [15:0]badrx;
  wire badrx_15_sn_1;
  wire bank02_n_0;
  wire bank02_n_1;
  wire bank02_n_10;
  wire bank02_n_11;
  wire bank02_n_12;
  wire bank02_n_13;
  wire bank02_n_14;
  wire bank02_n_15;
  wire bank02_n_164;
  wire bank02_n_165;
  wire bank02_n_166;
  wire bank02_n_167;
  wire bank02_n_168;
  wire bank02_n_169;
  wire bank02_n_170;
  wire bank02_n_171;
  wire bank02_n_172;
  wire bank02_n_173;
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
  wire bank02_n_190;
  wire bank02_n_191;
  wire bank02_n_192;
  wire bank02_n_193;
  wire bank02_n_194;
  wire bank02_n_195;
  wire bank02_n_2;
  wire bank02_n_3;
  wire bank02_n_4;
  wire bank02_n_5;
  wire bank02_n_6;
  wire bank02_n_7;
  wire bank02_n_8;
  wire bank02_n_9;
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
  wire [0:0]\bdatw[13]_INST_0_i_10 ;
  wire \bdatw[8]_INST_0_i_11 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_10 ;
  wire \bdatw[8]_INST_0_i_2_11 ;
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
  wire clk;
  wire ctl_fetch_fl_reg;
  wire ctl_fetch_fl_reg_0;
  wire ctl_fetch_fl_reg_1;
  wire ctl_fetch_inferred_i_17;
  wire [15:0]fadr;
  wire fch_irq_req;
  wire [15:0]fch_pc;
  wire gr0_bus1__0;
  wire gr0_bus1__0_13;
  wire gr0_bus1__0_5;
  wire gr1_bus1__0;
  wire gr1_bus1__0_18;
  wire gr1_bus1__0_6;
  wire gr2_bus1__0;
  wire gr2_bus1__0_0;
  wire gr2_bus1__0_19;
  wire gr2_bus1__0_7;
  wire gr3_bus1__0;
  wire gr3_bus1__0_1;
  wire gr3_bus1__0_14;
  wire gr3_bus1__0_8;
  wire gr4_bus1__0;
  wire gr4_bus1__0_15;
  wire gr4_bus1__0_2;
  wire gr4_bus1__0_20;
  wire gr4_bus1__0_9;
  wire gr5_bus1__0;
  wire gr5_bus1__0_10;
  wire gr5_bus1__0_16;
  wire gr5_bus1__0_3;
  wire gr6_bus1__0;
  wire gr6_bus1__0_11;
  wire gr6_bus1__0_17;
  wire gr7_bus1__0;
  wire gr7_bus1__0_12;
  wire gr7_bus1__0_4;
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
  wire [10:0]\grn_reg[15] ;
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
  wire [15:0]\grn_reg[15]_3 ;
  wire [0:0]\grn_reg[15]_30 ;
  wire [0:0]\grn_reg[15]_31 ;
  wire [0:0]\grn_reg[15]_32 ;
  wire [0:0]\grn_reg[15]_33 ;
  wire [0:0]\grn_reg[15]_34 ;
  wire [0:0]\grn_reg[15]_35 ;
  wire [0:0]\grn_reg[15]_36 ;
  wire [0:0]\grn_reg[15]_37 ;
  wire [15:0]\grn_reg[15]_4 ;
  wire \grn_reg[15]_5 ;
  wire \grn_reg[15]_6 ;
  wire [0:0]\grn_reg[15]_7 ;
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
  wire \iv[11]_i_2 ;
  wire \iv[11]_i_20 ;
  wire \iv[12]_i_18 ;
  wire \iv[12]_i_29 ;
  wire \iv[12]_i_8 ;
  wire \iv[13]_i_18 ;
  wire \iv[13]_i_2 ;
  wire \iv[13]_i_22 ;
  wire \iv[13]_i_24 ;
  wire \iv[13]_i_25 ;
  wire \iv[13]_i_26 ;
  wire \iv[13]_i_27 ;
  wire \iv[13]_i_29 ;
  wire \iv[13]_i_29_0 ;
  wire \iv[13]_i_29_1 ;
  wire \iv[13]_i_29_2 ;
  wire \iv[13]_i_29_3 ;
  wire \iv[13]_i_2_0 ;
  wire \iv[13]_i_2_1 ;
  wire \iv[13]_i_2_2 ;
  wire \iv[13]_i_31 ;
  wire \iv[13]_i_35 ;
  wire \iv[13]_i_8 ;
  wire \iv[13]_i_8_0 ;
  wire \iv[14]_i_14 ;
  wire \iv[14]_i_15 ;
  wire \iv[14]_i_24 ;
  wire \iv[14]_i_24_0 ;
  wire \iv[14]_i_24_1 ;
  wire \iv[14]_i_26 ;
  wire \iv[14]_i_30 ;
  wire \iv[14]_i_30_0 ;
  wire \iv[14]_i_38 ;
  wire \iv[14]_i_39 ;
  wire \iv[14]_i_39_0 ;
  wire \iv[14]_i_4 ;
  wire \iv[14]_i_40 ;
  wire \iv[14]_i_40_0 ;
  wire \iv[3]_i_6 ;
  wire \iv[5]_i_19 ;
  wire \iv[5]_i_2 ;
  wire \iv[6]_i_11 ;
  wire \iv[6]_i_2 ;
  wire \iv[8]_i_18 ;
  wire \iv[8]_i_18_0 ;
  wire \iv[9]_i_19 ;
  wire \iv[9]_i_19_0 ;
  wire \iv[9]_i_19_1 ;
  wire \iv[9]_i_19_2 ;
  wire \iv[9]_i_19_3 ;
  wire \iv[9]_i_19_4 ;
  wire \iv[9]_i_19_5 ;
  wire \iv[9]_i_19_6 ;
  wire \iv[9]_i_19_7 ;
  wire \iv[9]_i_23 ;
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
  wire \sr[4]_i_15 ;
  wire \sr[4]_i_25 ;
  wire \sr[4]_i_27 ;
  wire \sr[6]_i_3 ;
  wire \sr[6]_i_8 ;
  wire [15:0]\sr_reg[15] ;
  wire \sr_reg[4] ;
  wire \sr_reg[4]_0 ;
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
  wire sreg_n_42;
  wire sreg_n_43;
  wire sreg_n_44;
  wire sreg_n_45;
  wire sreg_n_46;
  wire sreg_n_47;
  wire sreg_n_48;
  wire sreg_n_49;
  wire sreg_n_50;
  wire sreg_n_51;
  wire sreg_n_52;
  wire sreg_n_53;
  wire sreg_n_54;
  wire sreg_n_55;
  wire sreg_n_56;
  wire sreg_n_57;
  wire sreg_n_59;
  wire sreg_n_60;
  wire sreg_n_68;
  wire [1:0]\tr_reg[0] ;
  wire [15:0]\tr_reg[15] ;
  wire [15:0]\tr_reg[15]_0 ;

  mcvm_rgf_bank bank02
       (.E(E),
        .SR(SR),
        .\badr[0]_INST_0_i_1 (sreg_n_42),
        .\badr[10]_INST_0_i_1 (sreg_n_52),
        .\badr[11]_INST_0_i_1 (sreg_n_53),
        .\badr[12]_INST_0_i_1 (sreg_n_54),
        .\badr[13]_INST_0_i_1 (sreg_n_55),
        .\badr[13]_INST_0_i_4_0 (\badr[13]_INST_0_i_4 ),
        .\badr[13]_INST_0_i_4_1 (\badr[13]_INST_0_i_4_0 ),
        .\badr[13]_INST_0_i_4_10 (\badr[13]_INST_0_i_4_7 ),
        .\badr[13]_INST_0_i_4_2 (\badr[13]_INST_0_i_4_1 ),
        .\badr[13]_INST_0_i_4_3 (bank_sel[0]),
        .\badr[13]_INST_0_i_4_4 (\badr[13]_INST_0_i_4_2 ),
        .\badr[13]_INST_0_i_4_5 (\badr[13]_INST_0_i_4_3 ),
        .\badr[13]_INST_0_i_4_6 (\sr_reg[15] [1:0]),
        .\badr[13]_INST_0_i_4_7 (\badr[13]_INST_0_i_4_4 ),
        .\badr[13]_INST_0_i_4_8 (\badr[13]_INST_0_i_4_5 ),
        .\badr[13]_INST_0_i_4_9 (\badr[13]_INST_0_i_4_6 ),
        .\badr[13]_INST_0_i_5 (\badr[13]_INST_0_i_5 ),
        .\badr[13]_INST_0_i_5_0 (bank_sel[2]),
        .\badr[14]_INST_0_i_1 (sreg_n_56),
        .\badr[15]_INST_0_i_1 (sreg_n_57),
        .\badr[1]_INST_0_i_1 (sreg_n_43),
        .\badr[2]_INST_0_i_1 (sreg_n_44),
        .\badr[3]_INST_0_i_1 (sreg_n_45),
        .\badr[4]_INST_0_i_1 (sreg_n_46),
        .\badr[5]_INST_0_i_1 (sreg_n_47),
        .\badr[6]_INST_0_i_1 (sreg_n_48),
        .\badr[7]_INST_0_i_1 (sreg_n_49),
        .\badr[8]_INST_0_i_1 (sreg_n_50),
        .\badr[9]_INST_0_i_1 (sreg_n_51),
        .\bdatw[10]_INST_0_i_2 (\bdatw[10]_INST_0_i_2 ),
        .\bdatw[10]_INST_0_i_2_0 (sreg_n_22),
        .\bdatw[10]_INST_0_i_2_1 (\bdatw[10]_INST_0_i_2_0 ),
        .\bdatw[10]_INST_0_i_2_2 (\bdatw[10]_INST_0_i_2_1 ),
        .\bdatw[11]_INST_0_i_2 (\bdatw[11]_INST_0_i_2 ),
        .\bdatw[11]_INST_0_i_2_0 (sreg_n_23),
        .\bdatw[11]_INST_0_i_2_1 (\bdatw[11]_INST_0_i_2_0 ),
        .\bdatw[11]_INST_0_i_2_2 (\bdatw[11]_INST_0_i_2_1 ),
        .\bdatw[12]_INST_0_i_2 (\bdatw[12]_INST_0_i_2 ),
        .\bdatw[12]_INST_0_i_2_0 (sreg_n_24),
        .\bdatw[12]_INST_0_i_2_1 (\bdatw[12]_INST_0_i_2_0 ),
        .\bdatw[12]_INST_0_i_2_2 (\bdatw[12]_INST_0_i_2_1 ),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2_9 ),
        .\bdatw[8]_INST_0_i_2_0 (sreg_n_20),
        .\bdatw[8]_INST_0_i_2_1 (\bdatw[8]_INST_0_i_2_10 ),
        .\bdatw[8]_INST_0_i_2_2 (\bdatw[8]_INST_0_i_2_11 ),
        .\bdatw[9]_INST_0_i_2 (\bdatw[9]_INST_0_i_2 ),
        .\bdatw[9]_INST_0_i_2_0 (sreg_n_21),
        .\bdatw[9]_INST_0_i_2_1 (\bdatw[9]_INST_0_i_2_0 ),
        .\bdatw[9]_INST_0_i_2_2 (\bdatw[9]_INST_0_i_2_1 ),
        .clk(clk),
        .gr0_bus1__0(gr0_bus1__0),
        .gr0_bus1__0_0(\bbuso2l/gr0_bus1__0 ),
        .gr1_bus1__0(gr1_bus1__0),
        .gr2_bus1__0(gr2_bus1__0),
        .gr2_bus1__0_0(gr2_bus1__0_0),
        .gr3_bus1__0(gr3_bus1__0),
        .gr3_bus1__0_1(gr3_bus1__0_1),
        .gr4_bus1__0(gr4_bus1__0),
        .gr4_bus1__0_2(gr4_bus1__0_2),
        .gr5_bus1__0(gr5_bus1__0),
        .gr5_bus1__0_3(gr5_bus1__0_3),
        .gr6_bus1__0(gr6_bus1__0),
        .gr7_bus1__0(gr7_bus1__0),
        .\grn_reg[0] (bank02_n_164),
        .\grn_reg[0]_0 (bank02_n_180),
        .\grn_reg[10] (\grn_reg[10] ),
        .\grn_reg[10]_0 (bank02_n_174),
        .\grn_reg[10]_1 (bank02_n_190),
        .\grn_reg[11] (\grn_reg[11] ),
        .\grn_reg[11]_0 (bank02_n_175),
        .\grn_reg[11]_1 (bank02_n_191),
        .\grn_reg[12] (\grn_reg[12] ),
        .\grn_reg[12]_0 (bank02_n_176),
        .\grn_reg[12]_1 (bank02_n_192),
        .\grn_reg[13] (\grn_reg[13] ),
        .\grn_reg[13]_0 (bank02_n_177),
        .\grn_reg[13]_1 (bank02_n_193),
        .\grn_reg[14] (\grn_reg[14] ),
        .\grn_reg[14]_0 (bank02_n_178),
        .\grn_reg[14]_1 (bank02_n_194),
        .\grn_reg[15] (out),
        .\grn_reg[15]_0 (\grn_reg[15] ),
        .\grn_reg[15]_1 (\grn_reg[15]_0 ),
        .\grn_reg[15]_10 (\grn_reg[15]_7 ),
        .\grn_reg[15]_11 (\grn_reg[15]_8 ),
        .\grn_reg[15]_12 (\grn_reg[15]_9 ),
        .\grn_reg[15]_13 (\grn_reg[15]_10 ),
        .\grn_reg[15]_14 (\grn_reg[15]_11 ),
        .\grn_reg[15]_15 (\grn_reg[15]_12 ),
        .\grn_reg[15]_16 (\grn_reg[15]_13 ),
        .\grn_reg[15]_17 (\grn_reg[15]_14 ),
        .\grn_reg[15]_18 (\grn_reg[15]_15 ),
        .\grn_reg[15]_19 (\grn_reg[15]_16 ),
        .\grn_reg[15]_2 (\grn_reg[15]_1 ),
        .\grn_reg[15]_20 (\grn_reg[15]_17 ),
        .\grn_reg[15]_21 (\grn_reg[15]_18 ),
        .\grn_reg[15]_22 (\grn_reg[15]_19 ),
        .\grn_reg[15]_23 (\grn_reg[15]_20 ),
        .\grn_reg[15]_24 (\grn_reg[15]_21 ),
        .\grn_reg[15]_3 (\grn_reg[15]_2 ),
        .\grn_reg[15]_4 (\grn_reg[15]_3 ),
        .\grn_reg[15]_5 (\grn_reg[15]_4 ),
        .\grn_reg[15]_6 (\grn_reg[15]_5 ),
        .\grn_reg[15]_7 (bank02_n_179),
        .\grn_reg[15]_8 (bank02_n_195),
        .\grn_reg[15]_9 (\tr_reg[15]_0 ),
        .\grn_reg[1] (bank02_n_165),
        .\grn_reg[1]_0 (bank02_n_181),
        .\grn_reg[2] (bank02_n_166),
        .\grn_reg[2]_0 (bank02_n_182),
        .\grn_reg[3] (bank02_n_167),
        .\grn_reg[3]_0 (bank02_n_183),
        .\grn_reg[4] (\grn_reg[4] ),
        .\grn_reg[4]_0 (\grn_reg[4]_0 ),
        .\grn_reg[4]_1 (\grn_reg[4]_1 ),
        .\grn_reg[4]_2 (\grn_reg[4]_2 ),
        .\grn_reg[4]_3 (\grn_reg[4]_3 ),
        .\grn_reg[4]_4 (\grn_reg[4]_4 ),
        .\grn_reg[4]_5 (\grn_reg[4]_5 ),
        .\grn_reg[4]_6 (\grn_reg[4]_6 ),
        .\grn_reg[4]_7 (\grn_reg[4]_19 ),
        .\grn_reg[4]_8 (bank02_n_168),
        .\grn_reg[4]_9 (bank02_n_184),
        .\grn_reg[5] (\grn_reg[5] ),
        .\grn_reg[5]_0 (bank02_n_169),
        .\grn_reg[5]_1 (bank02_n_185),
        .\grn_reg[6] (\grn_reg[6] ),
        .\grn_reg[6]_0 (bank02_n_170),
        .\grn_reg[6]_1 (bank02_n_186),
        .\grn_reg[7] (\grn_reg[7] ),
        .\grn_reg[7]_0 (bank02_n_171),
        .\grn_reg[7]_1 (bank02_n_187),
        .\grn_reg[8] (\grn_reg[8] ),
        .\grn_reg[8]_0 (bank02_n_172),
        .\grn_reg[8]_1 (bank02_n_188),
        .\grn_reg[9] (\grn_reg[9] ),
        .\grn_reg[9]_0 (bank02_n_173),
        .\grn_reg[9]_1 (bank02_n_189),
        .out({bank02_n_0,bank02_n_1,bank02_n_2,bank02_n_3,bank02_n_4,bank02_n_5,bank02_n_6,bank02_n_7,bank02_n_8,bank02_n_9,bank02_n_10,bank02_n_11,bank02_n_12,bank02_n_13,bank02_n_14,bank02_n_15}),
        .rst_n(rst_n));
  mcvm_rgf_bank_0 bank13
       (.SR(SR),
        .\abus_o[0] (bank02_n_164),
        .\abus_o[0]_0 (sreg_n_26),
        .\abus_o[0]_1 (\abus_o[0] ),
        .\abus_o[0]_2 (\abus_o[0]_0 ),
        .\abus_o[10] (bank02_n_174),
        .\abus_o[10]_0 (sreg_n_36),
        .\abus_o[10]_1 (\abus_o[10] ),
        .\abus_o[10]_2 (\abus_o[10]_0 ),
        .\abus_o[11] (bank02_n_175),
        .\abus_o[11]_0 (sreg_n_37),
        .\abus_o[11]_1 (\abus_o[11] ),
        .\abus_o[11]_2 (\abus_o[11]_0 ),
        .\abus_o[12] (bank02_n_176),
        .\abus_o[12]_0 (sreg_n_38),
        .\abus_o[12]_1 (\abus_o[12] ),
        .\abus_o[12]_2 (\abus_o[12]_0 ),
        .\abus_o[13] (bank02_n_177),
        .\abus_o[13]_0 (sreg_n_39),
        .\abus_o[13]_1 (\abus_o[13] ),
        .\abus_o[13]_2 (\abus_o[13]_0 ),
        .\abus_o[14] (bank02_n_178),
        .\abus_o[14]_0 (sreg_n_40),
        .\abus_o[14]_1 (\abus_o[14] ),
        .\abus_o[14]_2 (\abus_o[14]_0 ),
        .\abus_o[15] (bank02_n_179),
        .\abus_o[15]_0 (sreg_n_41),
        .\abus_o[15]_1 (\abus_o[15] ),
        .\abus_o[15]_2 (\abus_o[15]_0 ),
        .\abus_o[1] (bank02_n_165),
        .\abus_o[1]_0 (sreg_n_27),
        .\abus_o[1]_1 (\abus_o[1] ),
        .\abus_o[1]_2 (\abus_o[1]_0 ),
        .\abus_o[2] (bank02_n_166),
        .\abus_o[2]_0 (sreg_n_28),
        .\abus_o[2]_1 (\abus_o[2] ),
        .\abus_o[2]_2 (\abus_o[2]_0 ),
        .\abus_o[3] (bank02_n_167),
        .\abus_o[3]_0 (sreg_n_29),
        .\abus_o[3]_1 (\abus_o[3] ),
        .\abus_o[3]_2 (\abus_o[3]_0 ),
        .\abus_o[4] (bank02_n_168),
        .\abus_o[4]_0 (sreg_n_30),
        .\abus_o[4]_1 (\abus_o[4] ),
        .\abus_o[4]_2 (\abus_o[4]_0 ),
        .\abus_o[5] (bank02_n_169),
        .\abus_o[5]_0 (sreg_n_31),
        .\abus_o[5]_1 (\abus_o[5] ),
        .\abus_o[5]_2 (\abus_o[5]_0 ),
        .\abus_o[6] (bank02_n_170),
        .\abus_o[6]_0 (sreg_n_32),
        .\abus_o[6]_1 (\abus_o[6] ),
        .\abus_o[6]_2 (\abus_o[6]_0 ),
        .\abus_o[7] (bank02_n_171),
        .\abus_o[7]_0 (sreg_n_33),
        .\abus_o[7]_1 (\abus_o[7] ),
        .\abus_o[7]_2 (\abus_o[7]_0 ),
        .\abus_o[8] (bank02_n_172),
        .\abus_o[8]_0 (sreg_n_34),
        .\abus_o[8]_1 (\abus_o[8] ),
        .\abus_o[8]_2 (\abus_o[8]_0 ),
        .\abus_o[9] (bank02_n_173),
        .\abus_o[9]_0 (sreg_n_35),
        .\abus_o[9]_1 (\abus_o[9] ),
        .\abus_o[9]_2 (\abus_o[9]_0 ),
        .\badr[0]_INST_0_i_1 (\badr[0]_INST_0_i_1 ),
        .\badr[0]_INST_0_i_1_0 (\badr[0]_INST_0_i_1_0 ),
        .\badr[10]_INST_0_i_1 (\badr[10]_INST_0_i_1 ),
        .\badr[11]_INST_0_i_1 (\badr[11]_INST_0_i_1 ),
        .\badr[12]_INST_0_i_1 (\badr[12]_INST_0_i_1 ),
        .\badr[13]_INST_0_i_1_0 (\badr[13]_INST_0_i_1 ),
        .\badr[13]_INST_0_i_1_1 (\badr[13]_INST_0_i_1_0 ),
        .\badr[13]_INST_0_i_2_0 (\badr[13]_INST_0_i_4 ),
        .\badr[13]_INST_0_i_2_1 (\badr[13]_INST_0_i_4_0 ),
        .\badr[13]_INST_0_i_2_2 (\badr[13]_INST_0_i_4_1 ),
        .\badr[13]_INST_0_i_2_3 (bank_sel[1]),
        .\badr[13]_INST_0_i_2_4 (\badr[13]_INST_0_i_4_2 ),
        .\badr[13]_INST_0_i_2_5 (\badr[13]_INST_0_i_4_3 ),
        .\badr[13]_INST_0_i_2_6 (\badr[13]_INST_0_i_4_4 ),
        .\badr[13]_INST_0_i_2_7 (\badr[13]_INST_0_i_4_5 ),
        .\badr[13]_INST_0_i_2_8 (\badr[13]_INST_0_i_4_6 ),
        .\badr[13]_INST_0_i_3_0 (bank_sel[3]),
        .\badr[14]_INST_0_i_1_0 (\badr[14]_INST_0_i_1 ),
        .\badr[15]_INST_0_i_1_0 (\badr[15]_INST_0_i_1 ),
        .\badr[15]_INST_0_i_1_1 (\badr[15]_INST_0_i_1_0 ),
        .\badr[15]_INST_0_i_1_2 (\badr[15]_INST_0_i_1_1 ),
        .\badr[15]_INST_0_i_1_3 (\badr[15]_INST_0_i_1_2 ),
        .\badr[1]_INST_0_i_1 (\badr[1]_INST_0_i_1 ),
        .\badr[1]_INST_0_i_1_0 (\badr[1]_INST_0_i_1_0 ),
        .\badr[2]_INST_0_i_1 (\badr[2]_INST_0_i_1 ),
        .\badr[2]_INST_0_i_1_0 (\badr[2]_INST_0_i_1_0 ),
        .\badr[3]_INST_0_i_1 (\badr[3]_INST_0_i_1 ),
        .\badr[3]_INST_0_i_1_0 (\badr[3]_INST_0_i_1_0 ),
        .\badr[4]_INST_0_i_1 (\badr[4]_INST_0_i_1 ),
        .\badr[4]_INST_0_i_1_0 (\badr[4]_INST_0_i_1_0 ),
        .\badr[5]_INST_0_i_1 (\badr[5]_INST_0_i_1 ),
        .\badr[6]_INST_0_i_1 (\badr[6]_INST_0_i_1 ),
        .\badr[7]_INST_0_i_1 (\badr[7]_INST_0_i_1 ),
        .\badr[8]_INST_0_i_1 (\badr[8]_INST_0_i_1 ),
        .\badr[9]_INST_0_i_1 (\badr[9]_INST_0_i_1 ),
        .\bdatw[13]_INST_0_i_10_0 (\bdatw[13]_INST_0_i_10 ),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2 ),
        .\bdatw[8]_INST_0_i_2_0 (\bdatw[8]_INST_0_i_2_0 ),
        .\bdatw[8]_INST_0_i_2_1 (\bdatw[8]_INST_0_i_2_1 ),
        .\bdatw[8]_INST_0_i_2_2 (\bdatw[8]_INST_0_i_2_2 ),
        .\bdatw[8]_INST_0_i_2_3 (\bdatw[8]_INST_0_i_2_3 ),
        .\bdatw[8]_INST_0_i_2_4 (\bdatw[8]_INST_0_i_2_4 ),
        .\bdatw[8]_INST_0_i_2_5 (\bdatw[8]_INST_0_i_2_5 ),
        .\bdatw[8]_INST_0_i_2_6 (\bdatw[8]_INST_0_i_2_6 ),
        .\bdatw[8]_INST_0_i_2_7 (\bdatw[8]_INST_0_i_2_7 ),
        .\bdatw[8]_INST_0_i_2_8 (\bdatw[8]_INST_0_i_2_8 ),
        .clk(clk),
        .gr0_bus1__0_13(gr0_bus1__0_13),
        .gr0_bus1__0_5(gr0_bus1__0_5),
        .gr1_bus1__0_18(gr1_bus1__0_18),
        .gr1_bus1__0_6(gr1_bus1__0_6),
        .gr2_bus1__0_19(gr2_bus1__0_19),
        .gr2_bus1__0_7(gr2_bus1__0_7),
        .gr3_bus1__0(\abuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_14(gr3_bus1__0_14),
        .gr3_bus1__0_8(gr3_bus1__0_8),
        .gr4_bus1__0_15(gr4_bus1__0_15),
        .gr4_bus1__0_20(gr4_bus1__0_20),
        .gr4_bus1__0_9(gr4_bus1__0_9),
        .gr5_bus1__0_10(gr5_bus1__0_10),
        .gr5_bus1__0_16(gr5_bus1__0_16),
        .gr6_bus1__0_11(gr6_bus1__0_11),
        .gr6_bus1__0_17(gr6_bus1__0_17),
        .gr7_bus1__0_12(gr7_bus1__0_12),
        .gr7_bus1__0_4(gr7_bus1__0_4),
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
        .\grn_reg[15]_0 (\grn_reg[15]_6 ),
        .\grn_reg[15]_1 (\grn_reg[15]_22 ),
        .\grn_reg[15]_10 (\grn_reg[15]_30 ),
        .\grn_reg[15]_11 (\grn_reg[15]_31 ),
        .\grn_reg[15]_12 (\grn_reg[15]_32 ),
        .\grn_reg[15]_13 (\grn_reg[15]_33 ),
        .\grn_reg[15]_14 (\grn_reg[15]_34 ),
        .\grn_reg[15]_15 (\grn_reg[15]_35 ),
        .\grn_reg[15]_16 (\grn_reg[15]_36 ),
        .\grn_reg[15]_17 (\grn_reg[15]_37 ),
        .\grn_reg[15]_2 (\tr_reg[15]_0 ),
        .\grn_reg[15]_3 (\grn_reg[15]_23 ),
        .\grn_reg[15]_4 (\grn_reg[15]_24 ),
        .\grn_reg[15]_5 (\grn_reg[15]_25 ),
        .\grn_reg[15]_6 (\grn_reg[15]_26 ),
        .\grn_reg[15]_7 (\grn_reg[15]_27 ),
        .\grn_reg[15]_8 (\grn_reg[15]_28 ),
        .\grn_reg[15]_9 (\grn_reg[15]_29 ),
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
        .\iv[0]_i_7 (sreg_n_60),
        .\iv[11]_i_2 (\iv[11]_i_2 ),
        .\iv[11]_i_20 (\iv[11]_i_20 ),
        .\iv[12]_i_18 (\iv[12]_i_18 ),
        .\iv[12]_i_29 (\iv[12]_i_29 ),
        .\iv[12]_i_8 (\iv[12]_i_8 ),
        .\iv[13]_i_18_0 (\iv[13]_i_18 ),
        .\iv[13]_i_2 (\iv[13]_i_2 ),
        .\iv[13]_i_22_0 (\iv[13]_i_22 ),
        .\iv[13]_i_24_0 (\iv[13]_i_24 ),
        .\iv[13]_i_25 (\iv[13]_i_25 ),
        .\iv[13]_i_26 (\iv[13]_i_26 ),
        .\iv[13]_i_27 (\iv[13]_i_27 ),
        .\iv[13]_i_29_0 (\iv[13]_i_29 ),
        .\iv[13]_i_29_1 (\iv[13]_i_29_0 ),
        .\iv[13]_i_29_2 (\iv[13]_i_29_1 ),
        .\iv[13]_i_29_3 (\iv[13]_i_29_2 ),
        .\iv[13]_i_29_4 (\iv[13]_i_29_3 ),
        .\iv[13]_i_2_0 (\iv[13]_i_2_0 ),
        .\iv[13]_i_2_1 (\iv[13]_i_2_1 ),
        .\iv[13]_i_2_2 (\iv[13]_i_2_2 ),
        .\iv[13]_i_31 (\iv[13]_i_31 ),
        .\iv[13]_i_35 (\iv[13]_i_35 ),
        .\iv[13]_i_8_0 (\iv[13]_i_8 ),
        .\iv[13]_i_8_1 (\iv[13]_i_8_0 ),
        .\iv[14]_i_14 (\iv[14]_i_14 ),
        .\iv[14]_i_15 (\iv[14]_i_15 ),
        .\iv[14]_i_24 (\iv[14]_i_24 ),
        .\iv[14]_i_24_0 (\iv[14]_i_24_0 ),
        .\iv[14]_i_24_1 (\iv[14]_i_24_1 ),
        .\iv[14]_i_26 (\iv[14]_i_26 ),
        .\iv[14]_i_30 (\iv[14]_i_30 ),
        .\iv[14]_i_30_0 (\iv[14]_i_30_0 ),
        .\iv[14]_i_38 (\iv[14]_i_38 ),
        .\iv[14]_i_39 (\iv[14]_i_39 ),
        .\iv[14]_i_39_0 (\iv[14]_i_39_0 ),
        .\iv[14]_i_4 (\iv[14]_i_4 ),
        .\iv[14]_i_40 (\iv[14]_i_40 ),
        .\iv[14]_i_40_0 (\iv[14]_i_40_0 ),
        .\iv[3]_i_6 (\iv[3]_i_6 ),
        .\iv[5]_i_19 (\iv[5]_i_19 ),
        .\iv[5]_i_2 (\iv[5]_i_2 ),
        .\iv[5]_i_7_0 (sreg_n_59),
        .\iv[6]_i_11 (\iv[6]_i_11 ),
        .\iv[6]_i_2 (\iv[6]_i_2 ),
        .\iv[8]_i_18 (\iv[8]_i_18 ),
        .\iv[8]_i_18_0 (\iv[8]_i_18_0 ),
        .\iv[9]_i_19 (\iv[9]_i_19 ),
        .\iv[9]_i_19_0 (\iv[9]_i_19_0 ),
        .\iv[9]_i_19_1 (\iv[9]_i_19_1 ),
        .\iv[9]_i_19_2 (\iv[9]_i_19_2 ),
        .\iv[9]_i_19_3 (\iv[9]_i_19_3 ),
        .\iv[9]_i_19_4 (\iv[9]_i_19_4 ),
        .\iv[9]_i_19_5 (\iv[9]_i_19_5 ),
        .\iv[9]_i_19_6 (\iv[9]_i_19_6 ),
        .\iv[9]_i_19_7 (\iv[9]_i_19_7 ),
        .\iv[9]_i_23 (\iv[9]_i_23 ),
        .\iv[9]_i_6 (\iv[9]_i_6 ),
        .out({\sr_reg[15] [15:5],\sr_reg[15] [1:0]}),
        .\sr[4]_i_15 (\sr[4]_i_15 ),
        .\sr[4]_i_25 (\sr[4]_i_25 ),
        .\sr[4]_i_27 (\sr[4]_i_27 ),
        .\sr[6]_i_3 (\sr[6]_i_3 ),
        .\sr[6]_i_8 (\sr[6]_i_8 ),
        .\sr_reg[6] (\sr_reg[6] ),
        .\sr_reg[6]_0 (\sr_reg[6]_0 ),
        .\sr_reg[6]_1 (\sr_reg[6]_1 ),
        .\sr_reg[6]_10 (\sr_reg[6]_11 ),
        .\sr_reg[6]_11 (\sr_reg[6]_12 ),
        .\sr_reg[6]_12 (\sr_reg[6]_13 ),
        .\sr_reg[6]_2 (\sr_reg[6]_2 ),
        .\sr_reg[6]_3 (\sr_reg[6]_3 ),
        .\sr_reg[6]_4 (\sr_reg[6]_4 ),
        .\sr_reg[6]_5 (\sr_reg[6]_5 ),
        .\sr_reg[6]_6 (\sr_reg[6]_7 ),
        .\sr_reg[6]_7 (\sr_reg[6]_8 ),
        .\sr_reg[6]_8 (\sr_reg[6]_9 ),
        .\sr_reg[6]_9 (\sr_reg[6]_10 ));
  mcvm_rgf_ivec ivec
       (.SR(SR),
        .clk(clk),
        .\iv_reg[0]_0 (\tr_reg[0] [0]),
        .\iv_reg[15]_0 (\iv_reg[15] ),
        .\iv_reg[15]_1 (\tr_reg[15]_0 ));
  mcvm_rgf_pcnt pcnt
       (.S(sreg_n_68),
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
        .Q(Q),
        .S(sreg_n_68),
        .abus_0({abus_0[15],abus_0[0]}),
        .\badr[0]_INST_0_i_1 (bank02_n_180),
        .\badr[0]_INST_0_i_4 (\badr[13]_INST_0_i_4_7 ),
        .\badr[0]_INST_0_i_5_0 (\badr[0]_INST_0_i_5 ),
        .\badr[0]_INST_0_i_5_1 (\badr[13]_INST_0_i_4_5 ),
        .\badr[0]_INST_0_i_5_2 (\badr[13]_INST_0_i_4 ),
        .\badr[0]_INST_0_i_5_3 (\badr[13]_INST_0_i_4_0 ),
        .\badr[10]_INST_0_i_1 (bank02_n_190),
        .\badr[11]_INST_0_i_1 (bank02_n_191),
        .\badr[12]_INST_0_i_1 (bank02_n_192),
        .\badr[13]_INST_0_i_1 (bank02_n_193),
        .\badr[14]_INST_0_i_1 (bank02_n_194),
        .\badr[15]_INST_0_i_1 (\grn_reg[15]_3 ),
        .\badr[15]_INST_0_i_1_0 (\grn_reg[15]_4 ),
        .\badr[15]_INST_0_i_1_1 (bank02_n_195),
        .\badr[15]_INST_0_i_3 (\badr[13]_INST_0_i_4_2 ),
        .\badr[15]_INST_0_i_55 (\badr[15]_INST_0_i_55 ),
        .\badr[15]_INST_0_i_5_0 (out),
        .\badr[1]_INST_0_i_1 (bank02_n_181),
        .\badr[2]_INST_0_i_1 (bank02_n_182),
        .\badr[3]_INST_0_i_1 (bank02_n_183),
        .\badr[4]_INST_0_i_1 (bank02_n_184),
        .\badr[5]_INST_0_i_1 (bank02_n_185),
        .\badr[6]_INST_0_i_1 (bank02_n_186),
        .\badr[7]_INST_0_i_1 (bank02_n_187),
        .\badr[8]_INST_0_i_1 (bank02_n_188),
        .\badr[9]_INST_0_i_1 (bank02_n_189),
        .bank_sel(bank_sel),
        .\bdatw[8]_INST_0_i_11 (\bdatw[8]_INST_0_i_11 ),
        .clk(clk),
        .ctl_fetch_fl_reg(ctl_fetch_fl_reg),
        .ctl_fetch_fl_reg_0(ctl_fetch_fl_reg_0),
        .ctl_fetch_fl_reg_1(ctl_fetch_fl_reg_1),
        .ctl_fetch_inferred_i_17(ctl_fetch_inferred_i_17),
        .fadr(fadr[1]),
        .fch_irq_req(fch_irq_req),
        .gr0_bus1__0(\bbuso2l/gr0_bus1__0 ),
        .gr3_bus1__0(\abuso2l/gr3_bus1__0 ),
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
        .\iv[13]_i_18 (\sr[4]_i_27 ),
        .out({bank02_n_0,bank02_n_1,bank02_n_2,bank02_n_3,bank02_n_4,bank02_n_5,bank02_n_6,bank02_n_7,bank02_n_8,bank02_n_9,bank02_n_10,bank02_n_11,bank02_n_12,bank02_n_13,bank02_n_14,bank02_n_15}),
        .\sr_reg[15]_0 (\sr_reg[15] ),
        .\sr_reg[1]_0 (sreg_n_20),
        .\sr_reg[1]_1 (sreg_n_21),
        .\sr_reg[1]_10 (sreg_n_47),
        .\sr_reg[1]_11 (sreg_n_48),
        .\sr_reg[1]_12 (sreg_n_49),
        .\sr_reg[1]_13 (sreg_n_50),
        .\sr_reg[1]_14 (sreg_n_51),
        .\sr_reg[1]_15 (sreg_n_52),
        .\sr_reg[1]_16 (sreg_n_53),
        .\sr_reg[1]_17 (sreg_n_54),
        .\sr_reg[1]_18 (sreg_n_55),
        .\sr_reg[1]_19 (sreg_n_56),
        .\sr_reg[1]_2 (sreg_n_22),
        .\sr_reg[1]_20 (sreg_n_57),
        .\sr_reg[1]_3 (sreg_n_23),
        .\sr_reg[1]_4 (sreg_n_24),
        .\sr_reg[1]_5 (sreg_n_42),
        .\sr_reg[1]_6 (sreg_n_43),
        .\sr_reg[1]_7 (sreg_n_44),
        .\sr_reg[1]_8 (sreg_n_45),
        .\sr_reg[1]_9 (sreg_n_46),
        .\sr_reg[4]_0 (\sr_reg[4] ),
        .\sr_reg[4]_1 (\sr_reg[4]_0 ),
        .\sr_reg[5]_0 (\sr_reg[5] ),
        .\sr_reg[5]_1 (\sr_reg[5]_0 ),
        .\sr_reg[6]_0 (sreg_n_59),
        .\sr_reg[6]_1 (sreg_n_60),
        .\sr_reg[6]_2 (\sr_reg[6]_6 ),
        .\sr_reg[7]_0 (\sr_reg[7] ),
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
    .\grn_reg[15]_0 ({gr22[15],gr22[14],gr22[13],gr22[12],gr22[11],gr22[10],gr22[9],gr22[8],gr22[7],gr22[6],gr22[5]}),
    .\grn_reg[15]_1 ({gr23[15],gr23[14],gr23[13],gr23[12],gr23[11],gr23[10],gr23[9],gr23[8],gr23[7],gr23[6],gr23[5]}),
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
    \grn_reg[0]_0 ,
    \grn_reg[1]_0 ,
    \grn_reg[2]_0 ,
    \grn_reg[3]_0 ,
    \grn_reg[4]_9 ,
    \grn_reg[5]_1 ,
    \grn_reg[6]_1 ,
    \grn_reg[7]_1 ,
    \grn_reg[8]_1 ,
    \grn_reg[9]_1 ,
    \grn_reg[10]_1 ,
    \grn_reg[11]_1 ,
    \grn_reg[12]_1 ,
    \grn_reg[13]_1 ,
    \grn_reg[14]_1 ,
    \grn_reg[15]_8 ,
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
    \badr[13]_INST_0_i_4_0 ,
    \badr[13]_INST_0_i_4_1 ,
    \badr[13]_INST_0_i_4_2 ,
    \badr[13]_INST_0_i_4_3 ,
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
    \badr[13]_INST_0_i_4_4 ,
    \badr[13]_INST_0_i_4_5 ,
    \badr[13]_INST_0_i_4_6 ,
    \badr[13]_INST_0_i_4_7 ,
    \badr[13]_INST_0_i_4_8 ,
    \badr[13]_INST_0_i_4_9 ,
    gr2_bus1__0_0,
    gr3_bus1__0_1,
    gr4_bus1__0_2,
    gr5_bus1__0_3,
    \badr[13]_INST_0_i_5 ,
    \badr[13]_INST_0_i_5_0 ,
    \badr[13]_INST_0_i_4_10 ,
    rst_n,
    E,
    \grn_reg[15]_9 ,
    clk,
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
    \grn_reg[15]_24 );
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
  output \grn_reg[0]_0 ;
  output \grn_reg[1]_0 ;
  output \grn_reg[2]_0 ;
  output \grn_reg[3]_0 ;
  output \grn_reg[4]_9 ;
  output \grn_reg[5]_1 ;
  output \grn_reg[6]_1 ;
  output \grn_reg[7]_1 ;
  output \grn_reg[8]_1 ;
  output \grn_reg[9]_1 ;
  output \grn_reg[10]_1 ;
  output \grn_reg[11]_1 ;
  output \grn_reg[12]_1 ;
  output \grn_reg[13]_1 ;
  output \grn_reg[14]_1 ;
  output \grn_reg[15]_8 ;
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
  input \badr[13]_INST_0_i_4_0 ;
  input \badr[13]_INST_0_i_4_1 ;
  input \badr[13]_INST_0_i_4_2 ;
  input \badr[13]_INST_0_i_4_3 ;
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
  input \badr[13]_INST_0_i_4_4 ;
  input \badr[13]_INST_0_i_4_5 ;
  input [1:0]\badr[13]_INST_0_i_4_6 ;
  input \badr[13]_INST_0_i_4_7 ;
  input \badr[13]_INST_0_i_4_8 ;
  input \badr[13]_INST_0_i_4_9 ;
  input gr2_bus1__0_0;
  input gr3_bus1__0_1;
  input gr4_bus1__0_2;
  input gr5_bus1__0_3;
  input \badr[13]_INST_0_i_5 ;
  input \badr[13]_INST_0_i_5_0 ;
  input \badr[13]_INST_0_i_4_10 ;
  input rst_n;
  input [0:0]E;
  input [15:0]\grn_reg[15]_9 ;
  input clk;
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
  wire \badr[10]_INST_0_i_1 ;
  wire \badr[11]_INST_0_i_1 ;
  wire \badr[12]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_16_n_0 ;
  wire \badr[13]_INST_0_i_17_n_0 ;
  wire \badr[13]_INST_0_i_18_n_0 ;
  wire \badr[13]_INST_0_i_19_n_0 ;
  wire \badr[13]_INST_0_i_20_n_0 ;
  wire \badr[13]_INST_0_i_4_0 ;
  wire \badr[13]_INST_0_i_4_1 ;
  wire \badr[13]_INST_0_i_4_10 ;
  wire \badr[13]_INST_0_i_4_2 ;
  wire \badr[13]_INST_0_i_4_3 ;
  wire \badr[13]_INST_0_i_4_4 ;
  wire \badr[13]_INST_0_i_4_5 ;
  wire [1:0]\badr[13]_INST_0_i_4_6 ;
  wire \badr[13]_INST_0_i_4_7 ;
  wire \badr[13]_INST_0_i_4_8 ;
  wire \badr[13]_INST_0_i_4_9 ;
  wire \badr[13]_INST_0_i_5 ;
  wire \badr[13]_INST_0_i_5_0 ;
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
  wire \badr[2]_INST_0_i_1 ;
  wire \badr[3]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[5]_INST_0_i_1 ;
  wire \badr[6]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[8]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_1 ;
  wire \bdatw[10]_INST_0_i_2 ;
  wire \bdatw[10]_INST_0_i_27_n_0 ;
  wire \bdatw[10]_INST_0_i_2_0 ;
  wire \bdatw[10]_INST_0_i_2_1 ;
  wire \bdatw[10]_INST_0_i_2_2 ;
  wire \bdatw[10]_INST_0_i_32_n_0 ;
  wire \bdatw[10]_INST_0_i_41_n_0 ;
  wire \bdatw[10]_INST_0_i_42_n_0 ;
  wire \bdatw[10]_INST_0_i_43_n_0 ;
  wire \bdatw[10]_INST_0_i_44_n_0 ;
  wire \bdatw[11]_INST_0_i_2 ;
  wire \bdatw[11]_INST_0_i_2_0 ;
  wire \bdatw[11]_INST_0_i_2_1 ;
  wire \bdatw[11]_INST_0_i_2_2 ;
  wire \bdatw[11]_INST_0_i_40_n_0 ;
  wire \bdatw[11]_INST_0_i_41_n_0 ;
  wire \bdatw[11]_INST_0_i_42_n_0 ;
  wire \bdatw[11]_INST_0_i_43_n_0 ;
  wire \bdatw[12]_INST_0_i_2 ;
  wire \bdatw[12]_INST_0_i_2_0 ;
  wire \bdatw[12]_INST_0_i_2_1 ;
  wire \bdatw[12]_INST_0_i_2_2 ;
  wire \bdatw[12]_INST_0_i_40_n_0 ;
  wire \bdatw[12]_INST_0_i_41_n_0 ;
  wire \bdatw[12]_INST_0_i_42_n_0 ;
  wire \bdatw[12]_INST_0_i_43_n_0 ;
  wire \bdatw[13]_INST_0_i_32_n_0 ;
  wire \bdatw[13]_INST_0_i_33_n_0 ;
  wire \bdatw[13]_INST_0_i_34_n_0 ;
  wire \bdatw[13]_INST_0_i_35_n_0 ;
  wire \bdatw[13]_INST_0_i_43_n_0 ;
  wire \bdatw[13]_INST_0_i_44_n_0 ;
  wire \bdatw[13]_INST_0_i_45_n_0 ;
  wire \bdatw[13]_INST_0_i_46_n_0 ;
  wire \bdatw[14]_INST_0_i_32_n_0 ;
  wire \bdatw[14]_INST_0_i_33_n_0 ;
  wire \bdatw[14]_INST_0_i_34_n_0 ;
  wire \bdatw[14]_INST_0_i_35_n_0 ;
  wire \bdatw[15]_INST_0_i_67_n_0 ;
  wire \bdatw[15]_INST_0_i_68_n_0 ;
  wire \bdatw[15]_INST_0_i_69_n_0 ;
  wire \bdatw[15]_INST_0_i_70_n_0 ;
  wire \bdatw[15]_INST_0_i_90_n_0 ;
  wire \bdatw[15]_INST_0_i_91_n_0 ;
  wire \bdatw[15]_INST_0_i_92_n_0 ;
  wire \bdatw[15]_INST_0_i_93_n_0 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_39_n_0 ;
  wire \bdatw[8]_INST_0_i_40_n_0 ;
  wire \bdatw[8]_INST_0_i_41_n_0 ;
  wire \bdatw[8]_INST_0_i_42_n_0 ;
  wire \bdatw[9]_INST_0_i_2 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_2_1 ;
  wire \bdatw[9]_INST_0_i_2_2 ;
  wire \bdatw[9]_INST_0_i_40_n_0 ;
  wire \bdatw[9]_INST_0_i_41_n_0 ;
  wire \bdatw[9]_INST_0_i_42_n_0 ;
  wire \bdatw[9]_INST_0_i_43_n_0 ;
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
  wire gr1_bus1__0;
  (* DONT_TOUCH *) wire [15:0]gr20;
  (* DONT_TOUCH *) wire [15:0]gr21;
  (* DONT_TOUCH *) wire [15:0]gr22;
  (* DONT_TOUCH *) wire [15:0]gr23;
  (* DONT_TOUCH *) wire [15:0]gr24;
  (* DONT_TOUCH *) wire [15:0]gr25;
  (* DONT_TOUCH *) wire [15:0]gr26;
  (* DONT_TOUCH *) wire [15:0]gr27;
  wire gr2_bus1__0;
  wire gr2_bus1__0_0;
  wire gr3_bus1__0;
  wire gr3_bus1__0_1;
  wire gr4_bus1__0;
  wire gr4_bus1__0_2;
  wire gr5_bus1__0;
  wire gr5_bus1__0_3;
  wire gr6_bus1__0;
  wire gr7_bus1__0;
  wire \grn_reg[0] ;
  wire \grn_reg[0]_0 ;
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
  wire [0:0]\grn_reg[15]_24 ;
  wire \grn_reg[15]_6 ;
  wire \grn_reg[15]_7 ;
  wire \grn_reg[15]_8 ;
  wire [15:0]\grn_reg[15]_9 ;
  wire \grn_reg[1] ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[2] ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[3] ;
  wire \grn_reg[3]_0 ;
  wire [4:0]\grn_reg[4]_7 ;
  wire \grn_reg[4]_8 ;
  wire \grn_reg[4]_9 ;
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
  wire rst_n;

  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[13]_INST_0_i_16 
       (.I0(gr24[13]),
        .I1(\badr[13]_INST_0_i_4_10 ),
        .I2(gr25[13]),
        .I3(\badr[13]_INST_0_i_4_7 ),
        .I4(\badr[13]_INST_0_i_4_0 ),
        .I5(\badr[13]_INST_0_i_5_0 ),
        .O(\badr[13]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[13]_INST_0_i_17 
       (.I0(gr03[13]),
        .I1(\badr[13]_INST_0_i_4_4 ),
        .I2(gr04[13]),
        .I3(\badr[13]_INST_0_i_4_5 ),
        .I4(\badr[13]_INST_0_i_4_6 [1]),
        .I5(\badr[13]_INST_0_i_4_6 [0]),
        .O(\badr[13]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[13]_INST_0_i_18 
       (.I0(gr01[13]),
        .I1(\badr[13]_INST_0_i_4_0 ),
        .I2(gr02[13]),
        .I3(\badr[13]_INST_0_i_4_1 ),
        .I4(\badr[13]_INST_0_i_4_2 ),
        .I5(\badr[13]_INST_0_i_4_3 ),
        .O(\badr[13]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[13]_INST_0_i_19 
       (.I0(gr07[13]),
        .I1(\badr[13]_INST_0_i_4_8 ),
        .I2(gr00[13]),
        .I3(\badr[13]_INST_0_i_4_9 ),
        .I4(\badr[13]_INST_0_i_4_6 [1]),
        .I5(\badr[13]_INST_0_i_4_6 [0]),
        .O(\badr[13]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[13]_INST_0_i_20 
       (.I0(gr05[13]),
        .I1(\badr[13]_INST_0_i_4_0 ),
        .I2(gr06[13]),
        .I3(\badr[13]_INST_0_i_4_7 ),
        .I4(\badr[13]_INST_0_i_4_2 ),
        .I5(\badr[13]_INST_0_i_4_3 ),
        .O(\badr[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[13]_INST_0_i_23 
       (.I0(gr22[13]),
        .I1(\badr[13]_INST_0_i_4_2 ),
        .I2(gr23[13]),
        .I3(\badr[13]_INST_0_i_4_1 ),
        .I4(\badr[13]_INST_0_i_5 ),
        .I5(\badr[13]_INST_0_i_5_0 ),
        .O(\grn_reg[13]_1 ));
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[14]_INST_0_i_16 
       (.I0(gr24[14]),
        .I1(\badr[13]_INST_0_i_4_10 ),
        .I2(gr25[14]),
        .I3(\badr[13]_INST_0_i_4_7 ),
        .I4(\badr[13]_INST_0_i_4_0 ),
        .I5(\badr[13]_INST_0_i_5_0 ),
        .O(\badr[14]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[14]_INST_0_i_17 
       (.I0(gr03[14]),
        .I1(\badr[13]_INST_0_i_4_4 ),
        .I2(gr04[14]),
        .I3(\badr[13]_INST_0_i_4_5 ),
        .I4(\badr[13]_INST_0_i_4_6 [1]),
        .I5(\badr[13]_INST_0_i_4_6 [0]),
        .O(\badr[14]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[14]_INST_0_i_18 
       (.I0(gr01[14]),
        .I1(\badr[13]_INST_0_i_4_0 ),
        .I2(gr02[14]),
        .I3(\badr[13]_INST_0_i_4_1 ),
        .I4(\badr[13]_INST_0_i_4_2 ),
        .I5(\badr[13]_INST_0_i_4_3 ),
        .O(\badr[14]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[14]_INST_0_i_19 
       (.I0(gr07[14]),
        .I1(\badr[13]_INST_0_i_4_8 ),
        .I2(gr00[14]),
        .I3(\badr[13]_INST_0_i_4_9 ),
        .I4(\badr[13]_INST_0_i_4_6 [1]),
        .I5(\badr[13]_INST_0_i_4_6 [0]),
        .O(\badr[14]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[14]_INST_0_i_20 
       (.I0(gr05[14]),
        .I1(\badr[13]_INST_0_i_4_0 ),
        .I2(gr06[14]),
        .I3(\badr[13]_INST_0_i_4_7 ),
        .I4(\badr[13]_INST_0_i_4_2 ),
        .I5(\badr[13]_INST_0_i_4_3 ),
        .O(\badr[14]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[14]_INST_0_i_23 
       (.I0(gr22[14]),
        .I1(\badr[13]_INST_0_i_4_2 ),
        .I2(gr23[14]),
        .I3(\badr[13]_INST_0_i_4_1 ),
        .I4(\badr[13]_INST_0_i_5 ),
        .I5(\badr[13]_INST_0_i_5_0 ),
        .O(\grn_reg[14]_1 ));
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[15]_INST_0_i_18 
       (.I0(gr24[15]),
        .I1(\badr[13]_INST_0_i_4_10 ),
        .I2(gr25[15]),
        .I3(\badr[13]_INST_0_i_4_7 ),
        .I4(\badr[13]_INST_0_i_4_0 ),
        .I5(\badr[13]_INST_0_i_5_0 ),
        .O(\badr[15]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[15]_INST_0_i_19 
       (.I0(gr03[15]),
        .I1(\badr[13]_INST_0_i_4_4 ),
        .I2(gr04[15]),
        .I3(\badr[13]_INST_0_i_4_5 ),
        .I4(\badr[13]_INST_0_i_4_6 [1]),
        .I5(\badr[13]_INST_0_i_4_6 [0]),
        .O(\badr[15]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[15]_INST_0_i_20 
       (.I0(gr01[15]),
        .I1(\badr[13]_INST_0_i_4_0 ),
        .I2(gr02[15]),
        .I3(\badr[13]_INST_0_i_4_1 ),
        .I4(\badr[13]_INST_0_i_4_2 ),
        .I5(\badr[13]_INST_0_i_4_3 ),
        .O(\badr[15]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[15]_INST_0_i_21 
       (.I0(gr07[15]),
        .I1(\badr[13]_INST_0_i_4_8 ),
        .I2(gr00[15]),
        .I3(\badr[13]_INST_0_i_4_9 ),
        .I4(\badr[13]_INST_0_i_4_6 [1]),
        .I5(\badr[13]_INST_0_i_4_6 [0]),
        .O(\badr[15]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[15]_INST_0_i_22 
       (.I0(gr05[15]),
        .I1(\badr[13]_INST_0_i_4_0 ),
        .I2(gr06[15]),
        .I3(\badr[13]_INST_0_i_4_7 ),
        .I4(\badr[13]_INST_0_i_4_2 ),
        .I5(\badr[13]_INST_0_i_4_3 ),
        .O(\badr[15]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[15]_INST_0_i_27 
       (.I0(gr22[15]),
        .I1(\badr[13]_INST_0_i_4_2 ),
        .I2(gr23[15]),
        .I3(\badr[13]_INST_0_i_4_1 ),
        .I4(\badr[13]_INST_0_i_5 ),
        .I5(\badr[13]_INST_0_i_5_0 ),
        .O(\grn_reg[15]_8 ));
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
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[10]_INST_0_i_11 
       (.I0(\bdatw[10]_INST_0_i_27_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2 ),
        .I2(\bdatw[10]_INST_0_i_2_0 ),
        .I3(\bdatw[10]_INST_0_i_2_1 ),
        .I4(\bdatw[10]_INST_0_i_2_2 ),
        .I5(\bdatw[10]_INST_0_i_32_n_0 ),
        .O(\grn_reg[4]_7 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[10]_INST_0_i_20 
       (.I0(gr20[10]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[10]_INST_0_i_41_n_0 ),
        .I3(\bdatw[10]_INST_0_i_42_n_0 ),
        .I4(\bdatw[10]_INST_0_i_43_n_0 ),
        .I5(\bdatw[10]_INST_0_i_44_n_0 ),
        .O(\grn_reg[10] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_27 
       (.I0(gr22[2]),
        .I1(gr2_bus1__0_0),
        .I2(gr23[2]),
        .I3(gr3_bus1__0_1),
        .O(\bdatw[10]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_32 
       (.I0(gr24[2]),
        .I1(gr4_bus1__0_2),
        .I2(gr25[2]),
        .I3(gr5_bus1__0_3),
        .O(\bdatw[10]_INST_0_i_32_n_0 ));
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
    \bdatw[11]_INST_0_i_19 
       (.I0(gr20[11]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[11]_INST_0_i_40_n_0 ),
        .I3(\bdatw[11]_INST_0_i_41_n_0 ),
        .I4(\bdatw[11]_INST_0_i_42_n_0 ),
        .I5(\bdatw[11]_INST_0_i_43_n_0 ),
        .O(\grn_reg[11] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_40 
       (.I0(gr05[11]),
        .I1(gr5_bus1__0),
        .I2(gr06[11]),
        .I3(gr6_bus1__0),
        .O(\bdatw[11]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_41 
       (.I0(gr07[11]),
        .I1(gr7_bus1__0),
        .I2(gr00[11]),
        .I3(gr0_bus1__0),
        .O(\bdatw[11]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_42 
       (.I0(gr01[11]),
        .I1(gr1_bus1__0),
        .I2(gr02[11]),
        .I3(gr2_bus1__0),
        .O(\bdatw[11]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_43 
       (.I0(gr03[11]),
        .I1(gr3_bus1__0),
        .I2(gr04[11]),
        .I3(gr4_bus1__0),
        .O(\bdatw[11]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[12]_INST_0_i_19 
       (.I0(gr20[12]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[12]_INST_0_i_40_n_0 ),
        .I3(\bdatw[12]_INST_0_i_41_n_0 ),
        .I4(\bdatw[12]_INST_0_i_42_n_0 ),
        .I5(\bdatw[12]_INST_0_i_43_n_0 ),
        .O(\grn_reg[12] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_40 
       (.I0(gr05[12]),
        .I1(gr5_bus1__0),
        .I2(gr06[12]),
        .I3(gr6_bus1__0),
        .O(\bdatw[12]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_41 
       (.I0(gr07[12]),
        .I1(gr7_bus1__0),
        .I2(gr00[12]),
        .I3(gr0_bus1__0),
        .O(\bdatw[12]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_42 
       (.I0(gr01[12]),
        .I1(gr1_bus1__0),
        .I2(gr02[12]),
        .I3(gr2_bus1__0),
        .O(\bdatw[12]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_43 
       (.I0(gr03[12]),
        .I1(gr3_bus1__0),
        .I2(gr04[12]),
        .I3(gr4_bus1__0),
        .O(\bdatw[12]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_19 
       (.I0(gr20[13]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[13]_INST_0_i_32_n_0 ),
        .I3(\bdatw[13]_INST_0_i_33_n_0 ),
        .I4(\bdatw[13]_INST_0_i_34_n_0 ),
        .I5(\bdatw[13]_INST_0_i_35_n_0 ),
        .O(\grn_reg[13] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_23 
       (.I0(gr20[5]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[13]_INST_0_i_43_n_0 ),
        .I3(\bdatw[13]_INST_0_i_44_n_0 ),
        .I4(\bdatw[13]_INST_0_i_45_n_0 ),
        .I5(\bdatw[13]_INST_0_i_46_n_0 ),
        .O(\grn_reg[5] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_32 
       (.I0(gr05[13]),
        .I1(gr5_bus1__0),
        .I2(gr06[13]),
        .I3(gr6_bus1__0),
        .O(\bdatw[13]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_33 
       (.I0(gr07[13]),
        .I1(gr7_bus1__0),
        .I2(gr00[13]),
        .I3(gr0_bus1__0),
        .O(\bdatw[13]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_34 
       (.I0(gr01[13]),
        .I1(gr1_bus1__0),
        .I2(gr02[13]),
        .I3(gr2_bus1__0),
        .O(\bdatw[13]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_35 
       (.I0(gr03[13]),
        .I1(gr3_bus1__0),
        .I2(gr04[13]),
        .I3(gr4_bus1__0),
        .O(\bdatw[13]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_43 
       (.I0(gr05[5]),
        .I1(gr5_bus1__0),
        .I2(gr06[5]),
        .I3(gr6_bus1__0),
        .O(\bdatw[13]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_44 
       (.I0(gr07[5]),
        .I1(gr7_bus1__0),
        .I2(gr00[5]),
        .I3(gr0_bus1__0),
        .O(\bdatw[13]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_45 
       (.I0(gr01[5]),
        .I1(gr1_bus1__0),
        .I2(gr02[5]),
        .I3(gr2_bus1__0),
        .O(\bdatw[13]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_46 
       (.I0(gr03[5]),
        .I1(gr3_bus1__0),
        .I2(gr04[5]),
        .I3(gr4_bus1__0),
        .O(\bdatw[13]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_19 
       (.I0(gr20[14]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[14]_INST_0_i_32_n_0 ),
        .I3(\bdatw[14]_INST_0_i_33_n_0 ),
        .I4(\bdatw[14]_INST_0_i_34_n_0 ),
        .I5(\bdatw[14]_INST_0_i_35_n_0 ),
        .O(\grn_reg[14] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_32 
       (.I0(gr05[14]),
        .I1(gr5_bus1__0),
        .I2(gr06[14]),
        .I3(gr6_bus1__0),
        .O(\bdatw[14]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_33 
       (.I0(gr07[14]),
        .I1(gr7_bus1__0),
        .I2(gr00[14]),
        .I3(gr0_bus1__0),
        .O(\bdatw[14]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_34 
       (.I0(gr01[14]),
        .I1(gr1_bus1__0),
        .I2(gr02[14]),
        .I3(gr2_bus1__0),
        .O(\bdatw[14]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_35 
       (.I0(gr03[14]),
        .I1(gr3_bus1__0),
        .I2(gr04[14]),
        .I3(gr4_bus1__0),
        .O(\bdatw[14]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_25 
       (.I0(gr20[15]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[15]_INST_0_i_67_n_0 ),
        .I3(\bdatw[15]_INST_0_i_68_n_0 ),
        .I4(\bdatw[15]_INST_0_i_69_n_0 ),
        .I5(\bdatw[15]_INST_0_i_70_n_0 ),
        .O(\grn_reg[15]_6 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_39 
       (.I0(gr20[7]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[15]_INST_0_i_90_n_0 ),
        .I3(\bdatw[15]_INST_0_i_91_n_0 ),
        .I4(\bdatw[15]_INST_0_i_92_n_0 ),
        .I5(\bdatw[15]_INST_0_i_93_n_0 ),
        .O(\grn_reg[7] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_67 
       (.I0(gr05[15]),
        .I1(gr5_bus1__0),
        .I2(gr06[15]),
        .I3(gr6_bus1__0),
        .O(\bdatw[15]_INST_0_i_67_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_68 
       (.I0(gr07[15]),
        .I1(gr7_bus1__0),
        .I2(gr00[15]),
        .I3(gr0_bus1__0),
        .O(\bdatw[15]_INST_0_i_68_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_69 
       (.I0(gr01[15]),
        .I1(gr1_bus1__0),
        .I2(gr02[15]),
        .I3(gr2_bus1__0),
        .O(\bdatw[15]_INST_0_i_69_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_70 
       (.I0(gr03[15]),
        .I1(gr3_bus1__0),
        .I2(gr04[15]),
        .I3(gr4_bus1__0),
        .O(\bdatw[15]_INST_0_i_70_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_90 
       (.I0(gr05[7]),
        .I1(gr5_bus1__0),
        .I2(gr06[7]),
        .I3(gr6_bus1__0),
        .O(\bdatw[15]_INST_0_i_90_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_91 
       (.I0(gr07[7]),
        .I1(gr7_bus1__0),
        .I2(gr00[7]),
        .I3(gr0_bus1__0),
        .O(\bdatw[15]_INST_0_i_91_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_92 
       (.I0(gr01[7]),
        .I1(gr1_bus1__0),
        .I2(gr02[7]),
        .I3(gr2_bus1__0),
        .O(\bdatw[15]_INST_0_i_92_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_93 
       (.I0(gr03[7]),
        .I1(gr3_bus1__0),
        .I2(gr04[7]),
        .I3(gr4_bus1__0),
        .O(\bdatw[15]_INST_0_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[8]_INST_0_i_19 
       (.I0(gr20[8]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[8]_INST_0_i_39_n_0 ),
        .I3(\bdatw[8]_INST_0_i_40_n_0 ),
        .I4(\bdatw[8]_INST_0_i_41_n_0 ),
        .I5(\bdatw[8]_INST_0_i_42_n_0 ),
        .O(\grn_reg[8] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_39 
       (.I0(gr05[8]),
        .I1(gr5_bus1__0),
        .I2(gr06[8]),
        .I3(gr6_bus1__0),
        .O(\bdatw[8]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_40 
       (.I0(gr07[8]),
        .I1(gr7_bus1__0),
        .I2(gr00[8]),
        .I3(gr0_bus1__0),
        .O(\bdatw[8]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_41 
       (.I0(gr01[8]),
        .I1(gr1_bus1__0),
        .I2(gr02[8]),
        .I3(gr2_bus1__0),
        .O(\bdatw[8]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_42 
       (.I0(gr03[8]),
        .I1(gr3_bus1__0),
        .I2(gr04[8]),
        .I3(gr4_bus1__0),
        .O(\bdatw[8]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[9]_INST_0_i_19 
       (.I0(gr20[9]),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[9]_INST_0_i_40_n_0 ),
        .I3(\bdatw[9]_INST_0_i_41_n_0 ),
        .I4(\bdatw[9]_INST_0_i_42_n_0 ),
        .I5(\bdatw[9]_INST_0_i_43_n_0 ),
        .O(\grn_reg[9] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_40 
       (.I0(gr05[9]),
        .I1(gr5_bus1__0),
        .I2(gr06[9]),
        .I3(gr6_bus1__0),
        .O(\bdatw[9]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_41 
       (.I0(gr07[9]),
        .I1(gr7_bus1__0),
        .I2(gr00[9]),
        .I3(gr0_bus1__0),
        .O(\bdatw[9]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_42 
       (.I0(gr01[9]),
        .I1(gr1_bus1__0),
        .I2(gr02[9]),
        .I3(gr2_bus1__0),
        .O(\bdatw[9]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_43 
       (.I0(gr03[9]),
        .I1(gr3_bus1__0),
        .I2(gr04[9]),
        .I3(gr4_bus1__0),
        .O(\bdatw[9]_INST_0_i_43_n_0 ));
  mcvm_rgf_grn_16 grn00
       (.E(E),
        .Q(gr00),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_9 ),
        .rst_n(rst_n));
  mcvm_rgf_grn_17 grn01
       (.Q(gr01),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_10 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcvm_rgf_grn_18 grn02
       (.Q(gr02),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_11 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcvm_rgf_grn_19 grn03
       (.Q(gr03),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_12 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcvm_rgf_grn_20 grn04
       (.Q(gr04),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_13 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcvm_rgf_grn_21 grn05
       (.Q(gr05),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_14 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcvm_rgf_grn_22 grn06
       (.Q(gr06),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_15 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcvm_rgf_grn_23 grn07
       (.Q(gr07),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_16 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcvm_rgf_grn_24 grn20
       (.Q(gr20),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_17 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcvm_rgf_grn_25 grn21
       (.Q(gr21),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_18 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcvm_rgf_grn_26 grn22
       (.Q(gr22),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_19 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcvm_rgf_grn_27 grn23
       (.Q(gr23),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_20 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcvm_rgf_grn_28 grn24
       (.Q(gr24),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_21 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcvm_rgf_grn_29 grn25
       (.Q(gr25),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_22 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcvm_rgf_grn_30 grn26
       (.Q(gr26),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_23 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcvm_rgf_grn_31 grn27
       (.Q(gr27),
        .SR(SR),
        .\badr[0]_INST_0_i_1 (\badr[0]_INST_0_i_1 ),
        .\badr[10]_INST_0_i_1 (\badr[10]_INST_0_i_1 ),
        .\badr[11]_INST_0_i_1 (\badr[11]_INST_0_i_1 ),
        .\badr[12]_INST_0_i_1 (\badr[12]_INST_0_i_1 ),
        .\badr[12]_INST_0_i_4_0 (gr01[12:0]),
        .\badr[12]_INST_0_i_4_1 (gr02[12:0]),
        .\badr[12]_INST_0_i_4_10 (\badr[13]_INST_0_i_4_4 ),
        .\badr[12]_INST_0_i_4_11 (\badr[13]_INST_0_i_4_5 ),
        .\badr[12]_INST_0_i_4_12 (\badr[13]_INST_0_i_4_6 ),
        .\badr[12]_INST_0_i_4_13 (\badr[13]_INST_0_i_4_7 ),
        .\badr[12]_INST_0_i_4_14 (\badr[13]_INST_0_i_4_8 ),
        .\badr[12]_INST_0_i_4_15 (\badr[13]_INST_0_i_4_9 ),
        .\badr[12]_INST_0_i_4_16 (gr24[12:0]),
        .\badr[12]_INST_0_i_4_17 (gr25[12:0]),
        .\badr[12]_INST_0_i_4_18 (\badr[13]_INST_0_i_5_0 ),
        .\badr[12]_INST_0_i_4_19 (\badr[13]_INST_0_i_4_10 ),
        .\badr[12]_INST_0_i_4_2 (gr03[12:0]),
        .\badr[12]_INST_0_i_4_3 (gr04[12:0]),
        .\badr[12]_INST_0_i_4_4 (gr05[12:0]),
        .\badr[12]_INST_0_i_4_5 (gr06[12:0]),
        .\badr[12]_INST_0_i_4_6 (gr07[12:0]),
        .\badr[12]_INST_0_i_4_7 (gr00[12:0]),
        .\badr[12]_INST_0_i_4_8 (\badr[13]_INST_0_i_4_0 ),
        .\badr[12]_INST_0_i_4_9 (\badr[13]_INST_0_i_4_3 ),
        .\badr[12]_INST_0_i_5 (\badr[13]_INST_0_i_4_1 ),
        .\badr[12]_INST_0_i_5_0 (\badr[13]_INST_0_i_4_2 ),
        .\badr[12]_INST_0_i_5_1 (gr22[12:0]),
        .\badr[12]_INST_0_i_5_2 (gr23[12:0]),
        .\badr[12]_INST_0_i_5_3 (\badr[13]_INST_0_i_5 ),
        .\badr[1]_INST_0_i_1 (\badr[1]_INST_0_i_1 ),
        .\badr[2]_INST_0_i_1 (\badr[2]_INST_0_i_1 ),
        .\badr[3]_INST_0_i_1 (\badr[3]_INST_0_i_1 ),
        .\badr[4]_INST_0_i_1 (\badr[4]_INST_0_i_1 ),
        .\badr[5]_INST_0_i_1 (\badr[5]_INST_0_i_1 ),
        .\badr[6]_INST_0_i_1 (\badr[6]_INST_0_i_1 ),
        .\badr[7]_INST_0_i_1 (\badr[7]_INST_0_i_1 ),
        .\badr[8]_INST_0_i_1 (\badr[8]_INST_0_i_1 ),
        .\badr[9]_INST_0_i_1 (\badr[9]_INST_0_i_1 ),
        .\bdatw[11]_INST_0_i_2 (\bdatw[11]_INST_0_i_2 ),
        .\bdatw[11]_INST_0_i_2_0 (\bdatw[11]_INST_0_i_2_0 ),
        .\bdatw[11]_INST_0_i_2_1 (\bdatw[11]_INST_0_i_2_1 ),
        .\bdatw[11]_INST_0_i_2_2 (\bdatw[11]_INST_0_i_2_2 ),
        .\bdatw[12]_INST_0_i_2 (\bdatw[12]_INST_0_i_2 ),
        .\bdatw[12]_INST_0_i_2_0 (\bdatw[12]_INST_0_i_2_0 ),
        .\bdatw[12]_INST_0_i_2_1 (\bdatw[12]_INST_0_i_2_1 ),
        .\bdatw[12]_INST_0_i_2_2 (\bdatw[12]_INST_0_i_2_2 ),
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
        .gr1_bus1__0(gr1_bus1__0),
        .gr2_bus1__0(gr2_bus1__0),
        .gr2_bus1__0_0(gr2_bus1__0_0),
        .gr3_bus1__0(gr3_bus1__0),
        .gr3_bus1__0_1(gr3_bus1__0_1),
        .gr4_bus1__0(gr4_bus1__0),
        .gr4_bus1__0_2(gr4_bus1__0_2),
        .gr5_bus1__0(gr5_bus1__0),
        .gr5_bus1__0_3(gr5_bus1__0_3),
        .gr6_bus1__0(gr6_bus1__0),
        .gr7_bus1__0(gr7_bus1__0),
        .\grn_reg[0]_0 (\grn_reg[0] ),
        .\grn_reg[0]_1 (\grn_reg[0]_0 ),
        .\grn_reg[10]_0 (\grn_reg[10]_0 ),
        .\grn_reg[10]_1 (\grn_reg[10]_1 ),
        .\grn_reg[11]_0 (\grn_reg[11]_0 ),
        .\grn_reg[11]_1 (\grn_reg[11]_1 ),
        .\grn_reg[12]_0 (\grn_reg[12]_0 ),
        .\grn_reg[12]_1 (\grn_reg[12]_1 ),
        .\grn_reg[15]_0 (\grn_reg[15]_24 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ),
        .\grn_reg[1]_0 (\grn_reg[1] ),
        .\grn_reg[1]_1 (\grn_reg[1]_0 ),
        .\grn_reg[2]_0 (\grn_reg[2] ),
        .\grn_reg[2]_1 (\grn_reg[2]_0 ),
        .\grn_reg[3]_0 (\grn_reg[3] ),
        .\grn_reg[3]_1 (\grn_reg[3]_0 ),
        .\grn_reg[4]_0 ({\grn_reg[4]_7 [4:3],\grn_reg[4]_7 [1:0]}),
        .\grn_reg[4]_1 (\grn_reg[4]_8 ),
        .\grn_reg[4]_2 (\grn_reg[4]_9 ),
        .\grn_reg[5]_0 (\grn_reg[5]_0 ),
        .\grn_reg[5]_1 (\grn_reg[5]_1 ),
        .\grn_reg[6]_0 (\grn_reg[6] ),
        .\grn_reg[6]_1 (\grn_reg[6]_0 ),
        .\grn_reg[6]_2 (\grn_reg[6]_1 ),
        .\grn_reg[7]_0 (\grn_reg[7]_0 ),
        .\grn_reg[7]_1 (\grn_reg[7]_1 ),
        .\grn_reg[8]_0 (\grn_reg[8]_0 ),
        .\grn_reg[8]_1 (\grn_reg[8]_1 ),
        .\grn_reg[9]_0 (\grn_reg[9]_0 ),
        .\grn_reg[9]_1 (\grn_reg[9]_1 ),
        .out(gr20[6]));
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
    \iv[13]_i_22_0 ,
    \iv[13]_i_29_0 ,
    \iv[12]_i_18 ,
    \iv[13]_i_29_1 ,
    \sr_reg[6] ,
    \iv[14]_i_39 ,
    \badr[13]_INST_0_i_1_0 ,
    \sr_reg[6]_0 ,
    \iv[13]_i_29_2 ,
    \iv[14]_i_26 ,
    \bdatw[8]_INST_0_i_2 ,
    \sr_reg[6]_1 ,
    \iv[11]_i_20 ,
    \sr[6]_i_8 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \iv[9]_i_19 ,
    \iv[9]_i_23 ,
    \iv[5]_i_19 ,
    \badr[1]_INST_0_i_1 ,
    \iv[6]_i_11 ,
    \iv[9]_i_19_0 ,
    \iv[13]_i_31 ,
    \badr[15]_INST_0_i_1_0 ,
    \iv[13]_i_18_0 ,
    \iv[14]_i_24 ,
    \iv[14]_i_14 ,
    \iv[13]_i_27 ,
    \badr[0]_INST_0_i_1 ,
    \badr[3]_INST_0_i_1 ,
    \sr[4]_i_25 ,
    \iv[9]_i_19_1 ,
    \iv[9]_i_19_2 ,
    \iv[14]_i_30 ,
    \iv[9]_i_19_3 ,
    \iv[14]_i_40 ,
    \sr_reg[6]_2 ,
    \iv[14]_i_24_0 ,
    \iv[14]_i_40_0 ,
    \iv[13]_i_35 ,
    \iv[14]_i_24_1 ,
    \sr_reg[6]_3 ,
    \badr[15]_INST_0_i_1_1 ,
    \sr_reg[6]_4 ,
    \badr[2]_INST_0_i_1 ,
    \badr[4]_INST_0_i_1 ,
    \sr_reg[6]_5 ,
    \iv[14]_i_38 ,
    \iv[9]_i_19_4 ,
    \iv[8]_i_18 ,
    \iv[13]_i_25 ,
    \iv[13]_i_26 ,
    \iv[8]_i_18_0 ,
    \iv[13]_i_24_0 ,
    \iv[12]_i_29 ,
    \iv[12]_i_8 ,
    \sr_reg[6]_6 ,
    \iv[14]_i_30_0 ,
    \sr_reg[6]_7 ,
    \iv[9]_i_19_5 ,
    \iv[14]_i_39_0 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \iv[9]_i_19_6 ,
    \bdatw[8]_INST_0_i_2_3 ,
    \bdatw[8]_INST_0_i_2_4 ,
    \bdatw[8]_INST_0_i_2_5 ,
    \bdatw[8]_INST_0_i_2_6 ,
    \iv[9]_i_19_7 ,
    \iv[13]_i_29_3 ,
    \bdatw[8]_INST_0_i_2_7 ,
    \bdatw[8]_INST_0_i_2_8 ,
    \badr[15]_INST_0_i_1_2 ,
    \iv[13]_i_29_4 ,
    \sr_reg[6]_8 ,
    \sr_reg[6]_9 ,
    \sr_reg[6]_10 ,
    \sr_reg[6]_11 ,
    \sr_reg[6]_12 ,
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
    gr7_bus1__0_4,
    gr0_bus1__0_5,
    out,
    \bdatw[13]_INST_0_i_10_0 ,
    gr1_bus1__0_6,
    gr2_bus1__0_7,
    gr3_bus1__0_8,
    gr4_bus1__0_9,
    gr5_bus1__0_10,
    gr6_bus1__0_11,
    gr7_bus1__0_12,
    gr0_bus1__0_13,
    \badr[0]_INST_0_i_1_0 ,
    \badr[13]_INST_0_i_2_0 ,
    \badr[13]_INST_0_i_2_1 ,
    \badr[13]_INST_0_i_2_2 ,
    \badr[13]_INST_0_i_2_3 ,
    \badr[1]_INST_0_i_1_0 ,
    \badr[2]_INST_0_i_1_0 ,
    \badr[3]_INST_0_i_1_0 ,
    \badr[4]_INST_0_i_1_0 ,
    \badr[5]_INST_0_i_1 ,
    \badr[6]_INST_0_i_1 ,
    \badr[7]_INST_0_i_1 ,
    \badr[8]_INST_0_i_1 ,
    \badr[9]_INST_0_i_1 ,
    \badr[10]_INST_0_i_1 ,
    \badr[11]_INST_0_i_1 ,
    \badr[12]_INST_0_i_1 ,
    \badr[13]_INST_0_i_1_1 ,
    \badr[14]_INST_0_i_1_0 ,
    \badr[15]_INST_0_i_1_3 ,
    \badr[13]_INST_0_i_2_4 ,
    \badr[13]_INST_0_i_2_5 ,
    \badr[13]_INST_0_i_2_6 ,
    \badr[13]_INST_0_i_2_7 ,
    \badr[13]_INST_0_i_2_8 ,
    gr3_bus1__0_14,
    gr4_bus1__0_15,
    gr5_bus1__0_16,
    gr6_bus1__0_17,
    gr1_bus1__0_18,
    gr2_bus1__0_19,
    gr3_bus1__0,
    gr4_bus1__0_20,
    \badr[13]_INST_0_i_3_0 ,
    \iv[13]_i_2 ,
    \iv[13]_i_2_0 ,
    \iv[13]_i_2_1 ,
    \iv[6]_i_2 ,
    \iv[13]_i_8_0 ,
    \iv[13]_i_8_1 ,
    \iv[9]_i_6 ,
    \iv[11]_i_2 ,
    \iv[3]_i_6 ,
    \sr[6]_i_3 ,
    \sr[4]_i_27 ,
    \iv[5]_i_2 ,
    \iv[13]_i_2_2 ,
    \iv[5]_i_7_0 ,
    \sr[4]_i_15 ,
    \iv[0]_i_7 ,
    \iv[14]_i_4 ,
    \iv[14]_i_15 ,
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
  output \iv[13]_i_22_0 ;
  output \iv[13]_i_29_0 ;
  output \iv[12]_i_18 ;
  output \iv[13]_i_29_1 ;
  output \sr_reg[6] ;
  output \iv[14]_i_39 ;
  output \badr[13]_INST_0_i_1_0 ;
  output \sr_reg[6]_0 ;
  output \iv[13]_i_29_2 ;
  output \iv[14]_i_26 ;
  output \bdatw[8]_INST_0_i_2 ;
  output \sr_reg[6]_1 ;
  output \iv[11]_i_20 ;
  output \sr[6]_i_8 ;
  output \bdatw[8]_INST_0_i_2_0 ;
  output \iv[9]_i_19 ;
  output \iv[9]_i_23 ;
  output \iv[5]_i_19 ;
  output \badr[1]_INST_0_i_1 ;
  output \iv[6]_i_11 ;
  output \iv[9]_i_19_0 ;
  output \iv[13]_i_31 ;
  output \badr[15]_INST_0_i_1_0 ;
  output \iv[13]_i_18_0 ;
  output \iv[14]_i_24 ;
  output \iv[14]_i_14 ;
  output \iv[13]_i_27 ;
  output \badr[0]_INST_0_i_1 ;
  output \badr[3]_INST_0_i_1 ;
  output \sr[4]_i_25 ;
  output \iv[9]_i_19_1 ;
  output \iv[9]_i_19_2 ;
  output \iv[14]_i_30 ;
  output \iv[9]_i_19_3 ;
  output \iv[14]_i_40 ;
  output \sr_reg[6]_2 ;
  output \iv[14]_i_24_0 ;
  output \iv[14]_i_40_0 ;
  output \iv[13]_i_35 ;
  output \iv[14]_i_24_1 ;
  output \sr_reg[6]_3 ;
  output \badr[15]_INST_0_i_1_1 ;
  output \sr_reg[6]_4 ;
  output \badr[2]_INST_0_i_1 ;
  output \badr[4]_INST_0_i_1 ;
  output \sr_reg[6]_5 ;
  output \iv[14]_i_38 ;
  output \iv[9]_i_19_4 ;
  output \iv[8]_i_18 ;
  output \iv[13]_i_25 ;
  output \iv[13]_i_26 ;
  output \iv[8]_i_18_0 ;
  output \iv[13]_i_24_0 ;
  output \iv[12]_i_29 ;
  output \iv[12]_i_8 ;
  output \sr_reg[6]_6 ;
  output \iv[14]_i_30_0 ;
  output \sr_reg[6]_7 ;
  output \iv[9]_i_19_5 ;
  output \iv[14]_i_39_0 ;
  output \bdatw[8]_INST_0_i_2_1 ;
  output \bdatw[8]_INST_0_i_2_2 ;
  output \iv[9]_i_19_6 ;
  output \bdatw[8]_INST_0_i_2_3 ;
  output \bdatw[8]_INST_0_i_2_4 ;
  output \bdatw[8]_INST_0_i_2_5 ;
  output \bdatw[8]_INST_0_i_2_6 ;
  output \iv[9]_i_19_7 ;
  output \iv[13]_i_29_3 ;
  output \bdatw[8]_INST_0_i_2_7 ;
  output \bdatw[8]_INST_0_i_2_8 ;
  output \badr[15]_INST_0_i_1_2 ;
  output \iv[13]_i_29_4 ;
  output \sr_reg[6]_8 ;
  output \sr_reg[6]_9 ;
  output \sr_reg[6]_10 ;
  output \sr_reg[6]_11 ;
  output \sr_reg[6]_12 ;
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
  input gr7_bus1__0_4;
  input gr0_bus1__0_5;
  input [12:0]out;
  input [0:0]\bdatw[13]_INST_0_i_10_0 ;
  input gr1_bus1__0_6;
  input gr2_bus1__0_7;
  input gr3_bus1__0_8;
  input gr4_bus1__0_9;
  input gr5_bus1__0_10;
  input gr6_bus1__0_11;
  input gr7_bus1__0_12;
  input gr0_bus1__0_13;
  input \badr[0]_INST_0_i_1_0 ;
  input \badr[13]_INST_0_i_2_0 ;
  input \badr[13]_INST_0_i_2_1 ;
  input \badr[13]_INST_0_i_2_2 ;
  input \badr[13]_INST_0_i_2_3 ;
  input \badr[1]_INST_0_i_1_0 ;
  input \badr[2]_INST_0_i_1_0 ;
  input \badr[3]_INST_0_i_1_0 ;
  input \badr[4]_INST_0_i_1_0 ;
  input \badr[5]_INST_0_i_1 ;
  input \badr[6]_INST_0_i_1 ;
  input \badr[7]_INST_0_i_1 ;
  input \badr[8]_INST_0_i_1 ;
  input \badr[9]_INST_0_i_1 ;
  input \badr[10]_INST_0_i_1 ;
  input \badr[11]_INST_0_i_1 ;
  input \badr[12]_INST_0_i_1 ;
  input \badr[13]_INST_0_i_1_1 ;
  input \badr[14]_INST_0_i_1_0 ;
  input \badr[15]_INST_0_i_1_3 ;
  input \badr[13]_INST_0_i_2_4 ;
  input \badr[13]_INST_0_i_2_5 ;
  input \badr[13]_INST_0_i_2_6 ;
  input \badr[13]_INST_0_i_2_7 ;
  input \badr[13]_INST_0_i_2_8 ;
  input gr3_bus1__0_14;
  input gr4_bus1__0_15;
  input gr5_bus1__0_16;
  input gr6_bus1__0_17;
  input gr1_bus1__0_18;
  input gr2_bus1__0_19;
  input gr3_bus1__0;
  input gr4_bus1__0_20;
  input \badr[13]_INST_0_i_3_0 ;
  input \iv[13]_i_2 ;
  input \iv[13]_i_2_0 ;
  input \iv[13]_i_2_1 ;
  input \iv[6]_i_2 ;
  input \iv[13]_i_8_0 ;
  input \iv[13]_i_8_1 ;
  input \iv[9]_i_6 ;
  input \iv[11]_i_2 ;
  input \iv[3]_i_6 ;
  input \sr[6]_i_3 ;
  input \sr[4]_i_27 ;
  input \iv[5]_i_2 ;
  input \iv[13]_i_2_2 ;
  input \iv[5]_i_7_0 ;
  input \sr[4]_i_15 ;
  input \iv[0]_i_7 ;
  input \iv[14]_i_4 ;
  input \iv[14]_i_15 ;
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
  wire \badr[0]_INST_0_i_1 ;
  wire \badr[0]_INST_0_i_1_0 ;
  wire \badr[10]_INST_0_i_1 ;
  wire \badr[11]_INST_0_i_1 ;
  wire \badr[12]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_10_n_0 ;
  wire \badr[13]_INST_0_i_11_n_0 ;
  wire \badr[13]_INST_0_i_12_n_0 ;
  wire \badr[13]_INST_0_i_14_n_0 ;
  wire \badr[13]_INST_0_i_15_n_0 ;
  wire \badr[13]_INST_0_i_1_0 ;
  wire \badr[13]_INST_0_i_1_1 ;
  wire \badr[13]_INST_0_i_2_0 ;
  wire \badr[13]_INST_0_i_2_1 ;
  wire \badr[13]_INST_0_i_2_2 ;
  wire \badr[13]_INST_0_i_2_3 ;
  wire \badr[13]_INST_0_i_2_4 ;
  wire \badr[13]_INST_0_i_2_5 ;
  wire \badr[13]_INST_0_i_2_6 ;
  wire \badr[13]_INST_0_i_2_7 ;
  wire \badr[13]_INST_0_i_2_8 ;
  wire \badr[13]_INST_0_i_2_n_0 ;
  wire \badr[13]_INST_0_i_3_0 ;
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
  wire \badr[15]_INST_0_i_1_3 ;
  wire \badr[15]_INST_0_i_2_n_0 ;
  wire \badr[15]_INST_0_i_3_n_0 ;
  wire \badr[15]_INST_0_i_8_n_0 ;
  wire \badr[15]_INST_0_i_9_n_0 ;
  wire \badr[1]_INST_0_i_1 ;
  wire \badr[1]_INST_0_i_1_0 ;
  wire \badr[2]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_1_0 ;
  wire \badr[3]_INST_0_i_1 ;
  wire \badr[3]_INST_0_i_1_0 ;
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_1_0 ;
  wire \badr[5]_INST_0_i_1 ;
  wire \badr[6]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[8]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_1 ;
  wire \bdatw[10]_INST_0_i_17_n_0 ;
  wire \bdatw[10]_INST_0_i_18_n_0 ;
  wire \bdatw[10]_INST_0_i_34_n_0 ;
  wire \bdatw[10]_INST_0_i_35_n_0 ;
  wire \bdatw[10]_INST_0_i_36_n_0 ;
  wire \bdatw[10]_INST_0_i_37_n_0 ;
  wire \bdatw[10]_INST_0_i_38_n_0 ;
  wire \bdatw[10]_INST_0_i_39_n_0 ;
  wire \bdatw[11]_INST_0_i_16_n_0 ;
  wire \bdatw[11]_INST_0_i_17_n_0 ;
  wire \bdatw[11]_INST_0_i_33_n_0 ;
  wire \bdatw[11]_INST_0_i_34_n_0 ;
  wire \bdatw[11]_INST_0_i_35_n_0 ;
  wire \bdatw[11]_INST_0_i_36_n_0 ;
  wire \bdatw[11]_INST_0_i_37_n_0 ;
  wire \bdatw[11]_INST_0_i_38_n_0 ;
  wire \bdatw[12]_INST_0_i_16_n_0 ;
  wire \bdatw[12]_INST_0_i_17_n_0 ;
  wire \bdatw[12]_INST_0_i_33_n_0 ;
  wire \bdatw[12]_INST_0_i_34_n_0 ;
  wire \bdatw[12]_INST_0_i_35_n_0 ;
  wire \bdatw[12]_INST_0_i_36_n_0 ;
  wire \bdatw[12]_INST_0_i_37_n_0 ;
  wire \bdatw[12]_INST_0_i_38_n_0 ;
  wire [0:0]\bdatw[13]_INST_0_i_10_0 ;
  wire \bdatw[13]_INST_0_i_16_n_0 ;
  wire \bdatw[13]_INST_0_i_17_n_0 ;
  wire \bdatw[13]_INST_0_i_20_n_0 ;
  wire \bdatw[13]_INST_0_i_21_n_0 ;
  wire \bdatw[13]_INST_0_i_25_n_0 ;
  wire \bdatw[13]_INST_0_i_26_n_0 ;
  wire \bdatw[13]_INST_0_i_27_n_0 ;
  wire \bdatw[13]_INST_0_i_28_n_0 ;
  wire \bdatw[13]_INST_0_i_29_n_0 ;
  wire \bdatw[13]_INST_0_i_30_n_0 ;
  wire \bdatw[13]_INST_0_i_36_n_0 ;
  wire \bdatw[13]_INST_0_i_37_n_0 ;
  wire \bdatw[13]_INST_0_i_38_n_0 ;
  wire \bdatw[13]_INST_0_i_39_n_0 ;
  wire \bdatw[13]_INST_0_i_40_n_0 ;
  wire \bdatw[13]_INST_0_i_41_n_0 ;
  wire \bdatw[14]_INST_0_i_16_n_0 ;
  wire \bdatw[14]_INST_0_i_17_n_0 ;
  wire \bdatw[14]_INST_0_i_25_n_0 ;
  wire \bdatw[14]_INST_0_i_26_n_0 ;
  wire \bdatw[14]_INST_0_i_27_n_0 ;
  wire \bdatw[14]_INST_0_i_28_n_0 ;
  wire \bdatw[14]_INST_0_i_29_n_0 ;
  wire \bdatw[14]_INST_0_i_30_n_0 ;
  wire \bdatw[15]_INST_0_i_20_n_0 ;
  wire \bdatw[15]_INST_0_i_21_n_0 ;
  wire \bdatw[15]_INST_0_i_36_n_0 ;
  wire \bdatw[15]_INST_0_i_37_n_0 ;
  wire \bdatw[15]_INST_0_i_52_n_0 ;
  wire \bdatw[15]_INST_0_i_55_n_0 ;
  wire \bdatw[15]_INST_0_i_57_n_0 ;
  wire \bdatw[15]_INST_0_i_58_n_0 ;
  wire \bdatw[15]_INST_0_i_59_n_0 ;
  wire \bdatw[15]_INST_0_i_60_n_0 ;
  wire \bdatw[15]_INST_0_i_83_n_0 ;
  wire \bdatw[15]_INST_0_i_84_n_0 ;
  wire \bdatw[15]_INST_0_i_85_n_0 ;
  wire \bdatw[15]_INST_0_i_86_n_0 ;
  wire \bdatw[15]_INST_0_i_87_n_0 ;
  wire \bdatw[15]_INST_0_i_88_n_0 ;
  wire \bdatw[8]_INST_0_i_16_n_0 ;
  wire \bdatw[8]_INST_0_i_17_n_0 ;
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
  wire \bdatw[8]_INST_0_i_32_n_0 ;
  wire \bdatw[8]_INST_0_i_33_n_0 ;
  wire \bdatw[8]_INST_0_i_34_n_0 ;
  wire \bdatw[8]_INST_0_i_35_n_0 ;
  wire \bdatw[8]_INST_0_i_36_n_0 ;
  wire \bdatw[8]_INST_0_i_37_n_0 ;
  wire \bdatw[9]_INST_0_i_16_n_0 ;
  wire \bdatw[9]_INST_0_i_17_n_0 ;
  wire \bdatw[9]_INST_0_i_33_n_0 ;
  wire \bdatw[9]_INST_0_i_34_n_0 ;
  wire \bdatw[9]_INST_0_i_35_n_0 ;
  wire \bdatw[9]_INST_0_i_36_n_0 ;
  wire \bdatw[9]_INST_0_i_37_n_0 ;
  wire \bdatw[9]_INST_0_i_38_n_0 ;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]gr00;
  (* DONT_TOUCH *) wire [15:0]gr01;
  (* DONT_TOUCH *) wire [15:0]gr02;
  (* DONT_TOUCH *) wire [15:0]gr03;
  (* DONT_TOUCH *) wire [15:0]gr04;
  (* DONT_TOUCH *) wire [15:0]gr05;
  (* DONT_TOUCH *) wire [15:0]gr06;
  (* DONT_TOUCH *) wire [15:0]gr07;
  wire gr0_bus1__0_13;
  wire gr0_bus1__0_5;
  wire gr1_bus1__0_18;
  wire gr1_bus1__0_6;
  (* DONT_TOUCH *) wire [15:0]gr20;
  (* DONT_TOUCH *) wire [15:0]gr21;
  (* DONT_TOUCH *) wire [15:0]gr22;
  (* DONT_TOUCH *) wire [15:0]gr23;
  (* DONT_TOUCH *) wire [15:0]gr24;
  (* DONT_TOUCH *) wire [15:0]gr25;
  (* DONT_TOUCH *) wire [15:0]gr26;
  (* DONT_TOUCH *) wire [15:0]gr27;
  wire gr2_bus1__0_19;
  wire gr2_bus1__0_7;
  wire gr3_bus1__0;
  wire gr3_bus1__0_14;
  wire gr3_bus1__0_8;
  wire gr4_bus1__0_15;
  wire gr4_bus1__0_20;
  wire gr4_bus1__0_9;
  wire gr5_bus1__0_10;
  wire gr5_bus1__0_16;
  wire gr6_bus1__0_11;
  wire gr6_bus1__0_17;
  wire gr7_bus1__0_12;
  wire gr7_bus1__0_4;
  wire grn27_n_26;
  wire grn27_n_27;
  wire grn27_n_28;
  wire grn27_n_35;
  wire grn27_n_36;
  wire grn27_n_45;
  wire grn27_n_48;
  wire grn27_n_49;
  wire grn27_n_51;
  wire grn27_n_52;
  wire grn27_n_54;
  wire grn27_n_60;
  wire grn27_n_66;
  wire grn27_n_68;
  wire grn27_n_69;
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
  wire \iv[0]_i_7 ;
  wire \iv[11]_i_2 ;
  wire \iv[11]_i_20 ;
  wire \iv[12]_i_18 ;
  wire \iv[12]_i_29 ;
  wire \iv[12]_i_8 ;
  wire \iv[13]_i_18_0 ;
  wire \iv[13]_i_18_n_0 ;
  wire \iv[13]_i_2 ;
  wire \iv[13]_i_20_n_0 ;
  wire \iv[13]_i_21_n_0 ;
  wire \iv[13]_i_22_0 ;
  wire \iv[13]_i_24_0 ;
  wire \iv[13]_i_24_n_0 ;
  wire \iv[13]_i_25 ;
  wire \iv[13]_i_26 ;
  wire \iv[13]_i_27 ;
  wire \iv[13]_i_29_0 ;
  wire \iv[13]_i_29_1 ;
  wire \iv[13]_i_29_2 ;
  wire \iv[13]_i_29_3 ;
  wire \iv[13]_i_29_4 ;
  wire \iv[13]_i_2_0 ;
  wire \iv[13]_i_2_1 ;
  wire \iv[13]_i_2_2 ;
  wire \iv[13]_i_31 ;
  wire \iv[13]_i_35 ;
  wire \iv[13]_i_8_0 ;
  wire \iv[13]_i_8_1 ;
  wire \iv[14]_i_14 ;
  wire \iv[14]_i_15 ;
  wire \iv[14]_i_24 ;
  wire \iv[14]_i_24_0 ;
  wire \iv[14]_i_24_1 ;
  wire \iv[14]_i_26 ;
  wire \iv[14]_i_30 ;
  wire \iv[14]_i_30_0 ;
  wire \iv[14]_i_38 ;
  wire \iv[14]_i_39 ;
  wire \iv[14]_i_39_0 ;
  wire \iv[14]_i_4 ;
  wire \iv[14]_i_40 ;
  wire \iv[14]_i_40_0 ;
  wire \iv[3]_i_6 ;
  wire \iv[5]_i_14_n_0 ;
  wire \iv[5]_i_19 ;
  wire \iv[5]_i_2 ;
  wire \iv[5]_i_20_n_0 ;
  wire \iv[5]_i_7_0 ;
  wire \iv[6]_i_11 ;
  wire \iv[6]_i_2 ;
  wire \iv[7]_i_17_n_0 ;
  wire \iv[7]_i_18_n_0 ;
  wire \iv[8]_i_18 ;
  wire \iv[8]_i_18_0 ;
  wire \iv[9]_i_19 ;
  wire \iv[9]_i_19_0 ;
  wire \iv[9]_i_19_1 ;
  wire \iv[9]_i_19_2 ;
  wire \iv[9]_i_19_3 ;
  wire \iv[9]_i_19_4 ;
  wire \iv[9]_i_19_5 ;
  wire \iv[9]_i_19_6 ;
  wire \iv[9]_i_19_7 ;
  wire \iv[9]_i_20_n_0 ;
  wire \iv[9]_i_23 ;
  wire \iv[9]_i_6 ;
  wire [12:0]out;
  wire \sr[4]_i_15 ;
  wire \sr[4]_i_24_n_0 ;
  wire \sr[4]_i_25 ;
  wire \sr[4]_i_27 ;
  wire \sr[6]_i_3 ;
  wire \sr[6]_i_8 ;
  wire \sr_reg[6] ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[6]_10 ;
  wire \sr_reg[6]_11 ;
  wire \sr_reg[6]_12 ;
  wire \sr_reg[6]_2 ;
  wire \sr_reg[6]_3 ;
  wire \sr_reg[6]_4 ;
  wire \sr_reg[6]_5 ;
  wire \sr_reg[6]_6 ;
  wire \sr_reg[6]_7 ;
  wire \sr_reg[6]_8 ;
  wire \sr_reg[6]_9 ;

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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[13]_INST_0_i_10 
       (.I0(gr01[13]),
        .I1(\badr[13]_INST_0_i_2_0 ),
        .I2(gr02[13]),
        .I3(\badr[13]_INST_0_i_2_1 ),
        .I4(\badr[13]_INST_0_i_2_2 ),
        .I5(\badr[13]_INST_0_i_2_3 ),
        .O(\badr[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[13]_INST_0_i_11 
       (.I0(gr07[13]),
        .I1(\badr[13]_INST_0_i_2_7 ),
        .I2(gr00[13]),
        .I3(\badr[13]_INST_0_i_2_8 ),
        .I4(out[1]),
        .I5(out[0]),
        .O(\badr[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[13]_INST_0_i_12 
       (.I0(gr05[13]),
        .I1(\badr[13]_INST_0_i_2_0 ),
        .I2(gr06[13]),
        .I3(\badr[13]_INST_0_i_2_6 ),
        .I4(\badr[13]_INST_0_i_2_2 ),
        .I5(\badr[13]_INST_0_i_2_3 ),
        .O(\badr[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[13]_INST_0_i_14 
       (.I0(gr25[13]),
        .I1(\badr[13]_INST_0_i_2_0 ),
        .I2(gr26[13]),
        .I3(\badr[13]_INST_0_i_2_6 ),
        .I4(\badr[13]_INST_0_i_2_2 ),
        .I5(\badr[13]_INST_0_i_3_0 ),
        .O(\badr[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[13]_INST_0_i_15 
       (.I0(gr21[13]),
        .I1(\badr[13]_INST_0_i_2_0 ),
        .I2(gr22[13]),
        .I3(\badr[13]_INST_0_i_2_1 ),
        .I4(\badr[13]_INST_0_i_2_2 ),
        .I5(\badr[13]_INST_0_i_3_0 ),
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
        .I4(gr4_bus1__0_20),
        .I5(\badr[13]_INST_0_i_15_n_0 ),
        .O(\badr[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \badr[13]_INST_0_i_8 
       (.I0(gr27[13]),
        .I1(\badr[13]_INST_0_i_2_7 ),
        .I2(gr20[13]),
        .I3(\badr[13]_INST_0_i_2_8 ),
        .I4(out[1]),
        .I5(out[0]),
        .O(\badr[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[13]_INST_0_i_9 
       (.I0(gr03[13]),
        .I1(\badr[13]_INST_0_i_2_4 ),
        .I2(gr04[13]),
        .I3(\badr[13]_INST_0_i_2_5 ),
        .I4(out[1]),
        .I5(out[0]),
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[14]_INST_0_i_10 
       (.I0(gr01[14]),
        .I1(\badr[13]_INST_0_i_2_0 ),
        .I2(gr02[14]),
        .I3(\badr[13]_INST_0_i_2_1 ),
        .I4(\badr[13]_INST_0_i_2_2 ),
        .I5(\badr[13]_INST_0_i_2_3 ),
        .O(\badr[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[14]_INST_0_i_11 
       (.I0(gr07[14]),
        .I1(\badr[13]_INST_0_i_2_7 ),
        .I2(gr00[14]),
        .I3(\badr[13]_INST_0_i_2_8 ),
        .I4(out[1]),
        .I5(out[0]),
        .O(\badr[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[14]_INST_0_i_12 
       (.I0(gr05[14]),
        .I1(\badr[13]_INST_0_i_2_0 ),
        .I2(gr06[14]),
        .I3(\badr[13]_INST_0_i_2_6 ),
        .I4(\badr[13]_INST_0_i_2_2 ),
        .I5(\badr[13]_INST_0_i_2_3 ),
        .O(\badr[14]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[14]_INST_0_i_14 
       (.I0(gr25[14]),
        .I1(\badr[13]_INST_0_i_2_0 ),
        .I2(gr26[14]),
        .I3(\badr[13]_INST_0_i_2_6 ),
        .I4(\badr[13]_INST_0_i_2_2 ),
        .I5(\badr[13]_INST_0_i_3_0 ),
        .O(\badr[14]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[14]_INST_0_i_15 
       (.I0(gr21[14]),
        .I1(\badr[13]_INST_0_i_2_0 ),
        .I2(gr22[14]),
        .I3(\badr[13]_INST_0_i_2_1 ),
        .I4(\badr[13]_INST_0_i_2_2 ),
        .I5(\badr[13]_INST_0_i_3_0 ),
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
        .I2(gr3_bus1__0),
        .I3(gr24[14]),
        .I4(gr4_bus1__0_20),
        .I5(\badr[14]_INST_0_i_15_n_0 ),
        .O(\badr[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \badr[14]_INST_0_i_8 
       (.I0(gr27[14]),
        .I1(\badr[13]_INST_0_i_2_7 ),
        .I2(gr20[14]),
        .I3(\badr[13]_INST_0_i_2_8 ),
        .I4(out[1]),
        .I5(out[0]),
        .O(\badr[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[14]_INST_0_i_9 
       (.I0(gr03[14]),
        .I1(\badr[13]_INST_0_i_2_4 ),
        .I2(gr04[14]),
        .I3(\badr[13]_INST_0_i_2_5 ),
        .I4(out[1]),
        .I5(out[0]),
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
        .O(\grn_reg[15] ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[15]_INST_0_i_10 
       (.I0(gr01[15]),
        .I1(\badr[13]_INST_0_i_2_0 ),
        .I2(gr02[15]),
        .I3(\badr[13]_INST_0_i_2_1 ),
        .I4(\badr[13]_INST_0_i_2_2 ),
        .I5(\badr[13]_INST_0_i_2_3 ),
        .O(\badr[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[15]_INST_0_i_11 
       (.I0(gr07[15]),
        .I1(\badr[13]_INST_0_i_2_7 ),
        .I2(gr00[15]),
        .I3(\badr[13]_INST_0_i_2_8 ),
        .I4(out[1]),
        .I5(out[0]),
        .O(\badr[15]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[15]_INST_0_i_12 
       (.I0(gr05[15]),
        .I1(\badr[13]_INST_0_i_2_0 ),
        .I2(gr06[15]),
        .I3(\badr[13]_INST_0_i_2_6 ),
        .I4(\badr[13]_INST_0_i_2_2 ),
        .I5(\badr[13]_INST_0_i_2_3 ),
        .O(\badr[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[15]_INST_0_i_14 
       (.I0(gr25[15]),
        .I1(\badr[13]_INST_0_i_2_0 ),
        .I2(gr26[15]),
        .I3(\badr[13]_INST_0_i_2_6 ),
        .I4(\badr[13]_INST_0_i_2_2 ),
        .I5(\badr[13]_INST_0_i_3_0 ),
        .O(\badr[15]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[15]_INST_0_i_17 
       (.I0(gr21[15]),
        .I1(\badr[13]_INST_0_i_2_0 ),
        .I2(gr22[15]),
        .I3(\badr[13]_INST_0_i_2_1 ),
        .I4(\badr[13]_INST_0_i_2_2 ),
        .I5(\badr[13]_INST_0_i_3_0 ),
        .O(\badr[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_11_n_0 ),
        .I4(\badr[15]_INST_0_i_12_n_0 ),
        .I5(\badr[15]_INST_0_i_1_3 ),
        .O(\badr[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[15]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_14_n_0 ),
        .I1(gr23[15]),
        .I2(gr3_bus1__0),
        .I3(gr24[15]),
        .I4(gr4_bus1__0_20),
        .I5(\badr[15]_INST_0_i_17_n_0 ),
        .O(\badr[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \badr[15]_INST_0_i_8 
       (.I0(gr27[15]),
        .I1(\badr[13]_INST_0_i_2_7 ),
        .I2(gr20[15]),
        .I3(\badr[13]_INST_0_i_2_8 ),
        .I4(out[1]),
        .I5(out[0]),
        .O(\badr[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[15]_INST_0_i_9 
       (.I0(gr03[15]),
        .I1(\badr[13]_INST_0_i_2_4 ),
        .I2(gr04[15]),
        .I3(\badr[13]_INST_0_i_2_5 ),
        .I4(out[1]),
        .I5(out[0]),
        .O(\badr[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[10]_INST_0_i_17 
       (.I0(\bdatw[10]_INST_0_i_34_n_0 ),
        .I1(gr23[10]),
        .I2(gr3_bus1__0_14),
        .I3(gr24[10]),
        .I4(gr4_bus1__0_15),
        .I5(\bdatw[10]_INST_0_i_35_n_0 ),
        .O(\bdatw[10]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[10]_INST_0_i_18 
       (.I0(out[7]),
        .I1(\bdatw[13]_INST_0_i_10_0 ),
        .I2(\bdatw[10]_INST_0_i_36_n_0 ),
        .I3(\bdatw[10]_INST_0_i_37_n_0 ),
        .I4(\bdatw[10]_INST_0_i_38_n_0 ),
        .I5(\bdatw[10]_INST_0_i_39_n_0 ),
        .O(\bdatw[10]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_21 
       (.I0(gr21[2]),
        .I1(gr1_bus1__0_18),
        .I2(gr22[2]),
        .I3(gr2_bus1__0_19),
        .O(\grn_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_26 
       (.I0(gr27[2]),
        .I1(gr7_bus1__0_4),
        .I2(gr20[2]),
        .I3(gr0_bus1__0_5),
        .O(\grn_reg[2]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_34 
       (.I0(gr25[10]),
        .I1(gr5_bus1__0_16),
        .I2(gr26[10]),
        .I3(gr6_bus1__0_17),
        .O(\bdatw[10]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_35 
       (.I0(gr21[10]),
        .I1(gr1_bus1__0_18),
        .I2(gr22[10]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[10]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_36 
       (.I0(gr05[10]),
        .I1(gr5_bus1__0_10),
        .I2(gr06[10]),
        .I3(gr6_bus1__0_11),
        .O(\bdatw[10]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_37 
       (.I0(gr07[10]),
        .I1(gr7_bus1__0_12),
        .I2(gr00[10]),
        .I3(gr0_bus1__0_13),
        .O(\bdatw[10]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_38 
       (.I0(gr01[10]),
        .I1(gr1_bus1__0_6),
        .I2(gr02[10]),
        .I3(gr2_bus1__0_7),
        .O(\bdatw[10]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_39 
       (.I0(gr03[10]),
        .I1(gr3_bus1__0_8),
        .I2(gr04[10]),
        .I3(gr4_bus1__0_9),
        .O(\bdatw[10]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[10]_INST_0_i_5 
       (.I0(\bdatw[10]_INST_0_i_17_n_0 ),
        .I1(\bdatw[10]_INST_0_i_18_n_0 ),
        .I2(gr27[10]),
        .I3(gr7_bus1__0_4),
        .I4(gr20[10]),
        .I5(gr0_bus1__0_5),
        .O(\grn_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[11]_INST_0_i_16 
       (.I0(\bdatw[11]_INST_0_i_33_n_0 ),
        .I1(gr23[11]),
        .I2(gr3_bus1__0_14),
        .I3(gr24[11]),
        .I4(gr4_bus1__0_15),
        .I5(\bdatw[11]_INST_0_i_34_n_0 ),
        .O(\bdatw[11]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[11]_INST_0_i_17 
       (.I0(out[8]),
        .I1(\bdatw[13]_INST_0_i_10_0 ),
        .I2(\bdatw[11]_INST_0_i_35_n_0 ),
        .I3(\bdatw[11]_INST_0_i_36_n_0 ),
        .I4(\bdatw[11]_INST_0_i_37_n_0 ),
        .I5(\bdatw[11]_INST_0_i_38_n_0 ),
        .O(\bdatw[11]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_33 
       (.I0(gr25[11]),
        .I1(gr5_bus1__0_16),
        .I2(gr26[11]),
        .I3(gr6_bus1__0_17),
        .O(\bdatw[11]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_34 
       (.I0(gr21[11]),
        .I1(gr1_bus1__0_18),
        .I2(gr22[11]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[11]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_35 
       (.I0(gr05[11]),
        .I1(gr5_bus1__0_10),
        .I2(gr06[11]),
        .I3(gr6_bus1__0_11),
        .O(\bdatw[11]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_36 
       (.I0(gr07[11]),
        .I1(gr7_bus1__0_12),
        .I2(gr00[11]),
        .I3(gr0_bus1__0_13),
        .O(\bdatw[11]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_37 
       (.I0(gr01[11]),
        .I1(gr1_bus1__0_6),
        .I2(gr02[11]),
        .I3(gr2_bus1__0_7),
        .O(\bdatw[11]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_38 
       (.I0(gr03[11]),
        .I1(gr3_bus1__0_8),
        .I2(gr04[11]),
        .I3(gr4_bus1__0_9),
        .O(\bdatw[11]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[11]_INST_0_i_5 
       (.I0(\bdatw[11]_INST_0_i_16_n_0 ),
        .I1(\bdatw[11]_INST_0_i_17_n_0 ),
        .I2(gr27[11]),
        .I3(gr7_bus1__0_4),
        .I4(gr20[11]),
        .I5(gr0_bus1__0_5),
        .O(\grn_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[12]_INST_0_i_16 
       (.I0(\bdatw[12]_INST_0_i_33_n_0 ),
        .I1(gr23[12]),
        .I2(gr3_bus1__0_14),
        .I3(gr24[12]),
        .I4(gr4_bus1__0_15),
        .I5(\bdatw[12]_INST_0_i_34_n_0 ),
        .O(\bdatw[12]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[12]_INST_0_i_17 
       (.I0(out[9]),
        .I1(\bdatw[13]_INST_0_i_10_0 ),
        .I2(\bdatw[12]_INST_0_i_35_n_0 ),
        .I3(\bdatw[12]_INST_0_i_36_n_0 ),
        .I4(\bdatw[12]_INST_0_i_37_n_0 ),
        .I5(\bdatw[12]_INST_0_i_38_n_0 ),
        .O(\bdatw[12]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_33 
       (.I0(gr25[12]),
        .I1(gr5_bus1__0_16),
        .I2(gr26[12]),
        .I3(gr6_bus1__0_17),
        .O(\bdatw[12]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_34 
       (.I0(gr21[12]),
        .I1(gr1_bus1__0_18),
        .I2(gr22[12]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[12]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_35 
       (.I0(gr05[12]),
        .I1(gr5_bus1__0_10),
        .I2(gr06[12]),
        .I3(gr6_bus1__0_11),
        .O(\bdatw[12]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_36 
       (.I0(gr07[12]),
        .I1(gr7_bus1__0_12),
        .I2(gr00[12]),
        .I3(gr0_bus1__0_13),
        .O(\bdatw[12]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_37 
       (.I0(gr01[12]),
        .I1(gr1_bus1__0_6),
        .I2(gr02[12]),
        .I3(gr2_bus1__0_7),
        .O(\bdatw[12]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_38 
       (.I0(gr03[12]),
        .I1(gr3_bus1__0_8),
        .I2(gr04[12]),
        .I3(gr4_bus1__0_9),
        .O(\bdatw[12]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[12]_INST_0_i_5 
       (.I0(\bdatw[12]_INST_0_i_16_n_0 ),
        .I1(\bdatw[12]_INST_0_i_17_n_0 ),
        .I2(gr27[12]),
        .I3(gr7_bus1__0_4),
        .I4(gr20[12]),
        .I5(gr0_bus1__0_5),
        .O(\grn_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_10 
       (.I0(\bdatw[13]_INST_0_i_20_n_0 ),
        .I1(\bdatw[13]_INST_0_i_21_n_0 ),
        .I2(gr27[5]),
        .I3(gr7_bus1__0_4),
        .I4(gr20[5]),
        .I5(gr0_bus1__0_5),
        .O(\grn_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[13]_INST_0_i_16 
       (.I0(\bdatw[13]_INST_0_i_25_n_0 ),
        .I1(gr23[13]),
        .I2(gr3_bus1__0_14),
        .I3(gr24[13]),
        .I4(gr4_bus1__0_15),
        .I5(\bdatw[13]_INST_0_i_26_n_0 ),
        .O(\bdatw[13]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_17 
       (.I0(out[10]),
        .I1(\bdatw[13]_INST_0_i_10_0 ),
        .I2(\bdatw[13]_INST_0_i_27_n_0 ),
        .I3(\bdatw[13]_INST_0_i_28_n_0 ),
        .I4(\bdatw[13]_INST_0_i_29_n_0 ),
        .I5(\bdatw[13]_INST_0_i_30_n_0 ),
        .O(\bdatw[13]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[13]_INST_0_i_20 
       (.I0(\bdatw[13]_INST_0_i_36_n_0 ),
        .I1(gr23[5]),
        .I2(gr3_bus1__0_14),
        .I3(gr24[5]),
        .I4(gr4_bus1__0_15),
        .I5(\bdatw[13]_INST_0_i_37_n_0 ),
        .O(\bdatw[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_21 
       (.I0(out[2]),
        .I1(\bdatw[13]_INST_0_i_10_0 ),
        .I2(\bdatw[13]_INST_0_i_38_n_0 ),
        .I3(\bdatw[13]_INST_0_i_39_n_0 ),
        .I4(\bdatw[13]_INST_0_i_40_n_0 ),
        .I5(\bdatw[13]_INST_0_i_41_n_0 ),
        .O(\bdatw[13]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_25 
       (.I0(gr25[13]),
        .I1(gr5_bus1__0_16),
        .I2(gr26[13]),
        .I3(gr6_bus1__0_17),
        .O(\bdatw[13]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_26 
       (.I0(gr21[13]),
        .I1(gr1_bus1__0_18),
        .I2(gr22[13]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[13]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_27 
       (.I0(gr05[13]),
        .I1(gr5_bus1__0_10),
        .I2(gr06[13]),
        .I3(gr6_bus1__0_11),
        .O(\bdatw[13]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_28 
       (.I0(gr07[13]),
        .I1(gr7_bus1__0_12),
        .I2(gr00[13]),
        .I3(gr0_bus1__0_13),
        .O(\bdatw[13]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_29 
       (.I0(gr01[13]),
        .I1(gr1_bus1__0_6),
        .I2(gr02[13]),
        .I3(gr2_bus1__0_7),
        .O(\bdatw[13]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_30 
       (.I0(gr03[13]),
        .I1(gr3_bus1__0_8),
        .I2(gr04[13]),
        .I3(gr4_bus1__0_9),
        .O(\bdatw[13]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_36 
       (.I0(gr25[5]),
        .I1(gr5_bus1__0_16),
        .I2(gr26[5]),
        .I3(gr6_bus1__0_17),
        .O(\bdatw[13]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_37 
       (.I0(gr21[5]),
        .I1(gr1_bus1__0_18),
        .I2(gr22[5]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[13]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_38 
       (.I0(gr05[5]),
        .I1(gr5_bus1__0_10),
        .I2(gr06[5]),
        .I3(gr6_bus1__0_11),
        .O(\bdatw[13]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_39 
       (.I0(gr07[5]),
        .I1(gr7_bus1__0_12),
        .I2(gr00[5]),
        .I3(gr0_bus1__0_13),
        .O(\bdatw[13]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_40 
       (.I0(gr01[5]),
        .I1(gr1_bus1__0_6),
        .I2(gr02[5]),
        .I3(gr2_bus1__0_7),
        .O(\bdatw[13]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_41 
       (.I0(gr03[5]),
        .I1(gr3_bus1__0_8),
        .I2(gr04[5]),
        .I3(gr4_bus1__0_9),
        .O(\bdatw[13]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_5 
       (.I0(\bdatw[13]_INST_0_i_16_n_0 ),
        .I1(\bdatw[13]_INST_0_i_17_n_0 ),
        .I2(gr27[13]),
        .I3(gr7_bus1__0_4),
        .I4(gr20[13]),
        .I5(gr0_bus1__0_5),
        .O(\grn_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[14]_INST_0_i_16 
       (.I0(\bdatw[14]_INST_0_i_25_n_0 ),
        .I1(gr23[14]),
        .I2(gr3_bus1__0_14),
        .I3(gr24[14]),
        .I4(gr4_bus1__0_15),
        .I5(\bdatw[14]_INST_0_i_26_n_0 ),
        .O(\bdatw[14]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_17 
       (.I0(out[11]),
        .I1(\bdatw[13]_INST_0_i_10_0 ),
        .I2(\bdatw[14]_INST_0_i_27_n_0 ),
        .I3(\bdatw[14]_INST_0_i_28_n_0 ),
        .I4(\bdatw[14]_INST_0_i_29_n_0 ),
        .I5(\bdatw[14]_INST_0_i_30_n_0 ),
        .O(\bdatw[14]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_25 
       (.I0(gr25[14]),
        .I1(gr5_bus1__0_16),
        .I2(gr26[14]),
        .I3(gr6_bus1__0_17),
        .O(\bdatw[14]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_26 
       (.I0(gr21[14]),
        .I1(gr1_bus1__0_18),
        .I2(gr22[14]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[14]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_27 
       (.I0(gr05[14]),
        .I1(gr5_bus1__0_10),
        .I2(gr06[14]),
        .I3(gr6_bus1__0_11),
        .O(\bdatw[14]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_28 
       (.I0(gr07[14]),
        .I1(gr7_bus1__0_12),
        .I2(gr00[14]),
        .I3(gr0_bus1__0_13),
        .O(\bdatw[14]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_29 
       (.I0(gr01[14]),
        .I1(gr1_bus1__0_6),
        .I2(gr02[14]),
        .I3(gr2_bus1__0_7),
        .O(\bdatw[14]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_30 
       (.I0(gr03[14]),
        .I1(gr3_bus1__0_8),
        .I2(gr04[14]),
        .I3(gr4_bus1__0_9),
        .O(\bdatw[14]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_5 
       (.I0(\bdatw[14]_INST_0_i_16_n_0 ),
        .I1(\bdatw[14]_INST_0_i_17_n_0 ),
        .I2(gr27[14]),
        .I3(gr7_bus1__0_4),
        .I4(gr20[14]),
        .I5(gr0_bus1__0_5),
        .O(\grn_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_36_n_0 ),
        .I1(\bdatw[15]_INST_0_i_37_n_0 ),
        .I2(gr27[7]),
        .I3(gr7_bus1__0_4),
        .I4(gr20[7]),
        .I5(gr0_bus1__0_5),
        .O(\grn_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[15]_INST_0_i_20 
       (.I0(\bdatw[15]_INST_0_i_52_n_0 ),
        .I1(gr23[15]),
        .I2(gr3_bus1__0_14),
        .I3(gr24[15]),
        .I4(gr4_bus1__0_15),
        .I5(\bdatw[15]_INST_0_i_55_n_0 ),
        .O(\bdatw[15]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_21 
       (.I0(out[12]),
        .I1(\bdatw[13]_INST_0_i_10_0 ),
        .I2(\bdatw[15]_INST_0_i_57_n_0 ),
        .I3(\bdatw[15]_INST_0_i_58_n_0 ),
        .I4(\bdatw[15]_INST_0_i_59_n_0 ),
        .I5(\bdatw[15]_INST_0_i_60_n_0 ),
        .O(\bdatw[15]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[15]_INST_0_i_36 
       (.I0(\bdatw[15]_INST_0_i_83_n_0 ),
        .I1(gr23[7]),
        .I2(gr3_bus1__0_14),
        .I3(gr24[7]),
        .I4(gr4_bus1__0_15),
        .I5(\bdatw[15]_INST_0_i_84_n_0 ),
        .O(\bdatw[15]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_37 
       (.I0(out[4]),
        .I1(\bdatw[13]_INST_0_i_10_0 ),
        .I2(\bdatw[15]_INST_0_i_85_n_0 ),
        .I3(\bdatw[15]_INST_0_i_86_n_0 ),
        .I4(\bdatw[15]_INST_0_i_87_n_0 ),
        .I5(\bdatw[15]_INST_0_i_88_n_0 ),
        .O(\bdatw[15]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_21_n_0 ),
        .I2(gr27[15]),
        .I3(gr7_bus1__0_4),
        .I4(gr20[15]),
        .I5(gr0_bus1__0_5),
        .O(\grn_reg[15]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_52 
       (.I0(gr25[15]),
        .I1(gr5_bus1__0_16),
        .I2(gr26[15]),
        .I3(gr6_bus1__0_17),
        .O(\bdatw[15]_INST_0_i_52_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_55 
       (.I0(gr21[15]),
        .I1(gr1_bus1__0_18),
        .I2(gr22[15]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[15]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_57 
       (.I0(gr05[15]),
        .I1(gr5_bus1__0_10),
        .I2(gr06[15]),
        .I3(gr6_bus1__0_11),
        .O(\bdatw[15]_INST_0_i_57_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_58 
       (.I0(gr07[15]),
        .I1(gr7_bus1__0_12),
        .I2(gr00[15]),
        .I3(gr0_bus1__0_13),
        .O(\bdatw[15]_INST_0_i_58_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_59 
       (.I0(gr01[15]),
        .I1(gr1_bus1__0_6),
        .I2(gr02[15]),
        .I3(gr2_bus1__0_7),
        .O(\bdatw[15]_INST_0_i_59_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_60 
       (.I0(gr03[15]),
        .I1(gr3_bus1__0_8),
        .I2(gr04[15]),
        .I3(gr4_bus1__0_9),
        .O(\bdatw[15]_INST_0_i_60_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_83 
       (.I0(gr25[7]),
        .I1(gr5_bus1__0_16),
        .I2(gr26[7]),
        .I3(gr6_bus1__0_17),
        .O(\bdatw[15]_INST_0_i_83_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_84 
       (.I0(gr21[7]),
        .I1(gr1_bus1__0_18),
        .I2(gr22[7]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[15]_INST_0_i_84_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_85 
       (.I0(gr05[7]),
        .I1(gr5_bus1__0_10),
        .I2(gr06[7]),
        .I3(gr6_bus1__0_11),
        .O(\bdatw[15]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_86 
       (.I0(gr07[7]),
        .I1(gr7_bus1__0_12),
        .I2(gr00[7]),
        .I3(gr0_bus1__0_13),
        .O(\bdatw[15]_INST_0_i_86_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_87 
       (.I0(gr01[7]),
        .I1(gr1_bus1__0_6),
        .I2(gr02[7]),
        .I3(gr2_bus1__0_7),
        .O(\bdatw[15]_INST_0_i_87_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_88 
       (.I0(gr03[7]),
        .I1(gr3_bus1__0_8),
        .I2(gr04[7]),
        .I3(gr4_bus1__0_9),
        .O(\bdatw[15]_INST_0_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[8]_INST_0_i_16 
       (.I0(\bdatw[8]_INST_0_i_32_n_0 ),
        .I1(gr23[8]),
        .I2(gr3_bus1__0_14),
        .I3(gr24[8]),
        .I4(gr4_bus1__0_15),
        .I5(\bdatw[8]_INST_0_i_33_n_0 ),
        .O(\bdatw[8]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[8]_INST_0_i_17 
       (.I0(out[5]),
        .I1(\bdatw[13]_INST_0_i_10_0 ),
        .I2(\bdatw[8]_INST_0_i_34_n_0 ),
        .I3(\bdatw[8]_INST_0_i_35_n_0 ),
        .I4(\bdatw[8]_INST_0_i_36_n_0 ),
        .I5(\bdatw[8]_INST_0_i_37_n_0 ),
        .O(\bdatw[8]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_32 
       (.I0(gr25[8]),
        .I1(gr5_bus1__0_16),
        .I2(gr26[8]),
        .I3(gr6_bus1__0_17),
        .O(\bdatw[8]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_33 
       (.I0(gr21[8]),
        .I1(gr1_bus1__0_18),
        .I2(gr22[8]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[8]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_34 
       (.I0(gr05[8]),
        .I1(gr5_bus1__0_10),
        .I2(gr06[8]),
        .I3(gr6_bus1__0_11),
        .O(\bdatw[8]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_35 
       (.I0(gr07[8]),
        .I1(gr7_bus1__0_12),
        .I2(gr00[8]),
        .I3(gr0_bus1__0_13),
        .O(\bdatw[8]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_36 
       (.I0(gr01[8]),
        .I1(gr1_bus1__0_6),
        .I2(gr02[8]),
        .I3(gr2_bus1__0_7),
        .O(\bdatw[8]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_37 
       (.I0(gr03[8]),
        .I1(gr3_bus1__0_8),
        .I2(gr04[8]),
        .I3(gr4_bus1__0_9),
        .O(\bdatw[8]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[8]_INST_0_i_5 
       (.I0(\bdatw[8]_INST_0_i_16_n_0 ),
        .I1(\bdatw[8]_INST_0_i_17_n_0 ),
        .I2(gr27[8]),
        .I3(gr7_bus1__0_4),
        .I4(gr20[8]),
        .I5(gr0_bus1__0_5),
        .O(\grn_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[9]_INST_0_i_16 
       (.I0(\bdatw[9]_INST_0_i_33_n_0 ),
        .I1(gr23[9]),
        .I2(gr3_bus1__0_14),
        .I3(gr24[9]),
        .I4(gr4_bus1__0_15),
        .I5(\bdatw[9]_INST_0_i_34_n_0 ),
        .O(\bdatw[9]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[9]_INST_0_i_17 
       (.I0(out[6]),
        .I1(\bdatw[13]_INST_0_i_10_0 ),
        .I2(\bdatw[9]_INST_0_i_35_n_0 ),
        .I3(\bdatw[9]_INST_0_i_36_n_0 ),
        .I4(\bdatw[9]_INST_0_i_37_n_0 ),
        .I5(\bdatw[9]_INST_0_i_38_n_0 ),
        .O(\bdatw[9]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_33 
       (.I0(gr25[9]),
        .I1(gr5_bus1__0_16),
        .I2(gr26[9]),
        .I3(gr6_bus1__0_17),
        .O(\bdatw[9]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_34 
       (.I0(gr21[9]),
        .I1(gr1_bus1__0_18),
        .I2(gr22[9]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[9]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_35 
       (.I0(gr05[9]),
        .I1(gr5_bus1__0_10),
        .I2(gr06[9]),
        .I3(gr6_bus1__0_11),
        .O(\bdatw[9]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_36 
       (.I0(gr07[9]),
        .I1(gr7_bus1__0_12),
        .I2(gr00[9]),
        .I3(gr0_bus1__0_13),
        .O(\bdatw[9]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_37 
       (.I0(gr01[9]),
        .I1(gr1_bus1__0_6),
        .I2(gr02[9]),
        .I3(gr2_bus1__0_7),
        .O(\bdatw[9]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_38 
       (.I0(gr03[9]),
        .I1(gr3_bus1__0_8),
        .I2(gr04[9]),
        .I3(gr4_bus1__0_9),
        .O(\bdatw[9]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[9]_INST_0_i_5 
       (.I0(\bdatw[9]_INST_0_i_16_n_0 ),
        .I1(\bdatw[9]_INST_0_i_17_n_0 ),
        .I2(gr27[9]),
        .I3(gr7_bus1__0_4),
        .I4(gr20[9]),
        .I5(gr0_bus1__0_5),
        .O(\grn_reg[9]_0 ));
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
        .\abus_o[0] (\abus_o[0] ),
        .\abus_o[0]_0 (\abus_o[0]_0 ),
        .\abus_o[0]_1 (\abus_o[0]_1 ),
        .\abus_o[0]_2 (\abus_o[0]_2 ),
        .\abus_o[10] (\abus_o[10] ),
        .\abus_o[10]_0 (\abus_o[10]_0 ),
        .\abus_o[10]_1 (\abus_o[10]_1 ),
        .\abus_o[10]_2 (\abus_o[10]_2 ),
        .\abus_o[11] (\abus_o[11] ),
        .\abus_o[11]_0 (\abus_o[11]_0 ),
        .\abus_o[11]_1 (\abus_o[11]_1 ),
        .\abus_o[11]_2 (\abus_o[11]_2 ),
        .\abus_o[12] (\abus_o[12] ),
        .\abus_o[12]_0 (\abus_o[12]_0 ),
        .\abus_o[12]_1 (\abus_o[12]_1 ),
        .\abus_o[12]_2 (\abus_o[12]_2 ),
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
        .\abus_o[4] (\abus_o[4] ),
        .\abus_o[4]_0 (\abus_o[4]_0 ),
        .\abus_o[4]_1 (\abus_o[4]_1 ),
        .\abus_o[4]_2 (\abus_o[4]_2 ),
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
        .\badr[0]_INST_0_i_1_0 (grn27_n_54),
        .\badr[0]_INST_0_i_1_1 (\badr[0]_INST_0_i_1_0 ),
        .\badr[10]_INST_0_i_1_0 (grn27_n_45),
        .\badr[10]_INST_0_i_1_1 (\badr[10]_INST_0_i_1 ),
        .\badr[11]_INST_0_i_1_0 (grn27_n_26),
        .\badr[11]_INST_0_i_1_1 (grn27_n_69),
        .\badr[11]_INST_0_i_1_2 (\badr[11]_INST_0_i_1 ),
        .\badr[12]_INST_0_i_1_0 (\badr[12]_INST_0_i_1 ),
        .\badr[12]_INST_0_i_1_1 (gr23[12:0]),
        .\badr[12]_INST_0_i_1_2 (gr24[12:0]),
        .\badr[12]_INST_0_i_2_0 (gr20[12:0]),
        .\badr[12]_INST_0_i_2_1 (gr01[12:0]),
        .\badr[12]_INST_0_i_2_10 (\badr[13]_INST_0_i_2_4 ),
        .\badr[12]_INST_0_i_2_11 (\badr[13]_INST_0_i_2_5 ),
        .\badr[12]_INST_0_i_2_12 (\badr[13]_INST_0_i_2_7 ),
        .\badr[12]_INST_0_i_2_13 (\badr[13]_INST_0_i_2_8 ),
        .\badr[12]_INST_0_i_2_2 (gr02[12:0]),
        .\badr[12]_INST_0_i_2_3 (gr03[12:0]),
        .\badr[12]_INST_0_i_2_4 (gr04[12:0]),
        .\badr[12]_INST_0_i_2_5 (gr05[12:0]),
        .\badr[12]_INST_0_i_2_6 (gr06[12:0]),
        .\badr[12]_INST_0_i_2_7 (gr07[12:0]),
        .\badr[12]_INST_0_i_2_8 (gr00[12:0]),
        .\badr[12]_INST_0_i_2_9 (\badr[13]_INST_0_i_2_3 ),
        .\badr[12]_INST_0_i_3_0 (\badr[13]_INST_0_i_2_0 ),
        .\badr[12]_INST_0_i_3_1 (\badr[13]_INST_0_i_2_1 ),
        .\badr[12]_INST_0_i_3_2 (\badr[13]_INST_0_i_2_2 ),
        .\badr[12]_INST_0_i_3_3 (\badr[13]_INST_0_i_2_6 ),
        .\badr[12]_INST_0_i_3_4 (gr25[12:0]),
        .\badr[12]_INST_0_i_3_5 (gr26[12:0]),
        .\badr[12]_INST_0_i_3_6 (gr21[12:0]),
        .\badr[12]_INST_0_i_3_7 (gr22[12:0]),
        .\badr[12]_INST_0_i_3_8 (\badr[13]_INST_0_i_3_0 ),
        .\badr[13]_INST_0_i_1 (grn27_n_60),
        .\badr[15]_INST_0_i_1 (\badr[15]_INST_0_i_1_0 ),
        .\badr[15]_INST_0_i_1_0 (\badr[15]_INST_0_i_1_1 ),
        .\badr[1]_INST_0_i_1_0 (\badr[1]_INST_0_i_1 ),
        .\badr[1]_INST_0_i_1_1 (\badr[1]_INST_0_i_1_0 ),
        .\badr[2]_INST_0_i_1_0 (grn27_n_52),
        .\badr[2]_INST_0_i_1_1 (\badr[2]_INST_0_i_1 ),
        .\badr[2]_INST_0_i_1_2 (\badr[2]_INST_0_i_1_0 ),
        .\badr[3]_INST_0_i_1_0 (\badr[3]_INST_0_i_1_0 ),
        .\badr[4]_INST_0_i_1_0 (grn27_n_51),
        .\badr[4]_INST_0_i_1_1 (\badr[4]_INST_0_i_1 ),
        .\badr[4]_INST_0_i_1_2 (\badr[4]_INST_0_i_1_0 ),
        .\badr[5]_INST_0_i_1_0 (grn27_n_35),
        .\badr[5]_INST_0_i_1_1 (\badr[5]_INST_0_i_1 ),
        .\badr[6]_INST_0_i_1_0 (grn27_n_49),
        .\badr[6]_INST_0_i_1_1 (\badr[6]_INST_0_i_1 ),
        .\badr[7]_INST_0_i_1_0 (grn27_n_36),
        .\badr[7]_INST_0_i_1_1 (\badr[7]_INST_0_i_1 ),
        .\badr[8]_INST_0_i_1_0 (grn27_n_48),
        .\badr[8]_INST_0_i_1_1 (grn27_n_66),
        .\badr[8]_INST_0_i_1_2 (\badr[8]_INST_0_i_1 ),
        .\badr[9]_INST_0_i_1_0 (grn27_n_27),
        .\badr[9]_INST_0_i_1_1 (grn27_n_68),
        .\badr[9]_INST_0_i_1_2 (\badr[9]_INST_0_i_1 ),
        .\bdatw[14]_INST_0_i_11_0 (\bdatw[13]_INST_0_i_10_0 ),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2 ),
        .\bdatw[8]_INST_0_i_2_0 (\bdatw[8]_INST_0_i_2_1 ),
        .\bdatw[8]_INST_0_i_2_1 (\bdatw[8]_INST_0_i_2_2 ),
        .\bdatw[8]_INST_0_i_2_2 (\bdatw[8]_INST_0_i_2_4 ),
        .\bdatw[8]_INST_0_i_2_3 (\bdatw[8]_INST_0_i_2_5 ),
        .\bdatw[8]_INST_0_i_2_4 (\bdatw[8]_INST_0_i_2_0 ),
        .\bdatw[8]_INST_0_i_2_5 (\bdatw[8]_INST_0_i_2_8 ),
        .clk(clk),
        .gr0_bus1__0_13(gr0_bus1__0_13),
        .gr0_bus1__0_5(gr0_bus1__0_5),
        .gr1_bus1__0_18(gr1_bus1__0_18),
        .gr1_bus1__0_6(gr1_bus1__0_6),
        .gr2_bus1__0_19(gr2_bus1__0_19),
        .gr2_bus1__0_7(gr2_bus1__0_7),
        .gr3_bus1__0(gr3_bus1__0),
        .gr3_bus1__0_14(gr3_bus1__0_14),
        .gr3_bus1__0_8(gr3_bus1__0_8),
        .gr4_bus1__0_15(gr4_bus1__0_15),
        .gr4_bus1__0_20(gr4_bus1__0_20),
        .gr4_bus1__0_9(gr4_bus1__0_9),
        .gr5_bus1__0_10(gr5_bus1__0_10),
        .gr5_bus1__0_16(gr5_bus1__0_16),
        .gr6_bus1__0_11(gr6_bus1__0_11),
        .gr6_bus1__0_17(gr6_bus1__0_17),
        .gr7_bus1__0_12(gr7_bus1__0_12),
        .gr7_bus1__0_4(gr7_bus1__0_4),
        .\grn_reg[0]_0 (\grn_reg[0] ),
        .\grn_reg[0]_1 (\grn_reg[0]_0 ),
        .\grn_reg[0]_2 (\grn_reg[0]_1 ),
        .\grn_reg[10]_0 (\grn_reg[10] ),
        .\grn_reg[11]_0 (\grn_reg[11] ),
        .\grn_reg[12]_0 (\grn_reg[12] ),
        .\grn_reg[15]_0 (\grn_reg[15]_17 ),
        .\grn_reg[15]_1 (\grn_reg[15]_2 ),
        .\grn_reg[1]_0 (\grn_reg[1] ),
        .\grn_reg[1]_1 (\grn_reg[1]_0 ),
        .\grn_reg[1]_2 (\grn_reg[1]_1 ),
        .\grn_reg[2]_0 (\grn_reg[2] ),
        .\grn_reg[3]_0 (\grn_reg[3] ),
        .\grn_reg[3]_1 (\grn_reg[3]_0 ),
        .\grn_reg[3]_2 (\grn_reg[3]_1 ),
        .\grn_reg[4]_0 (\grn_reg[4]_11 ),
        .\grn_reg[4]_1 (\grn_reg[4]_12 ),
        .\grn_reg[4]_2 (\grn_reg[4]_13 ),
        .\grn_reg[5]_0 (\grn_reg[5] ),
        .\grn_reg[6]_0 (\grn_reg[6] ),
        .\grn_reg[6]_1 (\grn_reg[6]_0 ),
        .\grn_reg[7]_0 (\grn_reg[7] ),
        .\grn_reg[8]_0 (\grn_reg[8] ),
        .\grn_reg[9]_0 (\grn_reg[9] ),
        .\iv[10]_i_12 ({out[3],out[1:0]}),
        .\iv[10]_i_12_0 (\iv[13]_i_8_1 ),
        .\iv[10]_i_12_1 (\sr[4]_i_27 ),
        .\iv[11]_i_10 (\grn_reg[14] ),
        .\iv[11]_i_10_0 (\grn_reg[13] ),
        .\iv[11]_i_2 (\iv[11]_i_2 ),
        .\iv[11]_i_20 (\iv[11]_i_20 ),
        .\iv[12]_i_18 (\iv[12]_i_18 ),
        .\iv[12]_i_29_0 (\iv[12]_i_29 ),
        .\iv[13]_i_26_0 (\iv[13]_i_26 ),
        .\iv[13]_i_29 (\iv[13]_i_29_1 ),
        .\iv[13]_i_29_0 (\iv[13]_i_29_2 ),
        .\iv[13]_i_29_1 (\iv[13]_i_29_3 ),
        .\iv[13]_i_31_0 (\iv[13]_i_31 ),
        .\iv[13]_i_35_0 (\iv[13]_i_35 ),
        .\iv[14]_i_15 (\iv[14]_i_15 ),
        .\iv[14]_i_24 (\iv[14]_i_24_0 ),
        .\iv[14]_i_24_0 (\iv[14]_i_24_1 ),
        .\iv[14]_i_26 (\iv[14]_i_26 ),
        .\iv[14]_i_30 (\iv[14]_i_30 ),
        .\iv[14]_i_30_0 (\iv[14]_i_30_0 ),
        .\iv[14]_i_38_0 (\iv[14]_i_38 ),
        .\iv[14]_i_39_0 (\iv[14]_i_39 ),
        .\iv[14]_i_4 (\iv[14]_i_4 ),
        .\iv[14]_i_40_0 (\iv[14]_i_40 ),
        .\iv[14]_i_40_1 (\iv[14]_i_40_0 ),
        .\iv[3]_i_6 (\iv[3]_i_6 ),
        .\iv[3]_i_7 (\iv[13]_i_8_0 ),
        .\iv[3]_i_7_0 (\grn_reg[15] ),
        .\iv[3]_i_7_1 (\iv[5]_i_20_n_0 ),
        .\iv[3]_i_7_2 (\iv[7]_i_17_n_0 ),
        .\iv[3]_i_7_3 (\iv[7]_i_18_n_0 ),
        .\iv[4]_i_7 (\iv[0]_i_7 ),
        .\iv[5]_i_19_0 (\iv[5]_i_19 ),
        .\iv[6]_i_11_0 (\iv[6]_i_11 ),
        .\iv[6]_i_2 (\iv[13]_i_2_1 ),
        .\iv[6]_i_2_0 (\iv[6]_i_2 ),
        .\iv[6]_i_2_1 (\iv[9]_i_19_0 ),
        .\iv[8]_i_18_0 (\iv[8]_i_18 ),
        .\iv[8]_i_18_1 (\iv[8]_i_18_0 ),
        .\iv[9]_i_19 (\iv[9]_i_19_3 ),
        .\iv[9]_i_19_0 (\iv[9]_i_19_2 ),
        .\iv[9]_i_19_1 (\iv[9]_i_19_1 ),
        .\iv[9]_i_19_2 (\iv[9]_i_19_4 ),
        .\iv[9]_i_19_3 (\iv[9]_i_19 ),
        .\iv[9]_i_19_4 (\iv[9]_i_19_7 ),
        .\iv[9]_i_2 (\iv[13]_i_2_0 ),
        .\iv[9]_i_2_0 (\iv[9]_i_20_n_0 ),
        .\iv[9]_i_2_1 (\badr[3]_INST_0_i_1 ),
        .\iv[9]_i_5 (\badr[13]_INST_0_i_1_0 ),
        .\iv[9]_i_6 (\iv[9]_i_6 ),
        .\iv[9]_i_7 (\badr[0]_INST_0_i_1 ),
        .\iv[9]_i_8_0 (\iv[13]_i_24_n_0 ),
        .out(gr27[12:0]),
        .\sr_reg[6] (\sr_reg[6] ),
        .\sr_reg[6]_0 (grn27_n_28),
        .\sr_reg[6]_1 (\sr_reg[6]_1 ),
        .\sr_reg[6]_10 (\sr_reg[6]_12 ),
        .\sr_reg[6]_2 (\sr_reg[6]_2 ),
        .\sr_reg[6]_3 (\sr_reg[6]_4 ),
        .\sr_reg[6]_4 (\sr_reg[6]_5 ),
        .\sr_reg[6]_5 (\sr_reg[6]_7 ),
        .\sr_reg[6]_6 (\sr_reg[6]_8 ),
        .\sr_reg[6]_7 (\sr_reg[6]_6 ),
        .\sr_reg[6]_8 (\sr_reg[6]_9 ),
        .\sr_reg[6]_9 (\sr_reg[6]_11 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[0]_i_11 
       (.I0(\badr[3]_INST_0_i_1 ),
        .I1(\iv[9]_i_20_n_0 ),
        .I2(\iv[13]_i_8_0 ),
        .I3(\iv[13]_i_24_n_0 ),
        .I4(\iv[13]_i_8_1 ),
        .I5(grn27_n_68),
        .O(\iv[13]_i_25 ));
  LUT5 #(
    .INIT(32'hF0FF5353)) 
    \iv[13]_i_16 
       (.I0(\badr[3]_INST_0_i_1 ),
        .I1(\iv[9]_i_20_n_0 ),
        .I2(\iv[13]_i_8_1 ),
        .I3(\badr[0]_INST_0_i_1 ),
        .I4(\iv[13]_i_8_0 ),
        .O(\iv[14]_i_24 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[13]_i_17 
       (.I0(\iv[13]_i_24_n_0 ),
        .I1(grn27_n_68),
        .I2(\iv[13]_i_8_0 ),
        .I3(grn27_n_69),
        .I4(\iv[13]_i_8_1 ),
        .I5(grn27_n_60),
        .O(\iv[13]_i_27 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[13]_i_18 
       (.I0(\iv[5]_i_7_0 ),
        .I1(\badr[0]_INST_0_i_1 ),
        .I2(\iv[13]_i_8_0 ),
        .I3(\badr[3]_INST_0_i_1 ),
        .I4(\iv[13]_i_8_1 ),
        .I5(\iv[9]_i_20_n_0 ),
        .O(\iv[13]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h05F505F50303F3F3)) 
    \iv[13]_i_20 
       (.I0(grn27_n_49),
        .I1(grn27_n_51),
        .I2(\iv[13]_i_8_0 ),
        .I3(grn27_n_45),
        .I4(grn27_n_48),
        .I5(\iv[13]_i_8_1 ),
        .O(\iv[13]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[13]_i_21 
       (.I0(grn27_n_52),
        .I1(grn27_n_54),
        .I2(\iv[13]_i_8_0 ),
        .I3(grn27_n_28),
        .I4(\iv[13]_i_8_1 ),
        .I5(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[13]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h5754)) 
    \iv[13]_i_22 
       (.I0(\grn_reg[15] ),
        .I1(\iv[13]_i_8_0 ),
        .I2(\iv[13]_i_8_1 ),
        .I3(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[13]_i_29_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \iv[13]_i_23 
       (.I0(\grn_reg[1] ),
        .I1(\sr[4]_i_27 ),
        .I2(\grn_reg[0] ),
        .O(\badr[0]_INST_0_i_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[13]_i_24 
       (.I0(\grn_reg[6] ),
        .I1(\sr[4]_i_27 ),
        .I2(\grn_reg[7] ),
        .O(\iv[13]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_29 
       (.I0(\grn_reg[14] ),
        .I1(\sr[4]_i_27 ),
        .I2(\grn_reg[13] ),
        .O(\badr[13]_INST_0_i_1_0 ));
  LUT6 #(
    .INIT(64'h000000005FCC50CC)) 
    \iv[13]_i_6 
       (.I0(\iv[14]_i_24 ),
        .I1(\iv[13]_i_27 ),
        .I2(\iv[13]_i_2_1 ),
        .I3(\iv[13]_i_2_0 ),
        .I4(\iv[13]_i_18_n_0 ),
        .I5(\iv[13]_i_2_2 ),
        .O(\iv[14]_i_14 ));
  LUT6 #(
    .INIT(64'hCC4CCC40C04CC040)) 
    \iv[13]_i_8 
       (.I0(\iv[13]_i_20_n_0 ),
        .I1(\iv[13]_i_2 ),
        .I2(\iv[13]_i_2_0 ),
        .I3(\iv[13]_i_2_1 ),
        .I4(\iv[13]_i_21_n_0 ),
        .I5(\iv[13]_i_29_0 ),
        .O(\iv[13]_i_22_0 ));
  LUT5 #(
    .INIT(32'h530053FF)) 
    \iv[14]_i_23 
       (.I0(\grn_reg[4]_11 ),
        .I1(\grn_reg[3] ),
        .I2(\sr[4]_i_27 ),
        .I3(\iv[13]_i_8_1 ),
        .I4(\badr[1]_INST_0_i_1 ),
        .O(\iv[14]_i_39_0 ));
  LUT4 #(
    .INIT(16'h0F2E)) 
    \iv[14]_i_27 
       (.I0(\badr[15]_INST_0_i_1_0 ),
        .I1(\iv[13]_i_8_0 ),
        .I2(\grn_reg[15] ),
        .I3(\iv[13]_i_8_1 ),
        .O(\iv[9]_i_19_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[14]_i_28 
       (.I0(\grn_reg[8] ),
        .I1(\grn_reg[7] ),
        .I2(\grn_reg[6] ),
        .I3(\grn_reg[5] ),
        .I4(\iv[13]_i_8_1 ),
        .I5(\sr[4]_i_27 ),
        .O(\bdatw[8]_INST_0_i_2_3 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[14]_i_29 
       (.I0(\grn_reg[12] ),
        .I1(\grn_reg[11] ),
        .I2(\grn_reg[10] ),
        .I3(\grn_reg[9] ),
        .I4(\iv[13]_i_8_1 ),
        .I5(\sr[4]_i_27 ),
        .O(\bdatw[8]_INST_0_i_2_7 ));
  LUT6 #(
    .INIT(64'hAAAACCCCF0F0FF00)) 
    \iv[4]_i_10 
       (.I0(\grn_reg[7] ),
        .I1(\grn_reg[6] ),
        .I2(\grn_reg[5] ),
        .I3(\grn_reg[4]_11 ),
        .I4(\sr[4]_i_27 ),
        .I5(\iv[13]_i_8_1 ),
        .O(\iv[9]_i_19_6 ));
  LUT6 #(
    .INIT(64'h555533330F0F00FF)) 
    \iv[5]_i_10 
       (.I0(\grn_reg[3] ),
        .I1(\grn_reg[2] ),
        .I2(\grn_reg[1] ),
        .I3(\grn_reg[0] ),
        .I4(\sr[4]_i_27 ),
        .I5(\iv[13]_i_8_1 ),
        .O(\iv[9]_i_19_5 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[5]_i_11 
       (.I0(grn27_n_28),
        .I1(\iv[13]_i_8_1 ),
        .I2(\badr[13]_INST_0_i_1_0 ),
        .O(\sr_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[5]_i_12 
       (.I0(\grn_reg[4]_11 ),
        .I1(\iv[13]_i_2_1 ),
        .O(\iv[12]_i_8 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \iv[5]_i_13 
       (.I0(grn27_n_35),
        .I1(grn27_n_36),
        .I2(\iv[13]_i_8_0 ),
        .I3(grn27_n_26),
        .I4(\iv[13]_i_8_1 ),
        .I5(grn27_n_27),
        .O(\iv[9]_i_23 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \iv[5]_i_14 
       (.I0(grn27_n_66),
        .I1(\iv[5]_i_20_n_0 ),
        .I2(\iv[13]_i_8_0 ),
        .I3(\iv[7]_i_17_n_0 ),
        .I4(\iv[7]_i_18_n_0 ),
        .I5(\iv[13]_i_8_1 ),
        .O(\iv[5]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_20 
       (.I0(\grn_reg[9] ),
        .I1(\sr[4]_i_27 ),
        .I2(\grn_reg[10] ),
        .O(\iv[5]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hF311C011)) 
    \iv[5]_i_7 
       (.I0(\iv[14]_i_24 ),
        .I1(\iv[13]_i_2_0 ),
        .I2(\iv[5]_i_14_n_0 ),
        .I3(\iv[5]_i_2 ),
        .I4(\iv[13]_i_18_n_0 ),
        .O(\iv[13]_i_18_0 ));
  LUT6 #(
    .INIT(64'hC0C000F0A0A000F0)) 
    \iv[7]_i_11 
       (.I0(\grn_reg[10] ),
        .I1(\grn_reg[9] ),
        .I2(\iv[13]_i_8_0 ),
        .I3(\iv[7]_i_17_n_0 ),
        .I4(\iv[13]_i_8_1 ),
        .I5(\sr[4]_i_27 ),
        .O(\bdatw[8]_INST_0_i_2_6 ));
  LUT6 #(
    .INIT(64'hFFFFFF47FF00FF47)) 
    \iv[7]_i_12 
       (.I0(\grn_reg[15] ),
        .I1(\sr[4]_i_27 ),
        .I2(out[3]),
        .I3(\iv[13]_i_8_0 ),
        .I4(\iv[13]_i_8_1 ),
        .I5(\iv[7]_i_18_n_0 ),
        .O(\sr_reg[6]_10 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \iv[7]_i_13 
       (.I0(\badr[0]_INST_0_i_1 ),
        .I1(\badr[3]_INST_0_i_1 ),
        .I2(\iv[13]_i_8_0 ),
        .I3(\iv[9]_i_20_n_0 ),
        .I4(\iv[13]_i_8_1 ),
        .I5(\iv[13]_i_24_n_0 ),
        .O(\iv[13]_i_24_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[7]_i_17 
       (.I0(\grn_reg[11] ),
        .I1(\sr[4]_i_27 ),
        .I2(\grn_reg[12] ),
        .O(\iv[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[7]_i_18 
       (.I0(\grn_reg[13] ),
        .I1(\sr[4]_i_27 ),
        .I2(\grn_reg[14] ),
        .O(\iv[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[8]_i_14 
       (.I0(grn27_n_69),
        .I1(grn27_n_60),
        .I2(\iv[13]_i_8_0 ),
        .I3(\badr[15]_INST_0_i_1_1 ),
        .I4(\iv[13]_i_8_1 ),
        .I5(\iv[0]_i_7 ),
        .O(\sr_reg[6]_3 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[9]_i_18 
       (.I0(\grn_reg[2] ),
        .I1(\sr[4]_i_27 ),
        .I2(\grn_reg[3] ),
        .O(\badr[3]_INST_0_i_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[9]_i_20 
       (.I0(\grn_reg[4]_11 ),
        .I1(\sr[4]_i_27 ),
        .I2(\grn_reg[5] ),
        .O(\iv[9]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022E2EEE2)) 
    \sr[4]_i_19 
       (.I0(\sr[4]_i_24_n_0 ),
        .I1(\iv[13]_i_2_0 ),
        .I2(\iv[9]_i_19_1 ),
        .I3(\iv[13]_i_8_0 ),
        .I4(\iv[9]_i_19_2 ),
        .I5(\sr[4]_i_15 ),
        .O(\sr[4]_i_25 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \sr[4]_i_24 
       (.I0(\sr_reg[6]_6 ),
        .I1(\iv[13]_i_8_0 ),
        .I2(\iv[9]_i_19_4 ),
        .I3(\iv[5]_i_2 ),
        .O(\sr[4]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \sr[4]_i_31 
       (.I0(\grn_reg[15] ),
        .I1(\iv[13]_i_8_1 ),
        .I2(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[13]_i_29_4 ));
  LUT6 #(
    .INIT(64'h505F3F3F505F3030)) 
    \sr[6]_i_5 
       (.I0(\bdatw[8]_INST_0_i_2 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\iv[13]_i_2_0 ),
        .I3(\iv[9]_i_19 ),
        .I4(\iv[13]_i_8_0 ),
        .I5(\sr[6]_i_3 ),
        .O(\sr[6]_i_8 ));
  LUT6 #(
    .INIT(64'h30305F503F3F5F5F)) 
    \sr[6]_i_9 
       (.I0(\grn_reg[14] ),
        .I1(\grn_reg[13] ),
        .I2(\iv[13]_i_8_1 ),
        .I3(\iv[13]_i_2_2 ),
        .I4(\sr[4]_i_27 ),
        .I5(\grn_reg[15] ),
        .O(\badr[15]_INST_0_i_1_2 ));
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
    \grn_reg[6]_1 ,
    \grn_reg[0]_1 ,
    \grn_reg[1]_1 ,
    \grn_reg[3]_1 ,
    \grn_reg[4]_1 ,
    \grn_reg[0]_2 ,
    \grn_reg[1]_2 ,
    \grn_reg[3]_2 ,
    \grn_reg[4]_2 ,
    \iv[12]_i_18 ,
    \iv[13]_i_29 ,
    \sr_reg[6] ,
    \iv[14]_i_39_0 ,
    \badr[11]_INST_0_i_1_0 ,
    \badr[9]_INST_0_i_1_0 ,
    \sr_reg[6]_0 ,
    \iv[13]_i_29_0 ,
    \iv[14]_i_26 ,
    \bdatw[8]_INST_0_i_2 ,
    \sr_reg[6]_1 ,
    \iv[11]_i_20 ,
    \iv[5]_i_19_0 ,
    \badr[5]_INST_0_i_1_0 ,
    \badr[7]_INST_0_i_1_0 ,
    \badr[1]_INST_0_i_1_0 ,
    \iv[6]_i_11_0 ,
    \iv[13]_i_31_0 ,
    \badr[15]_INST_0_i_1 ,
    \iv[14]_i_30 ,
    \iv[9]_i_19 ,
    \iv[14]_i_40_0 ,
    \sr_reg[6]_2 ,
    \badr[10]_INST_0_i_1_0 ,
    \iv[14]_i_24 ,
    \iv[14]_i_40_1 ,
    \badr[8]_INST_0_i_1_0 ,
    \badr[6]_INST_0_i_1_0 ,
    \iv[13]_i_35_0 ,
    \badr[4]_INST_0_i_1_0 ,
    \badr[2]_INST_0_i_1_0 ,
    \iv[14]_i_24_0 ,
    \badr[0]_INST_0_i_1_0 ,
    \sr_reg[6]_3 ,
    \badr[2]_INST_0_i_1_1 ,
    \badr[4]_INST_0_i_1_1 ,
    \badr[15]_INST_0_i_1_0 ,
    \sr_reg[6]_4 ,
    \badr[13]_INST_0_i_1 ,
    \iv[14]_i_38_0 ,
    \iv[9]_i_19_0 ,
    \iv[9]_i_19_1 ,
    \iv[9]_i_19_2 ,
    \iv[8]_i_18_0 ,
    \badr[8]_INST_0_i_1_1 ,
    \iv[13]_i_26_0 ,
    \badr[9]_INST_0_i_1_1 ,
    \badr[11]_INST_0_i_1_1 ,
    \iv[8]_i_18_1 ,
    \iv[12]_i_29_0 ,
    \iv[14]_i_30_0 ,
    \sr_reg[6]_5 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \iv[9]_i_19_3 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \bdatw[8]_INST_0_i_2_3 ,
    \bdatw[8]_INST_0_i_2_4 ,
    \iv[9]_i_19_4 ,
    \iv[13]_i_29_1 ,
    \bdatw[8]_INST_0_i_2_5 ,
    \sr_reg[6]_6 ,
    \sr_reg[6]_7 ,
    \sr_reg[6]_8 ,
    \sr_reg[6]_9 ,
    \sr_reg[6]_10 ,
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
    out,
    gr7_bus1__0_4,
    \badr[12]_INST_0_i_2_0 ,
    gr0_bus1__0_5,
    \iv[10]_i_12 ,
    \bdatw[14]_INST_0_i_11_0 ,
    \badr[12]_INST_0_i_2_1 ,
    gr1_bus1__0_6,
    \badr[12]_INST_0_i_2_2 ,
    gr2_bus1__0_7,
    \badr[12]_INST_0_i_2_3 ,
    gr3_bus1__0_8,
    \badr[12]_INST_0_i_2_4 ,
    gr4_bus1__0_9,
    \badr[12]_INST_0_i_2_5 ,
    gr5_bus1__0_10,
    \badr[12]_INST_0_i_2_6 ,
    gr6_bus1__0_11,
    \badr[12]_INST_0_i_2_7 ,
    gr7_bus1__0_12,
    \badr[12]_INST_0_i_2_8 ,
    gr0_bus1__0_13,
    \badr[0]_INST_0_i_1_1 ,
    \badr[12]_INST_0_i_3_0 ,
    \badr[12]_INST_0_i_3_1 ,
    \badr[12]_INST_0_i_3_2 ,
    \badr[12]_INST_0_i_2_9 ,
    \badr[1]_INST_0_i_1_1 ,
    \badr[2]_INST_0_i_1_2 ,
    \badr[3]_INST_0_i_1_0 ,
    \badr[4]_INST_0_i_1_2 ,
    \badr[5]_INST_0_i_1_1 ,
    \badr[6]_INST_0_i_1_1 ,
    \badr[7]_INST_0_i_1_1 ,
    \badr[8]_INST_0_i_1_2 ,
    \badr[9]_INST_0_i_1_2 ,
    \badr[10]_INST_0_i_1_1 ,
    \badr[11]_INST_0_i_1_2 ,
    \badr[12]_INST_0_i_1_0 ,
    \badr[12]_INST_0_i_2_10 ,
    \badr[12]_INST_0_i_2_11 ,
    \badr[12]_INST_0_i_3_3 ,
    \badr[12]_INST_0_i_2_12 ,
    \badr[12]_INST_0_i_2_13 ,
    \badr[12]_INST_0_i_1_1 ,
    gr3_bus1__0_14,
    \badr[12]_INST_0_i_1_2 ,
    gr4_bus1__0_15,
    \badr[12]_INST_0_i_3_4 ,
    gr5_bus1__0_16,
    \badr[12]_INST_0_i_3_5 ,
    gr6_bus1__0_17,
    \badr[12]_INST_0_i_3_6 ,
    gr1_bus1__0_18,
    \badr[12]_INST_0_i_3_7 ,
    gr2_bus1__0_19,
    gr3_bus1__0,
    gr4_bus1__0_20,
    \badr[12]_INST_0_i_3_8 ,
    \iv[6]_i_2 ,
    \iv[9]_i_2 ,
    \iv[6]_i_2_0 ,
    \iv[3]_i_7 ,
    \iv[10]_i_12_0 ,
    \iv[9]_i_5 ,
    \iv[9]_i_6 ,
    \iv[11]_i_2 ,
    \iv[3]_i_7_0 ,
    \iv[3]_i_6 ,
    \iv[10]_i_12_1 ,
    \iv[6]_i_2_1 ,
    \iv[11]_i_10 ,
    \iv[11]_i_10_0 ,
    \iv[4]_i_7 ,
    \iv[14]_i_4 ,
    \iv[3]_i_7_1 ,
    \iv[3]_i_7_2 ,
    \iv[9]_i_2_0 ,
    \iv[9]_i_8_0 ,
    \iv[9]_i_2_1 ,
    \iv[14]_i_15 ,
    \iv[9]_i_7 ,
    \iv[3]_i_7_3 ,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
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
  output \grn_reg[6]_1 ;
  output \grn_reg[0]_1 ;
  output \grn_reg[1]_1 ;
  output \grn_reg[3]_1 ;
  output \grn_reg[4]_1 ;
  output \grn_reg[0]_2 ;
  output \grn_reg[1]_2 ;
  output \grn_reg[3]_2 ;
  output \grn_reg[4]_2 ;
  output \iv[12]_i_18 ;
  output \iv[13]_i_29 ;
  output \sr_reg[6] ;
  output \iv[14]_i_39_0 ;
  output \badr[11]_INST_0_i_1_0 ;
  output \badr[9]_INST_0_i_1_0 ;
  output \sr_reg[6]_0 ;
  output \iv[13]_i_29_0 ;
  output \iv[14]_i_26 ;
  output \bdatw[8]_INST_0_i_2 ;
  output \sr_reg[6]_1 ;
  output \iv[11]_i_20 ;
  output \iv[5]_i_19_0 ;
  output \badr[5]_INST_0_i_1_0 ;
  output \badr[7]_INST_0_i_1_0 ;
  output \badr[1]_INST_0_i_1_0 ;
  output \iv[6]_i_11_0 ;
  output \iv[13]_i_31_0 ;
  output \badr[15]_INST_0_i_1 ;
  output \iv[14]_i_30 ;
  output \iv[9]_i_19 ;
  output \iv[14]_i_40_0 ;
  output \sr_reg[6]_2 ;
  output \badr[10]_INST_0_i_1_0 ;
  output \iv[14]_i_24 ;
  output \iv[14]_i_40_1 ;
  output \badr[8]_INST_0_i_1_0 ;
  output \badr[6]_INST_0_i_1_0 ;
  output \iv[13]_i_35_0 ;
  output \badr[4]_INST_0_i_1_0 ;
  output \badr[2]_INST_0_i_1_0 ;
  output \iv[14]_i_24_0 ;
  output \badr[0]_INST_0_i_1_0 ;
  output \sr_reg[6]_3 ;
  output \badr[2]_INST_0_i_1_1 ;
  output \badr[4]_INST_0_i_1_1 ;
  output \badr[15]_INST_0_i_1_0 ;
  output \sr_reg[6]_4 ;
  output \badr[13]_INST_0_i_1 ;
  output \iv[14]_i_38_0 ;
  output \iv[9]_i_19_0 ;
  output \iv[9]_i_19_1 ;
  output \iv[9]_i_19_2 ;
  output \iv[8]_i_18_0 ;
  output \badr[8]_INST_0_i_1_1 ;
  output \iv[13]_i_26_0 ;
  output \badr[9]_INST_0_i_1_1 ;
  output \badr[11]_INST_0_i_1_1 ;
  output \iv[8]_i_18_1 ;
  output \iv[12]_i_29_0 ;
  output \iv[14]_i_30_0 ;
  output \sr_reg[6]_5 ;
  output \bdatw[8]_INST_0_i_2_0 ;
  output \bdatw[8]_INST_0_i_2_1 ;
  output \iv[9]_i_19_3 ;
  output \bdatw[8]_INST_0_i_2_2 ;
  output \bdatw[8]_INST_0_i_2_3 ;
  output \bdatw[8]_INST_0_i_2_4 ;
  output \iv[9]_i_19_4 ;
  output \iv[13]_i_29_1 ;
  output \bdatw[8]_INST_0_i_2_5 ;
  output \sr_reg[6]_6 ;
  output \sr_reg[6]_7 ;
  output \sr_reg[6]_8 ;
  output \sr_reg[6]_9 ;
  output \sr_reg[6]_10 ;
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
  input [12:0]out;
  input gr7_bus1__0_4;
  input [12:0]\badr[12]_INST_0_i_2_0 ;
  input gr0_bus1__0_5;
  input [2:0]\iv[10]_i_12 ;
  input [0:0]\bdatw[14]_INST_0_i_11_0 ;
  input [12:0]\badr[12]_INST_0_i_2_1 ;
  input gr1_bus1__0_6;
  input [12:0]\badr[12]_INST_0_i_2_2 ;
  input gr2_bus1__0_7;
  input [12:0]\badr[12]_INST_0_i_2_3 ;
  input gr3_bus1__0_8;
  input [12:0]\badr[12]_INST_0_i_2_4 ;
  input gr4_bus1__0_9;
  input [12:0]\badr[12]_INST_0_i_2_5 ;
  input gr5_bus1__0_10;
  input [12:0]\badr[12]_INST_0_i_2_6 ;
  input gr6_bus1__0_11;
  input [12:0]\badr[12]_INST_0_i_2_7 ;
  input gr7_bus1__0_12;
  input [12:0]\badr[12]_INST_0_i_2_8 ;
  input gr0_bus1__0_13;
  input \badr[0]_INST_0_i_1_1 ;
  input \badr[12]_INST_0_i_3_0 ;
  input \badr[12]_INST_0_i_3_1 ;
  input \badr[12]_INST_0_i_3_2 ;
  input \badr[12]_INST_0_i_2_9 ;
  input \badr[1]_INST_0_i_1_1 ;
  input \badr[2]_INST_0_i_1_2 ;
  input \badr[3]_INST_0_i_1_0 ;
  input \badr[4]_INST_0_i_1_2 ;
  input \badr[5]_INST_0_i_1_1 ;
  input \badr[6]_INST_0_i_1_1 ;
  input \badr[7]_INST_0_i_1_1 ;
  input \badr[8]_INST_0_i_1_2 ;
  input \badr[9]_INST_0_i_1_2 ;
  input \badr[10]_INST_0_i_1_1 ;
  input \badr[11]_INST_0_i_1_2 ;
  input \badr[12]_INST_0_i_1_0 ;
  input \badr[12]_INST_0_i_2_10 ;
  input \badr[12]_INST_0_i_2_11 ;
  input \badr[12]_INST_0_i_3_3 ;
  input \badr[12]_INST_0_i_2_12 ;
  input \badr[12]_INST_0_i_2_13 ;
  input [12:0]\badr[12]_INST_0_i_1_1 ;
  input gr3_bus1__0_14;
  input [12:0]\badr[12]_INST_0_i_1_2 ;
  input gr4_bus1__0_15;
  input [12:0]\badr[12]_INST_0_i_3_4 ;
  input gr5_bus1__0_16;
  input [12:0]\badr[12]_INST_0_i_3_5 ;
  input gr6_bus1__0_17;
  input [12:0]\badr[12]_INST_0_i_3_6 ;
  input gr1_bus1__0_18;
  input [12:0]\badr[12]_INST_0_i_3_7 ;
  input gr2_bus1__0_19;
  input gr3_bus1__0;
  input gr4_bus1__0_20;
  input \badr[12]_INST_0_i_3_8 ;
  input \iv[6]_i_2 ;
  input \iv[9]_i_2 ;
  input \iv[6]_i_2_0 ;
  input \iv[3]_i_7 ;
  input \iv[10]_i_12_0 ;
  input \iv[9]_i_5 ;
  input \iv[9]_i_6 ;
  input \iv[11]_i_2 ;
  input \iv[3]_i_7_0 ;
  input \iv[3]_i_6 ;
  input \iv[10]_i_12_1 ;
  input \iv[6]_i_2_1 ;
  input \iv[11]_i_10 ;
  input \iv[11]_i_10_0 ;
  input \iv[4]_i_7 ;
  input \iv[14]_i_4 ;
  input \iv[3]_i_7_1 ;
  input \iv[3]_i_7_2 ;
  input \iv[9]_i_2_0 ;
  input \iv[9]_i_8_0 ;
  input \iv[9]_i_2_1 ;
  input \iv[14]_i_15 ;
  input \iv[9]_i_7 ;
  input \iv[3]_i_7_3 ;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
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
  wire \badr[0]_INST_0_i_1_1 ;
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
  wire \badr[10]_INST_0_i_1_1 ;
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
  wire \badr[11]_INST_0_i_1_2 ;
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
  wire [12:0]\badr[12]_INST_0_i_1_1 ;
  wire [12:0]\badr[12]_INST_0_i_1_2 ;
  wire [12:0]\badr[12]_INST_0_i_2_0 ;
  wire [12:0]\badr[12]_INST_0_i_2_1 ;
  wire \badr[12]_INST_0_i_2_10 ;
  wire \badr[12]_INST_0_i_2_11 ;
  wire \badr[12]_INST_0_i_2_12 ;
  wire \badr[12]_INST_0_i_2_13 ;
  wire [12:0]\badr[12]_INST_0_i_2_2 ;
  wire [12:0]\badr[12]_INST_0_i_2_3 ;
  wire [12:0]\badr[12]_INST_0_i_2_4 ;
  wire [12:0]\badr[12]_INST_0_i_2_5 ;
  wire [12:0]\badr[12]_INST_0_i_2_6 ;
  wire [12:0]\badr[12]_INST_0_i_2_7 ;
  wire [12:0]\badr[12]_INST_0_i_2_8 ;
  wire \badr[12]_INST_0_i_2_9 ;
  wire \badr[12]_INST_0_i_2_n_0 ;
  wire \badr[12]_INST_0_i_3_0 ;
  wire \badr[12]_INST_0_i_3_1 ;
  wire \badr[12]_INST_0_i_3_2 ;
  wire \badr[12]_INST_0_i_3_3 ;
  wire [12:0]\badr[12]_INST_0_i_3_4 ;
  wire [12:0]\badr[12]_INST_0_i_3_5 ;
  wire [12:0]\badr[12]_INST_0_i_3_6 ;
  wire [12:0]\badr[12]_INST_0_i_3_7 ;
  wire \badr[12]_INST_0_i_3_8 ;
  wire \badr[12]_INST_0_i_3_n_0 ;
  wire \badr[12]_INST_0_i_8_n_0 ;
  wire \badr[12]_INST_0_i_9_n_0 ;
  wire \badr[13]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_1_0 ;
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
  wire \badr[2]_INST_0_i_1_2 ;
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
  wire \badr[4]_INST_0_i_1_2 ;
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
  wire \badr[8]_INST_0_i_1_2 ;
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
  wire \badr[9]_INST_0_i_1_2 ;
  wire \badr[9]_INST_0_i_2_n_0 ;
  wire \badr[9]_INST_0_i_3_n_0 ;
  wire \badr[9]_INST_0_i_8_n_0 ;
  wire \badr[9]_INST_0_i_9_n_0 ;
  wire [0:0]\bdatw[14]_INST_0_i_11_0 ;
  wire \bdatw[14]_INST_0_i_21_n_0 ;
  wire \bdatw[14]_INST_0_i_22_n_0 ;
  wire \bdatw[14]_INST_0_i_36_n_0 ;
  wire \bdatw[14]_INST_0_i_37_n_0 ;
  wire \bdatw[14]_INST_0_i_38_n_0 ;
  wire \bdatw[14]_INST_0_i_39_n_0 ;
  wire \bdatw[14]_INST_0_i_40_n_0 ;
  wire \bdatw[14]_INST_0_i_41_n_0 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_2_3 ;
  wire \bdatw[8]_INST_0_i_2_4 ;
  wire \bdatw[8]_INST_0_i_2_5 ;
  wire clk;
  wire gr0_bus1__0_13;
  wire gr0_bus1__0_5;
  wire gr1_bus1__0_18;
  wire gr1_bus1__0_6;
  wire gr2_bus1__0_19;
  wire gr2_bus1__0_7;
  wire gr3_bus1__0;
  wire gr3_bus1__0_14;
  wire gr3_bus1__0_8;
  wire gr4_bus1__0_15;
  wire gr4_bus1__0_20;
  wire gr4_bus1__0_9;
  wire gr5_bus1__0_10;
  wire gr5_bus1__0_16;
  wire gr6_bus1__0_11;
  wire gr6_bus1__0_17;
  wire gr7_bus1__0_12;
  wire gr7_bus1__0_4;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[0]_1 ;
  wire \grn_reg[0]_2 ;
  wire \grn_reg[10]_0 ;
  wire \grn_reg[11]_0 ;
  wire \grn_reg[12]_0 ;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[1]_1 ;
  wire \grn_reg[1]_2 ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[3]_0 ;
  wire \grn_reg[3]_1 ;
  wire \grn_reg[3]_2 ;
  wire \grn_reg[4]_0 ;
  wire \grn_reg[4]_1 ;
  wire \grn_reg[4]_2 ;
  wire \grn_reg[5]_0 ;
  wire \grn_reg[6]_0 ;
  wire \grn_reg[6]_1 ;
  wire \grn_reg[7]_0 ;
  wire \grn_reg[8]_0 ;
  wire \grn_reg[9]_0 ;
  wire [2:0]\iv[10]_i_12 ;
  wire \iv[10]_i_12_0 ;
  wire \iv[10]_i_12_1 ;
  wire \iv[11]_i_10 ;
  wire \iv[11]_i_10_0 ;
  wire \iv[11]_i_2 ;
  wire \iv[11]_i_20 ;
  wire \iv[12]_i_18 ;
  wire \iv[12]_i_28_n_0 ;
  wire \iv[12]_i_29_0 ;
  wire \iv[13]_i_26_0 ;
  wire \iv[13]_i_29 ;
  wire \iv[13]_i_29_0 ;
  wire \iv[13]_i_29_1 ;
  wire \iv[13]_i_31_0 ;
  wire \iv[13]_i_35_0 ;
  wire \iv[14]_i_15 ;
  wire \iv[14]_i_24 ;
  wire \iv[14]_i_24_0 ;
  wire \iv[14]_i_26 ;
  wire \iv[14]_i_30 ;
  wire \iv[14]_i_30_0 ;
  wire \iv[14]_i_38_0 ;
  wire \iv[14]_i_39_0 ;
  wire \iv[14]_i_4 ;
  wire \iv[14]_i_40_0 ;
  wire \iv[14]_i_40_1 ;
  wire \iv[3]_i_6 ;
  wire \iv[3]_i_7 ;
  wire \iv[3]_i_7_0 ;
  wire \iv[3]_i_7_1 ;
  wire \iv[3]_i_7_2 ;
  wire \iv[3]_i_7_3 ;
  wire \iv[4]_i_7 ;
  wire \iv[5]_i_19_0 ;
  wire \iv[6]_i_11_0 ;
  wire \iv[6]_i_11_n_0 ;
  wire \iv[6]_i_19_n_0 ;
  wire \iv[6]_i_2 ;
  wire \iv[6]_i_20_n_0 ;
  wire \iv[6]_i_2_0 ;
  wire \iv[6]_i_2_1 ;
  wire \iv[8]_i_17_n_0 ;
  wire \iv[8]_i_18_0 ;
  wire \iv[8]_i_18_1 ;
  wire \iv[9]_i_19 ;
  wire \iv[9]_i_19_0 ;
  wire \iv[9]_i_19_1 ;
  wire \iv[9]_i_19_2 ;
  wire \iv[9]_i_19_3 ;
  wire \iv[9]_i_19_4 ;
  wire \iv[9]_i_2 ;
  wire \iv[9]_i_21_n_0 ;
  wire \iv[9]_i_2_0 ;
  wire \iv[9]_i_2_1 ;
  wire \iv[9]_i_5 ;
  wire \iv[9]_i_6 ;
  wire \iv[9]_i_7 ;
  wire \iv[9]_i_8_0 ;
  wire [12:0]out;
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[0]_INST_0_i_10 
       (.I0(\badr[12]_INST_0_i_2_1 [0]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_2 [0]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[0]_INST_0_i_11 
       (.I0(\badr[12]_INST_0_i_2_7 [0]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_8 [0]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[0]_INST_0_i_12 
       (.I0(\badr[12]_INST_0_i_2_5 [0]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_6 [0]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[0]_INST_0_i_14 
       (.I0(\badr[12]_INST_0_i_3_4 [0]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_5 [0]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[0]_INST_0_i_15 
       (.I0(\badr[12]_INST_0_i_3_6 [0]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_7 [0]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[0]_INST_0_i_2 
       (.I0(\badr[0]_INST_0_i_8_n_0 ),
        .I1(\badr[0]_INST_0_i_9_n_0 ),
        .I2(\badr[0]_INST_0_i_10_n_0 ),
        .I3(\badr[0]_INST_0_i_11_n_0 ),
        .I4(\badr[0]_INST_0_i_12_n_0 ),
        .I5(\badr[0]_INST_0_i_1_1 ),
        .O(\badr[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[0]_INST_0_i_3 
       (.I0(\badr[0]_INST_0_i_14_n_0 ),
        .I1(\badr[12]_INST_0_i_1_1 [0]),
        .I2(gr3_bus1__0),
        .I3(\badr[12]_INST_0_i_1_2 [0]),
        .I4(gr4_bus1__0_20),
        .I5(\badr[0]_INST_0_i_15_n_0 ),
        .O(\badr[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \badr[0]_INST_0_i_8 
       (.I0(out[0]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_0 [0]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[0]_INST_0_i_9 
       (.I0(\badr[12]_INST_0_i_2_3 [0]),
        .I1(\badr[12]_INST_0_i_2_10 ),
        .I2(\badr[12]_INST_0_i_2_4 [0]),
        .I3(\badr[12]_INST_0_i_2_11 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[10]_INST_0_i_10 
       (.I0(\badr[12]_INST_0_i_2_1 [10]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_2 [10]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[10]_INST_0_i_11 
       (.I0(\badr[12]_INST_0_i_2_7 [10]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_8 [10]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[10]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[10]_INST_0_i_12 
       (.I0(\badr[12]_INST_0_i_2_5 [10]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_6 [10]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[10]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[10]_INST_0_i_14 
       (.I0(\badr[12]_INST_0_i_3_4 [10]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_5 [10]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[10]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[10]_INST_0_i_15 
       (.I0(\badr[12]_INST_0_i_3_6 [10]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_7 [10]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[10]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[10]_INST_0_i_2 
       (.I0(\badr[10]_INST_0_i_8_n_0 ),
        .I1(\badr[10]_INST_0_i_9_n_0 ),
        .I2(\badr[10]_INST_0_i_10_n_0 ),
        .I3(\badr[10]_INST_0_i_11_n_0 ),
        .I4(\badr[10]_INST_0_i_12_n_0 ),
        .I5(\badr[10]_INST_0_i_1_1 ),
        .O(\badr[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[10]_INST_0_i_3 
       (.I0(\badr[10]_INST_0_i_14_n_0 ),
        .I1(\badr[12]_INST_0_i_1_1 [10]),
        .I2(gr3_bus1__0),
        .I3(\badr[12]_INST_0_i_1_2 [10]),
        .I4(gr4_bus1__0_20),
        .I5(\badr[10]_INST_0_i_15_n_0 ),
        .O(\badr[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \badr[10]_INST_0_i_8 
       (.I0(out[10]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_0 [10]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[10]_INST_0_i_9 
       (.I0(\badr[12]_INST_0_i_2_3 [10]),
        .I1(\badr[12]_INST_0_i_2_10 ),
        .I2(\badr[12]_INST_0_i_2_4 [10]),
        .I3(\badr[12]_INST_0_i_2_11 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[11]_INST_0_i_10 
       (.I0(\badr[12]_INST_0_i_2_1 [11]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_2 [11]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[11]_INST_0_i_11 
       (.I0(\badr[12]_INST_0_i_2_7 [11]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_8 [11]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[11]_INST_0_i_12 
       (.I0(\badr[12]_INST_0_i_2_5 [11]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_6 [11]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[11]_INST_0_i_14 
       (.I0(\badr[12]_INST_0_i_3_4 [11]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_5 [11]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[11]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[11]_INST_0_i_15 
       (.I0(\badr[12]_INST_0_i_3_6 [11]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_7 [11]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[11]_INST_0_i_2 
       (.I0(\badr[11]_INST_0_i_8_n_0 ),
        .I1(\badr[11]_INST_0_i_9_n_0 ),
        .I2(\badr[11]_INST_0_i_10_n_0 ),
        .I3(\badr[11]_INST_0_i_11_n_0 ),
        .I4(\badr[11]_INST_0_i_12_n_0 ),
        .I5(\badr[11]_INST_0_i_1_2 ),
        .O(\badr[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[11]_INST_0_i_3 
       (.I0(\badr[11]_INST_0_i_14_n_0 ),
        .I1(\badr[12]_INST_0_i_1_1 [11]),
        .I2(gr3_bus1__0),
        .I3(\badr[12]_INST_0_i_1_2 [11]),
        .I4(gr4_bus1__0_20),
        .I5(\badr[11]_INST_0_i_15_n_0 ),
        .O(\badr[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \badr[11]_INST_0_i_8 
       (.I0(out[11]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_0 [11]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[11]_INST_0_i_9 
       (.I0(\badr[12]_INST_0_i_2_3 [11]),
        .I1(\badr[12]_INST_0_i_2_10 ),
        .I2(\badr[12]_INST_0_i_2_4 [11]),
        .I3(\badr[12]_INST_0_i_2_11 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[12]_INST_0_i_10 
       (.I0(\badr[12]_INST_0_i_2_1 [12]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_2 [12]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[12]_INST_0_i_11 
       (.I0(\badr[12]_INST_0_i_2_7 [12]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_8 [12]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[12]_INST_0_i_12 
       (.I0(\badr[12]_INST_0_i_2_5 [12]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_6 [12]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[12]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[12]_INST_0_i_14 
       (.I0(\badr[12]_INST_0_i_3_4 [12]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_5 [12]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[12]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[12]_INST_0_i_15 
       (.I0(\badr[12]_INST_0_i_3_6 [12]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_7 [12]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
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
        .I1(\badr[12]_INST_0_i_1_1 [12]),
        .I2(gr3_bus1__0),
        .I3(\badr[12]_INST_0_i_1_2 [12]),
        .I4(gr4_bus1__0_20),
        .I5(\badr[12]_INST_0_i_15_n_0 ),
        .O(\badr[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \badr[12]_INST_0_i_8 
       (.I0(out[12]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_0 [12]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[12]_INST_0_i_9 
       (.I0(\badr[12]_INST_0_i_2_3 [12]),
        .I1(\badr[12]_INST_0_i_2_10 ),
        .I2(\badr[12]_INST_0_i_2_4 [12]),
        .I3(\badr[12]_INST_0_i_2_11 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[12]_INST_0_i_9_n_0 ));
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[1]_INST_0_i_10 
       (.I0(\badr[12]_INST_0_i_2_1 [1]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_2 [1]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[1]_INST_0_i_11 
       (.I0(\badr[12]_INST_0_i_2_7 [1]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_8 [1]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[1]_INST_0_i_12 
       (.I0(\badr[12]_INST_0_i_2_5 [1]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_6 [1]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[1]_INST_0_i_14 
       (.I0(\badr[12]_INST_0_i_3_4 [1]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_5 [1]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[1]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[1]_INST_0_i_15 
       (.I0(\badr[12]_INST_0_i_3_6 [1]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_7 [1]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
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
        .I1(\badr[12]_INST_0_i_1_1 [1]),
        .I2(gr3_bus1__0),
        .I3(\badr[12]_INST_0_i_1_2 [1]),
        .I4(gr4_bus1__0_20),
        .I5(\badr[1]_INST_0_i_15_n_0 ),
        .O(\badr[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \badr[1]_INST_0_i_8 
       (.I0(out[1]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_0 [1]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[1]_INST_0_i_9 
       (.I0(\badr[12]_INST_0_i_2_3 [1]),
        .I1(\badr[12]_INST_0_i_2_10 ),
        .I2(\badr[12]_INST_0_i_2_4 [1]),
        .I3(\badr[12]_INST_0_i_2_11 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[2]_INST_0_i_10 
       (.I0(\badr[12]_INST_0_i_2_1 [2]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_2 [2]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[2]_INST_0_i_11 
       (.I0(\badr[12]_INST_0_i_2_7 [2]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_8 [2]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[2]_INST_0_i_12 
       (.I0(\badr[12]_INST_0_i_2_5 [2]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_6 [2]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[2]_INST_0_i_14 
       (.I0(\badr[12]_INST_0_i_3_4 [2]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_5 [2]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[2]_INST_0_i_15 
       (.I0(\badr[12]_INST_0_i_3_6 [2]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_7 [2]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[2]_INST_0_i_2 
       (.I0(\badr[2]_INST_0_i_8_n_0 ),
        .I1(\badr[2]_INST_0_i_9_n_0 ),
        .I2(\badr[2]_INST_0_i_10_n_0 ),
        .I3(\badr[2]_INST_0_i_11_n_0 ),
        .I4(\badr[2]_INST_0_i_12_n_0 ),
        .I5(\badr[2]_INST_0_i_1_2 ),
        .O(\badr[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[2]_INST_0_i_3 
       (.I0(\badr[2]_INST_0_i_14_n_0 ),
        .I1(\badr[12]_INST_0_i_1_1 [2]),
        .I2(gr3_bus1__0),
        .I3(\badr[12]_INST_0_i_1_2 [2]),
        .I4(gr4_bus1__0_20),
        .I5(\badr[2]_INST_0_i_15_n_0 ),
        .O(\badr[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \badr[2]_INST_0_i_8 
       (.I0(out[2]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_0 [2]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[2]_INST_0_i_9 
       (.I0(\badr[12]_INST_0_i_2_3 [2]),
        .I1(\badr[12]_INST_0_i_2_10 ),
        .I2(\badr[12]_INST_0_i_2_4 [2]),
        .I3(\badr[12]_INST_0_i_2_11 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[3]_INST_0_i_10 
       (.I0(\badr[12]_INST_0_i_2_1 [3]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_2 [3]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[3]_INST_0_i_11 
       (.I0(\badr[12]_INST_0_i_2_7 [3]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_8 [3]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[3]_INST_0_i_12 
       (.I0(\badr[12]_INST_0_i_2_5 [3]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_6 [3]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[3]_INST_0_i_14 
       (.I0(\badr[12]_INST_0_i_3_4 [3]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_5 [3]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[3]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[3]_INST_0_i_15 
       (.I0(\badr[12]_INST_0_i_3_6 [3]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_7 [3]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
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
        .I1(\badr[12]_INST_0_i_1_1 [3]),
        .I2(gr3_bus1__0),
        .I3(\badr[12]_INST_0_i_1_2 [3]),
        .I4(gr4_bus1__0_20),
        .I5(\badr[3]_INST_0_i_15_n_0 ),
        .O(\badr[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \badr[3]_INST_0_i_8 
       (.I0(out[3]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_0 [3]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[3]_INST_0_i_9 
       (.I0(\badr[12]_INST_0_i_2_3 [3]),
        .I1(\badr[12]_INST_0_i_2_10 ),
        .I2(\badr[12]_INST_0_i_2_4 [3]),
        .I3(\badr[12]_INST_0_i_2_11 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[4]_INST_0_i_10 
       (.I0(\badr[12]_INST_0_i_2_1 [4]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_2 [4]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[4]_INST_0_i_11 
       (.I0(\badr[12]_INST_0_i_2_7 [4]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_8 [4]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[4]_INST_0_i_12 
       (.I0(\badr[12]_INST_0_i_2_5 [4]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_6 [4]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[4]_INST_0_i_14 
       (.I0(\badr[12]_INST_0_i_3_4 [4]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_5 [4]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[4]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[4]_INST_0_i_15 
       (.I0(\badr[12]_INST_0_i_3_6 [4]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_7 [4]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[4]_INST_0_i_2 
       (.I0(\badr[4]_INST_0_i_8_n_0 ),
        .I1(\badr[4]_INST_0_i_9_n_0 ),
        .I2(\badr[4]_INST_0_i_10_n_0 ),
        .I3(\badr[4]_INST_0_i_11_n_0 ),
        .I4(\badr[4]_INST_0_i_12_n_0 ),
        .I5(\badr[4]_INST_0_i_1_2 ),
        .O(\badr[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[4]_INST_0_i_3 
       (.I0(\badr[4]_INST_0_i_14_n_0 ),
        .I1(\badr[12]_INST_0_i_1_1 [4]),
        .I2(gr3_bus1__0),
        .I3(\badr[12]_INST_0_i_1_2 [4]),
        .I4(gr4_bus1__0_20),
        .I5(\badr[4]_INST_0_i_15_n_0 ),
        .O(\badr[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \badr[4]_INST_0_i_8 
       (.I0(out[4]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_0 [4]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[4]_INST_0_i_9 
       (.I0(\badr[12]_INST_0_i_2_3 [4]),
        .I1(\badr[12]_INST_0_i_2_10 ),
        .I2(\badr[12]_INST_0_i_2_4 [4]),
        .I3(\badr[12]_INST_0_i_2_11 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[5]_INST_0_i_10 
       (.I0(\badr[12]_INST_0_i_2_1 [5]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_2 [5]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[5]_INST_0_i_11 
       (.I0(\badr[12]_INST_0_i_2_7 [5]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_8 [5]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[5]_INST_0_i_12 
       (.I0(\badr[12]_INST_0_i_2_5 [5]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_6 [5]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[5]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[5]_INST_0_i_14 
       (.I0(\badr[12]_INST_0_i_3_4 [5]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_5 [5]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[5]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[5]_INST_0_i_15 
       (.I0(\badr[12]_INST_0_i_3_6 [5]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_7 [5]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[5]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[5]_INST_0_i_2 
       (.I0(\badr[5]_INST_0_i_8_n_0 ),
        .I1(\badr[5]_INST_0_i_9_n_0 ),
        .I2(\badr[5]_INST_0_i_10_n_0 ),
        .I3(\badr[5]_INST_0_i_11_n_0 ),
        .I4(\badr[5]_INST_0_i_12_n_0 ),
        .I5(\badr[5]_INST_0_i_1_1 ),
        .O(\badr[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[5]_INST_0_i_3 
       (.I0(\badr[5]_INST_0_i_14_n_0 ),
        .I1(\badr[12]_INST_0_i_1_1 [5]),
        .I2(gr3_bus1__0),
        .I3(\badr[12]_INST_0_i_1_2 [5]),
        .I4(gr4_bus1__0_20),
        .I5(\badr[5]_INST_0_i_15_n_0 ),
        .O(\badr[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \badr[5]_INST_0_i_8 
       (.I0(out[5]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_0 [5]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[5]_INST_0_i_9 
       (.I0(\badr[12]_INST_0_i_2_3 [5]),
        .I1(\badr[12]_INST_0_i_2_10 ),
        .I2(\badr[12]_INST_0_i_2_4 [5]),
        .I3(\badr[12]_INST_0_i_2_11 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[6]_INST_0_i_10 
       (.I0(\badr[12]_INST_0_i_2_1 [6]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_2 [6]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[6]_INST_0_i_11 
       (.I0(\badr[12]_INST_0_i_2_7 [6]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_8 [6]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[6]_INST_0_i_12 
       (.I0(\badr[12]_INST_0_i_2_5 [6]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_6 [6]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[6]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[6]_INST_0_i_14 
       (.I0(\badr[12]_INST_0_i_3_4 [6]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_5 [6]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[6]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[6]_INST_0_i_15 
       (.I0(\badr[12]_INST_0_i_3_6 [6]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_7 [6]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
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
        .I1(\badr[12]_INST_0_i_1_1 [6]),
        .I2(gr3_bus1__0),
        .I3(\badr[12]_INST_0_i_1_2 [6]),
        .I4(gr4_bus1__0_20),
        .I5(\badr[6]_INST_0_i_15_n_0 ),
        .O(\badr[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \badr[6]_INST_0_i_8 
       (.I0(out[6]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_0 [6]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[6]_INST_0_i_9 
       (.I0(\badr[12]_INST_0_i_2_3 [6]),
        .I1(\badr[12]_INST_0_i_2_10 ),
        .I2(\badr[12]_INST_0_i_2_4 [6]),
        .I3(\badr[12]_INST_0_i_2_11 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[7]_INST_0_i_10 
       (.I0(\badr[12]_INST_0_i_2_1 [7]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_2 [7]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[7]_INST_0_i_11 
       (.I0(\badr[12]_INST_0_i_2_7 [7]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_8 [7]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[7]_INST_0_i_12 
       (.I0(\badr[12]_INST_0_i_2_5 [7]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_6 [7]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[7]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[7]_INST_0_i_14 
       (.I0(\badr[12]_INST_0_i_3_4 [7]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_5 [7]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[7]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[7]_INST_0_i_15 
       (.I0(\badr[12]_INST_0_i_3_6 [7]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_7 [7]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
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
        .I1(\badr[12]_INST_0_i_1_1 [7]),
        .I2(gr3_bus1__0),
        .I3(\badr[12]_INST_0_i_1_2 [7]),
        .I4(gr4_bus1__0_20),
        .I5(\badr[7]_INST_0_i_15_n_0 ),
        .O(\badr[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \badr[7]_INST_0_i_8 
       (.I0(out[7]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_0 [7]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[7]_INST_0_i_9 
       (.I0(\badr[12]_INST_0_i_2_3 [7]),
        .I1(\badr[12]_INST_0_i_2_10 ),
        .I2(\badr[12]_INST_0_i_2_4 [7]),
        .I3(\badr[12]_INST_0_i_2_11 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[8]_INST_0_i_10 
       (.I0(\badr[12]_INST_0_i_2_1 [8]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_2 [8]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[8]_INST_0_i_11 
       (.I0(\badr[12]_INST_0_i_2_7 [8]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_8 [8]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[8]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[8]_INST_0_i_12 
       (.I0(\badr[12]_INST_0_i_2_5 [8]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_6 [8]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[8]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[8]_INST_0_i_14 
       (.I0(\badr[12]_INST_0_i_3_4 [8]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_5 [8]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[8]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[8]_INST_0_i_15 
       (.I0(\badr[12]_INST_0_i_3_6 [8]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_7 [8]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[8]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[8]_INST_0_i_2 
       (.I0(\badr[8]_INST_0_i_8_n_0 ),
        .I1(\badr[8]_INST_0_i_9_n_0 ),
        .I2(\badr[8]_INST_0_i_10_n_0 ),
        .I3(\badr[8]_INST_0_i_11_n_0 ),
        .I4(\badr[8]_INST_0_i_12_n_0 ),
        .I5(\badr[8]_INST_0_i_1_2 ),
        .O(\badr[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[8]_INST_0_i_3 
       (.I0(\badr[8]_INST_0_i_14_n_0 ),
        .I1(\badr[12]_INST_0_i_1_1 [8]),
        .I2(gr3_bus1__0),
        .I3(\badr[12]_INST_0_i_1_2 [8]),
        .I4(gr4_bus1__0_20),
        .I5(\badr[8]_INST_0_i_15_n_0 ),
        .O(\badr[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \badr[8]_INST_0_i_8 
       (.I0(out[8]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_0 [8]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[8]_INST_0_i_9 
       (.I0(\badr[12]_INST_0_i_2_3 [8]),
        .I1(\badr[12]_INST_0_i_2_10 ),
        .I2(\badr[12]_INST_0_i_2_4 [8]),
        .I3(\badr[12]_INST_0_i_2_11 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[9]_INST_0_i_10 
       (.I0(\badr[12]_INST_0_i_2_1 [9]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_2 [9]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[9]_INST_0_i_11 
       (.I0(\badr[12]_INST_0_i_2_7 [9]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_8 [9]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[9]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[9]_INST_0_i_12 
       (.I0(\badr[12]_INST_0_i_2_5 [9]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_2_6 [9]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_2_9 ),
        .O(\badr[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[9]_INST_0_i_14 
       (.I0(\badr[12]_INST_0_i_3_4 [9]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_5 [9]),
        .I3(\badr[12]_INST_0_i_3_3 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[9]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[9]_INST_0_i_15 
       (.I0(\badr[12]_INST_0_i_3_6 [9]),
        .I1(\badr[12]_INST_0_i_3_0 ),
        .I2(\badr[12]_INST_0_i_3_7 [9]),
        .I3(\badr[12]_INST_0_i_3_1 ),
        .I4(\badr[12]_INST_0_i_3_2 ),
        .I5(\badr[12]_INST_0_i_3_8 ),
        .O(\badr[9]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[9]_INST_0_i_2 
       (.I0(\badr[9]_INST_0_i_8_n_0 ),
        .I1(\badr[9]_INST_0_i_9_n_0 ),
        .I2(\badr[9]_INST_0_i_10_n_0 ),
        .I3(\badr[9]_INST_0_i_11_n_0 ),
        .I4(\badr[9]_INST_0_i_12_n_0 ),
        .I5(\badr[9]_INST_0_i_1_2 ),
        .O(\badr[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[9]_INST_0_i_3 
       (.I0(\badr[9]_INST_0_i_14_n_0 ),
        .I1(\badr[12]_INST_0_i_1_1 [9]),
        .I2(gr3_bus1__0),
        .I3(\badr[12]_INST_0_i_1_2 [9]),
        .I4(gr4_bus1__0_20),
        .I5(\badr[9]_INST_0_i_15_n_0 ),
        .O(\badr[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \badr[9]_INST_0_i_8 
       (.I0(out[9]),
        .I1(\badr[12]_INST_0_i_2_12 ),
        .I2(\badr[12]_INST_0_i_2_0 [9]),
        .I3(\badr[12]_INST_0_i_2_13 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \badr[9]_INST_0_i_9 
       (.I0(\badr[12]_INST_0_i_2_3 [9]),
        .I1(\badr[12]_INST_0_i_2_10 ),
        .I2(\badr[12]_INST_0_i_2_4 [9]),
        .I3(\badr[12]_INST_0_i_2_11 ),
        .I4(\iv[10]_i_12 [1]),
        .I5(\iv[10]_i_12 [0]),
        .O(\badr[9]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_21 
       (.I0(\badr[12]_INST_0_i_3_6 [3]),
        .I1(gr1_bus1__0_18),
        .I2(\badr[12]_INST_0_i_3_7 [3]),
        .I3(gr2_bus1__0_19),
        .O(\grn_reg[3]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_26 
       (.I0(out[3]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[12]_INST_0_i_2_0 [3]),
        .I3(gr0_bus1__0_5),
        .O(\grn_reg[3]_2 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_21 
       (.I0(\badr[12]_INST_0_i_3_6 [4]),
        .I1(gr1_bus1__0_18),
        .I2(\badr[12]_INST_0_i_3_7 [4]),
        .I3(gr2_bus1__0_19),
        .O(\grn_reg[4]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_26 
       (.I0(out[4]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[12]_INST_0_i_2_0 [4]),
        .I3(gr0_bus1__0_5),
        .O(\grn_reg[4]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_11 
       (.I0(\bdatw[14]_INST_0_i_21_n_0 ),
        .I1(\bdatw[14]_INST_0_i_22_n_0 ),
        .I2(out[6]),
        .I3(gr7_bus1__0_4),
        .I4(\badr[12]_INST_0_i_2_0 [6]),
        .I5(gr0_bus1__0_5),
        .O(\grn_reg[6]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[14]_INST_0_i_21 
       (.I0(\bdatw[14]_INST_0_i_36_n_0 ),
        .I1(\badr[12]_INST_0_i_1_1 [6]),
        .I2(gr3_bus1__0_14),
        .I3(\badr[12]_INST_0_i_1_2 [6]),
        .I4(gr4_bus1__0_15),
        .I5(\bdatw[14]_INST_0_i_37_n_0 ),
        .O(\bdatw[14]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_22 
       (.I0(\iv[10]_i_12 [2]),
        .I1(\bdatw[14]_INST_0_i_11_0 ),
        .I2(\bdatw[14]_INST_0_i_38_n_0 ),
        .I3(\bdatw[14]_INST_0_i_39_n_0 ),
        .I4(\bdatw[14]_INST_0_i_40_n_0 ),
        .I5(\bdatw[14]_INST_0_i_41_n_0 ),
        .O(\bdatw[14]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_36 
       (.I0(\badr[12]_INST_0_i_3_4 [6]),
        .I1(gr5_bus1__0_16),
        .I2(\badr[12]_INST_0_i_3_5 [6]),
        .I3(gr6_bus1__0_17),
        .O(\bdatw[14]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_37 
       (.I0(\badr[12]_INST_0_i_3_6 [6]),
        .I1(gr1_bus1__0_18),
        .I2(\badr[12]_INST_0_i_3_7 [6]),
        .I3(gr2_bus1__0_19),
        .O(\bdatw[14]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_38 
       (.I0(\badr[12]_INST_0_i_2_5 [6]),
        .I1(gr5_bus1__0_10),
        .I2(\badr[12]_INST_0_i_2_6 [6]),
        .I3(gr6_bus1__0_11),
        .O(\bdatw[14]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_39 
       (.I0(\badr[12]_INST_0_i_2_7 [6]),
        .I1(gr7_bus1__0_12),
        .I2(\badr[12]_INST_0_i_2_8 [6]),
        .I3(gr0_bus1__0_13),
        .O(\bdatw[14]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_40 
       (.I0(\badr[12]_INST_0_i_2_1 [6]),
        .I1(gr1_bus1__0_6),
        .I2(\badr[12]_INST_0_i_2_2 [6]),
        .I3(gr2_bus1__0_7),
        .O(\bdatw[14]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_41 
       (.I0(\badr[12]_INST_0_i_2_3 [6]),
        .I1(gr3_bus1__0_8),
        .I2(\badr[12]_INST_0_i_2_4 [6]),
        .I3(gr4_bus1__0_9),
        .O(\bdatw[14]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_20 
       (.I0(\badr[12]_INST_0_i_3_6 [0]),
        .I1(gr1_bus1__0_18),
        .I2(\badr[12]_INST_0_i_3_7 [0]),
        .I3(gr2_bus1__0_19),
        .O(\grn_reg[0]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_25 
       (.I0(out[0]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[12]_INST_0_i_2_0 [0]),
        .I3(gr0_bus1__0_5),
        .O(\grn_reg[0]_2 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_20 
       (.I0(\badr[12]_INST_0_i_3_6 [1]),
        .I1(gr1_bus1__0_18),
        .I2(\badr[12]_INST_0_i_3_7 [1]),
        .I3(gr2_bus1__0_19),
        .O(\grn_reg[1]_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_25 
       (.I0(out[1]),
        .I1(gr7_bus1__0_4),
        .I2(\badr[12]_INST_0_i_2_0 [1]),
        .I3(gr0_bus1__0_5),
        .O(\grn_reg[1]_2 ));
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
  LUT6 #(
    .INIT(64'h0F000FFF33AA33AA)) 
    \iv[10]_i_15 
       (.I0(\badr[2]_INST_0_i_1_1 ),
        .I1(\iv[4]_i_7 ),
        .I2(\badr[13]_INST_0_i_1 ),
        .I3(\iv[10]_i_12_0 ),
        .I4(\badr[15]_INST_0_i_1_0 ),
        .I5(\iv[3]_i_7 ),
        .O(\sr_reg[6]_4 ));
  LUT6 #(
    .INIT(64'hFFFFF5F3F0F0F5F3)) 
    \iv[11]_i_15 
       (.I0(\grn_reg[12]_0 ),
        .I1(\grn_reg[11]_0 ),
        .I2(\iv[3]_i_7 ),
        .I3(\iv[10]_i_12_1 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\iv[9]_i_5 ),
        .O(\iv[13]_i_29_1 ));
  LUT5 #(
    .INIT(32'hF055F033)) 
    \iv[11]_i_16 
       (.I0(\grn_reg[12]_0 ),
        .I1(\grn_reg[11]_0 ),
        .I2(\iv[9]_i_5 ),
        .I3(\iv[10]_i_12_0 ),
        .I4(\iv[10]_i_12_1 ),
        .O(\bdatw[8]_INST_0_i_2 ));
  LUT5 #(
    .INIT(32'h53FF5300)) 
    \iv[11]_i_17 
       (.I0(\grn_reg[1]_0 ),
        .I1(\grn_reg[0]_0 ),
        .I2(\iv[10]_i_12_1 ),
        .I3(\iv[10]_i_12_0 ),
        .I4(\sr_reg[6]_0 ),
        .O(\sr_reg[6]_1 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[11]_i_18 
       (.I0(\grn_reg[5]_0 ),
        .I1(\grn_reg[4]_0 ),
        .I2(\grn_reg[3]_0 ),
        .I3(\grn_reg[2]_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\iv[10]_i_12_1 ),
        .O(\bdatw[8]_INST_0_i_2_1 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[11]_i_19 
       (.I0(\grn_reg[9]_0 ),
        .I1(\grn_reg[8]_0 ),
        .I2(\grn_reg[7]_0 ),
        .I3(\grn_reg[6]_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\iv[10]_i_12_1 ),
        .O(\bdatw[8]_INST_0_i_2_3 ));
  LUT6 #(
    .INIT(64'h03CF444403CF7777)) 
    \iv[11]_i_22 
       (.I0(\iv[3]_i_7_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\iv[11]_i_10 ),
        .I3(\iv[11]_i_10_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\iv[10]_i_12 [2]),
        .O(\sr_reg[6]_6 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[11]_i_23 
       (.I0(\iv[9]_i_2_0 ),
        .I1(\iv[9]_i_8_0 ),
        .I2(\iv[3]_i_7 ),
        .I3(\badr[9]_INST_0_i_1_1 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\badr[11]_INST_0_i_1_1 ),
        .O(\iv[13]_i_26_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \iv[11]_i_7 
       (.I0(\bdatw[8]_INST_0_i_2 ),
        .I1(\iv[3]_i_7 ),
        .I2(\sr_reg[6]_1 ),
        .I3(\iv[11]_i_2 ),
        .O(\iv[14]_i_26 ));
  LUT3 #(
    .INIT(8'h2E)) 
    \iv[12]_i_17 
       (.I0(\iv[12]_i_28_n_0 ),
        .I1(\iv[10]_i_12_0 ),
        .I2(\badr[15]_INST_0_i_1 ),
        .O(\iv[14]_i_40_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[12]_i_20 
       (.I0(\grn_reg[10]_0 ),
        .I1(\grn_reg[9]_0 ),
        .I2(\grn_reg[8]_0 ),
        .I3(\grn_reg[7]_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\iv[10]_i_12_1 ),
        .O(\bdatw[8]_INST_0_i_2_4 ));
  LUT6 #(
    .INIT(64'h555533330F0F00FF)) 
    \iv[12]_i_21 
       (.I0(\grn_reg[6]_0 ),
        .I1(\grn_reg[5]_0 ),
        .I2(\grn_reg[4]_0 ),
        .I3(\grn_reg[3]_0 ),
        .I4(\iv[10]_i_12_1 ),
        .I5(\iv[10]_i_12_0 ),
        .O(\iv[9]_i_19_3 ));
  LUT5 #(
    .INIT(32'h00FF4747)) 
    \iv[12]_i_22 
       (.I0(\grn_reg[0]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\iv[10]_i_12 [2]),
        .I3(\badr[1]_INST_0_i_1_0 ),
        .I4(\iv[10]_i_12_0 ),
        .O(\sr_reg[6]_9 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[12]_i_24 
       (.I0(\grn_reg[4]_0 ),
        .I1(\grn_reg[3]_0 ),
        .I2(\grn_reg[2]_0 ),
        .I3(\grn_reg[1]_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\iv[10]_i_12_1 ),
        .O(\bdatw[8]_INST_0_i_2_0 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[12]_i_26 
       (.I0(\grn_reg[12]_0 ),
        .I1(\grn_reg[11]_0 ),
        .I2(\grn_reg[10]_0 ),
        .I3(\grn_reg[9]_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\iv[10]_i_12_1 ),
        .O(\bdatw[8]_INST_0_i_2_5 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[12]_i_27 
       (.I0(\grn_reg[8]_0 ),
        .I1(\grn_reg[7]_0 ),
        .I2(\grn_reg[6]_0 ),
        .I3(\grn_reg[5]_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\iv[10]_i_12_1 ),
        .O(\bdatw[8]_INST_0_i_2_2 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[12]_i_28 
       (.I0(\iv[11]_i_10_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[12]_0 ),
        .O(\iv[12]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[12]_i_29 
       (.I0(\iv[11]_i_10 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\iv[3]_i_7_0 ),
        .O(\badr[15]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[12]_i_30 
       (.I0(\grn_reg[3]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[4]_0 ),
        .O(\badr[4]_INST_0_i_1_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[13]_i_25 
       (.I0(\grn_reg[8]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[9]_0 ),
        .O(\badr[9]_INST_0_i_1_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[13]_i_26 
       (.I0(\grn_reg[10]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[11]_0 ),
        .O(\badr[11]_INST_0_i_1_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[13]_i_27 
       (.I0(\grn_reg[12]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\iv[11]_i_10_0 ),
        .O(\badr[13]_INST_0_i_1 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_31 
       (.I0(\grn_reg[7]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[6]_0 ),
        .O(\badr[6]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_32 
       (.I0(\grn_reg[5]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[4]_0 ),
        .O(\badr[4]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_33 
       (.I0(\grn_reg[11]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[10]_0 ),
        .O(\badr[10]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_34 
       (.I0(\grn_reg[9]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[8]_0 ),
        .O(\badr[8]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_35 
       (.I0(\grn_reg[3]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[2]_0 ),
        .O(\badr[2]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_36 
       (.I0(\grn_reg[1]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[0]_0 ),
        .O(\badr[0]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \iv[13]_i_37 
       (.I0(\iv[3]_i_7_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\iv[10]_i_12 [2]),
        .O(\sr_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h3F305F5F3F305050)) 
    \iv[14]_i_17 
       (.I0(\iv[9]_i_19_0 ),
        .I1(\iv[14]_i_4 ),
        .I2(\iv[9]_i_2 ),
        .I3(\iv[9]_i_19_1 ),
        .I4(\iv[3]_i_7 ),
        .I5(\iv[9]_i_19_2 ),
        .O(\iv[14]_i_38_0 ));
  LUT5 #(
    .INIT(32'h47FF4700)) 
    \iv[14]_i_25 
       (.I0(\grn_reg[0]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\iv[10]_i_12 [2]),
        .I3(\iv[10]_i_12_0 ),
        .I4(\badr[15]_INST_0_i_1 ),
        .O(\sr_reg[6]_10 ));
  LUT6 #(
    .INIT(64'hFC0A0C0AFCFAFCFA)) 
    \iv[14]_i_34 
       (.I0(\grn_reg[2]_0 ),
        .I1(\grn_reg[1]_0 ),
        .I2(\iv[10]_i_12_0 ),
        .I3(\iv[10]_i_12_1 ),
        .I4(\iv[10]_i_12 [2]),
        .I5(\iv[14]_i_15 ),
        .O(\sr_reg[6]_5 ));
  LUT6 #(
    .INIT(64'h00FF0F0F33335555)) 
    \iv[14]_i_35 
       (.I0(\grn_reg[6]_0 ),
        .I1(\grn_reg[5]_0 ),
        .I2(\grn_reg[4]_0 ),
        .I3(\grn_reg[3]_0 ),
        .I4(\iv[10]_i_12_1 ),
        .I5(\iv[10]_i_12_0 ),
        .O(\iv[9]_i_19_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \iv[14]_i_37 
       (.I0(\grn_reg[10]_0 ),
        .I1(\grn_reg[9]_0 ),
        .I2(\grn_reg[8]_0 ),
        .I3(\grn_reg[7]_0 ),
        .I4(\iv[10]_i_12_1 ),
        .I5(\iv[10]_i_12_0 ),
        .O(\iv[9]_i_19_1 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \iv[14]_i_38 
       (.I0(\iv[11]_i_10 ),
        .I1(\iv[11]_i_10_0 ),
        .I2(\grn_reg[12]_0 ),
        .I3(\grn_reg[11]_0 ),
        .I4(\iv[10]_i_12_1 ),
        .I5(\iv[10]_i_12_0 ),
        .O(\iv[9]_i_19_2 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[14]_i_39 
       (.I0(\grn_reg[2]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[1]_0 ),
        .O(\badr[1]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \iv[14]_i_40 
       (.I0(\iv[11]_i_10 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\iv[3]_i_7_0 ),
        .O(\badr[15]_INST_0_i_1 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[14]_i_42 
       (.I0(\grn_reg[1]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[2]_0 ),
        .O(\badr[2]_INST_0_i_1_1 ));
  LUT6 #(
    .INIT(64'hCFC0A0A0CFC0AFAF)) 
    \iv[1]_i_10 
       (.I0(\badr[5]_INST_0_i_1_0 ),
        .I1(\badr[7]_INST_0_i_1_0 ),
        .I2(\iv[3]_i_7 ),
        .I3(\iv[6]_i_19_n_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\badr[1]_INST_0_i_1_0 ),
        .O(\iv[14]_i_39_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF470047FF)) 
    \iv[1]_i_4 
       (.I0(\iv[13]_i_29 ),
        .I1(\iv[6]_i_2 ),
        .I2(\sr_reg[6] ),
        .I3(\iv[9]_i_2 ),
        .I4(\iv[14]_i_39_0 ),
        .I5(\iv[6]_i_2_0 ),
        .O(\iv[12]_i_18 ));
  LUT6 #(
    .INIT(64'hFF550055F033F033)) 
    \iv[2]_i_10 
       (.I0(\badr[15]_INST_0_i_1 ),
        .I1(\badr[10]_INST_0_i_1_0 ),
        .I2(\iv[12]_i_28_n_0 ),
        .I3(\iv[10]_i_12_0 ),
        .I4(\iv[3]_i_7_0 ),
        .I5(\iv[3]_i_7 ),
        .O(\iv[14]_i_24 ));
  LUT6 #(
    .INIT(64'hF505FCFCF5050C0C)) 
    \iv[2]_i_11 
       (.I0(\iv[12]_i_28_n_0 ),
        .I1(\badr[10]_INST_0_i_1_0 ),
        .I2(\iv[3]_i_7 ),
        .I3(\iv[6]_i_20_n_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\badr[15]_INST_0_i_1 ),
        .O(\sr_reg[6]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[2]_i_12 
       (.I0(\badr[8]_INST_0_i_1_0 ),
        .I1(\badr[6]_INST_0_i_1_0 ),
        .I2(\iv[3]_i_7 ),
        .I3(\badr[4]_INST_0_i_1_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\badr[2]_INST_0_i_1_0 ),
        .O(\iv[13]_i_35_0 ));
  LUT5 #(
    .INIT(32'hF5FCF50C)) 
    \iv[2]_i_13 
       (.I0(\iv[12]_i_28_n_0 ),
        .I1(\badr[10]_INST_0_i_1_0 ),
        .I2(\iv[3]_i_7 ),
        .I3(\iv[10]_i_12_0 ),
        .I4(\badr[15]_INST_0_i_1 ),
        .O(\iv[14]_i_40_1 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[3]_i_11 
       (.I0(\badr[5]_INST_0_i_1_0 ),
        .I1(\iv[6]_i_19_n_0 ),
        .I2(\iv[3]_i_7 ),
        .I3(\badr[9]_INST_0_i_1_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\badr[7]_INST_0_i_1_0 ),
        .O(\iv[5]_i_19_0 ));
  LUT6 #(
    .INIT(64'h00B8FFB8FFB8FFB8)) 
    \iv[3]_i_12 
       (.I0(\iv[9]_i_5 ),
        .I1(\iv[10]_i_12_0 ),
        .I2(\badr[11]_INST_0_i_1_0 ),
        .I3(\iv[3]_i_7 ),
        .I4(\iv[3]_i_7_0 ),
        .I5(\iv[3]_i_6 ),
        .O(\iv[11]_i_20 ));
  LUT6 #(
    .INIT(64'h0000B800FF00B800)) 
    \iv[3]_i_13 
       (.I0(\iv[3]_i_7_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\iv[10]_i_12 [2]),
        .I3(\iv[3]_i_7 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\iv[3]_i_7_3 ),
        .O(\sr_reg[6]_8 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[3]_i_14 
       (.I0(\iv[3]_i_7_1 ),
        .I1(\iv[3]_i_7_2 ),
        .I2(\iv[3]_i_7 ),
        .I3(\iv[8]_i_17_n_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\badr[8]_INST_0_i_1_1 ),
        .O(\iv[8]_i_18_0 ));
  LUT6 #(
    .INIT(64'hF505F3F3F5050303)) 
    \iv[4]_i_11 
       (.I0(\badr[2]_INST_0_i_1_1 ),
        .I1(\badr[4]_INST_0_i_1_1 ),
        .I2(\iv[3]_i_7 ),
        .I3(\badr[15]_INST_0_i_1_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\iv[4]_i_7 ),
        .O(\sr_reg[6]_3 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_18 
       (.I0(\grn_reg[6]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[5]_0 ),
        .O(\badr[5]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_19 
       (.I0(\grn_reg[8]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[7]_0 ),
        .O(\badr[7]_INST_0_i_1_0 ));
  LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
    \iv[6]_i_10 
       (.I0(\iv[12]_i_28_n_0 ),
        .I1(\badr[10]_INST_0_i_1_0 ),
        .I2(\iv[3]_i_7 ),
        .I3(\badr[8]_INST_0_i_1_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\badr[6]_INST_0_i_1_0 ),
        .O(\iv[13]_i_31_0 ));
  LUT6 #(
    .INIT(64'hAFA03F3FAFA03030)) 
    \iv[6]_i_11 
       (.I0(\iv[6]_i_19_n_0 ),
        .I1(\badr[1]_INST_0_i_1_0 ),
        .I2(\iv[3]_i_7 ),
        .I3(\iv[6]_i_20_n_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\badr[15]_INST_0_i_1 ),
        .O(\iv[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[6]_i_13 
       (.I0(\badr[9]_INST_0_i_1_1 ),
        .I1(\badr[11]_INST_0_i_1_1 ),
        .I2(\iv[3]_i_7 ),
        .I3(\badr[13]_INST_0_i_1 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\badr[15]_INST_0_i_1_0 ),
        .O(\iv[12]_i_29_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[6]_i_19 
       (.I0(\grn_reg[4]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[3]_0 ),
        .O(\iv[6]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[6]_i_20 
       (.I0(\grn_reg[0]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\iv[10]_i_12 [2]),
        .O(\iv[6]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hDDCFCCCFDDCFFFCF)) 
    \iv[6]_i_4 
       (.I0(\iv[6]_i_2_1 ),
        .I1(\iv[6]_i_2_0 ),
        .I2(\iv[13]_i_31_0 ),
        .I3(\iv[9]_i_2 ),
        .I4(\iv[6]_i_2 ),
        .I5(\iv[6]_i_11_n_0 ),
        .O(\iv[6]_i_11_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCCF0F0FF00)) 
    \iv[8]_i_13 
       (.I0(\grn_reg[11]_0 ),
        .I1(\grn_reg[10]_0 ),
        .I2(\grn_reg[9]_0 ),
        .I3(\grn_reg[8]_0 ),
        .I4(\iv[10]_i_12_1 ),
        .I5(\iv[10]_i_12_0 ),
        .O(\iv[9]_i_19 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[8]_i_15 
       (.I0(\badr[2]_INST_0_i_1_1 ),
        .I1(\badr[4]_INST_0_i_1_1 ),
        .I2(\iv[3]_i_7 ),
        .I3(\iv[8]_i_17_n_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\badr[8]_INST_0_i_1_1 ),
        .O(\iv[8]_i_18_1 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[8]_i_17 
       (.I0(\grn_reg[5]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[6]_0 ),
        .O(\iv[8]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[8]_i_18 
       (.I0(\grn_reg[7]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[8]_0 ),
        .O(\badr[8]_INST_0_i_1_1 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \iv[8]_i_6 
       (.I0(\iv[9]_i_19 ),
        .I1(\iv[3]_i_7 ),
        .I2(\iv[14]_i_40_0 ),
        .I3(\iv[9]_i_2 ),
        .O(\iv[14]_i_30 ));
  LUT6 #(
    .INIT(64'h555533330F0F00FF)) 
    \iv[9]_i_12 
       (.I0(\badr[6]_INST_0_i_1_0 ),
        .I1(\badr[4]_INST_0_i_1_0 ),
        .I2(\badr[2]_INST_0_i_1_0 ),
        .I3(\badr[0]_INST_0_i_1_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\iv[3]_i_7 ),
        .O(\iv[14]_i_24_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[9]_i_13 
       (.I0(\badr[11]_INST_0_i_1_0 ),
        .I1(\badr[9]_INST_0_i_1_0 ),
        .I2(\iv[3]_i_7 ),
        .I3(\sr_reg[6]_0 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\iv[9]_i_5 ),
        .O(\sr_reg[6] ));
  LUT6 #(
    .INIT(64'h55CCFFF055CC00F0)) 
    \iv[9]_i_14 
       (.I0(\iv[3]_i_7_0 ),
        .I1(\badr[11]_INST_0_i_1_0 ),
        .I2(\badr[9]_INST_0_i_1_0 ),
        .I3(\iv[3]_i_7 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\iv[9]_i_5 ),
        .O(\iv[13]_i_29 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[9]_i_15 
       (.I0(\badr[11]_INST_0_i_1_0 ),
        .I1(\badr[9]_INST_0_i_1_0 ),
        .I2(\iv[3]_i_7 ),
        .I3(\iv[9]_i_6 ),
        .I4(\iv[10]_i_12_0 ),
        .I5(\iv[9]_i_5 ),
        .O(\iv[13]_i_29_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \iv[9]_i_16 
       (.I0(\iv[3]_i_7_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\iv[10]_i_12 [2]),
        .I3(\iv[10]_i_12_0 ),
        .I4(\iv[9]_i_7 ),
        .O(\sr_reg[6]_7 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[9]_i_21 
       (.I0(\iv[9]_i_8_0 ),
        .I1(\iv[10]_i_12_0 ),
        .I2(\badr[9]_INST_0_i_1_1 ),
        .O(\iv[9]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[9]_i_22 
       (.I0(\grn_reg[12]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[11]_0 ),
        .O(\badr[11]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[9]_i_23 
       (.I0(\grn_reg[10]_0 ),
        .I1(\iv[10]_i_12_1 ),
        .I2(\grn_reg[9]_0 ),
        .O(\badr[9]_INST_0_i_1_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8FF00)) 
    \iv[9]_i_8 
       (.I0(\iv[9]_i_2_1 ),
        .I1(\iv[10]_i_12_0 ),
        .I2(\iv[9]_i_2_0 ),
        .I3(\iv[9]_i_21_n_0 ),
        .I4(\iv[3]_i_7 ),
        .I5(\iv[9]_i_2 ),
        .O(\iv[14]_i_30_0 ));
  LUT5 #(
    .INIT(32'h0F0F5533)) 
    \sr[7]_i_15 
       (.I0(\grn_reg[11]_0 ),
        .I1(\grn_reg[10]_0 ),
        .I2(\iv[12]_i_28_n_0 ),
        .I3(\iv[10]_i_12_1 ),
        .I4(\iv[10]_i_12_0 ),
        .O(\iv[9]_i_19_4 ));
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
    \grn_reg[6]_0 ,
    \grn_reg[0]_0 ,
    \grn_reg[1]_0 ,
    \grn_reg[2]_0 ,
    \grn_reg[3]_0 ,
    \grn_reg[4]_1 ,
    \grn_reg[5]_0 ,
    \grn_reg[6]_1 ,
    \grn_reg[7]_0 ,
    \grn_reg[8]_0 ,
    \grn_reg[9]_0 ,
    \grn_reg[10]_0 ,
    \grn_reg[11]_0 ,
    \grn_reg[12]_0 ,
    \grn_reg[0]_1 ,
    \grn_reg[1]_1 ,
    \grn_reg[2]_1 ,
    \grn_reg[3]_1 ,
    \grn_reg[4]_2 ,
    \grn_reg[5]_1 ,
    \grn_reg[6]_2 ,
    \grn_reg[7]_1 ,
    \grn_reg[8]_1 ,
    \grn_reg[9]_1 ,
    \grn_reg[10]_1 ,
    \grn_reg[11]_1 ,
    \grn_reg[12]_1 ,
    Q,
    \bdatw[8]_INST_0_i_2 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[8]_INST_0_i_2_1 ,
    \bdatw[8]_INST_0_i_2_2 ,
    \bdatw[9]_INST_0_i_2 ,
    \bdatw[9]_INST_0_i_2_0 ,
    \bdatw[9]_INST_0_i_2_1 ,
    \bdatw[9]_INST_0_i_2_2 ,
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
    \badr[12]_INST_0_i_4_0 ,
    gr1_bus1__0,
    \badr[12]_INST_0_i_4_1 ,
    gr2_bus1__0,
    \badr[12]_INST_0_i_4_2 ,
    gr3_bus1__0,
    \badr[12]_INST_0_i_4_3 ,
    gr4_bus1__0,
    \badr[12]_INST_0_i_4_4 ,
    gr5_bus1__0,
    \badr[12]_INST_0_i_4_5 ,
    gr6_bus1__0,
    \badr[12]_INST_0_i_4_6 ,
    gr7_bus1__0,
    \badr[12]_INST_0_i_4_7 ,
    gr0_bus1__0,
    \badr[0]_INST_0_i_1 ,
    \badr[12]_INST_0_i_4_8 ,
    \badr[12]_INST_0_i_5 ,
    \badr[12]_INST_0_i_5_0 ,
    \badr[12]_INST_0_i_4_9 ,
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
    \badr[12]_INST_0_i_4_10 ,
    \badr[12]_INST_0_i_4_11 ,
    \badr[12]_INST_0_i_4_12 ,
    \badr[12]_INST_0_i_4_13 ,
    \badr[12]_INST_0_i_4_14 ,
    \badr[12]_INST_0_i_4_15 ,
    \badr[12]_INST_0_i_5_1 ,
    gr2_bus1__0_0,
    \badr[12]_INST_0_i_5_2 ,
    gr3_bus1__0_1,
    \badr[12]_INST_0_i_4_16 ,
    gr4_bus1__0_2,
    \badr[12]_INST_0_i_4_17 ,
    gr5_bus1__0_3,
    \badr[12]_INST_0_i_5_3 ,
    \badr[12]_INST_0_i_4_18 ,
    \badr[12]_INST_0_i_4_19 ,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output [3:0]\grn_reg[4]_0 ;
  output \grn_reg[6]_0 ;
  output \grn_reg[0]_0 ;
  output \grn_reg[1]_0 ;
  output \grn_reg[2]_0 ;
  output \grn_reg[3]_0 ;
  output \grn_reg[4]_1 ;
  output \grn_reg[5]_0 ;
  output \grn_reg[6]_1 ;
  output \grn_reg[7]_0 ;
  output \grn_reg[8]_0 ;
  output \grn_reg[9]_0 ;
  output \grn_reg[10]_0 ;
  output \grn_reg[11]_0 ;
  output \grn_reg[12]_0 ;
  output \grn_reg[0]_1 ;
  output \grn_reg[1]_1 ;
  output \grn_reg[2]_1 ;
  output \grn_reg[3]_1 ;
  output \grn_reg[4]_2 ;
  output \grn_reg[5]_1 ;
  output \grn_reg[6]_2 ;
  output \grn_reg[7]_1 ;
  output \grn_reg[8]_1 ;
  output \grn_reg[9]_1 ;
  output \grn_reg[10]_1 ;
  output \grn_reg[11]_1 ;
  output \grn_reg[12]_1 ;
  output [15:0]Q;
  input \bdatw[8]_INST_0_i_2 ;
  input \bdatw[8]_INST_0_i_2_0 ;
  input \bdatw[8]_INST_0_i_2_1 ;
  input \bdatw[8]_INST_0_i_2_2 ;
  input \bdatw[9]_INST_0_i_2 ;
  input \bdatw[9]_INST_0_i_2_0 ;
  input \bdatw[9]_INST_0_i_2_1 ;
  input \bdatw[9]_INST_0_i_2_2 ;
  input \bdatw[11]_INST_0_i_2 ;
  input \bdatw[11]_INST_0_i_2_0 ;
  input \bdatw[11]_INST_0_i_2_1 ;
  input \bdatw[11]_INST_0_i_2_2 ;
  input \bdatw[12]_INST_0_i_2 ;
  input \bdatw[12]_INST_0_i_2_0 ;
  input \bdatw[12]_INST_0_i_2_1 ;
  input \bdatw[12]_INST_0_i_2_2 ;
  input [0:0]out;
  input gr0_bus1__0_0;
  input [12:0]\badr[12]_INST_0_i_4_0 ;
  input gr1_bus1__0;
  input [12:0]\badr[12]_INST_0_i_4_1 ;
  input gr2_bus1__0;
  input [12:0]\badr[12]_INST_0_i_4_2 ;
  input gr3_bus1__0;
  input [12:0]\badr[12]_INST_0_i_4_3 ;
  input gr4_bus1__0;
  input [12:0]\badr[12]_INST_0_i_4_4 ;
  input gr5_bus1__0;
  input [12:0]\badr[12]_INST_0_i_4_5 ;
  input gr6_bus1__0;
  input [12:0]\badr[12]_INST_0_i_4_6 ;
  input gr7_bus1__0;
  input [12:0]\badr[12]_INST_0_i_4_7 ;
  input gr0_bus1__0;
  input \badr[0]_INST_0_i_1 ;
  input \badr[12]_INST_0_i_4_8 ;
  input \badr[12]_INST_0_i_5 ;
  input \badr[12]_INST_0_i_5_0 ;
  input \badr[12]_INST_0_i_4_9 ;
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
  input \badr[12]_INST_0_i_4_10 ;
  input \badr[12]_INST_0_i_4_11 ;
  input [1:0]\badr[12]_INST_0_i_4_12 ;
  input \badr[12]_INST_0_i_4_13 ;
  input \badr[12]_INST_0_i_4_14 ;
  input \badr[12]_INST_0_i_4_15 ;
  input [12:0]\badr[12]_INST_0_i_5_1 ;
  input gr2_bus1__0_0;
  input [12:0]\badr[12]_INST_0_i_5_2 ;
  input gr3_bus1__0_1;
  input [12:0]\badr[12]_INST_0_i_4_16 ;
  input gr4_bus1__0_2;
  input [12:0]\badr[12]_INST_0_i_4_17 ;
  input gr5_bus1__0_3;
  input \badr[12]_INST_0_i_5_3 ;
  input \badr[12]_INST_0_i_4_18 ;
  input \badr[12]_INST_0_i_4_19 ;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
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
  wire [12:0]\badr[12]_INST_0_i_4_0 ;
  wire [12:0]\badr[12]_INST_0_i_4_1 ;
  wire \badr[12]_INST_0_i_4_10 ;
  wire \badr[12]_INST_0_i_4_11 ;
  wire [1:0]\badr[12]_INST_0_i_4_12 ;
  wire \badr[12]_INST_0_i_4_13 ;
  wire \badr[12]_INST_0_i_4_14 ;
  wire \badr[12]_INST_0_i_4_15 ;
  wire [12:0]\badr[12]_INST_0_i_4_16 ;
  wire [12:0]\badr[12]_INST_0_i_4_17 ;
  wire \badr[12]_INST_0_i_4_18 ;
  wire \badr[12]_INST_0_i_4_19 ;
  wire [12:0]\badr[12]_INST_0_i_4_2 ;
  wire [12:0]\badr[12]_INST_0_i_4_3 ;
  wire [12:0]\badr[12]_INST_0_i_4_4 ;
  wire [12:0]\badr[12]_INST_0_i_4_5 ;
  wire [12:0]\badr[12]_INST_0_i_4_6 ;
  wire [12:0]\badr[12]_INST_0_i_4_7 ;
  wire \badr[12]_INST_0_i_4_8 ;
  wire \badr[12]_INST_0_i_4_9 ;
  wire \badr[12]_INST_0_i_5 ;
  wire \badr[12]_INST_0_i_5_0 ;
  wire [12:0]\badr[12]_INST_0_i_5_1 ;
  wire [12:0]\badr[12]_INST_0_i_5_2 ;
  wire \badr[12]_INST_0_i_5_3 ;
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
  wire \bdatw[11]_INST_0_i_2 ;
  wire \bdatw[11]_INST_0_i_27_n_0 ;
  wire \bdatw[11]_INST_0_i_2_0 ;
  wire \bdatw[11]_INST_0_i_2_1 ;
  wire \bdatw[11]_INST_0_i_2_2 ;
  wire \bdatw[11]_INST_0_i_32_n_0 ;
  wire \bdatw[12]_INST_0_i_2 ;
  wire \bdatw[12]_INST_0_i_27_n_0 ;
  wire \bdatw[12]_INST_0_i_2_0 ;
  wire \bdatw[12]_INST_0_i_2_1 ;
  wire \bdatw[12]_INST_0_i_2_2 ;
  wire \bdatw[12]_INST_0_i_32_n_0 ;
  wire \bdatw[14]_INST_0_i_43_n_0 ;
  wire \bdatw[14]_INST_0_i_44_n_0 ;
  wire \bdatw[14]_INST_0_i_45_n_0 ;
  wire \bdatw[14]_INST_0_i_46_n_0 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_26_n_0 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_2_2 ;
  wire \bdatw[8]_INST_0_i_31_n_0 ;
  wire \bdatw[9]_INST_0_i_2 ;
  wire \bdatw[9]_INST_0_i_26_n_0 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_2_1 ;
  wire \bdatw[9]_INST_0_i_2_2 ;
  wire \bdatw[9]_INST_0_i_31_n_0 ;
  wire clk;
  wire gr0_bus1__0;
  wire gr0_bus1__0_0;
  wire gr1_bus1__0;
  wire gr2_bus1__0;
  wire gr2_bus1__0_0;
  wire gr3_bus1__0;
  wire gr3_bus1__0_1;
  wire gr4_bus1__0;
  wire gr4_bus1__0_2;
  wire gr5_bus1__0;
  wire gr5_bus1__0_3;
  wire gr6_bus1__0;
  wire gr7_bus1__0;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[0]_1 ;
  wire \grn_reg[10]_0 ;
  wire \grn_reg[10]_1 ;
  wire \grn_reg[11]_0 ;
  wire \grn_reg[11]_1 ;
  wire \grn_reg[12]_0 ;
  wire \grn_reg[12]_1 ;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[1]_1 ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[2]_1 ;
  wire \grn_reg[3]_0 ;
  wire \grn_reg[3]_1 ;
  wire [3:0]\grn_reg[4]_0 ;
  wire \grn_reg[4]_1 ;
  wire \grn_reg[4]_2 ;
  wire \grn_reg[5]_0 ;
  wire \grn_reg[5]_1 ;
  wire \grn_reg[6]_0 ;
  wire \grn_reg[6]_1 ;
  wire \grn_reg[6]_2 ;
  wire \grn_reg[7]_0 ;
  wire \grn_reg[7]_1 ;
  wire \grn_reg[8]_0 ;
  wire \grn_reg[8]_1 ;
  wire \grn_reg[9]_0 ;
  wire \grn_reg[9]_1 ;
  wire [0:0]out;

  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[0]_INST_0_i_16 
       (.I0(\badr[12]_INST_0_i_4_16 [0]),
        .I1(\badr[12]_INST_0_i_4_19 ),
        .I2(\badr[12]_INST_0_i_4_17 [0]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_4_8 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\badr[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[0]_INST_0_i_17 
       (.I0(\badr[12]_INST_0_i_4_2 [0]),
        .I1(\badr[12]_INST_0_i_4_10 ),
        .I2(\badr[12]_INST_0_i_4_3 [0]),
        .I3(\badr[12]_INST_0_i_4_11 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[0]_INST_0_i_18 
       (.I0(\badr[12]_INST_0_i_4_0 [0]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_1 [0]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[0]_INST_0_i_19 
       (.I0(\badr[12]_INST_0_i_4_6 [0]),
        .I1(\badr[12]_INST_0_i_4_14 ),
        .I2(\badr[12]_INST_0_i_4_7 [0]),
        .I3(\badr[12]_INST_0_i_4_15 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[0]_INST_0_i_20 
       (.I0(\badr[12]_INST_0_i_4_4 [0]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_5 [0]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[0]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[0]_INST_0_i_23 
       (.I0(\badr[12]_INST_0_i_5_1 [0]),
        .I1(\badr[12]_INST_0_i_5_0 ),
        .I2(\badr[12]_INST_0_i_5_2 [0]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_3 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\grn_reg[0]_1 ));
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[10]_INST_0_i_16 
       (.I0(\badr[12]_INST_0_i_4_16 [10]),
        .I1(\badr[12]_INST_0_i_4_19 ),
        .I2(\badr[12]_INST_0_i_4_17 [10]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_4_8 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\badr[10]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[10]_INST_0_i_17 
       (.I0(\badr[12]_INST_0_i_4_2 [10]),
        .I1(\badr[12]_INST_0_i_4_10 ),
        .I2(\badr[12]_INST_0_i_4_3 [10]),
        .I3(\badr[12]_INST_0_i_4_11 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[10]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[10]_INST_0_i_18 
       (.I0(\badr[12]_INST_0_i_4_0 [10]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_1 [10]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[10]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[10]_INST_0_i_19 
       (.I0(\badr[12]_INST_0_i_4_6 [10]),
        .I1(\badr[12]_INST_0_i_4_14 ),
        .I2(\badr[12]_INST_0_i_4_7 [10]),
        .I3(\badr[12]_INST_0_i_4_15 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[10]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[10]_INST_0_i_20 
       (.I0(\badr[12]_INST_0_i_4_4 [10]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_5 [10]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[10]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[10]_INST_0_i_23 
       (.I0(\badr[12]_INST_0_i_5_1 [10]),
        .I1(\badr[12]_INST_0_i_5_0 ),
        .I2(\badr[12]_INST_0_i_5_2 [10]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_3 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\grn_reg[10]_1 ));
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[11]_INST_0_i_16 
       (.I0(\badr[12]_INST_0_i_4_16 [11]),
        .I1(\badr[12]_INST_0_i_4_19 ),
        .I2(\badr[12]_INST_0_i_4_17 [11]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_4_8 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\badr[11]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[11]_INST_0_i_17 
       (.I0(\badr[12]_INST_0_i_4_2 [11]),
        .I1(\badr[12]_INST_0_i_4_10 ),
        .I2(\badr[12]_INST_0_i_4_3 [11]),
        .I3(\badr[12]_INST_0_i_4_11 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[11]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[11]_INST_0_i_18 
       (.I0(\badr[12]_INST_0_i_4_0 [11]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_1 [11]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[11]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[11]_INST_0_i_19 
       (.I0(\badr[12]_INST_0_i_4_6 [11]),
        .I1(\badr[12]_INST_0_i_4_14 ),
        .I2(\badr[12]_INST_0_i_4_7 [11]),
        .I3(\badr[12]_INST_0_i_4_15 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[11]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[11]_INST_0_i_20 
       (.I0(\badr[12]_INST_0_i_4_4 [11]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_5 [11]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[11]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[11]_INST_0_i_23 
       (.I0(\badr[12]_INST_0_i_5_1 [11]),
        .I1(\badr[12]_INST_0_i_5_0 ),
        .I2(\badr[12]_INST_0_i_5_2 [11]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_3 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\grn_reg[11]_1 ));
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[12]_INST_0_i_16 
       (.I0(\badr[12]_INST_0_i_4_16 [12]),
        .I1(\badr[12]_INST_0_i_4_19 ),
        .I2(\badr[12]_INST_0_i_4_17 [12]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_4_8 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\badr[12]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[12]_INST_0_i_17 
       (.I0(\badr[12]_INST_0_i_4_2 [12]),
        .I1(\badr[12]_INST_0_i_4_10 ),
        .I2(\badr[12]_INST_0_i_4_3 [12]),
        .I3(\badr[12]_INST_0_i_4_11 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[12]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[12]_INST_0_i_18 
       (.I0(\badr[12]_INST_0_i_4_0 [12]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_1 [12]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[12]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[12]_INST_0_i_19 
       (.I0(\badr[12]_INST_0_i_4_6 [12]),
        .I1(\badr[12]_INST_0_i_4_14 ),
        .I2(\badr[12]_INST_0_i_4_7 [12]),
        .I3(\badr[12]_INST_0_i_4_15 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[12]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[12]_INST_0_i_20 
       (.I0(\badr[12]_INST_0_i_4_4 [12]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_5 [12]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[12]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[12]_INST_0_i_23 
       (.I0(\badr[12]_INST_0_i_5_1 [12]),
        .I1(\badr[12]_INST_0_i_5_0 ),
        .I2(\badr[12]_INST_0_i_5_2 [12]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_3 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\grn_reg[12]_1 ));
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[1]_INST_0_i_16 
       (.I0(\badr[12]_INST_0_i_4_16 [1]),
        .I1(\badr[12]_INST_0_i_4_19 ),
        .I2(\badr[12]_INST_0_i_4_17 [1]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_4_8 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\badr[1]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[1]_INST_0_i_17 
       (.I0(\badr[12]_INST_0_i_4_2 [1]),
        .I1(\badr[12]_INST_0_i_4_10 ),
        .I2(\badr[12]_INST_0_i_4_3 [1]),
        .I3(\badr[12]_INST_0_i_4_11 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[1]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[1]_INST_0_i_18 
       (.I0(\badr[12]_INST_0_i_4_0 [1]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_1 [1]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[1]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[1]_INST_0_i_19 
       (.I0(\badr[12]_INST_0_i_4_6 [1]),
        .I1(\badr[12]_INST_0_i_4_14 ),
        .I2(\badr[12]_INST_0_i_4_7 [1]),
        .I3(\badr[12]_INST_0_i_4_15 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[1]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[1]_INST_0_i_20 
       (.I0(\badr[12]_INST_0_i_4_4 [1]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_5 [1]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[1]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[1]_INST_0_i_23 
       (.I0(\badr[12]_INST_0_i_5_1 [1]),
        .I1(\badr[12]_INST_0_i_5_0 ),
        .I2(\badr[12]_INST_0_i_5_2 [1]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_3 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\grn_reg[1]_1 ));
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[2]_INST_0_i_16 
       (.I0(\badr[12]_INST_0_i_4_16 [2]),
        .I1(\badr[12]_INST_0_i_4_19 ),
        .I2(\badr[12]_INST_0_i_4_17 [2]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_4_8 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\badr[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[2]_INST_0_i_17 
       (.I0(\badr[12]_INST_0_i_4_2 [2]),
        .I1(\badr[12]_INST_0_i_4_10 ),
        .I2(\badr[12]_INST_0_i_4_3 [2]),
        .I3(\badr[12]_INST_0_i_4_11 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[2]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[2]_INST_0_i_18 
       (.I0(\badr[12]_INST_0_i_4_0 [2]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_1 [2]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[2]_INST_0_i_19 
       (.I0(\badr[12]_INST_0_i_4_6 [2]),
        .I1(\badr[12]_INST_0_i_4_14 ),
        .I2(\badr[12]_INST_0_i_4_7 [2]),
        .I3(\badr[12]_INST_0_i_4_15 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[2]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[2]_INST_0_i_20 
       (.I0(\badr[12]_INST_0_i_4_4 [2]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_5 [2]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[2]_INST_0_i_23 
       (.I0(\badr[12]_INST_0_i_5_1 [2]),
        .I1(\badr[12]_INST_0_i_5_0 ),
        .I2(\badr[12]_INST_0_i_5_2 [2]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_3 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\grn_reg[2]_1 ));
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[3]_INST_0_i_16 
       (.I0(\badr[12]_INST_0_i_4_16 [3]),
        .I1(\badr[12]_INST_0_i_4_19 ),
        .I2(\badr[12]_INST_0_i_4_17 [3]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_4_8 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\badr[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[3]_INST_0_i_17 
       (.I0(\badr[12]_INST_0_i_4_2 [3]),
        .I1(\badr[12]_INST_0_i_4_10 ),
        .I2(\badr[12]_INST_0_i_4_3 [3]),
        .I3(\badr[12]_INST_0_i_4_11 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[3]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[3]_INST_0_i_18 
       (.I0(\badr[12]_INST_0_i_4_0 [3]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_1 [3]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[3]_INST_0_i_19 
       (.I0(\badr[12]_INST_0_i_4_6 [3]),
        .I1(\badr[12]_INST_0_i_4_14 ),
        .I2(\badr[12]_INST_0_i_4_7 [3]),
        .I3(\badr[12]_INST_0_i_4_15 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[3]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[3]_INST_0_i_20 
       (.I0(\badr[12]_INST_0_i_4_4 [3]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_5 [3]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[3]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[3]_INST_0_i_23 
       (.I0(\badr[12]_INST_0_i_5_1 [3]),
        .I1(\badr[12]_INST_0_i_5_0 ),
        .I2(\badr[12]_INST_0_i_5_2 [3]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_3 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\grn_reg[3]_1 ));
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[4]_INST_0_i_16 
       (.I0(\badr[12]_INST_0_i_4_16 [4]),
        .I1(\badr[12]_INST_0_i_4_19 ),
        .I2(\badr[12]_INST_0_i_4_17 [4]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_4_8 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\badr[4]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[4]_INST_0_i_17 
       (.I0(\badr[12]_INST_0_i_4_2 [4]),
        .I1(\badr[12]_INST_0_i_4_10 ),
        .I2(\badr[12]_INST_0_i_4_3 [4]),
        .I3(\badr[12]_INST_0_i_4_11 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[4]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[4]_INST_0_i_18 
       (.I0(\badr[12]_INST_0_i_4_0 [4]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_1 [4]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[4]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[4]_INST_0_i_19 
       (.I0(\badr[12]_INST_0_i_4_6 [4]),
        .I1(\badr[12]_INST_0_i_4_14 ),
        .I2(\badr[12]_INST_0_i_4_7 [4]),
        .I3(\badr[12]_INST_0_i_4_15 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[4]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[4]_INST_0_i_20 
       (.I0(\badr[12]_INST_0_i_4_4 [4]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_5 [4]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[4]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[4]_INST_0_i_23 
       (.I0(\badr[12]_INST_0_i_5_1 [4]),
        .I1(\badr[12]_INST_0_i_5_0 ),
        .I2(\badr[12]_INST_0_i_5_2 [4]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_3 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\grn_reg[4]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[4]_INST_0_i_4 
       (.I0(\badr[4]_INST_0_i_16_n_0 ),
        .I1(\badr[4]_INST_0_i_17_n_0 ),
        .I2(\badr[4]_INST_0_i_18_n_0 ),
        .I3(\badr[4]_INST_0_i_19_n_0 ),
        .I4(\badr[4]_INST_0_i_20_n_0 ),
        .I5(\badr[4]_INST_0_i_1 ),
        .O(\grn_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[5]_INST_0_i_16 
       (.I0(\badr[12]_INST_0_i_4_16 [5]),
        .I1(\badr[12]_INST_0_i_4_19 ),
        .I2(\badr[12]_INST_0_i_4_17 [5]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_4_8 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\badr[5]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[5]_INST_0_i_17 
       (.I0(\badr[12]_INST_0_i_4_2 [5]),
        .I1(\badr[12]_INST_0_i_4_10 ),
        .I2(\badr[12]_INST_0_i_4_3 [5]),
        .I3(\badr[12]_INST_0_i_4_11 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[5]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[5]_INST_0_i_18 
       (.I0(\badr[12]_INST_0_i_4_0 [5]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_1 [5]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[5]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[5]_INST_0_i_19 
       (.I0(\badr[12]_INST_0_i_4_6 [5]),
        .I1(\badr[12]_INST_0_i_4_14 ),
        .I2(\badr[12]_INST_0_i_4_7 [5]),
        .I3(\badr[12]_INST_0_i_4_15 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[5]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[5]_INST_0_i_20 
       (.I0(\badr[12]_INST_0_i_4_4 [5]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_5 [5]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[5]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[5]_INST_0_i_23 
       (.I0(\badr[12]_INST_0_i_5_1 [5]),
        .I1(\badr[12]_INST_0_i_5_0 ),
        .I2(\badr[12]_INST_0_i_5_2 [5]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_3 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\grn_reg[5]_1 ));
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[6]_INST_0_i_16 
       (.I0(\badr[12]_INST_0_i_4_16 [6]),
        .I1(\badr[12]_INST_0_i_4_19 ),
        .I2(\badr[12]_INST_0_i_4_17 [6]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_4_8 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\badr[6]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[6]_INST_0_i_17 
       (.I0(\badr[12]_INST_0_i_4_2 [6]),
        .I1(\badr[12]_INST_0_i_4_10 ),
        .I2(\badr[12]_INST_0_i_4_3 [6]),
        .I3(\badr[12]_INST_0_i_4_11 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[6]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[6]_INST_0_i_18 
       (.I0(\badr[12]_INST_0_i_4_0 [6]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_1 [6]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[6]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[6]_INST_0_i_19 
       (.I0(\badr[12]_INST_0_i_4_6 [6]),
        .I1(\badr[12]_INST_0_i_4_14 ),
        .I2(\badr[12]_INST_0_i_4_7 [6]),
        .I3(\badr[12]_INST_0_i_4_15 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[6]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[6]_INST_0_i_20 
       (.I0(\badr[12]_INST_0_i_4_4 [6]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_5 [6]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[6]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[6]_INST_0_i_23 
       (.I0(\badr[12]_INST_0_i_5_1 [6]),
        .I1(\badr[12]_INST_0_i_5_0 ),
        .I2(\badr[12]_INST_0_i_5_2 [6]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_3 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\grn_reg[6]_2 ));
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[7]_INST_0_i_16 
       (.I0(\badr[12]_INST_0_i_4_16 [7]),
        .I1(\badr[12]_INST_0_i_4_19 ),
        .I2(\badr[12]_INST_0_i_4_17 [7]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_4_8 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\badr[7]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[7]_INST_0_i_17 
       (.I0(\badr[12]_INST_0_i_4_2 [7]),
        .I1(\badr[12]_INST_0_i_4_10 ),
        .I2(\badr[12]_INST_0_i_4_3 [7]),
        .I3(\badr[12]_INST_0_i_4_11 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[7]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[7]_INST_0_i_18 
       (.I0(\badr[12]_INST_0_i_4_0 [7]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_1 [7]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[7]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[7]_INST_0_i_19 
       (.I0(\badr[12]_INST_0_i_4_6 [7]),
        .I1(\badr[12]_INST_0_i_4_14 ),
        .I2(\badr[12]_INST_0_i_4_7 [7]),
        .I3(\badr[12]_INST_0_i_4_15 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[7]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[7]_INST_0_i_20 
       (.I0(\badr[12]_INST_0_i_4_4 [7]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_5 [7]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[7]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[7]_INST_0_i_23 
       (.I0(\badr[12]_INST_0_i_5_1 [7]),
        .I1(\badr[12]_INST_0_i_5_0 ),
        .I2(\badr[12]_INST_0_i_5_2 [7]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_3 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\grn_reg[7]_1 ));
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[8]_INST_0_i_16 
       (.I0(\badr[12]_INST_0_i_4_16 [8]),
        .I1(\badr[12]_INST_0_i_4_19 ),
        .I2(\badr[12]_INST_0_i_4_17 [8]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_4_8 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\badr[8]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[8]_INST_0_i_17 
       (.I0(\badr[12]_INST_0_i_4_2 [8]),
        .I1(\badr[12]_INST_0_i_4_10 ),
        .I2(\badr[12]_INST_0_i_4_3 [8]),
        .I3(\badr[12]_INST_0_i_4_11 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[8]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[8]_INST_0_i_18 
       (.I0(\badr[12]_INST_0_i_4_0 [8]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_1 [8]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[8]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[8]_INST_0_i_19 
       (.I0(\badr[12]_INST_0_i_4_6 [8]),
        .I1(\badr[12]_INST_0_i_4_14 ),
        .I2(\badr[12]_INST_0_i_4_7 [8]),
        .I3(\badr[12]_INST_0_i_4_15 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[8]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[8]_INST_0_i_20 
       (.I0(\badr[12]_INST_0_i_4_4 [8]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_5 [8]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[8]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[8]_INST_0_i_23 
       (.I0(\badr[12]_INST_0_i_5_1 [8]),
        .I1(\badr[12]_INST_0_i_5_0 ),
        .I2(\badr[12]_INST_0_i_5_2 [8]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_3 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\grn_reg[8]_1 ));
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
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[9]_INST_0_i_16 
       (.I0(\badr[12]_INST_0_i_4_16 [9]),
        .I1(\badr[12]_INST_0_i_4_19 ),
        .I2(\badr[12]_INST_0_i_4_17 [9]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_4_8 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\badr[9]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[9]_INST_0_i_17 
       (.I0(\badr[12]_INST_0_i_4_2 [9]),
        .I1(\badr[12]_INST_0_i_4_10 ),
        .I2(\badr[12]_INST_0_i_4_3 [9]),
        .I3(\badr[12]_INST_0_i_4_11 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[9]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[9]_INST_0_i_18 
       (.I0(\badr[12]_INST_0_i_4_0 [9]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_1 [9]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[9]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F888)) 
    \badr[9]_INST_0_i_19 
       (.I0(\badr[12]_INST_0_i_4_6 [9]),
        .I1(\badr[12]_INST_0_i_4_14 ),
        .I2(\badr[12]_INST_0_i_4_7 [9]),
        .I3(\badr[12]_INST_0_i_4_15 ),
        .I4(\badr[12]_INST_0_i_4_12 [1]),
        .I5(\badr[12]_INST_0_i_4_12 [0]),
        .O(\badr[9]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[9]_INST_0_i_20 
       (.I0(\badr[12]_INST_0_i_4_4 [9]),
        .I1(\badr[12]_INST_0_i_4_8 ),
        .I2(\badr[12]_INST_0_i_4_5 [9]),
        .I3(\badr[12]_INST_0_i_4_13 ),
        .I4(\badr[12]_INST_0_i_5_0 ),
        .I5(\badr[12]_INST_0_i_4_9 ),
        .O(\badr[9]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF800880000000000)) 
    \badr[9]_INST_0_i_23 
       (.I0(\badr[12]_INST_0_i_5_1 [9]),
        .I1(\badr[12]_INST_0_i_5_0 ),
        .I2(\badr[12]_INST_0_i_5_2 [9]),
        .I3(\badr[12]_INST_0_i_5 ),
        .I4(\badr[12]_INST_0_i_5_3 ),
        .I5(\badr[12]_INST_0_i_4_18 ),
        .O(\grn_reg[9]_1 ));
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
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[11]_INST_0_i_12 
       (.I0(\bdatw[11]_INST_0_i_27_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .I2(\bdatw[11]_INST_0_i_2_0 ),
        .I3(\bdatw[11]_INST_0_i_2_1 ),
        .I4(\bdatw[11]_INST_0_i_2_2 ),
        .I5(\bdatw[11]_INST_0_i_32_n_0 ),
        .O(\grn_reg[4]_0 [2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_27 
       (.I0(\badr[12]_INST_0_i_5_1 [3]),
        .I1(gr2_bus1__0_0),
        .I2(\badr[12]_INST_0_i_5_2 [3]),
        .I3(gr3_bus1__0_1),
        .O(\bdatw[11]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_32 
       (.I0(\badr[12]_INST_0_i_4_16 [3]),
        .I1(gr4_bus1__0_2),
        .I2(\badr[12]_INST_0_i_4_17 [3]),
        .I3(gr5_bus1__0_3),
        .O(\bdatw[11]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[12]_INST_0_i_12 
       (.I0(\bdatw[12]_INST_0_i_27_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2 ),
        .I2(\bdatw[12]_INST_0_i_2_0 ),
        .I3(\bdatw[12]_INST_0_i_2_1 ),
        .I4(\bdatw[12]_INST_0_i_2_2 ),
        .I5(\bdatw[12]_INST_0_i_32_n_0 ),
        .O(\grn_reg[4]_0 [3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_27 
       (.I0(\badr[12]_INST_0_i_5_1 [4]),
        .I1(gr2_bus1__0_0),
        .I2(\badr[12]_INST_0_i_5_2 [4]),
        .I3(gr3_bus1__0_1),
        .O(\bdatw[12]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_32 
       (.I0(\badr[12]_INST_0_i_4_16 [4]),
        .I1(gr4_bus1__0_2),
        .I2(\badr[12]_INST_0_i_4_17 [4]),
        .I3(gr5_bus1__0_3),
        .O(\bdatw[12]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_24 
       (.I0(out),
        .I1(gr0_bus1__0_0),
        .I2(\bdatw[14]_INST_0_i_43_n_0 ),
        .I3(\bdatw[14]_INST_0_i_44_n_0 ),
        .I4(\bdatw[14]_INST_0_i_45_n_0 ),
        .I5(\bdatw[14]_INST_0_i_46_n_0 ),
        .O(\grn_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_43 
       (.I0(\badr[12]_INST_0_i_4_4 [6]),
        .I1(gr5_bus1__0),
        .I2(\badr[12]_INST_0_i_4_5 [6]),
        .I3(gr6_bus1__0),
        .O(\bdatw[14]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_44 
       (.I0(\badr[12]_INST_0_i_4_6 [6]),
        .I1(gr7_bus1__0),
        .I2(\badr[12]_INST_0_i_4_7 [6]),
        .I3(gr0_bus1__0),
        .O(\bdatw[14]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_45 
       (.I0(\badr[12]_INST_0_i_4_0 [6]),
        .I1(gr1_bus1__0),
        .I2(\badr[12]_INST_0_i_4_1 [6]),
        .I3(gr2_bus1__0),
        .O(\bdatw[14]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_46 
       (.I0(\badr[12]_INST_0_i_4_2 [6]),
        .I1(gr3_bus1__0),
        .I2(\badr[12]_INST_0_i_4_3 [6]),
        .I3(gr4_bus1__0),
        .O(\bdatw[14]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[8]_INST_0_i_11 
       (.I0(\bdatw[8]_INST_0_i_26_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .I4(\bdatw[8]_INST_0_i_2_2 ),
        .I5(\bdatw[8]_INST_0_i_31_n_0 ),
        .O(\grn_reg[4]_0 [0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_26 
       (.I0(\badr[12]_INST_0_i_5_1 [0]),
        .I1(gr2_bus1__0_0),
        .I2(\badr[12]_INST_0_i_5_2 [0]),
        .I3(gr3_bus1__0_1),
        .O(\bdatw[8]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_31 
       (.I0(\badr[12]_INST_0_i_4_16 [0]),
        .I1(gr4_bus1__0_2),
        .I2(\badr[12]_INST_0_i_4_17 [0]),
        .I3(gr5_bus1__0_3),
        .O(\bdatw[8]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[9]_INST_0_i_11 
       (.I0(\bdatw[9]_INST_0_i_26_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\bdatw[9]_INST_0_i_2_1 ),
        .I4(\bdatw[9]_INST_0_i_2_2 ),
        .I5(\bdatw[9]_INST_0_i_31_n_0 ),
        .O(\grn_reg[4]_0 [1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_26 
       (.I0(\badr[12]_INST_0_i_5_1 [1]),
        .I1(gr2_bus1__0_0),
        .I2(\badr[12]_INST_0_i_5_2 [1]),
        .I3(gr3_bus1__0_1),
        .O(\bdatw[9]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_31 
       (.I0(\badr[12]_INST_0_i_4_16 [1]),
        .I1(gr4_bus1__0_2),
        .I2(\badr[12]_INST_0_i_4_17 [1]),
        .I3(gr5_bus1__0_3),
        .O(\bdatw[9]_INST_0_i_31_n_0 ));
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
  wire \badr[11]_INST_0_i_24_n_0 ;
  wire \badr[11]_INST_0_i_24_n_1 ;
  wire \badr[11]_INST_0_i_24_n_2 ;
  wire \badr[11]_INST_0_i_24_n_3 ;
  wire \badr[11]_INST_0_i_25_n_0 ;
  wire \badr[11]_INST_0_i_26_n_0 ;
  wire \badr[11]_INST_0_i_27_n_0 ;
  wire \badr[11]_INST_0_i_28_n_0 ;
  wire \badr[15]_INST_0_i_31_n_1 ;
  wire \badr[15]_INST_0_i_31_n_2 ;
  wire \badr[15]_INST_0_i_31_n_3 ;
  wire \badr[15]_INST_0_i_60_n_0 ;
  wire \badr[15]_INST_0_i_61_n_0 ;
  wire \badr[15]_INST_0_i_62_n_0 ;
  wire \badr[15]_INST_0_i_63_n_0 ;
  wire \badr[7]_INST_0_i_24_n_0 ;
  wire \badr[7]_INST_0_i_24_n_1 ;
  wire \badr[7]_INST_0_i_24_n_2 ;
  wire \badr[7]_INST_0_i_24_n_3 ;
  wire \badr[7]_INST_0_i_25_n_0 ;
  wire \badr[7]_INST_0_i_26_n_0 ;
  wire \badr[7]_INST_0_i_27_n_0 ;
  wire \badr[7]_INST_0_i_28_n_0 ;
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
  CARRY4 \badr[11]_INST_0_i_24 
       (.CI(\badr[7]_INST_0_i_24_n_0 ),
        .CO({\badr[11]_INST_0_i_24_n_0 ,\badr[11]_INST_0_i_24_n_1 ,\badr[11]_INST_0_i_24_n_2 ,\badr[11]_INST_0_i_24_n_3 }),
        .CYINIT(\<const0> ),
        .DI(sp[11:8]),
        .O(sp_dec_0[10:7]),
        .S({\badr[11]_INST_0_i_25_n_0 ,\badr[11]_INST_0_i_26_n_0 ,\badr[11]_INST_0_i_27_n_0 ,\badr[11]_INST_0_i_28_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[11]_INST_0_i_25 
       (.I0(sp[11]),
        .O(\badr[11]_INST_0_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[11]_INST_0_i_26 
       (.I0(sp[10]),
        .O(\badr[11]_INST_0_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[11]_INST_0_i_27 
       (.I0(sp[9]),
        .O(\badr[11]_INST_0_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[11]_INST_0_i_28 
       (.I0(sp[8]),
        .O(\badr[11]_INST_0_i_28_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[15]_INST_0_i_31 
       (.CI(\badr[11]_INST_0_i_24_n_0 ),
        .CO({\badr[15]_INST_0_i_31_n_1 ,\badr[15]_INST_0_i_31_n_2 ,\badr[15]_INST_0_i_31_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,sp[14:12]}),
        .O(sp_dec_0[14:11]),
        .S({\badr[15]_INST_0_i_60_n_0 ,\badr[15]_INST_0_i_61_n_0 ,\badr[15]_INST_0_i_62_n_0 ,\badr[15]_INST_0_i_63_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_60 
       (.I0(sp[15]),
        .O(\badr[15]_INST_0_i_60_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_61 
       (.I0(sp[14]),
        .O(\badr[15]_INST_0_i_61_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_62 
       (.I0(sp[13]),
        .O(\badr[15]_INST_0_i_62_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_63 
       (.I0(sp[12]),
        .O(\badr[15]_INST_0_i_63_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[7]_INST_0_i_24 
       (.CI(\sp_reg[0]_i_2_n_0 ),
        .CO({\badr[7]_INST_0_i_24_n_0 ,\badr[7]_INST_0_i_24_n_1 ,\badr[7]_INST_0_i_24_n_2 ,\badr[7]_INST_0_i_24_n_3 }),
        .CYINIT(\<const0> ),
        .DI(sp[7:4]),
        .O(sp_dec_0[6:3]),
        .S({\badr[7]_INST_0_i_25_n_0 ,\badr[7]_INST_0_i_26_n_0 ,\badr[7]_INST_0_i_27_n_0 ,\badr[7]_INST_0_i_28_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[7]_INST_0_i_25 
       (.I0(sp[7]),
        .O(\badr[7]_INST_0_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[7]_INST_0_i_26 
       (.I0(sp[6]),
        .O(\badr[7]_INST_0_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[7]_INST_0_i_27 
       (.I0(sp[5]),
        .O(\badr[7]_INST_0_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[7]_INST_0_i_28 
       (.I0(sp[4]),
        .O(\badr[7]_INST_0_i_28_n_0 ));
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
    \sr_reg[1]_5 ,
    \sr_reg[1]_6 ,
    \sr_reg[1]_7 ,
    \sr_reg[1]_8 ,
    \sr_reg[1]_9 ,
    \sr_reg[1]_10 ,
    \sr_reg[1]_11 ,
    \sr_reg[1]_12 ,
    \sr_reg[1]_13 ,
    \sr_reg[1]_14 ,
    \sr_reg[1]_15 ,
    \sr_reg[1]_16 ,
    \sr_reg[1]_17 ,
    \sr_reg[1]_18 ,
    \sr_reg[1]_19 ,
    \sr_reg[1]_20 ,
    gr3_bus1__0,
    \sr_reg[6]_0 ,
    \sr_reg[6]_1 ,
    .irq_lev_0_sp_1(irq_lev_0_sn_1),
    \sr_reg[5]_0 ,
    fch_irq_req,
    \sr_reg[5]_1 ,
    \sr_reg[4]_0 ,
    \sr_reg[7]_0 ,
    \sr_reg[6]_2 ,
    S,
    \sr_reg[4]_1 ,
    \bdatw[8]_INST_0_i_11 ,
    out,
    \badr[15]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1_0 ,
    \badr[0]_INST_0_i_1 ,
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
    \badr[0]_INST_0_i_5_2 ,
    \badr[0]_INST_0_i_5_3 ,
    \badr[15]_INST_0_i_5_0 ,
    \badr[0]_INST_0_i_4 ,
    \badr[15]_INST_0_i_3 ,
    \iv[13]_i_18 ,
    abus_0,
    ctl_fetch_inferred_i_17,
    irq_lev,
    irq,
    ctl_fetch_fl_reg,
    ctl_fetch_fl_reg_0,
    ctl_fetch_fl_reg_1,
    \badr[15]_INST_0_i_55 ,
    Q,
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
  output \sr_reg[1]_5 ;
  output \sr_reg[1]_6 ;
  output \sr_reg[1]_7 ;
  output \sr_reg[1]_8 ;
  output \sr_reg[1]_9 ;
  output \sr_reg[1]_10 ;
  output \sr_reg[1]_11 ;
  output \sr_reg[1]_12 ;
  output \sr_reg[1]_13 ;
  output \sr_reg[1]_14 ;
  output \sr_reg[1]_15 ;
  output \sr_reg[1]_16 ;
  output \sr_reg[1]_17 ;
  output \sr_reg[1]_18 ;
  output \sr_reg[1]_19 ;
  output \sr_reg[1]_20 ;
  output gr3_bus1__0;
  output \sr_reg[6]_0 ;
  output \sr_reg[6]_1 ;
  output \sr_reg[5]_0 ;
  output fch_irq_req;
  output \sr_reg[5]_1 ;
  output \sr_reg[4]_0 ;
  output \sr_reg[7]_0 ;
  output \sr_reg[6]_2 ;
  output [0:0]S;
  output \sr_reg[4]_1 ;
  input \bdatw[8]_INST_0_i_11 ;
  input [15:0]out;
  input [15:0]\badr[15]_INST_0_i_1 ;
  input [15:0]\badr[15]_INST_0_i_1_0 ;
  input \badr[0]_INST_0_i_1 ;
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
  input \badr[0]_INST_0_i_5_2 ;
  input \badr[0]_INST_0_i_5_3 ;
  input [15:0]\badr[15]_INST_0_i_5_0 ;
  input \badr[0]_INST_0_i_4 ;
  input \badr[15]_INST_0_i_3 ;
  input \iv[13]_i_18 ;
  input [1:0]abus_0;
  input ctl_fetch_inferred_i_17;
  input [1:0]irq_lev;
  input irq;
  input ctl_fetch_fl_reg;
  input ctl_fetch_fl_reg_0;
  input ctl_fetch_fl_reg_1;
  input [4:0]\badr[15]_INST_0_i_55 ;
  input [0:0]Q;
  input [0:0]fadr;
  input [11:0]D;
  input clk;
  input \sr_reg[8]_0 ;
     output [15:0]sr;
  output irq_lev_0_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [11:0]D;
  wire [0:0]Q;
  wire [0:0]S;
  wire [1:0]abus_0;
  wire \badr[0]_INST_0_i_1 ;
  wire \badr[0]_INST_0_i_22_n_0 ;
  wire \badr[0]_INST_0_i_4 ;
  wire \badr[0]_INST_0_i_5_0 ;
  wire \badr[0]_INST_0_i_5_1 ;
  wire \badr[0]_INST_0_i_5_2 ;
  wire \badr[0]_INST_0_i_5_3 ;
  wire \badr[10]_INST_0_i_1 ;
  wire \badr[10]_INST_0_i_22_n_0 ;
  wire \badr[11]_INST_0_i_1 ;
  wire \badr[11]_INST_0_i_22_n_0 ;
  wire \badr[12]_INST_0_i_1 ;
  wire \badr[12]_INST_0_i_22_n_0 ;
  wire \badr[13]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_22_n_0 ;
  wire \badr[14]_INST_0_i_1 ;
  wire \badr[14]_INST_0_i_22_n_0 ;
  wire [15:0]\badr[15]_INST_0_i_1 ;
  wire [15:0]\badr[15]_INST_0_i_1_0 ;
  wire \badr[15]_INST_0_i_1_1 ;
  wire \badr[15]_INST_0_i_24_n_0 ;
  wire \badr[15]_INST_0_i_3 ;
  wire [4:0]\badr[15]_INST_0_i_55 ;
  wire [15:0]\badr[15]_INST_0_i_5_0 ;
  wire \badr[1]_INST_0_i_1 ;
  wire \badr[1]_INST_0_i_22_n_0 ;
  wire \badr[2]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_22_n_0 ;
  wire \badr[3]_INST_0_i_1 ;
  wire \badr[3]_INST_0_i_22_n_0 ;
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_22_n_0 ;
  wire \badr[5]_INST_0_i_1 ;
  wire \badr[5]_INST_0_i_22_n_0 ;
  wire \badr[6]_INST_0_i_1 ;
  wire \badr[6]_INST_0_i_22_n_0 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_22_n_0 ;
  wire \badr[8]_INST_0_i_1 ;
  wire \badr[8]_INST_0_i_22_n_0 ;
  wire \badr[9]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_22_n_0 ;
  wire \bank02/abuso2l/gr6_bus1__0 ;
  wire \bank02/abuso2l/gr7_bus1__0 ;
  wire [3:0]bank_sel;
  wire \bdatw[8]_INST_0_i_11 ;
  wire clk;
  wire ctl_fetch_fl_reg;
  wire ctl_fetch_fl_reg_0;
  wire ctl_fetch_fl_reg_1;
  wire ctl_fetch_inferred_i_17;
  wire ctl_fetch_inferred_i_43_n_0;
  wire [0:0]fadr;
  wire fch_irq_req;
  wire gr0_bus1__0;
  wire gr3_bus1__0;
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
  wire \iv[13]_i_18 ;
  wire [15:0]out;
  (* DONT_TOUCH *) wire [15:0]sr;
  wire \sr_reg[1]_0 ;
  wire \sr_reg[1]_1 ;
  wire \sr_reg[1]_10 ;
  wire \sr_reg[1]_11 ;
  wire \sr_reg[1]_12 ;
  wire \sr_reg[1]_13 ;
  wire \sr_reg[1]_14 ;
  wire \sr_reg[1]_15 ;
  wire \sr_reg[1]_16 ;
  wire \sr_reg[1]_17 ;
  wire \sr_reg[1]_18 ;
  wire \sr_reg[1]_19 ;
  wire \sr_reg[1]_2 ;
  wire \sr_reg[1]_20 ;
  wire \sr_reg[1]_3 ;
  wire \sr_reg[1]_4 ;
  wire \sr_reg[1]_5 ;
  wire \sr_reg[1]_6 ;
  wire \sr_reg[1]_7 ;
  wire \sr_reg[1]_8 ;
  wire \sr_reg[1]_9 ;
  wire \sr_reg[4]_0 ;
  wire \sr_reg[4]_1 ;
  wire \sr_reg[5]_0 ;
  wire \sr_reg[5]_1 ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[6]_2 ;
  wire \sr_reg[7]_0 ;
  wire \sr_reg[8]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[0]_INST_0_i_21 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_4 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(out[0]),
        .O(\sr_reg[1]_5 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[0]_INST_0_i_22 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_5_2 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(\badr[15]_INST_0_i_5_0 [0]),
        .O(\badr[0]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[0]_INST_0_i_5 
       (.I0(\badr[0]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_1 [0]),
        .I2(\bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_1_0 [0]),
        .I4(\bank02/abuso2l/gr7_bus1__0 ),
        .I5(\badr[0]_INST_0_i_1 ),
        .O(\grn_reg[0] ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[10]_INST_0_i_21 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_4 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(out[10]),
        .O(\sr_reg[1]_15 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[10]_INST_0_i_22 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_5_2 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(\badr[15]_INST_0_i_5_0 [10]),
        .O(\badr[10]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[10]_INST_0_i_5 
       (.I0(\badr[10]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_1 [10]),
        .I2(\bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_1_0 [10]),
        .I4(\bank02/abuso2l/gr7_bus1__0 ),
        .I5(\badr[10]_INST_0_i_1 ),
        .O(\grn_reg[10] ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[11]_INST_0_i_21 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_4 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(out[11]),
        .O(\sr_reg[1]_16 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[11]_INST_0_i_22 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_5_2 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(\badr[15]_INST_0_i_5_0 [11]),
        .O(\badr[11]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[11]_INST_0_i_5 
       (.I0(\badr[11]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_1 [11]),
        .I2(\bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_1_0 [11]),
        .I4(\bank02/abuso2l/gr7_bus1__0 ),
        .I5(\badr[11]_INST_0_i_1 ),
        .O(\grn_reg[11] ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[12]_INST_0_i_21 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_4 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(out[12]),
        .O(\sr_reg[1]_17 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[12]_INST_0_i_22 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_5_2 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(\badr[15]_INST_0_i_5_0 [12]),
        .O(\badr[12]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[12]_INST_0_i_5 
       (.I0(\badr[12]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_1 [12]),
        .I2(\bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_1_0 [12]),
        .I4(\bank02/abuso2l/gr7_bus1__0 ),
        .I5(\badr[12]_INST_0_i_1 ),
        .O(\grn_reg[12] ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[13]_INST_0_i_21 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_4 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(out[13]),
        .O(\sr_reg[1]_18 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[13]_INST_0_i_22 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_5_2 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(\badr[15]_INST_0_i_5_0 [13]),
        .O(\badr[13]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[13]_INST_0_i_5 
       (.I0(\badr[13]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_1 [13]),
        .I2(\bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_1_0 [13]),
        .I4(\bank02/abuso2l/gr7_bus1__0 ),
        .I5(\badr[13]_INST_0_i_1 ),
        .O(\grn_reg[13] ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[14]_INST_0_i_21 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_4 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(out[14]),
        .O(\sr_reg[1]_19 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[14]_INST_0_i_22 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_5_2 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(\badr[15]_INST_0_i_5_0 [14]),
        .O(\badr[14]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[14]_INST_0_i_5 
       (.I0(\badr[14]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_1 [14]),
        .I2(\bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_1_0 [14]),
        .I4(\bank02/abuso2l/gr7_bus1__0 ),
        .I5(\badr[14]_INST_0_i_1 ),
        .O(\grn_reg[14] ));
  LUT5 #(
    .INIT(32'h00000D3D)) 
    \badr[15]_INST_0_i_116 
       (.I0(sr[6]),
        .I1(\badr[15]_INST_0_i_55 [4]),
        .I2(\badr[15]_INST_0_i_55 [1]),
        .I3(sr[7]),
        .I4(Q),
        .O(\sr_reg[6]_2 ));
  LUT5 #(
    .INIT(32'h6F60CFCF)) 
    \badr[15]_INST_0_i_118 
       (.I0(sr[7]),
        .I1(sr[5]),
        .I2(\badr[15]_INST_0_i_55 [3]),
        .I3(sr[4]),
        .I4(\badr[15]_INST_0_i_55 [1]),
        .O(\sr_reg[7]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[15]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_3 ),
        .I1(sr[1]),
        .I2(sr[0]),
        .O(gr3_bus1__0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[15]_INST_0_i_23 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_4 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(out[15]),
        .O(\sr_reg[1]_20 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[15]_INST_0_i_24 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_5_2 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(\badr[15]_INST_0_i_5_0 [15]),
        .O(\badr[15]_INST_0_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \badr[15]_INST_0_i_25 
       (.I0(\badr[0]_INST_0_i_5_0 ),
        .I1(sr[0]),
        .I2(sr[1]),
        .O(\bank02/abuso2l/gr6_bus1__0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \badr[15]_INST_0_i_26 
       (.I0(\badr[0]_INST_0_i_5_1 ),
        .I1(sr[0]),
        .I2(sr[1]),
        .O(\bank02/abuso2l/gr7_bus1__0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_42 
       (.I0(sr[0]),
        .I1(sr[1]),
        .O(bank_sel[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_45 
       (.I0(sr[0]),
        .I1(sr[1]),
        .O(bank_sel[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_47 
       (.I0(sr[1]),
        .I1(sr[0]),
        .O(bank_sel[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_48 
       (.I0(sr[0]),
        .I1(sr[1]),
        .O(bank_sel[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[15]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_24_n_0 ),
        .I1(\badr[15]_INST_0_i_1 [15]),
        .I2(\bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_1_0 [15]),
        .I4(\bank02/abuso2l/gr7_bus1__0 ),
        .I5(\badr[15]_INST_0_i_1_1 ),
        .O(\grn_reg[15] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2EE2FF33)) 
    \badr[15]_INST_0_i_79 
       (.I0(sr[4]),
        .I1(\badr[15]_INST_0_i_55 [3]),
        .I2(sr[7]),
        .I3(sr[5]),
        .I4(\badr[15]_INST_0_i_55 [1]),
        .I5(\badr[15]_INST_0_i_55 [4]),
        .O(\sr_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[1]_INST_0_i_21 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_4 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(out[1]),
        .O(\sr_reg[1]_6 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[1]_INST_0_i_22 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_5_2 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(\badr[15]_INST_0_i_5_0 [1]),
        .O(\badr[1]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[1]_INST_0_i_5 
       (.I0(\badr[1]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_1 [1]),
        .I2(\bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_1_0 [1]),
        .I4(\bank02/abuso2l/gr7_bus1__0 ),
        .I5(\badr[1]_INST_0_i_1 ),
        .O(\grn_reg[1] ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[2]_INST_0_i_21 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_4 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(out[2]),
        .O(\sr_reg[1]_7 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[2]_INST_0_i_22 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_5_2 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(\badr[15]_INST_0_i_5_0 [2]),
        .O(\badr[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[2]_INST_0_i_5 
       (.I0(\badr[2]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_1 [2]),
        .I2(\bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_1_0 [2]),
        .I4(\bank02/abuso2l/gr7_bus1__0 ),
        .I5(\badr[2]_INST_0_i_1 ),
        .O(\grn_reg[2] ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[3]_INST_0_i_21 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_4 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(out[3]),
        .O(\sr_reg[1]_8 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[3]_INST_0_i_22 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_5_2 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(\badr[15]_INST_0_i_5_0 [3]),
        .O(\badr[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[3]_INST_0_i_5 
       (.I0(\badr[3]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_1 [3]),
        .I2(\bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_1_0 [3]),
        .I4(\bank02/abuso2l/gr7_bus1__0 ),
        .I5(\badr[3]_INST_0_i_1 ),
        .O(\grn_reg[3] ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[4]_INST_0_i_21 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_4 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(out[4]),
        .O(\sr_reg[1]_9 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[4]_INST_0_i_22 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_5_2 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(\badr[15]_INST_0_i_5_0 [4]),
        .O(\badr[4]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[4]_INST_0_i_5 
       (.I0(\badr[4]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_1 [4]),
        .I2(\bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_1_0 [4]),
        .I4(\bank02/abuso2l/gr7_bus1__0 ),
        .I5(\badr[4]_INST_0_i_1 ),
        .O(\grn_reg[4] ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[5]_INST_0_i_21 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_4 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(out[5]),
        .O(\sr_reg[1]_10 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[5]_INST_0_i_22 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_5_2 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(\badr[15]_INST_0_i_5_0 [5]),
        .O(\badr[5]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[5]_INST_0_i_5 
       (.I0(\badr[5]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_1 [5]),
        .I2(\bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_1_0 [5]),
        .I4(\bank02/abuso2l/gr7_bus1__0 ),
        .I5(\badr[5]_INST_0_i_1 ),
        .O(\grn_reg[5] ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[6]_INST_0_i_21 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_4 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(out[6]),
        .O(\sr_reg[1]_11 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[6]_INST_0_i_22 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_5_2 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(\badr[15]_INST_0_i_5_0 [6]),
        .O(\badr[6]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[6]_INST_0_i_5 
       (.I0(\badr[6]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_1 [6]),
        .I2(\bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_1_0 [6]),
        .I4(\bank02/abuso2l/gr7_bus1__0 ),
        .I5(\badr[6]_INST_0_i_1 ),
        .O(\grn_reg[6] ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[7]_INST_0_i_21 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_4 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(out[7]),
        .O(\sr_reg[1]_12 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[7]_INST_0_i_22 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_5_2 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(\badr[15]_INST_0_i_5_0 [7]),
        .O(\badr[7]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[7]_INST_0_i_5 
       (.I0(\badr[7]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_1 [7]),
        .I2(\bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_1_0 [7]),
        .I4(\bank02/abuso2l/gr7_bus1__0 ),
        .I5(\badr[7]_INST_0_i_1 ),
        .O(\grn_reg[7] ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[8]_INST_0_i_21 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_4 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(out[8]),
        .O(\sr_reg[1]_13 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[8]_INST_0_i_22 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_5_2 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(\badr[15]_INST_0_i_5_0 [8]),
        .O(\badr[8]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[8]_INST_0_i_5 
       (.I0(\badr[8]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_1 [8]),
        .I2(\bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_1_0 [8]),
        .I4(\bank02/abuso2l/gr7_bus1__0 ),
        .I5(\badr[8]_INST_0_i_1 ),
        .O(\grn_reg[8] ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[9]_INST_0_i_21 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_4 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(out[9]),
        .O(\sr_reg[1]_14 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[9]_INST_0_i_22 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\badr[0]_INST_0_i_5_2 ),
        .I3(\badr[0]_INST_0_i_5_3 ),
        .I4(\badr[15]_INST_0_i_5_0 [9]),
        .O(\badr[9]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[9]_INST_0_i_5 
       (.I0(\badr[9]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_1 [9]),
        .I2(\bank02/abuso2l/gr6_bus1__0 ),
        .I3(\badr[15]_INST_0_i_1_0 [9]),
        .I4(\bank02/abuso2l/gr7_bus1__0 ),
        .I5(\badr[9]_INST_0_i_1 ),
        .O(\grn_reg[9] ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[10]_INST_0_i_29 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\bdatw[8]_INST_0_i_11 ),
        .I3(out[2]),
        .O(\sr_reg[1]_2 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[11]_INST_0_i_29 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\bdatw[8]_INST_0_i_11 ),
        .I3(out[3]),
        .O(\sr_reg[1]_3 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[12]_INST_0_i_29 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\bdatw[8]_INST_0_i_11 ),
        .I3(out[4]),
        .O(\sr_reg[1]_4 ));
  LUT3 #(
    .INIT(8'h20)) 
    \bdatw[15]_INST_0_i_66 
       (.I0(\bdatw[8]_INST_0_i_11 ),
        .I1(sr[0]),
        .I2(sr[1]),
        .O(gr0_bus1__0));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[8]_INST_0_i_28 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\bdatw[8]_INST_0_i_11 ),
        .I3(out[0]),
        .O(\sr_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[9]_INST_0_i_28 
       (.I0(sr[1]),
        .I1(sr[0]),
        .I2(\bdatw[8]_INST_0_i_11 ),
        .I3(out[1]),
        .O(\sr_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h59A9A959)) 
    \ccmd[0]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_55 [0]),
        .I1(sr[4]),
        .I2(\badr[15]_INST_0_i_55 [3]),
        .I3(sr[5]),
        .I4(sr[7]),
        .O(\sr_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h1000551055555555)) 
    ctl_fetch_inferred_i_33
       (.I0(ctl_fetch_inferred_i_17),
        .I1(irq_lev[0]),
        .I2(sr[2]),
        .I3(sr[3]),
        .I4(irq_lev[1]),
        .I5(irq),
        .O(irq_lev_0_sn_1));
  LUT6 #(
    .INIT(64'hFFFFBEFF00008200)) 
    ctl_fetch_inferred_i_4
       (.I0(ctl_fetch_fl_reg),
        .I1(sr[5]),
        .I2(sr[7]),
        .I3(sr[4]),
        .I4(ctl_fetch_fl_reg_0),
        .I5(ctl_fetch_fl_reg_1),
        .O(\sr_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h8B888B88BBBB8B88)) 
    ctl_fetch_inferred_i_42
       (.I0(ctl_fetch_inferred_i_43_n_0),
        .I1(\badr[15]_INST_0_i_55 [1]),
        .I2(sr[5]),
        .I3(\badr[15]_INST_0_i_55 [3]),
        .I4(\badr[15]_INST_0_i_55 [2]),
        .I5(sr[6]),
        .O(\sr_reg[5]_1 ));
  LUT5 #(
    .INIT(32'h55012377)) 
    ctl_fetch_inferred_i_43
       (.I0(\badr[15]_INST_0_i_55 [2]),
        .I1(\badr[15]_INST_0_i_55 [3]),
        .I2(sr[4]),
        .I3(sr[5]),
        .I4(sr[7]),
        .O(ctl_fetch_inferred_i_43_n_0));
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
    .INIT(8'hAC)) 
    \iv[10]_i_19 
       (.I0(sr[6]),
        .I1(abus_0[0]),
        .I2(\iv[13]_i_18 ),
        .O(\sr_reg[6]_1 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \iv[13]_i_28 
       (.I0(sr[6]),
        .I1(\iv[13]_i_18 ),
        .I2(abus_0[1]),
        .O(\sr_reg[6]_0 ));
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
  wire \bank13/abuso2l/gr4_bus1__0 ;
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
  wire ctl_n_4;
  wire ctl_n_5;
  wire ctl_n_6;
  wire ctl_n_7;
  wire ctl_n_8;
  wire ctl_n_9;
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
  wire fch_n_111;
  wire fch_n_112;
  wire fch_n_113;
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
  wire fch_n_130;
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
  wire fch_n_178;
  wire fch_n_180;
  wire fch_n_184;
  wire fch_n_185;
  wire fch_n_186;
  wire fch_n_193;
  wire fch_n_194;
  wire fch_n_196;
  wire fch_n_197;
  wire fch_n_198;
  wire fch_n_199;
  wire fch_n_216;
  wire fch_n_217;
  wire fch_n_218;
  wire fch_n_219;
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
  wire fch_n_232;
  wire fch_n_233;
  wire fch_n_234;
  wire fch_n_235;
  wire fch_n_236;
  wire fch_n_237;
  wire fch_n_238;
  wire fch_n_239;
  wire fch_n_240;
  wire fch_n_241;
  wire fch_n_242;
  wire fch_n_243;
  wire fch_n_244;
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
  wire fch_n_260;
  wire fch_n_261;
  wire fch_n_262;
  wire fch_n_263;
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
  wire fch_n_42;
  wire fch_n_45;
  wire fch_n_46;
  wire fch_n_47;
  wire fch_n_48;
  wire fch_n_53;
  wire fch_n_56;
  wire fch_n_57;
  wire fch_n_58;
  wire fch_n_59;
  wire fch_n_62;
  wire fch_n_63;
  wire fch_n_64;
  wire fch_n_65;
  wire fch_n_66;
  wire fch_n_86;
  wire fch_n_87;
  wire fch_n_88;
  wire fch_n_89;
  wire fch_n_90;
  wire fch_n_91;
  wire fch_n_92;
  wire fch_n_93;
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
  wire rgf_n_2;
  wire rgf_n_20;
  wire rgf_n_21;
  wire rgf_n_22;
  wire rgf_n_23;
  wire rgf_n_24;
  wire rgf_n_25;
  wire rgf_n_26;
  wire rgf_n_27;
  wire rgf_n_28;
  wire rgf_n_287;
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
  wire rgf_n_298;
  wire rgf_n_299;
  wire rgf_n_3;
  wire rgf_n_30;
  wire rgf_n_300;
  wire rgf_n_301;
  wire rgf_n_302;
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
  wire rgf_n_33;
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
  wire rgf_n_42;
  wire rgf_n_43;
  wire rgf_n_435;
  wire rgf_n_436;
  wire rgf_n_437;
  wire rgf_n_438;
  wire rgf_n_44;
  wire rgf_n_45;
  wire rgf_n_455;
  wire rgf_n_456;
  wire rgf_n_457;
  wire rgf_n_458;
  wire rgf_n_459;
  wire rgf_n_46;
  wire rgf_n_460;
  wire rgf_n_461;
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
       (.DI({fch_n_329,fch_n_330,fch_n_331}),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .S({fch_n_332,fch_n_333,fch_n_334,fch_n_335}),
        .\iv[4]_i_3 ({fch_n_336,fch_n_337,fch_n_338,fch_n_339}),
        .\iv[4]_i_3_0 ({fch_n_340,fch_n_341,fch_n_342,fch_n_343}),
        .\sr[4]_i_23 (alu_n_17),
        .\sr[6]_i_2 (fch_n_308),
        .\sr[6]_i_2_0 ({fch_n_306,fch_n_307}),
        .tout__1_carry__0_i_8({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .tout__1_carry__1_i_8({alu_n_8,alu_n_9,alu_n_10,alu_n_11}),
        .tout__1_carry__2_i_8({\art/p_0_in ,alu_n_13,alu_n_14,alu_n_15}),
        .tout__1_carry__3_i_3(\art/add/tout ),
        .\tr_reg[10] ({fch_n_344,fch_n_345,fch_n_346,fch_n_347}),
        .\tr_reg[10]_0 ({fch_n_348,fch_n_349,fch_n_350,fch_n_351}),
        .\tr_reg[13] ({fch_n_302,fch_n_303,fch_n_304,fch_n_305}),
        .\tr_reg[13]_0 ({fch_n_298,fch_n_299,fch_n_300,fch_n_301}));
  mcvm_fsm ctl
       (.D(stat_nx),
        .Q(stat),
        .SR(\pcnt/p_0_in ),
        .brdy(brdy),
        .clk(clk),
        .crdy(crdy),
        .crdy_0(ctl_n_5),
        .crdy_1(ctl_n_15),
        .ctl_fetch_inferred_i_6(fch_n_180),
        .fch_irq_req(fch_irq_req),
        .out({fch_ir[15],fch_ir[12:6],fch_ir[3:0]}),
        .rgf_sr_dr(rgf_sr_dr),
        .rst_n_fl_reg(ctl_n_4),
        .\stat[0]_i_22 (fch_n_184),
        .\stat[1]_i_3 (fch_n_196),
        .\stat[1]_i_3_0 (fch_n_198),
        .\stat[1]_i_3_1 (fch_n_197),
        .\stat_reg[0]_0 (ctl_n_0),
        .\stat_reg[0]_1 (ctl_n_13),
        .\stat_reg[0]_2 (ctl_n_17),
        .\stat_reg[0]_3 (ctl_n_18),
        .\stat_reg[0]_4 (ctl_n_19),
        .\stat_reg[0]_5 (ctl_n_23),
        .\stat_reg[0]_6 (ctl_n_26),
        .\stat_reg[0]_7 (ctl_n_27),
        .\stat_reg[0]_8 (ctl_n_28),
        .\stat_reg[1]_0 (ctl_n_6),
        .\stat_reg[1]_1 (ctl_n_7),
        .\stat_reg[1]_10 (ctl_n_30),
        .\stat_reg[1]_11 (ctl_n_31),
        .\stat_reg[1]_2 (ctl_n_9),
        .\stat_reg[1]_3 (ctl_n_11),
        .\stat_reg[1]_4 (ctl_n_12),
        .\stat_reg[1]_5 (ctl_n_16),
        .\stat_reg[1]_6 (ctl_n_21),
        .\stat_reg[1]_7 (ctl_n_24),
        .\stat_reg[1]_8 (ctl_n_25),
        .\stat_reg[1]_9 (ctl_n_29),
        .\stat_reg[1]_i_10_0 (fch_n_178),
        .\stat_reg[2]_0 (ctl_n_8),
        .\stat_reg[2]_1 (ctl_n_10),
        .\stat_reg[2]_2 (ctl_n_14),
        .\stat_reg[2]_3 (ctl_n_20),
        .\stat_reg[2]_4 (ctl_n_22));
  mcvm_fch fch
       (.D({\sreg/p_0_in [13:10],\sreg/p_0_in [7:0]}),
        .DI({fch_n_329,fch_n_330,fch_n_331}),
        .E(fch_n_216),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .Q(stat),
        .S({fch_n_332,fch_n_333,fch_n_334,fch_n_335}),
        .SR(\pcnt/p_0_in ),
        .abus_0(abus_0),
        .abus_o(abus_o),
        .alu_sr_flag(alu_sr_flag),
        .badr(badr),
        .\badr[0]_INST_0_i_1 (fch_n_144),
        .\badr[10]_INST_0_i_1 ({fch_n_344,fch_n_345,fch_n_346,fch_n_347}),
        .\badr[14]_INST_0_i_1 ({fch_n_298,fch_n_299,fch_n_300,fch_n_301}),
        .\badr[15]_INST_0_i_1 (fch_n_140),
        .\badr[15]_INST_0_i_1_0 ({fch_n_302,fch_n_303,fch_n_304,fch_n_305}),
        .\badr[15]_INST_0_i_1_1 ({fch_n_306,fch_n_307}),
        .\badr[15]_INST_0_i_1_2 (fch_n_308),
        .\badr[15]_INST_0_i_2 ({\sreg/p_2_in [7:4],rgf_sr_ml,rgf_sr_dr,\sreg/p_2_in [1:0],rgf_sr_flag,rgf_sr_ie,sr_bank}),
        .\badr[15]_INST_0_i_29_0 (rgf_n_436),
        .\badr[15]_INST_0_i_57_0 (ctl_n_26),
        .\badr[15]_INST_0_i_65_0 (rgf_n_437),
        .\badr[15]_INST_0_i_65_1 (rgf_n_438),
        .\badr[15]_INST_0_i_92_0 (ctl_n_31),
        .\badr[6]_INST_0_i_1 ({fch_n_336,fch_n_337,fch_n_338,fch_n_339}),
        .bank_sel(bank_sel),
        .bbus_o(bbus_o),
        .\bcmd[1] (ctl_n_7),
        .bdatr({bdatr[14],bdatr[12:11]}),
        .bdatw(bdatw),
        .\bdatw[10]_INST_0_i_1_0 (rgf_n_313),
        .\bdatw[10]_INST_0_i_2_0 (rgf_n_352),
        .\bdatw[10]_INST_0_i_2_1 (rgf_n_357),
        .\bdatw[11]_INST_0_i_1_0 (rgf_n_314),
        .\bdatw[11]_INST_0_i_2_0 (rgf_n_353),
        .\bdatw[11]_INST_0_i_2_1 (rgf_n_358),
        .\bdatw[12] (bbus_b02),
        .\bdatw[12]_0 (rgf_n_346),
        .\bdatw[12]_INST_0_i_11_0 ({rgf_n_162,rgf_n_163,rgf_n_164,rgf_n_165,rgf_n_166}),
        .\bdatw[12]_INST_0_i_11_1 ({rgf_n_167,rgf_n_168,rgf_n_169,rgf_n_170,rgf_n_171}),
        .\bdatw[12]_INST_0_i_11_2 ({rgf_n_182,rgf_n_183,rgf_n_184,rgf_n_185,rgf_n_186}),
        .\bdatw[12]_INST_0_i_11_3 ({rgf_n_187,rgf_n_188,rgf_n_189,rgf_n_190,rgf_n_191}),
        .\bdatw[12]_INST_0_i_11_4 ({rgf_n_132,rgf_n_133,rgf_n_134,rgf_n_135,rgf_n_136}),
        .\bdatw[12]_INST_0_i_11_5 ({rgf_n_147,rgf_n_148,rgf_n_149,rgf_n_150,rgf_n_151}),
        .\bdatw[12]_INST_0_i_12 ({rgf_n_102,rgf_n_103,rgf_n_104,rgf_n_105,rgf_n_106}),
        .\bdatw[12]_INST_0_i_12_0 ({rgf_n_107,rgf_n_108,rgf_n_109,rgf_n_110,rgf_n_111}),
        .\bdatw[12]_INST_0_i_12_1 ({rgf_n_122,rgf_n_123,rgf_n_124,rgf_n_125,rgf_n_126}),
        .\bdatw[12]_INST_0_i_12_2 ({rgf_n_127,rgf_n_128,rgf_n_129,rgf_n_130,rgf_n_131}),
        .\bdatw[12]_INST_0_i_1_0 (rgf_n_315),
        .\bdatw[12]_INST_0_i_22_0 ({rgf_n_137,rgf_n_138,rgf_n_139,rgf_n_140,rgf_n_141}),
        .\bdatw[12]_INST_0_i_22_1 ({rgf_n_142,rgf_n_143,rgf_n_144,rgf_n_145,rgf_n_146}),
        .\bdatw[12]_INST_0_i_24_0 ({rgf_n_177,rgf_n_178,rgf_n_179,rgf_n_180,rgf_n_181}),
        .\bdatw[12]_INST_0_i_24_1 ({rgf_n_152,rgf_n_153,rgf_n_154,rgf_n_155,rgf_n_156}),
        .\bdatw[12]_INST_0_i_25_0 ({rgf_n_157,rgf_n_158,rgf_n_159,rgf_n_160,rgf_n_161}),
        .\bdatw[12]_INST_0_i_25_1 ({rgf_n_172,rgf_n_173,rgf_n_174,rgf_n_175,rgf_n_176}),
        .\bdatw[12]_INST_0_i_2_0 (fch_n_137),
        .\bdatw[12]_INST_0_i_2_1 (fch_n_138),
        .\bdatw[12]_INST_0_i_2_2 (rgf_n_354),
        .\bdatw[12]_INST_0_i_2_3 (rgf_n_359),
        .\bdatw[12]_INST_0_i_30_0 ({rgf_n_117,rgf_n_118,rgf_n_119,rgf_n_120,rgf_n_121}),
        .\bdatw[12]_INST_0_i_30_1 ({rgf_n_92,rgf_n_93,rgf_n_94,rgf_n_95,rgf_n_96}),
        .\bdatw[12]_INST_0_i_31_0 ({rgf_n_97,rgf_n_98,rgf_n_99,rgf_n_100,rgf_n_101}),
        .\bdatw[12]_INST_0_i_31_1 ({rgf_n_112,rgf_n_113,rgf_n_114,rgf_n_115,rgf_n_116}),
        .\bdatw[13]_0 (rgf_n_347),
        .\bdatw[13]_INST_0_i_1_0 (rgf_n_316),
        .\bdatw[13]_INST_0_i_2_0 (rgf_n_308),
        .\bdatw[14]_0 (rgf_n_348),
        .\bdatw[14]_INST_0_i_1_0 (rgf_n_317),
        .\bdatw[14]_INST_0_i_2_0 (rgf_n_309),
        .\bdatw[15]_0 (rgf_n_349),
        .\bdatw[15]_INST_0_i_1_0 ({rgf_n_38,rgf_n_39,rgf_n_40,rgf_n_41,rgf_n_42,rgf_n_43,rgf_n_44,rgf_n_45,rgf_n_46,rgf_n_47,rgf_n_48}),
        .\bdatw[15]_INST_0_i_1_1 ({rgf_n_49,rgf_n_50,rgf_n_51,rgf_n_52,rgf_n_53,rgf_n_54,rgf_n_55,rgf_n_56,rgf_n_57,rgf_n_58,rgf_n_59}),
        .\bdatw[15]_INST_0_i_1_2 (rgf_n_318),
        .\bdatw[15]_INST_0_i_1_3 (rgf_tr),
        .\bdatw[15]_INST_0_i_1_4 ({\ivec/p_0_in ,rgf_iv_ve}),
        .\bdatw[15]_INST_0_i_24_0 ({rgf_n_76,rgf_n_77,rgf_n_78,rgf_n_79,rgf_n_80,rgf_n_81,rgf_n_82,rgf_n_83,rgf_n_84,rgf_n_85,rgf_n_86,rgf_n_87,rgf_n_88,rgf_n_89,rgf_n_90,rgf_n_91}),
        .\bdatw[15]_INST_0_i_24_1 ({rgf_n_60,rgf_n_61,rgf_n_62,rgf_n_63,rgf_n_64,rgf_n_65,rgf_n_66,rgf_n_67,rgf_n_68,rgf_n_69,rgf_n_70,rgf_n_71,rgf_n_72,rgf_n_73,rgf_n_74,rgf_n_75}),
        .\bdatw[15]_INST_0_i_24_2 ({rgf_n_0,rgf_n_1,rgf_n_2,rgf_n_3,rgf_n_4,rgf_n_5,rgf_n_6,rgf_n_7,rgf_n_8,rgf_n_9,rgf_n_10,rgf_n_11,rgf_n_12,rgf_n_13,rgf_n_14,rgf_n_15}),
        .\bdatw[15]_INST_0_i_2_0 (rgf_n_310),
        .\bdatw[15]_INST_0_i_6_0 ({rgf_n_27,rgf_n_28,rgf_n_29,rgf_n_30,rgf_n_31,rgf_n_32,rgf_n_33,rgf_n_34,rgf_n_35,rgf_n_36,rgf_n_37}),
        .\bdatw[15]_INST_0_i_6_1 ({rgf_n_16,rgf_n_17,rgf_n_18,rgf_n_19,rgf_n_20,rgf_n_21,rgf_n_22,rgf_n_23,rgf_n_24,rgf_n_25,rgf_n_26}),
        .\bdatw[8]_INST_0_i_1_0 (rgf_n_311),
        .\bdatw[8]_INST_0_i_2_0 (fch_n_136),
        .\bdatw[8]_INST_0_i_2_1 (fch_n_139),
        .\bdatw[8]_INST_0_i_2_2 (rgf_n_350),
        .\bdatw[8]_INST_0_i_2_3 (rgf_n_355),
        .\bdatw[9]_INST_0_i_1_0 (rgf_n_312),
        .\bdatw[9]_INST_0_i_2_0 (fch_n_199),
        .\bdatw[9]_INST_0_i_2_1 (rgf_n_351),
        .\bdatw[9]_INST_0_i_2_2 (rgf_n_356),
        .bdatw_10_sp_1(rgf_n_344),
        .bdatw_11_sp_1(rgf_n_345),
        .bdatw_13_sp_1(rgf_n_339),
        .bdatw_14_sp_1(rgf_n_340),
        .bdatw_15_sp_1(rgf_n_341),
        .bdatw_8_sp_1(rgf_n_342),
        .bdatw_9_sp_1(rgf_n_343),
        .brdy(brdy),
        .brdy_0(fch_n_197),
        .brdy_1(fch_n_309),
        .cbus(cbus[14:0]),
        .cbus_i({cbus_i[14],cbus_i[12:11],cbus_i[7:0]}),
        .ccmd(ccmd),
        .\ccmd[0]_INST_0_i_1_0 (rgf_n_456),
        .\ccmd[0]_INST_0_i_1_1 (ctl_n_11),
        .\ccmd[0]_INST_0_i_2_0 (ctl_n_24),
        .\ccmd[0]_INST_0_i_4_0 (ctl_n_23),
        .\ccmd[0]_INST_0_i_4_1 (ctl_n_21),
        .\ccmd[1]_INST_0_i_6_0 (ctl_n_18),
        .\ccmd[2]_INST_0_i_3_0 (ctl_n_8),
        .\ccmd[2]_INST_0_i_7_0 (ctl_n_15),
        .\ccmd[3]_INST_0_i_8_0 (ctl_n_25),
        .\ccmd[3]_INST_0_i_8_1 (ctl_n_30),
        .ccmd_4_sp_1(ctl_n_12),
        .clk(clk),
        .cpuid(cpuid),
        .crdy(crdy),
        .crdy_0(fch_n_194),
        .ctl_fetch_ext_fl_reg_0(ctl_n_13),
        .ctl_fetch_fl_reg_0(ctl_fetch),
        .ctl_fetch_fl_reg_1(rgf_n_417),
        .ctl_fetch_fl_reg_2(ctl_n_5),
        .ctl_fetch_inferred_i_32_0(rgf_n_435),
        .ctl_fetch_inferred_i_3_0(ctl_n_22),
        .ctl_fetch_inferred_i_5_0(rgf_n_416),
        .fch_irq_req(fch_irq_req),
        .fch_pc(fch_pc),
        .fdat(fdat),
        .gr0_bus1__0(\bank02/bbuso/gr0_bus1__0 ),
        .gr0_bus1__0_11(\bank13/bbuso/gr0_bus1__0 ),
        .gr0_bus1__0_19(\bank13/bbuso2l/gr0_bus1__0 ),
        .gr1_bus1__0(\bank02/bbuso/gr1_bus1__0 ),
        .gr1_bus1__0_16(\bank13/bbuso2l/gr1_bus1__0 ),
        .gr1_bus1__0_6(\bank13/bbuso/gr1_bus1__0 ),
        .gr2_bus1__0(\bank02/bbuso/gr2_bus1__0 ),
        .gr2_bus1__0_17(\bank13/bbuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_3(\bank02/bbuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_4(\bank13/bbuso/gr2_bus1__0 ),
        .gr3_bus1__0(\bank02/bbuso/gr3_bus1__0 ),
        .gr3_bus1__0_12(\bank13/bbuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_2(\bank02/bbuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_5(\bank13/bbuso/gr3_bus1__0 ),
        .gr4_bus1__0(\bank02/bbuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_0(\bank02/bbuso/gr4_bus1__0 ),
        .gr4_bus1__0_14(\bank13/bbuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_20(\bank13/abuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_7(\bank13/bbuso/gr4_bus1__0 ),
        .gr5_bus1__0(\bank02/bbuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_1(\bank02/bbuso/gr5_bus1__0 ),
        .gr5_bus1__0_10(\bank13/bbuso/gr5_bus1__0 ),
        .gr5_bus1__0_15(\bank13/bbuso2l/gr5_bus1__0 ),
        .gr6_bus1__0(\bank02/bbuso/gr6_bus1__0 ),
        .gr6_bus1__0_13(\bank13/bbuso2l/gr6_bus1__0 ),
        .gr6_bus1__0_8(\bank13/bbuso/gr6_bus1__0 ),
        .gr7_bus1__0(\bank02/bbuso/gr7_bus1__0 ),
        .gr7_bus1__0_18(\bank13/bbuso2l/gr7_bus1__0 ),
        .gr7_bus1__0_9(\bank13/bbuso/gr7_bus1__0 ),
        .\grn_reg[0] (fch_n_42),
        .\grn_reg[0]_0 (fch_n_53),
        .\grn_reg[0]_1 (fch_n_62),
        .\grn_reg[1] (fch_n_45),
        .\grn_reg[1]_0 (fch_n_56),
        .\grn_reg[1]_1 (fch_n_63),
        .\grn_reg[2] (fch_n_46),
        .\grn_reg[2]_0 (fch_n_57),
        .\grn_reg[2]_1 (fch_n_64),
        .\grn_reg[3] (fch_n_47),
        .\grn_reg[3]_0 (fch_n_58),
        .\grn_reg[3]_1 (fch_n_65),
        .\grn_reg[4] (fch_n_48),
        .\grn_reg[4]_0 (fch_n_59),
        .\grn_reg[4]_1 (fch_n_66),
        .in0(ctl_fetch),
        .irq_lev(irq_lev),
        .irq_vec(irq_vec),
        .\iv[0]_i_2_0 (rgf_n_401),
        .\iv[0]_i_2_1 (rgf_n_410),
        .\iv[0]_i_2_2 (rgf_n_463),
        .\iv[0]_i_2_3 (rgf_n_459),
        .\iv[10]_i_13_0 (rgf_n_383),
        .\iv[10]_i_5_0 (rgf_n_478),
        .\iv[10]_i_5_1 (rgf_n_468),
        .\iv[10]_i_7_0 (rgf_n_391),
        .\iv[11]_i_2_0 (rgf_n_462),
        .\iv[11]_i_3_0 (rgf_n_474),
        .\iv[11]_i_3_1 (rgf_n_469),
        .\iv[12]_i_12_0 (rgf_n_402),
        .\iv[12]_i_19_0 (fch_n_135),
        .\iv[12]_i_2_0 (rgf_n_395),
        .\iv[12]_i_2_1 (rgf_n_477),
        .\iv[12]_i_3_0 (rgf_n_471),
        .\iv[12]_i_3_1 (rgf_n_465),
        .\iv[12]_i_3_2 (rgf_n_461),
        .\iv[13]_i_2_0 (rgf_n_385),
        .\iv[14]_i_12_0 (fch_n_326),
        .\iv[14]_i_14_0 (fch_n_141),
        .\iv[14]_i_17 (rgf_n_404),
        .\iv[14]_i_30_0 (fch_n_142),
        .\iv[14]_i_39 (fch_n_327),
        .\iv[14]_i_3_0 (rgf_n_381),
        .\iv[14]_i_42 (fch_n_143),
        .\iv[14]_i_4_0 (rgf_n_392),
        .\iv[14]_i_4_1 (rgf_n_458),
        .\iv[15]_i_15_0 (ctl_n_27),
        .\iv[15]_i_8_0 (ctl_n_17),
        .\iv[15]_i_8_1 (ctl_n_28),
        .\iv[15]_i_9_0 (ctl_n_29),
        .\iv[1]_i_2_0 (rgf_n_366),
        .\iv[2]_i_2_0 (rgf_n_406),
        .\iv[2]_i_2_1 (rgf_n_398),
        .\iv[2]_i_2_2 (rgf_n_411),
        .\iv[2]_i_2_3 (rgf_n_397),
        .\iv[2]_i_2_4 (rgf_n_396),
        .\iv[2]_i_2_5 (rgf_n_399),
        .\iv[3]_i_2_0 (rgf_n_375),
        .\iv[3]_i_2_1 (rgf_n_371),
        .\iv[3]_i_2_2 (rgf_n_475),
        .\iv[3]_i_2_3 (rgf_n_409),
        .\iv[3]_i_2_4 (rgf_n_372),
        .\iv[3]_i_2_5 (rgf_n_378),
        .\iv[3]_i_2_6 (rgf_n_373),
        .\iv[3]_i_7_0 (rgf_n_389),
        .\iv[4]_i_2_0 (rgf_n_387),
        .\iv[4]_i_2_1 (rgf_n_394),
        .\iv[4]_i_2_2 (rgf_n_403),
        .\iv[4]_i_7_0 (rgf_n_405),
        .\iv[5]_i_2_0 (rgf_n_415),
        .\iv[5]_i_2_1 (rgf_n_377),
        .\iv[5]_i_2_2 (rgf_n_464),
        .\iv[5]_i_2_3 (rgf_n_362),
        .\iv[6]_i_2_0 (rgf_n_382),
        .\iv[6]_i_2_1 (rgf_n_414),
        .\iv[7]_i_2_0 (rgf_n_413),
        .\iv[7]_i_2_1 (rgf_n_467),
        .\iv[7]_i_2_2 (rgf_n_476),
        .\iv[8]_i_2_0 (rgf_n_412),
        .\iv[8]_i_2_1 (rgf_n_376),
        .\iv[9]_i_2_0 (rgf_n_400),
        .\iv[9]_i_2_1 (rgf_n_365),
        .\iv[9]_i_2_2 (rgf_n_364),
        .\iv[9]_i_2_3 (rgf_n_369),
        .\iv[9]_i_2_4 (rgf_n_408),
        .\iv[9]_i_2_5 (rgf_n_455),
        .out({fch_ir[15:6],fch_ir[3:0]}),
        .\pc_reg[15] (\pcnt/p_1_in ),
        .\pc_reg[15]_0 (fadr),
        .read_cyc(read_cyc),
        .\read_cyc_reg[0] (ctl_n_20),
        .rst_n(rst_n),
        .rst_n_0(fch_n_328),
        .rst_n_fl_reg_0(fch_n_178),
        .rst_n_fl_reg_1(fch_n_180),
        .rst_n_fl_reg_2(fch_n_185),
        .rst_n_fl_reg_3(fch_n_186),
        .rst_n_fl_reg_4(fch_n_196),
        .\sp[15]_i_5_0 (ctl_n_9),
        .sp_dec_0(\sptr/sp_dec_0 ),
        .\sp_reg[0] (fch_n_133),
        .\sp_reg[0]_0 (fch_n_297),
        .\sp_reg[0]_1 (rgf_n_287),
        .\sp_reg[10] (fch_n_287),
        .\sp_reg[11] (fch_n_286),
        .\sp_reg[11]_0 ({rgf_n_295,rgf_n_296,rgf_n_297,rgf_n_298}),
        .\sp_reg[12] (fch_n_285),
        .\sp_reg[13] (fch_n_284),
        .\sp_reg[14] (fch_n_283),
        .\sp_reg[15] (fch_n_282),
        .\sp_reg[15]_0 (\sptr/p_0_in ),
        .\sp_reg[15]_1 ({rgf_n_299,rgf_n_300,rgf_n_301,rgf_n_302}),
        .\sp_reg[15]_2 (cbus[15]),
        .\sp_reg[1] (fch_n_296),
        .\sp_reg[2] (fch_n_295),
        .\sp_reg[3] (fch_n_294),
        .\sp_reg[3]_0 ({rgf_n_288,rgf_n_289,rgf_n_290}),
        .\sp_reg[4] (fch_n_293),
        .\sp_reg[5] (fch_n_292),
        .\sp_reg[6] (fch_n_291),
        .\sp_reg[7] (fch_n_290),
        .\sp_reg[7]_0 ({rgf_n_291,rgf_n_292,rgf_n_293,rgf_n_294}),
        .\sp_reg[8] (fch_n_289),
        .\sp_reg[9] (fch_n_288),
        .\sr[13]_i_3_0 (ctl_n_10),
        .\sr[4]_i_19 (rgf_n_388),
        .\sr[4]_i_20_0 (rgf_n_367),
        .\sr[4]_i_20_1 (rgf_n_460),
        .\sr[4]_i_20_2 (rgf_n_368),
        .\sr[4]_i_20_3 (rgf_n_470),
        .\sr[4]_i_20_4 (rgf_n_473),
        .\sr[4]_i_3_0 (alu_n_17),
        .\sr[4]_i_5_0 (rgf_n_390),
        .\sr[5]_i_2_0 (rgf_n_374),
        .\sr[6]_i_3_0 (rgf_n_472),
        .\sr[6]_i_5 (rgf_n_379),
        .\sr[7]_i_6_0 (rgf_n_466),
        .\sr_reg[0] (fch_n_106),
        .\sr_reg[0]_0 (fch_n_220),
        .\sr_reg[0]_1 (fch_n_224),
        .\sr_reg[0]_2 (fch_n_228),
        .\sr_reg[0]_3 (fch_n_232),
        .\sr_reg[0]_4 (fch_n_236),
        .\sr_reg[0]_5 (fch_n_240),
        .\sr_reg[0]_6 (fch_n_244),
        .\sr_reg[10] (fch_n_116),
        .\sr_reg[10]_0 (fch_n_198),
        .\sr_reg[11] (fch_n_117),
        .\sr_reg[12] (fch_n_118),
        .\sr_reg[13] (fch_n_119),
        .\sr_reg[14] (fch_n_120),
        .\sr_reg[15] (fch_n_121),
        .\sr_reg[1] (fch_n_107),
        .\sr_reg[1]_0 (fch_n_217),
        .\sr_reg[1]_1 (fch_n_218),
        .\sr_reg[1]_10 (fch_n_230),
        .\sr_reg[1]_11 (fch_n_231),
        .\sr_reg[1]_12 (fch_n_233),
        .\sr_reg[1]_13 (fch_n_234),
        .\sr_reg[1]_14 (fch_n_235),
        .\sr_reg[1]_15 (fch_n_237),
        .\sr_reg[1]_16 (fch_n_238),
        .\sr_reg[1]_17 (fch_n_239),
        .\sr_reg[1]_18 (fch_n_241),
        .\sr_reg[1]_19 (fch_n_242),
        .\sr_reg[1]_2 (fch_n_219),
        .\sr_reg[1]_20 (fch_n_243),
        .\sr_reg[1]_21 (fch_n_245),
        .\sr_reg[1]_22 (fch_n_246),
        .\sr_reg[1]_23 (fch_n_247),
        .\sr_reg[1]_3 (fch_n_221),
        .\sr_reg[1]_4 (fch_n_222),
        .\sr_reg[1]_5 (fch_n_223),
        .\sr_reg[1]_6 (fch_n_225),
        .\sr_reg[1]_7 (fch_n_226),
        .\sr_reg[1]_8 (fch_n_227),
        .\sr_reg[1]_9 (fch_n_229),
        .\sr_reg[2] (fch_n_108),
        .\sr_reg[3] (fch_n_109),
        .\sr_reg[4] (fch_n_110),
        .\sr_reg[5] (fch_n_111),
        .\sr_reg[6] (fch_n_112),
        .\sr_reg[6]_0 (\art/add/tout ),
        .\sr_reg[7] (fch_n_113),
        .\sr_reg[7]_0 ({\art/p_0_in ,alu_n_13,alu_n_14,alu_n_15}),
        .\sr_reg[8] (fch_n_114),
        .\sr_reg[9] (fch_n_115),
        .\stat[0]_i_11_0 (ctl_n_19),
        .\stat[0]_i_11_1 (ctl_n_0),
        .\stat[1]_i_9_0 (ctl_n_16),
        .\stat_reg[0] (bbus_sel_cr),
        .\stat_reg[0]_0 (fch_n_130),
        .\stat_reg[0]_1 (bcmd[1]),
        .\stat_reg[0]_2 (bcmd[0]),
        .\stat_reg[0]_3 ({fch_n_248,fch_n_249,fch_n_250,fch_n_251,fch_n_252,fch_n_253,fch_n_254,fch_n_255,fch_n_256,fch_n_257,fch_n_258,fch_n_259,fch_n_260,fch_n_261,fch_n_262,fch_n_263}),
        .\stat_reg[0]_4 (ctl_n_6),
        .\stat_reg[1] (bcmd[2]),
        .\stat_reg[1]_0 (ctl_n_4),
        .\stat_reg[1]_1 (ctl_n_14),
        .\stat_reg[2] (fch_n_86),
        .\stat_reg[2]_0 (fch_n_87),
        .\stat_reg[2]_1 (fch_n_104),
        .\stat_reg[2]_10 (fch_n_131),
        .\stat_reg[2]_11 (fch_n_132),
        .\stat_reg[2]_12 (fch_n_134),
        .\stat_reg[2]_13 (stat_nx),
        .\stat_reg[2]_14 (fch_n_184),
        .\stat_reg[2]_15 (fch_n_193),
        .\stat_reg[2]_16 (cbus_sel_cr),
        .\stat_reg[2]_2 (fch_n_105),
        .\stat_reg[2]_3 (fch_n_122),
        .\stat_reg[2]_4 (fch_n_123),
        .\stat_reg[2]_5 (fch_n_124),
        .\stat_reg[2]_6 (fch_n_125),
        .\stat_reg[2]_7 (fch_n_126),
        .\stat_reg[2]_8 (fch_n_127),
        .\stat_reg[2]_9 (fch_n_128),
        .tout__1_carry__0_i_1_0({fch_n_340,fch_n_341,fch_n_342,fch_n_343}),
        .tout__1_carry__1_i_1_0({fch_n_348,fch_n_349,fch_n_350,fch_n_351}),
        .\tr_reg[0] (fch_n_88),
        .\tr_reg[0]_0 (mem_n_6),
        .\tr_reg[10] (fch_n_98),
        .\tr_reg[10]_0 (mem_n_4),
        .\tr_reg[11] (fch_n_99),
        .\tr_reg[11]_0 ({alu_n_8,alu_n_9,alu_n_10,alu_n_11}),
        .\tr_reg[11]_1 (rgf_n_370),
        .\tr_reg[11]_2 (mem_n_14),
        .\tr_reg[12] (fch_n_100),
        .\tr_reg[13] (fch_n_101),
        .\tr_reg[13]_0 (mem_n_5),
        .\tr_reg[13]_1 (rgf_n_386),
        .\tr_reg[13]_2 (rgf_n_361),
        .\tr_reg[14] (fch_n_102),
        .\tr_reg[14]_0 (rgf_n_407),
        .\tr_reg[15] (fch_n_103),
        .\tr_reg[1] (fch_n_89),
        .\tr_reg[1]_0 (rgf_n_363),
        .\tr_reg[1]_1 (mem_n_7),
        .\tr_reg[2] (fch_n_90),
        .\tr_reg[2]_0 (mem_n_8),
        .\tr_reg[3] (fch_n_91),
        .\tr_reg[3]_0 (mem_n_9),
        .\tr_reg[4] (fch_n_92),
        .\tr_reg[4]_0 (mem_n_10),
        .\tr_reg[5] (fch_n_93),
        .\tr_reg[5]_0 (rgf_n_384),
        .\tr_reg[5]_1 (mem_n_11),
        .\tr_reg[6] (fch_n_94),
        .\tr_reg[6]_0 (rgf_n_380),
        .\tr_reg[6]_1 (mem_n_12),
        .\tr_reg[7] (fch_n_95),
        .\tr_reg[7]_0 ({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .\tr_reg[7]_1 (mem_n_13),
        .\tr_reg[8] (fch_n_96),
        .\tr_reg[8]_0 (mem_n_2),
        .\tr_reg[8]_1 (rgf_n_393),
        .\tr_reg[9] (fch_n_97),
        .\tr_reg[9]_0 (mem_n_3),
        .\tr_reg[9]_1 (rgf_n_457));
  mcvm_mem mem
       (.SR(\pcnt/p_0_in ),
        .alu_sr_flag(alu_sr_flag),
        .bcmd({bcmd[2],bcmd[0]}),
        .bdatr(bdatr),
        .brdy(brdy),
        .cbus(cbus[15]),
        .cbus_i({cbus_i[15],cbus_i[13],cbus_i[10:8]}),
        .\cbus_i[13] (mem_n_5),
        .\cbus_i[8] (mem_n_2),
        .\cbus_i[9] (mem_n_3),
        .clk(clk),
        .\read_cyc_reg[0] (read_cyc),
        .\read_cyc_reg[0]_0 (mem_n_7),
        .\read_cyc_reg[0]_1 (mem_n_11),
        .\read_cyc_reg[0]_2 (fch_n_309),
        .\read_cyc_reg[1] (mem_n_4),
        .\read_cyc_reg[1]_0 (mem_n_14),
        .\read_cyc_reg[2] (mem_n_6),
        .\read_cyc_reg[2]_0 (mem_n_8),
        .\read_cyc_reg[2]_1 (mem_n_9),
        .\read_cyc_reg[2]_2 (mem_n_10),
        .\read_cyc_reg[2]_3 (mem_n_12),
        .\read_cyc_reg[2]_4 (mem_n_13),
        .\tr_reg[15] (fch_n_131));
  mcvm_rgf rgf
       (.D({\sreg/p_0_in [13:10],\sreg/p_0_in [7:0]}),
        .E(fch_n_231),
        .Q(stat[0]),
        .SR(\pcnt/p_0_in ),
        .abus_0(abus_0),
        .\abus_o[0] (fch_n_297),
        .\abus_o[0]_0 (fch_n_88),
        .\abus_o[10] (fch_n_287),
        .\abus_o[10]_0 (fch_n_98),
        .\abus_o[11] (fch_n_286),
        .\abus_o[11]_0 (fch_n_99),
        .\abus_o[12] (fch_n_285),
        .\abus_o[12]_0 (fch_n_100),
        .\abus_o[13] (fch_n_284),
        .\abus_o[13]_0 (fch_n_101),
        .\abus_o[14] (fch_n_283),
        .\abus_o[14]_0 (fch_n_102),
        .\abus_o[15] (fch_n_282),
        .\abus_o[15]_0 (fch_n_103),
        .\abus_o[1] (fch_n_296),
        .\abus_o[1]_0 (fch_n_89),
        .\abus_o[2] (fch_n_295),
        .\abus_o[2]_0 (fch_n_90),
        .\abus_o[3] (fch_n_294),
        .\abus_o[3]_0 (fch_n_91),
        .\abus_o[4] (fch_n_293),
        .\abus_o[4]_0 (fch_n_92),
        .\abus_o[5] (fch_n_292),
        .\abus_o[5]_0 (fch_n_93),
        .\abus_o[6] (fch_n_291),
        .\abus_o[6]_0 (fch_n_94),
        .\abus_o[7] (fch_n_290),
        .\abus_o[7]_0 (fch_n_95),
        .\abus_o[8] (fch_n_289),
        .\abus_o[8]_0 (fch_n_96),
        .\abus_o[9] (fch_n_288),
        .\abus_o[9]_0 (fch_n_97),
        .\badr[0]_INST_0_i_1 (rgf_n_388),
        .\badr[0]_INST_0_i_1_0 (fch_n_106),
        .\badr[0]_INST_0_i_5 (fch_n_127),
        .\badr[10]_INST_0_i_1 (fch_n_116),
        .\badr[11]_INST_0_i_1 (fch_n_117),
        .\badr[12]_INST_0_i_1 (fch_n_118),
        .\badr[13]_INST_0_i_1 (rgf_n_367),
        .\badr[13]_INST_0_i_1_0 (fch_n_119),
        .\badr[13]_INST_0_i_4 (fch_n_104),
        .\badr[13]_INST_0_i_4_0 (fch_n_128),
        .\badr[13]_INST_0_i_4_1 (fch_n_105),
        .\badr[13]_INST_0_i_4_2 (fch_n_125),
        .\badr[13]_INST_0_i_4_3 (fch_n_123),
        .\badr[13]_INST_0_i_4_4 (fch_n_86),
        .\badr[13]_INST_0_i_4_5 (fch_n_126),
        .\badr[13]_INST_0_i_4_6 (fch_n_124),
        .\badr[13]_INST_0_i_4_7 (fch_n_87),
        .\badr[13]_INST_0_i_5 (fch_n_122),
        .\badr[14]_INST_0_i_1 (fch_n_120),
        .\badr[15]_INST_0_i_1 (rgf_n_383),
        .\badr[15]_INST_0_i_1_0 (rgf_n_402),
        .\badr[15]_INST_0_i_1_1 (rgf_n_472),
        .\badr[15]_INST_0_i_1_2 (fch_n_121),
        .\badr[15]_INST_0_i_55 (fch_ir[15:11]),
        .\badr[1]_INST_0_i_1 (rgf_n_379),
        .\badr[1]_INST_0_i_1_0 (fch_n_107),
        .\badr[2]_INST_0_i_1 (rgf_n_404),
        .\badr[2]_INST_0_i_1_0 (fch_n_108),
        .\badr[3]_INST_0_i_1 (rgf_n_389),
        .\badr[3]_INST_0_i_1_0 (fch_n_109),
        .\badr[4]_INST_0_i_1 (rgf_n_405),
        .\badr[4]_INST_0_i_1_0 (fch_n_110),
        .\badr[5]_INST_0_i_1 (fch_n_111),
        .\badr[6]_INST_0_i_1 (fch_n_112),
        .\badr[7]_INST_0_i_1 (fch_n_113),
        .\badr[8]_INST_0_i_1 (fch_n_114),
        .\badr[9]_INST_0_i_1 (fch_n_115),
        .badrx(badrx),
        .badrx_15_sp_1(fch_n_194),
        .bank_sel(bank_sel),
        .\bdatw[10]_INST_0_i_2 (fch_n_64),
        .\bdatw[10]_INST_0_i_2_0 (fch_n_57),
        .\bdatw[10]_INST_0_i_2_1 (fch_n_46),
        .\bdatw[11]_INST_0_i_2 (fch_n_65),
        .\bdatw[11]_INST_0_i_2_0 (fch_n_58),
        .\bdatw[11]_INST_0_i_2_1 (fch_n_47),
        .\bdatw[12]_INST_0_i_2 (fch_n_66),
        .\bdatw[12]_INST_0_i_2_0 (fch_n_59),
        .\bdatw[12]_INST_0_i_2_1 (fch_n_48),
        .\bdatw[13]_INST_0_i_10 (bbus_sel_cr),
        .\bdatw[8]_INST_0_i_11 (fch_n_130),
        .\bdatw[8]_INST_0_i_2 (rgf_n_371),
        .\bdatw[8]_INST_0_i_2_0 (rgf_n_375),
        .\bdatw[8]_INST_0_i_2_1 (rgf_n_461),
        .\bdatw[8]_INST_0_i_2_10 (fch_n_53),
        .\bdatw[8]_INST_0_i_2_11 (fch_n_42),
        .\bdatw[8]_INST_0_i_2_2 (rgf_n_462),
        .\bdatw[8]_INST_0_i_2_3 (rgf_n_464),
        .\bdatw[8]_INST_0_i_2_4 (rgf_n_465),
        .\bdatw[8]_INST_0_i_2_5 (rgf_n_466),
        .\bdatw[8]_INST_0_i_2_6 (rgf_n_467),
        .\bdatw[8]_INST_0_i_2_7 (rgf_n_470),
        .\bdatw[8]_INST_0_i_2_8 (rgf_n_471),
        .\bdatw[8]_INST_0_i_2_9 (fch_n_62),
        .\bdatw[9]_INST_0_i_2 (fch_n_63),
        .\bdatw[9]_INST_0_i_2_0 (fch_n_56),
        .\bdatw[9]_INST_0_i_2_1 (fch_n_45),
        .clk(clk),
        .ctl_fetch_fl_reg(ctl_n_6),
        .ctl_fetch_fl_reg_0(fch_n_185),
        .ctl_fetch_fl_reg_1(fch_n_193),
        .ctl_fetch_inferred_i_17(fch_n_186),
        .fadr(fadr),
        .fch_irq_req(fch_irq_req),
        .fch_pc(fch_pc),
        .gr0_bus1__0(\bank02/bbuso/gr0_bus1__0 ),
        .gr0_bus1__0_13(\bank13/bbuso/gr0_bus1__0 ),
        .gr0_bus1__0_5(\bank13/bbuso2l/gr0_bus1__0 ),
        .gr1_bus1__0(\bank02/bbuso/gr1_bus1__0 ),
        .gr1_bus1__0_18(\bank13/bbuso2l/gr1_bus1__0 ),
        .gr1_bus1__0_6(\bank13/bbuso/gr1_bus1__0 ),
        .gr2_bus1__0(\bank02/bbuso/gr2_bus1__0 ),
        .gr2_bus1__0_0(\bank02/bbuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_19(\bank13/bbuso2l/gr2_bus1__0 ),
        .gr2_bus1__0_7(\bank13/bbuso/gr2_bus1__0 ),
        .gr3_bus1__0(\bank02/bbuso/gr3_bus1__0 ),
        .gr3_bus1__0_1(\bank02/bbuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_14(\bank13/bbuso2l/gr3_bus1__0 ),
        .gr3_bus1__0_8(\bank13/bbuso/gr3_bus1__0 ),
        .gr4_bus1__0(\bank02/bbuso/gr4_bus1__0 ),
        .gr4_bus1__0_15(\bank13/bbuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_2(\bank02/bbuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_20(\bank13/abuso2l/gr4_bus1__0 ),
        .gr4_bus1__0_9(\bank13/bbuso/gr4_bus1__0 ),
        .gr5_bus1__0(\bank02/bbuso/gr5_bus1__0 ),
        .gr5_bus1__0_10(\bank13/bbuso/gr5_bus1__0 ),
        .gr5_bus1__0_16(\bank13/bbuso2l/gr5_bus1__0 ),
        .gr5_bus1__0_3(\bank02/bbuso2l/gr5_bus1__0 ),
        .gr6_bus1__0(\bank02/bbuso/gr6_bus1__0 ),
        .gr6_bus1__0_11(\bank13/bbuso/gr6_bus1__0 ),
        .gr6_bus1__0_17(\bank13/bbuso2l/gr6_bus1__0 ),
        .gr7_bus1__0(\bank02/bbuso/gr7_bus1__0 ),
        .gr7_bus1__0_12(\bank13/bbuso/gr7_bus1__0 ),
        .gr7_bus1__0_4(\bank13/bbuso2l/gr7_bus1__0 ),
        .\grn_reg[0] (rgf_n_350),
        .\grn_reg[0]_0 (rgf_n_355),
        .\grn_reg[10] (rgf_n_313),
        .\grn_reg[10]_0 (rgf_n_344),
        .\grn_reg[11] (rgf_n_314),
        .\grn_reg[11]_0 (rgf_n_345),
        .\grn_reg[12] (rgf_n_315),
        .\grn_reg[12]_0 (rgf_n_346),
        .\grn_reg[13] (rgf_n_316),
        .\grn_reg[13]_0 (rgf_n_347),
        .\grn_reg[14] (rgf_n_317),
        .\grn_reg[14]_0 (rgf_n_348),
        .\grn_reg[15] ({rgf_n_16,rgf_n_17,rgf_n_18,rgf_n_19,rgf_n_20,rgf_n_21,rgf_n_22,rgf_n_23,rgf_n_24,rgf_n_25,rgf_n_26}),
        .\grn_reg[15]_0 ({rgf_n_27,rgf_n_28,rgf_n_29,rgf_n_30,rgf_n_31,rgf_n_32,rgf_n_33,rgf_n_34,rgf_n_35,rgf_n_36,rgf_n_37}),
        .\grn_reg[15]_1 ({rgf_n_38,rgf_n_39,rgf_n_40,rgf_n_41,rgf_n_42,rgf_n_43,rgf_n_44,rgf_n_45,rgf_n_46,rgf_n_47,rgf_n_48}),
        .\grn_reg[15]_10 (fch_n_223),
        .\grn_reg[15]_11 (fch_n_219),
        .\grn_reg[15]_12 (fch_n_239),
        .\grn_reg[15]_13 (fch_n_235),
        .\grn_reg[15]_14 (fch_n_228),
        .\grn_reg[15]_15 (fch_n_224),
        .\grn_reg[15]_16 (fch_n_244),
        .\grn_reg[15]_17 (fch_n_240),
        .\grn_reg[15]_18 (fch_n_220),
        .\grn_reg[15]_19 (fch_n_216),
        .\grn_reg[15]_2 ({rgf_n_49,rgf_n_50,rgf_n_51,rgf_n_52,rgf_n_53,rgf_n_54,rgf_n_55,rgf_n_56,rgf_n_57,rgf_n_58,rgf_n_59}),
        .\grn_reg[15]_20 (fch_n_236),
        .\grn_reg[15]_21 (fch_n_232),
        .\grn_reg[15]_22 (fch_n_229),
        .\grn_reg[15]_23 (fch_n_225),
        .\grn_reg[15]_24 (fch_n_245),
        .\grn_reg[15]_25 (fch_n_241),
        .\grn_reg[15]_26 (fch_n_221),
        .\grn_reg[15]_27 (fch_n_217),
        .\grn_reg[15]_28 (fch_n_237),
        .\grn_reg[15]_29 (fch_n_233),
        .\grn_reg[15]_3 ({rgf_n_60,rgf_n_61,rgf_n_62,rgf_n_63,rgf_n_64,rgf_n_65,rgf_n_66,rgf_n_67,rgf_n_68,rgf_n_69,rgf_n_70,rgf_n_71,rgf_n_72,rgf_n_73,rgf_n_74,rgf_n_75}),
        .\grn_reg[15]_30 (fch_n_230),
        .\grn_reg[15]_31 (fch_n_226),
        .\grn_reg[15]_32 (fch_n_246),
        .\grn_reg[15]_33 (fch_n_242),
        .\grn_reg[15]_34 (fch_n_222),
        .\grn_reg[15]_35 (fch_n_218),
        .\grn_reg[15]_36 (fch_n_238),
        .\grn_reg[15]_37 (fch_n_234),
        .\grn_reg[15]_4 ({rgf_n_76,rgf_n_77,rgf_n_78,rgf_n_79,rgf_n_80,rgf_n_81,rgf_n_82,rgf_n_83,rgf_n_84,rgf_n_85,rgf_n_86,rgf_n_87,rgf_n_88,rgf_n_89,rgf_n_90,rgf_n_91}),
        .\grn_reg[15]_5 (rgf_n_318),
        .\grn_reg[15]_6 (rgf_n_349),
        .\grn_reg[15]_7 (fch_n_227),
        .\grn_reg[15]_8 (fch_n_247),
        .\grn_reg[15]_9 (fch_n_243),
        .\grn_reg[1] (rgf_n_351),
        .\grn_reg[1]_0 (rgf_n_356),
        .\grn_reg[2] (rgf_n_352),
        .\grn_reg[2]_0 (rgf_n_357),
        .\grn_reg[3] (rgf_n_353),
        .\grn_reg[3]_0 (rgf_n_358),
        .\grn_reg[4] ({rgf_n_92,rgf_n_93,rgf_n_94,rgf_n_95,rgf_n_96}),
        .\grn_reg[4]_0 ({rgf_n_97,rgf_n_98,rgf_n_99,rgf_n_100,rgf_n_101}),
        .\grn_reg[4]_1 ({rgf_n_102,rgf_n_103,rgf_n_104,rgf_n_105,rgf_n_106}),
        .\grn_reg[4]_10 ({rgf_n_147,rgf_n_148,rgf_n_149,rgf_n_150,rgf_n_151}),
        .\grn_reg[4]_11 ({rgf_n_152,rgf_n_153,rgf_n_154,rgf_n_155,rgf_n_156}),
        .\grn_reg[4]_12 ({rgf_n_157,rgf_n_158,rgf_n_159,rgf_n_160,rgf_n_161}),
        .\grn_reg[4]_13 ({rgf_n_162,rgf_n_163,rgf_n_164,rgf_n_165,rgf_n_166}),
        .\grn_reg[4]_14 ({rgf_n_167,rgf_n_168,rgf_n_169,rgf_n_170,rgf_n_171}),
        .\grn_reg[4]_15 ({rgf_n_172,rgf_n_173,rgf_n_174,rgf_n_175,rgf_n_176}),
        .\grn_reg[4]_16 ({rgf_n_177,rgf_n_178,rgf_n_179,rgf_n_180,rgf_n_181}),
        .\grn_reg[4]_17 ({rgf_n_182,rgf_n_183,rgf_n_184,rgf_n_185,rgf_n_186}),
        .\grn_reg[4]_18 ({rgf_n_187,rgf_n_188,rgf_n_189,rgf_n_190,rgf_n_191}),
        .\grn_reg[4]_19 (bbus_b02),
        .\grn_reg[4]_2 ({rgf_n_107,rgf_n_108,rgf_n_109,rgf_n_110,rgf_n_111}),
        .\grn_reg[4]_20 (rgf_n_354),
        .\grn_reg[4]_21 (rgf_n_359),
        .\grn_reg[4]_3 ({rgf_n_112,rgf_n_113,rgf_n_114,rgf_n_115,rgf_n_116}),
        .\grn_reg[4]_4 ({rgf_n_117,rgf_n_118,rgf_n_119,rgf_n_120,rgf_n_121}),
        .\grn_reg[4]_5 ({rgf_n_122,rgf_n_123,rgf_n_124,rgf_n_125,rgf_n_126}),
        .\grn_reg[4]_6 ({rgf_n_127,rgf_n_128,rgf_n_129,rgf_n_130,rgf_n_131}),
        .\grn_reg[4]_7 ({rgf_n_132,rgf_n_133,rgf_n_134,rgf_n_135,rgf_n_136}),
        .\grn_reg[4]_8 ({rgf_n_137,rgf_n_138,rgf_n_139,rgf_n_140,rgf_n_141}),
        .\grn_reg[4]_9 ({rgf_n_142,rgf_n_143,rgf_n_144,rgf_n_145,rgf_n_146}),
        .\grn_reg[5] (rgf_n_308),
        .\grn_reg[5]_0 (rgf_n_339),
        .\grn_reg[6] (rgf_n_309),
        .\grn_reg[6]_0 (rgf_n_340),
        .\grn_reg[7] (rgf_n_310),
        .\grn_reg[7]_0 (rgf_n_341),
        .\grn_reg[8] (rgf_n_311),
        .\grn_reg[8]_0 (rgf_n_342),
        .\grn_reg[9] (rgf_n_312),
        .\grn_reg[9]_0 (rgf_n_343),
        .irq(irq),
        .irq_lev(irq_lev),
        .irq_lev_0_sp_1(rgf_n_416),
        .\iv[11]_i_2 (fch_n_142),
        .\iv[11]_i_20 (rgf_n_373),
        .\iv[12]_i_18 (rgf_n_363),
        .\iv[12]_i_29 (rgf_n_414),
        .\iv[12]_i_8 (rgf_n_415),
        .\iv[13]_i_18 (rgf_n_384),
        .\iv[13]_i_2 (fch_n_135),
        .\iv[13]_i_22 (rgf_n_361),
        .\iv[13]_i_24 (rgf_n_413),
        .\iv[13]_i_25 (rgf_n_410),
        .\iv[13]_i_26 (rgf_n_411),
        .\iv[13]_i_27 (rgf_n_387),
        .\iv[13]_i_29 (rgf_n_362),
        .\iv[13]_i_29_0 (rgf_n_364),
        .\iv[13]_i_29_1 (rgf_n_369),
        .\iv[13]_i_29_2 (rgf_n_469),
        .\iv[13]_i_29_3 (rgf_n_473),
        .\iv[13]_i_2_0 (fch_n_136),
        .\iv[13]_i_2_1 (fch_n_134),
        .\iv[13]_i_2_2 (fch_n_132),
        .\iv[13]_i_31 (rgf_n_382),
        .\iv[13]_i_35 (rgf_n_399),
        .\iv[13]_i_8 (fch_n_138),
        .\iv[13]_i_8_0 (fch_n_139),
        .\iv[14]_i_14 (rgf_n_386),
        .\iv[14]_i_15 (fch_n_144),
        .\iv[14]_i_24 (rgf_n_385),
        .\iv[14]_i_24_0 (rgf_n_397),
        .\iv[14]_i_24_1 (rgf_n_400),
        .\iv[14]_i_26 (rgf_n_370),
        .\iv[14]_i_30 (rgf_n_393),
        .\iv[14]_i_30_0 (rgf_n_457),
        .\iv[14]_i_38 (rgf_n_407),
        .\iv[14]_i_39 (rgf_n_366),
        .\iv[14]_i_39_0 (rgf_n_460),
        .\iv[14]_i_4 (fch_n_143),
        .\iv[14]_i_40 (rgf_n_395),
        .\iv[14]_i_40_0 (rgf_n_398),
        .\iv[3]_i_6 (fch_n_199),
        .\iv[5]_i_19 (rgf_n_378),
        .\iv[5]_i_2 (fch_n_141),
        .\iv[6]_i_11 (rgf_n_380),
        .\iv[6]_i_2 (fch_n_137),
        .\iv[8]_i_18 (rgf_n_409),
        .\iv[8]_i_18_0 (rgf_n_412),
        .\iv[9]_i_19 (rgf_n_376),
        .\iv[9]_i_19_0 (rgf_n_381),
        .\iv[9]_i_19_1 (rgf_n_391),
        .\iv[9]_i_19_2 (rgf_n_392),
        .\iv[9]_i_19_3 (rgf_n_394),
        .\iv[9]_i_19_4 (rgf_n_408),
        .\iv[9]_i_19_5 (rgf_n_459),
        .\iv[9]_i_19_6 (rgf_n_463),
        .\iv[9]_i_19_7 (rgf_n_468),
        .\iv[9]_i_23 (rgf_n_377),
        .\iv[9]_i_6 (fch_n_140),
        .\iv_reg[15] ({\ivec/p_0_in ,rgf_iv_ve}),
        .out({rgf_n_0,rgf_n_1,rgf_n_2,rgf_n_3,rgf_n_4,rgf_n_5,rgf_n_6,rgf_n_7,rgf_n_8,rgf_n_9,rgf_n_10,rgf_n_11,rgf_n_12,rgf_n_13,rgf_n_14,rgf_n_15}),
        .\pc_reg[15] (\pcnt/p_1_in ),
        .rst_n(rst_n),
        .sp_dec_0(\sptr/sp_dec_0 ),
        .\sp_reg[11] ({rgf_n_295,rgf_n_296,rgf_n_297,rgf_n_298}),
        .\sp_reg[15] (\sptr/p_0_in ),
        .\sp_reg[15]_0 ({rgf_n_299,rgf_n_300,rgf_n_301,rgf_n_302}),
        .\sp_reg[15]_1 ({fch_n_248,fch_n_249,fch_n_250,fch_n_251,fch_n_252,fch_n_253,fch_n_254,fch_n_255,fch_n_256,fch_n_257,fch_n_258,fch_n_259,fch_n_260,fch_n_261,fch_n_262,fch_n_263}),
        .\sp_reg[1] ({rgf_n_288,rgf_n_289,rgf_n_290}),
        .\sp_reg[3] (rgf_n_287),
        .\sp_reg[7] ({rgf_n_291,rgf_n_292,rgf_n_293,rgf_n_294}),
        .\sr[4]_i_15 (fch_n_326),
        .\sr[4]_i_25 (rgf_n_390),
        .\sr[4]_i_27 (fch_n_133),
        .\sr[6]_i_3 (fch_n_327),
        .\sr[6]_i_8 (rgf_n_374),
        .\sr_reg[15] ({\sreg/p_2_in [7:4],rgf_sr_ml,rgf_sr_dr,\sreg/p_2_in [1:0],rgf_sr_flag,rgf_sr_ie,sr_bank}),
        .\sr_reg[4] (rgf_n_436),
        .\sr_reg[4]_0 (rgf_n_456),
        .\sr_reg[5] (rgf_n_417),
        .\sr_reg[5]_0 (rgf_n_435),
        .\sr_reg[6] (rgf_n_365),
        .\sr_reg[6]_0 (rgf_n_368),
        .\sr_reg[6]_1 (rgf_n_372),
        .\sr_reg[6]_10 (rgf_n_475),
        .\sr_reg[6]_11 (rgf_n_476),
        .\sr_reg[6]_12 (rgf_n_477),
        .\sr_reg[6]_13 (rgf_n_478),
        .\sr_reg[6]_2 (rgf_n_396),
        .\sr_reg[6]_3 (rgf_n_401),
        .\sr_reg[6]_4 (rgf_n_403),
        .\sr_reg[6]_5 (rgf_n_406),
        .\sr_reg[6]_6 (rgf_n_438),
        .\sr_reg[6]_7 (rgf_n_455),
        .\sr_reg[6]_8 (rgf_n_458),
        .\sr_reg[6]_9 (rgf_n_474),
        .\sr_reg[7] (rgf_n_437),
        .\sr_reg[8] (fch_n_328),
        .\tr_reg[0] (cbus_sel_cr),
        .\tr_reg[15] (rgf_tr),
        .\tr_reg[15]_0 (cbus));
endmodule
