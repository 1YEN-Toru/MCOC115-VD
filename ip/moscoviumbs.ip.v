
module mcbs_alu
   (O,
    tout__1_carry__0_i_8,
    tout__1_carry__1_i_8,
    tout__1_carry__2_i_8,
    tout__1_carry__3_i_3,
    \sr[4]_i_36 ,
    DI,
    S,
    \tr_reg[7] ,
    \tr_reg[7]_0 ,
    \tr_reg[11] ,
    \tr_reg[11]_0 ,
    \tr_reg[14] ,
    \tr_reg[14]_0 ,
    \sr[6]_i_2 ,
    \sr[6]_i_2_0 );
  output [3:0]O;
  output [3:0]tout__1_carry__0_i_8;
  output [3:0]tout__1_carry__1_i_8;
  output [3:0]tout__1_carry__2_i_8;
  output [0:0]tout__1_carry__3_i_3;
  output \sr[4]_i_36 ;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\tr_reg[7] ;
  input [3:0]\tr_reg[7]_0 ;
  input [3:0]\tr_reg[11] ;
  input [3:0]\tr_reg[11]_0 ;
  input [3:0]\tr_reg[14] ;
  input [3:0]\tr_reg[14]_0 ;
  input [0:0]\sr[6]_i_2 ;
  input [1:0]\sr[6]_i_2_0 ;

  wire [2:0]DI;
  wire [3:0]O;
  wire [3:0]S;
  wire \sr[4]_i_36 ;
  wire [0:0]\sr[6]_i_2 ;
  wire [1:0]\sr[6]_i_2_0 ;
  wire [3:0]tout__1_carry__0_i_8;
  wire [3:0]tout__1_carry__1_i_8;
  wire [3:0]tout__1_carry__2_i_8;
  wire [0:0]tout__1_carry__3_i_3;
  wire [3:0]\tr_reg[11] ;
  wire [3:0]\tr_reg[11]_0 ;
  wire [3:0]\tr_reg[14] ;
  wire [3:0]\tr_reg[14]_0 ;
  wire [3:0]\tr_reg[7] ;
  wire [3:0]\tr_reg[7]_0 ;

  mcbs_alu_art art
       (.DI(DI),
        .O(O),
        .S(S),
        .\sr[4]_i_36 (\sr[4]_i_36 ),
        .\sr[6]_i_2 (\sr[6]_i_2 ),
        .\sr[6]_i_2_0 (\sr[6]_i_2_0 ),
        .tout__1_carry__0_i_8(tout__1_carry__0_i_8),
        .tout__1_carry__1_i_8(tout__1_carry__1_i_8),
        .tout__1_carry__2_i_8(tout__1_carry__2_i_8),
        .tout__1_carry__3_i_3(tout__1_carry__3_i_3),
        .\tr_reg[11] (\tr_reg[11] ),
        .\tr_reg[11]_0 (\tr_reg[11]_0 ),
        .\tr_reg[14] (\tr_reg[14] ),
        .\tr_reg[14]_0 (\tr_reg[14]_0 ),
        .\tr_reg[7] (\tr_reg[7] ),
        .\tr_reg[7]_0 (\tr_reg[7]_0 ));
endmodule

module mcbs_alu_add
   (O,
    tout__1_carry__0_i_8,
    tout__1_carry__1_i_8,
    tout__1_carry__2_i_8,
    tout__1_carry__3_i_3,
    \sr[4]_i_36_0 ,
    DI,
    S,
    \tr_reg[7] ,
    \tr_reg[7]_0 ,
    \tr_reg[11] ,
    \tr_reg[11]_0 ,
    \tr_reg[14] ,
    \tr_reg[14]_0 ,
    \sr[6]_i_2 ,
    \sr[6]_i_2_0 );
  output [3:0]O;
  output [3:0]tout__1_carry__0_i_8;
  output [3:0]tout__1_carry__1_i_8;
  output [3:0]tout__1_carry__2_i_8;
  output [0:0]tout__1_carry__3_i_3;
  output \sr[4]_i_36_0 ;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\tr_reg[7] ;
  input [3:0]\tr_reg[7]_0 ;
  input [3:0]\tr_reg[11] ;
  input [3:0]\tr_reg[11]_0 ;
  input [3:0]\tr_reg[14] ;
  input [3:0]\tr_reg[14]_0 ;
  input [0:0]\sr[6]_i_2 ;
  input [1:0]\sr[6]_i_2_0 ;

  wire \<const0> ;
  wire [2:0]DI;
  wire [3:0]O;
  wire [3:0]S;
  wire \sr[4]_i_35_n_0 ;
  wire \sr[4]_i_36_0 ;
  wire \sr[4]_i_36_n_0 ;
  wire \sr[4]_i_38_n_0 ;
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
  wire [3:0]\tr_reg[14] ;
  wire [3:0]\tr_reg[14]_0 ;
  wire [3:0]\tr_reg[7] ;
  wire [3:0]\tr_reg[7]_0 ;
  wire [3:0]NLW_tout__1_carry__3_O_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sr[4]_i_21 
       (.I0(\sr[4]_i_35_n_0 ),
        .I1(tout__1_carry__0_i_8[0]),
        .I2(tout__1_carry__0_i_8[1]),
        .I3(O[3]),
        .I4(tout__1_carry__1_i_8[0]),
        .I5(\sr[4]_i_36_n_0 ),
        .O(\sr[4]_i_36_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_35 
       (.I0(tout__1_carry__0_i_8[3]),
        .I1(tout__1_carry__2_i_8[2]),
        .I2(tout__1_carry__0_i_8[2]),
        .I3(tout__1_carry__2_i_8[1]),
        .O(\sr[4]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sr[4]_i_36 
       (.I0(tout__1_carry__2_i_8[0]),
        .I1(tout__1_carry__1_i_8[3]),
        .I2(O[2]),
        .I3(O[1]),
        .I4(\sr[4]_i_38_n_0 ),
        .O(\sr[4]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_38 
       (.I0(tout__1_carry__1_i_8[1]),
        .I1(tout__1_carry__1_i_8[2]),
        .I2(O[0]),
        .I3(tout__1_carry__2_i_8[3]),
        .O(\sr[4]_i_38_n_0 ));
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
        .DI(\tr_reg[14] ),
        .O(tout__1_carry__2_i_8),
        .S(\tr_reg[14]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tout__1_carry__3
       (.CI(tout__1_carry__2_n_0),
        .CO(tout__1_carry__3_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\sr[6]_i_2 }),
        .O({tout__1_carry__3_i_3,NLW_tout__1_carry__3_O_UNCONNECTED[0]}),
        .S({\<const0> ,\<const0> ,\sr[6]_i_2_0 }));
endmodule

module mcbs_alu_art
   (O,
    tout__1_carry__0_i_8,
    tout__1_carry__1_i_8,
    tout__1_carry__2_i_8,
    tout__1_carry__3_i_3,
    \sr[4]_i_36 ,
    DI,
    S,
    \tr_reg[7] ,
    \tr_reg[7]_0 ,
    \tr_reg[11] ,
    \tr_reg[11]_0 ,
    \tr_reg[14] ,
    \tr_reg[14]_0 ,
    \sr[6]_i_2 ,
    \sr[6]_i_2_0 );
  output [3:0]O;
  output [3:0]tout__1_carry__0_i_8;
  output [3:0]tout__1_carry__1_i_8;
  output [3:0]tout__1_carry__2_i_8;
  output [0:0]tout__1_carry__3_i_3;
  output \sr[4]_i_36 ;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\tr_reg[7] ;
  input [3:0]\tr_reg[7]_0 ;
  input [3:0]\tr_reg[11] ;
  input [3:0]\tr_reg[11]_0 ;
  input [3:0]\tr_reg[14] ;
  input [3:0]\tr_reg[14]_0 ;
  input [0:0]\sr[6]_i_2 ;
  input [1:0]\sr[6]_i_2_0 ;

  wire [2:0]DI;
  wire [3:0]O;
  wire [3:0]S;
  wire \sr[4]_i_36 ;
  wire [0:0]\sr[6]_i_2 ;
  wire [1:0]\sr[6]_i_2_0 ;
  wire [3:0]tout__1_carry__0_i_8;
  wire [3:0]tout__1_carry__1_i_8;
  wire [3:0]tout__1_carry__2_i_8;
  wire [0:0]tout__1_carry__3_i_3;
  wire [3:0]\tr_reg[11] ;
  wire [3:0]\tr_reg[11]_0 ;
  wire [3:0]\tr_reg[14] ;
  wire [3:0]\tr_reg[14]_0 ;
  wire [3:0]\tr_reg[7] ;
  wire [3:0]\tr_reg[7]_0 ;

  mcbs_alu_add add
       (.DI(DI),
        .O(O),
        .S(S),
        .\sr[4]_i_36_0 (\sr[4]_i_36 ),
        .\sr[6]_i_2 (\sr[6]_i_2 ),
        .\sr[6]_i_2_0 (\sr[6]_i_2_0 ),
        .tout__1_carry__0_i_8(tout__1_carry__0_i_8),
        .tout__1_carry__1_i_8(tout__1_carry__1_i_8),
        .tout__1_carry__2_i_8(tout__1_carry__2_i_8),
        .tout__1_carry__3_i_3(tout__1_carry__3_i_3),
        .\tr_reg[11] (\tr_reg[11] ),
        .\tr_reg[11]_0 (\tr_reg[11]_0 ),
        .\tr_reg[14] (\tr_reg[14] ),
        .\tr_reg[14]_0 (\tr_reg[14]_0 ),
        .\tr_reg[7] (\tr_reg[7] ),
        .\tr_reg[7]_0 (\tr_reg[7]_0 ));
endmodule

module mcbs_fch
   (.out({ir[15],ir[14],ir[13],ir[12],ir[11],ir[10],ir[8],ir[7],ir[3],ir[2],ir[1],ir[0]}),
    .rst_n_fl_reg_0({eir[6],eir[5],eir[4],eir[3],eir[2],eir[1]}),
    ctl_fetch_ext,
    ctl_sela,
    ctl_sp_dec,
    \stat_reg[2] ,
    \stat_reg[1] ,
    ctl_copro,
    ccmd,
    rst_n_fl_reg_1,
    \stat_reg[2]_0 ,
    \stat_reg[2]_1 ,
    \stat_reg[2]_2 ,
    in0,
    \stat_reg[0] ,
    rst_n_fl_reg_2,
    \stat_reg[2]_3 ,
    \stat_reg[0]_0 ,
    rst_n_fl_reg_3,
    rst_n_fl_reg_4,
    ctl_sp_inc,
    crdy_0,
    rst_n_fl_reg_5,
    ctl_selb,
    crdy_1,
    rst_n_fl_reg_6,
    rst_n_0,
    p_0_in_0,
    \sr_reg[10] ,
    \stat_reg[2]_4 ,
    cbus,
    \stat_reg[2]_5 ,
    \stat_reg[2]_6 ,
    \stat_reg[2]_7 ,
    \stat_reg[2]_8 ,
    \stat_reg[2]_9 ,
    D,
    \sp_reg[15] ,
    \stat_reg[0]_1 ,
    \grn_reg[4] ,
    \stat_reg[2]_10 ,
    \grn_reg[15] ,
    \stat_reg[2]_11 ,
    \iv[14]_i_33_0 ,
    \bdatw[9]_INST_0_i_2_0 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[12]_INST_0_i_2_0 ,
    \bdatw[11]_INST_0_i_2_0 ,
    \badr[1]_INST_0_i_1 ,
    \stat_reg[1]_0 ,
    rst_n_fl_reg_7,
    \stat_reg[2]_12 ,
    \badr[11]_INST_0_i_1 ,
    \stat_reg[2]_13 ,
    \bdatw[8]_INST_0_i_2_1 ,
    tout__1_carry_i_8_0,
    bdatw,
    bbus_o,
    badrx,
    \badr[6]_INST_0_i_1 ,
    tout__1_carry__0_i_1_0,
    E,
    \sr_reg[0] ,
    \sr_reg[0]_0 ,
    \sr_reg[0]_1 ,
    cbus_sel_cr,
    \sr_reg[0]_2 ,
    \sr_reg[0]_3 ,
    \sr_reg[0]_4 ,
    \sr_reg[0]_5 ,
    brdy_0,
    badr,
    \badr[14]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1_0 ,
    S,
    DI,
    \bdatw[9]_INST_0_i_2_1 ,
    \sr_reg[0]_6 ,
    \sr_reg[0]_7 ,
    \sr_reg[0]_8 ,
    \sr_reg[0]_9 ,
    \sr_reg[0]_10 ,
    \sr_reg[0]_11 ,
    \sr_reg[0]_12 ,
    \sr_reg[0]_13 ,
    \badr[10]_INST_0_i_1 ,
    tout__1_carry__1_i_1_0,
    fch_irq_req,
    clk,
    ctl_fetch_fl_reg_0,
    rst_n,
    Q,
    \sr[7]_i_6_0 ,
    \iv[15]_i_3_0 ,
    .badr_0_sp_1(badr_0_sn_1),
    brdy,
    \sr[7]_i_4_0 ,
    crdy,
    ctl_fetch_inferred_i_4_0,
    \sr[0]_i_5_0 ,
    \sr_reg[15] ,
    \ccmd[3]_INST_0_i_1_0 ,
    \ccmd[4]_INST_0_i_2_0 ,
    \stat[0]_i_12_0 ,
    .bdatw_0_sp_1(bdatw_0_sn_1),
    \stat_reg[1]_1 ,
    \stat_reg[2]_14 ,
    ctl_fetch_fl_reg_1,
    ctl_fetch_fl_reg_2,
    \bcmd[2] ,
    \stat_reg[0]_2 ,
    \stat_reg[1]_2 ,
    \ccmd[4]_INST_0_i_6_0 ,
    \ccmd[0]_INST_0_i_1_0 ,
    \ccmd[3]_INST_0_i_17_0 ,
    \ccmd[3]_INST_0_i_17_1 ,
    \badr[15]_INST_0_i_29_0 ,
    \iv[15]_i_17_0 ,
    \badr[15]_INST_0_i_29_1 ,
    \stat[0]_i_3_0 ,
    \stat[0]_i_13_0 ,
    \stat[0]_i_13_1 ,
    \sp[15]_i_5_0 ,
    \sr[0]_i_5_1 ,
    \sr[0]_i_5_2 ,
    \sr[0]_i_5_3 ,
    \badr[15]_INST_0_i_49_0 ,
    \bdatw[15]_INST_0_i_60_0 ,
    ctl_fetch_inferred_i_11_0,
    \stat[1]_i_4_0 ,
    \bdatw[15]_INST_0_i_59_0 ,
    \badr[15]_INST_0_i_29_2 ,
    \bdatw[15]_INST_0_i_56 ,
    \stat_reg[0]_3 ,
    ctl_fetch_inferred_i_11_1,
    \badr[15]_INST_0_i_48_0 ,
    cpuid,
    fch_pc,
    \pc_reg[15] ,
    \sp_reg[15]_0 ,
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
    \pc_reg[8] ,
    \pc_reg[4] ,
    \pc_reg[12] ,
    \pc_reg[6] ,
    \pc_reg[14] ,
    \pc_reg[10] ,
    \pc_reg[2] ,
    \pc_reg[5] ,
    \pc_reg[13] ,
    \pc_reg[9] ,
    \pc_reg[1] ,
    \sr_reg[6] ,
    \pc_reg[3] ,
    \pc_reg[11] ,
    \pc_reg[7] ,
    \pc_reg[15]_0 ,
    \pc_reg[0] ,
    \iv[8]_i_24 ,
    \badr[15]_INST_0_i_1_1 ,
    \badr[4]_INST_0_i_1 ,
    \iv[13]_i_33_0 ,
    \badr[15]_INST_0_i_1_2 ,
    \badr[15]_INST_0_i_3_0 ,
    \tr_reg[11] ,
    \tr_reg[8] ,
    \sr[4]_i_17_0 ,
    \iv[8]_i_2_0 ,
    \tr_reg[7] ,
    \tr_reg[4] ,
    \iv[4]_i_2_0 ,
    \tr_reg[15] ,
    \tr_reg[12] ,
    \iv[3]_i_2_0 ,
    \iv[12]_i_2_0 ,
    \tr_reg[6] ,
    \sr[4]_i_18_0 ,
    \iv[6]_i_5_0 ,
    \tr_reg[14] ,
    \iv[14]_i_2_0 ,
    \iv[5]_i_2_0 ,
    \tr_reg[10] ,
    \tr_reg[10]_0 ,
    \sr[4]_i_8_0 ,
    O,
    \tr_reg[2] ,
    \tr_reg[2]_0 ,
    \tr_reg[2]_1 ,
    \tr_reg[5] ,
    \tr_reg[5]_0 ,
    \iv[14]_i_2_1 ,
    \tr_reg[13] ,
    \iv[13]_i_2_0 ,
    \iv[5]_i_8_0 ,
    \tr_reg[9] ,
    \iv[0]_i_2_0 ,
    \iv[9]_i_7_0 ,
    \tr_reg[1] ,
    \sr[5]_i_2_0 ,
    \sr[5]_i_2_1 ,
    \tr_reg[3] ,
    \tr_reg[3]_0 ,
    \sr[6]_i_3_0 ,
    \iv[7]_i_2_0 ,
    \iv[3]_i_2_1 ,
    \tr_reg[11]_0 ,
    \tr_reg[7]_0 ,
    \iv[11]_i_2_0 ,
    \tr_reg[15]_0 ,
    bdatr,
    cbus_i,
    \tr_reg[15]_1 ,
    \tr_reg[0] ,
    abus_0,
    \iv[1]_i_2_0 ,
    \iv[9]_i_2_0 ,
    \iv[4]_i_2_1 ,
    \sr[4]_i_8_1 ,
    \sr[4]_i_8_2 ,
    \iv[0]_i_6_0 ,
    \iv[0]_i_6_1 ,
    \iv[6]_i_2_0 ,
    \iv[14]_i_2_2 ,
    \sr[4]_i_14_0 ,
    \iv[1]_i_9_0 ,
    \sr[4]_i_8_3 ,
    \iv[1]_i_9_1 ,
    \sr[4]_i_7_0 ,
    \iv[1]_i_2_1 ,
    \iv[1]_i_2_2 ,
    \iv[0]_i_2_1 ,
    \iv[4]_i_6_0 ,
    \sr[4]_i_15_0 ,
    \iv[13]_i_2_1 ,
    \iv[13]_i_2_2 ,
    \iv[15]_i_5_0 ,
    \iv[11]_i_2_1 ,
    \iv[11]_i_2_2 ,
    \iv[2]_i_2_0 ,
    \iv[7]_i_2_1 ,
    \iv[7]_i_2_2 ,
    \iv[15]_i_5_1 ,
    \iv[2]_i_2_1 ,
    \iv[4]_i_7_0 ,
    \iv[8]_i_2_1 ,
    \iv[4]_i_6_1 ,
    \iv[11]_i_2_3 ,
    \iv[6]_i_5_1 ,
    \sr[4]_i_18_1 ,
    \iv[15]_i_5_2 ,
    \sr[4]_i_15_1 ,
    \iv[5]_i_7_0 ,
    \iv[6]_i_5_2 ,
    \iv[3]_i_7_0 ,
    \iv[3]_i_7_1 ,
    \iv[12]_i_5_0 ,
    \iv[14]_i_22_0 ,
    \sr[4]_i_6_0 ,
    p_0_in,
    \iv[14]_i_21 ,
    .bdatw_1_sp_1(bdatw_1_sn_1),
    \bdatw[1]_0 ,
    \bdatw[0]_0 ,
    \bdatw[0]_1 ,
    .bdatw_10_sp_1(bdatw_10_sn_1),
    \bdatw[10]_0 ,
    .bdatw_3_sp_1(bdatw_3_sn_1),
    \bdatw[3]_0 ,
    .bdatw_4_sp_1(bdatw_4_sn_1),
    \bdatw[4]_0 ,
    .bdatw_8_sp_1(bdatw_8_sn_1),
    \bdatw[8]_0 ,
    .bdatw_9_sp_1(bdatw_9_sn_1),
    \bdatw[9]_0 ,
    \bdatw[10]_1 ,
    \bdatw[10]_2 ,
    .bdatw_11_sp_1(bdatw_11_sn_1),
    \bdatw[11]_0 ,
    .bdatw_12_sp_1(bdatw_12_sn_1),
    \bdatw[12]_0 ,
    .bdatw_13_sp_1(bdatw_13_sn_1),
    \bdatw[13]_0 ,
    .bdatw_14_sp_1(bdatw_14_sn_1),
    \bdatw[14]_0 ,
    .bdatw_15_sp_1(bdatw_15_sn_1),
    \bdatw[15]_0 ,
    \badrx[15] ,
    \sr[4]_i_18_2 ,
    \stat[0]_i_3_1 ,
    \sr[6]_i_3_1 ,
    \sr[6]_i_3_2 ,
    read_cyc,
    irq_lev,
    ctl_irq_ack,
    p_0_in_1,
    SR,
    \eir_fl_reg[6]_0 ,
    fdat);
  output ctl_fetch_ext;
  output [4:0]ctl_sela;
  output ctl_sp_dec;
  output \stat_reg[2] ;
  output [1:0]\stat_reg[1] ;
  output ctl_copro;
  output [4:0]ccmd;
  output rst_n_fl_reg_1;
  output \stat_reg[2]_0 ;
  output \stat_reg[2]_1 ;
  output [0:0]\stat_reg[2]_2 ;
  output in0;
  output [2:0]\stat_reg[0] ;
  output rst_n_fl_reg_2;
  output \stat_reg[2]_3 ;
  output \stat_reg[0]_0 ;
  output rst_n_fl_reg_3;
  output rst_n_fl_reg_4;
  output ctl_sp_inc;
  output crdy_0;
  output rst_n_fl_reg_5;
  output [1:0]ctl_selb;
  output crdy_1;
  output rst_n_fl_reg_6;
  output rst_n_0;
  output [4:0]p_0_in_0;
  output \sr_reg[10] ;
  output \stat_reg[2]_4 ;
  output [15:0]cbus;
  output \stat_reg[2]_5 ;
  output \stat_reg[2]_6 ;
  output \stat_reg[2]_7 ;
  output \stat_reg[2]_8 ;
  output \stat_reg[2]_9 ;
  output [15:0]D;
  output [15:0]\sp_reg[15] ;
  output \stat_reg[0]_1 ;
  output \grn_reg[4] ;
  output \stat_reg[2]_10 ;
  output \grn_reg[15] ;
  output \stat_reg[2]_11 ;
  output \iv[14]_i_33_0 ;
  output \bdatw[9]_INST_0_i_2_0 ;
  output \bdatw[8]_INST_0_i_2_0 ;
  output \bdatw[12]_INST_0_i_2_0 ;
  output \bdatw[11]_INST_0_i_2_0 ;
  output \badr[1]_INST_0_i_1 ;
  output \stat_reg[1]_0 ;
  output rst_n_fl_reg_7;
  output \stat_reg[2]_12 ;
  output \badr[11]_INST_0_i_1 ;
  output \stat_reg[2]_13 ;
  output \bdatw[8]_INST_0_i_2_1 ;
  output [0:0]tout__1_carry_i_8_0;
  output [15:0]bdatw;
  output [15:0]bbus_o;
  output [15:0]badrx;
  output [3:0]\badr[6]_INST_0_i_1 ;
  output [3:0]tout__1_carry__0_i_1_0;
  output [0:0]E;
  output [0:0]\sr_reg[0] ;
  output [0:0]\sr_reg[0]_0 ;
  output [0:0]\sr_reg[0]_1 ;
  output [1:0]cbus_sel_cr;
  output [0:0]\sr_reg[0]_2 ;
  output [0:0]\sr_reg[0]_3 ;
  output [0:0]\sr_reg[0]_4 ;
  output [0:0]\sr_reg[0]_5 ;
  output brdy_0;
  output [15:0]badr;
  output [3:0]\badr[14]_INST_0_i_1 ;
  output [3:0]\badr[15]_INST_0_i_1 ;
  output [1:0]\badr[15]_INST_0_i_1_0 ;
  output [3:0]S;
  output [2:0]DI;
  output \bdatw[9]_INST_0_i_2_1 ;
  output [0:0]\sr_reg[0]_6 ;
  output [0:0]\sr_reg[0]_7 ;
  output [0:0]\sr_reg[0]_8 ;
  output [0:0]\sr_reg[0]_9 ;
  output [0:0]\sr_reg[0]_10 ;
  output [0:0]\sr_reg[0]_11 ;
  output [0:0]\sr_reg[0]_12 ;
  output [0:0]\sr_reg[0]_13 ;
  output [3:0]\badr[10]_INST_0_i_1 ;
  output [3:0]tout__1_carry__1_i_1_0;
  input fch_irq_req;
  input clk;
  input ctl_fetch_fl_reg_0;
  input rst_n;
  input [2:0]Q;
  input \sr[7]_i_6_0 ;
  input \iv[15]_i_3_0 ;
  input brdy;
  input \sr[7]_i_4_0 ;
  input crdy;
  input ctl_fetch_inferred_i_4_0;
  input \sr[0]_i_5_0 ;
  input [11:0]\sr_reg[15] ;
  input \ccmd[3]_INST_0_i_1_0 ;
  input \ccmd[4]_INST_0_i_2_0 ;
  input \stat[0]_i_12_0 ;
  input \stat_reg[1]_1 ;
  input \stat_reg[2]_14 ;
  input ctl_fetch_fl_reg_1;
  input ctl_fetch_fl_reg_2;
  input \bcmd[2] ;
  input \stat_reg[0]_2 ;
  input \stat_reg[1]_2 ;
  input \ccmd[4]_INST_0_i_6_0 ;
  input \ccmd[0]_INST_0_i_1_0 ;
  input \ccmd[3]_INST_0_i_17_0 ;
  input \ccmd[3]_INST_0_i_17_1 ;
  input \badr[15]_INST_0_i_29_0 ;
  input \iv[15]_i_17_0 ;
  input \badr[15]_INST_0_i_29_1 ;
  input \stat[0]_i_3_0 ;
  input [0:0]\stat[0]_i_13_0 ;
  input \stat[0]_i_13_1 ;
  input \sp[15]_i_5_0 ;
  input \sr[0]_i_5_1 ;
  input \sr[0]_i_5_2 ;
  input \sr[0]_i_5_3 ;
  input \badr[15]_INST_0_i_49_0 ;
  input \bdatw[15]_INST_0_i_60_0 ;
  input ctl_fetch_inferred_i_11_0;
  input \stat[1]_i_4_0 ;
  input \bdatw[15]_INST_0_i_59_0 ;
  input \badr[15]_INST_0_i_29_2 ;
  input \bdatw[15]_INST_0_i_56 ;
  input \stat_reg[0]_3 ;
  input ctl_fetch_inferred_i_11_1;
  input \badr[15]_INST_0_i_48_0 ;
  input [3:0]cpuid;
  input [15:0]fch_pc;
  input [15:0]\pc_reg[15] ;
  input \sp_reg[15]_0 ;
  input \sp_reg[14] ;
  input \sp_reg[13] ;
  input \sp_reg[12] ;
  input \sp_reg[11] ;
  input \sp_reg[10] ;
  input \sp_reg[9] ;
  input \sp_reg[8] ;
  input \sp_reg[7] ;
  input \sp_reg[6] ;
  input \sp_reg[5] ;
  input \sp_reg[4] ;
  input \sp_reg[3] ;
  input \sp_reg[2] ;
  input \sp_reg[1] ;
  input \sp_reg[0] ;
  input \pc_reg[8] ;
  input \pc_reg[4] ;
  input \pc_reg[12] ;
  input \pc_reg[6] ;
  input \pc_reg[14] ;
  input \pc_reg[10] ;
  input \pc_reg[2] ;
  input \pc_reg[5] ;
  input \pc_reg[13] ;
  input \pc_reg[9] ;
  input \pc_reg[1] ;
  input [0:0]\sr_reg[6] ;
  input \pc_reg[3] ;
  input \pc_reg[11] ;
  input \pc_reg[7] ;
  input \pc_reg[15]_0 ;
  input \pc_reg[0] ;
  input \iv[8]_i_24 ;
  input [1:0]\badr[15]_INST_0_i_1_1 ;
  input \badr[4]_INST_0_i_1 ;
  input \iv[13]_i_33_0 ;
  input \badr[15]_INST_0_i_1_2 ;
  input [1:0]\badr[15]_INST_0_i_3_0 ;
  input [3:0]\tr_reg[11] ;
  input \tr_reg[8] ;
  input \sr[4]_i_17_0 ;
  input \iv[8]_i_2_0 ;
  input [3:0]\tr_reg[7] ;
  input \tr_reg[4] ;
  input \iv[4]_i_2_0 ;
  input [3:0]\tr_reg[15] ;
  input \tr_reg[12] ;
  input \iv[3]_i_2_0 ;
  input \iv[12]_i_2_0 ;
  input \tr_reg[6] ;
  input \sr[4]_i_18_0 ;
  input \iv[6]_i_5_0 ;
  input \tr_reg[14] ;
  input \iv[14]_i_2_0 ;
  input \iv[5]_i_2_0 ;
  input \tr_reg[10] ;
  input \tr_reg[10]_0 ;
  input \sr[4]_i_8_0 ;
  input [3:0]O;
  input \tr_reg[2] ;
  input \tr_reg[2]_0 ;
  input \tr_reg[2]_1 ;
  input \tr_reg[5] ;
  input \tr_reg[5]_0 ;
  input \iv[14]_i_2_1 ;
  input \tr_reg[13] ;
  input \iv[13]_i_2_0 ;
  input \iv[5]_i_8_0 ;
  input \tr_reg[9] ;
  input \iv[0]_i_2_0 ;
  input \iv[9]_i_7_0 ;
  input \tr_reg[1] ;
  input \sr[5]_i_2_0 ;
  input \sr[5]_i_2_1 ;
  input \tr_reg[3] ;
  input \tr_reg[3]_0 ;
  input \sr[6]_i_3_0 ;
  input \iv[7]_i_2_0 ;
  input \iv[3]_i_2_1 ;
  input \tr_reg[11]_0 ;
  input \tr_reg[7]_0 ;
  input \iv[11]_i_2_0 ;
  input \tr_reg[15]_0 ;
  input [0:0]bdatr;
  input [0:0]cbus_i;
  input \tr_reg[15]_1 ;
  input \tr_reg[0] ;
  input [15:0]abus_0;
  input \iv[1]_i_2_0 ;
  input \iv[9]_i_2_0 ;
  input \iv[4]_i_2_1 ;
  input \sr[4]_i_8_1 ;
  input \sr[4]_i_8_2 ;
  input \iv[0]_i_6_0 ;
  input \iv[0]_i_6_1 ;
  input \iv[6]_i_2_0 ;
  input \iv[14]_i_2_2 ;
  input \sr[4]_i_14_0 ;
  input \iv[1]_i_9_0 ;
  input \sr[4]_i_8_3 ;
  input \iv[1]_i_9_1 ;
  input \sr[4]_i_7_0 ;
  input \iv[1]_i_2_1 ;
  input \iv[1]_i_2_2 ;
  input \iv[0]_i_2_1 ;
  input \iv[4]_i_6_0 ;
  input \sr[4]_i_15_0 ;
  input \iv[13]_i_2_1 ;
  input \iv[13]_i_2_2 ;
  input \iv[15]_i_5_0 ;
  input \iv[11]_i_2_1 ;
  input \iv[11]_i_2_2 ;
  input \iv[2]_i_2_0 ;
  input \iv[7]_i_2_1 ;
  input \iv[7]_i_2_2 ;
  input \iv[15]_i_5_1 ;
  input \iv[2]_i_2_1 ;
  input \iv[4]_i_7_0 ;
  input \iv[8]_i_2_1 ;
  input \iv[4]_i_6_1 ;
  input \iv[11]_i_2_3 ;
  input \iv[6]_i_5_1 ;
  input \sr[4]_i_18_1 ;
  input \iv[15]_i_5_2 ;
  input \sr[4]_i_15_1 ;
  input \iv[5]_i_7_0 ;
  input \iv[6]_i_5_2 ;
  input \iv[3]_i_7_0 ;
  input \iv[3]_i_7_1 ;
  input \iv[12]_i_5_0 ;
  input \iv[14]_i_22_0 ;
  input \sr[4]_i_6_0 ;
  input [3:0]p_0_in;
  input \iv[14]_i_21 ;
  input \bdatw[1]_0 ;
  input \bdatw[0]_0 ;
  input \bdatw[0]_1 ;
  input \bdatw[10]_0 ;
  input \bdatw[3]_0 ;
  input \bdatw[4]_0 ;
  input \bdatw[8]_0 ;
  input \bdatw[9]_0 ;
  input \bdatw[10]_1 ;
  input \bdatw[10]_2 ;
  input \bdatw[11]_0 ;
  input \bdatw[12]_0 ;
  input \bdatw[13]_0 ;
  input \bdatw[14]_0 ;
  input \bdatw[15]_0 ;
  input [15:0]\badrx[15] ;
  input \sr[4]_i_18_2 ;
  input \stat[0]_i_3_1 ;
  input \sr[6]_i_3_1 ;
  input \sr[6]_i_3_2 ;
  input [0:0]read_cyc;
  input [1:0]irq_lev;
  input ctl_irq_ack;
  input p_0_in_1;
  input [0:0]SR;
  input [5:0]\eir_fl_reg[6]_0 ;
  input [15:0]fdat;
     output [15:0]ir;
     output [15:0]eir;
  input badr_0_sn_1;
  input bdatw_0_sn_1;
  input bdatw_1_sn_1;
  input bdatw_10_sn_1;
  input bdatw_3_sn_1;
  input bdatw_4_sn_1;
  input bdatw_8_sn_1;
  input bdatw_9_sn_1;
  input bdatw_11_sn_1;
  input bdatw_12_sn_1;
  input bdatw_13_sn_1;
  input bdatw_14_sn_1;
  input bdatw_15_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire [3:0]O;
  wire [2:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [15:0]abus_0;
  wire [2:2]acmd;
  wire [15:0]badr;
  wire [3:0]\badr[10]_INST_0_i_1 ;
  wire \badr[11]_INST_0_i_1 ;
  wire [3:0]\badr[14]_INST_0_i_1 ;
  wire [3:0]\badr[15]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_100_n_0 ;
  wire \badr[15]_INST_0_i_102_n_0 ;
  wire \badr[15]_INST_0_i_103_n_0 ;
  wire \badr[15]_INST_0_i_104_n_0 ;
  wire \badr[15]_INST_0_i_105_n_0 ;
  wire \badr[15]_INST_0_i_106_n_0 ;
  wire \badr[15]_INST_0_i_107_n_0 ;
  wire \badr[15]_INST_0_i_12_n_0 ;
  wire \badr[15]_INST_0_i_15_n_0 ;
  wire \badr[15]_INST_0_i_16_n_0 ;
  wire \badr[15]_INST_0_i_17_n_0 ;
  wire \badr[15]_INST_0_i_18_n_0 ;
  wire [1:0]\badr[15]_INST_0_i_1_0 ;
  wire [1:0]\badr[15]_INST_0_i_1_1 ;
  wire \badr[15]_INST_0_i_1_2 ;
  wire \badr[15]_INST_0_i_22_n_0 ;
  wire \badr[15]_INST_0_i_23_n_0 ;
  wire \badr[15]_INST_0_i_24_n_0 ;
  wire \badr[15]_INST_0_i_25_n_0 ;
  wire \badr[15]_INST_0_i_29_0 ;
  wire \badr[15]_INST_0_i_29_1 ;
  wire \badr[15]_INST_0_i_29_2 ;
  wire \badr[15]_INST_0_i_30_n_0 ;
  wire \badr[15]_INST_0_i_31_n_0 ;
  wire \badr[15]_INST_0_i_33_n_0 ;
  wire \badr[15]_INST_0_i_34_n_0 ;
  wire \badr[15]_INST_0_i_35_n_0 ;
  wire \badr[15]_INST_0_i_36_n_0 ;
  wire \badr[15]_INST_0_i_37_n_0 ;
  wire \badr[15]_INST_0_i_39_n_0 ;
  wire [1:0]\badr[15]_INST_0_i_3_0 ;
  wire \badr[15]_INST_0_i_40_n_0 ;
  wire \badr[15]_INST_0_i_41_n_0 ;
  wire \badr[15]_INST_0_i_42_n_0 ;
  wire \badr[15]_INST_0_i_43_n_0 ;
  wire \badr[15]_INST_0_i_44_n_0 ;
  wire \badr[15]_INST_0_i_45_n_0 ;
  wire \badr[15]_INST_0_i_46_n_0 ;
  wire \badr[15]_INST_0_i_47_n_0 ;
  wire \badr[15]_INST_0_i_48_0 ;
  wire \badr[15]_INST_0_i_48_n_0 ;
  wire \badr[15]_INST_0_i_49_0 ;
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
  wire \badr[15]_INST_0_i_66_n_0 ;
  wire \badr[15]_INST_0_i_67_n_0 ;
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
  wire \badr[15]_INST_0_i_81_n_0 ;
  wire \badr[15]_INST_0_i_82_n_0 ;
  wire \badr[15]_INST_0_i_83_n_0 ;
  wire \badr[15]_INST_0_i_85_n_0 ;
  wire \badr[15]_INST_0_i_86_n_0 ;
  wire \badr[15]_INST_0_i_87_n_0 ;
  wire \badr[15]_INST_0_i_89_n_0 ;
  wire \badr[15]_INST_0_i_91_n_0 ;
  wire \badr[15]_INST_0_i_92_n_0 ;
  wire \badr[15]_INST_0_i_93_n_0 ;
  wire \badr[15]_INST_0_i_94_n_0 ;
  wire \badr[15]_INST_0_i_95_n_0 ;
  wire \badr[15]_INST_0_i_96_n_0 ;
  wire \badr[15]_INST_0_i_97_n_0 ;
  wire \badr[15]_INST_0_i_98_n_0 ;
  wire \badr[15]_INST_0_i_99_n_0 ;
  wire \badr[1]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_8_n_0 ;
  wire [3:0]\badr[6]_INST_0_i_1 ;
  wire badr_0_sn_1;
  wire [15:0]badrx;
  wire [15:0]\badrx[15] ;
  wire [15:0]bbus_o;
  wire \bcmd[0]_INST_0_i_10_n_0 ;
  wire \bcmd[0]_INST_0_i_12_n_0 ;
  wire \bcmd[0]_INST_0_i_1_n_0 ;
  wire \bcmd[0]_INST_0_i_2_n_0 ;
  wire \bcmd[0]_INST_0_i_3_n_0 ;
  wire \bcmd[0]_INST_0_i_4_n_0 ;
  wire \bcmd[0]_INST_0_i_5_n_0 ;
  wire \bcmd[0]_INST_0_i_6_n_0 ;
  wire \bcmd[0]_INST_0_i_7_n_0 ;
  wire \bcmd[0]_INST_0_i_8_n_0 ;
  wire \bcmd[0]_INST_0_i_9_n_0 ;
  wire \bcmd[1]_INST_0_i_10_n_0 ;
  wire \bcmd[1]_INST_0_i_1_n_0 ;
  wire \bcmd[1]_INST_0_i_2_n_0 ;
  wire \bcmd[1]_INST_0_i_3_n_0 ;
  wire \bcmd[1]_INST_0_i_4_n_0 ;
  wire \bcmd[1]_INST_0_i_5_n_0 ;
  wire \bcmd[1]_INST_0_i_6_n_0 ;
  wire \bcmd[1]_INST_0_i_7_n_0 ;
  wire \bcmd[1]_INST_0_i_8_n_0 ;
  wire \bcmd[1]_INST_0_i_9_n_0 ;
  wire \bcmd[2] ;
  wire \bcmd[2]_INST_0_i_1_n_0 ;
  wire \bcmd[2]_INST_0_i_2_n_0 ;
  wire \bcmd[2]_INST_0_i_3_n_0 ;
  wire \bcmd[2]_INST_0_i_4_n_0 ;
  wire [0:0]bdatr;
  wire [15:0]bdatw;
  wire \bdatw[0]_0 ;
  wire \bdatw[0]_1 ;
  wire \bdatw[10]_0 ;
  wire \bdatw[10]_1 ;
  wire \bdatw[10]_2 ;
  wire \bdatw[10]_INST_0_i_10_n_0 ;
  wire \bdatw[10]_INST_0_i_11_n_0 ;
  wire \bdatw[10]_INST_0_i_16_n_0 ;
  wire \bdatw[10]_INST_0_i_1_n_0 ;
  wire \bdatw[10]_INST_0_i_23_n_0 ;
  wire \bdatw[10]_INST_0_i_2_n_0 ;
  wire \bdatw[10]_INST_0_i_9_n_0 ;
  wire \bdatw[11]_0 ;
  wire \bdatw[11]_INST_0_i_14_n_0 ;
  wire \bdatw[11]_INST_0_i_1_n_0 ;
  wire \bdatw[11]_INST_0_i_2_0 ;
  wire \bdatw[11]_INST_0_i_9_n_0 ;
  wire \bdatw[12]_0 ;
  wire \bdatw[12]_INST_0_i_14_n_0 ;
  wire \bdatw[12]_INST_0_i_1_n_0 ;
  wire \bdatw[12]_INST_0_i_29_n_0 ;
  wire \bdatw[12]_INST_0_i_2_0 ;
  wire \bdatw[12]_INST_0_i_9_n_0 ;
  wire \bdatw[13]_0 ;
  wire \bdatw[13]_INST_0_i_13_n_0 ;
  wire \bdatw[13]_INST_0_i_1_n_0 ;
  wire \bdatw[13]_INST_0_i_2_n_0 ;
  wire \bdatw[13]_INST_0_i_6_n_0 ;
  wire \bdatw[13]_INST_0_i_8_n_0 ;
  wire \bdatw[14]_0 ;
  wire \bdatw[14]_INST_0_i_13_n_0 ;
  wire \bdatw[14]_INST_0_i_1_n_0 ;
  wire \bdatw[14]_INST_0_i_2_n_0 ;
  wire \bdatw[14]_INST_0_i_6_n_0 ;
  wire \bdatw[14]_INST_0_i_8_n_0 ;
  wire \bdatw[15]_0 ;
  wire \bdatw[15]_INST_0_i_100_n_0 ;
  wire \bdatw[15]_INST_0_i_101_n_0 ;
  wire \bdatw[15]_INST_0_i_102_n_0 ;
  wire \bdatw[15]_INST_0_i_104_n_0 ;
  wire \bdatw[15]_INST_0_i_105_n_0 ;
  wire \bdatw[15]_INST_0_i_106_n_0 ;
  wire \bdatw[15]_INST_0_i_107_n_0 ;
  wire \bdatw[15]_INST_0_i_108_n_0 ;
  wire \bdatw[15]_INST_0_i_110_n_0 ;
  wire \bdatw[15]_INST_0_i_111_n_0 ;
  wire \bdatw[15]_INST_0_i_112_n_0 ;
  wire \bdatw[15]_INST_0_i_113_n_0 ;
  wire \bdatw[15]_INST_0_i_115_n_0 ;
  wire \bdatw[15]_INST_0_i_116_n_0 ;
  wire \bdatw[15]_INST_0_i_117_n_0 ;
  wire \bdatw[15]_INST_0_i_13_n_0 ;
  wire \bdatw[15]_INST_0_i_1_n_0 ;
  wire \bdatw[15]_INST_0_i_25_n_0 ;
  wire \bdatw[15]_INST_0_i_2_n_0 ;
  wire \bdatw[15]_INST_0_i_30_n_0 ;
  wire \bdatw[15]_INST_0_i_31_n_0 ;
  wire \bdatw[15]_INST_0_i_32_n_0 ;
  wire \bdatw[15]_INST_0_i_33_n_0 ;
  wire \bdatw[15]_INST_0_i_34_n_0 ;
  wire \bdatw[15]_INST_0_i_35_n_0 ;
  wire \bdatw[15]_INST_0_i_36_n_0 ;
  wire \bdatw[15]_INST_0_i_37_n_0 ;
  wire \bdatw[15]_INST_0_i_3_n_0 ;
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
  wire \bdatw[15]_INST_0_i_56 ;
  wire \bdatw[15]_INST_0_i_59_0 ;
  wire \bdatw[15]_INST_0_i_59_n_0 ;
  wire \bdatw[15]_INST_0_i_60_0 ;
  wire \bdatw[15]_INST_0_i_60_n_0 ;
  wire \bdatw[15]_INST_0_i_61_n_0 ;
  wire \bdatw[15]_INST_0_i_62_n_0 ;
  wire \bdatw[15]_INST_0_i_63_n_0 ;
  wire \bdatw[15]_INST_0_i_64_n_0 ;
  wire \bdatw[15]_INST_0_i_73_n_0 ;
  wire \bdatw[15]_INST_0_i_74_n_0 ;
  wire \bdatw[15]_INST_0_i_75_n_0 ;
  wire \bdatw[15]_INST_0_i_76_n_0 ;
  wire \bdatw[15]_INST_0_i_77_n_0 ;
  wire \bdatw[15]_INST_0_i_78_n_0 ;
  wire \bdatw[15]_INST_0_i_79_n_0 ;
  wire \bdatw[15]_INST_0_i_80_n_0 ;
  wire \bdatw[15]_INST_0_i_81_n_0 ;
  wire \bdatw[15]_INST_0_i_82_n_0 ;
  wire \bdatw[15]_INST_0_i_83_n_0 ;
  wire \bdatw[15]_INST_0_i_84_n_0 ;
  wire \bdatw[15]_INST_0_i_85_n_0 ;
  wire \bdatw[15]_INST_0_i_87_n_0 ;
  wire \bdatw[15]_INST_0_i_88_n_0 ;
  wire \bdatw[15]_INST_0_i_89_n_0 ;
  wire \bdatw[15]_INST_0_i_8_n_0 ;
  wire \bdatw[15]_INST_0_i_90_n_0 ;
  wire \bdatw[15]_INST_0_i_91_n_0 ;
  wire \bdatw[15]_INST_0_i_93_n_0 ;
  wire \bdatw[15]_INST_0_i_94_n_0 ;
  wire \bdatw[15]_INST_0_i_95_n_0 ;
  wire \bdatw[15]_INST_0_i_96_n_0 ;
  wire \bdatw[15]_INST_0_i_97_n_0 ;
  wire \bdatw[15]_INST_0_i_98_n_0 ;
  wire \bdatw[15]_INST_0_i_99_n_0 ;
  wire \bdatw[15]_INST_0_i_9_n_0 ;
  wire \bdatw[1]_0 ;
  wire \bdatw[3]_0 ;
  wire \bdatw[4]_0 ;
  wire \bdatw[8]_0 ;
  wire \bdatw[8]_INST_0_i_10_n_0 ;
  wire \bdatw[8]_INST_0_i_15_n_0 ;
  wire \bdatw[8]_INST_0_i_1_n_0 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_1 ;
  wire \bdatw[8]_INST_0_i_6_n_0 ;
  wire \bdatw[8]_INST_0_i_9_n_0 ;
  wire \bdatw[9]_0 ;
  wire \bdatw[9]_INST_0_i_14_n_0 ;
  wire \bdatw[9]_INST_0_i_1_n_0 ;
  wire \bdatw[9]_INST_0_i_29_n_0 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_2_1 ;
  wire \bdatw[9]_INST_0_i_9_n_0 ;
  wire bdatw_0_sn_1;
  wire bdatw_10_sn_1;
  wire bdatw_11_sn_1;
  wire bdatw_12_sn_1;
  wire bdatw_13_sn_1;
  wire bdatw_14_sn_1;
  wire bdatw_15_sn_1;
  wire bdatw_1_sn_1;
  wire bdatw_3_sn_1;
  wire bdatw_4_sn_1;
  wire bdatw_8_sn_1;
  wire bdatw_9_sn_1;
  wire brdy;
  wire brdy_0;
  wire [15:0]cbus;
  wire [0:0]cbus_i;
  wire [1:0]cbus_sel_cr;
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
  wire \ccmd[0]_INST_0_i_1_0 ;
  wire \ccmd[0]_INST_0_i_1_n_0 ;
  wire \ccmd[0]_INST_0_i_20_n_0 ;
  wire \ccmd[0]_INST_0_i_21_n_0 ;
  wire \ccmd[0]_INST_0_i_2_n_0 ;
  wire \ccmd[0]_INST_0_i_3_n_0 ;
  wire \ccmd[0]_INST_0_i_4_n_0 ;
  wire \ccmd[0]_INST_0_i_5_n_0 ;
  wire \ccmd[0]_INST_0_i_6_n_0 ;
  wire \ccmd[0]_INST_0_i_7_n_0 ;
  wire \ccmd[0]_INST_0_i_9_n_0 ;
  wire \ccmd[1]_INST_0_i_10_n_0 ;
  wire \ccmd[1]_INST_0_i_11_n_0 ;
  wire \ccmd[1]_INST_0_i_12_n_0 ;
  wire \ccmd[1]_INST_0_i_13_n_0 ;
  wire \ccmd[1]_INST_0_i_14_n_0 ;
  wire \ccmd[1]_INST_0_i_15_n_0 ;
  wire \ccmd[1]_INST_0_i_17_n_0 ;
  wire \ccmd[1]_INST_0_i_18_n_0 ;
  wire \ccmd[1]_INST_0_i_1_n_0 ;
  wire \ccmd[1]_INST_0_i_2_n_0 ;
  wire \ccmd[1]_INST_0_i_3_n_0 ;
  wire \ccmd[1]_INST_0_i_4_n_0 ;
  wire \ccmd[1]_INST_0_i_5_n_0 ;
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
  wire \ccmd[2]_INST_0_i_22_n_0 ;
  wire \ccmd[2]_INST_0_i_23_n_0 ;
  wire \ccmd[2]_INST_0_i_24_n_0 ;
  wire \ccmd[2]_INST_0_i_25_n_0 ;
  wire \ccmd[2]_INST_0_i_26_n_0 ;
  wire \ccmd[2]_INST_0_i_27_n_0 ;
  wire \ccmd[2]_INST_0_i_28_n_0 ;
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
  wire \ccmd[3]_INST_0_i_13_n_0 ;
  wire \ccmd[3]_INST_0_i_14_n_0 ;
  wire \ccmd[3]_INST_0_i_15_n_0 ;
  wire \ccmd[3]_INST_0_i_16_n_0 ;
  wire \ccmd[3]_INST_0_i_17_0 ;
  wire \ccmd[3]_INST_0_i_17_1 ;
  wire \ccmd[3]_INST_0_i_17_n_0 ;
  wire \ccmd[3]_INST_0_i_18_n_0 ;
  wire \ccmd[3]_INST_0_i_19_n_0 ;
  wire \ccmd[3]_INST_0_i_1_0 ;
  wire \ccmd[3]_INST_0_i_1_n_0 ;
  wire \ccmd[3]_INST_0_i_20_n_0 ;
  wire \ccmd[3]_INST_0_i_22_n_0 ;
  wire \ccmd[3]_INST_0_i_24_n_0 ;
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
  wire \ccmd[4]_INST_0_i_19_n_0 ;
  wire \ccmd[4]_INST_0_i_20_n_0 ;
  wire \ccmd[4]_INST_0_i_21_n_0 ;
  wire \ccmd[4]_INST_0_i_22_n_0 ;
  wire \ccmd[4]_INST_0_i_23_n_0 ;
  wire \ccmd[4]_INST_0_i_25_n_0 ;
  wire \ccmd[4]_INST_0_i_2_0 ;
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
  wire [3:0]cpuid;
  wire crdy;
  wire crdy_0;
  wire crdy_1;
  wire ctl_copro;
  wire ctl_extadr;
  wire ctl_fetch_ext;
  wire ctl_fetch_ext_fl;
  wire ctl_fetch_ext_fl_i_3_n_0;
  wire ctl_fetch_ext_fl_i_4_n_0;
  wire ctl_fetch_ext_fl_i_5_n_0;
  wire ctl_fetch_fl;
  wire ctl_fetch_fl_reg_0;
  wire ctl_fetch_fl_reg_1;
  wire ctl_fetch_fl_reg_2;
  wire ctl_fetch_inferred_i_10_n_0;
  wire ctl_fetch_inferred_i_11_0;
  wire ctl_fetch_inferred_i_11_1;
  wire ctl_fetch_inferred_i_11_n_0;
  wire ctl_fetch_inferred_i_12_n_0;
  wire ctl_fetch_inferred_i_13_n_0;
  wire ctl_fetch_inferred_i_15_n_0;
  wire ctl_fetch_inferred_i_16_n_0;
  wire ctl_fetch_inferred_i_17_n_0;
  wire ctl_fetch_inferred_i_18_n_0;
  wire ctl_fetch_inferred_i_19_n_0;
  wire ctl_fetch_inferred_i_20_n_0;
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
  wire ctl_fetch_inferred_i_33_n_0;
  wire ctl_fetch_inferred_i_34_n_0;
  wire ctl_fetch_inferred_i_3_n_0;
  wire ctl_fetch_inferred_i_4_0;
  wire ctl_fetch_inferred_i_4_n_0;
  wire ctl_fetch_inferred_i_5_n_0;
  wire ctl_fetch_inferred_i_7_n_0;
  wire ctl_fetch_inferred_i_8_n_0;
  wire ctl_fetch_inferred_i_9_n_0;
  wire ctl_irq_ack;
  wire [4:0]ctl_sela;
  wire [1:0]ctl_selb;
  wire [4:0]ctl_selc;
  wire ctl_sp_dec;
  wire ctl_sp_inc;
  wire ctl_sr_ldie;
  wire ctl_sr_upd;
  (* DONT_TOUCH *) wire [15:0]eir;
  wire eir_fl0;
  wire [5:0]\eir_fl_reg[6]_0 ;
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
  wire fch_irq_req;
  wire fch_irq_req_fl;
  wire [15:0]fch_pc;
  wire [15:0]fdat;
  wire \grn_reg[15] ;
  wire \grn_reg[4] ;
  wire in0;
  (* DONT_TOUCH *) wire [15:0]ir;
  wire [15:0]ir_fl;
  wire [1:0]irq_lev;
  wire \iv[0]_i_10_n_0 ;
  wire \iv[0]_i_12_n_0 ;
  wire \iv[0]_i_13_n_0 ;
  wire \iv[0]_i_14_n_0 ;
  wire \iv[0]_i_2_0 ;
  wire \iv[0]_i_2_1 ;
  wire \iv[0]_i_2_n_0 ;
  wire \iv[0]_i_4_n_0 ;
  wire \iv[0]_i_5_n_0 ;
  wire \iv[0]_i_6_0 ;
  wire \iv[0]_i_6_1 ;
  wire \iv[0]_i_6_n_0 ;
  wire \iv[0]_i_7_n_0 ;
  wire \iv[0]_i_9_n_0 ;
  wire \iv[10]_i_10_n_0 ;
  wire \iv[10]_i_14_n_0 ;
  wire \iv[10]_i_16_n_0 ;
  wire \iv[10]_i_2_n_0 ;
  wire \iv[10]_i_4_n_0 ;
  wire \iv[10]_i_5_n_0 ;
  wire \iv[10]_i_7_n_0 ;
  wire \iv[10]_i_8_n_0 ;
  wire \iv[10]_i_9_n_0 ;
  wire \iv[11]_i_10_n_0 ;
  wire \iv[11]_i_11_n_0 ;
  wire \iv[11]_i_12_n_0 ;
  wire \iv[11]_i_18_n_0 ;
  wire \iv[11]_i_19_n_0 ;
  wire \iv[11]_i_24_n_0 ;
  wire \iv[11]_i_2_0 ;
  wire \iv[11]_i_2_1 ;
  wire \iv[11]_i_2_2 ;
  wire \iv[11]_i_2_3 ;
  wire \iv[11]_i_2_n_0 ;
  wire \iv[11]_i_4_n_0 ;
  wire \iv[11]_i_5_n_0 ;
  wire \iv[11]_i_6_n_0 ;
  wire \iv[11]_i_7_n_0 ;
  wire \iv[11]_i_8_n_0 ;
  wire \iv[11]_i_9_n_0 ;
  wire \iv[12]_i_10_n_0 ;
  wire \iv[12]_i_11_n_0 ;
  wire \iv[12]_i_14_n_0 ;
  wire \iv[12]_i_2_0 ;
  wire \iv[12]_i_2_n_0 ;
  wire \iv[12]_i_4_n_0 ;
  wire \iv[12]_i_5_0 ;
  wire \iv[12]_i_5_n_0 ;
  wire \iv[12]_i_6_n_0 ;
  wire \iv[12]_i_7_n_0 ;
  wire \iv[12]_i_8_n_0 ;
  wire \iv[12]_i_9_n_0 ;
  wire \iv[13]_i_10_n_0 ;
  wire \iv[13]_i_11_n_0 ;
  wire \iv[13]_i_12_n_0 ;
  wire \iv[13]_i_13_n_0 ;
  wire \iv[13]_i_14_n_0 ;
  wire \iv[13]_i_17_n_0 ;
  wire \iv[13]_i_19_n_0 ;
  wire \iv[13]_i_20_n_0 ;
  wire \iv[13]_i_23_n_0 ;
  wire \iv[13]_i_29_n_0 ;
  wire \iv[13]_i_2_0 ;
  wire \iv[13]_i_2_1 ;
  wire \iv[13]_i_2_2 ;
  wire \iv[13]_i_2_n_0 ;
  wire \iv[13]_i_30_n_0 ;
  wire \iv[13]_i_33_0 ;
  wire \iv[13]_i_33_n_0 ;
  wire \iv[13]_i_4_n_0 ;
  wire \iv[13]_i_5_n_0 ;
  wire \iv[13]_i_6_n_0 ;
  wire \iv[13]_i_7_n_0 ;
  wire \iv[13]_i_8_n_0 ;
  wire \iv[13]_i_9_n_0 ;
  wire \iv[14]_i_10_n_0 ;
  wire \iv[14]_i_12_n_0 ;
  wire \iv[14]_i_13_n_0 ;
  wire \iv[14]_i_14_n_0 ;
  wire \iv[14]_i_15_n_0 ;
  wire \iv[14]_i_16_n_0 ;
  wire \iv[14]_i_17_n_0 ;
  wire \iv[14]_i_20_n_0 ;
  wire \iv[14]_i_21 ;
  wire \iv[14]_i_22_0 ;
  wire \iv[14]_i_24_n_0 ;
  wire \iv[14]_i_2_0 ;
  wire \iv[14]_i_2_1 ;
  wire \iv[14]_i_2_2 ;
  wire \iv[14]_i_2_n_0 ;
  wire \iv[14]_i_32_n_0 ;
  wire \iv[14]_i_33_0 ;
  wire \iv[14]_i_33_n_0 ;
  wire \iv[14]_i_3_n_0 ;
  wire \iv[14]_i_5_n_0 ;
  wire \iv[14]_i_6_n_0 ;
  wire \iv[14]_i_7_n_0 ;
  wire \iv[14]_i_8_n_0 ;
  wire \iv[14]_i_9_n_0 ;
  wire \iv[15]_i_10_n_0 ;
  wire \iv[15]_i_11_n_0 ;
  wire \iv[15]_i_12_n_0 ;
  wire \iv[15]_i_13_n_0 ;
  wire \iv[15]_i_14_n_0 ;
  wire \iv[15]_i_15_n_0 ;
  wire \iv[15]_i_17_0 ;
  wire \iv[15]_i_17_n_0 ;
  wire \iv[15]_i_18_n_0 ;
  wire \iv[15]_i_19_n_0 ;
  wire \iv[15]_i_20_n_0 ;
  wire \iv[15]_i_21_n_0 ;
  wire \iv[15]_i_22_n_0 ;
  wire \iv[15]_i_23_n_0 ;
  wire \iv[15]_i_24_n_0 ;
  wire \iv[15]_i_26_n_0 ;
  wire \iv[15]_i_27_n_0 ;
  wire \iv[15]_i_28_n_0 ;
  wire \iv[15]_i_29_n_0 ;
  wire \iv[15]_i_30_n_0 ;
  wire \iv[15]_i_31_n_0 ;
  wire \iv[15]_i_3_0 ;
  wire \iv[15]_i_42_n_0 ;
  wire \iv[15]_i_43_n_0 ;
  wire \iv[15]_i_44_n_0 ;
  wire \iv[15]_i_45_n_0 ;
  wire \iv[15]_i_46_n_0 ;
  wire \iv[15]_i_47_n_0 ;
  wire \iv[15]_i_48_n_0 ;
  wire \iv[15]_i_49_n_0 ;
  wire \iv[15]_i_5_0 ;
  wire \iv[15]_i_5_1 ;
  wire \iv[15]_i_5_2 ;
  wire \iv[15]_i_5_n_0 ;
  wire \iv[15]_i_60_n_0 ;
  wire \iv[15]_i_63_n_0 ;
  wire \iv[15]_i_6_n_0 ;
  wire \iv[15]_i_7_n_0 ;
  wire \iv[15]_i_8_n_0 ;
  wire \iv[15]_i_9_n_0 ;
  wire \iv[1]_i_11_n_0 ;
  wire \iv[1]_i_12_n_0 ;
  wire \iv[1]_i_13_n_0 ;
  wire \iv[1]_i_14_n_0 ;
  wire \iv[1]_i_15_n_0 ;
  wire \iv[1]_i_2_0 ;
  wire \iv[1]_i_2_1 ;
  wire \iv[1]_i_2_2 ;
  wire \iv[1]_i_2_n_0 ;
  wire \iv[1]_i_4_n_0 ;
  wire \iv[1]_i_5_n_0 ;
  wire \iv[1]_i_6_n_0 ;
  wire \iv[1]_i_7_n_0 ;
  wire \iv[1]_i_8_n_0 ;
  wire \iv[1]_i_9_0 ;
  wire \iv[1]_i_9_1 ;
  wire \iv[1]_i_9_n_0 ;
  wire \iv[2]_i_10_n_0 ;
  wire \iv[2]_i_11_n_0 ;
  wire \iv[2]_i_12_n_0 ;
  wire \iv[2]_i_15_n_0 ;
  wire \iv[2]_i_2_0 ;
  wire \iv[2]_i_2_1 ;
  wire \iv[2]_i_2_n_0 ;
  wire \iv[2]_i_4_n_0 ;
  wire \iv[2]_i_6_n_0 ;
  wire \iv[2]_i_8_n_0 ;
  wire \iv[3]_i_10_n_0 ;
  wire \iv[3]_i_11_n_0 ;
  wire \iv[3]_i_12_n_0 ;
  wire \iv[3]_i_2_0 ;
  wire \iv[3]_i_2_1 ;
  wire \iv[3]_i_2_n_0 ;
  wire \iv[3]_i_4_n_0 ;
  wire \iv[3]_i_6_n_0 ;
  wire \iv[3]_i_7_0 ;
  wire \iv[3]_i_7_1 ;
  wire \iv[3]_i_7_n_0 ;
  wire \iv[3]_i_8_n_0 ;
  wire \iv[4]_i_10_n_0 ;
  wire \iv[4]_i_11_n_0 ;
  wire \iv[4]_i_14_n_0 ;
  wire \iv[4]_i_2_0 ;
  wire \iv[4]_i_2_1 ;
  wire \iv[4]_i_2_n_0 ;
  wire \iv[4]_i_4_n_0 ;
  wire \iv[4]_i_5_n_0 ;
  wire \iv[4]_i_6_0 ;
  wire \iv[4]_i_6_1 ;
  wire \iv[4]_i_6_n_0 ;
  wire \iv[4]_i_7_0 ;
  wire \iv[4]_i_7_n_0 ;
  wire \iv[4]_i_9_n_0 ;
  wire \iv[5]_i_10_n_0 ;
  wire \iv[5]_i_11_n_0 ;
  wire \iv[5]_i_12_n_0 ;
  wire \iv[5]_i_13_n_0 ;
  wire \iv[5]_i_14_n_0 ;
  wire \iv[5]_i_2_0 ;
  wire \iv[5]_i_2_n_0 ;
  wire \iv[5]_i_4_n_0 ;
  wire \iv[5]_i_6_n_0 ;
  wire \iv[5]_i_7_0 ;
  wire \iv[5]_i_7_n_0 ;
  wire \iv[5]_i_8_0 ;
  wire \iv[5]_i_8_n_0 ;
  wire \iv[6]_i_10_n_0 ;
  wire \iv[6]_i_11_n_0 ;
  wire \iv[6]_i_12_n_0 ;
  wire \iv[6]_i_13_n_0 ;
  wire \iv[6]_i_14_n_0 ;
  wire \iv[6]_i_2_0 ;
  wire \iv[6]_i_2_n_0 ;
  wire \iv[6]_i_4_n_0 ;
  wire \iv[6]_i_5_0 ;
  wire \iv[6]_i_5_1 ;
  wire \iv[6]_i_5_2 ;
  wire \iv[6]_i_5_n_0 ;
  wire \iv[6]_i_6_n_0 ;
  wire \iv[6]_i_8_n_0 ;
  wire \iv[6]_i_9_n_0 ;
  wire \iv[7]_i_10_n_0 ;
  wire \iv[7]_i_11_n_0 ;
  wire \iv[7]_i_13_n_0 ;
  wire \iv[7]_i_2_0 ;
  wire \iv[7]_i_2_1 ;
  wire \iv[7]_i_2_2 ;
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
  wire \iv[8]_i_17_n_0 ;
  wire \iv[8]_i_18_n_0 ;
  wire \iv[8]_i_19_n_0 ;
  wire \iv[8]_i_24 ;
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
  wire \iv[9]_i_16_n_0 ;
  wire \iv[9]_i_17_n_0 ;
  wire \iv[9]_i_2_0 ;
  wire \iv[9]_i_2_n_0 ;
  wire \iv[9]_i_4_n_0 ;
  wire \iv[9]_i_5_n_0 ;
  wire \iv[9]_i_6_n_0 ;
  wire \iv[9]_i_7_0 ;
  wire \iv[9]_i_7_n_0 ;
  wire \iv[9]_i_8_n_0 ;
  wire \iv[9]_i_9_n_0 ;
  wire \iv_reg[13]_i_35_n_0 ;
  wire [3:0]p_0_in;
  wire [4:0]p_0_in_0;
  wire p_0_in_1;
  wire [15:1]p_1_in;
  wire \pc[0]_i_2_n_0 ;
  wire \pc[10]_i_2_n_0 ;
  wire \pc[11]_i_3_n_0 ;
  wire \pc[12]_i_2_n_0 ;
  wire \pc[13]_i_2_n_0 ;
  wire \pc[14]_i_2_n_0 ;
  wire \pc[15]_i_3_n_0 ;
  wire \pc[1]_i_2_n_0 ;
  wire \pc[2]_i_2_n_0 ;
  wire \pc[3]_i_3_n_0 ;
  wire \pc[4]_i_2_n_0 ;
  wire \pc[5]_i_2_n_0 ;
  wire \pc[6]_i_2_n_0 ;
  wire \pc[7]_i_3_n_0 ;
  wire \pc[8]_i_2_n_0 ;
  wire \pc[9]_i_2_n_0 ;
  wire \pc_reg[0] ;
  wire \pc_reg[10] ;
  wire \pc_reg[11] ;
  wire \pc_reg[12] ;
  wire \pc_reg[13] ;
  wire \pc_reg[14] ;
  wire [15:0]\pc_reg[15] ;
  wire \pc_reg[15]_0 ;
  wire \pc_reg[1] ;
  wire \pc_reg[2] ;
  wire \pc_reg[3] ;
  wire \pc_reg[4] ;
  wire \pc_reg[5] ;
  wire \pc_reg[6] ;
  wire \pc_reg[7] ;
  wire \pc_reg[8] ;
  wire \pc_reg[9] ;
  wire [0:0]read_cyc;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_fl;
  wire rst_n_fl_reg_1;
  wire rst_n_fl_reg_2;
  wire rst_n_fl_reg_3;
  wire rst_n_fl_reg_4;
  wire rst_n_fl_reg_5;
  wire rst_n_fl_reg_6;
  wire rst_n_fl_reg_7;
  wire \sp[0]_i_3_n_0 ;
  wire \sp[10]_i_3_n_0 ;
  wire \sp[11]_i_3_n_0 ;
  wire \sp[12]_i_3_n_0 ;
  wire \sp[13]_i_3_n_0 ;
  wire \sp[14]_i_3_n_0 ;
  wire \sp[15]_i_10_n_0 ;
  wire \sp[15]_i_15_n_0 ;
  wire \sp[15]_i_16_n_0 ;
  wire \sp[15]_i_17_n_0 ;
  wire \sp[15]_i_18_n_0 ;
  wire \sp[15]_i_19_n_0 ;
  wire \sp[15]_i_21_n_0 ;
  wire \sp[15]_i_3_n_0 ;
  wire \sp[15]_i_5_0 ;
  wire \sp[15]_i_8_n_0 ;
  wire \sp[15]_i_9_n_0 ;
  wire \sp[1]_i_3_n_0 ;
  wire \sp[2]_i_3_n_0 ;
  wire \sp[3]_i_3_n_0 ;
  wire \sp[4]_i_3_n_0 ;
  wire \sp[5]_i_3_n_0 ;
  wire \sp[6]_i_3_n_0 ;
  wire \sp[7]_i_3_n_0 ;
  wire \sp[8]_i_3_n_0 ;
  wire \sp[9]_i_3_n_0 ;
  wire \sp_reg[0] ;
  wire \sp_reg[10] ;
  wire \sp_reg[11] ;
  wire \sp_reg[12] ;
  wire \sp_reg[13] ;
  wire \sp_reg[14] ;
  wire [15:0]\sp_reg[15] ;
  wire \sp_reg[15]_0 ;
  wire \sp_reg[1] ;
  wire \sp_reg[2] ;
  wire \sp_reg[3] ;
  wire \sp_reg[4] ;
  wire \sp_reg[5] ;
  wire \sp_reg[6] ;
  wire \sp_reg[7] ;
  wire \sp_reg[8] ;
  wire \sp_reg[9] ;
  wire \sr[0]_i_10_n_0 ;
  wire \sr[0]_i_11_n_0 ;
  wire \sr[0]_i_12_n_0 ;
  wire \sr[0]_i_13_n_0 ;
  wire \sr[0]_i_14_n_0 ;
  wire \sr[0]_i_16_n_0 ;
  wire \sr[0]_i_17_n_0 ;
  wire \sr[0]_i_18_n_0 ;
  wire \sr[0]_i_19_n_0 ;
  wire \sr[0]_i_20_n_0 ;
  wire \sr[0]_i_21_n_0 ;
  wire \sr[0]_i_22_n_0 ;
  wire \sr[0]_i_23_n_0 ;
  wire \sr[0]_i_25_n_0 ;
  wire \sr[0]_i_26_n_0 ;
  wire \sr[0]_i_27_n_0 ;
  wire \sr[0]_i_28_n_0 ;
  wire \sr[0]_i_2_n_0 ;
  wire \sr[0]_i_31_n_0 ;
  wire \sr[0]_i_33_n_0 ;
  wire \sr[0]_i_34_n_0 ;
  wire \sr[0]_i_35_n_0 ;
  wire \sr[0]_i_36_n_0 ;
  wire \sr[0]_i_37_n_0 ;
  wire \sr[0]_i_38_n_0 ;
  wire \sr[0]_i_39_n_0 ;
  wire \sr[0]_i_40_n_0 ;
  wire \sr[0]_i_41_n_0 ;
  wire \sr[0]_i_42_n_0 ;
  wire \sr[0]_i_43_n_0 ;
  wire \sr[0]_i_44_n_0 ;
  wire \sr[0]_i_45_n_0 ;
  wire \sr[0]_i_46_n_0 ;
  wire \sr[0]_i_47_n_0 ;
  wire \sr[0]_i_48_n_0 ;
  wire \sr[0]_i_49_n_0 ;
  wire \sr[0]_i_4_n_0 ;
  wire \sr[0]_i_5_0 ;
  wire \sr[0]_i_5_1 ;
  wire \sr[0]_i_5_2 ;
  wire \sr[0]_i_5_3 ;
  wire \sr[0]_i_6_n_0 ;
  wire \sr[0]_i_7_n_0 ;
  wire \sr[0]_i_8_n_0 ;
  wire \sr[0]_i_9_n_0 ;
  wire \sr[10]_i_10_n_0 ;
  wire \sr[10]_i_11_n_0 ;
  wire \sr[10]_i_12_n_0 ;
  wire \sr[10]_i_13_n_0 ;
  wire \sr[10]_i_14_n_0 ;
  wire \sr[10]_i_15_n_0 ;
  wire \sr[10]_i_16_n_0 ;
  wire \sr[10]_i_17_n_0 ;
  wire \sr[10]_i_18_n_0 ;
  wire \sr[10]_i_19_n_0 ;
  wire \sr[10]_i_20_n_0 ;
  wire \sr[10]_i_21_n_0 ;
  wire \sr[10]_i_2_n_0 ;
  wire \sr[10]_i_3_n_0 ;
  wire \sr[10]_i_5_n_0 ;
  wire \sr[10]_i_6_n_0 ;
  wire \sr[10]_i_7_n_0 ;
  wire \sr[10]_i_8_n_0 ;
  wire \sr[10]_i_9_n_0 ;
  wire \sr[15]_i_2_n_0 ;
  wire \sr[15]_i_3_n_0 ;
  wire \sr[15]_i_4_n_0 ;
  wire \sr[2]_i_2_n_0 ;
  wire \sr[2]_i_3_n_0 ;
  wire \sr[3]_i_2_n_0 ;
  wire \sr[3]_i_3_n_0 ;
  wire \sr[4]_i_10_n_0 ;
  wire \sr[4]_i_11_n_0 ;
  wire \sr[4]_i_12_n_0 ;
  wire \sr[4]_i_13_n_0 ;
  wire \sr[4]_i_14_0 ;
  wire \sr[4]_i_14_n_0 ;
  wire \sr[4]_i_15_0 ;
  wire \sr[4]_i_15_1 ;
  wire \sr[4]_i_15_n_0 ;
  wire \sr[4]_i_16_n_0 ;
  wire \sr[4]_i_17_0 ;
  wire \sr[4]_i_17_n_0 ;
  wire \sr[4]_i_18_0 ;
  wire \sr[4]_i_18_1 ;
  wire \sr[4]_i_18_2 ;
  wire \sr[4]_i_18_n_0 ;
  wire \sr[4]_i_19_n_0 ;
  wire \sr[4]_i_20_n_0 ;
  wire \sr[4]_i_22_n_0 ;
  wire \sr[4]_i_23_n_0 ;
  wire \sr[4]_i_25_n_0 ;
  wire \sr[4]_i_26_n_0 ;
  wire \sr[4]_i_27_n_0 ;
  wire \sr[4]_i_28_n_0 ;
  wire \sr[4]_i_29_n_0 ;
  wire \sr[4]_i_2_n_0 ;
  wire \sr[4]_i_30_n_0 ;
  wire \sr[4]_i_31_n_0 ;
  wire \sr[4]_i_32_n_0 ;
  wire \sr[4]_i_33_n_0 ;
  wire \sr[4]_i_34_n_0 ;
  wire \sr[4]_i_37_n_0 ;
  wire \sr[4]_i_3_n_0 ;
  wire \sr[4]_i_4_n_0 ;
  wire \sr[4]_i_5_n_0 ;
  wire \sr[4]_i_6_0 ;
  wire \sr[4]_i_6_n_0 ;
  wire \sr[4]_i_7_0 ;
  wire \sr[4]_i_7_n_0 ;
  wire \sr[4]_i_8_0 ;
  wire \sr[4]_i_8_1 ;
  wire \sr[4]_i_8_2 ;
  wire \sr[4]_i_8_3 ;
  wire \sr[4]_i_8_n_0 ;
  wire \sr[4]_i_9_n_0 ;
  wire \sr[5]_i_2_0 ;
  wire \sr[5]_i_2_1 ;
  wire \sr[5]_i_2_n_0 ;
  wire \sr[5]_i_3_n_0 ;
  wire \sr[5]_i_4_n_0 ;
  wire \sr[5]_i_5_n_0 ;
  wire \sr[6]_i_2_n_0 ;
  wire \sr[6]_i_3_0 ;
  wire \sr[6]_i_3_1 ;
  wire \sr[6]_i_3_2 ;
  wire \sr[6]_i_3_n_0 ;
  wire \sr[6]_i_4_n_0 ;
  wire \sr[6]_i_6_n_0 ;
  wire \sr[7]_i_10_n_0 ;
  wire \sr[7]_i_11_n_0 ;
  wire \sr[7]_i_12_n_0 ;
  wire \sr[7]_i_13_n_0 ;
  wire \sr[7]_i_14_n_0 ;
  wire \sr[7]_i_15_n_0 ;
  wire \sr[7]_i_16_n_0 ;
  wire \sr[7]_i_17_n_0 ;
  wire \sr[7]_i_18_n_0 ;
  wire \sr[7]_i_19_n_0 ;
  wire \sr[7]_i_20_n_0 ;
  wire \sr[7]_i_21_n_0 ;
  wire \sr[7]_i_22_n_0 ;
  wire \sr[7]_i_23_n_0 ;
  wire \sr[7]_i_24_n_0 ;
  wire \sr[7]_i_25_n_0 ;
  wire \sr[7]_i_26_n_0 ;
  wire \sr[7]_i_27_n_0 ;
  wire \sr[7]_i_28_n_0 ;
  wire \sr[7]_i_29_n_0 ;
  wire \sr[7]_i_30_n_0 ;
  wire \sr[7]_i_31_n_0 ;
  wire \sr[7]_i_32_n_0 ;
  wire \sr[7]_i_33_n_0 ;
  wire \sr[7]_i_34_n_0 ;
  wire \sr[7]_i_3_n_0 ;
  wire \sr[7]_i_4_0 ;
  wire \sr[7]_i_4_n_0 ;
  wire \sr[7]_i_5_n_0 ;
  wire \sr[7]_i_6_0 ;
  wire \sr[7]_i_6_n_0 ;
  wire \sr[7]_i_7_n_0 ;
  wire \sr[7]_i_8_n_0 ;
  wire [0:0]\sr_reg[0] ;
  wire [0:0]\sr_reg[0]_0 ;
  wire [0:0]\sr_reg[0]_1 ;
  wire [0:0]\sr_reg[0]_10 ;
  wire [0:0]\sr_reg[0]_11 ;
  wire [0:0]\sr_reg[0]_12 ;
  wire [0:0]\sr_reg[0]_13 ;
  wire [0:0]\sr_reg[0]_2 ;
  wire [0:0]\sr_reg[0]_3 ;
  wire [0:0]\sr_reg[0]_4 ;
  wire [0:0]\sr_reg[0]_5 ;
  wire [0:0]\sr_reg[0]_6 ;
  wire [0:0]\sr_reg[0]_7 ;
  wire [0:0]\sr_reg[0]_8 ;
  wire [0:0]\sr_reg[0]_9 ;
  wire \sr_reg[10] ;
  wire [11:0]\sr_reg[15] ;
  wire [0:0]\sr_reg[6] ;
  wire \stat[0]_i_10_n_0 ;
  wire \stat[0]_i_11_n_0 ;
  wire \stat[0]_i_12_0 ;
  wire \stat[0]_i_12_n_0 ;
  wire [0:0]\stat[0]_i_13_0 ;
  wire \stat[0]_i_13_1 ;
  wire \stat[0]_i_13_n_0 ;
  wire \stat[0]_i_14_n_0 ;
  wire \stat[0]_i_15_n_0 ;
  wire \stat[0]_i_16_n_0 ;
  wire \stat[0]_i_17_n_0 ;
  wire \stat[0]_i_18_n_0 ;
  wire \stat[0]_i_19_n_0 ;
  wire \stat[0]_i_20_n_0 ;
  wire \stat[0]_i_21_n_0 ;
  wire \stat[0]_i_23_n_0 ;
  wire \stat[0]_i_25_n_0 ;
  wire \stat[0]_i_26_n_0 ;
  wire \stat[0]_i_27_n_0 ;
  wire \stat[0]_i_28_n_0 ;
  wire \stat[0]_i_29_n_0 ;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_30_n_0 ;
  wire \stat[0]_i_31_n_0 ;
  wire \stat[0]_i_32_n_0 ;
  wire \stat[0]_i_34_n_0 ;
  wire \stat[0]_i_3_0 ;
  wire \stat[0]_i_3_1 ;
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
  wire \stat[1]_i_14_n_0 ;
  wire \stat[1]_i_15_n_0 ;
  wire \stat[1]_i_16_n_0 ;
  wire \stat[1]_i_17_n_0 ;
  wire \stat[1]_i_18_n_0 ;
  wire \stat[1]_i_19_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[1]_i_6_n_0 ;
  wire \stat[1]_i_7_n_0 ;
  wire \stat[1]_i_9_n_0 ;
  wire \stat[2]_i_10_n_0 ;
  wire \stat[2]_i_11_n_0 ;
  wire \stat[2]_i_12_n_0 ;
  wire \stat[2]_i_13_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire \stat[2]_i_4_n_0 ;
  wire \stat[2]_i_5_n_0 ;
  wire \stat[2]_i_6_n_0 ;
  wire \stat[2]_i_7_n_0 ;
  wire \stat[2]_i_8_n_0 ;
  wire [2:0]\stat_reg[0] ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[0]_2 ;
  wire \stat_reg[0]_3 ;
  wire [1:0]\stat_reg[1] ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire \stat_reg[1]_2 ;
  wire \stat_reg[2] ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_10 ;
  wire \stat_reg[2]_11 ;
  wire \stat_reg[2]_12 ;
  wire \stat_reg[2]_13 ;
  wire \stat_reg[2]_14 ;
  wire [0:0]\stat_reg[2]_2 ;
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
  wire [0:0]tout__1_carry_i_8_0;
  wire tout__1_carry_i_8_n_0;
  wire \tr_reg[0] ;
  wire \tr_reg[10] ;
  wire \tr_reg[10]_0 ;
  wire [3:0]\tr_reg[11] ;
  wire \tr_reg[11]_0 ;
  wire \tr_reg[12] ;
  wire \tr_reg[13] ;
  wire \tr_reg[14] ;
  wire [3:0]\tr_reg[15] ;
  wire \tr_reg[15]_0 ;
  wire \tr_reg[15]_1 ;
  wire \tr_reg[1] ;
  wire \tr_reg[2] ;
  wire \tr_reg[2]_0 ;
  wire \tr_reg[2]_1 ;
  wire \tr_reg[3] ;
  wire \tr_reg[3]_0 ;
  wire \tr_reg[4] ;
  wire \tr_reg[5] ;
  wire \tr_reg[5]_0 ;
  wire \tr_reg[6] ;
  wire [3:0]\tr_reg[7] ;
  wire \tr_reg[7]_0 ;
  wire \tr_reg[8] ;
  wire \tr_reg[9] ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[0]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_extadr),
        .I3(abus_0[0]),
        .O(badr[0]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[10]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_extadr),
        .I3(abus_0[10]),
        .O(badr[10]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[11]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_extadr),
        .I3(abus_0[11]),
        .O(badr[11]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[12]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_extadr),
        .I3(abus_0[12]),
        .O(badr[12]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[13]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_extadr),
        .I3(abus_0[13]),
        .O(badr[13]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[14]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_extadr),
        .I3(abus_0[14]),
        .O(badr[14]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[15]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_extadr),
        .I3(abus_0[15]),
        .O(badr[15]));
  LUT5 #(
    .INIT(32'h55541554)) 
    \badr[15]_INST_0_i_100 
       (.I0(ir[7]),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ir[3]),
        .O(\badr[15]_INST_0_i_100_n_0 ));
  LUT4 #(
    .INIT(16'h6623)) 
    \badr[15]_INST_0_i_102 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[3]),
        .I3(ir[4]),
        .O(\badr[15]_INST_0_i_102_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_103 
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(ir[6]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_103_n_0 ));
  LUT5 #(
    .INIT(32'h0099C3CC)) 
    \badr[15]_INST_0_i_104 
       (.I0(\sr_reg[15] [4]),
        .I1(ir[11]),
        .I2(\sr_reg[15] [5]),
        .I3(ir[13]),
        .I4(ir[14]),
        .O(\badr[15]_INST_0_i_104_n_0 ));
  LUT4 #(
    .INIT(16'hC428)) 
    \badr[15]_INST_0_i_105 
       (.I0(ir[4]),
        .I1(ir[7]),
        .I2(ir[5]),
        .I3(ir[3]),
        .O(\badr[15]_INST_0_i_105_n_0 ));
  LUT4 #(
    .INIT(16'h0445)) 
    \badr[15]_INST_0_i_106 
       (.I0(Q[0]),
        .I1(ir[7]),
        .I2(ir[4]),
        .I3(ir[5]),
        .O(\badr[15]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h0F000D0000000D00)) 
    \badr[15]_INST_0_i_107 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[9]),
        .I3(ir[3]),
        .I4(ir[8]),
        .I5(crdy),
        .O(\badr[15]_INST_0_i_107_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_11 
       (.I0(ctl_sela[4]),
        .I1(ctl_sela[3]),
        .O(\stat_reg[2]_10 ));
  LUT3 #(
    .INIT(8'h08)) 
    \badr[15]_INST_0_i_12 
       (.I0(ctl_sela[4]),
        .I1(\badr[15]_INST_0_i_3_0 [1]),
        .I2(ctl_sela[3]),
        .O(\badr[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFCFFFCFFFFFF)) 
    \badr[15]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_34_n_0 ),
        .I1(\bcmd[2]_INST_0_i_4_n_0 ),
        .I2(ir[6]),
        .I3(ir[2]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \badr[15]_INST_0_i_16 
       (.I0(Q[0]),
        .I1(ir[15]),
        .I2(ir[14]),
        .I3(ir[13]),
        .I4(ir[12]),
        .O(\badr[15]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFDDDDDDDDDDDD)) 
    \badr[15]_INST_0_i_17 
       (.I0(ir[15]),
        .I1(Q[0]),
        .I2(ir[11]),
        .I3(ir[14]),
        .I4(ir[13]),
        .I5(ir[12]),
        .O(\badr[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00BF0000FFFFFFFF)) 
    \badr[15]_INST_0_i_18 
       (.I0(\badr[15]_INST_0_i_35_n_0 ),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_36_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .I5(\sr[0]_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h000080FF)) 
    \badr[15]_INST_0_i_22 
       (.I0(rst_n_fl_reg_6),
        .I1(rst_n_fl_reg_1),
        .I2(rst_n_fl_reg_3),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\badr[15]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2F2FFF2F2F2F2)) 
    \badr[15]_INST_0_i_23 
       (.I0(ir[9]),
        .I1(\badr[15]_INST_0_i_17_n_0 ),
        .I2(Q[1]),
        .I3(\badr[15]_INST_0_i_39_n_0 ),
        .I4(\badr[15]_INST_0_i_40_n_0 ),
        .I5(\badr[15]_INST_0_i_41_n_0 ),
        .O(\badr[15]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AAA2A2A22AA2A)) 
    \badr[15]_INST_0_i_24 
       (.I0(\badr[15]_INST_0_i_42_n_0 ),
        .I1(\badr[15]_INST_0_i_43_n_0 ),
        .I2(ir[0]),
        .I3(ir[3]),
        .I4(ir[2]),
        .I5(ir[1]),
        .O(\badr[15]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h51005555FFFFFFFF)) 
    \badr[15]_INST_0_i_25 
       (.I0(\badr[15]_INST_0_i_44_n_0 ),
        .I1(ir[4]),
        .I2(\badr[15]_INST_0_i_45_n_0 ),
        .I3(\badr[15]_INST_0_i_46_n_0 ),
        .I4(\badr[15]_INST_0_i_47_n_0 ),
        .I5(\sr[0]_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFBBFB)) 
    \badr[15]_INST_0_i_28 
       (.I0(\sr[0]_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_48_n_0 ),
        .I2(\stat[2]_i_4_n_0 ),
        .I3(\badr[15]_INST_0_i_49_n_0 ),
        .I4(\badr[15]_INST_0_i_50_n_0 ),
        .I5(Q[2]),
        .O(ctl_sela[3]));
  LUT6 #(
    .INIT(64'hEFEEEFEF00000000)) 
    \badr[15]_INST_0_i_29 
       (.I0(\badr[15]_INST_0_i_51_n_0 ),
        .I1(\badr[15]_INST_0_i_52_n_0 ),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_53_n_0 ),
        .I4(\badr[15]_INST_0_i_54_n_0 ),
        .I5(\badr[15]_INST_0_i_22_n_0 ),
        .O(ctl_sela[4]));
  LUT6 #(
    .INIT(64'hF088FFFFF0880000)) 
    \badr[15]_INST_0_i_3 
       (.I0(\stat_reg[2]_10 ),
        .I1(\badr[15]_INST_0_i_1_1 [1]),
        .I2(\badr[15]_INST_0_i_12_n_0 ),
        .I3(\sr_reg[15] [0]),
        .I4(ctl_sela[0]),
        .I5(\badr[15]_INST_0_i_1_2 ),
        .O(\grn_reg[15] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0404FF04)) 
    \badr[15]_INST_0_i_30 
       (.I0(\badr[15]_INST_0_i_55_n_0 ),
        .I1(Q[0]),
        .I2(\bdatw[15]_INST_0_i_42_n_0 ),
        .I3(ir[8]),
        .I4(\badr[15]_INST_0_i_17_n_0 ),
        .I5(Q[1]),
        .O(\badr[15]_INST_0_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_31 
       (.I0(ir[15]),
        .I1(Q[0]),
        .O(\badr[15]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hBABFAAAAAAAAAAAA)) 
    \badr[15]_INST_0_i_33 
       (.I0(\bdatw[15]_INST_0_i_50_n_0 ),
        .I1(\badr[15]_INST_0_i_56_n_0 ),
        .I2(ir[11]),
        .I3(\badr[15]_INST_0_i_57_n_0 ),
        .I4(ir[13]),
        .I5(ir[12]),
        .O(\badr[15]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFF00FFFFFFFF)) 
    \badr[15]_INST_0_i_34 
       (.I0(ir[3]),
        .I1(ir[2]),
        .I2(\ccmd[2]_INST_0_i_24_n_0 ),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[7]),
        .O(\badr[15]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAAA2AAA2AAA2AAAA)) 
    \badr[15]_INST_0_i_35 
       (.I0(\badr[15]_INST_0_i_58_n_0 ),
        .I1(ir[2]),
        .I2(\bcmd[2]_INST_0_i_4_n_0 ),
        .I3(\badr[15]_INST_0_i_59_n_0 ),
        .I4(ir[7]),
        .I5(\badr[15]_INST_0_i_60_n_0 ),
        .O(\badr[15]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h035003F0005003F0)) 
    \badr[15]_INST_0_i_36 
       (.I0(\badr[15]_INST_0_i_61_n_0 ),
        .I1(crdy),
        .I2(ir[11]),
        .I3(ir[10]),
        .I4(\badr[15]_INST_0_i_62_n_0 ),
        .I5(\badr[15]_INST_0_i_63_n_0 ),
        .O(\badr[15]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h45004545FFFFFFFF)) 
    \badr[15]_INST_0_i_37 
       (.I0(\badr[15]_INST_0_i_64_n_0 ),
        .I1(\badr[15]_INST_0_i_65_n_0 ),
        .I2(ir[10]),
        .I3(\badr[15]_INST_0_i_45_n_0 ),
        .I4(ir[5]),
        .I5(\badr[15]_INST_0_i_47_n_0 ),
        .O(\badr[15]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \badr[15]_INST_0_i_38 
       (.I0(ir[3]),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(ir[1]),
        .O(rst_n_fl_reg_6));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_39 
       (.I0(ir[10]),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(ir[7]),
        .I4(ir[9]),
        .I5(ir[8]),
        .O(\badr[15]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \badr[15]_INST_0_i_4 
       (.I0(ctl_fetch_inferred_i_4_0),
        .I1(\badr[15]_INST_0_i_15_n_0 ),
        .I2(\badr[15]_INST_0_i_16_n_0 ),
        .I3(\badr[15]_INST_0_i_17_n_0 ),
        .I4(ir[10]),
        .I5(\badr[15]_INST_0_i_18_n_0 ),
        .O(ctl_sela[2]));
  LUT3 #(
    .INIT(8'h15)) 
    \badr[15]_INST_0_i_40 
       (.I0(ir[1]),
        .I1(fch_irq_req),
        .I2(ir[0]),
        .O(\badr[15]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \badr[15]_INST_0_i_41 
       (.I0(\badr[15]_INST_0_i_66_n_0 ),
        .I1(ir[15]),
        .I2(Q[0]),
        .I3(ir[2]),
        .I4(ir[4]),
        .I5(ir[3]),
        .O(\badr[15]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h33F7F7F7FFFFFFFF)) 
    \badr[15]_INST_0_i_42 
       (.I0(ir[3]),
        .I1(ir[1]),
        .I2(\badr[15]_INST_0_i_67_n_0 ),
        .I3(\badr[15]_INST_0_i_68_n_0 ),
        .I4(\bcmd[2]_INST_0_i_3_n_0 ),
        .I5(\bcmd[1]_INST_0_i_8_n_0 ),
        .O(\badr[15]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \badr[15]_INST_0_i_43 
       (.I0(\bcmd[0]_INST_0_i_9_n_0 ),
        .I1(ir[7]),
        .I2(ir[6]),
        .I3(ir[10]),
        .I4(ctl_fetch_ext_fl_i_3_n_0),
        .I5(\badr[15]_INST_0_i_66_n_0 ),
        .O(\badr[15]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0530)) 
    \badr[15]_INST_0_i_44 
       (.I0(\badr[15]_INST_0_i_69_n_0 ),
        .I1(\badr[15]_INST_0_i_70_n_0 ),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(\badr[15]_INST_0_i_71_n_0 ),
        .I5(\badr[15]_INST_0_i_72_n_0 ),
        .O(\badr[15]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hFCFD)) 
    \badr[15]_INST_0_i_45 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47FF55FFFFFF)) 
    \badr[15]_INST_0_i_46 
       (.I0(ir[1]),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(\bcmd[1]_INST_0_i_9_n_0 ),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_47 
       (.I0(crdy),
        .I1(ir[11]),
        .O(\badr[15]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hBBBFBFBFAAAAAAAA)) 
    \badr[15]_INST_0_i_48 
       (.I0(\badr[15]_INST_0_i_73_n_0 ),
        .I1(ir[14]),
        .I2(\badr[15]_INST_0_i_74_n_0 ),
        .I3(\ccmd[3]_INST_0_i_9_n_0 ),
        .I4(\badr[15]_INST_0_i_75_n_0 ),
        .I5(\stat[0]_i_5_n_0 ),
        .O(\badr[15]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAFF3AFFFAFFFA)) 
    \badr[15]_INST_0_i_49 
       (.I0(\badr[15]_INST_0_i_76_n_0 ),
        .I1(\ccmd[2]_INST_0_i_27_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\iv[15]_i_29_n_0 ),
        .I5(\badr[15]_INST_0_i_77_n_0 ),
        .O(\badr[15]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \badr[15]_INST_0_i_50 
       (.I0(ir[11]),
        .I1(ir[2]),
        .I2(ir[0]),
        .I3(\badr[15]_INST_0_i_78_n_0 ),
        .I4(\badr[15]_INST_0_i_79_n_0 ),
        .I5(\badr[15]_INST_0_i_80_n_0 ),
        .O(\badr[15]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4F4F404)) 
    \badr[15]_INST_0_i_51 
       (.I0(Q[0]),
        .I1(\iv[15]_i_3_0 ),
        .I2(ir[13]),
        .I3(\badr[15]_INST_0_i_81_n_0 ),
        .I4(\badr[15]_INST_0_i_82_n_0 ),
        .I5(\badr[15]_INST_0_i_83_n_0 ),
        .O(\badr[15]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0200)) 
    \badr[15]_INST_0_i_52 
       (.I0(ir[11]),
        .I1(Q[0]),
        .I2(ir[14]),
        .I3(\badr[15]_INST_0_i_29_1 ),
        .I4(\badr[15]_INST_0_i_50_n_0 ),
        .I5(\badr[15]_INST_0_i_85_n_0 ),
        .O(\badr[15]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h00008000AAAAAAAA)) 
    \badr[15]_INST_0_i_53 
       (.I0(\ccmd[2]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_101_n_0 ),
        .I2(rst_n_fl_reg_3),
        .I3(\badr[15]_INST_0_i_86_n_0 ),
        .I4(\badr[15]_INST_0_i_87_n_0 ),
        .I5(\badr[15]_INST_0_i_29_0 ),
        .O(\badr[15]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hDDDD5DDD5D5D5D5D)) 
    \badr[15]_INST_0_i_54 
       (.I0(\badr[15]_INST_0_i_89_n_0 ),
        .I1(\badr[15]_INST_0_i_29_2 ),
        .I2(\badr[15]_INST_0_i_91_n_0 ),
        .I3(ir[10]),
        .I4(\badr[15]_INST_0_i_92_n_0 ),
        .I5(\badr[15]_INST_0_i_93_n_0 ),
        .O(\badr[15]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hFD00FDFDFFFFFFFF)) 
    \badr[15]_INST_0_i_55 
       (.I0(\bcmd[2]_INST_0_i_3_n_0 ),
        .I1(\bcmd[2]_INST_0_i_4_n_0 ),
        .I2(ir[6]),
        .I3(\badr[15]_INST_0_i_67_n_0 ),
        .I4(ir[3]),
        .I5(ir[0]),
        .O(\badr[15]_INST_0_i_55_n_0 ));
  MUXF7 \badr[15]_INST_0_i_56 
       (.I0(\badr[15]_INST_0_i_94_n_0 ),
        .I1(\badr[15]_INST_0_i_95_n_0 ),
        .O(\badr[15]_INST_0_i_56_n_0 ),
        .S(ir[10]));
  LUT5 #(
    .INIT(32'h8F80AFAF)) 
    \badr[15]_INST_0_i_57 
       (.I0(\badr[15]_INST_0_i_96_n_0 ),
        .I1(\badr[15]_INST_0_i_97_n_0 ),
        .I2(crdy),
        .I3(\badr[15]_INST_0_i_98_n_0 ),
        .I4(ir[10]),
        .O(\badr[15]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF2FFFFFFF2FF)) 
    \badr[15]_INST_0_i_58 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[9]),
        .I3(ir[5]),
        .I4(ir[8]),
        .I5(crdy),
        .O(\badr[15]_INST_0_i_58_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA82A8)) 
    \badr[15]_INST_0_i_59 
       (.I0(ir[7]),
        .I1(ir[3]),
        .I2(ir[4]),
        .I3(ir[6]),
        .I4(ir[5]),
        .O(\badr[15]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h88888A88AAAAAAAA)) 
    \badr[15]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_23_n_0 ),
        .I2(\badr[15]_INST_0_i_24_n_0 ),
        .I3(Q[0]),
        .I4(ir[15]),
        .I5(\badr[15]_INST_0_i_25_n_0 ),
        .O(ctl_sela[1]));
  LUT4 #(
    .INIT(16'h4003)) 
    \badr[15]_INST_0_i_60 
       (.I0(ir[3]),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(ir[4]),
        .O(\badr[15]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hF331F033F33BFF33)) 
    \badr[15]_INST_0_i_61 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(ir[2]),
        .O(\badr[15]_INST_0_i_61_n_0 ));
  LUT5 #(
    .INIT(32'h777FFF7F)) 
    \badr[15]_INST_0_i_62 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[2]),
        .I3(ir[6]),
        .I4(ir[5]),
        .O(\badr[15]_INST_0_i_62_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \badr[15]_INST_0_i_63 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(ir[5]),
        .I4(ir[9]),
        .O(\badr[15]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h0000B800AA000000)) 
    \badr[15]_INST_0_i_64 
       (.I0(ir[2]),
        .I1(ir[6]),
        .I2(ir[5]),
        .I3(\bcmd[1]_INST_0_i_9_n_0 ),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h0F77FFFF3F77FFFF)) 
    \badr[15]_INST_0_i_65 
       (.I0(ir[2]),
        .I1(ir[9]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ir[8]),
        .I5(ir[7]),
        .O(\badr[15]_INST_0_i_65_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \badr[15]_INST_0_i_66 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[11]),
        .I3(ir[12]),
        .O(\badr[15]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \badr[15]_INST_0_i_67 
       (.I0(ir[11]),
        .I1(ir[8]),
        .I2(ir[7]),
        .I3(ir[10]),
        .I4(ir[9]),
        .I5(\ccmd[2]_INST_0_i_24_n_0 ),
        .O(\badr[15]_INST_0_i_67_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \badr[15]_INST_0_i_68 
       (.I0(ir[6]),
        .I1(ir[8]),
        .I2(ir[9]),
        .O(\badr[15]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h3333355355333533)) 
    \badr[15]_INST_0_i_69 
       (.I0(ir[1]),
        .I1(ir[4]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h37373FFFF7F7FFFF)) 
    \badr[15]_INST_0_i_70 
       (.I0(ir[1]),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[9]),
        .I5(ir[4]),
        .O(\badr[15]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h4044405540444044)) 
    \badr[15]_INST_0_i_71 
       (.I0(\sr[0]_i_22_n_0 ),
        .I1(ir[4]),
        .I2(crdy),
        .I3(ir[8]),
        .I4(ir[6]),
        .I5(ir[7]),
        .O(\badr[15]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000A8)) 
    \badr[15]_INST_0_i_72 
       (.I0(\badr[15]_INST_0_i_99_n_0 ),
        .I1(ir[7]),
        .I2(ir[1]),
        .I3(\bcmd[2]_INST_0_i_4_n_0 ),
        .I4(\ccmd[2]_INST_0_i_26_n_0 ),
        .I5(\badr[15]_INST_0_i_100_n_0 ),
        .O(\badr[15]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFFFFFBFBFFFB)) 
    \badr[15]_INST_0_i_73 
       (.I0(ir[15]),
        .I1(ir[12]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(ir[13]),
        .I5(\badr[15]_INST_0_i_48_0 ),
        .O(\badr[15]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \badr[15]_INST_0_i_74 
       (.I0(ir[7]),
        .I1(ir[10]),
        .I2(\ccmd[4]_INST_0_i_10_n_0 ),
        .I3(ir[6]),
        .I4(Q[0]),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h003000000F050000)) 
    \badr[15]_INST_0_i_75 
       (.I0(ir[6]),
        .I1(\badr[15]_INST_0_i_102_n_0 ),
        .I2(ir[8]),
        .I3(Q[0]),
        .I4(ir[10]),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFF1)) 
    \badr[15]_INST_0_i_76 
       (.I0(\badr[15]_INST_0_i_49_0 ),
        .I1(ir[1]),
        .I2(\badr[15]_INST_0_i_103_n_0 ),
        .I3(\bcmd[0]_INST_0_i_6_n_0 ),
        .I4(\sr[0]_i_44_n_0 ),
        .I5(\badr[15]_INST_0_i_104_n_0 ),
        .O(\badr[15]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \badr[15]_INST_0_i_77 
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(rst_n_fl_reg_2),
        .I3(ir[0]),
        .I4(ir[2]),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_77_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \badr[15]_INST_0_i_78 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[8]),
        .I3(ir[10]),
        .O(\badr[15]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_79 
       (.I0(ir[12]),
        .I1(ir[15]),
        .I2(ir[5]),
        .I3(ir[7]),
        .I4(ir[3]),
        .I5(ir[4]),
        .O(\badr[15]_INST_0_i_79_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \badr[15]_INST_0_i_80 
       (.I0(ir[1]),
        .I1(Q[1]),
        .I2(ir[9]),
        .I3(ir[6]),
        .O(\badr[15]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00004040)) 
    \badr[15]_INST_0_i_81 
       (.I0(\bcmd[2]_INST_0_i_4_n_0 ),
        .I1(ir[6]),
        .I2(\badr[15]_INST_0_i_105_n_0 ),
        .I3(\stat[1]_i_18_n_0 ),
        .I4(Q[0]),
        .I5(\stat[0]_i_26_n_0 ),
        .O(\badr[15]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h000E0004000FFFFF)) 
    \badr[15]_INST_0_i_82 
       (.I0(\iv[15]_i_48_n_0 ),
        .I1(\badr[15]_INST_0_i_106_n_0 ),
        .I2(ir[6]),
        .I3(\bcmd[2]_INST_0_i_4_n_0 ),
        .I4(Q[0]),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \badr[15]_INST_0_i_83 
       (.I0(ir[14]),
        .I1(ir[15]),
        .I2(ir[11]),
        .I3(ir[12]),
        .O(\badr[15]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'h1515151501000000)) 
    \badr[15]_INST_0_i_85 
       (.I0(Q[0]),
        .I1(ir[12]),
        .I2(ir[13]),
        .I3(\sr_reg[15] [4]),
        .I4(ir[11]),
        .I5(ir[15]),
        .O(\badr[15]_INST_0_i_85_n_0 ));
  LUT5 #(
    .INIT(32'h01001110)) 
    \badr[15]_INST_0_i_86 
       (.I0(ir[12]),
        .I1(ir[14]),
        .I2(ir[1]),
        .I3(ir[2]),
        .I4(ir[3]),
        .O(\badr[15]_INST_0_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h3320)) 
    \badr[15]_INST_0_i_87 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(Q[0]),
        .I3(ir[3]),
        .O(\badr[15]_INST_0_i_87_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_89 
       (.I0(ir[13]),
        .I1(ir[15]),
        .O(\badr[15]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8888888A888)) 
    \badr[15]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_30_n_0 ),
        .I2(\badr[15]_INST_0_i_31_n_0 ),
        .I3(\sr[7]_i_4_0 ),
        .I4(ir[14]),
        .I5(\badr[15]_INST_0_i_33_n_0 ),
        .O(ctl_sela[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_91 
       (.I0(ir[14]),
        .I1(ir[12]),
        .O(\badr[15]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hC0FFDFFFCCFFDFFF)) 
    \badr[15]_INST_0_i_92 
       (.I0(ir[7]),
        .I1(Q[0]),
        .I2(ir[6]),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(\ccmd[3]_INST_0_i_13_n_0 ),
        .O(\badr[15]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFDFDDFFDFDFDF)) 
    \badr[15]_INST_0_i_93 
       (.I0(crdy),
        .I1(Q[0]),
        .I2(\bcmd[1]_INST_0_i_9_n_0 ),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h4477505F555515D5)) 
    \badr[15]_INST_0_i_94 
       (.I0(ir[3]),
        .I1(ir[6]),
        .I2(ir[7]),
        .I3(ir[0]),
        .I4(ir[9]),
        .I5(ir[8]),
        .O(\badr[15]_INST_0_i_94_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFB)) 
    \badr[15]_INST_0_i_95 
       (.I0(\badr[15]_INST_0_i_100_n_0 ),
        .I1(ir[0]),
        .I2(\bcmd[2]_INST_0_i_4_n_0 ),
        .I3(\badr[15]_INST_0_i_59_n_0 ),
        .I4(\badr[15]_INST_0_i_107_n_0 ),
        .O(\badr[15]_INST_0_i_95_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1FBF0FFF3F3F)) 
    \badr[15]_INST_0_i_96 
       (.I0(ir[6]),
        .I1(ir[3]),
        .I2(\bcmd[1]_INST_0_i_9_n_0 ),
        .I3(ir[0]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h0FCF3FCF77CF77CF)) 
    \badr[15]_INST_0_i_97 
       (.I0(ir[0]),
        .I1(ir[9]),
        .I2(ir[3]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_97_n_0 ));
  LUT6 #(
    .INIT(64'h0FFF3FFF77FF77FF)) 
    \badr[15]_INST_0_i_98 
       (.I0(ir[0]),
        .I1(ir[9]),
        .I2(ir[3]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'h8FDFCF9F8F9F8F8F)) 
    \badr[15]_INST_0_i_99 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(ir[7]),
        .I3(ir[4]),
        .I4(ir[3]),
        .I5(ir[1]),
        .O(\badr[15]_INST_0_i_99_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[1]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_extadr),
        .I3(abus_0[1]),
        .O(badr[1]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[2]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_extadr),
        .I3(abus_0[2]),
        .O(badr[2]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[3]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_extadr),
        .I3(abus_0[3]),
        .O(badr[3]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[4]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_extadr),
        .I3(abus_0[4]),
        .O(badr[4]));
  LUT6 #(
    .INIT(64'hF088FFFFF0880000)) 
    \badr[4]_INST_0_i_3 
       (.I0(\stat_reg[2]_10 ),
        .I1(\badr[15]_INST_0_i_1_1 [0]),
        .I2(\badr[4]_INST_0_i_8_n_0 ),
        .I3(\sr_reg[15] [0]),
        .I4(ctl_sela[0]),
        .I5(\badr[4]_INST_0_i_1 ),
        .O(\grn_reg[4] ));
  LUT3 #(
    .INIT(8'h08)) 
    \badr[4]_INST_0_i_8 
       (.I0(ctl_sela[4]),
        .I1(\badr[15]_INST_0_i_3_0 [0]),
        .I2(ctl_sela[3]),
        .O(\badr[4]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[5]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_extadr),
        .I3(abus_0[5]),
        .O(badr[5]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[6]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_extadr),
        .I3(abus_0[6]),
        .O(badr[6]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[7]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_extadr),
        .I3(abus_0[7]),
        .O(badr[7]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[8]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_extadr),
        .I3(abus_0[8]),
        .O(badr[8]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[9]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
        .I2(ctl_extadr),
        .I3(abus_0[9]),
        .O(badr[9]));
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
    .INIT(64'h0080000000000000)) 
    \badrx[15]_INST_0_i_1 
       (.I0(\bcmd[1]_INST_0_i_6_n_0 ),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(Q[0]),
        .I4(ir[12]),
        .I5(badr_0_sn_1),
        .O(ctl_extadr));
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
        .I1(\stat_reg[2]_12 ),
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
        .I1(\stat_reg[2]_13 ),
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
        .I1(rst_n_fl_reg_7),
        .O(bbus_o[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[4]_INST_0 
       (.I0(ctl_copro),
        .I1(\stat_reg[2]_11 ),
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
  LUT6 #(
    .INIT(64'h0002000F00020000)) 
    \bcmd[0]_INST_0 
       (.I0(\bcmd[2]_INST_0_i_1_n_0 ),
        .I1(\bcmd[0]_INST_0_i_1_n_0 ),
        .I2(\bcmd[0]_INST_0_i_2_n_0 ),
        .I3(\bcmd[0]_INST_0_i_3_n_0 ),
        .I4(ir[12]),
        .I5(\bcmd[0]_INST_0_i_4_n_0 ),
        .O(\stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hBFEBFFEBFF7FFF7F)) 
    \bcmd[0]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(ir[6]),
        .I4(ir[5]),
        .I5(ir[9]),
        .O(\bcmd[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bcmd[0]_INST_0_i_10 
       (.I0(ir[10]),
        .I1(ir[11]),
        .O(\bcmd[0]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bcmd[0]_INST_0_i_11 
       (.I0(ir[13]),
        .I1(ir[14]),
        .O(rst_n_fl_reg_2));
  LUT2 #(
    .INIT(4'h2)) 
    \bcmd[0]_INST_0_i_12 
       (.I0(ir[1]),
        .I1(ir[3]),
        .O(\bcmd[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10B0B0B0)) 
    \bcmd[0]_INST_0_i_2 
       (.I0(ir[6]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[3]),
        .I5(\bcmd[0]_INST_0_i_5_n_0 ),
        .O(\bcmd[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \bcmd[0]_INST_0_i_3 
       (.I0(\bcmd[0]_INST_0_i_6_n_0 ),
        .I1(\bcmd[0]_INST_0_i_7_n_0 ),
        .I2(Q[0]),
        .I3(ir[1]),
        .I4(ir[8]),
        .I5(\bcmd[0]_INST_0_i_8_n_0 ),
        .O(\bcmd[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \bcmd[0]_INST_0_i_4 
       (.I0(ir[9]),
        .I1(\bcmd[0]_INST_0_i_9_n_0 ),
        .I2(\bcmd[0]_INST_0_i_10_n_0 ),
        .I3(ir[2]),
        .I4(ir[6]),
        .I5(rst_n_fl_reg_2),
        .O(\bcmd[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55555555DDFFFFDF)) 
    \bcmd[0]_INST_0_i_5 
       (.I0(badr_0_sn_1),
        .I1(ir[9]),
        .I2(\bcmd[0]_INST_0_i_12_n_0 ),
        .I3(ir[10]),
        .I4(ir[7]),
        .I5(ir[8]),
        .O(\bcmd[0]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[0]_INST_0_i_6 
       (.I0(ir[5]),
        .I1(ir[7]),
        .O(\bcmd[0]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[0]_INST_0_i_7 
       (.I0(ir[3]),
        .I1(ir[4]),
        .O(\bcmd[0]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[0]_INST_0_i_8 
       (.I0(ir[2]),
        .I1(ir[0]),
        .O(\bcmd[0]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bcmd[0]_INST_0_i_9 
       (.I0(ir[5]),
        .I1(ir[4]),
        .O(\bcmd[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000010001010101)) 
    \bcmd[1]_INST_0 
       (.I0(ir[15]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\bcmd[1]_INST_0_i_1_n_0 ),
        .I4(\bcmd[1]_INST_0_i_2_n_0 ),
        .I5(\bcmd[1]_INST_0_i_3_n_0 ),
        .O(\stat_reg[2] ));
  LUT5 #(
    .INIT(32'hC000C001)) 
    \bcmd[1]_INST_0_i_1 
       (.I0(ir[2]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[1]),
        .O(\bcmd[1]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bcmd[1]_INST_0_i_10 
       (.I0(ir[5]),
        .I1(ir[3]),
        .O(\bcmd[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEBEFEBF)) 
    \bcmd[1]_INST_0_i_2 
       (.I0(\bcmd[1]_INST_0_i_4_n_0 ),
        .I1(ir[12]),
        .I2(ir[11]),
        .I3(Q[0]),
        .I4(fch_irq_req),
        .I5(\bcmd[1]_INST_0_i_5_n_0 ),
        .O(\bcmd[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4FFF4FFFFFFF)) 
    \bcmd[1]_INST_0_i_3 
       (.I0(\bcmd[1]_INST_0_i_6_n_0 ),
        .I1(\bcmd[1]_INST_0_i_7_n_0 ),
        .I2(ir[6]),
        .I3(\bcmd[1]_INST_0_i_8_n_0 ),
        .I4(ir[9]),
        .I5(Q[0]),
        .O(\bcmd[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7EFFFFFFFFFFFF7E)) 
    \bcmd[1]_INST_0_i_4 
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[9]),
        .I4(ir[11]),
        .I5(ir[10]),
        .O(\bcmd[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEFFFFFFFFEF)) 
    \bcmd[1]_INST_0_i_5 
       (.I0(ir[6]),
        .I1(ir[4]),
        .I2(ir[0]),
        .I3(ir[7]),
        .I4(ir[5]),
        .I5(ir[3]),
        .O(\bcmd[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0080008000000080)) 
    \bcmd[1]_INST_0_i_6 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .I5(crdy),
        .O(\bcmd[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7DFF7F7FFDFF7F7F)) 
    \bcmd[1]_INST_0_i_7 
       (.I0(ir[11]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[10]),
        .I5(\bcmd[1]_INST_0_i_10_n_0 ),
        .O(\bcmd[1]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bcmd[1]_INST_0_i_8 
       (.I0(ir[14]),
        .I1(ir[12]),
        .I2(ir[13]),
        .O(\bcmd[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \bcmd[1]_INST_0_i_9 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[15]),
        .I3(ir[14]),
        .I4(ir[13]),
        .I5(ir[12]),
        .O(\bcmd[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \bcmd[2]_INST_0 
       (.I0(Q[2]),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(\bcmd[2]_INST_0_i_2_n_0 ),
        .I3(\bcmd[2]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_4_n_0 ),
        .I5(\bcmd[2] ),
        .O(\stat_reg[2]_3 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bcmd[2]_INST_0_i_1 
       (.I0(ir[13]),
        .I1(ir[14]),
        .O(\bcmd[2]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \bcmd[2]_INST_0_i_2 
       (.I0(Q[1]),
        .I1(ir[12]),
        .I2(ir[15]),
        .O(\bcmd[2]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bcmd[2]_INST_0_i_3 
       (.I0(ir[10]),
        .I1(ir[11]),
        .O(\bcmd[2]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bcmd[2]_INST_0_i_4 
       (.I0(ir[9]),
        .I1(ir[8]),
        .O(\bcmd[2]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[0]_INST_0 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[2]_12 ),
        .O(bdatw[0]));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[10]_INST_0 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[2]_3 ),
        .I2(\bdatw[10]_INST_0_i_1_n_0 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[10]));
  LUT6 #(
    .INIT(64'h000F0000000F0B0B)) 
    \bdatw[10]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[10]),
        .I2(p_1_in[10]),
        .I3(\bdatw[10]_1 ),
        .I4(bdatw_0_sn_1),
        .I5(\bdatw[10]_2 ),
        .O(\bdatw[10]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \bdatw[10]_INST_0_i_10 
       (.I0(ir[3]),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(ir[2]),
        .O(\bdatw[10]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[10]_INST_0_i_11 
       (.I0(\stat_reg[2]_1 ),
        .I1(\stat_reg[2]_0 ),
        .O(\bdatw[10]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFDFDFCFF)) 
    \bdatw[10]_INST_0_i_16 
       (.I0(ir[2]),
        .I1(\stat_reg[2]_1 ),
        .I2(\stat_reg[2]_0 ),
        .I3(ir[1]),
        .I4(bdatw_0_sn_1),
        .O(\bdatw[10]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hEEFAEEFAEEFFEEFA)) 
    \bdatw[10]_INST_0_i_2 
       (.I0(p_1_in[2]),
        .I1(bdatw_10_sn_1),
        .I2(\bdatw[10]_0 ),
        .I3(bdatw_0_sn_1),
        .I4(eir[2]),
        .I5(\bdatw[15]_INST_0_i_3_n_0 ),
        .O(\bdatw[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888AAA8)) 
    \bdatw[10]_INST_0_i_23 
       (.I0(\bdatw[15]_INST_0_i_37_n_0 ),
        .I1(\bdatw[15]_INST_0_i_36_n_0 ),
        .I2(\bdatw[15]_INST_0_i_35_n_0 ),
        .I3(\ccmd[2]_INST_0_i_2_n_0 ),
        .I4(\bdatw[15]_INST_0_i_50_n_0 ),
        .I5(\ccmd[2]_INST_0_i_17_n_0 ),
        .O(\bdatw[10]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h80AA800880088008)) 
    \bdatw[10]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_8_n_0 ),
        .I1(\bdatw[10]_INST_0_i_9_n_0 ),
        .I2(\bdatw[10]_INST_0_i_10_n_0 ),
        .I3(bdatw_0_sn_1),
        .I4(ir[9]),
        .I5(\bdatw[10]_INST_0_i_11_n_0 ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h00808808AAAAAAAA)) 
    \bdatw[10]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_8_n_0 ),
        .I1(\bdatw[10]_INST_0_i_9_n_0 ),
        .I2(\bcmd[0]_INST_0_i_12_n_0 ),
        .I3(\bcmd[0]_INST_0_i_8_n_0 ),
        .I4(bdatw_0_sn_1),
        .I5(\bdatw[10]_INST_0_i_16_n_0 ),
        .O(p_1_in[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[10]_INST_0_i_9 
       (.I0(\stat_reg[2]_1 ),
        .I1(\bdatw[10]_INST_0_i_23_n_0 ),
        .O(\bdatw[10]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[11]_INST_0 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[2]_3 ),
        .I2(\bdatw[11]_INST_0_i_1_n_0 ),
        .I3(rst_n_fl_reg_7),
        .O(bdatw[11]));
  LUT6 #(
    .INIT(64'h000F0000000F0B0B)) 
    \bdatw[11]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[11]),
        .I2(p_1_in[11]),
        .I3(bdatw_11_sn_1),
        .I4(bdatw_0_sn_1),
        .I5(\bdatw[11]_0 ),
        .O(\bdatw[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08F70000FF00FFF0)) 
    \bdatw[11]_INST_0_i_14 
       (.I0(ir[0]),
        .I1(\bcmd[0]_INST_0_i_12_n_0 ),
        .I2(ir[2]),
        .I3(bdatw_0_sn_1),
        .I4(\stat_reg[2]_1 ),
        .I5(\stat_reg[2]_0 ),
        .O(\bdatw[11]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000F0000000F0D0D)) 
    \bdatw[11]_INST_0_i_2 
       (.I0(eir[3]),
        .I1(\bdatw[15]_INST_0_i_3_n_0 ),
        .I2(p_1_in[3]),
        .I3(bdatw_3_sn_1),
        .I4(bdatw_0_sn_1),
        .I5(\bdatw[3]_0 ),
        .O(rst_n_fl_reg_7));
  LUT6 #(
    .INIT(64'h8002008280000080)) 
    \bdatw[11]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_8_n_0 ),
        .I1(\stat_reg[2]_1 ),
        .I2(\stat_reg[2]_0 ),
        .I3(bdatw_0_sn_1),
        .I4(\bdatw[11]_INST_0_i_9_n_0 ),
        .I5(ir[10]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hFF000000AB000000)) 
    \bdatw[11]_INST_0_i_6 
       (.I0(\stat_reg[2]_1 ),
        .I1(bdatw_0_sn_1),
        .I2(\stat_reg[2]_0 ),
        .I3(\bdatw[11]_INST_0_i_14_n_0 ),
        .I4(\bdatw[15]_INST_0_i_8_n_0 ),
        .I5(ir[3]),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'h0800)) 
    \bdatw[11]_INST_0_i_9 
       (.I0(ir[3]),
        .I1(ir[1]),
        .I2(ir[2]),
        .I3(ir[0]),
        .O(\bdatw[11]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[12]_INST_0 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[2]_3 ),
        .I2(\bdatw[12]_INST_0_i_1_n_0 ),
        .I3(\stat_reg[2]_11 ),
        .O(bdatw[12]));
  LUT6 #(
    .INIT(64'h000F0000000F0B0B)) 
    \bdatw[12]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[12]),
        .I2(p_1_in[12]),
        .I3(bdatw_12_sn_1),
        .I4(bdatw_0_sn_1),
        .I5(\bdatw[12]_0 ),
        .O(\bdatw[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08F70000FF00FFF0)) 
    \bdatw[12]_INST_0_i_14 
       (.I0(ir[2]),
        .I1(\bdatw[12]_INST_0_i_29_n_0 ),
        .I2(ir[3]),
        .I3(bdatw_0_sn_1),
        .I4(\stat_reg[2]_1 ),
        .I5(\stat_reg[2]_0 ),
        .O(\bdatw[12]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hEEFAEEFAEEFFEEFA)) 
    \bdatw[12]_INST_0_i_2 
       (.I0(\stat_reg[2]_2 ),
        .I1(bdatw_4_sn_1),
        .I2(\bdatw[4]_0 ),
        .I3(bdatw_0_sn_1),
        .I4(eir[4]),
        .I5(\bdatw[15]_INST_0_i_3_n_0 ),
        .O(\stat_reg[2]_11 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[12]_INST_0_i_29 
       (.I0(ir[1]),
        .I1(ir[0]),
        .O(\bdatw[12]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h8088082280880800)) 
    \bdatw[12]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_8_n_0 ),
        .I1(\stat_reg[2]_1 ),
        .I2(\bdatw[12]_INST_0_i_9_n_0 ),
        .I3(\stat_reg[2]_0 ),
        .I4(bdatw_0_sn_1),
        .I5(ir[10]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hFF000000AB000000)) 
    \bdatw[12]_INST_0_i_6 
       (.I0(\stat_reg[2]_1 ),
        .I1(bdatw_0_sn_1),
        .I2(\stat_reg[2]_0 ),
        .I3(\bdatw[12]_INST_0_i_14_n_0 ),
        .I4(\bdatw[15]_INST_0_i_8_n_0 ),
        .I5(ir[4]),
        .O(\stat_reg[2]_2 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \bdatw[12]_INST_0_i_9 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(ir[1]),
        .O(\bdatw[12]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[13]_INST_0 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[2]_3 ),
        .I2(\bdatw[13]_INST_0_i_1_n_0 ),
        .I3(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[13]));
  LUT6 #(
    .INIT(64'h000F0000000F0B0B)) 
    \bdatw[13]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[13]),
        .I2(p_1_in[13]),
        .I3(bdatw_13_sn_1),
        .I4(bdatw_0_sn_1),
        .I5(\bdatw[13]_0 ),
        .O(\bdatw[13]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \bdatw[13]_INST_0_i_13 
       (.I0(ir[3]),
        .I1(ir[2]),
        .I2(ir[1]),
        .I3(ir[0]),
        .O(\bdatw[13]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBFB00FB)) 
    \bdatw[13]_INST_0_i_2 
       (.I0(bdatw_0_sn_1),
        .I1(eir[5]),
        .I2(\bdatw[15]_INST_0_i_3_n_0 ),
        .I3(\bdatw[15]_INST_0_i_8_n_0 ),
        .I4(\bdatw[13]_INST_0_i_6_n_0 ),
        .I5(p_0_in[1]),
        .O(\bdatw[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000028280000080)) 
    \bdatw[13]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_8_n_0 ),
        .I1(\stat_reg[2]_1 ),
        .I2(\stat_reg[2]_0 ),
        .I3(\bdatw[13]_INST_0_i_8_n_0 ),
        .I4(bdatw_0_sn_1),
        .I5(ir[10]),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'h0FF0FFFFFFFF3355)) 
    \bdatw[13]_INST_0_i_6 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(\bdatw[13]_INST_0_i_13_n_0 ),
        .I3(bdatw_0_sn_1),
        .I4(\stat_reg[2]_0 ),
        .I5(\stat_reg[2]_1 ),
        .O(\bdatw[13]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \bdatw[13]_INST_0_i_8 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(ir[0]),
        .O(\bdatw[13]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[14]_INST_0 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[2]_3 ),
        .I2(\bdatw[14]_INST_0_i_1_n_0 ),
        .I3(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[14]));
  LUT6 #(
    .INIT(64'h000F0000000F0B0B)) 
    \bdatw[14]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[14]),
        .I2(p_1_in[14]),
        .I3(bdatw_14_sn_1),
        .I4(bdatw_0_sn_1),
        .I5(\bdatw[14]_0 ),
        .O(\bdatw[14]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \bdatw[14]_INST_0_i_13 
       (.I0(ir[0]),
        .I1(ir[2]),
        .I2(ir[3]),
        .I3(ir[1]),
        .O(\bdatw[14]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBFB00FB)) 
    \bdatw[14]_INST_0_i_2 
       (.I0(bdatw_0_sn_1),
        .I1(eir[6]),
        .I2(\bdatw[15]_INST_0_i_3_n_0 ),
        .I3(\bdatw[15]_INST_0_i_8_n_0 ),
        .I4(\bdatw[14]_INST_0_i_6_n_0 ),
        .I5(p_0_in[2]),
        .O(\bdatw[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000028280000080)) 
    \bdatw[14]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_8_n_0 ),
        .I1(\stat_reg[2]_1 ),
        .I2(\stat_reg[2]_0 ),
        .I3(\bdatw[14]_INST_0_i_8_n_0 ),
        .I4(bdatw_0_sn_1),
        .I5(ir[10]),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'h0F0FF00FFF35FF35)) 
    \bdatw[14]_INST_0_i_6 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(bdatw_0_sn_1),
        .I3(\stat_reg[2]_0 ),
        .I4(\bdatw[14]_INST_0_i_13_n_0 ),
        .I5(\stat_reg[2]_1 ),
        .O(\bdatw[14]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \bdatw[14]_INST_0_i_8 
       (.I0(ir[3]),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(ir[2]),
        .O(\bdatw[14]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[15]_INST_0 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[2]_3 ),
        .I2(\bdatw[15]_INST_0_i_1_n_0 ),
        .I3(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[15]));
  LUT6 #(
    .INIT(64'h000F0000000F0B0B)) 
    \bdatw[15]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[15]),
        .I2(p_1_in[15]),
        .I3(bdatw_15_sn_1),
        .I4(bdatw_0_sn_1),
        .I5(\bdatw[15]_0 ),
        .O(\bdatw[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \bdatw[15]_INST_0_i_100 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[6]),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(ir[9]),
        .O(\bdatw[15]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hABABAB00FFFFFFFF)) 
    \bdatw[15]_INST_0_i_101 
       (.I0(ir[0]),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(Q[0]),
        .I4(crdy),
        .I5(ir[2]),
        .O(\bdatw[15]_INST_0_i_101_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[15]_INST_0_i_102 
       (.I0(ir[0]),
        .I1(ir[3]),
        .O(\bdatw[15]_INST_0_i_102_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD0D0FFD0)) 
    \bdatw[15]_INST_0_i_104 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(\bdatw[15]_INST_0_i_60_0 ),
        .I4(crdy),
        .I5(\bdatw[15]_INST_0_i_117_n_0 ),
        .O(\bdatw[15]_INST_0_i_104_n_0 ));
  LUT5 #(
    .INIT(32'hA0A15001)) 
    \bdatw[15]_INST_0_i_105 
       (.I0(ir[8]),
        .I1(ir[2]),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(ir[9]),
        .O(\bdatw[15]_INST_0_i_105_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF51)) 
    \bdatw[15]_INST_0_i_106 
       (.I0(ir[3]),
        .I1(ir[0]),
        .I2(ir[7]),
        .I3(ir[4]),
        .I4(ir[6]),
        .O(\bdatw[15]_INST_0_i_106_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \bdatw[15]_INST_0_i_107 
       (.I0(ir[4]),
        .I1(ir[6]),
        .I2(ir[3]),
        .I3(ir[5]),
        .O(\bdatw[15]_INST_0_i_107_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatw[15]_INST_0_i_108 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[8]),
        .O(\bdatw[15]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAA8A8A8A8)) 
    \bdatw[15]_INST_0_i_11 
       (.I0(ctl_fetch_inferred_i_4_0),
        .I1(\bdatw[15]_INST_0_i_30_n_0 ),
        .I2(\bdatw[15]_INST_0_i_31_n_0 ),
        .I3(\bdatw[15]_INST_0_i_32_n_0 ),
        .I4(\bdatw[15]_INST_0_i_33_n_0 ),
        .I5(\sr[0]_i_9_n_0 ),
        .O(\stat_reg[2]_1 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \bdatw[15]_INST_0_i_110 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[11]),
        .O(\bdatw[15]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'hC00000008000F000)) 
    \bdatw[15]_INST_0_i_111 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[1]),
        .I3(ir[10]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\bdatw[15]_INST_0_i_111_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \bdatw[15]_INST_0_i_112 
       (.I0(ir[3]),
        .I1(ir[5]),
        .I2(ir[4]),
        .O(\bdatw[15]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'hDDDD5D9D5D5DDD5D)) 
    \bdatw[15]_INST_0_i_113 
       (.I0(ir[6]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[4]),
        .I4(ir[5]),
        .I5(ir[3]),
        .O(\bdatw[15]_INST_0_i_113_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[15]_INST_0_i_115 
       (.I0(ir[6]),
        .I1(ir[10]),
        .O(\bdatw[15]_INST_0_i_115_n_0 ));
  LUT5 #(
    .INIT(32'hFF80FF8F)) 
    \bdatw[15]_INST_0_i_116 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[11]),
        .I3(Q[0]),
        .I4(crdy),
        .O(\bdatw[15]_INST_0_i_116_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[15]_INST_0_i_117 
       (.I0(ir[7]),
        .I1(ir[5]),
        .I2(ir[6]),
        .O(\bdatw[15]_INST_0_i_117_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBBBAAAAAAAAA)) 
    \bdatw[15]_INST_0_i_12 
       (.I0(Q[2]),
        .I1(\bdatw[15]_INST_0_i_34_n_0 ),
        .I2(\ccmd[2]_INST_0_i_2_n_0 ),
        .I3(\bdatw[15]_INST_0_i_35_n_0 ),
        .I4(\bdatw[15]_INST_0_i_36_n_0 ),
        .I5(\bdatw[15]_INST_0_i_37_n_0 ),
        .O(\stat_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \bdatw[15]_INST_0_i_13 
       (.I0(ir[0]),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(ir[1]),
        .O(\bdatw[15]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \bdatw[15]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_42_n_0 ),
        .I1(\bdatw[15]_INST_0_i_43_n_0 ),
        .I2(\bdatw[15]_INST_0_i_44_n_0 ),
        .I3(\bdatw[15]_INST_0_i_45_n_0 ),
        .I4(\bdatw[15]_INST_0_i_46_n_0 ),
        .I5(\bdatw[15]_INST_0_i_47_n_0 ),
        .O(crdy_1));
  LUT6 #(
    .INIT(64'h00FF00F2000000F2)) 
    \bdatw[15]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_48_n_0 ),
        .I1(\bdatw[15]_INST_0_i_49_n_0 ),
        .I2(\sr[7]_i_4_0 ),
        .I3(ir[15]),
        .I4(ir[14]),
        .I5(\bdatw[15]_INST_0_i_50_n_0 ),
        .O(crdy_0));
  LUT6 #(
    .INIT(64'h4040444040404040)) 
    \bdatw[15]_INST_0_i_19 
       (.I0(ir[15]),
        .I1(\iv[15]_i_17_0 ),
        .I2(\bdatw[15]_INST_0_i_52_n_0 ),
        .I3(ir[0]),
        .I4(\bdatw[15]_INST_0_i_53_n_0 ),
        .I5(\bdatw[15]_INST_0_i_54_n_0 ),
        .O(rst_n_fl_reg_4));
  LUT6 #(
    .INIT(64'h00000000FBFB00FB)) 
    \bdatw[15]_INST_0_i_2 
       (.I0(bdatw_0_sn_1),
        .I1(eir[7]),
        .I2(\bdatw[15]_INST_0_i_3_n_0 ),
        .I3(\bdatw[15]_INST_0_i_8_n_0 ),
        .I4(\bdatw[15]_INST_0_i_9_n_0 ),
        .I5(p_0_in[3]),
        .O(\bdatw[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4000C30040000000)) 
    \bdatw[15]_INST_0_i_23 
       (.I0(\bdatw[15]_INST_0_i_59_n_0 ),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(badr_0_sn_1),
        .I4(ir[12]),
        .I5(\bdatw[15]_INST_0_i_60_n_0 ),
        .O(ctl_selb[1]));
  LUT6 #(
    .INIT(64'h0020222200200020)) 
    \bdatw[15]_INST_0_i_24 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\bcmd[1]_INST_0_i_8_n_0 ),
        .I3(\bdatw[15]_INST_0_i_56 ),
        .I4(\bdatw[15]_INST_0_i_63_n_0 ),
        .I5(\bdatw[15]_INST_0_i_64_n_0 ),
        .O(ctl_selb[0]));
  LUT4 #(
    .INIT(16'h4000)) 
    \bdatw[15]_INST_0_i_25 
       (.I0(ir[3]),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(ir[1]),
        .O(\bdatw[15]_INST_0_i_25_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_3 
       (.I0(\stat_reg[2]_1 ),
        .I1(\stat_reg[2]_0 ),
        .O(\bdatw[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \bdatw[15]_INST_0_i_30 
       (.I0(\badr[15]_INST_0_i_16_n_0 ),
        .I1(\ccmd[4]_INST_0_i_21_n_0 ),
        .I2(ir[2]),
        .I3(ir[8]),
        .I4(ir[11]),
        .I5(\bdatw[15]_INST_0_i_53_n_0 ),
        .O(\bdatw[15]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \bdatw[15]_INST_0_i_31 
       (.I0(\badr[15]_INST_0_i_43_n_0 ),
        .I1(\bdatw[15]_INST_0_i_73_n_0 ),
        .I2(ir[0]),
        .I3(ir[2]),
        .I4(ir[15]),
        .I5(Q[0]),
        .O(\bdatw[15]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFCFCFDFDFCFC)) 
    \bdatw[15]_INST_0_i_32 
       (.I0(\bdatw[15]_INST_0_i_74_n_0 ),
        .I1(\bdatw[15]_INST_0_i_75_n_0 ),
        .I2(\bdatw[15]_INST_0_i_76_n_0 ),
        .I3(\bdatw[15]_INST_0_i_77_n_0 ),
        .I4(ir[2]),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5551FFFFFFFF)) 
    \bdatw[15]_INST_0_i_33 
       (.I0(\bdatw[15]_INST_0_i_78_n_0 ),
        .I1(ir[2]),
        .I2(\ccmd[3]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_79_n_0 ),
        .I4(ir[11]),
        .I5(crdy),
        .O(\bdatw[15]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFEAEABF)) 
    \bdatw[15]_INST_0_i_34 
       (.I0(\ccmd[2]_INST_0_i_17_n_0 ),
        .I1(\sr_reg[15] [6]),
        .I2(ir[12]),
        .I3(\sr_reg[15] [4]),
        .I4(ir[11]),
        .I5(ir[13]),
        .O(\bdatw[15]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000008A)) 
    \bdatw[15]_INST_0_i_35 
       (.I0(\bdatw[15]_INST_0_i_80_n_0 ),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[15]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_82_n_0 ),
        .I4(\bdatw[15]_INST_0_i_83_n_0 ),
        .I5(\bdatw[15]_INST_0_i_84_n_0 ),
        .O(\bdatw[15]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF15550000)) 
    \bdatw[15]_INST_0_i_36 
       (.I0(\sr[7]_i_4_0 ),
        .I1(\bdatw[14]_INST_0_i_8_n_0 ),
        .I2(\bdatw[15]_INST_0_i_48_n_0 ),
        .I3(rst_n_fl_reg_3),
        .I4(\ccmd[1]_INST_0_i_17_n_0 ),
        .I5(\bdatw[15]_INST_0_i_85_n_0 ),
        .O(\bdatw[15]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00DFFFFFFFFF)) 
    \bdatw[15]_INST_0_i_37 
       (.I0(ir[1]),
        .I1(\bdatw[15]_INST_0_i_53_n_0 ),
        .I2(\bdatw[15]_INST_0_i_54_n_0 ),
        .I3(\bdatw[15]_INST_0_i_52_n_0 ),
        .I4(ir[15]),
        .I5(\iv[15]_i_17_0 ),
        .O(\bdatw[15]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h8020000A80200000)) 
    \bdatw[15]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\stat_reg[2]_0 ),
        .I3(bdatw_0_sn_1),
        .I4(\stat_reg[2]_1 ),
        .I5(ir[10]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \bdatw[15]_INST_0_i_42 
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[15]),
        .O(\bdatw[15]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \bdatw[15]_INST_0_i_43 
       (.I0(ir[10]),
        .I1(\stat[2]_i_12_n_0 ),
        .I2(\bdatw[15]_INST_0_i_87_n_0 ),
        .I3(\ccmd[2]_INST_0_i_15_n_0 ),
        .I4(ir[0]),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hCC840C8C00000000)) 
    \bdatw[15]_INST_0_i_44 
       (.I0(ir[7]),
        .I1(\bdatw[15]_INST_0_i_88_n_0 ),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(ir[6]),
        .I5(ir[0]),
        .O(\bdatw[15]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h2000202220222022)) 
    \bdatw[15]_INST_0_i_45 
       (.I0(ir[0]),
        .I1(\sr[0]_i_22_n_0 ),
        .I2(crdy),
        .I3(ir[8]),
        .I4(ir[6]),
        .I5(ir[7]),
        .O(\bdatw[15]_INST_0_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \bdatw[15]_INST_0_i_46 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(\bdatw[15]_INST_0_i_89_n_0 ),
        .O(\bdatw[15]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5545FFFFFFFF)) 
    \bdatw[15]_INST_0_i_47 
       (.I0(\bdatw[15]_INST_0_i_90_n_0 ),
        .I1(\bdatw[15]_INST_0_i_79_n_0 ),
        .I2(ir[0]),
        .I3(\ccmd[3]_INST_0_i_13_n_0 ),
        .I4(ir[11]),
        .I5(crdy),
        .O(\bdatw[15]_INST_0_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_48 
       (.I0(ir[13]),
        .I1(ir[12]),
        .O(\bdatw[15]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBF0FBFBFBFBFB)) 
    \bdatw[15]_INST_0_i_49 
       (.I0(\bdatw[15]_INST_0_i_91_n_0 ),
        .I1(\badr[15]_INST_0_i_49_0 ),
        .I2(\badr[15]_INST_0_i_39_n_0 ),
        .I3(crdy),
        .I4(ir[4]),
        .I5(\bdatw[15]_INST_0_i_93_n_0 ),
        .O(\bdatw[15]_INST_0_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h14414141)) 
    \bdatw[15]_INST_0_i_50 
       (.I0(ir[13]),
        .I1(ir[11]),
        .I2(\sr_reg[15] [4]),
        .I3(ir[12]),
        .I4(\sr_reg[15] [6]),
        .O(\bdatw[15]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_52 
       (.I0(\badr[15]_INST_0_i_66_n_0 ),
        .I1(\bdatw[15]_INST_0_i_94_n_0 ),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(\bcmd[0]_INST_0_i_9_n_0 ),
        .I5(\bdatw[15]_INST_0_i_93_n_0 ),
        .O(\bdatw[15]_INST_0_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatw[15]_INST_0_i_53 
       (.I0(ir[6]),
        .I1(ir[7]),
        .O(\bdatw[15]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \bdatw[15]_INST_0_i_54 
       (.I0(\ccmd[4]_INST_0_i_21_n_0 ),
        .I1(ir[8]),
        .I2(ir[14]),
        .I3(ir[12]),
        .I4(ir[13]),
        .I5(ir[11]),
        .O(\bdatw[15]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF0D)) 
    \bdatw[15]_INST_0_i_59 
       (.I0(\bdatw[15]_INST_0_i_95_n_0 ),
        .I1(\bdatw[15]_INST_0_i_96_n_0 ),
        .I2(\bdatw[15]_INST_0_i_97_n_0 ),
        .I3(\bdatw[15]_INST_0_i_98_n_0 ),
        .I4(\bdatw[15]_INST_0_i_99_n_0 ),
        .I5(\bdatw[15]_INST_0_i_100_n_0 ),
        .O(\bdatw[15]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022220020)) 
    \bdatw[15]_INST_0_i_60 
       (.I0(\bdatw[15]_INST_0_i_101_n_0 ),
        .I1(\ccmd[1]_INST_0_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_102_n_0 ),
        .I3(\bdatw[15]_INST_0_i_60_0 ),
        .I4(ir[2]),
        .I5(\bdatw[15]_INST_0_i_104_n_0 ),
        .O(\bdatw[15]_INST_0_i_60_n_0 ));
  LUT5 #(
    .INIT(32'h20002002)) 
    \bdatw[15]_INST_0_i_61 
       (.I0(\bdatw[15]_INST_0_i_105_n_0 ),
        .I1(ir[15]),
        .I2(ir[7]),
        .I3(ir[10]),
        .I4(ir[1]),
        .O(\bdatw[15]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFB0)) 
    \bdatw[15]_INST_0_i_62 
       (.I0(ir[5]),
        .I1(ir[8]),
        .I2(ir[3]),
        .I3(\bdatw[15]_INST_0_i_106_n_0 ),
        .I4(\bdatw[15]_INST_0_i_107_n_0 ),
        .I5(\bdatw[15]_INST_0_i_108_n_0 ),
        .O(\bdatw[15]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFFFFFFFE)) 
    \bdatw[15]_INST_0_i_63 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\bdatw[15]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    \bdatw[15]_INST_0_i_64 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(ir[11]),
        .I3(ir[5]),
        .I4(ir[9]),
        .I5(\bdatw[15]_INST_0_i_60_0 ),
        .O(\bdatw[15]_INST_0_i_64_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[15]_INST_0_i_73 
       (.I0(ir[1]),
        .I1(ir[3]),
        .O(\bdatw[15]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FFFFFBFFFAFFF)) 
    \bdatw[15]_INST_0_i_74 
       (.I0(\bdatw[15]_INST_0_i_87_n_0 ),
        .I1(\stat[1]_i_18_n_0 ),
        .I2(ir[11]),
        .I3(ir[10]),
        .I4(ir[6]),
        .I5(ir[9]),
        .O(\bdatw[15]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h000000001C14B614)) 
    \bdatw[15]_INST_0_i_75 
       (.I0(ir[6]),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(ir[2]),
        .I4(ir[3]),
        .I5(\bdatw[15]_INST_0_i_110_n_0 ),
        .O(\bdatw[15]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h28000A002A000A00)) 
    \bdatw[15]_INST_0_i_76 
       (.I0(\bdatw[15]_INST_0_i_88_n_0 ),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[2]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h0808080000000000)) 
    \bdatw[15]_INST_0_i_77 
       (.I0(\ccmd[2]_INST_0_i_15_n_0 ),
        .I1(ir[8]),
        .I2(crdy),
        .I3(ir[9]),
        .I4(ir[7]),
        .I5(ir[10]),
        .O(\bdatw[15]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hC00000008000F000)) 
    \bdatw[15]_INST_0_i_78 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[2]),
        .I3(ir[10]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(\bdatw[15]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \bdatw[15]_INST_0_i_79 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[6]),
        .O(\bdatw[15]_INST_0_i_79_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_8 
       (.I0(ctl_selb[1]),
        .I1(ctl_selb[0]),
        .O(\bdatw[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5545FFFFFFFF)) 
    \bdatw[15]_INST_0_i_80 
       (.I0(\bdatw[15]_INST_0_i_111_n_0 ),
        .I1(\bdatw[15]_INST_0_i_79_n_0 ),
        .I2(ir[1]),
        .I3(\ccmd[3]_INST_0_i_13_n_0 ),
        .I4(ir[11]),
        .I5(crdy),
        .O(\bdatw[15]_INST_0_i_80_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatw[15]_INST_0_i_81 
       (.I0(ir[6]),
        .I1(ir[1]),
        .O(\bdatw[15]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F0F00000808)) 
    \bdatw[15]_INST_0_i_82 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(\sr[0]_i_22_n_0 ),
        .I3(crdy),
        .I4(ir[8]),
        .I5(ir[1]),
        .O(\bdatw[15]_INST_0_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hA020A02080A02020)) 
    \bdatw[15]_INST_0_i_83 
       (.I0(\bdatw[15]_INST_0_i_88_n_0 ),
        .I1(ir[8]),
        .I2(ir[1]),
        .I3(ir[6]),
        .I4(ir[7]),
        .I5(ir[9]),
        .O(\bdatw[15]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \bdatw[15]_INST_0_i_84 
       (.I0(ir[1]),
        .I1(ir[6]),
        .I2(\ccmd[2]_INST_0_i_26_n_0 ),
        .I3(ir[7]),
        .I4(\bcmd[2]_INST_0_i_4_n_0 ),
        .I5(\bdatw[15]_INST_0_i_112_n_0 ),
        .O(\bdatw[15]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8000)) 
    \bdatw[15]_INST_0_i_85 
       (.I0(ir[15]),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\bdatw[15]_INST_0_i_85_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[15]_INST_0_i_87 
       (.I0(ir[8]),
        .I1(crdy),
        .O(\bdatw[15]_INST_0_i_87_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[15]_INST_0_i_88 
       (.I0(ir[11]),
        .I1(ir[10]),
        .O(\bdatw[15]_INST_0_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hF75DFFFFCCCFFFFF)) 
    \bdatw[15]_INST_0_i_89 
       (.I0(ir[0]),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(ir[3]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0FFFFFFFF3355)) 
    \bdatw[15]_INST_0_i_9 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(\bdatw[15]_INST_0_i_25_n_0 ),
        .I3(bdatw_0_sn_1),
        .I4(\stat_reg[2]_0 ),
        .I5(\stat_reg[2]_1 ),
        .O(\bdatw[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hA020802000200020)) 
    \bdatw[15]_INST_0_i_90 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[0]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_90_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bdatw[15]_INST_0_i_91 
       (.I0(ir[4]),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(ir[1]),
        .O(\bdatw[15]_INST_0_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h088C)) 
    \bdatw[15]_INST_0_i_93 
       (.I0(ir[0]),
        .I1(ir[2]),
        .I2(ir[1]),
        .I3(ir[3]),
        .O(\bdatw[15]_INST_0_i_93_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[15]_INST_0_i_94 
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(ir[9]),
        .O(\bdatw[15]_INST_0_i_94_n_0 ));
  LUT4 #(
    .INIT(16'h2202)) 
    \bdatw[15]_INST_0_i_95 
       (.I0(ir[6]),
        .I1(ir[11]),
        .I2(\bcmd[1]_INST_0_i_9_n_0 ),
        .I3(crdy),
        .O(\bdatw[15]_INST_0_i_95_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \bdatw[15]_INST_0_i_96 
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(ir[10]),
        .O(\bdatw[15]_INST_0_i_96_n_0 ));
  LUT4 #(
    .INIT(16'h40FF)) 
    \bdatw[15]_INST_0_i_97 
       (.I0(\bdatw[15]_INST_0_i_113_n_0 ),
        .I1(ir[7]),
        .I2(ir[11]),
        .I3(ir[8]),
        .O(\bdatw[15]_INST_0_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    \bdatw[15]_INST_0_i_98 
       (.I0(\bdatw[15]_INST_0_i_59_0 ),
        .I1(ir[9]),
        .I2(\bdatw[15]_INST_0_i_115_n_0 ),
        .I3(\bdatw[15]_INST_0_i_116_n_0 ),
        .I4(\bcmd[0]_INST_0_i_10_n_0 ),
        .I5(\bdatw[15]_INST_0_i_42_n_0 ),
        .O(\bdatw[15]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'h00AA882000008820)) 
    \bdatw[15]_INST_0_i_99 
       (.I0(\ccmd[0]_INST_0_i_20_n_0 ),
        .I1(ir[6]),
        .I2(ir[7]),
        .I3(ir[9]),
        .I4(ir[10]),
        .I5(crdy),
        .O(\bdatw[15]_INST_0_i_99_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[1]_INST_0 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[2]_13 ),
        .O(bdatw[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[2]_INST_0 
       (.I0(\stat_reg[2] ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[3]_INST_0 
       (.I0(\stat_reg[2] ),
        .I1(rst_n_fl_reg_7),
        .O(bdatw[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[4]_INST_0 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[2]_11 ),
        .O(bdatw[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[5]_INST_0 
       (.I0(\stat_reg[2] ),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[6]_INST_0 
       (.I0(\stat_reg[2] ),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[7]_INST_0 
       (.I0(\stat_reg[2] ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[7]));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[8]_INST_0 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[2]_3 ),
        .I2(\bdatw[8]_INST_0_i_1_n_0 ),
        .I3(\stat_reg[2]_12 ),
        .O(bdatw[8]));
  LUT6 #(
    .INIT(64'h000F0000000F0B0B)) 
    \bdatw[8]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[8]),
        .I2(p_1_in[8]),
        .I3(bdatw_8_sn_1),
        .I4(bdatw_0_sn_1),
        .I5(\bdatw[8]_0 ),
        .O(\bdatw[8]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \bdatw[8]_INST_0_i_10 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(ir[2]),
        .I3(ir[3]),
        .O(\bdatw[8]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[8]_INST_0_i_15 
       (.I0(ir[1]),
        .I1(ir[3]),
        .O(\bdatw[8]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFF222FFFFFFFF)) 
    \bdatw[8]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_8_n_0 ),
        .I1(\bdatw[8]_INST_0_i_6_n_0 ),
        .I2(\bdatw[0]_0 ),
        .I3(bdatw_0_sn_1),
        .I4(\bdatw[0]_1 ),
        .I5(\bdatw[8]_INST_0_i_9_n_0 ),
        .O(\stat_reg[2]_12 ));
  LUT6 #(
    .INIT(64'h8888020028280200)) 
    \bdatw[8]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_8_n_0 ),
        .I1(bdatw_0_sn_1),
        .I2(\stat_reg[2]_0 ),
        .I3(ir[7]),
        .I4(\stat_reg[2]_1 ),
        .I5(\bdatw[8]_INST_0_i_10_n_0 ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hFD00FF0F02FFFFFF)) 
    \bdatw[8]_INST_0_i_6 
       (.I0(\bdatw[8]_INST_0_i_15_n_0 ),
        .I1(ir[2]),
        .I2(ir[0]),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2]_1 ),
        .I5(bdatw_0_sn_1),
        .O(\bdatw[8]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \bdatw[8]_INST_0_i_9 
       (.I0(\stat_reg[2]_0 ),
        .I1(\stat_reg[2]_1 ),
        .I2(eir[0]),
        .I3(bdatw_0_sn_1),
        .O(\bdatw[8]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[9]_INST_0 
       (.I0(\stat_reg[2] ),
        .I1(\stat_reg[2]_3 ),
        .I2(\bdatw[9]_INST_0_i_1_n_0 ),
        .I3(\stat_reg[2]_13 ),
        .O(bdatw[9]));
  LUT6 #(
    .INIT(64'h000F0000000F0B0B)) 
    \bdatw[9]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[9]),
        .I2(p_1_in[9]),
        .I3(bdatw_9_sn_1),
        .I4(bdatw_0_sn_1),
        .I5(\bdatw[9]_0 ),
        .O(\bdatw[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1EF000FF0FF000F0)) 
    \bdatw[9]_INST_0_i_14 
       (.I0(ir[3]),
        .I1(\bdatw[9]_INST_0_i_29_n_0 ),
        .I2(bdatw_0_sn_1),
        .I3(\stat_reg[2]_0 ),
        .I4(\stat_reg[2]_1 ),
        .I5(ir[0]),
        .O(\bdatw[9]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hEEFAEEFAEEFFEEFA)) 
    \bdatw[9]_INST_0_i_2 
       (.I0(p_1_in[1]),
        .I1(\bdatw[1]_0 ),
        .I2(bdatw_1_sn_1),
        .I3(bdatw_0_sn_1),
        .I4(eir[1]),
        .I5(\bdatw[15]_INST_0_i_3_n_0 ),
        .O(\stat_reg[2]_13 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[9]_INST_0_i_29 
       (.I0(ir[1]),
        .I1(ir[2]),
        .O(\bdatw[9]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h80AA800880088008)) 
    \bdatw[9]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_8_n_0 ),
        .I1(\bdatw[10]_INST_0_i_9_n_0 ),
        .I2(\bdatw[9]_INST_0_i_9_n_0 ),
        .I3(bdatw_0_sn_1),
        .I4(ir[8]),
        .I5(\bdatw[10]_INST_0_i_11_n_0 ),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'hFF000000AB000000)) 
    \bdatw[9]_INST_0_i_6 
       (.I0(\stat_reg[2]_1 ),
        .I1(bdatw_0_sn_1),
        .I2(\stat_reg[2]_0 ),
        .I3(\bdatw[9]_INST_0_i_14_n_0 ),
        .I4(\bdatw[15]_INST_0_i_8_n_0 ),
        .I5(ir[1]),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'h0008)) 
    \bdatw[9]_INST_0_i_9 
       (.I0(ir[0]),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(ir[1]),
        .O(\bdatw[9]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[0]_INST_0 
       (.I0(ctl_copro),
        .I1(\ccmd[0]_INST_0_i_1_n_0 ),
        .O(ccmd[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0E0FFE0)) 
    \ccmd[0]_INST_0_i_1 
       (.I0(ir[15]),
        .I1(\ccmd[0]_INST_0_i_2_n_0 ),
        .I2(\ccmd[0]_INST_0_i_3_n_0 ),
        .I3(\ccmd[0]_INST_0_i_4_n_0 ),
        .I4(\ccmd[0]_INST_0_i_5_n_0 ),
        .I5(Q[2]),
        .O(\ccmd[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAFAAAAAEAA)) 
    \ccmd[0]_INST_0_i_10 
       (.I0(\ccmd[0]_INST_0_i_3_n_0 ),
        .I1(ir[15]),
        .I2(Q[0]),
        .I3(ir[12]),
        .I4(Q[1]),
        .I5(\ccmd[0]_INST_0_i_16_n_0 ),
        .O(\ccmd[0]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \ccmd[0]_INST_0_i_11 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[7]),
        .I3(Q[1]),
        .O(\ccmd[0]_INST_0_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \ccmd[0]_INST_0_i_12 
       (.I0(\ccmd[3]_INST_0_i_13_n_0 ),
        .I1(ir[11]),
        .I2(ir[8]),
        .O(\ccmd[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \ccmd[0]_INST_0_i_13 
       (.I0(\ccmd[0]_INST_0_i_17_n_0 ),
        .I1(ir[9]),
        .I2(ir[11]),
        .I3(ir[10]),
        .I4(ir[8]),
        .I5(Q[1]),
        .O(\ccmd[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A7862302)) 
    \ccmd[0]_INST_0_i_14 
       (.I0(ir[11]),
        .I1(Q[0]),
        .I2(ir[8]),
        .I3(crdy),
        .I4(\ccmd[3]_INST_0_i_13_n_0 ),
        .I5(\ccmd[0]_INST_0_i_18_n_0 ),
        .O(\ccmd[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5545)) 
    \ccmd[0]_INST_0_i_15 
       (.I0(\ccmd[0]_INST_0_i_19_n_0 ),
        .I1(\iv[15]_i_30_n_0 ),
        .I2(\ccmd[0]_INST_0_i_20_n_0 ),
        .I3(ir[9]),
        .I4(ir[10]),
        .I5(Q[1]),
        .O(\ccmd[0]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h3BC4)) 
    \ccmd[0]_INST_0_i_16 
       (.I0(\sr_reg[15] [4]),
        .I1(ir[14]),
        .I2(ir[15]),
        .I3(ir[11]),
        .O(\ccmd[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFDFF7BAFF)) 
    \ccmd[0]_INST_0_i_17 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[3]),
        .I3(ir[7]),
        .I4(ir[4]),
        .I5(Q[0]),
        .O(\ccmd[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAFFEFAA)) 
    \ccmd[0]_INST_0_i_18 
       (.I0(\ccmd[0]_INST_0_i_21_n_0 ),
        .I1(ir[8]),
        .I2(ir[11]),
        .I3(ir[7]),
        .I4(ir[6]),
        .I5(Q[0]),
        .O(\ccmd[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \ccmd[0]_INST_0_i_19 
       (.I0(\bcmd[2]_INST_0_i_4_n_0 ),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .I2(ir[6]),
        .I3(Q[0]),
        .I4(crdy),
        .I5(ir[11]),
        .O(\ccmd[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h1333133313301333)) 
    \ccmd[0]_INST_0_i_2 
       (.I0(\ccmd[0]_INST_0_i_6_n_0 ),
        .I1(\ccmd[0]_INST_0_i_7_n_0 ),
        .I2(ir[14]),
        .I3(ir[12]),
        .I4(\ccmd[0]_INST_0_i_1_0 ),
        .I5(ir[11]),
        .O(\ccmd[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[0]_INST_0_i_20 
       (.I0(ir[11]),
        .I1(Q[0]),
        .O(\ccmd[0]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFBFFFBFBFB)) 
    \ccmd[0]_INST_0_i_21 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(ir[7]),
        .I5(crdy),
        .O(\ccmd[0]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \ccmd[0]_INST_0_i_3 
       (.I0(ir[13]),
        .I1(ir[15]),
        .I2(\sr_reg[15] [5]),
        .I3(\ccmd[0]_INST_0_i_1_0 ),
        .I4(ir[12]),
        .I5(ir[14]),
        .O(\ccmd[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFDFFFFFD)) 
    \ccmd[0]_INST_0_i_4 
       (.I0(ir[12]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\stat_reg[0]_3 ),
        .I4(ir[11]),
        .O(\ccmd[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \ccmd[0]_INST_0_i_5 
       (.I0(rst_n_fl_reg_3),
        .I1(ir[12]),
        .I2(ir[11]),
        .I3(\ccmd[1]_INST_0_i_17_n_0 ),
        .I4(\ccmd[0]_INST_0_i_9_n_0 ),
        .I5(\ccmd[0]_INST_0_i_10_n_0 ),
        .O(\ccmd[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FFFFFFFFFF)) 
    \ccmd[0]_INST_0_i_6 
       (.I0(Q[0]),
        .I1(\ccmd[0]_INST_0_i_11_n_0 ),
        .I2(\ccmd[0]_INST_0_i_12_n_0 ),
        .I3(\ccmd[0]_INST_0_i_13_n_0 ),
        .I4(\ccmd[0]_INST_0_i_14_n_0 ),
        .I5(\ccmd[0]_INST_0_i_15_n_0 ),
        .O(\ccmd[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004004)) 
    \ccmd[0]_INST_0_i_7 
       (.I0(Q[1]),
        .I1(ir[12]),
        .I2(ir[11]),
        .I3(\sr_reg[15] [6]),
        .I4(ir[14]),
        .I5(Q[0]),
        .O(\ccmd[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000088808887808)) 
    \ccmd[0]_INST_0_i_9 
       (.I0(Q[0]),
        .I1(ir[2]),
        .I2(Q[1]),
        .I3(ir[0]),
        .I4(ir[3]),
        .I5(ir[1]),
        .O(\ccmd[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAF300000000)) 
    \ccmd[1]_INST_0 
       (.I0(\ccmd[1]_INST_0_i_1_n_0 ),
        .I1(\ccmd[1]_INST_0_i_2_n_0 ),
        .I2(\ccmd[1]_INST_0_i_3_n_0 ),
        .I3(\ccmd[1]_INST_0_i_4_n_0 ),
        .I4(Q[1]),
        .I5(ctl_copro),
        .O(ccmd[1]));
  LUT6 #(
    .INIT(64'h000000000A300000)) 
    \ccmd[1]_INST_0_i_1 
       (.I0(\ccmd[1]_INST_0_i_5_n_0 ),
        .I1(Q[0]),
        .I2(ir[15]),
        .I3(ir[13]),
        .I4(ir[14]),
        .I5(Q[2]),
        .O(\ccmd[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400040014040400)) 
    \ccmd[1]_INST_0_i_10 
       (.I0(\ccmd[1]_INST_0_i_18_n_0 ),
        .I1(ir[7]),
        .I2(ir[5]),
        .I3(ir[4]),
        .I4(ir[6]),
        .I5(ir[3]),
        .O(\ccmd[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0100001100020013)) 
    \ccmd[1]_INST_0_i_11 
       (.I0(ir[10]),
        .I1(Q[0]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[6]),
        .I5(ir[7]),
        .O(\ccmd[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDFFFDFFFDF)) 
    \ccmd[1]_INST_0_i_12 
       (.I0(ir[8]),
        .I1(\ccmd[4]_INST_0_i_21_n_0 ),
        .I2(Q[0]),
        .I3(ir[7]),
        .I4(ir[6]),
        .I5(crdy),
        .O(\ccmd[1]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hC0FD)) 
    \ccmd[1]_INST_0_i_13 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\ccmd[1]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5503D7C3DDFFDFFF)) 
    \ccmd[1]_INST_0_i_14 
       (.I0(\ccmd[3]_INST_0_i_13_n_0 ),
        .I1(ir[7]),
        .I2(ir[6]),
        .I3(Q[0]),
        .I4(ir[10]),
        .I5(crdy),
        .O(\ccmd[1]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \ccmd[1]_INST_0_i_15 
       (.I0(ir[2]),
        .I1(ir[13]),
        .I2(ir[11]),
        .I3(ir[14]),
        .O(\ccmd[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ccmd[1]_INST_0_i_16 
       (.I0(ctl_fetch_ext_fl_i_3_n_0),
        .I1(ir[10]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[5]),
        .I5(ir[4]),
        .O(rst_n_fl_reg_3));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[1]_INST_0_i_17 
       (.I0(ir[15]),
        .I1(ir[14]),
        .O(\ccmd[1]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \ccmd[1]_INST_0_i_18 
       (.I0(ir[8]),
        .I1(Q[0]),
        .I2(ir[10]),
        .I3(ir[9]),
        .O(\ccmd[1]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hBABBAABBBBBBBABB)) 
    \ccmd[1]_INST_0_i_2 
       (.I0(\stat_reg[0]_2 ),
        .I1(\ccmd[1]_INST_0_i_7_n_0 ),
        .I2(ir[11]),
        .I3(ir[15]),
        .I4(ir[14]),
        .I5(ir[13]),
        .O(\ccmd[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006160)) 
    \ccmd[1]_INST_0_i_3 
       (.I0(ir[3]),
        .I1(ir[1]),
        .I2(ir[2]),
        .I3(ir[0]),
        .I4(\ccmd[1]_INST_0_i_8_n_0 ),
        .I5(\ccmd[1]_INST_0_i_9_n_0 ),
        .O(\ccmd[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA8AA)) 
    \ccmd[1]_INST_0_i_4 
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(ir[11]),
        .I3(ir[15]),
        .O(\ccmd[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEF00EF00EF00EFFF)) 
    \ccmd[1]_INST_0_i_5 
       (.I0(\ccmd[1]_INST_0_i_10_n_0 ),
        .I1(\ccmd[1]_INST_0_i_11_n_0 ),
        .I2(\ccmd[1]_INST_0_i_12_n_0 ),
        .I3(ir[11]),
        .I4(\ccmd[1]_INST_0_i_13_n_0 ),
        .I5(\ccmd[1]_INST_0_i_14_n_0 ),
        .O(\ccmd[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h60E8000000000000)) 
    \ccmd[1]_INST_0_i_7 
       (.I0(ir[3]),
        .I1(ir[1]),
        .I2(crdy),
        .I3(ir[0]),
        .I4(\ccmd[1]_INST_0_i_15_n_0 ),
        .I5(rst_n_fl_reg_3),
        .O(\ccmd[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF9FFFFF)) 
    \ccmd[1]_INST_0_i_8 
       (.I0(ir[2]),
        .I1(Q[2]),
        .I2(\ccmd[1]_INST_0_i_17_n_0 ),
        .I3(\bcmd[0]_INST_0_i_6_n_0 ),
        .I4(Q[0]),
        .I5(ir[6]),
        .O(\ccmd[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ccmd[1]_INST_0_i_9 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[10]),
        .I3(ir[13]),
        .I4(ir[11]),
        .I5(ir[4]),
        .O(\ccmd[1]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[2]_INST_0 
       (.I0(ctl_copro),
        .I1(\ccmd[2]_INST_0_i_1_n_0 ),
        .O(ccmd[2]));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    \ccmd[2]_INST_0_i_1 
       (.I0(\ccmd[2]_INST_0_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\ccmd[2]_INST_0_i_3_n_0 ),
        .I4(\ccmd[2]_INST_0_i_4_n_0 ),
        .I5(\ccmd[2]_INST_0_i_5_n_0 ),
        .O(\ccmd[2]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \ccmd[2]_INST_0_i_10 
       (.I0(ir[13]),
        .I1(ir[15]),
        .I2(Q[0]),
        .O(\ccmd[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8A8A8AA0000A8)) 
    \ccmd[2]_INST_0_i_11 
       (.I0(\ccmd[2]_INST_0_i_22_n_0 ),
        .I1(crdy),
        .I2(Q[0]),
        .I3(ir[1]),
        .I4(ir[3]),
        .I5(ir[0]),
        .O(\ccmd[2]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \ccmd[2]_INST_0_i_12 
       (.I0(ir[11]),
        .I1(Q[1]),
        .I2(ir[15]),
        .I3(Q[0]),
        .O(\ccmd[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000280000000000)) 
    \ccmd[2]_INST_0_i_13 
       (.I0(\ccmd[2]_INST_0_i_23_n_0 ),
        .I1(ir[3]),
        .I2(ir[1]),
        .I3(\ccmd[2]_INST_0_i_24_n_0 ),
        .I4(\ccmd[2]_INST_0_i_25_n_0 ),
        .I5(Q[1]),
        .O(\ccmd[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hE0000002E0020002)) 
    \ccmd[2]_INST_0_i_14 
       (.I0(crdy),
        .I1(Q[1]),
        .I2(ir[11]),
        .I3(ir[10]),
        .I4(ir[7]),
        .I5(ir[6]),
        .O(\ccmd[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFF7F)) 
    \ccmd[2]_INST_0_i_15 
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[15]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\ccmd[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000010001000001)) 
    \ccmd[2]_INST_0_i_16 
       (.I0(\ccmd[2]_INST_0_i_26_n_0 ),
        .I1(Q[1]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[4]),
        .I5(ir[5]),
        .O(\ccmd[2]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd[2]_INST_0_i_17 
       (.I0(ir[15]),
        .I1(ir[14]),
        .O(\ccmd[2]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAE)) 
    \ccmd[2]_INST_0_i_18 
       (.I0(ir[8]),
        .I1(ir[11]),
        .I2(ir[10]),
        .I3(Q[1]),
        .I4(ir[6]),
        .I5(ir[9]),
        .O(\ccmd[2]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[2]_INST_0_i_19 
       (.I0(ir[15]),
        .I1(ir[13]),
        .O(\ccmd[2]_INST_0_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[2]_INST_0_i_2 
       (.I0(ir[13]),
        .I1(ir[12]),
        .O(\ccmd[2]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \ccmd[2]_INST_0_i_20 
       (.I0(ir[3]),
        .I1(Q[0]),
        .I2(ir[1]),
        .I3(ir[0]),
        .O(\ccmd[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \ccmd[2]_INST_0_i_21 
       (.I0(\bcmd[0]_INST_0_i_9_n_0 ),
        .I1(ctl_fetch_ext_fl_i_3_n_0),
        .I2(ir[12]),
        .I3(\ccmd[2]_INST_0_i_27_n_0 ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\ccmd[2]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h10F0000000000000)) 
    \ccmd[2]_INST_0_i_22 
       (.I0(Q[0]),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(\bdatw[15]_INST_0_i_73_n_0 ),
        .I4(\ccmd[2]_INST_0_i_23_n_0 ),
        .I5(\ccmd[2]_INST_0_i_28_n_0 ),
        .O(\ccmd[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ccmd[2]_INST_0_i_23 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(ir[15]),
        .I4(ir[13]),
        .I5(ir[14]),
        .O(\ccmd[2]_INST_0_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ccmd[2]_INST_0_i_24 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(ir[6]),
        .O(\ccmd[2]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \ccmd[2]_INST_0_i_25 
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(ir[0]),
        .I3(ir[2]),
        .O(\ccmd[2]_INST_0_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[2]_INST_0_i_26 
       (.I0(ir[10]),
        .I1(ir[11]),
        .O(\ccmd[2]_INST_0_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[2]_INST_0_i_27 
       (.I0(ir[6]),
        .I1(ir[7]),
        .O(\ccmd[2]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ccmd[2]_INST_0_i_28 
       (.I0(ir[9]),
        .I1(Q[1]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[5]),
        .I5(ir[4]),
        .O(\ccmd[2]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0B0B0FFFFBBB0)) 
    \ccmd[2]_INST_0_i_3 
       (.I0(ir[14]),
        .I1(ir[15]),
        .I2(\ccmd[2]_INST_0_i_6_n_0 ),
        .I3(\ccmd[2]_INST_0_i_7_n_0 ),
        .I4(Q[1]),
        .I5(\ccmd[2]_INST_0_i_8_n_0 ),
        .O(\ccmd[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFAAAAAAAAAAAA)) 
    \ccmd[2]_INST_0_i_4 
       (.I0(\ccmd[2]_INST_0_i_9_n_0 ),
        .I1(ir[14]),
        .I2(ir[11]),
        .I3(ir[12]),
        .I4(\ccmd[2]_INST_0_i_10_n_0 ),
        .I5(ctl_fetch_inferred_i_4_0),
        .O(\ccmd[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111101010)) 
    \ccmd[2]_INST_0_i_5 
       (.I0(ir[12]),
        .I1(Q[2]),
        .I2(\ccmd[2]_INST_0_i_11_n_0 ),
        .I3(\ccmd[2]_INST_0_i_12_n_0 ),
        .I4(ir[14]),
        .I5(\ccmd[2]_INST_0_i_13_n_0 ),
        .O(\ccmd[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00D0F0D0)) 
    \ccmd[2]_INST_0_i_6 
       (.I0(\ccmd[2]_INST_0_i_14_n_0 ),
        .I1(\ccmd[2]_INST_0_i_15_n_0 ),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(\ccmd[2]_INST_0_i_16_n_0 ),
        .I5(\ccmd[2]_INST_0_i_17_n_0 ),
        .O(\ccmd[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B0FFFFFF)) 
    \ccmd[2]_INST_0_i_7 
       (.I0(\ccmd[3]_INST_0_i_13_n_0 ),
        .I1(ir[6]),
        .I2(\ccmd[4]_INST_0_i_21_n_0 ),
        .I3(ir[7]),
        .I4(\badr[15]_INST_0_i_47_n_0 ),
        .I5(\ccmd[3]_INST_0_i_11_n_0 ),
        .O(\ccmd[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAAAA)) 
    \ccmd[2]_INST_0_i_8 
       (.I0(\ccmd[2]_INST_0_i_18_n_0 ),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[7]),
        .I4(Q[1]),
        .I5(\ccmd[2]_INST_0_i_15_n_0 ),
        .O(\ccmd[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \ccmd[2]_INST_0_i_9 
       (.I0(\ccmd[2]_INST_0_i_19_n_0 ),
        .I1(ir[14]),
        .I2(\ccmd[2]_INST_0_i_20_n_0 ),
        .I3(\bcmd[0]_INST_0_i_10_n_0 ),
        .I4(ir[2]),
        .I5(\ccmd[2]_INST_0_i_21_n_0 ),
        .O(\ccmd[2]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[3]_INST_0 
       (.I0(ctl_copro),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .O(ccmd[3]));
  LUT6 #(
    .INIT(64'h00000000777777F7)) 
    \ccmd[3]_INST_0_i_1 
       (.I0(\bcmd[2]_INST_0_i_1_n_0 ),
        .I1(\ccmd[3]_INST_0_i_2_n_0 ),
        .I2(\ccmd[3]_INST_0_i_3_n_0 ),
        .I3(\ccmd[3]_INST_0_i_4_n_0 ),
        .I4(\ccmd[3]_INST_0_i_5_n_0 ),
        .I5(\ccmd[3]_INST_0_i_6_n_0 ),
        .O(\ccmd[3]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ccmd[3]_INST_0_i_10 
       (.I0(ir[10]),
        .I1(ir[8]),
        .O(\ccmd[3]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \ccmd[3]_INST_0_i_11 
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(ir[11]),
        .O(\ccmd[3]_INST_0_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \ccmd[3]_INST_0_i_12 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(ir[8]),
        .I2(ir[9]),
        .O(\ccmd[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \ccmd[3]_INST_0_i_13 
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[15]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\ccmd[3]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[3]_INST_0_i_14 
       (.I0(ir[10]),
        .I1(ir[11]),
        .O(\ccmd[3]_INST_0_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \ccmd[3]_INST_0_i_15 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[9]),
        .O(\ccmd[3]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFECCCEFC)) 
    \ccmd[3]_INST_0_i_16 
       (.I0(ir[11]),
        .I1(Q[2]),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(ir[14]),
        .O(\ccmd[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h2020202020202022)) 
    \ccmd[3]_INST_0_i_17 
       (.I0(\ccmd[3]_INST_0_i_19_n_0 ),
        .I1(\ccmd[3]_INST_0_i_20_n_0 ),
        .I2(\ccmd[4]_INST_0_i_17_n_0 ),
        .I3(ir[14]),
        .I4(ir[13]),
        .I5(ir[12]),
        .O(\ccmd[3]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004641)) 
    \ccmd[3]_INST_0_i_18 
       (.I0(Q[0]),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(ir[3]),
        .I4(\bcmd[2]_INST_0_i_4_n_0 ),
        .I5(ir[5]),
        .O(\ccmd[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h4444000F44440000)) 
    \ccmd[3]_INST_0_i_19 
       (.I0(\ccmd[3]_INST_0_i_17_0 ),
        .I1(ir[8]),
        .I2(\ccmd[3]_INST_0_i_22_n_0 ),
        .I3(\ccmd[3]_INST_0_i_17_1 ),
        .I4(ir[7]),
        .I5(\ccmd[3]_INST_0_i_24_n_0 ),
        .O(\ccmd[3]_INST_0_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \ccmd[3]_INST_0_i_2 
       (.I0(ir[15]),
        .I1(ir[12]),
        .I2(Q[2]),
        .O(\ccmd[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF6FF)) 
    \ccmd[3]_INST_0_i_20 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(ir[9]),
        .I3(\bcmd[0]_INST_0_i_10_n_0 ),
        .I4(ir[15]),
        .I5(Q[2]),
        .O(\ccmd[3]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ccmd[3]_INST_0_i_22 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(ir[8]),
        .I3(ir[12]),
        .O(\ccmd[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0004000455AE0000)) 
    \ccmd[3]_INST_0_i_24 
       (.I0(ir[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(ir[3]),
        .I4(ir[2]),
        .I5(ir[0]),
        .O(\ccmd[3]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hE0FFFFFFFFFFF0FF)) 
    \ccmd[3]_INST_0_i_3 
       (.I0(ir[9]),
        .I1(\ccmd[3]_INST_0_i_1_0 ),
        .I2(\ccmd[3]_INST_0_i_8_n_0 ),
        .I3(\ccmd[3]_INST_0_i_9_n_0 ),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(\ccmd[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F80088)) 
    \ccmd[3]_INST_0_i_4 
       (.I0(\ccmd[3]_INST_0_i_10_n_0 ),
        .I1(\ccmd[3]_INST_0_i_11_n_0 ),
        .I2(\ccmd[3]_INST_0_i_12_n_0 ),
        .I3(Q[1]),
        .I4(crdy),
        .I5(Q[0]),
        .O(\ccmd[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h08AC000000000000)) 
    \ccmd[3]_INST_0_i_5 
       (.I0(\ccmd[3]_INST_0_i_13_n_0 ),
        .I1(crdy),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\ccmd[3]_INST_0_i_14_n_0 ),
        .I5(\ccmd[3]_INST_0_i_15_n_0 ),
        .O(\ccmd[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF50400000)) 
    \ccmd[3]_INST_0_i_6 
       (.I0(\ccmd[3]_INST_0_i_16_n_0 ),
        .I1(ir[12]),
        .I2(ir[15]),
        .I3(ir[14]),
        .I4(\ccmd[0]_INST_0_i_1_0 ),
        .I5(\ccmd[3]_INST_0_i_17_n_0 ),
        .O(\ccmd[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBABB)) 
    \ccmd[3]_INST_0_i_8 
       (.I0(Q[1]),
        .I1(\ccmd[3]_INST_0_i_18_n_0 ),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[9]),
        .I5(Q[0]),
        .O(\ccmd[3]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[3]_INST_0_i_9 
       (.I0(ir[7]),
        .I1(ir[11]),
        .O(\ccmd[3]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0 
       (.I0(ctl_copro),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .O(ccmd[4]));
  LUT6 #(
    .INIT(64'h0051005100515555)) 
    \ccmd[4]_INST_0_i_1 
       (.I0(\ccmd[4]_INST_0_i_3_n_0 ),
        .I1(\ccmd[4]_INST_0_i_4_n_0 ),
        .I2(Q[1]),
        .I3(\ccmd[4]_INST_0_i_5_n_0 ),
        .I4(ir[11]),
        .I5(\ccmd[4]_INST_0_i_6_n_0 ),
        .O(ctl_copro));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0_i_10 
       (.I0(ir[8]),
        .I1(ir[9]),
        .O(\ccmd[4]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[4]_INST_0_i_11 
       (.I0(ir[12]),
        .I1(ir[11]),
        .O(\ccmd[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA5A5A4A5A4A5A0A0)) 
    \ccmd[4]_INST_0_i_12 
       (.I0(Q[0]),
        .I1(ir[9]),
        .I2(Q[1]),
        .I3(crdy),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(\ccmd[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEEFE0000EFFEEFFE)) 
    \ccmd[4]_INST_0_i_13 
       (.I0(ir[8]),
        .I1(\ccmd[4]_INST_0_i_21_n_0 ),
        .I2(Q[1]),
        .I3(ir[7]),
        .I4(\ccmd[3]_INST_0_i_13_n_0 ),
        .I5(crdy),
        .O(\ccmd[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \ccmd[4]_INST_0_i_14 
       (.I0(ir[1]),
        .I1(ir[3]),
        .I2(ir[12]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[10]),
        .O(\ccmd[4]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF20FFFFFFFFFF)) 
    \ccmd[4]_INST_0_i_15 
       (.I0(Q[0]),
        .I1(ir[3]),
        .I2(\ccmd[4]_INST_0_i_6_0 ),
        .I3(ir[2]),
        .I4(ir[7]),
        .I5(\bcmd[0]_INST_0_i_9_n_0 ),
        .O(\ccmd[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0D0D0D0D0F0F0F00)) 
    \ccmd[4]_INST_0_i_16 
       (.I0(ir[0]),
        .I1(\bdatw[8]_INST_0_i_15_n_0 ),
        .I2(\ccmd[4]_INST_0_i_25_n_0 ),
        .I3(Q[0]),
        .I4(crdy),
        .I5(Q[1]),
        .O(\ccmd[4]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0_i_17 
       (.I0(crdy),
        .I1(\ccmd[3]_INST_0_i_13_n_0 ),
        .O(\ccmd[4]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000200020)) 
    \ccmd[4]_INST_0_i_19 
       (.I0(\ccmd[4]_INST_0_i_22_n_0 ),
        .I1(\stat[0]_i_12_0 ),
        .I2(\ccmd[4]_INST_0_i_10_n_0 ),
        .I3(ir[15]),
        .I4(ir[7]),
        .I5(ir[10]),
        .O(\ccmd[4]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBCFCB)) 
    \ccmd[4]_INST_0_i_2 
       (.I0(Q[0]),
        .I1(ir[11]),
        .I2(ir[12]),
        .I3(Q[1]),
        .I4(\ccmd[4]_INST_0_i_7_n_0 ),
        .I5(\ccmd[4]_INST_0_i_8_n_0 ),
        .O(\ccmd[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0_i_20 
       (.I0(ir[6]),
        .I1(Q[0]),
        .O(\ccmd[4]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd[4]_INST_0_i_21 
       (.I0(ir[9]),
        .I1(ir[10]),
        .O(\ccmd[4]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \ccmd[4]_INST_0_i_22 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(ir[14]),
        .I3(ir[11]),
        .I4(ir[10]),
        .O(\ccmd[4]_INST_0_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[4]_INST_0_i_23 
       (.I0(ir[7]),
        .I1(ir[8]),
        .O(\ccmd[4]_INST_0_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \ccmd[4]_INST_0_i_25 
       (.I0(ir[6]),
        .I1(ir[14]),
        .I2(ir[13]),
        .O(\ccmd[4]_INST_0_i_25_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[4]_INST_0_i_3 
       (.I0(ir[15]),
        .I1(Q[2]),
        .O(\ccmd[4]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \ccmd[4]_INST_0_i_4 
       (.I0(crdy),
        .I1(ir[7]),
        .I2(Q[0]),
        .O(\ccmd[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F7F7FFF7FFF7F)) 
    \ccmd[4]_INST_0_i_5 
       (.I0(\ccmd[4]_INST_0_i_9_n_0 ),
        .I1(\ccmd[4]_INST_0_i_10_n_0 ),
        .I2(\ccmd[4]_INST_0_i_11_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(ir[7]),
        .O(\ccmd[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFB00FBFBFBFB)) 
    \ccmd[4]_INST_0_i_6 
       (.I0(\ccmd[4]_INST_0_i_12_n_0 ),
        .I1(\bcmd[1]_INST_0_i_8_n_0 ),
        .I2(\ccmd[4]_INST_0_i_13_n_0 ),
        .I3(\ccmd[4]_INST_0_i_14_n_0 ),
        .I4(\ccmd[4]_INST_0_i_15_n_0 ),
        .I5(\ccmd[4]_INST_0_i_16_n_0 ),
        .O(\ccmd[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0D0D0D0D0D0D000D)) 
    \ccmd[4]_INST_0_i_7 
       (.I0(\ccmd[4]_INST_0_i_17_n_0 ),
        .I1(\ccmd[4]_INST_0_i_2_0 ),
        .I2(\ccmd[4]_INST_0_i_19_n_0 ),
        .I3(\ccmd[4]_INST_0_i_20_n_0 ),
        .I4(\ccmd[4]_INST_0_i_21_n_0 ),
        .I5(Q[1]),
        .O(\ccmd[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF40FFFFFFFFF)) 
    \ccmd[4]_INST_0_i_8 
       (.I0(\ccmd[4]_INST_0_i_22_n_0 ),
        .I1(\ccmd[4]_INST_0_i_23_n_0 ),
        .I2(ir[15]),
        .I3(ir[12]),
        .I4(Q[2]),
        .I5(\bcmd[2]_INST_0_i_1_n_0 ),
        .O(\ccmd[4]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \ccmd[4]_INST_0_i_9 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[10]),
        .O(\ccmd[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    ctl_fetch_ext_fl_i_1
       (.I0(rst_n_fl_reg_1),
        .I1(ir[5]),
        .I2(ir[7]),
        .I3(ctl_fetch_ext_fl_i_3_n_0),
        .I4(ctl_fetch_ext_fl_i_4_n_0),
        .I5(ctl_fetch_ext_fl_i_5_n_0),
        .O(ctl_fetch_ext));
  LUT5 #(
    .INIT(32'h00000001)) 
    ctl_fetch_ext_fl_i_2
       (.I0(ir[11]),
        .I1(ir[15]),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(ir[14]),
        .O(rst_n_fl_reg_1));
  LUT2 #(
    .INIT(4'hE)) 
    ctl_fetch_ext_fl_i_3
       (.I0(ir[9]),
        .I1(ir[8]),
        .O(ctl_fetch_ext_fl_i_3_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    ctl_fetch_ext_fl_i_4
       (.I0(ir[2]),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(Q[2]),
        .O(ctl_fetch_ext_fl_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ctl_fetch_ext_fl_i_5
       (.I0(ir[3]),
        .I1(Q[0]),
        .I2(ir[6]),
        .I3(ir[4]),
        .I4(ir[10]),
        .I5(Q[1]),
        .O(ctl_fetch_ext_fl_i_5_n_0));
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
    .INIT(64'h00000000FF04FFF4)) 
    ctl_fetch_inferred_i_1
       (.I0(ctl_fetch_inferred_i_2_n_0),
        .I1(ir[12]),
        .I2(ir[11]),
        .I3(ctl_fetch_inferred_i_3_n_0),
        .I4(ctl_fetch_inferred_i_4_n_0),
        .I5(ctl_fetch_inferred_i_5_n_0),
        .O(in0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF020202)) 
    ctl_fetch_inferred_i_10
       (.I0(\bcmd[1]_INST_0_i_8_n_0 ),
        .I1(ctl_fetch_inferred_i_20_n_0),
        .I2(\bcmd[1]_INST_0_i_9_n_0 ),
        .I3(Q[1]),
        .I4(crdy),
        .I5(ctl_fetch_inferred_i_21_n_0),
        .O(ctl_fetch_inferred_i_10_n_0));
  LUT6 #(
    .INIT(64'h808080FF80FF80FF)) 
    ctl_fetch_inferred_i_11
       (.I0(Q[0]),
        .I1(ir[8]),
        .I2(\ccmd[2]_INST_0_i_15_n_0 ),
        .I3(ctl_fetch_inferred_i_22_n_0),
        .I4(ctl_fetch_inferred_i_23_n_0),
        .I5(ctl_fetch_inferred_i_24_n_0),
        .O(ctl_fetch_inferred_i_11_n_0));
  LUT6 #(
    .INIT(64'hA080AC8CF0C0F0C0)) 
    ctl_fetch_inferred_i_12
       (.I0(ctl_fetch_inferred_i_25_n_0),
        .I1(ir[8]),
        .I2(ir[10]),
        .I3(ir[7]),
        .I4(ir[6]),
        .I5(ir[9]),
        .O(ctl_fetch_inferred_i_12_n_0));
  LUT6 #(
    .INIT(64'h80008080AAAAAAAA)) 
    ctl_fetch_inferred_i_13
       (.I0(ctl_fetch_inferred_i_4_0),
        .I1(ir[10]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[6]),
        .I5(Q[0]),
        .O(ctl_fetch_inferred_i_13_n_0));
  LUT6 #(
    .INIT(64'h199955559999DDDD)) 
    ctl_fetch_inferred_i_15
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ir[8]),
        .I5(ir[7]),
        .O(ctl_fetch_inferred_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFF0000)) 
    ctl_fetch_inferred_i_16
       (.I0(ctl_fetch_inferred_i_26_n_0),
        .I1(\sp[15]_i_17_n_0 ),
        .I2(ir[3]),
        .I3(ir[5]),
        .I4(ctl_fetch_inferred_i_27_n_0),
        .I5(ctl_fetch_inferred_i_28_n_0),
        .O(ctl_fetch_inferred_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    ctl_fetch_inferred_i_17
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[7]),
        .I3(ctl_fetch_inferred_i_18_n_0),
        .I4(ir[0]),
        .I5(ctl_fetch_inferred_i_29_n_0),
        .O(ctl_fetch_inferred_i_17_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctl_fetch_inferred_i_18
       (.I0(ir[1]),
        .I1(ir[2]),
        .O(ctl_fetch_inferred_i_18_n_0));
  LUT5 #(
    .INIT(32'hEAC0EA00)) 
    ctl_fetch_inferred_i_19
       (.I0(ir[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(ir[3]),
        .I4(ir[1]),
        .O(ctl_fetch_inferred_i_19_n_0));
  LUT6 #(
    .INIT(64'hD5D5D5D500D5DDDD)) 
    ctl_fetch_inferred_i_2
       (.I0(ctl_fetch_fl_reg_1),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(ctl_fetch_inferred_i_7_n_0),
        .I3(Q[0]),
        .I4(crdy),
        .I5(\ccmd[3]_INST_0_i_13_n_0 ),
        .O(ctl_fetch_inferred_i_2_n_0));
  LUT6 #(
    .INIT(64'h0D0D000D0D000000)) 
    ctl_fetch_inferred_i_20
       (.I0(Q[0]),
        .I1(ir[7]),
        .I2(Q[1]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[10]),
        .O(ctl_fetch_inferred_i_20_n_0));
  LUT6 #(
    .INIT(64'hFFFFFBBAFFFFFFFE)) 
    ctl_fetch_inferred_i_21
       (.I0(ctl_fetch_inferred_i_30_n_0),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\ccmd[4]_INST_0_i_3_n_0 ),
        .I5(ir[12]),
        .O(ctl_fetch_inferred_i_21_n_0));
  LUT6 #(
    .INIT(64'hEFEEEFEEFFFFEFEE)) 
    ctl_fetch_inferred_i_22
       (.I0(ctl_fetch_inferred_i_11_1),
        .I1(ir[12]),
        .I2(\sr_reg[15] [5]),
        .I3(ir[13]),
        .I4(ir[14]),
        .I5(\sr_reg[15] [4]),
        .O(ctl_fetch_inferred_i_22_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    ctl_fetch_inferred_i_23
       (.I0(rst_n_fl_reg_3),
        .I1(ir[14]),
        .I2(ir[13]),
        .O(ctl_fetch_inferred_i_23_n_0));
  LUT6 #(
    .INIT(64'h0BFFBBA0BBFFBBA0)) 
    ctl_fetch_inferred_i_24
       (.I0(ctl_fetch_inferred_i_11_0),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(ir[1]),
        .I4(ir[2]),
        .I5(crdy),
        .O(ctl_fetch_inferred_i_24_n_0));
  LUT6 #(
    .INIT(64'h000000002200000B)) 
    ctl_fetch_inferred_i_25
       (.I0(ir[3]),
        .I1(Q[0]),
        .I2(ir[4]),
        .I3(ir[5]),
        .I4(ir[6]),
        .I5(\ccmd[4]_INST_0_i_23_n_0 ),
        .O(ctl_fetch_inferred_i_25_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    ctl_fetch_inferred_i_26
       (.I0(ir[9]),
        .I1(ir[11]),
        .I2(ir[10]),
        .O(ctl_fetch_inferred_i_26_n_0));
  LUT5 #(
    .INIT(32'hFBBBEEEE)) 
    ctl_fetch_inferred_i_27
       (.I0(ctl_fetch_inferred_i_15_n_0),
        .I1(ir[9]),
        .I2(ir[6]),
        .I3(Q[0]),
        .I4(ir[8]),
        .O(ctl_fetch_inferred_i_27_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF1F1F1FF)) 
    ctl_fetch_inferred_i_28
       (.I0(\ccmd[3]_INST_0_i_13_n_0 ),
        .I1(ir[6]),
        .I2(brdy),
        .I3(ir[11]),
        .I4(ir[8]),
        .I5(ctl_fetch_inferred_i_33_n_0),
        .O(ctl_fetch_inferred_i_28_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    ctl_fetch_inferred_i_29
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[15]),
        .O(ctl_fetch_inferred_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBF0000)) 
    ctl_fetch_inferred_i_3
       (.I0(\ccmd[4]_INST_0_i_14_n_0 ),
        .I1(\stat[1]_i_10_n_0 ),
        .I2(ctl_fetch_inferred_i_8_n_0),
        .I3(ctl_fetch_inferred_i_9_n_0),
        .I4(ctl_fetch_inferred_i_10_n_0),
        .I5(ctl_fetch_inferred_i_11_n_0),
        .O(ctl_fetch_inferred_i_3_n_0));
  LUT6 #(
    .INIT(64'h2600260026000000)) 
    ctl_fetch_inferred_i_30
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ctl_fetch_inferred_i_34_n_0),
        .I3(crdy),
        .I4(Q[1]),
        .I5(\ccmd[4]_INST_0_i_9_n_0 ),
        .O(ctl_fetch_inferred_i_30_n_0));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    ctl_fetch_inferred_i_33
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(Q[2]),
        .I3(ir[12]),
        .I4(ir[15]),
        .O(ctl_fetch_inferred_i_33_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ctl_fetch_inferred_i_34
       (.I0(ir[7]),
        .I1(Q[0]),
        .O(ctl_fetch_inferred_i_34_n_0));
  LUT6 #(
    .INIT(64'hD000D0D0D0000000)) 
    ctl_fetch_inferred_i_4
       (.I0(\bcmd[2]_INST_0_i_1_n_0 ),
        .I1(ctl_fetch_inferred_i_12_n_0),
        .I2(ctl_fetch_inferred_i_13_n_0),
        .I3(ctl_fetch_fl_reg_1),
        .I4(ir[12]),
        .I5(ctl_fetch_fl_reg_2),
        .O(ctl_fetch_inferred_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000055555557)) 
    ctl_fetch_inferred_i_5
       (.I0(Q[1]),
        .I1(ir[6]),
        .I2(ctl_fetch_ext_fl_i_3_n_0),
        .I3(Q[0]),
        .I4(ctl_fetch_inferred_i_15_n_0),
        .I5(ctl_fetch_inferred_i_16_n_0),
        .O(ctl_fetch_inferred_i_5_n_0));
  LUT4 #(
    .INIT(16'h57D7)) 
    ctl_fetch_inferred_i_7
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[6]),
        .O(ctl_fetch_inferred_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFCFEFEF)) 
    ctl_fetch_inferred_i_8
       (.I0(ir[0]),
        .I1(ir[3]),
        .I2(Q[1]),
        .I3(ir[1]),
        .I4(ir[2]),
        .O(ctl_fetch_inferred_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFAEE)) 
    ctl_fetch_inferred_i_9
       (.I0(ctl_fetch_inferred_i_17_n_0),
        .I1(ctl_fetch_inferred_i_18_n_0),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(ir[4]),
        .I5(ctl_fetch_inferred_i_19_n_0),
        .O(ctl_fetch_inferred_i_9_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \eir_fl[6]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(rst_n),
        .O(eir_fl0));
  FDRE \eir_fl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[0]),
        .Q(\eir_fl_reg_n_0_[0] ),
        .R(SR));
  FDRE \eir_fl_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[10]),
        .Q(\eir_fl_reg_n_0_[10] ),
        .R(SR));
  FDRE \eir_fl_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[11]),
        .Q(\eir_fl_reg_n_0_[11] ),
        .R(SR));
  FDRE \eir_fl_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[12]),
        .Q(\eir_fl_reg_n_0_[12] ),
        .R(SR));
  FDRE \eir_fl_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[13]),
        .Q(\eir_fl_reg_n_0_[13] ),
        .R(SR));
  FDRE \eir_fl_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[14]),
        .Q(\eir_fl_reg_n_0_[14] ),
        .R(SR));
  FDRE \eir_fl_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[15]),
        .Q(\eir_fl_reg_n_0_[15] ),
        .R(SR));
  FDRE \eir_fl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl_reg[6]_0 [0]),
        .Q(\eir_fl_reg_n_0_[1] ),
        .R(eir_fl0));
  FDRE \eir_fl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl_reg[6]_0 [1]),
        .Q(\eir_fl_reg_n_0_[2] ),
        .R(eir_fl0));
  FDRE \eir_fl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl_reg[6]_0 [2]),
        .Q(\eir_fl_reg_n_0_[3] ),
        .R(eir_fl0));
  FDRE \eir_fl_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl_reg[6]_0 [3]),
        .Q(\eir_fl_reg_n_0_[4] ),
        .R(eir_fl0));
  FDRE \eir_fl_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl_reg[6]_0 [4]),
        .Q(\eir_fl_reg_n_0_[5] ),
        .R(eir_fl0));
  FDRE \eir_fl_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl_reg[6]_0 [5]),
        .Q(\eir_fl_reg_n_0_[6] ),
        .R(eir_fl0));
  FDRE \eir_fl_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[7]),
        .Q(\eir_fl_reg_n_0_[7] ),
        .R(SR));
  FDRE \eir_fl_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[8]),
        .Q(\eir_fl_reg_n_0_[8] ),
        .R(SR));
  FDRE \eir_fl_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(eir[9]),
        .Q(\eir_fl_reg_n_0_[9] ),
        .R(SR));
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
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \fch_irq_lev[1]_i_3 
       (.I0(ir[0]),
        .I1(fch_irq_req),
        .I2(\bcmd[0]_INST_0_i_7_n_0 ),
        .I3(ir[2]),
        .I4(ir[1]),
        .I5(\badr[15]_INST_0_i_39_n_0 ),
        .O(rst_n_fl_reg_5));
  FDRE \fch_irq_lev_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch_irq_lev[0]_i_1_n_0 ),
        .Q(fch_irq_lev[0]),
        .R(p_0_in_1));
  FDRE \fch_irq_lev_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch_irq_lev[1]_i_1_n_0 ),
        .Q(fch_irq_lev[1]),
        .R(p_0_in_1));
  FDRE fch_irq_req_fl_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fch_irq_req),
        .Q(fch_irq_req_fl),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \grn[15]_i_1 
       (.I0(ctl_selc[4]),
        .I1(ctl_selc[0]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .I5(\sr_reg[15] [0]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \grn[15]_i_1__0 
       (.I0(ctl_selc[4]),
        .I1(ctl_selc[0]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .I5(\sr_reg[15] [0]),
        .O(\sr_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \grn[15]_i_1__1 
       (.I0(ctl_selc[4]),
        .I1(ctl_selc[0]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .I5(\sr_reg[15] [0]),
        .O(\sr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \grn[15]_i_1__10 
       (.I0(ctl_selc[0]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .I5(\sr_reg[15] [0]),
        .O(\sr_reg[0]_9 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \grn[15]_i_1__11 
       (.I0(ctl_selc[0]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .I5(\sr_reg[15] [0]),
        .O(\sr_reg[0]_10 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \grn[15]_i_1__12 
       (.I0(ctl_selc[0]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .I5(\sr_reg[15] [0]),
        .O(\sr_reg[0]_11 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \grn[15]_i_1__13 
       (.I0(ctl_selc[0]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .I5(\sr_reg[15] [0]),
        .O(\sr_reg[0]_12 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \grn[15]_i_1__14 
       (.I0(ctl_selc[0]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .I5(\sr_reg[15] [0]),
        .O(\sr_reg[0]_13 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \grn[15]_i_1__2 
       (.I0(ctl_selc[4]),
        .I1(ctl_selc[0]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .I5(\sr_reg[15] [0]),
        .O(\sr_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \grn[15]_i_1__3 
       (.I0(ctl_selc[4]),
        .I1(ctl_selc[0]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .I5(\sr_reg[15] [0]),
        .O(\sr_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \grn[15]_i_1__4 
       (.I0(ctl_selc[4]),
        .I1(ctl_selc[0]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .I5(\sr_reg[15] [0]),
        .O(\sr_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \grn[15]_i_1__5 
       (.I0(ctl_selc[4]),
        .I1(ctl_selc[0]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .I5(\sr_reg[15] [0]),
        .O(\sr_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \grn[15]_i_1__6 
       (.I0(ctl_selc[4]),
        .I1(ctl_selc[0]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .I5(\sr_reg[15] [0]),
        .O(\sr_reg[0]_5 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \grn[15]_i_1__7 
       (.I0(ctl_selc[0]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .I5(\sr_reg[15] [0]),
        .O(\sr_reg[0]_6 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \grn[15]_i_1__8 
       (.I0(ctl_selc[0]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .I5(\sr_reg[15] [0]),
        .O(\sr_reg[0]_7 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \grn[15]_i_1__9 
       (.I0(ctl_selc[0]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .I5(\sr_reg[15] [0]),
        .O(\sr_reg[0]_8 ));
  FDRE \ir_fl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[0]),
        .Q(ir_fl[0]),
        .R(p_0_in_1));
  FDRE \ir_fl_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[10]),
        .Q(ir_fl[10]),
        .R(p_0_in_1));
  FDRE \ir_fl_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[11]),
        .Q(ir_fl[11]),
        .R(p_0_in_1));
  FDRE \ir_fl_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[12]),
        .Q(ir_fl[12]),
        .R(p_0_in_1));
  FDRE \ir_fl_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[13]),
        .Q(ir_fl[13]),
        .R(p_0_in_1));
  FDRE \ir_fl_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[14]),
        .Q(ir_fl[14]),
        .R(p_0_in_1));
  FDRE \ir_fl_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[15]),
        .Q(ir_fl[15]),
        .R(p_0_in_1));
  FDRE \ir_fl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[1]),
        .Q(ir_fl[1]),
        .R(p_0_in_1));
  FDRE \ir_fl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[2]),
        .Q(ir_fl[2]),
        .R(p_0_in_1));
  FDRE \ir_fl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[3]),
        .Q(ir_fl[3]),
        .R(p_0_in_1));
  FDRE \ir_fl_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[4]),
        .Q(ir_fl[4]),
        .R(p_0_in_1));
  FDRE \ir_fl_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[5]),
        .Q(ir_fl[5]),
        .R(p_0_in_1));
  FDRE \ir_fl_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[6]),
        .Q(ir_fl[6]),
        .R(p_0_in_1));
  FDRE \ir_fl_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[7]),
        .Q(ir_fl[7]),
        .R(p_0_in_1));
  FDRE \ir_fl_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[8]),
        .Q(ir_fl[8]),
        .R(p_0_in_1));
  FDRE \ir_fl_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[9]),
        .Q(ir_fl[9]),
        .R(p_0_in_1));
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
        .I1(\iv[14]_i_3_n_0 ),
        .I2(O[0]),
        .I3(\tr_reg[0] ),
        .I4(\iv[0]_i_4_n_0 ),
        .O(cbus[0]));
  LUT6 #(
    .INIT(64'hF0FFF5F5505F3F30)) 
    \iv[0]_i_10 
       (.I0(\stat_reg[2]_12 ),
        .I1(abus_0[8]),
        .I2(\stat_reg[1] [1]),
        .I3(abus_0[0]),
        .I4(\stat_reg[1] [0]),
        .I5(acmd),
        .O(\iv[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h00EF)) 
    \iv[0]_i_12 
       (.I0(\stat_reg[1] [1]),
        .I1(\stat_reg[1] [0]),
        .I2(\sr_reg[15] [5]),
        .I3(\iv[13]_i_20_n_0 ),
        .O(\iv[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \iv[0]_i_13 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_13 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(rst_n_fl_reg_7),
        .O(\iv[0]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \iv[0]_i_14 
       (.I0(\iv[0]_i_6_1 ),
        .I1(\bdatw[9]_INST_0_i_2_0 ),
        .I2(\iv[0]_i_6_0 ),
        .I3(\stat_reg[1] [1]),
        .I4(\stat_reg[1] [0]),
        .O(\iv[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4544454545444544)) 
    \iv[0]_i_2 
       (.I0(\iv[14]_i_10_n_0 ),
        .I1(\iv[0]_i_5_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(\iv[0]_i_6_n_0 ),
        .I4(\iv[0]_i_7_n_0 ),
        .I5(rst_n_fl_reg_7),
        .O(\iv[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0202)) 
    \iv[0]_i_4 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(\iv[0]_i_9_n_0 ),
        .I3(\iv[0]_i_10_n_0 ),
        .I4(\iv[14]_i_15_n_0 ),
        .O(\iv[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8000000FF0000)) 
    \iv[0]_i_5 
       (.I0(\iv[0]_i_2_1 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\iv[9]_i_11_n_0 ),
        .I3(\iv[0]_i_12_n_0 ),
        .I4(\stat_reg[2]_11 ),
        .I5(\iv[0]_i_13_n_0 ),
        .O(\iv[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0002FFAA)) 
    \iv[0]_i_6 
       (.I0(\iv[0]_i_2_0 ),
        .I1(\stat_reg[1] [0]),
        .I2(\stat_reg[1] [1]),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(\iv[0]_i_14_n_0 ),
        .O(\iv[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFBFFFBFFFF)) 
    \iv[0]_i_7 
       (.I0(\stat_reg[2]_12 ),
        .I1(abus_0[0]),
        .I2(\stat_reg[2]_13 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(\stat_reg[1] [1]),
        .I5(\stat_reg[1] [0]),
        .O(\iv[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h837F)) 
    \iv[0]_i_9 
       (.I0(\stat_reg[1] [0]),
        .I1(\stat_reg[2]_12 ),
        .I2(abus_0[0]),
        .I3(\stat_reg[1] [1]),
        .O(\iv[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFBAFFFF)) 
    \iv[10]_i_1 
       (.I0(\iv[10]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\tr_reg[11] [2]),
        .I3(\tr_reg[10] ),
        .I4(\iv[10]_i_4_n_0 ),
        .O(cbus[10]));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[10]_i_10 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[10]),
        .I3(\bdatw[10]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[1] [0]),
        .I5(\stat_reg[1] [1]),
        .O(\iv[10]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h020002AA)) 
    \iv[10]_i_14 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[6]_i_5_2 ),
        .I2(\bdatw[8]_INST_0_i_2_1 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\sr[4]_i_18_1 ),
        .O(\iv[10]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h30773044)) 
    \iv[10]_i_16 
       (.I0(\iv[2]_i_15_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\iv[1]_i_9_0 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\iv[1]_i_9_1 ),
        .O(\iv[10]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h0000005D)) 
    \iv[10]_i_2 
       (.I0(\stat_reg[2]_11 ),
        .I1(\iv[10]_i_5_n_0 ),
        .I2(\tr_reg[10]_0 ),
        .I3(\iv[10]_i_7_n_0 ),
        .I4(\iv[14]_i_10_n_0 ),
        .O(\iv[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h002F)) 
    \iv[10]_i_4 
       (.I0(\iv[10]_i_8_n_0 ),
        .I1(\iv[10]_i_9_n_0 ),
        .I2(\iv[14]_i_15_n_0 ),
        .I3(\iv[10]_i_10_n_0 ),
        .O(\iv[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h5755)) 
    \iv[10]_i_5 
       (.I0(\iv[13]_i_7_n_0 ),
        .I1(\stat_reg[1] [1]),
        .I2(\stat_reg[1] [0]),
        .I3(abus_0[9]),
        .O(\iv[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2025202070757575)) 
    \iv[10]_i_7 
       (.I0(\stat_reg[2]_11 ),
        .I1(\iv[10]_i_14_n_0 ),
        .I2(\stat_reg[1] [0]),
        .I3(\sr[4]_i_8_3 ),
        .I4(\iv[13]_i_14_n_0 ),
        .I5(\iv[10]_i_16_n_0 ),
        .O(\iv[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEBEFFBEAABEBBBE)) 
    \iv[10]_i_8 
       (.I0(acmd),
        .I1(\stat_reg[1] [0]),
        .I2(abus_0[10]),
        .I3(\stat_reg[1] [1]),
        .I4(abus_0[2]),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[10]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h22022000)) 
    \iv[10]_i_9 
       (.I0(acmd),
        .I1(\stat_reg[1] [1]),
        .I2(\stat_reg[1] [0]),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(abus_0[10]),
        .O(\iv[10]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[11]_i_1 
       (.I0(\iv[11]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\tr_reg[11] [3]),
        .I3(\tr_reg[11]_0 ),
        .I4(\iv[11]_i_4_n_0 ),
        .O(cbus[11]));
  LUT6 #(
    .INIT(64'hEEBEFFBEAABEBBBE)) 
    \iv[11]_i_10 
       (.I0(acmd),
        .I1(\stat_reg[1] [0]),
        .I2(abus_0[11]),
        .I3(\stat_reg[1] [1]),
        .I4(abus_0[3]),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \iv[11]_i_11 
       (.I0(rst_n_fl_reg_7),
        .I1(\stat_reg[1] [0]),
        .I2(abus_0[11]),
        .O(\iv[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[11]_i_12 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[11]),
        .I3(\bdatw[11]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[1] [0]),
        .I5(\stat_reg[1] [1]),
        .O(\iv[11]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \iv[11]_i_18 
       (.I0(\iv[3]_i_7_0 ),
        .I1(\bdatw[8]_INST_0_i_2_1 ),
        .I2(\iv[3]_i_7_1 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\iv[11]_i_24_n_0 ),
        .O(\iv[11]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \iv[11]_i_19 
       (.I0(\stat_reg[1] [0]),
        .I1(\stat_reg[1] [1]),
        .I2(abus_0[10]),
        .O(\iv[11]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0404040455045555)) 
    \iv[11]_i_2 
       (.I0(\iv[14]_i_10_n_0 ),
        .I1(\iv[11]_i_5_n_0 ),
        .I2(\iv[11]_i_6_n_0 ),
        .I3(\iv[11]_i_7_n_0 ),
        .I4(\iv[11]_i_8_n_0 ),
        .I5(\iv[11]_i_9_n_0 ),
        .O(\iv[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \iv[11]_i_24 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(abus_0[15]),
        .I2(\stat_reg[2]_13 ),
        .I3(\stat_reg[2]_12 ),
        .O(\iv[11]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F2F0000)) 
    \iv[11]_i_4 
       (.I0(acmd),
        .I1(\stat_reg[1] [1]),
        .I2(\iv[11]_i_10_n_0 ),
        .I3(\iv[11]_i_11_n_0 ),
        .I4(\iv[14]_i_15_n_0 ),
        .I5(\iv[11]_i_12_n_0 ),
        .O(\iv[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF01FF01FF00FFFF)) 
    \iv[11]_i_5 
       (.I0(\sr[6]_i_3_0 ),
        .I1(\stat_reg[1] [1]),
        .I2(\stat_reg[1] [0]),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(\iv[7]_i_2_0 ),
        .I5(\bdatw[9]_INST_0_i_2_0 ),
        .O(\iv[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \iv[11]_i_6 
       (.I0(\stat_reg[2]_11 ),
        .I1(\iv[11]_i_2_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[11]_i_2_3 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0407)) 
    \iv[11]_i_7 
       (.I0(\iv[11]_i_2_2 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\stat_reg[1] [1]),
        .I3(\iv[2]_i_2_0 ),
        .I4(\bdatw[12]_INST_0_i_2_0 ),
        .O(\iv[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h2F0DFFFF)) 
    \iv[11]_i_8 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\bdatw[9]_INST_0_i_2_0 ),
        .I2(abus_0[15]),
        .I3(\iv[11]_i_2_1 ),
        .I4(\stat_reg[1] [1]),
        .O(\iv[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hD0FFD0FFFFFFD0FF)) 
    \iv[11]_i_9 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[11]_i_18_n_0 ),
        .I2(\stat_reg[1] [0]),
        .I3(\stat_reg[2]_11 ),
        .I4(\iv[13]_i_7_n_0 ),
        .I5(\iv[11]_i_19_n_0 ),
        .O(\iv[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[12]_i_1 
       (.I0(\iv[12]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\tr_reg[15] [0]),
        .I3(\tr_reg[12] ),
        .I4(\iv[12]_i_4_n_0 ),
        .O(cbus[12]));
  LUT6 #(
    .INIT(64'h2200022000002200)) 
    \iv[12]_i_10 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(\stat_reg[1] [0]),
        .I3(\stat_reg[1] [1]),
        .I4(\bdatw[12]_INST_0_i_1_n_0 ),
        .I5(abus_0[12]),
        .O(\iv[12]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEEFA)) 
    \iv[12]_i_11 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\iv[6]_i_5_2 ),
        .I2(\iv[12]_i_5_0 ),
        .I3(\bdatw[8]_INST_0_i_2_1 ),
        .I4(\bdatw[9]_INST_0_i_2_0 ),
        .O(\iv[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00FFE4E400FF00FF)) 
    \iv[12]_i_14 
       (.I0(\bdatw[8]_INST_0_i_2_1 ),
        .I1(\iv[12]_i_5_0 ),
        .I2(\iv[6]_i_5_2 ),
        .I3(abus_0[15]),
        .I4(\bdatw[9]_INST_0_i_2_0 ),
        .I5(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[12]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \iv[12]_i_18 
       (.I0(\stat_reg[2]_12 ),
        .I1(abus_0[0]),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\stat_reg[2]_13 ),
        .O(\bdatw[9]_INST_0_i_2_1 ));
  LUT5 #(
    .INIT(32'h00002A22)) 
    \iv[12]_i_2 
       (.I0(\iv[12]_i_5_n_0 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[12]_i_6_n_0 ),
        .I3(\iv[12]_i_7_n_0 ),
        .I4(\iv[14]_i_10_n_0 ),
        .O(\iv[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFD0)) 
    \iv[12]_i_4 
       (.I0(\iv[12]_i_8_n_0 ),
        .I1(\iv[12]_i_9_n_0 ),
        .I2(\iv[14]_i_15_n_0 ),
        .I3(\iv[12]_i_10_n_0 ),
        .O(\iv[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7F7A7F7F2F2A2A2A)) 
    \iv[12]_i_5 
       (.I0(\stat_reg[2]_11 ),
        .I1(\iv[12]_i_11_n_0 ),
        .I2(\stat_reg[1] [0]),
        .I3(\sr[4]_i_8_1 ),
        .I4(\iv[13]_i_14_n_0 ),
        .I5(\sr[4]_i_8_2 ),
        .O(\iv[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2230223322302200)) 
    \iv[12]_i_6 
       (.I0(\iv[12]_i_14_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_0 ),
        .I2(\iv[12]_i_2_0 ),
        .I3(\stat_reg[1] [1]),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\iv[3]_i_2_0 ),
        .O(\iv[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5755)) 
    \iv[12]_i_7 
       (.I0(\iv[13]_i_7_n_0 ),
        .I1(\stat_reg[1] [1]),
        .I2(\stat_reg[1] [0]),
        .I3(abus_0[11]),
        .O(\iv[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hDDFDDFFF)) 
    \iv[12]_i_8 
       (.I0(acmd),
        .I1(\stat_reg[1] [1]),
        .I2(\stat_reg[1] [0]),
        .I3(\stat_reg[2]_11 ),
        .I4(abus_0[12]),
        .O(\iv[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1141004155414441)) 
    \iv[12]_i_9 
       (.I0(acmd),
        .I1(\stat_reg[1] [0]),
        .I2(abus_0[12]),
        .I3(\stat_reg[1] [1]),
        .I4(abus_0[4]),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[13]_i_1 
       (.I0(\iv[13]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\tr_reg[15] [1]),
        .I3(\tr_reg[13] ),
        .I4(\iv[13]_i_4_n_0 ),
        .O(cbus[13]));
  LUT3 #(
    .INIT(8'h8B)) 
    \iv[13]_i_10 
       (.I0(\bdatw[13]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[1] [0]),
        .I2(abus_0[13]),
        .O(\iv[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[13]_i_11 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[13]),
        .I3(\bdatw[13]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[1] [0]),
        .I5(\stat_reg[1] [1]),
        .O(\iv[13]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \iv[13]_i_12 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[5]_i_7_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .O(\iv[13]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \iv[13]_i_13 
       (.I0(\iv[5]_i_8_0 ),
        .I1(\bdatw[9]_INST_0_i_2_0 ),
        .I2(\iv[13]_i_23_n_0 ),
        .O(\iv[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5554000000015555)) 
    \iv[13]_i_14 
       (.I0(\stat_reg[1] [1]),
        .I1(\stat_reg[2]_12 ),
        .I2(\stat_reg[2]_13 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(\stat_reg[2]_11 ),
        .I5(rst_n_fl_reg_7),
        .O(\iv[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0BFBFAFA0AFA0)) 
    \iv[13]_i_17 
       (.I0(\badr[11]_INST_0_i_1 ),
        .I1(\iv[4]_i_6_1 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[13]_i_29_n_0 ),
        .I4(\iv[4]_i_6_0 ),
        .I5(\iv[13]_i_30_n_0 ),
        .O(\iv[13]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \iv[13]_i_19 
       (.I0(\stat_reg[2]_11 ),
        .I1(rst_n_fl_reg_7),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\stat_reg[2]_13 ),
        .I4(\stat_reg[2]_12 ),
        .O(\iv[13]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222A2A2A)) 
    \iv[13]_i_2 
       (.I0(\iv[13]_i_5_n_0 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[13]_i_6_n_0 ),
        .I3(\iv[13]_i_7_n_0 ),
        .I4(\iv[13]_i_8_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[13]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \iv[13]_i_20 
       (.I0(\stat_reg[1] [1]),
        .I1(abus_0[15]),
        .I2(\stat_reg[1] [0]),
        .O(\iv[13]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hBBFFFCB8880030B8)) 
    \iv[13]_i_23 
       (.I0(abus_0[0]),
        .I1(\stat_reg[2]_12 ),
        .I2(abus_0[1]),
        .I3(\stat_reg[2]_11 ),
        .I4(\stat_reg[2]_13 ),
        .I5(\iv[13]_i_33_n_0 ),
        .O(\iv[13]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h7FC47FF7)) 
    \iv[13]_i_24 
       (.I0(abus_0[0]),
        .I1(\stat_reg[2]_12 ),
        .I2(\stat_reg[2]_11 ),
        .I3(\stat_reg[2]_13 ),
        .I4(abus_0[1]),
        .O(\badr[1]_INST_0_i_1 ));
  LUT5 #(
    .INIT(32'h66C000C0)) 
    \iv[13]_i_29 
       (.I0(\stat_reg[2]_11 ),
        .I1(\stat_reg[2]_13 ),
        .I2(abus_0[6]),
        .I3(\stat_reg[2]_12 ),
        .I4(abus_0[7]),
        .O(\iv[13]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h87)) 
    \iv[13]_i_30 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\stat_reg[2]_13 ),
        .O(\iv[13]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \iv[13]_i_33 
       (.I0(\sr_reg[15] [5]),
        .I1(\stat_reg[2]_12 ),
        .I2(\iv_reg[13]_i_35_n_0 ),
        .I3(ctl_sela[2]),
        .I4(\iv[14]_i_22_0 ),
        .O(\iv[13]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F2F0000)) 
    \iv[13]_i_4 
       (.I0(acmd),
        .I1(\stat_reg[1] [1]),
        .I2(\iv[13]_i_9_n_0 ),
        .I3(\iv[13]_i_10_n_0 ),
        .I4(\iv[14]_i_15_n_0 ),
        .I5(\iv[13]_i_11_n_0 ),
        .O(\iv[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDFDADFDF8F8A8A8A)) 
    \iv[13]_i_5 
       (.I0(\stat_reg[2]_11 ),
        .I1(\iv[13]_i_12_n_0 ),
        .I2(\stat_reg[1] [0]),
        .I3(\iv[13]_i_13_n_0 ),
        .I4(\iv[13]_i_14_n_0 ),
        .I5(\iv[13]_i_2_0 ),
        .O(\iv[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0A03000F0A030)) 
    \iv[13]_i_6 
       (.I0(\iv[13]_i_2_1 ),
        .I1(\iv[13]_i_17_n_0 ),
        .I2(\iv[14]_i_33_0 ),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(\stat_reg[1] [1]),
        .I5(\iv[13]_i_2_2 ),
        .O(\iv[13]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[13]_i_7 
       (.I0(\iv[13]_i_19_n_0 ),
        .I1(\iv[13]_i_20_n_0 ),
        .O(\iv[13]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \iv[13]_i_8 
       (.I0(abus_0[12]),
        .I1(\stat_reg[1] [0]),
        .I2(\stat_reg[1] [1]),
        .O(\iv[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEBEFFBEAABEBBBE)) 
    \iv[13]_i_9 
       (.I0(acmd),
        .I1(\stat_reg[1] [0]),
        .I2(abus_0[13]),
        .I3(\stat_reg[1] [1]),
        .I4(abus_0[5]),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[14]_i_1 
       (.I0(\iv[14]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\tr_reg[15] [2]),
        .I3(\tr_reg[14] ),
        .I4(\iv[14]_i_5_n_0 ),
        .O(cbus[14]));
  LUT4 #(
    .INIT(16'h7F22)) 
    \iv[14]_i_10 
       (.I0(acmd),
        .I1(\stat_reg[1] [1]),
        .I2(\iv[14]_i_15_n_0 ),
        .I3(\sr[5]_i_5_n_0 ),
        .O(\iv[14]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_11 
       (.I0(ctl_copro),
        .I1(\ccmd[2]_INST_0_i_1_n_0 ),
        .O(acmd));
  LUT3 #(
    .INIT(8'h15)) 
    \iv[14]_i_12 
       (.I0(ctl_copro),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(\ccmd[4]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEEBEFFBEAABEBBBE)) 
    \iv[14]_i_13 
       (.I0(acmd),
        .I1(\stat_reg[1] [0]),
        .I2(abus_0[14]),
        .I3(\stat_reg[1] [1]),
        .I4(abus_0[6]),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h02220020)) 
    \iv[14]_i_14 
       (.I0(acmd),
        .I1(\stat_reg[1] [1]),
        .I2(\stat_reg[1] [0]),
        .I3(\bdatw[14]_INST_0_i_2_n_0 ),
        .I4(abus_0[14]),
        .O(\iv[14]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \iv[14]_i_15 
       (.I0(ctl_copro),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(\ccmd[4]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[14]_i_16 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[14]),
        .I3(\bdatw[14]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[1] [0]),
        .I5(\stat_reg[1] [1]),
        .O(\iv[14]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \iv[14]_i_17 
       (.I0(\iv[1]_i_9_0 ),
        .I1(\iv[2]_i_15_n_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .O(\iv[14]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EEE0E0E)) 
    \iv[14]_i_2 
       (.I0(\iv[14]_i_6_n_0 ),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(\iv[14]_i_8_n_0 ),
        .I4(\iv[14]_i_9_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFAFFFFFFBABF)) 
    \iv[14]_i_20 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(abus_0[15]),
        .I2(\stat_reg[2]_12 ),
        .I3(abus_0[14]),
        .I4(\stat_reg[2]_13 ),
        .I5(\stat_reg[2]_11 ),
        .O(\iv[14]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1414140455555515)) 
    \iv[14]_i_22 
       (.I0(\stat_reg[1] [0]),
        .I1(rst_n_fl_reg_7),
        .I2(\stat_reg[2]_11 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(\iv[14]_i_32_n_0 ),
        .I5(\iv[14]_i_33_n_0 ),
        .O(\iv[14]_i_33_0 ));
  LUT5 #(
    .INIT(32'h33333335)) 
    \iv[14]_i_24 
       (.I0(abus_0[14]),
        .I1(abus_0[15]),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\stat_reg[2]_12 ),
        .I4(\stat_reg[2]_13 ),
        .O(\iv[14]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FD0D)) 
    \iv[14]_i_3 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(\stat_reg[1] [1]),
        .I3(tout__1_carry_i_11_n_0),
        .I4(\stat_reg[1] [0]),
        .O(\iv[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBBBFB)) 
    \iv[14]_i_32 
       (.I0(\stat_reg[2]_12 ),
        .I1(\iv[15]_i_60_n_0 ),
        .I2(bdatw_1_sn_1),
        .I3(bdatw_0_sn_1),
        .I4(\bdatw[1]_0 ),
        .I5(p_1_in[1]),
        .O(\iv[14]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \iv[14]_i_33 
       (.I0(\iv[14]_i_22_0 ),
        .I1(ctl_sela[2]),
        .I2(\grn_reg[15] ),
        .I3(ctl_sela[1]),
        .I4(\iv[13]_i_33_0 ),
        .I5(\stat_reg[1] [1]),
        .O(\iv[14]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hFFD0)) 
    \iv[14]_i_5 
       (.I0(\iv[14]_i_13_n_0 ),
        .I1(\iv[14]_i_14_n_0 ),
        .I2(\iv[14]_i_15_n_0 ),
        .I3(\iv[14]_i_16_n_0 ),
        .O(\iv[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CACFCAC0)) 
    \iv[14]_i_6 
       (.I0(\iv[14]_i_17_n_0 ),
        .I1(\iv[14]_i_2_1 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\stat_reg[1] [1]),
        .I4(\iv[14]_i_2_2 ),
        .I5(\stat_reg[1] [0]),
        .O(\iv[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h74337400CCCCCCCC)) 
    \iv[14]_i_7 
       (.I0(\iv[14]_i_20_n_0 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[14]_i_2_1 ),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(\iv[14]_i_17_n_0 ),
        .I5(\stat_reg[1] [0]),
        .O(\iv[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCC8CCC800C8C0C80)) 
    \iv[14]_i_8 
       (.I0(\iv[14]_i_2_0 ),
        .I1(\iv[14]_i_33_0 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\stat_reg[1] [1]),
        .I4(\iv[5]_i_2_0 ),
        .I5(\iv[14]_i_24_n_0 ),
        .O(\iv[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5755)) 
    \iv[14]_i_9 
       (.I0(\iv[13]_i_7_n_0 ),
        .I1(\stat_reg[1] [1]),
        .I2(\stat_reg[1] [0]),
        .I3(abus_0[13]),
        .O(\iv[14]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \iv[15]_i_1 
       (.I0(ctl_selc[4]),
        .I1(ctl_selc[0]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .O(cbus_sel_cr[0]));
  LUT6 #(
    .INIT(64'hBAFFBAFFBAFFBBFF)) 
    \iv[15]_i_10 
       (.I0(\iv[15]_i_27_n_0 ),
        .I1(Q[1]),
        .I2(\ccmd[2]_INST_0_i_10_n_0 ),
        .I3(ir[14]),
        .I4(ir[12]),
        .I5(\iv[15]_i_28_n_0 ),
        .O(\iv[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \iv[15]_i_11 
       (.I0(\bcmd[0]_INST_0_i_10_n_0 ),
        .I1(\iv[15]_i_17_0 ),
        .I2(ctl_fetch_ext_fl_i_4_n_0),
        .I3(\iv[15]_i_29_n_0 ),
        .I4(\iv[15]_i_30_n_0 ),
        .I5(\iv[15]_i_31_n_0 ),
        .O(\iv[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h10FF)) 
    \iv[15]_i_12 
       (.I0(\stat_reg[1] [1]),
        .I1(\stat_reg[1] [0]),
        .I2(abus_0[14]),
        .I3(\iv[13]_i_7_n_0 ),
        .O(\iv[15]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFF0F1F1)) 
    \iv[15]_i_13 
       (.I0(\iv[15]_i_5_2 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\bdatw[12]_INST_0_i_2_0 ),
        .I3(abus_0[15]),
        .I4(\stat_reg[1] [1]),
        .O(\iv[15]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFE4)) 
    \iv[15]_i_14 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\iv[15]_i_5_0 ),
        .I2(\iv[15]_i_5_1 ),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .I4(\stat_reg[1] [1]),
        .O(\iv[15]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \iv[15]_i_15 
       (.I0(\iv[14]_i_10_n_0 ),
        .I1(\stat_reg[1] [0]),
        .I2(\stat_reg[2]_11 ),
        .I3(\sr[6]_i_4_n_0 ),
        .O(\iv[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000E000000000)) 
    \iv[15]_i_17 
       (.I0(\iv[15]_i_42_n_0 ),
        .I1(\iv[15]_i_43_n_0 ),
        .I2(\ccmd[2]_INST_0_i_19_n_0 ),
        .I3(ir[11]),
        .I4(ir[12]),
        .I5(rst_n_fl_reg_3),
        .O(\iv[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00005A00FF006600)) 
    \iv[15]_i_18 
       (.I0(ir[11]),
        .I1(\sr_reg[15] [5]),
        .I2(\sr_reg[15] [6]),
        .I3(ir[13]),
        .I4(ir[15]),
        .I5(ir[12]),
        .O(\iv[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00004B00FFFFFFFF)) 
    \iv[15]_i_19 
       (.I0(\sr_reg[15] [3]),
        .I1(ir[12]),
        .I2(ir[11]),
        .I3(\ccmd[2]_INST_0_i_19_n_0 ),
        .I4(\iv[15]_i_44_n_0 ),
        .I5(\ccmd[0]_INST_0_i_1_0 ),
        .O(\iv[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF444)) 
    \iv[15]_i_2 
       (.I0(\tr_reg[15]_0 ),
        .I1(bdatr),
        .I2(ctl_copro),
        .I3(cbus_i),
        .I4(\iv[15]_i_5_n_0 ),
        .I5(\iv[15]_i_6_n_0 ),
        .O(cbus[15]));
  LUT6 #(
    .INIT(64'h22222222000F0000)) 
    \iv[15]_i_20 
       (.I0(crdy),
        .I1(\ccmd[3]_INST_0_i_13_n_0 ),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[11]),
        .I5(Q[0]),
        .O(\iv[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E0000000)) 
    \iv[15]_i_21 
       (.I0(\ccmd[2]_INST_0_i_26_n_0 ),
        .I1(ir[5]),
        .I2(Q[0]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(brdy),
        .O(\iv[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01100010)) 
    \iv[15]_i_22 
       (.I0(ir[9]),
        .I1(Q[0]),
        .I2(ir[11]),
        .I3(ir[10]),
        .I4(\sp[15]_i_17_n_0 ),
        .I5(\iv[15]_i_45_n_0 ),
        .O(\iv[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hA0000A0A00000080)) 
    \iv[15]_i_23 
       (.I0(\iv[15]_i_46_n_0 ),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(ir[3]),
        .I4(Q[0]),
        .I5(ir[7]),
        .O(\iv[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h15050555FFFFFFFF)) 
    \iv[15]_i_24 
       (.I0(\iv[15]_i_47_n_0 ),
        .I1(\iv[15]_i_48_n_0 ),
        .I2(Q[0]),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(\badr[15]_INST_0_i_68_n_0 ),
        .O(\iv[15]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[15]_i_26 
       (.I0(ir[10]),
        .I1(ir[8]),
        .O(\iv[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA085D08)) 
    \iv[15]_i_27 
       (.I0(ir[11]),
        .I1(brdy),
        .I2(ir[6]),
        .I3(\ccmd[3]_INST_0_i_13_n_0 ),
        .I4(ir[8]),
        .I5(\iv[15]_i_49_n_0 ),
        .O(\iv[15]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF5514)) 
    \iv[15]_i_28 
       (.I0(ir[15]),
        .I1(ir[11]),
        .I2(\sr_reg[15] [4]),
        .I3(ir[13]),
        .I4(Q[0]),
        .O(\iv[15]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \iv[15]_i_29 
       (.I0(ir[4]),
        .I1(ir[3]),
        .I2(ir[9]),
        .I3(ir[5]),
        .O(\iv[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555100)) 
    \iv[15]_i_3 
       (.I0(\iv[15]_i_7_n_0 ),
        .I1(\iv[15]_i_8_n_0 ),
        .I2(\iv[15]_i_9_n_0 ),
        .I3(\bcmd[2]_INST_0_i_2_n_0 ),
        .I4(\iv[15]_i_10_n_0 ),
        .I5(\iv[15]_i_11_n_0 ),
        .O(ctl_selc[4]));
  LUT3 #(
    .INIT(8'h01)) 
    \iv[15]_i_30 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[6]),
        .O(\iv[15]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \iv[15]_i_31 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[15]),
        .O(\iv[15]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h6666666A)) 
    \iv[15]_i_33 
       (.I0(rst_n_fl_reg_7),
        .I1(\stat_reg[2]_11 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\stat_reg[2]_13 ),
        .I4(\stat_reg[2]_12 ),
        .O(\bdatw[8]_INST_0_i_2_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \iv[15]_i_34 
       (.I0(\stat_reg[1] [0]),
        .I1(\stat_reg[2]_12 ),
        .I2(\stat_reg[2]_13 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(rst_n_fl_reg_7),
        .I5(\stat_reg[2]_11 ),
        .O(\bdatw[12]_INST_0_i_2_0 ));
  LUT4 #(
    .INIT(16'h666A)) 
    \iv[15]_i_35 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\stat_reg[2]_12 ),
        .I3(\stat_reg[2]_13 ),
        .O(\bdatw[9]_INST_0_i_2_0 ));
  LUT5 #(
    .INIT(32'hFE0001FF)) 
    \iv[15]_i_38 
       (.I0(\stat_reg[2]_12 ),
        .I1(\stat_reg[2]_13 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\stat_reg[2]_11 ),
        .I4(rst_n_fl_reg_7),
        .O(\bdatw[11]_INST_0_i_2_0 ));
  LUT6 #(
    .INIT(64'h0500500000002200)) 
    \iv[15]_i_42 
       (.I0(ir[0]),
        .I1(\sr[0]_i_45_n_0 ),
        .I2(ir[1]),
        .I3(Q[1]),
        .I4(ir[3]),
        .I5(ir[2]),
        .O(\iv[15]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h002A200000202000)) 
    \iv[15]_i_43 
       (.I0(\iv[15]_i_17_0 ),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(ir[3]),
        .I4(ir[1]),
        .I5(brdy),
        .O(\iv[15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000E08)) 
    \iv[15]_i_44 
       (.I0(ir[3]),
        .I1(ir[1]),
        .I2(\bdatw[15]_INST_0_i_115_n_0 ),
        .I3(crdy),
        .I4(\ccmd[2]_INST_0_i_25_n_0 ),
        .I5(\ccmd[3]_INST_0_i_22_n_0 ),
        .O(\iv[15]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h2002300300002002)) 
    \iv[15]_i_45 
       (.I0(crdy),
        .I1(\ccmd[4]_INST_0_i_21_n_0 ),
        .I2(ir[8]),
        .I3(ir[11]),
        .I4(ir[7]),
        .I5(Q[0]),
        .O(\iv[15]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \iv[15]_i_46 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[6]),
        .I3(ir[10]),
        .I4(ir[11]),
        .O(\iv[15]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002022023)) 
    \iv[15]_i_47 
       (.I0(ir[7]),
        .I1(Q[0]),
        .I2(ir[5]),
        .I3(ir[3]),
        .I4(ir[4]),
        .I5(\ccmd[2]_INST_0_i_26_n_0 ),
        .O(\iv[15]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \iv[15]_i_48 
       (.I0(ir[5]),
        .I1(ir[3]),
        .I2(ir[4]),
        .I3(ir[7]),
        .O(\iv[15]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    \iv[15]_i_49 
       (.I0(Q[1]),
        .I1(ir[7]),
        .I2(\ccmd[4]_INST_0_i_21_n_0 ),
        .I3(ir[12]),
        .I4(Q[0]),
        .I5(\badr[15]_INST_0_i_89_n_0 ),
        .O(\iv[15]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000D5DD)) 
    \iv[15]_i_5 
       (.I0(\stat_reg[2]_11 ),
        .I1(\iv[15]_i_12_n_0 ),
        .I2(\iv[15]_i_13_n_0 ),
        .I3(\iv[15]_i_14_n_0 ),
        .I4(\iv[15]_i_15_n_0 ),
        .I5(\tr_reg[15]_1 ),
        .O(\iv[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h02FD0202FDFDFDFD)) 
    \iv[15]_i_52 
       (.I0(\iv[15]_i_60_n_0 ),
        .I1(p_0_in[0]),
        .I2(p_1_in[1]),
        .I3(\iv[14]_i_21 ),
        .I4(\iv[15]_i_63_n_0 ),
        .I5(\stat_reg[2]_12 ),
        .O(\bdatw[8]_INST_0_i_2_1 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[15]_i_6 
       (.I0(\iv[14]_i_3_n_0 ),
        .I1(\tr_reg[15] [3]),
        .I2(\sr[7]_i_8_n_0 ),
        .O(\iv[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \iv[15]_i_60 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[1]),
        .I2(bdatw_0_sn_1),
        .O(\iv[15]_i_60_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \iv[15]_i_63 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[4]),
        .I2(bdatw_0_sn_1),
        .O(\iv[15]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAABAAABAAAA)) 
    \iv[15]_i_7 
       (.I0(Q[2]),
        .I1(\iv[15]_i_17_n_0 ),
        .I2(\ccmd[2]_INST_0_i_12_n_0 ),
        .I3(ir[14]),
        .I4(\iv[15]_i_18_n_0 ),
        .I5(\iv[15]_i_19_n_0 ),
        .O(\iv[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h44454444FFFFFFFF)) 
    \iv[15]_i_8 
       (.I0(\iv[15]_i_20_n_0 ),
        .I1(\iv[15]_i_21_n_0 ),
        .I2(\iv[15]_i_22_n_0 ),
        .I3(\iv[15]_i_23_n_0 ),
        .I4(\iv[15]_i_24_n_0 ),
        .I5(ir[13]),
        .O(\iv[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000909000009C9)) 
    \iv[15]_i_9 
       (.I0(\iv[15]_i_3_0 ),
        .I1(ir[11]),
        .I2(ir[13]),
        .I3(ir[7]),
        .I4(Q[0]),
        .I5(\iv[15]_i_26_n_0 ),
        .O(\iv[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[1]_i_1 
       (.I0(\iv[1]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(O[1]),
        .I3(\tr_reg[1] ),
        .I4(\iv[1]_i_4_n_0 ),
        .O(cbus[1]));
  LUT6 #(
    .INIT(64'hD0C7DFC4D0F7DFF4)) 
    \iv[1]_i_11 
       (.I0(\stat_reg[2]_13 ),
        .I1(acmd),
        .I2(\stat_reg[1] [1]),
        .I3(\stat_reg[1] [0]),
        .I4(abus_0[1]),
        .I5(abus_0[9]),
        .O(\iv[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0220222020000000)) 
    \iv[1]_i_12 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(\stat_reg[2]_13 ),
        .I3(abus_0[1]),
        .I4(\stat_reg[1] [0]),
        .I5(\stat_reg[1] [1]),
        .O(\iv[1]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \iv[1]_i_13 
       (.I0(\stat_reg[1] [0]),
        .I1(\stat_reg[1] [1]),
        .I2(abus_0[0]),
        .O(\iv[1]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \iv[1]_i_14 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\iv[1]_i_9_1 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[1]_i_9_0 ),
        .O(\iv[1]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hEEE0EEEE)) 
    \iv[1]_i_15 
       (.I0(\stat_reg[1] [0]),
        .I1(\stat_reg[1] [1]),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\badr[1]_INST_0_i_1 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FFFD)) 
    \iv[1]_i_2 
       (.I0(\stat_reg[2]_11 ),
        .I1(\iv[1]_i_5_n_0 ),
        .I2(\iv[1]_i_6_n_0 ),
        .I3(\iv[1]_i_7_n_0 ),
        .I4(\iv[1]_i_8_n_0 ),
        .I5(\iv[1]_i_9_n_0 ),
        .O(\iv[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[1]_i_4 
       (.I0(\iv[1]_i_11_n_0 ),
        .I1(\iv[14]_i_15_n_0 ),
        .I2(\iv[1]_i_12_n_0 ),
        .O(\iv[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[1]_i_5 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[1]_i_2_0 ),
        .O(\iv[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[1]_i_6 
       (.I0(\iv[13]_i_14_n_0 ),
        .I1(\iv[1]_i_2_1 ),
        .O(\iv[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \iv[1]_i_7 
       (.I0(\bdatw[12]_INST_0_i_2_0 ),
        .I1(\stat_reg[1] [1]),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\iv[1]_i_2_2 ),
        .O(\iv[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF4FF4444F4444444)) 
    \iv[1]_i_8 
       (.I0(\iv[1]_i_13_n_0 ),
        .I1(\iv[13]_i_7_n_0 ),
        .I2(\iv[1]_i_2_0 ),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(\stat_reg[1] [0]),
        .I5(\iv[9]_i_2_0 ),
        .O(\iv[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFFFAE)) 
    \iv[1]_i_9 
       (.I0(\iv[14]_i_10_n_0 ),
        .I1(\stat_reg[1]_0 ),
        .I2(\iv[9]_i_17_n_0 ),
        .I3(\iv[1]_i_14_n_0 ),
        .I4(\iv[1]_i_15_n_0 ),
        .I5(\stat_reg[2]_11 ),
        .O(\iv[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[2]_i_1 
       (.I0(\iv[2]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(O[2]),
        .I3(\tr_reg[2] ),
        .I4(\iv[2]_i_4_n_0 ),
        .O(cbus[2]));
  LUT6 #(
    .INIT(64'hF0FFF5F5505F3F30)) 
    \iv[2]_i_10 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(abus_0[10]),
        .I2(\stat_reg[1] [1]),
        .I3(abus_0[2]),
        .I4(\stat_reg[1] [0]),
        .I5(acmd),
        .O(\iv[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0220222020000000)) 
    \iv[2]_i_11 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(abus_0[2]),
        .I4(\stat_reg[1] [0]),
        .I5(\stat_reg[1] [1]),
        .O(\iv[2]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \iv[2]_i_12 
       (.I0(\stat_reg[1] [0]),
        .I1(\stat_reg[1] [1]),
        .I2(abus_0[1]),
        .O(\iv[2]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \iv[2]_i_14 
       (.I0(\stat_reg[1] [0]),
        .I1(\stat_reg[1] [1]),
        .I2(\bdatw[11]_INST_0_i_2_0 ),
        .O(\stat_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h1AB0BABA1FB5BFBF)) 
    \iv[2]_i_15 
       (.I0(\stat_reg[2]_12 ),
        .I1(abus_0[0]),
        .I2(\stat_reg[2]_13 ),
        .I3(\stat_reg[2]_11 ),
        .I4(abus_0[1]),
        .I5(abus_0[2]),
        .O(\iv[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000202F2020)) 
    \iv[2]_i_2 
       (.I0(\tr_reg[2]_0 ),
        .I1(\iv[2]_i_6_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(\tr_reg[2]_1 ),
        .I4(\iv[2]_i_8_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[2]_i_4 
       (.I0(\iv[2]_i_10_n_0 ),
        .I1(\iv[14]_i_15_n_0 ),
        .I2(\iv[2]_i_11_n_0 ),
        .O(\iv[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FF4444444444)) 
    \iv[2]_i_6 
       (.I0(\iv[2]_i_12_n_0 ),
        .I1(\iv[13]_i_7_n_0 ),
        .I2(\iv[2]_i_2_0 ),
        .I3(\iv[2]_i_2_1 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\stat_reg[1] [0]),
        .O(\iv[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000F111F)) 
    \iv[2]_i_8 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\iv[2]_i_15_n_0 ),
        .I2(\stat_reg[1] [0]),
        .I3(\stat_reg[1] [1]),
        .I4(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[3]_i_1 
       (.I0(\iv[3]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(O[3]),
        .I3(\tr_reg[3] ),
        .I4(\iv[3]_i_4_n_0 ),
        .O(cbus[3]));
  LUT6 #(
    .INIT(64'hCBFACFFE89B88DBC)) 
    \iv[3]_i_10 
       (.I0(acmd),
        .I1(\stat_reg[1] [1]),
        .I2(\stat_reg[1] [0]),
        .I3(abus_0[3]),
        .I4(abus_0[11]),
        .I5(rst_n_fl_reg_7),
        .O(\iv[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[3]_i_11 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[3]),
        .I3(rst_n_fl_reg_7),
        .I4(\stat_reg[1] [0]),
        .I5(\stat_reg[1] [1]),
        .O(\iv[3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \iv[3]_i_12 
       (.I0(\stat_reg[1] [0]),
        .I1(\stat_reg[1] [1]),
        .I2(abus_0[2]),
        .O(\iv[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EFF0E00)) 
    \iv[3]_i_2 
       (.I0(\tr_reg[3]_0 ),
        .I1(\iv[3]_i_6_n_0 ),
        .I2(\iv[3]_i_7_n_0 ),
        .I3(\stat_reg[2]_11 ),
        .I4(\iv[3]_i_8_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[3]_i_4 
       (.I0(\iv[3]_i_10_n_0 ),
        .I1(\iv[14]_i_15_n_0 ),
        .I2(\iv[3]_i_11_n_0 ),
        .O(\iv[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \iv[3]_i_6 
       (.I0(\bdatw[12]_INST_0_i_2_0 ),
        .I1(\iv[15]_i_5_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[11]_i_2_1 ),
        .I4(\iv[13]_i_14_n_0 ),
        .O(\iv[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FF4444444444)) 
    \iv[3]_i_7 
       (.I0(\iv[3]_i_12_n_0 ),
        .I1(\iv[13]_i_7_n_0 ),
        .I2(\iv[3]_i_2_0 ),
        .I3(\iv[11]_i_18_n_0 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\stat_reg[1] [0]),
        .O(\iv[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88C88DCD00400545)) 
    \iv[3]_i_8 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\iv[8]_i_19_n_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\sr[6]_i_3_0 ),
        .I4(\iv[7]_i_2_0 ),
        .I5(\iv[3]_i_2_1 ),
        .O(\iv[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[4]_i_1 
       (.I0(\iv[4]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\tr_reg[7] [0]),
        .I3(\tr_reg[4] ),
        .I4(\iv[4]_i_4_n_0 ),
        .O(cbus[4]));
  LUT6 #(
    .INIT(64'h8B98CFBA8BDCCFFE)) 
    \iv[4]_i_10 
       (.I0(acmd),
        .I1(\stat_reg[1] [1]),
        .I2(abus_0[4]),
        .I3(\stat_reg[1] [0]),
        .I4(\stat_reg[2]_11 ),
        .I5(abus_0[12]),
        .O(\iv[4]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBBABBBBB)) 
    \iv[4]_i_11 
       (.I0(\stat_reg[1] [0]),
        .I1(\iv[13]_i_19_n_0 ),
        .I2(\iv[13]_i_14_n_0 ),
        .I3(\sr[4]_i_17_0 ),
        .I4(\bdatw[9]_INST_0_i_2_0 ),
        .O(\iv[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h040404FF000000FF)) 
    \iv[4]_i_14 
       (.I0(\stat_reg[2]_12 ),
        .I1(abus_0[0]),
        .I2(\stat_reg[2]_13 ),
        .I3(\iv[4]_i_7_0 ),
        .I4(\bdatw[9]_INST_0_i_2_0 ),
        .I5(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(\iv[4]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h0000005D)) 
    \iv[4]_i_2 
       (.I0(\stat_reg[2]_11 ),
        .I1(\iv[4]_i_5_n_0 ),
        .I2(\iv[4]_i_6_n_0 ),
        .I3(\iv[4]_i_7_n_0 ),
        .I4(\iv[14]_i_10_n_0 ),
        .O(\iv[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0202)) 
    \iv[4]_i_4 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(\iv[4]_i_9_n_0 ),
        .I3(\iv[4]_i_10_n_0 ),
        .I4(\iv[14]_i_15_n_0 ),
        .O(\iv[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h5755)) 
    \iv[4]_i_5 
       (.I0(\iv[13]_i_7_n_0 ),
        .I1(\stat_reg[1] [1]),
        .I2(\stat_reg[1] [0]),
        .I3(abus_0[3]),
        .O(\iv[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \iv[4]_i_6 
       (.I0(\iv[4]_i_11_n_0 ),
        .I1(\iv[4]_i_2_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[13]_i_20_n_0 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\iv[13]_i_17_n_0 ),
        .O(\iv[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033550FFF)) 
    \iv[4]_i_7 
       (.I0(\iv[4]_i_2_1 ),
        .I1(\sr[4]_i_8_1 ),
        .I2(\iv[4]_i_14_n_0 ),
        .I3(\bdatw[8]_INST_0_i_2_0 ),
        .I4(\iv[8]_i_19_n_0 ),
        .I5(\stat_reg[2]_11 ),
        .O(\iv[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h837F)) 
    \iv[4]_i_9 
       (.I0(\stat_reg[1] [0]),
        .I1(abus_0[4]),
        .I2(\stat_reg[2]_11 ),
        .I3(\stat_reg[1] [1]),
        .O(\iv[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[5]_i_1 
       (.I0(\iv[5]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\tr_reg[7] [1]),
        .I3(\tr_reg[5] ),
        .I4(\iv[5]_i_4_n_0 ),
        .O(cbus[5]));
  LUT6 #(
    .INIT(64'hCBFACFFE89B88DBC)) 
    \iv[5]_i_10 
       (.I0(acmd),
        .I1(\stat_reg[1] [1]),
        .I2(\stat_reg[1] [0]),
        .I3(abus_0[5]),
        .I4(abus_0[13]),
        .I5(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(\iv[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[5]_i_11 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[5]),
        .I3(\bdatw[13]_INST_0_i_2_n_0 ),
        .I4(\stat_reg[1] [0]),
        .I5(\stat_reg[1] [1]),
        .O(\iv[5]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[5]_i_12 
       (.I0(\stat_reg[1] [1]),
        .I1(abus_0[4]),
        .O(\iv[5]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[5]_i_13 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\iv[5]_i_7_0 ),
        .O(\iv[5]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0072)) 
    \iv[5]_i_14 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\badr[1]_INST_0_i_1 ),
        .I2(\iv[5]_i_8_0 ),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EFF0E00)) 
    \iv[5]_i_2 
       (.I0(\tr_reg[5]_0 ),
        .I1(\iv[5]_i_6_n_0 ),
        .I2(\iv[5]_i_7_n_0 ),
        .I3(\stat_reg[2]_11 ),
        .I4(\iv[5]_i_8_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[5]_i_4 
       (.I0(\iv[5]_i_10_n_0 ),
        .I1(\iv[14]_i_15_n_0 ),
        .I2(\iv[5]_i_11_n_0 ),
        .O(\iv[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \iv[5]_i_6 
       (.I0(\bdatw[12]_INST_0_i_2_0 ),
        .I1(\iv[5]_i_2_0 ),
        .I2(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF8888FCCC8888)) 
    \iv[5]_i_7 
       (.I0(\iv[5]_i_12_n_0 ),
        .I1(\iv[13]_i_7_n_0 ),
        .I2(\iv[5]_i_13_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .I4(\stat_reg[1] [0]),
        .I5(\iv[5]_i_2_0 ),
        .O(\iv[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2F3A2A2A2C0)) 
    \iv[5]_i_8 
       (.I0(\iv[5]_i_14_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\iv[14]_i_2_1 ),
        .I3(\stat_reg[1] [1]),
        .I4(\stat_reg[1] [0]),
        .I5(\iv[13]_i_13_n_0 ),
        .O(\iv[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[6]_i_1 
       (.I0(\iv[6]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\tr_reg[7] [2]),
        .I3(\tr_reg[6] ),
        .I4(\iv[6]_i_4_n_0 ),
        .O(cbus[6]));
  LUT6 #(
    .INIT(64'hFFFF1F0EFFFFFFFF)) 
    \iv[6]_i_10 
       (.I0(\bdatw[8]_INST_0_i_2_1 ),
        .I1(\bdatw[9]_INST_0_i_2_0 ),
        .I2(abus_0[15]),
        .I3(\iv[6]_i_5_2 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .I5(\stat_reg[1] [1]),
        .O(\iv[6]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \iv[6]_i_11 
       (.I0(\bdatw[12]_INST_0_i_2_0 ),
        .I1(\sr[4]_i_18_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[6]_i_5_0 ),
        .I4(\iv[13]_i_14_n_0 ),
        .O(\iv[6]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \iv[6]_i_12 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\iv[6]_i_5_1 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\sr[4]_i_18_1 ),
        .O(\iv[6]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    \iv[6]_i_13 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\iv[6]_i_5_2 ),
        .I2(\bdatw[8]_INST_0_i_2_1 ),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .I4(\stat_reg[1] [0]),
        .O(\iv[6]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \iv[6]_i_14 
       (.I0(\stat_reg[1] [0]),
        .I1(\stat_reg[1] [1]),
        .I2(abus_0[5]),
        .O(\iv[6]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \iv[6]_i_2 
       (.I0(\iv[6]_i_5_n_0 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[6]_i_6_n_0 ),
        .I3(\iv[14]_i_10_n_0 ),
        .O(\iv[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[6]_i_4 
       (.I0(\iv[6]_i_8_n_0 ),
        .I1(\iv[14]_i_15_n_0 ),
        .I2(\iv[6]_i_9_n_0 ),
        .O(\iv[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDF0FDF0F0000DF0F)) 
    \iv[6]_i_5 
       (.I0(\iv[6]_i_10_n_0 ),
        .I1(\iv[6]_i_11_n_0 ),
        .I2(\iv[6]_i_12_n_0 ),
        .I3(\iv[6]_i_13_n_0 ),
        .I4(\iv[13]_i_7_n_0 ),
        .I5(\iv[6]_i_14_n_0 ),
        .O(\iv[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h222222F3222222C0)) 
    \iv[6]_i_6 
       (.I0(\iv[14]_i_17_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_0 ),
        .I2(\iv[6]_i_2_0 ),
        .I3(\stat_reg[1] [1]),
        .I4(\stat_reg[1] [0]),
        .I5(\iv[14]_i_2_2 ),
        .O(\iv[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFFAFAA0AF3F30)) 
    \iv[6]_i_8 
       (.I0(\bdatw[14]_INST_0_i_2_n_0 ),
        .I1(abus_0[14]),
        .I2(\stat_reg[1] [1]),
        .I3(abus_0[6]),
        .I4(\stat_reg[1] [0]),
        .I5(acmd),
        .O(\iv[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[6]_i_9 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[6]),
        .I3(\bdatw[14]_INST_0_i_2_n_0 ),
        .I4(\stat_reg[1] [0]),
        .I5(\stat_reg[1] [1]),
        .O(\iv[6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[7]_i_1 
       (.I0(\iv[7]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\tr_reg[7] [3]),
        .I3(\tr_reg[7]_0 ),
        .I4(\iv[7]_i_4_n_0 ),
        .O(cbus[7]));
  LUT6 #(
    .INIT(64'h2020022200002000)) 
    \iv[7]_i_10 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[7]),
        .I3(\stat_reg[1] [0]),
        .I4(\bdatw[15]_INST_0_i_2_n_0 ),
        .I5(\stat_reg[1] [1]),
        .O(\iv[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0DFFFDCC0D3CFD0)) 
    \iv[7]_i_11 
       (.I0(abus_0[15]),
        .I1(acmd),
        .I2(\stat_reg[1] [1]),
        .I3(\stat_reg[1] [0]),
        .I4(abus_0[7]),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FF00FF00FF00)) 
    \iv[7]_i_13 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\stat_reg[2]_13 ),
        .I2(\stat_reg[2]_12 ),
        .I3(\stat_reg[1] [0]),
        .I4(abus_0[15]),
        .I5(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000002222FF0F)) 
    \iv[7]_i_2 
       (.I0(\iv[7]_i_5_n_0 ),
        .I1(\iv[7]_i_6_n_0 ),
        .I2(\iv[7]_i_7_n_0 ),
        .I3(\iv[7]_i_8_n_0 ),
        .I4(\stat_reg[2]_11 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \iv[7]_i_4 
       (.I0(\iv[7]_i_10_n_0 ),
        .I1(\iv[7]_i_11_n_0 ),
        .I2(\iv[14]_i_15_n_0 ),
        .O(\iv[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h5755)) 
    \iv[7]_i_5 
       (.I0(\iv[13]_i_7_n_0 ),
        .I1(\stat_reg[1] [1]),
        .I2(\stat_reg[1] [0]),
        .I3(abus_0[6]),
        .O(\iv[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFACAFAF8C8C8C8C)) 
    \iv[7]_i_6 
       (.I0(\iv[7]_i_2_1 ),
        .I1(\iv[7]_i_13_n_0 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\stat_reg[1] [1]),
        .I4(\iv[7]_i_2_2 ),
        .I5(\iv[14]_i_33_0 ),
        .O(\iv[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFD8FF)) 
    \iv[7]_i_7 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\sr[6]_i_3_1 ),
        .I2(\sr[6]_i_3_0 ),
        .I3(\iv[13]_i_14_n_0 ),
        .I4(\stat_reg[1] [0]),
        .O(\iv[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2A20)) 
    \iv[7]_i_8 
       (.I0(rst_n_fl_reg_7),
        .I1(\iv[7]_i_2_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[11]_i_2_0 ),
        .O(\iv[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF75)) 
    \iv[8]_i_1 
       (.I0(\iv[8]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\tr_reg[11] [0]),
        .I3(\tr_reg[8] ),
        .I4(\iv[8]_i_4_n_0 ),
        .O(cbus[8]));
  LUT6 #(
    .INIT(64'hFDFDCFFCCDCDCFFC)) 
    \iv[8]_i_10 
       (.I0(abus_0[0]),
        .I1(acmd),
        .I2(\stat_reg[1] [0]),
        .I3(abus_0[8]),
        .I4(\stat_reg[1] [1]),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[8]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h22022000)) 
    \iv[8]_i_11 
       (.I0(acmd),
        .I1(\stat_reg[1] [1]),
        .I2(\stat_reg[1] [0]),
        .I3(\stat_reg[2]_12 ),
        .I4(abus_0[8]),
        .O(\iv[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[8]_i_12 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[8]),
        .I3(\bdatw[8]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[1] [0]),
        .I5(\stat_reg[1] [1]),
        .O(\iv[8]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h99500050)) 
    \iv[8]_i_15 
       (.I0(\stat_reg[2]_13 ),
        .I1(\stat_reg[2]_11 ),
        .I2(abus_0[8]),
        .I3(\stat_reg[2]_12 ),
        .I4(abus_0[9]),
        .O(\iv[8]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h66C000C0)) 
    \iv[8]_i_16 
       (.I0(\stat_reg[2]_11 ),
        .I1(\stat_reg[2]_13 ),
        .I2(abus_0[10]),
        .I3(\stat_reg[2]_12 ),
        .I4(abus_0[11]),
        .O(\badr[11]_INST_0_i_1 ));
  LUT5 #(
    .INIT(32'h99500050)) 
    \iv[8]_i_17 
       (.I0(\stat_reg[2]_13 ),
        .I1(\stat_reg[2]_11 ),
        .I2(abus_0[12]),
        .I3(\stat_reg[2]_12 ),
        .I4(abus_0[13]),
        .O(\iv[8]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h66C000C0)) 
    \iv[8]_i_18 
       (.I0(\stat_reg[2]_11 ),
        .I1(\stat_reg[2]_13 ),
        .I2(abus_0[14]),
        .I3(\stat_reg[2]_12 ),
        .I4(abus_0[15]),
        .O(\iv[8]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \iv[8]_i_19 
       (.I0(\stat_reg[1] [1]),
        .I1(\ccmd[0]_INST_0_i_1_n_0 ),
        .I2(ctl_copro),
        .O(\iv[8]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFABFFABFFABAAAA)) 
    \iv[8]_i_2 
       (.I0(\iv[14]_i_10_n_0 ),
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
        .I2(\iv[14]_i_15_n_0 ),
        .I3(\iv[8]_i_12_n_0 ),
        .O(\iv[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1111113131311131)) 
    \iv[8]_i_5 
       (.I0(\iv[14]_i_33_0 ),
        .I1(\stat_reg[1] [0]),
        .I2(\iv[13]_i_14_n_0 ),
        .I3(\sr[4]_i_17_0 ),
        .I4(\bdatw[9]_INST_0_i_2_0 ),
        .I5(\iv[8]_i_2_0 ),
        .O(\iv[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFEFE0E)) 
    \iv[8]_i_6 
       (.I0(\iv[8]_i_15_n_0 ),
        .I1(\badr[11]_INST_0_i_1 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[8]_i_17_n_0 ),
        .I4(\iv[8]_i_18_n_0 ),
        .I5(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000FB00FFFFFFFF)) 
    \iv[8]_i_7 
       (.I0(\stat_reg[1] [0]),
        .I1(abus_0[7]),
        .I2(\stat_reg[1] [1]),
        .I3(\iv[13]_i_19_n_0 ),
        .I4(\iv[13]_i_20_n_0 ),
        .I5(\stat_reg[2]_11 ),
        .O(\iv[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h757F000000000000)) 
    \iv[8]_i_8 
       (.I0(\iv[8]_i_19_n_0 ),
        .I1(\iv[0]_i_6_0 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[0]_i_6_1 ),
        .I4(\iv[0]_i_7_n_0 ),
        .I5(\bdatw[11]_INST_0_i_2_0 ),
        .O(\iv[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hEEFAAAAA)) 
    \iv[8]_i_9 
       (.I0(\stat_reg[2]_11 ),
        .I1(\iv[4]_i_7_0 ),
        .I2(\iv[8]_i_2_1 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .O(\iv[8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[9]_i_1 
       (.I0(\iv[9]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\tr_reg[11] [1]),
        .I3(\tr_reg[9] ),
        .I4(\iv[9]_i_4_n_0 ),
        .O(cbus[9]));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[9]_i_10 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[9]),
        .I3(\bdatw[9]_INST_0_i_1_n_0 ),
        .I4(\stat_reg[1] [0]),
        .I5(\stat_reg[1] [1]),
        .O(\iv[9]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBA00BAFF)) 
    \iv[9]_i_11 
       (.I0(\iv[13]_i_29_n_0 ),
        .I1(\iv[4]_i_6_0 ),
        .I2(\iv[13]_i_30_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\sr[4]_i_15_0 ),
        .O(\iv[9]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[9]_i_16 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\badr[1]_INST_0_i_1 ),
        .O(\iv[9]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[9]_i_17 
       (.I0(\iv[9]_i_7_0 ),
        .I1(\bdatw[9]_INST_0_i_2_0 ),
        .I2(\iv[13]_i_23_n_0 ),
        .O(\iv[9]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00002F20)) 
    \iv[9]_i_2 
       (.I0(\iv[9]_i_5_n_0 ),
        .I1(\iv[9]_i_6_n_0 ),
        .I2(\stat_reg[2]_11 ),
        .I3(\iv[9]_i_7_n_0 ),
        .I4(\iv[14]_i_10_n_0 ),
        .O(\iv[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F2F0000)) 
    \iv[9]_i_4 
       (.I0(acmd),
        .I1(\stat_reg[1] [1]),
        .I2(\iv[9]_i_8_n_0 ),
        .I3(\iv[9]_i_9_n_0 ),
        .I4(\iv[14]_i_15_n_0 ),
        .I5(\iv[9]_i_10_n_0 ),
        .O(\iv[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF55DF5FD555D55FD)) 
    \iv[9]_i_5 
       (.I0(\iv[14]_i_33_0 ),
        .I1(\iv[9]_i_11_n_0 ),
        .I2(\bdatw[8]_INST_0_i_2_0 ),
        .I3(\stat_reg[1] [1]),
        .I4(\iv[1]_i_2_1 ),
        .I5(\iv[1]_i_2_2 ),
        .O(\iv[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFFFD0D0D0D0)) 
    \iv[9]_i_6 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\iv[9]_i_2_0 ),
        .I2(\stat_reg[1] [0]),
        .I3(\stat_reg[1] [1]),
        .I4(abus_0[8]),
        .I5(\iv[13]_i_7_n_0 ),
        .O(\iv[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BBB8B8B8B88)) 
    \iv[9]_i_7 
       (.I0(\iv[0]_i_2_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .I2(\iv[9]_i_16_n_0 ),
        .I3(\stat_reg[1] [1]),
        .I4(\stat_reg[1] [0]),
        .I5(\iv[9]_i_17_n_0 ),
        .O(\iv[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEBEFFBEAABEBBBE)) 
    \iv[9]_i_8 
       (.I0(acmd),
        .I1(\stat_reg[1] [0]),
        .I2(abus_0[9]),
        .I3(\stat_reg[1] [1]),
        .I4(abus_0[1]),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[9]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[9]_i_9 
       (.I0(\stat_reg[2]_13 ),
        .I1(\stat_reg[1] [0]),
        .I2(abus_0[9]),
        .O(\iv[9]_i_9_n_0 ));
  MUXF7 \iv_reg[13]_i_35 
       (.I0(\grn_reg[15] ),
        .I1(\iv[13]_i_33_0 ),
        .O(\iv_reg[13]_i_35_n_0 ),
        .S(ctl_sela[1]));
  MUXF7 \iv_reg[8]_i_30 
       (.I0(\grn_reg[4] ),
        .I1(\iv[8]_i_24 ),
        .O(\stat_reg[0]_1 ),
        .S(ctl_sela[1]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \pc[0]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(fch_pc[0]),
        .I2(ctl_fetch_ext),
        .I3(\pc_reg[15] [0]),
        .I4(ctl_selc[2]),
        .I5(\pc[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \pc[0]_i_2 
       (.I0(ctl_selc[1]),
        .I1(cbus[0]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[0]),
        .I4(ctl_selc[3]),
        .I5(\pc_reg[0] ),
        .O(\pc[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \pc[10]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(fch_pc[10]),
        .I2(ctl_fetch_ext),
        .I3(\pc_reg[15] [10]),
        .I4(ctl_selc[2]),
        .I5(\pc[10]_i_2_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \pc[10]_i_2 
       (.I0(ctl_selc[1]),
        .I1(cbus[10]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[0]),
        .I4(ctl_selc[3]),
        .I5(\pc_reg[10] ),
        .O(\pc[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \pc[11]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(fch_pc[11]),
        .I2(ctl_fetch_ext),
        .I3(\pc_reg[15] [11]),
        .I4(ctl_selc[2]),
        .I5(\pc[11]_i_3_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \pc[11]_i_3 
       (.I0(ctl_selc[1]),
        .I1(cbus[11]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[0]),
        .I4(ctl_selc[3]),
        .I5(\pc_reg[11] ),
        .O(\pc[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \pc[12]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(fch_pc[12]),
        .I2(ctl_fetch_ext),
        .I3(\pc_reg[15] [12]),
        .I4(ctl_selc[2]),
        .I5(\pc[12]_i_2_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \pc[12]_i_2 
       (.I0(ctl_selc[1]),
        .I1(cbus[12]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[0]),
        .I4(ctl_selc[3]),
        .I5(\pc_reg[12] ),
        .O(\pc[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \pc[13]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(fch_pc[13]),
        .I2(ctl_fetch_ext),
        .I3(\pc_reg[15] [13]),
        .I4(ctl_selc[2]),
        .I5(\pc[13]_i_2_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \pc[13]_i_2 
       (.I0(ctl_selc[1]),
        .I1(cbus[13]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[0]),
        .I4(ctl_selc[3]),
        .I5(\pc_reg[13] ),
        .O(\pc[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \pc[14]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(fch_pc[14]),
        .I2(ctl_fetch_ext),
        .I3(\pc_reg[15] [14]),
        .I4(ctl_selc[2]),
        .I5(\pc[14]_i_2_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \pc[14]_i_2 
       (.I0(ctl_selc[1]),
        .I1(cbus[14]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[0]),
        .I4(ctl_selc[3]),
        .I5(\pc_reg[14] ),
        .O(\pc[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \pc[15]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(fch_pc[15]),
        .I2(ctl_fetch_ext),
        .I3(\pc_reg[15] [15]),
        .I4(ctl_selc[2]),
        .I5(\pc[15]_i_3_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \pc[15]_i_3 
       (.I0(ctl_selc[1]),
        .I1(cbus[15]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[0]),
        .I4(ctl_selc[3]),
        .I5(\pc_reg[15]_0 ),
        .O(\pc[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \pc[1]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(fch_pc[1]),
        .I2(ctl_fetch_ext),
        .I3(\pc_reg[15] [1]),
        .I4(ctl_selc[2]),
        .I5(\pc[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \pc[1]_i_2 
       (.I0(ctl_selc[1]),
        .I1(cbus[1]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[0]),
        .I4(ctl_selc[3]),
        .I5(\pc_reg[1] ),
        .O(\pc[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \pc[2]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(fch_pc[2]),
        .I2(ctl_fetch_ext),
        .I3(\pc_reg[15] [2]),
        .I4(ctl_selc[2]),
        .I5(\pc[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \pc[2]_i_2 
       (.I0(ctl_selc[1]),
        .I1(cbus[2]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[0]),
        .I4(ctl_selc[3]),
        .I5(\pc_reg[2] ),
        .O(\pc[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \pc[3]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(fch_pc[3]),
        .I2(ctl_fetch_ext),
        .I3(\pc_reg[15] [3]),
        .I4(ctl_selc[2]),
        .I5(\pc[3]_i_3_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \pc[3]_i_3 
       (.I0(ctl_selc[1]),
        .I1(cbus[3]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[0]),
        .I4(ctl_selc[3]),
        .I5(\pc_reg[3] ),
        .O(\pc[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \pc[4]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(fch_pc[4]),
        .I2(ctl_fetch_ext),
        .I3(\pc_reg[15] [4]),
        .I4(ctl_selc[2]),
        .I5(\pc[4]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \pc[4]_i_2 
       (.I0(ctl_selc[1]),
        .I1(cbus[4]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[0]),
        .I4(ctl_selc[3]),
        .I5(\pc_reg[4] ),
        .O(\pc[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \pc[5]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(fch_pc[5]),
        .I2(ctl_fetch_ext),
        .I3(\pc_reg[15] [5]),
        .I4(ctl_selc[2]),
        .I5(\pc[5]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \pc[5]_i_2 
       (.I0(ctl_selc[1]),
        .I1(cbus[5]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[0]),
        .I4(ctl_selc[3]),
        .I5(\pc_reg[5] ),
        .O(\pc[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \pc[6]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(fch_pc[6]),
        .I2(ctl_fetch_ext),
        .I3(\pc_reg[15] [6]),
        .I4(ctl_selc[2]),
        .I5(\pc[6]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \pc[6]_i_2 
       (.I0(ctl_selc[1]),
        .I1(cbus[6]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[0]),
        .I4(ctl_selc[3]),
        .I5(\pc_reg[6] ),
        .O(\pc[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \pc[7]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(fch_pc[7]),
        .I2(ctl_fetch_ext),
        .I3(\pc_reg[15] [7]),
        .I4(ctl_selc[2]),
        .I5(\pc[7]_i_3_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \pc[7]_i_3 
       (.I0(ctl_selc[1]),
        .I1(cbus[7]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[0]),
        .I4(ctl_selc[3]),
        .I5(\pc_reg[7] ),
        .O(\pc[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \pc[8]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(fch_pc[8]),
        .I2(ctl_fetch_ext),
        .I3(\pc_reg[15] [8]),
        .I4(ctl_selc[2]),
        .I5(\pc[8]_i_2_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \pc[8]_i_2 
       (.I0(ctl_selc[1]),
        .I1(cbus[8]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[0]),
        .I4(ctl_selc[3]),
        .I5(\pc_reg[8] ),
        .O(\pc[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \pc[9]_i_1 
       (.I0(ctl_fetch_fl_reg_0),
        .I1(fch_pc[9]),
        .I2(ctl_fetch_ext),
        .I3(\pc_reg[15] [9]),
        .I4(ctl_selc[2]),
        .I5(\pc[9]_i_2_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \pc[9]_i_2 
       (.I0(ctl_selc[1]),
        .I1(cbus[9]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[0]),
        .I4(ctl_selc[3]),
        .I5(\pc_reg[9] ),
        .O(\pc[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FFFFFE000000)) 
    \read_cyc[0]_i_1 
       (.I0(\stat_reg[0]_0 ),
        .I1(\stat_reg[2] ),
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
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[0]_i_1 
       (.I0(\sp_reg[0] ),
        .I1(ctl_selc[2]),
        .I2(\sp[0]_i_3_n_0 ),
        .O(\sp_reg[15] [0]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \sp[0]_i_3 
       (.I0(ctl_selc[0]),
        .I1(cbus[0]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(\sp_reg[0] ),
        .O(\sp[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[10]_i_1 
       (.I0(\sp_reg[10] ),
        .I1(ctl_selc[2]),
        .I2(\sp[10]_i_3_n_0 ),
        .O(\sp_reg[15] [10]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \sp[10]_i_3 
       (.I0(ctl_selc[0]),
        .I1(cbus[10]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(\sp_reg[10] ),
        .O(\sp[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[11]_i_1 
       (.I0(\sp_reg[11] ),
        .I1(ctl_selc[2]),
        .I2(\sp[11]_i_3_n_0 ),
        .O(\sp_reg[15] [11]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \sp[11]_i_3 
       (.I0(ctl_selc[0]),
        .I1(cbus[11]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(\sp_reg[11] ),
        .O(\sp[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[12]_i_1 
       (.I0(\sp_reg[12] ),
        .I1(ctl_selc[2]),
        .I2(\sp[12]_i_3_n_0 ),
        .O(\sp_reg[15] [12]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \sp[12]_i_3 
       (.I0(ctl_selc[0]),
        .I1(cbus[12]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(\sp_reg[12] ),
        .O(\sp[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[13]_i_1 
       (.I0(\sp_reg[13] ),
        .I1(ctl_selc[2]),
        .I2(\sp[13]_i_3_n_0 ),
        .O(\sp_reg[15] [13]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \sp[13]_i_3 
       (.I0(ctl_selc[0]),
        .I1(cbus[13]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(\sp_reg[13] ),
        .O(\sp[13]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[14]_i_1 
       (.I0(\sp_reg[14] ),
        .I1(ctl_selc[2]),
        .I2(\sp[14]_i_3_n_0 ),
        .O(\sp_reg[15] [14]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \sp[14]_i_3 
       (.I0(ctl_selc[0]),
        .I1(cbus[14]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(\sp_reg[14] ),
        .O(\sp[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[15]_i_1 
       (.I0(\sp_reg[15]_0 ),
        .I1(ctl_selc[2]),
        .I2(\sp[15]_i_3_n_0 ),
        .O(\sp_reg[15] [15]));
  LUT6 #(
    .INIT(64'hBFFFFFFFBFFFFFFE)) 
    \sp[15]_i_10 
       (.I0(\sp[15]_i_5_0 ),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[7]),
        .I4(ir[6]),
        .I5(ir[4]),
        .O(\sp[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAF55F3)) 
    \sp[15]_i_15 
       (.I0(ir[6]),
        .I1(ir[0]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(ir[3]),
        .I5(\sp[15]_i_21_n_0 ),
        .O(\sp[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF77777777)) 
    \sp[15]_i_16 
       (.I0(badr_0_sn_1),
        .I1(brdy),
        .I2(ir[11]),
        .I3(ir[12]),
        .I4(Q[0]),
        .I5(ir[10]),
        .O(\sp[15]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sp[15]_i_17 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[6]),
        .O(\sp[15]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \sp[15]_i_18 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .O(\sp[15]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sp[15]_i_19 
       (.I0(ir[12]),
        .I1(ir[11]),
        .O(\sp[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F3F3F3F3F3F3E)) 
    \sp[15]_i_21 
       (.I0(ir[6]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(\bdatw[15]_INST_0_i_60_0 ),
        .I4(ir[11]),
        .I5(ir[12]),
        .O(\sp[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \sp[15]_i_3 
       (.I0(ctl_selc[0]),
        .I1(cbus[15]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(\sp_reg[15]_0 ),
        .O(\sp[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000057)) 
    \sp[15]_i_5 
       (.I0(Q[0]),
        .I1(ir[12]),
        .I2(\sp[15]_i_8_n_0 ),
        .I3(\bcmd[1]_INST_0_i_4_n_0 ),
        .I4(\sp[15]_i_9_n_0 ),
        .I5(\sp[15]_i_10_n_0 ),
        .O(ctl_sp_inc));
  LUT6 #(
    .INIT(64'h0000000002020002)) 
    \sp[15]_i_7 
       (.I0(\bcmd[1]_INST_0_i_1_n_0 ),
        .I1(\sp[15]_i_15_n_0 ),
        .I2(\sp[15]_i_16_n_0 ),
        .I3(ir[4]),
        .I4(\sp[15]_i_17_n_0 ),
        .I5(\sp[15]_i_18_n_0 ),
        .O(ctl_sp_dec));
  LUT4 #(
    .INIT(16'h0004)) 
    \sp[15]_i_8 
       (.I0(ir[3]),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(ir[2]),
        .O(\sp[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF33FFFFFD)) 
    \sp[15]_i_9 
       (.I0(ir[1]),
        .I1(ir[5]),
        .I2(ir[2]),
        .I3(ir[3]),
        .I4(ir[6]),
        .I5(\sp[15]_i_19_n_0 ),
        .O(\sp[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[1]_i_1 
       (.I0(\sp_reg[1] ),
        .I1(ctl_selc[2]),
        .I2(\sp[1]_i_3_n_0 ),
        .O(\sp_reg[15] [1]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \sp[1]_i_3 
       (.I0(ctl_selc[0]),
        .I1(cbus[1]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(\sp_reg[1] ),
        .O(\sp[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[2]_i_1 
       (.I0(\sp_reg[2] ),
        .I1(ctl_selc[2]),
        .I2(\sp[2]_i_3_n_0 ),
        .O(\sp_reg[15] [2]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \sp[2]_i_3 
       (.I0(ctl_selc[0]),
        .I1(cbus[2]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(\sp_reg[2] ),
        .O(\sp[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[3]_i_1 
       (.I0(\sp_reg[3] ),
        .I1(ctl_selc[2]),
        .I2(\sp[3]_i_3_n_0 ),
        .O(\sp_reg[15] [3]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \sp[3]_i_3 
       (.I0(ctl_selc[0]),
        .I1(cbus[3]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(\sp_reg[3] ),
        .O(\sp[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[4]_i_1 
       (.I0(\sp_reg[4] ),
        .I1(ctl_selc[2]),
        .I2(\sp[4]_i_3_n_0 ),
        .O(\sp_reg[15] [4]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \sp[4]_i_3 
       (.I0(ctl_selc[0]),
        .I1(cbus[4]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(\sp_reg[4] ),
        .O(\sp[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[5]_i_1 
       (.I0(\sp_reg[5] ),
        .I1(ctl_selc[2]),
        .I2(\sp[5]_i_3_n_0 ),
        .O(\sp_reg[15] [5]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \sp[5]_i_3 
       (.I0(ctl_selc[0]),
        .I1(cbus[5]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(\sp_reg[5] ),
        .O(\sp[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[6]_i_1 
       (.I0(\sp_reg[6] ),
        .I1(ctl_selc[2]),
        .I2(\sp[6]_i_3_n_0 ),
        .O(\sp_reg[15] [6]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \sp[6]_i_3 
       (.I0(ctl_selc[0]),
        .I1(cbus[6]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(\sp_reg[6] ),
        .O(\sp[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[7]_i_1 
       (.I0(\sp_reg[7] ),
        .I1(ctl_selc[2]),
        .I2(\sp[7]_i_3_n_0 ),
        .O(\sp_reg[15] [7]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \sp[7]_i_3 
       (.I0(ctl_selc[0]),
        .I1(cbus[7]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(\sp_reg[7] ),
        .O(\sp[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[8]_i_1 
       (.I0(\sp_reg[8] ),
        .I1(ctl_selc[2]),
        .I2(\sp[8]_i_3_n_0 ),
        .O(\sp_reg[15] [8]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \sp[8]_i_3 
       (.I0(ctl_selc[0]),
        .I1(cbus[8]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(\sp_reg[8] ),
        .O(\sp[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[9]_i_1 
       (.I0(\sp_reg[9] ),
        .I1(ctl_selc[2]),
        .I2(\sp[9]_i_3_n_0 ),
        .O(\sp_reg[15] [9]));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \sp[9]_i_3 
       (.I0(ctl_selc[0]),
        .I1(cbus[9]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(\sp_reg[9] ),
        .O(\sp[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCBC8CCCC00000000)) 
    \sr[0]_i_1 
       (.I0(\sr[0]_i_2_n_0 ),
        .I1(\sr_reg[15] [0]),
        .I2(ctl_selc[2]),
        .I3(\sr[0]_i_4_n_0 ),
        .I4(ctl_selc[3]),
        .I5(rst_n),
        .O(p_0_in_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF5FAFCFF)) 
    \sr[0]_i_10 
       (.I0(\stat_reg[0]_3 ),
        .I1(\sr[0]_i_23_n_0 ),
        .I2(Q[0]),
        .I3(ir[11]),
        .I4(ir[12]),
        .I5(Q[1]),
        .O(\sr[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF82FFFFFF82FF82)) 
    \sr[0]_i_11 
       (.I0(\sr[0]_i_5_0 ),
        .I1(\sr_reg[15] [5]),
        .I2(ir[11]),
        .I3(\ccmd[0]_INST_0_i_7_n_0 ),
        .I4(\sr[0]_i_25_n_0 ),
        .I5(\sr[0]_i_26_n_0 ),
        .O(\sr[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAAEAAAEAAAEAA)) 
    \sr[0]_i_12 
       (.I0(\sr[0]_i_27_n_0 ),
        .I1(\sr[0]_i_28_n_0 ),
        .I2(\sr[0]_i_5_1 ),
        .I3(\sr[0]_i_5_2 ),
        .I4(\sr[0]_i_31_n_0 ),
        .I5(\sr[0]_i_5_3 ),
        .O(\sr[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF4FFFF)) 
    \sr[0]_i_13 
       (.I0(crdy),
        .I1(ir[7]),
        .I2(\sr[0]_i_33_n_0 ),
        .I3(\ccmd[4]_INST_0_i_21_n_0 ),
        .I4(ir[8]),
        .I5(\sr[0]_i_34_n_0 ),
        .O(\sr[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hDDDD0000D5DDD5DD)) 
    \sr[0]_i_14 
       (.I0(ir[10]),
        .I1(\sr[0]_i_35_n_0 ),
        .I2(\sr[0]_i_36_n_0 ),
        .I3(\stat[2]_i_12_n_0 ),
        .I4(\sr[0]_i_37_n_0 ),
        .I5(crdy),
        .O(\sr[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h04F0000100000000)) 
    \sr[0]_i_16 
       (.I0(ir[3]),
        .I1(ir[4]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(ir[6]),
        .I5(ir[2]),
        .O(\sr[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \sr[0]_i_17 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(ir[9]),
        .O(\sr[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44444CFC)) 
    \sr[0]_i_18 
       (.I0(\sr[0]_i_38_n_0 ),
        .I1(ir[5]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(\sr[0]_i_39_n_0 ),
        .I5(\sr[0]_i_40_n_0 ),
        .O(\sr[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8840FFFFFFFF)) 
    \sr[0]_i_19 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[11]),
        .I3(ir[12]),
        .I4(Q[0]),
        .I5(ir[15]),
        .O(\sr[0]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \sr[0]_i_2 
       (.I0(ctl_selc[0]),
        .I1(cbus[0]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .O(\sr[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \sr[0]_i_20 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(\bcmd[1]_INST_0_i_9_n_0 ),
        .I4(ir[11]),
        .O(\sr[0]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \sr[0]_i_21 
       (.I0(brdy),
        .I1(ir[6]),
        .I2(ir[5]),
        .O(\sr[0]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \sr[0]_i_22 
       (.I0(ir[9]),
        .I1(ir[11]),
        .I2(ir[10]),
        .O(\sr[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sr[0]_i_23 
       (.I0(ir[14]),
        .I1(\sr_reg[15] [4]),
        .O(\sr[0]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \sr[0]_i_25 
       (.I0(Q[0]),
        .I1(\sr[0]_i_41_n_0 ),
        .I2(Q[1]),
        .I3(ir[8]),
        .I4(\sr[0]_i_42_n_0 ),
        .O(\sr[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hE000E000E0000000)) 
    \sr[0]_i_26 
       (.I0(\sr[0]_i_43_n_0 ),
        .I1(\ccmd[4]_INST_0_i_17_n_0 ),
        .I2(ir[14]),
        .I3(ir[12]),
        .I4(Q[1]),
        .I5(ir[11]),
        .O(\sr[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000400000)) 
    \sr[0]_i_27 
       (.I0(Q[1]),
        .I1(\ccmd[2]_INST_0_i_10_n_0 ),
        .I2(ir[14]),
        .I3(Q[2]),
        .I4(ir[12]),
        .I5(ir[11]),
        .O(\sr[0]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \sr[0]_i_28 
       (.I0(ir[13]),
        .I1(ir[15]),
        .I2(ir[11]),
        .I3(ir[12]),
        .O(\sr[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00000F000000DDDD)) 
    \sr[0]_i_3 
       (.I0(\sr[0]_i_6_n_0 ),
        .I1(\sr[0]_i_7_n_0 ),
        .I2(\sr[0]_i_8_n_0 ),
        .I3(\sr[0]_i_9_n_0 ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(ctl_selc[2]));
  LUT6 #(
    .INIT(64'h0000010101011101)) 
    \sr[0]_i_31 
       (.I0(\badr[15]_INST_0_i_39_n_0 ),
        .I1(\sr[0]_i_44_n_0 ),
        .I2(\sr[0]_i_45_n_0 ),
        .I3(brdy),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\sr[0]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \sr[0]_i_33 
       (.I0(ir[2]),
        .I1(ir[7]),
        .I2(ir[5]),
        .O(\sr[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h800080000000FFFF)) 
    \sr[0]_i_34 
       (.I0(ir[9]),
        .I1(brdy),
        .I2(\sr[0]_i_46_n_0 ),
        .I3(\sr[0]_i_47_n_0 ),
        .I4(\sr[0]_i_35_n_0 ),
        .I5(ir[10]),
        .O(\sr[0]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \sr[0]_i_35 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(brdy),
        .O(\sr[0]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sr[0]_i_36 
       (.I0(ir[8]),
        .I1(ir[2]),
        .O(\sr[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAFFAAFF02F3)) 
    \sr[0]_i_37 
       (.I0(\ccmd[3]_INST_0_i_13_n_0 ),
        .I1(ir[2]),
        .I2(ir[7]),
        .I3(ir[5]),
        .I4(ir[8]),
        .I5(\ccmd[4]_INST_0_i_21_n_0 ),
        .O(\sr[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5F5FF1FF0F0F)) 
    \sr[0]_i_38 
       (.I0(\sr[0]_i_48_n_0 ),
        .I1(\sp[15]_i_17_n_0 ),
        .I2(ir[11]),
        .I3(crdy),
        .I4(ir[10]),
        .I5(ir[9]),
        .O(\sr[0]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFF7F7)) 
    \sr[0]_i_39 
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(ir[9]),
        .I3(crdy),
        .I4(ir[8]),
        .O(\sr[0]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \sr[0]_i_4 
       (.I0(ctl_selc[0]),
        .I1(cbus[0]),
        .I2(ctl_selc[4]),
        .I3(ctl_selc[1]),
        .O(\sr[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \sr[0]_i_40 
       (.I0(crdy),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(ir[9]),
        .I4(\sr[0]_i_47_n_0 ),
        .O(\sr[0]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h15155155)) 
    \sr[0]_i_41 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[4]),
        .I3(ir[3]),
        .I4(ir[5]),
        .O(\sr[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h7FF0FFFFFFFFFFFF)) 
    \sr[0]_i_42 
       (.I0(\sr[0]_i_49_n_0 ),
        .I1(brdy),
        .I2(ir[4]),
        .I3(ir[6]),
        .I4(ir[3]),
        .I5(Q[0]),
        .O(\sr[0]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h41000010)) 
    \sr[0]_i_43 
       (.I0(Q[1]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[10]),
        .I4(ir[7]),
        .O(\sr[0]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sr[0]_i_44 
       (.I0(ir[2]),
        .I1(ir[4]),
        .I2(ir[3]),
        .O(\sr[0]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \sr[0]_i_45 
       (.I0(ir[1]),
        .I1(Q[0]),
        .I2(brdy),
        .O(\sr[0]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[0]_i_46 
       (.I0(ir[3]),
        .I1(ir[2]),
        .O(\sr[0]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \sr[0]_i_47 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(ir[8]),
        .I3(ir[7]),
        .O(\sr[0]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sr[0]_i_48 
       (.I0(ir[7]),
        .I1(ir[8]),
        .O(\sr[0]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[0]_i_49 
       (.I0(ir[5]),
        .I1(ir[7]),
        .O(\sr[0]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000C5)) 
    \sr[0]_i_5 
       (.I0(\sr[0]_i_10_n_0 ),
        .I1(\sr[0]_i_11_n_0 ),
        .I2(ir[13]),
        .I3(ir[15]),
        .I4(Q[2]),
        .I5(\sr[0]_i_12_n_0 ),
        .O(ctl_selc[3]));
  LUT6 #(
    .INIT(64'hF7B3FFFFFFFFFFFF)) 
    \sr[0]_i_6 
       (.I0(ir[11]),
        .I1(ir[12]),
        .I2(\sr[0]_i_13_n_0 ),
        .I3(\sr[0]_i_14_n_0 ),
        .I4(\sr[7]_i_6_0 ),
        .I5(\bcmd[2]_INST_0_i_1_n_0 ),
        .O(\sr[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF800FFFFF800F800)) 
    \sr[0]_i_7 
       (.I0(\sr[0]_i_16_n_0 ),
        .I1(\sr[0]_i_17_n_0 ),
        .I2(\sr[0]_i_18_n_0 ),
        .I3(\sr[0]_i_9_n_0 ),
        .I4(\sr[0]_i_19_n_0 ),
        .I5(ir[10]),
        .O(\sr[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFFFF33B0FFFF)) 
    \sr[0]_i_8 
       (.I0(\sr[0]_i_20_n_0 ),
        .I1(ir[2]),
        .I2(\sr[0]_i_21_n_0 ),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(\sr[0]_i_22_n_0 ),
        .O(\sr[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \sr[0]_i_9 
       (.I0(Q[0]),
        .I1(ir[15]),
        .I2(ir[14]),
        .I3(ir[13]),
        .I4(ir[12]),
        .O(\sr[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCBC8C)) 
    \sr[10]_i_1 
       (.I0(\sr[10]_i_2_n_0 ),
        .I1(\sr_reg[15] [7]),
        .I2(ctl_selc[3]),
        .I3(\sr[10]_i_3_n_0 ),
        .I4(ctl_selc[1]),
        .I5(ctl_selc[2]),
        .O(\sr_reg[10] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7500)) 
    \sr[10]_i_10 
       (.I0(\sr[10]_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_87_n_0 ),
        .I2(\sr[10]_i_16_n_0 ),
        .I3(ir[4]),
        .I4(\sr[10]_i_17_n_0 ),
        .I5(Q[0]),
        .O(\sr[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00FFBFFFFFFFBFFF)) 
    \sr[10]_i_11 
       (.I0(ir[6]),
        .I1(ir[4]),
        .I2(brdy),
        .I3(ir[7]),
        .I4(ir[8]),
        .I5(ir[1]),
        .O(\sr[10]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00800000FFFFFFFF)) 
    \sr[10]_i_12 
       (.I0(brdy),
        .I1(ir[9]),
        .I2(\bdatw[15]_INST_0_i_73_n_0 ),
        .I3(\ccmd[2]_INST_0_i_26_n_0 ),
        .I4(\sr[0]_i_47_n_0 ),
        .I5(Q[0]),
        .O(\sr[10]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \sr[10]_i_13 
       (.I0(\sr[10]_i_18_n_0 ),
        .I1(ir[1]),
        .I2(crdy),
        .I3(ir[7]),
        .I4(\ccmd[2]_INST_0_i_26_n_0 ),
        .I5(\sr[10]_i_19_n_0 ),
        .O(\sr[10]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \sr[10]_i_14 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[9]),
        .O(\sr[10]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA2AAAAAAAAAAA)) 
    \sr[10]_i_15 
       (.I0(\sr[0]_i_38_n_0 ),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(ir[9]),
        .I5(\sr[10]_i_20_n_0 ),
        .O(\sr[10]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \sr[10]_i_16 
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(ir[11]),
        .I3(ir[10]),
        .O(\sr[10]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h002080A000200020)) 
    \sr[10]_i_17 
       (.I0(\sr[0]_i_17_n_0 ),
        .I1(ir[7]),
        .I2(ir[1]),
        .I3(\sr[10]_i_21_n_0 ),
        .I4(ir[5]),
        .I5(ir[6]),
        .O(\sr[10]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \sr[10]_i_18 
       (.I0(crdy),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[7]),
        .O(\sr[10]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h44044000)) 
    \sr[10]_i_19 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[7]),
        .I3(ir[4]),
        .I4(ir[1]),
        .O(\sr[10]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \sr[10]_i_2 
       (.I0(ctl_selc[4]),
        .I1(cbus[10]),
        .I2(ctl_selc[0]),
        .O(\sr[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \sr[10]_i_20 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(crdy),
        .O(\sr[10]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF7FE)) 
    \sr[10]_i_21 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[3]),
        .I3(ir[4]),
        .O(\sr[10]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \sr[10]_i_3 
       (.I0(ctl_selc[4]),
        .I1(cbus[10]),
        .I2(ctl_selc[0]),
        .O(\sr[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF0C5555)) 
    \sr[10]_i_4 
       (.I0(\sr[10]_i_5_n_0 ),
        .I1(rst_n_fl_reg_1),
        .I2(\sr[10]_i_6_n_0 ),
        .I3(\sr[10]_i_7_n_0 ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(ctl_selc[1]));
  LUT6 #(
    .INIT(64'hD0DDD0D0DDDDDDDD)) 
    \sr[10]_i_5 
       (.I0(ir[9]),
        .I1(\sr[0]_i_19_n_0 ),
        .I2(\bdatw[15]_INST_0_i_42_n_0 ),
        .I3(\sr[10]_i_8_n_0 ),
        .I4(\sr[10]_i_9_n_0 ),
        .I5(\sr[10]_i_10_n_0 ),
        .O(\sr[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFD7FF)) 
    \sr[10]_i_6 
       (.I0(rst_n_fl_reg_3),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(ir[2]),
        .I4(ir[0]),
        .O(\sr[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h02020202AA020202)) 
    \sr[10]_i_7 
       (.I0(\sr[0]_i_9_n_0 ),
        .I1(\sr[0]_i_22_n_0 ),
        .I2(\sr[10]_i_11_n_0 ),
        .I3(ir[7]),
        .I4(ir[1]),
        .I5(\sr[0]_i_20_n_0 ),
        .O(\sr[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \sr[10]_i_8 
       (.I0(\sr[10]_i_12_n_0 ),
        .I1(\sr[10]_i_13_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[15]_INST_0_i_68_n_0 ),
        .I4(ir[4]),
        .I5(brdy),
        .O(\sr[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5D7F0D0FFFFFFFFF)) 
    \sr[10]_i_9 
       (.I0(\sr[10]_i_14_n_0 ),
        .I1(ir[7]),
        .I2(ir[4]),
        .I3(ir[1]),
        .I4(\ccmd[3]_INST_0_i_13_n_0 ),
        .I5(\badr[15]_INST_0_i_47_n_0 ),
        .O(\sr[10]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sr[11]_i_1 
       (.I0(\sr[15]_i_2_n_0 ),
        .O(rst_n_0));
  LUT4 #(
    .INIT(16'hFC88)) 
    \sr[12]_i_1 
       (.I0(\sr[15]_i_2_n_0 ),
        .I1(\sr_reg[15] [8]),
        .I2(\sr[15]_i_3_n_0 ),
        .I3(cpuid[0]),
        .O(p_0_in_0[1]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \sr[13]_i_1 
       (.I0(\sr[15]_i_2_n_0 ),
        .I1(\sr_reg[15] [9]),
        .I2(\sr[15]_i_3_n_0 ),
        .I3(cpuid[1]),
        .O(p_0_in_0[2]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \sr[14]_i_1 
       (.I0(\sr[15]_i_2_n_0 ),
        .I1(\sr_reg[15] [10]),
        .I2(\sr[15]_i_3_n_0 ),
        .I3(cpuid[2]),
        .O(p_0_in_0[3]));
  LUT4 #(
    .INIT(16'hFC88)) 
    \sr[15]_i_1 
       (.I0(\sr[15]_i_2_n_0 ),
        .I1(\sr_reg[15] [11]),
        .I2(\sr[15]_i_3_n_0 ),
        .I3(cpuid[3]),
        .O(p_0_in_0[4]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00000000)) 
    \sr[15]_i_2 
       (.I0(ctl_selc[0]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[2]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[3]),
        .I5(rst_n),
        .O(\sr[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAEFFFFFFFF)) 
    \sr[15]_i_3 
       (.I0(\sr[15]_i_4_n_0 ),
        .I1(ctl_selc[3]),
        .I2(ctl_selc[0]),
        .I3(ctl_selc[1]),
        .I4(ctl_selc[2]),
        .I5(rst_n),
        .O(\sr[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sr[15]_i_4 
       (.I0(ctl_sr_ldie),
        .I1(ctl_sr_upd),
        .O(\sr[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \sr[2]_i_1 
       (.I0(ctl_selc[2]),
        .I1(ctl_selc[1]),
        .I2(ctl_selc[0]),
        .I3(\sr[2]_i_2_n_0 ),
        .I4(ctl_selc[3]),
        .I5(\sr[2]_i_3_n_0 ),
        .O(\stat_reg[2]_9 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[2]_i_2 
       (.I0(cbus[2]),
        .I1(ctl_selc[4]),
        .I2(\sr_reg[15] [1]),
        .O(\sr[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \sr[2]_i_3 
       (.I0(ctl_sr_upd),
        .I1(fch_irq_lev[0]),
        .I2(ctl_sr_ldie),
        .I3(\sr_reg[15] [1]),
        .O(\sr[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \sr[3]_i_1 
       (.I0(ctl_selc[2]),
        .I1(ctl_selc[1]),
        .I2(ctl_selc[0]),
        .I3(\sr[3]_i_2_n_0 ),
        .I4(ctl_selc[3]),
        .I5(\sr[3]_i_3_n_0 ),
        .O(\stat_reg[2]_8 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[3]_i_2 
       (.I0(cbus[3]),
        .I1(ctl_selc[4]),
        .I2(\sr_reg[15] [2]),
        .O(\sr[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \sr[3]_i_3 
       (.I0(ctl_sr_upd),
        .I1(fch_irq_lev[1]),
        .I2(ctl_sr_ldie),
        .I3(\sr_reg[15] [2]),
        .O(\sr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \sr[3]_i_4 
       (.I0(rst_n_fl_reg_1),
        .I1(rst_n_fl_reg_3),
        .I2(ir[2]),
        .I3(ctl_fetch_inferred_i_4_0),
        .I4(brdy),
        .I5(\ccmd[2]_INST_0_i_20_n_0 ),
        .O(ctl_sr_ldie));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \sr[4]_i_1 
       (.I0(ctl_selc[2]),
        .I1(ctl_selc[1]),
        .I2(ctl_selc[0]),
        .I3(cbus[4]),
        .I4(ctl_selc[3]),
        .I5(\sr[4]_i_2_n_0 ),
        .O(\stat_reg[2]_7 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_10 
       (.I0(\sr[4]_i_19_n_0 ),
        .I1(\iv[5]_i_4_n_0 ),
        .I2(\iv[6]_i_4_n_0 ),
        .I3(\iv[0]_i_4_n_0 ),
        .O(\sr[4]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_11 
       (.I0(\iv[2]_i_4_n_0 ),
        .I1(\iv[7]_i_4_n_0 ),
        .I2(\iv[3]_i_4_n_0 ),
        .I3(\iv[1]_i_4_n_0 ),
        .O(\sr[4]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \sr[4]_i_12 
       (.I0(\iv[12]_i_4_n_0 ),
        .I1(\iv[10]_i_4_n_0 ),
        .I2(\iv[13]_i_4_n_0 ),
        .I3(\iv[11]_i_4_n_0 ),
        .O(\sr[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF2A)) 
    \sr[4]_i_13 
       (.I0(\sr[4]_i_20_n_0 ),
        .I1(\stat_reg[1] [0]),
        .I2(tout__1_carry_i_13_n_0),
        .I3(\sr_reg[15] [3]),
        .I4(\sr[4]_i_6_0 ),
        .I5(\iv[14]_i_3_n_0 ),
        .O(\sr[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFBBFB)) 
    \sr[4]_i_14 
       (.I0(\iv[14]_i_10_n_0 ),
        .I1(\sr[4]_i_22_n_0 ),
        .I2(\bdatw[11]_INST_0_i_2_0 ),
        .I3(\iv[6]_i_2_0 ),
        .I4(\sr[4]_i_23_n_0 ),
        .I5(\stat_reg[2]_11 ),
        .O(\sr[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000EAFF)) 
    \sr[4]_i_15 
       (.I0(\sr[4]_i_7_0 ),
        .I1(\iv[13]_i_14_n_0 ),
        .I2(\iv[9]_i_11_n_0 ),
        .I3(\iv[14]_i_33_0 ),
        .I4(\sr[4]_i_25_n_0 ),
        .I5(\sr[4]_i_26_n_0 ),
        .O(\sr[4]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFFAB)) 
    \sr[4]_i_16 
       (.I0(\iv[14]_i_10_n_0 ),
        .I1(\iv[0]_i_2_0 ),
        .I2(\bdatw[11]_INST_0_i_2_0 ),
        .I3(\sr[4]_i_27_n_0 ),
        .I4(\stat_reg[2]_11 ),
        .O(\sr[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h7777070077777777)) 
    \sr[4]_i_17 
       (.I0(\sr[4]_i_28_n_0 ),
        .I1(\iv[13]_i_7_n_0 ),
        .I2(\iv[3]_i_2_0 ),
        .I3(\iv[13]_i_14_n_0 ),
        .I4(\sr[4]_i_29_n_0 ),
        .I5(\sr[4]_i_30_n_0 ),
        .O(\sr[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h7777070077777777)) 
    \sr[4]_i_18 
       (.I0(\sr[4]_i_31_n_0 ),
        .I1(\iv[13]_i_7_n_0 ),
        .I2(\sr[4]_i_8_0 ),
        .I3(\sr[4]_i_32_n_0 ),
        .I4(\sr[4]_i_33_n_0 ),
        .I5(\sr[4]_i_34_n_0 ),
        .O(\sr[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hF8FDF0FDF8FDF0FF)) 
    \sr[4]_i_19 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(\iv[4]_i_4_n_0 ),
        .I3(\iv[14]_i_15_n_0 ),
        .I4(\stat_reg[1] [1]),
        .I5(\stat_reg[1] [0]),
        .O(\sr[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFF10FFFFFF100000)) 
    \sr[4]_i_2 
       (.I0(\sr[4]_i_3_n_0 ),
        .I1(\sr[4]_i_4_n_0 ),
        .I2(\sr[4]_i_5_n_0 ),
        .I3(\sr[4]_i_6_n_0 ),
        .I4(ctl_sr_upd),
        .I5(\sr_reg[15] [3]),
        .O(\sr[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \sr[4]_i_20 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(\stat_reg[1] [0]),
        .I3(\stat_reg[1] [1]),
        .O(\sr[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h11111F1F1F111F11)) 
    \sr[4]_i_22 
       (.I0(\stat_reg[1] [0]),
        .I1(\stat_reg[1] [1]),
        .I2(\bdatw[11]_INST_0_i_2_0 ),
        .I3(\iv[1]_i_9_0 ),
        .I4(\iv[2]_i_15_n_0 ),
        .I5(\bdatw[9]_INST_0_i_2_0 ),
        .O(\sr[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000010101)) 
    \sr[4]_i_23 
       (.I0(\bdatw[11]_INST_0_i_2_0 ),
        .I1(\stat_reg[1] [1]),
        .I2(\stat_reg[1] [0]),
        .I3(\sr[4]_i_14_0 ),
        .I4(\bdatw[9]_INST_0_i_2_0 ),
        .I5(\iv[1]_i_9_0 ),
        .O(\sr[4]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h44444404)) 
    \sr[4]_i_25 
       (.I0(\iv[13]_i_20_n_0 ),
        .I1(\iv[13]_i_19_n_0 ),
        .I2(abus_0[8]),
        .I3(\stat_reg[1] [1]),
        .I4(\stat_reg[1] [0]),
        .O(\sr[4]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hA808AAAA)) 
    \sr[4]_i_26 
       (.I0(\stat_reg[1] [0]),
        .I1(\sr[4]_i_15_1 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\iv[5]_i_7_0 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .O(\sr[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h000000005F5F3F30)) 
    \sr[4]_i_27 
       (.I0(\iv[9]_i_7_0 ),
        .I1(\iv[13]_i_23_n_0 ),
        .I2(\iv[8]_i_19_n_0 ),
        .I3(\badr[1]_INST_0_i_1 ),
        .I4(\bdatw[9]_INST_0_i_2_0 ),
        .I5(\bdatw[8]_INST_0_i_2_0 ),
        .O(\sr[4]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \sr[4]_i_28 
       (.I0(abus_0[11]),
        .I1(\stat_reg[1] [0]),
        .I2(\stat_reg[1] [1]),
        .O(\sr[4]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFFFAAAAAAAAA)) 
    \sr[4]_i_29 
       (.I0(\bdatw[12]_INST_0_i_2_0 ),
        .I1(\sr[4]_i_17_0 ),
        .I2(\iv[8]_i_18_n_0 ),
        .I3(\iv[8]_i_17_n_0 ),
        .I4(\bdatw[9]_INST_0_i_2_0 ),
        .I5(\sr[4]_i_32_n_0 ),
        .O(\sr[4]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_3 
       (.I0(\iv[3]_i_2_n_0 ),
        .I1(\iv[14]_i_2_n_0 ),
        .I2(\iv[11]_i_2_n_0 ),
        .I3(\iv[0]_i_2_n_0 ),
        .O(\sr[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0D0D0D2FFFFFFFFF)) 
    \sr[4]_i_30 
       (.I0(\bdatw[8]_INST_0_i_2_0 ),
        .I1(\bdatw[9]_INST_0_i_2_0 ),
        .I2(abus_0[15]),
        .I3(\iv[8]_i_18_n_0 ),
        .I4(\iv[8]_i_17_n_0 ),
        .I5(\stat_reg[1] [1]),
        .O(\sr[4]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \sr[4]_i_31 
       (.I0(abus_0[9]),
        .I1(\stat_reg[1] [0]),
        .I2(\stat_reg[1] [1]),
        .O(\sr[4]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h1414141414141444)) 
    \sr[4]_i_32 
       (.I0(\stat_reg[1] [1]),
        .I1(rst_n_fl_reg_7),
        .I2(\stat_reg[2]_11 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(\stat_reg[2]_13 ),
        .I5(\stat_reg[2]_12 ),
        .O(\sr[4]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h1D00FFFF)) 
    \sr[4]_i_33 
       (.I0(\sr[4]_i_18_0 ),
        .I1(\bdatw[9]_INST_0_i_2_0 ),
        .I2(\sr[4]_i_18_2 ),
        .I3(\iv[13]_i_14_n_0 ),
        .I4(\iv[14]_i_33_0 ),
        .O(\sr[4]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7F555DFF5D55)) 
    \sr[4]_i_34 
       (.I0(\sr[4]_i_37_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2_1 ),
        .I2(abus_0[15]),
        .I3(\bdatw[9]_INST_0_i_2_0 ),
        .I4(\sr[4]_i_18_1 ),
        .I5(\iv[6]_i_5_2 ),
        .O(\sr[4]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h2828282828282888)) 
    \sr[4]_i_37 
       (.I0(\stat_reg[1] [1]),
        .I1(rst_n_fl_reg_7),
        .I2(\stat_reg[2]_11 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(\stat_reg[2]_13 ),
        .I5(\stat_reg[2]_12 ),
        .O(\sr[4]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_4 
       (.I0(\iv[2]_i_2_n_0 ),
        .I1(\iv[13]_i_2_n_0 ),
        .I2(\iv[7]_i_2_n_0 ),
        .I3(\iv[1]_i_2_n_0 ),
        .O(\sr[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \sr[4]_i_5 
       (.I0(\iv[4]_i_2_n_0 ),
        .I1(\iv[5]_i_2_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[14]_i_10_n_0 ),
        .I4(\sr[4]_i_7_n_0 ),
        .I5(\sr[4]_i_8_n_0 ),
        .O(\sr[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \sr[4]_i_6 
       (.I0(\sr[4]_i_9_n_0 ),
        .I1(\sr[4]_i_10_n_0 ),
        .I2(\sr[4]_i_11_n_0 ),
        .I3(\sr[4]_i_12_n_0 ),
        .I4(\sr[4]_i_13_n_0 ),
        .O(\sr[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA08AA0800008808)) 
    \sr[4]_i_7 
       (.I0(\iv[8]_i_2_n_0 ),
        .I1(\stat_reg[2]_11 ),
        .I2(\iv[6]_i_5_n_0 ),
        .I3(\sr[4]_i_14_n_0 ),
        .I4(\sr[4]_i_15_n_0 ),
        .I5(\sr[4]_i_16_n_0 ),
        .O(\sr[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h080F08080C0F0C0F)) 
    \sr[4]_i_8 
       (.I0(\sr[4]_i_17_n_0 ),
        .I1(\iv[12]_i_5_n_0 ),
        .I2(\iv[14]_i_10_n_0 ),
        .I3(\iv[10]_i_7_n_0 ),
        .I4(\sr[4]_i_18_n_0 ),
        .I5(\stat_reg[2]_11 ),
        .O(\sr[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_9 
       (.I0(\iv[14]_i_5_n_0 ),
        .I1(\sr[7]_i_8_n_0 ),
        .I2(\iv[9]_i_4_n_0 ),
        .I3(\iv[8]_i_4_n_0 ),
        .O(\sr[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \sr[5]_i_1 
       (.I0(ctl_selc[2]),
        .I1(ctl_selc[1]),
        .I2(ctl_selc[0]),
        .I3(cbus[5]),
        .I4(ctl_selc[3]),
        .I5(\sr[5]_i_2_n_0 ),
        .O(\stat_reg[2]_6 ));
  LUT6 #(
    .INIT(64'hABBAFFFFABBA0000)) 
    \sr[5]_i_2 
       (.I0(\sr[5]_i_3_n_0 ),
        .I1(\sr[5]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\sr[6]_i_3_n_0 ),
        .I4(ctl_sr_upd),
        .I5(\sr_reg[15] [4]),
        .O(\sr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00410028)) 
    \sr[5]_i_3 
       (.I0(\tr_reg[15] [3]),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(tout__1_carry_i_8_n_0),
        .I3(\iv[14]_i_3_n_0 ),
        .I4(abus_0[15]),
        .O(\sr[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sr[5]_i_4 
       (.I0(\stat_reg[2]_11 ),
        .I1(\sr[5]_i_5_n_0 ),
        .O(\sr[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \sr[5]_i_5 
       (.I0(ctl_copro),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(\ccmd[4]_INST_0_i_2_n_0 ),
        .I3(\stat_reg[1] [1]),
        .I4(\stat_reg[1] [0]),
        .I5(acmd),
        .O(\sr[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \sr[6]_i_1 
       (.I0(ctl_selc[2]),
        .I1(ctl_selc[1]),
        .I2(ctl_selc[0]),
        .I3(cbus[6]),
        .I4(ctl_selc[3]),
        .I5(\sr[6]_i_2_n_0 ),
        .O(\stat_reg[2]_5 ));
  LUT6 #(
    .INIT(64'hBAABFFFFBAAB0000)) 
    \sr[6]_i_2 
       (.I0(\sr[6]_i_3_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\stat_reg[1] [0]),
        .I3(\sr_reg[6] ),
        .I4(ctl_sr_upd),
        .I5(\sr_reg[15] [5]),
        .O(\sr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDDDFF0F)) 
    \sr[6]_i_3 
       (.I0(\sr[6]_i_4_n_0 ),
        .I1(\sr[5]_i_2_0 ),
        .I2(\sr[6]_i_6_n_0 ),
        .I3(\sr[5]_i_2_1 ),
        .I4(\stat_reg[2]_11 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\sr[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sr[6]_i_4 
       (.I0(\iv[0]_i_13_n_0 ),
        .I1(abus_0[15]),
        .O(\sr[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF5FFA0FFE4FFE4)) 
    \sr[6]_i_6 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\sr[6]_i_3_0 ),
        .I2(\sr[6]_i_3_1 ),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .I4(\sr[6]_i_3_2 ),
        .I5(\stat_reg[1] [1]),
        .O(\sr[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \sr[7]_i_1 
       (.I0(ctl_selc[2]),
        .I1(ctl_selc[1]),
        .I2(ctl_selc[0]),
        .I3(cbus[7]),
        .I4(ctl_selc[3]),
        .I5(\sr[7]_i_3_n_0 ),
        .O(\stat_reg[2]_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4700)) 
    \sr[7]_i_10 
       (.I0(\bdatw[15]_INST_0_i_50_n_0 ),
        .I1(ir[14]),
        .I2(\sr[7]_i_4_0 ),
        .I3(\sr[7]_i_18_n_0 ),
        .I4(Q[0]),
        .I5(ir[15]),
        .O(\sr[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1000000)) 
    \sr[7]_i_11 
       (.I0(brdy),
        .I1(\sr[10]_i_6_n_0 ),
        .I2(\sr[7]_i_19_n_0 ),
        .I3(\badr[15]_INST_0_i_66_n_0 ),
        .I4(Q[0]),
        .I5(ir[15]),
        .O(\sr[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F755F7F7)) 
    \sr[7]_i_12 
       (.I0(\badr[15]_INST_0_i_47_n_0 ),
        .I1(ir[3]),
        .I2(\ccmd[3]_INST_0_i_13_n_0 ),
        .I3(\sr[7]_i_20_n_0 ),
        .I4(ir[10]),
        .I5(\sr[7]_i_21_n_0 ),
        .O(\sr[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0002280000000000)) 
    \sr[7]_i_13 
       (.I0(\badr[15]_INST_0_i_43_n_0 ),
        .I1(ir[1]),
        .I2(ir[3]),
        .I3(ir[2]),
        .I4(ir[0]),
        .I5(\sr[7]_i_6_0 ),
        .O(\sr[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00FFBFFFFFFFBFFF)) 
    \sr[7]_i_14 
       (.I0(ir[6]),
        .I1(ir[3]),
        .I2(brdy),
        .I3(ir[7]),
        .I4(ir[8]),
        .I5(ir[0]),
        .O(\sr[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAF0FFA0AF3F30)) 
    \sr[7]_i_15 
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(abus_0[7]),
        .I2(\stat_reg[1] [1]),
        .I3(abus_0[15]),
        .I4(\stat_reg[1] [0]),
        .I5(acmd),
        .O(\sr[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h2020000002222000)) 
    \sr[7]_i_16 
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[15]),
        .I3(\stat_reg[1] [0]),
        .I4(\stat_reg[1] [1]),
        .I5(\bdatw[15]_INST_0_i_1_n_0 ),
        .O(\sr[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0B3000F00B300)) 
    \sr[7]_i_17 
       (.I0(ir[11]),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(ir[15]),
        .I4(ir[13]),
        .I5(\sr[7]_i_22_n_0 ),
        .O(\sr[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF700F7F7FFFFFFFF)) 
    \sr[7]_i_18 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(\sr[7]_i_23_n_0 ),
        .I3(\sr[10]_i_15_n_0 ),
        .I4(ir[3]),
        .I5(\bcmd[1]_INST_0_i_8_n_0 ),
        .O(\sr[7]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h00000308)) 
    \sr[7]_i_19 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(ir[1]),
        .I4(\sr[7]_i_24_n_0 ),
        .O(\sr[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0FC500C50FC50FC5)) 
    \sr[7]_i_2 
       (.I0(\sr[7]_i_4_n_0 ),
        .I1(\sr[7]_i_5_n_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\sr[7]_i_6_n_0 ),
        .I5(\sr[7]_i_7_n_0 ),
        .O(ctl_selc[0]));
  LUT6 #(
    .INIT(64'h70707077FFFFF0FF)) 
    \sr[7]_i_20 
       (.I0(\badr[15]_INST_0_i_68_n_0 ),
        .I1(brdy),
        .I2(ctl_fetch_ext_fl_i_3_n_0),
        .I3(ir[0]),
        .I4(ir[7]),
        .I5(ir[3]),
        .O(\sr[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F1F1F0F0FFF1)) 
    \sr[7]_i_21 
       (.I0(\sr[7]_i_25_n_0 ),
        .I1(\bcmd[2]_INST_0_i_4_n_0 ),
        .I2(\sr[7]_i_26_n_0 ),
        .I3(\sr[7]_i_27_n_0 ),
        .I4(\ccmd[2]_INST_0_i_26_n_0 ),
        .I5(\sr[7]_i_28_n_0 ),
        .O(\sr[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFA0A2A000A0A2A)) 
    \sr[7]_i_22 
       (.I0(ir[11]),
        .I1(ir[7]),
        .I2(ir[10]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(\sr[7]_i_29_n_0 ),
        .O(\sr[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEEEEE0EE)) 
    \sr[7]_i_23 
       (.I0(\sr[7]_i_30_n_0 ),
        .I1(\sr[10]_i_21_n_0 ),
        .I2(\bdatw[15]_INST_0_i_87_n_0 ),
        .I3(ir[3]),
        .I4(ir[9]),
        .I5(ir[7]),
        .O(\sr[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \sr[7]_i_24 
       (.I0(\bcmd[0]_INST_0_i_9_n_0 ),
        .I1(ctl_fetch_ext_fl_i_3_n_0),
        .I2(ir[6]),
        .I3(brdy),
        .I4(ir[7]),
        .I5(ir[10]),
        .O(\sr[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h3FFFEFEFFFFFFFFF)) 
    \sr[7]_i_25 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(ir[3]),
        .I3(\sr[7]_i_31_n_0 ),
        .I4(ir[6]),
        .I5(ir[7]),
        .O(\sr[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000F0000000F8F00)) 
    \sr[7]_i_26 
       (.I0(\sr[7]_i_32_n_0 ),
        .I1(ir[0]),
        .I2(\sr[7]_i_33_n_0 ),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(crdy),
        .O(\sr[7]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \sr[7]_i_27 
       (.I0(ir[3]),
        .I1(ir[7]),
        .I2(ir[0]),
        .I3(ir[9]),
        .I4(ir[8]),
        .O(\sr[7]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sr[7]_i_28 
       (.I0(ir[7]),
        .I1(crdy),
        .O(\sr[7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E0FFE0)) 
    \sr[7]_i_29 
       (.I0(\badr[15]_INST_0_i_47_n_0 ),
        .I1(\ccmd[2]_INST_0_i_15_n_0 ),
        .I2(ir[6]),
        .I3(ir[9]),
        .I4(\ccmd[2]_INST_0_i_26_n_0 ),
        .I5(\sr[7]_i_34_n_0 ),
        .O(\sr[7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    \sr[7]_i_3 
       (.I0(\iv[15]_i_5_n_0 ),
        .I1(\sr[7]_i_8_n_0 ),
        .I2(\tr_reg[15] [3]),
        .I3(\iv[14]_i_3_n_0 ),
        .I4(ctl_sr_upd),
        .I5(\sr_reg[15] [6]),
        .O(\sr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFAAFFEEFEAAFF)) 
    \sr[7]_i_30 
       (.I0(\bcmd[2]_INST_0_i_4_n_0 ),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(ir[0]),
        .I4(ir[7]),
        .I5(\bcmd[0]_INST_0_i_7_n_0 ),
        .O(\sr[7]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[7]_i_31 
       (.I0(ir[0]),
        .I1(brdy),
        .O(\sr[7]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \sr[7]_i_32 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[9]),
        .O(\sr[7]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \sr[7]_i_33 
       (.I0(brdy),
        .I1(ir[3]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[6]),
        .O(\sr[7]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFBFF3F3C3F3C3F3C)) 
    \sr[7]_i_34 
       (.I0(ir[3]),
        .I1(ir[6]),
        .I2(ir[7]),
        .I3(ir[4]),
        .I4(ir[5]),
        .I5(ir[9]),
        .O(\sr[7]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h008A008A0000008A)) 
    \sr[7]_i_4 
       (.I0(\sr[7]_i_10_n_0 ),
        .I1(\sr[0]_i_19_n_0 ),
        .I2(ir[8]),
        .I3(\sr[7]_i_11_n_0 ),
        .I4(\badr[15]_INST_0_i_16_n_0 ),
        .I5(\sr[7]_i_12_n_0 ),
        .O(\sr[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \sr[7]_i_5 
       (.I0(Q[0]),
        .I1(rst_n_fl_reg_3),
        .I2(rst_n_fl_reg_1),
        .I3(ir[3]),
        .I4(ir[0]),
        .I5(\bdatw[9]_INST_0_i_29_n_0 ),
        .O(\sr[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40440000)) 
    \sr[7]_i_6 
       (.I0(\badr[15]_INST_0_i_39_n_0 ),
        .I1(ir[0]),
        .I2(brdy),
        .I3(ir[1]),
        .I4(\badr[15]_INST_0_i_41_n_0 ),
        .I5(\sr[7]_i_13_n_0 ),
        .O(\sr[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F700FFFFFFFF)) 
    \sr[7]_i_7 
       (.I0(ir[0]),
        .I1(ir[7]),
        .I2(\sr[0]_i_20_n_0 ),
        .I3(\sr[0]_i_22_n_0 ),
        .I4(\sr[7]_i_14_n_0 ),
        .I5(\sr[0]_i_9_n_0 ),
        .O(\sr[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \sr[7]_i_8 
       (.I0(\sr[7]_i_15_n_0 ),
        .I1(\iv[14]_i_15_n_0 ),
        .I2(\sr[7]_i_16_n_0 ),
        .O(\sr[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0002000200020000)) 
    \sr[7]_i_9 
       (.I0(\sr[7]_i_17_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(ir[15]),
        .I5(ir[14]),
        .O(ctl_sr_upd));
  LUT6 #(
    .INIT(64'h55570003FFFF0003)) 
    \stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(ir[12]),
        .I2(ir[15]),
        .I3(\stat[0]_i_3_n_0 ),
        .I4(\stat[0]_i_4_n_0 ),
        .I5(\stat[0]_i_5_n_0 ),
        .O(\stat_reg[0] [0]));
  LUT6 #(
    .INIT(64'h8080808880808080)) 
    \stat[0]_i_10 
       (.I0(ir[11]),
        .I1(ir[7]),
        .I2(\stat[0]_i_19_n_0 ),
        .I3(\ccmd[4]_INST_0_i_21_n_0 ),
        .I4(crdy),
        .I5(ir[8]),
        .O(\stat[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFDAD)) 
    \stat[0]_i_11 
       (.I0(ir[14]),
        .I1(\sr_reg[15] [4]),
        .I2(ir[13]),
        .I3(\sr_reg[15] [5]),
        .O(\stat[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00ABABABABAA)) 
    \stat[0]_i_12 
       (.I0(\stat[0]_i_20_n_0 ),
        .I1(\stat[0]_i_21_n_0 ),
        .I2(\stat[0]_i_3_1 ),
        .I3(ir[1]),
        .I4(ir[0]),
        .I5(ir[3]),
        .O(\stat[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40550000)) 
    \stat[0]_i_13 
       (.I0(ir[13]),
        .I1(ir[11]),
        .I2(\sr_reg[15] [4]),
        .I3(ir[14]),
        .I4(\stat[0]_i_23_n_0 ),
        .I5(\stat[0]_i_3_0 ),
        .O(\stat[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0020200000)) 
    \stat[0]_i_14 
       (.I0(brdy),
        .I1(ir[10]),
        .I2(\stat[0]_i_25_n_0 ),
        .I3(ir[7]),
        .I4(ir[8]),
        .I5(\stat[0]_i_26_n_0 ),
        .O(\stat[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5EFFFEFE)) 
    \stat[0]_i_15 
       (.I0(ir[6]),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(brdy),
        .I4(ir[3]),
        .I5(\stat[0]_i_27_n_0 ),
        .O(\stat[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF3F370000)) 
    \stat[0]_i_16 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(\ccmd[4]_INST_0_i_17_n_0 ),
        .I5(\stat[0]_i_28_n_0 ),
        .O(\stat[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBBBBBBBBB)) 
    \stat[0]_i_17 
       (.I0(crdy),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .I2(ir[6]),
        .I3(\stat[0]_i_29_n_0 ),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(\stat[0]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \stat[0]_i_18 
       (.I0(ir[5]),
        .I1(ir[3]),
        .I2(ir[9]),
        .O(\stat[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000890000000000)) 
    \stat[0]_i_19 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(ir[4]),
        .I3(ir[3]),
        .I4(brdy),
        .I5(\stat[0]_i_30_n_0 ),
        .O(\stat[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h77337733773377F3)) 
    \stat[0]_i_2 
       (.I0(\stat[0]_i_6_n_0 ),
        .I1(ir[14]),
        .I2(\stat[0]_i_7_n_0 ),
        .I3(\stat[0]_i_8_n_0 ),
        .I4(\stat[0]_i_9_n_0 ),
        .I5(\stat[0]_i_10_n_0 ),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A80AA800000000)) 
    \stat[0]_i_20 
       (.I0(\stat[0]_i_31_n_0 ),
        .I1(ir[1]),
        .I2(Q[2]),
        .I3(ir[2]),
        .I4(\stat[0]_i_12_0 ),
        .I5(\ccmd[2]_INST_0_i_28_n_0 ),
        .O(\stat[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFDFFFFF)) 
    \stat[0]_i_21 
       (.I0(\iv[15]_i_30_n_0 ),
        .I1(\stat[0]_i_32_n_0 ),
        .I2(\bcmd[0]_INST_0_i_9_n_0 ),
        .I3(Q[2]),
        .I4(ir[2]),
        .I5(ir[0]),
        .O(\stat[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7F770000)) 
    \stat[0]_i_23 
       (.I0(brdy),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(\stat[0]_i_13_0 ),
        .I4(Q[0]),
        .I5(\stat[0]_i_13_1 ),
        .O(\stat[0]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[0]_i_25 
       (.I0(ir[9]),
        .I1(ir[6]),
        .O(\stat[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h2022)) 
    \stat[0]_i_26 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(crdy),
        .I3(ir[8]),
        .O(\stat[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \stat[0]_i_27 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[10]),
        .I3(ir[9]),
        .O(\stat[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h4400300000003000)) 
    \stat[0]_i_28 
       (.I0(ir[6]),
        .I1(ir[8]),
        .I2(crdy),
        .I3(\ccmd[3]_INST_0_i_14_n_0 ),
        .I4(ir[9]),
        .I5(brdy),
        .O(\stat[0]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[0]_i_29 
       (.I0(ir[9]),
        .I1(brdy),
        .O(\stat[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFCEFFFEFFFE)) 
    \stat[0]_i_3 
       (.I0(\stat[0]_i_11_n_0 ),
        .I1(Q[1]),
        .I2(ir[11]),
        .I3(\stat_reg[0]_2 ),
        .I4(\stat[0]_i_12_n_0 ),
        .I5(\stat[0]_i_13_n_0 ),
        .O(\stat[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \stat[0]_i_30 
       (.I0(ir[9]),
        .I1(ir[10]),
        .O(\stat[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0040004000404444)) 
    \stat[0]_i_31 
       (.I0(ir[8]),
        .I1(\bcmd[0]_INST_0_i_10_n_0 ),
        .I2(\stat[0]_i_34_n_0 ),
        .I3(ir[3]),
        .I4(Q[2]),
        .I5(ctl_fetch_inferred_i_18_n_0),
        .O(\stat[0]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \stat[0]_i_32 
       (.I0(ir[9]),
        .I1(ir[11]),
        .I2(ir[10]),
        .O(\stat[0]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[0]_i_34 
       (.I0(ir[0]),
        .I1(ir[1]),
        .O(\stat[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000540000)) 
    \stat[0]_i_4 
       (.I0(Q[2]),
        .I1(ir[13]),
        .I2(\stat[2]_i_11_n_0 ),
        .I3(Q[1]),
        .I4(ir[12]),
        .I5(ir[15]),
        .O(\stat[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDEDE0ED0)) 
    \stat[0]_i_5 
       (.I0(\sr_reg[15] [6]),
        .I1(ir[14]),
        .I2(ir[11]),
        .I3(\stat_reg[0]_3 ),
        .I4(ir[13]),
        .I5(Q[0]),
        .O(\stat[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FBF0F0FBFBF0F0)) 
    \stat[0]_i_6 
       (.I0(\stat[0]_i_14_n_0 ),
        .I1(\stat[0]_i_15_n_0 ),
        .I2(\stat[0]_i_16_n_0 ),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(\stat[2]_i_12_n_0 ),
        .O(\stat[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    \stat[0]_i_7 
       (.I0(ir[10]),
        .I1(ir[6]),
        .I2(brdy),
        .I3(ir[9]),
        .I4(ir[11]),
        .I5(\stat[0]_i_17_n_0 ),
        .O(\stat[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8C0C000CFFFFFFFF)) 
    \stat[0]_i_8 
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(ir[8]),
        .I3(brdy),
        .I4(\stat[0]_i_18_n_0 ),
        .I5(Q[0]),
        .O(\stat[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \stat[0]_i_9 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[7]),
        .I3(crdy),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\stat[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000DD000F00DD)) 
    \stat[1]_i_1 
       (.I0(\stat_reg[1]_1 ),
        .I1(\stat[1]_i_3_n_0 ),
        .I2(\stat[1]_i_4_n_0 ),
        .I3(ir[15]),
        .I4(ir[12]),
        .I5(Q[2]),
        .O(\stat_reg[0] [1]));
  LUT4 #(
    .INIT(16'h5574)) 
    \stat[1]_i_10 
       (.I0(Q[2]),
        .I1(ir[2]),
        .I2(ir[0]),
        .I3(ir[1]),
        .O(\stat[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFD0FFDDF0D0F0D0)) 
    \stat[1]_i_11 
       (.I0(\stat[1]_i_4_0 ),
        .I1(crdy),
        .I2(\stat[1]_i_14_n_0 ),
        .I3(\ccmd[3]_INST_0_i_13_n_0 ),
        .I4(\stat[1]_i_15_n_0 ),
        .I5(ir[9]),
        .O(\stat[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \stat[1]_i_12 
       (.I0(ir[10]),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(ir[11]),
        .I3(ir[7]),
        .I4(\stat[1]_i_16_n_0 ),
        .I5(\stat[1]_i_17_n_0 ),
        .O(\stat[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFDFFFCFFFFF)) 
    \stat[1]_i_14 
       (.I0(Q[0]),
        .I1(\stat[1]_i_18_n_0 ),
        .I2(crdy),
        .I3(Q[1]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\stat[1]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[1]_i_15 
       (.I0(ir[6]),
        .I1(Q[0]),
        .O(\stat[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000010)) 
    \stat[1]_i_16 
       (.I0(ctl_fetch_ext_fl_i_3_n_0),
        .I1(ir[6]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(brdy),
        .I5(\stat[1]_i_19_n_0 ),
        .O(\stat[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000004)) 
    \stat[1]_i_17 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(ir[11]),
        .I5(\sr_reg[15] [6]),
        .O(\stat[1]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \stat[1]_i_18 
       (.I0(ir[8]),
        .I1(ir[7]),
        .O(\stat[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000D700000000)) 
    \stat[1]_i_19 
       (.I0(\bcmd[0]_INST_0_i_9_n_0 ),
        .I1(ir[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\bcmd[2]_INST_0_i_4_n_0 ),
        .I5(\ccmd[2]_INST_0_i_24_n_0 ),
        .O(\stat[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0002020200020002)) 
    \stat[1]_i_3 
       (.I0(\stat[1]_i_6_n_0 ),
        .I1(ir[11]),
        .I2(\stat[1]_i_7_n_0 ),
        .I3(\stat_reg[1]_2 ),
        .I4(\stat[1]_i_9_n_0 ),
        .I5(\stat[1]_i_10_n_0 ),
        .O(\stat[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FB00FB000000FB)) 
    \stat[1]_i_4 
       (.I0(ir[11]),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(\stat[1]_i_11_n_0 ),
        .I3(\stat[1]_i_12_n_0 ),
        .I4(\stat[2]_i_11_n_0 ),
        .I5(Q[1]),
        .O(\stat[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FFF0FFF0F8F0F)) 
    \stat[1]_i_6 
       (.I0(ir[3]),
        .I1(rst_n_fl_reg_3),
        .I2(Q[1]),
        .I3(rst_n_fl_reg_2),
        .I4(ir[0]),
        .I5(ir[1]),
        .O(\stat[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8880AAAAAAAAAAAA)) 
    \stat[1]_i_7 
       (.I0(\stat[0]_i_11_n_0 ),
        .I1(ir[3]),
        .I2(ir[0]),
        .I3(ir[1]),
        .I4(rst_n_fl_reg_3),
        .I5(rst_n_fl_reg_2),
        .O(\stat[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF777F777F777F7FF)) 
    \stat[1]_i_9 
       (.I0(\iv[15]_i_17_0 ),
        .I1(rst_n_fl_reg_2),
        .I2(ir[1]),
        .I3(ir[2]),
        .I4(brdy),
        .I5(Q[2]),
        .O(\stat[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \stat[2]_i_10 
       (.I0(ir[7]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[6]),
        .I4(ir[5]),
        .I5(ir[4]),
        .O(\stat[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h1001)) 
    \stat[2]_i_11 
       (.I0(Q[0]),
        .I1(ir[13]),
        .I2(\stat_reg[0]_3 ),
        .I3(ir[11]),
        .O(\stat[2]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[2]_i_12 
       (.I0(ir[7]),
        .I1(ir[9]),
        .O(\stat[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \stat[2]_i_13 
       (.I0(ir[4]),
        .I1(ir[3]),
        .I2(ir[5]),
        .I3(ir[6]),
        .O(\stat[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4444F44F)) 
    \stat[2]_i_2 
       (.I0(\stat[2]_i_3_n_0 ),
        .I1(\stat[2]_i_4_n_0 ),
        .I2(Q[0]),
        .I3(ir[3]),
        .I4(\stat[2]_i_5_n_0 ),
        .I5(\stat[2]_i_6_n_0 ),
        .O(\stat_reg[0] [2]));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8A8A8)) 
    \stat[2]_i_3 
       (.I0(\stat_reg[1]_1 ),
        .I1(\stat[2]_i_7_n_0 ),
        .I2(\stat[2]_i_8_n_0 ),
        .I3(\stat_reg[2]_14 ),
        .I4(ir[2]),
        .I5(rst_n_fl_reg_2),
        .O(\stat[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[2]_i_4 
       (.I0(ir[15]),
        .I1(ir[12]),
        .O(\stat[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFFFFFFF)) 
    \stat[2]_i_5 
       (.I0(ir[11]),
        .I1(Q[1]),
        .I2(ir[10]),
        .I3(\bcmd[2]_INST_0_i_1_n_0 ),
        .I4(\ccmd[3]_INST_0_i_2_n_0 ),
        .I5(\stat[2]_i_10_n_0 ),
        .O(\stat[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h888A88888888888A)) 
    \stat[2]_i_6 
       (.I0(\stat[0]_i_4_n_0 ),
        .I1(\stat[2]_i_11_n_0 ),
        .I2(Q[0]),
        .I3(ir[14]),
        .I4(\sr_reg[15] [6]),
        .I5(ir[11]),
        .O(\stat[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAA2AAAAAAAAAAAA)) 
    \stat[2]_i_7 
       (.I0(\stat[0]_i_11_n_0 ),
        .I1(\stat[2]_i_12_n_0 ),
        .I2(ir[10]),
        .I3(ir[8]),
        .I4(rst_n_fl_reg_2),
        .I5(\stat[2]_i_13_n_0 ),
        .O(\stat[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEFFEEFFEEFFE0)) 
    \stat[2]_i_8 
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(Q[1]),
        .I3(ir[11]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\stat[2]_i_8_n_0 ));
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
    .INIT(8'h28)) 
    tout__1_carry__0_i_3
       (.I0(abus_0[4]),
        .I1(\stat_reg[2]_11 ),
        .I2(tout__1_carry_i_8_n_0),
        .O(\badr[6]_INST_0_i_1 [1]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__0_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(rst_n_fl_reg_7),
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
       (.I0(abus_0[4]),
        .I1(\stat_reg[2]_11 ),
        .I2(tout__1_carry_i_8_n_0),
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
        .O(\badr[15]_INST_0_i_1 [3]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__2_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .I2(abus_0[13]),
        .O(\badr[15]_INST_0_i_1 [2]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__2_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .I2(abus_0[12]),
        .O(\badr[15]_INST_0_i_1 [1]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__2_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .I2(abus_0[11]),
        .O(\badr[15]_INST_0_i_1 [0]));
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
        .I2(\badr[15]_INST_0_i_1 [2]),
        .I3(abus_0[14]),
        .O(\badr[14]_INST_0_i_1 [2]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__2_i_7
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .I2(abus_0[13]),
        .I3(\badr[15]_INST_0_i_1 [1]),
        .O(\badr[14]_INST_0_i_1 [1]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__2_i_8
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .I2(abus_0[12]),
        .I3(\badr[15]_INST_0_i_1 [0]),
        .O(\badr[14]_INST_0_i_1 [0]));
  LUT3 #(
    .INIT(8'hD7)) 
    tout__1_carry__3_i_1
       (.I0(abus_0[15]),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(tout__1_carry_i_8_n_0),
        .O(tout__1_carry_i_8_0));
  LUT3 #(
    .INIT(8'h96)) 
    tout__1_carry__3_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .O(\badr[15]_INST_0_i_1_0 [1]));
  LUT3 #(
    .INIT(8'hF9)) 
    tout__1_carry__3_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .O(\badr[15]_INST_0_i_1_0 [0]));
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
        .O(\stat_reg[1] [0]));
  LUT2 #(
    .INIT(4'hE)) 
    tout__1_carry_i_11
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .O(tout__1_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tout__1_carry_i_12
       (.I0(\stat_reg[2]_12 ),
        .I1(tout__1_carry_i_8_n_0),
        .O(tout__1_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    tout__1_carry_i_13
       (.I0(\stat_reg[1] [1]),
        .I1(tout__1_carry_i_11_n_0),
        .O(tout__1_carry_i_13_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\stat_reg[2]_13 ),
        .I2(abus_0[1]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h0AF3FFFF00000AF3)) 
    tout__1_carry_i_3
       (.I0(\stat_reg[1] [1]),
        .I1(\stat_reg[1] [0]),
        .I2(tout__1_carry_i_11_n_0),
        .I3(\sr_reg[15] [5]),
        .I4(tout__1_carry_i_12_n_0),
        .I5(abus_0[0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(rst_n_fl_reg_7),
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
        .I1(\stat_reg[2]_13 ),
        .I2(abus_0[1]),
        .I3(DI[0]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hF50C0AF30AF3F50C)) 
    tout__1_carry_i_7
       (.I0(\stat_reg[1] [1]),
        .I1(\stat_reg[1] [0]),
        .I2(tout__1_carry_i_11_n_0),
        .I3(\sr_reg[15] [5]),
        .I4(abus_0[0]),
        .I5(tout__1_carry_i_12_n_0),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h00FF0002)) 
    tout__1_carry_i_8
       (.I0(acmd),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(\stat_reg[1] [1]),
        .I3(\stat_reg[1] [0]),
        .I4(tout__1_carry_i_13_n_0),
        .O(tout__1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h000000000000AAF3)) 
    tout__1_carry_i_9
       (.I0(\ccmd[1]_INST_0_i_1_n_0 ),
        .I1(\ccmd[1]_INST_0_i_2_n_0 ),
        .I2(\ccmd[1]_INST_0_i_3_n_0 ),
        .I3(\ccmd[1]_INST_0_i_4_n_0 ),
        .I4(Q[1]),
        .I5(ctl_copro),
        .O(\stat_reg[1] [1]));
  LUT5 #(
    .INIT(32'h04000000)) 
    \tr[15]_i_1 
       (.I0(ctl_selc[0]),
        .I1(ctl_selc[4]),
        .I2(ctl_selc[1]),
        .I3(ctl_selc[3]),
        .I4(ctl_selc[2]),
        .O(cbus_sel_cr[1]));
endmodule

module mcbs_fsm
   (\stat_reg[2]_0 ,
    \stat_reg[1]_0 ,
    Q,
    brdy_0,
    \stat_reg[1]_1 ,
    ctl_irq_ack,
    crdy_0,
    brdy_1,
    \stat_reg[0]_0 ,
    \stat_reg[0]_1 ,
    \stat_reg[0]_2 ,
    \stat_reg[1]_2 ,
    brdy_2,
    \stat_reg[0]_3 ,
    \stat_reg[0]_4 ,
    \stat_reg[0]_5 ,
    \stat_reg[1]_3 ,
    brdy_3,
    \stat_reg[2]_1 ,
    \stat_reg[0]_6 ,
    \stat_reg[0]_7 ,
    \stat_reg[2]_2 ,
    \stat_reg[0]_8 ,
    \stat_reg[1]_4 ,
    \stat_reg[0]_9 ,
    \stat_reg[0]_10 ,
    SR,
    D,
    \stat_reg[1]_5 ,
    \stat_reg[1]_6 ,
    \stat_reg[1]_7 ,
    \stat_reg[1]_8 ,
    \bdatw[9]_INST_0_i_6 ,
    \bdatw[9]_INST_0_i_6_0 ,
    \bdatw[9]_INST_0_i_6_1 ,
    \bdatw[15]_INST_0_i_6_0 ,
    \eir_fl_reg[0] ,
    \bdatw[15]_INST_0_i_6_1 ,
    brdy,
    out,
    \eir_fl_reg[0]_0 ,
    crdy,
    fch_irq_req,
    \stat[1]_i_3 ,
    rgf_sr_flag,
    rst_n,
    \eir_fl_reg[0]_1 ,
    irq_vec,
    \eir_fl_reg[6] ,
    p_0_in,
    \stat_reg[2]_3 ,
    clk);
  output \stat_reg[2]_0 ;
  output \stat_reg[1]_0 ;
  output [2:0]Q;
  output brdy_0;
  output \stat_reg[1]_1 ;
  output ctl_irq_ack;
  output crdy_0;
  output brdy_1;
  output \stat_reg[0]_0 ;
  output \stat_reg[0]_1 ;
  output \stat_reg[0]_2 ;
  output \stat_reg[1]_2 ;
  output brdy_2;
  output \stat_reg[0]_3 ;
  output \stat_reg[0]_4 ;
  output \stat_reg[0]_5 ;
  output \stat_reg[1]_3 ;
  output brdy_3;
  output \stat_reg[2]_1 ;
  output \stat_reg[0]_6 ;
  output \stat_reg[0]_7 ;
  output \stat_reg[2]_2 ;
  output \stat_reg[0]_8 ;
  output \stat_reg[1]_4 ;
  output \stat_reg[0]_9 ;
  output \stat_reg[0]_10 ;
  output [0:0]SR;
  output [5:0]D;
  output \stat_reg[1]_5 ;
  output \stat_reg[1]_6 ;
  output \stat_reg[1]_7 ;
  output \stat_reg[1]_8 ;
  input \bdatw[9]_INST_0_i_6 ;
  input \bdatw[9]_INST_0_i_6_0 ;
  input \bdatw[9]_INST_0_i_6_1 ;
  input \bdatw[15]_INST_0_i_6_0 ;
  input \eir_fl_reg[0] ;
  input \bdatw[15]_INST_0_i_6_1 ;
  input brdy;
  input [9:0]out;
  input \eir_fl_reg[0]_0 ;
  input crdy;
  input fch_irq_req;
  input \stat[1]_i_3 ;
  input [1:0]rgf_sr_flag;
  input rst_n;
  input \eir_fl_reg[0]_1 ;
  input [5:0]irq_vec;
  input [5:0]\eir_fl_reg[6] ;
  input p_0_in;
  input [2:0]\stat_reg[2]_3 ;
  input clk;

  wire \<const1> ;
  wire [5:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \bdatw[15]_INST_0_i_20_n_0 ;
  wire \bdatw[15]_INST_0_i_6_0 ;
  wire \bdatw[15]_INST_0_i_6_1 ;
  wire \bdatw[9]_INST_0_i_6 ;
  wire \bdatw[9]_INST_0_i_6_0 ;
  wire \bdatw[9]_INST_0_i_6_1 ;
  wire brdy;
  wire brdy_0;
  wire brdy_1;
  wire brdy_2;
  wire brdy_3;
  wire clk;
  wire crdy;
  wire crdy_0;
  wire ctl_irq_ack;
  wire \eir_fl_reg[0] ;
  wire \eir_fl_reg[0]_0 ;
  wire \eir_fl_reg[0]_1 ;
  wire [5:0]\eir_fl_reg[6] ;
  wire fch_irq_req;
  wire [5:0]irq_vec;
  wire [9:0]out;
  wire p_0_in;
  wire [1:0]rgf_sr_flag;
  wire rst_n;
  wire \stat[1]_i_3 ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[0]_10 ;
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
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_2 ;
  wire [2:0]\stat_reg[2]_3 ;

  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_14 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\stat_reg[2]_1 ));
  LUT3 #(
    .INIT(8'h01)) 
    \badrx[15]_INST_0_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(out[9]),
        .O(\stat_reg[1]_7 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bcmd[2]_INST_0_i_5 
       (.I0(Q[0]),
        .I1(out[3]),
        .O(\stat_reg[0]_9 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_114 
       (.I0(Q[0]),
        .I1(out[4]),
        .O(\stat_reg[0]_4 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_16 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\stat_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h6000000000000000)) 
    \bdatw[15]_INST_0_i_20 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\bdatw[15]_INST_0_i_6_0 ),
        .I3(\eir_fl_reg[0] ),
        .I4(\bdatw[15]_INST_0_i_6_1 ),
        .I5(Q[0]),
        .O(\bdatw[15]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[15]_INST_0_i_51 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\stat_reg[0]_8 ));
  LUT6 #(
    .INIT(64'h00000000FFFF005D)) 
    \bdatw[15]_INST_0_i_6 
       (.I0(\stat_reg[1]_0 ),
        .I1(\bdatw[9]_INST_0_i_6 ),
        .I2(\bdatw[9]_INST_0_i_6_0 ),
        .I3(\bdatw[9]_INST_0_i_6_1 ),
        .I4(Q[2]),
        .I5(\bdatw[15]_INST_0_i_20_n_0 ),
        .O(\stat_reg[2]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[1]_INST_0_i_6 
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(\stat_reg[2]_2 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \ccmd[3]_INST_0_i_21 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(out[7]),
        .O(\stat_reg[1]_8 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ccmd[3]_INST_0_i_23 
       (.I0(Q[1]),
        .I1(crdy),
        .I2(Q[0]),
        .O(\stat_reg[1]_5 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \ccmd[3]_INST_0_i_7 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(crdy),
        .O(\stat_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h9998)) 
    \ccmd[4]_INST_0_i_18 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(out[5]),
        .I3(out[4]),
        .O(\stat_reg[1]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0_i_24 
       (.I0(Q[1]),
        .I1(out[1]),
        .O(\stat_reg[1]_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd[4]_INST_0_i_26 
       (.I0(Q[0]),
        .I1(crdy),
        .O(\stat_reg[0]_3 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ctl_fetch_inferred_i_31
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(out[6]),
        .I3(Q[1]),
        .O(\stat_reg[0]_7 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \eir_fl[15]_i_1 
       (.I0(ctl_irq_ack),
        .I1(rst_n),
        .I2(\eir_fl_reg[0]_1 ),
        .O(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[1]_i_1 
       (.I0(irq_vec[0]),
        .I1(ctl_irq_ack),
        .I2(\eir_fl_reg[6] [0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[2]_i_1 
       (.I0(irq_vec[1]),
        .I1(ctl_irq_ack),
        .I2(\eir_fl_reg[6] [1]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[3]_i_1 
       (.I0(irq_vec[2]),
        .I1(ctl_irq_ack),
        .I2(\eir_fl_reg[6] [2]),
        .O(D[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[4]_i_1 
       (.I0(irq_vec[3]),
        .I1(ctl_irq_ack),
        .I2(\eir_fl_reg[6] [3]),
        .O(D[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[5]_i_1 
       (.I0(irq_vec[4]),
        .I1(ctl_irq_ack),
        .I2(\eir_fl_reg[6] [4]),
        .O(D[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[6]_i_2 
       (.I0(irq_vec[5]),
        .I1(ctl_irq_ack),
        .I2(\eir_fl_reg[6] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \fch_irq_lev[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(brdy),
        .I4(\eir_fl_reg[0] ),
        .I5(\eir_fl_reg[0]_0 ),
        .O(ctl_irq_ack));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \sp[15]_i_20 
       (.I0(brdy),
        .I1(out[9]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(brdy_2));
  LUT2 #(
    .INIT(4'h2)) 
    \sr[0]_i_15 
       (.I0(Q[0]),
        .I1(out[9]),
        .O(\stat_reg[0]_10 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \sr[0]_i_24 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(out[7]),
        .I3(out[8]),
        .O(\stat_reg[0]_2 ));
  LUT4 #(
    .INIT(16'h10FF)) 
    \sr[0]_i_29 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rgf_sr_flag[0]),
        .I3(out[8]),
        .O(\stat_reg[1]_6 ));
  LUT3 #(
    .INIT(8'h01)) 
    \sr[0]_i_30 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(\stat_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hFFC4FFC4F4C4C4C4)) 
    \sr[0]_i_32 
       (.I0(brdy),
        .I1(out[1]),
        .I2(Q[0]),
        .I3(out[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(brdy_1));
  LUT5 #(
    .INIT(32'hF0F0F503)) 
    \stat[0]_i_22 
       (.I0(crdy),
        .I1(fch_irq_req),
        .I2(Q[0]),
        .I3(out[2]),
        .I4(Q[1]),
        .O(crdy_0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \stat[0]_i_24 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(out[6]),
        .I4(out[8]),
        .I5(rgf_sr_flag[1]),
        .O(\stat_reg[0]_5 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF2)) 
    \stat[0]_i_33 
       (.I0(brdy),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(out[2]),
        .I4(out[6]),
        .I5(\stat_reg[1]_1 ),
        .O(brdy_0));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[1]_i_13 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\stat_reg[1]_4 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \stat[1]_i_5 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(out[6]),
        .I3(Q[1]),
        .O(\stat_reg[0]_6 ));
  LUT6 #(
    .INIT(64'hFFEBFFFFFFEBFFAA)) 
    \stat[1]_i_8 
       (.I0(Q[0]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\stat[1]_i_3 ),
        .O(\stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFD0FFFFF0FFFF7F)) 
    \stat[2]_i_9 
       (.I0(brdy),
        .I1(Q[0]),
        .I2(out[1]),
        .I3(Q[2]),
        .I4(out[0]),
        .I5(Q[1]),
        .O(brdy_3));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\stat_reg[2]_3 [0]),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\stat_reg[2]_3 [1]),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\stat_reg[2]_3 [2]),
        .Q(Q[2]),
        .R(p_0_in));
endmodule

module mcbs_mem
   (\read_cyc_reg[1] ,
    \read_cyc_reg[0] ,
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
    bdatr,
    cbus_i,
    ctl_copro,
    bcmd,
    brdy,
    p_0_in,
    clk,
    \read_cyc_reg[0]_0 );
  output \read_cyc_reg[1] ;
  output [0:0]\read_cyc_reg[0] ;
  output \read_cyc_reg[1]_0 ;
  output \read_cyc_reg[1]_1 ;
  output \read_cyc_reg[1]_2 ;
  output \read_cyc_reg[1]_3 ;
  output \read_cyc_reg[1]_4 ;
  output \read_cyc_reg[1]_5 ;
  output \read_cyc_reg[1]_6 ;
  input [15:0]bdatr;
  input [14:0]cbus_i;
  input ctl_copro;
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
  wire \read_cyc_reg[1]_6 ;

  mcbs_mem_bctl bctl
       (.bcmd(bcmd),
        .bdatr(bdatr),
        .brdy(brdy),
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
        .\read_cyc_reg[1]_7 (\read_cyc_reg[1]_6 ));
endmodule

module mcbs_mem_bctl
   (\read_cyc_reg[1]_0 ,
    \read_cyc_reg[1]_1 ,
    \read_cyc_reg[1]_2 ,
    \read_cyc_reg[1]_3 ,
    \read_cyc_reg[1]_4 ,
    \read_cyc_reg[1]_5 ,
    \read_cyc_reg[1]_6 ,
    .cbus_i_7_sp_1(cbus_i_7_sn_1),
    .cbus_i_6_sp_1(cbus_i_6_sn_1),
    .cbus_i_5_sp_1(cbus_i_5_sn_1),
    .cbus_i_4_sp_1(cbus_i_4_sn_1),
    .cbus_i_3_sp_1(cbus_i_3_sn_1),
    .cbus_i_2_sp_1(cbus_i_2_sn_1),
    .cbus_i_1_sp_1(cbus_i_1_sn_1),
    .cbus_i_0_sp_1(cbus_i_0_sn_1),
    \read_cyc_reg[1]_7 ,
    \read_cyc_reg[0]_0 ,
    bdatr,
    cbus_i,
    ctl_copro,
    bcmd,
    brdy,
    p_0_in,
    clk,
    \read_cyc_reg[0]_1 );
  output \read_cyc_reg[1]_0 ;
  output \read_cyc_reg[1]_1 ;
  output \read_cyc_reg[1]_2 ;
  output \read_cyc_reg[1]_3 ;
  output \read_cyc_reg[1]_4 ;
  output \read_cyc_reg[1]_5 ;
  output \read_cyc_reg[1]_6 ;
  output \read_cyc_reg[1]_7 ;
  output \read_cyc_reg[0]_0 ;
  input [15:0]bdatr;
  input [14:0]cbus_i;
  input ctl_copro;
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
  wire \iv[0]_i_8_n_0 ;
  wire \iv[1]_i_10_n_0 ;
  wire \iv[2]_i_9_n_0 ;
  wire \iv[3]_i_9_n_0 ;
  wire \iv[4]_i_8_n_0 ;
  wire \iv[5]_i_9_n_0 ;
  wire \iv[6]_i_7_n_0 ;
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
  wire \read_cyc_reg[1]_7 ;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[0]_i_3 
       (.I0(\iv[0]_i_8_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[0]),
        .I3(bdatr[0]),
        .I4(read_cyc[2]),
        .I5(read_cyc[1]),
        .O(cbus_i_0_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[0]_i_8 
       (.I0(bdatr[8]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[0]),
        .I3(read_cyc[1]),
        .I4(read_cyc[2]),
        .O(\iv[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[10]_i_3 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[10]),
        .I3(cbus_i[10]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_4 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[11]_i_3 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[11]),
        .I3(cbus_i[11]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_3 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[12]_i_3 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[12]),
        .I3(cbus_i[12]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[13]_i_3 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[13]),
        .I3(cbus_i[13]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[14]_i_4 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[14]),
        .I3(cbus_i[14]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[15]_i_4 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .O(\read_cyc_reg[1]_7 ));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[1]_i_10 
       (.I0(bdatr[9]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[1]),
        .I3(read_cyc[1]),
        .I4(read_cyc[2]),
        .O(\iv[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[1]_i_3 
       (.I0(\iv[1]_i_10_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[1]),
        .I3(bdatr[1]),
        .I4(read_cyc[2]),
        .I5(read_cyc[1]),
        .O(cbus_i_1_sn_1));
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
       (.I0(\iv[4]_i_8_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[4]),
        .I3(bdatr[4]),
        .I4(read_cyc[2]),
        .I5(read_cyc[1]),
        .O(cbus_i_4_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[4]_i_8 
       (.I0(bdatr[12]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[4]),
        .I3(read_cyc[1]),
        .I4(read_cyc[2]),
        .O(\iv[4]_i_8_n_0 ));
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
       (.I0(\iv[6]_i_7_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[6]),
        .I3(bdatr[6]),
        .I4(read_cyc[2]),
        .I5(read_cyc[1]),
        .O(cbus_i_6_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[6]_i_7 
       (.I0(bdatr[14]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[6]),
        .I3(read_cyc[1]),
        .I4(read_cyc[2]),
        .O(\iv[6]_i_7_n_0 ));
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
        .O(\read_cyc_reg[1]_6 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[9]_i_3 
       (.I0(read_cyc[1]),
        .I1(read_cyc[2]),
        .I2(bdatr[9]),
        .I3(cbus_i[9]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_5 ));
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

module mcbs_rgf
   (out,
    \grn_reg[15] ,
    \sr_reg[15] ,
    p_0_in_0,
    \pc_reg[15] ,
    \iv_reg[0] ,
    \tr_reg[15] ,
    \sr_reg[6] ,
    \stat_reg[0] ,
    \sr_reg[6]_0 ,
    \sr_reg[6]_1 ,
    \sr_reg[6]_2 ,
    irq_0,
    \sr_reg[7] ,
    \sr_reg[7]_0 ,
    \sr_reg[4] ,
    \sr_reg[7]_1 ,
    \sr_reg[7]_2 ,
    \sr_reg[6]_3 ,
    abus_0,
    \grn_reg[4] ,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    \grn_reg[15]_2 ,
    \grn_reg[4]_0 ,
    \sp_reg[14] ,
    \sp_reg[11] ,
    \sp_reg[10] ,
    \sp_reg[4] ,
    \sp_reg[2] ,
    \sp_reg[1] ,
    \sp_reg[15] ,
    \sp_reg[13] ,
    \sp_reg[12] ,
    \sp_reg[9] ,
    \sp_reg[8] ,
    \sp_reg[7] ,
    \sp_reg[6] ,
    \sp_reg[5] ,
    \sp_reg[3] ,
    \stat_reg[2] ,
    \stat_reg[2]_0 ,
    p_0_in,
    \tr_reg[1] ,
    \stat_reg[2]_1 ,
    \tr_reg[2] ,
    \stat_reg[2]_2 ,
    \tr_reg[3] ,
    \stat_reg[2]_3 ,
    \tr_reg[4] ,
    \stat_reg[2]_4 ,
    \stat_reg[2]_5 ,
    \stat_reg[2]_6 ,
    \stat_reg[2]_7 ,
    \stat_reg[2]_8 ,
    \stat_reg[2]_9 ,
    \stat_reg[2]_10 ,
    \stat_reg[2]_11 ,
    \stat_reg[2]_12 ,
    \stat_reg[2]_13 ,
    \stat_reg[2]_14 ,
    \stat_reg[2]_15 ,
    \stat_reg[2]_16 ,
    \stat_reg[2]_17 ,
    \stat_reg[2]_18 ,
    \stat_reg[2]_19 ,
    \stat_reg[2]_20 ,
    \sp_reg[0] ,
    \pc_reg[15]_0 ,
    fch_pc,
    \pc_reg[14] ,
    \pc_reg[13] ,
    \pc_reg[12] ,
    \pc_reg[11] ,
    \pc_reg[10] ,
    \pc_reg[9] ,
    \pc_reg[8] ,
    \pc_reg[7] ,
    \pc_reg[6] ,
    \pc_reg[5] ,
    \pc_reg[4] ,
    \pc_reg[3] ,
    \pc_reg[2] ,
    \pc_reg[1] ,
    \pc_reg[0] ,
    \iv[15]_i_35 ,
    \sr_reg[6]_4 ,
    \badr[14]_INST_0_i_1 ,
    \badr[12]_INST_0_i_1 ,
    \sr_reg[6]_5 ,
    \badr[3]_INST_0_i_1 ,
    \stat_reg[1] ,
    \iv[14]_i_35 ,
    \sr_reg[6]_6 ,
    \stat_reg[1]_0 ,
    \iv[15]_i_51 ,
    \iv[15]_i_58 ,
    \sr_reg[6]_7 ,
    \sr[6]_i_9 ,
    \iv[11]_i_23 ,
    \bdatw[9]_INST_0_i_2 ,
    \iv[13]_i_25 ,
    \badr[5]_INST_0_i_1 ,
    \iv[8]_i_25 ,
    \bdatw[12]_INST_0_i_2 ,
    \badr[7]_INST_0_i_1 ,
    \badr[3]_INST_0_i_1_0 ,
    \iv[15]_i_57 ,
    \iv[8]_i_21 ,
    \badr[4]_INST_0_i_1 ,
    \sr_reg[6]_8 ,
    \iv[14]_i_28 ,
    \bdatw[9]_INST_0_i_2_0 ,
    \sr_reg[6]_9 ,
    \iv[2]_i_14 ,
    \iv[15]_i_56 ,
    \iv[14]_i_28_0 ,
    \iv[15]_i_35_0 ,
    \iv[8]_i_28 ,
    \iv[7]_i_16 ,
    \stat_reg[1]_1 ,
    \sr_reg[6]_10 ,
    \iv[13]_i_31 ,
    \bdatw[9]_INST_0_i_2_1 ,
    \sr_reg[6]_11 ,
    \iv[11]_i_30 ,
    \badr[11]_INST_0_i_1 ,
    \sr_reg[6]_12 ,
    \badr[4]_INST_0_i_1_0 ,
    abus_o,
    \iv[12]_i_20 ,
    \iv[15]_i_59 ,
    \iv[15]_i_54 ,
    \iv[13]_i_25_0 ,
    \stat_reg[1]_2 ,
    \iv[12]_i_20_0 ,
    \iv[14]_i_35_0 ,
    \iv[12]_i_19 ,
    \iv[15]_i_35_1 ,
    \iv[15]_i_51_0 ,
    \iv[13]_i_25_1 ,
    \iv[12]_i_20_1 ,
    \iv[14]_i_27 ,
    \bdatw[9]_INST_0_i_2_2 ,
    \bdatw[9]_INST_0_i_2_3 ,
    \iv[15]_i_52 ,
    \badr[8]_INST_0_i_1 ,
    \sr_reg[6]_13 ,
    \iv[15]_i_35_2 ,
    \sr_reg[6]_14 ,
    \iv[13]_i_21 ,
    \badr[13]_INST_0_i_1 ,
    \iv[14]_i_31 ,
    \iv[15]_i_52_0 ,
    \sr_reg[6]_15 ,
    \badr[15]_INST_0_i_1 ,
    \stat_reg[2]_21 ,
    fch_irq_req,
    \sr_reg[2] ,
    \sr_reg[6]_16 ,
    \iv[15]_i_33 ,
    p_0_in_1,
    clk,
    \sr_reg[1] ,
    \sr_reg[10] ,
    \sr_reg[7]_3 ,
    \sr_reg[6]_17 ,
    \sr_reg[5] ,
    \sr_reg[4]_0 ,
    \sr_reg[3] ,
    \sr_reg[2]_0 ,
    \stat_reg[1]_3 ,
    \badr[15]_INST_0_i_52 ,
    Q,
    irq,
    irq_lev,
    rst_n,
    ctl_sela,
    .abus_o_4_sp_1(abus_o_4_sn_1),
    \badr[9]_INST_0_i_1 ,
    .abus_o_15_sp_1(abus_o_15_sn_1),
    ctl_sp_inc,
    ctl_sp_dec,
    \bdatw[8]_INST_0_i_2 ,
    \iv[15]_i_62 ,
    \iv[15]_i_52_1 ,
    ctl_selb,
    \pc[15]_i_3 ,
    ctl_fetch_ext,
    \iv[14]_i_8 ,
    \iv[14]_i_8_0 ,
    \sr[4]_i_23 ,
    \iv[15]_i_5 ,
    \sr[4]_i_23_0 ,
    \iv[2]_i_2 ,
    \iv[2]_i_2_0 ,
    \iv[10]_i_2 ,
    \iv[2]_i_2_1 ,
    \sr[6]_i_3 ,
    \iv[13]_i_5 ,
    \iv[15]_i_5_0 ,
    \iv[2]_i_2_2 ,
    \iv[12]_i_5 ,
    ctl_copro,
    \iv[8]_i_14 ,
    \iv[0]_i_5 ,
    \iv[15]_i_52_2 ,
    D,
    \sp_reg[15]_0 ,
    cbus_sel_cr,
    \tr_reg[15]_0 ,
    E,
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
  output [1:0]out;
  output [1:0]\grn_reg[15] ;
  output [11:0]\sr_reg[15] ;
  output p_0_in_0;
  output [15:0]\pc_reg[15] ;
  output [0:0]\iv_reg[0] ;
  output [15:0]\tr_reg[15] ;
  output \sr_reg[6] ;
  output \stat_reg[0] ;
  output \sr_reg[6]_0 ;
  output \sr_reg[6]_1 ;
  output \sr_reg[6]_2 ;
  output irq_0;
  output \sr_reg[7] ;
  output \sr_reg[7]_0 ;
  output \sr_reg[4] ;
  output \sr_reg[7]_1 ;
  output \sr_reg[7]_2 ;
  output \sr_reg[6]_3 ;
  output [15:0]abus_0;
  output \grn_reg[4] ;
  output \grn_reg[15]_0 ;
  output \grn_reg[15]_1 ;
  output \grn_reg[15]_2 ;
  output \grn_reg[4]_0 ;
  output \sp_reg[14] ;
  output \sp_reg[11] ;
  output \sp_reg[10] ;
  output \sp_reg[4] ;
  output \sp_reg[2] ;
  output \sp_reg[1] ;
  output \sp_reg[15] ;
  output \sp_reg[13] ;
  output \sp_reg[12] ;
  output \sp_reg[9] ;
  output \sp_reg[8] ;
  output \sp_reg[7] ;
  output \sp_reg[6] ;
  output \sp_reg[5] ;
  output \sp_reg[3] ;
  output \stat_reg[2] ;
  output \stat_reg[2]_0 ;
  output [3:0]p_0_in;
  output \tr_reg[1] ;
  output \stat_reg[2]_1 ;
  output \tr_reg[2] ;
  output \stat_reg[2]_2 ;
  output \tr_reg[3] ;
  output \stat_reg[2]_3 ;
  output \tr_reg[4] ;
  output \stat_reg[2]_4 ;
  output \stat_reg[2]_5 ;
  output \stat_reg[2]_6 ;
  output \stat_reg[2]_7 ;
  output \stat_reg[2]_8 ;
  output \stat_reg[2]_9 ;
  output \stat_reg[2]_10 ;
  output \stat_reg[2]_11 ;
  output \stat_reg[2]_12 ;
  output \stat_reg[2]_13 ;
  output \stat_reg[2]_14 ;
  output \stat_reg[2]_15 ;
  output \stat_reg[2]_16 ;
  output \stat_reg[2]_17 ;
  output \stat_reg[2]_18 ;
  output \stat_reg[2]_19 ;
  output \stat_reg[2]_20 ;
  output \sp_reg[0] ;
  output \pc_reg[15]_0 ;
  output [15:0]fch_pc;
  output \pc_reg[14] ;
  output \pc_reg[13] ;
  output \pc_reg[12] ;
  output \pc_reg[11] ;
  output \pc_reg[10] ;
  output \pc_reg[9] ;
  output \pc_reg[8] ;
  output \pc_reg[7] ;
  output \pc_reg[6] ;
  output \pc_reg[5] ;
  output \pc_reg[4] ;
  output \pc_reg[3] ;
  output \pc_reg[2] ;
  output \pc_reg[1] ;
  output \pc_reg[0] ;
  output \iv[15]_i_35 ;
  output \sr_reg[6]_4 ;
  output \badr[14]_INST_0_i_1 ;
  output \badr[12]_INST_0_i_1 ;
  output \sr_reg[6]_5 ;
  output \badr[3]_INST_0_i_1 ;
  output \stat_reg[1] ;
  output \iv[14]_i_35 ;
  output \sr_reg[6]_6 ;
  output \stat_reg[1]_0 ;
  output \iv[15]_i_51 ;
  output \iv[15]_i_58 ;
  output \sr_reg[6]_7 ;
  output \sr[6]_i_9 ;
  output \iv[11]_i_23 ;
  output \bdatw[9]_INST_0_i_2 ;
  output \iv[13]_i_25 ;
  output \badr[5]_INST_0_i_1 ;
  output \iv[8]_i_25 ;
  output \bdatw[12]_INST_0_i_2 ;
  output \badr[7]_INST_0_i_1 ;
  output \badr[3]_INST_0_i_1_0 ;
  output \iv[15]_i_57 ;
  output \iv[8]_i_21 ;
  output \badr[4]_INST_0_i_1 ;
  output \sr_reg[6]_8 ;
  output \iv[14]_i_28 ;
  output \bdatw[9]_INST_0_i_2_0 ;
  output \sr_reg[6]_9 ;
  output \iv[2]_i_14 ;
  output \iv[15]_i_56 ;
  output \iv[14]_i_28_0 ;
  output \iv[15]_i_35_0 ;
  output \iv[8]_i_28 ;
  output \iv[7]_i_16 ;
  output \stat_reg[1]_1 ;
  output \sr_reg[6]_10 ;
  output \iv[13]_i_31 ;
  output \bdatw[9]_INST_0_i_2_1 ;
  output \sr_reg[6]_11 ;
  output \iv[11]_i_30 ;
  output \badr[11]_INST_0_i_1 ;
  output \sr_reg[6]_12 ;
  output \badr[4]_INST_0_i_1_0 ;
  output [15:0]abus_o;
  output \iv[12]_i_20 ;
  output \iv[15]_i_59 ;
  output \iv[15]_i_54 ;
  output \iv[13]_i_25_0 ;
  output \stat_reg[1]_2 ;
  output \iv[12]_i_20_0 ;
  output \iv[14]_i_35_0 ;
  output \iv[12]_i_19 ;
  output \iv[15]_i_35_1 ;
  output \iv[15]_i_51_0 ;
  output \iv[13]_i_25_1 ;
  output \iv[12]_i_20_1 ;
  output \iv[14]_i_27 ;
  output \bdatw[9]_INST_0_i_2_2 ;
  output \bdatw[9]_INST_0_i_2_3 ;
  output \iv[15]_i_52 ;
  output \badr[8]_INST_0_i_1 ;
  output \sr_reg[6]_13 ;
  output \iv[15]_i_35_2 ;
  output \sr_reg[6]_14 ;
  output \iv[13]_i_21 ;
  output \badr[13]_INST_0_i_1 ;
  output \iv[14]_i_31 ;
  output \iv[15]_i_52_0 ;
  output \sr_reg[6]_15 ;
  output \badr[15]_INST_0_i_1 ;
  output \stat_reg[2]_21 ;
  output fch_irq_req;
  output \sr_reg[2] ;
  output \sr_reg[6]_16 ;
  output \iv[15]_i_33 ;
  input [4:0]p_0_in_1;
  input clk;
  input \sr_reg[1] ;
  input \sr_reg[10] ;
  input \sr_reg[7]_3 ;
  input \sr_reg[6]_17 ;
  input \sr_reg[5] ;
  input \sr_reg[4]_0 ;
  input \sr_reg[3] ;
  input \sr_reg[2]_0 ;
  input \stat_reg[1]_3 ;
  input [6:0]\badr[15]_INST_0_i_52 ;
  input [0:0]Q;
  input irq;
  input [1:0]irq_lev;
  input rst_n;
  input [4:0]ctl_sela;
  input \badr[9]_INST_0_i_1 ;
  input ctl_sp_inc;
  input ctl_sp_dec;
  input \bdatw[8]_INST_0_i_2 ;
  input \iv[15]_i_62 ;
  input \iv[15]_i_52_1 ;
  input [1:0]ctl_selb;
  input \pc[15]_i_3 ;
  input ctl_fetch_ext;
  input \iv[14]_i_8 ;
  input \iv[14]_i_8_0 ;
  input \sr[4]_i_23 ;
  input \iv[15]_i_5 ;
  input \sr[4]_i_23_0 ;
  input [1:0]\iv[2]_i_2 ;
  input \iv[2]_i_2_0 ;
  input \iv[10]_i_2 ;
  input \iv[2]_i_2_1 ;
  input \sr[6]_i_3 ;
  input \iv[13]_i_5 ;
  input \iv[15]_i_5_0 ;
  input \iv[2]_i_2_2 ;
  input \iv[12]_i_5 ;
  input ctl_copro;
  input \iv[8]_i_14 ;
  input \iv[0]_i_5 ;
  input [0:0]\iv[15]_i_52_2 ;
  input [15:0]D;
  input [15:0]\sp_reg[15]_0 ;
  input [1:0]cbus_sel_cr;
  input [15:0]\tr_reg[15]_0 ;
  input [0:0]E;
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
  input abus_o_4_sn_1;
  input abus_o_15_sn_1;

  wire [15:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [15:0]abus_0;
  wire [15:0]abus_o;
  wire abus_o_15_sn_1;
  wire abus_o_4_sn_1;
  wire \badr[11]_INST_0_i_1 ;
  wire \badr[12]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_1 ;
  wire \badr[14]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_1 ;
  wire [6:0]\badr[15]_INST_0_i_52 ;
  wire \badr[3]_INST_0_i_1 ;
  wire \badr[3]_INST_0_i_1_0 ;
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_1_0 ;
  wire \badr[5]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[8]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_1 ;
  wire bank02_n_0;
  wire bank02_n_1;
  wire bank02_n_10;
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
  wire bank02_n_11;
  wire bank02_n_110;
  wire bank02_n_111;
  wire bank02_n_112;
  wire bank02_n_113;
  wire bank02_n_114;
  wire bank02_n_115;
  wire bank02_n_116;
  wire bank02_n_117;
  wire bank02_n_118;
  wire bank02_n_119;
  wire bank02_n_12;
  wire bank02_n_120;
  wire bank02_n_121;
  wire bank02_n_122;
  wire bank02_n_123;
  wire bank02_n_124;
  wire bank02_n_125;
  wire bank02_n_126;
  wire bank02_n_127;
  wire bank02_n_129;
  wire bank02_n_13;
  wire bank02_n_130;
  wire bank02_n_131;
  wire bank02_n_132;
  wire bank02_n_133;
  wire bank02_n_134;
  wire bank02_n_135;
  wire bank02_n_136;
  wire bank02_n_137;
  wire bank02_n_138;
  wire bank02_n_139;
  wire bank02_n_14;
  wire bank02_n_140;
  wire bank02_n_141;
  wire bank02_n_142;
  wire bank02_n_143;
  wire bank02_n_144;
  wire bank02_n_145;
  wire bank02_n_146;
  wire bank02_n_147;
  wire bank02_n_148;
  wire bank02_n_149;
  wire bank02_n_15;
  wire bank02_n_150;
  wire bank02_n_151;
  wire bank02_n_152;
  wire bank02_n_153;
  wire bank02_n_154;
  wire bank02_n_155;
  wire bank02_n_156;
  wire bank02_n_157;
  wire bank02_n_158;
  wire bank02_n_159;
  wire bank02_n_16;
  wire bank02_n_160;
  wire bank02_n_161;
  wire bank02_n_162;
  wire bank02_n_163;
  wire bank02_n_164;
  wire bank02_n_165;
  wire bank02_n_166;
  wire bank02_n_167;
  wire bank02_n_168;
  wire bank02_n_169;
  wire bank02_n_17;
  wire bank02_n_170;
  wire bank02_n_171;
  wire bank02_n_172;
  wire bank02_n_173;
  wire bank02_n_174;
  wire bank02_n_175;
  wire bank02_n_18;
  wire bank02_n_19;
  wire bank02_n_2;
  wire bank02_n_20;
  wire bank02_n_21;
  wire bank02_n_22;
  wire bank02_n_23;
  wire bank02_n_24;
  wire bank02_n_25;
  wire bank02_n_26;
  wire bank02_n_27;
  wire bank02_n_28;
  wire bank02_n_29;
  wire bank02_n_3;
  wire bank02_n_30;
  wire bank02_n_31;
  wire bank02_n_32;
  wire bank02_n_33;
  wire bank02_n_34;
  wire bank02_n_35;
  wire bank02_n_36;
  wire bank02_n_37;
  wire bank02_n_38;
  wire bank02_n_39;
  wire bank02_n_4;
  wire bank02_n_40;
  wire bank02_n_41;
  wire bank02_n_42;
  wire bank02_n_43;
  wire bank02_n_44;
  wire bank02_n_45;
  wire bank02_n_46;
  wire bank02_n_47;
  wire bank02_n_48;
  wire bank02_n_49;
  wire bank02_n_5;
  wire bank02_n_50;
  wire bank02_n_51;
  wire bank02_n_52;
  wire bank02_n_53;
  wire bank02_n_54;
  wire bank02_n_55;
  wire bank02_n_56;
  wire bank02_n_57;
  wire bank02_n_58;
  wire bank02_n_59;
  wire bank02_n_6;
  wire bank02_n_60;
  wire bank02_n_61;
  wire bank02_n_62;
  wire bank02_n_63;
  wire bank02_n_64;
  wire bank02_n_65;
  wire bank02_n_66;
  wire bank02_n_67;
  wire bank02_n_68;
  wire bank02_n_69;
  wire bank02_n_7;
  wire bank02_n_70;
  wire bank02_n_71;
  wire bank02_n_72;
  wire bank02_n_73;
  wire bank02_n_74;
  wire bank02_n_75;
  wire bank02_n_76;
  wire bank02_n_77;
  wire bank02_n_78;
  wire bank02_n_79;
  wire bank02_n_8;
  wire bank02_n_81;
  wire bank02_n_82;
  wire bank02_n_83;
  wire bank02_n_84;
  wire bank02_n_85;
  wire bank02_n_86;
  wire bank02_n_87;
  wire bank02_n_88;
  wire bank02_n_89;
  wire bank02_n_9;
  wire bank02_n_90;
  wire bank02_n_92;
  wire bank02_n_93;
  wire bank02_n_94;
  wire bank02_n_95;
  wire bank02_n_96;
  wire bank02_n_97;
  wire bank02_n_98;
  wire bank02_n_99;
  wire bank13_n_0;
  wire bank13_n_1;
  wire bank13_n_10;
  wire bank13_n_100;
  wire bank13_n_101;
  wire bank13_n_102;
  wire bank13_n_103;
  wire bank13_n_104;
  wire bank13_n_105;
  wire bank13_n_106;
  wire bank13_n_107;
  wire bank13_n_108;
  wire bank13_n_109;
  wire bank13_n_11;
  wire bank13_n_110;
  wire bank13_n_111;
  wire bank13_n_112;
  wire bank13_n_113;
  wire bank13_n_114;
  wire bank13_n_115;
  wire bank13_n_116;
  wire bank13_n_117;
  wire bank13_n_118;
  wire bank13_n_119;
  wire bank13_n_12;
  wire bank13_n_120;
  wire bank13_n_121;
  wire bank13_n_122;
  wire bank13_n_123;
  wire bank13_n_124;
  wire bank13_n_125;
  wire bank13_n_126;
  wire bank13_n_13;
  wire bank13_n_137;
  wire bank13_n_139;
  wire bank13_n_14;
  wire bank13_n_140;
  wire bank13_n_142;
  wire bank13_n_143;
  wire bank13_n_145;
  wire bank13_n_147;
  wire bank13_n_148;
  wire bank13_n_15;
  wire bank13_n_151;
  wire bank13_n_152;
  wire bank13_n_156;
  wire bank13_n_157;
  wire bank13_n_158;
  wire bank13_n_159;
  wire bank13_n_16;
  wire bank13_n_160;
  wire bank13_n_161;
  wire bank13_n_162;
  wire bank13_n_163;
  wire bank13_n_164;
  wire bank13_n_165;
  wire bank13_n_166;
  wire bank13_n_167;
  wire bank13_n_168;
  wire bank13_n_169;
  wire bank13_n_17;
  wire bank13_n_170;
  wire bank13_n_172;
  wire bank13_n_173;
  wire bank13_n_175;
  wire bank13_n_176;
  wire bank13_n_177;
  wire bank13_n_178;
  wire bank13_n_179;
  wire bank13_n_18;
  wire bank13_n_180;
  wire bank13_n_181;
  wire bank13_n_182;
  wire bank13_n_183;
  wire bank13_n_184;
  wire bank13_n_185;
  wire bank13_n_186;
  wire bank13_n_187;
  wire bank13_n_188;
  wire bank13_n_189;
  wire bank13_n_19;
  wire bank13_n_190;
  wire bank13_n_191;
  wire bank13_n_192;
  wire bank13_n_2;
  wire bank13_n_20;
  wire bank13_n_21;
  wire bank13_n_22;
  wire bank13_n_23;
  wire bank13_n_24;
  wire bank13_n_25;
  wire bank13_n_26;
  wire bank13_n_27;
  wire bank13_n_28;
  wire bank13_n_29;
  wire bank13_n_3;
  wire bank13_n_30;
  wire bank13_n_31;
  wire bank13_n_32;
  wire bank13_n_33;
  wire bank13_n_34;
  wire bank13_n_35;
  wire bank13_n_36;
  wire bank13_n_37;
  wire bank13_n_38;
  wire bank13_n_39;
  wire bank13_n_4;
  wire bank13_n_40;
  wire bank13_n_41;
  wire bank13_n_42;
  wire bank13_n_43;
  wire bank13_n_44;
  wire bank13_n_45;
  wire bank13_n_46;
  wire bank13_n_47;
  wire bank13_n_48;
  wire bank13_n_49;
  wire bank13_n_5;
  wire bank13_n_50;
  wire bank13_n_51;
  wire bank13_n_52;
  wire bank13_n_53;
  wire bank13_n_54;
  wire bank13_n_55;
  wire bank13_n_56;
  wire bank13_n_57;
  wire bank13_n_58;
  wire bank13_n_59;
  wire bank13_n_6;
  wire bank13_n_60;
  wire bank13_n_61;
  wire bank13_n_62;
  wire bank13_n_63;
  wire bank13_n_64;
  wire bank13_n_65;
  wire bank13_n_66;
  wire bank13_n_67;
  wire bank13_n_68;
  wire bank13_n_69;
  wire bank13_n_7;
  wire bank13_n_70;
  wire bank13_n_71;
  wire bank13_n_72;
  wire bank13_n_73;
  wire bank13_n_74;
  wire bank13_n_75;
  wire bank13_n_76;
  wire bank13_n_77;
  wire bank13_n_78;
  wire bank13_n_8;
  wire bank13_n_80;
  wire bank13_n_81;
  wire bank13_n_82;
  wire bank13_n_83;
  wire bank13_n_84;
  wire bank13_n_85;
  wire bank13_n_86;
  wire bank13_n_87;
  wire bank13_n_88;
  wire bank13_n_89;
  wire bank13_n_9;
  wire bank13_n_91;
  wire bank13_n_92;
  wire bank13_n_93;
  wire bank13_n_94;
  wire bank13_n_95;
  wire bank13_n_96;
  wire bank13_n_97;
  wire bank13_n_98;
  wire bank13_n_99;
  wire \bdatw[12]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[9]_INST_0_i_2 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_2_1 ;
  wire \bdatw[9]_INST_0_i_2_2 ;
  wire \bdatw[9]_INST_0_i_2_3 ;
  wire [1:0]cbus_sel_cr;
  wire clk;
  wire ctl_copro;
  wire ctl_fetch_ext;
  wire [4:0]ctl_sela;
  wire [1:0]ctl_selb;
  wire ctl_sp_dec;
  wire ctl_sp_inc;
  wire fch_irq_req;
  wire [15:0]fch_pc;
  wire [1:0]\grn_reg[15] ;
  wire \grn_reg[15]_0 ;
  wire \grn_reg[15]_1 ;
  wire [0:0]\grn_reg[15]_10 ;
  wire [0:0]\grn_reg[15]_11 ;
  wire [0:0]\grn_reg[15]_12 ;
  wire [0:0]\grn_reg[15]_13 ;
  wire [0:0]\grn_reg[15]_14 ;
  wire [0:0]\grn_reg[15]_15 ;
  wire [0:0]\grn_reg[15]_16 ;
  wire [0:0]\grn_reg[15]_17 ;
  wire \grn_reg[15]_2 ;
  wire [0:0]\grn_reg[15]_3 ;
  wire [0:0]\grn_reg[15]_4 ;
  wire [0:0]\grn_reg[15]_5 ;
  wire [0:0]\grn_reg[15]_6 ;
  wire [0:0]\grn_reg[15]_7 ;
  wire [0:0]\grn_reg[15]_8 ;
  wire [0:0]\grn_reg[15]_9 ;
  wire \grn_reg[4] ;
  wire \grn_reg[4]_0 ;
  wire irq;
  wire irq_0;
  wire [1:0]irq_lev;
  wire \iv[0]_i_5 ;
  wire \iv[10]_i_2 ;
  wire \iv[11]_i_23 ;
  wire \iv[11]_i_30 ;
  wire \iv[12]_i_19 ;
  wire \iv[12]_i_20 ;
  wire \iv[12]_i_20_0 ;
  wire \iv[12]_i_20_1 ;
  wire \iv[12]_i_5 ;
  wire \iv[13]_i_21 ;
  wire \iv[13]_i_25 ;
  wire \iv[13]_i_25_0 ;
  wire \iv[13]_i_25_1 ;
  wire \iv[13]_i_31 ;
  wire \iv[13]_i_5 ;
  wire \iv[14]_i_27 ;
  wire \iv[14]_i_28 ;
  wire \iv[14]_i_28_0 ;
  wire \iv[14]_i_31 ;
  wire \iv[14]_i_35 ;
  wire \iv[14]_i_35_0 ;
  wire \iv[14]_i_8 ;
  wire \iv[14]_i_8_0 ;
  wire \iv[15]_i_33 ;
  wire \iv[15]_i_35 ;
  wire \iv[15]_i_35_0 ;
  wire \iv[15]_i_35_1 ;
  wire \iv[15]_i_35_2 ;
  wire \iv[15]_i_5 ;
  wire \iv[15]_i_51 ;
  wire \iv[15]_i_51_0 ;
  wire \iv[15]_i_52 ;
  wire \iv[15]_i_52_0 ;
  wire \iv[15]_i_52_1 ;
  wire [0:0]\iv[15]_i_52_2 ;
  wire \iv[15]_i_54 ;
  wire \iv[15]_i_56 ;
  wire \iv[15]_i_57 ;
  wire \iv[15]_i_58 ;
  wire \iv[15]_i_59 ;
  wire \iv[15]_i_5_0 ;
  wire \iv[15]_i_62 ;
  wire \iv[2]_i_14 ;
  wire [1:0]\iv[2]_i_2 ;
  wire \iv[2]_i_2_0 ;
  wire \iv[2]_i_2_1 ;
  wire \iv[2]_i_2_2 ;
  wire \iv[7]_i_16 ;
  wire \iv[8]_i_14 ;
  wire \iv[8]_i_21 ;
  wire \iv[8]_i_25 ;
  wire \iv[8]_i_28 ;
  wire [0:0]\iv_reg[0] ;
  wire ivec_n_18;
  wire ivec_n_22;
  wire ivec_n_23;
  wire ivec_n_24;
  wire [1:0]out;
  wire [3:0]p_0_in;
  wire p_0_in_0;
  wire [4:0]p_0_in_1;
  wire [15:1]p_0_in_2;
  wire [0:0]p_0_in_3;
  wire \pc[15]_i_3 ;
  wire \pc_reg[0] ;
  wire \pc_reg[10] ;
  wire \pc_reg[11] ;
  wire \pc_reg[12] ;
  wire \pc_reg[13] ;
  wire \pc_reg[14] ;
  wire [15:0]\pc_reg[15] ;
  wire \pc_reg[15]_0 ;
  wire \pc_reg[1] ;
  wire \pc_reg[2] ;
  wire \pc_reg[3] ;
  wire \pc_reg[4] ;
  wire \pc_reg[5] ;
  wire \pc_reg[6] ;
  wire \pc_reg[7] ;
  wire \pc_reg[8] ;
  wire \pc_reg[9] ;
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
  wire rst_n;
  wire \sp_reg[0] ;
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
  wire \sp_reg[7] ;
  wire \sp_reg[8] ;
  wire \sp_reg[9] ;
  wire sptr_n_1;
  wire sptr_n_10;
  wire sptr_n_11;
  wire sptr_n_12;
  wire sptr_n_13;
  wire sptr_n_14;
  wire sptr_n_15;
  wire sptr_n_16;
  wire sptr_n_17;
  wire sptr_n_18;
  wire sptr_n_19;
  wire sptr_n_2;
  wire sptr_n_20;
  wire sptr_n_21;
  wire sptr_n_22;
  wire sptr_n_23;
  wire sptr_n_24;
  wire sptr_n_25;
  wire sptr_n_26;
  wire sptr_n_27;
  wire sptr_n_28;
  wire sptr_n_29;
  wire sptr_n_3;
  wire sptr_n_30;
  wire sptr_n_31;
  wire sptr_n_32;
  wire sptr_n_4;
  wire sptr_n_49;
  wire sptr_n_5;
  wire sptr_n_50;
  wire sptr_n_51;
  wire sptr_n_6;
  wire sptr_n_61;
  wire sptr_n_62;
  wire sptr_n_63;
  wire sptr_n_64;
  wire sptr_n_7;
  wire sptr_n_8;
  wire sptr_n_9;
  wire \sr[4]_i_23 ;
  wire \sr[4]_i_23_0 ;
  wire \sr[6]_i_3 ;
  wire \sr[6]_i_9 ;
  wire \sr_reg[10] ;
  wire [11:0]\sr_reg[15] ;
  wire \sr_reg[1] ;
  wire \sr_reg[2] ;
  wire \sr_reg[2]_0 ;
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
  wire \sr_reg[6]_15 ;
  wire \sr_reg[6]_16 ;
  wire \sr_reg[6]_17 ;
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
  wire sreg_n_57;
  wire sreg_n_58;
  wire sreg_n_59;
  wire sreg_n_60;
  wire sreg_n_61;
  wire sreg_n_62;
  wire sreg_n_63;
  wire sreg_n_64;
  wire sreg_n_65;
  wire sreg_n_66;
  wire sreg_n_67;
  wire sreg_n_68;
  wire sreg_n_69;
  wire sreg_n_70;
  wire sreg_n_71;
  wire sreg_n_72;
  wire sreg_n_73;
  wire sreg_n_74;
  wire sreg_n_77;
  wire \stat_reg[0] ;
  wire \stat_reg[1] ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire \stat_reg[1]_2 ;
  wire \stat_reg[1]_3 ;
  wire \stat_reg[2] ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_10 ;
  wire \stat_reg[2]_11 ;
  wire \stat_reg[2]_12 ;
  wire \stat_reg[2]_13 ;
  wire \stat_reg[2]_14 ;
  wire \stat_reg[2]_15 ;
  wire \stat_reg[2]_16 ;
  wire \stat_reg[2]_17 ;
  wire \stat_reg[2]_18 ;
  wire \stat_reg[2]_19 ;
  wire \stat_reg[2]_2 ;
  wire \stat_reg[2]_20 ;
  wire \stat_reg[2]_21 ;
  wire \stat_reg[2]_3 ;
  wire \stat_reg[2]_4 ;
  wire \stat_reg[2]_5 ;
  wire \stat_reg[2]_6 ;
  wire \stat_reg[2]_7 ;
  wire \stat_reg[2]_8 ;
  wire \stat_reg[2]_9 ;
  wire [15:0]\tr_reg[15] ;
  wire [15:0]\tr_reg[15]_0 ;
  wire \tr_reg[1] ;
  wire \tr_reg[2] ;
  wire \tr_reg[3] ;
  wire \tr_reg[4] ;
  wire treg_n_17;
  wire treg_n_21;
  wire treg_n_22;
  wire treg_n_23;
  wire treg_n_24;
  wire treg_n_25;
  wire treg_n_26;
  wire treg_n_27;
  wire treg_n_28;
  wire treg_n_29;
  wire treg_n_30;
  wire treg_n_31;
  wire treg_n_32;
  wire treg_n_33;

  mcbs_rgf_bank bank02
       (.E(E),
        .SR(p_0_in_0),
        .\badr[0]_INST_0_i_2 (bank13_n_62),
        .\badr[0]_INST_0_i_2_0 (\iv_reg[0] ),
        .\badr[14]_INST_0_i_2 (\sr_reg[15] [0]),
        .\bdatw[14]_INST_0_i_12 ({bank13_n_80,bank13_n_81,bank13_n_82,bank13_n_83,bank13_n_84,bank13_n_85,bank13_n_86,bank13_n_87,bank13_n_88,bank13_n_89,bank13_n_91,bank13_n_92,bank13_n_93,bank13_n_94}),
        .\bdatw[15]_INST_0_i_14 ({bank13_n_95,bank13_n_96,bank13_n_97,bank13_n_98,bank13_n_99,bank13_n_100,bank13_n_101,bank13_n_102,bank13_n_103,bank13_n_104,bank13_n_105,bank13_n_106,bank13_n_107,bank13_n_108,bank13_n_109,bank13_n_110}),
        .\bdatw[15]_INST_0_i_21 ({bank13_n_111,bank13_n_112,bank13_n_113,bank13_n_114,bank13_n_115,bank13_n_116,bank13_n_117,bank13_n_118,bank13_n_119,bank13_n_120,bank13_n_121,bank13_n_122,bank13_n_123,bank13_n_124,bank13_n_125,bank13_n_126}),
        .clk(clk),
        .ctl_sela(ctl_sela[4:3]),
        .ctl_selb(ctl_selb),
        .\grn_reg[0] (bank02_n_131),
        .\grn_reg[0]_0 (bank02_n_146),
        .\grn_reg[0]_1 (bank02_n_147),
        .\grn_reg[0]_2 (bank02_n_175),
        .\grn_reg[10] (bank02_n_138),
        .\grn_reg[10]_0 (bank02_n_155),
        .\grn_reg[10]_1 (bank02_n_156),
        .\grn_reg[11] (bank02_n_136),
        .\grn_reg[11]_0 (bank02_n_137),
        .\grn_reg[11]_1 (bank02_n_154),
        .\grn_reg[12] (bank02_n_135),
        .\grn_reg[12]_0 (bank02_n_152),
        .\grn_reg[12]_1 (bank02_n_153),
        .\grn_reg[13] (bank02_n_133),
        .\grn_reg[13]_0 (bank02_n_134),
        .\grn_reg[13]_1 (bank02_n_151),
        .\grn_reg[14] (bank02_n_130),
        .\grn_reg[14]_0 (bank02_n_149),
        .\grn_reg[14]_1 (bank02_n_150),
        .\grn_reg[15] ({bank02_n_16,bank02_n_17,bank02_n_18,bank02_n_19,bank02_n_20,bank02_n_21,bank02_n_22,bank02_n_23,bank02_n_24,bank02_n_25,bank02_n_26,bank02_n_27,bank02_n_28,bank02_n_29,bank02_n_30,bank02_n_31}),
        .\grn_reg[15]_0 ({bank02_n_32,bank02_n_33,bank02_n_34,bank02_n_35,bank02_n_36,bank02_n_37,bank02_n_38,bank02_n_39,bank02_n_40,bank02_n_41,bank02_n_42,bank02_n_43,bank02_n_44,bank02_n_45,bank02_n_46,bank02_n_47}),
        .\grn_reg[15]_1 ({bank02_n_48,bank02_n_49,bank02_n_50,bank02_n_51,bank02_n_52,bank02_n_53,bank02_n_54,bank02_n_55,bank02_n_56,bank02_n_57,bank02_n_58,bank02_n_59,bank02_n_60,bank02_n_61,bank02_n_62,bank02_n_63}),
        .\grn_reg[15]_10 (\grn_reg[15]_4 ),
        .\grn_reg[15]_11 (\grn_reg[15]_5 ),
        .\grn_reg[15]_12 (\grn_reg[15]_6 ),
        .\grn_reg[15]_13 (\grn_reg[15]_7 ),
        .\grn_reg[15]_14 (\grn_reg[15]_8 ),
        .\grn_reg[15]_15 (\grn_reg[15]_9 ),
        .\grn_reg[15]_2 ({bank02_n_64,bank02_n_65,bank02_n_66,bank02_n_67,bank02_n_68,bank02_n_69,bank02_n_70,bank02_n_71,bank02_n_72,bank02_n_73,bank02_n_74,bank02_n_75,bank02_n_76,bank02_n_77,bank02_n_78,bank02_n_79}),
        .\grn_reg[15]_3 ({out[1],bank02_n_81,bank02_n_82,bank02_n_83,bank02_n_84,bank02_n_85,bank02_n_86,bank02_n_87,bank02_n_88,bank02_n_89,bank02_n_90,out[0],bank02_n_92,bank02_n_93,bank02_n_94,bank02_n_95}),
        .\grn_reg[15]_4 ({bank02_n_96,bank02_n_97,bank02_n_98,bank02_n_99,bank02_n_100,bank02_n_101,bank02_n_102,bank02_n_103,bank02_n_104,bank02_n_105,bank02_n_106,bank02_n_107,bank02_n_108,bank02_n_109,bank02_n_110,bank02_n_111}),
        .\grn_reg[15]_5 ({bank02_n_112,bank02_n_113,bank02_n_114,bank02_n_115,bank02_n_116,bank02_n_117,bank02_n_118,bank02_n_119,bank02_n_120,bank02_n_121,bank02_n_122,bank02_n_123,bank02_n_124,bank02_n_125,bank02_n_126,bank02_n_127}),
        .\grn_reg[15]_6 (bank02_n_132),
        .\grn_reg[15]_7 (bank02_n_148),
        .\grn_reg[15]_8 (\tr_reg[15]_0 ),
        .\grn_reg[15]_9 (\grn_reg[15]_3 ),
        .\grn_reg[1] (bank02_n_172),
        .\grn_reg[1]_0 (bank02_n_173),
        .\grn_reg[1]_1 (bank02_n_174),
        .\grn_reg[2] (bank02_n_169),
        .\grn_reg[2]_0 (bank02_n_170),
        .\grn_reg[2]_1 (bank02_n_171),
        .\grn_reg[3] (bank02_n_144),
        .\grn_reg[3]_0 (bank02_n_145),
        .\grn_reg[3]_1 (bank02_n_168),
        .\grn_reg[4] (bank02_n_143),
        .\grn_reg[4]_0 (bank02_n_167),
        .\grn_reg[5] (bank02_n_142),
        .\grn_reg[5]_0 (bank02_n_165),
        .\grn_reg[5]_1 (bank02_n_166),
        .\grn_reg[6] (bank02_n_141),
        .\grn_reg[6]_0 (bank02_n_163),
        .\grn_reg[6]_1 (bank02_n_164),
        .\grn_reg[7] (bank02_n_139),
        .\grn_reg[7]_0 (bank02_n_140),
        .\grn_reg[7]_1 (bank02_n_162),
        .\grn_reg[8] (bank02_n_159),
        .\grn_reg[8]_0 (bank02_n_160),
        .\grn_reg[8]_1 (bank02_n_161),
        .\grn_reg[9] (bank02_n_129),
        .\grn_reg[9]_0 (bank02_n_157),
        .\grn_reg[9]_1 (bank02_n_158),
        .out({bank02_n_0,bank02_n_1,bank02_n_2,bank02_n_3,bank02_n_4,bank02_n_5,bank02_n_6,bank02_n_7,bank02_n_8,bank02_n_9,bank02_n_10,bank02_n_11,bank02_n_12,bank02_n_13,bank02_n_14,bank02_n_15}),
        .rst_n(rst_n));
  mcbs_rgf_bank_0 bank13
       (.SR(p_0_in_0),
        .abus_o(abus_o),
        .\abus_o[10]_0 (sreg_n_28),
        .\abus_o[12]_0 (sreg_n_32),
        .\abus_o[13]_0 (sreg_n_38),
        .\abus_o[14]_0 (sreg_n_34),
        .\abus_o[15]_0 (sptr_n_1),
        .\abus_o[15]_1 (sreg_n_36),
        .\abus_o[1]_0 (sreg_n_47),
        .\abus_o[2]_0 (sreg_n_51),
        .\abus_o[3]_0 (sreg_n_45),
        .\abus_o[4]_0 (sptr_n_19),
        .\abus_o[4]_1 (sreg_n_43),
        .\abus_o[5]_0 (sreg_n_42),
        .\abus_o[7]_0 (sreg_n_49),
        .\abus_o[9]_0 (sreg_n_26),
        .abus_o_10_sp_1(sptr_n_28),
        .abus_o_11_sp_1(sreg_n_30),
        .abus_o_12_sp_1(sptr_n_6),
        .abus_o_13_sp_1(sptr_n_4),
        .abus_o_14_sp_1(sptr_n_2),
        .abus_o_15_sp_1(abus_o_15_sn_1),
        .abus_o_1_sp_1(sptr_n_25),
        .abus_o_2_sp_1(sptr_n_23),
        .abus_o_3_sp_1(sptr_n_21),
        .abus_o_4_sp_1(abus_o_4_sn_1),
        .abus_o_5_sp_1(sptr_n_18),
        .abus_o_6_sp_1(sreg_n_40),
        .abus_o_7_sp_1(sptr_n_31),
        .abus_o_8_sp_1(sreg_n_24),
        .abus_o_9_sp_1(sptr_n_11),
        .\badr[0]_INST_0_i_1 (bank02_n_131),
        .\badr[0]_INST_0_i_2 (bank02_n_15),
        .\badr[0]_INST_0_i_2_0 (p_0_in_3),
        .\badr[0]_INST_0_i_3 (abus_0[0]),
        .\badr[11]_INST_0_i_1_0 (\badr[11]_INST_0_i_1 ),
        .\badr[11]_INST_0_i_1_1 (sptr_n_10),
        .\badr[11]_INST_0_i_1_2 (sptr_n_9),
        .\badr[12]_INST_0_i_1_0 (\badr[12]_INST_0_i_1 ),
        .\badr[13]_INST_0_i_1_0 (\badr[13]_INST_0_i_1 ),
        .\badr[14]_INST_0_i_1_0 (\badr[14]_INST_0_i_1 ),
        .\badr[14]_INST_0_i_1_1 (bank02_n_130),
        .\badr[14]_INST_0_i_3_0 ({bank02_n_81,bank02_n_82,bank02_n_83,bank02_n_84,bank02_n_85,bank02_n_86,bank02_n_87,bank02_n_88,bank02_n_89,bank02_n_90,bank02_n_92,bank02_n_93,bank02_n_94,bank02_n_95}),
        .\badr[15]_INST_0_i_1_0 (\badr[15]_INST_0_i_1 ),
        .\badr[15]_INST_0_i_2_0 ({bank02_n_96,bank02_n_97,bank02_n_98,bank02_n_99,bank02_n_100,bank02_n_101,bank02_n_102,bank02_n_103,bank02_n_104,bank02_n_105,bank02_n_106,bank02_n_107,bank02_n_108,bank02_n_109,bank02_n_110,bank02_n_111}),
        .\badr[15]_INST_0_i_2_1 ({bank02_n_112,bank02_n_114,bank02_n_115,bank02_n_116,bank02_n_117,bank02_n_118,bank02_n_119,bank02_n_120,bank02_n_121,bank02_n_122,bank02_n_123,bank02_n_124,bank02_n_125,bank02_n_126,bank02_n_127}),
        .\badr[15]_INST_0_i_3 (\tr_reg[15] ),
        .\badr[15]_INST_0_i_3_0 ({bank02_n_64,bank02_n_65,bank02_n_66,bank02_n_67,bank02_n_68,bank02_n_69,bank02_n_70,bank02_n_71,bank02_n_72,bank02_n_73,bank02_n_74,bank02_n_75,bank02_n_76,bank02_n_77,bank02_n_78,bank02_n_79}),
        .\badr[15]_INST_0_i_5 ({bank02_n_48,bank02_n_49,bank02_n_50,bank02_n_51,bank02_n_52,bank02_n_53,bank02_n_54,bank02_n_55,bank02_n_56,bank02_n_57,bank02_n_58,bank02_n_59,bank02_n_60,bank02_n_61,bank02_n_62}),
        .\badr[15]_INST_0_i_5_0 (p_0_in_2),
        .\badr[15]_INST_0_i_7 (\pc_reg[15] ),
        .\badr[15]_INST_0_i_7_0 ({bank02_n_16,bank02_n_17,bank02_n_18,bank02_n_19,bank02_n_20,bank02_n_21,bank02_n_22,bank02_n_23,bank02_n_24,bank02_n_25,bank02_n_26,bank02_n_27,bank02_n_28,bank02_n_29,bank02_n_30,bank02_n_31}),
        .\badr[3]_INST_0_i_1 (\badr[3]_INST_0_i_1 ),
        .\badr[3]_INST_0_i_1_0 (\badr[3]_INST_0_i_1_0 ),
        .\badr[4]_INST_0_i_1 (\badr[4]_INST_0_i_1 ),
        .\badr[4]_INST_0_i_1_0 (\badr[4]_INST_0_i_1_0 ),
        .\badr[5]_INST_0_i_1_0 (\badr[5]_INST_0_i_1 ),
        .\badr[6]_INST_0_i_1_0 (sptr_n_17),
        .\badr[6]_INST_0_i_1_1 (sptr_n_16),
        .\badr[7]_INST_0_i_1_0 (\badr[7]_INST_0_i_1 ),
        .\badr[8]_INST_0_i_1_0 (\badr[8]_INST_0_i_1 ),
        .\badr[8]_INST_0_i_1_1 (sptr_n_14),
        .\badr[8]_INST_0_i_1_2 (sptr_n_13),
        .\badr[9]_INST_0_i_1_0 (\badr[9]_INST_0_i_1 ),
        .\bdatw[10]_INST_0_i_7 (sptr_n_63),
        .\bdatw[11]_INST_0_i_7 (sptr_n_62),
        .\bdatw[12]_INST_0_i_2 (\bdatw[12]_INST_0_i_2 ),
        .\bdatw[15]_INST_0_i_38 ({bank02_n_32,bank02_n_33,bank02_n_34,bank02_n_35,bank02_n_36,bank02_n_37,bank02_n_38,bank02_n_39,bank02_n_40,bank02_n_41,bank02_n_42,bank02_n_43,bank02_n_44,bank02_n_45,bank02_n_46,bank02_n_47}),
        .\bdatw[8]_INST_0_i_7 (treg_n_33),
        .\bdatw[9]_INST_0_i_2 (\bdatw[9]_INST_0_i_2 ),
        .\bdatw[9]_INST_0_i_2_0 (\bdatw[9]_INST_0_i_2_0 ),
        .\bdatw[9]_INST_0_i_2_1 (\bdatw[9]_INST_0_i_2_1 ),
        .\bdatw[9]_INST_0_i_2_2 (\bdatw[9]_INST_0_i_2_2 ),
        .\bdatw[9]_INST_0_i_2_3 (\bdatw[9]_INST_0_i_2_3 ),
        .clk(clk),
        .ctl_copro(ctl_copro),
        .ctl_sela(ctl_sela),
        .ctl_selb(ctl_selb),
        .\grn_reg[0] (bank13_n_175),
        .\grn_reg[10] (bank13_n_142),
        .\grn_reg[10]_0 (bank13_n_143),
        .\grn_reg[10]_1 (bank13_n_189),
        .\grn_reg[11] (abus_0[11]),
        .\grn_reg[11]_0 (bank13_n_145),
        .\grn_reg[11]_1 (bank13_n_181),
        .\grn_reg[12] (bank13_n_147),
        .\grn_reg[12]_0 (bank13_n_148),
        .\grn_reg[12]_1 (bank13_n_180),
        .\grn_reg[13] (bank13_n_158),
        .\grn_reg[13]_0 (bank13_n_159),
        .\grn_reg[13]_1 (bank13_n_179),
        .\grn_reg[14] (bank13_n_151),
        .\grn_reg[14]_0 (bank13_n_152),
        .\grn_reg[14]_1 (bank13_n_178),
        .\grn_reg[15] ({bank13_n_15,bank13_n_16,bank13_n_17,bank13_n_18,bank13_n_19,bank13_n_20,bank13_n_21,bank13_n_22,bank13_n_23,bank13_n_24,bank13_n_25,bank13_n_26,bank13_n_27,bank13_n_28,bank13_n_29,bank13_n_30}),
        .\grn_reg[15]_0 ({bank13_n_31,bank13_n_32,bank13_n_33,bank13_n_34,bank13_n_35,bank13_n_36,bank13_n_37,bank13_n_38,bank13_n_39,bank13_n_40,bank13_n_41,bank13_n_42,bank13_n_43,bank13_n_44,bank13_n_45,bank13_n_46}),
        .\grn_reg[15]_1 ({bank13_n_47,bank13_n_48,bank13_n_49,bank13_n_50,bank13_n_51,bank13_n_52,bank13_n_53,bank13_n_54,bank13_n_55,bank13_n_56,bank13_n_57,bank13_n_58,bank13_n_59,bank13_n_60,bank13_n_61,bank13_n_62}),
        .\grn_reg[15]_10 (bank13_n_157),
        .\grn_reg[15]_11 (\grn_reg[15]_2 ),
        .\grn_reg[15]_12 (bank13_n_188),
        .\grn_reg[15]_13 (\grn_reg[15]_10 ),
        .\grn_reg[15]_14 (\tr_reg[15]_0 ),
        .\grn_reg[15]_15 (\grn_reg[15]_11 ),
        .\grn_reg[15]_16 (\grn_reg[15]_12 ),
        .\grn_reg[15]_17 (\grn_reg[15]_13 ),
        .\grn_reg[15]_18 (\grn_reg[15]_14 ),
        .\grn_reg[15]_19 (\grn_reg[15]_15 ),
        .\grn_reg[15]_2 ({bank13_n_63,bank13_n_64,bank13_n_65,bank13_n_66,bank13_n_67,bank13_n_68,bank13_n_69,bank13_n_70,bank13_n_71,bank13_n_72,bank13_n_73,bank13_n_74,bank13_n_75,bank13_n_76,bank13_n_77,bank13_n_78}),
        .\grn_reg[15]_20 (\grn_reg[15]_16 ),
        .\grn_reg[15]_21 (\grn_reg[15]_17 ),
        .\grn_reg[15]_3 ({\grn_reg[15] [1],bank13_n_80,bank13_n_81,bank13_n_82,bank13_n_83,bank13_n_84,bank13_n_85,bank13_n_86,bank13_n_87,bank13_n_88,bank13_n_89,\grn_reg[15] [0],bank13_n_91,bank13_n_92,bank13_n_93,bank13_n_94}),
        .\grn_reg[15]_4 ({bank13_n_95,bank13_n_96,bank13_n_97,bank13_n_98,bank13_n_99,bank13_n_100,bank13_n_101,bank13_n_102,bank13_n_103,bank13_n_104,bank13_n_105,bank13_n_106,bank13_n_107,bank13_n_108,bank13_n_109,bank13_n_110}),
        .\grn_reg[15]_5 ({bank13_n_111,bank13_n_112,bank13_n_113,bank13_n_114,bank13_n_115,bank13_n_116,bank13_n_117,bank13_n_118,bank13_n_119,bank13_n_120,bank13_n_121,bank13_n_122,bank13_n_123,bank13_n_124,bank13_n_125,bank13_n_126}),
        .\grn_reg[15]_6 (abus_0[15]),
        .\grn_reg[15]_7 (\grn_reg[15]_0 ),
        .\grn_reg[15]_8 (\grn_reg[15]_1 ),
        .\grn_reg[15]_9 (bank13_n_156),
        .\grn_reg[1] (bank13_n_169),
        .\grn_reg[1]_0 (bank13_n_170),
        .\grn_reg[1]_1 (bank13_n_176),
        .\grn_reg[1]_2 (bank13_n_187),
        .\grn_reg[2] (bank13_n_167),
        .\grn_reg[2]_0 (bank13_n_168),
        .\grn_reg[2]_1 (bank13_n_186),
        .\grn_reg[3] (bank13_n_165),
        .\grn_reg[3]_0 (bank13_n_166),
        .\grn_reg[3]_1 (bank13_n_185),
        .\grn_reg[4] (abus_0[4]),
        .\grn_reg[4]_0 (\grn_reg[4] ),
        .\grn_reg[4]_1 (bank13_n_163),
        .\grn_reg[4]_2 (bank13_n_164),
        .\grn_reg[4]_3 (\grn_reg[4]_0 ),
        .\grn_reg[4]_4 (bank13_n_177),
        .\grn_reg[4]_5 (bank13_n_184),
        .\grn_reg[5] (bank13_n_161),
        .\grn_reg[5]_0 (bank13_n_162),
        .\grn_reg[5]_1 (bank13_n_192),
        .\grn_reg[6] (abus_0[6]),
        .\grn_reg[6]_0 (bank13_n_160),
        .\grn_reg[6]_1 (bank13_n_183),
        .\grn_reg[7] (bank13_n_172),
        .\grn_reg[7]_0 (bank13_n_173),
        .\grn_reg[7]_1 (bank13_n_191),
        .\grn_reg[8] (abus_0[8]),
        .\grn_reg[8]_0 (bank13_n_137),
        .\grn_reg[8]_1 (bank13_n_182),
        .\grn_reg[9] (abus_0[9]),
        .\grn_reg[9]_0 (bank13_n_139),
        .\grn_reg[9]_1 (bank13_n_140),
        .\grn_reg[9]_2 (bank13_n_190),
        .\iv[0]_i_5 (\iv[0]_i_5 ),
        .\iv[10]_i_2 (\iv[10]_i_2 ),
        .\iv[11]_i_20 (sptr_n_26),
        .\iv[11]_i_20_0 (sreg_n_48),
        .\iv[11]_i_23 (\iv[11]_i_23 ),
        .\iv[11]_i_30_0 (\iv[11]_i_30 ),
        .\iv[12]_i_19 (\iv[12]_i_19 ),
        .\iv[12]_i_19_0 (sptr_n_30),
        .\iv[12]_i_19_1 (sreg_n_27),
        .\iv[12]_i_19_2 (bank02_n_129),
        .\iv[12]_i_20 (\iv[12]_i_20 ),
        .\iv[12]_i_20_0 (\iv[12]_i_20_0 ),
        .\iv[12]_i_20_1 (\iv[12]_i_20_1 ),
        .\iv[12]_i_20_2 (sptr_n_12),
        .\iv[12]_i_20_3 (sreg_n_25),
        .\iv[12]_i_5 (\iv[12]_i_5 ),
        .\iv[13]_i_21 (\iv[13]_i_21 ),
        .\iv[13]_i_25 (\iv[13]_i_25 ),
        .\iv[13]_i_25_0 (\iv[13]_i_25_0 ),
        .\iv[13]_i_25_1 (\iv[13]_i_25_1 ),
        .\iv[13]_i_31 (\iv[13]_i_31 ),
        .\iv[13]_i_5 (\iv[13]_i_5 ),
        .\iv[14]_i_27 (\iv[14]_i_27 ),
        .\iv[14]_i_28_0 (\iv[14]_i_28 ),
        .\iv[14]_i_28_1 (\iv[14]_i_28_0 ),
        .\iv[14]_i_31 (\iv[14]_i_31 ),
        .\iv[14]_i_33 (sptr_n_27),
        .\iv[14]_i_33_0 (sreg_n_37),
        .\iv[14]_i_35 (\iv[14]_i_35 ),
        .\iv[14]_i_35_0 (\iv[14]_i_35_0 ),
        .\iv[14]_i_37_0 (sptr_n_3),
        .\iv[14]_i_37_1 (sreg_n_35),
        .\iv[14]_i_38 (sptr_n_24),
        .\iv[14]_i_38_0 (sreg_n_52),
        .\iv[14]_i_8 (\iv[14]_i_8 ),
        .\iv[14]_i_8_0 (\iv[14]_i_8_0 ),
        .\iv[15]_i_14 ({\sr_reg[15] [5],\sr_reg[15] [0]}),
        .\iv[15]_i_33 (\iv[15]_i_33 ),
        .\iv[15]_i_35 (\iv[15]_i_35 ),
        .\iv[15]_i_35_0 (\iv[15]_i_35_0 ),
        .\iv[15]_i_35_1 (\iv[15]_i_35_1 ),
        .\iv[15]_i_35_2 (\iv[15]_i_35_2 ),
        .\iv[15]_i_5 (\iv[15]_i_5 ),
        .\iv[15]_i_51_0 (\iv[15]_i_51 ),
        .\iv[15]_i_51_1 (\iv[15]_i_51_0 ),
        .\iv[15]_i_52 (\iv[15]_i_52 ),
        .\iv[15]_i_52_0 (\iv[15]_i_52_0 ),
        .\iv[15]_i_54_0 (\iv[15]_i_54 ),
        .\iv[15]_i_56 (\iv[15]_i_56 ),
        .\iv[15]_i_57_0 (\iv[15]_i_57 ),
        .\iv[15]_i_58_0 (\iv[15]_i_58 ),
        .\iv[15]_i_58_1 (sptr_n_29),
        .\iv[15]_i_58_2 (sreg_n_29),
        .\iv[15]_i_58_3 (sptr_n_8),
        .\iv[15]_i_58_4 (sreg_n_31),
        .\iv[15]_i_59_0 (\iv[15]_i_59 ),
        .\iv[15]_i_59_1 (sptr_n_15),
        .\iv[15]_i_59_2 (sreg_n_41),
        .\iv[15]_i_59_3 (sptr_n_32),
        .\iv[15]_i_59_4 (sreg_n_50),
        .\iv[15]_i_5_0 (\iv[15]_i_5_0 ),
        .\iv[15]_i_61 (sptr_n_64),
        .\iv[15]_i_62 (\iv[15]_i_62 ),
        .\iv[15]_i_62_0 (sptr_n_61),
        .\iv[2]_i_14 (\iv[2]_i_14 ),
        .\iv[2]_i_2 (\iv[2]_i_2 ),
        .\iv[2]_i_2_0 (\iv[2]_i_2_0 ),
        .\iv[2]_i_2_1 (\iv[2]_i_2_1 ),
        .\iv[2]_i_2_2 (\iv[2]_i_2_2 ),
        .\iv[7]_i_16 (\iv[7]_i_16 ),
        .\iv[8]_i_14_0 (\iv[8]_i_14 ),
        .\iv[8]_i_21 (\iv[8]_i_21 ),
        .\iv[8]_i_24_0 (sptr_n_20),
        .\iv[8]_i_24_1 (sreg_n_44),
        .\iv[8]_i_24_2 (sptr_n_22),
        .\iv[8]_i_24_3 (sreg_n_46),
        .\iv[8]_i_25_0 (\iv[8]_i_25 ),
        .\iv[8]_i_25_1 (sptr_n_7),
        .\iv[8]_i_25_2 (sreg_n_33),
        .\iv[8]_i_25_3 (sptr_n_5),
        .\iv[8]_i_25_4 (sreg_n_39),
        .\iv[8]_i_28 (\iv[8]_i_28 ),
        .out({bank13_n_0,bank13_n_1,bank13_n_2,bank13_n_3,bank13_n_4,bank13_n_5,bank13_n_6,bank13_n_7,bank13_n_8,bank13_n_9,bank13_n_10,bank13_n_11,bank13_n_12,bank13_n_13,bank13_n_14}),
        .\sr[4]_i_23 (\sr[4]_i_23 ),
        .\sr[4]_i_23_0 (\sr[4]_i_23_0 ),
        .\sr[4]_i_23_1 (sreg_n_74),
        .\sr[6]_i_3 (\sr[6]_i_3 ),
        .\sr[6]_i_9_0 (\sr[6]_i_9 ),
        .\sr_reg[0] (abus_0[1]),
        .\sr_reg[0]_0 (abus_0[2]),
        .\sr_reg[0]_1 (abus_0[3]),
        .\sr_reg[0]_2 (abus_0[5]),
        .\sr_reg[0]_3 (abus_0[7]),
        .\sr_reg[0]_4 (abus_0[10]),
        .\sr_reg[0]_5 (abus_0[12]),
        .\sr_reg[0]_6 (abus_0[13]),
        .\sr_reg[0]_7 (abus_0[14]),
        .\sr_reg[6] (\sr_reg[6]_4 ),
        .\sr_reg[6]_0 (\sr_reg[6]_5 ),
        .\sr_reg[6]_1 (\sr_reg[6]_6 ),
        .\sr_reg[6]_10 (\sr_reg[6]_15 ),
        .\sr_reg[6]_11 (\sr_reg[6]_16 ),
        .\sr_reg[6]_2 (\sr_reg[6]_7 ),
        .\sr_reg[6]_3 (\sr_reg[6]_8 ),
        .\sr_reg[6]_4 (\sr_reg[6]_9 ),
        .\sr_reg[6]_5 (\sr_reg[6]_10 ),
        .\sr_reg[6]_6 (\sr_reg[6]_11 ),
        .\sr_reg[6]_7 (\sr_reg[6]_12 ),
        .\sr_reg[6]_8 (\sr_reg[6]_13 ),
        .\sr_reg[6]_9 (\sr_reg[6]_14 ),
        .\stat_reg[1] (\stat_reg[1] ),
        .\stat_reg[1]_0 (\stat_reg[1]_0 ),
        .\stat_reg[1]_1 (\stat_reg[1]_1 ),
        .\stat_reg[1]_2 (\stat_reg[1]_2 ));
  mcbs_rgf_ivec ivec
       (.SR(p_0_in_0),
        .\bdatw[10]_INST_0_i_1 (pcnt_n_26),
        .\bdatw[10]_INST_0_i_2 (pcnt_n_18),
        .\bdatw[10]_INST_0_i_5_0 (bank02_n_155),
        .\bdatw[10]_INST_0_i_8_0 (bank02_n_169),
        .\bdatw[11]_INST_0_i_1 (pcnt_n_27),
        .\bdatw[11]_INST_0_i_2 (pcnt_n_19),
        .\bdatw[11]_INST_0_i_5_0 (bank02_n_154),
        .\bdatw[11]_INST_0_i_8_0 (bank02_n_144),
        .\bdatw[12]_INST_0_i_1 (pcnt_n_28),
        .\bdatw[12]_INST_0_i_2 (pcnt_n_20),
        .\bdatw[12]_INST_0_i_5_0 (bank02_n_135),
        .\bdatw[12]_INST_0_i_8_0 (bank02_n_167),
        .\bdatw[13]_INST_0_i_1 (pcnt_n_29),
        .\bdatw[13]_INST_0_i_5_0 (bank02_n_133),
        .\bdatw[13]_INST_0_i_7 (bank02_n_165),
        .\bdatw[14]_INST_0_i_1 (pcnt_n_30),
        .\bdatw[14]_INST_0_i_5_0 (sreg_n_69),
        .\bdatw[14]_INST_0_i_7 (bank02_n_141),
        .\bdatw[15]_INST_0_i_1 (pcnt_n_31),
        .\bdatw[15]_INST_0_i_10 (bank02_n_139),
        .\bdatw[15]_INST_0_i_21_0 ({bank13_n_47,bank13_n_48,bank13_n_49,bank13_n_50,bank13_n_51,bank13_n_52,bank13_n_53,bank13_n_54,bank13_n_55,bank13_n_56,bank13_n_57,bank13_n_58,bank13_n_59,bank13_n_60,bank13_n_61,bank13_n_62}),
        .\bdatw[15]_INST_0_i_21_1 (\sr_reg[15] [0]),
        .\bdatw[15]_INST_0_i_21_2 ({bank02_n_48,bank02_n_49,bank02_n_50,bank02_n_51,bank02_n_52,bank02_n_53,bank02_n_54,bank02_n_55,bank02_n_56,bank02_n_57,bank02_n_58,bank02_n_59,bank02_n_60,bank02_n_61,bank02_n_62,bank02_n_63}),
        .\bdatw[15]_INST_0_i_7_0 (bank02_n_132),
        .\bdatw[8]_INST_0_i_1 (pcnt_n_24),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2 ),
        .\bdatw[8]_INST_0_i_2_0 (pcnt_n_16),
        .\bdatw[8]_INST_0_i_5_0 (bank02_n_159),
        .\bdatw[8]_INST_0_i_8_0 (\iv[15]_i_62 ),
        .\bdatw[8]_INST_0_i_8_1 (bank02_n_175),
        .\bdatw[9]_INST_0_i_1 (pcnt_n_25),
        .\bdatw[9]_INST_0_i_2 (pcnt_n_17),
        .\bdatw[9]_INST_0_i_5_0 (bank02_n_157),
        .cbus_sel_cr(cbus_sel_cr[0]),
        .clk(clk),
        .ctl_selb(ctl_selb),
        .\iv[15]_i_52 (\iv[15]_i_52_1 ),
        .\iv[15]_i_52_0 (bank13_n_177),
        .\iv[15]_i_52_1 (sreg_n_58),
        .\iv[15]_i_52_2 (\iv[15]_i_52_2 ),
        .\iv[15]_i_61 (bank02_n_172),
        .\iv_reg[15]_0 (\tr_reg[15]_0 ),
        .\iv_reg[1]_0 (ivec_n_18),
        .\iv_reg[5]_0 (ivec_n_22),
        .\iv_reg[6]_0 (ivec_n_23),
        .\iv_reg[7]_0 (ivec_n_24),
        .out({p_0_in_2,\iv_reg[0] }),
        .\stat_reg[2] (\stat_reg[2]_0 ),
        .\stat_reg[2]_0 (\stat_reg[2]_1 ),
        .\stat_reg[2]_1 (\stat_reg[2]_2 ),
        .\stat_reg[2]_10 (\stat_reg[2]_18 ),
        .\stat_reg[2]_11 (\stat_reg[2]_20 ),
        .\stat_reg[2]_12 (\stat_reg[2]_21 ),
        .\stat_reg[2]_2 (\stat_reg[2]_3 ),
        .\stat_reg[2]_3 (\stat_reg[2]_4 ),
        .\stat_reg[2]_4 (\stat_reg[2]_6 ),
        .\stat_reg[2]_5 (\stat_reg[2]_8 ),
        .\stat_reg[2]_6 (\stat_reg[2]_10 ),
        .\stat_reg[2]_7 (\stat_reg[2]_12 ),
        .\stat_reg[2]_8 (\stat_reg[2]_14 ),
        .\stat_reg[2]_9 (\stat_reg[2]_16 ));
  mcbs_rgf_pcnt pcnt
       (.D(D),
        .S(sreg_n_77),
        .SR(p_0_in_0),
        .\bdatw[10]_INST_0_i_5 (bank02_n_156),
        .\bdatw[10]_INST_0_i_8 (bank02_n_170),
        .\bdatw[11]_INST_0_i_5 (bank02_n_136),
        .\bdatw[11]_INST_0_i_8 (bank02_n_168),
        .\bdatw[12]_INST_0_i_5 (bank02_n_152),
        .\bdatw[12]_INST_0_i_8 (sreg_n_71),
        .\bdatw[13]_INST_0_i_5 (bank02_n_134),
        .\bdatw[13]_INST_0_i_7 (bank02_n_166),
        .\bdatw[14]_INST_0_i_5 (bank02_n_149),
        .\bdatw[14]_INST_0_i_7 (bank02_n_163),
        .\bdatw[15]_INST_0_i_10 (bank02_n_162),
        .\bdatw[15]_INST_0_i_22_0 ({bank13_n_15,bank13_n_16,bank13_n_17,bank13_n_18,bank13_n_19,bank13_n_20,bank13_n_21,bank13_n_22,bank13_n_23,bank13_n_24,bank13_n_25,bank13_n_26,bank13_n_27,bank13_n_28,bank13_n_29,bank13_n_30}),
        .\bdatw[15]_INST_0_i_22_1 ({bank02_n_16,bank02_n_17,bank02_n_18,bank02_n_19,bank02_n_20,bank02_n_21,bank02_n_22,bank02_n_23,bank02_n_24,bank02_n_25,bank02_n_26,bank02_n_27,bank02_n_28,bank02_n_29,bank02_n_30,bank02_n_31}),
        .\bdatw[15]_INST_0_i_7 (sreg_n_68),
        .\bdatw[8]_INST_0_i_5 (bank02_n_160),
        .\bdatw[8]_INST_0_i_8 (\iv[15]_i_62 ),
        .\bdatw[8]_INST_0_i_8_0 (bank02_n_146),
        .\bdatw[9]_INST_0_i_13_0 (\sr_reg[15] [0]),
        .\bdatw[9]_INST_0_i_5 (bank02_n_158),
        .\bdatw[9]_INST_0_i_8 (bank02_n_173),
        .clk(clk),
        .ctl_fetch_ext(ctl_fetch_ext),
        .ctl_selb(ctl_selb),
        .fch_pc(fch_pc),
        .out(\pc_reg[15] ),
        .\pc[15]_i_3 (\pc[15]_i_3 ),
        .\pc_reg[0]_0 (pcnt_n_16),
        .\pc_reg[0]_1 (\pc_reg[0] ),
        .\pc_reg[10]_0 (pcnt_n_26),
        .\pc_reg[10]_1 (\pc_reg[10] ),
        .\pc_reg[11]_0 (pcnt_n_27),
        .\pc_reg[11]_1 (\pc_reg[11] ),
        .\pc_reg[12]_0 (pcnt_n_28),
        .\pc_reg[12]_1 (\pc_reg[12] ),
        .\pc_reg[13]_0 (pcnt_n_29),
        .\pc_reg[13]_1 (\pc_reg[13] ),
        .\pc_reg[14]_0 (pcnt_n_30),
        .\pc_reg[14]_1 (\pc_reg[14] ),
        .\pc_reg[15]_0 (pcnt_n_31),
        .\pc_reg[15]_1 (\pc_reg[15]_0 ),
        .\pc_reg[1]_0 (pcnt_n_17),
        .\pc_reg[1]_1 (\pc_reg[1] ),
        .\pc_reg[2]_0 (pcnt_n_18),
        .\pc_reg[2]_1 (\pc_reg[2] ),
        .\pc_reg[3]_0 (pcnt_n_19),
        .\pc_reg[3]_1 (\pc_reg[3] ),
        .\pc_reg[4]_0 (pcnt_n_20),
        .\pc_reg[4]_1 (\pc_reg[4] ),
        .\pc_reg[5]_0 (pcnt_n_21),
        .\pc_reg[5]_1 (\pc_reg[5] ),
        .\pc_reg[6]_0 (pcnt_n_22),
        .\pc_reg[6]_1 (\pc_reg[6] ),
        .\pc_reg[7]_0 (pcnt_n_23),
        .\pc_reg[7]_1 (\pc_reg[7] ),
        .\pc_reg[8]_0 (pcnt_n_24),
        .\pc_reg[8]_1 (\pc_reg[8] ),
        .\pc_reg[9]_0 (pcnt_n_25),
        .\pc_reg[9]_1 (\pc_reg[9] ));
  mcbs_rgf_sptr sptr
       (.SR(p_0_in_0),
        .\badr[10]_INST_0_i_1 (bank13_n_142),
        .\badr[12]_INST_0_i_1 (bank13_n_147),
        .\badr[13]_INST_0_i_1 (bank13_n_158),
        .\badr[14]_INST_0_i_1 (bank13_n_151),
        .\badr[15]_INST_0_i_1 (bank13_n_156),
        .\badr[15]_INST_0_i_1_0 (\sr_reg[15] [0]),
        .\badr[15]_INST_0_i_5_0 ({bank13_n_31,bank13_n_32,bank13_n_33,bank13_n_34,bank13_n_35,bank13_n_36,bank13_n_37,bank13_n_38,bank13_n_39,bank13_n_40,bank13_n_41,bank13_n_42,bank13_n_43,bank13_n_44,bank13_n_45,bank13_n_46}),
        .\badr[15]_INST_0_i_5_1 ({bank02_n_32,bank02_n_33,bank02_n_34,bank02_n_35,bank02_n_36,bank02_n_37,bank02_n_38,bank02_n_39,bank02_n_40,bank02_n_41,bank02_n_42,bank02_n_43,bank02_n_44,bank02_n_45,bank02_n_46,bank02_n_47}),
        .\badr[1]_INST_0_i_1 (bank13_n_169),
        .\badr[2]_INST_0_i_1 (bank13_n_167),
        .\badr[3]_INST_0_i_1 (bank13_n_165),
        .\badr[4]_INST_0_i_1 (bank13_n_163),
        .\badr[5]_INST_0_i_1 (bank13_n_161),
        .\badr[7]_INST_0_i_1 (bank13_n_172),
        .\badr[9]_INST_0_i_1 (bank13_n_139),
        .\bdatw[10]_INST_0_i_1 (sreg_n_62),
        .\bdatw[10]_INST_0_i_12_0 (bank13_n_189),
        .\bdatw[10]_INST_0_i_4_0 (bank02_n_138),
        .\bdatw[11]_INST_0_i_1 (sreg_n_63),
        .\bdatw[11]_INST_0_i_10_0 (bank13_n_181),
        .\bdatw[11]_INST_0_i_4_0 (bank02_n_137),
        .\bdatw[12]_INST_0_i_1 (sreg_n_64),
        .\bdatw[12]_INST_0_i_10_0 (bank13_n_180),
        .\bdatw[12]_INST_0_i_4_0 (bank02_n_153),
        .\bdatw[13]_INST_0_i_1 (sreg_n_65),
        .\bdatw[13]_INST_0_i_15_0 (bank13_n_192),
        .\bdatw[13]_INST_0_i_4_0 (bank02_n_151),
        .\bdatw[13]_INST_0_i_7 (bank02_n_142),
        .\bdatw[13]_INST_0_i_9_0 (bank13_n_179),
        .\bdatw[14]_INST_0_i_1 (sreg_n_66),
        .\bdatw[14]_INST_0_i_15_0 (bank13_n_183),
        .\bdatw[14]_INST_0_i_4_0 (bank02_n_150),
        .\bdatw[14]_INST_0_i_7 (bank02_n_164),
        .\bdatw[14]_INST_0_i_9_0 (bank13_n_178),
        .\bdatw[15]_INST_0_i_1 (sreg_n_67),
        .\bdatw[15]_INST_0_i_10 (bank02_n_140),
        .\bdatw[15]_INST_0_i_14_0 (bank13_n_188),
        .\bdatw[15]_INST_0_i_27_0 (bank13_n_191),
        .\bdatw[15]_INST_0_i_5_0 (bank02_n_148),
        .\bdatw[8]_INST_0_i_1 (sreg_n_60),
        .\bdatw[8]_INST_0_i_11_0 (bank13_n_182),
        .\bdatw[8]_INST_0_i_2 (\bdatw[8]_INST_0_i_2 ),
        .\bdatw[8]_INST_0_i_2_0 (bank13_n_175),
        .\bdatw[8]_INST_0_i_4_0 (bank02_n_161),
        .\bdatw[8]_INST_0_i_7_0 (\iv[15]_i_62 ),
        .\bdatw[8]_INST_0_i_7_1 (bank02_n_147),
        .\bdatw[9]_INST_0_i_1 (sreg_n_61),
        .\bdatw[9]_INST_0_i_10_0 (bank13_n_190),
        .\bdatw[9]_INST_0_i_4_0 (sreg_n_70),
        .clk(clk),
        .ctl_sela({ctl_sela[4:3],ctl_sela[0]}),
        .ctl_selb(ctl_selb),
        .ctl_sp_dec(ctl_sp_dec),
        .ctl_sp_inc(ctl_sp_inc),
        .\grn_reg[11] (sptr_n_8),
        .\grn_reg[6] (sptr_n_15),
        .\grn_reg[8] (sptr_n_12),
        .out(p_0_in_3),
        .\sp_reg[0]_0 (\sp_reg[0] ),
        .\sp_reg[10]_0 (\sp_reg[10] ),
        .\sp_reg[11]_0 (\sp_reg[11] ),
        .\sp_reg[12]_0 (\sp_reg[12] ),
        .\sp_reg[13]_0 (\sp_reg[13] ),
        .\sp_reg[14]_0 (\sp_reg[14] ),
        .\sp_reg[15]_0 (\sp_reg[15] ),
        .\sp_reg[15]_1 (\sp_reg[15]_0 ),
        .\sp_reg[1]_0 (\sp_reg[1] ),
        .\sp_reg[1]_1 (sptr_n_64),
        .\sp_reg[2]_0 (\sp_reg[2] ),
        .\sp_reg[2]_1 (sptr_n_63),
        .\sp_reg[3]_0 (\sp_reg[3] ),
        .\sp_reg[3]_1 (sptr_n_62),
        .\sp_reg[4]_0 (\sp_reg[4] ),
        .\sp_reg[4]_1 (sptr_n_61),
        .\sp_reg[5]_0 (\sp_reg[5] ),
        .\sp_reg[5]_1 (sptr_n_49),
        .\sp_reg[6]_0 (\sp_reg[6] ),
        .\sp_reg[6]_1 (sptr_n_50),
        .\sp_reg[7]_0 (\sp_reg[7] ),
        .\sp_reg[7]_1 (sptr_n_51),
        .\sp_reg[8]_0 (\sp_reg[8] ),
        .\sp_reg[9]_0 (\sp_reg[9] ),
        .\sr_reg[0] (sptr_n_1),
        .\sr_reg[0]_0 (sptr_n_2),
        .\sr_reg[0]_1 (sptr_n_3),
        .\sr_reg[0]_10 (sptr_n_14),
        .\sr_reg[0]_11 (sptr_n_16),
        .\sr_reg[0]_12 (sptr_n_17),
        .\sr_reg[0]_13 (sptr_n_18),
        .\sr_reg[0]_14 (sptr_n_19),
        .\sr_reg[0]_15 (sptr_n_20),
        .\sr_reg[0]_16 (sptr_n_21),
        .\sr_reg[0]_17 (sptr_n_22),
        .\sr_reg[0]_18 (sptr_n_23),
        .\sr_reg[0]_19 (sptr_n_24),
        .\sr_reg[0]_2 (sptr_n_4),
        .\sr_reg[0]_20 (sptr_n_25),
        .\sr_reg[0]_21 (sptr_n_26),
        .\sr_reg[0]_22 (sptr_n_27),
        .\sr_reg[0]_23 (sptr_n_28),
        .\sr_reg[0]_24 (sptr_n_29),
        .\sr_reg[0]_25 (sptr_n_30),
        .\sr_reg[0]_26 (sptr_n_31),
        .\sr_reg[0]_27 (sptr_n_32),
        .\sr_reg[0]_3 (sptr_n_5),
        .\sr_reg[0]_4 (sptr_n_6),
        .\sr_reg[0]_5 (sptr_n_7),
        .\sr_reg[0]_6 (sptr_n_9),
        .\sr_reg[0]_7 (sptr_n_10),
        .\sr_reg[0]_8 (sptr_n_11),
        .\sr_reg[0]_9 (sptr_n_13),
        .\stat_reg[2] (\stat_reg[2] ),
        .\stat_reg[2]_0 (\stat_reg[2]_5 ),
        .\stat_reg[2]_1 (\stat_reg[2]_7 ),
        .\stat_reg[2]_2 (\stat_reg[2]_9 ),
        .\stat_reg[2]_3 (\stat_reg[2]_11 ),
        .\stat_reg[2]_4 (\stat_reg[2]_13 ),
        .\stat_reg[2]_5 (\stat_reg[2]_15 ),
        .\stat_reg[2]_6 (\stat_reg[2]_17 ),
        .\stat_reg[2]_7 (\stat_reg[2]_19 ));
  mcbs_rgf_sreg sreg
       (.Q(Q),
        .S(sreg_n_77),
        .SR(p_0_in_0),
        .abus_0(abus_0[0]),
        .\badr[10]_INST_0_i_1 (bank13_n_143),
        .\badr[11]_INST_0_i_1 (bank13_n_145),
        .\badr[12]_INST_0_i_1 (bank13_n_148),
        .\badr[13]_INST_0_i_1 (bank13_n_159),
        .\badr[14]_INST_0_i_1 (bank13_n_152),
        .\badr[15]_INST_0_i_1 (bank13_n_157),
        .\badr[15]_INST_0_i_52 (\badr[15]_INST_0_i_52 ),
        .\badr[1]_INST_0_i_1 (bank13_n_170),
        .\badr[2]_INST_0_i_1 (bank13_n_168),
        .\badr[3]_INST_0_i_1 (bank13_n_166),
        .\badr[4]_INST_0_i_1 (bank13_n_164),
        .\badr[5]_INST_0_i_1 (bank13_n_162),
        .\badr[6]_INST_0_i_1 (bank13_n_160),
        .\badr[7]_INST_0_i_1 (bank13_n_173),
        .\badr[8]_INST_0_i_1 (bank13_n_137),
        .\badr[9]_INST_0_i_1 (bank13_n_140),
        .\bdatw[10]_INST_0_i_4 (treg_n_27),
        .\bdatw[11]_INST_0_i_4 (treg_n_26),
        .\bdatw[12]_INST_0_i_4 (treg_n_25),
        .\bdatw[13]_INST_0_i_2 (sptr_n_49),
        .\bdatw[13]_INST_0_i_2_0 (pcnt_n_21),
        .\bdatw[13]_INST_0_i_2_1 (ivec_n_22),
        .\bdatw[13]_INST_0_i_4 (treg_n_24),
        .\bdatw[13]_INST_0_i_7_0 (treg_n_32),
        .\bdatw[14]_INST_0_i_11 (bank13_n_112),
        .\bdatw[14]_INST_0_i_11_0 (bank02_n_113),
        .\bdatw[14]_INST_0_i_2 (sptr_n_50),
        .\bdatw[14]_INST_0_i_2_0 (pcnt_n_22),
        .\bdatw[14]_INST_0_i_2_1 (ivec_n_23),
        .\bdatw[14]_INST_0_i_4 (treg_n_23),
        .\bdatw[14]_INST_0_i_7_0 (treg_n_31),
        .\bdatw[15]_INST_0_i_10_0 (treg_n_30),
        .\bdatw[15]_INST_0_i_15_0 ({bank02_n_0,bank02_n_1,bank02_n_2,bank02_n_3,bank02_n_4,bank02_n_5,bank02_n_6,bank02_n_7,bank02_n_8,bank02_n_9,bank02_n_10,bank02_n_11,bank02_n_12,bank02_n_13,bank02_n_14}),
        .\bdatw[15]_INST_0_i_2 (sptr_n_51),
        .\bdatw[15]_INST_0_i_22 (\grn_reg[15] ),
        .\bdatw[15]_INST_0_i_22_0 (out),
        .\bdatw[15]_INST_0_i_2_0 (pcnt_n_23),
        .\bdatw[15]_INST_0_i_2_1 (ivec_n_24),
        .\bdatw[15]_INST_0_i_5 (treg_n_22),
        .\bdatw[8]_INST_0_i_4 (treg_n_29),
        .\bdatw[9]_INST_0_i_10 (bank13_n_101),
        .\bdatw[9]_INST_0_i_10_0 (bank02_n_102),
        .\bdatw[9]_INST_0_i_4 (treg_n_28),
        .clk(clk),
        .ctl_sela({ctl_sela[4:3],ctl_sela[0]}),
        .ctl_selb(ctl_selb),
        .fch_irq_req(fch_irq_req),
        .\grn_reg[10] (sreg_n_28),
        .\grn_reg[10]_0 (sreg_n_29),
        .\grn_reg[11] (sreg_n_30),
        .\grn_reg[11]_0 (sreg_n_31),
        .\grn_reg[12] (sreg_n_32),
        .\grn_reg[12]_0 (sreg_n_33),
        .\grn_reg[13] (sreg_n_38),
        .\grn_reg[13]_0 (sreg_n_39),
        .\grn_reg[14] (sreg_n_34),
        .\grn_reg[14]_0 (sreg_n_35),
        .\grn_reg[15] (sreg_n_36),
        .\grn_reg[15]_0 (sreg_n_37),
        .\grn_reg[1] (sreg_n_47),
        .\grn_reg[1]_0 (sreg_n_48),
        .\grn_reg[2] (sreg_n_51),
        .\grn_reg[2]_0 (sreg_n_52),
        .\grn_reg[3] (sreg_n_45),
        .\grn_reg[3]_0 (sreg_n_46),
        .\grn_reg[4] (sreg_n_43),
        .\grn_reg[4]_0 (sreg_n_44),
        .\grn_reg[5] (sreg_n_42),
        .\grn_reg[6] (sreg_n_40),
        .\grn_reg[6]_0 (sreg_n_41),
        .\grn_reg[7] (sreg_n_49),
        .\grn_reg[7]_0 (sreg_n_50),
        .\grn_reg[9] (sreg_n_26),
        .\grn_reg[9]_0 (sreg_n_27),
        .irq(irq),
        .irq_0(irq_0),
        .irq_lev(irq_lev),
        .\iv[14]_i_28 (\sr[4]_i_23_0 ),
        .\iv[15]_i_52 (bank13_n_176),
        .\iv[15]_i_52_0 (\iv[15]_i_52_1 ),
        .\iv[15]_i_52_1 (pcnt_n_17),
        .\iv[15]_i_52_2 (\bdatw[8]_INST_0_i_2 ),
        .\iv[15]_i_52_3 (ivec_n_18),
        .\iv[15]_i_61_0 (\iv[15]_i_62 ),
        .\iv[15]_i_61_1 (treg_n_17),
        .\iv[15]_i_62 (treg_n_21),
        .out({bank13_n_0,bank13_n_1,bank13_n_2,bank13_n_3,bank13_n_4,bank13_n_5,bank13_n_6,bank13_n_7,bank13_n_8,bank13_n_9,bank13_n_10,bank13_n_11,bank13_n_12,bank13_n_13,bank13_n_14}),
        .p_0_in(p_0_in),
        .p_0_in_1(p_0_in_1),
        .\pc_reg[3]_i_2 (\pc_reg[15] [1]),
        .\sr_reg[0]_0 (sreg_n_68),
        .\sr_reg[0]_1 (sreg_n_69),
        .\sr_reg[0]_2 (sreg_n_70),
        .\sr_reg[0]_3 (sreg_n_71),
        .\sr_reg[10]_0 (sreg_n_62),
        .\sr_reg[10]_1 (\sr_reg[10] ),
        .\sr_reg[11]_0 (sreg_n_63),
        .\sr_reg[12]_0 (sreg_n_64),
        .\sr_reg[13]_0 (sreg_n_65),
        .\sr_reg[14]_0 (sreg_n_66),
        .\sr_reg[15]_0 (\sr_reg[15] ),
        .\sr_reg[15]_1 (sreg_n_67),
        .\sr_reg[1]_0 (sreg_n_57),
        .\sr_reg[1]_1 (\sr_reg[1] ),
        .\sr_reg[2]_0 (sreg_n_73),
        .\sr_reg[2]_1 (\sr_reg[2] ),
        .\sr_reg[2]_2 (\sr_reg[2]_0 ),
        .\sr_reg[3]_0 (sreg_n_72),
        .\sr_reg[3]_1 (\sr_reg[3] ),
        .\sr_reg[4]_0 (\sr_reg[4] ),
        .\sr_reg[4]_1 (sreg_n_58),
        .\sr_reg[4]_2 (sreg_n_59),
        .\sr_reg[4]_3 (\sr_reg[4]_0 ),
        .\sr_reg[5]_0 (\sr_reg[5] ),
        .\sr_reg[6]_0 (\sr_reg[6] ),
        .\sr_reg[6]_1 (\sr_reg[6]_0 ),
        .\sr_reg[6]_2 (\sr_reg[6]_1 ),
        .\sr_reg[6]_3 (\sr_reg[6]_2 ),
        .\sr_reg[6]_4 (\sr_reg[6]_3 ),
        .\sr_reg[6]_5 (sreg_n_74),
        .\sr_reg[6]_6 (\sr_reg[6]_17 ),
        .\sr_reg[7]_0 (\sr_reg[7] ),
        .\sr_reg[7]_1 (\sr_reg[7]_0 ),
        .\sr_reg[7]_2 (\sr_reg[7]_1 ),
        .\sr_reg[7]_3 (\sr_reg[7]_2 ),
        .\sr_reg[7]_4 (\sr_reg[7]_3 ),
        .\sr_reg[8]_0 (sreg_n_24),
        .\sr_reg[8]_1 (sreg_n_25),
        .\sr_reg[8]_2 (sreg_n_60),
        .\sr_reg[9]_0 (sreg_n_61),
        .\stat_reg[0] (\stat_reg[0] ),
        .\stat_reg[1] (\stat_reg[1]_3 ));
  mcbs_rgf_treg treg
       (.SR(p_0_in_0),
        .\bdatw[10]_INST_0_i_2 (sreg_n_73),
        .\bdatw[10]_INST_0_i_2_0 (bank02_n_171),
        .\bdatw[10]_INST_0_i_2_1 (bank13_n_186),
        .\bdatw[11]_INST_0_i_2 (sreg_n_72),
        .\bdatw[11]_INST_0_i_2_0 (bank02_n_145),
        .\bdatw[11]_INST_0_i_2_1 (bank13_n_185),
        .\bdatw[12]_INST_0_i_2 (sreg_n_59),
        .\bdatw[12]_INST_0_i_2_0 (bank02_n_143),
        .\bdatw[12]_INST_0_i_2_1 (bank13_n_184),
        .\bdatw[15]_INST_0_i_15 ({bank13_n_63,bank13_n_64,bank13_n_65,bank13_n_66,bank13_n_67,bank13_n_68,bank13_n_69,bank13_n_70,bank13_n_71,bank13_n_72,bank13_n_73,bank13_n_74,bank13_n_75,bank13_n_76,bank13_n_77,bank13_n_78}),
        .\bdatw[15]_INST_0_i_15_0 (\sr_reg[15] [0]),
        .\bdatw[15]_INST_0_i_15_1 ({bank02_n_64,bank02_n_65,bank02_n_66,bank02_n_67,bank02_n_68,bank02_n_69,bank02_n_70,bank02_n_71,bank02_n_72,bank02_n_73,bank02_n_74,bank02_n_75,bank02_n_76,bank02_n_77,bank02_n_78,bank02_n_79}),
        .\bdatw[9]_INST_0_i_2 (sreg_n_57),
        .\bdatw[9]_INST_0_i_2_0 (\bdatw[8]_INST_0_i_2 ),
        .\bdatw[9]_INST_0_i_2_1 (bank02_n_174),
        .\bdatw[9]_INST_0_i_2_2 (\iv[15]_i_62 ),
        .\bdatw[9]_INST_0_i_2_3 (bank13_n_187),
        .cbus_sel_cr(cbus_sel_cr[1]),
        .clk(clk),
        .ctl_selb(ctl_selb),
        .\tr_reg[0]_0 (treg_n_33),
        .\tr_reg[10]_0 (treg_n_27),
        .\tr_reg[11]_0 (treg_n_26),
        .\tr_reg[12]_0 (treg_n_25),
        .\tr_reg[13]_0 (treg_n_24),
        .\tr_reg[14]_0 (treg_n_23),
        .\tr_reg[15]_0 (\tr_reg[15] ),
        .\tr_reg[15]_1 (treg_n_22),
        .\tr_reg[15]_2 (\tr_reg[15]_0 ),
        .\tr_reg[1]_0 (\tr_reg[1] ),
        .\tr_reg[1]_1 (treg_n_17),
        .\tr_reg[2]_0 (\tr_reg[2] ),
        .\tr_reg[3]_0 (\tr_reg[3] ),
        .\tr_reg[4]_0 (\tr_reg[4] ),
        .\tr_reg[4]_1 (treg_n_21),
        .\tr_reg[5]_0 (treg_n_32),
        .\tr_reg[6]_0 (treg_n_31),
        .\tr_reg[7]_0 (treg_n_30),
        .\tr_reg[8]_0 (treg_n_29),
        .\tr_reg[9]_0 (treg_n_28));
endmodule

module mcbs_rgf_bank
   (.out({gr00[15],gr00[14],gr00[13],gr00[12],gr00[11],gr00[10],gr00[9],gr00[8],gr00[7],gr00[6],gr00[5],gr00[4],gr00[3],gr00[2],gr00[1],gr00[0]}),
    .\grn_reg[15] ({gr01[15],gr01[14],gr01[13],gr01[12],gr01[11],gr01[10],gr01[9],gr01[8],gr01[7],gr01[6],gr01[5],gr01[4],gr01[3],gr01[2],gr01[1],gr01[0]}),
    .\grn_reg[15]_0 ({gr02[15],gr02[14],gr02[13],gr02[12],gr02[11],gr02[10],gr02[9],gr02[8],gr02[7],gr02[6],gr02[5],gr02[4],gr02[3],gr02[2],gr02[1],gr02[0]}),
    .\grn_reg[15]_1 ({gr03[15],gr03[14],gr03[13],gr03[12],gr03[11],gr03[10],gr03[9],gr03[8],gr03[7],gr03[6],gr03[5],gr03[4],gr03[3],gr03[2],gr03[1],gr03[0]}),
    .\grn_reg[15]_2 ({gr04[15],gr04[14],gr04[13],gr04[12],gr04[11],gr04[10],gr04[9],gr04[8],gr04[7],gr04[6],gr04[5],gr04[4],gr04[3],gr04[2],gr04[1],gr04[0]}),
    .\grn_reg[15]_3 ({gr05[15],gr05[14],gr05[13],gr05[12],gr05[11],gr05[10],gr05[9],gr05[8],gr05[7],gr05[6],gr05[5],gr05[4],gr05[3],gr05[2],gr05[1],gr05[0]}),
    .\grn_reg[15]_4 ({gr06[15],gr06[14],gr06[13],gr06[12],gr06[11],gr06[10],gr06[9],gr06[8],gr06[7],gr06[6],gr06[5],gr06[4],gr06[3],gr06[2],gr06[1],gr06[0]}),
    .\grn_reg[15]_5 ({gr07[15],gr07[14],gr07[13],gr07[12],gr07[11],gr07[10],gr07[9],gr07[8],gr07[7],gr07[6],gr07[5],gr07[4],gr07[3],gr07[2],gr07[1],gr07[0]}),
    SR,
    \grn_reg[9] ,
    \grn_reg[14] ,
    \grn_reg[0] ,
    \grn_reg[15]_6 ,
    \grn_reg[13] ,
    \grn_reg[13]_0 ,
    \grn_reg[12] ,
    \grn_reg[11] ,
    \grn_reg[11]_0 ,
    \grn_reg[10] ,
    \grn_reg[7] ,
    \grn_reg[7]_0 ,
    \grn_reg[6] ,
    \grn_reg[5] ,
    \grn_reg[4] ,
    \grn_reg[3] ,
    \grn_reg[3]_0 ,
    \grn_reg[0]_0 ,
    \grn_reg[0]_1 ,
    \grn_reg[15]_7 ,
    \grn_reg[14]_0 ,
    \grn_reg[14]_1 ,
    \grn_reg[13]_1 ,
    \grn_reg[12]_0 ,
    \grn_reg[12]_1 ,
    \grn_reg[11]_1 ,
    \grn_reg[10]_0 ,
    \grn_reg[10]_1 ,
    \grn_reg[9]_0 ,
    \grn_reg[9]_1 ,
    \grn_reg[8] ,
    \grn_reg[8]_0 ,
    \grn_reg[8]_1 ,
    \grn_reg[7]_1 ,
    \grn_reg[6]_0 ,
    \grn_reg[6]_1 ,
    \grn_reg[5]_0 ,
    \grn_reg[5]_1 ,
    \grn_reg[4]_0 ,
    \grn_reg[3]_1 ,
    \grn_reg[2] ,
    \grn_reg[2]_0 ,
    \grn_reg[2]_1 ,
    \grn_reg[1] ,
    \grn_reg[1]_0 ,
    \grn_reg[1]_1 ,
    \grn_reg[0]_2 ,
    rst_n,
    \bdatw[15]_INST_0_i_14 ,
    ctl_sela,
    \badr[14]_INST_0_i_2 ,
    \bdatw[15]_INST_0_i_21 ,
    \badr[0]_INST_0_i_2 ,
    \badr[0]_INST_0_i_2_0 ,
    ctl_selb,
    \bdatw[14]_INST_0_i_12 ,
    E,
    \grn_reg[15]_8 ,
    clk,
    \grn_reg[15]_9 ,
    \grn_reg[15]_10 ,
    \grn_reg[15]_11 ,
    \grn_reg[15]_12 ,
    \grn_reg[15]_13 ,
    \grn_reg[15]_14 ,
    \grn_reg[15]_15 );
  output [0:0]SR;
  output \grn_reg[9] ;
  output \grn_reg[14] ;
  output \grn_reg[0] ;
  output \grn_reg[15]_6 ;
  output \grn_reg[13] ;
  output \grn_reg[13]_0 ;
  output \grn_reg[12] ;
  output \grn_reg[11] ;
  output \grn_reg[11]_0 ;
  output \grn_reg[10] ;
  output \grn_reg[7] ;
  output \grn_reg[7]_0 ;
  output \grn_reg[6] ;
  output \grn_reg[5] ;
  output \grn_reg[4] ;
  output \grn_reg[3] ;
  output \grn_reg[3]_0 ;
  output \grn_reg[0]_0 ;
  output \grn_reg[0]_1 ;
  output \grn_reg[15]_7 ;
  output \grn_reg[14]_0 ;
  output \grn_reg[14]_1 ;
  output \grn_reg[13]_1 ;
  output \grn_reg[12]_0 ;
  output \grn_reg[12]_1 ;
  output \grn_reg[11]_1 ;
  output \grn_reg[10]_0 ;
  output \grn_reg[10]_1 ;
  output \grn_reg[9]_0 ;
  output \grn_reg[9]_1 ;
  output \grn_reg[8] ;
  output \grn_reg[8]_0 ;
  output \grn_reg[8]_1 ;
  output \grn_reg[7]_1 ;
  output \grn_reg[6]_0 ;
  output \grn_reg[6]_1 ;
  output \grn_reg[5]_0 ;
  output \grn_reg[5]_1 ;
  output \grn_reg[4]_0 ;
  output \grn_reg[3]_1 ;
  output \grn_reg[2] ;
  output \grn_reg[2]_0 ;
  output \grn_reg[2]_1 ;
  output \grn_reg[1] ;
  output \grn_reg[1]_0 ;
  output \grn_reg[1]_1 ;
  output \grn_reg[0]_2 ;
  input rst_n;
  input [15:0]\bdatw[15]_INST_0_i_14 ;
  input [1:0]ctl_sela;
  input [0:0]\badr[14]_INST_0_i_2 ;
  input [15:0]\bdatw[15]_INST_0_i_21 ;
  input [0:0]\badr[0]_INST_0_i_2 ;
  input [0:0]\badr[0]_INST_0_i_2_0 ;
  input [1:0]ctl_selb;
  input [13:0]\bdatw[14]_INST_0_i_12 ;
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
  wire [0:0]\badr[0]_INST_0_i_2 ;
  wire [0:0]\badr[0]_INST_0_i_2_0 ;
  wire [0:0]\badr[14]_INST_0_i_2 ;
  wire [13:0]\bdatw[14]_INST_0_i_12 ;
  wire [15:0]\bdatw[15]_INST_0_i_14 ;
  wire [15:0]\bdatw[15]_INST_0_i_21 ;
  wire clk;
  wire [1:0]ctl_sela;
  wire [1:0]ctl_selb;
  (* DONT_TOUCH *) wire [15:0]gr00;
  (* DONT_TOUCH *) wire [15:0]gr01;
  (* DONT_TOUCH *) wire [15:0]gr02;
  (* DONT_TOUCH *) wire [15:0]gr03;
  (* DONT_TOUCH *) wire [15:0]gr04;
  (* DONT_TOUCH *) wire [15:0]gr05;
  (* DONT_TOUCH *) wire [15:0]gr06;
  (* DONT_TOUCH *) wire [15:0]gr07;
  wire \grn_reg[0] ;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[0]_1 ;
  wire \grn_reg[0]_2 ;
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
  wire \grn_reg[15]_6 ;
  wire \grn_reg[15]_7 ;
  wire [15:0]\grn_reg[15]_8 ;
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
  wire \grn_reg[4] ;
  wire \grn_reg[4]_0 ;
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

  LUT5 #(
    .INIT(32'h30002200)) 
    \badr[14]_INST_0_i_7 
       (.I0(gr07[14]),
        .I1(ctl_sela[0]),
        .I2(\bdatw[15]_INST_0_i_21 [14]),
        .I3(ctl_sela[1]),
        .I4(\badr[14]_INST_0_i_2 ),
        .O(\grn_reg[14] ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[10]_INST_0_i_25 
       (.I0(ctl_selb[1]),
        .I1(gr06[10]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_14 [10]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[10] ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[10]_INST_0_i_29 
       (.I0(ctl_selb[1]),
        .I1(gr07[10]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_21 [10]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[10]_0 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[10]_INST_0_i_31 
       (.I0(ctl_selb[1]),
        .I1(gr05[10]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[14]_INST_0_i_12 [9]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[10]_1 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[11]_INST_0_i_17 
       (.I0(ctl_selb[1]),
        .I1(gr06[3]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_14 [3]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[11]_INST_0_i_22 
       (.I0(ctl_selb[1]),
        .I1(gr06[11]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_14 [11]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[11]_0 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[11]_INST_0_i_26 
       (.I0(ctl_selb[1]),
        .I1(gr07[11]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_21 [11]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[11]_1 ));
  LUT5 #(
    .INIT(32'h0000C808)) 
    \bdatw[11]_INST_0_i_28 
       (.I0(gr05[11]),
        .I1(ctl_selb[1]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[14]_INST_0_i_12 [10]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[11] ));
  LUT5 #(
    .INIT(32'h0000C808)) 
    \bdatw[11]_INST_0_i_32 
       (.I0(gr07[3]),
        .I1(ctl_selb[1]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_21 [3]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[3] ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[11]_INST_0_i_34 
       (.I0(ctl_selb[1]),
        .I1(gr05[3]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[14]_INST_0_i_12 [3]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[3]_1 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[12]_INST_0_i_22 
       (.I0(ctl_selb[1]),
        .I1(gr06[12]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_14 [12]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[12]_1 ));
  LUT5 #(
    .INIT(32'h0000C808)) 
    \bdatw[12]_INST_0_i_26 
       (.I0(gr07[12]),
        .I1(ctl_selb[1]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_21 [12]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[12] ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[12]_INST_0_i_28 
       (.I0(ctl_selb[1]),
        .I1(gr05[12]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[14]_INST_0_i_12 [11]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[12]_0 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[13]_INST_0_i_19 
       (.I0(ctl_selb[1]),
        .I1(gr06[13]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_14 [13]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[13]_1 ));
  LUT5 #(
    .INIT(32'h0000C808)) 
    \bdatw[13]_INST_0_i_23 
       (.I0(gr07[13]),
        .I1(ctl_selb[1]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_21 [13]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[13] ));
  LUT5 #(
    .INIT(32'h0000C808)) 
    \bdatw[13]_INST_0_i_25 
       (.I0(gr05[13]),
        .I1(ctl_selb[1]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[14]_INST_0_i_12 [12]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[13]_0 ));
  LUT5 #(
    .INIT(32'h0000C808)) 
    \bdatw[13]_INST_0_i_29 
       (.I0(gr06[5]),
        .I1(ctl_selb[1]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_14 [5]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[5] ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[13]_INST_0_i_31 
       (.I0(ctl_selb[1]),
        .I1(gr05[5]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[14]_INST_0_i_12 [4]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[5]_1 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[13]_INST_0_i_33 
       (.I0(ctl_selb[1]),
        .I1(gr07[5]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_21 [5]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[14]_INST_0_i_19 
       (.I0(ctl_selb[1]),
        .I1(gr06[14]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_14 [14]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[14]_1 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[14]_INST_0_i_25 
       (.I0(ctl_selb[1]),
        .I1(gr05[14]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[14]_INST_0_i_12 [13]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[14]_0 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[14]_INST_0_i_29 
       (.I0(ctl_selb[1]),
        .I1(gr06[6]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_14 [6]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[6]_1 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[14]_INST_0_i_31 
       (.I0(ctl_selb[1]),
        .I1(gr05[6]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[14]_INST_0_i_12 [5]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[6]_0 ));
  LUT5 #(
    .INIT(32'h0000C808)) 
    \bdatw[14]_INST_0_i_33 
       (.I0(gr07[6]),
        .I1(ctl_selb[1]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_21 [6]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[6] ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[15]_INST_0_i_39 
       (.I0(ctl_selb[1]),
        .I1(gr06[15]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_14 [15]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[15]_7 ));
  LUT5 #(
    .INIT(32'h0000C808)) 
    \bdatw[15]_INST_0_i_56 
       (.I0(gr07[15]),
        .I1(ctl_selb[1]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_21 [15]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[15]_6 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[15]_INST_0_i_68 
       (.I0(ctl_selb[1]),
        .I1(gr06[7]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_14 [7]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[15]_INST_0_i_70 
       (.I0(ctl_selb[1]),
        .I1(gr05[7]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[14]_INST_0_i_12 [6]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[7]_1 ));
  LUT5 #(
    .INIT(32'h0000C808)) 
    \bdatw[15]_INST_0_i_72 
       (.I0(gr07[7]),
        .I1(ctl_selb[1]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_21 [7]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[7] ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[8]_INST_0_i_21 
       (.I0(ctl_selb[1]),
        .I1(gr06[8]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_14 [8]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[8]_1 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[8]_INST_0_i_25 
       (.I0(ctl_selb[1]),
        .I1(gr07[8]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_21 [8]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[8] ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[8]_INST_0_i_27 
       (.I0(ctl_selb[1]),
        .I1(gr05[8]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[14]_INST_0_i_12 [7]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[9]_INST_0_i_26 
       (.I0(ctl_selb[1]),
        .I1(gr07[9]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[15]_INST_0_i_21 [9]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[9]_0 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[9]_INST_0_i_28 
       (.I0(ctl_selb[1]),
        .I1(gr05[9]),
        .I2(\badr[14]_INST_0_i_2 ),
        .I3(\bdatw[14]_INST_0_i_12 [8]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[9]_1 ));
  mcbs_rgf_grn_8 grn00
       (.E(E),
        .Q(gr00),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_8 ),
        .rst_n(rst_n));
  mcbs_rgf_grn_9 grn01
       (.Q(gr01),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_9 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcbs_rgf_grn_10 grn02
       (.Q(gr02),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_10 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcbs_rgf_grn_11 grn03
       (.Q(gr03),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_11 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcbs_rgf_grn_12 grn04
       (.Q(gr04),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_12 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcbs_rgf_grn_13 grn05
       (.Q(gr05),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_13 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcbs_rgf_grn_14 grn06
       (.Q(gr06),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_14 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ));
  mcbs_rgf_grn_15 grn07
       (.Q(gr07),
        .SR(SR),
        .\badr[0]_INST_0_i_2 (gr03[0]),
        .\badr[0]_INST_0_i_2_0 (\badr[0]_INST_0_i_2 ),
        .\badr[0]_INST_0_i_2_1 (\badr[0]_INST_0_i_2_0 ),
        .\bdatw[10]_INST_0_i_22 (gr05[2:0]),
        .\bdatw[10]_INST_0_i_22_0 (\bdatw[14]_INST_0_i_12 [2:0]),
        .\bdatw[12]_INST_0_i_19 ({gr07[4],gr07[2:0]}),
        .\bdatw[12]_INST_0_i_19_0 ({\bdatw[15]_INST_0_i_21 [4],\bdatw[15]_INST_0_i_21 [2:0]}),
        .\bdatw[8]_INST_0_i_18 (\badr[14]_INST_0_i_2 ),
        .clk(clk),
        .ctl_sela(ctl_sela),
        .ctl_selb(ctl_selb),
        .\grn_reg[0]_0 (\grn_reg[0] ),
        .\grn_reg[0]_1 (\grn_reg[0]_0 ),
        .\grn_reg[0]_2 (\grn_reg[0]_1 ),
        .\grn_reg[0]_3 (\grn_reg[0]_2 ),
        .\grn_reg[15]_0 (\grn_reg[15]_15 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ),
        .\grn_reg[1]_0 (\grn_reg[1] ),
        .\grn_reg[1]_1 (\grn_reg[1]_0 ),
        .\grn_reg[1]_2 (\grn_reg[1]_1 ),
        .\grn_reg[2]_0 (\grn_reg[2] ),
        .\grn_reg[2]_1 (\grn_reg[2]_0 ),
        .\grn_reg[2]_2 (\grn_reg[2]_1 ),
        .\grn_reg[4]_0 (\grn_reg[4] ),
        .\grn_reg[4]_1 (\grn_reg[4]_0 ),
        .\grn_reg[9]_0 (\grn_reg[9] ),
        .\iv[12]_i_24 ({gr06[9],gr06[4],gr06[2:0]}),
        .\iv[12]_i_24_0 ({\bdatw[15]_INST_0_i_14 [9],\bdatw[15]_INST_0_i_14 [4],\bdatw[15]_INST_0_i_14 [2:0]}));
endmodule

(* ORIG_REF_NAME = "mcbs_rgf_bank" *) 
module mcbs_rgf_bank_0
   (.out({gr00[15],gr00[14],gr00[13],gr00[12],gr00[11],gr00[10],gr00[9],gr00[8],gr00[7],gr00[6],gr00[5],gr00[4],gr00[3],gr00[2],gr00[1]}),
    .\grn_reg[15] ({gr01[15],gr01[14],gr01[13],gr01[12],gr01[11],gr01[10],gr01[9],gr01[8],gr01[7],gr01[6],gr01[5],gr01[4],gr01[3],gr01[2],gr01[1],gr01[0]}),
    .\grn_reg[15]_0 ({gr02[15],gr02[14],gr02[13],gr02[12],gr02[11],gr02[10],gr02[9],gr02[8],gr02[7],gr02[6],gr02[5],gr02[4],gr02[3],gr02[2],gr02[1],gr02[0]}),
    .\grn_reg[15]_1 ({gr03[15],gr03[14],gr03[13],gr03[12],gr03[11],gr03[10],gr03[9],gr03[8],gr03[7],gr03[6],gr03[5],gr03[4],gr03[3],gr03[2],gr03[1],gr03[0]}),
    .\grn_reg[15]_2 ({gr04[15],gr04[14],gr04[13],gr04[12],gr04[11],gr04[10],gr04[9],gr04[8],gr04[7],gr04[6],gr04[5],gr04[4],gr04[3],gr04[2],gr04[1],gr04[0]}),
    .\grn_reg[15]_3 ({gr05[15],gr05[14],gr05[13],gr05[12],gr05[11],gr05[10],gr05[9],gr05[8],gr05[7],gr05[6],gr05[5],gr05[4],gr05[3],gr05[2],gr05[1],gr05[0]}),
    .\grn_reg[15]_4 ({gr06[15],gr06[14],gr06[13],gr06[12],gr06[11],gr06[10],gr06[9],gr06[8],gr06[7],gr06[6],gr06[5],gr06[4],gr06[3],gr06[2],gr06[1],gr06[0]}),
    .\grn_reg[15]_5 ({gr07[15],gr07[14],gr07[13],gr07[12],gr07[11],gr07[10],gr07[9],gr07[8],gr07[7],gr07[6],gr07[5],gr07[4],gr07[3],gr07[2],gr07[1],gr07[0]}),
    \badr[0]_INST_0_i_3 ,
    \sr_reg[0] ,
    \sr_reg[0]_0 ,
    \sr_reg[0]_1 ,
    \grn_reg[4] ,
    \grn_reg[4]_0 ,
    \sr_reg[0]_2 ,
    \grn_reg[6] ,
    \sr_reg[0]_3 ,
    \grn_reg[8] ,
    \grn_reg[8]_0 ,
    \grn_reg[9] ,
    \grn_reg[9]_0 ,
    \grn_reg[9]_1 ,
    \sr_reg[0]_4 ,
    \grn_reg[10] ,
    \grn_reg[10]_0 ,
    \grn_reg[11] ,
    \grn_reg[11]_0 ,
    \sr_reg[0]_5 ,
    \grn_reg[12] ,
    \grn_reg[12]_0 ,
    \sr_reg[0]_6 ,
    \sr_reg[0]_7 ,
    \grn_reg[14] ,
    \grn_reg[14]_0 ,
    \grn_reg[15]_6 ,
    \grn_reg[15]_7 ,
    \grn_reg[15]_8 ,
    \grn_reg[15]_9 ,
    \grn_reg[15]_10 ,
    \grn_reg[13] ,
    \grn_reg[13]_0 ,
    \grn_reg[6]_0 ,
    \grn_reg[5] ,
    \grn_reg[5]_0 ,
    \grn_reg[4]_1 ,
    \grn_reg[4]_2 ,
    \grn_reg[3] ,
    \grn_reg[3]_0 ,
    \grn_reg[2] ,
    \grn_reg[2]_0 ,
    \grn_reg[1] ,
    \grn_reg[1]_0 ,
    \grn_reg[15]_11 ,
    \grn_reg[7] ,
    \grn_reg[7]_0 ,
    \grn_reg[4]_3 ,
    \grn_reg[0] ,
    \grn_reg[1]_1 ,
    \grn_reg[4]_4 ,
    \grn_reg[14]_1 ,
    \grn_reg[13]_1 ,
    \grn_reg[12]_1 ,
    \grn_reg[11]_1 ,
    \grn_reg[8]_1 ,
    \grn_reg[6]_1 ,
    \grn_reg[4]_5 ,
    \grn_reg[3]_1 ,
    \grn_reg[2]_1 ,
    \grn_reg[1]_2 ,
    \grn_reg[15]_12 ,
    \grn_reg[10]_1 ,
    \grn_reg[9]_2 ,
    \grn_reg[7]_1 ,
    \grn_reg[5]_1 ,
    \iv[15]_i_35 ,
    \sr_reg[6] ,
    \badr[14]_INST_0_i_1_0 ,
    \badr[12]_INST_0_i_1_0 ,
    \sr_reg[6]_0 ,
    \badr[3]_INST_0_i_1 ,
    \stat_reg[1] ,
    \iv[14]_i_35 ,
    \sr_reg[6]_1 ,
    \stat_reg[1]_0 ,
    \iv[15]_i_51_0 ,
    \iv[15]_i_58_0 ,
    \sr_reg[6]_2 ,
    \sr[6]_i_9_0 ,
    \iv[11]_i_23 ,
    \bdatw[9]_INST_0_i_2 ,
    \iv[13]_i_25 ,
    \badr[5]_INST_0_i_1_0 ,
    \iv[8]_i_25_0 ,
    \bdatw[12]_INST_0_i_2 ,
    \badr[7]_INST_0_i_1_0 ,
    \badr[3]_INST_0_i_1_0 ,
    \iv[15]_i_57_0 ,
    \iv[8]_i_21 ,
    \badr[4]_INST_0_i_1 ,
    \sr_reg[6]_3 ,
    \iv[14]_i_28_0 ,
    \bdatw[9]_INST_0_i_2_0 ,
    \sr_reg[6]_4 ,
    \iv[2]_i_14 ,
    \iv[15]_i_56 ,
    \iv[14]_i_28_1 ,
    \iv[15]_i_35_0 ,
    \iv[8]_i_28 ,
    \iv[7]_i_16 ,
    \stat_reg[1]_1 ,
    \sr_reg[6]_5 ,
    \iv[13]_i_31 ,
    \bdatw[9]_INST_0_i_2_1 ,
    \sr_reg[6]_6 ,
    \iv[11]_i_30_0 ,
    \badr[11]_INST_0_i_1_0 ,
    \sr_reg[6]_7 ,
    \badr[4]_INST_0_i_1_0 ,
    abus_o,
    \iv[12]_i_20 ,
    \iv[15]_i_59_0 ,
    \iv[15]_i_54_0 ,
    \iv[13]_i_25_0 ,
    \stat_reg[1]_2 ,
    \iv[12]_i_20_0 ,
    \iv[14]_i_35_0 ,
    \iv[12]_i_19 ,
    \iv[15]_i_35_1 ,
    \iv[15]_i_51_1 ,
    \iv[13]_i_25_1 ,
    \iv[12]_i_20_1 ,
    \iv[14]_i_27 ,
    \bdatw[9]_INST_0_i_2_2 ,
    \bdatw[9]_INST_0_i_2_3 ,
    \iv[15]_i_52 ,
    \badr[8]_INST_0_i_1_0 ,
    \sr_reg[6]_8 ,
    \iv[15]_i_35_2 ,
    \sr_reg[6]_9 ,
    \iv[13]_i_21 ,
    \badr[13]_INST_0_i_1_0 ,
    \iv[14]_i_31 ,
    \iv[15]_i_52_0 ,
    \sr_reg[6]_10 ,
    \badr[15]_INST_0_i_1_0 ,
    \sr_reg[6]_11 ,
    \iv[15]_i_33 ,
    ctl_sela,
    \badr[0]_INST_0_i_1 ,
    \iv[15]_i_14 ,
    \badr[0]_INST_0_i_2 ,
    \badr[14]_INST_0_i_3_0 ,
    \badr[15]_INST_0_i_2_0 ,
    .abus_o_1_sp_1(abus_o_1_sn_1),
    \abus_o[1]_0 ,
    .abus_o_2_sp_1(abus_o_2_sn_1),
    \abus_o[2]_0 ,
    .abus_o_3_sp_1(abus_o_3_sn_1),
    \abus_o[3]_0 ,
    \badr[15]_INST_0_i_2_1 ,
    .abus_o_4_sp_1(abus_o_4_sn_1),
    \abus_o[4]_0 ,
    \abus_o[4]_1 ,
    .abus_o_5_sp_1(abus_o_5_sn_1),
    \abus_o[5]_0 ,
    .abus_o_6_sp_1(abus_o_6_sn_1),
    .abus_o_7_sp_1(abus_o_7_sn_1),
    \abus_o[7]_0 ,
    .abus_o_8_sp_1(abus_o_8_sn_1),
    \iv[12]_i_20_2 ,
    \iv[12]_i_20_3 ,
    .abus_o_9_sp_1(abus_o_9_sn_1),
    \abus_o[9]_0 ,
    \iv[12]_i_19_0 ,
    \iv[12]_i_19_1 ,
    \iv[12]_i_19_2 ,
    \badr[9]_INST_0_i_1_0 ,
    .abus_o_10_sp_1(abus_o_10_sn_1),
    \abus_o[10]_0 ,
    \iv[15]_i_58_1 ,
    \iv[15]_i_58_2 ,
    .abus_o_11_sp_1(abus_o_11_sn_1),
    \iv[15]_i_58_3 ,
    \iv[15]_i_58_4 ,
    .abus_o_12_sp_1(abus_o_12_sn_1),
    \abus_o[12]_0 ,
    \iv[8]_i_25_1 ,
    \iv[8]_i_25_2 ,
    .abus_o_13_sp_1(abus_o_13_sn_1),
    \abus_o[13]_0 ,
    .abus_o_14_sp_1(abus_o_14_sn_1),
    \abus_o[14]_0 ,
    \iv[14]_i_37_0 ,
    \iv[14]_i_37_1 ,
    \badr[14]_INST_0_i_1_1 ,
    .abus_o_15_sp_1(abus_o_15_sn_1),
    \abus_o[15]_0 ,
    \abus_o[15]_1 ,
    \iv[14]_i_33 ,
    \iv[14]_i_33_0 ,
    \badr[15]_INST_0_i_5 ,
    \badr[15]_INST_0_i_5_0 ,
    \iv[8]_i_25_3 ,
    \iv[8]_i_25_4 ,
    \badr[11]_INST_0_i_1_1 ,
    \badr[11]_INST_0_i_1_2 ,
    \badr[15]_INST_0_i_7 ,
    \badr[15]_INST_0_i_7_0 ,
    \badr[8]_INST_0_i_1_1 ,
    \badr[8]_INST_0_i_1_2 ,
    \iv[15]_i_59_1 ,
    \iv[15]_i_59_2 ,
    \badr[6]_INST_0_i_1_0 ,
    \badr[6]_INST_0_i_1_1 ,
    \iv[8]_i_24_0 ,
    \iv[8]_i_24_1 ,
    \iv[8]_i_24_2 ,
    \iv[8]_i_24_3 ,
    \iv[14]_i_38 ,
    \iv[14]_i_38_0 ,
    \iv[11]_i_20 ,
    \iv[11]_i_20_0 ,
    \badr[0]_INST_0_i_2_0 ,
    \bdatw[15]_INST_0_i_38 ,
    \badr[15]_INST_0_i_3 ,
    \badr[15]_INST_0_i_3_0 ,
    \iv[15]_i_59_3 ,
    \iv[15]_i_59_4 ,
    \iv[15]_i_62 ,
    \bdatw[8]_INST_0_i_7 ,
    \iv[15]_i_61 ,
    ctl_selb,
    \iv[15]_i_62_0 ,
    \bdatw[11]_INST_0_i_7 ,
    \bdatw[10]_INST_0_i_7 ,
    \iv[14]_i_8 ,
    \iv[14]_i_8_0 ,
    \sr[4]_i_23 ,
    \iv[15]_i_5 ,
    \sr[4]_i_23_0 ,
    \iv[2]_i_2 ,
    \iv[2]_i_2_0 ,
    \iv[10]_i_2 ,
    \iv[2]_i_2_1 ,
    \sr[6]_i_3 ,
    \iv[13]_i_5 ,
    \iv[15]_i_5_0 ,
    \sr[4]_i_23_1 ,
    \iv[2]_i_2_2 ,
    \iv[12]_i_5 ,
    ctl_copro,
    \iv[8]_i_14_0 ,
    \iv[0]_i_5 ,
    SR,
    \grn_reg[15]_13 ,
    \grn_reg[15]_14 ,
    clk,
    \grn_reg[15]_15 ,
    \grn_reg[15]_16 ,
    \grn_reg[15]_17 ,
    \grn_reg[15]_18 ,
    \grn_reg[15]_19 ,
    \grn_reg[15]_20 ,
    \grn_reg[15]_21 );
  output \badr[0]_INST_0_i_3 ;
  output \sr_reg[0] ;
  output \sr_reg[0]_0 ;
  output \sr_reg[0]_1 ;
  output \grn_reg[4] ;
  output \grn_reg[4]_0 ;
  output \sr_reg[0]_2 ;
  output \grn_reg[6] ;
  output \sr_reg[0]_3 ;
  output \grn_reg[8] ;
  output \grn_reg[8]_0 ;
  output \grn_reg[9] ;
  output \grn_reg[9]_0 ;
  output \grn_reg[9]_1 ;
  output \sr_reg[0]_4 ;
  output \grn_reg[10] ;
  output \grn_reg[10]_0 ;
  output \grn_reg[11] ;
  output \grn_reg[11]_0 ;
  output \sr_reg[0]_5 ;
  output \grn_reg[12] ;
  output \grn_reg[12]_0 ;
  output \sr_reg[0]_6 ;
  output \sr_reg[0]_7 ;
  output \grn_reg[14] ;
  output \grn_reg[14]_0 ;
  output \grn_reg[15]_6 ;
  output \grn_reg[15]_7 ;
  output \grn_reg[15]_8 ;
  output \grn_reg[15]_9 ;
  output \grn_reg[15]_10 ;
  output \grn_reg[13] ;
  output \grn_reg[13]_0 ;
  output \grn_reg[6]_0 ;
  output \grn_reg[5] ;
  output \grn_reg[5]_0 ;
  output \grn_reg[4]_1 ;
  output \grn_reg[4]_2 ;
  output \grn_reg[3] ;
  output \grn_reg[3]_0 ;
  output \grn_reg[2] ;
  output \grn_reg[2]_0 ;
  output \grn_reg[1] ;
  output \grn_reg[1]_0 ;
  output \grn_reg[15]_11 ;
  output \grn_reg[7] ;
  output \grn_reg[7]_0 ;
  output \grn_reg[4]_3 ;
  output \grn_reg[0] ;
  output \grn_reg[1]_1 ;
  output \grn_reg[4]_4 ;
  output \grn_reg[14]_1 ;
  output \grn_reg[13]_1 ;
  output \grn_reg[12]_1 ;
  output \grn_reg[11]_1 ;
  output \grn_reg[8]_1 ;
  output \grn_reg[6]_1 ;
  output \grn_reg[4]_5 ;
  output \grn_reg[3]_1 ;
  output \grn_reg[2]_1 ;
  output \grn_reg[1]_2 ;
  output \grn_reg[15]_12 ;
  output \grn_reg[10]_1 ;
  output \grn_reg[9]_2 ;
  output \grn_reg[7]_1 ;
  output \grn_reg[5]_1 ;
  output \iv[15]_i_35 ;
  output \sr_reg[6] ;
  output \badr[14]_INST_0_i_1_0 ;
  output \badr[12]_INST_0_i_1_0 ;
  output \sr_reg[6]_0 ;
  output \badr[3]_INST_0_i_1 ;
  output \stat_reg[1] ;
  output \iv[14]_i_35 ;
  output \sr_reg[6]_1 ;
  output \stat_reg[1]_0 ;
  output \iv[15]_i_51_0 ;
  output \iv[15]_i_58_0 ;
  output \sr_reg[6]_2 ;
  output \sr[6]_i_9_0 ;
  output \iv[11]_i_23 ;
  output \bdatw[9]_INST_0_i_2 ;
  output \iv[13]_i_25 ;
  output \badr[5]_INST_0_i_1_0 ;
  output \iv[8]_i_25_0 ;
  output \bdatw[12]_INST_0_i_2 ;
  output \badr[7]_INST_0_i_1_0 ;
  output \badr[3]_INST_0_i_1_0 ;
  output \iv[15]_i_57_0 ;
  output \iv[8]_i_21 ;
  output \badr[4]_INST_0_i_1 ;
  output \sr_reg[6]_3 ;
  output \iv[14]_i_28_0 ;
  output \bdatw[9]_INST_0_i_2_0 ;
  output \sr_reg[6]_4 ;
  output \iv[2]_i_14 ;
  output \iv[15]_i_56 ;
  output \iv[14]_i_28_1 ;
  output \iv[15]_i_35_0 ;
  output \iv[8]_i_28 ;
  output \iv[7]_i_16 ;
  output \stat_reg[1]_1 ;
  output \sr_reg[6]_5 ;
  output \iv[13]_i_31 ;
  output \bdatw[9]_INST_0_i_2_1 ;
  output \sr_reg[6]_6 ;
  output \iv[11]_i_30_0 ;
  output \badr[11]_INST_0_i_1_0 ;
  output \sr_reg[6]_7 ;
  output \badr[4]_INST_0_i_1_0 ;
  output [15:0]abus_o;
  output \iv[12]_i_20 ;
  output \iv[15]_i_59_0 ;
  output \iv[15]_i_54_0 ;
  output \iv[13]_i_25_0 ;
  output \stat_reg[1]_2 ;
  output \iv[12]_i_20_0 ;
  output \iv[14]_i_35_0 ;
  output \iv[12]_i_19 ;
  output \iv[15]_i_35_1 ;
  output \iv[15]_i_51_1 ;
  output \iv[13]_i_25_1 ;
  output \iv[12]_i_20_1 ;
  output \iv[14]_i_27 ;
  output \bdatw[9]_INST_0_i_2_2 ;
  output \bdatw[9]_INST_0_i_2_3 ;
  output \iv[15]_i_52 ;
  output \badr[8]_INST_0_i_1_0 ;
  output \sr_reg[6]_8 ;
  output \iv[15]_i_35_2 ;
  output \sr_reg[6]_9 ;
  output \iv[13]_i_21 ;
  output \badr[13]_INST_0_i_1_0 ;
  output \iv[14]_i_31 ;
  output \iv[15]_i_52_0 ;
  output \sr_reg[6]_10 ;
  output \badr[15]_INST_0_i_1_0 ;
  output \sr_reg[6]_11 ;
  output \iv[15]_i_33 ;
  input [4:0]ctl_sela;
  input \badr[0]_INST_0_i_1 ;
  input [1:0]\iv[15]_i_14 ;
  input [0:0]\badr[0]_INST_0_i_2 ;
  input [13:0]\badr[14]_INST_0_i_3_0 ;
  input [15:0]\badr[15]_INST_0_i_2_0 ;
  input \abus_o[1]_0 ;
  input \abus_o[2]_0 ;
  input \abus_o[3]_0 ;
  input [14:0]\badr[15]_INST_0_i_2_1 ;
  input \abus_o[4]_0 ;
  input \abus_o[4]_1 ;
  input \abus_o[5]_0 ;
  input \abus_o[7]_0 ;
  input \iv[12]_i_20_2 ;
  input \iv[12]_i_20_3 ;
  input \abus_o[9]_0 ;
  input \iv[12]_i_19_0 ;
  input \iv[12]_i_19_1 ;
  input \iv[12]_i_19_2 ;
  input \badr[9]_INST_0_i_1_0 ;
  input \abus_o[10]_0 ;
  input \iv[15]_i_58_1 ;
  input \iv[15]_i_58_2 ;
  input \iv[15]_i_58_3 ;
  input \iv[15]_i_58_4 ;
  input \abus_o[12]_0 ;
  input \iv[8]_i_25_1 ;
  input \iv[8]_i_25_2 ;
  input \abus_o[13]_0 ;
  input \abus_o[14]_0 ;
  input \iv[14]_i_37_0 ;
  input \iv[14]_i_37_1 ;
  input \badr[14]_INST_0_i_1_1 ;
  input \abus_o[15]_0 ;
  input \abus_o[15]_1 ;
  input \iv[14]_i_33 ;
  input \iv[14]_i_33_0 ;
  input [14:0]\badr[15]_INST_0_i_5 ;
  input [14:0]\badr[15]_INST_0_i_5_0 ;
  input \iv[8]_i_25_3 ;
  input \iv[8]_i_25_4 ;
  input \badr[11]_INST_0_i_1_1 ;
  input \badr[11]_INST_0_i_1_2 ;
  input [15:0]\badr[15]_INST_0_i_7 ;
  input [15:0]\badr[15]_INST_0_i_7_0 ;
  input \badr[8]_INST_0_i_1_1 ;
  input \badr[8]_INST_0_i_1_2 ;
  input \iv[15]_i_59_1 ;
  input \iv[15]_i_59_2 ;
  input \badr[6]_INST_0_i_1_0 ;
  input \badr[6]_INST_0_i_1_1 ;
  input \iv[8]_i_24_0 ;
  input \iv[8]_i_24_1 ;
  input \iv[8]_i_24_2 ;
  input \iv[8]_i_24_3 ;
  input \iv[14]_i_38 ;
  input \iv[14]_i_38_0 ;
  input \iv[11]_i_20 ;
  input \iv[11]_i_20_0 ;
  input [0:0]\badr[0]_INST_0_i_2_0 ;
  input [15:0]\bdatw[15]_INST_0_i_38 ;
  input [15:0]\badr[15]_INST_0_i_3 ;
  input [15:0]\badr[15]_INST_0_i_3_0 ;
  input \iv[15]_i_59_3 ;
  input \iv[15]_i_59_4 ;
  input \iv[15]_i_62 ;
  input \bdatw[8]_INST_0_i_7 ;
  input \iv[15]_i_61 ;
  input [1:0]ctl_selb;
  input \iv[15]_i_62_0 ;
  input \bdatw[11]_INST_0_i_7 ;
  input \bdatw[10]_INST_0_i_7 ;
  input \iv[14]_i_8 ;
  input \iv[14]_i_8_0 ;
  input \sr[4]_i_23 ;
  input \iv[15]_i_5 ;
  input \sr[4]_i_23_0 ;
  input [1:0]\iv[2]_i_2 ;
  input \iv[2]_i_2_0 ;
  input \iv[10]_i_2 ;
  input \iv[2]_i_2_1 ;
  input \sr[6]_i_3 ;
  input \iv[13]_i_5 ;
  input \iv[15]_i_5_0 ;
  input \sr[4]_i_23_1 ;
  input \iv[2]_i_2_2 ;
  input \iv[12]_i_5 ;
  input ctl_copro;
  input \iv[8]_i_14_0 ;
  input \iv[0]_i_5 ;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_13 ;
  input [15:0]\grn_reg[15]_14 ;
  input clk;
  input [0:0]\grn_reg[15]_15 ;
  input [0:0]\grn_reg[15]_16 ;
  input [0:0]\grn_reg[15]_17 ;
  input [0:0]\grn_reg[15]_18 ;
  input [0:0]\grn_reg[15]_19 ;
  input [0:0]\grn_reg[15]_20 ;
  input [0:0]\grn_reg[15]_21 ;
     output [15:0]gr00;
     output [15:0]gr01;
     output [15:0]gr02;
     output [15:0]gr03;
     output [15:0]gr04;
     output [15:0]gr05;
     output [15:0]gr06;
     output [15:0]gr07;
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
  wire \abus_o[10]_0 ;
  wire \abus_o[12]_0 ;
  wire \abus_o[13]_0 ;
  wire \abus_o[14]_0 ;
  wire \abus_o[15]_0 ;
  wire \abus_o[15]_1 ;
  wire \abus_o[1]_0 ;
  wire \abus_o[2]_0 ;
  wire \abus_o[3]_0 ;
  wire \abus_o[4]_0 ;
  wire \abus_o[4]_1 ;
  wire \abus_o[5]_0 ;
  wire \abus_o[7]_0 ;
  wire \abus_o[9]_0 ;
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
  wire \badr[0]_INST_0_i_1 ;
  wire [0:0]\badr[0]_INST_0_i_2 ;
  wire [0:0]\badr[0]_INST_0_i_2_0 ;
  wire \badr[0]_INST_0_i_3 ;
  wire \badr[10]_INST_0_i_2_n_0 ;
  wire \badr[10]_INST_0_i_3_n_0 ;
  wire \badr[10]_INST_0_i_6_n_0 ;
  wire \badr[10]_INST_0_i_7_n_0 ;
  wire \badr[10]_INST_0_i_8_n_0 ;
  wire \badr[10]_INST_0_i_9_n_0 ;
  wire \badr[11]_INST_0_i_10_n_0 ;
  wire \badr[11]_INST_0_i_1_0 ;
  wire \badr[11]_INST_0_i_1_1 ;
  wire \badr[11]_INST_0_i_1_2 ;
  wire \badr[11]_INST_0_i_4_n_0 ;
  wire \badr[12]_INST_0_i_1_0 ;
  wire \badr[12]_INST_0_i_2_n_0 ;
  wire \badr[12]_INST_0_i_3_n_0 ;
  wire \badr[12]_INST_0_i_6_n_0 ;
  wire \badr[12]_INST_0_i_7_n_0 ;
  wire \badr[12]_INST_0_i_8_n_0 ;
  wire \badr[12]_INST_0_i_9_n_0 ;
  wire \badr[13]_INST_0_i_1_0 ;
  wire \badr[13]_INST_0_i_2_n_0 ;
  wire \badr[13]_INST_0_i_3_n_0 ;
  wire \badr[13]_INST_0_i_6_n_0 ;
  wire \badr[13]_INST_0_i_7_n_0 ;
  wire \badr[13]_INST_0_i_8_n_0 ;
  wire \badr[13]_INST_0_i_9_n_0 ;
  wire \badr[14]_INST_0_i_1_0 ;
  wire \badr[14]_INST_0_i_1_1 ;
  wire \badr[14]_INST_0_i_2_n_0 ;
  wire [13:0]\badr[14]_INST_0_i_3_0 ;
  wire \badr[14]_INST_0_i_3_n_0 ;
  wire \badr[14]_INST_0_i_6_n_0 ;
  wire \badr[14]_INST_0_i_8_n_0 ;
  wire \badr[14]_INST_0_i_9_n_0 ;
  wire \badr[15]_INST_0_i_10_n_0 ;
  wire \badr[15]_INST_0_i_1_0 ;
  wire [15:0]\badr[15]_INST_0_i_2_0 ;
  wire [14:0]\badr[15]_INST_0_i_2_1 ;
  wire [15:0]\badr[15]_INST_0_i_3 ;
  wire [15:0]\badr[15]_INST_0_i_3_0 ;
  wire [14:0]\badr[15]_INST_0_i_5 ;
  wire [14:0]\badr[15]_INST_0_i_5_0 ;
  wire [15:0]\badr[15]_INST_0_i_7 ;
  wire [15:0]\badr[15]_INST_0_i_7_0 ;
  wire \badr[15]_INST_0_i_8_n_0 ;
  wire \badr[3]_INST_0_i_1 ;
  wire \badr[3]_INST_0_i_1_0 ;
  wire \badr[3]_INST_0_i_2_n_0 ;
  wire \badr[3]_INST_0_i_3_n_0 ;
  wire \badr[3]_INST_0_i_6_n_0 ;
  wire \badr[3]_INST_0_i_7_n_0 ;
  wire \badr[3]_INST_0_i_8_n_0 ;
  wire \badr[3]_INST_0_i_9_n_0 ;
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_1_0 ;
  wire \badr[4]_INST_0_i_6_n_0 ;
  wire \badr[4]_INST_0_i_7_n_0 ;
  wire \badr[5]_INST_0_i_1_0 ;
  wire \badr[5]_INST_0_i_2_n_0 ;
  wire \badr[5]_INST_0_i_3_n_0 ;
  wire \badr[5]_INST_0_i_6_n_0 ;
  wire \badr[5]_INST_0_i_7_n_0 ;
  wire \badr[5]_INST_0_i_8_n_0 ;
  wire \badr[5]_INST_0_i_9_n_0 ;
  wire \badr[6]_INST_0_i_10_n_0 ;
  wire \badr[6]_INST_0_i_1_0 ;
  wire \badr[6]_INST_0_i_1_1 ;
  wire \badr[6]_INST_0_i_4_n_0 ;
  wire \badr[7]_INST_0_i_1_0 ;
  wire \badr[8]_INST_0_i_10_n_0 ;
  wire \badr[8]_INST_0_i_1_0 ;
  wire \badr[8]_INST_0_i_1_1 ;
  wire \badr[8]_INST_0_i_1_2 ;
  wire \badr[8]_INST_0_i_4_n_0 ;
  wire \badr[9]_INST_0_i_1_0 ;
  wire \badr[9]_INST_0_i_2_n_0 ;
  wire \badr[9]_INST_0_i_3_n_0 ;
  wire \badr[9]_INST_0_i_6_n_0 ;
  wire \badr[9]_INST_0_i_7_n_0 ;
  wire \badr[9]_INST_0_i_8_n_0 ;
  wire \bdatw[10]_INST_0_i_7 ;
  wire \bdatw[11]_INST_0_i_29_n_0 ;
  wire \bdatw[11]_INST_0_i_7 ;
  wire \bdatw[12]_INST_0_i_2 ;
  wire [15:0]\bdatw[15]_INST_0_i_38 ;
  wire \bdatw[8]_INST_0_i_7 ;
  wire \bdatw[9]_INST_0_i_2 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_2_1 ;
  wire \bdatw[9]_INST_0_i_2_2 ;
  wire \bdatw[9]_INST_0_i_2_3 ;
  wire clk;
  wire ctl_copro;
  wire [4:0]ctl_sela;
  wire [1:0]ctl_selb;
  (* DONT_TOUCH *) wire [15:0]gr00;
  (* DONT_TOUCH *) wire [15:0]gr01;
  (* DONT_TOUCH *) wire [15:0]gr02;
  (* DONT_TOUCH *) wire [15:0]gr03;
  (* DONT_TOUCH *) wire [15:0]gr04;
  (* DONT_TOUCH *) wire [15:0]gr05;
  (* DONT_TOUCH *) wire [15:0]gr06;
  (* DONT_TOUCH *) wire [15:0]gr07;
  wire grn07_n_1;
  wire grn07_n_10;
  wire grn07_n_11;
  wire grn07_n_13;
  wire grn07_n_15;
  wire grn07_n_16;
  wire grn07_n_17;
  wire grn07_n_18;
  wire grn07_n_2;
  wire grn07_n_23;
  wire grn07_n_24;
  wire grn07_n_31;
  wire grn07_n_32;
  wire grn07_n_33;
  wire grn07_n_38;
  wire grn07_n_5;
  wire grn07_n_54;
  wire grn07_n_6;
  wire grn07_n_7;
  wire grn07_n_73;
  wire grn07_n_77;
  wire grn07_n_78;
  wire grn07_n_80;
  wire grn07_n_9;
  wire \grn_reg[0] ;
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
  wire \grn_reg[15]_10 ;
  wire \grn_reg[15]_11 ;
  wire \grn_reg[15]_12 ;
  wire [0:0]\grn_reg[15]_13 ;
  wire [15:0]\grn_reg[15]_14 ;
  wire [0:0]\grn_reg[15]_15 ;
  wire [0:0]\grn_reg[15]_16 ;
  wire [0:0]\grn_reg[15]_17 ;
  wire [0:0]\grn_reg[15]_18 ;
  wire [0:0]\grn_reg[15]_19 ;
  wire [0:0]\grn_reg[15]_20 ;
  wire [0:0]\grn_reg[15]_21 ;
  wire \grn_reg[15]_6 ;
  wire \grn_reg[15]_7 ;
  wire \grn_reg[15]_8 ;
  wire \grn_reg[15]_9 ;
  wire \grn_reg[1] ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[1]_1 ;
  wire \grn_reg[1]_2 ;
  wire \grn_reg[2] ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[2]_1 ;
  wire \grn_reg[3] ;
  wire \grn_reg[3]_0 ;
  wire \grn_reg[3]_1 ;
  wire \grn_reg[4] ;
  wire \grn_reg[4]_0 ;
  wire \grn_reg[4]_1 ;
  wire \grn_reg[4]_2 ;
  wire \grn_reg[4]_3 ;
  wire \grn_reg[4]_4 ;
  wire \grn_reg[4]_5 ;
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
  wire \grn_reg[9]_2 ;
  wire \iv[0]_i_5 ;
  wire \iv[10]_i_11_n_0 ;
  wire \iv[10]_i_2 ;
  wire \iv[11]_i_20 ;
  wire \iv[11]_i_20_0 ;
  wire \iv[11]_i_23 ;
  wire \iv[11]_i_27_n_0 ;
  wire \iv[11]_i_28_n_0 ;
  wire \iv[11]_i_29_n_0 ;
  wire \iv[11]_i_30_0 ;
  wire \iv[11]_i_30_n_0 ;
  wire \iv[12]_i_19 ;
  wire \iv[12]_i_19_0 ;
  wire \iv[12]_i_19_1 ;
  wire \iv[12]_i_19_2 ;
  wire \iv[12]_i_20 ;
  wire \iv[12]_i_20_0 ;
  wire \iv[12]_i_20_1 ;
  wire \iv[12]_i_20_2 ;
  wire \iv[12]_i_20_3 ;
  wire \iv[12]_i_21_n_0 ;
  wire \iv[12]_i_22_n_0 ;
  wire \iv[12]_i_5 ;
  wire \iv[13]_i_21 ;
  wire \iv[13]_i_25 ;
  wire \iv[13]_i_25_0 ;
  wire \iv[13]_i_25_1 ;
  wire \iv[13]_i_31 ;
  wire \iv[13]_i_5 ;
  wire \iv[14]_i_27 ;
  wire \iv[14]_i_28_0 ;
  wire \iv[14]_i_28_1 ;
  wire \iv[14]_i_31 ;
  wire \iv[14]_i_33 ;
  wire \iv[14]_i_33_0 ;
  wire \iv[14]_i_35 ;
  wire \iv[14]_i_35_0 ;
  wire \iv[14]_i_36_n_0 ;
  wire \iv[14]_i_37_0 ;
  wire \iv[14]_i_37_1 ;
  wire \iv[14]_i_37_n_0 ;
  wire \iv[14]_i_38 ;
  wire \iv[14]_i_38_0 ;
  wire \iv[14]_i_8 ;
  wire \iv[14]_i_8_0 ;
  wire [1:0]\iv[15]_i_14 ;
  wire \iv[15]_i_33 ;
  wire \iv[15]_i_35 ;
  wire \iv[15]_i_35_0 ;
  wire \iv[15]_i_35_1 ;
  wire \iv[15]_i_35_2 ;
  wire \iv[15]_i_5 ;
  wire \iv[15]_i_51_0 ;
  wire \iv[15]_i_51_1 ;
  wire \iv[15]_i_52 ;
  wire \iv[15]_i_52_0 ;
  wire \iv[15]_i_54_0 ;
  wire \iv[15]_i_54_n_0 ;
  wire \iv[15]_i_56 ;
  wire \iv[15]_i_57_0 ;
  wire \iv[15]_i_57_n_0 ;
  wire \iv[15]_i_58_0 ;
  wire \iv[15]_i_58_1 ;
  wire \iv[15]_i_58_2 ;
  wire \iv[15]_i_58_3 ;
  wire \iv[15]_i_58_4 ;
  wire \iv[15]_i_58_n_0 ;
  wire \iv[15]_i_59_0 ;
  wire \iv[15]_i_59_1 ;
  wire \iv[15]_i_59_2 ;
  wire \iv[15]_i_59_3 ;
  wire \iv[15]_i_59_4 ;
  wire \iv[15]_i_59_n_0 ;
  wire \iv[15]_i_5_0 ;
  wire \iv[15]_i_61 ;
  wire \iv[15]_i_62 ;
  wire \iv[15]_i_62_0 ;
  wire \iv[2]_i_14 ;
  wire [1:0]\iv[2]_i_2 ;
  wire \iv[2]_i_2_0 ;
  wire \iv[2]_i_2_1 ;
  wire \iv[2]_i_2_2 ;
  wire \iv[7]_i_16 ;
  wire \iv[8]_i_14_0 ;
  wire \iv[8]_i_21 ;
  wire \iv[8]_i_24_0 ;
  wire \iv[8]_i_24_1 ;
  wire \iv[8]_i_24_2 ;
  wire \iv[8]_i_24_3 ;
  wire \iv[8]_i_24_n_0 ;
  wire \iv[8]_i_25_0 ;
  wire \iv[8]_i_25_1 ;
  wire \iv[8]_i_25_2 ;
  wire \iv[8]_i_25_3 ;
  wire \iv[8]_i_25_4 ;
  wire \iv[8]_i_25_n_0 ;
  wire \iv[8]_i_28 ;
  wire \iv[8]_i_29_n_0 ;
  wire \iv[8]_i_31_n_0 ;
  wire \iv[8]_i_32_n_0 ;
  wire \iv[8]_i_33_n_0 ;
  wire \iv[8]_i_34_n_0 ;
  wire \sr[4]_i_23 ;
  wire \sr[4]_i_23_0 ;
  wire \sr[4]_i_23_1 ;
  wire \sr[6]_i_3 ;
  wire \sr[6]_i_8_n_0 ;
  wire \sr[6]_i_9_0 ;
  wire \sr[6]_i_9_n_0 ;
  wire \sr_reg[0] ;
  wire \sr_reg[0]_0 ;
  wire \sr_reg[0]_1 ;
  wire \sr_reg[0]_2 ;
  wire \sr_reg[0]_3 ;
  wire \sr_reg[0]_4 ;
  wire \sr_reg[0]_5 ;
  wire \sr_reg[0]_6 ;
  wire \sr_reg[0]_7 ;
  wire \sr_reg[6] ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[6]_10 ;
  wire \sr_reg[6]_11 ;
  wire \sr_reg[6]_2 ;
  wire \sr_reg[6]_3 ;
  wire \sr_reg[6]_4 ;
  wire \sr_reg[6]_5 ;
  wire \sr_reg[6]_6 ;
  wire \sr_reg[6]_7 ;
  wire \sr_reg[6]_8 ;
  wire \sr_reg[6]_9 ;
  wire \stat_reg[1] ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire \stat_reg[1]_2 ;

  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[0]_INST_0 
       (.I0(\badr[0]_INST_0_i_3 ),
        .I1(ctl_copro),
        .O(abus_o[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[10]_INST_0 
       (.I0(\sr_reg[0]_4 ),
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
       (.I0(\sr_reg[0]_5 ),
        .I1(ctl_copro),
        .O(abus_o[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[13]_INST_0 
       (.I0(\sr_reg[0]_6 ),
        .I1(ctl_copro),
        .O(abus_o[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[14]_INST_0 
       (.I0(\sr_reg[0]_7 ),
        .I1(ctl_copro),
        .O(abus_o[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[15]_INST_0 
       (.I0(\grn_reg[15]_6 ),
        .I1(ctl_copro),
        .O(abus_o[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[1]_INST_0 
       (.I0(\sr_reg[0] ),
        .I1(ctl_copro),
        .O(abus_o[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[2]_INST_0 
       (.I0(\sr_reg[0]_0 ),
        .I1(ctl_copro),
        .O(abus_o[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[3]_INST_0 
       (.I0(\sr_reg[0]_1 ),
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
       (.I0(\sr_reg[0]_2 ),
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
       (.I0(\sr_reg[0]_3 ),
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
  MUXF7 \badr[10]_INST_0_i_2 
       (.I0(\badr[10]_INST_0_i_6_n_0 ),
        .I1(\badr[10]_INST_0_i_7_n_0 ),
        .O(\badr[10]_INST_0_i_2_n_0 ),
        .S(ctl_sela[0]));
  MUXF7 \badr[10]_INST_0_i_3 
       (.I0(\badr[10]_INST_0_i_8_n_0 ),
        .I1(\badr[10]_INST_0_i_9_n_0 ),
        .O(\badr[10]_INST_0_i_3_n_0 ),
        .S(ctl_sela[0]));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[10]_INST_0_i_6 
       (.I0(gr06[10]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_2_0 [10]),
        .I4(ctl_sela[3]),
        .O(\badr[10]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[10]_INST_0_i_7 
       (.I0(gr07[10]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_2_1 [10]),
        .I4(ctl_sela[3]),
        .O(\badr[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[10]_INST_0_i_8 
       (.I0(gr04[10]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_3 [10]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_3_0 [10]),
        .I5(ctl_sela[4]),
        .O(\badr[10]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[10]_INST_0_i_9 
       (.I0(gr05[10]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[14]_INST_0_i_3_0 [9]),
        .I4(ctl_sela[3]),
        .O(\badr[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[11]_INST_0_i_1 
       (.I0(grn07_n_11),
        .I1(grn07_n_10),
        .I2(ctl_sela[2]),
        .I3(\badr[11]_INST_0_i_4_n_0 ),
        .I4(ctl_sela[1]),
        .I5(abus_o_11_sn_1),
        .O(\grn_reg[11] ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \badr[11]_INST_0_i_10 
       (.I0(gr03[11]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_5 [10]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_5_0 [10]),
        .I5(ctl_sela[3]),
        .O(\badr[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[11]_INST_0_i_14 
       (.I0(gr01[11]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_7 [11]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_7_0 [11]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[11]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \badr[11]_INST_0_i_4 
       (.I0(\badr[11]_INST_0_i_10_n_0 ),
        .I1(ctl_sela[0]),
        .I2(\badr[11]_INST_0_i_1_1 ),
        .I3(gr02[11]),
        .I4(\badr[11]_INST_0_i_1_2 ),
        .O(\badr[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[12]_INST_0_i_1 
       (.I0(\badr[12]_INST_0_i_2_n_0 ),
        .I1(\badr[12]_INST_0_i_3_n_0 ),
        .I2(ctl_sela[2]),
        .I3(abus_o_12_sn_1),
        .I4(ctl_sela[1]),
        .I5(\abus_o[12]_0 ),
        .O(\sr_reg[0]_5 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[12]_INST_0_i_10 
       (.I0(gr03[12]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_5_0 [11]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_5 [11]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[12] ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[12]_INST_0_i_14 
       (.I0(gr01[12]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_7 [12]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_7_0 [12]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[12]_0 ));
  MUXF7 \badr[12]_INST_0_i_2 
       (.I0(\badr[12]_INST_0_i_6_n_0 ),
        .I1(\badr[12]_INST_0_i_7_n_0 ),
        .O(\badr[12]_INST_0_i_2_n_0 ),
        .S(ctl_sela[0]));
  MUXF7 \badr[12]_INST_0_i_3 
       (.I0(\badr[12]_INST_0_i_8_n_0 ),
        .I1(\badr[12]_INST_0_i_9_n_0 ),
        .O(\badr[12]_INST_0_i_3_n_0 ),
        .S(ctl_sela[0]));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[12]_INST_0_i_6 
       (.I0(gr06[12]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_2_0 [12]),
        .I4(ctl_sela[3]),
        .O(\badr[12]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[12]_INST_0_i_7 
       (.I0(gr07[12]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2_1 [12]),
        .O(\badr[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[12]_INST_0_i_8 
       (.I0(gr04[12]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_3 [12]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_3_0 [12]),
        .I5(ctl_sela[4]),
        .O(\badr[12]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[12]_INST_0_i_9 
       (.I0(gr05[12]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[14]_INST_0_i_3_0 [11]),
        .I4(ctl_sela[3]),
        .O(\badr[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[13]_INST_0_i_1 
       (.I0(\badr[13]_INST_0_i_2_n_0 ),
        .I1(\badr[13]_INST_0_i_3_n_0 ),
        .I2(ctl_sela[2]),
        .I3(abus_o_13_sn_1),
        .I4(ctl_sela[1]),
        .I5(\abus_o[13]_0 ),
        .O(\sr_reg[0]_6 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[13]_INST_0_i_10 
       (.I0(gr03[13]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_5_0 [12]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_5 [12]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[13] ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[13]_INST_0_i_14 
       (.I0(gr01[13]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_7 [13]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_7_0 [13]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[13]_0 ));
  MUXF7 \badr[13]_INST_0_i_2 
       (.I0(\badr[13]_INST_0_i_6_n_0 ),
        .I1(\badr[13]_INST_0_i_7_n_0 ),
        .O(\badr[13]_INST_0_i_2_n_0 ),
        .S(ctl_sela[0]));
  MUXF7 \badr[13]_INST_0_i_3 
       (.I0(\badr[13]_INST_0_i_8_n_0 ),
        .I1(\badr[13]_INST_0_i_9_n_0 ),
        .O(\badr[13]_INST_0_i_3_n_0 ),
        .S(ctl_sela[0]));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[13]_INST_0_i_6 
       (.I0(gr06[13]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_2_0 [13]),
        .I4(ctl_sela[3]),
        .O(\badr[13]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[13]_INST_0_i_7 
       (.I0(gr07[13]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2_1 [13]),
        .O(\badr[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[13]_INST_0_i_8 
       (.I0(gr04[13]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_3 [13]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_3_0 [13]),
        .I5(ctl_sela[4]),
        .O(\badr[13]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[13]_INST_0_i_9 
       (.I0(gr05[13]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[14]_INST_0_i_3_0 [12]),
        .O(\badr[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[14]_INST_0_i_1 
       (.I0(\badr[14]_INST_0_i_2_n_0 ),
        .I1(\badr[14]_INST_0_i_3_n_0 ),
        .I2(ctl_sela[2]),
        .I3(abus_o_14_sn_1),
        .I4(ctl_sela[1]),
        .I5(\abus_o[14]_0 ),
        .O(\sr_reg[0]_7 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \badr[14]_INST_0_i_10 
       (.I0(gr03[14]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_5 [13]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_5_0 [13]),
        .I5(ctl_sela[3]),
        .O(\grn_reg[14] ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[14]_INST_0_i_14 
       (.I0(gr01[14]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_7 [14]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_7_0 [14]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[14]_0 ));
  MUXF7 \badr[14]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_6_n_0 ),
        .I1(\badr[14]_INST_0_i_1_1 ),
        .O(\badr[14]_INST_0_i_2_n_0 ),
        .S(ctl_sela[0]));
  MUXF7 \badr[14]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\badr[14]_INST_0_i_9_n_0 ),
        .O(\badr[14]_INST_0_i_3_n_0 ),
        .S(ctl_sela[0]));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[14]_INST_0_i_6 
       (.I0(gr06[14]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2_0 [14]),
        .O(\badr[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[14]_INST_0_i_8 
       (.I0(gr04[14]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_3 [14]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_3_0 [14]),
        .I5(ctl_sela[4]),
        .O(\badr[14]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[14]_INST_0_i_9 
       (.I0(gr05[14]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[14]_INST_0_i_3_0 [13]),
        .I4(ctl_sela[3]),
        .O(\badr[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[15]_INST_0_i_1 
       (.I0(\grn_reg[15]_7 ),
        .I1(abus_o_15_sn_1),
        .I2(ctl_sela[2]),
        .I3(\abus_o[15]_0 ),
        .I4(ctl_sela[1]),
        .I5(\abus_o[15]_1 ),
        .O(\grn_reg[15]_6 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[15]_INST_0_i_10 
       (.I0(gr06[15]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_2_0 [15]),
        .I4(ctl_sela[3]),
        .O(\badr[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[15]_INST_0_i_13 
       (.I0(gr04[15]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_3 [15]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_3_0 [15]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[15]_11 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \badr[15]_INST_0_i_19 
       (.I0(gr03[15]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_5 [14]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_5_0 [14]),
        .I5(ctl_sela[3]),
        .O(\grn_reg[15]_9 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[15]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .O(\grn_reg[15]_7 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[15]_INST_0_i_27 
       (.I0(gr01[15]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_7 [15]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_7_0 [15]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[15]_10 ));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[15]_INST_0_i_8 
       (.I0(gr07[15]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2_1 [14]),
        .O(\badr[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[1]_INST_0_i_1 
       (.I0(grn07_n_1),
        .I1(grn07_n_24),
        .I2(ctl_sela[2]),
        .I3(abus_o_1_sn_1),
        .I4(ctl_sela[1]),
        .I5(\abus_o[1]_0 ),
        .O(\sr_reg[0] ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \badr[1]_INST_0_i_10 
       (.I0(gr03[1]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_5 [0]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_5_0 [0]),
        .I5(ctl_sela[3]),
        .O(\grn_reg[1] ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[1]_INST_0_i_14 
       (.I0(gr01[1]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_7 [1]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_7_0 [1]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[2]_INST_0_i_1 
       (.I0(grn07_n_2),
        .I1(grn07_n_23),
        .I2(ctl_sela[2]),
        .I3(abus_o_2_sn_1),
        .I4(ctl_sela[1]),
        .I5(\abus_o[2]_0 ),
        .O(\sr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \badr[2]_INST_0_i_10 
       (.I0(gr03[2]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_5 [1]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_5_0 [1]),
        .I5(ctl_sela[3]),
        .O(\grn_reg[2] ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[2]_INST_0_i_14 
       (.I0(gr01[2]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_7 [2]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_7_0 [2]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[2]_0 ));
  MUXF7 \badr[3]_INST_0_i_2 
       (.I0(\badr[3]_INST_0_i_6_n_0 ),
        .I1(\badr[3]_INST_0_i_7_n_0 ),
        .O(\badr[3]_INST_0_i_2_n_0 ),
        .S(ctl_sela[0]));
  MUXF7 \badr[3]_INST_0_i_3 
       (.I0(\badr[3]_INST_0_i_8_n_0 ),
        .I1(\badr[3]_INST_0_i_9_n_0 ),
        .O(\badr[3]_INST_0_i_3_n_0 ),
        .S(ctl_sela[0]));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[3]_INST_0_i_6 
       (.I0(gr06[3]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_2_0 [3]),
        .I4(ctl_sela[3]),
        .O(\badr[3]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[3]_INST_0_i_7 
       (.I0(gr07[3]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2_1 [3]),
        .O(\badr[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[3]_INST_0_i_8 
       (.I0(gr04[3]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_3 [3]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_3_0 [3]),
        .I5(ctl_sela[4]),
        .O(\badr[3]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \badr[3]_INST_0_i_9 
       (.I0(gr05[3]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[14]_INST_0_i_3_0 [3]),
        .I3(ctl_sela[4]),
        .I4(ctl_sela[3]),
        .O(\badr[3]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[4]_INST_0_i_2 
       (.I0(\badr[4]_INST_0_i_6_n_0 ),
        .I1(ctl_sela[0]),
        .I2(\badr[4]_INST_0_i_7_n_0 ),
        .O(\grn_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[4]_INST_0_i_6 
       (.I0(gr07[4]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2_1 [4]),
        .O(\badr[4]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[4]_INST_0_i_7 
       (.I0(gr06[4]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[15]_INST_0_i_2_0 [4]),
        .I4(ctl_sela[3]),
        .O(\badr[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[4]_INST_0_i_9 
       (.I0(gr04[4]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_3 [4]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_3_0 [4]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[4]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[5]_INST_0_i_1 
       (.I0(\badr[5]_INST_0_i_2_n_0 ),
        .I1(\badr[5]_INST_0_i_3_n_0 ),
        .I2(ctl_sela[2]),
        .I3(abus_o_5_sn_1),
        .I4(ctl_sela[1]),
        .I5(\abus_o[5]_0 ),
        .O(\sr_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \badr[5]_INST_0_i_10 
       (.I0(gr03[5]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_5 [4]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_5_0 [4]),
        .I5(ctl_sela[3]),
        .O(\grn_reg[5] ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \badr[5]_INST_0_i_14 
       (.I0(gr01[5]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_7_0 [5]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_7 [5]),
        .I5(ctl_sela[3]),
        .O(\grn_reg[5]_0 ));
  MUXF7 \badr[5]_INST_0_i_2 
       (.I0(\badr[5]_INST_0_i_6_n_0 ),
        .I1(\badr[5]_INST_0_i_7_n_0 ),
        .O(\badr[5]_INST_0_i_2_n_0 ),
        .S(ctl_sela[0]));
  MUXF7 \badr[5]_INST_0_i_3 
       (.I0(\badr[5]_INST_0_i_8_n_0 ),
        .I1(\badr[5]_INST_0_i_9_n_0 ),
        .O(\badr[5]_INST_0_i_3_n_0 ),
        .S(ctl_sela[0]));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[5]_INST_0_i_6 
       (.I0(gr06[5]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2_0 [5]),
        .O(\badr[5]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[5]_INST_0_i_7 
       (.I0(gr07[5]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2_1 [5]),
        .O(\badr[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[5]_INST_0_i_8 
       (.I0(gr04[5]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_3 [5]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_3_0 [5]),
        .I5(ctl_sela[4]),
        .O(\badr[5]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[5]_INST_0_i_9 
       (.I0(gr05[5]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[14]_INST_0_i_3_0 [4]),
        .I4(ctl_sela[3]),
        .O(\badr[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[6]_INST_0_i_1 
       (.I0(grn07_n_5),
        .I1(grn07_n_18),
        .I2(ctl_sela[2]),
        .I3(\badr[6]_INST_0_i_4_n_0 ),
        .I4(ctl_sela[1]),
        .I5(abus_o_6_sn_1),
        .O(\grn_reg[6] ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \badr[6]_INST_0_i_10 
       (.I0(gr03[6]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_5 [5]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_5_0 [5]),
        .I5(ctl_sela[3]),
        .O(\badr[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[6]_INST_0_i_14 
       (.I0(gr01[6]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_7 [6]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_7_0 [6]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \badr[6]_INST_0_i_4 
       (.I0(\badr[6]_INST_0_i_10_n_0 ),
        .I1(ctl_sela[0]),
        .I2(\badr[6]_INST_0_i_1_0 ),
        .I3(gr02[6]),
        .I4(\badr[6]_INST_0_i_1_1 ),
        .O(\badr[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[7]_INST_0_i_1 
       (.I0(grn07_n_6),
        .I1(grn07_n_16),
        .I2(ctl_sela[2]),
        .I3(abus_o_7_sn_1),
        .I4(ctl_sela[1]),
        .I5(\abus_o[7]_0 ),
        .O(\sr_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[7]_INST_0_i_10 
       (.I0(gr03[7]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_5_0 [6]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_5 [6]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[7] ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[7]_INST_0_i_14 
       (.I0(gr01[7]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_7 [7]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_7_0 [7]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[8]_INST_0_i_1 
       (.I0(grn07_n_7),
        .I1(grn07_n_15),
        .I2(ctl_sela[2]),
        .I3(\badr[8]_INST_0_i_4_n_0 ),
        .I4(ctl_sela[1]),
        .I5(abus_o_8_sn_1),
        .O(\grn_reg[8] ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \badr[8]_INST_0_i_10 
       (.I0(gr03[8]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_5 [7]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_5_0 [7]),
        .I5(ctl_sela[3]),
        .O(\badr[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[8]_INST_0_i_14 
       (.I0(gr01[8]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_7 [8]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_7_0 [8]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[8]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \badr[8]_INST_0_i_4 
       (.I0(\badr[8]_INST_0_i_10_n_0 ),
        .I1(ctl_sela[0]),
        .I2(\badr[8]_INST_0_i_1_1 ),
        .I3(gr02[8]),
        .I4(\badr[8]_INST_0_i_1_2 ),
        .O(\badr[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[9]_INST_0_i_1 
       (.I0(\badr[9]_INST_0_i_2_n_0 ),
        .I1(\badr[9]_INST_0_i_3_n_0 ),
        .I2(ctl_sela[2]),
        .I3(abus_o_9_sn_1),
        .I4(ctl_sela[1]),
        .I5(\abus_o[9]_0 ),
        .O(\grn_reg[9] ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[9]_INST_0_i_13 
       (.I0(gr01[9]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_7 [9]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_7_0 [9]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[9]_1 ));
  LUT6 #(
    .INIT(64'hBB888888B8B88888)) 
    \badr[9]_INST_0_i_2 
       (.I0(\badr[9]_INST_0_i_6_n_0 ),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_2_0 [9]),
        .I3(gr06[9]),
        .I4(\badr[9]_INST_0_i_1_0 ),
        .I5(\iv[15]_i_14 [0]),
        .O(\badr[9]_INST_0_i_2_n_0 ));
  MUXF7 \badr[9]_INST_0_i_3 
       (.I0(\badr[9]_INST_0_i_7_n_0 ),
        .I1(\badr[9]_INST_0_i_8_n_0 ),
        .O(\badr[9]_INST_0_i_3_n_0 ),
        .S(ctl_sela[0]));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[9]_INST_0_i_6 
       (.I0(gr07[9]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_2_1 [9]),
        .O(\badr[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[9]_INST_0_i_7 
       (.I0(gr04[9]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_3 [9]),
        .I3(ctl_sela[3]),
        .I4(\badr[15]_INST_0_i_3_0 [9]),
        .I5(ctl_sela[4]),
        .O(\badr[9]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[9]_INST_0_i_8 
       (.I0(gr05[9]),
        .I1(\iv[15]_i_14 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[14]_INST_0_i_3_0 [8]),
        .I4(ctl_sela[3]),
        .O(\badr[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \badr[9]_INST_0_i_9 
       (.I0(gr03[9]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\badr[15]_INST_0_i_5 [8]),
        .I3(ctl_sela[4]),
        .I4(\badr[15]_INST_0_i_5_0 [8]),
        .I5(ctl_sela[3]),
        .O(\grn_reg[9]_0 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \bdatw[10]_INST_0_i_38 
       (.I0(gr02[10]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\bdatw[15]_INST_0_i_38 [10]),
        .I3(ctl_selb[1]),
        .O(\grn_reg[10]_1 ));
  MUXF7 \bdatw[11]_INST_0_i_18 
       (.I0(\bdatw[11]_INST_0_i_29_n_0 ),
        .I1(\bdatw[11]_INST_0_i_7 ),
        .O(\grn_reg[3]_1 ),
        .S(ctl_selb[0]));
  LUT4 #(
    .INIT(16'hB800)) 
    \bdatw[11]_INST_0_i_29 
       (.I0(gr02[3]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\bdatw[15]_INST_0_i_38 [3]),
        .I3(ctl_selb[1]),
        .O(\bdatw[11]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \bdatw[11]_INST_0_i_35 
       (.I0(gr02[11]),
        .I1(ctl_selb[1]),
        .I2(\bdatw[15]_INST_0_i_38 [11]),
        .I3(\iv[15]_i_14 [0]),
        .O(\grn_reg[11]_1 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \bdatw[12]_INST_0_i_36 
       (.I0(gr02[12]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\bdatw[15]_INST_0_i_38 [12]),
        .I3(ctl_selb[1]),
        .O(\grn_reg[12]_1 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \bdatw[13]_INST_0_i_34 
       (.I0(gr02[13]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\bdatw[15]_INST_0_i_38 [13]),
        .I3(ctl_selb[1]),
        .O(\grn_reg[13]_1 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \bdatw[13]_INST_0_i_35 
       (.I0(gr02[5]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\bdatw[15]_INST_0_i_38 [5]),
        .I3(ctl_selb[1]),
        .O(\grn_reg[5]_1 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \bdatw[14]_INST_0_i_34 
       (.I0(gr02[14]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\bdatw[15]_INST_0_i_38 [14]),
        .I3(ctl_selb[1]),
        .O(\grn_reg[14]_1 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \bdatw[14]_INST_0_i_35 
       (.I0(gr02[6]),
        .I1(ctl_selb[1]),
        .I2(\bdatw[15]_INST_0_i_38 [6]),
        .I3(\iv[15]_i_14 [0]),
        .O(\grn_reg[6]_1 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \bdatw[15]_INST_0_i_109 
       (.I0(gr02[7]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\bdatw[15]_INST_0_i_38 [7]),
        .I3(ctl_selb[1]),
        .O(\grn_reg[7]_1 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \bdatw[15]_INST_0_i_86 
       (.I0(gr02[15]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\bdatw[15]_INST_0_i_38 [15]),
        .I3(ctl_selb[1]),
        .O(\grn_reg[15]_12 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \bdatw[8]_INST_0_i_36 
       (.I0(gr02[8]),
        .I1(ctl_selb[1]),
        .I2(\bdatw[15]_INST_0_i_38 [8]),
        .I3(\iv[15]_i_14 [0]),
        .O(\grn_reg[8]_1 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \bdatw[9]_INST_0_i_36 
       (.I0(gr02[9]),
        .I1(\iv[15]_i_14 [0]),
        .I2(\bdatw[15]_INST_0_i_38 [9]),
        .I3(ctl_selb[1]),
        .O(\grn_reg[9]_2 ));
  mcbs_rgf_grn grn00
       (.Q(gr00),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_13 ),
        .\grn_reg[15]_1 (\grn_reg[15]_14 ));
  mcbs_rgf_grn_1 grn01
       (.Q(gr01),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_15 ),
        .\grn_reg[15]_1 (\grn_reg[15]_14 ));
  mcbs_rgf_grn_2 grn02
       (.Q(gr02),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_16 ),
        .\grn_reg[15]_1 (\grn_reg[15]_14 ));
  mcbs_rgf_grn_3 grn03
       (.Q(gr03),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_17 ),
        .\grn_reg[15]_1 (\grn_reg[15]_14 ));
  mcbs_rgf_grn_4 grn04
       (.Q(gr04),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_18 ),
        .\grn_reg[15]_1 (\grn_reg[15]_14 ));
  mcbs_rgf_grn_5 grn05
       (.Q(gr05),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_19 ),
        .\grn_reg[15]_1 (\grn_reg[15]_14 ));
  mcbs_rgf_grn_6 grn06
       (.Q(gr06),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_20 ),
        .\grn_reg[15]_1 (\grn_reg[15]_14 ));
  mcbs_rgf_grn_7 grn07
       (.Q(gr07),
        .SR(SR),
        .\abus_o[10] (\badr[10]_INST_0_i_2_n_0 ),
        .\abus_o[10]_0 (\badr[10]_INST_0_i_3_n_0 ),
        .\abus_o[10]_1 (abus_o_10_sn_1),
        .\abus_o[10]_2 (\abus_o[10]_0 ),
        .\abus_o[3] (\badr[3]_INST_0_i_2_n_0 ),
        .\abus_o[3]_0 (\badr[3]_INST_0_i_3_n_0 ),
        .\abus_o[3]_1 (abus_o_3_sn_1),
        .\abus_o[3]_2 (\abus_o[3]_0 ),
        .\abus_o[4] (\grn_reg[4]_0 ),
        .\abus_o[4]_0 (abus_o_4_sn_1),
        .\abus_o[4]_1 (\abus_o[4]_0 ),
        .\abus_o[4]_2 (\abus_o[4]_1 ),
        .\badr[0]_INST_0_i_1_0 (\badr[0]_INST_0_i_1 ),
        .\badr[0]_INST_0_i_2_0 (\badr[0]_INST_0_i_2 ),
        .\badr[0]_INST_0_i_2_1 (\badr[0]_INST_0_i_2_0 ),
        .\badr[0]_INST_0_i_3_0 (\badr[0]_INST_0_i_3 ),
        .\badr[10]_INST_0_i_4 ({gr03[10],gr03[4:3]}),
        .\badr[10]_INST_0_i_4_0 ({\badr[15]_INST_0_i_5_0 [9],\badr[15]_INST_0_i_5_0 [3:2]}),
        .\badr[10]_INST_0_i_4_1 ({\badr[15]_INST_0_i_5 [9],\badr[15]_INST_0_i_5 [3:2]}),
        .\badr[10]_INST_0_i_5 ({gr01[10],gr01[4:3],gr01[0]}),
        .\badr[10]_INST_0_i_5_0 ({\badr[15]_INST_0_i_7 [10],\badr[15]_INST_0_i_7 [4:3],\badr[15]_INST_0_i_7 [0]}),
        .\badr[10]_INST_0_i_5_1 ({\badr[15]_INST_0_i_7_0 [10],\badr[15]_INST_0_i_7_0 [4:3],\badr[15]_INST_0_i_7_0 [0]}),
        .\badr[11]_INST_0_i_1 (\badr[11]_INST_0_i_1_0 ),
        .\badr[11]_INST_0_i_1_0 (grn07_n_78),
        .\badr[11]_INST_0_i_2_0 ({gr06[11],gr06[8:6],gr06[4],gr06[2:0]}),
        .\badr[11]_INST_0_i_2_1 ({\badr[15]_INST_0_i_2_0 [11],\badr[15]_INST_0_i_2_0 [8:6],\badr[15]_INST_0_i_2_0 [4],\badr[15]_INST_0_i_2_0 [2:0]}),
        .\badr[11]_INST_0_i_2_2 ({gr07[11],gr07[8:6],gr07[2:0]}),
        .\badr[11]_INST_0_i_2_3 ({\badr[15]_INST_0_i_2_1 [11],\badr[15]_INST_0_i_2_1 [8:6],\badr[15]_INST_0_i_2_1 [2:0]}),
        .\badr[11]_INST_0_i_3_0 ({gr05[11],gr05[8:6],gr05[2:0]}),
        .\badr[11]_INST_0_i_3_1 ({\badr[14]_INST_0_i_3_0 [10],\badr[14]_INST_0_i_3_0 [7:5],\badr[14]_INST_0_i_3_0 [2:0]}),
        .\badr[11]_INST_0_i_3_2 ({gr04[11],gr04[8:6],gr04[2:0]}),
        .\badr[11]_INST_0_i_3_3 ({\badr[15]_INST_0_i_3 [11],\badr[15]_INST_0_i_3 [8:6],\badr[15]_INST_0_i_3 [2:0]}),
        .\badr[11]_INST_0_i_3_4 ({\badr[15]_INST_0_i_3_0 [11],\badr[15]_INST_0_i_3_0 [8:6],\badr[15]_INST_0_i_3_0 [2:0]}),
        .\badr[12]_INST_0_i_1 (\badr[12]_INST_0_i_1_0 ),
        .\badr[13]_INST_0_i_1 (grn07_n_80),
        .\badr[13]_INST_0_i_1_0 (\badr[13]_INST_0_i_1_0 ),
        .\badr[14]_INST_0_i_1 (\badr[14]_INST_0_i_1_0 ),
        .\badr[3]_INST_0_i_1_0 (\badr[3]_INST_0_i_1 ),
        .\badr[3]_INST_0_i_1_1 (\badr[3]_INST_0_i_1_0 ),
        .\badr[4]_INST_0_i_1_0 (\badr[4]_INST_0_i_1 ),
        .\badr[4]_INST_0_i_1_1 (\badr[4]_INST_0_i_1_0 ),
        .\badr[5]_INST_0_i_1 (\badr[5]_INST_0_i_1_0 ),
        .\badr[7]_INST_0_i_1 (\badr[7]_INST_0_i_1_0 ),
        .\badr[8]_INST_0_i_1 (\badr[8]_INST_0_i_1_0 ),
        .\badr[9]_INST_0_i_1 (grn07_n_77),
        .\bdatw[10]_INST_0_i_7 (\bdatw[10]_INST_0_i_7 ),
        .\bdatw[8]_INST_0_i_7 (\bdatw[8]_INST_0_i_7 ),
        .\bdatw[9]_INST_0_i_2 (\bdatw[9]_INST_0_i_2_1 ),
        .\bdatw[9]_INST_0_i_2_0 (\bdatw[9]_INST_0_i_2_3 ),
        .clk(clk),
        .ctl_sela(ctl_sela),
        .ctl_selb(ctl_selb),
        .\grn_reg[0]_0 (\grn_reg[0] ),
        .\grn_reg[10]_0 (\grn_reg[10]_0 ),
        .\grn_reg[10]_1 (\grn_reg[10] ),
        .\grn_reg[11]_0 (grn07_n_9),
        .\grn_reg[11]_1 (grn07_n_10),
        .\grn_reg[11]_2 (grn07_n_11),
        .\grn_reg[15]_0 (\grn_reg[15]_21 ),
        .\grn_reg[15]_1 (\grn_reg[15]_14 ),
        .\grn_reg[1]_0 (grn07_n_1),
        .\grn_reg[1]_1 (grn07_n_24),
        .\grn_reg[1]_2 (\grn_reg[1]_1 ),
        .\grn_reg[1]_3 (\grn_reg[1]_2 ),
        .\grn_reg[2]_0 (grn07_n_2),
        .\grn_reg[2]_1 (grn07_n_23),
        .\grn_reg[2]_2 (\grn_reg[2]_1 ),
        .\grn_reg[3]_0 (\grn_reg[3] ),
        .\grn_reg[3]_1 (\grn_reg[3]_0 ),
        .\grn_reg[4]_0 (\grn_reg[4] ),
        .\grn_reg[4]_1 (\grn_reg[4]_1 ),
        .\grn_reg[4]_2 (\grn_reg[4]_2 ),
        .\grn_reg[4]_3 (\grn_reg[4]_4 ),
        .\grn_reg[4]_4 (\grn_reg[4]_5 ),
        .\grn_reg[6]_0 (grn07_n_5),
        .\grn_reg[6]_1 (grn07_n_13),
        .\grn_reg[6]_2 (grn07_n_18),
        .\grn_reg[7]_0 (grn07_n_6),
        .\grn_reg[7]_1 (grn07_n_16),
        .\grn_reg[7]_2 (grn07_n_17),
        .\grn_reg[8]_0 (grn07_n_7),
        .\grn_reg[8]_1 (grn07_n_15),
        .\iv[0]_i_14 (\sr[4]_i_23_1 ),
        .\iv[0]_i_14_0 (\iv[8]_i_25_n_0 ),
        .\iv[0]_i_5 (\iv[0]_i_5 ),
        .\iv[10]_i_2 (\iv[10]_i_11_n_0 ),
        .\iv[10]_i_2_0 (\iv[10]_i_2 ),
        .\iv[10]_i_2_1 (\sr_reg[6]_1 ),
        .\iv[11]_i_15_0 (\iv[15]_i_14 ),
        .\iv[11]_i_18 (\grn_reg[11] ),
        .\iv[11]_i_18_0 (\iv[11]_i_27_n_0 ),
        .\iv[11]_i_18_1 (\iv[11]_i_28_n_0 ),
        .\iv[11]_i_18_2 (\iv[11]_i_29_n_0 ),
        .\iv[11]_i_18_3 (\iv[11]_i_30_n_0 ),
        .\iv[11]_i_20_0 (\grn_reg[1] ),
        .\iv[11]_i_20_1 (\iv[11]_i_20 ),
        .\iv[11]_i_20_2 (\grn_reg[1]_0 ),
        .\iv[11]_i_20_3 (\iv[11]_i_20_0 ),
        .\iv[11]_i_23_0 (\iv[11]_i_23 ),
        .\iv[11]_i_30 (\iv[11]_i_30_0 ),
        .\iv[11]_i_6 (\sr_reg[0]_3 ),
        .\iv[12]_i_11 (\sr_reg[0]_5 ),
        .\iv[12]_i_16_0 (\iv[12]_i_21_n_0 ),
        .\iv[12]_i_16_1 (\iv[12]_i_22_n_0 ),
        .\iv[12]_i_19_0 (\iv[12]_i_19 ),
        .\iv[12]_i_19_1 (\grn_reg[9]_0 ),
        .\iv[12]_i_19_2 (\iv[12]_i_19_0 ),
        .\iv[12]_i_19_3 (\grn_reg[9]_1 ),
        .\iv[12]_i_19_4 (\iv[12]_i_19_1 ),
        .\iv[12]_i_19_5 (\badr[9]_INST_0_i_6_n_0 ),
        .\iv[12]_i_19_6 (\iv[12]_i_19_2 ),
        .\iv[12]_i_19_7 (\badr[9]_INST_0_i_8_n_0 ),
        .\iv[12]_i_19_8 (\badr[9]_INST_0_i_7_n_0 ),
        .\iv[12]_i_20_0 (\iv[12]_i_20 ),
        .\iv[12]_i_20_1 (\iv[12]_i_20_0 ),
        .\iv[12]_i_20_2 (\iv[12]_i_20_1 ),
        .\iv[12]_i_20_3 (\badr[8]_INST_0_i_10_n_0 ),
        .\iv[12]_i_20_4 (\iv[12]_i_20_2 ),
        .\iv[12]_i_20_5 (\grn_reg[8]_0 ),
        .\iv[12]_i_20_6 (\iv[12]_i_20_3 ),
        .\iv[12]_i_26_0 (grn07_n_73),
        .\iv[12]_i_5 (\sr[6]_i_3 ),
        .\iv[12]_i_5_0 (\iv[12]_i_5 ),
        .\iv[13]_i_21_0 (\iv[13]_i_21 ),
        .\iv[13]_i_22_0 (\iv[8]_i_31_n_0 ),
        .\iv[13]_i_22_1 (\iv[8]_i_32_n_0 ),
        .\iv[13]_i_25_0 (\iv[13]_i_25 ),
        .\iv[13]_i_25_1 (\iv[13]_i_25_0 ),
        .\iv[13]_i_25_2 (\iv[13]_i_25_1 ),
        .\iv[13]_i_31_0 (\iv[13]_i_31 ),
        .\iv[13]_i_5 (\iv[13]_i_5 ),
        .\iv[13]_i_6 (\iv[14]_i_8_0 ),
        .\iv[13]_i_6_0 (\grn_reg[15]_6 ),
        .\iv[14]_i_35_0 (\iv[14]_i_35 ),
        .\iv[14]_i_35_1 (\iv[14]_i_35_0 ),
        .\iv[14]_i_38_0 (\grn_reg[2] ),
        .\iv[14]_i_38_1 (\iv[14]_i_38 ),
        .\iv[14]_i_38_2 (\grn_reg[2]_0 ),
        .\iv[14]_i_38_3 (\iv[14]_i_38_0 ),
        .\iv[15]_i_35 (\iv[15]_i_35 ),
        .\iv[15]_i_35_0 (\iv[15]_i_35_0 ),
        .\iv[15]_i_35_1 (\iv[15]_i_35_1 ),
        .\iv[15]_i_35_2 (\iv[15]_i_35_2 ),
        .\iv[15]_i_41 (\grn_reg[8] ),
        .\iv[15]_i_52 (\iv[15]_i_52 ),
        .\iv[15]_i_52_0 (\iv[15]_i_52_0 ),
        .\iv[15]_i_56_0 (\iv[15]_i_56 ),
        .\iv[15]_i_58 (\badr[11]_INST_0_i_10_n_0 ),
        .\iv[15]_i_58_0 (\iv[15]_i_58_3 ),
        .\iv[15]_i_58_1 (\grn_reg[11]_0 ),
        .\iv[15]_i_58_2 (\iv[15]_i_58_4 ),
        .\iv[15]_i_59 (\badr[6]_INST_0_i_10_n_0 ),
        .\iv[15]_i_59_0 (\iv[15]_i_59_1 ),
        .\iv[15]_i_59_1 (\grn_reg[6]_0 ),
        .\iv[15]_i_59_2 (\iv[15]_i_59_2 ),
        .\iv[15]_i_59_3 (\grn_reg[7] ),
        .\iv[15]_i_59_4 (\iv[15]_i_59_3 ),
        .\iv[15]_i_59_5 (\grn_reg[7]_0 ),
        .\iv[15]_i_59_6 (\iv[15]_i_59_4 ),
        .\iv[15]_i_61 (\iv[15]_i_61 ),
        .\iv[15]_i_62 (\iv[15]_i_62 ),
        .\iv[15]_i_62_0 (\iv[15]_i_62_0 ),
        .\iv[15]_i_68_0 ({gr02[4],gr02[2:0]}),
        .\iv[15]_i_68_1 ({\bdatw[15]_INST_0_i_38 [4],\bdatw[15]_INST_0_i_38 [2:0]}),
        .\iv[3]_i_2 (\iv[2]_i_2 [1]),
        .\iv[3]_i_2_0 (\iv[2]_i_2_0 ),
        .\iv[3]_i_7 (\bdatw[9]_INST_0_i_2 ),
        .\iv[3]_i_8 (\iv[8]_i_28 ),
        .\iv[5]_i_13 (\sr[4]_i_23 ),
        .\iv[5]_i_13_0 (\iv[15]_i_5 ),
        .\iv[6]_i_10 (\sr_reg[0]_7 ),
        .\iv[7]_i_15_0 (\iv[8]_i_34_n_0 ),
        .\iv[7]_i_15_1 (\iv[8]_i_33_n_0 ),
        .\iv[7]_i_16_0 (\iv[7]_i_16 ),
        .\iv[7]_i_6 (\iv[15]_i_54_n_0 ),
        .\iv[7]_i_8 (\iv[14]_i_8 ),
        .\iv[7]_i_8_0 (\sr_reg[0]_0 ),
        .\iv[7]_i_8_1 (\sr_reg[0] ),
        .\iv[7]_i_8_2 (\sr[4]_i_23_0 ),
        .\iv[8]_i_21_0 (\iv[8]_i_21 ),
        .\iv[8]_i_25 (\iv[8]_i_25_0 ),
        .out(gr00[0]),
        .\sr[4]_i_33 (\sr_reg[0]_2 ),
        .\sr[4]_i_33_0 (\grn_reg[6] ),
        .\sr[6]_i_6 (\grn_reg[9] ),
        .\sr[6]_i_6_0 (\sr_reg[0]_6 ),
        .\sr_reg[0] (\sr_reg[0]_1 ),
        .\sr_reg[0]_0 (\sr_reg[0]_4 ),
        .\sr_reg[6] (\sr_reg[6] ),
        .\sr_reg[6]_0 (grn07_n_38),
        .\sr_reg[6]_1 (\sr_reg[6]_2 ),
        .\sr_reg[6]_2 (\sr_reg[6]_3 ),
        .\sr_reg[6]_3 (\sr_reg[6]_5 ),
        .\sr_reg[6]_4 (grn07_n_54),
        .\sr_reg[6]_5 (\sr_reg[6]_6 ),
        .\sr_reg[6]_6 (\sr_reg[6]_7 ),
        .\sr_reg[6]_7 (\sr_reg[6]_9 ),
        .\sr_reg[6]_8 (\sr_reg[6]_10 ),
        .\stat_reg[0] (grn07_n_31),
        .\stat_reg[0]_0 (grn07_n_32),
        .\stat_reg[0]_1 (grn07_n_33),
        .\stat_reg[1] (\stat_reg[1] ),
        .\stat_reg[1]_0 (\stat_reg[1]_1 ),
        .\stat_reg[1]_1 (\stat_reg[1]_2 ));
  LUT5 #(
    .INIT(32'h0CFCACAC)) 
    \iv[10]_i_11 
       (.I0(\badr[14]_INST_0_i_1_0 ),
        .I1(\iv[15]_i_58_0 ),
        .I2(\iv[14]_i_8_0 ),
        .I3(\grn_reg[15]_6 ),
        .I4(\iv[14]_i_8 ),
        .O(\iv[10]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \iv[10]_i_13 
       (.I0(\iv[15]_i_58_0 ),
        .I1(\iv[14]_i_8_0 ),
        .I2(grn07_n_38),
        .I3(\iv[14]_i_8 ),
        .I4(\badr[14]_INST_0_i_1_0 ),
        .O(\sr_reg[6]_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[10]_i_15 
       (.I0(\iv[15]_i_57_n_0 ),
        .I1(\iv[14]_i_8_0 ),
        .I2(\sr_reg[6]_4 ),
        .O(\iv[14]_i_28_1 ));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \iv[11]_i_16 
       (.I0(\badr[4]_INST_0_i_1_0 ),
        .I1(\iv[14]_i_8 ),
        .I2(\iv[15]_i_54_n_0 ),
        .I3(\iv[14]_i_8_0 ),
        .I4(\iv[15]_i_59_0 ),
        .O(\iv[15]_i_51_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[11]_i_27 
       (.I0(\grn_reg[14] ),
        .I1(\iv[14]_i_37_0 ),
        .I2(ctl_sela[1]),
        .I3(\grn_reg[14]_0 ),
        .I4(ctl_sela[0]),
        .I5(\iv[14]_i_37_1 ),
        .O(\iv[11]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \iv[11]_i_28 
       (.I0(ctl_sela[1]),
        .I1(\badr[14]_INST_0_i_3_n_0 ),
        .I2(\badr[14]_INST_0_i_2_n_0 ),
        .O(\iv[11]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[11]_i_29 
       (.I0(\grn_reg[13] ),
        .I1(\iv[8]_i_25_3 ),
        .I2(ctl_sela[1]),
        .I3(\grn_reg[13]_0 ),
        .I4(ctl_sela[0]),
        .I5(\iv[8]_i_25_4 ),
        .O(\iv[11]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \iv[11]_i_30 
       (.I0(ctl_sela[1]),
        .I1(\badr[13]_INST_0_i_3_n_0 ),
        .I2(\badr[13]_INST_0_i_2_n_0 ),
        .O(\iv[11]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[12]_i_21 
       (.I0(\grn_reg[10] ),
        .I1(\iv[15]_i_58_1 ),
        .I2(ctl_sela[1]),
        .I3(\grn_reg[10]_0 ),
        .I4(ctl_sela[0]),
        .I5(\iv[15]_i_58_2 ),
        .O(\iv[12]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \iv[12]_i_22 
       (.I0(ctl_sela[1]),
        .I1(\badr[10]_INST_0_i_3_n_0 ),
        .I2(\badr[10]_INST_0_i_2_n_0 ),
        .O(\iv[12]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \iv[14]_i_18 
       (.I0(\bdatw[9]_INST_0_i_2_2 ),
        .I1(\iv[14]_i_8_0 ),
        .I2(\bdatw[9]_INST_0_i_2_3 ),
        .O(\iv[14]_i_27 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \iv[14]_i_19 
       (.I0(\bdatw[9]_INST_0_i_2_0 ),
        .I1(\iv[14]_i_8_0 ),
        .I2(\sr_reg[6]_4 ),
        .O(\iv[14]_i_28_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \iv[14]_i_21 
       (.I0(\badr[3]_INST_0_i_1 ),
        .I1(\iv[14]_i_8_0 ),
        .I2(grn07_n_38),
        .I3(\iv[14]_i_8 ),
        .I4(\badr[14]_INST_0_i_1_0 ),
        .O(\sr_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hC5C555555F50CFC0)) 
    \iv[14]_i_25 
       (.I0(\iv[14]_i_36_n_0 ),
        .I1(\sr_reg[0]_2 ),
        .I2(\sr[4]_i_23_0 ),
        .I3(\grn_reg[6] ),
        .I4(\iv[15]_i_5 ),
        .I5(\sr[4]_i_23 ),
        .O(\bdatw[9]_INST_0_i_2_0 ));
  LUT6 #(
    .INIT(64'h0FCCAACCAA0F0F0F)) 
    \iv[14]_i_26 
       (.I0(\grn_reg[11] ),
        .I1(\sr_reg[0]_5 ),
        .I2(\iv[14]_i_37_n_0 ),
        .I3(\sr[4]_i_23_0 ),
        .I4(\iv[15]_i_5 ),
        .I5(\sr[4]_i_23 ),
        .O(\bdatw[9]_INST_0_i_2_2 ));
  LUT6 #(
    .INIT(64'hAAF0F0AAF0CCF0CC)) 
    \iv[14]_i_28 
       (.I0(\sr_reg[0] ),
        .I1(\sr_reg[0]_0 ),
        .I2(\sr[4]_i_23_1 ),
        .I3(\sr[4]_i_23 ),
        .I4(\iv[15]_i_5 ),
        .I5(\sr[4]_i_23_0 ),
        .O(\sr_reg[6]_4 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \iv[14]_i_36 
       (.I0(\iv[8]_i_31_n_0 ),
        .I1(\iv[8]_i_32_n_0 ),
        .I2(\sr[4]_i_23_0 ),
        .I3(\iv[8]_i_29_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\iv[8]_i_14_0 ),
        .O(\iv[14]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \iv[14]_i_37 
       (.I0(\iv[11]_i_29_n_0 ),
        .I1(\iv[11]_i_30_n_0 ),
        .I2(\sr[4]_i_23_0 ),
        .I3(\iv[11]_i_27_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\iv[11]_i_28_n_0 ),
        .O(\iv[14]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[14]_i_39 
       (.I0(\grn_reg[15]_9 ),
        .I1(\iv[14]_i_33 ),
        .I2(ctl_sela[1]),
        .I3(\grn_reg[15]_10 ),
        .I4(ctl_sela[0]),
        .I5(\iv[14]_i_33_0 ),
        .O(\grn_reg[15]_8 ));
  LUT6 #(
    .INIT(64'h0000000000FFD1D1)) 
    \iv[15]_i_16 
       (.I0(\badr[7]_INST_0_i_1_0 ),
        .I1(\iv[14]_i_8_0 ),
        .I2(\badr[3]_INST_0_i_1_0 ),
        .I3(\iv[15]_i_57_0 ),
        .I4(\iv[15]_i_5_0 ),
        .I5(\iv[15]_i_5 ),
        .O(\bdatw[12]_INST_0_i_2 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[15]_i_32 
       (.I0(\iv[15]_i_58_0 ),
        .I1(\iv[14]_i_8_0 ),
        .I2(\iv[15]_i_59_0 ),
        .O(\iv[15]_i_51_1 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \iv[15]_i_36 
       (.I0(\badr[0]_INST_0_i_3 ),
        .I1(\sr_reg[0] ),
        .I2(\iv[14]_i_8 ),
        .I3(\grn_reg[15]_6 ),
        .I4(\sr[4]_i_23_0 ),
        .I5(\iv[15]_i_14 [1]),
        .O(\sr_reg[6]_11 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[15]_i_37 
       (.I0(\badr[4]_INST_0_i_1_0 ),
        .I1(\iv[14]_i_8 ),
        .I2(\iv[15]_i_54_n_0 ),
        .O(\iv[15]_i_54_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \iv[15]_i_41 
       (.I0(grn07_n_77),
        .I1(\iv[14]_i_8 ),
        .I2(grn07_n_78),
        .I3(\iv[14]_i_8_0 ),
        .I4(\iv[15]_i_57_n_0 ),
        .O(\iv[15]_i_57_0 ));
  LUT6 #(
    .INIT(64'hF55F3F3F05503030)) 
    \iv[15]_i_50 
       (.I0(\sr_reg[0]_6 ),
        .I1(\sr_reg[0]_5 ),
        .I2(\sr[4]_i_23 ),
        .I3(\iv[15]_i_5 ),
        .I4(\sr[4]_i_23_0 ),
        .I5(\iv[15]_i_58_n_0 ),
        .O(\iv[15]_i_58_0 ));
  LUT6 #(
    .INIT(64'hF55F3F3F05503030)) 
    \iv[15]_i_51 
       (.I0(\grn_reg[9] ),
        .I1(\grn_reg[8] ),
        .I2(\sr[4]_i_23 ),
        .I3(\iv[15]_i_5 ),
        .I4(\sr[4]_i_23_0 ),
        .I5(\iv[15]_i_59_n_0 ),
        .O(\iv[15]_i_59_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[15]_i_54 
       (.I0(\sr_reg[0]_1 ),
        .I1(\sr[4]_i_23_0 ),
        .I2(\sr_reg[0]_0 ),
        .O(\iv[15]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hEBBB28BBEB882888)) 
    \iv[15]_i_57 
       (.I0(\iv[8]_i_25_n_0 ),
        .I1(\sr[4]_i_23 ),
        .I2(\iv[15]_i_5 ),
        .I3(\sr[4]_i_23_0 ),
        .I4(\sr_reg[0]_7 ),
        .I5(\grn_reg[15]_6 ),
        .O(\iv[15]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \iv[15]_i_58 
       (.I0(grn07_n_9),
        .I1(grn07_n_33),
        .I2(\sr[4]_i_23_0 ),
        .I3(\iv[12]_i_21_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\iv[12]_i_22_n_0 ),
        .O(\iv[15]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \iv[15]_i_59 
       (.I0(grn07_n_17),
        .I1(grn07_n_32),
        .I2(\sr[4]_i_23_0 ),
        .I3(grn07_n_13),
        .I4(ctl_sela[2]),
        .I5(grn07_n_31),
        .O(\iv[15]_i_59_n_0 ));
  LUT4 #(
    .INIT(16'hEEE2)) 
    \iv[2]_i_13 
       (.I0(\iv[15]_i_58_0 ),
        .I1(\iv[14]_i_8_0 ),
        .I2(\iv[14]_i_8 ),
        .I3(\badr[14]_INST_0_i_1_0 ),
        .O(\iv[14]_i_31 ));
  LUT6 #(
    .INIT(64'hFFFF1013FFFFDCDF)) 
    \iv[2]_i_5 
       (.I0(\iv[10]_i_11_n_0 ),
        .I1(\iv[2]_i_2_0 ),
        .I2(\iv[2]_i_2 [1]),
        .I3(\sr_reg[6]_1 ),
        .I4(\iv[2]_i_2_1 ),
        .I5(\iv[15]_i_51_0 ),
        .O(\stat_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h4700FFFF47004700)) 
    \iv[2]_i_7 
       (.I0(\badr[7]_INST_0_i_1_0 ),
        .I1(\iv[14]_i_8_0 ),
        .I2(\iv[15]_i_56 ),
        .I3(\sr[6]_i_3 ),
        .I4(\iv[14]_i_28_1 ),
        .I5(\iv[2]_i_2_2 ),
        .O(\iv[2]_i_14 ));
  LUT6 #(
    .INIT(64'hF033553355F0F0F0)) 
    \iv[8]_i_14 
       (.I0(\grn_reg[6] ),
        .I1(\sr_reg[0]_2 ),
        .I2(\iv[8]_i_24_n_0 ),
        .I3(\sr[4]_i_23_0 ),
        .I4(\iv[15]_i_5 ),
        .I5(\sr[4]_i_23 ),
        .O(\bdatw[9]_INST_0_i_2 ));
  LUT6 #(
    .INIT(64'hF55F3F3F05503030)) 
    \iv[8]_i_23 
       (.I0(\sr_reg[0]_2 ),
        .I1(\grn_reg[6] ),
        .I2(\sr[4]_i_23 ),
        .I3(\iv[15]_i_5 ),
        .I4(\sr[4]_i_23_0 ),
        .I5(grn07_n_73),
        .O(\iv[8]_i_28 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \iv[8]_i_24 
       (.I0(\iv[8]_i_29_n_0 ),
        .I1(\iv[8]_i_14_0 ),
        .I2(\sr[4]_i_23_0 ),
        .I3(\iv[8]_i_31_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\iv[8]_i_32_n_0 ),
        .O(\iv[8]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[8]_i_25 
       (.I0(\iv[8]_i_33_n_0 ),
        .I1(\iv[8]_i_34_n_0 ),
        .I2(\sr[4]_i_23_0 ),
        .I3(\iv[11]_i_30_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\iv[11]_i_29_n_0 ),
        .O(\iv[8]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[8]_i_29 
       (.I0(\grn_reg[4]_1 ),
        .I1(\iv[8]_i_24_0 ),
        .I2(ctl_sela[1]),
        .I3(\grn_reg[4]_2 ),
        .I4(ctl_sela[0]),
        .I5(\iv[8]_i_24_1 ),
        .O(\iv[8]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[8]_i_31 
       (.I0(\grn_reg[3] ),
        .I1(\iv[8]_i_24_2 ),
        .I2(ctl_sela[1]),
        .I3(\grn_reg[3]_0 ),
        .I4(ctl_sela[0]),
        .I5(\iv[8]_i_24_3 ),
        .O(\iv[8]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \iv[8]_i_32 
       (.I0(ctl_sela[1]),
        .I1(\badr[3]_INST_0_i_3_n_0 ),
        .I2(\badr[3]_INST_0_i_2_n_0 ),
        .O(\iv[8]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \iv[8]_i_33 
       (.I0(ctl_sela[1]),
        .I1(\badr[12]_INST_0_i_3_n_0 ),
        .I2(\badr[12]_INST_0_i_2_n_0 ),
        .O(\iv[8]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[8]_i_34 
       (.I0(\grn_reg[12] ),
        .I1(\iv[8]_i_25_1 ),
        .I2(ctl_sela[1]),
        .I3(\grn_reg[12]_0 ),
        .I4(ctl_sela[0]),
        .I5(\iv[8]_i_25_2 ),
        .O(\iv[8]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h00000000535303F3)) 
    \sr[4]_i_24 
       (.I0(grn07_n_80),
        .I1(\iv[12]_i_19 ),
        .I2(\iv[14]_i_8_0 ),
        .I3(grn07_n_54),
        .I4(\iv[2]_i_2 [1]),
        .I5(\sr[6]_i_3 ),
        .O(\sr_reg[6]_8 ));
  LUT6 #(
    .INIT(64'h50503F305F5F3F3F)) 
    \sr[6]_i_10 
       (.I0(\sr_reg[0]_6 ),
        .I1(\sr_reg[0]_7 ),
        .I2(\iv[14]_i_8 ),
        .I3(\iv[2]_i_2 [0]),
        .I4(\sr[4]_i_23_0 ),
        .I5(\grn_reg[15]_6 ),
        .O(\badr[15]_INST_0_i_1_0 ));
  LUT6 #(
    .INIT(64'h505F3F3F505F3030)) 
    \sr[6]_i_5 
       (.I0(\iv[11]_i_23 ),
        .I1(\sr[6]_i_8_n_0 ),
        .I2(\sr[6]_i_3 ),
        .I3(\bdatw[9]_INST_0_i_2 ),
        .I4(\iv[14]_i_8_0 ),
        .I5(\sr[6]_i_9_n_0 ),
        .O(\sr[6]_i_9_0 ));
  LUT4 #(
    .INIT(16'h0053)) 
    \sr[6]_i_7 
       (.I0(\badr[4]_INST_0_i_1 ),
        .I1(\iv[8]_i_28 ),
        .I2(\iv[14]_i_8_0 ),
        .I3(\iv[2]_i_2_0 ),
        .O(\iv[15]_i_33 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \sr[6]_i_8 
       (.I0(\sr_reg[0]_4 ),
        .I1(\grn_reg[9] ),
        .I2(\iv[14]_i_8 ),
        .I3(\grn_reg[8] ),
        .I4(\sr[4]_i_23_0 ),
        .I5(\sr_reg[0]_3 ),
        .O(\sr[6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF3C08888)) 
    \sr[6]_i_9 
       (.I0(\badr[0]_INST_0_i_3 ),
        .I1(\sr[4]_i_23_0 ),
        .I2(\sr_reg[0]_0 ),
        .I3(\sr_reg[0] ),
        .I4(\iv[14]_i_8 ),
        .O(\sr[6]_i_9_n_0 ));
endmodule

module mcbs_rgf_grn
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

(* ORIG_REF_NAME = "mcbs_rgf_grn" *) 
module mcbs_rgf_grn_1
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

(* ORIG_REF_NAME = "mcbs_rgf_grn" *) 
module mcbs_rgf_grn_10
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

(* ORIG_REF_NAME = "mcbs_rgf_grn" *) 
module mcbs_rgf_grn_11
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

(* ORIG_REF_NAME = "mcbs_rgf_grn" *) 
module mcbs_rgf_grn_12
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

(* ORIG_REF_NAME = "mcbs_rgf_grn" *) 
module mcbs_rgf_grn_13
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

(* ORIG_REF_NAME = "mcbs_rgf_grn" *) 
module mcbs_rgf_grn_14
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

(* ORIG_REF_NAME = "mcbs_rgf_grn" *) 
module mcbs_rgf_grn_15
   (\grn_reg[9]_0 ,
    \grn_reg[0]_0 ,
    \grn_reg[4]_0 ,
    \grn_reg[0]_1 ,
    \grn_reg[0]_2 ,
    \grn_reg[4]_1 ,
    \grn_reg[2]_0 ,
    \grn_reg[2]_1 ,
    \grn_reg[2]_2 ,
    \grn_reg[1]_0 ,
    \grn_reg[1]_1 ,
    \grn_reg[1]_2 ,
    \grn_reg[0]_3 ,
    Q,
    \iv[12]_i_24 ,
    \iv[12]_i_24_0 ,
    ctl_sela,
    \bdatw[8]_INST_0_i_18 ,
    \badr[0]_INST_0_i_2 ,
    \badr[0]_INST_0_i_2_0 ,
    \badr[0]_INST_0_i_2_1 ,
    ctl_selb,
    \bdatw[10]_INST_0_i_22 ,
    \bdatw[10]_INST_0_i_22_0 ,
    \bdatw[12]_INST_0_i_19 ,
    \bdatw[12]_INST_0_i_19_0 ,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output \grn_reg[9]_0 ;
  output \grn_reg[0]_0 ;
  output \grn_reg[4]_0 ;
  output \grn_reg[0]_1 ;
  output \grn_reg[0]_2 ;
  output \grn_reg[4]_1 ;
  output \grn_reg[2]_0 ;
  output \grn_reg[2]_1 ;
  output \grn_reg[2]_2 ;
  output \grn_reg[1]_0 ;
  output \grn_reg[1]_1 ;
  output \grn_reg[1]_2 ;
  output \grn_reg[0]_3 ;
  output [15:0]Q;
  input [4:0]\iv[12]_i_24 ;
  input [4:0]\iv[12]_i_24_0 ;
  input [1:0]ctl_sela;
  input [0:0]\bdatw[8]_INST_0_i_18 ;
  input [0:0]\badr[0]_INST_0_i_2 ;
  input [0:0]\badr[0]_INST_0_i_2_0 ;
  input [0:0]\badr[0]_INST_0_i_2_1 ;
  input [1:0]ctl_selb;
  input [2:0]\bdatw[10]_INST_0_i_22 ;
  input [2:0]\bdatw[10]_INST_0_i_22_0 ;
  input [3:0]\bdatw[12]_INST_0_i_19 ;
  input [3:0]\bdatw[12]_INST_0_i_19_0 ;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire [0:0]\badr[0]_INST_0_i_2 ;
  wire [0:0]\badr[0]_INST_0_i_2_0 ;
  wire [0:0]\badr[0]_INST_0_i_2_1 ;
  wire [2:0]\bdatw[10]_INST_0_i_22 ;
  wire [2:0]\bdatw[10]_INST_0_i_22_0 ;
  wire [3:0]\bdatw[12]_INST_0_i_19 ;
  wire [3:0]\bdatw[12]_INST_0_i_19_0 ;
  wire [0:0]\bdatw[8]_INST_0_i_18 ;
  wire clk;
  wire [1:0]ctl_sela;
  wire [1:0]ctl_selb;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[0]_1 ;
  wire \grn_reg[0]_2 ;
  wire \grn_reg[0]_3 ;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[1]_1 ;
  wire \grn_reg[1]_2 ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[2]_1 ;
  wire \grn_reg[2]_2 ;
  wire \grn_reg[4]_0 ;
  wire \grn_reg[4]_1 ;
  wire \grn_reg[9]_0 ;
  wire [4:0]\iv[12]_i_24 ;
  wire [4:0]\iv[12]_i_24_0 ;

  LUT6 #(
    .INIT(64'hFF000000CA00CA00)) 
    \badr[0]_INST_0_i_4 
       (.I0(\badr[0]_INST_0_i_2 ),
        .I1(\badr[0]_INST_0_i_2_0 ),
        .I2(\bdatw[8]_INST_0_i_18 ),
        .I3(ctl_sela[1]),
        .I4(\badr[0]_INST_0_i_2_1 ),
        .I5(ctl_sela[0]),
        .O(\grn_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[10]_INST_0_i_19 
       (.I0(ctl_selb[1]),
        .I1(\iv[12]_i_24 [2]),
        .I2(\bdatw[8]_INST_0_i_18 ),
        .I3(\iv[12]_i_24_0 [2]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[2]_2 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[10]_INST_0_i_35 
       (.I0(ctl_selb[1]),
        .I1(\bdatw[12]_INST_0_i_19 [2]),
        .I2(\bdatw[8]_INST_0_i_18 ),
        .I3(\bdatw[12]_INST_0_i_19_0 [2]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[10]_INST_0_i_37 
       (.I0(ctl_selb[1]),
        .I1(\bdatw[10]_INST_0_i_22 [2]),
        .I2(\bdatw[8]_INST_0_i_18 ),
        .I3(\bdatw[10]_INST_0_i_22_0 [2]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[2]_1 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[12]_INST_0_i_17 
       (.I0(ctl_selb[1]),
        .I1(\iv[12]_i_24 [3]),
        .I2(\bdatw[8]_INST_0_i_18 ),
        .I3(\iv[12]_i_24_0 [3]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[12]_INST_0_i_33 
       (.I0(ctl_selb[1]),
        .I1(\bdatw[12]_INST_0_i_19 [3]),
        .I2(\bdatw[8]_INST_0_i_18 ),
        .I3(\bdatw[12]_INST_0_i_19_0 [3]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[4]_1 ));
  LUT5 #(
    .INIT(32'h0000C808)) 
    \bdatw[8]_INST_0_i_29 
       (.I0(\iv[12]_i_24 [0]),
        .I1(ctl_selb[1]),
        .I2(\bdatw[8]_INST_0_i_18 ),
        .I3(\iv[12]_i_24_0 [0]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[0]_2 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[8]_INST_0_i_33 
       (.I0(ctl_selb[1]),
        .I1(\bdatw[12]_INST_0_i_19 [0]),
        .I2(\bdatw[8]_INST_0_i_18 ),
        .I3(\bdatw[12]_INST_0_i_19_0 [0]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[0]_3 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[8]_INST_0_i_35 
       (.I0(ctl_selb[1]),
        .I1(\bdatw[10]_INST_0_i_22 [0]),
        .I2(\bdatw[8]_INST_0_i_18 ),
        .I3(\bdatw[10]_INST_0_i_22_0 [0]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[9]_INST_0_i_17 
       (.I0(ctl_selb[1]),
        .I1(\iv[12]_i_24 [1]),
        .I2(\bdatw[8]_INST_0_i_18 ),
        .I3(\iv[12]_i_24_0 [1]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[1]_2 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[9]_INST_0_i_33 
       (.I0(ctl_selb[1]),
        .I1(\bdatw[12]_INST_0_i_19 [1]),
        .I2(\bdatw[8]_INST_0_i_18 ),
        .I3(\bdatw[12]_INST_0_i_19_0 [1]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h0000A808)) 
    \bdatw[9]_INST_0_i_35 
       (.I0(ctl_selb[1]),
        .I1(\bdatw[10]_INST_0_i_22 [1]),
        .I2(\bdatw[8]_INST_0_i_18 ),
        .I3(\bdatw[10]_INST_0_i_22_0 [1]),
        .I4(ctl_selb[0]),
        .O(\grn_reg[1]_1 ));
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
  LUT5 #(
    .INIT(32'h00C000A0)) 
    \iv[12]_i_31 
       (.I0(\iv[12]_i_24 [4]),
        .I1(\iv[12]_i_24_0 [4]),
        .I2(ctl_sela[1]),
        .I3(ctl_sela[0]),
        .I4(\bdatw[8]_INST_0_i_18 ),
        .O(\grn_reg[9]_0 ));
endmodule

(* ORIG_REF_NAME = "mcbs_rgf_grn" *) 
module mcbs_rgf_grn_2
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

(* ORIG_REF_NAME = "mcbs_rgf_grn" *) 
module mcbs_rgf_grn_3
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

(* ORIG_REF_NAME = "mcbs_rgf_grn" *) 
module mcbs_rgf_grn_4
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

(* ORIG_REF_NAME = "mcbs_rgf_grn" *) 
module mcbs_rgf_grn_5
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

(* ORIG_REF_NAME = "mcbs_rgf_grn" *) 
module mcbs_rgf_grn_6
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

(* ORIG_REF_NAME = "mcbs_rgf_grn" *) 
module mcbs_rgf_grn_7
   (\badr[0]_INST_0_i_3_0 ,
    \grn_reg[1]_0 ,
    \grn_reg[2]_0 ,
    \sr_reg[0] ,
    \grn_reg[4]_0 ,
    \grn_reg[6]_0 ,
    \grn_reg[7]_0 ,
    \grn_reg[8]_0 ,
    \sr_reg[0]_0 ,
    \grn_reg[11]_0 ,
    \grn_reg[11]_1 ,
    \grn_reg[11]_2 ,
    \grn_reg[10]_0 ,
    \grn_reg[6]_1 ,
    \grn_reg[10]_1 ,
    \grn_reg[8]_1 ,
    \grn_reg[7]_1 ,
    \grn_reg[7]_2 ,
    \grn_reg[6]_2 ,
    \grn_reg[4]_1 ,
    \grn_reg[4]_2 ,
    \grn_reg[3]_0 ,
    \grn_reg[3]_1 ,
    \grn_reg[2]_1 ,
    \grn_reg[1]_1 ,
    \grn_reg[0]_0 ,
    \grn_reg[1]_2 ,
    \grn_reg[4]_3 ,
    \grn_reg[4]_4 ,
    \grn_reg[2]_2 ,
    \grn_reg[1]_3 ,
    \stat_reg[0] ,
    \stat_reg[0]_0 ,
    \stat_reg[0]_1 ,
    \iv[15]_i_35 ,
    \sr_reg[6] ,
    \badr[14]_INST_0_i_1 ,
    \badr[12]_INST_0_i_1 ,
    \sr_reg[6]_0 ,
    \stat_reg[1] ,
    \iv[14]_i_35_0 ,
    \sr_reg[6]_1 ,
    \iv[13]_i_25_0 ,
    \badr[5]_INST_0_i_1 ,
    \iv[8]_i_25 ,
    \iv[8]_i_21_0 ,
    \badr[4]_INST_0_i_1_0 ,
    \sr_reg[6]_2 ,
    \iv[15]_i_35_0 ,
    \iv[7]_i_16_0 ,
    \stat_reg[1]_0 ,
    \sr_reg[6]_3 ,
    \iv[13]_i_31_0 ,
    \bdatw[9]_INST_0_i_2 ,
    \sr_reg[6]_4 ,
    \sr_reg[6]_5 ,
    \iv[11]_i_30 ,
    \badr[11]_INST_0_i_1 ,
    \sr_reg[6]_6 ,
    \badr[4]_INST_0_i_1_1 ,
    \badr[3]_INST_0_i_1_0 ,
    \iv[12]_i_20_0 ,
    \iv[13]_i_25_1 ,
    \stat_reg[1]_1 ,
    \iv[11]_i_23_0 ,
    \iv[12]_i_20_1 ,
    \badr[7]_INST_0_i_1 ,
    \iv[14]_i_35_1 ,
    \iv[12]_i_19_0 ,
    \iv[15]_i_35_1 ,
    \iv[13]_i_25_2 ,
    \iv[12]_i_20_2 ,
    \bdatw[9]_INST_0_i_2_0 ,
    \iv[12]_i_26_0 ,
    \iv[15]_i_52 ,
    \badr[8]_INST_0_i_1 ,
    \iv[15]_i_56_0 ,
    \badr[9]_INST_0_i_1 ,
    \badr[11]_INST_0_i_1_0 ,
    \iv[15]_i_35_2 ,
    \badr[13]_INST_0_i_1 ,
    \sr_reg[6]_7 ,
    \iv[13]_i_21_0 ,
    \badr[13]_INST_0_i_1_0 ,
    \iv[15]_i_52_0 ,
    \sr_reg[6]_8 ,
    \badr[3]_INST_0_i_1_1 ,
    Q,
    ctl_sela,
    \badr[0]_INST_0_i_1_0 ,
    out,
    \iv[11]_i_15_0 ,
    \badr[0]_INST_0_i_2_0 ,
    \badr[11]_INST_0_i_3_0 ,
    \badr[11]_INST_0_i_3_1 ,
    \badr[11]_INST_0_i_2_0 ,
    \badr[11]_INST_0_i_2_1 ,
    \abus_o[3] ,
    \abus_o[3]_0 ,
    \abus_o[3]_1 ,
    \abus_o[3]_2 ,
    \abus_o[4] ,
    \abus_o[4]_0 ,
    \abus_o[4]_1 ,
    \abus_o[4]_2 ,
    \badr[11]_INST_0_i_2_2 ,
    \badr[11]_INST_0_i_2_3 ,
    \iv[12]_i_20_3 ,
    \iv[12]_i_20_4 ,
    \iv[12]_i_20_5 ,
    \iv[12]_i_20_6 ,
    \iv[12]_i_19_1 ,
    \iv[12]_i_19_2 ,
    \iv[12]_i_19_3 ,
    \iv[12]_i_19_4 ,
    \iv[12]_i_19_5 ,
    \iv[12]_i_19_6 ,
    \iv[12]_i_19_7 ,
    \iv[12]_i_19_8 ,
    \abus_o[10] ,
    \abus_o[10]_0 ,
    \abus_o[10]_1 ,
    \abus_o[10]_2 ,
    \iv[15]_i_58 ,
    \iv[15]_i_58_0 ,
    \iv[15]_i_58_1 ,
    \iv[15]_i_58_2 ,
    \badr[10]_INST_0_i_5 ,
    \badr[10]_INST_0_i_5_0 ,
    \badr[10]_INST_0_i_5_1 ,
    \iv[15]_i_59 ,
    \iv[15]_i_59_0 ,
    \iv[15]_i_59_1 ,
    \iv[15]_i_59_2 ,
    \iv[14]_i_38_0 ,
    \iv[14]_i_38_1 ,
    \iv[14]_i_38_2 ,
    \iv[14]_i_38_3 ,
    \iv[11]_i_20_0 ,
    \iv[11]_i_20_1 ,
    \iv[11]_i_20_2 ,
    \iv[11]_i_20_3 ,
    \iv[15]_i_68_0 ,
    \badr[0]_INST_0_i_2_1 ,
    \iv[15]_i_68_1 ,
    \badr[11]_INST_0_i_3_2 ,
    \badr[11]_INST_0_i_3_3 ,
    \badr[11]_INST_0_i_3_4 ,
    \badr[10]_INST_0_i_4 ,
    \badr[10]_INST_0_i_4_0 ,
    \badr[10]_INST_0_i_4_1 ,
    \iv[15]_i_59_3 ,
    \iv[15]_i_59_4 ,
    \iv[15]_i_59_5 ,
    \iv[15]_i_59_6 ,
    \iv[15]_i_62 ,
    \bdatw[8]_INST_0_i_7 ,
    \iv[15]_i_61 ,
    ctl_selb,
    \iv[15]_i_62_0 ,
    \bdatw[10]_INST_0_i_7 ,
    \iv[7]_i_8 ,
    \iv[13]_i_6 ,
    \iv[7]_i_8_0 ,
    \iv[7]_i_8_1 ,
    \iv[5]_i_13 ,
    \iv[5]_i_13_0 ,
    \iv[7]_i_8_2 ,
    \iv[10]_i_2 ,
    \iv[3]_i_2 ,
    \iv[3]_i_2_0 ,
    \iv[10]_i_2_0 ,
    \iv[10]_i_2_1 ,
    \iv[13]_i_6_0 ,
    \iv[6]_i_10 ,
    \iv[13]_i_5 ,
    \iv[12]_i_5 ,
    \iv[0]_i_14 ,
    \iv[12]_i_5_0 ,
    \iv[3]_i_8 ,
    \iv[7]_i_6 ,
    \sr[4]_i_33 ,
    \iv[13]_i_22_0 ,
    \iv[13]_i_22_1 ,
    \iv[3]_i_7 ,
    \sr[4]_i_33_0 ,
    \iv[11]_i_6 ,
    \iv[15]_i_41 ,
    \sr[6]_i_6 ,
    \iv[0]_i_5 ,
    \iv[12]_i_11 ,
    \iv[11]_i_18 ,
    \iv[12]_i_16_0 ,
    \iv[12]_i_16_1 ,
    \iv[0]_i_14_0 ,
    \sr[6]_i_6_0 ,
    \iv[7]_i_15_0 ,
    \iv[7]_i_15_1 ,
    \iv[11]_i_18_0 ,
    \iv[11]_i_18_1 ,
    \iv[11]_i_18_2 ,
    \iv[11]_i_18_3 ,
    SR,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    clk);
  output \badr[0]_INST_0_i_3_0 ;
  output \grn_reg[1]_0 ;
  output \grn_reg[2]_0 ;
  output \sr_reg[0] ;
  output \grn_reg[4]_0 ;
  output \grn_reg[6]_0 ;
  output \grn_reg[7]_0 ;
  output \grn_reg[8]_0 ;
  output \sr_reg[0]_0 ;
  output \grn_reg[11]_0 ;
  output \grn_reg[11]_1 ;
  output \grn_reg[11]_2 ;
  output \grn_reg[10]_0 ;
  output \grn_reg[6]_1 ;
  output \grn_reg[10]_1 ;
  output \grn_reg[8]_1 ;
  output \grn_reg[7]_1 ;
  output \grn_reg[7]_2 ;
  output \grn_reg[6]_2 ;
  output \grn_reg[4]_1 ;
  output \grn_reg[4]_2 ;
  output \grn_reg[3]_0 ;
  output \grn_reg[3]_1 ;
  output \grn_reg[2]_1 ;
  output \grn_reg[1]_1 ;
  output \grn_reg[0]_0 ;
  output \grn_reg[1]_2 ;
  output \grn_reg[4]_3 ;
  output \grn_reg[4]_4 ;
  output \grn_reg[2]_2 ;
  output \grn_reg[1]_3 ;
  output \stat_reg[0] ;
  output \stat_reg[0]_0 ;
  output \stat_reg[0]_1 ;
  output \iv[15]_i_35 ;
  output \sr_reg[6] ;
  output \badr[14]_INST_0_i_1 ;
  output \badr[12]_INST_0_i_1 ;
  output \sr_reg[6]_0 ;
  output \stat_reg[1] ;
  output \iv[14]_i_35_0 ;
  output \sr_reg[6]_1 ;
  output \iv[13]_i_25_0 ;
  output \badr[5]_INST_0_i_1 ;
  output \iv[8]_i_25 ;
  output \iv[8]_i_21_0 ;
  output \badr[4]_INST_0_i_1_0 ;
  output \sr_reg[6]_2 ;
  output \iv[15]_i_35_0 ;
  output \iv[7]_i_16_0 ;
  output \stat_reg[1]_0 ;
  output \sr_reg[6]_3 ;
  output \iv[13]_i_31_0 ;
  output \bdatw[9]_INST_0_i_2 ;
  output \sr_reg[6]_4 ;
  output \sr_reg[6]_5 ;
  output \iv[11]_i_30 ;
  output \badr[11]_INST_0_i_1 ;
  output \sr_reg[6]_6 ;
  output \badr[4]_INST_0_i_1_1 ;
  output \badr[3]_INST_0_i_1_0 ;
  output \iv[12]_i_20_0 ;
  output \iv[13]_i_25_1 ;
  output \stat_reg[1]_1 ;
  output \iv[11]_i_23_0 ;
  output \iv[12]_i_20_1 ;
  output \badr[7]_INST_0_i_1 ;
  output \iv[14]_i_35_1 ;
  output \iv[12]_i_19_0 ;
  output \iv[15]_i_35_1 ;
  output \iv[13]_i_25_2 ;
  output \iv[12]_i_20_2 ;
  output \bdatw[9]_INST_0_i_2_0 ;
  output \iv[12]_i_26_0 ;
  output \iv[15]_i_52 ;
  output \badr[8]_INST_0_i_1 ;
  output \iv[15]_i_56_0 ;
  output \badr[9]_INST_0_i_1 ;
  output \badr[11]_INST_0_i_1_0 ;
  output \iv[15]_i_35_2 ;
  output \badr[13]_INST_0_i_1 ;
  output \sr_reg[6]_7 ;
  output \iv[13]_i_21_0 ;
  output \badr[13]_INST_0_i_1_0 ;
  output \iv[15]_i_52_0 ;
  output \sr_reg[6]_8 ;
  output \badr[3]_INST_0_i_1_1 ;
  output [15:0]Q;
  input [4:0]ctl_sela;
  input \badr[0]_INST_0_i_1_0 ;
  input [0:0]out;
  input [1:0]\iv[11]_i_15_0 ;
  input [0:0]\badr[0]_INST_0_i_2_0 ;
  input [6:0]\badr[11]_INST_0_i_3_0 ;
  input [6:0]\badr[11]_INST_0_i_3_1 ;
  input [7:0]\badr[11]_INST_0_i_2_0 ;
  input [7:0]\badr[11]_INST_0_i_2_1 ;
  input \abus_o[3] ;
  input \abus_o[3]_0 ;
  input \abus_o[3]_1 ;
  input \abus_o[3]_2 ;
  input \abus_o[4] ;
  input \abus_o[4]_0 ;
  input \abus_o[4]_1 ;
  input \abus_o[4]_2 ;
  input [6:0]\badr[11]_INST_0_i_2_2 ;
  input [6:0]\badr[11]_INST_0_i_2_3 ;
  input \iv[12]_i_20_3 ;
  input \iv[12]_i_20_4 ;
  input \iv[12]_i_20_5 ;
  input \iv[12]_i_20_6 ;
  input \iv[12]_i_19_1 ;
  input \iv[12]_i_19_2 ;
  input \iv[12]_i_19_3 ;
  input \iv[12]_i_19_4 ;
  input \iv[12]_i_19_5 ;
  input \iv[12]_i_19_6 ;
  input \iv[12]_i_19_7 ;
  input \iv[12]_i_19_8 ;
  input \abus_o[10] ;
  input \abus_o[10]_0 ;
  input \abus_o[10]_1 ;
  input \abus_o[10]_2 ;
  input \iv[15]_i_58 ;
  input \iv[15]_i_58_0 ;
  input \iv[15]_i_58_1 ;
  input \iv[15]_i_58_2 ;
  input [3:0]\badr[10]_INST_0_i_5 ;
  input [3:0]\badr[10]_INST_0_i_5_0 ;
  input [3:0]\badr[10]_INST_0_i_5_1 ;
  input \iv[15]_i_59 ;
  input \iv[15]_i_59_0 ;
  input \iv[15]_i_59_1 ;
  input \iv[15]_i_59_2 ;
  input \iv[14]_i_38_0 ;
  input \iv[14]_i_38_1 ;
  input \iv[14]_i_38_2 ;
  input \iv[14]_i_38_3 ;
  input \iv[11]_i_20_0 ;
  input \iv[11]_i_20_1 ;
  input \iv[11]_i_20_2 ;
  input \iv[11]_i_20_3 ;
  input [3:0]\iv[15]_i_68_0 ;
  input [0:0]\badr[0]_INST_0_i_2_1 ;
  input [3:0]\iv[15]_i_68_1 ;
  input [6:0]\badr[11]_INST_0_i_3_2 ;
  input [6:0]\badr[11]_INST_0_i_3_3 ;
  input [6:0]\badr[11]_INST_0_i_3_4 ;
  input [2:0]\badr[10]_INST_0_i_4 ;
  input [2:0]\badr[10]_INST_0_i_4_0 ;
  input [2:0]\badr[10]_INST_0_i_4_1 ;
  input \iv[15]_i_59_3 ;
  input \iv[15]_i_59_4 ;
  input \iv[15]_i_59_5 ;
  input \iv[15]_i_59_6 ;
  input \iv[15]_i_62 ;
  input \bdatw[8]_INST_0_i_7 ;
  input \iv[15]_i_61 ;
  input [1:0]ctl_selb;
  input \iv[15]_i_62_0 ;
  input \bdatw[10]_INST_0_i_7 ;
  input \iv[7]_i_8 ;
  input \iv[13]_i_6 ;
  input \iv[7]_i_8_0 ;
  input \iv[7]_i_8_1 ;
  input \iv[5]_i_13 ;
  input \iv[5]_i_13_0 ;
  input \iv[7]_i_8_2 ;
  input \iv[10]_i_2 ;
  input [0:0]\iv[3]_i_2 ;
  input \iv[3]_i_2_0 ;
  input \iv[10]_i_2_0 ;
  input \iv[10]_i_2_1 ;
  input \iv[13]_i_6_0 ;
  input \iv[6]_i_10 ;
  input \iv[13]_i_5 ;
  input \iv[12]_i_5 ;
  input \iv[0]_i_14 ;
  input \iv[12]_i_5_0 ;
  input \iv[3]_i_8 ;
  input \iv[7]_i_6 ;
  input \sr[4]_i_33 ;
  input \iv[13]_i_22_0 ;
  input \iv[13]_i_22_1 ;
  input \iv[3]_i_7 ;
  input \sr[4]_i_33_0 ;
  input \iv[11]_i_6 ;
  input \iv[15]_i_41 ;
  input \sr[6]_i_6 ;
  input \iv[0]_i_5 ;
  input \iv[12]_i_11 ;
  input \iv[11]_i_18 ;
  input \iv[12]_i_16_0 ;
  input \iv[12]_i_16_1 ;
  input \iv[0]_i_14_0 ;
  input \sr[6]_i_6_0 ;
  input \iv[7]_i_15_0 ;
  input \iv[7]_i_15_1 ;
  input \iv[11]_i_18_0 ;
  input \iv[11]_i_18_1 ;
  input \iv[11]_i_18_2 ;
  input \iv[11]_i_18_3 ;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_0 ;
  input [15:0]\grn_reg[15]_1 ;
  input clk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire \abus_o[10] ;
  wire \abus_o[10]_0 ;
  wire \abus_o[10]_1 ;
  wire \abus_o[10]_2 ;
  wire \abus_o[3] ;
  wire \abus_o[3]_0 ;
  wire \abus_o[3]_1 ;
  wire \abus_o[3]_2 ;
  wire \abus_o[4] ;
  wire \abus_o[4]_0 ;
  wire \abus_o[4]_1 ;
  wire \abus_o[4]_2 ;
  wire \badr[0]_INST_0_i_10_n_0 ;
  wire \badr[0]_INST_0_i_11_n_0 ;
  wire \badr[0]_INST_0_i_1_0 ;
  wire [0:0]\badr[0]_INST_0_i_2_0 ;
  wire [0:0]\badr[0]_INST_0_i_2_1 ;
  wire \badr[0]_INST_0_i_2_n_0 ;
  wire \badr[0]_INST_0_i_3_0 ;
  wire \badr[0]_INST_0_i_3_n_0 ;
  wire \badr[0]_INST_0_i_5_n_0 ;
  wire \badr[0]_INST_0_i_6_n_0 ;
  wire \badr[0]_INST_0_i_7_n_0 ;
  wire \badr[0]_INST_0_i_8_n_0 ;
  wire \badr[0]_INST_0_i_9_n_0 ;
  wire [2:0]\badr[10]_INST_0_i_4 ;
  wire [2:0]\badr[10]_INST_0_i_4_0 ;
  wire [2:0]\badr[10]_INST_0_i_4_1 ;
  wire [3:0]\badr[10]_INST_0_i_5 ;
  wire [3:0]\badr[10]_INST_0_i_5_0 ;
  wire [3:0]\badr[10]_INST_0_i_5_1 ;
  wire \badr[11]_INST_0_i_1 ;
  wire \badr[11]_INST_0_i_1_0 ;
  wire [7:0]\badr[11]_INST_0_i_2_0 ;
  wire [7:0]\badr[11]_INST_0_i_2_1 ;
  wire [6:0]\badr[11]_INST_0_i_2_2 ;
  wire [6:0]\badr[11]_INST_0_i_2_3 ;
  wire [6:0]\badr[11]_INST_0_i_3_0 ;
  wire [6:0]\badr[11]_INST_0_i_3_1 ;
  wire [6:0]\badr[11]_INST_0_i_3_2 ;
  wire [6:0]\badr[11]_INST_0_i_3_3 ;
  wire [6:0]\badr[11]_INST_0_i_3_4 ;
  wire \badr[11]_INST_0_i_6_n_0 ;
  wire \badr[11]_INST_0_i_7_n_0 ;
  wire \badr[11]_INST_0_i_8_n_0 ;
  wire \badr[11]_INST_0_i_9_n_0 ;
  wire \badr[12]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_1_0 ;
  wire \badr[14]_INST_0_i_1 ;
  wire \badr[1]_INST_0_i_6_n_0 ;
  wire \badr[1]_INST_0_i_7_n_0 ;
  wire \badr[1]_INST_0_i_8_n_0 ;
  wire \badr[1]_INST_0_i_9_n_0 ;
  wire \badr[2]_INST_0_i_6_n_0 ;
  wire \badr[2]_INST_0_i_7_n_0 ;
  wire \badr[2]_INST_0_i_8_n_0 ;
  wire \badr[2]_INST_0_i_9_n_0 ;
  wire \badr[3]_INST_0_i_1_0 ;
  wire \badr[3]_INST_0_i_1_1 ;
  wire \badr[4]_INST_0_i_1_0 ;
  wire \badr[4]_INST_0_i_1_1 ;
  wire \badr[5]_INST_0_i_1 ;
  wire \badr[6]_INST_0_i_6_n_0 ;
  wire \badr[6]_INST_0_i_7_n_0 ;
  wire \badr[6]_INST_0_i_8_n_0 ;
  wire \badr[6]_INST_0_i_9_n_0 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_6_n_0 ;
  wire \badr[7]_INST_0_i_7_n_0 ;
  wire \badr[7]_INST_0_i_8_n_0 ;
  wire \badr[7]_INST_0_i_9_n_0 ;
  wire \badr[8]_INST_0_i_1 ;
  wire \badr[8]_INST_0_i_6_n_0 ;
  wire \badr[8]_INST_0_i_7_n_0 ;
  wire \badr[8]_INST_0_i_8_n_0 ;
  wire \badr[8]_INST_0_i_9_n_0 ;
  wire \badr[9]_INST_0_i_1 ;
  wire \bdatw[10]_INST_0_i_32_n_0 ;
  wire \bdatw[10]_INST_0_i_7 ;
  wire \bdatw[12]_INST_0_i_30_n_0 ;
  wire \bdatw[8]_INST_0_i_30_n_0 ;
  wire \bdatw[8]_INST_0_i_7 ;
  wire \bdatw[9]_INST_0_i_2 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_30_n_0 ;
  wire clk;
  wire [4:0]ctl_sela;
  wire [1:0]ctl_selb;
  wire \grn_reg[0]_0 ;
  wire \grn_reg[10]_0 ;
  wire \grn_reg[10]_1 ;
  wire \grn_reg[11]_0 ;
  wire \grn_reg[11]_1 ;
  wire \grn_reg[11]_2 ;
  wire [0:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;
  wire \grn_reg[1]_0 ;
  wire \grn_reg[1]_1 ;
  wire \grn_reg[1]_2 ;
  wire \grn_reg[1]_3 ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[2]_1 ;
  wire \grn_reg[2]_2 ;
  wire \grn_reg[3]_0 ;
  wire \grn_reg[3]_1 ;
  wire \grn_reg[4]_0 ;
  wire \grn_reg[4]_1 ;
  wire \grn_reg[4]_2 ;
  wire \grn_reg[4]_3 ;
  wire \grn_reg[4]_4 ;
  wire \grn_reg[6]_0 ;
  wire \grn_reg[6]_1 ;
  wire \grn_reg[6]_2 ;
  wire \grn_reg[7]_0 ;
  wire \grn_reg[7]_1 ;
  wire \grn_reg[7]_2 ;
  wire \grn_reg[8]_0 ;
  wire \grn_reg[8]_1 ;
  wire \iv[0]_i_14 ;
  wire \iv[0]_i_14_0 ;
  wire \iv[0]_i_5 ;
  wire \iv[10]_i_2 ;
  wire \iv[10]_i_2_0 ;
  wire \iv[10]_i_2_1 ;
  wire [1:0]\iv[11]_i_15_0 ;
  wire \iv[11]_i_18 ;
  wire \iv[11]_i_18_0 ;
  wire \iv[11]_i_18_1 ;
  wire \iv[11]_i_18_2 ;
  wire \iv[11]_i_18_3 ;
  wire \iv[11]_i_20_0 ;
  wire \iv[11]_i_20_1 ;
  wire \iv[11]_i_20_2 ;
  wire \iv[11]_i_20_3 ;
  wire \iv[11]_i_20_n_0 ;
  wire \iv[11]_i_21_n_0 ;
  wire \iv[11]_i_23_0 ;
  wire \iv[11]_i_25_n_0 ;
  wire \iv[11]_i_26_n_0 ;
  wire \iv[11]_i_30 ;
  wire \iv[11]_i_6 ;
  wire \iv[12]_i_11 ;
  wire \iv[12]_i_16_0 ;
  wire \iv[12]_i_16_1 ;
  wire \iv[12]_i_19_0 ;
  wire \iv[12]_i_19_1 ;
  wire \iv[12]_i_19_2 ;
  wire \iv[12]_i_19_3 ;
  wire \iv[12]_i_19_4 ;
  wire \iv[12]_i_19_5 ;
  wire \iv[12]_i_19_6 ;
  wire \iv[12]_i_19_7 ;
  wire \iv[12]_i_19_8 ;
  wire \iv[12]_i_19_n_0 ;
  wire \iv[12]_i_20_0 ;
  wire \iv[12]_i_20_1 ;
  wire \iv[12]_i_20_2 ;
  wire \iv[12]_i_20_3 ;
  wire \iv[12]_i_20_4 ;
  wire \iv[12]_i_20_5 ;
  wire \iv[12]_i_20_6 ;
  wire \iv[12]_i_20_n_0 ;
  wire \iv[12]_i_23_n_0 ;
  wire \iv[12]_i_24_n_0 ;
  wire \iv[12]_i_25_n_0 ;
  wire \iv[12]_i_26_0 ;
  wire \iv[12]_i_26_n_0 ;
  wire \iv[12]_i_5 ;
  wire \iv[12]_i_5_0 ;
  wire \iv[13]_i_21_0 ;
  wire \iv[13]_i_22_0 ;
  wire \iv[13]_i_22_1 ;
  wire \iv[13]_i_25_0 ;
  wire \iv[13]_i_25_1 ;
  wire \iv[13]_i_25_2 ;
  wire \iv[13]_i_25_n_0 ;
  wire \iv[13]_i_31_0 ;
  wire \iv[13]_i_32_n_0 ;
  wire \iv[13]_i_34_n_0 ;
  wire \iv[13]_i_5 ;
  wire \iv[13]_i_6 ;
  wire \iv[13]_i_6_0 ;
  wire \iv[14]_i_35_0 ;
  wire \iv[14]_i_35_1 ;
  wire \iv[14]_i_38_0 ;
  wire \iv[14]_i_38_1 ;
  wire \iv[14]_i_38_2 ;
  wire \iv[14]_i_38_3 ;
  wire \iv[14]_i_38_n_0 ;
  wire \iv[15]_i_35 ;
  wire \iv[15]_i_35_0 ;
  wire \iv[15]_i_35_1 ;
  wire \iv[15]_i_35_2 ;
  wire \iv[15]_i_41 ;
  wire \iv[15]_i_52 ;
  wire \iv[15]_i_52_0 ;
  wire \iv[15]_i_56_0 ;
  wire \iv[15]_i_58 ;
  wire \iv[15]_i_58_0 ;
  wire \iv[15]_i_58_1 ;
  wire \iv[15]_i_58_2 ;
  wire \iv[15]_i_59 ;
  wire \iv[15]_i_59_0 ;
  wire \iv[15]_i_59_1 ;
  wire \iv[15]_i_59_2 ;
  wire \iv[15]_i_59_3 ;
  wire \iv[15]_i_59_4 ;
  wire \iv[15]_i_59_5 ;
  wire \iv[15]_i_59_6 ;
  wire \iv[15]_i_61 ;
  wire \iv[15]_i_62 ;
  wire \iv[15]_i_62_0 ;
  wire [3:0]\iv[15]_i_68_0 ;
  wire [3:0]\iv[15]_i_68_1 ;
  wire \iv[15]_i_71_n_0 ;
  wire \iv[15]_i_72_n_0 ;
  wire [0:0]\iv[3]_i_2 ;
  wire \iv[3]_i_2_0 ;
  wire \iv[3]_i_7 ;
  wire \iv[3]_i_8 ;
  wire \iv[5]_i_13 ;
  wire \iv[5]_i_13_0 ;
  wire \iv[6]_i_10 ;
  wire \iv[7]_i_15_0 ;
  wire \iv[7]_i_15_1 ;
  wire \iv[7]_i_16_0 ;
  wire \iv[7]_i_16_n_0 ;
  wire \iv[7]_i_6 ;
  wire \iv[7]_i_8 ;
  wire \iv[7]_i_8_0 ;
  wire \iv[7]_i_8_1 ;
  wire \iv[7]_i_8_2 ;
  wire \iv[8]_i_21_0 ;
  wire \iv[8]_i_25 ;
  wire \iv[8]_i_27_n_0 ;
  wire \iv[8]_i_35_n_0 ;
  wire \iv[8]_i_36_n_0 ;
  wire [0:0]out;
  wire \sr[4]_i_33 ;
  wire \sr[4]_i_33_0 ;
  wire \sr[6]_i_6 ;
  wire \sr[6]_i_6_0 ;
  wire \sr_reg[0] ;
  wire \sr_reg[0]_0 ;
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
  wire \stat_reg[0] ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[1] ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;

  MUXF7 \badr[0]_INST_0_i_1 
       (.I0(\badr[0]_INST_0_i_2_n_0 ),
        .I1(\badr[0]_INST_0_i_3_n_0 ),
        .O(\badr[0]_INST_0_i_3_0 ),
        .S(ctl_sela[2]));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[0]_INST_0_i_10 
       (.I0(\badr[11]_INST_0_i_3_0 [0]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[11]_INST_0_i_3_1 [0]),
        .I4(ctl_sela[3]),
        .O(\badr[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[0]_INST_0_i_11 
       (.I0(\badr[11]_INST_0_i_3_2 [0]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[11]_INST_0_i_3_3 [0]),
        .I3(ctl_sela[3]),
        .I4(\badr[11]_INST_0_i_3_4 [0]),
        .I5(ctl_sela[4]),
        .O(\badr[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[0]_INST_0_i_2 
       (.I0(\badr[0]_INST_0_i_1_0 ),
        .I1(\badr[0]_INST_0_i_5_n_0 ),
        .I2(ctl_sela[1]),
        .I3(\badr[0]_INST_0_i_6_n_0 ),
        .I4(ctl_sela[0]),
        .I5(\badr[0]_INST_0_i_7_n_0 ),
        .O(\badr[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[0]_INST_0_i_3 
       (.I0(\badr[0]_INST_0_i_8_n_0 ),
        .I1(\badr[0]_INST_0_i_9_n_0 ),
        .I2(ctl_sela[1]),
        .I3(\badr[0]_INST_0_i_10_n_0 ),
        .I4(ctl_sela[0]),
        .I5(\badr[0]_INST_0_i_11_n_0 ),
        .O(\badr[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF088F000F000)) 
    \badr[0]_INST_0_i_5 
       (.I0(\iv[15]_i_68_0 [0]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[0]_INST_0_i_2_1 ),
        .I3(ctl_sela[3]),
        .I4(\iv[15]_i_68_1 [0]),
        .I5(ctl_sela[4]),
        .O(\badr[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \badr[0]_INST_0_i_6 
       (.I0(\badr[10]_INST_0_i_5 [0]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[10]_INST_0_i_5_1 [0]),
        .I3(ctl_sela[4]),
        .I4(\badr[10]_INST_0_i_5_0 [0]),
        .I5(ctl_sela[3]),
        .O(\badr[0]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hCB00C800)) 
    \badr[0]_INST_0_i_7 
       (.I0(out),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[0]_INST_0_i_2_0 ),
        .O(\badr[0]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[0]_INST_0_i_8 
       (.I0(\badr[11]_INST_0_i_2_2 [0]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[11]_INST_0_i_2_3 [0]),
        .I4(ctl_sela[3]),
        .O(\badr[0]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[0]_INST_0_i_9 
       (.I0(\badr[11]_INST_0_i_2_0 [0]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[11]_INST_0_i_2_1 [0]),
        .O(\badr[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[10]_INST_0_i_1 
       (.I0(\abus_o[10] ),
        .I1(\abus_o[10]_0 ),
        .I2(ctl_sela[2]),
        .I3(\abus_o[10]_1 ),
        .I4(ctl_sela[1]),
        .I5(\abus_o[10]_2 ),
        .O(\sr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[10]_INST_0_i_10 
       (.I0(\badr[10]_INST_0_i_4 [2]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[10]_INST_0_i_4_0 [2]),
        .I3(ctl_sela[3]),
        .I4(\badr[10]_INST_0_i_4_1 [2]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[10]_1 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[10]_INST_0_i_14 
       (.I0(\badr[10]_INST_0_i_5 [3]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[10]_INST_0_i_5_0 [3]),
        .I3(ctl_sela[3]),
        .I4(\badr[10]_INST_0_i_5_1 [3]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[10]_0 ));
  MUXF7 \badr[11]_INST_0_i_2 
       (.I0(\badr[11]_INST_0_i_6_n_0 ),
        .I1(\badr[11]_INST_0_i_7_n_0 ),
        .O(\grn_reg[11]_2 ),
        .S(ctl_sela[0]));
  MUXF7 \badr[11]_INST_0_i_3 
       (.I0(\badr[11]_INST_0_i_8_n_0 ),
        .I1(\badr[11]_INST_0_i_9_n_0 ),
        .O(\grn_reg[11]_1 ),
        .S(ctl_sela[0]));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[11]_INST_0_i_6 
       (.I0(\badr[11]_INST_0_i_2_0 [7]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[11]_INST_0_i_2_1 [7]),
        .I4(ctl_sela[3]),
        .O(\badr[11]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[11]_INST_0_i_7 
       (.I0(\badr[11]_INST_0_i_2_2 [6]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[11]_INST_0_i_2_3 [6]),
        .O(\badr[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[11]_INST_0_i_8 
       (.I0(\badr[11]_INST_0_i_3_2 [6]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[11]_INST_0_i_3_3 [6]),
        .I3(ctl_sela[3]),
        .I4(\badr[11]_INST_0_i_3_4 [6]),
        .I5(ctl_sela[4]),
        .O(\badr[11]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[11]_INST_0_i_9 
       (.I0(\badr[11]_INST_0_i_3_0 [6]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[11]_INST_0_i_3_1 [6]),
        .O(\badr[11]_INST_0_i_9_n_0 ));
  MUXF7 \badr[1]_INST_0_i_2 
       (.I0(\badr[1]_INST_0_i_6_n_0 ),
        .I1(\badr[1]_INST_0_i_7_n_0 ),
        .O(\grn_reg[1]_0 ),
        .S(ctl_sela[0]));
  MUXF7 \badr[1]_INST_0_i_3 
       (.I0(\badr[1]_INST_0_i_8_n_0 ),
        .I1(\badr[1]_INST_0_i_9_n_0 ),
        .O(\grn_reg[1]_1 ),
        .S(ctl_sela[0]));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[1]_INST_0_i_6 
       (.I0(\badr[11]_INST_0_i_2_0 [1]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[11]_INST_0_i_2_1 [1]),
        .O(\badr[1]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[1]_INST_0_i_7 
       (.I0(\badr[11]_INST_0_i_2_2 [1]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[11]_INST_0_i_2_3 [1]),
        .I4(ctl_sela[3]),
        .O(\badr[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[1]_INST_0_i_8 
       (.I0(\badr[11]_INST_0_i_3_2 [1]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[11]_INST_0_i_3_3 [1]),
        .I3(ctl_sela[3]),
        .I4(\badr[11]_INST_0_i_3_4 [1]),
        .I5(ctl_sela[4]),
        .O(\badr[1]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[1]_INST_0_i_9 
       (.I0(\badr[11]_INST_0_i_3_0 [1]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[11]_INST_0_i_3_1 [1]),
        .I4(ctl_sela[3]),
        .O(\badr[1]_INST_0_i_9_n_0 ));
  MUXF7 \badr[2]_INST_0_i_2 
       (.I0(\badr[2]_INST_0_i_6_n_0 ),
        .I1(\badr[2]_INST_0_i_7_n_0 ),
        .O(\grn_reg[2]_0 ),
        .S(ctl_sela[0]));
  MUXF7 \badr[2]_INST_0_i_3 
       (.I0(\badr[2]_INST_0_i_8_n_0 ),
        .I1(\badr[2]_INST_0_i_9_n_0 ),
        .O(\grn_reg[2]_1 ),
        .S(ctl_sela[0]));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[2]_INST_0_i_6 
       (.I0(\badr[11]_INST_0_i_2_0 [2]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[11]_INST_0_i_2_1 [2]),
        .O(\badr[2]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[2]_INST_0_i_7 
       (.I0(\badr[11]_INST_0_i_2_2 [2]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[11]_INST_0_i_2_3 [2]),
        .I4(ctl_sela[3]),
        .O(\badr[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[2]_INST_0_i_8 
       (.I0(\badr[11]_INST_0_i_3_2 [2]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[11]_INST_0_i_3_3 [2]),
        .I3(ctl_sela[3]),
        .I4(\badr[11]_INST_0_i_3_4 [2]),
        .I5(ctl_sela[4]),
        .O(\badr[2]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[2]_INST_0_i_9 
       (.I0(\badr[11]_INST_0_i_3_0 [2]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[11]_INST_0_i_3_1 [2]),
        .I4(ctl_sela[3]),
        .O(\badr[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[3]_INST_0_i_1 
       (.I0(\abus_o[3] ),
        .I1(\abus_o[3]_0 ),
        .I2(ctl_sela[2]),
        .I3(\abus_o[3]_1 ),
        .I4(ctl_sela[1]),
        .I5(\abus_o[3]_2 ),
        .O(\sr_reg[0] ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[3]_INST_0_i_10 
       (.I0(\badr[10]_INST_0_i_4 [0]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[10]_INST_0_i_4_0 [0]),
        .I3(ctl_sela[3]),
        .I4(\badr[10]_INST_0_i_4_1 [0]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[3]_INST_0_i_14 
       (.I0(\badr[10]_INST_0_i_5 [1]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[10]_INST_0_i_5_0 [1]),
        .I3(ctl_sela[3]),
        .I4(\badr[10]_INST_0_i_5_1 [1]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[4]_INST_0_i_1 
       (.I0(\abus_o[4] ),
        .I1(\abus_o[4]_0 ),
        .I2(ctl_sela[2]),
        .I3(\abus_o[4]_1 ),
        .I4(ctl_sela[1]),
        .I5(\abus_o[4]_2 ),
        .O(\grn_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[4]_INST_0_i_10 
       (.I0(\badr[10]_INST_0_i_4 [1]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[10]_INST_0_i_4_0 [1]),
        .I3(ctl_sela[3]),
        .I4(\badr[10]_INST_0_i_4_1 [1]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[4]_INST_0_i_14 
       (.I0(\badr[10]_INST_0_i_5 [2]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[10]_INST_0_i_5_0 [2]),
        .I3(ctl_sela[3]),
        .I4(\badr[10]_INST_0_i_5_1 [2]),
        .I5(ctl_sela[4]),
        .O(\grn_reg[4]_2 ));
  MUXF7 \badr[6]_INST_0_i_2 
       (.I0(\badr[6]_INST_0_i_6_n_0 ),
        .I1(\badr[6]_INST_0_i_7_n_0 ),
        .O(\grn_reg[6]_0 ),
        .S(ctl_sela[0]));
  MUXF7 \badr[6]_INST_0_i_3 
       (.I0(\badr[6]_INST_0_i_8_n_0 ),
        .I1(\badr[6]_INST_0_i_9_n_0 ),
        .O(\grn_reg[6]_2 ),
        .S(ctl_sela[0]));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[6]_INST_0_i_6 
       (.I0(\badr[11]_INST_0_i_2_0 [4]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[11]_INST_0_i_2_1 [4]),
        .I4(ctl_sela[3]),
        .O(\badr[6]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[6]_INST_0_i_7 
       (.I0(\badr[11]_INST_0_i_2_2 [3]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[11]_INST_0_i_2_3 [3]),
        .O(\badr[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[6]_INST_0_i_8 
       (.I0(\badr[11]_INST_0_i_3_2 [3]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[11]_INST_0_i_3_3 [3]),
        .I3(ctl_sela[3]),
        .I4(\badr[11]_INST_0_i_3_4 [3]),
        .I5(ctl_sela[4]),
        .O(\badr[6]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[6]_INST_0_i_9 
       (.I0(\badr[11]_INST_0_i_3_0 [3]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[11]_INST_0_i_3_1 [3]),
        .I4(ctl_sela[3]),
        .O(\badr[6]_INST_0_i_9_n_0 ));
  MUXF7 \badr[7]_INST_0_i_2 
       (.I0(\badr[7]_INST_0_i_6_n_0 ),
        .I1(\badr[7]_INST_0_i_7_n_0 ),
        .O(\grn_reg[7]_0 ),
        .S(ctl_sela[0]));
  MUXF7 \badr[7]_INST_0_i_3 
       (.I0(\badr[7]_INST_0_i_8_n_0 ),
        .I1(\badr[7]_INST_0_i_9_n_0 ),
        .O(\grn_reg[7]_1 ),
        .S(ctl_sela[0]));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[7]_INST_0_i_6 
       (.I0(\badr[11]_INST_0_i_2_0 [5]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[11]_INST_0_i_2_1 [5]),
        .I4(ctl_sela[3]),
        .O(\badr[7]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[7]_INST_0_i_7 
       (.I0(\badr[11]_INST_0_i_2_2 [4]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[11]_INST_0_i_2_3 [4]),
        .O(\badr[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[7]_INST_0_i_8 
       (.I0(\badr[11]_INST_0_i_3_2 [4]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[11]_INST_0_i_3_3 [4]),
        .I3(ctl_sela[3]),
        .I4(\badr[11]_INST_0_i_3_4 [4]),
        .I5(ctl_sela[4]),
        .O(\badr[7]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[7]_INST_0_i_9 
       (.I0(\badr[11]_INST_0_i_3_0 [4]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[11]_INST_0_i_3_1 [4]),
        .I4(ctl_sela[3]),
        .O(\badr[7]_INST_0_i_9_n_0 ));
  MUXF7 \badr[8]_INST_0_i_2 
       (.I0(\badr[8]_INST_0_i_6_n_0 ),
        .I1(\badr[8]_INST_0_i_7_n_0 ),
        .O(\grn_reg[8]_0 ),
        .S(ctl_sela[0]));
  MUXF7 \badr[8]_INST_0_i_3 
       (.I0(\badr[8]_INST_0_i_8_n_0 ),
        .I1(\badr[8]_INST_0_i_9_n_0 ),
        .O(\grn_reg[8]_1 ),
        .S(ctl_sela[0]));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[8]_INST_0_i_6 
       (.I0(\badr[11]_INST_0_i_2_0 [6]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[11]_INST_0_i_2_1 [6]),
        .O(\badr[8]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0B000800)) 
    \badr[8]_INST_0_i_7 
       (.I0(\badr[11]_INST_0_i_2_2 [5]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[3]),
        .I3(ctl_sela[4]),
        .I4(\badr[11]_INST_0_i_2_3 [5]),
        .O(\badr[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[8]_INST_0_i_8 
       (.I0(\badr[11]_INST_0_i_3_2 [5]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[11]_INST_0_i_3_3 [5]),
        .I3(ctl_sela[3]),
        .I4(\badr[11]_INST_0_i_3_4 [5]),
        .I5(ctl_sela[4]),
        .O(\badr[8]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \badr[8]_INST_0_i_9 
       (.I0(\badr[11]_INST_0_i_3_0 [5]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(ctl_sela[4]),
        .I3(\badr[11]_INST_0_i_3_1 [5]),
        .I4(ctl_sela[3]),
        .O(\badr[8]_INST_0_i_9_n_0 ));
  MUXF7 \bdatw[10]_INST_0_i_20 
       (.I0(\bdatw[10]_INST_0_i_32_n_0 ),
        .I1(\bdatw[10]_INST_0_i_7 ),
        .O(\grn_reg[2]_2 ),
        .S(ctl_selb[0]));
  LUT4 #(
    .INIT(16'hB800)) 
    \bdatw[10]_INST_0_i_32 
       (.I0(\iv[15]_i_68_0 [2]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\iv[15]_i_68_1 [2]),
        .I3(ctl_selb[1]),
        .O(\bdatw[10]_INST_0_i_32_n_0 ));
  MUXF7 \bdatw[12]_INST_0_i_18 
       (.I0(\bdatw[12]_INST_0_i_30_n_0 ),
        .I1(\iv[15]_i_62_0 ),
        .O(\grn_reg[4]_4 ),
        .S(ctl_selb[0]));
  LUT4 #(
    .INIT(16'hB800)) 
    \bdatw[12]_INST_0_i_30 
       (.I0(\iv[15]_i_68_0 [3]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\iv[15]_i_68_1 [3]),
        .I3(ctl_selb[1]),
        .O(\bdatw[12]_INST_0_i_30_n_0 ));
  MUXF7 \bdatw[8]_INST_0_i_17 
       (.I0(\bdatw[8]_INST_0_i_30_n_0 ),
        .I1(\bdatw[8]_INST_0_i_7 ),
        .O(\grn_reg[0]_0 ),
        .S(\iv[15]_i_62 ));
  LUT5 #(
    .INIT(32'hE500E000)) 
    \bdatw[8]_INST_0_i_30 
       (.I0(ctl_selb[0]),
        .I1(out),
        .I2(\iv[11]_i_15_0 [0]),
        .I3(ctl_selb[1]),
        .I4(\badr[0]_INST_0_i_2_0 ),
        .O(\bdatw[8]_INST_0_i_30_n_0 ));
  MUXF7 \bdatw[9]_INST_0_i_18 
       (.I0(\bdatw[9]_INST_0_i_30_n_0 ),
        .I1(\iv[15]_i_61 ),
        .O(\grn_reg[1]_3 ),
        .S(ctl_selb[0]));
  LUT4 #(
    .INIT(16'hB800)) 
    \bdatw[9]_INST_0_i_30 
       (.I0(\iv[15]_i_68_0 [1]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\iv[15]_i_68_1 [1]),
        .I3(ctl_selb[1]),
        .O(\bdatw[9]_INST_0_i_30_n_0 ));
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
    .INIT(64'h5F505F503F303F3F)) 
    \iv[0]_i_11 
       (.I0(\badr[14]_INST_0_i_1 ),
        .I1(\badr[12]_INST_0_i_1 ),
        .I2(\iv[13]_i_6 ),
        .I3(\iv[0]_i_5 ),
        .I4(\badr[8]_INST_0_i_1 ),
        .I5(\iv[7]_i_8 ),
        .O(\iv[15]_i_52 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \iv[10]_i_12 
       (.I0(\badr[3]_INST_0_i_1_0 ),
        .I1(\iv[13]_i_6 ),
        .I2(\iv[12]_i_20_0 ),
        .O(\iv[14]_i_35_0 ));
  LUT6 #(
    .INIT(64'hAFFC0000A0FC0000)) 
    \iv[10]_i_6 
       (.I0(\iv[10]_i_2 ),
        .I1(\iv[14]_i_35_0 ),
        .I2(\iv[3]_i_2 ),
        .I3(\iv[3]_i_2_0 ),
        .I4(\iv[10]_i_2_0 ),
        .I5(\iv[10]_i_2_1 ),
        .O(\stat_reg[1] ));
  LUT6 #(
    .INIT(64'h5050303F5F5F303F)) 
    \iv[11]_i_13 
       (.I0(\sr[6]_i_6_0 ),
        .I1(\iv[6]_i_10 ),
        .I2(\iv[7]_i_8 ),
        .I3(\iv[11]_i_15_0 [1]),
        .I4(\iv[7]_i_8_2 ),
        .I5(\iv[13]_i_6_0 ),
        .O(\sr_reg[6]_8 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[11]_i_14 
       (.I0(\badr[9]_INST_0_i_1 ),
        .I1(\iv[7]_i_8 ),
        .I2(\badr[11]_INST_0_i_1_0 ),
        .O(\iv[15]_i_56_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[11]_i_15 
       (.I0(\iv[11]_i_20_n_0 ),
        .I1(\iv[11]_i_21_n_0 ),
        .I2(\iv[13]_i_6 ),
        .I3(\iv[11]_i_30 ),
        .I4(\iv[7]_i_8 ),
        .I5(\badr[11]_INST_0_i_1 ),
        .O(\sr_reg[6]_5 ));
  LUT5 #(
    .INIT(32'h47FF4700)) 
    \iv[11]_i_17 
       (.I0(\iv[6]_i_10 ),
        .I1(\iv[7]_i_8_2 ),
        .I2(\sr[6]_i_6_0 ),
        .I3(\iv[7]_i_8 ),
        .I4(\badr[11]_INST_0_i_1 ),
        .O(\iv[11]_i_23_0 ));
  LUT5 #(
    .INIT(32'h1D001DFF)) 
    \iv[11]_i_20 
       (.I0(\iv[11]_i_25_n_0 ),
        .I1(ctl_sela[2]),
        .I2(\iv[11]_i_26_n_0 ),
        .I3(\iv[7]_i_8_2 ),
        .I4(\badr[0]_INST_0_i_3_0 ),
        .O(\iv[11]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \iv[11]_i_21 
       (.I0(\iv[13]_i_6_0 ),
        .I1(\iv[7]_i_8_2 ),
        .I2(\iv[11]_i_15_0 [1]),
        .O(\iv[11]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \iv[11]_i_22 
       (.I0(\iv[11]_i_18_0 ),
        .I1(\iv[11]_i_18_1 ),
        .I2(\iv[7]_i_8_2 ),
        .I3(\iv[11]_i_18_2 ),
        .I4(ctl_sela[2]),
        .I5(\iv[11]_i_18_3 ),
        .O(\iv[11]_i_30 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[11]_i_23 
       (.I0(\iv[12]_i_11 ),
        .I1(\iv[7]_i_8_2 ),
        .I2(\iv[11]_i_18 ),
        .O(\badr[11]_INST_0_i_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[11]_i_25 
       (.I0(\iv[11]_i_20_0 ),
        .I1(\iv[11]_i_20_1 ),
        .I2(ctl_sela[1]),
        .I3(\iv[11]_i_20_2 ),
        .I4(ctl_sela[0]),
        .I5(\iv[11]_i_20_3 ),
        .O(\iv[11]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \iv[11]_i_26 
       (.I0(ctl_sela[1]),
        .I1(\grn_reg[1]_1 ),
        .I2(\grn_reg[1]_0 ),
        .O(\iv[11]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \iv[12]_i_12 
       (.I0(\badr[4]_INST_0_i_1_0 ),
        .I1(\iv[13]_i_6 ),
        .I2(\sr_reg[6]_2 ),
        .O(\iv[8]_i_21_0 ));
  LUT6 #(
    .INIT(64'hC0CFC0CFD0D0DFDF)) 
    \iv[12]_i_13 
       (.I0(\badr[4]_INST_0_i_1_0 ),
        .I1(\iv[12]_i_5_0 ),
        .I2(\iv[12]_i_5 ),
        .I3(\iv[3]_i_8 ),
        .I4(\iv[7]_i_16_0 ),
        .I5(\iv[13]_i_6 ),
        .O(\iv[15]_i_35_0 ));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \iv[12]_i_15 
       (.I0(\sr_reg[6] ),
        .I1(\badr[14]_INST_0_i_1 ),
        .I2(\badr[12]_INST_0_i_1 ),
        .I3(\iv[7]_i_8 ),
        .I4(\iv[13]_i_6 ),
        .O(\iv[15]_i_35 ));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \iv[12]_i_16 
       (.I0(\iv[3]_i_7 ),
        .I1(\iv[13]_i_6 ),
        .I2(\iv[12]_i_19_n_0 ),
        .I3(\iv[7]_i_8 ),
        .I4(\iv[12]_i_20_n_0 ),
        .O(\iv[12]_i_20_1 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[12]_i_17 
       (.I0(\sr[6]_i_6_0 ),
        .I1(\iv[7]_i_8_2 ),
        .I2(\iv[12]_i_11 ),
        .O(\badr[12]_INST_0_i_1 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \iv[12]_i_19 
       (.I0(\iv[12]_i_16_0 ),
        .I1(\iv[12]_i_16_1 ),
        .I2(\iv[7]_i_8_2 ),
        .I3(\iv[12]_i_23_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\iv[12]_i_24_n_0 ),
        .O(\iv[12]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \iv[12]_i_20 
       (.I0(\iv[12]_i_25_n_0 ),
        .I1(\iv[12]_i_26_n_0 ),
        .I2(\iv[7]_i_8_2 ),
        .I3(\grn_reg[7]_2 ),
        .I4(ctl_sela[2]),
        .I5(\stat_reg[0]_0 ),
        .O(\iv[12]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[12]_i_23 
       (.I0(\iv[12]_i_19_1 ),
        .I1(\iv[12]_i_19_2 ),
        .I2(ctl_sela[1]),
        .I3(\iv[12]_i_19_3 ),
        .I4(ctl_sela[0]),
        .I5(\iv[12]_i_19_4 ),
        .O(\iv[12]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[12]_i_24 
       (.I0(\iv[12]_i_19_5 ),
        .I1(\iv[12]_i_19_6 ),
        .I2(ctl_sela[1]),
        .I3(\iv[12]_i_19_7 ),
        .I4(ctl_sela[0]),
        .I5(\iv[12]_i_19_8 ),
        .O(\iv[12]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[12]_i_25 
       (.I0(\iv[12]_i_20_3 ),
        .I1(\iv[12]_i_20_4 ),
        .I2(ctl_sela[1]),
        .I3(\iv[12]_i_20_5 ),
        .I4(ctl_sela[0]),
        .I5(\iv[12]_i_20_6 ),
        .O(\iv[12]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \iv[12]_i_26 
       (.I0(ctl_sela[1]),
        .I1(\grn_reg[8]_1 ),
        .I2(\grn_reg[8]_0 ),
        .O(\iv[12]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[12]_i_27 
       (.I0(\iv[15]_i_59_3 ),
        .I1(\iv[15]_i_59_4 ),
        .I2(ctl_sela[1]),
        .I3(\iv[15]_i_59_5 ),
        .I4(ctl_sela[0]),
        .I5(\iv[15]_i_59_6 ),
        .O(\grn_reg[7]_2 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \iv[12]_i_28 
       (.I0(ctl_sela[1]),
        .I1(\grn_reg[7]_1 ),
        .I2(\grn_reg[7]_0 ),
        .O(\stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h3F3FAFA03030AFA0)) 
    \iv[13]_i_15 
       (.I0(\badr[5]_INST_0_i_1 ),
        .I1(\iv[13]_i_5 ),
        .I2(\iv[12]_i_5 ),
        .I3(\iv[8]_i_25 ),
        .I4(\iv[13]_i_6 ),
        .I5(\iv[13]_i_25_n_0 ),
        .O(\iv[13]_i_25_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[13]_i_16 
       (.I0(\bdatw[9]_INST_0_i_2 ),
        .I1(\iv[13]_i_6 ),
        .I2(\sr_reg[6]_4 ),
        .O(\sr_reg[6]_3 ));
  LUT3 #(
    .INIT(8'h74)) 
    \iv[13]_i_18 
       (.I0(\iv[13]_i_6_0 ),
        .I1(\iv[13]_i_6 ),
        .I2(\badr[13]_INST_0_i_1 ),
        .O(\iv[13]_i_31_0 ));
  LUT6 #(
    .INIT(64'h3C44FF443C77FF77)) 
    \iv[13]_i_21 
       (.I0(\iv[13]_i_6_0 ),
        .I1(\iv[5]_i_13 ),
        .I2(\iv[5]_i_13_0 ),
        .I3(\iv[7]_i_8_2 ),
        .I4(\iv[6]_i_10 ),
        .I5(\sr[6]_i_6_0 ),
        .O(\badr[13]_INST_0_i_1_0 ));
  LUT6 #(
    .INIT(64'hD7771477D7441444)) 
    \iv[13]_i_22 
       (.I0(\iv[13]_i_32_n_0 ),
        .I1(\iv[5]_i_13 ),
        .I2(\iv[5]_i_13_0 ),
        .I3(\iv[7]_i_8_2 ),
        .I4(\grn_reg[4]_0 ),
        .I5(\sr[4]_i_33 ),
        .O(\badr[5]_INST_0_i_1 ));
  LUT6 #(
    .INIT(64'hEBBB28BBEB882888)) 
    \iv[13]_i_25 
       (.I0(\iv[13]_i_34_n_0 ),
        .I1(\iv[5]_i_13 ),
        .I2(\iv[5]_i_13_0 ),
        .I3(\iv[7]_i_8_2 ),
        .I4(\iv[15]_i_41 ),
        .I5(\sr[6]_i_6 ),
        .O(\iv[13]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF033553355F0F0F0)) 
    \iv[13]_i_26 
       (.I0(\sr_reg[0] ),
        .I1(\iv[7]_i_8_0 ),
        .I2(\iv[11]_i_20_n_0 ),
        .I3(\iv[7]_i_8_2 ),
        .I4(\iv[5]_i_13_0 ),
        .I5(\iv[5]_i_13 ),
        .O(\bdatw[9]_INST_0_i_2 ));
  LUT6 #(
    .INIT(64'hF33F5F5F03305050)) 
    \iv[13]_i_27 
       (.I0(\iv[13]_i_6_0 ),
        .I1(\iv[11]_i_15_0 [1]),
        .I2(\iv[5]_i_13 ),
        .I3(\iv[5]_i_13_0 ),
        .I4(\iv[7]_i_8_2 ),
        .I5(\iv[11]_i_30 ),
        .O(\sr_reg[6]_4 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_28 
       (.I0(\sr[6]_i_6 ),
        .I1(\iv[7]_i_8_2 ),
        .I2(\iv[15]_i_41 ),
        .O(\badr[8]_INST_0_i_1 ));
  LUT6 #(
    .INIT(64'h1444D7441477D777)) 
    \iv[13]_i_31 
       (.I0(\iv[13]_i_6_0 ),
        .I1(\iv[5]_i_13 ),
        .I2(\iv[5]_i_13_0 ),
        .I3(\iv[7]_i_8_2 ),
        .I4(\iv[6]_i_10 ),
        .I5(\sr[6]_i_6_0 ),
        .O(\badr[13]_INST_0_i_1 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \iv[13]_i_32 
       (.I0(\iv[8]_i_35_n_0 ),
        .I1(\iv[8]_i_36_n_0 ),
        .I2(\iv[7]_i_8_2 ),
        .I3(\iv[13]_i_22_0 ),
        .I4(ctl_sela[2]),
        .I5(\iv[13]_i_22_1 ),
        .O(\iv[13]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[13]_i_34 
       (.I0(\stat_reg[0] ),
        .I1(\grn_reg[6]_1 ),
        .I2(\iv[7]_i_8_2 ),
        .I3(\stat_reg[0]_0 ),
        .I4(ctl_sela[2]),
        .I5(\grn_reg[7]_2 ),
        .O(\iv[13]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[14]_i_23 
       (.I0(\iv[12]_i_19_0 ),
        .I1(\iv[13]_i_6 ),
        .I2(\iv[12]_i_20_0 ),
        .O(\iv[14]_i_35_1 ));
  LUT6 #(
    .INIT(64'hC5C555555F50CFC0)) 
    \iv[14]_i_27 
       (.I0(\iv[12]_i_26_0 ),
        .I1(\sr[6]_i_6 ),
        .I2(\iv[7]_i_8_2 ),
        .I3(\sr_reg[0]_0 ),
        .I4(\iv[5]_i_13_0 ),
        .I5(\iv[5]_i_13 ),
        .O(\bdatw[9]_INST_0_i_2_0 ));
  LUT6 #(
    .INIT(64'h802A8CEAB32ABFEA)) 
    \iv[14]_i_29 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(\iv[7]_i_8_2 ),
        .I2(\iv[5]_i_13_0 ),
        .I3(\iv[5]_i_13 ),
        .I4(\grn_reg[4]_0 ),
        .I5(\sr_reg[0] ),
        .O(\badr[3]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[14]_i_30 
       (.I0(\badr[0]_INST_0_i_3_0 ),
        .I1(\iv[7]_i_8_2 ),
        .I2(\iv[11]_i_15_0 [1]),
        .O(\sr_reg[6]_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[14]_i_31 
       (.I0(\iv[13]_i_6_0 ),
        .I1(\iv[7]_i_8_2 ),
        .I2(\iv[6]_i_10 ),
        .O(\badr[14]_INST_0_i_1 ));
  LUT6 #(
    .INIT(64'hF55F3F3F05503030)) 
    \iv[14]_i_34 
       (.I0(\iv[12]_i_11 ),
        .I1(\iv[11]_i_18 ),
        .I2(\iv[5]_i_13 ),
        .I3(\iv[5]_i_13_0 ),
        .I4(\iv[7]_i_8_2 ),
        .I5(\iv[12]_i_19_n_0 ),
        .O(\iv[12]_i_19_0 ));
  LUT6 #(
    .INIT(64'h5FFFF35350000353)) 
    \iv[14]_i_35 
       (.I0(\sr[4]_i_33_0 ),
        .I1(\sr[4]_i_33 ),
        .I2(\iv[7]_i_8_2 ),
        .I3(\iv[5]_i_13_0 ),
        .I4(\iv[5]_i_13 ),
        .I5(\iv[12]_i_20_n_0 ),
        .O(\iv[12]_i_20_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \iv[14]_i_38 
       (.I0(\iv[8]_i_35_n_0 ),
        .I1(\iv[8]_i_36_n_0 ),
        .I2(\iv[7]_i_8_2 ),
        .I3(\iv[11]_i_25_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\iv[11]_i_26_n_0 ),
        .O(\iv[14]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[15]_i_39 
       (.I0(\grn_reg[4]_0 ),
        .I1(\sr[4]_i_33 ),
        .I2(\iv[7]_i_8 ),
        .I3(\sr[4]_i_33_0 ),
        .I4(\iv[7]_i_8_2 ),
        .I5(\iv[11]_i_6 ),
        .O(\badr[7]_INST_0_i_1 ));
  LUT6 #(
    .INIT(64'h470047CC473347FF)) 
    \iv[15]_i_40 
       (.I0(\badr[0]_INST_0_i_3_0 ),
        .I1(\iv[7]_i_8_2 ),
        .I2(\iv[7]_i_8_1 ),
        .I3(\iv[7]_i_8 ),
        .I4(\iv[7]_i_8_0 ),
        .I5(\sr_reg[0] ),
        .O(\badr[3]_INST_0_i_1_1 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[15]_i_53 
       (.I0(\sr[4]_i_33 ),
        .I1(\iv[7]_i_8_2 ),
        .I2(\grn_reg[4]_0 ),
        .O(\badr[4]_INST_0_i_1_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[15]_i_55 
       (.I0(\iv[15]_i_41 ),
        .I1(\iv[7]_i_8_2 ),
        .I2(\sr[6]_i_6 ),
        .O(\badr[9]_INST_0_i_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[15]_i_56 
       (.I0(\sr_reg[0]_0 ),
        .I1(\iv[7]_i_8_2 ),
        .I2(\iv[11]_i_18 ),
        .O(\badr[11]_INST_0_i_1_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[15]_i_64 
       (.I0(\iv[15]_i_59 ),
        .I1(\iv[15]_i_59_0 ),
        .I2(ctl_sela[1]),
        .I3(\iv[15]_i_59_1 ),
        .I4(ctl_sela[0]),
        .I5(\iv[15]_i_59_2 ),
        .O(\grn_reg[6]_1 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \iv[15]_i_65 
       (.I0(ctl_sela[1]),
        .I1(\grn_reg[6]_2 ),
        .I2(\grn_reg[6]_0 ),
        .O(\stat_reg[0] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \iv[15]_i_67 
       (.I0(\iv[15]_i_71_n_0 ),
        .I1(\iv[15]_i_62 ),
        .I2(\iv[15]_i_61 ),
        .I3(ctl_selb[0]),
        .I4(\bdatw[9]_INST_0_i_30_n_0 ),
        .O(\grn_reg[1]_2 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \iv[15]_i_68 
       (.I0(\iv[15]_i_72_n_0 ),
        .I1(\iv[15]_i_62 ),
        .I2(\iv[15]_i_62_0 ),
        .I3(ctl_selb[0]),
        .I4(\bdatw[12]_INST_0_i_30_n_0 ),
        .O(\grn_reg[4]_3 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \iv[15]_i_71 
       (.I0(\badr[11]_INST_0_i_2_0 [1]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[11]_INST_0_i_2_1 [1]),
        .I3(ctl_selb[1]),
        .O(\iv[15]_i_71_n_0 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \iv[15]_i_72 
       (.I0(\badr[11]_INST_0_i_2_0 [3]),
        .I1(\iv[11]_i_15_0 [0]),
        .I2(\badr[11]_INST_0_i_2_1 [3]),
        .I3(ctl_selb[1]),
        .O(\iv[15]_i_72_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \iv[3]_i_13 
       (.I0(\iv[3]_i_8 ),
        .I1(\iv[7]_i_16_0 ),
        .I2(\iv[13]_i_6 ),
        .O(\iv[15]_i_35_1 ));
  LUT6 #(
    .INIT(64'h0000FFFFD100D100)) 
    \iv[3]_i_5 
       (.I0(\iv[11]_i_23_0 ),
        .I1(\iv[13]_i_6 ),
        .I2(\iv[13]_i_6_0 ),
        .I3(\iv[3]_i_2 ),
        .I4(\iv[12]_i_20_1 ),
        .I5(\iv[3]_i_2_0 ),
        .O(\stat_reg[1]_1 ));
  LUT3 #(
    .INIT(8'h53)) 
    \iv[4]_i_12 
       (.I0(\badr[14]_INST_0_i_1 ),
        .I1(\badr[12]_INST_0_i_1 ),
        .I2(\iv[7]_i_8 ),
        .O(\iv[15]_i_52_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \iv[4]_i_13 
       (.I0(\iv[8]_i_25 ),
        .I1(\iv[13]_i_6 ),
        .I2(\iv[13]_i_25_n_0 ),
        .O(\iv[13]_i_25_2 ));
  LUT4 #(
    .INIT(16'h0035)) 
    \iv[5]_i_5 
       (.I0(\sr_reg[6]_3 ),
        .I1(\iv[13]_i_31_0 ),
        .I2(\iv[3]_i_2 ),
        .I3(\iv[3]_i_2_0 ),
        .O(\stat_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h2888EB8828BBEBBB)) 
    \iv[6]_i_15 
       (.I0(\sr_reg[6]_0 ),
        .I1(\iv[5]_i_13 ),
        .I2(\iv[5]_i_13_0 ),
        .I3(\iv[7]_i_8_2 ),
        .I4(\iv[13]_i_6_0 ),
        .I5(\iv[6]_i_10 ),
        .O(\sr_reg[6]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[7]_i_12 
       (.I0(\iv[11]_i_30 ),
        .I1(\badr[11]_INST_0_i_1 ),
        .I2(\iv[13]_i_6 ),
        .I3(\iv[12]_i_19_n_0 ),
        .I4(\iv[7]_i_8 ),
        .I5(\iv[12]_i_20_n_0 ),
        .O(\iv[12]_i_20_2 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \iv[7]_i_14 
       (.I0(\badr[4]_INST_0_i_1_1 ),
        .I1(\iv[7]_i_6 ),
        .I2(\iv[11]_i_20_n_0 ),
        .I3(\iv[7]_i_8 ),
        .I4(\iv[11]_i_21_n_0 ),
        .I5(\iv[13]_i_6 ),
        .O(\sr_reg[6]_6 ));
  LUT6 #(
    .INIT(64'hF55F3F3F05503030)) 
    \iv[7]_i_15 
       (.I0(\sr[6]_i_6 ),
        .I1(\sr_reg[0]_0 ),
        .I2(\iv[5]_i_13 ),
        .I3(\iv[5]_i_13_0 ),
        .I4(\iv[7]_i_8_2 ),
        .I5(\iv[7]_i_16_n_0 ),
        .O(\iv[7]_i_16_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \iv[7]_i_16 
       (.I0(\grn_reg[11]_0 ),
        .I1(\stat_reg[0]_1 ),
        .I2(\iv[7]_i_8_2 ),
        .I3(\iv[7]_i_15_0 ),
        .I4(ctl_sela[2]),
        .I5(\iv[7]_i_15_1 ),
        .O(\iv[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[7]_i_17 
       (.I0(\iv[15]_i_58 ),
        .I1(\iv[15]_i_58_0 ),
        .I2(ctl_sela[1]),
        .I3(\iv[15]_i_58_1 ),
        .I4(ctl_sela[0]),
        .I5(\iv[15]_i_58_2 ),
        .O(\grn_reg[11]_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \iv[7]_i_18 
       (.I0(ctl_sela[1]),
        .I1(\grn_reg[11]_1 ),
        .I2(\grn_reg[11]_2 ),
        .O(\stat_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hF55F3F3F05503030)) 
    \iv[8]_i_13 
       (.I0(\iv[7]_i_8_0 ),
        .I1(\iv[7]_i_8_1 ),
        .I2(\iv[5]_i_13 ),
        .I3(\iv[5]_i_13_0 ),
        .I4(\iv[7]_i_8_2 ),
        .I5(\sr_reg[6]_0 ),
        .O(\sr_reg[6] ));
  LUT6 #(
    .INIT(64'hFAAFCFCF0AA0C0C0)) 
    \iv[8]_i_20 
       (.I0(\sr_reg[0]_0 ),
        .I1(\iv[11]_i_18 ),
        .I2(\iv[5]_i_13 ),
        .I3(\iv[5]_i_13_0 ),
        .I4(\iv[7]_i_8_2 ),
        .I5(\iv[0]_i_14_0 ),
        .O(\iv[8]_i_25 ));
  LUT6 #(
    .INIT(64'hFAAFCFCF0AA0C0C0)) 
    \iv[8]_i_21 
       (.I0(\iv[6]_i_10 ),
        .I1(\iv[13]_i_6_0 ),
        .I2(\iv[5]_i_13 ),
        .I3(\iv[5]_i_13_0 ),
        .I4(\iv[7]_i_8_2 ),
        .I5(\iv[0]_i_14 ),
        .O(\sr_reg[6]_2 ));
  LUT6 #(
    .INIT(64'h2888EB8828BBEBBB)) 
    \iv[8]_i_22 
       (.I0(\iv[8]_i_27_n_0 ),
        .I1(\iv[5]_i_13 ),
        .I2(\iv[5]_i_13_0 ),
        .I3(\iv[7]_i_8_2 ),
        .I4(\sr_reg[0] ),
        .I5(\grn_reg[4]_0 ),
        .O(\badr[4]_INST_0_i_1_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \iv[8]_i_27 
       (.I0(\iv[11]_i_25_n_0 ),
        .I1(\iv[11]_i_26_n_0 ),
        .I2(\iv[7]_i_8_2 ),
        .I3(\iv[8]_i_35_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\iv[8]_i_36_n_0 ),
        .O(\iv[8]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \iv[8]_i_28 
       (.I0(\grn_reg[7]_2 ),
        .I1(\stat_reg[0]_0 ),
        .I2(\iv[7]_i_8_2 ),
        .I3(\iv[12]_i_25_n_0 ),
        .I4(ctl_sela[2]),
        .I5(\iv[12]_i_26_n_0 ),
        .O(\iv[12]_i_26_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[8]_i_35 
       (.I0(\iv[14]_i_38_0 ),
        .I1(\iv[14]_i_38_1 ),
        .I2(ctl_sela[1]),
        .I3(\iv[14]_i_38_2 ),
        .I4(ctl_sela[0]),
        .I5(\iv[14]_i_38_3 ),
        .O(\iv[8]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \iv[8]_i_36 
       (.I0(ctl_sela[1]),
        .I1(\grn_reg[2]_1 ),
        .I2(\grn_reg[2]_0 ),
        .O(\iv[8]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \iv[9]_i_12 
       (.I0(\iv[12]_i_19_0 ),
        .I1(\iv[13]_i_6 ),
        .I2(\sr_reg[6]_4 ),
        .O(\sr_reg[6]_7 ));
  LUT3 #(
    .INIT(8'h35)) 
    \iv[9]_i_13 
       (.I0(\iv[12]_i_19_0 ),
        .I1(\badr[13]_INST_0_i_1 ),
        .I2(\iv[13]_i_6 ),
        .O(\iv[15]_i_35_2 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \iv[9]_i_14 
       (.I0(\iv[12]_i_19_0 ),
        .I1(\iv[13]_i_6 ),
        .I2(\badr[13]_INST_0_i_1_0 ),
        .O(\iv[13]_i_21_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[9]_i_15 
       (.I0(\badr[5]_INST_0_i_1 ),
        .I1(\iv[13]_i_6 ),
        .I2(\iv[13]_i_25_n_0 ),
        .O(\iv[13]_i_25_1 ));
endmodule

(* ORIG_REF_NAME = "mcbs_rgf_grn" *) 
module mcbs_rgf_grn_8
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

(* ORIG_REF_NAME = "mcbs_rgf_grn" *) 
module mcbs_rgf_grn_9
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

module mcbs_rgf_ivec
   (.out({iv[15],iv[14],iv[13],iv[12],iv[11],iv[10],iv[9],iv[8],iv[7],iv[6],iv[5],iv[4],iv[3],iv[2],iv[1],iv[0]}),
    \stat_reg[2] ,
    \stat_reg[2]_0 ,
    \iv_reg[1]_0 ,
    \stat_reg[2]_1 ,
    \stat_reg[2]_2 ,
    \stat_reg[2]_3 ,
    \iv_reg[5]_0 ,
    \iv_reg[6]_0 ,
    \iv_reg[7]_0 ,
    \stat_reg[2]_4 ,
    \stat_reg[2]_5 ,
    \stat_reg[2]_6 ,
    \stat_reg[2]_7 ,
    \stat_reg[2]_8 ,
    \stat_reg[2]_9 ,
    \stat_reg[2]_10 ,
    \stat_reg[2]_11 ,
    \stat_reg[2]_12 ,
    \bdatw[8]_INST_0_i_2 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[8]_INST_0_i_8_0 ,
    \bdatw[8]_INST_0_i_8_1 ,
    \bdatw[9]_INST_0_i_2 ,
    \iv[15]_i_61 ,
    \bdatw[10]_INST_0_i_2 ,
    \bdatw[10]_INST_0_i_8_0 ,
    \bdatw[11]_INST_0_i_2 ,
    \bdatw[11]_INST_0_i_8_0 ,
    \bdatw[12]_INST_0_i_2 ,
    \bdatw[12]_INST_0_i_8_0 ,
    \bdatw[13]_INST_0_i_7 ,
    \bdatw[14]_INST_0_i_7 ,
    \bdatw[15]_INST_0_i_10 ,
    \bdatw[8]_INST_0_i_1 ,
    \bdatw[8]_INST_0_i_5_0 ,
    \bdatw[9]_INST_0_i_1 ,
    \bdatw[9]_INST_0_i_5_0 ,
    \bdatw[10]_INST_0_i_1 ,
    \bdatw[10]_INST_0_i_5_0 ,
    \bdatw[11]_INST_0_i_1 ,
    \bdatw[11]_INST_0_i_5_0 ,
    \bdatw[12]_INST_0_i_1 ,
    \bdatw[12]_INST_0_i_5_0 ,
    \bdatw[13]_INST_0_i_1 ,
    \bdatw[13]_INST_0_i_5_0 ,
    \bdatw[14]_INST_0_i_1 ,
    \bdatw[14]_INST_0_i_5_0 ,
    \bdatw[15]_INST_0_i_1 ,
    \bdatw[15]_INST_0_i_7_0 ,
    ctl_selb,
    \bdatw[15]_INST_0_i_21_0 ,
    \bdatw[15]_INST_0_i_21_1 ,
    \bdatw[15]_INST_0_i_21_2 ,
    \iv[15]_i_52 ,
    \iv[15]_i_52_0 ,
    \iv[15]_i_52_1 ,
    \iv[15]_i_52_2 ,
    SR,
    cbus_sel_cr,
    \iv_reg[15]_0 ,
    clk);
  output \stat_reg[2] ;
  output \stat_reg[2]_0 ;
  output \iv_reg[1]_0 ;
  output \stat_reg[2]_1 ;
  output \stat_reg[2]_2 ;
  output \stat_reg[2]_3 ;
  output \iv_reg[5]_0 ;
  output \iv_reg[6]_0 ;
  output \iv_reg[7]_0 ;
  output \stat_reg[2]_4 ;
  output \stat_reg[2]_5 ;
  output \stat_reg[2]_6 ;
  output \stat_reg[2]_7 ;
  output \stat_reg[2]_8 ;
  output \stat_reg[2]_9 ;
  output \stat_reg[2]_10 ;
  output \stat_reg[2]_11 ;
  output \stat_reg[2]_12 ;
  input \bdatw[8]_INST_0_i_2 ;
  input \bdatw[8]_INST_0_i_2_0 ;
  input \bdatw[8]_INST_0_i_8_0 ;
  input \bdatw[8]_INST_0_i_8_1 ;
  input \bdatw[9]_INST_0_i_2 ;
  input \iv[15]_i_61 ;
  input \bdatw[10]_INST_0_i_2 ;
  input \bdatw[10]_INST_0_i_8_0 ;
  input \bdatw[11]_INST_0_i_2 ;
  input \bdatw[11]_INST_0_i_8_0 ;
  input \bdatw[12]_INST_0_i_2 ;
  input \bdatw[12]_INST_0_i_8_0 ;
  input \bdatw[13]_INST_0_i_7 ;
  input \bdatw[14]_INST_0_i_7 ;
  input \bdatw[15]_INST_0_i_10 ;
  input \bdatw[8]_INST_0_i_1 ;
  input \bdatw[8]_INST_0_i_5_0 ;
  input \bdatw[9]_INST_0_i_1 ;
  input \bdatw[9]_INST_0_i_5_0 ;
  input \bdatw[10]_INST_0_i_1 ;
  input \bdatw[10]_INST_0_i_5_0 ;
  input \bdatw[11]_INST_0_i_1 ;
  input \bdatw[11]_INST_0_i_5_0 ;
  input \bdatw[12]_INST_0_i_1 ;
  input \bdatw[12]_INST_0_i_5_0 ;
  input \bdatw[13]_INST_0_i_1 ;
  input \bdatw[13]_INST_0_i_5_0 ;
  input \bdatw[14]_INST_0_i_1 ;
  input \bdatw[14]_INST_0_i_5_0 ;
  input \bdatw[15]_INST_0_i_1 ;
  input \bdatw[15]_INST_0_i_7_0 ;
  input [1:0]ctl_selb;
  input [15:0]\bdatw[15]_INST_0_i_21_0 ;
  input [0:0]\bdatw[15]_INST_0_i_21_1 ;
  input [15:0]\bdatw[15]_INST_0_i_21_2 ;
  input \iv[15]_i_52 ;
  input \iv[15]_i_52_0 ;
  input \iv[15]_i_52_1 ;
  input [0:0]\iv[15]_i_52_2 ;
  input [0:0]SR;
  input [0:0]cbus_sel_cr;
  input [15:0]\iv_reg[15]_0 ;
  input clk;
     output [15:0]iv;

  wire [0:0]SR;
  wire \bdatw[10]_INST_0_i_1 ;
  wire \bdatw[10]_INST_0_i_14_n_0 ;
  wire \bdatw[10]_INST_0_i_2 ;
  wire \bdatw[10]_INST_0_i_21_n_0 ;
  wire \bdatw[10]_INST_0_i_28_n_0 ;
  wire \bdatw[10]_INST_0_i_34_n_0 ;
  wire \bdatw[10]_INST_0_i_5_0 ;
  wire \bdatw[10]_INST_0_i_8_0 ;
  wire \bdatw[11]_INST_0_i_1 ;
  wire \bdatw[11]_INST_0_i_12_n_0 ;
  wire \bdatw[11]_INST_0_i_19_n_0 ;
  wire \bdatw[11]_INST_0_i_2 ;
  wire \bdatw[11]_INST_0_i_25_n_0 ;
  wire \bdatw[11]_INST_0_i_31_n_0 ;
  wire \bdatw[11]_INST_0_i_5_0 ;
  wire \bdatw[11]_INST_0_i_8_0 ;
  wire \bdatw[12]_INST_0_i_1 ;
  wire \bdatw[12]_INST_0_i_12_n_0 ;
  wire \bdatw[12]_INST_0_i_19_n_0 ;
  wire \bdatw[12]_INST_0_i_2 ;
  wire \bdatw[12]_INST_0_i_25_n_0 ;
  wire \bdatw[12]_INST_0_i_32_n_0 ;
  wire \bdatw[12]_INST_0_i_5_0 ;
  wire \bdatw[12]_INST_0_i_8_0 ;
  wire \bdatw[13]_INST_0_i_1 ;
  wire \bdatw[13]_INST_0_i_11_n_0 ;
  wire \bdatw[13]_INST_0_i_22_n_0 ;
  wire \bdatw[13]_INST_0_i_32_n_0 ;
  wire \bdatw[13]_INST_0_i_5_0 ;
  wire \bdatw[13]_INST_0_i_7 ;
  wire \bdatw[14]_INST_0_i_1 ;
  wire \bdatw[14]_INST_0_i_11_n_0 ;
  wire \bdatw[14]_INST_0_i_22_n_0 ;
  wire \bdatw[14]_INST_0_i_32_n_0 ;
  wire \bdatw[14]_INST_0_i_5_0 ;
  wire \bdatw[14]_INST_0_i_7 ;
  wire \bdatw[15]_INST_0_i_1 ;
  wire \bdatw[15]_INST_0_i_10 ;
  wire [15:0]\bdatw[15]_INST_0_i_21_0 ;
  wire [0:0]\bdatw[15]_INST_0_i_21_1 ;
  wire [15:0]\bdatw[15]_INST_0_i_21_2 ;
  wire \bdatw[15]_INST_0_i_21_n_0 ;
  wire \bdatw[15]_INST_0_i_55_n_0 ;
  wire \bdatw[15]_INST_0_i_71_n_0 ;
  wire \bdatw[15]_INST_0_i_7_0 ;
  wire \bdatw[8]_INST_0_i_1 ;
  wire \bdatw[8]_INST_0_i_13_n_0 ;
  wire \bdatw[8]_INST_0_i_18_n_0 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_24_n_0 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_32_n_0 ;
  wire \bdatw[8]_INST_0_i_5_0 ;
  wire \bdatw[8]_INST_0_i_8_0 ;
  wire \bdatw[8]_INST_0_i_8_1 ;
  wire \bdatw[9]_INST_0_i_1 ;
  wire \bdatw[9]_INST_0_i_12_n_0 ;
  wire \bdatw[9]_INST_0_i_2 ;
  wire \bdatw[9]_INST_0_i_25_n_0 ;
  wire \bdatw[9]_INST_0_i_32_n_0 ;
  wire \bdatw[9]_INST_0_i_5_0 ;
  wire [0:0]cbus_sel_cr;
  wire clk;
  wire [1:0]ctl_selb;
  (* DONT_TOUCH *) wire [15:0]iv;
  wire \iv[15]_i_52 ;
  wire \iv[15]_i_52_0 ;
  wire \iv[15]_i_52_1 ;
  wire [0:0]\iv[15]_i_52_2 ;
  wire \iv[15]_i_61 ;
  wire [15:0]\iv_reg[15]_0 ;
  wire \iv_reg[1]_0 ;
  wire \iv_reg[5]_0 ;
  wire \iv_reg[6]_0 ;
  wire \iv_reg[7]_0 ;
  wire \stat_reg[2] ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_10 ;
  wire \stat_reg[2]_11 ;
  wire \stat_reg[2]_12 ;
  wire \stat_reg[2]_2 ;
  wire \stat_reg[2]_3 ;
  wire \stat_reg[2]_4 ;
  wire \stat_reg[2]_5 ;
  wire \stat_reg[2]_6 ;
  wire \stat_reg[2]_7 ;
  wire \stat_reg[2]_8 ;
  wire \stat_reg[2]_9 ;

  MUXF7 \bdatw[10]_INST_0_i_14 
       (.I0(\bdatw[10]_INST_0_i_28_n_0 ),
        .I1(\bdatw[10]_INST_0_i_5_0 ),
        .O(\bdatw[10]_INST_0_i_14_n_0 ),
        .S(\bdatw[8]_INST_0_i_8_0 ));
  MUXF7 \bdatw[10]_INST_0_i_21 
       (.I0(\bdatw[10]_INST_0_i_34_n_0 ),
        .I1(\bdatw[10]_INST_0_i_8_0 ),
        .O(\bdatw[10]_INST_0_i_21_n_0 ),
        .S(\bdatw[8]_INST_0_i_8_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[10]_INST_0_i_28 
       (.I0(iv[10]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_21_0 [10]),
        .I3(\bdatw[15]_INST_0_i_21_1 ),
        .I4(\bdatw[15]_INST_0_i_21_2 [10]),
        .I5(ctl_selb[1]),
        .O(\bdatw[10]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[10]_INST_0_i_34 
       (.I0(iv[2]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_21_0 [2]),
        .I3(\bdatw[15]_INST_0_i_21_1 ),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_21_2 [2]),
        .O(\bdatw[10]_INST_0_i_34_n_0 ));
  MUXF8 \bdatw[10]_INST_0_i_5 
       (.I0(\bdatw[10]_INST_0_i_14_n_0 ),
        .I1(\bdatw[10]_INST_0_i_1 ),
        .O(\stat_reg[2]_6 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF8 \bdatw[10]_INST_0_i_8 
       (.I0(\bdatw[10]_INST_0_i_21_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2 ),
        .O(\stat_reg[2]_1 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF7 \bdatw[11]_INST_0_i_12 
       (.I0(\bdatw[11]_INST_0_i_25_n_0 ),
        .I1(\bdatw[11]_INST_0_i_5_0 ),
        .O(\bdatw[11]_INST_0_i_12_n_0 ),
        .S(\bdatw[8]_INST_0_i_8_0 ));
  MUXF7 \bdatw[11]_INST_0_i_19 
       (.I0(\bdatw[11]_INST_0_i_31_n_0 ),
        .I1(\bdatw[11]_INST_0_i_8_0 ),
        .O(\bdatw[11]_INST_0_i_19_n_0 ),
        .S(\bdatw[8]_INST_0_i_8_0 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[11]_INST_0_i_25 
       (.I0(iv[11]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_21_0 [11]),
        .I3(\bdatw[15]_INST_0_i_21_1 ),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_21_2 [11]),
        .O(\bdatw[11]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[11]_INST_0_i_31 
       (.I0(iv[3]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_21_0 [3]),
        .I3(\bdatw[15]_INST_0_i_21_1 ),
        .I4(\bdatw[15]_INST_0_i_21_2 [3]),
        .I5(ctl_selb[1]),
        .O(\bdatw[11]_INST_0_i_31_n_0 ));
  MUXF8 \bdatw[11]_INST_0_i_5 
       (.I0(\bdatw[11]_INST_0_i_12_n_0 ),
        .I1(\bdatw[11]_INST_0_i_1 ),
        .O(\stat_reg[2]_7 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF8 \bdatw[11]_INST_0_i_8 
       (.I0(\bdatw[11]_INST_0_i_19_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .O(\stat_reg[2]_2 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF7 \bdatw[12]_INST_0_i_12 
       (.I0(\bdatw[12]_INST_0_i_25_n_0 ),
        .I1(\bdatw[12]_INST_0_i_5_0 ),
        .O(\bdatw[12]_INST_0_i_12_n_0 ),
        .S(\bdatw[8]_INST_0_i_8_0 ));
  MUXF7 \bdatw[12]_INST_0_i_19 
       (.I0(\bdatw[12]_INST_0_i_32_n_0 ),
        .I1(\bdatw[12]_INST_0_i_8_0 ),
        .O(\bdatw[12]_INST_0_i_19_n_0 ),
        .S(\bdatw[8]_INST_0_i_8_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[12]_INST_0_i_25 
       (.I0(iv[12]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_21_0 [12]),
        .I3(\bdatw[15]_INST_0_i_21_1 ),
        .I4(\bdatw[15]_INST_0_i_21_2 [12]),
        .I5(ctl_selb[1]),
        .O(\bdatw[12]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[12]_INST_0_i_32 
       (.I0(iv[4]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_21_0 [4]),
        .I3(\bdatw[15]_INST_0_i_21_1 ),
        .I4(\bdatw[15]_INST_0_i_21_2 [4]),
        .I5(ctl_selb[1]),
        .O(\bdatw[12]_INST_0_i_32_n_0 ));
  MUXF8 \bdatw[12]_INST_0_i_5 
       (.I0(\bdatw[12]_INST_0_i_12_n_0 ),
        .I1(\bdatw[12]_INST_0_i_1 ),
        .O(\stat_reg[2]_8 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF8 \bdatw[12]_INST_0_i_8 
       (.I0(\bdatw[12]_INST_0_i_19_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2 ),
        .O(\stat_reg[2]_3 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF7 \bdatw[13]_INST_0_i_11 
       (.I0(\bdatw[13]_INST_0_i_22_n_0 ),
        .I1(\bdatw[13]_INST_0_i_5_0 ),
        .O(\bdatw[13]_INST_0_i_11_n_0 ),
        .S(\bdatw[8]_INST_0_i_8_0 ));
  MUXF7 \bdatw[13]_INST_0_i_17 
       (.I0(\bdatw[13]_INST_0_i_32_n_0 ),
        .I1(\bdatw[13]_INST_0_i_7 ),
        .O(\iv_reg[5]_0 ),
        .S(\bdatw[8]_INST_0_i_8_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[13]_INST_0_i_22 
       (.I0(iv[13]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_21_0 [13]),
        .I3(\bdatw[15]_INST_0_i_21_1 ),
        .I4(\bdatw[15]_INST_0_i_21_2 [13]),
        .I5(ctl_selb[1]),
        .O(\bdatw[13]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[13]_INST_0_i_32 
       (.I0(iv[5]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_21_0 [5]),
        .I3(\bdatw[15]_INST_0_i_21_1 ),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_21_2 [5]),
        .O(\bdatw[13]_INST_0_i_32_n_0 ));
  MUXF8 \bdatw[13]_INST_0_i_5 
       (.I0(\bdatw[13]_INST_0_i_11_n_0 ),
        .I1(\bdatw[13]_INST_0_i_1 ),
        .O(\stat_reg[2]_9 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF7 \bdatw[14]_INST_0_i_11 
       (.I0(\bdatw[14]_INST_0_i_22_n_0 ),
        .I1(\bdatw[14]_INST_0_i_5_0 ),
        .O(\bdatw[14]_INST_0_i_11_n_0 ),
        .S(\bdatw[8]_INST_0_i_8_0 ));
  MUXF7 \bdatw[14]_INST_0_i_17 
       (.I0(\bdatw[14]_INST_0_i_32_n_0 ),
        .I1(\bdatw[14]_INST_0_i_7 ),
        .O(\iv_reg[6]_0 ),
        .S(\bdatw[8]_INST_0_i_8_0 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[14]_INST_0_i_22 
       (.I0(iv[14]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_21_0 [14]),
        .I3(\bdatw[15]_INST_0_i_21_1 ),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_21_2 [14]),
        .O(\bdatw[14]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[14]_INST_0_i_32 
       (.I0(iv[6]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_21_0 [6]),
        .I3(\bdatw[15]_INST_0_i_21_1 ),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_21_2 [6]),
        .O(\bdatw[14]_INST_0_i_32_n_0 ));
  MUXF8 \bdatw[14]_INST_0_i_5 
       (.I0(\bdatw[14]_INST_0_i_11_n_0 ),
        .I1(\bdatw[14]_INST_0_i_1 ),
        .O(\stat_reg[2]_10 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF7 \bdatw[15]_INST_0_i_21 
       (.I0(\bdatw[15]_INST_0_i_55_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_0 ),
        .O(\bdatw[15]_INST_0_i_21_n_0 ),
        .S(\bdatw[8]_INST_0_i_8_0 ));
  MUXF7 \bdatw[15]_INST_0_i_29 
       (.I0(\bdatw[15]_INST_0_i_71_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10 ),
        .O(\iv_reg[7]_0 ),
        .S(\bdatw[8]_INST_0_i_8_0 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[15]_INST_0_i_55 
       (.I0(iv[15]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_21_0 [15]),
        .I3(\bdatw[15]_INST_0_i_21_1 ),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_21_2 [15]),
        .O(\bdatw[15]_INST_0_i_55_n_0 ));
  MUXF8 \bdatw[15]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_21_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1 ),
        .O(\stat_reg[2]_11 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[15]_INST_0_i_71 
       (.I0(iv[7]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_21_0 [7]),
        .I3(\bdatw[15]_INST_0_i_21_1 ),
        .I4(\bdatw[15]_INST_0_i_21_2 [7]),
        .I5(ctl_selb[1]),
        .O(\bdatw[15]_INST_0_i_71_n_0 ));
  MUXF7 \bdatw[8]_INST_0_i_13 
       (.I0(\bdatw[8]_INST_0_i_24_n_0 ),
        .I1(\bdatw[8]_INST_0_i_5_0 ),
        .O(\bdatw[8]_INST_0_i_13_n_0 ),
        .S(\bdatw[8]_INST_0_i_8_0 ));
  MUXF7 \bdatw[8]_INST_0_i_18 
       (.I0(\bdatw[8]_INST_0_i_32_n_0 ),
        .I1(\bdatw[8]_INST_0_i_8_1 ),
        .O(\bdatw[8]_INST_0_i_18_n_0 ),
        .S(\bdatw[8]_INST_0_i_8_0 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[8]_INST_0_i_24 
       (.I0(iv[8]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_21_0 [8]),
        .I3(\bdatw[15]_INST_0_i_21_1 ),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_21_2 [8]),
        .O(\bdatw[8]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hBB880000B8B80000)) 
    \bdatw[8]_INST_0_i_32 
       (.I0(iv[0]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_21_2 [0]),
        .I3(\bdatw[15]_INST_0_i_21_0 [0]),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_21_1 ),
        .O(\bdatw[8]_INST_0_i_32_n_0 ));
  MUXF8 \bdatw[8]_INST_0_i_5 
       (.I0(\bdatw[8]_INST_0_i_13_n_0 ),
        .I1(\bdatw[8]_INST_0_i_1 ),
        .O(\stat_reg[2]_4 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF8 \bdatw[8]_INST_0_i_8 
       (.I0(\bdatw[8]_INST_0_i_18_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .O(\stat_reg[2] ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF7 \bdatw[9]_INST_0_i_12 
       (.I0(\bdatw[9]_INST_0_i_25_n_0 ),
        .I1(\bdatw[9]_INST_0_i_5_0 ),
        .O(\bdatw[9]_INST_0_i_12_n_0 ),
        .S(\bdatw[8]_INST_0_i_8_0 ));
  MUXF7 \bdatw[9]_INST_0_i_19 
       (.I0(\bdatw[9]_INST_0_i_32_n_0 ),
        .I1(\iv[15]_i_61 ),
        .O(\iv_reg[1]_0 ),
        .S(\bdatw[8]_INST_0_i_8_0 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[9]_INST_0_i_25 
       (.I0(iv[9]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_21_0 [9]),
        .I3(\bdatw[15]_INST_0_i_21_1 ),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_21_2 [9]),
        .O(\bdatw[9]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[9]_INST_0_i_32 
       (.I0(iv[1]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_21_0 [1]),
        .I3(\bdatw[15]_INST_0_i_21_1 ),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_21_2 [1]),
        .O(\bdatw[9]_INST_0_i_32_n_0 ));
  MUXF8 \bdatw[9]_INST_0_i_5 
       (.I0(\bdatw[9]_INST_0_i_12_n_0 ),
        .I1(\bdatw[9]_INST_0_i_1 ),
        .O(\stat_reg[2]_5 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF8 \bdatw[9]_INST_0_i_8 
       (.I0(\iv_reg[1]_0 ),
        .I1(\bdatw[9]_INST_0_i_2 ),
        .O(\stat_reg[2]_0 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEE222E2)) 
    \iv[15]_i_62 
       (.I0(\stat_reg[2]_3 ),
        .I1(\iv[15]_i_52 ),
        .I2(\iv[15]_i_52_0 ),
        .I3(\bdatw[8]_INST_0_i_2 ),
        .I4(\iv[15]_i_52_1 ),
        .I5(\iv[15]_i_52_2 ),
        .O(\stat_reg[2]_12 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[0] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_0 [0]),
        .Q(iv[0]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[10] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_0 [10]),
        .Q(iv[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[11] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_0 [11]),
        .Q(iv[11]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[12] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_0 [12]),
        .Q(iv[12]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[13] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_0 [13]),
        .Q(iv[13]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[14] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_0 [14]),
        .Q(iv[14]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[15] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_0 [15]),
        .Q(iv[15]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[1] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_0 [1]),
        .Q(iv[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[2] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_0 [2]),
        .Q(iv[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[3] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_0 [3]),
        .Q(iv[3]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[4] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_0 [4]),
        .Q(iv[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[5] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_0 [5]),
        .Q(iv[5]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[6] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_0 [6]),
        .Q(iv[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[7] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_0 [7]),
        .Q(iv[7]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[8] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_0 [8]),
        .Q(iv[8]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \iv_reg[9] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\iv_reg[15]_0 [9]),
        .Q(iv[9]),
        .R(SR));
endmodule

module mcbs_rgf_pcnt
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
    \pc_reg[15]_1 ,
    fch_pc,
    \pc_reg[14]_1 ,
    \pc_reg[13]_1 ,
    \pc_reg[12]_1 ,
    \pc_reg[11]_1 ,
    \pc_reg[10]_1 ,
    \pc_reg[9]_1 ,
    \pc_reg[8]_1 ,
    \pc_reg[7]_1 ,
    \pc_reg[6]_1 ,
    \pc_reg[5]_1 ,
    \pc_reg[4]_1 ,
    \pc_reg[3]_1 ,
    \pc_reg[2]_1 ,
    \pc_reg[1]_1 ,
    \pc_reg[0]_1 ,
    \bdatw[8]_INST_0_i_8 ,
    \bdatw[8]_INST_0_i_8_0 ,
    \bdatw[9]_INST_0_i_8 ,
    \bdatw[10]_INST_0_i_8 ,
    \bdatw[11]_INST_0_i_8 ,
    \bdatw[12]_INST_0_i_8 ,
    \bdatw[13]_INST_0_i_7 ,
    \bdatw[14]_INST_0_i_7 ,
    \bdatw[15]_INST_0_i_10 ,
    \bdatw[8]_INST_0_i_5 ,
    \bdatw[9]_INST_0_i_5 ,
    \bdatw[10]_INST_0_i_5 ,
    \bdatw[11]_INST_0_i_5 ,
    \bdatw[12]_INST_0_i_5 ,
    \bdatw[13]_INST_0_i_5 ,
    \bdatw[14]_INST_0_i_5 ,
    \bdatw[15]_INST_0_i_7 ,
    \pc[15]_i_3 ,
    ctl_fetch_ext,
    ctl_selb,
    \bdatw[15]_INST_0_i_22_0 ,
    \bdatw[9]_INST_0_i_13_0 ,
    \bdatw[15]_INST_0_i_22_1 ,
    S,
    SR,
    D,
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
  output \pc_reg[15]_1 ;
  output [15:0]fch_pc;
  output \pc_reg[14]_1 ;
  output \pc_reg[13]_1 ;
  output \pc_reg[12]_1 ;
  output \pc_reg[11]_1 ;
  output \pc_reg[10]_1 ;
  output \pc_reg[9]_1 ;
  output \pc_reg[8]_1 ;
  output \pc_reg[7]_1 ;
  output \pc_reg[6]_1 ;
  output \pc_reg[5]_1 ;
  output \pc_reg[4]_1 ;
  output \pc_reg[3]_1 ;
  output \pc_reg[2]_1 ;
  output \pc_reg[1]_1 ;
  output \pc_reg[0]_1 ;
  input \bdatw[8]_INST_0_i_8 ;
  input \bdatw[8]_INST_0_i_8_0 ;
  input \bdatw[9]_INST_0_i_8 ;
  input \bdatw[10]_INST_0_i_8 ;
  input \bdatw[11]_INST_0_i_8 ;
  input \bdatw[12]_INST_0_i_8 ;
  input \bdatw[13]_INST_0_i_7 ;
  input \bdatw[14]_INST_0_i_7 ;
  input \bdatw[15]_INST_0_i_10 ;
  input \bdatw[8]_INST_0_i_5 ;
  input \bdatw[9]_INST_0_i_5 ;
  input \bdatw[10]_INST_0_i_5 ;
  input \bdatw[11]_INST_0_i_5 ;
  input \bdatw[12]_INST_0_i_5 ;
  input \bdatw[13]_INST_0_i_5 ;
  input \bdatw[14]_INST_0_i_5 ;
  input \bdatw[15]_INST_0_i_7 ;
  input \pc[15]_i_3 ;
  input ctl_fetch_ext;
  input [1:0]ctl_selb;
  input [15:0]\bdatw[15]_INST_0_i_22_0 ;
  input [0:0]\bdatw[9]_INST_0_i_13_0 ;
  input [15:0]\bdatw[15]_INST_0_i_22_1 ;
  input [0:0]S;
  input [0:0]SR;
  input [15:0]D;
  input clk;
     output [15:0]pc;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]D;
  wire [0:0]S;
  wire [0:0]SR;
  wire \bdatw[10]_INST_0_i_30_n_0 ;
  wire \bdatw[10]_INST_0_i_36_n_0 ;
  wire \bdatw[10]_INST_0_i_5 ;
  wire \bdatw[10]_INST_0_i_8 ;
  wire \bdatw[11]_INST_0_i_27_n_0 ;
  wire \bdatw[11]_INST_0_i_33_n_0 ;
  wire \bdatw[11]_INST_0_i_5 ;
  wire \bdatw[11]_INST_0_i_8 ;
  wire \bdatw[12]_INST_0_i_27_n_0 ;
  wire \bdatw[12]_INST_0_i_34_n_0 ;
  wire \bdatw[12]_INST_0_i_5 ;
  wire \bdatw[12]_INST_0_i_8 ;
  wire \bdatw[13]_INST_0_i_24_n_0 ;
  wire \bdatw[13]_INST_0_i_30_n_0 ;
  wire \bdatw[13]_INST_0_i_5 ;
  wire \bdatw[13]_INST_0_i_7 ;
  wire \bdatw[14]_INST_0_i_24_n_0 ;
  wire \bdatw[14]_INST_0_i_30_n_0 ;
  wire \bdatw[14]_INST_0_i_5 ;
  wire \bdatw[14]_INST_0_i_7 ;
  wire \bdatw[15]_INST_0_i_10 ;
  wire [15:0]\bdatw[15]_INST_0_i_22_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_22_1 ;
  wire \bdatw[15]_INST_0_i_57_n_0 ;
  wire \bdatw[15]_INST_0_i_69_n_0 ;
  wire \bdatw[15]_INST_0_i_7 ;
  wire \bdatw[8]_INST_0_i_26_n_0 ;
  wire \bdatw[8]_INST_0_i_34_n_0 ;
  wire \bdatw[8]_INST_0_i_5 ;
  wire \bdatw[8]_INST_0_i_8 ;
  wire \bdatw[8]_INST_0_i_8_0 ;
  wire [0:0]\bdatw[9]_INST_0_i_13_0 ;
  wire \bdatw[9]_INST_0_i_27_n_0 ;
  wire \bdatw[9]_INST_0_i_34_n_0 ;
  wire \bdatw[9]_INST_0_i_5 ;
  wire \bdatw[9]_INST_0_i_8 ;
  wire clk;
  wire ctl_fetch_ext;
  wire [1:0]ctl_selb;
  wire [15:0]fch_pc;
  (* DONT_TOUCH *) wire [15:0]pc;
  wire \pc[15]_i_3 ;
  wire \pc_reg[0]_0 ;
  wire \pc_reg[0]_1 ;
  wire \pc_reg[10]_0 ;
  wire \pc_reg[10]_1 ;
  wire \pc_reg[11]_0 ;
  wire \pc_reg[11]_1 ;
  wire \pc_reg[11]_i_2_n_0 ;
  wire \pc_reg[11]_i_2_n_1 ;
  wire \pc_reg[11]_i_2_n_2 ;
  wire \pc_reg[11]_i_2_n_3 ;
  wire \pc_reg[12]_0 ;
  wire \pc_reg[12]_1 ;
  wire \pc_reg[13]_0 ;
  wire \pc_reg[13]_1 ;
  wire \pc_reg[14]_0 ;
  wire \pc_reg[14]_1 ;
  wire \pc_reg[15]_0 ;
  wire \pc_reg[15]_1 ;
  wire \pc_reg[15]_i_2_n_1 ;
  wire \pc_reg[15]_i_2_n_2 ;
  wire \pc_reg[15]_i_2_n_3 ;
  wire \pc_reg[1]_0 ;
  wire \pc_reg[1]_1 ;
  wire \pc_reg[2]_0 ;
  wire \pc_reg[2]_1 ;
  wire \pc_reg[3]_0 ;
  wire \pc_reg[3]_1 ;
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
  wire \pc_reg[8]_1 ;
  wire \pc_reg[9]_0 ;
  wire \pc_reg[9]_1 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  MUXF7 \bdatw[10]_INST_0_i_15 
       (.I0(\bdatw[10]_INST_0_i_30_n_0 ),
        .I1(\bdatw[10]_INST_0_i_5 ),
        .O(\pc_reg[10]_0 ),
        .S(\bdatw[8]_INST_0_i_8 ));
  MUXF7 \bdatw[10]_INST_0_i_22 
       (.I0(\bdatw[10]_INST_0_i_36_n_0 ),
        .I1(\bdatw[10]_INST_0_i_8 ),
        .O(\pc_reg[2]_0 ),
        .S(\bdatw[8]_INST_0_i_8 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[10]_INST_0_i_30 
       (.I0(pc[10]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_22_0 [10]),
        .I3(\bdatw[9]_INST_0_i_13_0 ),
        .I4(\bdatw[15]_INST_0_i_22_1 [10]),
        .I5(ctl_selb[1]),
        .O(\bdatw[10]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[10]_INST_0_i_36 
       (.I0(pc[2]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_22_0 [2]),
        .I3(\bdatw[9]_INST_0_i_13_0 ),
        .I4(\bdatw[15]_INST_0_i_22_1 [2]),
        .I5(ctl_selb[1]),
        .O(\bdatw[10]_INST_0_i_36_n_0 ));
  MUXF7 \bdatw[11]_INST_0_i_13 
       (.I0(\bdatw[11]_INST_0_i_27_n_0 ),
        .I1(\bdatw[11]_INST_0_i_5 ),
        .O(\pc_reg[11]_0 ),
        .S(\bdatw[8]_INST_0_i_8 ));
  MUXF7 \bdatw[11]_INST_0_i_20 
       (.I0(\bdatw[11]_INST_0_i_33_n_0 ),
        .I1(\bdatw[11]_INST_0_i_8 ),
        .O(\pc_reg[3]_0 ),
        .S(\bdatw[8]_INST_0_i_8 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[11]_INST_0_i_27 
       (.I0(pc[11]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_22_0 [11]),
        .I3(\bdatw[9]_INST_0_i_13_0 ),
        .I4(\bdatw[15]_INST_0_i_22_1 [11]),
        .I5(ctl_selb[1]),
        .O(\bdatw[11]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[11]_INST_0_i_33 
       (.I0(pc[3]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_22_0 [3]),
        .I3(\bdatw[9]_INST_0_i_13_0 ),
        .I4(\bdatw[15]_INST_0_i_22_1 [3]),
        .I5(ctl_selb[1]),
        .O(\bdatw[11]_INST_0_i_33_n_0 ));
  MUXF7 \bdatw[12]_INST_0_i_13 
       (.I0(\bdatw[12]_INST_0_i_27_n_0 ),
        .I1(\bdatw[12]_INST_0_i_5 ),
        .O(\pc_reg[12]_0 ),
        .S(\bdatw[8]_INST_0_i_8 ));
  MUXF7 \bdatw[12]_INST_0_i_20 
       (.I0(\bdatw[12]_INST_0_i_34_n_0 ),
        .I1(\bdatw[12]_INST_0_i_8 ),
        .O(\pc_reg[4]_0 ),
        .S(\bdatw[8]_INST_0_i_8 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[12]_INST_0_i_27 
       (.I0(pc[12]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_22_0 [12]),
        .I3(\bdatw[9]_INST_0_i_13_0 ),
        .I4(\bdatw[15]_INST_0_i_22_1 [12]),
        .I5(ctl_selb[1]),
        .O(\bdatw[12]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[12]_INST_0_i_34 
       (.I0(pc[4]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_22_0 [4]),
        .I3(\bdatw[9]_INST_0_i_13_0 ),
        .I4(\bdatw[15]_INST_0_i_22_1 [4]),
        .I5(ctl_selb[1]),
        .O(\bdatw[12]_INST_0_i_34_n_0 ));
  MUXF7 \bdatw[13]_INST_0_i_12 
       (.I0(\bdatw[13]_INST_0_i_24_n_0 ),
        .I1(\bdatw[13]_INST_0_i_5 ),
        .O(\pc_reg[13]_0 ),
        .S(\bdatw[8]_INST_0_i_8 ));
  MUXF7 \bdatw[13]_INST_0_i_16 
       (.I0(\bdatw[13]_INST_0_i_30_n_0 ),
        .I1(\bdatw[13]_INST_0_i_7 ),
        .O(\pc_reg[5]_0 ),
        .S(\bdatw[8]_INST_0_i_8 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[13]_INST_0_i_24 
       (.I0(pc[13]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_22_0 [13]),
        .I3(\bdatw[9]_INST_0_i_13_0 ),
        .I4(\bdatw[15]_INST_0_i_22_1 [13]),
        .I5(ctl_selb[1]),
        .O(\bdatw[13]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[13]_INST_0_i_30 
       (.I0(pc[5]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_22_0 [5]),
        .I3(\bdatw[9]_INST_0_i_13_0 ),
        .I4(\bdatw[15]_INST_0_i_22_1 [5]),
        .I5(ctl_selb[1]),
        .O(\bdatw[13]_INST_0_i_30_n_0 ));
  MUXF7 \bdatw[14]_INST_0_i_12 
       (.I0(\bdatw[14]_INST_0_i_24_n_0 ),
        .I1(\bdatw[14]_INST_0_i_5 ),
        .O(\pc_reg[14]_0 ),
        .S(\bdatw[8]_INST_0_i_8 ));
  MUXF7 \bdatw[14]_INST_0_i_16 
       (.I0(\bdatw[14]_INST_0_i_30_n_0 ),
        .I1(\bdatw[14]_INST_0_i_7 ),
        .O(\pc_reg[6]_0 ),
        .S(\bdatw[8]_INST_0_i_8 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[14]_INST_0_i_24 
       (.I0(pc[14]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_22_0 [14]),
        .I3(\bdatw[9]_INST_0_i_13_0 ),
        .I4(\bdatw[15]_INST_0_i_22_1 [14]),
        .I5(ctl_selb[1]),
        .O(\bdatw[14]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[14]_INST_0_i_30 
       (.I0(pc[6]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_22_0 [6]),
        .I3(\bdatw[9]_INST_0_i_13_0 ),
        .I4(\bdatw[15]_INST_0_i_22_1 [6]),
        .I5(ctl_selb[1]),
        .O(\bdatw[14]_INST_0_i_30_n_0 ));
  MUXF7 \bdatw[15]_INST_0_i_22 
       (.I0(\bdatw[15]_INST_0_i_57_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7 ),
        .O(\pc_reg[15]_0 ),
        .S(\bdatw[8]_INST_0_i_8 ));
  MUXF7 \bdatw[15]_INST_0_i_28 
       (.I0(\bdatw[15]_INST_0_i_69_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10 ),
        .O(\pc_reg[7]_0 ),
        .S(\bdatw[8]_INST_0_i_8 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[15]_INST_0_i_57 
       (.I0(pc[15]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_22_0 [15]),
        .I3(\bdatw[9]_INST_0_i_13_0 ),
        .I4(\bdatw[15]_INST_0_i_22_1 [15]),
        .I5(ctl_selb[1]),
        .O(\bdatw[15]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[15]_INST_0_i_69 
       (.I0(pc[7]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_22_0 [7]),
        .I3(\bdatw[9]_INST_0_i_13_0 ),
        .I4(\bdatw[15]_INST_0_i_22_1 [7]),
        .I5(ctl_selb[1]),
        .O(\bdatw[15]_INST_0_i_69_n_0 ));
  MUXF7 \bdatw[8]_INST_0_i_14 
       (.I0(\bdatw[8]_INST_0_i_26_n_0 ),
        .I1(\bdatw[8]_INST_0_i_5 ),
        .O(\pc_reg[8]_0 ),
        .S(\bdatw[8]_INST_0_i_8 ));
  MUXF7 \bdatw[8]_INST_0_i_19 
       (.I0(\bdatw[8]_INST_0_i_34_n_0 ),
        .I1(\bdatw[8]_INST_0_i_8_0 ),
        .O(\pc_reg[0]_0 ),
        .S(\bdatw[8]_INST_0_i_8 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[8]_INST_0_i_26 
       (.I0(pc[8]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_22_0 [8]),
        .I3(\bdatw[9]_INST_0_i_13_0 ),
        .I4(\bdatw[15]_INST_0_i_22_1 [8]),
        .I5(ctl_selb[1]),
        .O(\bdatw[8]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[8]_INST_0_i_34 
       (.I0(pc[0]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_22_0 [0]),
        .I3(\bdatw[9]_INST_0_i_13_0 ),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_22_1 [0]),
        .O(\bdatw[8]_INST_0_i_34_n_0 ));
  MUXF7 \bdatw[9]_INST_0_i_13 
       (.I0(\bdatw[9]_INST_0_i_27_n_0 ),
        .I1(\bdatw[9]_INST_0_i_5 ),
        .O(\pc_reg[9]_0 ),
        .S(\bdatw[8]_INST_0_i_8 ));
  MUXF7 \bdatw[9]_INST_0_i_20 
       (.I0(\bdatw[9]_INST_0_i_34_n_0 ),
        .I1(\bdatw[9]_INST_0_i_8 ),
        .O(\pc_reg[1]_0 ),
        .S(\bdatw[8]_INST_0_i_8 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[9]_INST_0_i_27 
       (.I0(pc[9]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_22_0 [9]),
        .I3(\bdatw[9]_INST_0_i_13_0 ),
        .I4(\bdatw[15]_INST_0_i_22_1 [9]),
        .I5(ctl_selb[1]),
        .O(\bdatw[9]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[9]_INST_0_i_34 
       (.I0(pc[1]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_22_0 [1]),
        .I3(\bdatw[9]_INST_0_i_13_0 ),
        .I4(\bdatw[15]_INST_0_i_22_1 [1]),
        .I5(ctl_selb[1]),
        .O(\bdatw[9]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \pc[0]_i_3 
       (.I0(\pc[15]_i_3 ),
        .I1(fch_pc[0]),
        .I2(ctl_fetch_ext),
        .I3(pc[0]),
        .O(\pc_reg[0]_1 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \pc[10]_i_3 
       (.I0(\pc[15]_i_3 ),
        .I1(fch_pc[10]),
        .I2(ctl_fetch_ext),
        .I3(pc[10]),
        .O(\pc_reg[10]_1 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \pc[11]_i_4 
       (.I0(\pc[15]_i_3 ),
        .I1(fch_pc[11]),
        .I2(ctl_fetch_ext),
        .I3(pc[11]),
        .O(\pc_reg[11]_1 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \pc[12]_i_3 
       (.I0(\pc[15]_i_3 ),
        .I1(fch_pc[12]),
        .I2(ctl_fetch_ext),
        .I3(pc[12]),
        .O(\pc_reg[12]_1 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \pc[13]_i_3 
       (.I0(\pc[15]_i_3 ),
        .I1(fch_pc[13]),
        .I2(ctl_fetch_ext),
        .I3(pc[13]),
        .O(\pc_reg[13]_1 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \pc[14]_i_3 
       (.I0(\pc[15]_i_3 ),
        .I1(fch_pc[14]),
        .I2(ctl_fetch_ext),
        .I3(pc[14]),
        .O(\pc_reg[14]_1 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \pc[15]_i_4 
       (.I0(\pc[15]_i_3 ),
        .I1(fch_pc[15]),
        .I2(ctl_fetch_ext),
        .I3(pc[15]),
        .O(\pc_reg[15]_1 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \pc[1]_i_3 
       (.I0(\pc[15]_i_3 ),
        .I1(fch_pc[1]),
        .I2(ctl_fetch_ext),
        .I3(pc[1]),
        .O(\pc_reg[1]_1 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \pc[2]_i_3 
       (.I0(\pc[15]_i_3 ),
        .I1(fch_pc[2]),
        .I2(ctl_fetch_ext),
        .I3(pc[2]),
        .O(\pc_reg[2]_1 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \pc[3]_i_5 
       (.I0(\pc[15]_i_3 ),
        .I1(fch_pc[3]),
        .I2(ctl_fetch_ext),
        .I3(pc[3]),
        .O(\pc_reg[3]_1 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \pc[4]_i_3 
       (.I0(\pc[15]_i_3 ),
        .I1(fch_pc[4]),
        .I2(ctl_fetch_ext),
        .I3(pc[4]),
        .O(\pc_reg[4]_1 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \pc[5]_i_3 
       (.I0(\pc[15]_i_3 ),
        .I1(fch_pc[5]),
        .I2(ctl_fetch_ext),
        .I3(pc[5]),
        .O(\pc_reg[5]_1 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \pc[6]_i_3 
       (.I0(\pc[15]_i_3 ),
        .I1(fch_pc[6]),
        .I2(ctl_fetch_ext),
        .I3(pc[6]),
        .O(\pc_reg[6]_1 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \pc[7]_i_4 
       (.I0(\pc[15]_i_3 ),
        .I1(fch_pc[7]),
        .I2(ctl_fetch_ext),
        .I3(pc[7]),
        .O(\pc_reg[7]_1 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \pc[8]_i_3 
       (.I0(\pc[15]_i_3 ),
        .I1(fch_pc[8]),
        .I2(ctl_fetch_ext),
        .I3(pc[8]),
        .O(\pc_reg[8]_1 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \pc[9]_i_3 
       (.I0(\pc[15]_i_3 ),
        .I1(fch_pc[9]),
        .I2(ctl_fetch_ext),
        .I3(pc[9]),
        .O(\pc_reg[9]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(pc[0]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[10]),
        .Q(pc[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[11]),
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
        .D(D[12]),
        .Q(pc[12]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[13]),
        .Q(pc[13]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[14]),
        .Q(pc[14]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[15]),
        .Q(pc[15]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_reg[15]_i_2 
       (.CI(\pc_reg[11]_i_2_n_0 ),
        .CO({\pc_reg[15]_i_2_n_1 ,\pc_reg[15]_i_2_n_2 ,\pc_reg[15]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(fch_pc[15:12]),
        .S(pc[15:12]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(pc[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(pc[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[3]),
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
        .D(D[4]),
        .Q(pc[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[5]),
        .Q(pc[5]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[6]),
        .Q(pc[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[7]),
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
        .D(D[8]),
        .Q(pc[8]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \pc_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D[9]),
        .Q(pc[9]),
        .R(SR));
endmodule

module mcbs_rgf_sptr
   (.out(sp[0]),
    \sr_reg[0] ,
    \sr_reg[0]_0 ,
    \sr_reg[0]_1 ,
    \sr_reg[0]_2 ,
    \sr_reg[0]_3 ,
    \sr_reg[0]_4 ,
    \sr_reg[0]_5 ,
    \grn_reg[11] ,
    \sr_reg[0]_6 ,
    \sr_reg[0]_7 ,
    \sr_reg[0]_8 ,
    \grn_reg[8] ,
    \sr_reg[0]_9 ,
    \sr_reg[0]_10 ,
    \grn_reg[6] ,
    \sr_reg[0]_11 ,
    \sr_reg[0]_12 ,
    \sr_reg[0]_13 ,
    \sr_reg[0]_14 ,
    \sr_reg[0]_15 ,
    \sr_reg[0]_16 ,
    \sr_reg[0]_17 ,
    \sr_reg[0]_18 ,
    \sr_reg[0]_19 ,
    \sr_reg[0]_20 ,
    \sr_reg[0]_21 ,
    \sr_reg[0]_22 ,
    \sr_reg[0]_23 ,
    \sr_reg[0]_24 ,
    \sr_reg[0]_25 ,
    \sr_reg[0]_26 ,
    \sr_reg[0]_27 ,
    \sp_reg[14]_0 ,
    \sp_reg[11]_0 ,
    \sp_reg[10]_0 ,
    \sp_reg[4]_0 ,
    \sp_reg[2]_0 ,
    \sp_reg[1]_0 ,
    \sp_reg[15]_0 ,
    \sp_reg[13]_0 ,
    \sp_reg[12]_0 ,
    \sp_reg[9]_0 ,
    \sp_reg[8]_0 ,
    \sp_reg[7]_0 ,
    \sp_reg[6]_0 ,
    \sp_reg[5]_0 ,
    \sp_reg[3]_0 ,
    \stat_reg[2] ,
    \sp_reg[5]_1 ,
    \sp_reg[6]_1 ,
    \sp_reg[7]_1 ,
    \stat_reg[2]_0 ,
    \stat_reg[2]_1 ,
    \stat_reg[2]_2 ,
    \stat_reg[2]_3 ,
    \stat_reg[2]_4 ,
    \stat_reg[2]_5 ,
    \stat_reg[2]_6 ,
    \stat_reg[2]_7 ,
    \sp_reg[0]_0 ,
    \sp_reg[4]_1 ,
    \sp_reg[3]_1 ,
    \sp_reg[2]_1 ,
    \sp_reg[1]_1 ,
    \badr[15]_INST_0_i_1 ,
    ctl_sela,
    \badr[15]_INST_0_i_1_0 ,
    \badr[14]_INST_0_i_1 ,
    \badr[15]_INST_0_i_5_0 ,
    \badr[13]_INST_0_i_1 ,
    \badr[12]_INST_0_i_1 ,
    \badr[15]_INST_0_i_5_1 ,
    \badr[9]_INST_0_i_1 ,
    \badr[5]_INST_0_i_1 ,
    \badr[4]_INST_0_i_1 ,
    \badr[3]_INST_0_i_1 ,
    \badr[2]_INST_0_i_1 ,
    \badr[1]_INST_0_i_1 ,
    \badr[10]_INST_0_i_1 ,
    \badr[7]_INST_0_i_1 ,
    ctl_sp_inc,
    ctl_sp_dec,
    \bdatw[8]_INST_0_i_2 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \bdatw[8]_INST_0_i_7_0 ,
    \bdatw[8]_INST_0_i_7_1 ,
    \bdatw[13]_INST_0_i_7 ,
    \bdatw[14]_INST_0_i_7 ,
    \bdatw[15]_INST_0_i_10 ,
    \bdatw[8]_INST_0_i_1 ,
    \bdatw[8]_INST_0_i_4_0 ,
    \bdatw[9]_INST_0_i_1 ,
    \bdatw[9]_INST_0_i_4_0 ,
    \bdatw[10]_INST_0_i_1 ,
    \bdatw[10]_INST_0_i_4_0 ,
    \bdatw[11]_INST_0_i_1 ,
    \bdatw[11]_INST_0_i_4_0 ,
    \bdatw[12]_INST_0_i_1 ,
    \bdatw[12]_INST_0_i_4_0 ,
    \bdatw[13]_INST_0_i_1 ,
    \bdatw[13]_INST_0_i_4_0 ,
    \bdatw[14]_INST_0_i_1 ,
    \bdatw[14]_INST_0_i_4_0 ,
    \bdatw[15]_INST_0_i_1 ,
    \bdatw[15]_INST_0_i_5_0 ,
    ctl_selb,
    \bdatw[14]_INST_0_i_9_0 ,
    \bdatw[13]_INST_0_i_9_0 ,
    \bdatw[12]_INST_0_i_10_0 ,
    \bdatw[11]_INST_0_i_10_0 ,
    \bdatw[8]_INST_0_i_11_0 ,
    \bdatw[14]_INST_0_i_15_0 ,
    \bdatw[15]_INST_0_i_14_0 ,
    \bdatw[10]_INST_0_i_12_0 ,
    \bdatw[9]_INST_0_i_10_0 ,
    \bdatw[15]_INST_0_i_27_0 ,
    \bdatw[13]_INST_0_i_15_0 ,
    SR,
    \sp_reg[15]_1 ,
    clk);
  output \sr_reg[0] ;
  output \sr_reg[0]_0 ;
  output \sr_reg[0]_1 ;
  output \sr_reg[0]_2 ;
  output \sr_reg[0]_3 ;
  output \sr_reg[0]_4 ;
  output \sr_reg[0]_5 ;
  output \grn_reg[11] ;
  output \sr_reg[0]_6 ;
  output \sr_reg[0]_7 ;
  output \sr_reg[0]_8 ;
  output \grn_reg[8] ;
  output \sr_reg[0]_9 ;
  output \sr_reg[0]_10 ;
  output \grn_reg[6] ;
  output \sr_reg[0]_11 ;
  output \sr_reg[0]_12 ;
  output \sr_reg[0]_13 ;
  output \sr_reg[0]_14 ;
  output \sr_reg[0]_15 ;
  output \sr_reg[0]_16 ;
  output \sr_reg[0]_17 ;
  output \sr_reg[0]_18 ;
  output \sr_reg[0]_19 ;
  output \sr_reg[0]_20 ;
  output \sr_reg[0]_21 ;
  output \sr_reg[0]_22 ;
  output \sr_reg[0]_23 ;
  output \sr_reg[0]_24 ;
  output \sr_reg[0]_25 ;
  output \sr_reg[0]_26 ;
  output \sr_reg[0]_27 ;
  output \sp_reg[14]_0 ;
  output \sp_reg[11]_0 ;
  output \sp_reg[10]_0 ;
  output \sp_reg[4]_0 ;
  output \sp_reg[2]_0 ;
  output \sp_reg[1]_0 ;
  output \sp_reg[15]_0 ;
  output \sp_reg[13]_0 ;
  output \sp_reg[12]_0 ;
  output \sp_reg[9]_0 ;
  output \sp_reg[8]_0 ;
  output \sp_reg[7]_0 ;
  output \sp_reg[6]_0 ;
  output \sp_reg[5]_0 ;
  output \sp_reg[3]_0 ;
  output \stat_reg[2] ;
  output \sp_reg[5]_1 ;
  output \sp_reg[6]_1 ;
  output \sp_reg[7]_1 ;
  output \stat_reg[2]_0 ;
  output \stat_reg[2]_1 ;
  output \stat_reg[2]_2 ;
  output \stat_reg[2]_3 ;
  output \stat_reg[2]_4 ;
  output \stat_reg[2]_5 ;
  output \stat_reg[2]_6 ;
  output \stat_reg[2]_7 ;
  output \sp_reg[0]_0 ;
  output \sp_reg[4]_1 ;
  output \sp_reg[3]_1 ;
  output \sp_reg[2]_1 ;
  output \sp_reg[1]_1 ;
  input \badr[15]_INST_0_i_1 ;
  input [2:0]ctl_sela;
  input [0:0]\badr[15]_INST_0_i_1_0 ;
  input \badr[14]_INST_0_i_1 ;
  input [15:0]\badr[15]_INST_0_i_5_0 ;
  input \badr[13]_INST_0_i_1 ;
  input \badr[12]_INST_0_i_1 ;
  input [15:0]\badr[15]_INST_0_i_5_1 ;
  input \badr[9]_INST_0_i_1 ;
  input \badr[5]_INST_0_i_1 ;
  input \badr[4]_INST_0_i_1 ;
  input \badr[3]_INST_0_i_1 ;
  input \badr[2]_INST_0_i_1 ;
  input \badr[1]_INST_0_i_1 ;
  input \badr[10]_INST_0_i_1 ;
  input \badr[7]_INST_0_i_1 ;
  input ctl_sp_inc;
  input ctl_sp_dec;
  input \bdatw[8]_INST_0_i_2 ;
  input \bdatw[8]_INST_0_i_2_0 ;
  input \bdatw[8]_INST_0_i_7_0 ;
  input \bdatw[8]_INST_0_i_7_1 ;
  input \bdatw[13]_INST_0_i_7 ;
  input \bdatw[14]_INST_0_i_7 ;
  input \bdatw[15]_INST_0_i_10 ;
  input \bdatw[8]_INST_0_i_1 ;
  input \bdatw[8]_INST_0_i_4_0 ;
  input \bdatw[9]_INST_0_i_1 ;
  input \bdatw[9]_INST_0_i_4_0 ;
  input \bdatw[10]_INST_0_i_1 ;
  input \bdatw[10]_INST_0_i_4_0 ;
  input \bdatw[11]_INST_0_i_1 ;
  input \bdatw[11]_INST_0_i_4_0 ;
  input \bdatw[12]_INST_0_i_1 ;
  input \bdatw[12]_INST_0_i_4_0 ;
  input \bdatw[13]_INST_0_i_1 ;
  input \bdatw[13]_INST_0_i_4_0 ;
  input \bdatw[14]_INST_0_i_1 ;
  input \bdatw[14]_INST_0_i_4_0 ;
  input \bdatw[15]_INST_0_i_1 ;
  input \bdatw[15]_INST_0_i_5_0 ;
  input [1:0]ctl_selb;
  input \bdatw[14]_INST_0_i_9_0 ;
  input \bdatw[13]_INST_0_i_9_0 ;
  input \bdatw[12]_INST_0_i_10_0 ;
  input \bdatw[11]_INST_0_i_10_0 ;
  input \bdatw[8]_INST_0_i_11_0 ;
  input \bdatw[14]_INST_0_i_15_0 ;
  input \bdatw[15]_INST_0_i_14_0 ;
  input \bdatw[10]_INST_0_i_12_0 ;
  input \bdatw[9]_INST_0_i_10_0 ;
  input \bdatw[15]_INST_0_i_27_0 ;
  input \bdatw[13]_INST_0_i_15_0 ;
  input [0:0]SR;
  input [15:0]\sp_reg[15]_1 ;
  input clk;
     output [15:0]sp;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]SR;
  wire \badr[10]_INST_0_i_1 ;
  wire \badr[10]_INST_0_i_11_n_0 ;
  wire \badr[10]_INST_0_i_12_n_0 ;
  wire \badr[12]_INST_0_i_1 ;
  wire \badr[12]_INST_0_i_11_n_0 ;
  wire \badr[12]_INST_0_i_12_n_0 ;
  wire \badr[13]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_11_n_0 ;
  wire \badr[13]_INST_0_i_12_n_0 ;
  wire \badr[14]_INST_0_i_1 ;
  wire \badr[14]_INST_0_i_11_n_0 ;
  wire \badr[14]_INST_0_i_12_n_0 ;
  wire \badr[15]_INST_0_i_1 ;
  wire [0:0]\badr[15]_INST_0_i_1_0 ;
  wire \badr[15]_INST_0_i_20_n_0 ;
  wire \badr[15]_INST_0_i_21_n_0 ;
  wire [15:0]\badr[15]_INST_0_i_5_0 ;
  wire [15:0]\badr[15]_INST_0_i_5_1 ;
  wire \badr[1]_INST_0_i_1 ;
  wire \badr[1]_INST_0_i_11_n_0 ;
  wire \badr[1]_INST_0_i_12_n_0 ;
  wire \badr[2]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_11_n_0 ;
  wire \badr[2]_INST_0_i_12_n_0 ;
  wire \badr[3]_INST_0_i_1 ;
  wire \badr[3]_INST_0_i_11_n_0 ;
  wire \badr[3]_INST_0_i_12_n_0 ;
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_11_n_0 ;
  wire \badr[4]_INST_0_i_12_n_0 ;
  wire \badr[5]_INST_0_i_1 ;
  wire \badr[5]_INST_0_i_11_n_0 ;
  wire \badr[5]_INST_0_i_12_n_0 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_11_n_0 ;
  wire \badr[7]_INST_0_i_12_n_0 ;
  wire \badr[9]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_10_n_0 ;
  wire \badr[9]_INST_0_i_11_n_0 ;
  wire \bdatw[10]_INST_0_i_1 ;
  wire \bdatw[10]_INST_0_i_12_0 ;
  wire \bdatw[10]_INST_0_i_12_n_0 ;
  wire \bdatw[10]_INST_0_i_24_n_0 ;
  wire \bdatw[10]_INST_0_i_4_0 ;
  wire \bdatw[11]_INST_0_i_1 ;
  wire \bdatw[11]_INST_0_i_10_0 ;
  wire \bdatw[11]_INST_0_i_10_n_0 ;
  wire \bdatw[11]_INST_0_i_21_n_0 ;
  wire \bdatw[11]_INST_0_i_4_0 ;
  wire \bdatw[12]_INST_0_i_1 ;
  wire \bdatw[12]_INST_0_i_10_0 ;
  wire \bdatw[12]_INST_0_i_10_n_0 ;
  wire \bdatw[12]_INST_0_i_21_n_0 ;
  wire \bdatw[12]_INST_0_i_4_0 ;
  wire \bdatw[13]_INST_0_i_1 ;
  wire \bdatw[13]_INST_0_i_15_0 ;
  wire \bdatw[13]_INST_0_i_18_n_0 ;
  wire \bdatw[13]_INST_0_i_28_n_0 ;
  wire \bdatw[13]_INST_0_i_4_0 ;
  wire \bdatw[13]_INST_0_i_7 ;
  wire \bdatw[13]_INST_0_i_9_0 ;
  wire \bdatw[13]_INST_0_i_9_n_0 ;
  wire \bdatw[14]_INST_0_i_1 ;
  wire \bdatw[14]_INST_0_i_15_0 ;
  wire \bdatw[14]_INST_0_i_18_n_0 ;
  wire \bdatw[14]_INST_0_i_28_n_0 ;
  wire \bdatw[14]_INST_0_i_4_0 ;
  wire \bdatw[14]_INST_0_i_7 ;
  wire \bdatw[14]_INST_0_i_9_0 ;
  wire \bdatw[14]_INST_0_i_9_n_0 ;
  wire \bdatw[15]_INST_0_i_1 ;
  wire \bdatw[15]_INST_0_i_10 ;
  wire \bdatw[15]_INST_0_i_14_0 ;
  wire \bdatw[15]_INST_0_i_14_n_0 ;
  wire \bdatw[15]_INST_0_i_27_0 ;
  wire \bdatw[15]_INST_0_i_38_n_0 ;
  wire \bdatw[15]_INST_0_i_5_0 ;
  wire \bdatw[15]_INST_0_i_67_n_0 ;
  wire \bdatw[8]_INST_0_i_1 ;
  wire \bdatw[8]_INST_0_i_11_0 ;
  wire \bdatw[8]_INST_0_i_11_n_0 ;
  wire \bdatw[8]_INST_0_i_16_n_0 ;
  wire \bdatw[8]_INST_0_i_2 ;
  wire \bdatw[8]_INST_0_i_20_n_0 ;
  wire \bdatw[8]_INST_0_i_28_n_0 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_4_0 ;
  wire \bdatw[8]_INST_0_i_7_0 ;
  wire \bdatw[8]_INST_0_i_7_1 ;
  wire \bdatw[9]_INST_0_i_1 ;
  wire \bdatw[9]_INST_0_i_10_0 ;
  wire \bdatw[9]_INST_0_i_10_n_0 ;
  wire \bdatw[9]_INST_0_i_21_n_0 ;
  wire \bdatw[9]_INST_0_i_4_0 ;
  wire clk;
  wire [2:0]ctl_sela;
  wire [1:0]ctl_selb;
  wire ctl_sp_dec;
  wire ctl_sp_inc;
  wire \grn_reg[11] ;
  wire \grn_reg[6] ;
  wire \grn_reg[8] ;
  (* DONT_TOUCH *) wire [15:0]sp;
  wire \sp[11]_i_6_n_0 ;
  wire \sp[11]_i_7_n_0 ;
  wire \sp[11]_i_8_n_0 ;
  wire \sp[11]_i_9_n_0 ;
  wire \sp[15]_i_11_n_0 ;
  wire \sp[15]_i_12_n_0 ;
  wire \sp[15]_i_13_n_0 ;
  wire \sp[15]_i_14_n_0 ;
  wire \sp[3]_i_6_n_0 ;
  wire \sp[3]_i_7_n_0 ;
  wire \sp[3]_i_8_n_0 ;
  wire \sp[3]_i_9_n_0 ;
  wire \sp[7]_i_6_n_0 ;
  wire \sp[7]_i_7_n_0 ;
  wire \sp[7]_i_8_n_0 ;
  wire \sp[7]_i_9_n_0 ;
  wire [15:1]sp_dec_0;
  wire \sp_reg[0]_0 ;
  wire \sp_reg[10]_0 ;
  wire \sp_reg[11]_0 ;
  wire \sp_reg[11]_i_4_n_0 ;
  wire \sp_reg[11]_i_4_n_1 ;
  wire \sp_reg[11]_i_4_n_2 ;
  wire \sp_reg[11]_i_4_n_3 ;
  wire \sp_reg[11]_i_4_n_4 ;
  wire \sp_reg[11]_i_4_n_5 ;
  wire \sp_reg[11]_i_4_n_6 ;
  wire \sp_reg[11]_i_4_n_7 ;
  wire \sp_reg[11]_i_5_n_0 ;
  wire \sp_reg[11]_i_5_n_1 ;
  wire \sp_reg[11]_i_5_n_2 ;
  wire \sp_reg[11]_i_5_n_3 ;
  wire \sp_reg[12]_0 ;
  wire \sp_reg[13]_0 ;
  wire \sp_reg[14]_0 ;
  wire \sp_reg[15]_0 ;
  wire [15:0]\sp_reg[15]_1 ;
  wire \sp_reg[15]_i_4_n_1 ;
  wire \sp_reg[15]_i_4_n_2 ;
  wire \sp_reg[15]_i_4_n_3 ;
  wire \sp_reg[15]_i_4_n_4 ;
  wire \sp_reg[15]_i_4_n_5 ;
  wire \sp_reg[15]_i_4_n_6 ;
  wire \sp_reg[15]_i_4_n_7 ;
  wire \sp_reg[15]_i_6_n_1 ;
  wire \sp_reg[15]_i_6_n_2 ;
  wire \sp_reg[15]_i_6_n_3 ;
  wire \sp_reg[1]_0 ;
  wire \sp_reg[1]_1 ;
  wire \sp_reg[2]_0 ;
  wire \sp_reg[2]_1 ;
  wire \sp_reg[3]_0 ;
  wire \sp_reg[3]_1 ;
  wire \sp_reg[3]_i_4_n_0 ;
  wire \sp_reg[3]_i_4_n_1 ;
  wire \sp_reg[3]_i_4_n_2 ;
  wire \sp_reg[3]_i_4_n_3 ;
  wire \sp_reg[3]_i_4_n_4 ;
  wire \sp_reg[3]_i_4_n_5 ;
  wire \sp_reg[3]_i_4_n_6 ;
  wire \sp_reg[3]_i_5_n_0 ;
  wire \sp_reg[3]_i_5_n_1 ;
  wire \sp_reg[3]_i_5_n_2 ;
  wire \sp_reg[3]_i_5_n_3 ;
  wire \sp_reg[3]_i_5_n_7 ;
  wire \sp_reg[4]_0 ;
  wire \sp_reg[4]_1 ;
  wire \sp_reg[5]_0 ;
  wire \sp_reg[5]_1 ;
  wire \sp_reg[6]_0 ;
  wire \sp_reg[6]_1 ;
  wire \sp_reg[7]_0 ;
  wire \sp_reg[7]_1 ;
  wire \sp_reg[7]_i_4_n_0 ;
  wire \sp_reg[7]_i_4_n_1 ;
  wire \sp_reg[7]_i_4_n_2 ;
  wire \sp_reg[7]_i_4_n_3 ;
  wire \sp_reg[7]_i_4_n_4 ;
  wire \sp_reg[7]_i_4_n_5 ;
  wire \sp_reg[7]_i_4_n_6 ;
  wire \sp_reg[7]_i_4_n_7 ;
  wire \sp_reg[7]_i_5_n_0 ;
  wire \sp_reg[7]_i_5_n_1 ;
  wire \sp_reg[7]_i_5_n_2 ;
  wire \sp_reg[7]_i_5_n_3 ;
  wire \sp_reg[8]_0 ;
  wire \sp_reg[9]_0 ;
  wire \sr_reg[0] ;
  wire \sr_reg[0]_0 ;
  wire \sr_reg[0]_1 ;
  wire \sr_reg[0]_10 ;
  wire \sr_reg[0]_11 ;
  wire \sr_reg[0]_12 ;
  wire \sr_reg[0]_13 ;
  wire \sr_reg[0]_14 ;
  wire \sr_reg[0]_15 ;
  wire \sr_reg[0]_16 ;
  wire \sr_reg[0]_17 ;
  wire \sr_reg[0]_18 ;
  wire \sr_reg[0]_19 ;
  wire \sr_reg[0]_2 ;
  wire \sr_reg[0]_20 ;
  wire \sr_reg[0]_21 ;
  wire \sr_reg[0]_22 ;
  wire \sr_reg[0]_23 ;
  wire \sr_reg[0]_24 ;
  wire \sr_reg[0]_25 ;
  wire \sr_reg[0]_26 ;
  wire \sr_reg[0]_27 ;
  wire \sr_reg[0]_3 ;
  wire \sr_reg[0]_4 ;
  wire \sr_reg[0]_5 ;
  wire \sr_reg[0]_6 ;
  wire \sr_reg[0]_7 ;
  wire \sr_reg[0]_8 ;
  wire \sr_reg[0]_9 ;
  wire \stat_reg[2] ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_2 ;
  wire \stat_reg[2]_3 ;
  wire \stat_reg[2]_4 ;
  wire \stat_reg[2]_5 ;
  wire \stat_reg[2]_6 ;
  wire \stat_reg[2]_7 ;
  wire [3:0]\NLW_sp_reg[3]_i_4_O_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \badr[10]_INST_0_i_11 
       (.I0(sp[10]),
        .I1(sp_dec_0[10]),
        .I2(ctl_sela[1]),
        .I3(\badr[15]_INST_0_i_5_0 [10]),
        .I4(ctl_sela[2]),
        .O(\badr[10]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \badr[10]_INST_0_i_12 
       (.I0(sp[10]),
        .I1(sp_dec_0[10]),
        .I2(ctl_sela[1]),
        .I3(\badr[15]_INST_0_i_5_1 [10]),
        .I4(ctl_sela[2]),
        .O(\badr[10]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \badr[10]_INST_0_i_4 
       (.I0(\badr[10]_INST_0_i_1 ),
        .I1(ctl_sela[0]),
        .I2(\badr[10]_INST_0_i_11_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 ),
        .I4(\badr[10]_INST_0_i_12_n_0 ),
        .O(\sr_reg[0]_23 ));
  LUT6 #(
    .INIT(64'hCCFFCCAAF000F000)) 
    \badr[11]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_1_0 ),
        .I1(sp[11]),
        .I2(sp_dec_0[11]),
        .I3(ctl_sela[1]),
        .I4(\badr[15]_INST_0_i_5_1 [11]),
        .I5(ctl_sela[2]),
        .O(\sr_reg[0]_7 ));
  LUT6 #(
    .INIT(64'hCC55CC00F000F000)) 
    \badr[11]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_1_0 ),
        .I1(sp[11]),
        .I2(sp_dec_0[11]),
        .I3(ctl_sela[1]),
        .I4(\badr[15]_INST_0_i_5_1 [11]),
        .I5(ctl_sela[2]),
        .O(\sr_reg[0]_6 ));
  LUT5 #(
    .INIT(32'hFC0CA0A0)) 
    \badr[12]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_5_0 [12]),
        .I1(sp_dec_0[12]),
        .I2(ctl_sela[2]),
        .I3(sp[12]),
        .I4(ctl_sela[1]),
        .O(\badr[12]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \badr[12]_INST_0_i_12 
       (.I0(sp[12]),
        .I1(sp_dec_0[12]),
        .I2(ctl_sela[1]),
        .I3(\badr[15]_INST_0_i_5_1 [12]),
        .I4(ctl_sela[2]),
        .O(\badr[12]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \badr[12]_INST_0_i_4 
       (.I0(\badr[12]_INST_0_i_1 ),
        .I1(ctl_sela[0]),
        .I2(\badr[12]_INST_0_i_11_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 ),
        .I4(\badr[12]_INST_0_i_12_n_0 ),
        .O(\sr_reg[0]_4 ));
  LUT5 #(
    .INIT(32'hFC0CA0A0)) 
    \badr[13]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_5_0 [13]),
        .I1(sp_dec_0[13]),
        .I2(ctl_sela[2]),
        .I3(sp[13]),
        .I4(ctl_sela[1]),
        .O(\badr[13]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \badr[13]_INST_0_i_12 
       (.I0(sp[13]),
        .I1(sp_dec_0[13]),
        .I2(ctl_sela[1]),
        .I3(\badr[15]_INST_0_i_5_1 [13]),
        .I4(ctl_sela[2]),
        .O(\badr[13]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \badr[13]_INST_0_i_4 
       (.I0(\badr[13]_INST_0_i_1 ),
        .I1(ctl_sela[0]),
        .I2(\badr[13]_INST_0_i_11_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 ),
        .I4(\badr[13]_INST_0_i_12_n_0 ),
        .O(\sr_reg[0]_2 ));
  LUT5 #(
    .INIT(32'hFC0CA0A0)) 
    \badr[14]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_5_0 [14]),
        .I1(sp_dec_0[14]),
        .I2(ctl_sela[2]),
        .I3(sp[14]),
        .I4(ctl_sela[1]),
        .O(\badr[14]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \badr[14]_INST_0_i_12 
       (.I0(sp[14]),
        .I1(sp_dec_0[14]),
        .I2(ctl_sela[1]),
        .I3(\badr[15]_INST_0_i_5_1 [14]),
        .I4(ctl_sela[2]),
        .O(\badr[14]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \badr[14]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_1 ),
        .I1(ctl_sela[0]),
        .I2(\badr[14]_INST_0_i_11_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 ),
        .I4(\badr[14]_INST_0_i_12_n_0 ),
        .O(\sr_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \badr[15]_INST_0_i_20 
       (.I0(sp[15]),
        .I1(sp_dec_0[15]),
        .I2(ctl_sela[1]),
        .I3(\badr[15]_INST_0_i_5_0 [15]),
        .I4(ctl_sela[2]),
        .O(\badr[15]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \badr[15]_INST_0_i_21 
       (.I0(sp[15]),
        .I1(sp_dec_0[15]),
        .I2(ctl_sela[1]),
        .I3(\badr[15]_INST_0_i_5_1 [15]),
        .I4(ctl_sela[2]),
        .O(\badr[15]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \badr[15]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_1 ),
        .I1(ctl_sela[0]),
        .I2(\badr[15]_INST_0_i_20_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 ),
        .I4(\badr[15]_INST_0_i_21_n_0 ),
        .O(\sr_reg[0] ));
  LUT5 #(
    .INIT(32'hFC0CA0A0)) 
    \badr[1]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_5_0 [1]),
        .I1(sp_dec_0[1]),
        .I2(ctl_sela[2]),
        .I3(sp[1]),
        .I4(ctl_sela[1]),
        .O(\badr[1]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \badr[1]_INST_0_i_12 
       (.I0(sp[1]),
        .I1(sp_dec_0[1]),
        .I2(ctl_sela[1]),
        .I3(\badr[15]_INST_0_i_5_1 [1]),
        .I4(ctl_sela[2]),
        .O(\badr[1]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \badr[1]_INST_0_i_4 
       (.I0(\badr[1]_INST_0_i_1 ),
        .I1(ctl_sela[0]),
        .I2(\badr[1]_INST_0_i_11_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 ),
        .I4(\badr[1]_INST_0_i_12_n_0 ),
        .O(\sr_reg[0]_20 ));
  LUT5 #(
    .INIT(32'hFC0CA0A0)) 
    \badr[2]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_5_0 [2]),
        .I1(sp_dec_0[2]),
        .I2(ctl_sela[2]),
        .I3(sp[2]),
        .I4(ctl_sela[1]),
        .O(\badr[2]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \badr[2]_INST_0_i_12 
       (.I0(sp[2]),
        .I1(sp_dec_0[2]),
        .I2(ctl_sela[1]),
        .I3(\badr[15]_INST_0_i_5_1 [2]),
        .I4(ctl_sela[2]),
        .O(\badr[2]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \badr[2]_INST_0_i_4 
       (.I0(\badr[2]_INST_0_i_1 ),
        .I1(ctl_sela[0]),
        .I2(\badr[2]_INST_0_i_11_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 ),
        .I4(\badr[2]_INST_0_i_12_n_0 ),
        .O(\sr_reg[0]_18 ));
  LUT5 #(
    .INIT(32'hFC0CA0A0)) 
    \badr[3]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_5_0 [3]),
        .I1(sp_dec_0[3]),
        .I2(ctl_sela[2]),
        .I3(sp[3]),
        .I4(ctl_sela[1]),
        .O(\badr[3]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \badr[3]_INST_0_i_12 
       (.I0(sp[3]),
        .I1(sp_dec_0[3]),
        .I2(ctl_sela[1]),
        .I3(\badr[15]_INST_0_i_5_1 [3]),
        .I4(ctl_sela[2]),
        .O(\badr[3]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \badr[3]_INST_0_i_4 
       (.I0(\badr[3]_INST_0_i_1 ),
        .I1(ctl_sela[0]),
        .I2(\badr[3]_INST_0_i_11_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 ),
        .I4(\badr[3]_INST_0_i_12_n_0 ),
        .O(\sr_reg[0]_16 ));
  LUT5 #(
    .INIT(32'hFC0CA0A0)) 
    \badr[4]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_5_0 [4]),
        .I1(sp_dec_0[4]),
        .I2(ctl_sela[2]),
        .I3(sp[4]),
        .I4(ctl_sela[1]),
        .O(\badr[4]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \badr[4]_INST_0_i_12 
       (.I0(sp[4]),
        .I1(sp_dec_0[4]),
        .I2(ctl_sela[1]),
        .I3(\badr[15]_INST_0_i_5_1 [4]),
        .I4(ctl_sela[2]),
        .O(\badr[4]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \badr[4]_INST_0_i_4 
       (.I0(\badr[4]_INST_0_i_1 ),
        .I1(ctl_sela[0]),
        .I2(\badr[4]_INST_0_i_11_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 ),
        .I4(\badr[4]_INST_0_i_12_n_0 ),
        .O(\sr_reg[0]_14 ));
  LUT5 #(
    .INIT(32'hFC0CA0A0)) 
    \badr[5]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_5_0 [5]),
        .I1(sp_dec_0[5]),
        .I2(ctl_sela[2]),
        .I3(sp[5]),
        .I4(ctl_sela[1]),
        .O(\badr[5]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \badr[5]_INST_0_i_12 
       (.I0(sp[5]),
        .I1(sp_dec_0[5]),
        .I2(ctl_sela[1]),
        .I3(\badr[15]_INST_0_i_5_1 [5]),
        .I4(ctl_sela[2]),
        .O(\badr[5]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \badr[5]_INST_0_i_4 
       (.I0(\badr[5]_INST_0_i_1 ),
        .I1(ctl_sela[0]),
        .I2(\badr[5]_INST_0_i_11_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 ),
        .I4(\badr[5]_INST_0_i_12_n_0 ),
        .O(\sr_reg[0]_13 ));
  LUT6 #(
    .INIT(64'hCCFFCCAAF000F000)) 
    \badr[6]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_1_0 ),
        .I1(sp[6]),
        .I2(sp_dec_0[6]),
        .I3(ctl_sela[1]),
        .I4(\badr[15]_INST_0_i_5_1 [6]),
        .I5(ctl_sela[2]),
        .O(\sr_reg[0]_12 ));
  LUT6 #(
    .INIT(64'hCC55CC00F000F000)) 
    \badr[6]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_1_0 ),
        .I1(sp[6]),
        .I2(sp_dec_0[6]),
        .I3(ctl_sela[1]),
        .I4(\badr[15]_INST_0_i_5_1 [6]),
        .I5(ctl_sela[2]),
        .O(\sr_reg[0]_11 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \badr[7]_INST_0_i_11 
       (.I0(sp[7]),
        .I1(sp_dec_0[7]),
        .I2(ctl_sela[1]),
        .I3(\badr[15]_INST_0_i_5_0 [7]),
        .I4(ctl_sela[2]),
        .O(\badr[7]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \badr[7]_INST_0_i_12 
       (.I0(sp[7]),
        .I1(sp_dec_0[7]),
        .I2(ctl_sela[1]),
        .I3(\badr[15]_INST_0_i_5_1 [7]),
        .I4(ctl_sela[2]),
        .O(\badr[7]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \badr[7]_INST_0_i_4 
       (.I0(\badr[7]_INST_0_i_1 ),
        .I1(ctl_sela[0]),
        .I2(\badr[7]_INST_0_i_11_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 ),
        .I4(\badr[7]_INST_0_i_12_n_0 ),
        .O(\sr_reg[0]_26 ));
  LUT6 #(
    .INIT(64'hCCFFCCAAF000F000)) 
    \badr[8]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_1_0 ),
        .I1(sp[8]),
        .I2(sp_dec_0[8]),
        .I3(ctl_sela[1]),
        .I4(\badr[15]_INST_0_i_5_1 [8]),
        .I5(ctl_sela[2]),
        .O(\sr_reg[0]_10 ));
  LUT6 #(
    .INIT(64'hCC55CC00F000F000)) 
    \badr[8]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_1_0 ),
        .I1(sp[8]),
        .I2(sp_dec_0[8]),
        .I3(ctl_sela[1]),
        .I4(\badr[15]_INST_0_i_5_1 [8]),
        .I5(ctl_sela[2]),
        .O(\sr_reg[0]_9 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \badr[9]_INST_0_i_10 
       (.I0(sp[9]),
        .I1(sp_dec_0[9]),
        .I2(ctl_sela[1]),
        .I3(\badr[15]_INST_0_i_5_0 [9]),
        .I4(ctl_sela[2]),
        .O(\badr[9]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \badr[9]_INST_0_i_11 
       (.I0(sp[9]),
        .I1(sp_dec_0[9]),
        .I2(ctl_sela[1]),
        .I3(\badr[15]_INST_0_i_5_1 [9]),
        .I4(ctl_sela[2]),
        .O(\badr[9]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \badr[9]_INST_0_i_4 
       (.I0(\badr[9]_INST_0_i_1 ),
        .I1(ctl_sela[0]),
        .I2(\badr[9]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_1_0 ),
        .I4(\badr[9]_INST_0_i_11_n_0 ),
        .O(\sr_reg[0]_8 ));
  MUXF7 \bdatw[10]_INST_0_i_12 
       (.I0(\bdatw[10]_INST_0_i_24_n_0 ),
        .I1(\bdatw[10]_INST_0_i_4_0 ),
        .O(\bdatw[10]_INST_0_i_12_n_0 ),
        .S(\bdatw[8]_INST_0_i_7_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[10]_INST_0_i_24 
       (.I0(sp[10]),
        .I1(ctl_selb[1]),
        .I2(sp_dec_0[10]),
        .I3(ctl_selb[0]),
        .I4(\bdatw[10]_INST_0_i_12_0 ),
        .O(\bdatw[10]_INST_0_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[10]_INST_0_i_33 
       (.I0(sp[2]),
        .I1(ctl_selb[1]),
        .I2(sp_dec_0[2]),
        .O(\sp_reg[2]_1 ));
  MUXF8 \bdatw[10]_INST_0_i_4 
       (.I0(\bdatw[10]_INST_0_i_12_n_0 ),
        .I1(\bdatw[10]_INST_0_i_1 ),
        .O(\stat_reg[2]_2 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF7 \bdatw[11]_INST_0_i_10 
       (.I0(\bdatw[11]_INST_0_i_21_n_0 ),
        .I1(\bdatw[11]_INST_0_i_4_0 ),
        .O(\bdatw[11]_INST_0_i_10_n_0 ),
        .S(\bdatw[8]_INST_0_i_7_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[11]_INST_0_i_21 
       (.I0(sp[11]),
        .I1(ctl_selb[1]),
        .I2(sp_dec_0[11]),
        .I3(ctl_selb[0]),
        .I4(\bdatw[11]_INST_0_i_10_0 ),
        .O(\bdatw[11]_INST_0_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[11]_INST_0_i_30 
       (.I0(sp[3]),
        .I1(ctl_selb[1]),
        .I2(sp_dec_0[3]),
        .O(\sp_reg[3]_1 ));
  MUXF8 \bdatw[11]_INST_0_i_4 
       (.I0(\bdatw[11]_INST_0_i_10_n_0 ),
        .I1(\bdatw[11]_INST_0_i_1 ),
        .O(\stat_reg[2]_3 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF7 \bdatw[12]_INST_0_i_10 
       (.I0(\bdatw[12]_INST_0_i_21_n_0 ),
        .I1(\bdatw[12]_INST_0_i_4_0 ),
        .O(\bdatw[12]_INST_0_i_10_n_0 ),
        .S(\bdatw[8]_INST_0_i_7_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[12]_INST_0_i_21 
       (.I0(sp[12]),
        .I1(ctl_selb[1]),
        .I2(sp_dec_0[12]),
        .I3(ctl_selb[0]),
        .I4(\bdatw[12]_INST_0_i_10_0 ),
        .O(\bdatw[12]_INST_0_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[12]_INST_0_i_31 
       (.I0(sp[4]),
        .I1(ctl_selb[1]),
        .I2(sp_dec_0[4]),
        .O(\sp_reg[4]_1 ));
  MUXF8 \bdatw[12]_INST_0_i_4 
       (.I0(\bdatw[12]_INST_0_i_10_n_0 ),
        .I1(\bdatw[12]_INST_0_i_1 ),
        .O(\stat_reg[2]_4 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF7 \bdatw[13]_INST_0_i_15 
       (.I0(\bdatw[13]_INST_0_i_28_n_0 ),
        .I1(\bdatw[13]_INST_0_i_7 ),
        .O(\sp_reg[5]_1 ),
        .S(\bdatw[8]_INST_0_i_7_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[13]_INST_0_i_18 
       (.I0(sp[13]),
        .I1(ctl_selb[1]),
        .I2(sp_dec_0[13]),
        .I3(ctl_selb[0]),
        .I4(\bdatw[13]_INST_0_i_9_0 ),
        .O(\bdatw[13]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[13]_INST_0_i_28 
       (.I0(sp[5]),
        .I1(ctl_selb[1]),
        .I2(sp_dec_0[5]),
        .I3(ctl_selb[0]),
        .I4(\bdatw[13]_INST_0_i_15_0 ),
        .O(\bdatw[13]_INST_0_i_28_n_0 ));
  MUXF8 \bdatw[13]_INST_0_i_4 
       (.I0(\bdatw[13]_INST_0_i_9_n_0 ),
        .I1(\bdatw[13]_INST_0_i_1 ),
        .O(\stat_reg[2]_5 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF7 \bdatw[13]_INST_0_i_9 
       (.I0(\bdatw[13]_INST_0_i_18_n_0 ),
        .I1(\bdatw[13]_INST_0_i_4_0 ),
        .O(\bdatw[13]_INST_0_i_9_n_0 ),
        .S(\bdatw[8]_INST_0_i_7_0 ));
  MUXF7 \bdatw[14]_INST_0_i_15 
       (.I0(\bdatw[14]_INST_0_i_28_n_0 ),
        .I1(\bdatw[14]_INST_0_i_7 ),
        .O(\sp_reg[6]_1 ),
        .S(\bdatw[8]_INST_0_i_7_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[14]_INST_0_i_18 
       (.I0(sp[14]),
        .I1(ctl_selb[1]),
        .I2(sp_dec_0[14]),
        .I3(ctl_selb[0]),
        .I4(\bdatw[14]_INST_0_i_9_0 ),
        .O(\bdatw[14]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[14]_INST_0_i_28 
       (.I0(sp[6]),
        .I1(ctl_selb[1]),
        .I2(sp_dec_0[6]),
        .I3(ctl_selb[0]),
        .I4(\bdatw[14]_INST_0_i_15_0 ),
        .O(\bdatw[14]_INST_0_i_28_n_0 ));
  MUXF8 \bdatw[14]_INST_0_i_4 
       (.I0(\bdatw[14]_INST_0_i_9_n_0 ),
        .I1(\bdatw[14]_INST_0_i_1 ),
        .O(\stat_reg[2]_6 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF7 \bdatw[14]_INST_0_i_9 
       (.I0(\bdatw[14]_INST_0_i_18_n_0 ),
        .I1(\bdatw[14]_INST_0_i_4_0 ),
        .O(\bdatw[14]_INST_0_i_9_n_0 ),
        .S(\bdatw[8]_INST_0_i_7_0 ));
  MUXF7 \bdatw[15]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_38_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5_0 ),
        .O(\bdatw[15]_INST_0_i_14_n_0 ),
        .S(\bdatw[8]_INST_0_i_7_0 ));
  MUXF7 \bdatw[15]_INST_0_i_27 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10 ),
        .O(\sp_reg[7]_1 ),
        .S(\bdatw[8]_INST_0_i_7_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[15]_INST_0_i_38 
       (.I0(sp[15]),
        .I1(ctl_selb[1]),
        .I2(sp_dec_0[15]),
        .I3(ctl_selb[0]),
        .I4(\bdatw[15]_INST_0_i_14_0 ),
        .O(\bdatw[15]_INST_0_i_38_n_0 ));
  MUXF8 \bdatw[15]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1 ),
        .O(\stat_reg[2]_7 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[15]_INST_0_i_67 
       (.I0(sp[7]),
        .I1(ctl_selb[1]),
        .I2(sp_dec_0[7]),
        .I3(ctl_selb[0]),
        .I4(\bdatw[15]_INST_0_i_27_0 ),
        .O(\bdatw[15]_INST_0_i_67_n_0 ));
  MUXF7 \bdatw[8]_INST_0_i_11 
       (.I0(\bdatw[8]_INST_0_i_20_n_0 ),
        .I1(\bdatw[8]_INST_0_i_4_0 ),
        .O(\bdatw[8]_INST_0_i_11_n_0 ),
        .S(\bdatw[8]_INST_0_i_7_0 ));
  MUXF7 \bdatw[8]_INST_0_i_16 
       (.I0(\bdatw[8]_INST_0_i_28_n_0 ),
        .I1(\bdatw[8]_INST_0_i_7_1 ),
        .O(\bdatw[8]_INST_0_i_16_n_0 ),
        .S(\bdatw[8]_INST_0_i_7_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[8]_INST_0_i_20 
       (.I0(sp[8]),
        .I1(ctl_selb[1]),
        .I2(sp_dec_0[8]),
        .I3(ctl_selb[0]),
        .I4(\bdatw[8]_INST_0_i_11_0 ),
        .O(\bdatw[8]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88888888888)) 
    \bdatw[8]_INST_0_i_28 
       (.I0(sp[0]),
        .I1(ctl_selb[0]),
        .I2(\badr[15]_INST_0_i_5_0 [0]),
        .I3(\badr[15]_INST_0_i_1_0 ),
        .I4(\badr[15]_INST_0_i_5_1 [0]),
        .I5(ctl_selb[1]),
        .O(\bdatw[8]_INST_0_i_28_n_0 ));
  MUXF8 \bdatw[8]_INST_0_i_4 
       (.I0(\bdatw[8]_INST_0_i_11_n_0 ),
        .I1(\bdatw[8]_INST_0_i_1 ),
        .O(\stat_reg[2]_0 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF8 \bdatw[8]_INST_0_i_7 
       (.I0(\bdatw[8]_INST_0_i_16_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2_0 ),
        .O(\stat_reg[2] ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF7 \bdatw[9]_INST_0_i_10 
       (.I0(\bdatw[9]_INST_0_i_21_n_0 ),
        .I1(\bdatw[9]_INST_0_i_4_0 ),
        .O(\bdatw[9]_INST_0_i_10_n_0 ),
        .S(\bdatw[8]_INST_0_i_7_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bdatw[9]_INST_0_i_21 
       (.I0(sp[9]),
        .I1(ctl_selb[1]),
        .I2(sp_dec_0[9]),
        .I3(ctl_selb[0]),
        .I4(\bdatw[9]_INST_0_i_10_0 ),
        .O(\bdatw[9]_INST_0_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatw[9]_INST_0_i_31 
       (.I0(sp[1]),
        .I1(ctl_selb[1]),
        .I2(sp_dec_0[1]),
        .O(\sp_reg[1]_1 ));
  MUXF8 \bdatw[9]_INST_0_i_4 
       (.I0(\bdatw[9]_INST_0_i_10_n_0 ),
        .I1(\bdatw[9]_INST_0_i_1 ),
        .O(\stat_reg[2]_1 ),
        .S(\bdatw[8]_INST_0_i_2 ));
  MUXF7 \iv_reg[11]_i_31 
       (.I0(\badr[1]_INST_0_i_12_n_0 ),
        .I1(\badr[1]_INST_0_i_11_n_0 ),
        .O(\sr_reg[0]_21 ),
        .S(\badr[15]_INST_0_i_1_0 ));
  MUXF7 \iv_reg[11]_i_32 
       (.I0(\badr[14]_INST_0_i_12_n_0 ),
        .I1(\badr[14]_INST_0_i_11_n_0 ),
        .O(\sr_reg[0]_1 ),
        .S(\badr[15]_INST_0_i_1_0 ));
  MUXF7 \iv_reg[11]_i_33 
       (.I0(\badr[13]_INST_0_i_12_n_0 ),
        .I1(\badr[13]_INST_0_i_11_n_0 ),
        .O(\sr_reg[0]_3 ),
        .S(\badr[15]_INST_0_i_1_0 ));
  MUXF7 \iv_reg[12]_i_29 
       (.I0(\badr[10]_INST_0_i_12_n_0 ),
        .I1(\badr[10]_INST_0_i_11_n_0 ),
        .O(\sr_reg[0]_24 ),
        .S(\badr[15]_INST_0_i_1_0 ));
  MUXF7 \iv_reg[12]_i_30 
       (.I0(\badr[9]_INST_0_i_11_n_0 ),
        .I1(\badr[9]_INST_0_i_10_n_0 ),
        .O(\sr_reg[0]_25 ),
        .S(\badr[15]_INST_0_i_1_0 ));
  MUXF7 \iv_reg[12]_i_32 
       (.I0(\sr_reg[0]_9 ),
        .I1(\sr_reg[0]_10 ),
        .O(\grn_reg[8] ),
        .S(\badr[15]_INST_0_i_5_0 [8]));
  MUXF7 \iv_reg[12]_i_33 
       (.I0(\badr[7]_INST_0_i_12_n_0 ),
        .I1(\badr[7]_INST_0_i_11_n_0 ),
        .O(\sr_reg[0]_27 ),
        .S(\badr[15]_INST_0_i_1_0 ));
  MUXF7 \iv_reg[14]_i_40 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\badr[15]_INST_0_i_20_n_0 ),
        .O(\sr_reg[0]_22 ),
        .S(\badr[15]_INST_0_i_1_0 ));
  MUXF7 \iv_reg[15]_i_70 
       (.I0(\sr_reg[0]_11 ),
        .I1(\sr_reg[0]_12 ),
        .O(\grn_reg[6] ),
        .S(\badr[15]_INST_0_i_5_0 [6]));
  MUXF7 \iv_reg[7]_i_19 
       (.I0(\sr_reg[0]_6 ),
        .I1(\sr_reg[0]_7 ),
        .O(\grn_reg[11] ),
        .S(\badr[15]_INST_0_i_5_0 [11]));
  MUXF7 \iv_reg[8]_i_37 
       (.I0(\badr[4]_INST_0_i_12_n_0 ),
        .I1(\badr[4]_INST_0_i_11_n_0 ),
        .O(\sr_reg[0]_15 ),
        .S(\badr[15]_INST_0_i_1_0 ));
  MUXF7 \iv_reg[8]_i_38 
       (.I0(\badr[3]_INST_0_i_12_n_0 ),
        .I1(\badr[3]_INST_0_i_11_n_0 ),
        .O(\sr_reg[0]_17 ),
        .S(\badr[15]_INST_0_i_1_0 ));
  MUXF7 \iv_reg[8]_i_39 
       (.I0(\badr[12]_INST_0_i_12_n_0 ),
        .I1(\badr[12]_INST_0_i_11_n_0 ),
        .O(\sr_reg[0]_5 ),
        .S(\badr[15]_INST_0_i_1_0 ));
  MUXF7 \iv_reg[8]_i_40 
       (.I0(\badr[2]_INST_0_i_12_n_0 ),
        .I1(\badr[2]_INST_0_i_11_n_0 ),
        .O(\sr_reg[0]_19 ),
        .S(\badr[15]_INST_0_i_1_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[0]_i_2 
       (.I0(\sp_reg[3]_i_5_n_7 ),
        .I1(ctl_sp_inc),
        .I2(sp[0]),
        .O(\sp_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \sp[10]_i_2 
       (.I0(\sp_reg[11]_i_4_n_5 ),
        .I1(ctl_sp_inc),
        .I2(sp[10]),
        .I3(ctl_sp_dec),
        .I4(sp_dec_0[10]),
        .O(\sp_reg[10]_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \sp[11]_i_2 
       (.I0(\sp_reg[11]_i_4_n_4 ),
        .I1(ctl_sp_inc),
        .I2(sp[11]),
        .I3(ctl_sp_dec),
        .I4(sp_dec_0[11]),
        .O(\sp_reg[11]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[11]_i_6 
       (.I0(sp[11]),
        .O(\sp[11]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[11]_i_7 
       (.I0(sp[10]),
        .O(\sp[11]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[11]_i_8 
       (.I0(sp[9]),
        .O(\sp[11]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[11]_i_9 
       (.I0(sp[8]),
        .O(\sp[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \sp[12]_i_2 
       (.I0(\sp_reg[15]_i_4_n_7 ),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[12]),
        .I3(sp[12]),
        .I4(ctl_sp_dec),
        .O(\sp_reg[12]_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \sp[13]_i_2 
       (.I0(\sp_reg[15]_i_4_n_6 ),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[13]),
        .I3(sp[13]),
        .I4(ctl_sp_dec),
        .O(\sp_reg[13]_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \sp[14]_i_2 
       (.I0(\sp_reg[15]_i_4_n_5 ),
        .I1(ctl_sp_inc),
        .I2(sp[14]),
        .I3(ctl_sp_dec),
        .I4(sp_dec_0[14]),
        .O(\sp_reg[14]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[15]_i_11 
       (.I0(sp[15]),
        .O(\sp[15]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[15]_i_12 
       (.I0(sp[14]),
        .O(\sp[15]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[15]_i_13 
       (.I0(sp[13]),
        .O(\sp[15]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[15]_i_14 
       (.I0(sp[12]),
        .O(\sp[15]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \sp[15]_i_2 
       (.I0(\sp_reg[15]_i_4_n_4 ),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[15]),
        .I3(sp[15]),
        .I4(ctl_sp_dec),
        .O(\sp_reg[15]_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \sp[1]_i_2 
       (.I0(\sp_reg[3]_i_4_n_6 ),
        .I1(ctl_sp_inc),
        .I2(sp[1]),
        .I3(ctl_sp_dec),
        .I4(sp_dec_0[1]),
        .O(\sp_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \sp[2]_i_2 
       (.I0(\sp_reg[3]_i_4_n_5 ),
        .I1(ctl_sp_inc),
        .I2(sp[2]),
        .I3(ctl_sp_dec),
        .I4(sp_dec_0[2]),
        .O(\sp_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \sp[3]_i_2 
       (.I0(\sp_reg[3]_i_4_n_4 ),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[3]),
        .I3(sp[3]),
        .I4(ctl_sp_dec),
        .O(\sp_reg[3]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[3]_i_6 
       (.I0(sp[1]),
        .O(\sp[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[3]_i_7 
       (.I0(sp[3]),
        .O(\sp[3]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[3]_i_8 
       (.I0(sp[2]),
        .O(\sp[3]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[3]_i_9 
       (.I0(sp[1]),
        .O(\sp[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \sp[4]_i_2 
       (.I0(\sp_reg[7]_i_4_n_7 ),
        .I1(ctl_sp_inc),
        .I2(sp[4]),
        .I3(ctl_sp_dec),
        .I4(sp_dec_0[4]),
        .O(\sp_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \sp[5]_i_2 
       (.I0(\sp_reg[7]_i_4_n_6 ),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[5]),
        .I3(sp[5]),
        .I4(ctl_sp_dec),
        .O(\sp_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \sp[6]_i_2 
       (.I0(\sp_reg[7]_i_4_n_5 ),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[6]),
        .I3(sp[6]),
        .I4(ctl_sp_dec),
        .O(\sp_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \sp[7]_i_2 
       (.I0(\sp_reg[7]_i_4_n_4 ),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[7]),
        .I3(sp[7]),
        .I4(ctl_sp_dec),
        .O(\sp_reg[7]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[7]_i_6 
       (.I0(sp[7]),
        .O(\sp[7]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[7]_i_7 
       (.I0(sp[6]),
        .O(\sp[7]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[7]_i_8 
       (.I0(sp[5]),
        .O(\sp[7]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[7]_i_9 
       (.I0(sp[4]),
        .O(\sp[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \sp[8]_i_2 
       (.I0(\sp_reg[11]_i_4_n_7 ),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[8]),
        .I3(sp[8]),
        .I4(ctl_sp_dec),
        .O(\sp_reg[8]_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \sp[9]_i_2 
       (.I0(\sp_reg[11]_i_4_n_6 ),
        .I1(ctl_sp_inc),
        .I2(sp_dec_0[9]),
        .I3(sp[9]),
        .I4(ctl_sp_dec),
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
  CARRY4 \sp_reg[11]_i_4 
       (.CI(\sp_reg[7]_i_4_n_0 ),
        .CO({\sp_reg[11]_i_4_n_0 ,\sp_reg[11]_i_4_n_1 ,\sp_reg[11]_i_4_n_2 ,\sp_reg[11]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sp_reg[11]_i_4_n_4 ,\sp_reg[11]_i_4_n_5 ,\sp_reg[11]_i_4_n_6 ,\sp_reg[11]_i_4_n_7 }),
        .S(sp[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sp_reg[11]_i_5 
       (.CI(\sp_reg[7]_i_5_n_0 ),
        .CO({\sp_reg[11]_i_5_n_0 ,\sp_reg[11]_i_5_n_1 ,\sp_reg[11]_i_5_n_2 ,\sp_reg[11]_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI(sp[11:8]),
        .O(sp_dec_0[11:8]),
        .S({\sp[11]_i_6_n_0 ,\sp[11]_i_7_n_0 ,\sp[11]_i_8_n_0 ,\sp[11]_i_9_n_0 }));
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
  CARRY4 \sp_reg[15]_i_4 
       (.CI(\sp_reg[11]_i_4_n_0 ),
        .CO({\sp_reg[15]_i_4_n_1 ,\sp_reg[15]_i_4_n_2 ,\sp_reg[15]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sp_reg[15]_i_4_n_4 ,\sp_reg[15]_i_4_n_5 ,\sp_reg[15]_i_4_n_6 ,\sp_reg[15]_i_4_n_7 }),
        .S(sp[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sp_reg[15]_i_6 
       (.CI(\sp_reg[11]_i_5_n_0 ),
        .CO({\sp_reg[15]_i_6_n_1 ,\sp_reg[15]_i_6_n_2 ,\sp_reg[15]_i_6_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,sp[14:12]}),
        .O(sp_dec_0[15:12]),
        .S({\sp[15]_i_11_n_0 ,\sp[15]_i_12_n_0 ,\sp[15]_i_13_n_0 ,\sp[15]_i_14_n_0 }));
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
  CARRY4 \sp_reg[3]_i_4 
       (.CI(\<const0> ),
        .CO({\sp_reg[3]_i_4_n_0 ,\sp_reg[3]_i_4_n_1 ,\sp_reg[3]_i_4_n_2 ,\sp_reg[3]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,sp[1],\<const0> }),
        .O({\sp_reg[3]_i_4_n_4 ,\sp_reg[3]_i_4_n_5 ,\sp_reg[3]_i_4_n_6 ,\NLW_sp_reg[3]_i_4_O_UNCONNECTED [0]}),
        .S({sp[3:2],\sp[3]_i_6_n_0 ,sp[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sp_reg[3]_i_5 
       (.CI(\<const0> ),
        .CO({\sp_reg[3]_i_5_n_0 ,\sp_reg[3]_i_5_n_1 ,\sp_reg[3]_i_5_n_2 ,\sp_reg[3]_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI({sp[3:1],\<const0> }),
        .O({sp_dec_0[3:1],\sp_reg[3]_i_5_n_7 }),
        .S({\sp[3]_i_7_n_0 ,\sp[3]_i_8_n_0 ,\sp[3]_i_9_n_0 ,sp[0]}));
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
  CARRY4 \sp_reg[7]_i_4 
       (.CI(\sp_reg[3]_i_4_n_0 ),
        .CO({\sp_reg[7]_i_4_n_0 ,\sp_reg[7]_i_4_n_1 ,\sp_reg[7]_i_4_n_2 ,\sp_reg[7]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sp_reg[7]_i_4_n_4 ,\sp_reg[7]_i_4_n_5 ,\sp_reg[7]_i_4_n_6 ,\sp_reg[7]_i_4_n_7 }),
        .S(sp[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sp_reg[7]_i_5 
       (.CI(\sp_reg[3]_i_5_n_0 ),
        .CO({\sp_reg[7]_i_5_n_0 ,\sp_reg[7]_i_5_n_1 ,\sp_reg[7]_i_5_n_2 ,\sp_reg[7]_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI(sp[7:4]),
        .O(sp_dec_0[7:4]),
        .S({\sp[7]_i_6_n_0 ,\sp[7]_i_7_n_0 ,\sp[7]_i_8_n_0 ,\sp[7]_i_9_n_0 }));
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

module mcbs_rgf_sreg
   (.\sr_reg[15]_0 ({sr[15],sr[14],sr[13],sr[12],sr[10],sr[7],sr[6],sr[5],sr[4],sr[3],sr[2],sr[0]}),
    \sr_reg[6]_0 ,
    \stat_reg[0] ,
    \sr_reg[6]_1 ,
    \sr_reg[6]_2 ,
    \sr_reg[6]_3 ,
    irq_0,
    \sr_reg[7]_0 ,
    \sr_reg[7]_1 ,
    \sr_reg[4]_0 ,
    \sr_reg[7]_2 ,
    \sr_reg[7]_3 ,
    \sr_reg[6]_4 ,
    \sr_reg[8]_0 ,
    \sr_reg[8]_1 ,
    \grn_reg[9] ,
    \grn_reg[9]_0 ,
    \grn_reg[10] ,
    \grn_reg[10]_0 ,
    \grn_reg[11] ,
    \grn_reg[11]_0 ,
    \grn_reg[12] ,
    \grn_reg[12]_0 ,
    \grn_reg[14] ,
    \grn_reg[14]_0 ,
    \grn_reg[15] ,
    \grn_reg[15]_0 ,
    \grn_reg[13] ,
    \grn_reg[13]_0 ,
    \grn_reg[6] ,
    \grn_reg[6]_0 ,
    \grn_reg[5] ,
    \grn_reg[4] ,
    \grn_reg[4]_0 ,
    \grn_reg[3] ,
    \grn_reg[3]_0 ,
    \grn_reg[1] ,
    \grn_reg[1]_0 ,
    \grn_reg[7] ,
    \grn_reg[7]_0 ,
    \grn_reg[2] ,
    \grn_reg[2]_0 ,
    p_0_in,
    \sr_reg[1]_0 ,
    \sr_reg[4]_1 ,
    \sr_reg[4]_2 ,
    \sr_reg[8]_2 ,
    \sr_reg[9]_0 ,
    \sr_reg[10]_0 ,
    \sr_reg[11]_0 ,
    \sr_reg[12]_0 ,
    \sr_reg[13]_0 ,
    \sr_reg[14]_0 ,
    \sr_reg[15]_1 ,
    \sr_reg[0]_0 ,
    \sr_reg[0]_1 ,
    \sr_reg[0]_2 ,
    \sr_reg[0]_3 ,
    \sr_reg[3]_0 ,
    \sr_reg[2]_0 ,
    \sr_reg[6]_5 ,
    fch_irq_req,
    \sr_reg[2]_1 ,
    S,
    p_0_in_1,
    clk,
    \sr_reg[1]_1 ,
    SR,
    \sr_reg[10]_1 ,
    \sr_reg[7]_4 ,
    \sr_reg[6]_6 ,
    \sr_reg[5]_0 ,
    \sr_reg[4]_3 ,
    \sr_reg[3]_1 ,
    \sr_reg[2]_2 ,
    \stat_reg[1] ,
    \badr[15]_INST_0_i_52 ,
    Q,
    irq,
    irq_lev,
    ctl_sela,
    \badr[8]_INST_0_i_1 ,
    out,
    \bdatw[15]_INST_0_i_15_0 ,
    \badr[9]_INST_0_i_1 ,
    \badr[10]_INST_0_i_1 ,
    \badr[11]_INST_0_i_1 ,
    \badr[12]_INST_0_i_1 ,
    \badr[14]_INST_0_i_1 ,
    \badr[15]_INST_0_i_1 ,
    \badr[13]_INST_0_i_1 ,
    \badr[6]_INST_0_i_1 ,
    \badr[5]_INST_0_i_1 ,
    \badr[4]_INST_0_i_1 ,
    \badr[3]_INST_0_i_1 ,
    \badr[1]_INST_0_i_1 ,
    \badr[7]_INST_0_i_1 ,
    \badr[2]_INST_0_i_1 ,
    \iv[15]_i_52 ,
    \iv[15]_i_52_0 ,
    \iv[15]_i_52_1 ,
    \iv[15]_i_52_2 ,
    \iv[15]_i_52_3 ,
    \iv[15]_i_61_0 ,
    \iv[15]_i_61_1 ,
    \iv[15]_i_62 ,
    \bdatw[13]_INST_0_i_2 ,
    \bdatw[13]_INST_0_i_2_0 ,
    \bdatw[13]_INST_0_i_2_1 ,
    \bdatw[13]_INST_0_i_7_0 ,
    \bdatw[14]_INST_0_i_2 ,
    \bdatw[14]_INST_0_i_2_0 ,
    \bdatw[14]_INST_0_i_2_1 ,
    \bdatw[14]_INST_0_i_7_0 ,
    \bdatw[15]_INST_0_i_2 ,
    \bdatw[15]_INST_0_i_2_0 ,
    \bdatw[15]_INST_0_i_2_1 ,
    \bdatw[15]_INST_0_i_10_0 ,
    \bdatw[8]_INST_0_i_4 ,
    \bdatw[9]_INST_0_i_4 ,
    \bdatw[10]_INST_0_i_4 ,
    \bdatw[11]_INST_0_i_4 ,
    \bdatw[12]_INST_0_i_4 ,
    \bdatw[13]_INST_0_i_4 ,
    \bdatw[14]_INST_0_i_4 ,
    \bdatw[15]_INST_0_i_5 ,
    \bdatw[15]_INST_0_i_22 ,
    ctl_selb,
    \bdatw[15]_INST_0_i_22_0 ,
    \bdatw[14]_INST_0_i_11 ,
    \bdatw[14]_INST_0_i_11_0 ,
    \bdatw[9]_INST_0_i_10 ,
    \bdatw[9]_INST_0_i_10_0 ,
    abus_0,
    \iv[14]_i_28 ,
    \pc_reg[3]_i_2 );
  output \sr_reg[6]_0 ;
  output \stat_reg[0] ;
  output \sr_reg[6]_1 ;
  output \sr_reg[6]_2 ;
  output \sr_reg[6]_3 ;
  output irq_0;
  output \sr_reg[7]_0 ;
  output \sr_reg[7]_1 ;
  output \sr_reg[4]_0 ;
  output \sr_reg[7]_2 ;
  output \sr_reg[7]_3 ;
  output \sr_reg[6]_4 ;
  output \sr_reg[8]_0 ;
  output \sr_reg[8]_1 ;
  output \grn_reg[9] ;
  output \grn_reg[9]_0 ;
  output \grn_reg[10] ;
  output \grn_reg[10]_0 ;
  output \grn_reg[11] ;
  output \grn_reg[11]_0 ;
  output \grn_reg[12] ;
  output \grn_reg[12]_0 ;
  output \grn_reg[14] ;
  output \grn_reg[14]_0 ;
  output \grn_reg[15] ;
  output \grn_reg[15]_0 ;
  output \grn_reg[13] ;
  output \grn_reg[13]_0 ;
  output \grn_reg[6] ;
  output \grn_reg[6]_0 ;
  output \grn_reg[5] ;
  output \grn_reg[4] ;
  output \grn_reg[4]_0 ;
  output \grn_reg[3] ;
  output \grn_reg[3]_0 ;
  output \grn_reg[1] ;
  output \grn_reg[1]_0 ;
  output \grn_reg[7] ;
  output \grn_reg[7]_0 ;
  output \grn_reg[2] ;
  output \grn_reg[2]_0 ;
  output [3:0]p_0_in;
  output \sr_reg[1]_0 ;
  output \sr_reg[4]_1 ;
  output \sr_reg[4]_2 ;
  output \sr_reg[8]_2 ;
  output \sr_reg[9]_0 ;
  output \sr_reg[10]_0 ;
  output \sr_reg[11]_0 ;
  output \sr_reg[12]_0 ;
  output \sr_reg[13]_0 ;
  output \sr_reg[14]_0 ;
  output \sr_reg[15]_1 ;
  output \sr_reg[0]_0 ;
  output \sr_reg[0]_1 ;
  output \sr_reg[0]_2 ;
  output \sr_reg[0]_3 ;
  output \sr_reg[3]_0 ;
  output \sr_reg[2]_0 ;
  output \sr_reg[6]_5 ;
  output fch_irq_req;
  output \sr_reg[2]_1 ;
  output [0:0]S;
  input [4:0]p_0_in_1;
  input clk;
  input \sr_reg[1]_1 ;
  input [0:0]SR;
  input \sr_reg[10]_1 ;
  input \sr_reg[7]_4 ;
  input \sr_reg[6]_6 ;
  input \sr_reg[5]_0 ;
  input \sr_reg[4]_3 ;
  input \sr_reg[3]_1 ;
  input \sr_reg[2]_2 ;
  input \stat_reg[1] ;
  input [6:0]\badr[15]_INST_0_i_52 ;
  input [0:0]Q;
  input irq;
  input [1:0]irq_lev;
  input [2:0]ctl_sela;
  input \badr[8]_INST_0_i_1 ;
  input [14:0]out;
  input [14:0]\bdatw[15]_INST_0_i_15_0 ;
  input \badr[9]_INST_0_i_1 ;
  input \badr[10]_INST_0_i_1 ;
  input \badr[11]_INST_0_i_1 ;
  input \badr[12]_INST_0_i_1 ;
  input \badr[14]_INST_0_i_1 ;
  input \badr[15]_INST_0_i_1 ;
  input \badr[13]_INST_0_i_1 ;
  input \badr[6]_INST_0_i_1 ;
  input \badr[5]_INST_0_i_1 ;
  input \badr[4]_INST_0_i_1 ;
  input \badr[3]_INST_0_i_1 ;
  input \badr[1]_INST_0_i_1 ;
  input \badr[7]_INST_0_i_1 ;
  input \badr[2]_INST_0_i_1 ;
  input \iv[15]_i_52 ;
  input \iv[15]_i_52_0 ;
  input \iv[15]_i_52_1 ;
  input \iv[15]_i_52_2 ;
  input \iv[15]_i_52_3 ;
  input \iv[15]_i_61_0 ;
  input \iv[15]_i_61_1 ;
  input \iv[15]_i_62 ;
  input \bdatw[13]_INST_0_i_2 ;
  input \bdatw[13]_INST_0_i_2_0 ;
  input \bdatw[13]_INST_0_i_2_1 ;
  input \bdatw[13]_INST_0_i_7_0 ;
  input \bdatw[14]_INST_0_i_2 ;
  input \bdatw[14]_INST_0_i_2_0 ;
  input \bdatw[14]_INST_0_i_2_1 ;
  input \bdatw[14]_INST_0_i_7_0 ;
  input \bdatw[15]_INST_0_i_2 ;
  input \bdatw[15]_INST_0_i_2_0 ;
  input \bdatw[15]_INST_0_i_2_1 ;
  input \bdatw[15]_INST_0_i_10_0 ;
  input \bdatw[8]_INST_0_i_4 ;
  input \bdatw[9]_INST_0_i_4 ;
  input \bdatw[10]_INST_0_i_4 ;
  input \bdatw[11]_INST_0_i_4 ;
  input \bdatw[12]_INST_0_i_4 ;
  input \bdatw[13]_INST_0_i_4 ;
  input \bdatw[14]_INST_0_i_4 ;
  input \bdatw[15]_INST_0_i_5 ;
  input [1:0]\bdatw[15]_INST_0_i_22 ;
  input [1:0]ctl_selb;
  input [1:0]\bdatw[15]_INST_0_i_22_0 ;
  input [0:0]\bdatw[14]_INST_0_i_11 ;
  input [0:0]\bdatw[14]_INST_0_i_11_0 ;
  input [0:0]\bdatw[9]_INST_0_i_10 ;
  input [0:0]\bdatw[9]_INST_0_i_10_0 ;
  input [0:0]abus_0;
  input \iv[14]_i_28 ;
  input [0:0]\pc_reg[3]_i_2 ;
     output [15:0]sr;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [0:0]abus_0;
  wire \badr[10]_INST_0_i_1 ;
  wire \badr[11]_INST_0_i_1 ;
  wire \badr[12]_INST_0_i_1 ;
  wire \badr[13]_INST_0_i_1 ;
  wire \badr[14]_INST_0_i_1 ;
  wire \badr[15]_INST_0_i_1 ;
  wire [6:0]\badr[15]_INST_0_i_52 ;
  wire \badr[1]_INST_0_i_1 ;
  wire \badr[2]_INST_0_i_1 ;
  wire \badr[3]_INST_0_i_1 ;
  wire \badr[4]_INST_0_i_1 ;
  wire \badr[5]_INST_0_i_1 ;
  wire \badr[5]_INST_0_i_13_n_0 ;
  wire \badr[5]_INST_0_i_15_n_0 ;
  wire \badr[6]_INST_0_i_1 ;
  wire \badr[7]_INST_0_i_1 ;
  wire \badr[8]_INST_0_i_1 ;
  wire \badr[9]_INST_0_i_1 ;
  wire \bdatw[10]_INST_0_i_26_n_0 ;
  wire \bdatw[10]_INST_0_i_4 ;
  wire \bdatw[11]_INST_0_i_23_n_0 ;
  wire \bdatw[11]_INST_0_i_4 ;
  wire \bdatw[12]_INST_0_i_23_n_0 ;
  wire \bdatw[12]_INST_0_i_4 ;
  wire \bdatw[13]_INST_0_i_14_n_0 ;
  wire \bdatw[13]_INST_0_i_2 ;
  wire \bdatw[13]_INST_0_i_20_n_0 ;
  wire \bdatw[13]_INST_0_i_26_n_0 ;
  wire \bdatw[13]_INST_0_i_2_0 ;
  wire \bdatw[13]_INST_0_i_2_1 ;
  wire \bdatw[13]_INST_0_i_4 ;
  wire \bdatw[13]_INST_0_i_7_0 ;
  wire [0:0]\bdatw[14]_INST_0_i_11 ;
  wire [0:0]\bdatw[14]_INST_0_i_11_0 ;
  wire \bdatw[14]_INST_0_i_14_n_0 ;
  wire \bdatw[14]_INST_0_i_2 ;
  wire \bdatw[14]_INST_0_i_20_n_0 ;
  wire \bdatw[14]_INST_0_i_26_n_0 ;
  wire \bdatw[14]_INST_0_i_2_0 ;
  wire \bdatw[14]_INST_0_i_2_1 ;
  wire \bdatw[14]_INST_0_i_4 ;
  wire \bdatw[14]_INST_0_i_7_0 ;
  wire \bdatw[15]_INST_0_i_10_0 ;
  wire [14:0]\bdatw[15]_INST_0_i_15_0 ;
  wire \bdatw[15]_INST_0_i_2 ;
  wire [1:0]\bdatw[15]_INST_0_i_22 ;
  wire [1:0]\bdatw[15]_INST_0_i_22_0 ;
  wire \bdatw[15]_INST_0_i_26_n_0 ;
  wire \bdatw[15]_INST_0_i_2_0 ;
  wire \bdatw[15]_INST_0_i_2_1 ;
  wire \bdatw[15]_INST_0_i_40_n_0 ;
  wire \bdatw[15]_INST_0_i_5 ;
  wire \bdatw[15]_INST_0_i_65_n_0 ;
  wire \bdatw[8]_INST_0_i_22_n_0 ;
  wire \bdatw[8]_INST_0_i_4 ;
  wire [0:0]\bdatw[9]_INST_0_i_10 ;
  wire [0:0]\bdatw[9]_INST_0_i_10_0 ;
  wire \bdatw[9]_INST_0_i_23_n_0 ;
  wire \bdatw[9]_INST_0_i_4 ;
  wire clk;
  wire [2:0]ctl_sela;
  wire [1:0]ctl_selb;
  wire fch_irq_req;
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
  wire \grn_reg[2] ;
  wire \grn_reg[2]_0 ;
  wire \grn_reg[3] ;
  wire \grn_reg[3]_0 ;
  wire \grn_reg[4] ;
  wire \grn_reg[4]_0 ;
  wire \grn_reg[5] ;
  wire \grn_reg[6] ;
  wire \grn_reg[6]_0 ;
  wire \grn_reg[7] ;
  wire \grn_reg[7]_0 ;
  wire \grn_reg[9] ;
  wire \grn_reg[9]_0 ;
  wire irq;
  wire irq_0;
  wire [1:0]irq_lev;
  wire \iv[14]_i_28 ;
  wire \iv[15]_i_52 ;
  wire \iv[15]_i_52_0 ;
  wire \iv[15]_i_52_1 ;
  wire \iv[15]_i_52_2 ;
  wire \iv[15]_i_52_3 ;
  wire \iv[15]_i_61_0 ;
  wire \iv[15]_i_61_1 ;
  wire \iv[15]_i_62 ;
  wire \iv_reg[15]_i_66_n_0 ;
  wire [14:0]out;
  wire [3:0]p_0_in;
  wire [4:0]p_0_in_1;
  wire [0:0]\pc_reg[3]_i_2 ;
  (* DONT_TOUCH *) wire [15:0]sr;
  wire \sr_reg[0]_0 ;
  wire \sr_reg[0]_1 ;
  wire \sr_reg[0]_2 ;
  wire \sr_reg[0]_3 ;
  wire \sr_reg[10]_0 ;
  wire \sr_reg[10]_1 ;
  wire \sr_reg[11]_0 ;
  wire \sr_reg[12]_0 ;
  wire \sr_reg[13]_0 ;
  wire \sr_reg[14]_0 ;
  wire \sr_reg[15]_1 ;
  wire \sr_reg[1]_0 ;
  wire \sr_reg[1]_1 ;
  wire \sr_reg[2]_0 ;
  wire \sr_reg[2]_1 ;
  wire \sr_reg[2]_2 ;
  wire \sr_reg[3]_0 ;
  wire \sr_reg[3]_1 ;
  wire \sr_reg[4]_0 ;
  wire \sr_reg[4]_1 ;
  wire \sr_reg[4]_2 ;
  wire \sr_reg[4]_3 ;
  wire \sr_reg[5]_0 ;
  wire \sr_reg[6]_0 ;
  wire \sr_reg[6]_1 ;
  wire \sr_reg[6]_2 ;
  wire \sr_reg[6]_3 ;
  wire \sr_reg[6]_4 ;
  wire \sr_reg[6]_5 ;
  wire \sr_reg[6]_6 ;
  wire \sr_reg[7]_0 ;
  wire \sr_reg[7]_1 ;
  wire \sr_reg[7]_2 ;
  wire \sr_reg[7]_3 ;
  wire \sr_reg[7]_4 ;
  wire \sr_reg[8]_0 ;
  wire \sr_reg[8]_1 ;
  wire \sr_reg[8]_2 ;
  wire \sr_reg[9]_0 ;
  wire \stat_reg[0] ;
  wire \stat_reg[1] ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFFB8000000B80000)) 
    \badr[10]_INST_0_i_13 
       (.I0(out[9]),
        .I1(sr[0]),
        .I2(\bdatw[15]_INST_0_i_15_0 [9]),
        .I3(ctl_sela[1]),
        .I4(ctl_sela[2]),
        .I5(sr[10]),
        .O(\grn_reg[10]_0 ));
  MUXF7 \badr[10]_INST_0_i_5 
       (.I0(\grn_reg[10]_0 ),
        .I1(\badr[10]_INST_0_i_1 ),
        .O(\grn_reg[10] ),
        .S(ctl_sela[0]));
  LUT6 #(
    .INIT(64'hFFB8000000B80000)) 
    \badr[11]_INST_0_i_13 
       (.I0(out[10]),
        .I1(sr[0]),
        .I2(\bdatw[15]_INST_0_i_15_0 [10]),
        .I3(ctl_sela[1]),
        .I4(ctl_sela[2]),
        .I5(sr[11]),
        .O(\grn_reg[11]_0 ));
  MUXF7 \badr[11]_INST_0_i_5 
       (.I0(\grn_reg[11]_0 ),
        .I1(\badr[11]_INST_0_i_1 ),
        .O(\grn_reg[11] ),
        .S(ctl_sela[0]));
  LUT6 #(
    .INIT(64'hF000F000BB008800)) 
    \badr[12]_INST_0_i_13 
       (.I0(out[11]),
        .I1(sr[0]),
        .I2(sr[12]),
        .I3(ctl_sela[2]),
        .I4(\bdatw[15]_INST_0_i_15_0 [11]),
        .I5(ctl_sela[1]),
        .O(\grn_reg[12]_0 ));
  MUXF7 \badr[12]_INST_0_i_5 
       (.I0(\grn_reg[12]_0 ),
        .I1(\badr[12]_INST_0_i_1 ),
        .O(\grn_reg[12] ),
        .S(ctl_sela[0]));
  LUT6 #(
    .INIT(64'hF000F000BB008800)) 
    \badr[13]_INST_0_i_13 
       (.I0(out[12]),
        .I1(sr[0]),
        .I2(sr[13]),
        .I3(ctl_sela[2]),
        .I4(\bdatw[15]_INST_0_i_15_0 [12]),
        .I5(ctl_sela[1]),
        .O(\grn_reg[13]_0 ));
  MUXF7 \badr[13]_INST_0_i_5 
       (.I0(\grn_reg[13]_0 ),
        .I1(\badr[13]_INST_0_i_1 ),
        .O(\grn_reg[13] ),
        .S(ctl_sela[0]));
  LUT6 #(
    .INIT(64'hFFB8000000B80000)) 
    \badr[14]_INST_0_i_13 
       (.I0(out[13]),
        .I1(sr[0]),
        .I2(\bdatw[15]_INST_0_i_15_0 [13]),
        .I3(ctl_sela[1]),
        .I4(ctl_sela[2]),
        .I5(sr[14]),
        .O(\grn_reg[14]_0 ));
  MUXF7 \badr[14]_INST_0_i_5 
       (.I0(\grn_reg[14]_0 ),
        .I1(\badr[14]_INST_0_i_1 ),
        .O(\grn_reg[14] ),
        .S(ctl_sela[0]));
  LUT5 #(
    .INIT(32'hA65656A6)) 
    \badr[15]_INST_0_i_101 
       (.I0(\badr[15]_INST_0_i_52 [2]),
        .I1(sr[4]),
        .I2(\badr[15]_INST_0_i_52 [5]),
        .I3(sr[5]),
        .I4(sr[7]),
        .O(\sr_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hF000F000BB008800)) 
    \badr[15]_INST_0_i_26 
       (.I0(out[14]),
        .I1(sr[0]),
        .I2(sr[15]),
        .I3(ctl_sela[2]),
        .I4(\bdatw[15]_INST_0_i_15_0 [14]),
        .I5(ctl_sela[1]),
        .O(\grn_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAF303F5050)) 
    \badr[15]_INST_0_i_32 
       (.I0(sr[6]),
        .I1(sr[7]),
        .I2(\badr[15]_INST_0_i_52 [4]),
        .I3(sr[4]),
        .I4(\badr[15]_INST_0_i_52 [3]),
        .I5(\badr[15]_INST_0_i_52 [2]),
        .O(\sr_reg[6]_1 ));
  MUXF7 \badr[15]_INST_0_i_7 
       (.I0(\grn_reg[15]_0 ),
        .I1(\badr[15]_INST_0_i_1 ),
        .O(\grn_reg[15] ),
        .S(ctl_sela[0]));
  LUT6 #(
    .INIT(64'hFFCFEFEFFCCCEFEF)) 
    \badr[15]_INST_0_i_84 
       (.I0(sr[6]),
        .I1(\badr[15]_INST_0_i_52 [6]),
        .I2(\badr[15]_INST_0_i_52 [4]),
        .I3(sr[7]),
        .I4(\badr[15]_INST_0_i_52 [3]),
        .I5(sr[4]),
        .O(\sr_reg[6]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF6F60CFCF)) 
    \badr[15]_INST_0_i_88 
       (.I0(sr[7]),
        .I1(sr[5]),
        .I2(\badr[15]_INST_0_i_52 [5]),
        .I3(sr[4]),
        .I4(\badr[15]_INST_0_i_52 [3]),
        .I5(Q),
        .O(\sr_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFE2)) 
    \badr[15]_INST_0_i_90 
       (.I0(sr[6]),
        .I1(\badr[15]_INST_0_i_52 [3]),
        .I2(sr[7]),
        .I3(Q),
        .I4(\badr[15]_INST_0_i_52 [5]),
        .O(\sr_reg[6]_2 ));
  LUT6 #(
    .INIT(64'hF000F000BB008800)) 
    \badr[1]_INST_0_i_13 
       (.I0(out[0]),
        .I1(sr[0]),
        .I2(sr[1]),
        .I3(ctl_sela[2]),
        .I4(\bdatw[15]_INST_0_i_15_0 [0]),
        .I5(ctl_sela[1]),
        .O(\grn_reg[1]_0 ));
  MUXF7 \badr[1]_INST_0_i_5 
       (.I0(\grn_reg[1]_0 ),
        .I1(\badr[1]_INST_0_i_1 ),
        .O(\grn_reg[1] ),
        .S(ctl_sela[0]));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[2]_INST_0_i_13 
       (.I0(out[1]),
        .I1(sr[0]),
        .I2(sr[2]),
        .I3(ctl_sela[1]),
        .I4(\bdatw[15]_INST_0_i_15_0 [1]),
        .I5(ctl_sela[2]),
        .O(\grn_reg[2]_0 ));
  MUXF7 \badr[2]_INST_0_i_5 
       (.I0(\grn_reg[2]_0 ),
        .I1(\badr[2]_INST_0_i_1 ),
        .O(\grn_reg[2] ),
        .S(ctl_sela[0]));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[3]_INST_0_i_13 
       (.I0(out[2]),
        .I1(sr[0]),
        .I2(sr[3]),
        .I3(ctl_sela[1]),
        .I4(\bdatw[15]_INST_0_i_15_0 [2]),
        .I5(ctl_sela[2]),
        .O(\grn_reg[3]_0 ));
  MUXF7 \badr[3]_INST_0_i_5 
       (.I0(\grn_reg[3]_0 ),
        .I1(\badr[3]_INST_0_i_1 ),
        .O(\grn_reg[3] ),
        .S(ctl_sela[0]));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \badr[4]_INST_0_i_13 
       (.I0(out[3]),
        .I1(sr[0]),
        .I2(\bdatw[15]_INST_0_i_15_0 [3]),
        .I3(ctl_sela[2]),
        .I4(sr[4]),
        .I5(ctl_sela[1]),
        .O(\grn_reg[4]_0 ));
  MUXF7 \badr[4]_INST_0_i_5 
       (.I0(\grn_reg[4]_0 ),
        .I1(\badr[4]_INST_0_i_1 ),
        .O(\grn_reg[4] ),
        .S(ctl_sela[0]));
  LUT5 #(
    .INIT(32'hF000E0E0)) 
    \badr[5]_INST_0_i_13 
       (.I0(sr[0]),
        .I1(\bdatw[15]_INST_0_i_15_0 [4]),
        .I2(ctl_sela[2]),
        .I3(sr[5]),
        .I4(ctl_sela[1]),
        .O(\badr[5]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF0004040)) 
    \badr[5]_INST_0_i_15 
       (.I0(sr[0]),
        .I1(\bdatw[15]_INST_0_i_15_0 [4]),
        .I2(ctl_sela[2]),
        .I3(sr[5]),
        .I4(ctl_sela[1]),
        .O(\badr[5]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \badr[5]_INST_0_i_5 
       (.I0(\badr[5]_INST_0_i_13_n_0 ),
        .I1(out[4]),
        .I2(\badr[5]_INST_0_i_1 ),
        .I3(ctl_sela[0]),
        .I4(\badr[5]_INST_0_i_15_n_0 ),
        .O(\grn_reg[5] ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \badr[6]_INST_0_i_13 
       (.I0(out[5]),
        .I1(sr[0]),
        .I2(\bdatw[15]_INST_0_i_15_0 [5]),
        .I3(ctl_sela[2]),
        .I4(sr[6]),
        .I5(ctl_sela[1]),
        .O(\grn_reg[6]_0 ));
  MUXF7 \badr[6]_INST_0_i_5 
       (.I0(\grn_reg[6]_0 ),
        .I1(\badr[6]_INST_0_i_1 ),
        .O(\grn_reg[6] ),
        .S(ctl_sela[0]));
  LUT6 #(
    .INIT(64'hF0BBF08800000000)) 
    \badr[7]_INST_0_i_13 
       (.I0(out[6]),
        .I1(sr[0]),
        .I2(sr[7]),
        .I3(ctl_sela[1]),
        .I4(\bdatw[15]_INST_0_i_15_0 [6]),
        .I5(ctl_sela[2]),
        .O(\grn_reg[7]_0 ));
  MUXF7 \badr[7]_INST_0_i_5 
       (.I0(\grn_reg[7]_0 ),
        .I1(\badr[7]_INST_0_i_1 ),
        .O(\grn_reg[7] ),
        .S(ctl_sela[0]));
  LUT6 #(
    .INIT(64'hAACF0000AAC00000)) 
    \badr[8]_INST_0_i_13 
       (.I0(sr[8]),
        .I1(out[7]),
        .I2(sr[0]),
        .I3(ctl_sela[1]),
        .I4(ctl_sela[2]),
        .I5(\bdatw[15]_INST_0_i_15_0 [7]),
        .O(\sr_reg[8]_1 ));
  MUXF7 \badr[8]_INST_0_i_5 
       (.I0(\sr_reg[8]_1 ),
        .I1(\badr[8]_INST_0_i_1 ),
        .O(\sr_reg[8]_0 ),
        .S(ctl_sela[0]));
  LUT6 #(
    .INIT(64'hFFB8000000B80000)) 
    \badr[9]_INST_0_i_12 
       (.I0(out[8]),
        .I1(sr[0]),
        .I2(\bdatw[15]_INST_0_i_15_0 [8]),
        .I3(ctl_sela[1]),
        .I4(ctl_sela[2]),
        .I5(sr[9]),
        .O(\grn_reg[9]_0 ));
  MUXF7 \badr[9]_INST_0_i_5 
       (.I0(\grn_reg[9]_0 ),
        .I1(\badr[9]_INST_0_i_1 ),
        .O(\grn_reg[9] ),
        .S(ctl_sela[0]));
  MUXF7 \bdatw[10]_INST_0_i_13 
       (.I0(\bdatw[10]_INST_0_i_26_n_0 ),
        .I1(\bdatw[10]_INST_0_i_4 ),
        .O(\sr_reg[10]_0 ),
        .S(\iv[15]_i_61_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[10]_INST_0_i_18 
       (.I0(sr[2]),
        .I1(ctl_selb[0]),
        .I2(out[1]),
        .I3(sr[0]),
        .I4(\bdatw[15]_INST_0_i_15_0 [1]),
        .I5(ctl_selb[1]),
        .O(\sr_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[10]_INST_0_i_26 
       (.I0(sr[10]),
        .I1(ctl_selb[0]),
        .I2(out[9]),
        .I3(sr[0]),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_15_0 [9]),
        .O(\bdatw[10]_INST_0_i_26_n_0 ));
  MUXF7 \bdatw[11]_INST_0_i_11 
       (.I0(\bdatw[11]_INST_0_i_23_n_0 ),
        .I1(\bdatw[11]_INST_0_i_4 ),
        .O(\sr_reg[11]_0 ),
        .S(\iv[15]_i_61_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[11]_INST_0_i_16 
       (.I0(sr[3]),
        .I1(ctl_selb[0]),
        .I2(out[2]),
        .I3(sr[0]),
        .I4(\bdatw[15]_INST_0_i_15_0 [2]),
        .I5(ctl_selb[1]),
        .O(\sr_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[11]_INST_0_i_23 
       (.I0(sr[11]),
        .I1(ctl_selb[0]),
        .I2(out[10]),
        .I3(sr[0]),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_15_0 [10]),
        .O(\bdatw[11]_INST_0_i_23_n_0 ));
  MUXF7 \bdatw[12]_INST_0_i_11 
       (.I0(\bdatw[12]_INST_0_i_23_n_0 ),
        .I1(\bdatw[12]_INST_0_i_4 ),
        .O(\sr_reg[12]_0 ),
        .S(\iv[15]_i_61_0 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[12]_INST_0_i_16 
       (.I0(sr[4]),
        .I1(ctl_selb[0]),
        .I2(out[3]),
        .I3(sr[0]),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_15_0 [3]),
        .O(\sr_reg[4]_2 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[12]_INST_0_i_23 
       (.I0(sr[12]),
        .I1(ctl_selb[0]),
        .I2(out[11]),
        .I3(sr[0]),
        .I4(\bdatw[15]_INST_0_i_15_0 [11]),
        .I5(ctl_selb[1]),
        .O(\bdatw[12]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h0000D080)) 
    \bdatw[12]_INST_0_i_35 
       (.I0(sr[0]),
        .I1(\bdatw[15]_INST_0_i_22 [0]),
        .I2(ctl_selb[1]),
        .I3(\bdatw[15]_INST_0_i_22_0 [0]),
        .I4(ctl_selb[0]),
        .O(\sr_reg[0]_3 ));
  MUXF7 \bdatw[13]_INST_0_i_10 
       (.I0(\bdatw[13]_INST_0_i_20_n_0 ),
        .I1(\bdatw[13]_INST_0_i_4 ),
        .O(\sr_reg[13]_0 ),
        .S(\iv[15]_i_61_0 ));
  MUXF7 \bdatw[13]_INST_0_i_14 
       (.I0(\bdatw[13]_INST_0_i_26_n_0 ),
        .I1(\bdatw[13]_INST_0_i_7_0 ),
        .O(\bdatw[13]_INST_0_i_14_n_0 ),
        .S(\iv[15]_i_61_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[13]_INST_0_i_20 
       (.I0(sr[13]),
        .I1(ctl_selb[0]),
        .I2(out[12]),
        .I3(sr[0]),
        .I4(\bdatw[15]_INST_0_i_15_0 [12]),
        .I5(ctl_selb[1]),
        .O(\bdatw[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800BB008800)) 
    \bdatw[13]_INST_0_i_26 
       (.I0(sr[5]),
        .I1(ctl_selb[0]),
        .I2(out[4]),
        .I3(ctl_selb[1]),
        .I4(\bdatw[15]_INST_0_i_15_0 [4]),
        .I5(sr[0]),
        .O(\bdatw[13]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatw[13]_INST_0_i_7 
       (.I0(\bdatw[13]_INST_0_i_14_n_0 ),
        .I1(\bdatw[13]_INST_0_i_2 ),
        .I2(\iv[15]_i_52_0 ),
        .I3(\bdatw[13]_INST_0_i_2_0 ),
        .I4(\iv[15]_i_52_2 ),
        .I5(\bdatw[13]_INST_0_i_2_1 ),
        .O(p_0_in[1]));
  MUXF7 \bdatw[14]_INST_0_i_10 
       (.I0(\bdatw[14]_INST_0_i_20_n_0 ),
        .I1(\bdatw[14]_INST_0_i_4 ),
        .O(\sr_reg[14]_0 ),
        .S(\iv[15]_i_61_0 ));
  MUXF7 \bdatw[14]_INST_0_i_14 
       (.I0(\bdatw[14]_INST_0_i_26_n_0 ),
        .I1(\bdatw[14]_INST_0_i_7_0 ),
        .O(\bdatw[14]_INST_0_i_14_n_0 ),
        .S(\iv[15]_i_61_0 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[14]_INST_0_i_20 
       (.I0(sr[14]),
        .I1(ctl_selb[0]),
        .I2(out[13]),
        .I3(sr[0]),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_15_0 [13]),
        .O(\bdatw[14]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h0000D080)) 
    \bdatw[14]_INST_0_i_23 
       (.I0(sr[0]),
        .I1(\bdatw[14]_INST_0_i_11 ),
        .I2(ctl_selb[1]),
        .I3(\bdatw[14]_INST_0_i_11_0 ),
        .I4(ctl_selb[0]),
        .O(\sr_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[14]_INST_0_i_26 
       (.I0(sr[6]),
        .I1(ctl_selb[0]),
        .I2(out[5]),
        .I3(sr[0]),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_15_0 [5]),
        .O(\bdatw[14]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatw[14]_INST_0_i_7 
       (.I0(\bdatw[14]_INST_0_i_14_n_0 ),
        .I1(\bdatw[14]_INST_0_i_2 ),
        .I2(\iv[15]_i_52_0 ),
        .I3(\bdatw[14]_INST_0_i_2_0 ),
        .I4(\iv[15]_i_52_2 ),
        .I5(\bdatw[14]_INST_0_i_2_1 ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatw[15]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_26_n_0 ),
        .I1(\bdatw[15]_INST_0_i_2 ),
        .I2(\iv[15]_i_52_0 ),
        .I3(\bdatw[15]_INST_0_i_2_0 ),
        .I4(\iv[15]_i_52_2 ),
        .I5(\bdatw[15]_INST_0_i_2_1 ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h5155115151555155)) 
    \bdatw[15]_INST_0_i_103 
       (.I0(Q),
        .I1(irq),
        .I2(irq_lev[1]),
        .I3(sr[3]),
        .I4(irq_lev[0]),
        .I5(sr[2]),
        .O(\stat_reg[0] ));
  MUXF7 \bdatw[15]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_40_n_0 ),
        .I1(\bdatw[15]_INST_0_i_5 ),
        .O(\sr_reg[15]_1 ),
        .S(\iv[15]_i_61_0 ));
  MUXF7 \bdatw[15]_INST_0_i_26 
       (.I0(\bdatw[15]_INST_0_i_65_n_0 ),
        .I1(\bdatw[15]_INST_0_i_10_0 ),
        .O(\bdatw[15]_INST_0_i_26_n_0 ),
        .S(\iv[15]_i_61_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[15]_INST_0_i_40 
       (.I0(sr[15]),
        .I1(ctl_selb[0]),
        .I2(out[14]),
        .I3(sr[0]),
        .I4(\bdatw[15]_INST_0_i_15_0 [14]),
        .I5(ctl_selb[1]),
        .O(\bdatw[15]_INST_0_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h0000D080)) 
    \bdatw[15]_INST_0_i_58 
       (.I0(sr[0]),
        .I1(\bdatw[15]_INST_0_i_22 [1]),
        .I2(ctl_selb[1]),
        .I3(\bdatw[15]_INST_0_i_22_0 [1]),
        .I4(ctl_selb[0]),
        .O(\sr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[15]_INST_0_i_65 
       (.I0(sr[7]),
        .I1(ctl_selb[0]),
        .I2(out[6]),
        .I3(sr[0]),
        .I4(\bdatw[15]_INST_0_i_15_0 [6]),
        .I5(ctl_selb[1]),
        .O(\bdatw[15]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h0800880808000800)) 
    \bdatw[15]_INST_0_i_92 
       (.I0(\badr[15]_INST_0_i_52 [0]),
        .I1(irq),
        .I2(irq_lev[1]),
        .I3(sr[3]),
        .I4(irq_lev[0]),
        .I5(sr[2]),
        .O(irq_0));
  MUXF7 \bdatw[8]_INST_0_i_12 
       (.I0(\bdatw[8]_INST_0_i_22_n_0 ),
        .I1(\bdatw[8]_INST_0_i_4 ),
        .O(\sr_reg[8]_2 ),
        .S(\iv[15]_i_61_0 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[8]_INST_0_i_22 
       (.I0(sr[8]),
        .I1(ctl_selb[0]),
        .I2(out[7]),
        .I3(sr[0]),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_15_0 [7]),
        .O(\bdatw[8]_INST_0_i_22_n_0 ));
  MUXF7 \bdatw[9]_INST_0_i_11 
       (.I0(\bdatw[9]_INST_0_i_23_n_0 ),
        .I1(\bdatw[9]_INST_0_i_4 ),
        .O(\sr_reg[9]_0 ),
        .S(\iv[15]_i_61_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[9]_INST_0_i_16 
       (.I0(sr[1]),
        .I1(ctl_selb[0]),
        .I2(out[0]),
        .I3(sr[0]),
        .I4(\bdatw[15]_INST_0_i_15_0 [0]),
        .I5(ctl_selb[1]),
        .O(\sr_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h0000C480)) 
    \bdatw[9]_INST_0_i_22 
       (.I0(sr[0]),
        .I1(ctl_selb[1]),
        .I2(\bdatw[9]_INST_0_i_10 ),
        .I3(\bdatw[9]_INST_0_i_10_0 ),
        .I4(ctl_selb[0]),
        .O(\sr_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    \bdatw[9]_INST_0_i_23 
       (.I0(sr[9]),
        .I1(ctl_selb[0]),
        .I2(out[8]),
        .I3(sr[0]),
        .I4(ctl_selb[1]),
        .I5(\bdatw[15]_INST_0_i_15_0 [8]),
        .O(\bdatw[9]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \ccmd[0]_INST_0_i_8 
       (.I0(sr[7]),
        .I1(sr[5]),
        .I2(\badr[15]_INST_0_i_52 [5]),
        .I3(sr[4]),
        .O(\sr_reg[7]_2 ));
  LUT4 #(
    .INIT(16'hB0BB)) 
    ctl_fetch_inferred_i_14
       (.I0(sr[6]),
        .I1(\badr[15]_INST_0_i_52 [4]),
        .I2(sr[5]),
        .I3(\badr[15]_INST_0_i_52 [5]),
        .O(\sr_reg[6]_4 ));
  LUT6 #(
    .INIT(64'h0400550455555555)) 
    ctl_fetch_inferred_i_32
       (.I0(\badr[15]_INST_0_i_52 [1]),
        .I1(sr[2]),
        .I2(irq_lev[0]),
        .I3(sr[3]),
        .I4(irq_lev[1]),
        .I5(irq),
        .O(\sr_reg[2]_1 ));
  LUT5 #(
    .INIT(32'hFAFA6F60)) 
    ctl_fetch_inferred_i_6
       (.I0(sr[7]),
        .I1(sr[5]),
        .I2(\badr[15]_INST_0_i_52 [5]),
        .I3(sr[4]),
        .I4(\badr[15]_INST_0_i_52 [4]),
        .O(\sr_reg[7]_1 ));
  LUT5 #(
    .INIT(32'h20F20000)) 
    fch_irq_req_fl_i_1
       (.I0(sr[2]),
        .I1(irq_lev[0]),
        .I2(sr[3]),
        .I3(irq_lev[1]),
        .I4(irq),
        .O(fch_irq_req));
  LUT2 #(
    .INIT(4'h6)) 
    \iv[15]_i_25 
       (.I0(sr[7]),
        .I1(sr[5]),
        .O(\sr_reg[7]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[15]_i_61 
       (.I0(\iv_reg[15]_i_66_n_0 ),
        .I1(\iv[15]_i_52 ),
        .I2(\iv[15]_i_52_0 ),
        .I3(\iv[15]_i_52_1 ),
        .I4(\iv[15]_i_52_2 ),
        .I5(\iv[15]_i_52_3 ),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \iv[8]_i_26 
       (.I0(sr[6]),
        .I1(abus_0),
        .I2(\iv[14]_i_28 ),
        .O(\sr_reg[6]_5 ));
  MUXF7 \iv_reg[15]_i_66 
       (.I0(\sr_reg[1]_0 ),
        .I1(\iv[15]_i_61_1 ),
        .O(\iv_reg[15]_i_66_n_0 ),
        .S(\iv[15]_i_61_0 ));
  MUXF7 \iv_reg[15]_i_69 
       (.I0(\sr_reg[4]_2 ),
        .I1(\iv[15]_i_62 ),
        .O(\sr_reg[4]_1 ),
        .S(\iv[15]_i_61_0 ));
  LUT6 #(
    .INIT(64'h5955995959555955)) 
    \pc[3]_i_4 
       (.I0(\pc_reg[3]_i_2 ),
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
        .D(p_0_in_1[0]),
        .Q(sr[0]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[10]_1 ),
        .Q(sr[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[11]),
        .Q(sr[11]),
        .R(\sr_reg[1]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in_1[1]),
        .Q(sr[12]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in_1[2]),
        .Q(sr[13]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in_1[3]),
        .Q(sr[14]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in_1[4]),
        .Q(sr[15]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[1]),
        .Q(sr[1]),
        .R(\sr_reg[1]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[2]_2 ),
        .Q(sr[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[3]_1 ),
        .Q(sr[3]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[4]_3 ),
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
        .D(\sr_reg[6]_6 ),
        .Q(sr[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr_reg[7]_4 ),
        .Q(sr[7]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[8]),
        .Q(sr[8]),
        .R(\sr_reg[1]_1 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[9]),
        .Q(sr[9]),
        .R(\sr_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hFAFFBABA)) 
    \stat[1]_i_2 
       (.I0(\stat_reg[1] ),
        .I1(sr[6]),
        .I2(\badr[15]_INST_0_i_52 [4]),
        .I3(sr[5]),
        .I4(\badr[15]_INST_0_i_52 [5]),
        .O(\sr_reg[6]_0 ));
endmodule

module mcbs_rgf_treg
   (.\tr_reg[15]_0 ({tr[15],tr[14],tr[13],tr[12],tr[11],tr[10],tr[9],tr[8],tr[7],tr[6],tr[5],tr[4],tr[3],tr[2],tr[1],tr[0]}),
    \tr_reg[1]_0 ,
    \tr_reg[1]_1 ,
    \tr_reg[2]_0 ,
    \tr_reg[3]_0 ,
    \tr_reg[4]_0 ,
    \tr_reg[4]_1 ,
    \tr_reg[15]_1 ,
    \tr_reg[14]_0 ,
    \tr_reg[13]_0 ,
    \tr_reg[12]_0 ,
    \tr_reg[11]_0 ,
    \tr_reg[10]_0 ,
    \tr_reg[9]_0 ,
    \tr_reg[8]_0 ,
    \tr_reg[7]_0 ,
    \tr_reg[6]_0 ,
    \tr_reg[5]_0 ,
    \tr_reg[0]_0 ,
    \bdatw[9]_INST_0_i_2 ,
    \bdatw[9]_INST_0_i_2_0 ,
    \bdatw[9]_INST_0_i_2_1 ,
    \bdatw[9]_INST_0_i_2_2 ,
    \bdatw[9]_INST_0_i_2_3 ,
    \bdatw[10]_INST_0_i_2 ,
    \bdatw[10]_INST_0_i_2_0 ,
    \bdatw[10]_INST_0_i_2_1 ,
    \bdatw[11]_INST_0_i_2 ,
    \bdatw[11]_INST_0_i_2_0 ,
    \bdatw[11]_INST_0_i_2_1 ,
    \bdatw[12]_INST_0_i_2 ,
    \bdatw[12]_INST_0_i_2_0 ,
    \bdatw[12]_INST_0_i_2_1 ,
    ctl_selb,
    \bdatw[15]_INST_0_i_15 ,
    \bdatw[15]_INST_0_i_15_0 ,
    \bdatw[15]_INST_0_i_15_1 ,
    SR,
    cbus_sel_cr,
    \tr_reg[15]_2 ,
    clk);
  output \tr_reg[1]_0 ;
  output \tr_reg[1]_1 ;
  output \tr_reg[2]_0 ;
  output \tr_reg[3]_0 ;
  output \tr_reg[4]_0 ;
  output \tr_reg[4]_1 ;
  output \tr_reg[15]_1 ;
  output \tr_reg[14]_0 ;
  output \tr_reg[13]_0 ;
  output \tr_reg[12]_0 ;
  output \tr_reg[11]_0 ;
  output \tr_reg[10]_0 ;
  output \tr_reg[9]_0 ;
  output \tr_reg[8]_0 ;
  output \tr_reg[7]_0 ;
  output \tr_reg[6]_0 ;
  output \tr_reg[5]_0 ;
  output \tr_reg[0]_0 ;
  input \bdatw[9]_INST_0_i_2 ;
  input \bdatw[9]_INST_0_i_2_0 ;
  input \bdatw[9]_INST_0_i_2_1 ;
  input \bdatw[9]_INST_0_i_2_2 ;
  input \bdatw[9]_INST_0_i_2_3 ;
  input \bdatw[10]_INST_0_i_2 ;
  input \bdatw[10]_INST_0_i_2_0 ;
  input \bdatw[10]_INST_0_i_2_1 ;
  input \bdatw[11]_INST_0_i_2 ;
  input \bdatw[11]_INST_0_i_2_0 ;
  input \bdatw[11]_INST_0_i_2_1 ;
  input \bdatw[12]_INST_0_i_2 ;
  input \bdatw[12]_INST_0_i_2_0 ;
  input \bdatw[12]_INST_0_i_2_1 ;
  input [1:0]ctl_selb;
  input [15:0]\bdatw[15]_INST_0_i_15 ;
  input [0:0]\bdatw[15]_INST_0_i_15_0 ;
  input [15:0]\bdatw[15]_INST_0_i_15_1 ;
  input [0:0]SR;
  input [0:0]cbus_sel_cr;
  input [15:0]\tr_reg[15]_2 ;
  input clk;
     output [15:0]tr;

  wire [0:0]SR;
  wire \bdatw[10]_INST_0_i_17_n_0 ;
  wire \bdatw[10]_INST_0_i_2 ;
  wire \bdatw[10]_INST_0_i_2_0 ;
  wire \bdatw[10]_INST_0_i_2_1 ;
  wire \bdatw[11]_INST_0_i_15_n_0 ;
  wire \bdatw[11]_INST_0_i_2 ;
  wire \bdatw[11]_INST_0_i_2_0 ;
  wire \bdatw[11]_INST_0_i_2_1 ;
  wire \bdatw[12]_INST_0_i_2 ;
  wire \bdatw[12]_INST_0_i_2_0 ;
  wire \bdatw[12]_INST_0_i_2_1 ;
  wire [15:0]\bdatw[15]_INST_0_i_15 ;
  wire [0:0]\bdatw[15]_INST_0_i_15_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_15_1 ;
  wire \bdatw[9]_INST_0_i_2 ;
  wire \bdatw[9]_INST_0_i_2_0 ;
  wire \bdatw[9]_INST_0_i_2_1 ;
  wire \bdatw[9]_INST_0_i_2_2 ;
  wire \bdatw[9]_INST_0_i_2_3 ;
  wire [0:0]cbus_sel_cr;
  wire clk;
  wire [1:0]ctl_selb;
  (* DONT_TOUCH *) wire [15:0]tr;
  wire \tr_reg[0]_0 ;
  wire \tr_reg[10]_0 ;
  wire \tr_reg[11]_0 ;
  wire \tr_reg[12]_0 ;
  wire \tr_reg[13]_0 ;
  wire \tr_reg[14]_0 ;
  wire \tr_reg[15]_1 ;
  wire [15:0]\tr_reg[15]_2 ;
  wire \tr_reg[1]_0 ;
  wire \tr_reg[1]_1 ;
  wire \tr_reg[2]_0 ;
  wire \tr_reg[3]_0 ;
  wire \tr_reg[4]_0 ;
  wire \tr_reg[4]_1 ;
  wire \tr_reg[5]_0 ;
  wire \tr_reg[6]_0 ;
  wire \tr_reg[7]_0 ;
  wire \tr_reg[8]_0 ;
  wire \tr_reg[9]_0 ;

  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[10]_INST_0_i_17 
       (.I0(tr[2]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_15 [2]),
        .I3(\bdatw[15]_INST_0_i_15_0 ),
        .I4(\bdatw[15]_INST_0_i_15_1 [2]),
        .I5(ctl_selb[1]),
        .O(\bdatw[10]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[10]_INST_0_i_27 
       (.I0(tr[10]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_15 [10]),
        .I3(\bdatw[15]_INST_0_i_15_0 ),
        .I4(\bdatw[15]_INST_0_i_15_1 [10]),
        .I5(ctl_selb[1]),
        .O(\tr_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatw[10]_INST_0_i_7 
       (.I0(\bdatw[10]_INST_0_i_17_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\bdatw[10]_INST_0_i_2_0 ),
        .I4(\bdatw[9]_INST_0_i_2_2 ),
        .I5(\bdatw[10]_INST_0_i_2_1 ),
        .O(\tr_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[11]_INST_0_i_15 
       (.I0(tr[3]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_15 [3]),
        .I3(\bdatw[15]_INST_0_i_15_0 ),
        .I4(\bdatw[15]_INST_0_i_15_1 [3]),
        .I5(ctl_selb[1]),
        .O(\bdatw[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[11]_INST_0_i_24 
       (.I0(tr[11]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_15 [11]),
        .I3(\bdatw[15]_INST_0_i_15_0 ),
        .I4(\bdatw[15]_INST_0_i_15_1 [11]),
        .I5(ctl_selb[1]),
        .O(\tr_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatw[11]_INST_0_i_7 
       (.I0(\bdatw[11]_INST_0_i_15_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .I4(\bdatw[9]_INST_0_i_2_2 ),
        .I5(\bdatw[11]_INST_0_i_2_1 ),
        .O(\tr_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[12]_INST_0_i_15 
       (.I0(tr[4]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_15 [4]),
        .I3(\bdatw[15]_INST_0_i_15_0 ),
        .I4(\bdatw[15]_INST_0_i_15_1 [4]),
        .I5(ctl_selb[1]),
        .O(\tr_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[12]_INST_0_i_24 
       (.I0(tr[12]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_15 [12]),
        .I3(\bdatw[15]_INST_0_i_15_0 ),
        .I4(\bdatw[15]_INST_0_i_15_1 [12]),
        .I5(ctl_selb[1]),
        .O(\tr_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatw[12]_INST_0_i_7 
       (.I0(\tr_reg[4]_1 ),
        .I1(\bdatw[12]_INST_0_i_2 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\bdatw[12]_INST_0_i_2_0 ),
        .I4(\bdatw[9]_INST_0_i_2_2 ),
        .I5(\bdatw[12]_INST_0_i_2_1 ),
        .O(\tr_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[13]_INST_0_i_21 
       (.I0(tr[13]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_15 [13]),
        .I3(\bdatw[15]_INST_0_i_15_0 ),
        .I4(\bdatw[15]_INST_0_i_15_1 [13]),
        .I5(ctl_selb[1]),
        .O(\tr_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[13]_INST_0_i_27 
       (.I0(tr[5]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_15 [5]),
        .I3(\bdatw[15]_INST_0_i_15_0 ),
        .I4(\bdatw[15]_INST_0_i_15_1 [5]),
        .I5(ctl_selb[1]),
        .O(\tr_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[14]_INST_0_i_21 
       (.I0(tr[14]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_15 [14]),
        .I3(\bdatw[15]_INST_0_i_15_0 ),
        .I4(\bdatw[15]_INST_0_i_15_1 [14]),
        .I5(ctl_selb[1]),
        .O(\tr_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[14]_INST_0_i_27 
       (.I0(tr[6]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_15 [6]),
        .I3(\bdatw[15]_INST_0_i_15_0 ),
        .I4(\bdatw[15]_INST_0_i_15_1 [6]),
        .I5(ctl_selb[1]),
        .O(\tr_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[15]_INST_0_i_41 
       (.I0(tr[15]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_15 [15]),
        .I3(\bdatw[15]_INST_0_i_15_0 ),
        .I4(\bdatw[15]_INST_0_i_15_1 [15]),
        .I5(ctl_selb[1]),
        .O(\tr_reg[15]_1 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[15]_INST_0_i_66 
       (.I0(tr[7]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_15 [7]),
        .I3(\bdatw[15]_INST_0_i_15_0 ),
        .I4(\bdatw[15]_INST_0_i_15_1 [7]),
        .I5(ctl_selb[1]),
        .O(\tr_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[8]_INST_0_i_23 
       (.I0(tr[8]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_15 [8]),
        .I3(\bdatw[15]_INST_0_i_15_0 ),
        .I4(\bdatw[15]_INST_0_i_15_1 [8]),
        .I5(ctl_selb[1]),
        .O(\tr_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[8]_INST_0_i_31 
       (.I0(tr[0]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_15 [0]),
        .I3(\bdatw[15]_INST_0_i_15_0 ),
        .I4(\bdatw[15]_INST_0_i_15_1 [0]),
        .I5(ctl_selb[1]),
        .O(\tr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[9]_INST_0_i_15 
       (.I0(tr[1]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_15 [1]),
        .I3(\bdatw[15]_INST_0_i_15_0 ),
        .I4(\bdatw[15]_INST_0_i_15_1 [1]),
        .I5(ctl_selb[1]),
        .O(\tr_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \bdatw[9]_INST_0_i_24 
       (.I0(tr[9]),
        .I1(ctl_selb[0]),
        .I2(\bdatw[15]_INST_0_i_15 [9]),
        .I3(\bdatw[15]_INST_0_i_15_0 ),
        .I4(\bdatw[15]_INST_0_i_15_1 [9]),
        .I5(ctl_selb[1]),
        .O(\tr_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatw[9]_INST_0_i_7 
       (.I0(\tr_reg[1]_1 ),
        .I1(\bdatw[9]_INST_0_i_2 ),
        .I2(\bdatw[9]_INST_0_i_2_0 ),
        .I3(\bdatw[9]_INST_0_i_2_1 ),
        .I4(\bdatw[9]_INST_0_i_2_2 ),
        .I5(\bdatw[9]_INST_0_i_2_3 ),
        .O(\tr_reg[1]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[0] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_2 [0]),
        .Q(tr[0]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[10] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_2 [10]),
        .Q(tr[10]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[11] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_2 [11]),
        .Q(tr[11]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[12] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_2 [12]),
        .Q(tr[12]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[13] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_2 [13]),
        .Q(tr[13]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[14] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_2 [14]),
        .Q(tr[14]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[15] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_2 [15]),
        .Q(tr[15]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[1] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_2 [1]),
        .Q(tr[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[2] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_2 [2]),
        .Q(tr[2]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[3] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_2 [3]),
        .Q(tr[3]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[4] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_2 [4]),
        .Q(tr[4]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[5] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_2 [5]),
        .Q(tr[5]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[6] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_2 [6]),
        .Q(tr[6]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[7] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_2 [7]),
        .Q(tr[7]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[8] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_2 [8]),
        .Q(tr[8]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \tr_reg[9] 
       (.C(clk),
        .CE(cbus_sel_cr),
        .D(\tr_reg[15]_2 [9]),
        .Q(tr[9]),
        .R(SR));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module moscoviumbs
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
//	Moscovium-BS 16 bit CPU core
//		(c) 2025	1YEN Toru
//
//
//	2026/09/12	ver.1.06
//		fix: hcmp; fixed hang up issue
//
//	2026/03/14	ver.1.04
//		instruction: iden
//
//	2025/02/22	ver.1.02
//		expand: cpuid[3:0]
//
//	2025/01/25	ver.1.00
//		Moscovium-BS core: Blockly Slim edition
//		Sr[ML,BK1] bit is always 0.
//		Sr[DR] bit can be writable for recognize CPU core to be a Mc,
//			but Sr[DR] always 0 for functionality.
//
// ================================
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
  input [3:0]cpuid;
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
  wire [1:0]acmd;
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
  wire [15:0]bbus_o;
  wire [2:0]bcmd;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire brdy;
  wire [15:0]cbus;
  wire [15:0]cbus_i;
  wire [4:3]cbus_sel_cr;
  wire [4:0]ccmd;
  wire clk;
  wire [3:0]cpuid;
  wire crdy;
  wire ctl_copro;
  (* DONT_TOUCH *) wire ctl_fetch;
  wire ctl_fetch_ext;
  wire ctl_irq_ack;
  wire ctl_n_0;
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
  wire ctl_n_5;
  wire ctl_n_6;
  wire ctl_n_8;
  wire ctl_n_9;
  wire [4:0]ctl_sela;
  wire [4:3]ctl_selb;
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
  wire fch_n_129;
  wire fch_n_130;
  wire fch_n_131;
  wire fch_n_132;
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
  wire fch_n_195;
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
  wire fch_n_34;
  wire fch_n_35;
  wire fch_n_36;
  wire fch_n_42;
  wire fch_n_45;
  wire fch_n_46;
  wire fch_n_48;
  wire fch_n_49;
  wire fch_n_52;
  wire fch_n_53;
  wire fch_n_54;
  wire fch_n_60;
  wire fch_n_61;
  wire fch_n_78;
  wire fch_n_79;
  wire fch_n_80;
  wire fch_n_81;
  wire fch_n_82;
  wire fch_n_99;
  wire [15:0]fch_pc;
  wire [15:0]fdat;
  wire irq;
  wire [1:0]irq_lev;
  wire [5:0]irq_vec;
  wire mem_n_0;
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
  wire [7:1]p_0_in;
  wire [4:4]p_1_in;
  wire [6:1]p_1_in_0;
  wire \pcnt/p_0_in ;
  wire [15:0]\pcnt/p_1_in ;
  wire [0:0]read_cyc;
  wire rgf_iv_ve;
  wire rgf_n_0;
  wire rgf_n_1;
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
  wire rgf_n_146;
  wire rgf_n_147;
  wire rgf_n_148;
  wire rgf_n_149;
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
  wire rgf_n_184;
  wire rgf_n_185;
  wire rgf_n_186;
  wire rgf_n_187;
  wire rgf_n_188;
  wire rgf_n_189;
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
  wire rgf_n_200;
  wire rgf_n_201;
  wire rgf_n_202;
  wire rgf_n_203;
  wire rgf_n_204;
  wire rgf_n_221;
  wire rgf_n_222;
  wire rgf_n_223;
  wire rgf_n_224;
  wire rgf_n_225;
  wire rgf_n_226;
  wire rgf_n_227;
  wire rgf_n_228;
  wire rgf_n_229;
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
  wire rgf_n_240;
  wire rgf_n_241;
  wire rgf_n_242;
  wire rgf_n_243;
  wire rgf_n_244;
  wire rgf_n_245;
  wire rgf_n_246;
  wire rgf_n_247;
  wire rgf_n_249;
  wire rgf_n_250;
  wire rgf_n_251;
  wire rgf_n_3;
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
  wire rgf_n_60;
  wire rgf_n_61;
  wire rgf_n_78;
  wire rgf_n_79;
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
  wire [1:0]rgf_sr_ie;
  wire [15:0]rgf_tr;
  wire rst_n;
  wire [0:0]sr_bank;
  wire [15:0]\sreg/p_0_in ;
  wire [7:2]\sreg/p_2_in ;
  wire [2:0]stat;
  wire [2:0]stat_nx;

  mcbs_alu alu
       (.DI({fch_n_230,fch_n_231,fch_n_232}),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .S({fch_n_226,fch_n_227,fch_n_228,fch_n_229}),
        .\sr[4]_i_36 (alu_n_17),
        .\sr[6]_i_2 (fch_n_132),
        .\sr[6]_i_2_0 ({fch_n_224,fch_n_225}),
        .tout__1_carry__0_i_8({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .tout__1_carry__1_i_8({alu_n_8,alu_n_9,alu_n_10,alu_n_11}),
        .tout__1_carry__2_i_8({\art/p_0_in ,alu_n_13,alu_n_14,alu_n_15}),
        .tout__1_carry__3_i_3(\art/add/tout ),
        .\tr_reg[11] ({fch_n_242,fch_n_243,fch_n_244,fch_n_245}),
        .\tr_reg[11]_0 ({fch_n_246,fch_n_247,fch_n_248,fch_n_249}),
        .\tr_reg[14] ({fch_n_220,fch_n_221,fch_n_222,fch_n_223}),
        .\tr_reg[14]_0 ({fch_n_216,fch_n_217,fch_n_218,fch_n_219}),
        .\tr_reg[7] ({fch_n_181,fch_n_182,fch_n_183,fch_n_184}),
        .\tr_reg[7]_0 ({fch_n_185,fch_n_186,fch_n_187,fch_n_188}));
  mcbs_fsm ctl
       (.D({ctl_n_29,ctl_n_30,ctl_n_31,ctl_n_32,ctl_n_33,ctl_n_34}),
        .Q(stat),
        .SR(ctl_n_28),
        .\bdatw[15]_INST_0_i_6_0 (fch_n_53),
        .\bdatw[15]_INST_0_i_6_1 (fch_n_45),
        .\bdatw[9]_INST_0_i_6 (fch_n_52),
        .\bdatw[9]_INST_0_i_6_0 (fch_n_48),
        .\bdatw[9]_INST_0_i_6_1 (fch_n_46),
        .brdy(brdy),
        .brdy_0(ctl_n_5),
        .brdy_1(ctl_n_9),
        .brdy_2(ctl_n_14),
        .brdy_3(ctl_n_19),
        .clk(clk),
        .crdy(crdy),
        .crdy_0(ctl_n_8),
        .ctl_irq_ack(ctl_irq_ack),
        .\eir_fl_reg[0] (fch_n_34),
        .\eir_fl_reg[0]_0 (fch_n_49),
        .\eir_fl_reg[0]_1 (ctl_fetch),
        .\eir_fl_reg[6] (p_1_in_0),
        .fch_irq_req(fch_irq_req),
        .irq_vec(irq_vec),
        .out({fch_ir[15:14],fch_ir[12:10],fch_ir[8:7],fch_ir[2:0]}),
        .p_0_in(\pcnt/p_0_in ),
        .rgf_sr_flag({rgf_sr_c,rgf_n_11}),
        .rst_n(rst_n),
        .\stat[1]_i_3 (fch_n_42),
        .\stat_reg[0]_0 (ctl_n_10),
        .\stat_reg[0]_1 (ctl_n_11),
        .\stat_reg[0]_10 (ctl_n_27),
        .\stat_reg[0]_2 (ctl_n_12),
        .\stat_reg[0]_3 (ctl_n_15),
        .\stat_reg[0]_4 (ctl_n_16),
        .\stat_reg[0]_5 (ctl_n_17),
        .\stat_reg[0]_6 (ctl_n_21),
        .\stat_reg[0]_7 (ctl_n_22),
        .\stat_reg[0]_8 (ctl_n_24),
        .\stat_reg[0]_9 (ctl_n_26),
        .\stat_reg[1]_0 (ctl_n_1),
        .\stat_reg[1]_1 (ctl_n_6),
        .\stat_reg[1]_2 (ctl_n_13),
        .\stat_reg[1]_3 (ctl_n_18),
        .\stat_reg[1]_4 (ctl_n_25),
        .\stat_reg[1]_5 (ctl_n_35),
        .\stat_reg[1]_6 (ctl_n_36),
        .\stat_reg[1]_7 (ctl_n_37),
        .\stat_reg[1]_8 (ctl_n_38),
        .\stat_reg[2]_0 (ctl_n_0),
        .\stat_reg[2]_1 (ctl_n_20),
        .\stat_reg[2]_2 (ctl_n_23),
        .\stat_reg[2]_3 (stat_nx));
  mcbs_fch fch
       (.D(\pcnt/p_1_in ),
        .DI({fch_n_230,fch_n_231,fch_n_232}),
        .E(fch_n_189),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .Q(stat),
        .S({fch_n_226,fch_n_227,fch_n_228,fch_n_229}),
        .SR(ctl_n_28),
        .abus_0(abus_0),
        .badr(badr),
        .\badr[10]_INST_0_i_1 ({fch_n_242,fch_n_243,fch_n_244,fch_n_245}),
        .\badr[11]_INST_0_i_1 (fch_n_129),
        .\badr[14]_INST_0_i_1 ({fch_n_216,fch_n_217,fch_n_218,fch_n_219}),
        .\badr[15]_INST_0_i_1 ({fch_n_220,fch_n_221,fch_n_222,fch_n_223}),
        .\badr[15]_INST_0_i_1_0 ({fch_n_224,fch_n_225}),
        .\badr[15]_INST_0_i_1_1 ({rgf_n_0,rgf_n_1}),
        .\badr[15]_INST_0_i_1_2 (rgf_n_81),
        .\badr[15]_INST_0_i_29_0 (rgf_n_56),
        .\badr[15]_INST_0_i_29_1 (rgf_n_54),
        .\badr[15]_INST_0_i_29_2 (rgf_n_53),
        .\badr[15]_INST_0_i_3_0 ({rgf_n_2,rgf_n_3}),
        .\badr[15]_INST_0_i_48_0 (rgf_n_58),
        .\badr[15]_INST_0_i_49_0 (rgf_n_55),
        .\badr[1]_INST_0_i_1 (fch_n_125),
        .\badr[4]_INST_0_i_1 (rgf_n_82),
        .\badr[6]_INST_0_i_1 ({fch_n_181,fch_n_182,fch_n_183,fch_n_184}),
        .badr_0_sp_1(ctl_n_37),
        .badrx(badrx),
        .\badrx[15] (rgf_tr),
        .bbus_o(bbus_o),
        .\bcmd[2] (ctl_n_26),
        .bdatr(bdatr[15]),
        .bdatw(bdatw),
        .\bdatw[0]_0 (rgf_n_98),
        .\bdatw[0]_1 (rgf_n_99),
        .\bdatw[10]_0 (rgf_n_107),
        .\bdatw[10]_1 (rgf_n_116),
        .\bdatw[10]_2 (rgf_n_117),
        .\bdatw[11]_0 (rgf_n_119),
        .\bdatw[11]_INST_0_i_2_0 (fch_n_124),
        .\bdatw[12]_0 (rgf_n_121),
        .\bdatw[12]_INST_0_i_2_0 (fch_n_123),
        .\bdatw[13]_0 (rgf_n_123),
        .\bdatw[14]_0 (rgf_n_125),
        .\bdatw[15]_0 (rgf_n_127),
        .\bdatw[15]_INST_0_i_56 (ctl_n_21),
        .\bdatw[15]_INST_0_i_59_0 (ctl_n_16),
        .\bdatw[15]_INST_0_i_60_0 (rgf_n_51),
        .\bdatw[1]_0 (rgf_n_104),
        .\bdatw[3]_0 (rgf_n_109),
        .\bdatw[4]_0 (rgf_n_111),
        .\bdatw[8]_0 (rgf_n_113),
        .\bdatw[8]_INST_0_i_2_0 (fch_n_122),
        .\bdatw[8]_INST_0_i_2_1 (fch_n_131),
        .\bdatw[9]_0 (rgf_n_115),
        .\bdatw[9]_INST_0_i_2_0 (fch_n_121),
        .\bdatw[9]_INST_0_i_2_1 (fch_n_233),
        .bdatw_0_sp_1(ctl_n_0),
        .bdatw_10_sp_1(rgf_n_106),
        .bdatw_11_sp_1(rgf_n_118),
        .bdatw_12_sp_1(rgf_n_120),
        .bdatw_13_sp_1(rgf_n_122),
        .bdatw_14_sp_1(rgf_n_124),
        .bdatw_15_sp_1(rgf_n_126),
        .bdatw_1_sp_1(rgf_n_105),
        .bdatw_3_sp_1(rgf_n_108),
        .bdatw_4_sp_1(rgf_n_110),
        .bdatw_8_sp_1(rgf_n_112),
        .bdatw_9_sp_1(rgf_n_114),
        .brdy(brdy),
        .brdy_0(fch_n_199),
        .cbus(cbus),
        .cbus_i(cbus_i[15]),
        .cbus_sel_cr(cbus_sel_cr),
        .ccmd(ccmd),
        .\ccmd[0]_INST_0_i_1_0 (ctl_n_1),
        .\ccmd[3]_INST_0_i_17_0 (ctl_n_38),
        .\ccmd[3]_INST_0_i_17_1 (ctl_n_35),
        .\ccmd[3]_INST_0_i_1_0 (ctl_n_11),
        .\ccmd[4]_INST_0_i_2_0 (ctl_n_13),
        .\ccmd[4]_INST_0_i_6_0 (ctl_n_6),
        .clk(clk),
        .cpuid(cpuid),
        .crdy(crdy),
        .crdy_0(fch_n_48),
        .crdy_1(fch_n_52),
        .ctl_copro(ctl_copro),
        .ctl_fetch_ext(ctl_fetch_ext),
        .ctl_fetch_fl_reg_0(ctl_fetch),
        .ctl_fetch_fl_reg_1(rgf_n_57),
        .ctl_fetch_fl_reg_2(rgf_n_61),
        .ctl_fetch_inferred_i_11_0(rgf_n_249),
        .ctl_fetch_inferred_i_11_1(ctl_n_22),
        .ctl_fetch_inferred_i_4_0(ctl_n_20),
        .ctl_irq_ack(ctl_irq_ack),
        .ctl_sela(ctl_sela),
        .ctl_selb(ctl_selb),
        .ctl_sp_dec(ctl_sp_dec),
        .ctl_sp_inc(ctl_sp_inc),
        .\eir_fl_reg[6]_0 ({ctl_n_29,ctl_n_30,ctl_n_31,ctl_n_32,ctl_n_33,ctl_n_34}),
        .fch_irq_req(fch_irq_req),
        .fch_pc(fch_pc),
        .fdat(fdat),
        .\grn_reg[15] (fch_n_118),
        .\grn_reg[4] (fch_n_116),
        .in0(ctl_fetch),
        .irq_lev(irq_lev),
        .\iv[0]_i_2_0 (rgf_n_224),
        .\iv[0]_i_2_1 (rgf_n_236),
        .\iv[0]_i_6_0 (rgf_n_179),
        .\iv[0]_i_6_1 (rgf_n_186),
        .\iv[11]_i_2_0 (rgf_n_181),
        .\iv[11]_i_2_1 (rgf_n_175),
        .\iv[11]_i_2_2 (rgf_n_200),
        .\iv[11]_i_2_3 (rgf_n_191),
        .\iv[12]_i_2_0 (rgf_n_161),
        .\iv[12]_i_5_0 (rgf_n_164),
        .\iv[13]_i_2_0 (rgf_n_177),
        .\iv[13]_i_2_1 (rgf_n_197),
        .\iv[13]_i_2_2 (rgf_n_198),
        .\iv[13]_i_33_0 (rgf_n_79),
        .\iv[14]_i_21 (rgf_n_247),
        .\iv[14]_i_22_0 (rgf_n_80),
        .\iv[14]_i_2_0 (rgf_n_165),
        .\iv[14]_i_2_1 (rgf_n_233),
        .\iv[14]_i_2_2 (rgf_n_187),
        .\iv[14]_i_33_0 (fch_n_120),
        .\iv[15]_i_17_0 (ctl_n_24),
        .\iv[15]_i_3_0 (rgf_n_60),
        .\iv[15]_i_5_0 (rgf_n_250),
        .\iv[15]_i_5_1 (rgf_n_223),
        .\iv[15]_i_5_2 (rgf_n_230),
        .\iv[1]_i_2_0 (rgf_n_168),
        .\iv[1]_i_2_1 (rgf_n_240),
        .\iv[1]_i_2_2 (rgf_n_239),
        .\iv[1]_i_9_0 (rgf_n_188),
        .\iv[1]_i_9_1 (rgf_n_235),
        .\iv[2]_i_2_0 (rgf_n_171),
        .\iv[2]_i_2_1 (rgf_n_243),
        .\iv[3]_i_2_0 (rgf_n_226),
        .\iv[3]_i_2_1 (rgf_n_229),
        .\iv[3]_i_7_0 (rgf_n_201),
        .\iv[3]_i_7_1 (rgf_n_202),
        .\iv[4]_i_2_0 (rgf_n_244),
        .\iv[4]_i_2_1 (rgf_n_231),
        .\iv[4]_i_6_0 (rgf_n_204),
        .\iv[4]_i_6_1 (rgf_n_237),
        .\iv[4]_i_7_0 (rgf_n_185),
        .\iv[5]_i_2_0 (rgf_n_227),
        .\iv[5]_i_7_0 (rgf_n_242),
        .\iv[5]_i_8_0 (rgf_n_178),
        .\iv[6]_i_2_0 (rgf_n_183),
        .\iv[6]_i_5_0 (rgf_n_173),
        .\iv[6]_i_5_1 (rgf_n_222),
        .\iv[6]_i_5_2 (rgf_n_163),
        .\iv[7]_i_2_0 (rgf_n_182),
        .\iv[7]_i_2_1 (rgf_n_232),
        .\iv[7]_i_2_2 (rgf_n_203),
        .\iv[8]_i_24 (rgf_n_78),
        .\iv[8]_i_2_0 (rgf_n_176),
        .\iv[8]_i_2_1 (rgf_n_194),
        .\iv[9]_i_2_0 (rgf_n_241),
        .\iv[9]_i_7_0 (rgf_n_234),
        .out({fch_ir[15:10],fch_ir[8:7],fch_ir[3:0]}),
        .p_0_in({p_0_in[7:5],p_0_in[1]}),
        .p_0_in_0({\sreg/p_0_in [15:12],\sreg/p_0_in [0]}),
        .p_0_in_1(\pcnt/p_0_in ),
        .\pc_reg[0] (rgf_n_160),
        .\pc_reg[10] (rgf_n_150),
        .\pc_reg[11] (rgf_n_149),
        .\pc_reg[12] (rgf_n_148),
        .\pc_reg[13] (rgf_n_147),
        .\pc_reg[14] (rgf_n_146),
        .\pc_reg[15] (fadr),
        .\pc_reg[15]_0 (rgf_n_129),
        .\pc_reg[1] (rgf_n_159),
        .\pc_reg[2] (rgf_n_158),
        .\pc_reg[3] (rgf_n_157),
        .\pc_reg[4] (rgf_n_156),
        .\pc_reg[5] (rgf_n_155),
        .\pc_reg[6] (rgf_n_154),
        .\pc_reg[7] (rgf_n_153),
        .\pc_reg[8] (rgf_n_152),
        .\pc_reg[9] (rgf_n_151),
        .read_cyc(read_cyc),
        .rst_n(rst_n),
        .rst_n_0(fch_n_54),
        .rst_n_fl_reg_0(p_1_in_0),
        .rst_n_fl_reg_1(fch_n_34),
        .rst_n_fl_reg_2(fch_n_42),
        .rst_n_fl_reg_3(fch_n_45),
        .rst_n_fl_reg_4(fch_n_46),
        .rst_n_fl_reg_5(fch_n_49),
        .rst_n_fl_reg_6(fch_n_53),
        .rst_n_fl_reg_7(fch_n_127),
        .\sp[15]_i_5_0 (ctl_n_14),
        .\sp_reg[0] (rgf_n_128),
        .\sp_reg[10] (rgf_n_85),
        .\sp_reg[11] (rgf_n_84),
        .\sp_reg[12] (rgf_n_91),
        .\sp_reg[13] (rgf_n_90),
        .\sp_reg[14] (rgf_n_83),
        .\sp_reg[15] ({fch_n_99,fch_n_100,fch_n_101,fch_n_102,fch_n_103,fch_n_104,fch_n_105,fch_n_106,fch_n_107,fch_n_108,fch_n_109,fch_n_110,fch_n_111,fch_n_112,fch_n_113,fch_n_114}),
        .\sp_reg[15]_0 (rgf_n_89),
        .\sp_reg[1] (rgf_n_88),
        .\sp_reg[2] (rgf_n_87),
        .\sp_reg[3] (rgf_n_97),
        .\sp_reg[4] (rgf_n_86),
        .\sp_reg[5] (rgf_n_96),
        .\sp_reg[6] (rgf_n_95),
        .\sp_reg[7] (rgf_n_94),
        .\sp_reg[8] (rgf_n_93),
        .\sp_reg[9] (rgf_n_92),
        .\sr[0]_i_5_0 (ctl_n_12),
        .\sr[0]_i_5_1 (ctl_n_36),
        .\sr[0]_i_5_2 (ctl_n_18),
        .\sr[0]_i_5_3 (ctl_n_9),
        .\sr[4]_i_14_0 (rgf_n_189),
        .\sr[4]_i_15_0 (rgf_n_199),
        .\sr[4]_i_15_1 (rgf_n_228),
        .\sr[4]_i_17_0 (rgf_n_162),
        .\sr[4]_i_18_0 (rgf_n_166),
        .\sr[4]_i_18_1 (rgf_n_172),
        .\sr[4]_i_18_2 (rgf_n_221),
        .\sr[4]_i_6_0 (alu_n_17),
        .\sr[4]_i_7_0 (rgf_n_238),
        .\sr[4]_i_8_0 (rgf_n_169),
        .\sr[4]_i_8_1 (rgf_n_184),
        .\sr[4]_i_8_2 (rgf_n_193),
        .\sr[4]_i_8_3 (rgf_n_192),
        .\sr[5]_i_2_0 (rgf_n_174),
        .\sr[5]_i_2_1 (rgf_n_251),
        .\sr[6]_i_3_0 (rgf_n_245),
        .\sr[6]_i_3_1 (rgf_n_195),
        .\sr[6]_i_3_2 (rgf_n_246),
        .\sr[7]_i_4_0 (rgf_n_52),
        .\sr[7]_i_6_0 (ctl_n_27),
        .\sr_reg[0] (fch_n_190),
        .\sr_reg[0]_0 (fch_n_191),
        .\sr_reg[0]_1 (fch_n_192),
        .\sr_reg[0]_10 (fch_n_238),
        .\sr_reg[0]_11 (fch_n_239),
        .\sr_reg[0]_12 (fch_n_240),
        .\sr_reg[0]_13 (fch_n_241),
        .\sr_reg[0]_2 (fch_n_195),
        .\sr_reg[0]_3 (fch_n_196),
        .\sr_reg[0]_4 (fch_n_197),
        .\sr_reg[0]_5 (fch_n_198),
        .\sr_reg[0]_6 (fch_n_234),
        .\sr_reg[0]_7 (fch_n_235),
        .\sr_reg[0]_8 (fch_n_236),
        .\sr_reg[0]_9 (fch_n_237),
        .\sr_reg[10] (fch_n_60),
        .\sr_reg[15] ({\sreg/p_2_in [7:4],\sreg/p_2_in [2],rgf_n_9,rgf_sr_c,rgf_n_11,rgf_n_12,rgf_sr_ie,sr_bank}),
        .\sr_reg[6] (\art/add/tout ),
        .\stat[0]_i_12_0 (ctl_n_15),
        .\stat[0]_i_13_0 (rgf_iv_ve),
        .\stat[0]_i_13_1 (ctl_n_5),
        .\stat[0]_i_3_0 (ctl_n_17),
        .\stat[0]_i_3_1 (ctl_n_8),
        .\stat[1]_i_4_0 (ctl_n_25),
        .\stat_reg[0] (stat_nx),
        .\stat_reg[0]_0 (bcmd[0]),
        .\stat_reg[0]_1 (fch_n_115),
        .\stat_reg[0]_2 (ctl_n_23),
        .\stat_reg[0]_3 (rgf_n_59),
        .\stat_reg[1] (acmd),
        .\stat_reg[1]_0 (fch_n_126),
        .\stat_reg[1]_1 (rgf_n_50),
        .\stat_reg[1]_2 (ctl_n_10),
        .\stat_reg[2] (bcmd[1]),
        .\stat_reg[2]_0 (fch_n_35),
        .\stat_reg[2]_1 (fch_n_36),
        .\stat_reg[2]_10 (fch_n_117),
        .\stat_reg[2]_11 (fch_n_119),
        .\stat_reg[2]_12 (fch_n_128),
        .\stat_reg[2]_13 (fch_n_130),
        .\stat_reg[2]_14 (ctl_n_19),
        .\stat_reg[2]_2 (p_1_in),
        .\stat_reg[2]_3 (bcmd[2]),
        .\stat_reg[2]_4 (fch_n_61),
        .\stat_reg[2]_5 (fch_n_78),
        .\stat_reg[2]_6 (fch_n_79),
        .\stat_reg[2]_7 (fch_n_80),
        .\stat_reg[2]_8 (fch_n_81),
        .\stat_reg[2]_9 (fch_n_82),
        .tout__1_carry__0_i_1_0({fch_n_185,fch_n_186,fch_n_187,fch_n_188}),
        .tout__1_carry__1_i_1_0({fch_n_246,fch_n_247,fch_n_248,fch_n_249}),
        .tout__1_carry_i_8_0(fch_n_132),
        .\tr_reg[0] (mem_n_15),
        .\tr_reg[10] (mem_n_5),
        .\tr_reg[10]_0 (rgf_n_167),
        .\tr_reg[11] ({alu_n_8,alu_n_9,alu_n_10,alu_n_11}),
        .\tr_reg[11]_0 (mem_n_4),
        .\tr_reg[12] (mem_n_3),
        .\tr_reg[13] (mem_n_2),
        .\tr_reg[14] (mem_n_0),
        .\tr_reg[15] ({\art/p_0_in ,alu_n_13,alu_n_14,alu_n_15}),
        .\tr_reg[15]_0 (mem_n_16),
        .\tr_reg[15]_1 (rgf_n_180),
        .\tr_reg[1] (mem_n_14),
        .\tr_reg[2] (mem_n_13),
        .\tr_reg[2]_0 (rgf_n_170),
        .\tr_reg[2]_1 (rgf_n_190),
        .\tr_reg[3] (mem_n_12),
        .\tr_reg[3]_0 (rgf_n_225),
        .\tr_reg[4] (mem_n_11),
        .\tr_reg[5] (mem_n_10),
        .\tr_reg[5]_0 (rgf_n_196),
        .\tr_reg[6] (mem_n_9),
        .\tr_reg[7] ({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .\tr_reg[7]_0 (mem_n_8),
        .\tr_reg[8] (mem_n_7),
        .\tr_reg[9] (mem_n_6));
  mcbs_mem mem
       (.bcmd({bcmd[2],bcmd[0]}),
        .bdatr(bdatr),
        .brdy(brdy),
        .cbus_i(cbus_i[14:0]),
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
        .\read_cyc_reg[0]_0 (fch_n_199),
        .\read_cyc_reg[1] (mem_n_0),
        .\read_cyc_reg[1]_0 (mem_n_2),
        .\read_cyc_reg[1]_1 (mem_n_3),
        .\read_cyc_reg[1]_2 (mem_n_4),
        .\read_cyc_reg[1]_3 (mem_n_5),
        .\read_cyc_reg[1]_4 (mem_n_6),
        .\read_cyc_reg[1]_5 (mem_n_7),
        .\read_cyc_reg[1]_6 (mem_n_16));
  mcbs_rgf rgf
       (.D(\pcnt/p_1_in ),
        .E(fch_n_238),
        .Q(stat[0]),
        .abus_0(abus_0),
        .abus_o(abus_o),
        .abus_o_15_sp_1(fch_n_118),
        .abus_o_4_sp_1(fch_n_116),
        .\badr[11]_INST_0_i_1 (rgf_n_202),
        .\badr[12]_INST_0_i_1 (rgf_n_164),
        .\badr[13]_INST_0_i_1 (rgf_n_242),
        .\badr[14]_INST_0_i_1 (rgf_n_163),
        .\badr[15]_INST_0_i_1 (rgf_n_246),
        .\badr[15]_INST_0_i_52 ({fch_ir[15:11],fch_ir[3],fch_ir[0]}),
        .\badr[3]_INST_0_i_1 (rgf_n_166),
        .\badr[3]_INST_0_i_1_0 (rgf_n_182),
        .\badr[4]_INST_0_i_1 (rgf_n_185),
        .\badr[4]_INST_0_i_1_0 (rgf_n_204),
        .\badr[5]_INST_0_i_1 (rgf_n_178),
        .\badr[7]_INST_0_i_1 (rgf_n_181),
        .\badr[8]_INST_0_i_1 (rgf_n_237),
        .\badr[9]_INST_0_i_1 (fch_n_117),
        .\bdatw[12]_INST_0_i_2 (rgf_n_180),
        .\bdatw[8]_INST_0_i_2 (fch_n_35),
        .\bdatw[9]_INST_0_i_2 (rgf_n_176),
        .\bdatw[9]_INST_0_i_2_0 (rgf_n_188),
        .\bdatw[9]_INST_0_i_2_1 (rgf_n_199),
        .\bdatw[9]_INST_0_i_2_2 (rgf_n_234),
        .\bdatw[9]_INST_0_i_2_3 (rgf_n_235),
        .cbus_sel_cr(cbus_sel_cr),
        .clk(clk),
        .ctl_copro(ctl_copro),
        .ctl_fetch_ext(ctl_fetch_ext),
        .ctl_sela(ctl_sela),
        .ctl_selb(ctl_selb),
        .ctl_sp_dec(ctl_sp_dec),
        .ctl_sp_inc(ctl_sp_inc),
        .fch_irq_req(fch_irq_req),
        .fch_pc(fch_pc),
        .\grn_reg[15] ({rgf_n_2,rgf_n_3}),
        .\grn_reg[15]_0 (rgf_n_79),
        .\grn_reg[15]_1 (rgf_n_80),
        .\grn_reg[15]_10 (fch_n_239),
        .\grn_reg[15]_11 (fch_n_190),
        .\grn_reg[15]_12 (fch_n_236),
        .\grn_reg[15]_13 (fch_n_197),
        .\grn_reg[15]_14 (fch_n_241),
        .\grn_reg[15]_15 (fch_n_192),
        .\grn_reg[15]_16 (fch_n_234),
        .\grn_reg[15]_17 (fch_n_195),
        .\grn_reg[15]_2 (rgf_n_81),
        .\grn_reg[15]_3 (fch_n_189),
        .\grn_reg[15]_4 (fch_n_237),
        .\grn_reg[15]_5 (fch_n_198),
        .\grn_reg[15]_6 (fch_n_240),
        .\grn_reg[15]_7 (fch_n_191),
        .\grn_reg[15]_8 (fch_n_235),
        .\grn_reg[15]_9 (fch_n_196),
        .\grn_reg[4] (rgf_n_78),
        .\grn_reg[4]_0 (rgf_n_82),
        .irq(irq),
        .irq_0(rgf_n_55),
        .irq_lev(irq_lev),
        .\iv[0]_i_5 (fch_n_129),
        .\iv[10]_i_2 (fch_n_120),
        .\iv[11]_i_23 (rgf_n_175),
        .\iv[11]_i_30 (rgf_n_201),
        .\iv[12]_i_19 (rgf_n_228),
        .\iv[12]_i_20 (rgf_n_221),
        .\iv[12]_i_20_0 (rgf_n_226),
        .\iv[12]_i_20_1 (rgf_n_232),
        .\iv[12]_i_5 (fch_n_233),
        .\iv[13]_i_21 (rgf_n_241),
        .\iv[13]_i_25 (rgf_n_177),
        .\iv[13]_i_25_0 (rgf_n_224),
        .\iv[13]_i_25_1 (rgf_n_231),
        .\iv[13]_i_31 (rgf_n_198),
        .\iv[13]_i_5 (fch_n_125),
        .\iv[14]_i_27 (rgf_n_233),
        .\iv[14]_i_28 (rgf_n_187),
        .\iv[14]_i_28_0 (rgf_n_192),
        .\iv[14]_i_31 (rgf_n_243),
        .\iv[14]_i_35 (rgf_n_168),
        .\iv[14]_i_35_0 (rgf_n_227),
        .\iv[14]_i_8 (fch_n_131),
        .\iv[14]_i_8_0 (fch_n_121),
        .\iv[15]_i_33 (rgf_n_251),
        .\iv[15]_i_35 (rgf_n_161),
        .\iv[15]_i_35_0 (rgf_n_193),
        .\iv[15]_i_35_1 (rgf_n_229),
        .\iv[15]_i_35_2 (rgf_n_239),
        .\iv[15]_i_5 (fch_n_119),
        .\iv[15]_i_51 (rgf_n_171),
        .\iv[15]_i_51_0 (rgf_n_230),
        .\iv[15]_i_52 (rgf_n_236),
        .\iv[15]_i_52_0 (rgf_n_244),
        .\iv[15]_i_52_1 (ctl_n_0),
        .\iv[15]_i_52_2 (p_1_in),
        .\iv[15]_i_54 (rgf_n_223),
        .\iv[15]_i_56 (rgf_n_191),
        .\iv[15]_i_57 (rgf_n_183),
        .\iv[15]_i_58 (rgf_n_172),
        .\iv[15]_i_59 (rgf_n_222),
        .\iv[15]_i_5_0 (fch_n_127),
        .\iv[15]_i_62 (fch_n_36),
        .\iv[2]_i_14 (rgf_n_190),
        .\iv[2]_i_2 (acmd),
        .\iv[2]_i_2_0 (fch_n_122),
        .\iv[2]_i_2_1 (fch_n_123),
        .\iv[2]_i_2_2 (fch_n_126),
        .\iv[7]_i_16 (rgf_n_195),
        .\iv[8]_i_14 (fch_n_115),
        .\iv[8]_i_21 (rgf_n_184),
        .\iv[8]_i_25 (rgf_n_179),
        .\iv[8]_i_28 (rgf_n_194),
        .\iv_reg[0] (rgf_iv_ve),
        .out({rgf_n_0,rgf_n_1}),
        .p_0_in({p_0_in[7:5],p_0_in[1]}),
        .p_0_in_0(\pcnt/p_0_in ),
        .p_0_in_1({\sreg/p_0_in [15:12],\sreg/p_0_in [0]}),
        .\pc[15]_i_3 (ctl_fetch),
        .\pc_reg[0] (rgf_n_160),
        .\pc_reg[10] (rgf_n_150),
        .\pc_reg[11] (rgf_n_149),
        .\pc_reg[12] (rgf_n_148),
        .\pc_reg[13] (rgf_n_147),
        .\pc_reg[14] (rgf_n_146),
        .\pc_reg[15] (fadr),
        .\pc_reg[15]_0 (rgf_n_129),
        .\pc_reg[1] (rgf_n_159),
        .\pc_reg[2] (rgf_n_158),
        .\pc_reg[3] (rgf_n_157),
        .\pc_reg[4] (rgf_n_156),
        .\pc_reg[5] (rgf_n_155),
        .\pc_reg[6] (rgf_n_154),
        .\pc_reg[7] (rgf_n_153),
        .\pc_reg[8] (rgf_n_152),
        .\pc_reg[9] (rgf_n_151),
        .rst_n(rst_n),
        .\sp_reg[0] (rgf_n_128),
        .\sp_reg[10] (rgf_n_85),
        .\sp_reg[11] (rgf_n_84),
        .\sp_reg[12] (rgf_n_91),
        .\sp_reg[13] (rgf_n_90),
        .\sp_reg[14] (rgf_n_83),
        .\sp_reg[15] (rgf_n_89),
        .\sp_reg[15]_0 ({fch_n_99,fch_n_100,fch_n_101,fch_n_102,fch_n_103,fch_n_104,fch_n_105,fch_n_106,fch_n_107,fch_n_108,fch_n_109,fch_n_110,fch_n_111,fch_n_112,fch_n_113,fch_n_114}),
        .\sp_reg[1] (rgf_n_88),
        .\sp_reg[2] (rgf_n_87),
        .\sp_reg[3] (rgf_n_97),
        .\sp_reg[4] (rgf_n_86),
        .\sp_reg[5] (rgf_n_96),
        .\sp_reg[6] (rgf_n_95),
        .\sp_reg[7] (rgf_n_94),
        .\sp_reg[8] (rgf_n_93),
        .\sp_reg[9] (rgf_n_92),
        .\sr[4]_i_23 (fch_n_130),
        .\sr[4]_i_23_0 (fch_n_128),
        .\sr[6]_i_3 (fch_n_124),
        .\sr[6]_i_9 (rgf_n_174),
        .\sr_reg[10] (fch_n_60),
        .\sr_reg[15] ({\sreg/p_2_in [7:4],\sreg/p_2_in [2],rgf_n_9,rgf_sr_c,rgf_n_11,rgf_n_12,rgf_sr_ie,sr_bank}),
        .\sr_reg[1] (fch_n_54),
        .\sr_reg[2] (rgf_n_249),
        .\sr_reg[2]_0 (fch_n_82),
        .\sr_reg[3] (fch_n_81),
        .\sr_reg[4] (rgf_n_58),
        .\sr_reg[4]_0 (fch_n_80),
        .\sr_reg[5] (fch_n_79),
        .\sr_reg[6] (rgf_n_50),
        .\sr_reg[6]_0 (rgf_n_52),
        .\sr_reg[6]_1 (rgf_n_53),
        .\sr_reg[6]_10 (rgf_n_197),
        .\sr_reg[6]_11 (rgf_n_200),
        .\sr_reg[6]_12 (rgf_n_203),
        .\sr_reg[6]_13 (rgf_n_238),
        .\sr_reg[6]_14 (rgf_n_240),
        .\sr_reg[6]_15 (rgf_n_245),
        .\sr_reg[6]_16 (rgf_n_250),
        .\sr_reg[6]_17 (fch_n_78),
        .\sr_reg[6]_2 (rgf_n_54),
        .\sr_reg[6]_3 (rgf_n_61),
        .\sr_reg[6]_4 (rgf_n_162),
        .\sr_reg[6]_5 (rgf_n_165),
        .\sr_reg[6]_6 (rgf_n_169),
        .\sr_reg[6]_7 (rgf_n_173),
        .\sr_reg[6]_8 (rgf_n_186),
        .\sr_reg[6]_9 (rgf_n_189),
        .\sr_reg[7] (rgf_n_56),
        .\sr_reg[7]_0 (rgf_n_57),
        .\sr_reg[7]_1 (rgf_n_59),
        .\sr_reg[7]_2 (rgf_n_60),
        .\sr_reg[7]_3 (fch_n_61),
        .\stat_reg[0] (rgf_n_51),
        .\stat_reg[1] (rgf_n_167),
        .\stat_reg[1]_0 (rgf_n_170),
        .\stat_reg[1]_1 (rgf_n_196),
        .\stat_reg[1]_2 (rgf_n_225),
        .\stat_reg[1]_3 (ctl_n_21),
        .\stat_reg[2] (rgf_n_98),
        .\stat_reg[2]_0 (rgf_n_99),
        .\stat_reg[2]_1 (rgf_n_105),
        .\stat_reg[2]_10 (rgf_n_117),
        .\stat_reg[2]_11 (rgf_n_118),
        .\stat_reg[2]_12 (rgf_n_119),
        .\stat_reg[2]_13 (rgf_n_120),
        .\stat_reg[2]_14 (rgf_n_121),
        .\stat_reg[2]_15 (rgf_n_122),
        .\stat_reg[2]_16 (rgf_n_123),
        .\stat_reg[2]_17 (rgf_n_124),
        .\stat_reg[2]_18 (rgf_n_125),
        .\stat_reg[2]_19 (rgf_n_126),
        .\stat_reg[2]_2 (rgf_n_107),
        .\stat_reg[2]_20 (rgf_n_127),
        .\stat_reg[2]_21 (rgf_n_247),
        .\stat_reg[2]_3 (rgf_n_109),
        .\stat_reg[2]_4 (rgf_n_111),
        .\stat_reg[2]_5 (rgf_n_112),
        .\stat_reg[2]_6 (rgf_n_113),
        .\stat_reg[2]_7 (rgf_n_114),
        .\stat_reg[2]_8 (rgf_n_115),
        .\stat_reg[2]_9 (rgf_n_116),
        .\tr_reg[15] (rgf_tr),
        .\tr_reg[15]_0 (cbus),
        .\tr_reg[1] (rgf_n_104),
        .\tr_reg[2] (rgf_n_106),
        .\tr_reg[3] (rgf_n_108),
        .\tr_reg[4] (rgf_n_110));
endmodule
