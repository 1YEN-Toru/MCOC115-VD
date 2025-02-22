
module mcbs_alu
   (O,
    tout__1_carry__0_i_8,
    tout__1_carry__1_i_8,
    tout__1_carry__2_i_8,
    tout__1_carry__3_i_3,
    \sr[4]_i_16 ,
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
  output \sr[4]_i_16 ;
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
  wire \sr[4]_i_16 ;
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
        .\sr[4]_i_16 (\sr[4]_i_16 ),
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
    \sr[4]_i_16_0 ,
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
  output \sr[4]_i_16_0 ;
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
  wire \sr[4]_i_15_n_0 ;
  wire \sr[4]_i_16_0 ;
  wire \sr[4]_i_16_n_0 ;
  wire \sr[4]_i_17_n_0 ;
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
    \sr[4]_i_13 
       (.I0(\sr[4]_i_15_n_0 ),
        .I1(tout__1_carry__0_i_8[0]),
        .I2(tout__1_carry__0_i_8[1]),
        .I3(O[3]),
        .I4(tout__1_carry__1_i_8[0]),
        .I5(\sr[4]_i_16_n_0 ),
        .O(\sr[4]_i_16_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_15 
       (.I0(tout__1_carry__0_i_8[3]),
        .I1(tout__1_carry__2_i_8[2]),
        .I2(tout__1_carry__0_i_8[2]),
        .I3(tout__1_carry__2_i_8[1]),
        .O(\sr[4]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sr[4]_i_16 
       (.I0(tout__1_carry__2_i_8[0]),
        .I1(tout__1_carry__1_i_8[3]),
        .I2(O[2]),
        .I3(O[1]),
        .I4(\sr[4]_i_17_n_0 ),
        .O(\sr[4]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_17 
       (.I0(tout__1_carry__1_i_8[1]),
        .I1(tout__1_carry__1_i_8[2]),
        .I2(O[0]),
        .I3(tout__1_carry__2_i_8[3]),
        .O(\sr[4]_i_17_n_0 ));
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
    \sr[4]_i_16 ,
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
  output \sr[4]_i_16 ;
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
  wire \sr[4]_i_16 ;
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
        .\sr[4]_i_16_0 (\sr[4]_i_16 ),
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
   (.out({ir[15],ir[12],ir[1],ir[0]}),
    .rst_n_fl_reg_0({eir[6],eir[5],eir[4],eir[3],eir[2],eir[1]}),
    ccmd,
    ctl_copro,
    brdy_0,
    in0,
    rst_n_fl_reg_1,
    rst_n_fl_reg_2,
    rst_n_fl_reg_3,
    ctl_sela_rn,
    rst_n_fl_reg_4,
    \stat_reg[0] ,
    \stat_reg[0]_0 ,
    crdy_0,
    crdy_1,
    rst_n_fl_reg_5,
    rst_n_0,
    cbus_sel_cr,
    p_0_in,
    cbus,
    alu_sr_flag,
    D,
    \iv[15]_i_4_0 ,
    \sp_reg[15] ,
    rst_n_fl_reg_6,
    \sr_reg[0] ,
    rst_n_fl_reg_7,
    \sr_reg[0]_0 ,
    \badr[15]_INST_0_i_27_0 ,
    \badr[0]_INST_0_i_12_0 ,
    \badr[15]_INST_0_i_29_0 ,
    \stat_reg[2] ,
    \bdatw[15]_INST_0_i_60_0 ,
    \bdatw[15]_INST_0_i_59_0 ,
    abus_o,
    bbus_o,
    bdatw,
    badrx,
    \badr[6]_INST_0_i_1_0 ,
    tout__1_carry__0_i_1_0,
    bcmd,
    E,
    \sr_reg[0]_1 ,
    \sr_reg[0]_2 ,
    \sr_reg[0]_3 ,
    \sr_reg[0]_4 ,
    \sr_reg[0]_5 ,
    \sr_reg[0]_6 ,
    \sr_reg[0]_7 ,
    \sr_reg[0]_8 ,
    \sr_reg[0]_9 ,
    \sr_reg[0]_10 ,
    \sr_reg[0]_11 ,
    \sr_reg[0]_12 ,
    \sr_reg[0]_13 ,
    \sr_reg[0]_14 ,
    \sr_reg[0]_15 ,
    \badr[14]_INST_0_i_1_0 ,
    \badr[15]_INST_0_i_1_0 ,
    \badr[15]_INST_0_i_1_1 ,
    \badr[15]_INST_0_i_1_2 ,
    S,
    DI,
    brdy_1,
    badr,
    brdy_2,
    \badr[10]_INST_0_i_1_0 ,
    tout__1_carry__1_i_1_0,
    fch_irq_req,
    clk,
    ctl_fetch_fl_reg_0,
    rst_n,
    ctl_fetch_ext_fl_reg_0,
    Q,
    ctl_fetch_fl_reg_1,
    brdy,
    crdy,
    \iv[15]_i_12_0 ,
    ctl_fetch_fl_reg_2,
    \stat_reg[0]_1 ,
    \stat[0]_i_5_0 ,
    .badr_0_sp_1(badr_0_sn_1),
    \bdatw[8]_INST_0_i_6_0 ,
    \iv_reg[0] ,
    \bdatw[11]_INST_0_i_2_0 ,
    tout__1_carry_i_25_0,
    \stat_reg[1] ,
    \stat_reg[1]_0 ,
    \bdatw[15]_INST_0_i_81_0 ,
    \stat_reg[2]_0 ,
    \stat_reg[2]_1 ,
    \bcmd[1] ,
    \badr[15]_INST_0_i_31_0 ,
    \stat[0]_i_5_1 ,
    \sr_reg[15] ,
    ctl_fetch_inferred_i_14_0,
    \sr_reg[6] ,
    \pc_reg[0] ,
    \bdatw[15]_INST_0_i_6_0 ,
    fch_pc,
    \pc_reg[0]_0 ,
    \sp_reg[15]_0 ,
    O,
    \sp_reg[3] ,
    \sp_reg[7] ,
    sp_dec_0,
    \sp_reg[11] ,
    \sp_reg[15]_1 ,
    \sp_reg[15]_2 ,
    \badr[0]_0 ,
    \badr[0]_1 ,
    \bdatw[15]_INST_0_i_6_1 ,
    \bdatw[15]_INST_0_i_7_0 ,
    \bdatw[15]_INST_0_i_7_1 ,
    \iv[14]_i_36_0 ,
    \iv[14]_i_36_1 ,
    \bdatw[15]_INST_0_i_7_2 ,
    \bdatw[15]_INST_0_i_6_2 ,
    \bdatw[15]_INST_0_i_6_3 ,
    \bdatw[15]_INST_0_i_6_4 ,
    \bdatw[15]_INST_0_i_6_5 ,
    \bdatw[15]_INST_0_i_7_3 ,
    \bdatw[15]_INST_0_i_7_4 ,
    \bdatw[15]_INST_0_i_7_5 ,
    \badr[1]_INST_0_i_1_0 ,
    \badrx[15] ,
    \badr[2]_INST_0_i_1_0 ,
    \badr[3]_INST_0_i_1_0 ,
    \badr[4]_INST_0_i_1_0 ,
    \badr[5]_INST_0_i_1_0 ,
    \badr[6]_INST_0_i_1_1 ,
    \badr[7]_INST_0_i_1_0 ,
    \badr[8]_INST_0_i_1_0 ,
    \badr[9]_INST_0_i_1_0 ,
    \badr[10]_INST_0_i_1_1 ,
    \badr[11]_INST_0_i_1_0 ,
    \badr[12]_INST_0_i_1_0 ,
    \badr[13]_INST_0_i_1_0 ,
    \badr[14]_INST_0_i_1_1 ,
    \iv[4]_i_12_0 ,
    \bdatw[15]_INST_0_i_7_6 ,
    \bdatw[15]_INST_0_i_7_7 ,
    \bdatw[15]_INST_0_i_7_8 ,
    \bdatw[15]_INST_0_i_7_9 ,
    \bdatw[15]_INST_0_i_7_10 ,
    \bdatw[15]_INST_0_i_1_0 ,
    \bdatw[8]_INST_0_i_2_0 ,
    \sr_reg[7] ,
    \tr_reg[14] ,
    \tr_reg[13] ,
    \tr_reg[12] ,
    \tr_reg[11] ,
    \tr_reg[11]_0 ,
    \tr_reg[10] ,
    \tr_reg[9] ,
    \tr_reg[8] ,
    \tr_reg[7] ,
    \tr_reg[7]_0 ,
    \tr_reg[6] ,
    \tr_reg[5] ,
    \tr_reg[4] ,
    \tr_reg[3] ,
    \tr_reg[3]_0 ,
    \tr_reg[2] ,
    \tr_reg[1] ,
    \tr_reg[0] ,
    \sr[4]_i_5_0 ,
    cpuid,
    read_cyc,
    irq_lev,
    \fch_irq_lev_reg[0]_0 ,
    p_0_in_0,
    SR,
    \eir_fl_reg[6]_0 ,
    fdat);
  output [4:0]ccmd;
  output ctl_copro;
  output [2:0]brdy_0;
  output in0;
  output rst_n_fl_reg_1;
  output rst_n_fl_reg_2;
  output rst_n_fl_reg_3;
  output [2:0]ctl_sela_rn;
  output rst_n_fl_reg_4;
  output \stat_reg[0] ;
  output \stat_reg[0]_0 ;
  output crdy_0;
  output crdy_1;
  output rst_n_fl_reg_5;
  output rst_n_0;
  output [1:0]cbus_sel_cr;
  output [11:0]p_0_in;
  output [14:0]cbus;
  output [0:0]alu_sr_flag;
  output [14:0]D;
  output \iv[15]_i_4_0 ;
  output [15:0]\sp_reg[15] ;
  output rst_n_fl_reg_6;
  output \sr_reg[0] ;
  output rst_n_fl_reg_7;
  output \sr_reg[0]_0 ;
  output \badr[15]_INST_0_i_27_0 ;
  output \badr[0]_INST_0_i_12_0 ;
  output \badr[15]_INST_0_i_29_0 ;
  output \stat_reg[2] ;
  output \bdatw[15]_INST_0_i_60_0 ;
  output \bdatw[15]_INST_0_i_59_0 ;
  output [15:0]abus_o;
  output [15:0]bbus_o;
  output [15:0]bdatw;
  output [15:0]badrx;
  output [3:0]\badr[6]_INST_0_i_1_0 ;
  output [3:0]tout__1_carry__0_i_1_0;
  output [0:0]bcmd;
  output [0:0]E;
  output [0:0]\sr_reg[0]_1 ;
  output [0:0]\sr_reg[0]_2 ;
  output [0:0]\sr_reg[0]_3 ;
  output [0:0]\sr_reg[0]_4 ;
  output [0:0]\sr_reg[0]_5 ;
  output [0:0]\sr_reg[0]_6 ;
  output [0:0]\sr_reg[0]_7 ;
  output [0:0]\sr_reg[0]_8 ;
  output [0:0]\sr_reg[0]_9 ;
  output [0:0]\sr_reg[0]_10 ;
  output [0:0]\sr_reg[0]_11 ;
  output [0:0]\sr_reg[0]_12 ;
  output [0:0]\sr_reg[0]_13 ;
  output [0:0]\sr_reg[0]_14 ;
  output [0:0]\sr_reg[0]_15 ;
  output [3:0]\badr[14]_INST_0_i_1_0 ;
  output [3:0]\badr[15]_INST_0_i_1_0 ;
  output [1:0]\badr[15]_INST_0_i_1_1 ;
  output [0:0]\badr[15]_INST_0_i_1_2 ;
  output [3:0]S;
  output [2:0]DI;
  output brdy_1;
  output [15:0]badr;
  output brdy_2;
  output [3:0]\badr[10]_INST_0_i_1_0 ;
  output [3:0]tout__1_carry__1_i_1_0;
  input fch_irq_req;
  input clk;
  input ctl_fetch_fl_reg_0;
  input rst_n;
  input ctl_fetch_ext_fl_reg_0;
  input [2:0]Q;
  input ctl_fetch_fl_reg_1;
  input brdy;
  input crdy;
  input \iv[15]_i_12_0 ;
  input ctl_fetch_fl_reg_2;
  input \stat_reg[0]_1 ;
  input \stat[0]_i_5_0 ;
  input \bdatw[8]_INST_0_i_6_0 ;
  input \iv_reg[0] ;
  input \bdatw[11]_INST_0_i_2_0 ;
  input tout__1_carry_i_25_0;
  input \stat_reg[1] ;
  input \stat_reg[1]_0 ;
  input \bdatw[15]_INST_0_i_81_0 ;
  input \stat_reg[2]_0 ;
  input \stat_reg[2]_1 ;
  input \bcmd[1] ;
  input \badr[15]_INST_0_i_31_0 ;
  input \stat[0]_i_5_1 ;
  input [15:0]\sr_reg[15] ;
  input ctl_fetch_inferred_i_14_0;
  input [0:0]\sr_reg[6] ;
  input \pc_reg[0] ;
  input [15:0]\bdatw[15]_INST_0_i_6_0 ;
  input [14:0]fch_pc;
  input \pc_reg[0]_0 ;
  input [15:0]\sp_reg[15]_0 ;
  input [3:0]O;
  input [2:0]\sp_reg[3] ;
  input [3:0]\sp_reg[7] ;
  input [11:0]sp_dec_0;
  input [3:0]\sp_reg[11] ;
  input [3:0]\sp_reg[15]_1 ;
  input [0:0]\sp_reg[15]_2 ;
  input \badr[0]_0 ;
  input \badr[0]_1 ;
  input [15:0]\bdatw[15]_INST_0_i_6_1 ;
  input [15:0]\bdatw[15]_INST_0_i_7_0 ;
  input [15:0]\bdatw[15]_INST_0_i_7_1 ;
  input \iv[14]_i_36_0 ;
  input \iv[14]_i_36_1 ;
  input [15:0]\bdatw[15]_INST_0_i_7_2 ;
  input [15:0]\bdatw[15]_INST_0_i_6_2 ;
  input [15:0]\bdatw[15]_INST_0_i_6_3 ;
  input [15:0]\bdatw[15]_INST_0_i_6_4 ;
  input [15:0]\bdatw[15]_INST_0_i_6_5 ;
  input [15:0]\bdatw[15]_INST_0_i_7_3 ;
  input [15:0]\bdatw[15]_INST_0_i_7_4 ;
  input [15:0]\bdatw[15]_INST_0_i_7_5 ;
  input \badr[1]_INST_0_i_1_0 ;
  input [15:0]\badrx[15] ;
  input \badr[2]_INST_0_i_1_0 ;
  input \badr[3]_INST_0_i_1_0 ;
  input \badr[4]_INST_0_i_1_0 ;
  input \badr[5]_INST_0_i_1_0 ;
  input \badr[6]_INST_0_i_1_1 ;
  input \badr[7]_INST_0_i_1_0 ;
  input \badr[8]_INST_0_i_1_0 ;
  input \badr[9]_INST_0_i_1_0 ;
  input \badr[10]_INST_0_i_1_1 ;
  input \badr[11]_INST_0_i_1_0 ;
  input \badr[12]_INST_0_i_1_0 ;
  input \badr[13]_INST_0_i_1_0 ;
  input \badr[14]_INST_0_i_1_1 ;
  input \iv[4]_i_12_0 ;
  input [15:0]\bdatw[15]_INST_0_i_7_6 ;
  input [15:0]\bdatw[15]_INST_0_i_7_7 ;
  input [15:0]\bdatw[15]_INST_0_i_7_8 ;
  input [15:0]\bdatw[15]_INST_0_i_7_9 ;
  input [15:0]\bdatw[15]_INST_0_i_7_10 ;
  input [14:0]\bdatw[15]_INST_0_i_1_0 ;
  input \bdatw[8]_INST_0_i_2_0 ;
  input [3:0]\sr_reg[7] ;
  input \tr_reg[14] ;
  input \tr_reg[13] ;
  input \tr_reg[12] ;
  input [3:0]\tr_reg[11] ;
  input \tr_reg[11]_0 ;
  input \tr_reg[10] ;
  input \tr_reg[9] ;
  input \tr_reg[8] ;
  input [3:0]\tr_reg[7] ;
  input \tr_reg[7]_0 ;
  input \tr_reg[6] ;
  input \tr_reg[5] ;
  input \tr_reg[4] ;
  input [3:0]\tr_reg[3] ;
  input \tr_reg[3]_0 ;
  input \tr_reg[2] ;
  input \tr_reg[1] ;
  input \tr_reg[0] ;
  input \sr[4]_i_5_0 ;
  input [3:0]cpuid;
  input [1:0]read_cyc;
  input [1:0]irq_lev;
  input \fch_irq_lev_reg[0]_0 ;
  input p_0_in_0;
  input [0:0]SR;
  input [5:0]\eir_fl_reg[6]_0 ;
  input [15:0]fdat;
     output [15:0]ir;
     output [15:0]eir;
  input badr_0_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [14:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire [3:0]O;
  wire [2:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [15:0]abus_0;
  wire [15:0]abus_o;
  wire \abus_o[15]_INST_0_i_2_n_0 ;
  wire [4:0]acmd;
  wire [0:0]alu_sr_flag;
  wire [15:0]badr;
  wire \badr[0]_0 ;
  wire \badr[0]_1 ;
  wire \badr[0]_INST_0_i_10_n_0 ;
  wire \badr[0]_INST_0_i_12_0 ;
  wire \badr[0]_INST_0_i_13_n_0 ;
  wire \badr[0]_INST_0_i_14_n_0 ;
  wire \badr[0]_INST_0_i_15_n_0 ;
  wire \badr[0]_INST_0_i_16_n_0 ;
  wire \badr[0]_INST_0_i_17_n_0 ;
  wire \badr[0]_INST_0_i_18_n_0 ;
  wire \badr[0]_INST_0_i_19_n_0 ;
  wire \badr[0]_INST_0_i_20_n_0 ;
  wire \badr[0]_INST_0_i_21_n_0 ;
  wire \badr[0]_INST_0_i_22_n_0 ;
  wire \badr[0]_INST_0_i_23_n_0 ;
  wire \badr[0]_INST_0_i_24_n_0 ;
  wire \badr[0]_INST_0_i_25_n_0 ;
  wire \badr[0]_INST_0_i_26_n_0 ;
  wire \badr[0]_INST_0_i_27_n_0 ;
  wire \badr[0]_INST_0_i_28_n_0 ;
  wire \badr[0]_INST_0_i_29_n_0 ;
  wire \badr[0]_INST_0_i_30_n_0 ;
  wire \badr[0]_INST_0_i_3_n_0 ;
  wire \badr[0]_INST_0_i_4_n_0 ;
  wire \badr[0]_INST_0_i_6_n_0 ;
  wire \badr[0]_INST_0_i_7_n_0 ;
  wire \badr[10]_INST_0_i_11_n_0 ;
  wire [3:0]\badr[10]_INST_0_i_1_0 ;
  wire \badr[10]_INST_0_i_1_1 ;
  wire \badr[10]_INST_0_i_2_n_0 ;
  wire \badr[10]_INST_0_i_3_n_0 ;
  wire \badr[10]_INST_0_i_4_n_0 ;
  wire \badr[10]_INST_0_i_5_n_0 ;
  wire \badr[10]_INST_0_i_6_n_0 ;
  wire \badr[10]_INST_0_i_7_n_0 ;
  wire \badr[10]_INST_0_i_8_n_0 ;
  wire \badr[10]_INST_0_i_9_n_0 ;
  wire \badr[11]_INST_0_i_10_n_0 ;
  wire \badr[11]_INST_0_i_12_n_0 ;
  wire \badr[11]_INST_0_i_1_0 ;
  wire \badr[11]_INST_0_i_2_n_0 ;
  wire \badr[11]_INST_0_i_3_n_0 ;
  wire \badr[11]_INST_0_i_4_n_0 ;
  wire \badr[11]_INST_0_i_5_n_0 ;
  wire \badr[11]_INST_0_i_6_n_0 ;
  wire \badr[11]_INST_0_i_7_n_0 ;
  wire \badr[11]_INST_0_i_9_n_0 ;
  wire \badr[12]_INST_0_i_11_n_0 ;
  wire \badr[12]_INST_0_i_1_0 ;
  wire \badr[12]_INST_0_i_2_n_0 ;
  wire \badr[12]_INST_0_i_3_n_0 ;
  wire \badr[12]_INST_0_i_4_n_0 ;
  wire \badr[12]_INST_0_i_5_n_0 ;
  wire \badr[12]_INST_0_i_6_n_0 ;
  wire \badr[12]_INST_0_i_7_n_0 ;
  wire \badr[12]_INST_0_i_8_n_0 ;
  wire \badr[12]_INST_0_i_9_n_0 ;
  wire \badr[13]_INST_0_i_11_n_0 ;
  wire \badr[13]_INST_0_i_1_0 ;
  wire \badr[13]_INST_0_i_2_n_0 ;
  wire \badr[13]_INST_0_i_3_n_0 ;
  wire \badr[13]_INST_0_i_4_n_0 ;
  wire \badr[13]_INST_0_i_5_n_0 ;
  wire \badr[13]_INST_0_i_6_n_0 ;
  wire \badr[13]_INST_0_i_7_n_0 ;
  wire \badr[13]_INST_0_i_8_n_0 ;
  wire \badr[13]_INST_0_i_9_n_0 ;
  wire \badr[14]_INST_0_i_12_n_0 ;
  wire \badr[14]_INST_0_i_13_n_0 ;
  wire \badr[14]_INST_0_i_14_n_0 ;
  wire \badr[14]_INST_0_i_16_n_0 ;
  wire \badr[14]_INST_0_i_17_n_0 ;
  wire \badr[14]_INST_0_i_18_n_0 ;
  wire [3:0]\badr[14]_INST_0_i_1_0 ;
  wire \badr[14]_INST_0_i_1_1 ;
  wire \badr[14]_INST_0_i_20_n_0 ;
  wire \badr[14]_INST_0_i_2_n_0 ;
  wire \badr[14]_INST_0_i_3_n_0 ;
  wire \badr[14]_INST_0_i_4_n_0 ;
  wire \badr[14]_INST_0_i_5_n_0 ;
  wire \badr[14]_INST_0_i_6_n_0 ;
  wire \badr[14]_INST_0_i_7_n_0 ;
  wire \badr[14]_INST_0_i_8_n_0 ;
  wire \badr[14]_INST_0_i_9_n_0 ;
  wire \badr[15]_INST_0_i_11_n_0 ;
  wire \badr[15]_INST_0_i_13_n_0 ;
  wire \badr[15]_INST_0_i_15_n_0 ;
  wire \badr[15]_INST_0_i_16_n_0 ;
  wire \badr[15]_INST_0_i_17_n_0 ;
  wire \badr[15]_INST_0_i_18_n_0 ;
  wire \badr[15]_INST_0_i_19_n_0 ;
  wire [3:0]\badr[15]_INST_0_i_1_0 ;
  wire [1:0]\badr[15]_INST_0_i_1_1 ;
  wire [0:0]\badr[15]_INST_0_i_1_2 ;
  wire \badr[15]_INST_0_i_20_n_0 ;
  wire \badr[15]_INST_0_i_21_n_0 ;
  wire \badr[15]_INST_0_i_22_n_0 ;
  wire \badr[15]_INST_0_i_23_n_0 ;
  wire \badr[15]_INST_0_i_24_n_0 ;
  wire \badr[15]_INST_0_i_26_n_0 ;
  wire \badr[15]_INST_0_i_27_0 ;
  wire \badr[15]_INST_0_i_27_n_0 ;
  wire \badr[15]_INST_0_i_28_n_0 ;
  wire \badr[15]_INST_0_i_29_0 ;
  wire \badr[15]_INST_0_i_2_n_0 ;
  wire \badr[15]_INST_0_i_31_0 ;
  wire \badr[15]_INST_0_i_33_n_0 ;
  wire \badr[15]_INST_0_i_37_n_0 ;
  wire \badr[15]_INST_0_i_38_n_0 ;
  wire \badr[15]_INST_0_i_39_n_0 ;
  wire \badr[15]_INST_0_i_3_n_0 ;
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
  wire \badr[15]_INST_0_i_4_n_0 ;
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
  wire \badr[15]_INST_0_i_5_n_0 ;
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
  wire \badr[15]_INST_0_i_6_n_0 ;
  wire \badr[15]_INST_0_i_71_n_0 ;
  wire \badr[15]_INST_0_i_72_n_0 ;
  wire \badr[15]_INST_0_i_73_n_0 ;
  wire \badr[15]_INST_0_i_74_n_0 ;
  wire \badr[15]_INST_0_i_75_n_0 ;
  wire \badr[15]_INST_0_i_76_n_0 ;
  wire \badr[15]_INST_0_i_77_n_0 ;
  wire \badr[15]_INST_0_i_78_n_0 ;
  wire \badr[15]_INST_0_i_79_n_0 ;
  wire \badr[15]_INST_0_i_7_n_0 ;
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
  wire \badr[15]_INST_0_i_8_n_0 ;
  wire \badr[15]_INST_0_i_9_n_0 ;
  wire \badr[1]_INST_0_i_11_n_0 ;
  wire \badr[1]_INST_0_i_1_0 ;
  wire \badr[1]_INST_0_i_2_n_0 ;
  wire \badr[1]_INST_0_i_3_n_0 ;
  wire \badr[1]_INST_0_i_4_n_0 ;
  wire \badr[1]_INST_0_i_5_n_0 ;
  wire \badr[1]_INST_0_i_6_n_0 ;
  wire \badr[1]_INST_0_i_7_n_0 ;
  wire \badr[1]_INST_0_i_8_n_0 ;
  wire \badr[1]_INST_0_i_9_n_0 ;
  wire \badr[2]_INST_0_i_11_n_0 ;
  wire \badr[2]_INST_0_i_1_0 ;
  wire \badr[2]_INST_0_i_2_n_0 ;
  wire \badr[2]_INST_0_i_3_n_0 ;
  wire \badr[2]_INST_0_i_4_n_0 ;
  wire \badr[2]_INST_0_i_5_n_0 ;
  wire \badr[2]_INST_0_i_6_n_0 ;
  wire \badr[2]_INST_0_i_7_n_0 ;
  wire \badr[2]_INST_0_i_8_n_0 ;
  wire \badr[2]_INST_0_i_9_n_0 ;
  wire \badr[3]_INST_0_i_11_n_0 ;
  wire \badr[3]_INST_0_i_1_0 ;
  wire \badr[3]_INST_0_i_2_n_0 ;
  wire \badr[3]_INST_0_i_3_n_0 ;
  wire \badr[3]_INST_0_i_4_n_0 ;
  wire \badr[3]_INST_0_i_5_n_0 ;
  wire \badr[3]_INST_0_i_6_n_0 ;
  wire \badr[3]_INST_0_i_7_n_0 ;
  wire \badr[3]_INST_0_i_8_n_0 ;
  wire \badr[3]_INST_0_i_9_n_0 ;
  wire \badr[4]_INST_0_i_11_n_0 ;
  wire \badr[4]_INST_0_i_1_0 ;
  wire \badr[4]_INST_0_i_2_n_0 ;
  wire \badr[4]_INST_0_i_3_n_0 ;
  wire \badr[4]_INST_0_i_4_n_0 ;
  wire \badr[4]_INST_0_i_5_n_0 ;
  wire \badr[4]_INST_0_i_6_n_0 ;
  wire \badr[4]_INST_0_i_7_n_0 ;
  wire \badr[4]_INST_0_i_8_n_0 ;
  wire \badr[4]_INST_0_i_9_n_0 ;
  wire \badr[5]_INST_0_i_11_n_0 ;
  wire \badr[5]_INST_0_i_1_0 ;
  wire \badr[5]_INST_0_i_2_n_0 ;
  wire \badr[5]_INST_0_i_3_n_0 ;
  wire \badr[5]_INST_0_i_4_n_0 ;
  wire \badr[5]_INST_0_i_5_n_0 ;
  wire \badr[5]_INST_0_i_6_n_0 ;
  wire \badr[5]_INST_0_i_7_n_0 ;
  wire \badr[5]_INST_0_i_8_n_0 ;
  wire \badr[5]_INST_0_i_9_n_0 ;
  wire \badr[6]_INST_0_i_11_n_0 ;
  wire [3:0]\badr[6]_INST_0_i_1_0 ;
  wire \badr[6]_INST_0_i_1_1 ;
  wire \badr[6]_INST_0_i_2_n_0 ;
  wire \badr[6]_INST_0_i_3_n_0 ;
  wire \badr[6]_INST_0_i_4_n_0 ;
  wire \badr[6]_INST_0_i_5_n_0 ;
  wire \badr[6]_INST_0_i_6_n_0 ;
  wire \badr[6]_INST_0_i_7_n_0 ;
  wire \badr[6]_INST_0_i_8_n_0 ;
  wire \badr[6]_INST_0_i_9_n_0 ;
  wire \badr[7]_INST_0_i_10_n_0 ;
  wire \badr[7]_INST_0_i_12_n_0 ;
  wire \badr[7]_INST_0_i_1_0 ;
  wire \badr[7]_INST_0_i_2_n_0 ;
  wire \badr[7]_INST_0_i_3_n_0 ;
  wire \badr[7]_INST_0_i_4_n_0 ;
  wire \badr[7]_INST_0_i_5_n_0 ;
  wire \badr[7]_INST_0_i_6_n_0 ;
  wire \badr[7]_INST_0_i_7_n_0 ;
  wire \badr[7]_INST_0_i_9_n_0 ;
  wire \badr[8]_INST_0_i_11_n_0 ;
  wire \badr[8]_INST_0_i_1_0 ;
  wire \badr[8]_INST_0_i_2_n_0 ;
  wire \badr[8]_INST_0_i_3_n_0 ;
  wire \badr[8]_INST_0_i_4_n_0 ;
  wire \badr[8]_INST_0_i_5_n_0 ;
  wire \badr[8]_INST_0_i_6_n_0 ;
  wire \badr[8]_INST_0_i_7_n_0 ;
  wire \badr[8]_INST_0_i_8_n_0 ;
  wire \badr[8]_INST_0_i_9_n_0 ;
  wire \badr[9]_INST_0_i_11_n_0 ;
  wire \badr[9]_INST_0_i_1_0 ;
  wire \badr[9]_INST_0_i_2_n_0 ;
  wire \badr[9]_INST_0_i_3_n_0 ;
  wire \badr[9]_INST_0_i_4_n_0 ;
  wire \badr[9]_INST_0_i_5_n_0 ;
  wire \badr[9]_INST_0_i_6_n_0 ;
  wire \badr[9]_INST_0_i_7_n_0 ;
  wire \badr[9]_INST_0_i_8_n_0 ;
  wire \badr[9]_INST_0_i_9_n_0 ;
  wire badr_0_sn_1;
  wire [15:0]badrx;
  wire [15:0]\badrx[15] ;
  wire \badrx[15]_INST_0_i_1_n_0 ;
  wire \badrx[15]_INST_0_i_3_n_0 ;
  wire [15:0]bbus_o;
  wire [0:0]bcmd;
  wire \bcmd[0]_INST_0_i_1_n_0 ;
  wire \bcmd[0]_INST_0_i_2_n_0 ;
  wire \bcmd[0]_INST_0_i_3_n_0 ;
  wire \bcmd[0]_INST_0_i_4_n_0 ;
  wire \bcmd[0]_INST_0_i_5_n_0 ;
  wire \bcmd[0]_INST_0_i_6_n_0 ;
  wire \bcmd[1] ;
  wire \bcmd[1]_INST_0_i_10_n_0 ;
  wire \bcmd[1]_INST_0_i_12_n_0 ;
  wire \bcmd[1]_INST_0_i_1_n_0 ;
  wire \bcmd[1]_INST_0_i_2_n_0 ;
  wire \bcmd[1]_INST_0_i_3_n_0 ;
  wire \bcmd[1]_INST_0_i_4_n_0 ;
  wire \bcmd[1]_INST_0_i_6_n_0 ;
  wire \bcmd[1]_INST_0_i_7_n_0 ;
  wire \bcmd[1]_INST_0_i_8_n_0 ;
  wire \bcmd[1]_INST_0_i_9_n_0 ;
  wire \bcmd[2]_INST_0_i_1_n_0 ;
  wire \bcmd[2]_INST_0_i_2_n_0 ;
  wire \bcmd[2]_INST_0_i_3_n_0 ;
  wire [15:0]bdatw;
  wire \bdatw[10]_INST_0_i_10_n_0 ;
  wire \bdatw[10]_INST_0_i_11_n_0 ;
  wire \bdatw[10]_INST_0_i_12_n_0 ;
  wire \bdatw[10]_INST_0_i_13_n_0 ;
  wire \bdatw[10]_INST_0_i_14_n_0 ;
  wire \bdatw[10]_INST_0_i_15_n_0 ;
  wire \bdatw[10]_INST_0_i_16_n_0 ;
  wire \bdatw[10]_INST_0_i_17_n_0 ;
  wire \bdatw[10]_INST_0_i_18_n_0 ;
  wire \bdatw[10]_INST_0_i_19_n_0 ;
  wire \bdatw[10]_INST_0_i_1_n_0 ;
  wire \bdatw[10]_INST_0_i_20_n_0 ;
  wire \bdatw[10]_INST_0_i_21_n_0 ;
  wire \bdatw[10]_INST_0_i_22_n_0 ;
  wire \bdatw[10]_INST_0_i_23_n_0 ;
  wire \bdatw[10]_INST_0_i_24_n_0 ;
  wire \bdatw[10]_INST_0_i_2_n_0 ;
  wire \bdatw[10]_INST_0_i_4_n_0 ;
  wire \bdatw[10]_INST_0_i_5_n_0 ;
  wire \bdatw[10]_INST_0_i_7_n_0 ;
  wire \bdatw[10]_INST_0_i_8_n_0 ;
  wire \bdatw[10]_INST_0_i_9_n_0 ;
  wire \bdatw[11]_INST_0_i_10_n_0 ;
  wire \bdatw[11]_INST_0_i_11_n_0 ;
  wire \bdatw[11]_INST_0_i_12_n_0 ;
  wire \bdatw[11]_INST_0_i_13_n_0 ;
  wire \bdatw[11]_INST_0_i_14_n_0 ;
  wire \bdatw[11]_INST_0_i_15_n_0 ;
  wire \bdatw[11]_INST_0_i_16_n_0 ;
  wire \bdatw[11]_INST_0_i_17_n_0 ;
  wire \bdatw[11]_INST_0_i_18_n_0 ;
  wire \bdatw[11]_INST_0_i_19_n_0 ;
  wire \bdatw[11]_INST_0_i_1_n_0 ;
  wire \bdatw[11]_INST_0_i_20_n_0 ;
  wire \bdatw[11]_INST_0_i_21_n_0 ;
  wire \bdatw[11]_INST_0_i_22_n_0 ;
  wire \bdatw[11]_INST_0_i_23_n_0 ;
  wire \bdatw[11]_INST_0_i_24_n_0 ;
  wire \bdatw[11]_INST_0_i_25_n_0 ;
  wire \bdatw[11]_INST_0_i_26_n_0 ;
  wire \bdatw[11]_INST_0_i_27_n_0 ;
  wire \bdatw[11]_INST_0_i_28_n_0 ;
  wire \bdatw[11]_INST_0_i_2_0 ;
  wire \bdatw[11]_INST_0_i_2_n_0 ;
  wire \bdatw[11]_INST_0_i_4_n_0 ;
  wire \bdatw[11]_INST_0_i_5_n_0 ;
  wire \bdatw[11]_INST_0_i_7_n_0 ;
  wire \bdatw[11]_INST_0_i_8_n_0 ;
  wire \bdatw[11]_INST_0_i_9_n_0 ;
  wire \bdatw[12]_INST_0_i_10_n_0 ;
  wire \bdatw[12]_INST_0_i_11_n_0 ;
  wire \bdatw[12]_INST_0_i_12_n_0 ;
  wire \bdatw[12]_INST_0_i_13_n_0 ;
  wire \bdatw[12]_INST_0_i_14_n_0 ;
  wire \bdatw[12]_INST_0_i_15_n_0 ;
  wire \bdatw[12]_INST_0_i_16_n_0 ;
  wire \bdatw[12]_INST_0_i_17_n_0 ;
  wire \bdatw[12]_INST_0_i_18_n_0 ;
  wire \bdatw[12]_INST_0_i_19_n_0 ;
  wire \bdatw[12]_INST_0_i_1_n_0 ;
  wire \bdatw[12]_INST_0_i_20_n_0 ;
  wire \bdatw[12]_INST_0_i_21_n_0 ;
  wire \bdatw[12]_INST_0_i_23_n_0 ;
  wire \bdatw[12]_INST_0_i_24_n_0 ;
  wire \bdatw[12]_INST_0_i_25_n_0 ;
  wire \bdatw[12]_INST_0_i_26_n_0 ;
  wire \bdatw[12]_INST_0_i_27_n_0 ;
  wire \bdatw[12]_INST_0_i_28_n_0 ;
  wire \bdatw[12]_INST_0_i_29_n_0 ;
  wire \bdatw[12]_INST_0_i_2_n_0 ;
  wire \bdatw[12]_INST_0_i_30_n_0 ;
  wire \bdatw[12]_INST_0_i_31_n_0 ;
  wire \bdatw[12]_INST_0_i_32_n_0 ;
  wire \bdatw[12]_INST_0_i_4_n_0 ;
  wire \bdatw[12]_INST_0_i_5_n_0 ;
  wire \bdatw[12]_INST_0_i_7_n_0 ;
  wire \bdatw[12]_INST_0_i_8_n_0 ;
  wire \bdatw[12]_INST_0_i_9_n_0 ;
  wire \bdatw[13]_INST_0_i_10_n_0 ;
  wire \bdatw[13]_INST_0_i_11_n_0 ;
  wire \bdatw[13]_INST_0_i_12_n_0 ;
  wire \bdatw[13]_INST_0_i_13_n_0 ;
  wire \bdatw[13]_INST_0_i_14_n_0 ;
  wire \bdatw[13]_INST_0_i_15_n_0 ;
  wire \bdatw[13]_INST_0_i_16_n_0 ;
  wire \bdatw[13]_INST_0_i_17_n_0 ;
  wire \bdatw[13]_INST_0_i_18_n_0 ;
  wire \bdatw[13]_INST_0_i_19_n_0 ;
  wire \bdatw[13]_INST_0_i_1_n_0 ;
  wire \bdatw[13]_INST_0_i_20_n_0 ;
  wire \bdatw[13]_INST_0_i_21_n_0 ;
  wire \bdatw[13]_INST_0_i_22_n_0 ;
  wire \bdatw[13]_INST_0_i_23_n_0 ;
  wire \bdatw[13]_INST_0_i_2_n_0 ;
  wire \bdatw[13]_INST_0_i_4_n_0 ;
  wire \bdatw[13]_INST_0_i_5_n_0 ;
  wire \bdatw[13]_INST_0_i_7_n_0 ;
  wire \bdatw[13]_INST_0_i_8_n_0 ;
  wire \bdatw[13]_INST_0_i_9_n_0 ;
  wire \bdatw[14]_INST_0_i_10_n_0 ;
  wire \bdatw[14]_INST_0_i_11_n_0 ;
  wire \bdatw[14]_INST_0_i_12_n_0 ;
  wire \bdatw[14]_INST_0_i_13_n_0 ;
  wire \bdatw[14]_INST_0_i_14_n_0 ;
  wire \bdatw[14]_INST_0_i_15_n_0 ;
  wire \bdatw[14]_INST_0_i_16_n_0 ;
  wire \bdatw[14]_INST_0_i_17_n_0 ;
  wire \bdatw[14]_INST_0_i_18_n_0 ;
  wire \bdatw[14]_INST_0_i_19_n_0 ;
  wire \bdatw[14]_INST_0_i_1_n_0 ;
  wire \bdatw[14]_INST_0_i_20_n_0 ;
  wire \bdatw[14]_INST_0_i_21_n_0 ;
  wire \bdatw[14]_INST_0_i_22_n_0 ;
  wire \bdatw[14]_INST_0_i_23_n_0 ;
  wire \bdatw[14]_INST_0_i_2_n_0 ;
  wire \bdatw[14]_INST_0_i_4_n_0 ;
  wire \bdatw[14]_INST_0_i_5_n_0 ;
  wire \bdatw[14]_INST_0_i_7_n_0 ;
  wire \bdatw[14]_INST_0_i_8_n_0 ;
  wire \bdatw[14]_INST_0_i_9_n_0 ;
  wire \bdatw[15]_INST_0_i_10_n_0 ;
  wire \bdatw[15]_INST_0_i_13_n_0 ;
  wire \bdatw[15]_INST_0_i_14_n_0 ;
  wire \bdatw[15]_INST_0_i_15_n_0 ;
  wire \bdatw[15]_INST_0_i_17_n_0 ;
  wire \bdatw[15]_INST_0_i_18_n_0 ;
  wire \bdatw[15]_INST_0_i_19_n_0 ;
  wire [14:0]\bdatw[15]_INST_0_i_1_0 ;
  wire \bdatw[15]_INST_0_i_1_n_0 ;
  wire \bdatw[15]_INST_0_i_20_n_0 ;
  wire \bdatw[15]_INST_0_i_21_n_0 ;
  wire \bdatw[15]_INST_0_i_22_n_0 ;
  wire \bdatw[15]_INST_0_i_23_n_0 ;
  wire \bdatw[15]_INST_0_i_24_n_0 ;
  wire \bdatw[15]_INST_0_i_26_n_0 ;
  wire \bdatw[15]_INST_0_i_27_n_0 ;
  wire \bdatw[15]_INST_0_i_28_n_0 ;
  wire \bdatw[15]_INST_0_i_29_n_0 ;
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
  wire \bdatw[15]_INST_0_i_50_n_0 ;
  wire \bdatw[15]_INST_0_i_51_n_0 ;
  wire \bdatw[15]_INST_0_i_52_n_0 ;
  wire \bdatw[15]_INST_0_i_53_n_0 ;
  wire \bdatw[15]_INST_0_i_54_n_0 ;
  wire \bdatw[15]_INST_0_i_55_n_0 ;
  wire \bdatw[15]_INST_0_i_56_n_0 ;
  wire \bdatw[15]_INST_0_i_58_n_0 ;
  wire \bdatw[15]_INST_0_i_59_0 ;
  wire \bdatw[15]_INST_0_i_60_0 ;
  wire \bdatw[15]_INST_0_i_61_n_0 ;
  wire \bdatw[15]_INST_0_i_62_n_0 ;
  wire \bdatw[15]_INST_0_i_63_n_0 ;
  wire \bdatw[15]_INST_0_i_64_n_0 ;
  wire \bdatw[15]_INST_0_i_65_n_0 ;
  wire \bdatw[15]_INST_0_i_66_n_0 ;
  wire \bdatw[15]_INST_0_i_67_n_0 ;
  wire \bdatw[15]_INST_0_i_68_n_0 ;
  wire \bdatw[15]_INST_0_i_69_n_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_6_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_6_1 ;
  wire [15:0]\bdatw[15]_INST_0_i_6_2 ;
  wire [15:0]\bdatw[15]_INST_0_i_6_3 ;
  wire [15:0]\bdatw[15]_INST_0_i_6_4 ;
  wire [15:0]\bdatw[15]_INST_0_i_6_5 ;
  wire \bdatw[15]_INST_0_i_6_n_0 ;
  wire \bdatw[15]_INST_0_i_70_n_0 ;
  wire \bdatw[15]_INST_0_i_71_n_0 ;
  wire \bdatw[15]_INST_0_i_72_n_0 ;
  wire \bdatw[15]_INST_0_i_73_n_0 ;
  wire \bdatw[15]_INST_0_i_74_n_0 ;
  wire \bdatw[15]_INST_0_i_75_n_0 ;
  wire \bdatw[15]_INST_0_i_76_n_0 ;
  wire \bdatw[15]_INST_0_i_77_n_0 ;
  wire \bdatw[15]_INST_0_i_78_n_0 ;
  wire \bdatw[15]_INST_0_i_79_n_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_7_0 ;
  wire [15:0]\bdatw[15]_INST_0_i_7_1 ;
  wire [15:0]\bdatw[15]_INST_0_i_7_10 ;
  wire [15:0]\bdatw[15]_INST_0_i_7_2 ;
  wire [15:0]\bdatw[15]_INST_0_i_7_3 ;
  wire [15:0]\bdatw[15]_INST_0_i_7_4 ;
  wire [15:0]\bdatw[15]_INST_0_i_7_5 ;
  wire [15:0]\bdatw[15]_INST_0_i_7_6 ;
  wire [15:0]\bdatw[15]_INST_0_i_7_7 ;
  wire [15:0]\bdatw[15]_INST_0_i_7_8 ;
  wire [15:0]\bdatw[15]_INST_0_i_7_9 ;
  wire \bdatw[15]_INST_0_i_7_n_0 ;
  wire \bdatw[15]_INST_0_i_80_n_0 ;
  wire \bdatw[15]_INST_0_i_81_0 ;
  wire \bdatw[15]_INST_0_i_81_n_0 ;
  wire \bdatw[15]_INST_0_i_82_n_0 ;
  wire \bdatw[15]_INST_0_i_83_n_0 ;
  wire \bdatw[15]_INST_0_i_84_n_0 ;
  wire \bdatw[15]_INST_0_i_85_n_0 ;
  wire \bdatw[15]_INST_0_i_9_n_0 ;
  wire \bdatw[8]_INST_0_i_10_n_0 ;
  wire \bdatw[8]_INST_0_i_11_n_0 ;
  wire \bdatw[8]_INST_0_i_12_n_0 ;
  wire \bdatw[8]_INST_0_i_13_n_0 ;
  wire \bdatw[8]_INST_0_i_14_n_0 ;
  wire \bdatw[8]_INST_0_i_15_n_0 ;
  wire \bdatw[8]_INST_0_i_16_n_0 ;
  wire \bdatw[8]_INST_0_i_17_n_0 ;
  wire \bdatw[8]_INST_0_i_18_n_0 ;
  wire \bdatw[8]_INST_0_i_19_n_0 ;
  wire \bdatw[8]_INST_0_i_1_n_0 ;
  wire \bdatw[8]_INST_0_i_20_n_0 ;
  wire \bdatw[8]_INST_0_i_21_n_0 ;
  wire \bdatw[8]_INST_0_i_22_n_0 ;
  wire \bdatw[8]_INST_0_i_23_n_0 ;
  wire \bdatw[8]_INST_0_i_24_n_0 ;
  wire \bdatw[8]_INST_0_i_25_n_0 ;
  wire \bdatw[8]_INST_0_i_26_n_0 ;
  wire \bdatw[8]_INST_0_i_28_n_0 ;
  wire \bdatw[8]_INST_0_i_29_n_0 ;
  wire \bdatw[8]_INST_0_i_2_0 ;
  wire \bdatw[8]_INST_0_i_2_n_0 ;
  wire \bdatw[8]_INST_0_i_31_n_0 ;
  wire \bdatw[8]_INST_0_i_4_n_0 ;
  wire \bdatw[8]_INST_0_i_5_n_0 ;
  wire \bdatw[8]_INST_0_i_6_0 ;
  wire \bdatw[8]_INST_0_i_7_n_0 ;
  wire \bdatw[8]_INST_0_i_8_n_0 ;
  wire \bdatw[8]_INST_0_i_9_n_0 ;
  wire \bdatw[9]_INST_0_i_10_n_0 ;
  wire \bdatw[9]_INST_0_i_11_n_0 ;
  wire \bdatw[9]_INST_0_i_12_n_0 ;
  wire \bdatw[9]_INST_0_i_13_n_0 ;
  wire \bdatw[9]_INST_0_i_14_n_0 ;
  wire \bdatw[9]_INST_0_i_15_n_0 ;
  wire \bdatw[9]_INST_0_i_16_n_0 ;
  wire \bdatw[9]_INST_0_i_17_n_0 ;
  wire \bdatw[9]_INST_0_i_18_n_0 ;
  wire \bdatw[9]_INST_0_i_19_n_0 ;
  wire \bdatw[9]_INST_0_i_1_n_0 ;
  wire \bdatw[9]_INST_0_i_20_n_0 ;
  wire \bdatw[9]_INST_0_i_21_n_0 ;
  wire \bdatw[9]_INST_0_i_22_n_0 ;
  wire \bdatw[9]_INST_0_i_23_n_0 ;
  wire \bdatw[9]_INST_0_i_2_n_0 ;
  wire \bdatw[9]_INST_0_i_4_n_0 ;
  wire \bdatw[9]_INST_0_i_5_n_0 ;
  wire \bdatw[9]_INST_0_i_7_n_0 ;
  wire \bdatw[9]_INST_0_i_8_n_0 ;
  wire \bdatw[9]_INST_0_i_9_n_0 ;
  wire brdy;
  wire [2:0]brdy_0;
  wire brdy_1;
  wire brdy_2;
  wire [14:0]cbus;
  wire [1:0]cbus_sel_cr;
  wire [4:0]ccmd;
  wire \ccmd[0]_INST_0_i_1_n_0 ;
  wire \ccmd[0]_INST_0_i_2_n_0 ;
  wire \ccmd[0]_INST_0_i_3_n_0 ;
  wire \ccmd[0]_INST_0_i_4_n_0 ;
  wire \ccmd[0]_INST_0_i_5_n_0 ;
  wire \ccmd[0]_INST_0_i_6_n_0 ;
  wire \ccmd[1]_INST_0_i_1_n_0 ;
  wire \ccmd[1]_INST_0_i_2_n_0 ;
  wire \ccmd[1]_INST_0_i_3_n_0 ;
  wire \ccmd[1]_INST_0_i_4_n_0 ;
  wire \ccmd[1]_INST_0_i_5_n_0 ;
  wire \ccmd[2]_INST_0_i_1_n_0 ;
  wire \ccmd[3]_INST_0_i_1_n_0 ;
  wire \ccmd[3]_INST_0_i_2_n_0 ;
  wire \ccmd[3]_INST_0_i_3_n_0 ;
  wire \ccmd[3]_INST_0_i_4_n_0 ;
  wire \ccmd[4]_INST_0_i_1_n_0 ;
  wire \ccmd[4]_INST_0_i_2_n_0 ;
  wire \ccmd[4]_INST_0_i_3_n_0 ;
  wire \ccmd[4]_INST_0_i_4_n_0 ;
  wire clk;
  wire [3:0]cpuid;
  wire crdy;
  wire crdy_0;
  wire crdy_1;
  wire ctl_copro;
  wire ctl_fetch_ext_fl;
  wire ctl_fetch_ext_fl_reg_0;
  wire ctl_fetch_fl;
  wire ctl_fetch_fl_reg_0;
  wire ctl_fetch_fl_reg_1;
  wire ctl_fetch_fl_reg_2;
  wire ctl_fetch_inferred_i_10_n_0;
  wire ctl_fetch_inferred_i_11_n_0;
  wire ctl_fetch_inferred_i_12_n_0;
  wire ctl_fetch_inferred_i_13_n_0;
  wire ctl_fetch_inferred_i_14_0;
  wire ctl_fetch_inferred_i_14_n_0;
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
  wire ctl_fetch_inferred_i_27_n_0;
  wire ctl_fetch_inferred_i_28_n_0;
  wire ctl_fetch_inferred_i_2_n_0;
  wire ctl_fetch_inferred_i_3_n_0;
  wire ctl_fetch_inferred_i_4_n_0;
  wire ctl_fetch_inferred_i_5_n_0;
  wire ctl_fetch_inferred_i_6_n_0;
  wire ctl_fetch_inferred_i_7_n_0;
  wire ctl_fetch_inferred_i_9_n_0;
  wire [1:0]ctl_sela;
  wire [2:0]ctl_sela_rn;
  wire [2:0]ctl_selb_0;
  wire [2:0]ctl_selb_rn;
  wire [0:0]ctl_selc;
  wire [2:0]ctl_selc_rn;
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
  wire \fch_irq_lev_reg[0]_0 ;
  wire fch_irq_req;
  wire fch_irq_req_fl;
  wire [14:0]fch_pc;
  wire [15:0]fdat;
  wire \grn[15]_i_2__0_n_0 ;
  wire \grn[15]_i_2_n_0 ;
  wire in0;
  (* DONT_TOUCH *) wire [15:0]ir;
  wire [15:0]ir_fl;
  wire [1:0]irq_lev;
  wire \iv[0]_i_10_n_0 ;
  wire \iv[0]_i_11_n_0 ;
  wire \iv[0]_i_12_n_0 ;
  wire \iv[0]_i_13_n_0 ;
  wire \iv[0]_i_2_n_0 ;
  wire \iv[0]_i_4_n_0 ;
  wire \iv[0]_i_5_n_0 ;
  wire \iv[0]_i_6_n_0 ;
  wire \iv[0]_i_7_n_0 ;
  wire \iv[0]_i_9_n_0 ;
  wire \iv[10]_i_10_n_0 ;
  wire \iv[10]_i_11_n_0 ;
  wire \iv[10]_i_12_n_0 ;
  wire \iv[10]_i_13_n_0 ;
  wire \iv[10]_i_14_n_0 ;
  wire \iv[10]_i_15_n_0 ;
  wire \iv[10]_i_16_n_0 ;
  wire \iv[10]_i_17_n_0 ;
  wire \iv[10]_i_18_n_0 ;
  wire \iv[10]_i_19_n_0 ;
  wire \iv[10]_i_2_n_0 ;
  wire \iv[10]_i_4_n_0 ;
  wire \iv[10]_i_5_n_0 ;
  wire \iv[10]_i_6_n_0 ;
  wire \iv[10]_i_7_n_0 ;
  wire \iv[10]_i_8_n_0 ;
  wire \iv[10]_i_9_n_0 ;
  wire \iv[11]_i_10_n_0 ;
  wire \iv[11]_i_11_n_0 ;
  wire \iv[11]_i_12_n_0 ;
  wire \iv[11]_i_13_n_0 ;
  wire \iv[11]_i_14_n_0 ;
  wire \iv[11]_i_15_n_0 ;
  wire \iv[11]_i_16_n_0 ;
  wire \iv[11]_i_17_n_0 ;
  wire \iv[11]_i_18_n_0 ;
  wire \iv[11]_i_19_n_0 ;
  wire \iv[11]_i_20_n_0 ;
  wire \iv[11]_i_21_n_0 ;
  wire \iv[11]_i_22_n_0 ;
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
  wire \iv[12]_i_15_n_0 ;
  wire \iv[12]_i_16_n_0 ;
  wire \iv[12]_i_17_n_0 ;
  wire \iv[12]_i_18_n_0 ;
  wire \iv[12]_i_19_n_0 ;
  wire \iv[12]_i_20_n_0 ;
  wire \iv[12]_i_21_n_0 ;
  wire \iv[12]_i_22_n_0 ;
  wire \iv[12]_i_23_n_0 ;
  wire \iv[12]_i_24_n_0 ;
  wire \iv[12]_i_2_n_0 ;
  wire \iv[12]_i_4_n_0 ;
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
  wire \iv[13]_i_15_n_0 ;
  wire \iv[13]_i_16_n_0 ;
  wire \iv[13]_i_17_n_0 ;
  wire \iv[13]_i_18_n_0 ;
  wire \iv[13]_i_19_n_0 ;
  wire \iv[13]_i_20_n_0 ;
  wire \iv[13]_i_21_n_0 ;
  wire \iv[13]_i_22_n_0 ;
  wire \iv[13]_i_23_n_0 ;
  wire \iv[13]_i_24_n_0 ;
  wire \iv[13]_i_25_n_0 ;
  wire \iv[13]_i_26_n_0 ;
  wire \iv[13]_i_27_n_0 ;
  wire \iv[13]_i_28_n_0 ;
  wire \iv[13]_i_29_n_0 ;
  wire \iv[13]_i_2_n_0 ;
  wire \iv[13]_i_30_n_0 ;
  wire \iv[13]_i_31_n_0 ;
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
  wire \iv[14]_i_18_n_0 ;
  wire \iv[14]_i_19_n_0 ;
  wire \iv[14]_i_20_n_0 ;
  wire \iv[14]_i_21_n_0 ;
  wire \iv[14]_i_22_n_0 ;
  wire \iv[14]_i_23_n_0 ;
  wire \iv[14]_i_24_n_0 ;
  wire \iv[14]_i_25_n_0 ;
  wire \iv[14]_i_26_n_0 ;
  wire \iv[14]_i_27_n_0 ;
  wire \iv[14]_i_28_n_0 ;
  wire \iv[14]_i_29_n_0 ;
  wire \iv[14]_i_2_n_0 ;
  wire \iv[14]_i_30_n_0 ;
  wire \iv[14]_i_31_n_0 ;
  wire \iv[14]_i_32_n_0 ;
  wire \iv[14]_i_33_n_0 ;
  wire \iv[14]_i_34_n_0 ;
  wire \iv[14]_i_35_n_0 ;
  wire \iv[14]_i_36_0 ;
  wire \iv[14]_i_36_1 ;
  wire \iv[14]_i_36_n_0 ;
  wire \iv[14]_i_37_n_0 ;
  wire \iv[14]_i_38_n_0 ;
  wire \iv[14]_i_39_n_0 ;
  wire \iv[14]_i_3_n_0 ;
  wire \iv[14]_i_5_n_0 ;
  wire \iv[14]_i_6_n_0 ;
  wire \iv[14]_i_7_n_0 ;
  wire \iv[14]_i_8_n_0 ;
  wire \iv[14]_i_9_n_0 ;
  wire \iv[15]_i_10_n_0 ;
  wire \iv[15]_i_12_0 ;
  wire \iv[15]_i_13_n_0 ;
  wire \iv[15]_i_14_n_0 ;
  wire \iv[15]_i_15_n_0 ;
  wire \iv[15]_i_16_n_0 ;
  wire \iv[15]_i_17_n_0 ;
  wire \iv[15]_i_18_n_0 ;
  wire \iv[15]_i_19_n_0 ;
  wire \iv[15]_i_20_n_0 ;
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
  wire \iv[15]_i_33_n_0 ;
  wire \iv[15]_i_34_n_0 ;
  wire \iv[15]_i_35_n_0 ;
  wire \iv[15]_i_36_n_0 ;
  wire \iv[15]_i_37_n_0 ;
  wire \iv[15]_i_38_n_0 ;
  wire \iv[15]_i_39_n_0 ;
  wire \iv[15]_i_3_n_0 ;
  wire \iv[15]_i_40_n_0 ;
  wire \iv[15]_i_41_n_0 ;
  wire \iv[15]_i_42_n_0 ;
  wire \iv[15]_i_43_n_0 ;
  wire \iv[15]_i_44_n_0 ;
  wire \iv[15]_i_45_n_0 ;
  wire \iv[15]_i_46_n_0 ;
  wire \iv[15]_i_47_n_0 ;
  wire \iv[15]_i_4_0 ;
  wire \iv[15]_i_7_n_0 ;
  wire \iv[15]_i_8_n_0 ;
  wire \iv[15]_i_9_n_0 ;
  wire \iv[1]_i_10_n_0 ;
  wire \iv[1]_i_11_n_0 ;
  wire \iv[1]_i_12_n_0 ;
  wire \iv[1]_i_13_n_0 ;
  wire \iv[1]_i_14_n_0 ;
  wire \iv[1]_i_15_n_0 ;
  wire \iv[1]_i_16_n_0 ;
  wire \iv[1]_i_17_n_0 ;
  wire \iv[1]_i_18_n_0 ;
  wire \iv[1]_i_19_n_0 ;
  wire \iv[1]_i_20_n_0 ;
  wire \iv[1]_i_21_n_0 ;
  wire \iv[1]_i_22_n_0 ;
  wire \iv[1]_i_23_n_0 ;
  wire \iv[1]_i_2_n_0 ;
  wire \iv[1]_i_4_n_0 ;
  wire \iv[1]_i_5_n_0 ;
  wire \iv[1]_i_6_n_0 ;
  wire \iv[1]_i_7_n_0 ;
  wire \iv[1]_i_8_n_0 ;
  wire \iv[2]_i_10_n_0 ;
  wire \iv[2]_i_11_n_0 ;
  wire \iv[2]_i_12_n_0 ;
  wire \iv[2]_i_13_n_0 ;
  wire \iv[2]_i_14_n_0 ;
  wire \iv[2]_i_15_n_0 ;
  wire \iv[2]_i_16_n_0 ;
  wire \iv[2]_i_17_n_0 ;
  wire \iv[2]_i_18_n_0 ;
  wire \iv[2]_i_19_n_0 ;
  wire \iv[2]_i_20_n_0 ;
  wire \iv[2]_i_21_n_0 ;
  wire \iv[2]_i_22_n_0 ;
  wire \iv[2]_i_23_n_0 ;
  wire \iv[2]_i_2_n_0 ;
  wire \iv[2]_i_4_n_0 ;
  wire \iv[2]_i_5_n_0 ;
  wire \iv[2]_i_6_n_0 ;
  wire \iv[2]_i_7_n_0 ;
  wire \iv[2]_i_8_n_0 ;
  wire \iv[3]_i_10_n_0 ;
  wire \iv[3]_i_11_n_0 ;
  wire \iv[3]_i_12_n_0 ;
  wire \iv[3]_i_2_n_0 ;
  wire \iv[3]_i_4_n_0 ;
  wire \iv[3]_i_5_n_0 ;
  wire \iv[3]_i_6_n_0 ;
  wire \iv[3]_i_7_n_0 ;
  wire \iv[3]_i_8_n_0 ;
  wire \iv[4]_i_10_n_0 ;
  wire \iv[4]_i_11_n_0 ;
  wire \iv[4]_i_12_0 ;
  wire \iv[4]_i_12_n_0 ;
  wire \iv[4]_i_13_n_0 ;
  wire \iv[4]_i_14_n_0 ;
  wire \iv[4]_i_15_n_0 ;
  wire \iv[4]_i_17_n_0 ;
  wire \iv[4]_i_2_n_0 ;
  wire \iv[4]_i_4_n_0 ;
  wire \iv[4]_i_5_n_0 ;
  wire \iv[4]_i_6_n_0 ;
  wire \iv[4]_i_7_n_0 ;
  wire \iv[4]_i_8_n_0 ;
  wire \iv[5]_i_10_n_0 ;
  wire \iv[5]_i_11_n_0 ;
  wire \iv[5]_i_12_n_0 ;
  wire \iv[5]_i_13_n_0 ;
  wire \iv[5]_i_14_n_0 ;
  wire \iv[5]_i_15_n_0 ;
  wire \iv[5]_i_16_n_0 ;
  wire \iv[5]_i_17_n_0 ;
  wire \iv[5]_i_18_n_0 ;
  wire \iv[5]_i_19_n_0 ;
  wire \iv[5]_i_2_n_0 ;
  wire \iv[5]_i_4_n_0 ;
  wire \iv[5]_i_5_n_0 ;
  wire \iv[5]_i_6_n_0 ;
  wire \iv[5]_i_7_n_0 ;
  wire \iv[5]_i_8_n_0 ;
  wire \iv[6]_i_10_n_0 ;
  wire \iv[6]_i_11_n_0 ;
  wire \iv[6]_i_12_n_0 ;
  wire \iv[6]_i_2_n_0 ;
  wire \iv[6]_i_4_n_0 ;
  wire \iv[6]_i_5_n_0 ;
  wire \iv[6]_i_6_n_0 ;
  wire \iv[6]_i_7_n_0 ;
  wire \iv[6]_i_9_n_0 ;
  wire \iv[7]_i_10_n_0 ;
  wire \iv[7]_i_11_n_0 ;
  wire \iv[7]_i_12_n_0 ;
  wire \iv[7]_i_13_n_0 ;
  wire \iv[7]_i_14_n_0 ;
  wire \iv[7]_i_15_n_0 ;
  wire \iv[7]_i_16_n_0 ;
  wire \iv[7]_i_17_n_0 ;
  wire \iv[7]_i_18_n_0 ;
  wire \iv[7]_i_19_n_0 ;
  wire \iv[7]_i_2_n_0 ;
  wire \iv[7]_i_4_n_0 ;
  wire \iv[7]_i_5_n_0 ;
  wire \iv[7]_i_6_n_0 ;
  wire \iv[7]_i_7_n_0 ;
  wire \iv[7]_i_8_n_0 ;
  wire \iv[8]_i_10_n_0 ;
  wire \iv[8]_i_11_n_0 ;
  wire \iv[8]_i_12_n_0 ;
  wire \iv[8]_i_13_n_0 ;
  wire \iv[8]_i_14_n_0 ;
  wire \iv[8]_i_15_n_0 ;
  wire \iv[8]_i_16_n_0 ;
  wire \iv[8]_i_17_n_0 ;
  wire \iv[8]_i_18_n_0 ;
  wire \iv[8]_i_2_n_0 ;
  wire \iv[8]_i_4_n_0 ;
  wire \iv[8]_i_5_n_0 ;
  wire \iv[8]_i_6_n_0 ;
  wire \iv[8]_i_7_n_0 ;
  wire \iv[8]_i_8_n_0 ;
  wire \iv[8]_i_9_n_0 ;
  wire \iv[9]_i_10_n_0 ;
  wire \iv[9]_i_11_n_0 ;
  wire \iv[9]_i_12_n_0 ;
  wire \iv[9]_i_13_n_0 ;
  wire \iv[9]_i_14_n_0 ;
  wire \iv[9]_i_15_n_0 ;
  wire \iv[9]_i_16_n_0 ;
  wire \iv[9]_i_17_n_0 ;
  wire \iv[9]_i_18_n_0 ;
  wire \iv[9]_i_19_n_0 ;
  wire \iv[9]_i_20_n_0 ;
  wire \iv[9]_i_21_n_0 ;
  wire \iv[9]_i_22_n_0 ;
  wire \iv[9]_i_2_n_0 ;
  wire \iv[9]_i_4_n_0 ;
  wire \iv[9]_i_5_n_0 ;
  wire \iv[9]_i_6_n_0 ;
  wire \iv[9]_i_7_n_0 ;
  wire \iv[9]_i_8_n_0 ;
  wire \iv[9]_i_9_n_0 ;
  wire \iv_reg[0] ;
  wire [11:0]p_0_in;
  wire p_0_in_0;
  wire [15:0]p_1_in;
  wire \pc_reg[0] ;
  wire \pc_reg[0]_0 ;
  wire [1:0]read_cyc;
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
  wire \sp[10]_i_2_n_0 ;
  wire \sp[10]_i_3_n_0 ;
  wire \sp[11]_i_3_n_0 ;
  wire \sp[11]_i_4_n_0 ;
  wire \sp[12]_i_2_n_0 ;
  wire \sp[12]_i_3_n_0 ;
  wire \sp[13]_i_2_n_0 ;
  wire \sp[14]_i_2_n_0 ;
  wire \sp[14]_i_3_n_0 ;
  wire \sp[15]_i_10_n_0 ;
  wire \sp[15]_i_3_n_0 ;
  wire \sp[15]_i_4_n_0 ;
  wire \sp[15]_i_5_n_0 ;
  wire \sp[15]_i_6_n_0 ;
  wire \sp[15]_i_7_n_0 ;
  wire \sp[15]_i_8_n_0 ;
  wire \sp[15]_i_9_n_0 ;
  wire \sp[1]_i_2_n_0 ;
  wire \sp[2]_i_2_n_0 ;
  wire \sp[3]_i_3_n_0 ;
  wire \sp[3]_i_4_n_0 ;
  wire \sp[4]_i_2_n_0 ;
  wire \sp[5]_i_2_n_0 ;
  wire \sp[6]_i_2_n_0 ;
  wire \sp[6]_i_3_n_0 ;
  wire \sp[7]_i_3_n_0 ;
  wire \sp[8]_i_2_n_0 ;
  wire \sp[8]_i_3_n_0 ;
  wire \sp[9]_i_2_n_0 ;
  wire \sp[9]_i_3_n_0 ;
  wire [11:0]sp_dec_0;
  wire [3:0]\sp_reg[11] ;
  wire [15:0]\sp_reg[15] ;
  wire [15:0]\sp_reg[15]_0 ;
  wire [3:0]\sp_reg[15]_1 ;
  wire [0:0]\sp_reg[15]_2 ;
  wire [2:0]\sp_reg[3] ;
  wire [3:0]\sp_reg[7] ;
  wire \sr[10]_i_2_n_0 ;
  wire \sr[15]_i_10_n_0 ;
  wire \sr[15]_i_11_n_0 ;
  wire \sr[15]_i_12_n_0 ;
  wire \sr[15]_i_3_n_0 ;
  wire \sr[15]_i_4_n_0 ;
  wire \sr[15]_i_5_n_0 ;
  wire \sr[15]_i_7_n_0 ;
  wire \sr[15]_i_8_n_0 ;
  wire \sr[15]_i_9_n_0 ;
  wire \sr[2]_i_2_n_0 ;
  wire \sr[3]_i_2_n_0 ;
  wire \sr[3]_i_3_n_0 ;
  wire \sr[4]_i_10_n_0 ;
  wire \sr[4]_i_11_n_0 ;
  wire \sr[4]_i_12_n_0 ;
  wire \sr[4]_i_14_n_0 ;
  wire \sr[4]_i_2_n_0 ;
  wire \sr[4]_i_3_n_0 ;
  wire \sr[4]_i_4_n_0 ;
  wire \sr[4]_i_5_0 ;
  wire \sr[4]_i_5_n_0 ;
  wire \sr[4]_i_6_n_0 ;
  wire \sr[4]_i_7_n_0 ;
  wire \sr[4]_i_8_n_0 ;
  wire \sr[4]_i_9_n_0 ;
  wire \sr[5]_i_2_n_0 ;
  wire \sr[5]_i_3_n_0 ;
  wire \sr[5]_i_4_n_0 ;
  wire \sr[5]_i_7_n_0 ;
  wire \sr[5]_i_8_n_0 ;
  wire \sr[5]_i_9_n_0 ;
  wire \sr[6]_i_10_n_0 ;
  wire \sr[6]_i_2_n_0 ;
  wire \sr[6]_i_3_n_0 ;
  wire \sr[6]_i_4_n_0 ;
  wire \sr[6]_i_5_n_0 ;
  wire \sr[6]_i_6_n_0 ;
  wire \sr[6]_i_7_n_0 ;
  wire \sr[6]_i_8_n_0 ;
  wire \sr[6]_i_9_n_0 ;
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
  wire \sr[7]_i_2_n_0 ;
  wire \sr[7]_i_3_n_0 ;
  wire \sr[7]_i_5_n_0 ;
  wire \sr[7]_i_6_n_0 ;
  wire \sr[7]_i_7_n_0 ;
  wire \sr[7]_i_8_n_0 ;
  wire \sr[7]_i_9_n_0 ;
  wire \sr_reg[0] ;
  wire \sr_reg[0]_0 ;
  wire [0:0]\sr_reg[0]_1 ;
  wire [0:0]\sr_reg[0]_10 ;
  wire [0:0]\sr_reg[0]_11 ;
  wire [0:0]\sr_reg[0]_12 ;
  wire [0:0]\sr_reg[0]_13 ;
  wire [0:0]\sr_reg[0]_14 ;
  wire [0:0]\sr_reg[0]_15 ;
  wire [0:0]\sr_reg[0]_2 ;
  wire [0:0]\sr_reg[0]_3 ;
  wire [0:0]\sr_reg[0]_4 ;
  wire [0:0]\sr_reg[0]_5 ;
  wire [0:0]\sr_reg[0]_6 ;
  wire [0:0]\sr_reg[0]_7 ;
  wire [0:0]\sr_reg[0]_8 ;
  wire [0:0]\sr_reg[0]_9 ;
  wire [15:0]\sr_reg[15] ;
  wire [0:0]\sr_reg[6] ;
  wire [3:0]\sr_reg[7] ;
  wire \stat[0]_i_10_n_0 ;
  wire \stat[0]_i_11_n_0 ;
  wire \stat[0]_i_13_n_0 ;
  wire \stat[0]_i_14_n_0 ;
  wire \stat[0]_i_15_n_0 ;
  wire \stat[0]_i_16_n_0 ;
  wire \stat[0]_i_17_n_0 ;
  wire \stat[0]_i_18_n_0 ;
  wire \stat[0]_i_19_n_0 ;
  wire \stat[0]_i_21_n_0 ;
  wire \stat[0]_i_24_n_0 ;
  wire \stat[0]_i_26_n_0 ;
  wire \stat[0]_i_27_n_0 ;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_4_n_0 ;
  wire \stat[0]_i_5_0 ;
  wire \stat[0]_i_5_1 ;
  wire \stat[0]_i_5_n_0 ;
  wire \stat[0]_i_6_n_0 ;
  wire \stat[0]_i_7_n_0 ;
  wire \stat[0]_i_8_n_0 ;
  wire \stat[0]_i_9_n_0 ;
  wire \stat[1]_i_10_n_0 ;
  wire \stat[1]_i_11_n_0 ;
  wire \stat[1]_i_12_n_0 ;
  wire \stat[1]_i_13_n_0 ;
  wire \stat[1]_i_14_n_0 ;
  wire \stat[1]_i_16_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[1]_i_6_n_0 ;
  wire \stat[1]_i_8_n_0 ;
  wire \stat[1]_i_9_n_0 ;
  wire \stat[2]_i_10_n_0 ;
  wire \stat[2]_i_11_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire \stat[2]_i_6_n_0 ;
  wire \stat[2]_i_7_n_0 ;
  wire \stat_reg[0] ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[1] ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[2] ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
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
  wire tout__1_carry_i_22_n_0;
  wire tout__1_carry_i_23_n_0;
  wire tout__1_carry_i_24_n_0;
  wire tout__1_carry_i_25_0;
  wire tout__1_carry_i_25_n_0;
  wire tout__1_carry_i_26_n_0;
  wire tout__1_carry_i_27_n_0;
  wire tout__1_carry_i_28_n_0;
  wire tout__1_carry_i_29_n_0;
  wire tout__1_carry_i_8_n_0;
  wire \tr[15]_i_2_n_0 ;
  wire \tr_reg[0] ;
  wire \tr_reg[10] ;
  wire [3:0]\tr_reg[11] ;
  wire \tr_reg[11]_0 ;
  wire \tr_reg[12] ;
  wire \tr_reg[13] ;
  wire \tr_reg[14] ;
  wire \tr_reg[1] ;
  wire \tr_reg[2] ;
  wire [3:0]\tr_reg[3] ;
  wire \tr_reg[3]_0 ;
  wire \tr_reg[4] ;
  wire \tr_reg[5] ;
  wire \tr_reg[6] ;
  wire [3:0]\tr_reg[7] ;
  wire \tr_reg[7]_0 ;
  wire \tr_reg[8] ;
  wire \tr_reg[9] ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[0]_INST_0 
       (.I0(abus_0[0]),
        .I1(ctl_copro),
        .O(abus_o[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[10]_INST_0 
       (.I0(abus_0[10]),
        .I1(ctl_copro),
        .O(abus_o[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[11]_INST_0 
       (.I0(abus_0[11]),
        .I1(ctl_copro),
        .O(abus_o[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[12]_INST_0 
       (.I0(abus_0[12]),
        .I1(ctl_copro),
        .O(abus_o[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[13]_INST_0 
       (.I0(abus_0[13]),
        .I1(ctl_copro),
        .O(abus_o[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[14]_INST_0 
       (.I0(abus_0[14]),
        .I1(ctl_copro),
        .O(abus_o[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[15]_INST_0 
       (.I0(abus_0[15]),
        .I1(ctl_copro),
        .O(abus_o[15]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \abus_o[15]_INST_0_i_1 
       (.I0(\ccmd[1]_INST_0_i_1_n_0 ),
        .I1(\ccmd[3]_INST_0_i_3_n_0 ),
        .I2(\abus_o[15]_INST_0_i_2_n_0 ),
        .I3(ccmd[4]),
        .O(ctl_copro));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFDFD)) 
    \abus_o[15]_INST_0_i_2 
       (.I0(crdy),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[10]),
        .I4(\ccmd[4]_INST_0_i_2_n_0 ),
        .I5(ir[11]),
        .O(\abus_o[15]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[1]_INST_0 
       (.I0(abus_0[1]),
        .I1(ctl_copro),
        .O(abus_o[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[2]_INST_0 
       (.I0(abus_0[2]),
        .I1(ctl_copro),
        .O(abus_o[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[3]_INST_0 
       (.I0(abus_0[3]),
        .I1(ctl_copro),
        .O(abus_o[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[4]_INST_0 
       (.I0(abus_0[4]),
        .I1(ctl_copro),
        .O(abus_o[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[5]_INST_0 
       (.I0(abus_0[5]),
        .I1(ctl_copro),
        .O(abus_o[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[6]_INST_0 
       (.I0(abus_0[6]),
        .I1(ctl_copro),
        .O(abus_o[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[7]_INST_0 
       (.I0(abus_0[7]),
        .I1(ctl_copro),
        .O(abus_o[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[8]_INST_0 
       (.I0(abus_0[8]),
        .I1(ctl_copro),
        .O(abus_o[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[9]_INST_0 
       (.I0(abus_0[9]),
        .I1(ctl_copro),
        .O(abus_o[9]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[0]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[0]),
        .O(badr[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[0]_INST_0_i_1 
       (.I0(\badr[0]_0 ),
        .I1(\badr[0]_INST_0_i_3_n_0 ),
        .I2(\badr[0]_INST_0_i_4_n_0 ),
        .I3(\badr[0]_1 ),
        .I4(\badr[0]_INST_0_i_6_n_0 ),
        .I5(\badr[0]_INST_0_i_7_n_0 ),
        .O(abus_0[0]));
  LUT6 #(
    .INIT(64'h0000C40000000000)) 
    \badr[0]_INST_0_i_10 
       (.I0(ctl_sela[0]),
        .I1(\badr[15]_INST_0_i_37_n_0 ),
        .I2(\bdatw[15]_INST_0_i_6_3 [0]),
        .I3(\sr_reg[15] [0]),
        .I4(ctl_sela_rn[0]),
        .I5(ctl_sela[1]),
        .O(\badr[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \badr[0]_INST_0_i_11 
       (.I0(\badr[0]_INST_0_i_13_n_0 ),
        .I1(\badr[0]_INST_0_i_14_n_0 ),
        .I2(\badr[0]_INST_0_i_15_n_0 ),
        .I3(\badr[0]_INST_0_i_16_n_0 ),
        .I4(\sr[15]_i_9_n_0 ),
        .I5(\badr[15]_INST_0_i_46_n_0 ),
        .O(ctl_sela[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \badr[0]_INST_0_i_12 
       (.I0(\badr[0]_INST_0_i_17_n_0 ),
        .I1(\badr[0]_INST_0_i_18_n_0 ),
        .I2(\badr[0]_INST_0_i_19_n_0 ),
        .I3(\badr[0]_INST_0_i_20_n_0 ),
        .I4(\badr[0]_INST_0_i_21_n_0 ),
        .I5(\badr[0]_INST_0_i_22_n_0 ),
        .O(ctl_sela[1]));
  LUT6 #(
    .INIT(64'h02AAAAAA02AA02AA)) 
    \badr[0]_INST_0_i_13 
       (.I0(ir[6]),
        .I1(ir[5]),
        .I2(\bdatw[15]_INST_0_i_74_n_0 ),
        .I3(\bdatw[15]_INST_0_i_46_n_0 ),
        .I4(\bdatw[15]_INST_0_i_49_n_0 ),
        .I5(ir[10]),
        .O(\badr[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFD0FFD0FFFFFFD0)) 
    \badr[0]_INST_0_i_14 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[0]_INST_0_i_23_n_0 ),
        .I4(\badr[0]_INST_0_i_24_n_0 ),
        .I5(ir[11]),
        .O(\badr[0]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h33773F77)) 
    \badr[0]_INST_0_i_15 
       (.I0(\badr[0]_INST_0_i_25_n_0 ),
        .I1(\bdatw[15]_INST_0_i_53_n_0 ),
        .I2(\bdatw[15]_INST_0_i_49_n_0 ),
        .I3(ir[8]),
        .I4(ir[6]),
        .O(\badr[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000202020000000)) 
    \badr[0]_INST_0_i_16 
       (.I0(badr_0_sn_1),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\badr[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2F2F2FFF2FFFF)) 
    \badr[0]_INST_0_i_17 
       (.I0(ir[0]),
        .I1(\bcmd[0]_INST_0_i_4_n_0 ),
        .I2(\stat[2]_i_6_n_0 ),
        .I3(\stat[1]_i_14_n_0 ),
        .I4(\badr[0]_INST_0_i_26_n_0 ),
        .I5(tout__1_carry_i_25_0),
        .O(\badr[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBFBFBFBB)) 
    \badr[0]_INST_0_i_18 
       (.I0(\badr[0]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_67_n_0 ),
        .I2(rst_n_fl_reg_3),
        .I3(Q[0]),
        .I4(fch_irq_req),
        .I5(Q[2]),
        .O(\badr[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \badr[0]_INST_0_i_19 
       (.I0(\bdatw[15]_INST_0_i_46_n_0 ),
        .I1(\bcmd[1]_INST_0_i_2_n_0 ),
        .I2(\badr[0]_INST_0_i_24_n_0 ),
        .I3(\badr[15]_INST_0_i_63_n_0 ),
        .I4(\badr[0]_INST_0_i_28_n_0 ),
        .I5(\bcmd[2]_INST_0_i_3_n_0 ),
        .O(\badr[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \badr[0]_INST_0_i_20 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(\bcmd[2]_INST_0_i_2_n_0 ),
        .I3(ir[11]),
        .I4(ir[9]),
        .I5(crdy),
        .O(\badr[0]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000090D00000F0B)) 
    \badr[0]_INST_0_i_21 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(\bcmd[2]_INST_0_i_2_n_0 ),
        .I3(ir[3]),
        .I4(\bcmd[1]_INST_0_i_8_n_0 ),
        .I5(ir[4]),
        .O(\badr[0]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAFAFAF8F2)) 
    \badr[0]_INST_0_i_22 
       (.I0(\stat[0]_i_8_n_0 ),
        .I1(ir[11]),
        .I2(\ccmd[4]_INST_0_i_2_n_0 ),
        .I3(ir[10]),
        .I4(ir[6]),
        .I5(\ccmd[4]_INST_0_i_4_n_0 ),
        .O(\badr[0]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h2F330000)) 
    \badr[0]_INST_0_i_23 
       (.I0(ir[13]),
        .I1(ir[12]),
        .I2(ir[14]),
        .I3(ir[11]),
        .I4(\bdatw[8]_INST_0_i_6_0 ),
        .O(\badr[0]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000040004000400)) 
    \badr[0]_INST_0_i_24 
       (.I0(\badrx[15]_INST_0_i_3_n_0 ),
        .I1(badr_0_sn_1),
        .I2(ir[9]),
        .I3(crdy),
        .I4(ir[10]),
        .I5(ir[8]),
        .O(\badr[0]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \badr[0]_INST_0_i_25 
       (.I0(crdy),
        .I1(ir[10]),
        .I2(badr_0_sn_1),
        .I3(ir[14]),
        .I4(ir[13]),
        .I5(ir[12]),
        .O(\badr[0]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h0000AAA2)) 
    \badr[0]_INST_0_i_26 
       (.I0(\stat[1]_i_11_n_0 ),
        .I1(\badr[0]_INST_0_i_29_n_0 ),
        .I2(\bcmd[1]_INST_0_i_12_n_0 ),
        .I3(\bcmd[1]_INST_0_i_9_n_0 ),
        .I4(tout__1_carry_i_26_n_0),
        .O(\badr[0]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000110000001F00)) 
    \badr[0]_INST_0_i_27 
       (.I0(\badr[0]_INST_0_i_30_n_0 ),
        .I1(ir[11]),
        .I2(\badr[15]_INST_0_i_86_n_0 ),
        .I3(badr_0_sn_1),
        .I4(\badrx[15]_INST_0_i_3_n_0 ),
        .I5(ir[8]),
        .O(\badr[0]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h0000A222)) 
    \badr[0]_INST_0_i_28 
       (.I0(\stat[1]_i_12_n_0 ),
        .I1(ir[15]),
        .I2(\sr_reg[15] [7]),
        .I3(ir[11]),
        .I4(tout__1_carry_i_25_0),
        .O(\badr[0]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \badr[0]_INST_0_i_29 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[1]),
        .I3(ir[12]),
        .O(\badr[0]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[0]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_3 [0]),
        .I2(\badr[15]_INST_0_i_21_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_4 [0]),
        .I4(\bdatw[15]_INST_0_i_7_5 [0]),
        .I5(\badr[15]_INST_0_i_22_n_0 ),
        .O(\badr[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \badr[0]_INST_0_i_30 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(ir[10]),
        .O(\badr[0]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[0]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_23_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_7 [0]),
        .I2(\badr[15]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_6 [0]),
        .I4(\bdatw[15]_INST_0_i_7_8 [0]),
        .I5(\badr[15]_INST_0_i_16_n_0 ),
        .O(\badr[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[0]_INST_0_i_6 
       (.I0(\badr[14]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_1 [0]),
        .I2(\badr[14]_INST_0_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_0 [0]),
        .I4(\bdatw[15]_INST_0_i_7_1 [0]),
        .I5(\badr[14]_INST_0_i_13_n_0 ),
        .O(\badr[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFC0FFC0)) 
    \badr[0]_INST_0_i_7 
       (.I0(\badr[14]_INST_0_i_9_n_0 ),
        .I1(\badr[14]_INST_0_i_8_n_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [0]),
        .I3(\badr[0]_INST_0_i_10_n_0 ),
        .I4(\badr[15]_INST_0_i_11_n_0 ),
        .I5(\sp_reg[15]_0 [0]),
        .O(\badr[0]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[10]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[10]),
        .O(badr[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[10]_INST_0_i_1 
       (.I0(\badr[10]_INST_0_i_2_n_0 ),
        .I1(\badr[10]_INST_0_i_3_n_0 ),
        .I2(\badr[10]_INST_0_i_4_n_0 ),
        .I3(\badr[10]_INST_0_i_5_n_0 ),
        .I4(\badr[10]_INST_0_i_6_n_0 ),
        .I5(\badr[10]_INST_0_i_7_n_0 ),
        .O(abus_0[10]));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[10]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_6 [10]),
        .O(\badr[10]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[10]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [10]),
        .I2(\badr[14]_INST_0_i_9_n_0 ),
        .I3(sp_dec_0[6]),
        .I4(\bdatw[15]_INST_0_i_1_0 [9]),
        .I5(\badr[15]_INST_0_i_29_0 ),
        .O(\badr[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[10]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_0 [10]),
        .I2(\badr[14]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_1 [10]),
        .I4(\sp_reg[15]_0 [10]),
        .I5(\badr[15]_INST_0_i_11_n_0 ),
        .O(\badr[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[10]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [10]),
        .I2(\sr_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_2 [10]),
        .I4(\bdatw[15]_INST_0_i_6_1 [10]),
        .I5(\badr[14]_INST_0_i_16_n_0 ),
        .O(\badr[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[10]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [10]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [10]),
        .I4(\bdatw[15]_INST_0_i_6_5 [10]),
        .I5(\badr[15]_INST_0_i_15_n_0 ),
        .O(\badr[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[10]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_8 [10]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [10]),
        .I4(\bdatw[15]_INST_0_i_7_10 [10]),
        .I5(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \badr[10]_INST_0_i_7 
       (.I0(\badr[10]_INST_0_i_8_n_0 ),
        .I1(\badr[10]_INST_0_i_9_n_0 ),
        .I2(\badr[10]_INST_0_i_1_1 ),
        .I3(\badr[10]_INST_0_i_11_n_0 ),
        .I4(\badrx[15] [10]),
        .I5(\badr[15]_INST_0_i_27_0 ),
        .O(\badr[10]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \badr[10]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_7_3 [10]),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\sr_reg[15] [10]),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[10]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[10]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_37_n_0 ),
        .I1(\badr[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_4 [10]),
        .O(\badr[10]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[11]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[11]),
        .O(badr[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[11]_INST_0_i_1 
       (.I0(\badr[11]_INST_0_i_2_n_0 ),
        .I1(\badr[11]_INST_0_i_3_n_0 ),
        .I2(\badr[11]_INST_0_i_4_n_0 ),
        .I3(\badr[11]_INST_0_i_5_n_0 ),
        .I4(\badr[11]_INST_0_i_6_n_0 ),
        .I5(\badr[11]_INST_0_i_7_n_0 ),
        .O(abus_0[11]));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[11]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_37_n_0 ),
        .I1(\badr[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_4 [11]),
        .O(\badr[11]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[11]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_6 [11]),
        .O(\badr[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[11]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [11]),
        .I2(\badr[14]_INST_0_i_9_n_0 ),
        .I3(sp_dec_0[7]),
        .I4(\bdatw[15]_INST_0_i_1_0 [10]),
        .I5(\badr[15]_INST_0_i_29_0 ),
        .O(\badr[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[11]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_0 [11]),
        .I2(\badr[14]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_1 [11]),
        .I4(\sp_reg[15]_0 [11]),
        .I5(\badr[15]_INST_0_i_11_n_0 ),
        .O(\badr[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[11]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [11]),
        .I2(\sr_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_2 [11]),
        .I4(\bdatw[15]_INST_0_i_6_1 [11]),
        .I5(\badr[14]_INST_0_i_16_n_0 ),
        .O(\badr[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[11]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [11]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [11]),
        .I4(\bdatw[15]_INST_0_i_6_5 [11]),
        .I5(\badr[15]_INST_0_i_15_n_0 ),
        .O(\badr[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[11]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_8 [11]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [11]),
        .I4(\bdatw[15]_INST_0_i_7_10 [11]),
        .I5(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \badr[11]_INST_0_i_7 
       (.I0(\badr[11]_INST_0_i_9_n_0 ),
        .I1(\badr[11]_INST_0_i_10_n_0 ),
        .I2(\badr[11]_INST_0_i_1_0 ),
        .I3(\badr[11]_INST_0_i_12_n_0 ),
        .I4(\badrx[15] [11]),
        .I5(\badr[15]_INST_0_i_27_0 ),
        .O(\badr[11]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \badr[11]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_7_3 [11]),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\sr_reg[15] [11]),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[11]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[12]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[12]),
        .O(badr[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[12]_INST_0_i_1 
       (.I0(\badr[12]_INST_0_i_2_n_0 ),
        .I1(\badr[12]_INST_0_i_3_n_0 ),
        .I2(\badr[12]_INST_0_i_4_n_0 ),
        .I3(\badr[12]_INST_0_i_5_n_0 ),
        .I4(\badr[12]_INST_0_i_6_n_0 ),
        .I5(\badr[12]_INST_0_i_7_n_0 ),
        .O(abus_0[12]));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[12]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_6 [12]),
        .O(\badr[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[12]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [12]),
        .I2(\badr[14]_INST_0_i_9_n_0 ),
        .I3(sp_dec_0[8]),
        .I4(\bdatw[15]_INST_0_i_1_0 [11]),
        .I5(\badr[15]_INST_0_i_29_0 ),
        .O(\badr[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[12]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_0 [12]),
        .I2(\badr[14]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_1 [12]),
        .I4(\sp_reg[15]_0 [12]),
        .I5(\badr[15]_INST_0_i_11_n_0 ),
        .O(\badr[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[12]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [12]),
        .I2(\sr_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_2 [12]),
        .I4(\bdatw[15]_INST_0_i_6_1 [12]),
        .I5(\badr[14]_INST_0_i_16_n_0 ),
        .O(\badr[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[12]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [12]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [12]),
        .I4(\bdatw[15]_INST_0_i_6_5 [12]),
        .I5(\badr[15]_INST_0_i_15_n_0 ),
        .O(\badr[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[12]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_8 [12]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [12]),
        .I4(\bdatw[15]_INST_0_i_7_10 [12]),
        .I5(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \badr[12]_INST_0_i_7 
       (.I0(\badr[12]_INST_0_i_8_n_0 ),
        .I1(\badr[12]_INST_0_i_9_n_0 ),
        .I2(\badr[12]_INST_0_i_1_0 ),
        .I3(\badr[12]_INST_0_i_11_n_0 ),
        .I4(\badrx[15] [12]),
        .I5(\badr[15]_INST_0_i_27_0 ),
        .O(\badr[12]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \badr[12]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_7_3 [12]),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\sr_reg[15] [12]),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[12]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[12]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_37_n_0 ),
        .I1(\badr[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_4 [12]),
        .O(\badr[12]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[13]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[13]),
        .O(badr[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[13]_INST_0_i_1 
       (.I0(\badr[13]_INST_0_i_2_n_0 ),
        .I1(\badr[13]_INST_0_i_3_n_0 ),
        .I2(\badr[13]_INST_0_i_4_n_0 ),
        .I3(\badr[13]_INST_0_i_5_n_0 ),
        .I4(\badr[13]_INST_0_i_6_n_0 ),
        .I5(\badr[13]_INST_0_i_7_n_0 ),
        .O(abus_0[13]));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[13]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_6 [13]),
        .O(\badr[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[13]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [13]),
        .I2(\badr[14]_INST_0_i_9_n_0 ),
        .I3(sp_dec_0[9]),
        .I4(\bdatw[15]_INST_0_i_1_0 [12]),
        .I5(\badr[15]_INST_0_i_29_0 ),
        .O(\badr[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[13]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_0 [13]),
        .I2(\badr[14]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_1 [13]),
        .I4(\sp_reg[15]_0 [13]),
        .I5(\badr[15]_INST_0_i_11_n_0 ),
        .O(\badr[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[13]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [13]),
        .I2(\sr_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_2 [13]),
        .I4(\bdatw[15]_INST_0_i_6_1 [13]),
        .I5(\badr[14]_INST_0_i_16_n_0 ),
        .O(\badr[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[13]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [13]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [13]),
        .I4(\bdatw[15]_INST_0_i_6_5 [13]),
        .I5(\badr[15]_INST_0_i_15_n_0 ),
        .O(\badr[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[13]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_8 [13]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [13]),
        .I4(\bdatw[15]_INST_0_i_7_10 [13]),
        .I5(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \badr[13]_INST_0_i_7 
       (.I0(\badr[13]_INST_0_i_8_n_0 ),
        .I1(\badr[13]_INST_0_i_9_n_0 ),
        .I2(\badr[13]_INST_0_i_1_0 ),
        .I3(\badr[13]_INST_0_i_11_n_0 ),
        .I4(\badrx[15] [13]),
        .I5(\badr[15]_INST_0_i_27_0 ),
        .O(\badr[13]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \badr[13]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_7_3 [13]),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\sr_reg[15] [13]),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[13]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[13]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_37_n_0 ),
        .I1(\badr[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_4 [13]),
        .O(\badr[13]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[14]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[14]),
        .O(badr[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[14]_INST_0_i_1 
       (.I0(\badr[14]_INST_0_i_2_n_0 ),
        .I1(\badr[14]_INST_0_i_3_n_0 ),
        .I2(\badr[14]_INST_0_i_4_n_0 ),
        .I3(\badr[14]_INST_0_i_5_n_0 ),
        .I4(\badr[14]_INST_0_i_6_n_0 ),
        .I5(\badr[14]_INST_0_i_7_n_0 ),
        .O(abus_0[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[14]_INST_0_i_11 
       (.I0(\stat_reg[2] ),
        .I1(rst_n_fl_reg_7),
        .O(\badr[15]_INST_0_i_29_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[14]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_26_n_0 ),
        .I1(rst_n_fl_reg_6),
        .O(\badr[14]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[14]_INST_0_i_13 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(rst_n_fl_reg_6),
        .O(\badr[14]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[14]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(rst_n_fl_reg_7),
        .O(\badr[14]_INST_0_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[14]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_26_n_0 ),
        .I1(\badr[15]_INST_0_i_27_n_0 ),
        .O(\sr_reg[0] ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[14]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_27_n_0 ),
        .O(\badr[14]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \badr[14]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_7_3 [14]),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\sr_reg[15] [14]),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[14]_INST_0_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[14]_INST_0_i_18 
       (.I0(\badr[15]_INST_0_i_37_n_0 ),
        .I1(\badr[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_4 [14]),
        .O(\badr[14]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[14]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [14]),
        .I2(\badr[14]_INST_0_i_9_n_0 ),
        .I3(sp_dec_0[10]),
        .I4(\bdatw[15]_INST_0_i_1_0 [13]),
        .I5(\badr[15]_INST_0_i_29_0 ),
        .O(\badr[14]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[14]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_6 [14]),
        .O(\badr[14]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[14]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_0 [14]),
        .I2(\badr[14]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_1 [14]),
        .I4(\sp_reg[15]_0 [14]),
        .I5(\badr[15]_INST_0_i_11_n_0 ),
        .O(\badr[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[14]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [14]),
        .I2(\sr_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_2 [14]),
        .I4(\bdatw[15]_INST_0_i_6_1 [14]),
        .I5(\badr[14]_INST_0_i_16_n_0 ),
        .O(\badr[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[14]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [14]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [14]),
        .I4(\bdatw[15]_INST_0_i_6_5 [14]),
        .I5(\badr[15]_INST_0_i_15_n_0 ),
        .O(\badr[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[14]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_8 [14]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [14]),
        .I4(\bdatw[15]_INST_0_i_7_10 [14]),
        .I5(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \badr[14]_INST_0_i_7 
       (.I0(\badr[14]_INST_0_i_17_n_0 ),
        .I1(\badr[14]_INST_0_i_18_n_0 ),
        .I2(\badr[14]_INST_0_i_1_1 ),
        .I3(\badr[14]_INST_0_i_20_n_0 ),
        .I4(\badrx[15] [14]),
        .I5(\badr[15]_INST_0_i_27_0 ),
        .O(\badr[14]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[14]_INST_0_i_8 
       (.I0(\stat_reg[2] ),
        .I1(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[14]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[14]_INST_0_i_9 
       (.I0(\stat_reg[2] ),
        .I1(\badr[15]_INST_0_i_27_n_0 ),
        .O(\badr[14]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[15]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[15]),
        .O(badr[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_1 
       (.I0(\badr[15]_INST_0_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_3_n_0 ),
        .I2(\badr[15]_INST_0_i_4_n_0 ),
        .I3(\badr[15]_INST_0_i_5_n_0 ),
        .I4(\badr[15]_INST_0_i_6_n_0 ),
        .I5(\badr[15]_INST_0_i_7_n_0 ),
        .O(abus_0[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_33_n_0 ),
        .I1(rst_n_fl_reg_7),
        .O(\badr[15]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_13 
       (.I0(\badr[15]_INST_0_i_26_n_0 ),
        .I1(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[15]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_28_n_0 ),
        .I1(\badr[15]_INST_0_i_37_n_0 ),
        .O(\sr_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_26_n_0 ),
        .I1(rst_n_fl_reg_7),
        .O(\badr[15]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_38_n_0 ),
        .I1(\badr[15]_INST_0_i_27_n_0 ),
        .O(\badr[15]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_39_n_0 ),
        .I1(rst_n_fl_reg_6),
        .O(\badr[15]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_18 
       (.I0(\badr[15]_INST_0_i_38_n_0 ),
        .I1(rst_n_fl_reg_6),
        .O(\badr[15]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_33_n_0 ),
        .I1(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[15]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \badr[15]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\iv[14]_i_36_0 ),
        .I3(\sp_reg[15]_0 [15]),
        .I4(\badr[15]_INST_0_i_11_n_0 ),
        .I5(\iv[14]_i_36_1 ),
        .O(\badr[15]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_39_n_0 ),
        .I1(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[15]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_21 
       (.I0(\badr[15]_INST_0_i_38_n_0 ),
        .I1(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[15]_INST_0_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_22 
       (.I0(\badr[15]_INST_0_i_39_n_0 ),
        .I1(rst_n_fl_reg_7),
        .O(\badr[15]_INST_0_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_23 
       (.I0(\badr[15]_INST_0_i_38_n_0 ),
        .I1(rst_n_fl_reg_7),
        .O(\badr[15]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_24 
       (.I0(\badr[15]_INST_0_i_39_n_0 ),
        .I1(\badr[15]_INST_0_i_27_n_0 ),
        .O(\badr[15]_INST_0_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_25 
       (.I0(\badr[15]_INST_0_i_33_n_0 ),
        .I1(\badr[15]_INST_0_i_27_n_0 ),
        .O(\badr[15]_INST_0_i_27_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \badr[15]_INST_0_i_26 
       (.I0(\badr[15]_INST_0_i_40_n_0 ),
        .I1(\badr[15]_INST_0_i_41_n_0 ),
        .I2(\badr[15]_INST_0_i_42_n_0 ),
        .I3(ctl_sela[0]),
        .I4(ctl_sela[1]),
        .I5(\sr_reg[15] [0]),
        .O(\badr[15]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0002020200020002)) 
    \badr[15]_INST_0_i_27 
       (.I0(ctl_sela_rn[2]),
        .I1(\badr[15]_INST_0_i_43_n_0 ),
        .I2(\badr[15]_INST_0_i_44_n_0 ),
        .I3(ir[1]),
        .I4(\badr[15]_INST_0_i_45_n_0 ),
        .I5(\badr[15]_INST_0_i_46_n_0 ),
        .O(\badr[15]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFE00000000000000)) 
    \badr[15]_INST_0_i_28 
       (.I0(\badr[15]_INST_0_i_40_n_0 ),
        .I1(\badr[15]_INST_0_i_41_n_0 ),
        .I2(\badr[15]_INST_0_i_42_n_0 ),
        .I3(ctl_sela[0]),
        .I4(ctl_sela[1]),
        .I5(\sr_reg[15] [0]),
        .O(\badr[15]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEEEFEFE)) 
    \badr[15]_INST_0_i_29 
       (.I0(\badr[15]_INST_0_i_43_n_0 ),
        .I1(\badr[15]_INST_0_i_44_n_0 ),
        .I2(ir[1]),
        .I3(\badr[15]_INST_0_i_45_n_0 ),
        .I4(\badr[15]_INST_0_i_46_n_0 ),
        .I5(ctl_sela_rn[2]),
        .O(rst_n_fl_reg_7));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[15]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [15]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [15]),
        .I4(\bdatw[15]_INST_0_i_6_5 [15]),
        .I5(\badr[15]_INST_0_i_15_n_0 ),
        .O(\badr[15]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_30 
       (.I0(ctl_sela[0]),
        .I1(ctl_sela[1]),
        .O(\badr[0]_INST_0_i_12_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \badr[15]_INST_0_i_31 
       (.I0(\badr[15]_INST_0_i_47_n_0 ),
        .I1(ir[0]),
        .I2(\badr[15]_INST_0_i_48_n_0 ),
        .I3(\badr[15]_INST_0_i_49_n_0 ),
        .I4(\badr[15]_INST_0_i_50_n_0 ),
        .I5(\badr[15]_INST_0_i_42_n_0 ),
        .O(ctl_sela_rn[0]));
  LUT6 #(
    .INIT(64'hFEEEFEFE00000000)) 
    \badr[15]_INST_0_i_32 
       (.I0(\badr[15]_INST_0_i_43_n_0 ),
        .I1(\badr[15]_INST_0_i_44_n_0 ),
        .I2(ir[1]),
        .I3(\badr[15]_INST_0_i_45_n_0 ),
        .I4(\badr[15]_INST_0_i_46_n_0 ),
        .I5(ctl_sela_rn[2]),
        .O(rst_n_fl_reg_6));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \badr[15]_INST_0_i_33 
       (.I0(ctl_sela[0]),
        .I1(ctl_sela[1]),
        .I2(\badr[15]_INST_0_i_42_n_0 ),
        .I3(\badr[15]_INST_0_i_51_n_0 ),
        .I4(\badr[15]_INST_0_i_48_n_0 ),
        .I5(\badr[15]_INST_0_i_40_n_0 ),
        .O(\badr[15]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \badr[15]_INST_0_i_34 
       (.I0(ctl_sela[0]),
        .I1(ctl_sela[1]),
        .I2(\badr[15]_INST_0_i_42_n_0 ),
        .I3(\badr[15]_INST_0_i_51_n_0 ),
        .I4(\badr[15]_INST_0_i_48_n_0 ),
        .I5(\badr[15]_INST_0_i_40_n_0 ),
        .O(\stat_reg[2] ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \badr[15]_INST_0_i_35 
       (.I0(\badr[15]_INST_0_i_52_n_0 ),
        .I1(ir[2]),
        .I2(\bcmd[1]_INST_0_i_1_n_0 ),
        .I3(\badr[15]_INST_0_i_53_n_0 ),
        .I4(ir[5]),
        .I5(\badr[15]_INST_0_i_54_n_0 ),
        .O(ctl_sela_rn[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFD0)) 
    \badr[15]_INST_0_i_36 
       (.I0(\badr[15]_INST_0_i_46_n_0 ),
        .I1(\badr[15]_INST_0_i_45_n_0 ),
        .I2(ir[1]),
        .I3(\bcmd[0]_INST_0_i_1_n_0 ),
        .I4(\badr[15]_INST_0_i_55_n_0 ),
        .I5(\badr[15]_INST_0_i_43_n_0 ),
        .O(ctl_sela_rn[1]));
  LUT6 #(
    .INIT(64'h0000000001110101)) 
    \badr[15]_INST_0_i_37 
       (.I0(\badr[15]_INST_0_i_43_n_0 ),
        .I1(\badr[15]_INST_0_i_44_n_0 ),
        .I2(ir[1]),
        .I3(\badr[15]_INST_0_i_45_n_0 ),
        .I4(\badr[15]_INST_0_i_46_n_0 ),
        .I5(ctl_sela_rn[2]),
        .O(\badr[15]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FE000000)) 
    \badr[15]_INST_0_i_38 
       (.I0(\badr[15]_INST_0_i_40_n_0 ),
        .I1(\badr[15]_INST_0_i_41_n_0 ),
        .I2(\badr[15]_INST_0_i_42_n_0 ),
        .I3(ctl_sela[0]),
        .I4(ctl_sela[1]),
        .I5(\sr_reg[15] [0]),
        .O(\badr[15]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \badr[15]_INST_0_i_39 
       (.I0(\badr[15]_INST_0_i_40_n_0 ),
        .I1(\badr[15]_INST_0_i_41_n_0 ),
        .I2(\badr[15]_INST_0_i_42_n_0 ),
        .I3(ctl_sela[0]),
        .I4(ctl_sela[1]),
        .I5(\sr_reg[15] [0]),
        .O(\badr[15]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[15]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_8 [15]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [15]),
        .I4(\bdatw[15]_INST_0_i_7_10 [15]),
        .I5(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \badr[15]_INST_0_i_40 
       (.I0(ir[0]),
        .I1(\badr[15]_INST_0_i_56_n_0 ),
        .I2(\badr[15]_INST_0_i_57_n_0 ),
        .I3(\badr[0]_INST_0_i_22_n_0 ),
        .I4(\badr[15]_INST_0_i_58_n_0 ),
        .I5(\badr[15]_INST_0_i_59_n_0 ),
        .O(\badr[15]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFFFEFFFE)) 
    \badr[15]_INST_0_i_41 
       (.I0(\badr[15]_INST_0_i_48_n_0 ),
        .I1(\badr[15]_INST_0_i_60_n_0 ),
        .I2(\badr[15]_INST_0_i_61_n_0 ),
        .I3(\badr[15]_INST_0_i_62_n_0 ),
        .I4(tout__1_carry_i_20_n_0),
        .I5(\bdatw[15]_INST_0_i_56_n_0 ),
        .O(\badr[15]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h00A2AAAA0080AAAA)) 
    \badr[15]_INST_0_i_42 
       (.I0(ir[3]),
        .I1(ir[7]),
        .I2(ir[8]),
        .I3(\bdatw[15]_INST_0_i_49_n_0 ),
        .I4(\bdatw[15]_INST_0_i_41_n_0 ),
        .I5(ir[10]),
        .O(\badr[15]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAA20AAAAAAAAAAAA)) 
    \badr[15]_INST_0_i_43 
       (.I0(ir[4]),
        .I1(\bdatw[15]_INST_0_i_56_n_0 ),
        .I2(ir[6]),
        .I3(tout__1_carry_i_20_n_0),
        .I4(\stat[0]_i_9_n_0 ),
        .I5(\bdatw[15]_INST_0_i_41_n_0 ),
        .O(\badr[15]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFFFFFAEFFAE)) 
    \badr[15]_INST_0_i_44 
       (.I0(\bcmd[0]_INST_0_i_1_n_0 ),
        .I1(tout__1_carry_i_20_n_0),
        .I2(\stat[0]_i_24_n_0 ),
        .I3(\stat[2]_i_6_n_0 ),
        .I4(\badr[15]_INST_0_i_63_n_0 ),
        .I5(ir[9]),
        .O(\badr[15]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAABAAA)) 
    \badr[15]_INST_0_i_45 
       (.I0(\badr[15]_INST_0_i_59_n_0 ),
        .I1(\badr[15]_INST_0_i_64_n_0 ),
        .I2(ir[6]),
        .I3(ir[3]),
        .I4(ir[4]),
        .I5(\badr[15]_INST_0_i_65_n_0 ),
        .O(\badr[15]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E0E0E00)) 
    \badr[15]_INST_0_i_46 
       (.I0(\badr[15]_INST_0_i_66_n_0 ),
        .I1(\badr[15]_INST_0_i_67_n_0 ),
        .I2(\badr[15]_INST_0_i_68_n_0 ),
        .I3(\bcmd[1]_INST_0_i_3_n_0 ),
        .I4(\bdatw[15]_INST_0_i_73_n_0 ),
        .I5(\badr[15]_INST_0_i_69_n_0 ),
        .O(\badr[15]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0010001000100000)) 
    \badr[15]_INST_0_i_47 
       (.I0(\badr[15]_INST_0_i_59_n_0 ),
        .I1(\badr[15]_INST_0_i_58_n_0 ),
        .I2(\badr[0]_INST_0_i_22_n_0 ),
        .I3(\badr[15]_INST_0_i_57_n_0 ),
        .I4(ir[5]),
        .I5(\bdatw[15]_INST_0_i_74_n_0 ),
        .O(\badr[15]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hAABA)) 
    \badr[15]_INST_0_i_48 
       (.I0(\stat[1]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(rst_n_fl_reg_3),
        .O(\badr[15]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4FFF4F4)) 
    \badr[15]_INST_0_i_49 
       (.I0(\bcmd[0]_INST_0_i_5_n_0 ),
        .I1(\stat[1]_i_9_n_0 ),
        .I2(\bcmd[1]_INST_0_i_4_n_0 ),
        .I3(\badr[15]_INST_0_i_63_n_0 ),
        .I4(ir[8]),
        .I5(\badr[15]_INST_0_i_31_0 ),
        .O(\badr[15]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[15]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_19_n_0 ),
        .I1(\sr_reg[15] [15]),
        .I2(\badr[15]_INST_0_i_20_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_3 [15]),
        .I4(\bdatw[15]_INST_0_i_7_4 [15]),
        .I5(\badr[15]_INST_0_i_21_n_0 ),
        .O(\badr[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0208000002000800)) 
    \badr[15]_INST_0_i_50 
       (.I0(\badr[15]_INST_0_i_62_n_0 ),
        .I1(ir[10]),
        .I2(\bcmd[2]_INST_0_i_2_n_0 ),
        .I3(ir[11]),
        .I4(ir[9]),
        .I5(ir[8]),
        .O(\badr[15]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \badr[15]_INST_0_i_51 
       (.I0(\badr[15]_INST_0_i_50_n_0 ),
        .I1(\badr[15]_INST_0_i_31_0 ),
        .I2(ir[8]),
        .I3(\badr[15]_INST_0_i_63_n_0 ),
        .I4(\bcmd[1]_INST_0_i_4_n_0 ),
        .I5(\badr[15]_INST_0_i_60_n_0 ),
        .O(\badr[15]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \badr[15]_INST_0_i_52 
       (.I0(\badr[15]_INST_0_i_69_n_0 ),
        .I1(\badr[15]_INST_0_i_71_n_0 ),
        .I2(\badr[15]_INST_0_i_65_n_0 ),
        .I3(\badr[15]_INST_0_i_72_n_0 ),
        .I4(\badr[15]_INST_0_i_73_n_0 ),
        .I5(\badr[15]_INST_0_i_74_n_0 ),
        .O(\badr[15]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \badr[15]_INST_0_i_53 
       (.I0(\badr[15]_INST_0_i_75_n_0 ),
        .I1(\badr[15]_INST_0_i_76_n_0 ),
        .I2(\badr[15]_INST_0_i_77_n_0 ),
        .I3(\badr[15]_INST_0_i_78_n_0 ),
        .I4(\badr[0]_INST_0_i_16_n_0 ),
        .I5(\bcmd[0]_INST_0_i_5_n_0 ),
        .O(\badr[15]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \badr[15]_INST_0_i_54 
       (.I0(\bdatw[15]_INST_0_i_55_n_0 ),
        .I1(\bdatw[15]_INST_0_i_54_n_0 ),
        .I2(\badr[15]_INST_0_i_79_n_0 ),
        .I3(\bdatw[15]_INST_0_i_51_n_0 ),
        .I4(\bdatw[15]_INST_0_i_50_n_0 ),
        .I5(\badr[15]_INST_0_i_80_n_0 ),
        .O(\badr[15]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFF2F2F2F2F2F2)) 
    \badr[15]_INST_0_i_55 
       (.I0(ir[9]),
        .I1(\badr[15]_INST_0_i_63_n_0 ),
        .I2(\stat[2]_i_6_n_0 ),
        .I3(ir[6]),
        .I4(ir[7]),
        .I5(tout__1_carry_i_20_n_0),
        .O(\badr[15]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \badr[15]_INST_0_i_56 
       (.I0(ir[5]),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(\bcmd[1]_INST_0_i_10_n_0 ),
        .I3(ir[4]),
        .O(\badr[15]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h000000004000000F)) 
    \badr[15]_INST_0_i_57 
       (.I0(ir[3]),
        .I1(ir[11]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ir[4]),
        .I5(\iv[15]_i_38_n_0 ),
        .O(\badr[15]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \badr[15]_INST_0_i_58 
       (.I0(\badr[15]_INST_0_i_65_n_0 ),
        .I1(ir[6]),
        .I2(ir[3]),
        .I3(ir[4]),
        .I4(ir[11]),
        .I5(\badr[15]_INST_0_i_81_n_0 ),
        .O(\badr[15]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h110F1F0011001F00)) 
    \badr[15]_INST_0_i_59 
       (.I0(ir[7]),
        .I1(\iv[15]_i_37_n_0 ),
        .I2(\ccmd[3]_INST_0_i_2_n_0 ),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[15]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_22_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_5 [15]),
        .I2(\badr[15]_INST_0_i_23_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_7 [15]),
        .I4(\bdatw[15]_INST_0_i_7_6 [15]),
        .I5(\badr[15]_INST_0_i_24_n_0 ),
        .O(\badr[15]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[15]_INST_0_i_60 
       (.I0(\stat[1]_i_9_n_0 ),
        .I1(ir[6]),
        .I2(ir[5]),
        .O(\badr[15]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0101FF01)) 
    \badr[15]_INST_0_i_61 
       (.I0(Q[2]),
        .I1(\bcmd[1] ),
        .I2(rst_n_fl_reg_3),
        .I3(ir[8]),
        .I4(\badr[15]_INST_0_i_63_n_0 ),
        .I5(\bcmd[1]_INST_0_i_4_n_0 ),
        .O(\badr[15]_INST_0_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_62 
       (.I0(ir[6]),
        .I1(ir[3]),
        .O(\badr[15]_INST_0_i_62_n_0 ));
  LUT5 #(
    .INIT(32'hD5D555D5)) 
    \badr[15]_INST_0_i_63 
       (.I0(\bdatw[8]_INST_0_i_6_0 ),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[11]),
        .I4(ir[14]),
        .O(\badr[15]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \badr[15]_INST_0_i_64 
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(badr_0_sn_1),
        .I4(\bcmd[1]_INST_0_i_8_n_0 ),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \badr[15]_INST_0_i_65 
       (.I0(ir[10]),
        .I1(ir[11]),
        .I2(badr_0_sn_1),
        .I3(\badrx[15]_INST_0_i_3_n_0 ),
        .I4(\bdatw[15]_INST_0_i_76_n_0 ),
        .I5(\stat[2]_i_11_n_0 ),
        .O(\badr[15]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \badr[15]_INST_0_i_66 
       (.I0(ir[7]),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(ir[4]),
        .I4(ir[3]),
        .O(\badr[15]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB0FFFFFFFFFF)) 
    \badr[15]_INST_0_i_67 
       (.I0(\badr[15]_INST_0_i_82_n_0 ),
        .I1(ir[5]),
        .I2(\bcmd[1]_INST_0_i_9_n_0 ),
        .I3(badr_0_sn_1),
        .I4(\badrx[15]_INST_0_i_3_n_0 ),
        .I5(\badr[15]_INST_0_i_83_n_0 ),
        .O(\badr[15]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \badr[15]_INST_0_i_68 
       (.I0(\ccmd[4]_INST_0_i_2_n_0 ),
        .I1(Q[0]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ir[4]),
        .I5(\bcmd[1]_INST_0_i_10_n_0 ),
        .O(\badr[15]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000800)) 
    \badr[15]_INST_0_i_69 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[6]),
        .I3(ir[10]),
        .I4(\ccmd[4]_INST_0_i_2_n_0 ),
        .I5(ir[11]),
        .O(\badr[15]_INST_0_i_69_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_27_0 ),
        .I1(\badrx[15] [15]),
        .O(\badr[15]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \badr[15]_INST_0_i_71 
       (.I0(\ccmd[4]_INST_0_i_2_n_0 ),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(ir[4]),
        .I4(\bcmd[1]_INST_0_i_10_n_0 ),
        .O(\badr[15]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \badr[15]_INST_0_i_72 
       (.I0(\badrx[15]_INST_0_i_3_n_0 ),
        .I1(badr_0_sn_1),
        .I2(\bcmd[1]_INST_0_i_8_n_0 ),
        .I3(ir[11]),
        .I4(ir[4]),
        .I5(tout__1_carry_i_21_n_0),
        .O(\badr[15]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \badr[15]_INST_0_i_73 
       (.I0(badr_0_sn_1),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(\badr[15]_INST_0_i_84_n_0 ),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[7]),
        .O(\badr[15]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \badr[15]_INST_0_i_74 
       (.I0(\badr[15]_INST_0_i_85_n_0 ),
        .I1(\ccmd[4]_INST_0_i_4_n_0 ),
        .I2(ir[11]),
        .I3(\badrx[15]_INST_0_i_3_n_0 ),
        .I4(badr_0_sn_1),
        .I5(\badr[15]_INST_0_i_86_n_0 ),
        .O(\badr[15]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h20AAAAAA00000000)) 
    \badr[15]_INST_0_i_75 
       (.I0(ir[10]),
        .I1(ir[14]),
        .I2(ir[11]),
        .I3(ir[12]),
        .I4(ir[13]),
        .I5(\bdatw[8]_INST_0_i_6_0 ),
        .O(\badr[15]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h0404040004000400)) 
    \badr[15]_INST_0_i_76 
       (.I0(\bcmd[0]_INST_0_i_2_n_0 ),
        .I1(ir[11]),
        .I2(\ccmd[4]_INST_0_i_2_n_0 ),
        .I3(Q[0]),
        .I4(ir[5]),
        .I5(ir[6]),
        .O(\badr[15]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \badr[15]_INST_0_i_77 
       (.I0(\badrx[15]_INST_0_i_3_n_0 ),
        .I1(badr_0_sn_1),
        .I2(\bcmd[1]_INST_0_i_8_n_0 ),
        .I3(ir[11]),
        .I4(ir[5]),
        .I5(\badr[15]_INST_0_i_87_n_0 ),
        .O(\badr[15]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h0000080008000800)) 
    \badr[15]_INST_0_i_78 
       (.I0(ir[2]),
        .I1(\badr[15]_INST_0_i_83_n_0 ),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(badr_0_sn_1),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .I5(\badr[15]_INST_0_i_88_n_0 ),
        .O(\badr[15]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0BBFFFF)) 
    \badr[15]_INST_0_i_79 
       (.I0(\bdatw[15]_INST_0_i_76_n_0 ),
        .I1(\badr[15]_INST_0_i_89_n_0 ),
        .I2(\stat[0]_i_14_n_0 ),
        .I3(ir[11]),
        .I4(badr_0_sn_1),
        .I5(\badrx[15]_INST_0_i_3_n_0 ),
        .O(\badr[15]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \badr[15]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_6_2 [15]),
        .I1(\badr[15]_INST_0_i_26_n_0 ),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_2 [15]),
        .I4(\badr[15]_INST_0_i_28_n_0 ),
        .I5(rst_n_fl_reg_7),
        .O(\badr[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \badr[15]_INST_0_i_80 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(badr_0_sn_1),
        .I4(ir[11]),
        .I5(\bdatw[15]_INST_0_i_79_n_0 ),
        .O(\badr[15]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \badr[15]_INST_0_i_81 
       (.I0(\bcmd[1]_INST_0_i_8_n_0 ),
        .I1(tout__1_carry_i_25_0),
        .I2(ir[15]),
        .I3(ir[14]),
        .I4(ir[13]),
        .I5(ir[12]),
        .O(\badr[15]_INST_0_i_81_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \badr[15]_INST_0_i_82 
       (.I0(ir[6]),
        .I1(ir[3]),
        .I2(ir[4]),
        .O(\badr[15]_INST_0_i_82_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[15]_INST_0_i_83 
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(ir[9]),
        .O(\badr[15]_INST_0_i_83_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \badr[15]_INST_0_i_84 
       (.I0(ir[10]),
        .I1(ir[11]),
        .O(\badr[15]_INST_0_i_84_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \badr[15]_INST_0_i_85 
       (.I0(ir[8]),
        .I1(ir[6]),
        .I2(ir[9]),
        .O(\badr[15]_INST_0_i_85_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \badr[15]_INST_0_i_86 
       (.I0(ir[10]),
        .I1(crdy),
        .O(\badr[15]_INST_0_i_86_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \badr[15]_INST_0_i_87 
       (.I0(ir[4]),
        .I1(ir[2]),
        .I2(ir[3]),
        .O(\badr[15]_INST_0_i_87_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \badr[15]_INST_0_i_88 
       (.I0(ir[4]),
        .I1(ir[3]),
        .I2(ir[6]),
        .I3(ir[5]),
        .O(\badr[15]_INST_0_i_88_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_89 
       (.I0(ir[10]),
        .I1(ir[8]),
        .O(\badr[15]_INST_0_i_89_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[15]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\bdatw[15]_INST_0_i_6_1 [15]),
        .O(\badr[15]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[1]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[1]),
        .O(badr[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[1]_INST_0_i_1 
       (.I0(\badr[1]_INST_0_i_2_n_0 ),
        .I1(\badr[1]_INST_0_i_3_n_0 ),
        .I2(\badr[1]_INST_0_i_4_n_0 ),
        .I3(\badr[1]_INST_0_i_5_n_0 ),
        .I4(\badr[1]_INST_0_i_6_n_0 ),
        .I5(\badr[1]_INST_0_i_7_n_0 ),
        .O(abus_0[1]));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[1]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_6 [1]),
        .O(\badr[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[1]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [1]),
        .I2(\badr[14]_INST_0_i_9_n_0 ),
        .I3(O[1]),
        .I4(\bdatw[15]_INST_0_i_1_0 [0]),
        .I5(\badr[15]_INST_0_i_29_0 ),
        .O(\badr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[1]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_0 [1]),
        .I2(\badr[14]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_1 [1]),
        .I4(\sp_reg[15]_0 [1]),
        .I5(\badr[15]_INST_0_i_11_n_0 ),
        .O(\badr[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[1]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [1]),
        .I2(\sr_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_2 [1]),
        .I4(\bdatw[15]_INST_0_i_6_1 [1]),
        .I5(\badr[14]_INST_0_i_16_n_0 ),
        .O(\badr[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[1]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [1]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [1]),
        .I4(\bdatw[15]_INST_0_i_6_5 [1]),
        .I5(\badr[15]_INST_0_i_15_n_0 ),
        .O(\badr[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[1]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_8 [1]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [1]),
        .I4(\bdatw[15]_INST_0_i_7_10 [1]),
        .I5(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \badr[1]_INST_0_i_7 
       (.I0(\badr[1]_INST_0_i_8_n_0 ),
        .I1(\badr[1]_INST_0_i_9_n_0 ),
        .I2(\badr[1]_INST_0_i_1_0 ),
        .I3(\badr[1]_INST_0_i_11_n_0 ),
        .I4(\badrx[15] [1]),
        .I5(\badr[15]_INST_0_i_27_0 ),
        .O(\badr[1]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \badr[1]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_7_3 [1]),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\sr_reg[15] [1]),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[1]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[1]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_37_n_0 ),
        .I1(\badr[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_4 [1]),
        .O(\badr[1]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[2]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[2]),
        .O(badr[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[2]_INST_0_i_1 
       (.I0(\badr[2]_INST_0_i_2_n_0 ),
        .I1(\badr[2]_INST_0_i_3_n_0 ),
        .I2(\badr[2]_INST_0_i_4_n_0 ),
        .I3(\badr[2]_INST_0_i_5_n_0 ),
        .I4(\badr[2]_INST_0_i_6_n_0 ),
        .I5(\badr[2]_INST_0_i_7_n_0 ),
        .O(abus_0[2]));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[2]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_6 [2]),
        .O(\badr[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[2]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [2]),
        .I2(\badr[14]_INST_0_i_9_n_0 ),
        .I3(O[2]),
        .I4(\bdatw[15]_INST_0_i_1_0 [1]),
        .I5(\badr[15]_INST_0_i_29_0 ),
        .O(\badr[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[2]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_0 [2]),
        .I2(\badr[14]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_1 [2]),
        .I4(\sp_reg[15]_0 [2]),
        .I5(\badr[15]_INST_0_i_11_n_0 ),
        .O(\badr[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[2]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [2]),
        .I2(\sr_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_2 [2]),
        .I4(\bdatw[15]_INST_0_i_6_1 [2]),
        .I5(\badr[14]_INST_0_i_16_n_0 ),
        .O(\badr[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[2]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [2]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [2]),
        .I4(\bdatw[15]_INST_0_i_6_5 [2]),
        .I5(\badr[15]_INST_0_i_15_n_0 ),
        .O(\badr[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[2]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_8 [2]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [2]),
        .I4(\bdatw[15]_INST_0_i_7_10 [2]),
        .I5(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \badr[2]_INST_0_i_7 
       (.I0(\badr[2]_INST_0_i_8_n_0 ),
        .I1(\badr[2]_INST_0_i_9_n_0 ),
        .I2(\badr[2]_INST_0_i_1_0 ),
        .I3(\badr[2]_INST_0_i_11_n_0 ),
        .I4(\badrx[15] [2]),
        .I5(\badr[15]_INST_0_i_27_0 ),
        .O(\badr[2]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \badr[2]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_7_3 [2]),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\sr_reg[15] [2]),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[2]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[2]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_37_n_0 ),
        .I1(\badr[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_4 [2]),
        .O(\badr[2]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[3]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[3]),
        .O(badr[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[3]_INST_0_i_1 
       (.I0(\badr[3]_INST_0_i_2_n_0 ),
        .I1(\badr[3]_INST_0_i_3_n_0 ),
        .I2(\badr[3]_INST_0_i_4_n_0 ),
        .I3(\badr[3]_INST_0_i_5_n_0 ),
        .I4(\badr[3]_INST_0_i_6_n_0 ),
        .I5(\badr[3]_INST_0_i_7_n_0 ),
        .O(abus_0[3]));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[3]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_6 [3]),
        .O(\badr[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[3]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [3]),
        .I2(\badr[14]_INST_0_i_9_n_0 ),
        .I3(O[3]),
        .I4(\bdatw[15]_INST_0_i_1_0 [2]),
        .I5(\badr[15]_INST_0_i_29_0 ),
        .O(\badr[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[3]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_0 [3]),
        .I2(\badr[14]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_1 [3]),
        .I4(\sp_reg[15]_0 [3]),
        .I5(\badr[15]_INST_0_i_11_n_0 ),
        .O(\badr[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[3]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [3]),
        .I2(\sr_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_2 [3]),
        .I4(\bdatw[15]_INST_0_i_6_1 [3]),
        .I5(\badr[14]_INST_0_i_16_n_0 ),
        .O(\badr[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[3]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [3]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [3]),
        .I4(\bdatw[15]_INST_0_i_6_5 [3]),
        .I5(\badr[15]_INST_0_i_15_n_0 ),
        .O(\badr[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[3]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_8 [3]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [3]),
        .I4(\bdatw[15]_INST_0_i_7_10 [3]),
        .I5(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \badr[3]_INST_0_i_7 
       (.I0(\badr[3]_INST_0_i_8_n_0 ),
        .I1(\badr[3]_INST_0_i_9_n_0 ),
        .I2(\badr[3]_INST_0_i_1_0 ),
        .I3(\badr[3]_INST_0_i_11_n_0 ),
        .I4(\badrx[15] [3]),
        .I5(\badr[15]_INST_0_i_27_0 ),
        .O(\badr[3]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \badr[3]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_7_3 [3]),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\sr_reg[15] [3]),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[3]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[3]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_37_n_0 ),
        .I1(\badr[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_4 [3]),
        .O(\badr[3]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[4]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[4]),
        .O(badr[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[4]_INST_0_i_1 
       (.I0(\badr[4]_INST_0_i_2_n_0 ),
        .I1(\badr[4]_INST_0_i_3_n_0 ),
        .I2(\badr[4]_INST_0_i_4_n_0 ),
        .I3(\badr[4]_INST_0_i_5_n_0 ),
        .I4(\badr[4]_INST_0_i_6_n_0 ),
        .I5(\badr[4]_INST_0_i_7_n_0 ),
        .O(abus_0[4]));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[4]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_6 [4]),
        .O(\badr[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[4]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [4]),
        .I2(\badr[14]_INST_0_i_9_n_0 ),
        .I3(sp_dec_0[0]),
        .I4(\bdatw[15]_INST_0_i_1_0 [3]),
        .I5(\badr[15]_INST_0_i_29_0 ),
        .O(\badr[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[4]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_0 [4]),
        .I2(\badr[14]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_1 [4]),
        .I4(\sp_reg[15]_0 [4]),
        .I5(\badr[15]_INST_0_i_11_n_0 ),
        .O(\badr[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[4]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [4]),
        .I2(\sr_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_2 [4]),
        .I4(\bdatw[15]_INST_0_i_6_1 [4]),
        .I5(\badr[14]_INST_0_i_16_n_0 ),
        .O(\badr[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[4]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [4]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [4]),
        .I4(\bdatw[15]_INST_0_i_6_5 [4]),
        .I5(\badr[15]_INST_0_i_15_n_0 ),
        .O(\badr[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[4]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_8 [4]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [4]),
        .I4(\bdatw[15]_INST_0_i_7_10 [4]),
        .I5(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \badr[4]_INST_0_i_7 
       (.I0(\badr[4]_INST_0_i_8_n_0 ),
        .I1(\badr[4]_INST_0_i_9_n_0 ),
        .I2(\badr[4]_INST_0_i_1_0 ),
        .I3(\badr[4]_INST_0_i_11_n_0 ),
        .I4(\badrx[15] [4]),
        .I5(\badr[15]_INST_0_i_27_0 ),
        .O(\badr[4]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \badr[4]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_7_3 [4]),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\sr_reg[15] [4]),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[4]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[4]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_37_n_0 ),
        .I1(\badr[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_4 [4]),
        .O(\badr[4]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[5]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[5]),
        .O(badr[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[5]_INST_0_i_1 
       (.I0(\badr[5]_INST_0_i_2_n_0 ),
        .I1(\badr[5]_INST_0_i_3_n_0 ),
        .I2(\badr[5]_INST_0_i_4_n_0 ),
        .I3(\badr[5]_INST_0_i_5_n_0 ),
        .I4(\badr[5]_INST_0_i_6_n_0 ),
        .I5(\badr[5]_INST_0_i_7_n_0 ),
        .O(abus_0[5]));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[5]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_6 [5]),
        .O(\badr[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[5]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [5]),
        .I2(\badr[14]_INST_0_i_9_n_0 ),
        .I3(sp_dec_0[1]),
        .I4(\bdatw[15]_INST_0_i_1_0 [4]),
        .I5(\badr[15]_INST_0_i_29_0 ),
        .O(\badr[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[5]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_0 [5]),
        .I2(\badr[14]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_1 [5]),
        .I4(\sp_reg[15]_0 [5]),
        .I5(\badr[15]_INST_0_i_11_n_0 ),
        .O(\badr[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[5]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [5]),
        .I2(\sr_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_2 [5]),
        .I4(\bdatw[15]_INST_0_i_6_1 [5]),
        .I5(\badr[14]_INST_0_i_16_n_0 ),
        .O(\badr[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[5]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [5]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [5]),
        .I4(\bdatw[15]_INST_0_i_6_5 [5]),
        .I5(\badr[15]_INST_0_i_15_n_0 ),
        .O(\badr[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[5]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_8 [5]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [5]),
        .I4(\bdatw[15]_INST_0_i_7_10 [5]),
        .I5(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \badr[5]_INST_0_i_7 
       (.I0(\badr[5]_INST_0_i_8_n_0 ),
        .I1(\badr[5]_INST_0_i_9_n_0 ),
        .I2(\badr[5]_INST_0_i_1_0 ),
        .I3(\badr[5]_INST_0_i_11_n_0 ),
        .I4(\badrx[15] [5]),
        .I5(\badr[15]_INST_0_i_27_0 ),
        .O(\badr[5]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \badr[5]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_7_3 [5]),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\sr_reg[15] [5]),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[5]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[5]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_37_n_0 ),
        .I1(\badr[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_4 [5]),
        .O(\badr[5]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[6]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[6]),
        .O(badr[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[6]_INST_0_i_1 
       (.I0(\badr[6]_INST_0_i_2_n_0 ),
        .I1(\badr[6]_INST_0_i_3_n_0 ),
        .I2(\badr[6]_INST_0_i_4_n_0 ),
        .I3(\badr[6]_INST_0_i_5_n_0 ),
        .I4(\badr[6]_INST_0_i_6_n_0 ),
        .I5(\badr[6]_INST_0_i_7_n_0 ),
        .O(abus_0[6]));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[6]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_6 [6]),
        .O(\badr[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[6]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [6]),
        .I2(\badr[14]_INST_0_i_9_n_0 ),
        .I3(sp_dec_0[2]),
        .I4(\bdatw[15]_INST_0_i_1_0 [5]),
        .I5(\badr[15]_INST_0_i_29_0 ),
        .O(\badr[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[6]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_0 [6]),
        .I2(\badr[14]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_1 [6]),
        .I4(\sp_reg[15]_0 [6]),
        .I5(\badr[15]_INST_0_i_11_n_0 ),
        .O(\badr[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[6]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [6]),
        .I2(\sr_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_2 [6]),
        .I4(\bdatw[15]_INST_0_i_6_1 [6]),
        .I5(\badr[14]_INST_0_i_16_n_0 ),
        .O(\badr[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[6]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [6]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [6]),
        .I4(\bdatw[15]_INST_0_i_6_5 [6]),
        .I5(\badr[15]_INST_0_i_15_n_0 ),
        .O(\badr[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[6]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_8 [6]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [6]),
        .I4(\bdatw[15]_INST_0_i_7_10 [6]),
        .I5(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \badr[6]_INST_0_i_7 
       (.I0(\badr[6]_INST_0_i_8_n_0 ),
        .I1(\badr[6]_INST_0_i_9_n_0 ),
        .I2(\badr[6]_INST_0_i_1_1 ),
        .I3(\badr[6]_INST_0_i_11_n_0 ),
        .I4(\badrx[15] [6]),
        .I5(\badr[15]_INST_0_i_27_0 ),
        .O(\badr[6]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \badr[6]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_7_3 [6]),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\sr_reg[15] [6]),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[6]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[6]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_37_n_0 ),
        .I1(\badr[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_4 [6]),
        .O(\badr[6]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[7]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[7]),
        .O(badr[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[7]_INST_0_i_1 
       (.I0(\badr[7]_INST_0_i_2_n_0 ),
        .I1(\badr[7]_INST_0_i_3_n_0 ),
        .I2(\badr[7]_INST_0_i_4_n_0 ),
        .I3(\badr[7]_INST_0_i_5_n_0 ),
        .I4(\badr[7]_INST_0_i_6_n_0 ),
        .I5(\badr[7]_INST_0_i_7_n_0 ),
        .O(abus_0[7]));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[7]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_37_n_0 ),
        .I1(\badr[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_4 [7]),
        .O(\badr[7]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[7]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_6 [7]),
        .O(\badr[7]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[7]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [7]),
        .I2(\badr[14]_INST_0_i_9_n_0 ),
        .I3(sp_dec_0[3]),
        .I4(\bdatw[15]_INST_0_i_1_0 [6]),
        .I5(\badr[15]_INST_0_i_29_0 ),
        .O(\badr[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[7]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_0 [7]),
        .I2(\badr[14]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_1 [7]),
        .I4(\sp_reg[15]_0 [7]),
        .I5(\badr[15]_INST_0_i_11_n_0 ),
        .O(\badr[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[7]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [7]),
        .I2(\sr_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_2 [7]),
        .I4(\bdatw[15]_INST_0_i_6_1 [7]),
        .I5(\badr[14]_INST_0_i_16_n_0 ),
        .O(\badr[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[7]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [7]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [7]),
        .I4(\bdatw[15]_INST_0_i_6_5 [7]),
        .I5(\badr[15]_INST_0_i_15_n_0 ),
        .O(\badr[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[7]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_8 [7]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [7]),
        .I4(\bdatw[15]_INST_0_i_7_10 [7]),
        .I5(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \badr[7]_INST_0_i_7 
       (.I0(\badr[7]_INST_0_i_9_n_0 ),
        .I1(\badr[7]_INST_0_i_10_n_0 ),
        .I2(\badr[7]_INST_0_i_1_0 ),
        .I3(\badr[7]_INST_0_i_12_n_0 ),
        .I4(\badrx[15] [7]),
        .I5(\badr[15]_INST_0_i_27_0 ),
        .O(\badr[7]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \badr[7]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_7_3 [7]),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\sr_reg[15] [7]),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[7]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[8]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[8]),
        .O(badr[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[8]_INST_0_i_1 
       (.I0(\badr[8]_INST_0_i_2_n_0 ),
        .I1(\badr[8]_INST_0_i_3_n_0 ),
        .I2(\badr[8]_INST_0_i_4_n_0 ),
        .I3(\badr[8]_INST_0_i_5_n_0 ),
        .I4(\badr[8]_INST_0_i_6_n_0 ),
        .I5(\badr[8]_INST_0_i_7_n_0 ),
        .O(abus_0[8]));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[8]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_6 [8]),
        .O(\badr[8]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[8]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [8]),
        .I2(\badr[14]_INST_0_i_9_n_0 ),
        .I3(sp_dec_0[4]),
        .I4(\bdatw[15]_INST_0_i_1_0 [7]),
        .I5(\badr[15]_INST_0_i_29_0 ),
        .O(\badr[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[8]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_0 [8]),
        .I2(\badr[14]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_1 [8]),
        .I4(\sp_reg[15]_0 [8]),
        .I5(\badr[15]_INST_0_i_11_n_0 ),
        .O(\badr[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[8]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [8]),
        .I2(\sr_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_2 [8]),
        .I4(\bdatw[15]_INST_0_i_6_1 [8]),
        .I5(\badr[14]_INST_0_i_16_n_0 ),
        .O(\badr[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[8]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [8]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [8]),
        .I4(\bdatw[15]_INST_0_i_6_5 [8]),
        .I5(\badr[15]_INST_0_i_15_n_0 ),
        .O(\badr[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[8]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_8 [8]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [8]),
        .I4(\bdatw[15]_INST_0_i_7_10 [8]),
        .I5(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \badr[8]_INST_0_i_7 
       (.I0(\badr[8]_INST_0_i_8_n_0 ),
        .I1(\badr[8]_INST_0_i_9_n_0 ),
        .I2(\badr[8]_INST_0_i_1_0 ),
        .I3(\badr[8]_INST_0_i_11_n_0 ),
        .I4(\badrx[15] [8]),
        .I5(\badr[15]_INST_0_i_27_0 ),
        .O(\badr[8]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \badr[8]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_7_3 [8]),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\sr_reg[15] [8]),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[8]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[8]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_37_n_0 ),
        .I1(\badr[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_4 [8]),
        .O(\badr[8]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \badr[9]_INST_0 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[9]),
        .O(badr[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[9]_INST_0_i_1 
       (.I0(\badr[9]_INST_0_i_2_n_0 ),
        .I1(\badr[9]_INST_0_i_3_n_0 ),
        .I2(\badr[9]_INST_0_i_4_n_0 ),
        .I3(\badr[9]_INST_0_i_5_n_0 ),
        .I4(\badr[9]_INST_0_i_6_n_0 ),
        .I5(\badr[9]_INST_0_i_7_n_0 ),
        .O(abus_0[9]));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[9]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_6 [9]),
        .O(\badr[9]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[9]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [9]),
        .I2(\badr[14]_INST_0_i_9_n_0 ),
        .I3(sp_dec_0[5]),
        .I4(\bdatw[15]_INST_0_i_1_0 [8]),
        .I5(\badr[15]_INST_0_i_29_0 ),
        .O(\badr[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[9]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_0 [9]),
        .I2(\badr[14]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_1 [9]),
        .I4(\sp_reg[15]_0 [9]),
        .I5(\badr[15]_INST_0_i_11_n_0 ),
        .O(\badr[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[9]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [9]),
        .I2(\sr_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_2 [9]),
        .I4(\bdatw[15]_INST_0_i_6_1 [9]),
        .I5(\badr[14]_INST_0_i_16_n_0 ),
        .O(\badr[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[9]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [9]),
        .I2(\sr_reg[0]_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [9]),
        .I4(\bdatw[15]_INST_0_i_6_5 [9]),
        .I5(\badr[15]_INST_0_i_15_n_0 ),
        .O(\badr[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[9]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_8 [9]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [9]),
        .I4(\bdatw[15]_INST_0_i_7_10 [9]),
        .I5(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \badr[9]_INST_0_i_7 
       (.I0(\badr[9]_INST_0_i_8_n_0 ),
        .I1(\badr[9]_INST_0_i_9_n_0 ),
        .I2(\badr[9]_INST_0_i_1_0 ),
        .I3(\badr[9]_INST_0_i_11_n_0 ),
        .I4(\badrx[15] [9]),
        .I5(\badr[15]_INST_0_i_27_0 ),
        .O(\badr[9]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \badr[9]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_7_3 [9]),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\sr_reg[15] [9]),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .O(\badr[9]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[9]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_37_n_0 ),
        .I1(\badr[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_4 [9]),
        .O(\badr[9]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[0]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15] [0]),
        .O(badrx[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[10]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15] [10]),
        .O(badrx[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[11]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15] [11]),
        .O(badrx[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[12]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15] [12]),
        .O(badrx[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[13]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15] [13]),
        .O(badrx[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[14]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15] [14]),
        .O(badrx[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[15]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15] [15]),
        .O(badrx[15]));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \badrx[15]_INST_0_i_1 
       (.I0(badr_0_sn_1),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(\badrx[15]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \badrx[15]_INST_0_i_3 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .O(\badrx[15]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[1]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15] [1]),
        .O(badrx[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[2]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15] [2]),
        .O(badrx[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[3]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15] [3]),
        .O(badrx[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[4]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15] [4]),
        .O(badrx[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[5]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15] [5]),
        .O(badrx[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[6]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15] [6]),
        .O(badrx[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[7]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15] [7]),
        .O(badrx[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[8]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15] [8]),
        .O(badrx[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[9]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15] [9]),
        .O(badrx[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[0]_INST_0 
       (.I0(ctl_copro),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
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
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bbus_o[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[4]_INST_0 
       (.I0(ctl_copro),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
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
    .INIT(64'hAAABAAAABBBBBBBB)) 
    \bcmd[0]_INST_0 
       (.I0(\bcmd[0]_INST_0_i_1_n_0 ),
        .I1(ir[6]),
        .I2(\bcmd[0]_INST_0_i_2_n_0 ),
        .I3(\bcmd[0]_INST_0_i_3_n_0 ),
        .I4(Q[0]),
        .I5(\bcmd[2]_INST_0_i_1_n_0 ),
        .O(\stat_reg[0] ));
  LUT6 #(
    .INIT(64'h0B0B0B0B0BFF0B0B)) 
    \bcmd[0]_INST_0_i_1 
       (.I0(ir[0]),
        .I1(Q[0]),
        .I2(\bcmd[0]_INST_0_i_4_n_0 ),
        .I3(\bcmd[0]_INST_0_i_5_n_0 ),
        .I4(ir[11]),
        .I5(\bcmd[0]_INST_0_i_6_n_0 ),
        .O(\bcmd[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \bcmd[0]_INST_0_i_2 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[7]),
        .O(\bcmd[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \bcmd[0]_INST_0_i_3 
       (.I0(rst_n_fl_reg_1),
        .I1(ir[12]),
        .I2(ir[15]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(ir[11]),
        .O(\bcmd[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \bcmd[0]_INST_0_i_4 
       (.I0(ir[1]),
        .I1(\bcmd[1]_INST_0_i_12_n_0 ),
        .I2(\bcmd[1]_INST_0_i_9_n_0 ),
        .I3(rst_n_fl_reg_2),
        .I4(ir[15]),
        .I5(\bdatw[15]_INST_0_i_81_0 ),
        .O(\bcmd[0]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bcmd[0]_INST_0_i_5 
       (.I0(ir[5]),
        .I1(ir[6]),
        .O(\bcmd[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \bcmd[0]_INST_0_i_6 
       (.I0(tout__1_carry_i_25_0),
        .I1(ir[15]),
        .I2(ir[14]),
        .I3(ir[13]),
        .I4(ir[12]),
        .I5(\bcmd[1]_INST_0_i_10_n_0 ),
        .O(\bcmd[0]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bcmd[0]_INST_0_i_7 
       (.I0(ir[13]),
        .I1(ir[14]),
        .O(rst_n_fl_reg_1));
  LUT5 #(
    .INIT(32'hEEAEAEAE)) 
    \bcmd[1]_INST_0 
       (.I0(\bcmd[1]_INST_0_i_1_n_0 ),
        .I1(ir[6]),
        .I2(\bcmd[2]_INST_0_i_1_n_0 ),
        .I3(Q[0]),
        .I4(\bcmd[1]_INST_0_i_2_n_0 ),
        .O(\stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hF2FFF2F2F2F2F2F2)) 
    \bcmd[1]_INST_0_i_1 
       (.I0(ir[5]),
        .I1(\bcmd[1]_INST_0_i_3_n_0 ),
        .I2(\bcmd[1]_INST_0_i_4_n_0 ),
        .I3(\bcmd[1] ),
        .I4(\bcmd[1]_INST_0_i_6_n_0 ),
        .I5(\bcmd[1]_INST_0_i_7_n_0 ),
        .O(\bcmd[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \bcmd[1]_INST_0_i_10 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[10]),
        .I4(ir[3]),
        .O(\bcmd[1]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bcmd[1]_INST_0_i_11 
       (.I0(ir[11]),
        .I1(ir[12]),
        .I2(ir[14]),
        .I3(ir[13]),
        .O(rst_n_fl_reg_2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bcmd[1]_INST_0_i_12 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[7]),
        .I3(ir[3]),
        .I4(ir[2]),
        .I5(ir[10]),
        .O(\bcmd[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \bcmd[1]_INST_0_i_2 
       (.I0(\ccmd[4]_INST_0_i_2_n_0 ),
        .I1(ir[11]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\bcmd[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \bcmd[1]_INST_0_i_3 
       (.I0(ir[12]),
        .I1(rst_n_fl_reg_1),
        .I2(badr_0_sn_1),
        .I3(\bcmd[1]_INST_0_i_8_n_0 ),
        .I4(ir[6]),
        .I5(ir[3]),
        .O(\bcmd[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \bcmd[1]_INST_0_i_4 
       (.I0(ir[12]),
        .I1(rst_n_fl_reg_1),
        .I2(badr_0_sn_1),
        .I3(ir[11]),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .I5(\bcmd[1]_INST_0_i_10_n_0 ),
        .O(\bcmd[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bcmd[1]_INST_0_i_6 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(ir[15]),
        .I3(rst_n_fl_reg_2),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .I5(\bcmd[1]_INST_0_i_12_n_0 ),
        .O(\bcmd[1]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bcmd[1]_INST_0_i_7 
       (.I0(ir[0]),
        .I1(ir[1]),
        .O(\bcmd[1]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bcmd[1]_INST_0_i_8 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[7]),
        .I3(ir[8]),
        .O(\bcmd[1]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bcmd[1]_INST_0_i_9 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(ir[4]),
        .O(\bcmd[1]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bcmd[2]_INST_0 
       (.I0(ir[7]),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .O(bcmd));
  LUT6 #(
    .INIT(64'h00FFFFFFFBFFFFFF)) 
    \bcmd[2]_INST_0_i_1 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(\bcmd[2]_INST_0_i_3_n_0 ),
        .O(\bcmd[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \bcmd[2]_INST_0_i_2 
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[15]),
        .I4(tout__1_carry_i_25_0),
        .O(\bcmd[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \bcmd[2]_INST_0_i_3 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(badr_0_sn_1),
        .I4(ir[11]),
        .I5(ir[10]),
        .O(\bcmd[2]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[0]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(bdatw[0]));
  LUT5 #(
    .INIT(32'h10F000E0)) 
    \bdatw[10]_INST_0 
       (.I0(ir[7]),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(\stat_reg[0]_0 ),
        .I3(\bdatw[10]_INST_0_i_1_n_0 ),
        .I4(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[10]));
  LUT6 #(
    .INIT(64'h00000000000000BF)) 
    \bdatw[10]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[10]),
        .I2(ctl_selb_0[0]),
        .I3(p_1_in[10]),
        .I4(\bdatw[10]_INST_0_i_4_n_0 ),
        .I5(\bdatw[10]_INST_0_i_5_n_0 ),
        .O(\bdatw[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[10]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_60_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [1]),
        .I2(\bdatw[10]_INST_0_i_21_n_0 ),
        .I3(\bdatw[10]_INST_0_i_22_n_0 ),
        .I4(\bdatw[10]_INST_0_i_23_n_0 ),
        .I5(\bdatw[10]_INST_0_i_24_n_0 ),
        .O(\bdatw[10]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \bdatw[10]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0[0]),
        .I2(eir[2]),
        .O(\bdatw[10]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[10]_INST_0_i_12 
       (.I0(ir[1]),
        .I1(ir[0]),
        .O(\bdatw[10]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_13 
       (.I0(\bdatw[12]_INST_0_i_26_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [10]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [10]),
        .I4(\bdatw[15]_INST_0_i_6_1 [10]),
        .I5(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\bdatw[10]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_14 
       (.I0(\bdatw[12]_INST_0_i_23_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 [10]),
        .I2(\bdatw[12]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_5 [10]),
        .I4(\sp_reg[15]_0 [10]),
        .I5(\bdatw[12]_INST_0_i_25_n_0 ),
        .O(\bdatw[10]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_15 
       (.I0(\bdatw[12]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [10]),
        .I2(\bdatw[12]_INST_0_i_21_n_0 ),
        .I3(sp_dec_0[6]),
        .I4(\badrx[15] [10]),
        .I5(\bdatw[15]_INST_0_i_59_0 ),
        .O(\bdatw[10]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_10 [10]),
        .I2(\bdatw[15]_INST_0_i_62_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_8 [10]),
        .I4(\bdatw[15]_INST_0_i_7_7 [10]),
        .I5(\bdatw[15]_INST_0_i_63_n_0 ),
        .O(\bdatw[10]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(\sr_reg[15] [10]),
        .I2(\bdatw[15]_INST_0_i_65_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [10]),
        .I4(\bdatw[15]_INST_0_i_7_4 [10]),
        .I5(\bdatw[15]_INST_0_i_66_n_0 ),
        .O(\bdatw[10]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_3 [10]),
        .I2(\bdatw[15]_INST_0_i_68_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_6 [10]),
        .I4(\bdatw[15]_INST_0_i_7_5 [10]),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[10]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_19 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [10]),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_0 [10]),
        .I4(\bdatw[15]_INST_0_i_7_1 [10]),
        .I5(\bdatw[15]_INST_0_i_72_n_0 ),
        .O(\bdatw[10]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[10]_INST_0_i_2 
       (.I0(p_1_in[2]),
        .I1(\bdatw[10]_INST_0_i_7_n_0 ),
        .I2(\bdatw[10]_INST_0_i_8_n_0 ),
        .I3(\bdatw[10]_INST_0_i_9_n_0 ),
        .I4(\bdatw[10]_INST_0_i_10_n_0 ),
        .I5(\bdatw[10]_INST_0_i_11_n_0 ),
        .O(\bdatw[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00F0FDFD00F0)) 
    \bdatw[10]_INST_0_i_20 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(ir[2]),
        .I3(\bdatw[8]_INST_0_i_22_n_0 ),
        .I4(\bdatw[8]_INST_0_i_21_n_0 ),
        .I5(ir[3]),
        .O(\bdatw[10]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_21 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_10 [2]),
        .I2(\bdatw[15]_INST_0_i_62_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_8 [2]),
        .I4(\bdatw[15]_INST_0_i_7_7 [2]),
        .I5(\bdatw[15]_INST_0_i_63_n_0 ),
        .O(\bdatw[10]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_22 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(\sr_reg[15] [2]),
        .I2(\bdatw[15]_INST_0_i_65_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [2]),
        .I4(\bdatw[15]_INST_0_i_7_4 [2]),
        .I5(\bdatw[15]_INST_0_i_66_n_0 ),
        .O(\bdatw[10]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_23 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_3 [2]),
        .I2(\bdatw[15]_INST_0_i_68_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_6 [2]),
        .I4(\bdatw[15]_INST_0_i_7_5 [2]),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[10]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_24 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [2]),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_0 [2]),
        .I4(\bdatw[15]_INST_0_i_7_1 [2]),
        .I5(\bdatw[15]_INST_0_i_72_n_0 ),
        .O(\bdatw[10]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEFEAEFEAEFE)) 
    \bdatw[10]_INST_0_i_3 
       (.I0(\bdatw[11]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_19_n_0 ),
        .I2(\bdatw[10]_INST_0_i_12_n_0 ),
        .I3(\bdatw[11]_INST_0_i_11_n_0 ),
        .I4(\stat[1]_i_4_n_0 ),
        .I5(ir[9]),
        .O(p_1_in[10]));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[10]_INST_0_i_4 
       (.I0(\bdatw[10]_INST_0_i_13_n_0 ),
        .I1(\bdatw[10]_INST_0_i_14_n_0 ),
        .I2(\bdatw[10]_INST_0_i_15_n_0 ),
        .O(\bdatw[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[10]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_60_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [9]),
        .I2(\bdatw[10]_INST_0_i_16_n_0 ),
        .I3(\bdatw[10]_INST_0_i_17_n_0 ),
        .I4(\bdatw[10]_INST_0_i_18_n_0 ),
        .I5(\bdatw[10]_INST_0_i_19_n_0 ),
        .O(\bdatw[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF010)) 
    \bdatw[10]_INST_0_i_6 
       (.I0(\bdatw[11]_INST_0_i_19_n_0 ),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(\stat[1]_i_4_n_0 ),
        .I4(\bdatw[10]_INST_0_i_20_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_7 
       (.I0(\bdatw[12]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [2]),
        .I2(\bdatw[12]_INST_0_i_21_n_0 ),
        .I3(O[2]),
        .I4(\badrx[15] [2]),
        .I5(\bdatw[15]_INST_0_i_59_0 ),
        .O(\bdatw[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_8 
       (.I0(\bdatw[12]_INST_0_i_23_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 [2]),
        .I2(\bdatw[12]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_5 [2]),
        .I4(\sp_reg[15]_0 [2]),
        .I5(\bdatw[12]_INST_0_i_25_n_0 ),
        .O(\bdatw[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_9 
       (.I0(\bdatw[12]_INST_0_i_26_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [2]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [2]),
        .I4(\bdatw[15]_INST_0_i_6_1 [2]),
        .I5(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\bdatw[10]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00E010F0)) 
    \bdatw[11]_INST_0 
       (.I0(ir[7]),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(\stat_reg[0]_0 ),
        .I3(\bdatw[11]_INST_0_i_1_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bdatw[11]));
  LUT6 #(
    .INIT(64'h00000000000000BF)) 
    \bdatw[11]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[11]),
        .I2(ctl_selb_0[0]),
        .I3(p_1_in[11]),
        .I4(\bdatw[11]_INST_0_i_4_n_0 ),
        .I5(\bdatw[11]_INST_0_i_5_n_0 ),
        .O(\bdatw[11]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[11]_INST_0_i_10 
       (.I0(ir[0]),
        .I1(ir[1]),
        .O(\bdatw[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \bdatw[11]_INST_0_i_11 
       (.I0(ir[4]),
        .I1(ir[5]),
        .I2(\bdatw[11]_INST_0_i_28_n_0 ),
        .I3(ir[6]),
        .I4(ir[2]),
        .I5(ir[3]),
        .O(\bdatw[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_12 
       (.I0(\bdatw[12]_INST_0_i_26_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [11]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [11]),
        .I4(\bdatw[15]_INST_0_i_6_1 [11]),
        .I5(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\bdatw[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_13 
       (.I0(\bdatw[12]_INST_0_i_23_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 [11]),
        .I2(\bdatw[12]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_5 [11]),
        .I4(\sp_reg[15]_0 [11]),
        .I5(\bdatw[12]_INST_0_i_25_n_0 ),
        .O(\bdatw[11]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_14 
       (.I0(\bdatw[12]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [11]),
        .I2(\bdatw[12]_INST_0_i_21_n_0 ),
        .I3(sp_dec_0[7]),
        .I4(\badrx[15] [11]),
        .I5(\bdatw[15]_INST_0_i_59_0 ),
        .O(\bdatw[11]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_10 [11]),
        .I2(\bdatw[15]_INST_0_i_62_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_8 [11]),
        .I4(\bdatw[15]_INST_0_i_7_7 [11]),
        .I5(\bdatw[15]_INST_0_i_63_n_0 ),
        .O(\bdatw[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(\sr_reg[15] [11]),
        .I2(\bdatw[15]_INST_0_i_65_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [11]),
        .I4(\bdatw[15]_INST_0_i_7_4 [11]),
        .I5(\bdatw[15]_INST_0_i_66_n_0 ),
        .O(\bdatw[11]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_3 [11]),
        .I2(\bdatw[15]_INST_0_i_68_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_6 [11]),
        .I4(\bdatw[15]_INST_0_i_7_5 [11]),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[11]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [11]),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_0 [11]),
        .I4(\bdatw[15]_INST_0_i_7_1 [11]),
        .I5(\bdatw[15]_INST_0_i_72_n_0 ),
        .O(\bdatw[11]_INST_0_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \bdatw[11]_INST_0_i_19 
       (.I0(ir[2]),
        .I1(ir[3]),
        .I2(\bdatw[8]_INST_0_i_19_n_0 ),
        .O(\bdatw[11]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000F7)) 
    \bdatw[11]_INST_0_i_2 
       (.I0(eir[3]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_3_n_0 ),
        .I3(p_1_in[3]),
        .I4(\bdatw[11]_INST_0_i_7_n_0 ),
        .I5(\bdatw[11]_INST_0_i_8_n_0 ),
        .O(\bdatw[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F070FFFFF070)) 
    \bdatw[11]_INST_0_i_20 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(\bdatw[8]_INST_0_i_21_n_0 ),
        .I3(ir[2]),
        .I4(ir[3]),
        .I5(\bdatw[8]_INST_0_i_22_n_0 ),
        .O(\bdatw[11]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_21 
       (.I0(\bdatw[12]_INST_0_i_26_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [3]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [3]),
        .I4(\bdatw[15]_INST_0_i_6_1 [3]),
        .I5(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\bdatw[11]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_22 
       (.I0(\bdatw[12]_INST_0_i_23_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 [3]),
        .I2(\bdatw[12]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_5 [3]),
        .I4(\sp_reg[15]_0 [3]),
        .I5(\bdatw[12]_INST_0_i_25_n_0 ),
        .O(\bdatw[11]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_23 
       (.I0(\bdatw[12]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [3]),
        .I2(\bdatw[12]_INST_0_i_21_n_0 ),
        .I3(O[3]),
        .I4(\badrx[15] [3]),
        .I5(\bdatw[15]_INST_0_i_59_0 ),
        .O(\bdatw[11]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_24 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_10 [3]),
        .I2(\bdatw[15]_INST_0_i_62_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_8 [3]),
        .I4(\bdatw[15]_INST_0_i_7_7 [3]),
        .I5(\bdatw[15]_INST_0_i_63_n_0 ),
        .O(\bdatw[11]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_25 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(\sr_reg[15] [3]),
        .I2(\bdatw[15]_INST_0_i_65_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [3]),
        .I4(\bdatw[15]_INST_0_i_7_4 [3]),
        .I5(\bdatw[15]_INST_0_i_66_n_0 ),
        .O(\bdatw[11]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_26 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_3 [3]),
        .I2(\bdatw[15]_INST_0_i_68_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_6 [3]),
        .I4(\bdatw[15]_INST_0_i_7_5 [3]),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[11]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_27 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [3]),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_0 [3]),
        .I4(\bdatw[15]_INST_0_i_7_1 [3]),
        .I5(\bdatw[15]_INST_0_i_72_n_0 ),
        .O(\bdatw[11]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \bdatw[11]_INST_0_i_28 
       (.I0(ir[8]),
        .I1(ir[7]),
        .I2(ir[9]),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(\bcmd[2]_INST_0_i_2_n_0 ),
        .O(\bdatw[11]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEFEAEFEAEFE)) 
    \bdatw[11]_INST_0_i_3 
       (.I0(\bdatw[11]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_19_n_0 ),
        .I2(\bdatw[11]_INST_0_i_10_n_0 ),
        .I3(\bdatw[11]_INST_0_i_11_n_0 ),
        .I4(\stat[1]_i_4_n_0 ),
        .I5(ir[10]),
        .O(p_1_in[11]));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[11]_INST_0_i_4 
       (.I0(\bdatw[11]_INST_0_i_12_n_0 ),
        .I1(\bdatw[11]_INST_0_i_13_n_0 ),
        .I2(\bdatw[11]_INST_0_i_14_n_0 ),
        .O(\bdatw[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[11]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_60_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [10]),
        .I2(\bdatw[11]_INST_0_i_15_n_0 ),
        .I3(\bdatw[11]_INST_0_i_16_n_0 ),
        .I4(\bdatw[11]_INST_0_i_17_n_0 ),
        .I5(\bdatw[11]_INST_0_i_18_n_0 ),
        .O(\bdatw[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF40FF40FF40)) 
    \bdatw[11]_INST_0_i_6 
       (.I0(\bdatw[11]_INST_0_i_19_n_0 ),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(\bdatw[11]_INST_0_i_20_n_0 ),
        .I4(ir[2]),
        .I5(\stat[1]_i_4_n_0 ),
        .O(p_1_in[3]));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[11]_INST_0_i_7 
       (.I0(\bdatw[11]_INST_0_i_21_n_0 ),
        .I1(\bdatw[11]_INST_0_i_22_n_0 ),
        .I2(\bdatw[11]_INST_0_i_23_n_0 ),
        .O(\bdatw[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[11]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_60_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [2]),
        .I2(\bdatw[11]_INST_0_i_24_n_0 ),
        .I3(\bdatw[11]_INST_0_i_25_n_0 ),
        .I4(\bdatw[11]_INST_0_i_26_n_0 ),
        .I5(\bdatw[11]_INST_0_i_27_n_0 ),
        .O(\bdatw[11]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \bdatw[11]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(ir[2]),
        .I2(ir[3]),
        .O(\bdatw[11]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h10F000E0)) 
    \bdatw[12]_INST_0 
       (.I0(ir[7]),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(\stat_reg[0]_0 ),
        .I3(\bdatw[12]_INST_0_i_1_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(bdatw[12]));
  LUT6 #(
    .INIT(64'h00000000000000BF)) 
    \bdatw[12]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[12]),
        .I2(ctl_selb_0[0]),
        .I3(p_1_in[12]),
        .I4(\bdatw[12]_INST_0_i_4_n_0 ),
        .I5(\bdatw[12]_INST_0_i_5_n_0 ),
        .O(\bdatw[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[12]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_60_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [3]),
        .I2(\bdatw[12]_INST_0_i_29_n_0 ),
        .I3(\bdatw[12]_INST_0_i_30_n_0 ),
        .I4(\bdatw[12]_INST_0_i_31_n_0 ),
        .I5(\bdatw[12]_INST_0_i_32_n_0 ),
        .O(\bdatw[12]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \bdatw[12]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0[0]),
        .I2(eir[4]),
        .O(\bdatw[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_12 
       (.I0(\bdatw[12]_INST_0_i_26_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [12]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [12]),
        .I4(\bdatw[15]_INST_0_i_6_1 [12]),
        .I5(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\bdatw[12]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_13 
       (.I0(\bdatw[12]_INST_0_i_23_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 [12]),
        .I2(\bdatw[12]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_5 [12]),
        .I4(\sp_reg[15]_0 [12]),
        .I5(\bdatw[12]_INST_0_i_25_n_0 ),
        .O(\bdatw[12]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_14 
       (.I0(\bdatw[12]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [12]),
        .I2(\bdatw[12]_INST_0_i_21_n_0 ),
        .I3(sp_dec_0[8]),
        .I4(\badrx[15] [12]),
        .I5(\bdatw[15]_INST_0_i_59_0 ),
        .O(\bdatw[12]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_10 [12]),
        .I2(\bdatw[15]_INST_0_i_62_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_8 [12]),
        .I4(\bdatw[15]_INST_0_i_7_7 [12]),
        .I5(\bdatw[15]_INST_0_i_63_n_0 ),
        .O(\bdatw[12]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(\sr_reg[15] [12]),
        .I2(\bdatw[15]_INST_0_i_65_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [12]),
        .I4(\bdatw[15]_INST_0_i_7_4 [12]),
        .I5(\bdatw[15]_INST_0_i_66_n_0 ),
        .O(\bdatw[12]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_3 [12]),
        .I2(\bdatw[15]_INST_0_i_68_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_6 [12]),
        .I4(\bdatw[15]_INST_0_i_7_5 [12]),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[12]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [12]),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_0 [12]),
        .I4(\bdatw[15]_INST_0_i_7_1 [12]),
        .I5(\bdatw[15]_INST_0_i_72_n_0 ),
        .O(\bdatw[12]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C5D0CFF0CFF0C)) 
    \bdatw[12]_INST_0_i_19 
       (.I0(\bdatw[8]_INST_0_i_11_n_0 ),
        .I1(ir[4]),
        .I2(\bdatw[8]_INST_0_i_22_n_0 ),
        .I3(\bdatw[8]_INST_0_i_21_n_0 ),
        .I4(ir[3]),
        .I5(ir[2]),
        .O(\bdatw[12]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[12]_INST_0_i_2 
       (.I0(p_1_in[4]),
        .I1(\bdatw[12]_INST_0_i_7_n_0 ),
        .I2(\bdatw[12]_INST_0_i_8_n_0 ),
        .I3(\bdatw[12]_INST_0_i_9_n_0 ),
        .I4(\bdatw[12]_INST_0_i_10_n_0 ),
        .I5(\bdatw[12]_INST_0_i_11_n_0 ),
        .O(\bdatw[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \bdatw[12]_INST_0_i_20 
       (.I0(ctl_selb_rn[0]),
        .I1(\bdatw[15]_INST_0_i_58_n_0 ),
        .I2(ctl_selb_0[0]),
        .I3(ctl_selb_rn[2]),
        .I4(ctl_selb_rn[1]),
        .O(\bdatw[12]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \bdatw[12]_INST_0_i_21 
       (.I0(ctl_selb_rn[0]),
        .I1(\bdatw[15]_INST_0_i_58_n_0 ),
        .I2(ctl_selb_0[0]),
        .I3(ctl_selb_rn[1]),
        .I4(ctl_selb_rn[2]),
        .O(\bdatw[12]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \bdatw[12]_INST_0_i_22 
       (.I0(ctl_selb_rn[0]),
        .I1(\bdatw[15]_INST_0_i_58_n_0 ),
        .I2(ctl_selb_0[0]),
        .I3(ctl_selb_rn[1]),
        .I4(ctl_selb_rn[2]),
        .O(\bdatw[15]_INST_0_i_59_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \bdatw[12]_INST_0_i_23 
       (.I0(\sr_reg[15] [0]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_58_n_0 ),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[1]),
        .I5(ctl_selb_rn[2]),
        .O(\bdatw[12]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \bdatw[12]_INST_0_i_24 
       (.I0(\sr_reg[15] [0]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_58_n_0 ),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[2]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[12]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \bdatw[12]_INST_0_i_25 
       (.I0(ctl_selb_rn[0]),
        .I1(\bdatw[15]_INST_0_i_58_n_0 ),
        .I2(ctl_selb_0[0]),
        .I3(ctl_selb_rn[2]),
        .I4(ctl_selb_rn[1]),
        .O(\bdatw[12]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \bdatw[12]_INST_0_i_26 
       (.I0(\sr_reg[15] [0]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_58_n_0 ),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[2]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[12]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \bdatw[12]_INST_0_i_27 
       (.I0(\sr_reg[15] [0]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_58_n_0 ),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[2]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[12]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \bdatw[12]_INST_0_i_28 
       (.I0(\sr_reg[15] [0]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_58_n_0 ),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[1]),
        .I5(ctl_selb_rn[2]),
        .O(\bdatw[12]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_29 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_10 [4]),
        .I2(\bdatw[15]_INST_0_i_62_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_8 [4]),
        .I4(\bdatw[15]_INST_0_i_7_7 [4]),
        .I5(\bdatw[15]_INST_0_i_63_n_0 ),
        .O(\bdatw[12]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEEECF)) 
    \bdatw[12]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_20_n_0 ),
        .I2(\bdatw[15]_INST_0_i_21_n_0 ),
        .I3(ir[0]),
        .I4(ir[1]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_30 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(\sr_reg[15] [4]),
        .I2(\bdatw[15]_INST_0_i_65_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [4]),
        .I4(\bdatw[15]_INST_0_i_7_4 [4]),
        .I5(\bdatw[15]_INST_0_i_66_n_0 ),
        .O(\bdatw[12]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_31 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_3 [4]),
        .I2(\bdatw[15]_INST_0_i_68_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_6 [4]),
        .I4(\bdatw[15]_INST_0_i_7_5 [4]),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[12]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_32 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [4]),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_0 [4]),
        .I4(\bdatw[15]_INST_0_i_7_1 [4]),
        .I5(\bdatw[15]_INST_0_i_72_n_0 ),
        .O(\bdatw[12]_INST_0_i_32_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[12]_INST_0_i_4 
       (.I0(\bdatw[12]_INST_0_i_12_n_0 ),
        .I1(\bdatw[12]_INST_0_i_13_n_0 ),
        .I2(\bdatw[12]_INST_0_i_14_n_0 ),
        .O(\bdatw[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[12]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_60_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [11]),
        .I2(\bdatw[12]_INST_0_i_15_n_0 ),
        .I3(\bdatw[12]_INST_0_i_16_n_0 ),
        .I4(\bdatw[12]_INST_0_i_17_n_0 ),
        .I5(\bdatw[12]_INST_0_i_18_n_0 ),
        .O(\bdatw[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF01FF01FF01)) 
    \bdatw[12]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_30_n_0 ),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(\bdatw[12]_INST_0_i_19_n_0 ),
        .I4(\stat[1]_i_4_n_0 ),
        .I5(ir[3]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_7 
       (.I0(\bdatw[12]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [4]),
        .I2(\bdatw[12]_INST_0_i_21_n_0 ),
        .I3(sp_dec_0[0]),
        .I4(\badrx[15] [4]),
        .I5(\bdatw[15]_INST_0_i_59_0 ),
        .O(\bdatw[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_8 
       (.I0(\bdatw[12]_INST_0_i_23_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 [4]),
        .I2(\bdatw[12]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_5 [4]),
        .I4(\sp_reg[15]_0 [4]),
        .I5(\bdatw[12]_INST_0_i_25_n_0 ),
        .O(\bdatw[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_9 
       (.I0(\bdatw[12]_INST_0_i_26_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [4]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [4]),
        .I4(\bdatw[15]_INST_0_i_6_1 [4]),
        .I5(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\bdatw[12]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00E010F0)) 
    \bdatw[13]_INST_0 
       (.I0(ir[7]),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(\stat_reg[0]_0 ),
        .I3(\bdatw[13]_INST_0_i_1_n_0 ),
        .I4(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[13]));
  LUT6 #(
    .INIT(64'h00000000000000BF)) 
    \bdatw[13]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[13]),
        .I2(ctl_selb_0[0]),
        .I3(p_1_in[13]),
        .I4(\bdatw[13]_INST_0_i_4_n_0 ),
        .I5(\bdatw[13]_INST_0_i_5_n_0 ),
        .O(\bdatw[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_10 
       (.I0(\bdatw[12]_INST_0_i_23_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 [13]),
        .I2(\bdatw[12]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_5 [13]),
        .I4(\sp_reg[15]_0 [13]),
        .I5(\bdatw[12]_INST_0_i_25_n_0 ),
        .O(\bdatw[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_11 
       (.I0(\bdatw[12]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [13]),
        .I2(\bdatw[12]_INST_0_i_21_n_0 ),
        .I3(sp_dec_0[9]),
        .I4(\badrx[15] [13]),
        .I5(\bdatw[15]_INST_0_i_59_0 ),
        .O(\bdatw[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_10 [13]),
        .I2(\bdatw[15]_INST_0_i_62_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_8 [13]),
        .I4(\bdatw[15]_INST_0_i_7_7 [13]),
        .I5(\bdatw[15]_INST_0_i_63_n_0 ),
        .O(\bdatw[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(\sr_reg[15] [13]),
        .I2(\bdatw[15]_INST_0_i_65_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [13]),
        .I4(\bdatw[15]_INST_0_i_7_4 [13]),
        .I5(\bdatw[15]_INST_0_i_66_n_0 ),
        .O(\bdatw[13]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_3 [13]),
        .I2(\bdatw[15]_INST_0_i_68_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_6 [13]),
        .I4(\bdatw[15]_INST_0_i_7_5 [13]),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [13]),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_0 [13]),
        .I4(\bdatw[15]_INST_0_i_7_1 [13]),
        .I5(\bdatw[15]_INST_0_i_72_n_0 ),
        .O(\bdatw[13]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C5D0CFF0CFF0C)) 
    \bdatw[13]_INST_0_i_16 
       (.I0(\bcmd[1]_INST_0_i_7_n_0 ),
        .I1(ir[5]),
        .I2(\bdatw[8]_INST_0_i_22_n_0 ),
        .I3(\bdatw[8]_INST_0_i_21_n_0 ),
        .I4(ir[3]),
        .I5(ir[2]),
        .O(\bdatw[13]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_17 
       (.I0(\bdatw[12]_INST_0_i_26_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [5]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [5]),
        .I4(\bdatw[15]_INST_0_i_6_1 [5]),
        .I5(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\bdatw[13]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_18 
       (.I0(\bdatw[12]_INST_0_i_23_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 [5]),
        .I2(\bdatw[12]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_5 [5]),
        .I4(\sp_reg[15]_0 [5]),
        .I5(\bdatw[12]_INST_0_i_25_n_0 ),
        .O(\bdatw[13]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_19 
       (.I0(\bdatw[12]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [5]),
        .I2(\bdatw[12]_INST_0_i_21_n_0 ),
        .I3(sp_dec_0[1]),
        .I4(\badrx[15] [5]),
        .I5(\bdatw[15]_INST_0_i_59_0 ),
        .O(\bdatw[13]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000F7)) 
    \bdatw[13]_INST_0_i_2 
       (.I0(eir[5]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_3_n_0 ),
        .I3(p_1_in[5]),
        .I4(\bdatw[13]_INST_0_i_7_n_0 ),
        .I5(\bdatw[13]_INST_0_i_8_n_0 ),
        .O(\bdatw[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_20 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_10 [5]),
        .I2(\bdatw[15]_INST_0_i_62_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_8 [5]),
        .I4(\bdatw[15]_INST_0_i_7_7 [5]),
        .I5(\bdatw[15]_INST_0_i_63_n_0 ),
        .O(\bdatw[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_21 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(\sr_reg[15] [5]),
        .I2(\bdatw[15]_INST_0_i_65_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [5]),
        .I4(\bdatw[15]_INST_0_i_7_4 [5]),
        .I5(\bdatw[15]_INST_0_i_66_n_0 ),
        .O(\bdatw[13]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_22 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_3 [5]),
        .I2(\bdatw[15]_INST_0_i_68_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_6 [5]),
        .I4(\bdatw[15]_INST_0_i_7_5 [5]),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[13]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_23 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [5]),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_0 [5]),
        .I4(\bdatw[15]_INST_0_i_7_1 [5]),
        .I5(\bdatw[15]_INST_0_i_72_n_0 ),
        .O(\bdatw[13]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hEEEECFEE)) 
    \bdatw[13]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_20_n_0 ),
        .I2(\bdatw[15]_INST_0_i_21_n_0 ),
        .I3(ir[0]),
        .I4(ir[1]),
        .O(p_1_in[13]));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[13]_INST_0_i_4 
       (.I0(\bdatw[13]_INST_0_i_9_n_0 ),
        .I1(\bdatw[13]_INST_0_i_10_n_0 ),
        .I2(\bdatw[13]_INST_0_i_11_n_0 ),
        .O(\bdatw[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_60_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [12]),
        .I2(\bdatw[13]_INST_0_i_12_n_0 ),
        .I3(\bdatw[13]_INST_0_i_13_n_0 ),
        .I4(\bdatw[13]_INST_0_i_14_n_0 ),
        .I5(\bdatw[13]_INST_0_i_15_n_0 ),
        .O(\bdatw[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF04FF04FF04)) 
    \bdatw[13]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_30_n_0 ),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(\bdatw[13]_INST_0_i_16_n_0 ),
        .I4(\stat[1]_i_4_n_0 ),
        .I5(ir[4]),
        .O(p_1_in[5]));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[13]_INST_0_i_7 
       (.I0(\bdatw[13]_INST_0_i_17_n_0 ),
        .I1(\bdatw[13]_INST_0_i_18_n_0 ),
        .I2(\bdatw[13]_INST_0_i_19_n_0 ),
        .O(\bdatw[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_60_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [4]),
        .I2(\bdatw[13]_INST_0_i_20_n_0 ),
        .I3(\bdatw[13]_INST_0_i_21_n_0 ),
        .I4(\bdatw[13]_INST_0_i_22_n_0 ),
        .I5(\bdatw[13]_INST_0_i_23_n_0 ),
        .O(\bdatw[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_9 
       (.I0(\bdatw[12]_INST_0_i_26_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [13]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [13]),
        .I4(\bdatw[15]_INST_0_i_6_1 [13]),
        .I5(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\bdatw[13]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00E010F0)) 
    \bdatw[14]_INST_0 
       (.I0(ir[7]),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(\stat_reg[0]_0 ),
        .I3(\bdatw[14]_INST_0_i_1_n_0 ),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[14]));
  LUT6 #(
    .INIT(64'h00000000000000BF)) 
    \bdatw[14]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[14]),
        .I2(ctl_selb_0[0]),
        .I3(p_1_in[14]),
        .I4(\bdatw[14]_INST_0_i_4_n_0 ),
        .I5(\bdatw[14]_INST_0_i_5_n_0 ),
        .O(\bdatw[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_10 
       (.I0(\bdatw[12]_INST_0_i_23_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 [14]),
        .I2(\bdatw[12]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_5 [14]),
        .I4(\sp_reg[15]_0 [14]),
        .I5(\bdatw[12]_INST_0_i_25_n_0 ),
        .O(\bdatw[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_11 
       (.I0(\bdatw[12]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [14]),
        .I2(\bdatw[12]_INST_0_i_21_n_0 ),
        .I3(sp_dec_0[10]),
        .I4(\badrx[15] [14]),
        .I5(\bdatw[15]_INST_0_i_59_0 ),
        .O(\bdatw[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_10 [14]),
        .I2(\bdatw[15]_INST_0_i_62_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_8 [14]),
        .I4(\bdatw[15]_INST_0_i_7_7 [14]),
        .I5(\bdatw[15]_INST_0_i_63_n_0 ),
        .O(\bdatw[14]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(\sr_reg[15] [14]),
        .I2(\bdatw[15]_INST_0_i_65_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [14]),
        .I4(\bdatw[15]_INST_0_i_7_4 [14]),
        .I5(\bdatw[15]_INST_0_i_66_n_0 ),
        .O(\bdatw[14]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_3 [14]),
        .I2(\bdatw[15]_INST_0_i_68_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_6 [14]),
        .I4(\bdatw[15]_INST_0_i_7_5 [14]),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[14]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [14]),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_0 [14]),
        .I4(\bdatw[15]_INST_0_i_7_1 [14]),
        .I5(\bdatw[15]_INST_0_i_72_n_0 ),
        .O(\bdatw[14]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C5D0CFF0CFF0C)) 
    \bdatw[14]_INST_0_i_16 
       (.I0(\bdatw[10]_INST_0_i_12_n_0 ),
        .I1(ir[6]),
        .I2(\bdatw[8]_INST_0_i_22_n_0 ),
        .I3(\bdatw[8]_INST_0_i_21_n_0 ),
        .I4(ir[3]),
        .I5(ir[2]),
        .O(\bdatw[14]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_17 
       (.I0(\bdatw[12]_INST_0_i_26_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [6]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [6]),
        .I4(\bdatw[15]_INST_0_i_6_1 [6]),
        .I5(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\bdatw[14]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_18 
       (.I0(\bdatw[12]_INST_0_i_23_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 [6]),
        .I2(\bdatw[12]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_5 [6]),
        .I4(\sp_reg[15]_0 [6]),
        .I5(\bdatw[12]_INST_0_i_25_n_0 ),
        .O(\bdatw[14]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_19 
       (.I0(\bdatw[12]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [6]),
        .I2(\bdatw[12]_INST_0_i_21_n_0 ),
        .I3(sp_dec_0[2]),
        .I4(\badrx[15] [6]),
        .I5(\bdatw[15]_INST_0_i_59_0 ),
        .O(\bdatw[14]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000F7)) 
    \bdatw[14]_INST_0_i_2 
       (.I0(eir[6]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_3_n_0 ),
        .I3(p_1_in[6]),
        .I4(\bdatw[14]_INST_0_i_7_n_0 ),
        .I5(\bdatw[14]_INST_0_i_8_n_0 ),
        .O(\bdatw[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_20 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_10 [6]),
        .I2(\bdatw[15]_INST_0_i_62_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_8 [6]),
        .I4(\bdatw[15]_INST_0_i_7_7 [6]),
        .I5(\bdatw[15]_INST_0_i_63_n_0 ),
        .O(\bdatw[14]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_21 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(\sr_reg[15] [6]),
        .I2(\bdatw[15]_INST_0_i_65_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [6]),
        .I4(\bdatw[15]_INST_0_i_7_4 [6]),
        .I5(\bdatw[15]_INST_0_i_66_n_0 ),
        .O(\bdatw[14]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_22 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_3 [6]),
        .I2(\bdatw[15]_INST_0_i_68_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_6 [6]),
        .I4(\bdatw[15]_INST_0_i_7_5 [6]),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[14]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_23 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [6]),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_0 [6]),
        .I4(\bdatw[15]_INST_0_i_7_1 [6]),
        .I5(\bdatw[15]_INST_0_i_72_n_0 ),
        .O(\bdatw[14]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hEEEECFEE)) 
    \bdatw[14]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_20_n_0 ),
        .I2(\bdatw[15]_INST_0_i_21_n_0 ),
        .I3(ir[1]),
        .I4(ir[0]),
        .O(p_1_in[14]));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[14]_INST_0_i_4 
       (.I0(\bdatw[14]_INST_0_i_9_n_0 ),
        .I1(\bdatw[14]_INST_0_i_10_n_0 ),
        .I2(\bdatw[14]_INST_0_i_11_n_0 ),
        .O(\bdatw[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_60_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [13]),
        .I2(\bdatw[14]_INST_0_i_12_n_0 ),
        .I3(\bdatw[14]_INST_0_i_13_n_0 ),
        .I4(\bdatw[14]_INST_0_i_14_n_0 ),
        .I5(\bdatw[14]_INST_0_i_15_n_0 ),
        .O(\bdatw[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF04FF04FF04)) 
    \bdatw[14]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_30_n_0 ),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(\bdatw[14]_INST_0_i_16_n_0 ),
        .I4(\stat[1]_i_4_n_0 ),
        .I5(ir[5]),
        .O(p_1_in[6]));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[14]_INST_0_i_7 
       (.I0(\bdatw[14]_INST_0_i_17_n_0 ),
        .I1(\bdatw[14]_INST_0_i_18_n_0 ),
        .I2(\bdatw[14]_INST_0_i_19_n_0 ),
        .O(\bdatw[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_60_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [5]),
        .I2(\bdatw[14]_INST_0_i_20_n_0 ),
        .I3(\bdatw[14]_INST_0_i_21_n_0 ),
        .I4(\bdatw[14]_INST_0_i_22_n_0 ),
        .I5(\bdatw[14]_INST_0_i_23_n_0 ),
        .O(\bdatw[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_9 
       (.I0(\bdatw[12]_INST_0_i_26_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [14]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [14]),
        .I4(\bdatw[15]_INST_0_i_6_1 [14]),
        .I5(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\bdatw[14]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00E010F0)) 
    \bdatw[15]_INST_0 
       (.I0(ir[7]),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(\stat_reg[0]_0 ),
        .I3(\bdatw[15]_INST_0_i_1_n_0 ),
        .I4(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[15]));
  LUT6 #(
    .INIT(64'h00000000000000BF)) 
    \bdatw[15]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[15]),
        .I2(ctl_selb_0[0]),
        .I3(p_1_in[15]),
        .I4(\bdatw[15]_INST_0_i_6_n_0 ),
        .I5(\bdatw[15]_INST_0_i_7_n_0 ),
        .O(\bdatw[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_60_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [6]),
        .I2(\bdatw[15]_INST_0_i_35_n_0 ),
        .I3(\bdatw[15]_INST_0_i_36_n_0 ),
        .I4(\bdatw[15]_INST_0_i_37_n_0 ),
        .I5(\bdatw[15]_INST_0_i_38_n_0 ),
        .O(\bdatw[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFAEFFAEFFFFFF)) 
    \bdatw[15]_INST_0_i_11 
       (.I0(\bdatw[8]_INST_0_i_21_n_0 ),
        .I1(\bdatw[15]_INST_0_i_39_n_0 ),
        .I2(ir[6]),
        .I3(\bdatw[8]_INST_0_i_22_n_0 ),
        .I4(tout__1_carry_i_25_0),
        .I5(\bdatw[15]_INST_0_i_40_n_0 ),
        .O(ctl_selb_0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \bdatw[15]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_41_n_0 ),
        .I1(\bdatw[15]_INST_0_i_42_n_0 ),
        .I2(\bdatw[15]_INST_0_i_43_n_0 ),
        .I3(\bdatw[15]_INST_0_i_44_n_0 ),
        .I4(\bdatw[15]_INST_0_i_45_n_0 ),
        .I5(\bdatw[8]_INST_0_i_19_n_0 ),
        .O(ctl_selb_0[1]));
  LUT6 #(
    .INIT(64'h0055C05500F5C0F5)) 
    \bdatw[15]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_46_n_0 ),
        .I1(\bdatw[15]_INST_0_i_47_n_0 ),
        .I2(ir[7]),
        .I3(ir[6]),
        .I4(\bdatw[15]_INST_0_i_48_n_0 ),
        .I5(\bdatw[15]_INST_0_i_49_n_0 ),
        .O(\bdatw[15]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \bdatw[15]_INST_0_i_14 
       (.I0(Q[0]),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .I2(ir[11]),
        .I3(\bcmd[0]_INST_0_i_2_n_0 ),
        .I4(ir[6]),
        .O(\bdatw[15]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \bdatw[15]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_50_n_0 ),
        .I1(\bdatw[15]_INST_0_i_51_n_0 ),
        .I2(\bdatw[15]_INST_0_i_52_n_0 ),
        .I3(\bdatw[15]_INST_0_i_53_n_0 ),
        .I4(\bdatw[15]_INST_0_i_54_n_0 ),
        .I5(\bdatw[15]_INST_0_i_55_n_0 ),
        .O(\bdatw[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000008AAAAAAAA)) 
    \bdatw[15]_INST_0_i_17 
       (.I0(ir[6]),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(\bcmd[1]_INST_0_i_10_n_0 ),
        .I4(\bcmd[2]_INST_0_i_2_n_0 ),
        .I5(\bdatw[15]_INST_0_i_56_n_0 ),
        .O(\bdatw[15]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFAB)) 
    \bdatw[15]_INST_0_i_18 
       (.I0(\stat[1]_i_4_n_0 ),
        .I1(ir[4]),
        .I2(\bcmd[1]_INST_0_i_3_n_0 ),
        .I3(\bdatw[8]_INST_0_i_21_n_0 ),
        .O(\bdatw[15]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \bdatw[15]_INST_0_i_19 
       (.I0(ir[6]),
        .I1(ir[4]),
        .I2(ir[5]),
        .I3(\bcmd[1]_INST_0_i_8_n_0 ),
        .I4(ir[11]),
        .I5(\bcmd[2]_INST_0_i_2_n_0 ),
        .O(\bdatw[15]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000F7)) 
    \bdatw[15]_INST_0_i_2 
       (.I0(eir[7]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_3_n_0 ),
        .I3(p_1_in[7]),
        .I4(\bdatw[15]_INST_0_i_9_n_0 ),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(\bdatw[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \bdatw[15]_INST_0_i_20 
       (.I0(ir[10]),
        .I1(\stat[1]_i_4_n_0 ),
        .I2(ir[3]),
        .I3(ir[2]),
        .I4(\bdatw[15]_INST_0_i_19_n_0 ),
        .O(\bdatw[15]_INST_0_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \bdatw[15]_INST_0_i_21 
       (.I0(\bdatw[8]_INST_0_i_19_n_0 ),
        .I1(ir[2]),
        .I2(ir[3]),
        .O(\bdatw[15]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_22 
       (.I0(\bdatw[12]_INST_0_i_26_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [15]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [15]),
        .I4(\bdatw[15]_INST_0_i_6_1 [15]),
        .I5(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\bdatw[15]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_23 
       (.I0(\bdatw[12]_INST_0_i_23_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 [15]),
        .I2(\bdatw[12]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_5 [15]),
        .I4(\sp_reg[15]_0 [15]),
        .I5(\bdatw[12]_INST_0_i_25_n_0 ),
        .O(\bdatw[15]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_24 
       (.I0(\bdatw[12]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [15]),
        .I2(\bdatw[12]_INST_0_i_21_n_0 ),
        .I3(sp_dec_0[11]),
        .I4(\badrx[15] [15]),
        .I5(\bdatw[15]_INST_0_i_59_0 ),
        .O(\bdatw[15]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \bdatw[15]_INST_0_i_25 
       (.I0(ctl_selb_rn[0]),
        .I1(\bdatw[15]_INST_0_i_58_n_0 ),
        .I2(ctl_selb_0[0]),
        .I3(ctl_selb_rn[2]),
        .I4(ctl_selb_rn[1]),
        .O(\bdatw[15]_INST_0_i_60_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_26 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_10 [15]),
        .I2(\bdatw[15]_INST_0_i_62_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_8 [15]),
        .I4(\bdatw[15]_INST_0_i_7_7 [15]),
        .I5(\bdatw[15]_INST_0_i_63_n_0 ),
        .O(\bdatw[15]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_27 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(\sr_reg[15] [15]),
        .I2(\bdatw[15]_INST_0_i_65_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [15]),
        .I4(\bdatw[15]_INST_0_i_7_4 [15]),
        .I5(\bdatw[15]_INST_0_i_66_n_0 ),
        .O(\bdatw[15]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_28 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_3 [15]),
        .I2(\bdatw[15]_INST_0_i_68_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_6 [15]),
        .I4(\bdatw[15]_INST_0_i_7_5 [15]),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[15]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_29 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [15]),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_0 [15]),
        .I4(\bdatw[15]_INST_0_i_7_1 [15]),
        .I5(\bdatw[15]_INST_0_i_72_n_0 ),
        .O(\bdatw[15]_INST_0_i_29_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[15]_INST_0_i_3 
       (.I0(ctl_selb_0[2]),
        .I1(ctl_selb_0[1]),
        .O(\bdatw[15]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \bdatw[15]_INST_0_i_30 
       (.I0(\bdatw[8]_INST_0_i_19_n_0 ),
        .I1(ir[3]),
        .I2(ir[2]),
        .O(\bdatw[15]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hC4CCC4CCFFFFC4CC)) 
    \bdatw[15]_INST_0_i_31 
       (.I0(\bdatw[11]_INST_0_i_10_n_0 ),
        .I1(\bdatw[8]_INST_0_i_21_n_0 ),
        .I2(ir[3]),
        .I3(ir[2]),
        .I4(ir[7]),
        .I5(\bdatw[8]_INST_0_i_22_n_0 ),
        .O(\bdatw[15]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_32 
       (.I0(\bdatw[12]_INST_0_i_26_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [7]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [7]),
        .I4(\bdatw[15]_INST_0_i_6_1 [7]),
        .I5(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\bdatw[15]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_33 
       (.I0(\bdatw[12]_INST_0_i_23_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 [7]),
        .I2(\bdatw[12]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_5 [7]),
        .I4(\sp_reg[15]_0 [7]),
        .I5(\bdatw[12]_INST_0_i_25_n_0 ),
        .O(\bdatw[15]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_34 
       (.I0(\bdatw[12]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [7]),
        .I2(\bdatw[12]_INST_0_i_21_n_0 ),
        .I3(sp_dec_0[3]),
        .I4(\badrx[15] [7]),
        .I5(\bdatw[15]_INST_0_i_59_0 ),
        .O(\bdatw[15]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_35 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_10 [7]),
        .I2(\bdatw[15]_INST_0_i_62_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_8 [7]),
        .I4(\bdatw[15]_INST_0_i_7_7 [7]),
        .I5(\bdatw[15]_INST_0_i_63_n_0 ),
        .O(\bdatw[15]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_36 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(\sr_reg[15] [7]),
        .I2(\bdatw[15]_INST_0_i_65_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [7]),
        .I4(\bdatw[15]_INST_0_i_7_4 [7]),
        .I5(\bdatw[15]_INST_0_i_66_n_0 ),
        .O(\bdatw[15]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_37 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_3 [7]),
        .I2(\bdatw[15]_INST_0_i_68_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_6 [7]),
        .I4(\bdatw[15]_INST_0_i_7_5 [7]),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[15]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_38 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [7]),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_0 [7]),
        .I4(\bdatw[15]_INST_0_i_7_1 [7]),
        .I5(\bdatw[15]_INST_0_i_72_n_0 ),
        .O(\bdatw[15]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \bdatw[15]_INST_0_i_39 
       (.I0(\badrx[15]_INST_0_i_3_n_0 ),
        .I1(badr_0_sn_1),
        .I2(\bcmd[1]_INST_0_i_8_n_0 ),
        .I3(ir[11]),
        .I4(ir[5]),
        .I5(ir[4]),
        .O(\bdatw[15]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \bdatw[15]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_0 ),
        .I4(\bdatw[15]_INST_0_i_17_n_0 ),
        .I5(\bdatw[15]_INST_0_i_18_n_0 ),
        .O(ctl_selb_0[0]));
  LUT5 #(
    .INIT(32'h00000100)) 
    \bdatw[15]_INST_0_i_40 
       (.I0(\stat[1]_i_14_n_0 ),
        .I1(\stat[1]_i_13_n_0 ),
        .I2(\stat[1]_i_12_n_0 ),
        .I3(\stat[1]_i_11_n_0 ),
        .I4(\stat[1]_i_10_n_0 ),
        .O(\bdatw[15]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004040400)) 
    \bdatw[15]_INST_0_i_41 
       (.I0(\bdatw[15]_INST_0_i_54_n_0 ),
        .I1(\bdatw[15]_INST_0_i_53_n_0 ),
        .I2(\bdatw[15]_INST_0_i_52_n_0 ),
        .I3(\stat[0]_i_24_n_0 ),
        .I4(\iv[15]_i_37_n_0 ),
        .I5(\bdatw[15]_INST_0_i_50_n_0 ),
        .O(\bdatw[15]_INST_0_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h2E002E2E)) 
    \bdatw[15]_INST_0_i_42 
       (.I0(\bdatw[15]_INST_0_i_46_n_0 ),
        .I1(ir[6]),
        .I2(\bcmd[1]_INST_0_i_2_n_0 ),
        .I3(\bdatw[15]_INST_0_i_49_n_0 ),
        .I4(ir[10]),
        .O(\bdatw[15]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AA8AFFFFFFFF)) 
    \bdatw[15]_INST_0_i_43 
       (.I0(\bdatw[15]_INST_0_i_56_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(ir[3]),
        .I3(\bcmd[1]_INST_0_i_8_n_0 ),
        .I4(\bdatw[15]_INST_0_i_73_n_0 ),
        .I5(ir[6]),
        .O(\bdatw[15]_INST_0_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatw[15]_INST_0_i_44 
       (.I0(\stat[1]_i_9_n_0 ),
        .I1(ir[5]),
        .I2(ir[4]),
        .O(\bdatw[15]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h10101010FF101010)) 
    \bdatw[15]_INST_0_i_45 
       (.I0(\bdatw[15]_INST_0_i_74_n_0 ),
        .I1(ir[6]),
        .I2(ir[11]),
        .I3(\bcmd[1]_INST_0_i_7_n_0 ),
        .I4(\bcmd[1]_INST_0_i_6_n_0 ),
        .I5(\bcmd[1] ),
        .O(\bdatw[15]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \bdatw[15]_INST_0_i_46 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[11]),
        .I3(badr_0_sn_1),
        .I4(rst_n_fl_reg_1),
        .I5(ir[12]),
        .O(\bdatw[15]_INST_0_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \bdatw[15]_INST_0_i_47 
       (.I0(tout__1_carry_i_25_0),
        .I1(ir[15]),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(ir[14]),
        .O(\bdatw[15]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \bdatw[15]_INST_0_i_48 
       (.I0(crdy),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[10]),
        .O(\bdatw[15]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \bdatw[15]_INST_0_i_49 
       (.I0(crdy),
        .I1(ir[9]),
        .I2(ir[11]),
        .I3(badr_0_sn_1),
        .I4(rst_n_fl_reg_1),
        .I5(ir[12]),
        .O(\bdatw[15]_INST_0_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hCFEEEEEE)) 
    \bdatw[15]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_20_n_0 ),
        .I2(\bdatw[15]_INST_0_i_21_n_0 ),
        .I3(ir[0]),
        .I4(ir[1]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0000202000002000)) 
    \bdatw[15]_INST_0_i_50 
       (.I0(\bdatw[15]_INST_0_i_75_n_0 ),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(badr_0_sn_1),
        .I3(ir[11]),
        .I4(ir[10]),
        .I5(crdy),
        .O(\bdatw[15]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \bdatw[15]_INST_0_i_51 
       (.I0(\stat[0]_i_24_n_0 ),
        .I1(badr_0_sn_1),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(ir[11]),
        .I4(ir[10]),
        .I5(ir[9]),
        .O(\bdatw[15]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \bdatw[15]_INST_0_i_52 
       (.I0(\badrx[15]_INST_0_i_3_n_0 ),
        .I1(badr_0_sn_1),
        .I2(ir[11]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[7]),
        .O(\bdatw[15]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \bdatw[15]_INST_0_i_53 
       (.I0(\badrx[15]_INST_0_i_3_n_0 ),
        .I1(badr_0_sn_1),
        .I2(ir[11]),
        .I3(ir[10]),
        .I4(ir[8]),
        .I5(\bdatw[15]_INST_0_i_76_n_0 ),
        .O(\bdatw[15]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h00001F0000001000)) 
    \bdatw[15]_INST_0_i_54 
       (.I0(\bdatw[15]_INST_0_i_77_n_0 ),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(badr_0_sn_1),
        .I4(\badrx[15]_INST_0_i_3_n_0 ),
        .I5(\bdatw[15]_INST_0_i_78_n_0 ),
        .O(\bdatw[15]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \bdatw[15]_INST_0_i_55 
       (.I0(ir[7]),
        .I1(ir[10]),
        .I2(\bdatw[15]_INST_0_i_79_n_0 ),
        .I3(ir[11]),
        .I4(badr_0_sn_1),
        .I5(\badrx[15]_INST_0_i_3_n_0 ),
        .O(\bdatw[15]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF9DFFFFFFFFFF)) 
    \bdatw[15]_INST_0_i_56 
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(\badrx[15]_INST_0_i_3_n_0 ),
        .I5(badr_0_sn_1),
        .O(\bdatw[15]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFF0000)) 
    \bdatw[15]_INST_0_i_57 
       (.I0(\bdatw[15]_INST_0_i_43_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .I4(ir[0]),
        .I5(\bdatw[15]_INST_0_i_80_n_0 ),
        .O(ctl_selb_rn[0]));
  LUT6 #(
    .INIT(64'h00000000EFFFFFFF)) 
    \bdatw[15]_INST_0_i_58 
       (.I0(\bdatw[8]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[15]_INST_0_i_43_n_0 ),
        .I3(\bdatw[15]_INST_0_i_42_n_0 ),
        .I4(\bdatw[15]_INST_0_i_41_n_0 ),
        .I5(ctl_selb_0[2]),
        .O(\bdatw[15]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h02AAAAAAAAAAAAAA)) 
    \bdatw[15]_INST_0_i_59 
       (.I0(ir[2]),
        .I1(ir[7]),
        .I2(\stat[0]_i_9_n_0 ),
        .I3(\bdatw[15]_INST_0_i_41_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(\bdatw[15]_INST_0_i_43_n_0 ),
        .O(ctl_selb_rn[2]));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[15]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_22_n_0 ),
        .I1(\bdatw[15]_INST_0_i_23_n_0 ),
        .I2(\bdatw[15]_INST_0_i_24_n_0 ),
        .O(\bdatw[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7F00FFFF7F007F00)) 
    \bdatw[15]_INST_0_i_60 
       (.I0(\bdatw[15]_INST_0_i_43_n_0 ),
        .I1(\bdatw[15]_INST_0_i_42_n_0 ),
        .I2(\bdatw[15]_INST_0_i_41_n_0 ),
        .I3(ir[1]),
        .I4(rst_n_fl_reg_4),
        .I5(ir[6]),
        .O(ctl_selb_rn[1]));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \bdatw[15]_INST_0_i_61 
       (.I0(\sr_reg[15] [0]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_58_n_0 ),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[2]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[15]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \bdatw[15]_INST_0_i_62 
       (.I0(\sr_reg[15] [0]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_58_n_0 ),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[1]),
        .I5(ctl_selb_rn[2]),
        .O(\bdatw[15]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \bdatw[15]_INST_0_i_63 
       (.I0(\sr_reg[15] [0]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_58_n_0 ),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[2]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[15]_INST_0_i_63_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \bdatw[15]_INST_0_i_64 
       (.I0(ctl_selb_rn[0]),
        .I1(\bdatw[15]_INST_0_i_58_n_0 ),
        .I2(ctl_selb_0[0]),
        .I3(ctl_selb_rn[2]),
        .I4(ctl_selb_rn[1]),
        .O(\bdatw[15]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \bdatw[15]_INST_0_i_65 
       (.I0(\sr_reg[15] [0]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_58_n_0 ),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[2]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[15]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \bdatw[15]_INST_0_i_66 
       (.I0(\sr_reg[15] [0]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_58_n_0 ),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[2]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[15]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \bdatw[15]_INST_0_i_67 
       (.I0(\sr_reg[15] [0]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_58_n_0 ),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[2]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[15]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \bdatw[15]_INST_0_i_68 
       (.I0(\sr_reg[15] [0]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_58_n_0 ),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[1]),
        .I5(ctl_selb_rn[2]),
        .O(\bdatw[15]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \bdatw[15]_INST_0_i_69 
       (.I0(\sr_reg[15] [0]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_58_n_0 ),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[2]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[15]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_60_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [14]),
        .I2(\bdatw[15]_INST_0_i_26_n_0 ),
        .I3(\bdatw[15]_INST_0_i_27_n_0 ),
        .I4(\bdatw[15]_INST_0_i_28_n_0 ),
        .I5(\bdatw[15]_INST_0_i_29_n_0 ),
        .O(\bdatw[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \bdatw[15]_INST_0_i_70 
       (.I0(\sr_reg[15] [0]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_58_n_0 ),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[2]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[15]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \bdatw[15]_INST_0_i_71 
       (.I0(\sr_reg[15] [0]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_58_n_0 ),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[2]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[15]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \bdatw[15]_INST_0_i_72 
       (.I0(\sr_reg[15] [0]),
        .I1(ctl_selb_0[0]),
        .I2(\bdatw[15]_INST_0_i_58_n_0 ),
        .I3(ctl_selb_rn[0]),
        .I4(ctl_selb_rn[2]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[15]_INST_0_i_72_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_73 
       (.I0(ir[5]),
        .I1(ir[4]),
        .O(\bdatw[15]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \bdatw[15]_INST_0_i_74 
       (.I0(ir[4]),
        .I1(\bcmd[1]_INST_0_i_10_n_0 ),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(ir[14]),
        .I5(badr_0_sn_1),
        .O(\bdatw[15]_INST_0_i_74_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_75 
       (.I0(ir[8]),
        .I1(ir[6]),
        .O(\bdatw[15]_INST_0_i_75_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatw[15]_INST_0_i_76 
       (.I0(ir[7]),
        .I1(ir[6]),
        .O(\bdatw[15]_INST_0_i_76_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \bdatw[15]_INST_0_i_77 
       (.I0(ir[6]),
        .I1(ir[7]),
        .I2(ir[8]),
        .O(\bdatw[15]_INST_0_i_77_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \bdatw[15]_INST_0_i_78 
       (.I0(crdy),
        .I1(ir[8]),
        .I2(ir[9]),
        .O(\bdatw[15]_INST_0_i_78_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_79 
       (.I0(ir[9]),
        .I1(crdy),
        .O(\bdatw[15]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF40FF40FF40)) 
    \bdatw[15]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_30_n_0 ),
        .I1(ir[0]),
        .I2(ir[1]),
        .I3(\bdatw[15]_INST_0_i_31_n_0 ),
        .I4(\stat[1]_i_4_n_0 ),
        .I5(ir[6]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h0404040404FF0404)) 
    \bdatw[15]_INST_0_i_80 
       (.I0(tout__1_carry_i_25_0),
        .I1(fch_irq_req),
        .I2(rst_n_fl_reg_3),
        .I3(\stat[0]_i_8_n_0 ),
        .I4(ir[11]),
        .I5(\bcmd[2]_INST_0_i_2_n_0 ),
        .O(\bdatw[15]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F8F8F8FF)) 
    \bdatw[15]_INST_0_i_81 
       (.I0(ir[5]),
        .I1(\stat[1]_i_9_n_0 ),
        .I2(\bdatw[15]_INST_0_i_83_n_0 ),
        .I3(\bdatw[15]_INST_0_i_84_n_0 ),
        .I4(\bcmd[0]_INST_0_i_6_n_0 ),
        .I5(ir[4]),
        .O(\bdatw[15]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000EF00CC)) 
    \bdatw[15]_INST_0_i_82 
       (.I0(\bdatw[15]_INST_0_i_49_n_0 ),
        .I1(ir[6]),
        .I2(ir[7]),
        .I3(\bdatw[15]_INST_0_i_85_n_0 ),
        .I4(\bdatw[15]_INST_0_i_46_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[15]_INST_0_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \bdatw[15]_INST_0_i_83 
       (.I0(\bcmd[1] ),
        .I1(\bdatw[15]_INST_0_i_81_0 ),
        .I2(\stat[2]_i_10_n_0 ),
        .I3(\bcmd[1]_INST_0_i_9_n_0 ),
        .I4(\bcmd[1]_INST_0_i_12_n_0 ),
        .I5(\bcmd[1]_INST_0_i_7_n_0 ),
        .O(\bdatw[15]_INST_0_i_83_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_84 
       (.I0(ir[6]),
        .I1(ir[11]),
        .O(\bdatw[15]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \bdatw[15]_INST_0_i_85 
       (.I0(rst_n_fl_reg_1),
        .I1(ir[12]),
        .I2(badr_0_sn_1),
        .I3(ir[7]),
        .I4(ir[6]),
        .I5(\bdatw[15]_INST_0_i_48_n_0 ),
        .O(\bdatw[15]_INST_0_i_85_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[15]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_32_n_0 ),
        .I1(\bdatw[15]_INST_0_i_33_n_0 ),
        .I2(\bdatw[15]_INST_0_i_34_n_0 ),
        .O(\bdatw[15]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[1]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(bdatw[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[2]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[3]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bdatw[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[4]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(bdatw[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[5]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[6]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[7]_INST_0 
       (.I0(\stat_reg[0]_0 ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[7]));
  LUT5 #(
    .INIT(32'h10F000E0)) 
    \bdatw[8]_INST_0 
       (.I0(ir[7]),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(\stat_reg[0]_0 ),
        .I3(\bdatw[8]_INST_0_i_1_n_0 ),
        .I4(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(bdatw[8]));
  LUT6 #(
    .INIT(64'h00000000000000BF)) 
    \bdatw[8]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[8]),
        .I2(ctl_selb_0[0]),
        .I3(p_1_in[8]),
        .I4(\bdatw[8]_INST_0_i_4_n_0 ),
        .I5(\bdatw[8]_INST_0_i_5_n_0 ),
        .O(\bdatw[8]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \bdatw[8]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0[0]),
        .I2(eir[0]),
        .O(\bdatw[8]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[8]_INST_0_i_11 
       (.I0(ir[0]),
        .I1(ir[1]),
        .O(\bdatw[8]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_12 
       (.I0(\bdatw[12]_INST_0_i_26_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [8]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [8]),
        .I4(\bdatw[15]_INST_0_i_6_1 [8]),
        .I5(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\bdatw[8]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_13 
       (.I0(\bdatw[12]_INST_0_i_23_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 [8]),
        .I2(\bdatw[12]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_5 [8]),
        .I4(\sp_reg[15]_0 [8]),
        .I5(\bdatw[12]_INST_0_i_25_n_0 ),
        .O(\bdatw[8]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_14 
       (.I0(\bdatw[12]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [8]),
        .I2(\bdatw[12]_INST_0_i_21_n_0 ),
        .I3(sp_dec_0[4]),
        .I4(\badrx[15] [8]),
        .I5(\bdatw[15]_INST_0_i_59_0 ),
        .O(\bdatw[8]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_10 [8]),
        .I2(\bdatw[15]_INST_0_i_62_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_8 [8]),
        .I4(\bdatw[15]_INST_0_i_7_7 [8]),
        .I5(\bdatw[15]_INST_0_i_63_n_0 ),
        .O(\bdatw[8]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(\sr_reg[15] [8]),
        .I2(\bdatw[15]_INST_0_i_65_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [8]),
        .I4(\bdatw[15]_INST_0_i_7_4 [8]),
        .I5(\bdatw[15]_INST_0_i_66_n_0 ),
        .O(\bdatw[8]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_3 [8]),
        .I2(\bdatw[15]_INST_0_i_68_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_6 [8]),
        .I4(\bdatw[15]_INST_0_i_7_5 [8]),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[8]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [8]),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_0 [8]),
        .I4(\bdatw[15]_INST_0_i_7_1 [8]),
        .I5(\bdatw[15]_INST_0_i_72_n_0 ),
        .O(\bdatw[8]_INST_0_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatw[8]_INST_0_i_19 
       (.I0(ir[4]),
        .I1(\iv[15]_i_21_n_0 ),
        .I2(ir[6]),
        .O(\bdatw[8]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \bdatw[8]_INST_0_i_2 
       (.I0(p_1_in[0]),
        .I1(\bdatw[8]_INST_0_i_7_n_0 ),
        .I2(\bdatw[8]_INST_0_i_8_n_0 ),
        .I3(\bdatw[8]_INST_0_i_9_n_0 ),
        .I4(\bdatw[8]_INST_0_i_10_n_0 ),
        .O(\bdatw[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[8]_INST_0_i_20 
       (.I0(ir[3]),
        .I1(ir[2]),
        .O(\bdatw[8]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \bdatw[8]_INST_0_i_21 
       (.I0(\badrx[15]_INST_0_i_3_n_0 ),
        .I1(badr_0_sn_1),
        .I2(\bcmd[1]_INST_0_i_8_n_0 ),
        .I3(ir[11]),
        .I4(ir[5]),
        .I5(\bdatw[8]_INST_0_i_29_n_0 ),
        .O(\bdatw[8]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h80FF)) 
    \bdatw[8]_INST_0_i_22 
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(\bdatw[8]_INST_0_i_6_0 ),
        .O(\bdatw[8]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_23 
       (.I0(\bdatw[15]_INST_0_i_68_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_6 [0]),
        .I2(\bdatw[15]_INST_0_i_69_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_5 [0]),
        .I4(\bdatw[15]_INST_0_i_7_2 [0]),
        .I5(\bdatw[15]_INST_0_i_70_n_0 ),
        .O(\bdatw[8]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_24 
       (.I0(\bdatw[15]_INST_0_i_71_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_0 [0]),
        .I2(\bdatw[15]_INST_0_i_72_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_1 [0]),
        .I4(\bdatw[15]_INST_0_i_6_4 [0]),
        .I5(\bdatw[12]_INST_0_i_27_n_0 ),
        .O(\bdatw[8]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_25 
       (.I0(\bdatw[15]_INST_0_i_62_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_8 [0]),
        .I2(\bdatw[15]_INST_0_i_63_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_7 [0]),
        .I4(\bdatw[15]_INST_0_i_7_3 [0]),
        .I5(\bdatw[15]_INST_0_i_67_n_0 ),
        .O(\bdatw[8]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_26 
       (.I0(\bdatw[15]_INST_0_i_65_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_9 [0]),
        .I2(\bdatw[15]_INST_0_i_66_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_4 [0]),
        .I4(\bdatw[15]_INST_0_i_7_10 [0]),
        .I5(\bdatw[15]_INST_0_i_61_n_0 ),
        .O(\bdatw[8]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h3100000000000000)) 
    \bdatw[8]_INST_0_i_28 
       (.I0(ctl_selb_0[0]),
        .I1(ctl_selb_rn[0]),
        .I2(\bdatw[15]_INST_0_i_6_3 [0]),
        .I3(\sr_reg[15] [0]),
        .I4(\bdatw[15]_INST_0_i_58_n_0 ),
        .I5(\bdatw[8]_INST_0_i_31_n_0 ),
        .O(\bdatw[8]_INST_0_i_28_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[8]_INST_0_i_29 
       (.I0(ir[4]),
        .I1(ir[6]),
        .O(\bdatw[8]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEFEAEFEAEFE)) 
    \bdatw[8]_INST_0_i_3 
       (.I0(\bdatw[11]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_19_n_0 ),
        .I2(\bdatw[8]_INST_0_i_11_n_0 ),
        .I3(\bdatw[11]_INST_0_i_11_n_0 ),
        .I4(\stat[1]_i_4_n_0 ),
        .I5(ir[7]),
        .O(p_1_in[8]));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[8]_INST_0_i_31 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[2]),
        .O(\bdatw[8]_INST_0_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[8]_INST_0_i_4 
       (.I0(\bdatw[8]_INST_0_i_12_n_0 ),
        .I1(\bdatw[8]_INST_0_i_13_n_0 ),
        .I2(\bdatw[8]_INST_0_i_14_n_0 ),
        .O(\bdatw[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[8]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_60_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [7]),
        .I2(\bdatw[8]_INST_0_i_15_n_0 ),
        .I3(\bdatw[8]_INST_0_i_16_n_0 ),
        .I4(\bdatw[8]_INST_0_i_17_n_0 ),
        .I5(\bdatw[8]_INST_0_i_18_n_0 ),
        .O(\bdatw[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0F0F0FFE2E2)) 
    \bdatw[8]_INST_0_i_6 
       (.I0(\bdatw[8]_INST_0_i_19_n_0 ),
        .I1(\bdatw[8]_INST_0_i_20_n_0 ),
        .I2(\bdatw[8]_INST_0_i_21_n_0 ),
        .I3(\bdatw[8]_INST_0_i_22_n_0 ),
        .I4(ir[0]),
        .I5(ir[1]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bdatw[8]_INST_0_i_7 
       (.I0(\bdatw[8]_INST_0_i_23_n_0 ),
        .I1(\bdatw[8]_INST_0_i_24_n_0 ),
        .I2(\bdatw[8]_INST_0_i_25_n_0 ),
        .I3(\bdatw[8]_INST_0_i_26_n_0 ),
        .I4(\bdatw[8]_INST_0_i_2_0 ),
        .O(\bdatw[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_8 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_1 [0]),
        .I2(\bdatw[12]_INST_0_i_23_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_2 [0]),
        .I4(\bdatw[15]_INST_0_i_6_5 [0]),
        .I5(\bdatw[12]_INST_0_i_24_n_0 ),
        .O(\bdatw[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFC0FFC0)) 
    \bdatw[8]_INST_0_i_9 
       (.I0(\bdatw[12]_INST_0_i_21_n_0 ),
        .I1(\bdatw[12]_INST_0_i_20_n_0 ),
        .I2(\bdatw[15]_INST_0_i_6_0 [0]),
        .I3(\bdatw[8]_INST_0_i_28_n_0 ),
        .I4(\bdatw[12]_INST_0_i_25_n_0 ),
        .I5(\sp_reg[15]_0 [0]),
        .O(\bdatw[8]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h10F000E0)) 
    \bdatw[9]_INST_0 
       (.I0(ir[7]),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(\stat_reg[0]_0 ),
        .I3(\bdatw[9]_INST_0_i_1_n_0 ),
        .I4(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(bdatw[9]));
  LUT6 #(
    .INIT(64'h00000000000000BF)) 
    \bdatw[9]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(eir[9]),
        .I2(ctl_selb_0[0]),
        .I3(p_1_in[9]),
        .I4(\bdatw[9]_INST_0_i_4_n_0 ),
        .I5(\bdatw[9]_INST_0_i_5_n_0 ),
        .O(\bdatw[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[9]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_60_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [0]),
        .I2(\bdatw[9]_INST_0_i_20_n_0 ),
        .I3(\bdatw[9]_INST_0_i_21_n_0 ),
        .I4(\bdatw[9]_INST_0_i_22_n_0 ),
        .I5(\bdatw[9]_INST_0_i_23_n_0 ),
        .O(\bdatw[9]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \bdatw[9]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0[0]),
        .I2(eir[1]),
        .O(\bdatw[9]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_12 
       (.I0(\bdatw[12]_INST_0_i_26_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [9]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [9]),
        .I4(\bdatw[15]_INST_0_i_6_1 [9]),
        .I5(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\bdatw[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_13 
       (.I0(\bdatw[12]_INST_0_i_23_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 [9]),
        .I2(\bdatw[12]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_5 [9]),
        .I4(\sp_reg[15]_0 [9]),
        .I5(\bdatw[12]_INST_0_i_25_n_0 ),
        .O(\bdatw[9]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_14 
       (.I0(\bdatw[12]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [9]),
        .I2(\bdatw[12]_INST_0_i_21_n_0 ),
        .I3(sp_dec_0[5]),
        .I4(\badrx[15] [9]),
        .I5(\bdatw[15]_INST_0_i_59_0 ),
        .O(\bdatw[9]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_10 [9]),
        .I2(\bdatw[15]_INST_0_i_62_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_8 [9]),
        .I4(\bdatw[15]_INST_0_i_7_7 [9]),
        .I5(\bdatw[15]_INST_0_i_63_n_0 ),
        .O(\bdatw[9]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(\sr_reg[15] [9]),
        .I2(\bdatw[15]_INST_0_i_65_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [9]),
        .I4(\bdatw[15]_INST_0_i_7_4 [9]),
        .I5(\bdatw[15]_INST_0_i_66_n_0 ),
        .O(\bdatw[9]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_3 [9]),
        .I2(\bdatw[15]_INST_0_i_68_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_6 [9]),
        .I4(\bdatw[15]_INST_0_i_7_5 [9]),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[9]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [9]),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_0 [9]),
        .I4(\bdatw[15]_INST_0_i_7_1 [9]),
        .I5(\bdatw[15]_INST_0_i_72_n_0 ),
        .O(\bdatw[9]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF0CFF0CDD0C)) 
    \bdatw[9]_INST_0_i_19 
       (.I0(ir[0]),
        .I1(ir[1]),
        .I2(\bdatw[8]_INST_0_i_22_n_0 ),
        .I3(\bdatw[8]_INST_0_i_21_n_0 ),
        .I4(ir[2]),
        .I5(ir[3]),
        .O(\bdatw[9]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[9]_INST_0_i_2 
       (.I0(p_1_in[1]),
        .I1(\bdatw[9]_INST_0_i_7_n_0 ),
        .I2(\bdatw[9]_INST_0_i_8_n_0 ),
        .I3(\bdatw[9]_INST_0_i_9_n_0 ),
        .I4(\bdatw[9]_INST_0_i_10_n_0 ),
        .I5(\bdatw[9]_INST_0_i_11_n_0 ),
        .O(\bdatw[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_20 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_10 [1]),
        .I2(\bdatw[15]_INST_0_i_62_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_8 [1]),
        .I4(\bdatw[15]_INST_0_i_7_7 [1]),
        .I5(\bdatw[15]_INST_0_i_63_n_0 ),
        .O(\bdatw[9]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_21 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(\sr_reg[15] [1]),
        .I2(\bdatw[15]_INST_0_i_65_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_9 [1]),
        .I4(\bdatw[15]_INST_0_i_7_4 [1]),
        .I5(\bdatw[15]_INST_0_i_66_n_0 ),
        .O(\bdatw[9]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_22 
       (.I0(\bdatw[15]_INST_0_i_67_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_3 [1]),
        .I2(\bdatw[15]_INST_0_i_68_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_6 [1]),
        .I4(\bdatw[15]_INST_0_i_7_5 [1]),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[9]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_23 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_2 [1]),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\bdatw[15]_INST_0_i_7_0 [1]),
        .I4(\bdatw[15]_INST_0_i_7_1 [1]),
        .I5(\bdatw[15]_INST_0_i_72_n_0 ),
        .O(\bdatw[9]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEFEAEFEAEFE)) 
    \bdatw[9]_INST_0_i_3 
       (.I0(\bdatw[11]_INST_0_i_9_n_0 ),
        .I1(\bdatw[15]_INST_0_i_19_n_0 ),
        .I2(\bcmd[1]_INST_0_i_7_n_0 ),
        .I3(\bdatw[11]_INST_0_i_11_n_0 ),
        .I4(\stat[1]_i_4_n_0 ),
        .I5(ir[8]),
        .O(p_1_in[9]));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[9]_INST_0_i_4 
       (.I0(\bdatw[9]_INST_0_i_12_n_0 ),
        .I1(\bdatw[9]_INST_0_i_13_n_0 ),
        .I2(\bdatw[9]_INST_0_i_14_n_0 ),
        .O(\bdatw[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[9]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_60_0 ),
        .I1(\bdatw[15]_INST_0_i_1_0 [8]),
        .I2(\bdatw[9]_INST_0_i_15_n_0 ),
        .I3(\bdatw[9]_INST_0_i_16_n_0 ),
        .I4(\bdatw[9]_INST_0_i_17_n_0 ),
        .I5(\bdatw[9]_INST_0_i_18_n_0 ),
        .O(\bdatw[9]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF010)) 
    \bdatw[9]_INST_0_i_6 
       (.I0(\bdatw[11]_INST_0_i_19_n_0 ),
        .I1(ir[1]),
        .I2(ir[0]),
        .I3(\stat[1]_i_4_n_0 ),
        .I4(\bdatw[9]_INST_0_i_19_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_7 
       (.I0(\bdatw[12]_INST_0_i_20_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_0 [1]),
        .I2(\bdatw[12]_INST_0_i_21_n_0 ),
        .I3(O[1]),
        .I4(\badrx[15] [1]),
        .I5(\bdatw[15]_INST_0_i_59_0 ),
        .O(\bdatw[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_8 
       (.I0(\bdatw[12]_INST_0_i_23_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_2 [1]),
        .I2(\bdatw[12]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_5 [1]),
        .I4(\sp_reg[15]_0 [1]),
        .I5(\bdatw[12]_INST_0_i_25_n_0 ),
        .O(\bdatw[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_9 
       (.I0(\bdatw[12]_INST_0_i_26_n_0 ),
        .I1(\bdatw[15]_INST_0_i_6_3 [1]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[15]_INST_0_i_6_4 [1]),
        .I4(\bdatw[15]_INST_0_i_6_1 [1]),
        .I5(\bdatw[12]_INST_0_i_28_n_0 ),
        .O(\bdatw[9]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFABFFABFFFFFFAB)) 
    \ccmd[0]_INST_0 
       (.I0(\ccmd[0]_INST_0_i_1_n_0 ),
        .I1(ir[6]),
        .I2(\ccmd[1]_INST_0_i_3_n_0 ),
        .I3(\ccmd[0]_INST_0_i_2_n_0 ),
        .I4(Q[0]),
        .I5(\ccmd[1]_INST_0_i_2_n_0 ),
        .O(ccmd[0]));
  LUT6 #(
    .INIT(64'hAAAAAEFFAAAAAAAA)) 
    \ccmd[0]_INST_0_i_1 
       (.I0(\ccmd[1]_INST_0_i_1_n_0 ),
        .I1(ir[11]),
        .I2(\ccmd[3]_INST_0_i_4_n_0 ),
        .I3(\ccmd[0]_INST_0_i_3_n_0 ),
        .I4(\ccmd[4]_INST_0_i_3_n_0 ),
        .I5(ir[6]),
        .O(\ccmd[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0011001F)) 
    \ccmd[0]_INST_0_i_2 
       (.I0(\ccmd[0]_INST_0_i_4_n_0 ),
        .I1(ir[7]),
        .I2(\ccmd[0]_INST_0_i_5_n_0 ),
        .I3(ir[6]),
        .I4(\ccmd[0]_INST_0_i_6_n_0 ),
        .I5(\ccmd[3]_INST_0_i_3_n_0 ),
        .O(\ccmd[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \ccmd[0]_INST_0_i_3 
       (.I0(crdy),
        .I1(ir[11]),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\ccmd[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \ccmd[0]_INST_0_i_4 
       (.I0(ir[11]),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .I2(ir[10]),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(crdy),
        .O(\ccmd[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \ccmd[0]_INST_0_i_5 
       (.I0(ir[11]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(ir[15]),
        .I4(ir[12]),
        .I5(rst_n_fl_reg_1),
        .O(\ccmd[0]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \ccmd[0]_INST_0_i_6 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[10]),
        .I3(ir[7]),
        .I4(crdy),
        .O(\ccmd[0]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBBBFBFAA)) 
    \ccmd[1]_INST_0 
       (.I0(\ccmd[1]_INST_0_i_1_n_0 ),
        .I1(\ccmd[1]_INST_0_i_2_n_0 ),
        .I2(\ccmd[1]_INST_0_i_3_n_0 ),
        .I3(ir[7]),
        .I4(ir[6]),
        .O(ccmd[1]));
  LUT6 #(
    .INIT(64'h0000000003050000)) 
    \ccmd[1]_INST_0_i_1 
       (.I0(\ccmd[1]_INST_0_i_4_n_0 ),
        .I1(\ccmd[1]_INST_0_i_5_n_0 ),
        .I2(\ccmd[4]_INST_0_i_2_n_0 ),
        .I3(ir[11]),
        .I4(Q[0]),
        .I5(ir[7]),
        .O(\ccmd[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFDEFFFFFFFFFFFF)) 
    \ccmd[1]_INST_0_i_2 
       (.I0(ir[11]),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .I2(ir[8]),
        .I3(ir[9]),
        .I4(crdy),
        .I5(ir[10]),
        .O(\ccmd[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \ccmd[1]_INST_0_i_3 
       (.I0(crdy),
        .I1(ir[10]),
        .I2(badr_0_sn_1),
        .I3(\badrx[15]_INST_0_i_3_n_0 ),
        .I4(ir[11]),
        .I5(\ccmd[4]_INST_0_i_4_n_0 ),
        .O(\ccmd[1]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \ccmd[1]_INST_0_i_4 
       (.I0(ir[8]),
        .I1(ir[9]),
        .I2(ir[10]),
        .O(\ccmd[1]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \ccmd[1]_INST_0_i_5 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[10]),
        .O(\ccmd[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCDDDCCCCFCCC)) 
    \ccmd[2]_INST_0 
       (.I0(ir[9]),
        .I1(\ccmd[2]_INST_0_i_1_n_0 ),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(\ccmd[3]_INST_0_i_2_n_0 ),
        .I5(ir[8]),
        .O(ccmd[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF11031100)) 
    \ccmd[2]_INST_0_i_1 
       (.I0(\ccmd[3]_INST_0_i_4_n_0 ),
        .I1(\ccmd[4]_INST_0_i_3_n_0 ),
        .I2(\bcmd[0]_INST_0_i_2_n_0 ),
        .I3(ir[11]),
        .I4(crdy),
        .I5(\ccmd[3]_INST_0_i_3_n_0 ),
        .O(\ccmd[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0FFF0F8F0F0F)) 
    \ccmd[3]_INST_0 
       (.I0(ir[7]),
        .I1(ir[6]),
        .I2(\ccmd[3]_INST_0_i_1_n_0 ),
        .I3(\ccmd[3]_INST_0_i_2_n_0 ),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(ccmd[3]));
  LUT6 #(
    .INIT(64'h5554555544544455)) 
    \ccmd[3]_INST_0_i_1 
       (.I0(\ccmd[3]_INST_0_i_3_n_0 ),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .I2(\bcmd[0]_INST_0_i_2_n_0 ),
        .I3(ir[11]),
        .I4(crdy),
        .I5(\ccmd[3]_INST_0_i_4_n_0 ),
        .O(\ccmd[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \ccmd[3]_INST_0_i_2 
       (.I0(ir[11]),
        .I1(ir[12]),
        .I2(rst_n_fl_reg_1),
        .I3(badr_0_sn_1),
        .I4(ir[10]),
        .I5(crdy),
        .O(\ccmd[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000800800000000)) 
    \ccmd[3]_INST_0_i_3 
       (.I0(\iv[15]_i_12_0 ),
        .I1(ir[7]),
        .I2(ir[11]),
        .I3(ir[8]),
        .I4(ir[9]),
        .I5(ir[10]),
        .O(\ccmd[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \ccmd[3]_INST_0_i_4 
       (.I0(ir[10]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(crdy),
        .I4(ir[7]),
        .O(\ccmd[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h08AA08AA08AA0808)) 
    \ccmd[4]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(Q[0]),
        .I2(\ccmd[4]_INST_0_i_2_n_0 ),
        .I3(\ccmd[4]_INST_0_i_3_n_0 ),
        .I4(\ccmd[4]_INST_0_i_4_n_0 ),
        .I5(Q[1]),
        .O(ccmd[4]));
  LUT3 #(
    .INIT(8'h04)) 
    \ccmd[4]_INST_0_i_1 
       (.I0(ir[11]),
        .I1(crdy),
        .I2(ir[10]),
        .O(\ccmd[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \ccmd[4]_INST_0_i_2 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[15]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\ccmd[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \ccmd[4]_INST_0_i_3 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[15]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\ccmd[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[4]_INST_0_i_4 
       (.I0(ir[9]),
        .I1(ir[8]),
        .O(\ccmd[4]_INST_0_i_4_n_0 ));
  FDRE ctl_fetch_ext_fl_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(ctl_fetch_ext_fl_reg_0),
        .Q(ctl_fetch_ext_fl),
        .R(\<const0> ));
  FDRE ctl_fetch_fl_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(ctl_fetch_fl_reg_0),
        .Q(ctl_fetch_fl),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF1)) 
    ctl_fetch_inferred_i_1
       (.I0(ctl_fetch_inferred_i_2_n_0),
        .I1(rst_n_fl_reg_1),
        .I2(ctl_fetch_inferred_i_3_n_0),
        .I3(ctl_fetch_inferred_i_4_n_0),
        .I4(ctl_fetch_inferred_i_5_n_0),
        .I5(ctl_fetch_inferred_i_6_n_0),
        .O(in0));
  LUT6 #(
    .INIT(64'hFF04040400000000)) 
    ctl_fetch_inferred_i_10
       (.I0(ir[12]),
        .I1(ir[13]),
        .I2(\sr_reg[15] [6]),
        .I3(Q[1]),
        .I4(ir[8]),
        .I5(ir[11]),
        .O(ctl_fetch_inferred_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0080)) 
    ctl_fetch_inferred_i_11
       (.I0(ir[8]),
        .I1(Q[0]),
        .I2(crdy),
        .I3(ir[9]),
        .I4(ir[15]),
        .I5(ctl_fetch_inferred_i_22_n_0),
        .O(ctl_fetch_inferred_i_11_n_0));
  LUT6 #(
    .INIT(64'h000000F400F00004)) 
    ctl_fetch_inferred_i_12
       (.I0(ir[13]),
        .I1(\bdatw[8]_INST_0_i_11_n_0 ),
        .I2(ir[14]),
        .I3(ir[12]),
        .I4(ir[11]),
        .I5(\sr_reg[15] [5]),
        .O(ctl_fetch_inferred_i_12_n_0));
  LUT6 #(
    .INIT(64'h140F000014000000)) 
    ctl_fetch_inferred_i_13
       (.I0(ir[14]),
        .I1(\sr_reg[15] [7]),
        .I2(ir[11]),
        .I3(ir[12]),
        .I4(ir[13]),
        .I5(\sr_reg[15] [6]),
        .O(ctl_fetch_inferred_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF88888088)) 
    ctl_fetch_inferred_i_14
       (.I0(ir[10]),
        .I1(Q[1]),
        .I2(brdy),
        .I3(ir[11]),
        .I4(ir[6]),
        .I5(ctl_fetch_inferred_i_23_n_0),
        .O(ctl_fetch_inferred_i_14_n_0));
  LUT6 #(
    .INIT(64'h0505050705050505)) 
    ctl_fetch_inferred_i_15
       (.I0(ctl_fetch_inferred_i_24_n_0),
        .I1(ir[11]),
        .I2(ir[12]),
        .I3(ir[14]),
        .I4(ir[13]),
        .I5(rst_n_fl_reg_5),
        .O(ctl_fetch_inferred_i_15_n_0));
  LUT6 #(
    .INIT(64'h7F007F7F7F007F00)) 
    ctl_fetch_inferred_i_16
       (.I0(Q[0]),
        .I1(brdy),
        .I2(ir[6]),
        .I3(rst_n_fl_reg_1),
        .I4(ir[9]),
        .I5(ir[7]),
        .O(ctl_fetch_inferred_i_16_n_0));
  LUT5 #(
    .INIT(32'h888BCCFF)) 
    ctl_fetch_inferred_i_17
       (.I0(ir[10]),
        .I1(ir[7]),
        .I2(ir[12]),
        .I3(ir[11]),
        .I4(crdy),
        .O(ctl_fetch_inferred_i_17_n_0));
  LUT6 #(
    .INIT(64'h0404444444444404)) 
    ctl_fetch_inferred_i_18
       (.I0(rst_n_fl_reg_1),
        .I1(ir[11]),
        .I2(ir[7]),
        .I3(ir[4]),
        .I4(ir[6]),
        .I5(ir[5]),
        .O(ctl_fetch_inferred_i_18_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctl_fetch_inferred_i_19
       (.I0(ir[9]),
        .I1(ir[10]),
        .O(ctl_fetch_inferred_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFCFFFFFBF33FFFF)) 
    ctl_fetch_inferred_i_2
       (.I0(ir[7]),
        .I1(ir[10]),
        .I2(crdy),
        .I3(ir[11]),
        .I4(ir[8]),
        .I5(ir[9]),
        .O(ctl_fetch_inferred_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFAEEEAE)) 
    ctl_fetch_inferred_i_20
       (.I0(ctl_fetch_inferred_i_25_n_0),
        .I1(Q[1]),
        .I2(ctl_fetch_inferred_i_17_n_0),
        .I3(Q[2]),
        .I4(ir[1]),
        .I5(rst_n_fl_reg_2),
        .O(ctl_fetch_inferred_i_20_n_0));
  LUT6 #(
    .INIT(64'h0000000000F02222)) 
    ctl_fetch_inferred_i_21
       (.I0(ir[11]),
        .I1(rst_n_fl_reg_1),
        .I2(Q[0]),
        .I3(ir[7]),
        .I4(ir[10]),
        .I5(ir[9]),
        .O(ctl_fetch_inferred_i_21_n_0));
  LUT6 #(
    .INIT(64'hC0C0C0C0FF808080)) 
    ctl_fetch_inferred_i_22
       (.I0(ir[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(ir[13]),
        .I4(ir[14]),
        .I5(ir[12]),
        .O(ctl_fetch_inferred_i_22_n_0));
  LUT6 #(
    .INIT(64'hFF40404040404040)) 
    ctl_fetch_inferred_i_23
       (.I0(ctl_fetch_inferred_i_14_0),
        .I1(ir[12]),
        .I2(rst_n_fl_reg_1),
        .I3(ir[5]),
        .I4(ctl_fetch_fl_reg_1),
        .I5(ctl_fetch_inferred_i_19_n_0),
        .O(ctl_fetch_inferred_i_23_n_0));
  LUT6 #(
    .INIT(64'h00001F0F11011F0F)) 
    ctl_fetch_inferred_i_24
       (.I0(ir[7]),
        .I1(tout__1_carry_i_23_n_0),
        .I2(Q[1]),
        .I3(ir[0]),
        .I4(Q[0]),
        .I5(ir[8]),
        .O(ctl_fetch_inferred_i_24_n_0));
  LUT6 #(
    .INIT(64'hBAAABABABAAABAAA)) 
    ctl_fetch_inferred_i_25
       (.I0(ctl_fetch_inferred_i_27_n_0),
        .I1(ctl_fetch_inferred_i_28_n_0),
        .I2(ir[6]),
        .I3(Q[0]),
        .I4(rst_n_fl_reg_1),
        .I5(brdy),
        .O(ctl_fetch_inferred_i_25_n_0));
  LUT6 #(
    .INIT(64'h4004044000000440)) 
    ctl_fetch_inferred_i_27
       (.I0(ir[13]),
        .I1(ir[14]),
        .I2(\sr_reg[15] [5]),
        .I3(ir[11]),
        .I4(\sr_reg[15] [7]),
        .I5(ir[12]),
        .O(ctl_fetch_inferred_i_27_n_0));
  LUT3 #(
    .INIT(8'h9D)) 
    ctl_fetch_inferred_i_28
       (.I0(ir[11]),
        .I1(ir[10]),
        .I2(ir[8]),
        .O(ctl_fetch_inferred_i_28_n_0));
  LUT6 #(
    .INIT(64'hEEEEFEFEFEEEEEEE)) 
    ctl_fetch_inferred_i_3
       (.I0(ctl_fetch_inferred_i_7_n_0),
        .I1(ctl_fetch_fl_reg_2),
        .I2(ctl_fetch_fl_reg_1),
        .I3(ir[8]),
        .I4(ir[10]),
        .I5(ir[11]),
        .O(ctl_fetch_inferred_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ctl_fetch_inferred_i_4
       (.I0(ctl_fetch_inferred_i_9_n_0),
        .I1(ctl_fetch_inferred_i_10_n_0),
        .I2(ctl_fetch_inferred_i_11_n_0),
        .I3(ctl_fetch_inferred_i_12_n_0),
        .I4(ctl_fetch_inferred_i_13_n_0),
        .I5(ctl_fetch_inferred_i_14_n_0),
        .O(ctl_fetch_inferred_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEFFAEAE)) 
    ctl_fetch_inferred_i_5
       (.I0(ctl_fetch_inferred_i_15_n_0),
        .I1(ir[11]),
        .I2(ctl_fetch_inferred_i_16_n_0),
        .I3(ctl_fetch_inferred_i_17_n_0),
        .I4(Q[0]),
        .I5(ir[8]),
        .O(ctl_fetch_inferred_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080000)) 
    ctl_fetch_inferred_i_6
       (.I0(Q[0]),
        .I1(ir[11]),
        .I2(ir[3]),
        .I3(ctl_fetch_inferred_i_18_n_0),
        .I4(ctl_fetch_inferred_i_19_n_0),
        .I5(ctl_fetch_inferred_i_20_n_0),
        .O(ctl_fetch_inferred_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000055D50000)) 
    ctl_fetch_inferred_i_7
       (.I0(ir[8]),
        .I1(brdy),
        .I2(ir[6]),
        .I3(ir[3]),
        .I4(ctl_fetch_inferred_i_19_n_0),
        .I5(rst_n_fl_reg_1),
        .O(ctl_fetch_inferred_i_7_n_0));
  LUT6 #(
    .INIT(64'hAAAAABAAABAAAAAA)) 
    ctl_fetch_inferred_i_9
       (.I0(ctl_fetch_inferred_i_21_n_0),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[12]),
        .I4(ir[11]),
        .I5(\sr_reg[15] [4]),
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
        .I1(\fch_irq_lev_reg[0]_0 ),
        .I2(fch_irq_req),
        .I3(fch_irq_lev[0]),
        .O(\fch_irq_lev[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \fch_irq_lev[1]_i_1 
       (.I0(irq_lev[1]),
        .I1(\fch_irq_lev_reg[0]_0 ),
        .I2(fch_irq_req),
        .I3(fch_irq_lev[1]),
        .O(\fch_irq_lev[1]_i_1_n_0 ));
  FDRE \fch_irq_lev_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch_irq_lev[0]_i_1_n_0 ),
        .Q(fch_irq_lev[0]),
        .R(p_0_in_0));
  FDRE \fch_irq_lev_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch_irq_lev[1]_i_1_n_0 ),
        .Q(fch_irq_lev[1]),
        .R(p_0_in_0));
  FDRE fch_irq_req_fl_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(fch_irq_req),
        .Q(fch_irq_req_fl),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \grn[15]_i_1 
       (.I0(ctl_selc_rn[0]),
        .I1(ctl_selc_rn[1]),
        .I2(ctl_selc_rn[2]),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\sr_reg[15] [0]),
        .O(E));
  LUT5 #(
    .INIT(32'h00001000)) 
    \grn[15]_i_1__0 
       (.I0(ctl_selc_rn[0]),
        .I1(ctl_selc_rn[1]),
        .I2(ctl_selc_rn[2]),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\sr_reg[15] [0]),
        .O(\sr_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \grn[15]_i_1__1 
       (.I0(ctl_selc_rn[0]),
        .I1(ctl_selc_rn[1]),
        .I2(ctl_selc_rn[2]),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\sr_reg[15] [0]),
        .O(\sr_reg[0]_2 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \grn[15]_i_1__10 
       (.I0(\grn[15]_i_2_n_0 ),
        .I1(ctl_selc_rn[0]),
        .I2(\grn[15]_i_2__0_n_0 ),
        .I3(\sr_reg[15] [0]),
        .O(\sr_reg[0]_11 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \grn[15]_i_1__11 
       (.I0(ctl_selc_rn[1]),
        .I1(ctl_selc_rn[2]),
        .I2(ctl_selc_rn[0]),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\sr_reg[15] [0]),
        .O(\sr_reg[0]_12 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \grn[15]_i_1__12 
       (.I0(ctl_selc_rn[1]),
        .I1(ctl_selc_rn[2]),
        .I2(ctl_selc_rn[0]),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\sr_reg[15] [0]),
        .O(\sr_reg[0]_13 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \grn[15]_i_1__13 
       (.I0(ctl_selc_rn[1]),
        .I1(ctl_selc_rn[2]),
        .I2(ctl_selc_rn[0]),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\sr_reg[15] [0]),
        .O(\sr_reg[0]_14 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \grn[15]_i_1__14 
       (.I0(ctl_selc_rn[1]),
        .I1(ctl_selc_rn[2]),
        .I2(ctl_selc_rn[0]),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\sr_reg[15] [0]),
        .O(\sr_reg[0]_15 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \grn[15]_i_1__2 
       (.I0(ctl_selc_rn[0]),
        .I1(ctl_selc_rn[1]),
        .I2(ctl_selc_rn[2]),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\sr_reg[15] [0]),
        .O(\sr_reg[0]_3 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \grn[15]_i_1__3 
       (.I0(ctl_selc_rn[1]),
        .I1(ctl_selc_rn[0]),
        .I2(ctl_selc_rn[2]),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\sr_reg[15] [0]),
        .O(\sr_reg[0]_4 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \grn[15]_i_1__4 
       (.I0(ctl_selc_rn[1]),
        .I1(ctl_selc_rn[0]),
        .I2(ctl_selc_rn[2]),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\sr_reg[15] [0]),
        .O(\sr_reg[0]_5 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \grn[15]_i_1__5 
       (.I0(ctl_selc_rn[1]),
        .I1(ctl_selc_rn[0]),
        .I2(ctl_selc_rn[2]),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\sr_reg[15] [0]),
        .O(\sr_reg[0]_6 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \grn[15]_i_1__6 
       (.I0(ctl_selc_rn[1]),
        .I1(ctl_selc_rn[0]),
        .I2(ctl_selc_rn[2]),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\sr_reg[15] [0]),
        .O(\sr_reg[0]_7 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \grn[15]_i_1__7 
       (.I0(\grn[15]_i_2_n_0 ),
        .I1(ctl_selc_rn[0]),
        .I2(\grn[15]_i_2__0_n_0 ),
        .I3(\sr_reg[15] [0]),
        .O(\sr_reg[0]_8 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \grn[15]_i_1__8 
       (.I0(\grn[15]_i_2_n_0 ),
        .I1(ctl_selc_rn[0]),
        .I2(\grn[15]_i_2__0_n_0 ),
        .I3(\sr_reg[15] [0]),
        .O(\sr_reg[0]_9 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \grn[15]_i_1__9 
       (.I0(\grn[15]_i_2_n_0 ),
        .I1(ctl_selc_rn[0]),
        .I2(\grn[15]_i_2__0_n_0 ),
        .I3(\sr_reg[15] [0]),
        .O(\sr_reg[0]_10 ));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[15]_i_2 
       (.I0(ctl_selc_rn[1]),
        .I1(ctl_selc_rn[2]),
        .O(\grn[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \grn[15]_i_2__0 
       (.I0(\iv[15]_i_7_n_0 ),
        .I1(\iv[15]_i_8_n_0 ),
        .I2(\iv[15]_i_9_n_0 ),
        .I3(\iv[15]_i_10_n_0 ),
        .I4(\iv_reg[0] ),
        .I5(ctl_selc),
        .O(\grn[15]_i_2__0_n_0 ));
  FDRE \ir_fl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[0]),
        .Q(ir_fl[0]),
        .R(p_0_in_0));
  FDRE \ir_fl_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[10]),
        .Q(ir_fl[10]),
        .R(p_0_in_0));
  FDRE \ir_fl_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[11]),
        .Q(ir_fl[11]),
        .R(p_0_in_0));
  FDRE \ir_fl_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[12]),
        .Q(ir_fl[12]),
        .R(p_0_in_0));
  FDRE \ir_fl_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[13]),
        .Q(ir_fl[13]),
        .R(p_0_in_0));
  FDRE \ir_fl_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[14]),
        .Q(ir_fl[14]),
        .R(p_0_in_0));
  FDRE \ir_fl_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[15]),
        .Q(ir_fl[15]),
        .R(p_0_in_0));
  FDRE \ir_fl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[1]),
        .Q(ir_fl[1]),
        .R(p_0_in_0));
  FDRE \ir_fl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[2]),
        .Q(ir_fl[2]),
        .R(p_0_in_0));
  FDRE \ir_fl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[3]),
        .Q(ir_fl[3]),
        .R(p_0_in_0));
  FDRE \ir_fl_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[4]),
        .Q(ir_fl[4]),
        .R(p_0_in_0));
  FDRE \ir_fl_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[5]),
        .Q(ir_fl[5]),
        .R(p_0_in_0));
  FDRE \ir_fl_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[6]),
        .Q(ir_fl[6]),
        .R(p_0_in_0));
  FDRE \ir_fl_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[7]),
        .Q(ir_fl[7]),
        .R(p_0_in_0));
  FDRE \ir_fl_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[8]),
        .Q(ir_fl[8]),
        .R(p_0_in_0));
  FDRE \ir_fl_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ir[9]),
        .Q(ir_fl[9]),
        .R(p_0_in_0));
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
        .I2(\tr_reg[3] [0]),
        .I3(\tr_reg[0] ),
        .I4(\iv[0]_i_4_n_0 ),
        .O(cbus[0]));
  LUT6 #(
    .INIT(64'hF0FFF5F5505F3F30)) 
    \iv[0]_i_10 
       (.I0(\bdatw[8]_INST_0_i_2_n_0 ),
        .I1(abus_0[8]),
        .I2(acmd[1]),
        .I3(abus_0[0]),
        .I4(acmd[0]),
        .I5(acmd[2]),
        .O(\iv[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hCFDD)) 
    \iv[0]_i_11 
       (.I0(\sr_reg[15] [6]),
        .I1(acmd[0]),
        .I2(abus_0[15]),
        .I3(acmd[1]),
        .O(\iv[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \iv[0]_i_12 
       (.I0(\bdatw[8]_INST_0_i_2_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \iv[0]_i_13 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(abus_0[0]),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h4544454545444544)) 
    \iv[0]_i_2 
       (.I0(\iv[14]_i_10_n_0 ),
        .I1(\iv[0]_i_5_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[0]_i_6_n_0 ),
        .I4(\iv[0]_i_7_n_0 ),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \iv[0]_i_4 
       (.I0(\iv[0]_i_9_n_0 ),
        .I1(\iv[0]_i_10_n_0 ),
        .I2(\iv[14]_i_14_n_0 ),
        .O(\iv[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8000000FF0000)) 
    \iv[0]_i_5 
       (.I0(\iv[8]_i_6_n_0 ),
        .I1(\iv[8]_i_7_n_0 ),
        .I2(\iv[9]_i_12_n_0 ),
        .I3(\iv[0]_i_11_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\iv[0]_i_12_n_0 ),
        .O(\iv[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0002FFAA)) 
    \iv[0]_i_6 
       (.I0(\iv[9]_i_14_n_0 ),
        .I1(acmd[0]),
        .I2(acmd[1]),
        .I3(\iv[14]_i_18_n_0 ),
        .I4(\iv[8]_i_16_n_0 ),
        .O(\iv[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \iv[0]_i_7 
       (.I0(\iv[0]_i_13_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_13_n_0),
        .O(\iv[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0220200020202000)) 
    \iv[0]_i_9 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(acmd[1]),
        .I3(abus_0[0]),
        .I4(\bdatw[8]_INST_0_i_2_n_0 ),
        .I5(acmd[0]),
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
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[10]),
        .I3(\bdatw[10]_INST_0_i_1_n_0 ),
        .I4(acmd[0]),
        .I5(acmd[1]),
        .O(\iv[10]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h7F552A00)) 
    \iv[10]_i_11 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(abus_0[15]),
        .I2(\iv[2]_i_14_n_0 ),
        .I3(\iv[2]_i_17_n_0 ),
        .I4(\iv[2]_i_16_n_0 ),
        .O(\iv[10]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h1B00FFFF)) 
    \iv[10]_i_12 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[14]_i_34_n_0 ),
        .I2(\iv[5]_i_14_n_0 ),
        .I3(\iv[9]_i_10_n_0 ),
        .I4(\iv[14]_i_22_n_0 ),
        .O(\iv[10]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00100111)) 
    \iv[10]_i_13 
       (.I0(acmd[1]),
        .I1(\iv[8]_i_7_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[14]_i_35_n_0 ),
        .I4(\iv[2]_i_16_n_0 ),
        .O(\iv[10]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h084C)) 
    \iv[10]_i_14 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[14]_i_18_n_0 ),
        .I2(\iv[2]_i_17_n_0 ),
        .I3(\iv[2]_i_16_n_0 ),
        .O(\iv[10]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[10]_i_15 
       (.I0(\iv[1]_i_18_n_0 ),
        .I1(\iv[11]_i_12_n_0 ),
        .I2(\iv[1]_i_19_n_0 ),
        .O(\iv[10]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000044440000FA50)) 
    \iv[10]_i_16 
       (.I0(\bdatw[8]_INST_0_i_2_n_0 ),
        .I1(abus_0[0]),
        .I2(abus_0[2]),
        .I3(abus_0[1]),
        .I4(\iv[11]_i_12_n_0 ),
        .I5(\iv[2]_i_14_n_0 ),
        .O(\iv[10]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFA0A0C0CFC0CF)) 
    \iv[10]_i_17 
       (.I0(\sr[7]_i_22_n_0 ),
        .I1(\sr[7]_i_23_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[12]_i_20_n_0 ),
        .I4(\iv[10]_i_19_n_0 ),
        .I5(\iv[2]_i_14_n_0 ),
        .O(\iv[10]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[10]_i_18 
       (.I0(abus_0[2]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(acmd[0]),
        .O(\iv[10]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \iv[10]_i_19 
       (.I0(\sr_reg[15] [6]),
        .I1(abus_0[0]),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[10]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000005D5D005D)) 
    \iv[10]_i_2 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\iv[10]_i_5_n_0 ),
        .I2(\iv[10]_i_6_n_0 ),
        .I3(\iv[10]_i_7_n_0 ),
        .I4(\iv[10]_i_8_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \iv[10]_i_4 
       (.I0(\iv[10]_i_9_n_0 ),
        .I1(\iv[14]_i_14_n_0 ),
        .I2(\iv[10]_i_10_n_0 ),
        .O(\iv[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \iv[10]_i_5 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(tout__1_carry_i_13_n_0),
        .I2(abus_0[9]),
        .O(\iv[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000000EF)) 
    \iv[10]_i_6 
       (.I0(\iv[10]_i_11_n_0 ),
        .I1(\iv[8]_i_7_n_0 ),
        .I2(acmd[1]),
        .I3(\iv[10]_i_12_n_0 ),
        .I4(\iv[10]_i_13_n_0 ),
        .O(\iv[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4343437373734373)) 
    \iv[10]_i_7 
       (.I0(\iv[10]_i_14_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(acmd[0]),
        .I3(\iv[10]_i_15_n_0 ),
        .I4(\iv[8]_i_7_n_0 ),
        .I5(\iv[10]_i_16_n_0 ),
        .O(\iv[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CACFCAC0)) 
    \iv[10]_i_8 
       (.I0(\iv[10]_i_16_n_0 ),
        .I1(\iv[10]_i_15_n_0 ),
        .I2(\iv[14]_i_18_n_0 ),
        .I3(acmd[1]),
        .I4(\iv[10]_i_17_n_0 ),
        .I5(acmd[0]),
        .O(\iv[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE0E3E3ECECEFE3EC)) 
    \iv[10]_i_9 
       (.I0(\iv[10]_i_18_n_0 ),
        .I1(acmd[2]),
        .I2(acmd[1]),
        .I3(abus_0[10]),
        .I4(acmd[0]),
        .I5(\bdatw[10]_INST_0_i_2_n_0 ),
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
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[11]_i_10 
       (.I0(abus_0[11]),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(acmd[0]),
        .O(\iv[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[11]_i_11 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[11]),
        .I3(\bdatw[11]_INST_0_i_1_n_0 ),
        .I4(acmd[0]),
        .I5(acmd[1]),
        .O(\iv[11]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h666A)) 
    \iv[11]_i_12 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\iv[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00F0333300F05555)) 
    \iv[11]_i_13 
       (.I0(abus_0[3]),
        .I1(abus_0[2]),
        .I2(\iv[13]_i_20_n_0 ),
        .I3(\iv[13]_i_19_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[11]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h350035FF)) 
    \iv[11]_i_14 
       (.I0(abus_0[14]),
        .I1(abus_0[13]),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(\iv[2]_i_14_n_0 ),
        .I4(\iv[13]_i_22_n_0 ),
        .O(\iv[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[11]_i_15 
       (.I0(\sr[7]_i_18_n_0 ),
        .I1(\sr[7]_i_19_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\sr[7]_i_24_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\sr[7]_i_25_n_0 ),
        .O(\iv[11]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[11]_i_16 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[7]_i_16_n_0 ),
        .O(\iv[11]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hB0)) 
    \iv[11]_i_17 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[14]_i_18_n_0 ),
        .I2(abus_0[15]),
        .O(\iv[11]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hCDEFCCCC)) 
    \iv[11]_i_18 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[12]_i_16_n_0 ),
        .I2(\iv[7]_i_13_n_0 ),
        .I3(\iv[11]_i_22_n_0 ),
        .I4(\iv[9]_i_10_n_0 ),
        .O(\iv[11]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[11]_i_19 
       (.I0(\iv[7]_i_12_n_0 ),
        .I1(\iv[11]_i_12_n_0 ),
        .I2(\iv[7]_i_16_n_0 ),
        .O(\iv[11]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h04040455)) 
    \iv[11]_i_2 
       (.I0(\iv[14]_i_10_n_0 ),
        .I1(\iv[11]_i_5_n_0 ),
        .I2(\iv[11]_i_6_n_0 ),
        .I3(\iv[11]_i_7_n_0 ),
        .I4(\iv[11]_i_8_n_0 ),
        .O(\iv[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFEF00)) 
    \iv[11]_i_20 
       (.I0(\bdatw[8]_INST_0_i_2_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[15]),
        .I3(\iv[11]_i_12_n_0 ),
        .I4(\iv[7]_i_16_n_0 ),
        .O(\iv[11]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h70FF)) 
    \iv[11]_i_21 
       (.I0(tout__1_carry_i_13_n_0),
        .I1(abus_0[10]),
        .I2(\iv[14]_i_25_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[11]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[11]_i_22 
       (.I0(abus_0[9]),
        .I1(abus_0[8]),
        .I2(abus_0[7]),
        .I3(abus_0[6]),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[11]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F2F0000)) 
    \iv[11]_i_4 
       (.I0(acmd[2]),
        .I1(acmd[1]),
        .I2(\iv[11]_i_9_n_0 ),
        .I3(\iv[11]_i_10_n_0 ),
        .I4(\iv[14]_i_14_n_0 ),
        .I5(\iv[11]_i_11_n_0 ),
        .O(\iv[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1B11)) 
    \iv[11]_i_5 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[11]_i_13_n_0 ),
        .I2(\iv[11]_i_14_n_0 ),
        .I3(tout__1_carry_i_13_n_0),
        .I4(\iv[14]_i_18_n_0 ),
        .O(\iv[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \iv[11]_i_6 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\iv[11]_i_15_n_0 ),
        .I2(\iv[14]_i_18_n_0 ),
        .O(\iv[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h03020F0F03020F00)) 
    \iv[11]_i_7 
       (.I0(\iv[11]_i_16_n_0 ),
        .I1(\iv[11]_i_17_n_0 ),
        .I2(\iv[11]_i_18_n_0 ),
        .I3(\iv[8]_i_7_n_0 ),
        .I4(acmd[1]),
        .I5(\iv[11]_i_19_n_0 ),
        .O(\iv[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFD0)) 
    \iv[11]_i_8 
       (.I0(\iv[14]_i_18_n_0 ),
        .I1(\iv[11]_i_20_n_0 ),
        .I2(acmd[0]),
        .I3(\iv[11]_i_21_n_0 ),
        .O(\iv[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDCFFCCDCDCFFC)) 
    \iv[11]_i_9 
       (.I0(abus_0[3]),
        .I1(acmd[2]),
        .I2(acmd[0]),
        .I3(abus_0[11]),
        .I4(acmd[1]),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[12]_i_1 
       (.I0(\iv[12]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\sr_reg[7] [0]),
        .I3(\tr_reg[12] ),
        .I4(\iv[12]_i_4_n_0 ),
        .O(cbus[12]));
  LUT6 #(
    .INIT(64'h2200022000002200)) 
    \iv[12]_i_10 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(acmd[0]),
        .I3(acmd[1]),
        .I4(\bdatw[12]_INST_0_i_1_n_0 ),
        .I5(abus_0[12]),
        .O(\iv[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0047FFFF00470047)) 
    \iv[12]_i_11 
       (.I0(\iv[12]_i_20_n_0 ),
        .I1(\iv[2]_i_14_n_0 ),
        .I2(\iv[12]_i_21_n_0 ),
        .I3(\iv[11]_i_12_n_0 ),
        .I4(\iv[0]_i_13_n_0 ),
        .I5(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(\iv[12]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \iv[12]_i_12 
       (.I0(\iv[12]_i_22_n_0 ),
        .I1(\sr[6]_i_9_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .O(\iv[12]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hDCFECCCC)) 
    \iv[12]_i_13 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(acmd[0]),
        .I2(\iv[12]_i_23_n_0 ),
        .I3(\iv[12]_i_24_n_0 ),
        .I4(\iv[9]_i_10_n_0 ),
        .O(\iv[12]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[12]_i_14 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[8]_i_14_n_0 ),
        .O(\iv[12]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h1B0F)) 
    \iv[12]_i_15 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[8]_i_14_n_0 ),
        .I2(abus_0[15]),
        .I3(\iv[14]_i_18_n_0 ),
        .O(\iv[12]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \iv[12]_i_16 
       (.I0(acmd[0]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(\bdatw[9]_INST_0_i_2_n_0 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .I5(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[12]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h8D)) 
    \iv[12]_i_17 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[8]_i_12_n_0 ),
        .I2(\iv[8]_i_14_n_0 ),
        .O(\iv[12]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \iv[12]_i_18 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[8]_i_13_n_0 ),
        .I2(\iv[7]_i_15_n_0 ),
        .O(\iv[12]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[12]_i_19 
       (.I0(abus_0[4]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(acmd[0]),
        .O(\iv[12]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EEE0E0E)) 
    \iv[12]_i_2 
       (.I0(\iv[12]_i_5_n_0 ),
        .I1(\iv[12]_i_6_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[12]_i_7_n_0 ),
        .I4(\iv[12]_i_8_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[12]_i_20 
       (.I0(abus_0[1]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[2]),
        .O(\iv[12]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[12]_i_21 
       (.I0(abus_0[3]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[4]),
        .O(\iv[12]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[12]_i_22 
       (.I0(abus_0[8]),
        .I1(abus_0[7]),
        .I2(abus_0[6]),
        .I3(abus_0[5]),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[12]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[12]_i_23 
       (.I0(abus_0[4]),
        .I1(abus_0[3]),
        .I2(abus_0[2]),
        .I3(abus_0[1]),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[12]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hF0EEF044)) 
    \iv[12]_i_24 
       (.I0(\bdatw[8]_INST_0_i_2_n_0 ),
        .I1(abus_0[0]),
        .I2(\sr[7]_i_23_n_0 ),
        .I3(\iv[2]_i_14_n_0 ),
        .I4(\sr_reg[15] [6]),
        .O(\iv[12]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[12]_i_4 
       (.I0(\iv[12]_i_9_n_0 ),
        .I1(\iv[14]_i_14_n_0 ),
        .I2(\iv[12]_i_10_n_0 ),
        .O(\iv[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000E2F3)) 
    \iv[12]_i_5 
       (.I0(\iv[12]_i_11_n_0 ),
        .I1(\iv[14]_i_18_n_0 ),
        .I2(\iv[12]_i_12_n_0 ),
        .I3(acmd[1]),
        .I4(\iv[12]_i_13_n_0 ),
        .O(\iv[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h33740074CCCCCCCC)) 
    \iv[12]_i_6 
       (.I0(\iv[12]_i_14_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\iv[12]_i_12_n_0 ),
        .I3(\iv[8]_i_7_n_0 ),
        .I4(\iv[12]_i_11_n_0 ),
        .I5(acmd[0]),
        .O(\iv[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2230223322302200)) 
    \iv[12]_i_7 
       (.I0(\iv[12]_i_15_n_0 ),
        .I1(\iv[12]_i_16_n_0 ),
        .I2(\iv[12]_i_17_n_0 ),
        .I3(acmd[1]),
        .I4(\iv[14]_i_18_n_0 ),
        .I5(\iv[12]_i_18_n_0 ),
        .O(\iv[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \iv[12]_i_8 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(tout__1_carry_i_13_n_0),
        .I2(abus_0[11]),
        .O(\iv[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5F0FFC0CFCFC0)) 
    \iv[12]_i_9 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\iv[12]_i_19_n_0 ),
        .I2(acmd[1]),
        .I3(abus_0[12]),
        .I4(acmd[0]),
        .I5(acmd[2]),
        .O(\iv[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[13]_i_1 
       (.I0(\iv[13]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\sr_reg[7] [1]),
        .I3(\tr_reg[13] ),
        .I4(\iv[13]_i_4_n_0 ),
        .O(cbus[13]));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[13]_i_10 
       (.I0(abus_0[13]),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(acmd[0]),
        .O(\iv[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[13]_i_11 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[13]),
        .I3(\bdatw[13]_INST_0_i_1_n_0 ),
        .I4(acmd[0]),
        .I5(acmd[1]),
        .O(\iv[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F0F5C5C5C5C)) 
    \iv[13]_i_12 
       (.I0(\sr[7]_i_21_n_0 ),
        .I1(\sr[7]_i_18_n_0 ),
        .I2(\iv[2]_i_14_n_0 ),
        .I3(\iv[13]_i_19_n_0 ),
        .I4(\iv[13]_i_20_n_0 ),
        .I5(\iv[11]_i_12_n_0 ),
        .O(\iv[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[13]_i_13 
       (.I0(\sr[7]_i_25_n_0 ),
        .I1(\sr[7]_i_22_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\sr[7]_i_19_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\sr[7]_i_24_n_0 ),
        .O(\iv[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5FC0C0505FC0C)) 
    \iv[13]_i_14 
       (.I0(\sr[7]_i_21_n_0 ),
        .I1(\sr[7]_i_18_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[13]_i_21_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\iv[13]_i_22_n_0 ),
        .O(\iv[13]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \iv[13]_i_15 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[13]_i_23_n_0 ),
        .I2(\iv[2]_i_14_n_0 ),
        .I3(\iv[13]_i_24_n_0 ),
        .O(\iv[13]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[13]_i_16 
       (.I0(\iv[13]_i_25_n_0 ),
        .I1(\iv[13]_i_26_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[13]_i_27_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\iv[13]_i_23_n_0 ),
        .O(\iv[13]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \iv[13]_i_17 
       (.I0(\iv[13]_i_28_n_0 ),
        .I1(\iv[13]_i_29_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[13]_i_30_n_0 ),
        .I4(\iv[13]_i_31_n_0 ),
        .I5(\iv[2]_i_14_n_0 ),
        .O(\iv[13]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h5754)) 
    \iv[13]_i_18 
       (.I0(abus_0[15]),
        .I1(\iv[11]_i_12_n_0 ),
        .I2(\iv[2]_i_14_n_0 ),
        .I3(\iv[13]_i_23_n_0 ),
        .O(\iv[13]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[13]_i_19 
       (.I0(abus_0[0]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[13]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EEE0E0E)) 
    \iv[13]_i_2 
       (.I0(\iv[13]_i_5_n_0 ),
        .I1(\iv[13]_i_6_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[13]_i_7_n_0 ),
        .I4(\iv[13]_i_8_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[13]_i_20 
       (.I0(\bdatw[8]_INST_0_i_2_n_0 ),
        .I1(abus_0[1]),
        .O(\iv[13]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \iv[13]_i_21 
       (.I0(abus_0[1]),
        .I1(abus_0[0]),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[13]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \iv[13]_i_22 
       (.I0(\sr_reg[15] [6]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[15]),
        .O(\iv[13]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_23 
       (.I0(abus_0[14]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[13]),
        .O(\iv[13]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[13]_i_24 
       (.I0(\bdatw[8]_INST_0_i_2_n_0 ),
        .I1(abus_0[15]),
        .O(\iv[13]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_25 
       (.I0(abus_0[3]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[2]),
        .O(\iv[13]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_26 
       (.I0(abus_0[1]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[0]),
        .O(\iv[13]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \iv[13]_i_27 
       (.I0(abus_0[15]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(\sr_reg[15] [6]),
        .O(\iv[13]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_28 
       (.I0(abus_0[11]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[10]),
        .O(\iv[13]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_29 
       (.I0(abus_0[9]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[8]),
        .O(\iv[13]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_30 
       (.I0(abus_0[7]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[6]),
        .O(\iv[13]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_31 
       (.I0(abus_0[5]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[4]),
        .O(\iv[13]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F2F0000)) 
    \iv[13]_i_4 
       (.I0(acmd[2]),
        .I1(acmd[1]),
        .I2(\iv[13]_i_9_n_0 ),
        .I3(\iv[13]_i_10_n_0 ),
        .I4(\iv[14]_i_14_n_0 ),
        .I5(\iv[13]_i_11_n_0 ),
        .O(\iv[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CACFCAC0)) 
    \iv[13]_i_5 
       (.I0(\iv[13]_i_12_n_0 ),
        .I1(\iv[13]_i_13_n_0 ),
        .I2(\iv[14]_i_18_n_0 ),
        .I3(acmd[1]),
        .I4(\iv[13]_i_14_n_0 ),
        .I5(acmd[0]),
        .O(\iv[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h74337400CCCCCCCC)) 
    \iv[13]_i_6 
       (.I0(\iv[13]_i_15_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\iv[13]_i_13_n_0 ),
        .I3(\iv[14]_i_18_n_0 ),
        .I4(\iv[13]_i_12_n_0 ),
        .I5(acmd[0]),
        .O(\iv[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0A03000F0A030)) 
    \iv[13]_i_7 
       (.I0(\iv[13]_i_16_n_0 ),
        .I1(\iv[13]_i_17_n_0 ),
        .I2(\iv[14]_i_22_n_0 ),
        .I3(\iv[14]_i_18_n_0 ),
        .I4(acmd[1]),
        .I5(\iv[13]_i_18_n_0 ),
        .O(\iv[13]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \iv[13]_i_8 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(tout__1_carry_i_13_n_0),
        .I2(abus_0[12]),
        .O(\iv[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDCFFCCDCDCFFC)) 
    \iv[13]_i_9 
       (.I0(abus_0[5]),
        .I1(acmd[2]),
        .I2(acmd[0]),
        .I3(abus_0[13]),
        .I4(acmd[1]),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[14]_i_1 
       (.I0(\iv[14]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\sr_reg[7] [2]),
        .I3(\tr_reg[14] ),
        .I4(\iv[14]_i_5_n_0 ),
        .O(cbus[14]));
  LUT4 #(
    .INIT(16'h7F22)) 
    \iv[14]_i_10 
       (.I0(acmd[2]),
        .I1(acmd[1]),
        .I2(\iv[14]_i_14_n_0 ),
        .I3(\sr[5]_i_3_n_0 ),
        .O(\iv[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \iv[14]_i_11 
       (.I0(\bdatw[8]_INST_0_i_21_n_0 ),
        .I1(\bdatw[8]_INST_0_i_19_n_0 ),
        .I2(\iv[14]_i_26_n_0 ),
        .I3(\iv[14]_i_27_n_0 ),
        .I4(\sr[15]_i_12_n_0 ),
        .I5(\stat_reg[1] ),
        .O(acmd[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[14]_i_12 
       (.I0(acmd[3]),
        .I1(acmd[4]),
        .O(\iv[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFAF3FA3CFA03FA3C)) 
    \iv[14]_i_13 
       (.I0(\iv[14]_i_28_n_0 ),
        .I1(abus_0[14]),
        .I2(acmd[2]),
        .I3(acmd[1]),
        .I4(acmd[0]),
        .I5(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[14]_i_14 
       (.I0(acmd[3]),
        .I1(acmd[4]),
        .O(\iv[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[14]_i_15 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[14]),
        .I3(\bdatw[14]_INST_0_i_1_n_0 ),
        .I4(acmd[0]),
        .I5(acmd[1]),
        .O(\iv[14]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \iv[14]_i_16 
       (.I0(\iv[1]_i_18_n_0 ),
        .I1(\iv[2]_i_20_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .O(\iv[14]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h05F505F50303F3F3)) 
    \iv[14]_i_17 
       (.I0(\iv[14]_i_29_n_0 ),
        .I1(\iv[14]_i_30_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[14]_i_31_n_0 ),
        .I4(\iv[14]_i_32_n_0 ),
        .I5(\iv[2]_i_14_n_0 ),
        .O(\iv[14]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h6666666A)) 
    \iv[14]_i_18 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .I4(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \iv[14]_i_19 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[1]_i_18_n_0 ),
        .I2(\iv[14]_i_33_n_0 ),
        .O(\iv[14]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EEE0E0E)) 
    \iv[14]_i_2 
       (.I0(\iv[14]_i_6_n_0 ),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[14]_i_8_n_0 ),
        .I4(\iv[14]_i_9_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[14]_i_20 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[2]_i_17_n_0 ),
        .O(\iv[14]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[14]_i_21 
       (.I0(\iv[14]_i_34_n_0 ),
        .I1(\iv[11]_i_12_n_0 ),
        .I2(\iv[14]_i_35_n_0 ),
        .O(\iv[14]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h4555)) 
    \iv[14]_i_22 
       (.I0(\iv[12]_i_16_n_0 ),
        .I1(\iv[14]_i_18_n_0 ),
        .I2(abus_0[15]),
        .I3(acmd[1]),
        .O(\iv[14]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \iv[14]_i_23 
       (.I0(\iv[9]_i_10_n_0 ),
        .I1(\iv[5]_i_14_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[5]_i_13_n_0 ),
        .O(\iv[14]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h5744)) 
    \iv[14]_i_24 
       (.I0(abus_0[15]),
        .I1(\iv[11]_i_12_n_0 ),
        .I2(\iv[2]_i_14_n_0 ),
        .I3(\iv[2]_i_17_n_0 ),
        .O(\iv[14]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \iv[14]_i_25 
       (.I0(\bdatw[8]_INST_0_i_2_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\iv[14]_i_36_n_0 ),
        .O(\iv[14]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEEEEEEAEAAEEE)) 
    \iv[14]_i_26 
       (.I0(\bdatw[15]_INST_0_i_52_n_0 ),
        .I1(\bdatw[8]_INST_0_i_6_0 ),
        .I2(ir[12]),
        .I3(ir[11]),
        .I4(ir[13]),
        .I5(ir[14]),
        .O(\iv[14]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000004)) 
    \iv[14]_i_27 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(ir[11]),
        .I2(ir[10]),
        .I3(ir[8]),
        .I4(ir[6]),
        .I5(ir[9]),
        .O(\iv[14]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[14]_i_28 
       (.I0(abus_0[6]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(acmd[0]),
        .O(\iv[14]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[14]_i_29 
       (.I0(abus_0[11]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[12]),
        .O(\iv[14]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FD0D)) 
    \iv[14]_i_3 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(acmd[1]),
        .I3(tout__1_carry_i_11_n_0),
        .I4(acmd[0]),
        .O(\iv[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[14]_i_30 
       (.I0(abus_0[13]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[14]),
        .O(\iv[14]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[14]_i_31 
       (.I0(abus_0[7]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[8]),
        .O(\iv[14]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[14]_i_32 
       (.I0(abus_0[9]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[10]),
        .O(\iv[14]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE4444FA50FA50)) 
    \iv[14]_i_33 
       (.I0(\bdatw[8]_INST_0_i_2_n_0 ),
        .I1(abus_0[0]),
        .I2(abus_0[2]),
        .I3(abus_0[1]),
        .I4(\sr_reg[15] [6]),
        .I5(\iv[2]_i_14_n_0 ),
        .O(\iv[14]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[14]_i_34 
       (.I0(abus_0[4]),
        .I1(abus_0[3]),
        .I2(abus_0[2]),
        .I3(abus_0[1]),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F5555000F3333)) 
    \iv[14]_i_35 
       (.I0(abus_0[15]),
        .I1(abus_0[14]),
        .I2(\iv[13]_i_19_n_0 ),
        .I3(\sr_reg[15] [6]),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \iv[14]_i_36 
       (.I0(acmd[1]),
        .I1(\badr[15]_INST_0_i_2_n_0 ),
        .I2(\badr[15]_INST_0_i_3_n_0 ),
        .I3(\badr[15]_INST_0_i_4_n_0 ),
        .I4(\iv[14]_i_37_n_0 ),
        .I5(acmd[0]),
        .O(\iv[14]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \iv[14]_i_37 
       (.I0(\iv[4]_i_17_n_0 ),
        .I1(\iv[14]_i_38_n_0 ),
        .I2(\iv[4]_i_12_0 ),
        .I3(\iv[14]_i_39_n_0 ),
        .I4(\badrx[15] [15]),
        .I5(\badr[15]_INST_0_i_27_0 ),
        .O(\iv[14]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \iv[14]_i_38 
       (.I0(\badr[15]_INST_0_i_37_n_0 ),
        .I1(\badr[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_4 [15]),
        .O(\iv[14]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \iv[14]_i_39 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\bdatw[15]_INST_0_i_7_6 [15]),
        .O(\iv[14]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[14]_i_5 
       (.I0(\iv[14]_i_13_n_0 ),
        .I1(\iv[14]_i_14_n_0 ),
        .I2(\iv[14]_i_15_n_0 ),
        .O(\iv[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CACFCAC0)) 
    \iv[14]_i_6 
       (.I0(\iv[14]_i_16_n_0 ),
        .I1(\iv[14]_i_17_n_0 ),
        .I2(\iv[14]_i_18_n_0 ),
        .I3(acmd[1]),
        .I4(\iv[14]_i_19_n_0 ),
        .I5(acmd[0]),
        .O(\iv[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h74337400CCCCCCCC)) 
    \iv[14]_i_7 
       (.I0(\iv[14]_i_20_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\iv[14]_i_17_n_0 ),
        .I3(\iv[14]_i_18_n_0 ),
        .I4(\iv[14]_i_16_n_0 ),
        .I5(acmd[0]),
        .O(\iv[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C0C080C000C08)) 
    \iv[14]_i_8 
       (.I0(\iv[14]_i_21_n_0 ),
        .I1(\iv[14]_i_22_n_0 ),
        .I2(\iv[14]_i_23_n_0 ),
        .I3(\iv[8]_i_7_n_0 ),
        .I4(acmd[1]),
        .I5(\iv[14]_i_24_n_0 ),
        .O(\iv[14]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \iv[14]_i_9 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(tout__1_carry_i_13_n_0),
        .I2(abus_0[13]),
        .O(\iv[14]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \iv[15]_i_1 
       (.I0(\iv[15]_i_3_n_0 ),
        .I1(ctl_selc_rn[2]),
        .I2(ctl_selc_rn[1]),
        .I3(ctl_selc_rn[0]),
        .O(cbus_sel_cr[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF8AFF8A8F)) 
    \iv[15]_i_10 
       (.I0(Q[0]),
        .I1(\iv[15]_i_28_n_0 ),
        .I2(\ccmd[0]_INST_0_i_4_n_0 ),
        .I3(ir[7]),
        .I4(\iv[15]_i_29_n_0 ),
        .I5(\iv[15]_i_30_n_0 ),
        .O(\iv[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \iv[15]_i_12 
       (.I0(\iv[15]_i_23_n_0 ),
        .I1(\iv[15]_i_31_n_0 ),
        .I2(\sr[15]_i_9_n_0 ),
        .I3(\iv[15]_i_32_n_0 ),
        .I4(\iv[15]_i_33_n_0 ),
        .I5(\iv[15]_i_10_n_0 ),
        .O(ctl_selc));
  LUT6 #(
    .INIT(64'h5D5D5D5D7F5D5D5D)) 
    \iv[15]_i_13 
       (.I0(rst_n_fl_reg_4),
        .I1(ir[10]),
        .I2(\iv[15]_i_24_n_0 ),
        .I3(\iv[15]_i_12_0 ),
        .I4(crdy),
        .I5(ir[11]),
        .O(\iv[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h1111111010101010)) 
    \iv[15]_i_14 
       (.I0(\iv[15]_i_30_n_0 ),
        .I1(\iv[15]_i_34_n_0 ),
        .I2(ir[7]),
        .I3(ir[8]),
        .I4(\iv[15]_i_35_n_0 ),
        .I5(\bdatw[15]_INST_0_i_49_n_0 ),
        .O(\iv[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA888AAAA)) 
    \iv[15]_i_15 
       (.I0(\iv[15]_i_36_n_0 ),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(\bcmd[2]_INST_0_i_2_n_0 ),
        .O(\iv[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_16 
       (.I0(\iv[15]_i_7_n_0 ),
        .I1(\iv[15]_i_31_n_0 ),
        .O(\iv[15]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \iv[15]_i_17 
       (.I0(\ccmd[4]_INST_0_i_3_n_0 ),
        .I1(Q[1]),
        .I2(ir[10]),
        .I3(crdy),
        .I4(ir[11]),
        .O(\iv[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0AA2AAAA00000000)) 
    \iv[15]_i_18 
       (.I0(ir[9]),
        .I1(ir[11]),
        .I2(ir[14]),
        .I3(ir[12]),
        .I4(ir[13]),
        .I5(\bdatw[8]_INST_0_i_6_0 ),
        .O(\iv[15]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h00A20000)) 
    \iv[15]_i_19 
       (.I0(\iv[15]_i_14_n_0 ),
        .I1(Q[1]),
        .I2(\iv[15]_i_36_n_0 ),
        .I3(\bdatw[15]_INST_0_i_52_n_0 ),
        .I4(\iv[15]_i_37_n_0 ),
        .O(\iv[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \iv[15]_i_20 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(ir[3]),
        .I4(ir[11]),
        .I5(\iv[15]_i_38_n_0 ),
        .O(\iv[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \iv[15]_i_21 
       (.I0(ir[5]),
        .I1(ir[11]),
        .I2(\bcmd[1]_INST_0_i_8_n_0 ),
        .I3(badr_0_sn_1),
        .I4(rst_n_fl_reg_1),
        .I5(ir[12]),
        .O(\iv[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4FFF4F4)) 
    \iv[15]_i_22 
       (.I0(\iv[15]_i_19_n_0 ),
        .I1(ir[3]),
        .I2(\iv_reg[0] ),
        .I3(\iv[15]_i_24_n_0 ),
        .I4(ir[8]),
        .I5(\stat[2]_i_3_n_0 ),
        .O(\iv[15]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \iv[15]_i_23 
       (.I0(\ccmd[1]_INST_0_i_1_n_0 ),
        .I1(\ccmd[3]_INST_0_i_3_n_0 ),
        .I2(\sr[15]_i_11_n_0 ),
        .O(\iv[15]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hD55DD555)) 
    \iv[15]_i_24 
       (.I0(\bdatw[8]_INST_0_i_6_0 ),
        .I1(ir[13]),
        .I2(ir[12]),
        .I3(ir[14]),
        .I4(ir[11]),
        .O(\iv[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h000000000010FFFF)) 
    \iv[15]_i_25 
       (.I0(\iv[15]_i_39_n_0 ),
        .I1(ir[14]),
        .I2(\sr_reg[15] [6]),
        .I3(ir[15]),
        .I4(\iv[15]_i_40_n_0 ),
        .I5(tout__1_carry_i_25_0),
        .O(\iv[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF0F0F4F4F0F0)) 
    \iv[15]_i_26 
       (.I0(\stat[0]_i_8_n_0 ),
        .I1(\iv[15]_i_41_n_0 ),
        .I2(\bdatw[8]_INST_0_i_21_n_0 ),
        .I3(\bcmd[0]_INST_0_i_4_n_0 ),
        .I4(Q[0]),
        .I5(brdy),
        .O(\iv[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h2222222200202202)) 
    \iv[15]_i_27 
       (.I0(\stat[1]_i_11_n_0 ),
        .I1(\iv[15]_i_42_n_0 ),
        .I2(ir[12]),
        .I3(\sr_reg[15] [4]),
        .I4(ir[11]),
        .I5(tout__1_carry_i_23_n_0),
        .O(\iv[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0100550041405500)) 
    \iv[15]_i_28 
       (.I0(\ccmd[0]_INST_0_i_5_n_0 ),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(crdy),
        .I4(ir[10]),
        .I5(\iv[15]_i_43_n_0 ),
        .O(\iv[15]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \iv[15]_i_29 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(\bcmd[2]_INST_0_i_2_n_0 ),
        .O(\iv[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000002)) 
    \iv[15]_i_3 
       (.I0(\iv[15]_i_7_n_0 ),
        .I1(\iv[15]_i_8_n_0 ),
        .I2(\iv[15]_i_9_n_0 ),
        .I3(\iv[15]_i_10_n_0 ),
        .I4(\iv_reg[0] ),
        .I5(ctl_selc),
        .O(\iv[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAEAFFFFAAEA)) 
    \iv[15]_i_30 
       (.I0(\sr[5]_i_7_n_0 ),
        .I1(brdy),
        .I2(Q[0]),
        .I3(\iv[15]_i_44_n_0 ),
        .I4(\bdatw[15]_INST_0_i_47_n_0 ),
        .I5(\ccmd[0]_INST_0_i_6_n_0 ),
        .O(\iv[15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \iv[15]_i_31 
       (.I0(\sr[15]_i_10_n_0 ),
        .I1(ir[3]),
        .I2(\bcmd[1]_INST_0_i_9_n_0 ),
        .I3(ir[7]),
        .I4(ir[11]),
        .I5(\iv[15]_i_38_n_0 ),
        .O(\iv[15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \iv[15]_i_32 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(\bcmd[1]_INST_0_i_10_n_0 ),
        .I3(ctl_fetch_fl_reg_1),
        .I4(\bcmd[0]_INST_0_i_3_n_0 ),
        .I5(ir[4]),
        .O(\iv[15]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFF54FF54FFFFFF54)) 
    \iv[15]_i_33 
       (.I0(\iv[15]_i_37_n_0 ),
        .I1(ir[7]),
        .I2(ir[6]),
        .I3(\iv[15]_i_45_n_0 ),
        .I4(\iv[15]_i_12_0 ),
        .I5(\iv[15]_i_46_n_0 ),
        .O(\iv[15]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000300000005500)) 
    \iv[15]_i_34 
       (.I0(\iv[15]_i_47_n_0 ),
        .I1(\bdatw[15]_INST_0_i_48_n_0 ),
        .I2(ir[7]),
        .I3(Q[0]),
        .I4(\ccmd[4]_INST_0_i_2_n_0 ),
        .I5(ir[11]),
        .O(\iv[15]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \iv[15]_i_35 
       (.I0(badr_0_sn_1),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(ir[12]),
        .I4(ir[11]),
        .I5(ir[10]),
        .O(\iv[15]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \iv[15]_i_36 
       (.I0(ir[11]),
        .I1(\ccmd[4]_INST_0_i_3_n_0 ),
        .I2(ir[6]),
        .I3(brdy),
        .I4(\bcmd[0]_INST_0_i_2_n_0 ),
        .O(\iv[15]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \iv[15]_i_37 
       (.I0(ir[9]),
        .I1(ir[10]),
        .I2(ir[11]),
        .I3(ir[12]),
        .I4(rst_n_fl_reg_1),
        .I5(badr_0_sn_1),
        .O(\iv[15]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \iv[15]_i_38 
       (.I0(badr_0_sn_1),
        .I1(rst_n_fl_reg_1),
        .I2(ir[12]),
        .I3(ir[9]),
        .I4(ir[8]),
        .I5(ir[10]),
        .O(\iv[15]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[15]_i_39 
       (.I0(ir[12]),
        .I1(ir[11]),
        .O(\iv[15]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEFFFFAEEEAEEE)) 
    \iv[15]_i_4 
       (.I0(\iv[15]_i_13_n_0 ),
        .I1(ir[5]),
        .I2(\iv[15]_i_14_n_0 ),
        .I3(\iv[15]_i_15_n_0 ),
        .I4(\iv[15]_i_16_n_0 ),
        .I5(ir[2]),
        .O(ctl_selc_rn[2]));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \iv[15]_i_40 
       (.I0(ir[11]),
        .I1(ir[12]),
        .I2(\sr_reg[15] [5]),
        .I3(ir[13]),
        .O(\iv[15]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \iv[15]_i_41 
       (.I0(ir[11]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(ir[15]),
        .I4(ir[12]),
        .I5(rst_n_fl_reg_1),
        .O(\iv[15]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000000090930000)) 
    \iv[15]_i_42 
       (.I0(\sr_reg[15] [7]),
        .I1(ir[11]),
        .I2(ir[12]),
        .I3(\sr_reg[15] [6]),
        .I4(ir[13]),
        .I5(ir[14]),
        .O(\iv[15]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[15]_i_43 
       (.I0(ir[6]),
        .I1(brdy),
        .O(\iv[15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \iv[15]_i_44 
       (.I0(ir[11]),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .I2(ir[10]),
        .I3(ir[6]),
        .I4(ir[9]),
        .I5(ir[8]),
        .O(\iv[15]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h228A220A)) 
    \iv[15]_i_45 
       (.I0(\bdatw[8]_INST_0_i_6_0 ),
        .I1(ir[14]),
        .I2(ir[11]),
        .I3(ir[12]),
        .I4(ir[13]),
        .O(\iv[15]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    \iv[15]_i_46 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(ir[10]),
        .I4(brdy),
        .I5(ir[6]),
        .O(\iv[15]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h8CC08CCCBFFFBFFF)) 
    \iv[15]_i_47 
       (.I0(\iv[15]_i_43_n_0 ),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[8]),
        .I4(ir[7]),
        .I5(crdy),
        .O(\iv[15]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \iv[15]_i_5 
       (.I0(\iv[15]_i_16_n_0 ),
        .I1(ir[1]),
        .I2(\iv[15]_i_17_n_0 ),
        .I3(\iv[15]_i_18_n_0 ),
        .I4(ir[4]),
        .I5(\iv[15]_i_19_n_0 ),
        .O(ctl_selc_rn[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDDD0000)) 
    \iv[15]_i_6 
       (.I0(\iv[15]_i_7_n_0 ),
        .I1(\iv[15]_i_20_n_0 ),
        .I2(\iv[15]_i_21_n_0 ),
        .I3(ir[6]),
        .I4(ir[0]),
        .I5(\iv[15]_i_22_n_0 ),
        .O(ctl_selc_rn[0]));
  LUT6 #(
    .INIT(64'h5555555555155555)) 
    \iv[15]_i_7 
       (.I0(\iv[15]_i_23_n_0 ),
        .I1(ir[5]),
        .I2(ir[6]),
        .I3(\bcmd[1]_INST_0_i_10_n_0 ),
        .I4(ctl_fetch_fl_reg_1),
        .I5(\bcmd[0]_INST_0_i_3_n_0 ),
        .O(\iv[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \iv[15]_i_8 
       (.I0(\iv[15]_i_20_n_0 ),
        .I1(\iv[15]_i_17_n_0 ),
        .I2(\iv[15]_i_24_n_0 ),
        .I3(\iv[15]_i_25_n_0 ),
        .I4(\iv[15]_i_15_n_0 ),
        .I5(\stat[2]_i_6_n_0 ),
        .O(\iv[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAEEEAEEEAFFFF)) 
    \iv[15]_i_9 
       (.I0(\iv[15]_i_26_n_0 ),
        .I1(\iv[15]_i_21_n_0 ),
        .I2(ir[6]),
        .I3(ir[4]),
        .I4(tout__1_carry_i_25_0),
        .I5(\iv[15]_i_27_n_0 ),
        .O(\iv[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[1]_i_1 
       (.I0(\iv[1]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\tr_reg[3] [1]),
        .I3(\tr_reg[1] ),
        .I4(\iv[1]_i_4_n_0 ),
        .O(cbus[1]));
  LUT6 #(
    .INIT(64'hF500F35FF5FFF350)) 
    \iv[1]_i_10 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(abus_0[9]),
        .I2(acmd[2]),
        .I3(acmd[1]),
        .I4(acmd[0]),
        .I5(abus_0[1]),
        .O(\iv[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0220222020000000)) 
    \iv[1]_i_11 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(\bdatw[9]_INST_0_i_2_n_0 ),
        .I3(abus_0[1]),
        .I4(acmd[0]),
        .I5(acmd[1]),
        .O(\iv[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AAFF330F330F)) 
    \iv[1]_i_12 
       (.I0(abus_0[15]),
        .I1(\iv[5]_i_16_n_0 ),
        .I2(\iv[5]_i_17_n_0 ),
        .I3(\iv[2]_i_14_n_0 ),
        .I4(\iv[13]_i_23_n_0 ),
        .I5(\iv[11]_i_12_n_0 ),
        .O(\iv[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[1]_i_13 
       (.I0(\iv[5]_i_16_n_0 ),
        .I1(\iv[5]_i_17_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[13]_i_27_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\iv[13]_i_23_n_0 ),
        .O(\iv[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0A0C0CFA0A)) 
    \iv[1]_i_14 
       (.I0(\iv[1]_i_22_n_0 ),
        .I1(\iv[1]_i_23_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[5]_i_18_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\iv[5]_i_19_n_0 ),
        .O(\iv[1]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \iv[1]_i_15 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(abus_0[0]),
        .I2(tout__1_carry_i_13_n_0),
        .O(\iv[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[1]_i_16 
       (.I0(\iv[5]_i_16_n_0 ),
        .I1(\iv[5]_i_17_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[13]_i_24_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\iv[13]_i_23_n_0 ),
        .O(\iv[1]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \iv[1]_i_17 
       (.I0(\iv[2]_i_14_n_0 ),
        .I1(\iv[13]_i_19_n_0 ),
        .I2(\iv[13]_i_20_n_0 ),
        .O(\iv[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \iv[1]_i_18 
       (.I0(abus_0[6]),
        .I1(abus_0[5]),
        .I2(abus_0[4]),
        .I3(abus_0[3]),
        .I4(\bdatw[8]_INST_0_i_2_n_0 ),
        .I5(\iv[2]_i_14_n_0 ),
        .O(\iv[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \iv[1]_i_19 
       (.I0(abus_0[10]),
        .I1(abus_0[9]),
        .I2(abus_0[8]),
        .I3(abus_0[7]),
        .I4(\bdatw[8]_INST_0_i_2_n_0 ),
        .I5(\iv[2]_i_14_n_0 ),
        .O(\iv[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000202F2020)) 
    \iv[1]_i_2 
       (.I0(\iv[1]_i_5_n_0 ),
        .I1(\iv[1]_i_6_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[1]_i_7_n_0 ),
        .I4(\iv[1]_i_8_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFD0D)) 
    \iv[1]_i_20 
       (.I0(\iv[13]_i_20_n_0 ),
        .I1(\iv[13]_i_19_n_0 ),
        .I2(\iv[2]_i_14_n_0 ),
        .I3(\iv[13]_i_22_n_0 ),
        .O(\iv[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \iv[1]_i_21 
       (.I0(abus_0[14]),
        .I1(abus_0[13]),
        .I2(abus_0[12]),
        .I3(abus_0[11]),
        .I4(\bdatw[8]_INST_0_i_2_n_0 ),
        .I5(\iv[2]_i_14_n_0 ),
        .O(\iv[1]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[1]_i_22 
       (.I0(abus_0[2]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[1]),
        .O(\iv[1]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[1]_i_23 
       (.I0(abus_0[4]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[3]),
        .O(\iv[1]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[1]_i_4 
       (.I0(\iv[1]_i_10_n_0 ),
        .I1(\iv[14]_i_14_n_0 ),
        .I2(\iv[1]_i_11_n_0 ),
        .O(\iv[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCECCCECFFEFCFEFF)) 
    \iv[1]_i_5 
       (.I0(\iv[1]_i_12_n_0 ),
        .I1(\iv[12]_i_16_n_0 ),
        .I2(\iv[14]_i_18_n_0 ),
        .I3(acmd[1]),
        .I4(\iv[1]_i_13_n_0 ),
        .I5(\iv[1]_i_14_n_0 ),
        .O(\iv[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEFAAEAAA)) 
    \iv[1]_i_6 
       (.I0(\iv[1]_i_15_n_0 ),
        .I1(\iv[1]_i_14_n_0 ),
        .I2(\iv[14]_i_18_n_0 ),
        .I3(acmd[0]),
        .I4(\iv[1]_i_16_n_0 ),
        .O(\iv[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h332233223F333FFF)) 
    \iv[1]_i_7 
       (.I0(\iv[1]_i_17_n_0 ),
        .I1(tout__1_carry_i_13_n_0),
        .I2(\iv[1]_i_18_n_0 ),
        .I3(\iv[11]_i_12_n_0 ),
        .I4(\iv[1]_i_19_n_0 ),
        .I5(\iv[14]_i_18_n_0 ),
        .O(\iv[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFDDDFD)) 
    \iv[1]_i_8 
       (.I0(tout__1_carry_i_13_n_0),
        .I1(\iv[8]_i_7_n_0 ),
        .I2(\iv[1]_i_20_n_0 ),
        .I3(\iv[11]_i_12_n_0 ),
        .I4(\iv[1]_i_21_n_0 ),
        .O(\iv[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[2]_i_1 
       (.I0(\iv[2]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\tr_reg[3] [2]),
        .I3(\tr_reg[2] ),
        .I4(\iv[2]_i_4_n_0 ),
        .O(cbus[2]));
  LUT6 #(
    .INIT(64'hF0FFF3F3303F5F50)) 
    \iv[2]_i_10 
       (.I0(abus_0[10]),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(acmd[1]),
        .I3(abus_0[2]),
        .I4(acmd[0]),
        .I5(acmd[2]),
        .O(\iv[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0220222020000000)) 
    \iv[2]_i_11 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(abus_0[2]),
        .I4(acmd[0]),
        .I5(acmd[1]),
        .O(\iv[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[2]_i_12 
       (.I0(\iv[13]_i_31_n_0 ),
        .I1(\iv[13]_i_25_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[13]_i_29_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\iv[13]_i_30_n_0 ),
        .O(\iv[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[2]_i_13 
       (.I0(\iv[2]_i_21_n_0 ),
        .I1(\iv[13]_i_28_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[2]_i_22_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\iv[2]_i_23_n_0 ),
        .O(\iv[2]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \iv[2]_i_14 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[2]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[2]_i_15 
       (.I0(acmd[1]),
        .I1(\iv[14]_i_18_n_0 ),
        .O(\iv[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[2]_i_16 
       (.I0(abus_0[13]),
        .I1(abus_0[12]),
        .I2(abus_0[11]),
        .I3(abus_0[10]),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF5F3)) 
    \iv[2]_i_17 
       (.I0(abus_0[15]),
        .I1(abus_0[14]),
        .I2(\iv[2]_i_14_n_0 ),
        .I3(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[2]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \iv[2]_i_18 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(abus_0[1]),
        .I2(tout__1_carry_i_13_n_0),
        .O(\iv[2]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFAFCFA0C)) 
    \iv[2]_i_19 
       (.I0(\iv[2]_i_21_n_0 ),
        .I1(\iv[13]_i_28_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[2]_i_14_n_0 ),
        .I4(\iv[2]_i_23_n_0 ),
        .O(\iv[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EFF0E00)) 
    \iv[2]_i_2 
       (.I0(\iv[2]_i_5_n_0 ),
        .I1(\iv[2]_i_6_n_0 ),
        .I2(\iv[2]_i_7_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\iv[2]_i_8_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB05AF)) 
    \iv[2]_i_20 
       (.I0(\bdatw[8]_INST_0_i_2_n_0 ),
        .I1(abus_0[0]),
        .I2(abus_0[2]),
        .I3(abus_0[1]),
        .I4(\iv[2]_i_14_n_0 ),
        .O(\iv[2]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[2]_i_21 
       (.I0(abus_0[13]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[12]),
        .O(\iv[2]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[2]_i_22 
       (.I0(abus_0[0]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(\sr_reg[15] [6]),
        .O(\iv[2]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[2]_i_23 
       (.I0(abus_0[15]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[14]),
        .O(\iv[2]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[2]_i_4 
       (.I0(\iv[2]_i_10_n_0 ),
        .I1(\iv[14]_i_14_n_0 ),
        .I2(\iv[2]_i_11_n_0 ),
        .O(\iv[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDCCCF)) 
    \iv[2]_i_5 
       (.I0(\iv[2]_i_12_n_0 ),
        .I1(\iv[12]_i_16_n_0 ),
        .I2(\iv[2]_i_13_n_0 ),
        .I3(acmd[1]),
        .I4(\iv[14]_i_18_n_0 ),
        .O(\iv[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000D500AA00FF00)) 
    \iv[2]_i_6 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(abus_0[15]),
        .I2(\iv[2]_i_14_n_0 ),
        .I3(\iv[2]_i_15_n_0 ),
        .I4(\iv[2]_i_16_n_0 ),
        .I5(\iv[2]_i_17_n_0 ),
        .O(\iv[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hEEFAAAAA)) 
    \iv[2]_i_7 
       (.I0(\iv[2]_i_18_n_0 ),
        .I1(\iv[2]_i_12_n_0 ),
        .I2(\iv[2]_i_19_n_0 ),
        .I3(\iv[14]_i_18_n_0 ),
        .I4(acmd[0]),
        .O(\iv[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF01F0010F010001)) 
    \iv[2]_i_8 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[2]_i_20_n_0 ),
        .I2(\iv[8]_i_7_n_0 ),
        .I3(tout__1_carry_i_13_n_0),
        .I4(\iv[10]_i_17_n_0 ),
        .I5(\iv[11]_i_15_n_0 ),
        .O(\iv[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[3]_i_1 
       (.I0(\iv[3]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\tr_reg[3] [3]),
        .I3(\tr_reg[3]_0 ),
        .I4(\iv[3]_i_4_n_0 ),
        .O(cbus[3]));
  LUT6 #(
    .INIT(64'hF0DFFFDCC0D3CFD0)) 
    \iv[3]_i_10 
       (.I0(abus_0[11]),
        .I1(acmd[2]),
        .I2(acmd[1]),
        .I3(acmd[0]),
        .I4(abus_0[3]),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[3]_i_11 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[3]),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(acmd[0]),
        .I5(acmd[1]),
        .O(\iv[3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \iv[3]_i_12 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(abus_0[2]),
        .I2(tout__1_carry_i_13_n_0),
        .O(\iv[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EFF0E00)) 
    \iv[3]_i_2 
       (.I0(\iv[3]_i_5_n_0 ),
        .I1(\iv[3]_i_6_n_0 ),
        .I2(\iv[3]_i_7_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\iv[3]_i_8_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[3]_i_4 
       (.I0(\iv[3]_i_10_n_0 ),
        .I1(\iv[14]_i_14_n_0 ),
        .I2(\iv[3]_i_11_n_0 ),
        .O(\iv[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF8F008F00)) 
    \iv[3]_i_5 
       (.I0(abus_0[15]),
        .I1(\iv[11]_i_12_n_0 ),
        .I2(\iv[11]_i_16_n_0 ),
        .I3(acmd[1]),
        .I4(\iv[12]_i_18_n_0 ),
        .I5(\iv[14]_i_18_n_0 ),
        .O(\iv[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \iv[3]_i_6 
       (.I0(\iv[12]_i_16_n_0 ),
        .I1(\iv[11]_i_19_n_0 ),
        .I2(\iv[9]_i_10_n_0 ),
        .O(\iv[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hEEFAAAAA)) 
    \iv[3]_i_7 
       (.I0(\iv[3]_i_12_n_0 ),
        .I1(\iv[12]_i_18_n_0 ),
        .I2(\iv[11]_i_20_n_0 ),
        .I3(\iv[14]_i_18_n_0 ),
        .I4(acmd[0]),
        .O(\iv[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF101FB0101010B01)) 
    \iv[3]_i_8 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[11]_i_13_n_0 ),
        .I2(\iv[8]_i_7_n_0 ),
        .I3(tout__1_carry_i_13_n_0),
        .I4(\iv[11]_i_14_n_0 ),
        .I5(\iv[12]_i_12_n_0 ),
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
    .INIT(64'h0220200020202000)) 
    \iv[4]_i_10 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(acmd[1]),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(abus_0[4]),
        .I5(acmd[0]),
        .O(\iv[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8B98CFBA8BDCCFFE)) 
    \iv[4]_i_11 
       (.I0(acmd[2]),
        .I1(acmd[1]),
        .I2(abus_0[4]),
        .I3(acmd[0]),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(abus_0[12]),
        .O(\iv[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \iv[4]_i_12 
       (.I0(\badr[15]_INST_0_i_7_n_0 ),
        .I1(\iv[4]_i_15_n_0 ),
        .I2(\badr[15]_INST_0_i_4_n_0 ),
        .I3(\badr[15]_INST_0_i_3_n_0 ),
        .I4(\badr[15]_INST_0_i_2_n_0 ),
        .I5(acmd[1]),
        .O(\iv[4]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \iv[4]_i_13 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .I4(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF505F3F3F5050303)) 
    \iv[4]_i_14 
       (.I0(\iv[12]_i_20_n_0 ),
        .I1(\iv[12]_i_21_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\sr[7]_i_23_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\iv[10]_i_19_n_0 ),
        .O(\iv[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \iv[4]_i_15 
       (.I0(\badr[15]_INST_0_i_24_n_0 ),
        .I1(\bdatw[15]_INST_0_i_7_6 [15]),
        .I2(\iv[4]_i_12_0 ),
        .I3(\badr[15]_INST_0_i_21_n_0 ),
        .I4(\bdatw[15]_INST_0_i_7_4 [15]),
        .I5(\iv[4]_i_17_n_0 ),
        .O(\iv[4]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \iv[4]_i_17 
       (.I0(\bdatw[15]_INST_0_i_7_3 [15]),
        .I1(\badr[15]_INST_0_i_39_n_0 ),
        .I2(\sr_reg[15] [15]),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .O(\iv[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000D5DD)) 
    \iv[4]_i_2 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\iv[4]_i_5_n_0 ),
        .I2(\iv[4]_i_6_n_0 ),
        .I3(\iv[4]_i_7_n_0 ),
        .I4(\iv[4]_i_8_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \iv[4]_i_4 
       (.I0(\iv[4]_i_10_n_0 ),
        .I1(\iv[4]_i_11_n_0 ),
        .I2(\iv[14]_i_14_n_0 ),
        .O(\iv[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \iv[4]_i_5 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(tout__1_carry_i_13_n_0),
        .I2(abus_0[3]),
        .O(\iv[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \iv[4]_i_6 
       (.I0(\iv[13]_i_17_n_0 ),
        .I1(\iv[14]_i_18_n_0 ),
        .I2(\iv[4]_i_12_n_0 ),
        .I3(acmd[0]),
        .I4(\iv[11]_i_12_n_0 ),
        .I5(\iv[8]_i_14_n_0 ),
        .O(\iv[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF0FFF0F7)) 
    \iv[4]_i_7 
       (.I0(\iv[9]_i_10_n_0 ),
        .I1(\iv[11]_i_12_n_0 ),
        .I2(acmd[0]),
        .I3(\iv[4]_i_13_n_0 ),
        .I4(\iv[8]_i_12_n_0 ),
        .O(\iv[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033550FFF)) 
    \iv[4]_i_8 
       (.I0(\iv[13]_i_13_n_0 ),
        .I1(\iv[4]_i_14_n_0 ),
        .I2(\iv[12]_i_11_n_0 ),
        .I3(\iv[14]_i_18_n_0 ),
        .I4(tout__1_carry_i_13_n_0),
        .I5(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[4]_i_8_n_0 ));
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
    .INIT(64'hF0DFFFDCC0D3CFD0)) 
    \iv[5]_i_10 
       (.I0(abus_0[13]),
        .I1(acmd[2]),
        .I2(acmd[1]),
        .I3(acmd[0]),
        .I4(abus_0[5]),
        .I5(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(\iv[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[5]_i_11 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[5]),
        .I3(\bdatw[13]_INST_0_i_2_n_0 ),
        .I4(acmd[0]),
        .I5(acmd[1]),
        .O(\iv[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    \iv[5]_i_12 
       (.I0(\iv[5]_i_16_n_0 ),
        .I1(\iv[5]_i_17_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[5]_i_18_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\iv[5]_i_19_n_0 ),
        .O(\iv[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[5]_i_13 
       (.I0(abus_0[12]),
        .I1(abus_0[11]),
        .I2(abus_0[10]),
        .I3(abus_0[9]),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[5]_i_14 
       (.I0(abus_0[8]),
        .I1(abus_0[7]),
        .I2(abus_0[6]),
        .I3(abus_0[5]),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[5]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[5]_i_15 
       (.I0(\iv[13]_i_24_n_0 ),
        .I1(\iv[2]_i_14_n_0 ),
        .I2(\iv[13]_i_23_n_0 ),
        .O(\iv[5]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_16 
       (.I0(abus_0[12]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[11]),
        .O(\iv[5]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_17 
       (.I0(abus_0[10]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[9]),
        .O(\iv[5]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_18 
       (.I0(abus_0[6]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[5]),
        .O(\iv[5]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_19 
       (.I0(abus_0[8]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[7]),
        .O(\iv[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002FF0200)) 
    \iv[5]_i_2 
       (.I0(\iv[5]_i_5_n_0 ),
        .I1(\iv[5]_i_6_n_0 ),
        .I2(\iv[5]_i_7_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\iv[5]_i_8_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[5]_i_4 
       (.I0(\iv[5]_i_10_n_0 ),
        .I1(\iv[14]_i_14_n_0 ),
        .I2(\iv[5]_i_11_n_0 ),
        .O(\iv[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDCDCDFDCDCDFDFDF)) 
    \iv[5]_i_5 
       (.I0(\iv[5]_i_12_n_0 ),
        .I1(\iv[12]_i_16_n_0 ),
        .I2(\iv[14]_i_18_n_0 ),
        .I3(acmd[1]),
        .I4(\iv[13]_i_18_n_0 ),
        .I5(\iv[13]_i_16_n_0 ),
        .O(\iv[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0A0F0A0F0C000C0)) 
    \iv[5]_i_6 
       (.I0(\iv[5]_i_13_n_0 ),
        .I1(\iv[5]_i_14_n_0 ),
        .I2(acmd[0]),
        .I3(\iv[8]_i_7_n_0 ),
        .I4(\iv[5]_i_15_n_0 ),
        .I5(\iv[11]_i_12_n_0 ),
        .O(\iv[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \iv[5]_i_7 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(acmd[1]),
        .I2(abus_0[4]),
        .I3(acmd[0]),
        .O(\iv[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF322C022)) 
    \iv[5]_i_8 
       (.I0(\iv[13]_i_12_n_0 ),
        .I1(\iv[8]_i_7_n_0 ),
        .I2(\iv[14]_i_17_n_0 ),
        .I3(tout__1_carry_i_13_n_0),
        .I4(\iv[13]_i_14_n_0 ),
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
    .INIT(64'h2002202200200000)) 
    \iv[6]_i_10 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[6]),
        .I3(\bdatw[14]_INST_0_i_2_n_0 ),
        .I4(acmd[0]),
        .I5(acmd[1]),
        .O(\iv[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \iv[6]_i_11 
       (.I0(\iv[8]_i_7_n_0 ),
        .I1(\iv[11]_i_22_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[2]_i_16_n_0 ),
        .O(\iv[6]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \iv[6]_i_12 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(abus_0[5]),
        .I2(tout__1_carry_i_13_n_0),
        .O(\iv[6]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00002F20)) 
    \iv[6]_i_2 
       (.I0(\iv[6]_i_5_n_0 ),
        .I1(\iv[6]_i_6_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[6]_i_7_n_0 ),
        .I4(\iv[14]_i_10_n_0 ),
        .O(\iv[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[6]_i_4 
       (.I0(\iv[6]_i_9_n_0 ),
        .I1(\iv[14]_i_14_n_0 ),
        .I2(\iv[6]_i_10_n_0 ),
        .O(\iv[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFCFFFCFCFDFDF)) 
    \iv[6]_i_5 
       (.I0(\iv[14]_i_21_n_0 ),
        .I1(\iv[12]_i_16_n_0 ),
        .I2(\iv[6]_i_11_n_0 ),
        .I3(\iv[14]_i_24_n_0 ),
        .I4(\iv[14]_i_18_n_0 ),
        .I5(acmd[1]),
        .O(\iv[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEFAAAAAA)) 
    \iv[6]_i_6 
       (.I0(\iv[6]_i_12_n_0 ),
        .I1(\iv[14]_i_20_n_0 ),
        .I2(\iv[8]_i_7_n_0 ),
        .I3(acmd[0]),
        .I4(\iv[6]_i_11_n_0 ),
        .O(\iv[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF322C022)) 
    \iv[6]_i_7 
       (.I0(\iv[14]_i_16_n_0 ),
        .I1(\iv[8]_i_7_n_0 ),
        .I2(\sr[7]_i_11_n_0 ),
        .I3(tout__1_carry_i_13_n_0),
        .I4(\iv[14]_i_19_n_0 ),
        .O(\iv[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFFCFCC0CF5F50)) 
    \iv[6]_i_9 
       (.I0(abus_0[14]),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(acmd[1]),
        .I3(abus_0[6]),
        .I4(acmd[0]),
        .I5(acmd[2]),
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
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[7]),
        .I3(acmd[0]),
        .I4(\bdatw[15]_INST_0_i_2_n_0 ),
        .I5(acmd[1]),
        .O(\iv[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0DFFFDCC0D3CFD0)) 
    \iv[7]_i_11 
       (.I0(abus_0[15]),
        .I1(acmd[2]),
        .I2(acmd[1]),
        .I3(acmd[0]),
        .I4(abus_0[7]),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h53FF5300)) 
    \iv[7]_i_12 
       (.I0(abus_0[1]),
        .I1(abus_0[0]),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(\iv[2]_i_14_n_0 ),
        .I4(\iv[13]_i_27_n_0 ),
        .O(\iv[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[7]_i_13 
       (.I0(abus_0[5]),
        .I1(abus_0[4]),
        .I2(abus_0[3]),
        .I3(abus_0[2]),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FF00FF00FF00)) 
    \iv[7]_i_14 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(acmd[0]),
        .I4(abus_0[15]),
        .I5(\iv[8]_i_7_n_0 ),
        .O(\iv[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[7]_i_15 
       (.I0(abus_0[10]),
        .I1(abus_0[9]),
        .I2(abus_0[8]),
        .I3(abus_0[7]),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[7]_i_16 
       (.I0(abus_0[14]),
        .I1(abus_0[13]),
        .I2(abus_0[12]),
        .I3(abus_0[11]),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[7]_i_17 
       (.I0(acmd[0]),
        .I1(\iv[9]_i_10_n_0 ),
        .O(\iv[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3F0FFF5F5F0FF)) 
    \iv[7]_i_18 
       (.I0(abus_0[14]),
        .I1(abus_0[13]),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[13]_i_22_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hC0C000F0A0A000F0)) 
    \iv[7]_i_19 
       (.I0(abus_0[10]),
        .I1(abus_0[9]),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[14]_i_29_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000D5DD)) 
    \iv[7]_i_2 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\iv[7]_i_5_n_0 ),
        .I2(\iv[7]_i_6_n_0 ),
        .I3(\iv[7]_i_7_n_0 ),
        .I4(\iv[7]_i_8_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \iv[7]_i_4 
       (.I0(\iv[7]_i_10_n_0 ),
        .I1(\iv[7]_i_11_n_0 ),
        .I2(\iv[14]_i_14_n_0 ),
        .O(\iv[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \iv[7]_i_5 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(tout__1_carry_i_13_n_0),
        .I2(abus_0[6]),
        .O(\iv[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000333BB3BB)) 
    \iv[7]_i_6 
       (.I0(\iv[9]_i_10_n_0 ),
        .I1(\iv[14]_i_22_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[7]_i_12_n_0 ),
        .I4(\iv[7]_i_13_n_0 ),
        .I5(\iv[7]_i_14_n_0 ),
        .O(\iv[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \iv[7]_i_7 
       (.I0(\iv[8]_i_7_n_0 ),
        .I1(\iv[7]_i_15_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[7]_i_16_n_0 ),
        .O(\iv[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AEAE00AE)) 
    \iv[7]_i_8 
       (.I0(\iv[7]_i_17_n_0 ),
        .I1(\iv[7]_i_18_n_0 ),
        .I2(\iv[7]_i_19_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\sr[7]_i_10_n_0 ),
        .I5(\bdatw[12]_INST_0_i_2_n_0 ),
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
    .INIT(64'hFFCC550FFFCC0FF0)) 
    \iv[8]_i_10 
       (.I0(\bdatw[8]_INST_0_i_2_n_0 ),
        .I1(\iv[8]_i_18_n_0 ),
        .I2(abus_0[8]),
        .I3(acmd[2]),
        .I4(acmd[1]),
        .I5(acmd[0]),
        .O(\iv[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[8]_i_11 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[8]),
        .I3(\bdatw[8]_INST_0_i_1_n_0 ),
        .I4(acmd[0]),
        .I5(acmd[1]),
        .O(\iv[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F303F)) 
    \iv[8]_i_12 
       (.I0(abus_0[2]),
        .I1(abus_0[1]),
        .I2(\iv[2]_i_14_n_0 ),
        .I3(\iv[13]_i_19_n_0 ),
        .I4(\bdatw[8]_INST_0_i_2_n_0 ),
        .I5(\sr_reg[15] [6]),
        .O(\iv[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h555533330F0F00FF)) 
    \iv[8]_i_13 
       (.I0(abus_0[6]),
        .I1(abus_0[5]),
        .I2(abus_0[4]),
        .I3(abus_0[3]),
        .I4(\bdatw[8]_INST_0_i_2_n_0 ),
        .I5(\iv[2]_i_14_n_0 ),
        .O(\iv[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCCF0F0FF00)) 
    \iv[8]_i_14 
       (.I0(abus_0[15]),
        .I1(abus_0[14]),
        .I2(abus_0[13]),
        .I3(abus_0[12]),
        .I4(\bdatw[8]_INST_0_i_2_n_0 ),
        .I5(\iv[2]_i_14_n_0 ),
        .O(\iv[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCCF0F0FF00)) 
    \iv[8]_i_15 
       (.I0(abus_0[11]),
        .I1(abus_0[10]),
        .I2(abus_0[9]),
        .I3(abus_0[8]),
        .I4(\bdatw[8]_INST_0_i_2_n_0 ),
        .I5(\iv[2]_i_14_n_0 ),
        .O(\iv[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h474700FFFFFFFFFF)) 
    \iv[8]_i_16 
       (.I0(\sr[7]_i_25_n_0 ),
        .I1(\iv[2]_i_14_n_0 ),
        .I2(\sr[7]_i_22_n_0 ),
        .I3(\iv[12]_i_24_n_0 ),
        .I4(\iv[11]_i_12_n_0 ),
        .I5(tout__1_carry_i_13_n_0),
        .O(\iv[8]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \iv[8]_i_17 
       (.I0(\iv[12]_i_23_n_0 ),
        .I1(\iv[12]_i_22_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .O(\iv[8]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[8]_i_18 
       (.I0(abus_0[0]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(acmd[0]),
        .O(\iv[8]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBBABAAAAAAAA)) 
    \iv[8]_i_2 
       (.I0(\iv[14]_i_10_n_0 ),
        .I1(\iv[8]_i_5_n_0 ),
        .I2(\iv[8]_i_6_n_0 ),
        .I3(\iv[8]_i_7_n_0 ),
        .I4(\iv[8]_i_8_n_0 ),
        .I5(\iv[8]_i_9_n_0 ),
        .O(\iv[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \iv[8]_i_4 
       (.I0(\iv[8]_i_10_n_0 ),
        .I1(\iv[14]_i_14_n_0 ),
        .I2(\iv[8]_i_11_n_0 ),
        .O(\iv[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000F002F008F00AF)) 
    \iv[8]_i_5 
       (.I0(\iv[9]_i_10_n_0 ),
        .I1(\iv[11]_i_12_n_0 ),
        .I2(\iv[14]_i_22_n_0 ),
        .I3(acmd[0]),
        .I4(\iv[8]_i_12_n_0 ),
        .I5(\iv[8]_i_13_n_0 ),
        .O(\iv[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[8]_i_6 
       (.I0(\iv[8]_i_14_n_0 ),
        .I1(\iv[11]_i_12_n_0 ),
        .I2(\iv[8]_i_15_n_0 ),
        .O(\iv[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFE0001FF)) 
    \iv[8]_i_7 
       (.I0(\bdatw[8]_INST_0_i_2_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFB00FFFF)) 
    \iv[8]_i_8 
       (.I0(acmd[0]),
        .I1(abus_0[7]),
        .I2(acmd[1]),
        .I3(\iv[14]_i_25_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF08F8)) 
    \iv[8]_i_9 
       (.I0(\iv[0]_i_7_n_0 ),
        .I1(\iv[8]_i_16_n_0 ),
        .I2(\iv[14]_i_18_n_0 ),
        .I3(\iv[8]_i_17_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
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
    .INIT(64'h5554000000015555)) 
    \iv[9]_i_10 
       (.I0(acmd[1]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(\bdatw[9]_INST_0_i_2_n_0 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000535303F3)) 
    \iv[9]_i_11 
       (.I0(\iv[9]_i_17_n_0 ),
        .I1(\iv[5]_i_13_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[9]_i_18_n_0 ),
        .I4(acmd[1]),
        .I5(\iv[8]_i_7_n_0 ),
        .O(\iv[9]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \iv[9]_i_12 
       (.I0(\iv[9]_i_19_n_0 ),
        .I1(\iv[11]_i_12_n_0 ),
        .I2(\iv[9]_i_20_n_0 ),
        .O(\iv[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7B30000)) 
    \iv[9]_i_13 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[14]_i_18_n_0 ),
        .I2(\iv[5]_i_15_n_0 ),
        .I3(\iv[5]_i_13_n_0 ),
        .I4(acmd[0]),
        .I5(\iv[9]_i_21_n_0 ),
        .O(\iv[9]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \iv[9]_i_14 
       (.I0(\sr[7]_i_19_n_0 ),
        .I1(\iv[2]_i_14_n_0 ),
        .I2(\sr[7]_i_24_n_0 ),
        .I3(\iv[9]_i_22_n_0 ),
        .I4(\iv[11]_i_12_n_0 ),
        .O(\iv[9]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \iv[9]_i_15 
       (.I0(\iv[11]_i_12_n_0 ),
        .I1(\iv[13]_i_20_n_0 ),
        .I2(\iv[13]_i_19_n_0 ),
        .I3(\iv[2]_i_14_n_0 ),
        .O(\iv[9]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[9]_i_16 
       (.I0(\iv[1]_i_21_n_0 ),
        .I1(\iv[11]_i_12_n_0 ),
        .I2(\iv[1]_i_20_n_0 ),
        .O(\iv[9]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \iv[9]_i_17 
       (.I0(abus_0[15]),
        .I1(\iv[2]_i_14_n_0 ),
        .I2(\iv[13]_i_23_n_0 ),
        .O(\iv[9]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[9]_i_18 
       (.I0(\iv[13]_i_27_n_0 ),
        .I1(\iv[2]_i_14_n_0 ),
        .I2(\iv[13]_i_23_n_0 ),
        .O(\iv[9]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCCF0F0FF00)) 
    \iv[9]_i_19 
       (.I0(abus_0[7]),
        .I1(abus_0[6]),
        .I2(abus_0[5]),
        .I3(abus_0[4]),
        .I4(\bdatw[8]_INST_0_i_2_n_0 ),
        .I5(\iv[2]_i_14_n_0 ),
        .O(\iv[9]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \iv[9]_i_2 
       (.I0(\iv[9]_i_5_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\iv[9]_i_6_n_0 ),
        .I3(\iv[14]_i_10_n_0 ),
        .O(\iv[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h555533330F0F00FF)) 
    \iv[9]_i_20 
       (.I0(abus_0[3]),
        .I1(abus_0[2]),
        .I2(abus_0[1]),
        .I3(abus_0[0]),
        .I4(\bdatw[8]_INST_0_i_2_n_0 ),
        .I5(\iv[2]_i_14_n_0 ),
        .O(\iv[9]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \iv[9]_i_21 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(abus_0[8]),
        .I2(tout__1_carry_i_13_n_0),
        .O(\iv[9]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \iv[9]_i_22 
       (.I0(abus_0[3]),
        .I1(abus_0[2]),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(\iv[2]_i_14_n_0 ),
        .I4(\sr[7]_i_18_n_0 ),
        .O(\iv[9]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F2F0000)) 
    \iv[9]_i_4 
       (.I0(acmd[2]),
        .I1(acmd[1]),
        .I2(\iv[9]_i_7_n_0 ),
        .I3(\iv[9]_i_8_n_0 ),
        .I4(\iv[14]_i_14_n_0 ),
        .I5(\iv[9]_i_9_n_0 ),
        .O(\iv[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000ECFF)) 
    \iv[9]_i_5 
       (.I0(\iv[9]_i_10_n_0 ),
        .I1(\iv[9]_i_11_n_0 ),
        .I2(\iv[9]_i_12_n_0 ),
        .I3(\iv[14]_i_22_n_0 ),
        .I4(\iv[9]_i_13_n_0 ),
        .O(\iv[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBB8B888B)) 
    \iv[9]_i_6 
       (.I0(\iv[9]_i_14_n_0 ),
        .I1(\iv[14]_i_18_n_0 ),
        .I2(\iv[9]_i_15_n_0 ),
        .I3(tout__1_carry_i_13_n_0),
        .I4(\iv[9]_i_16_n_0 ),
        .O(\iv[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDCFFCCDCDCFFC)) 
    \iv[9]_i_7 
       (.I0(abus_0[1]),
        .I1(acmd[2]),
        .I2(acmd[0]),
        .I3(abus_0[9]),
        .I4(acmd[1]),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\iv[9]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \iv[9]_i_8 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(abus_0[9]),
        .I2(acmd[0]),
        .O(\iv[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2002202200200000)) 
    \iv[9]_i_9 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[9]),
        .I3(\bdatw[9]_INST_0_i_1_n_0 ),
        .I4(acmd[0]),
        .I5(acmd[1]),
        .O(\iv[9]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \pc[0]_i_1 
       (.I0(cbus[0]),
        .I1(\iv[15]_i_4_0 ),
        .I2(\pc_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_0 [0]),
        .I4(fch_pc[0]),
        .I5(\pc_reg[0]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \pc[10]_i_1 
       (.I0(cbus[10]),
        .I1(\iv[15]_i_4_0 ),
        .I2(\pc_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_0 [10]),
        .I4(fch_pc[10]),
        .I5(\pc_reg[0]_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \pc[11]_i_1 
       (.I0(cbus[11]),
        .I1(\iv[15]_i_4_0 ),
        .I2(\pc_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_0 [11]),
        .I4(fch_pc[11]),
        .I5(\pc_reg[0]_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \pc[12]_i_1 
       (.I0(cbus[12]),
        .I1(\iv[15]_i_4_0 ),
        .I2(\pc_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_0 [12]),
        .I4(fch_pc[12]),
        .I5(\pc_reg[0]_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \pc[13]_i_1 
       (.I0(cbus[13]),
        .I1(\iv[15]_i_4_0 ),
        .I2(\pc_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_0 [13]),
        .I4(fch_pc[13]),
        .I5(\pc_reg[0]_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \pc[14]_i_1 
       (.I0(cbus[14]),
        .I1(\iv[15]_i_4_0 ),
        .I2(\pc_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_0 [14]),
        .I4(fch_pc[14]),
        .I5(\pc_reg[0]_0 ),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \pc[15]_i_2 
       (.I0(ctl_selc_rn[1]),
        .I1(ctl_selc_rn[0]),
        .I2(\iv[15]_i_3_n_0 ),
        .I3(ctl_selc_rn[2]),
        .O(\iv[15]_i_4_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \pc[1]_i_1 
       (.I0(cbus[1]),
        .I1(\iv[15]_i_4_0 ),
        .I2(\pc_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_0 [1]),
        .I4(fch_pc[1]),
        .I5(\pc_reg[0]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \pc[2]_i_1 
       (.I0(cbus[2]),
        .I1(\iv[15]_i_4_0 ),
        .I2(\pc_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_0 [2]),
        .I4(fch_pc[2]),
        .I5(\pc_reg[0]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \pc[3]_i_1 
       (.I0(cbus[3]),
        .I1(\iv[15]_i_4_0 ),
        .I2(\pc_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_0 [3]),
        .I4(fch_pc[3]),
        .I5(\pc_reg[0]_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \pc[4]_i_1 
       (.I0(cbus[4]),
        .I1(\iv[15]_i_4_0 ),
        .I2(\pc_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_0 [4]),
        .I4(fch_pc[4]),
        .I5(\pc_reg[0]_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \pc[5]_i_1 
       (.I0(cbus[5]),
        .I1(\iv[15]_i_4_0 ),
        .I2(\pc_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_0 [5]),
        .I4(fch_pc[5]),
        .I5(\pc_reg[0]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \pc[6]_i_1 
       (.I0(cbus[6]),
        .I1(\iv[15]_i_4_0 ),
        .I2(\pc_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_0 [6]),
        .I4(fch_pc[6]),
        .I5(\pc_reg[0]_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \pc[7]_i_1 
       (.I0(cbus[7]),
        .I1(\iv[15]_i_4_0 ),
        .I2(\pc_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_0 [7]),
        .I4(fch_pc[7]),
        .I5(\pc_reg[0]_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \pc[8]_i_1 
       (.I0(cbus[8]),
        .I1(\iv[15]_i_4_0 ),
        .I2(\pc_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_0 [8]),
        .I4(fch_pc[8]),
        .I5(\pc_reg[0]_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \pc[9]_i_1 
       (.I0(cbus[9]),
        .I1(\iv[15]_i_4_0 ),
        .I2(\pc_reg[0] ),
        .I3(\bdatw[15]_INST_0_i_6_0 [9]),
        .I4(fch_pc[9]),
        .I5(\pc_reg[0]_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFE00FFFFFE000000)) 
    \read_cyc[0]_i_1 
       (.I0(\stat_reg[0] ),
        .I1(\stat_reg[0]_0 ),
        .I2(\badrx[15]_INST_0_i_1_n_0 ),
        .I3(abus_0[0]),
        .I4(brdy),
        .I5(read_cyc[0]),
        .O(brdy_1));
  LUT4 #(
    .INIT(16'h1F10)) 
    \read_cyc[1]_i_1 
       (.I0(ir[7]),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(brdy),
        .I3(read_cyc[1]),
        .O(brdy_2));
  FDRE rst_n_fl_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rst_n),
        .Q(rst_n_fl),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hF0AACCAACCAACCAA)) 
    \sp[0]_i_1 
       (.I0(cbus[0]),
        .I1(\sp_reg[15]_0 [0]),
        .I2(O[0]),
        .I3(\sp[15]_i_6_n_0 ),
        .I4(brdy),
        .I5(\bcmd[0]_INST_0_i_1_n_0 ),
        .O(\sp_reg[15] [0]));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF8FFF8)) 
    \sp[10]_i_1 
       (.I0(\sp_reg[11] [2]),
        .I1(\sp[15]_i_3_n_0 ),
        .I2(\sp[10]_i_2_n_0 ),
        .I3(\sp[10]_i_3_n_0 ),
        .I4(\sp[15]_i_6_n_0 ),
        .I5(cbus[10]),
        .O(\sp_reg[15] [10]));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[10]_i_2 
       (.I0(\sp[15]_i_7_n_0 ),
        .I1(sp_dec_0[6]),
        .O(\sp[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[10]_i_3 
       (.I0(\sp[15]_i_8_n_0 ),
        .I1(\sp_reg[15]_0 [10]),
        .O(\sp[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF8FFF8)) 
    \sp[11]_i_1 
       (.I0(\sp_reg[11] [3]),
        .I1(\sp[15]_i_3_n_0 ),
        .I2(\sp[11]_i_3_n_0 ),
        .I3(\sp[11]_i_4_n_0 ),
        .I4(\sp[15]_i_6_n_0 ),
        .I5(cbus[11]),
        .O(\sp_reg[15] [11]));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[11]_i_3 
       (.I0(\sp[15]_i_7_n_0 ),
        .I1(sp_dec_0[7]),
        .O(\sp[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[11]_i_4 
       (.I0(\sp[15]_i_8_n_0 ),
        .I1(\sp_reg[15]_0 [11]),
        .O(\sp[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF8FFF8)) 
    \sp[12]_i_1 
       (.I0(\sp_reg[15]_1 [0]),
        .I1(\sp[15]_i_3_n_0 ),
        .I2(\sp[12]_i_2_n_0 ),
        .I3(\sp[12]_i_3_n_0 ),
        .I4(\sp[15]_i_6_n_0 ),
        .I5(cbus[12]),
        .O(\sp_reg[15] [12]));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[12]_i_2 
       (.I0(\sp[15]_i_7_n_0 ),
        .I1(sp_dec_0[8]),
        .O(\sp[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[12]_i_3 
       (.I0(\sp[15]_i_8_n_0 ),
        .I1(\sp_reg[15]_0 [12]),
        .O(\sp[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \sp[13]_i_1 
       (.I0(\sp_reg[15]_1 [1]),
        .I1(\sp[15]_i_3_n_0 ),
        .I2(\sp[13]_i_2_n_0 ),
        .O(\sp_reg[15] [13]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \sp[13]_i_2 
       (.I0(cbus[13]),
        .I1(\sp[15]_i_6_n_0 ),
        .I2(\sp[15]_i_8_n_0 ),
        .I3(\sp_reg[15]_0 [13]),
        .I4(sp_dec_0[9]),
        .I5(\sp[15]_i_7_n_0 ),
        .O(\sp[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF8FFF8)) 
    \sp[14]_i_1 
       (.I0(\sp_reg[15]_1 [2]),
        .I1(\sp[15]_i_3_n_0 ),
        .I2(\sp[14]_i_2_n_0 ),
        .I3(\sp[14]_i_3_n_0 ),
        .I4(\sp[15]_i_6_n_0 ),
        .I5(cbus[14]),
        .O(\sp_reg[15] [14]));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[14]_i_2 
       (.I0(\sp[15]_i_7_n_0 ),
        .I1(sp_dec_0[10]),
        .O(\sp[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[14]_i_3 
       (.I0(\sp[15]_i_8_n_0 ),
        .I1(\sp_reg[15]_0 [14]),
        .O(\sp[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF8FFF8)) 
    \sp[15]_i_1 
       (.I0(\sp_reg[15]_1 [3]),
        .I1(\sp[15]_i_3_n_0 ),
        .I2(\sp[15]_i_4_n_0 ),
        .I3(\sp[15]_i_5_n_0 ),
        .I4(\sp[15]_i_6_n_0 ),
        .I5(\sp_reg[15]_2 ),
        .O(\sp_reg[15] [15]));
  LUT3 #(
    .INIT(8'h2A)) 
    \sp[15]_i_10 
       (.I0(\sp[15]_i_6_n_0 ),
        .I1(brdy),
        .I2(\bcmd[0]_INST_0_i_1_n_0 ),
        .O(\sp[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sp[15]_i_3 
       (.I0(\sp[15]_i_6_n_0 ),
        .I1(brdy),
        .I2(\bcmd[0]_INST_0_i_1_n_0 ),
        .O(\sp[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[15]_i_4 
       (.I0(\sp[15]_i_7_n_0 ),
        .I1(sp_dec_0[11]),
        .O(\sp[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[15]_i_5 
       (.I0(\sp[15]_i_8_n_0 ),
        .I1(\sp_reg[15]_0 [15]),
        .O(\sp[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \sp[15]_i_6 
       (.I0(\iv[15]_i_3_n_0 ),
        .I1(ctl_selc_rn[2]),
        .I2(ctl_selc_rn[0]),
        .I3(ctl_selc_rn[1]),
        .O(\sp[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000AAAA00000000)) 
    \sp[15]_i_7 
       (.I0(brdy),
        .I1(\stat[1]_i_9_n_0 ),
        .I2(ir[6]),
        .I3(ir[5]),
        .I4(\sp[15]_i_9_n_0 ),
        .I5(\sp[15]_i_10_n_0 ),
        .O(\sp[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF555500000000)) 
    \sp[15]_i_8 
       (.I0(brdy),
        .I1(\stat[1]_i_9_n_0 ),
        .I2(ir[6]),
        .I3(ir[5]),
        .I4(\sp[15]_i_9_n_0 ),
        .I5(\sp[15]_i_10_n_0 ),
        .O(\sp[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFBFBFFF)) 
    \sp[15]_i_9 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(\bcmd[1]_INST_0_i_6_n_0 ),
        .I3(Q[0]),
        .I4(fch_irq_req),
        .I5(\bcmd[1]_INST_0_i_4_n_0 ),
        .O(\sp[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \sp[1]_i_1 
       (.I0(\sp_reg[3] [0]),
        .I1(\sp[15]_i_3_n_0 ),
        .I2(\sp[1]_i_2_n_0 ),
        .O(\sp_reg[15] [1]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \sp[1]_i_2 
       (.I0(cbus[1]),
        .I1(\sp[15]_i_6_n_0 ),
        .I2(\sp[15]_i_8_n_0 ),
        .I3(\sp_reg[15]_0 [1]),
        .I4(O[1]),
        .I5(\sp[15]_i_7_n_0 ),
        .O(\sp[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \sp[2]_i_1 
       (.I0(\sp_reg[3] [1]),
        .I1(\sp[15]_i_3_n_0 ),
        .I2(\sp[2]_i_2_n_0 ),
        .O(\sp_reg[15] [2]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \sp[2]_i_2 
       (.I0(cbus[2]),
        .I1(\sp[15]_i_6_n_0 ),
        .I2(\sp[15]_i_8_n_0 ),
        .I3(\sp_reg[15]_0 [2]),
        .I4(O[2]),
        .I5(\sp[15]_i_7_n_0 ),
        .O(\sp[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF8FFF8)) 
    \sp[3]_i_1 
       (.I0(\sp_reg[3] [2]),
        .I1(\sp[15]_i_3_n_0 ),
        .I2(\sp[3]_i_3_n_0 ),
        .I3(\sp[3]_i_4_n_0 ),
        .I4(\sp[15]_i_6_n_0 ),
        .I5(cbus[3]),
        .O(\sp_reg[15] [3]));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[3]_i_3 
       (.I0(\sp[15]_i_7_n_0 ),
        .I1(O[3]),
        .O(\sp[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[3]_i_4 
       (.I0(\sp[15]_i_8_n_0 ),
        .I1(\sp_reg[15]_0 [3]),
        .O(\sp[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \sp[4]_i_1 
       (.I0(\sp_reg[7] [0]),
        .I1(\sp[15]_i_3_n_0 ),
        .I2(\sp[4]_i_2_n_0 ),
        .O(\sp_reg[15] [4]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \sp[4]_i_2 
       (.I0(cbus[4]),
        .I1(\sp[15]_i_6_n_0 ),
        .I2(\sp[15]_i_8_n_0 ),
        .I3(\sp_reg[15]_0 [4]),
        .I4(sp_dec_0[0]),
        .I5(\sp[15]_i_7_n_0 ),
        .O(\sp[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \sp[5]_i_1 
       (.I0(\sp_reg[7] [1]),
        .I1(\sp[15]_i_3_n_0 ),
        .I2(\sp[5]_i_2_n_0 ),
        .O(\sp_reg[15] [5]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \sp[5]_i_2 
       (.I0(cbus[5]),
        .I1(\sp[15]_i_6_n_0 ),
        .I2(\sp[15]_i_8_n_0 ),
        .I3(\sp_reg[15]_0 [5]),
        .I4(sp_dec_0[1]),
        .I5(\sp[15]_i_7_n_0 ),
        .O(\sp[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF8FFF8)) 
    \sp[6]_i_1 
       (.I0(\sp_reg[7] [2]),
        .I1(\sp[15]_i_3_n_0 ),
        .I2(\sp[6]_i_2_n_0 ),
        .I3(\sp[6]_i_3_n_0 ),
        .I4(\sp[15]_i_6_n_0 ),
        .I5(cbus[6]),
        .O(\sp_reg[15] [6]));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[6]_i_2 
       (.I0(\sp[15]_i_7_n_0 ),
        .I1(sp_dec_0[2]),
        .O(\sp[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[6]_i_3 
       (.I0(\sp[15]_i_8_n_0 ),
        .I1(\sp_reg[15]_0 [6]),
        .O(\sp[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \sp[7]_i_1 
       (.I0(\sp_reg[7] [3]),
        .I1(\sp[15]_i_3_n_0 ),
        .I2(\sp[7]_i_3_n_0 ),
        .O(\sp_reg[15] [7]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \sp[7]_i_3 
       (.I0(cbus[7]),
        .I1(\sp[15]_i_6_n_0 ),
        .I2(\sp[15]_i_8_n_0 ),
        .I3(\sp_reg[15]_0 [7]),
        .I4(sp_dec_0[3]),
        .I5(\sp[15]_i_7_n_0 ),
        .O(\sp[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF8FFF8)) 
    \sp[8]_i_1 
       (.I0(\sp_reg[11] [0]),
        .I1(\sp[15]_i_3_n_0 ),
        .I2(\sp[8]_i_2_n_0 ),
        .I3(\sp[8]_i_3_n_0 ),
        .I4(\sp[15]_i_6_n_0 ),
        .I5(cbus[8]),
        .O(\sp_reg[15] [8]));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[8]_i_2 
       (.I0(\sp[15]_i_7_n_0 ),
        .I1(sp_dec_0[4]),
        .O(\sp[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[8]_i_3 
       (.I0(\sp[15]_i_8_n_0 ),
        .I1(\sp_reg[15]_0 [8]),
        .O(\sp[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF8FFF8)) 
    \sp[9]_i_1 
       (.I0(\sp_reg[11] [1]),
        .I1(\sp[15]_i_3_n_0 ),
        .I2(\sp[9]_i_2_n_0 ),
        .I3(\sp[9]_i_3_n_0 ),
        .I4(\sp[15]_i_6_n_0 ),
        .I5(cbus[9]),
        .O(\sp_reg[15] [9]));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[9]_i_2 
       (.I0(\sp[15]_i_7_n_0 ),
        .I1(sp_dec_0[5]),
        .O(\sp[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sp[9]_i_3 
       (.I0(\sp[15]_i_8_n_0 ),
        .I1(\sp_reg[15]_0 [9]),
        .O(\sp[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sr[0]_i_1 
       (.I0(\sr_reg[15] [0]),
        .I1(\sr[15]_i_5_n_0 ),
        .I2(cbus[0]),
        .I3(\sr[10]_i_2_n_0 ),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \sr[10]_i_1 
       (.I0(\sr_reg[15] [10]),
        .I1(\sr[15]_i_5_n_0 ),
        .I2(cbus[10]),
        .I3(\sr[10]_i_2_n_0 ),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \sr[10]_i_2 
       (.I0(\iv[15]_i_3_n_0 ),
        .I1(ctl_selc_rn[2]),
        .I2(ctl_selc_rn[0]),
        .I3(ctl_selc_rn[1]),
        .I4(rst_n),
        .O(\sr[10]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sr[11]_i_1 
       (.I0(\sr[15]_i_5_n_0 ),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'hFFFEFEFEFF000000)) 
    \sr[12]_i_1 
       (.I0(ctl_sr_ldie),
        .I1(\sr[15]_i_3_n_0 ),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(\sr_reg[15] [12]),
        .I4(\sr[15]_i_5_n_0 ),
        .I5(cpuid[0]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hFFFEFEFEFF000000)) 
    \sr[13]_i_1 
       (.I0(ctl_sr_ldie),
        .I1(\sr[15]_i_3_n_0 ),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(\sr_reg[15] [13]),
        .I4(\sr[15]_i_5_n_0 ),
        .I5(cpuid[1]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'hFFFEFEFEFF000000)) 
    \sr[14]_i_1 
       (.I0(ctl_sr_ldie),
        .I1(\sr[15]_i_3_n_0 ),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(\sr_reg[15] [14]),
        .I4(\sr[15]_i_5_n_0 ),
        .I5(cpuid[2]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'hFFFEFEFEFF000000)) 
    \sr[15]_i_1 
       (.I0(ctl_sr_ldie),
        .I1(\sr[15]_i_3_n_0 ),
        .I2(\sr[15]_i_4_n_0 ),
        .I3(\sr_reg[15] [15]),
        .I4(\sr[15]_i_5_n_0 ),
        .I5(cpuid[3]),
        .O(p_0_in[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[15]_i_10 
       (.I0(\iv[15]_i_21_n_0 ),
        .I1(ir[6]),
        .O(\sr[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \sr[15]_i_11 
       (.I0(\iv[15]_i_38_n_0 ),
        .I1(ir[5]),
        .I2(tout__1_carry_i_21_n_0),
        .I3(ir[4]),
        .I4(ir[11]),
        .I5(ir[7]),
        .O(\sr[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \sr[15]_i_12 
       (.I0(\iv[15]_i_38_n_0 ),
        .I1(ir[11]),
        .I2(ir[7]),
        .I3(ir[4]),
        .I4(ir[6]),
        .I5(ir[5]),
        .O(\sr[15]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \sr[15]_i_2 
       (.I0(brdy),
        .I1(Q[0]),
        .I2(\bcmd[1]_INST_0_i_6_n_0 ),
        .I3(ir[0]),
        .I4(ir[1]),
        .O(ctl_sr_ldie));
  LUT2 #(
    .INIT(4'hB)) 
    \sr[15]_i_3 
       (.I0(ctl_sr_upd),
        .I1(rst_n),
        .O(\sr[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00010001)) 
    \sr[15]_i_4 
       (.I0(\iv[15]_i_3_n_0 ),
        .I1(ctl_selc_rn[2]),
        .I2(ctl_selc_rn[0]),
        .I3(ctl_selc_rn[1]),
        .I4(\tr[15]_i_2_n_0 ),
        .I5(\grn[15]_i_2_n_0 ),
        .O(\sr[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sr[15]_i_5 
       (.I0(\iv[15]_i_3_n_0 ),
        .I1(ctl_selc_rn[2]),
        .I2(ctl_selc_rn[0]),
        .I3(ctl_selc_rn[1]),
        .I4(rst_n),
        .O(\sr[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sr[15]_i_6 
       (.I0(\sr[15]_i_7_n_0 ),
        .I1(\sr[15]_i_8_n_0 ),
        .I2(\sr[15]_i_9_n_0 ),
        .I3(\sr[15]_i_10_n_0 ),
        .I4(\sr[15]_i_11_n_0 ),
        .I5(\sr[15]_i_12_n_0 ),
        .O(ctl_sr_upd));
  LUT6 #(
    .INIT(64'h0000013000300030)) 
    \sr[15]_i_7 
       (.I0(\bdatw[15]_INST_0_i_76_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(ir[11]),
        .I3(ir[10]),
        .I4(ir[9]),
        .I5(ir[8]),
        .O(\sr[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \sr[15]_i_8 
       (.I0(ir[13]),
        .I1(ir[15]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(ir[12]),
        .O(\sr[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBABAAABAAABAAABA)) 
    \sr[15]_i_9 
       (.I0(\bdatw[15]_INST_0_i_52_n_0 ),
        .I1(ir[13]),
        .I2(\bdatw[8]_INST_0_i_6_0 ),
        .I3(ir[14]),
        .I4(ir[11]),
        .I5(ir[12]),
        .O(\sr[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \sr[2]_i_1 
       (.I0(\sr[2]_i_2_n_0 ),
        .I1(ctl_sr_ldie),
        .I2(fch_irq_lev[0]),
        .I3(\sr[7]_i_3_n_0 ),
        .I4(cbus[2]),
        .I5(\sr[10]_i_2_n_0 ),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h8F88000088880000)) 
    \sr[2]_i_2 
       (.I0(\sr[15]_i_5_n_0 ),
        .I1(\sr[3]_i_3_n_0 ),
        .I2(\tr[15]_i_2_n_0 ),
        .I3(rst_n),
        .I4(\sr_reg[15] [2]),
        .I5(\grn[15]_i_2_n_0 ),
        .O(\sr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \sr[3]_i_1 
       (.I0(\sr[3]_i_2_n_0 ),
        .I1(ctl_sr_ldie),
        .I2(fch_irq_lev[1]),
        .I3(\sr[7]_i_3_n_0 ),
        .I4(cbus[3]),
        .I5(\sr[10]_i_2_n_0 ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h8F88000088880000)) 
    \sr[3]_i_2 
       (.I0(\sr[15]_i_5_n_0 ),
        .I1(\sr[3]_i_3_n_0 ),
        .I2(\tr[15]_i_2_n_0 ),
        .I3(rst_n),
        .I4(\sr_reg[15] [3]),
        .I5(\grn[15]_i_2_n_0 ),
        .O(\sr[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sr[3]_i_3 
       (.I0(ctl_sr_upd),
        .I1(ctl_sr_ldie),
        .O(\sr[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFBAAAAA)) 
    \sr[4]_i_1 
       (.I0(\sr[4]_i_2_n_0 ),
        .I1(\sr[4]_i_3_n_0 ),
        .I2(\sr[4]_i_4_n_0 ),
        .I3(\sr[4]_i_5_n_0 ),
        .I4(\sr[7]_i_5_n_0 ),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_10 
       (.I0(\sr[4]_i_14_n_0 ),
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
  LUT3 #(
    .INIT(8'hDF)) 
    \sr[4]_i_12 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(tout__1_carry_i_13_n_0),
        .O(\sr[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFF0FFF8FDF0FD)) 
    \sr[4]_i_14 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(\iv[4]_i_4_n_0 ),
        .I3(\iv[14]_i_14_n_0 ),
        .I4(acmd[1]),
        .I5(tout__1_carry_i_13_n_0),
        .O(\sr[4]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sr[4]_i_2 
       (.I0(\sr_reg[15] [4]),
        .I1(\sr[7]_i_3_n_0 ),
        .I2(cbus[4]),
        .I3(\sr[7]_i_2_n_0 ),
        .O(\sr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sr[4]_i_3 
       (.I0(\iv[0]_i_2_n_0 ),
        .I1(\iv[11]_i_2_n_0 ),
        .I2(\iv[14]_i_2_n_0 ),
        .I3(\iv[3]_i_2_n_0 ),
        .I4(\sr[4]_i_6_n_0 ),
        .O(\sr[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \sr[4]_i_4 
       (.I0(\sr[4]_i_7_n_0 ),
        .I1(\iv[8]_i_2_n_0 ),
        .I2(\iv[6]_i_2_n_0 ),
        .I3(\iv[9]_i_2_n_0 ),
        .I4(\iv[10]_i_2_n_0 ),
        .I5(\iv[12]_i_2_n_0 ),
        .O(\sr[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    \sr[4]_i_5 
       (.I0(\sr[4]_i_8_n_0 ),
        .I1(\iv[12]_i_4_n_0 ),
        .I2(\iv[10]_i_4_n_0 ),
        .I3(\iv[13]_i_4_n_0 ),
        .I4(\iv[11]_i_4_n_0 ),
        .I5(\sr[4]_i_9_n_0 ),
        .O(\sr[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_6 
       (.I0(\iv[2]_i_2_n_0 ),
        .I1(\iv[13]_i_2_n_0 ),
        .I2(\iv[7]_i_2_n_0 ),
        .I3(\iv[1]_i_2_n_0 ),
        .O(\sr[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_7 
       (.I0(\iv[4]_i_2_n_0 ),
        .I1(\iv[5]_i_2_n_0 ),
        .I2(\sr[7]_i_6_n_0 ),
        .I3(\iv[14]_i_10_n_0 ),
        .O(\sr[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sr[4]_i_8 
       (.I0(\iv[8]_i_4_n_0 ),
        .I1(\iv[9]_i_4_n_0 ),
        .I2(\sr[7]_i_7_n_0 ),
        .I3(\iv[14]_i_5_n_0 ),
        .I4(\sr[4]_i_10_n_0 ),
        .I5(\sr[4]_i_11_n_0 ),
        .O(\sr[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF2A)) 
    \sr[4]_i_9 
       (.I0(\sr[4]_i_12_n_0 ),
        .I1(acmd[0]),
        .I2(tout__1_carry_i_14_n_0),
        .I3(\sr_reg[15] [4]),
        .I4(\sr[4]_i_5_0 ),
        .I5(\iv[14]_i_3_n_0 ),
        .O(\sr[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \sr[5]_i_1 
       (.I0(\sr[7]_i_2_n_0 ),
        .I1(cbus[5]),
        .I2(\sr[7]_i_3_n_0 ),
        .I3(\sr_reg[15] [5]),
        .I4(\sr[5]_i_2_n_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00002800)) 
    \sr[5]_i_2 
       (.I0(\sr[7]_i_5_n_0 ),
        .I1(\sr[6]_i_3_n_0 ),
        .I2(\sr[7]_i_6_n_0 ),
        .I3(\sr[5]_i_3_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\sr[5]_i_4_n_0 ),
        .O(\sr[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \sr[5]_i_3 
       (.I0(tout__1_carry_i_13_n_0),
        .I1(acmd[2]),
        .I2(acmd[4]),
        .I3(acmd[3]),
        .O(\sr[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00090060)) 
    \sr[5]_i_4 
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(\sr_reg[7] [3]),
        .I3(\iv[14]_i_3_n_0 ),
        .I4(abus_0[15]),
        .O(\sr[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \sr[5]_i_5 
       (.I0(ir[12]),
        .I1(\bdatw[8]_INST_0_i_6_0 ),
        .I2(ir[11]),
        .I3(ir[14]),
        .I4(ir[13]),
        .I5(\sr[5]_i_7_n_0 ),
        .O(acmd[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    \sr[5]_i_6 
       (.I0(\sr[5]_i_8_n_0 ),
        .I1(\stat[0]_i_27_n_0 ),
        .I2(\sr[15]_i_10_n_0 ),
        .I3(ir[3]),
        .I4(ir[4]),
        .I5(\stat[1]_i_3_n_0 ),
        .O(acmd[3]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \sr[5]_i_7 
       (.I0(ir[9]),
        .I1(\bdatw[15]_INST_0_i_76_n_0 ),
        .I2(ir[8]),
        .I3(ir[10]),
        .I4(ir[11]),
        .I5(\bcmd[2]_INST_0_i_2_n_0 ),
        .O(\sr[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFCFCFEFFFEFE)) 
    \sr[5]_i_8 
       (.I0(tout__1_carry_i_20_n_0),
        .I1(\sr[5]_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_65_n_0 ),
        .I3(\iv[15]_i_37_n_0 ),
        .I4(ir[8]),
        .I5(ir[7]),
        .O(\sr[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h20882888)) 
    \sr[5]_i_9 
       (.I0(\bdatw[8]_INST_0_i_6_0 ),
        .I1(ir[14]),
        .I2(ir[12]),
        .I3(ir[13]),
        .I4(ir[11]),
        .O(\sr[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \sr[6]_i_1 
       (.I0(\sr[7]_i_2_n_0 ),
        .I1(cbus[6]),
        .I2(\sr[7]_i_3_n_0 ),
        .I3(\sr_reg[15] [6]),
        .I4(\sr[6]_i_2_n_0 ),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h30305F503F3F5F5F)) 
    \sr[6]_i_10 
       (.I0(abus_0[14]),
        .I1(abus_0[13]),
        .I2(\iv[2]_i_14_n_0 ),
        .I3(acmd[0]),
        .I4(\bdatw[8]_INST_0_i_2_n_0 ),
        .I5(abus_0[15]),
        .O(\sr[6]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA0082)) 
    \sr[6]_i_2 
       (.I0(\sr[7]_i_5_n_0 ),
        .I1(\sr_reg[6] ),
        .I2(acmd[0]),
        .I3(\iv[14]_i_3_n_0 ),
        .I4(\sr[6]_i_3_n_0 ),
        .O(\sr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDDDFF0F)) 
    \sr[6]_i_3 
       (.I0(\sr[6]_i_4_n_0 ),
        .I1(\sr[6]_i_5_n_0 ),
        .I2(\sr[6]_i_6_n_0 ),
        .I3(\sr[6]_i_7_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\sr[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sr[6]_i_4 
       (.I0(\iv[0]_i_12_n_0 ),
        .I1(abus_0[15]),
        .O(\sr[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h473347FF470047CC)) 
    \sr[6]_i_5 
       (.I0(\iv[7]_i_16_n_0 ),
        .I1(\iv[11]_i_12_n_0 ),
        .I2(\iv[7]_i_15_n_0 ),
        .I3(\iv[8]_i_7_n_0 ),
        .I4(\iv[8]_i_13_n_0 ),
        .I5(\sr[6]_i_8_n_0 ),
        .O(\sr[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFBEAFBFBFBEAEAEA)) 
    \sr[6]_i_6 
       (.I0(\iv[8]_i_7_n_0 ),
        .I1(\iv[11]_i_12_n_0 ),
        .I2(\sr[6]_i_9_n_0 ),
        .I3(\sr[6]_i_10_n_0 ),
        .I4(acmd[1]),
        .I5(\iv[11]_i_14_n_0 ),
        .O(\sr[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sr[6]_i_7 
       (.I0(\iv[8]_i_17_n_0 ),
        .I1(\iv[14]_i_18_n_0 ),
        .O(\sr[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \sr[6]_i_8 
       (.I0(abus_0[2]),
        .I1(abus_0[1]),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(\iv[13]_i_19_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .O(\sr[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \sr[6]_i_9 
       (.I0(abus_0[12]),
        .I1(abus_0[11]),
        .I2(abus_0[10]),
        .I3(abus_0[9]),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\sr[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[7]_i_1 
       (.I0(\sr[7]_i_2_n_0 ),
        .I1(cbus[7]),
        .I2(\sr[7]_i_3_n_0 ),
        .I3(\sr_reg[15] [7]),
        .I4(alu_sr_flag),
        .I5(\sr[7]_i_5_n_0 ),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hF505F3F3F5050303)) 
    \sr[7]_i_10 
       (.I0(\sr[7]_i_18_n_0 ),
        .I1(\sr[7]_i_19_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\sr[7]_i_20_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\sr[7]_i_21_n_0 ),
        .O(\sr[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \sr[7]_i_11 
       (.I0(\sr[7]_i_22_n_0 ),
        .I1(\iv[2]_i_14_n_0 ),
        .I2(\sr[7]_i_23_n_0 ),
        .I3(\sr[7]_i_24_n_0 ),
        .I4(\sr[7]_i_25_n_0 ),
        .I5(\iv[11]_i_12_n_0 ),
        .O(\sr[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCF0FFC0CF5F50)) 
    \sr[7]_i_12 
       (.I0(abus_0[7]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(acmd[1]),
        .I3(abus_0[15]),
        .I4(acmd[0]),
        .I5(acmd[2]),
        .O(\sr[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h2020000002222000)) 
    \sr[7]_i_13 
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(abus_0[15]),
        .I3(acmd[0]),
        .I4(acmd[1]),
        .I5(\bdatw[15]_INST_0_i_1_n_0 ),
        .O(\sr[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \sr[7]_i_14 
       (.I0(tout__1_carry_i_13_n_0),
        .I1(abus_0[14]),
        .I2(\iv[14]_i_25_n_0 ),
        .O(\sr[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sr[7]_i_15 
       (.I0(\iv[2]_i_21_n_0 ),
        .I1(\iv[13]_i_28_n_0 ),
        .I2(\iv[11]_i_12_n_0 ),
        .I3(\iv[13]_i_29_n_0 ),
        .I4(\iv[2]_i_14_n_0 ),
        .I5(\iv[13]_i_30_n_0 ),
        .O(\sr[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \sr[7]_i_16 
       (.I0(acmd[1]),
        .I1(abus_0[15]),
        .I2(\iv[12]_i_16_n_0 ),
        .O(\sr[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \sr[7]_i_17 
       (.I0(\iv[13]_i_31_n_0 ),
        .I1(\iv[13]_i_25_n_0 ),
        .I2(\iv[13]_i_26_n_0 ),
        .I3(\iv[2]_i_14_n_0 ),
        .I4(\iv[13]_i_27_n_0 ),
        .I5(\iv[11]_i_12_n_0 ),
        .O(\sr[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[7]_i_18 
       (.I0(abus_0[4]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[5]),
        .O(\sr[7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[7]_i_19 
       (.I0(abus_0[6]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[7]),
        .O(\sr[7]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[7]_i_2 
       (.I0(\sr[15]_i_4_n_0 ),
        .I1(rst_n),
        .O(\sr[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \sr[7]_i_20 
       (.I0(abus_0[1]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[0]),
        .O(\sr[7]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sr[7]_i_21 
       (.I0(abus_0[2]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[3]),
        .O(\sr[7]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[7]_i_22 
       (.I0(abus_0[12]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[13]),
        .O(\sr[7]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[7]_i_23 
       (.I0(abus_0[14]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[15]),
        .O(\sr[7]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[7]_i_24 
       (.I0(abus_0[8]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[9]),
        .O(\sr[7]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[7]_i_25 
       (.I0(abus_0[10]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[11]),
        .O(\sr[7]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h00BE)) 
    \sr[7]_i_3 
       (.I0(\tr[15]_i_2_n_0 ),
        .I1(ctl_selc_rn[2]),
        .I2(ctl_selc_rn[1]),
        .I3(\sr[15]_i_3_n_0 ),
        .O(\sr[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \sr[7]_i_4 
       (.I0(\sr[7]_i_6_n_0 ),
        .I1(\sr[7]_i_7_n_0 ),
        .I2(\sr_reg[7] [3]),
        .I3(\iv[14]_i_3_n_0 ),
        .O(alu_sr_flag));
  LUT5 #(
    .INIT(32'hBE000000)) 
    \sr[7]_i_5 
       (.I0(\tr[15]_i_2_n_0 ),
        .I1(ctl_selc_rn[2]),
        .I2(ctl_selc_rn[1]),
        .I3(rst_n),
        .I4(ctl_sr_upd),
        .O(\sr[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2222222233000303)) 
    \sr[7]_i_6 
       (.I0(\sr[7]_i_8_n_0 ),
        .I1(\sr[7]_i_9_n_0 ),
        .I2(\sr[7]_i_10_n_0 ),
        .I3(\sr[7]_i_11_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .I5(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\sr[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \sr[7]_i_7 
       (.I0(\sr[7]_i_12_n_0 ),
        .I1(\iv[14]_i_14_n_0 ),
        .I2(\sr[7]_i_13_n_0 ),
        .O(\sr[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0A02AAAA0002)) 
    \sr[7]_i_8 
       (.I0(\sr[7]_i_14_n_0 ),
        .I1(\sr[7]_i_15_n_0 ),
        .I2(acmd[1]),
        .I3(\iv[14]_i_18_n_0 ),
        .I4(\sr[7]_i_16_n_0 ),
        .I5(\sr[7]_i_17_n_0 ),
        .O(\sr[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \sr[7]_i_9 
       (.I0(\iv[14]_i_10_n_0 ),
        .I1(acmd[0]),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\sr[6]_i_4_n_0 ),
        .O(\sr[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF008F)) 
    \stat[0]_i_1 
       (.I0(Q[0]),
        .I1(\stat[0]_i_2_n_0 ),
        .I2(\stat[0]_i_3_n_0 ),
        .I3(brdy),
        .I4(\stat[0]_i_4_n_0 ),
        .I5(\stat[0]_i_5_n_0 ),
        .O(brdy_0[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA888)) 
    \stat[0]_i_10 
       (.I0(brdy),
        .I1(\stat[0]_i_15_n_0 ),
        .I2(\bdatw[11]_INST_0_i_10_n_0 ),
        .I3(\stat[0]_i_16_n_0 ),
        .I4(\stat[0]_i_17_n_0 ),
        .I5(\stat[0]_i_18_n_0 ),
        .O(\stat[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEFE)) 
    \stat[0]_i_11 
       (.I0(\stat[2]_i_7_n_0 ),
        .I1(\stat[0]_i_19_n_0 ),
        .I2(\stat[0]_i_5_0 ),
        .I3(\stat[0]_i_21_n_0 ),
        .I4(crdy),
        .I5(ir[11]),
        .O(\stat[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF2F2F2F)) 
    \stat[0]_i_13 
       (.I0(\stat[0]_i_24_n_0 ),
        .I1(\stat[1]_i_16_n_0 ),
        .I2(\stat_reg[2]_1 ),
        .I3(\stat[0]_i_5_1 ),
        .I4(\stat[0]_i_26_n_0 ),
        .I5(\stat[0]_i_27_n_0 ),
        .O(\stat[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \stat[0]_i_14 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[9]),
        .O(\stat[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[0]_i_15 
       (.I0(ir[6]),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .O(\stat[0]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \stat[0]_i_16 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(ir[15]),
        .I3(rst_n_fl_reg_2),
        .I4(rst_n_fl_reg_5),
        .O(\stat[0]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \stat[0]_i_17 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(ir[11]),
        .I3(\bcmd[1]_INST_0_i_10_n_0 ),
        .I4(\bcmd[2]_INST_0_i_2_n_0 ),
        .O(\stat[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \stat[0]_i_18 
       (.I0(\ccmd[4]_INST_0_i_2_n_0 ),
        .I1(ir[11]),
        .I2(ir[5]),
        .I3(ir[6]),
        .I4(ir[4]),
        .I5(\bcmd[1]_INST_0_i_10_n_0 ),
        .O(\stat[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000700000)) 
    \stat[0]_i_19 
       (.I0(ir[8]),
        .I1(ir[10]),
        .I2(crdy),
        .I3(ir[9]),
        .I4(\bdatw[15]_INST_0_i_47_n_0 ),
        .I5(ir[11]),
        .O(\stat[0]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h00030022)) 
    \stat[0]_i_2 
       (.I0(ir[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\stat[0]_i_6_n_0 ),
        .I4(ir[1]),
        .O(\stat[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA8AA)) 
    \stat[0]_i_21 
       (.I0(ir[10]),
        .I1(ir[9]),
        .I2(ir[8]),
        .I3(ir[7]),
        .O(\stat[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \stat[0]_i_23 
       (.I0(ir[7]),
        .I1(ir[8]),
        .I2(ir[9]),
        .I3(ir[11]),
        .I4(\bcmd[2]_INST_0_i_2_n_0 ),
        .I5(ir[10]),
        .O(rst_n_fl_reg_4));
  LUT2 #(
    .INIT(4'hB)) 
    \stat[0]_i_24 
       (.I0(ir[6]),
        .I1(ir[7]),
        .O(\stat[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \stat[0]_i_26 
       (.I0(ir[9]),
        .I1(ir[8]),
        .I2(ir[10]),
        .I3(ir[11]),
        .I4(\ccmd[4]_INST_0_i_2_n_0 ),
        .I5(ir[6]),
        .O(\stat[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \stat[0]_i_27 
       (.I0(ir[1]),
        .I1(ir[0]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\stat[0]_i_6_n_0 ),
        .I5(Q[1]),
        .O(\stat[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hEFCFFFCFCCCCFFCF)) 
    \stat[0]_i_3 
       (.I0(\stat[0]_i_7_n_0 ),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .I2(Q[0]),
        .I3(\stat[0]_i_8_n_0 ),
        .I4(ir[11]),
        .I5(\bcmd[0]_INST_0_i_2_n_0 ),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBFAAAAAAAA)) 
    \stat[0]_i_4 
       (.I0(\stat[1]_i_4_n_0 ),
        .I1(\stat[0]_i_9_n_0 ),
        .I2(crdy),
        .I3(\ccmd[1]_INST_0_i_5_n_0 ),
        .I4(\stat[1]_i_8_n_0 ),
        .I5(ir[7]),
        .O(\stat[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \stat[0]_i_5 
       (.I0(\stat[0]_i_10_n_0 ),
        .I1(\stat[0]_i_11_n_0 ),
        .I2(\stat[1]_i_9_n_0 ),
        .I3(\bcmd[1]_INST_0_i_9_n_0 ),
        .I4(\stat_reg[0]_1 ),
        .I5(\stat[0]_i_13_n_0 ),
        .O(\stat[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \stat[0]_i_6 
       (.I0(\stat[0]_i_14_n_0 ),
        .I1(\bdatw[8]_INST_0_i_20_n_0 ),
        .I2(ir[10]),
        .I3(\bcmd[1]_INST_0_i_9_n_0 ),
        .I4(rst_n_fl_reg_2),
        .I5(ir[15]),
        .O(\stat[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDDF0DDFFDDFFDDFF)) 
    \stat[0]_i_7 
       (.I0(ir[5]),
        .I1(\bcmd[1]_INST_0_i_10_n_0 ),
        .I2(ir[10]),
        .I3(ir[6]),
        .I4(ir[9]),
        .I5(ir[8]),
        .O(\stat[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \stat[0]_i_8 
       (.I0(ir[3]),
        .I1(ir[10]),
        .I2(ir[9]),
        .I3(ir[7]),
        .I4(ir[8]),
        .I5(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\stat[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFFFFFFFFFF)) 
    \stat[0]_i_9 
       (.I0(\badrx[15]_INST_0_i_3_n_0 ),
        .I1(badr_0_sn_1),
        .I2(ir[11]),
        .I3(ir[9]),
        .I4(crdy),
        .I5(ir[10]),
        .O(\stat[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \stat[1]_i_1 
       (.I0(\stat_reg[1] ),
        .I1(\stat[1]_i_3_n_0 ),
        .I2(\stat[1]_i_4_n_0 ),
        .I3(\stat[1]_i_5_n_0 ),
        .I4(\stat[1]_i_6_n_0 ),
        .I5(\stat_reg[1]_0 ),
        .O(brdy_0[1]));
  LUT6 #(
    .INIT(64'h00002F2200000000)) 
    \stat[1]_i_10 
       (.I0(\sr_reg[15] [6]),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(\sr_reg[15] [5]),
        .I4(ir[12]),
        .I5(ir[11]),
        .O(\stat[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD36CFFFF)) 
    \stat[1]_i_11 
       (.I0(ir[12]),
        .I1(\sr_reg[15] [5]),
        .I2(\sr_reg[15] [7]),
        .I3(ir[11]),
        .I4(ir[14]),
        .I5(ir[13]),
        .O(\stat[1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00900000)) 
    \stat[1]_i_12 
       (.I0(\sr_reg[15] [7]),
        .I1(ir[11]),
        .I2(ir[12]),
        .I3(ir[14]),
        .I4(ir[13]),
        .O(\stat[1]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \stat[1]_i_13 
       (.I0(ir[14]),
        .I1(ir[13]),
        .I2(\sr_reg[15] [6]),
        .I3(ir[12]),
        .I4(ir[11]),
        .O(\stat[1]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h000000D2)) 
    \stat[1]_i_14 
       (.I0(ir[12]),
        .I1(\sr_reg[15] [4]),
        .I2(ir[11]),
        .I3(ir[14]),
        .I4(ir[13]),
        .O(\stat[1]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \stat[1]_i_16 
       (.I0(ir[8]),
        .I1(crdy),
        .I2(ir[10]),
        .I3(\bcmd[2]_INST_0_i_2_n_0 ),
        .I4(ir[11]),
        .O(\stat[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \stat[1]_i_17 
       (.I0(\ccmd[4]_INST_0_i_2_n_0 ),
        .I1(ir[10]),
        .I2(\stat[2]_i_11_n_0 ),
        .I3(ir[7]),
        .I4(ir[11]),
        .I5(crdy),
        .O(crdy_0));
  LUT6 #(
    .INIT(64'hFFEEFFEEFFEEF0EE)) 
    \stat[1]_i_18 
       (.I0(crdy),
        .I1(ir[10]),
        .I2(brdy),
        .I3(ir[11]),
        .I4(ir[6]),
        .I5(\bcmd[0]_INST_0_i_2_n_0 ),
        .O(crdy_1));
  LUT6 #(
    .INIT(64'h00000000000000F1)) 
    \stat[1]_i_3 
       (.I0(\stat[1]_i_8_n_0 ),
        .I1(\bcmd[1]_INST_0_i_10_n_0 ),
        .I2(\stat[1]_i_9_n_0 ),
        .I3(ir[4]),
        .I4(ir[6]),
        .I5(ir[5]),
        .O(\stat[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA8A)) 
    \stat[1]_i_4 
       (.I0(badr_0_sn_1),
        .I1(\stat[1]_i_10_n_0 ),
        .I2(\stat[1]_i_11_n_0 ),
        .I3(\stat[1]_i_12_n_0 ),
        .I4(\stat[1]_i_13_n_0 ),
        .I5(\stat[1]_i_14_n_0 ),
        .O(\stat[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88888F8888888888)) 
    \stat[1]_i_5 
       (.I0(ctl_fetch_fl_reg_1),
        .I1(\stat[0]_i_2_n_0 ),
        .I2(\stat[1]_i_16_n_0 ),
        .I3(ir[9]),
        .I4(ir[6]),
        .I5(ir[7]),
        .O(\stat[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \stat[1]_i_6 
       (.I0(brdy),
        .I1(ir[6]),
        .I2(\bcmd[0]_INST_0_i_2_n_0 ),
        .I3(ir[11]),
        .I4(\ccmd[4]_INST_0_i_2_n_0 ),
        .I5(Q[0]),
        .O(\stat[1]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \stat[1]_i_8 
       (.I0(ir[11]),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .I2(Q[0]),
        .O(\stat[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \stat[1]_i_9 
       (.I0(ir[3]),
        .I1(ir[11]),
        .I2(\bcmd[1]_INST_0_i_8_n_0 ),
        .I3(badr_0_sn_1),
        .I4(rst_n_fl_reg_1),
        .I5(ir[12]),
        .O(\stat[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \stat[2]_i_10 
       (.I0(ir[15]),
        .I1(ir[13]),
        .I2(ir[14]),
        .I3(ir[12]),
        .I4(ir[11]),
        .O(\stat[2]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \stat[2]_i_11 
       (.I0(ir[9]),
        .I1(ir[8]),
        .O(\stat[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBAAAFFFF)) 
    \stat[2]_i_2 
       (.I0(\stat[2]_i_3_n_0 ),
        .I1(\stat_reg[2]_0 ),
        .I2(ir[0]),
        .I3(brdy),
        .I4(\stat_reg[2]_1 ),
        .O(brdy_0[2]));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \stat[2]_i_3 
       (.I0(\stat[2]_i_6_n_0 ),
        .I1(\stat[1]_i_4_n_0 ),
        .I2(\stat[2]_i_7_n_0 ),
        .I3(Q[0]),
        .I4(\stat[1]_i_3_n_0 ),
        .O(\stat[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \stat[2]_i_6 
       (.I0(\bcmd[1]_INST_0_i_7_n_0 ),
        .I1(\bcmd[1]_INST_0_i_12_n_0 ),
        .I2(\bcmd[1]_INST_0_i_9_n_0 ),
        .I3(\stat[2]_i_10_n_0 ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\stat[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \stat[2]_i_7 
       (.I0(\stat[0]_i_6_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(ir[1]),
        .I4(ir[0]),
        .I5(brdy),
        .O(\stat[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \stat[2]_i_8 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(ir[10]),
        .I2(ir[2]),
        .I3(ir[3]),
        .I4(ir[7]),
        .I5(\stat[2]_i_11_n_0 ),
        .O(rst_n_fl_reg_5));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \stat[2]_i_9 
       (.I0(ir[15]),
        .I1(rst_n_fl_reg_2),
        .I2(\bcmd[1]_INST_0_i_9_n_0 ),
        .I3(\bcmd[1]_INST_0_i_12_n_0 ),
        .I4(ir[1]),
        .I5(ir[0]),
        .O(rst_n_fl_reg_3));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__0_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(abus_0[6]),
        .O(\badr[6]_INST_0_i_1_0 [3]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__0_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(abus_0[5]),
        .O(\badr[6]_INST_0_i_1_0 [2]));
  LUT3 #(
    .INIT(8'h28)) 
    tout__1_carry__0_i_3
       (.I0(abus_0[4]),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_8_n_0),
        .O(\badr[6]_INST_0_i_1_0 [1]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__0_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(abus_0[3]),
        .O(\badr[6]_INST_0_i_1_0 [0]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__0_i_5
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(abus_0[7]),
        .I3(\badr[6]_INST_0_i_1_0 [3]),
        .O(tout__1_carry__0_i_1_0[3]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__0_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(abus_0[6]),
        .I3(\badr[6]_INST_0_i_1_0 [2]),
        .O(tout__1_carry__0_i_1_0[2]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__0_i_7
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(abus_0[5]),
        .I3(\badr[6]_INST_0_i_1_0 [1]),
        .O(tout__1_carry__0_i_1_0[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__0_i_8
       (.I0(abus_0[4]),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_8_n_0),
        .I3(\badr[6]_INST_0_i_1_0 [0]),
        .O(tout__1_carry__0_i_1_0[0]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__1_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .I2(abus_0[10]),
        .O(\badr[10]_INST_0_i_1_0 [3]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__1_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .I2(abus_0[9]),
        .O(\badr[10]_INST_0_i_1_0 [2]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__1_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .I2(abus_0[8]),
        .O(\badr[10]_INST_0_i_1_0 [1]));
  LUT3 #(
    .INIT(8'h90)) 
    tout__1_carry__1_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(abus_0[7]),
        .O(\badr[10]_INST_0_i_1_0 [0]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__1_i_5
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .I2(abus_0[11]),
        .I3(\badr[10]_INST_0_i_1_0 [3]),
        .O(tout__1_carry__1_i_1_0[3]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__1_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .I2(abus_0[10]),
        .I3(\badr[10]_INST_0_i_1_0 [2]),
        .O(tout__1_carry__1_i_1_0[2]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__1_i_7
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .I2(abus_0[9]),
        .I3(\badr[10]_INST_0_i_1_0 [1]),
        .O(tout__1_carry__1_i_1_0[1]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__1_i_8
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .I2(abus_0[8]),
        .I3(\badr[10]_INST_0_i_1_0 [0]),
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
        .O(\badr[14]_INST_0_i_1_0 [3]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__2_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[14]_INST_0_i_1_n_0 ),
        .I2(\badr[15]_INST_0_i_1_0 [2]),
        .I3(abus_0[14]),
        .O(\badr[14]_INST_0_i_1_0 [2]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__2_i_7
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .I2(abus_0[13]),
        .I3(\badr[15]_INST_0_i_1_0 [1]),
        .O(\badr[14]_INST_0_i_1_0 [1]));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__2_i_8
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .I2(abus_0[12]),
        .I3(\badr[15]_INST_0_i_1_0 [0]),
        .O(\badr[14]_INST_0_i_1_0 [0]));
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
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF02)) 
    tout__1_carry_i_10
       (.I0(\stat[1]_i_9_n_0 ),
        .I1(ir[6]),
        .I2(ir[4]),
        .I3(tout__1_carry_i_17_n_0),
        .I4(tout__1_carry_i_18_n_0),
        .I5(tout__1_carry_i_19_n_0),
        .O(acmd[0]));
  LUT2 #(
    .INIT(4'hE)) 
    tout__1_carry_i_11
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .O(tout__1_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tout__1_carry_i_12
       (.I0(\bdatw[8]_INST_0_i_2_n_0 ),
        .I1(tout__1_carry_i_8_n_0),
        .O(tout__1_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tout__1_carry_i_13
       (.I0(acmd[1]),
        .I1(acmd[0]),
        .O(tout__1_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    tout__1_carry_i_14
       (.I0(acmd[1]),
        .I1(tout__1_carry_i_11_n_0),
        .O(tout__1_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFF2FF22FFFFFF22)) 
    tout__1_carry_i_15
       (.I0(tout__1_carry_i_20_n_0),
        .I1(ir[7]),
        .I2(ir[4]),
        .I3(\sr[15]_i_11_n_0 ),
        .I4(\iv[15]_i_21_n_0 ),
        .I5(tout__1_carry_i_21_n_0),
        .O(tout__1_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'hF0F0F0F0F4F0F0FF)) 
    tout__1_carry_i_16
       (.I0(ir[9]),
        .I1(ir[7]),
        .I2(tout__1_carry_i_22_n_0),
        .I3(ir[6]),
        .I4(ir[8]),
        .I5(\iv[15]_i_35_n_0 ),
        .O(tout__1_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAABBABAABA)) 
    tout__1_carry_i_17
       (.I0(\stat[2]_i_6_n_0 ),
        .I1(tout__1_carry_i_25_0),
        .I2(ir[12]),
        .I3(\sr_reg[15] [4]),
        .I4(ir[11]),
        .I5(tout__1_carry_i_23_n_0),
        .O(tout__1_carry_i_17_n_0));
  LUT5 #(
    .INIT(32'hAAAAAEAA)) 
    tout__1_carry_i_18
       (.I0(\bdatw[8]_INST_0_i_21_n_0 ),
        .I1(Q[0]),
        .I2(\ccmd[4]_INST_0_i_2_n_0 ),
        .I3(ir[11]),
        .I4(\stat[0]_i_8_n_0 ),
        .O(tout__1_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8FFF8F0)) 
    tout__1_carry_i_19
       (.I0(ir[3]),
        .I1(\bdatw[15]_INST_0_i_39_n_0 ),
        .I2(\sr[15]_i_11_n_0 ),
        .I3(ir[6]),
        .I4(tout__1_carry_i_20_n_0),
        .I5(tout__1_carry_i_24_n_0),
        .O(tout__1_carry_i_19_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[1]),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h00000020)) 
    tout__1_carry_i_20
       (.I0(ir[10]),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(ir[11]),
        .I3(ir[9]),
        .I4(ir[8]),
        .O(tout__1_carry_i_20_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    tout__1_carry_i_21
       (.I0(ir[3]),
        .I1(ir[6]),
        .O(tout__1_carry_i_21_n_0));
  LUT5 #(
    .INIT(32'h09007100)) 
    tout__1_carry_i_22
       (.I0(ir[11]),
        .I1(ir[14]),
        .I2(ir[13]),
        .I3(\bdatw[8]_INST_0_i_6_0 ),
        .I4(ir[12]),
        .O(tout__1_carry_i_22_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tout__1_carry_i_23
       (.I0(ir[13]),
        .I1(ir[14]),
        .O(tout__1_carry_i_23_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFABABABAA)) 
    tout__1_carry_i_24
       (.I0(tout__1_carry_i_25_n_0),
        .I1(tout__1_carry_i_25_0),
        .I2(ir[15]),
        .I3(tout__1_carry_i_26_n_0),
        .I4(\stat[1]_i_12_n_0 ),
        .I5(tout__1_carry_i_27_n_0),
        .O(tout__1_carry_i_24_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF40444040)) 
    tout__1_carry_i_25
       (.I0(ir[13]),
        .I1(\bdatw[8]_INST_0_i_6_0 ),
        .I2(ir[12]),
        .I3(ir[11]),
        .I4(ir[14]),
        .I5(tout__1_carry_i_28_n_0),
        .O(tout__1_carry_i_25_n_0));
  LUT6 #(
    .INIT(64'h0020222200201120)) 
    tout__1_carry_i_26
       (.I0(ir[11]),
        .I1(ir[12]),
        .I2(\sr_reg[15] [5]),
        .I3(ir[13]),
        .I4(ir[14]),
        .I5(\sr_reg[15] [6]),
        .O(tout__1_carry_i_26_n_0));
  LUT5 #(
    .INIT(32'h5454FF54)) 
    tout__1_carry_i_27
       (.I0(\iv[15]_i_37_n_0 ),
        .I1(ir[8]),
        .I2(ir[6]),
        .I3(ir[7]),
        .I4(\bdatw[15]_INST_0_i_46_n_0 ),
        .O(tout__1_carry_i_27_n_0));
  LUT6 #(
    .INIT(64'h0110000010010011)) 
    tout__1_carry_i_28
       (.I0(tout__1_carry_i_29_n_0),
        .I1(tout__1_carry_i_25_0),
        .I2(\sr_reg[15] [7]),
        .I3(ir[11]),
        .I4(ir[12]),
        .I5(\sr_reg[15] [5]),
        .O(tout__1_carry_i_28_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    tout__1_carry_i_29
       (.I0(ir[13]),
        .I1(ir[14]),
        .O(tout__1_carry_i_29_n_0));
  LUT6 #(
    .INIT(64'h0AF3FFFF00000AF3)) 
    tout__1_carry_i_3
       (.I0(acmd[1]),
        .I1(acmd[0]),
        .I2(tout__1_carry_i_11_n_0),
        .I3(\sr_reg[15] [6]),
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
       (.I0(acmd[1]),
        .I1(acmd[0]),
        .I2(tout__1_carry_i_11_n_0),
        .I3(\sr_reg[15] [6]),
        .I4(abus_0[0]),
        .I5(tout__1_carry_i_12_n_0),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h0000FF20)) 
    tout__1_carry_i_8
       (.I0(acmd[2]),
        .I1(\iv[14]_i_12_n_0 ),
        .I2(tout__1_carry_i_13_n_0),
        .I3(tout__1_carry_i_14_n_0),
        .I4(acmd[0]),
        .O(tout__1_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    tout__1_carry_i_9
       (.I0(tout__1_carry_i_15_n_0),
        .I1(tout__1_carry_i_16_n_0),
        .I2(\stat_reg[1] ),
        .O(acmd[1]));
  LUT3 #(
    .INIT(8'h04)) 
    \tr[15]_i_1 
       (.I0(ctl_selc_rn[1]),
        .I1(ctl_selc_rn[2]),
        .I2(\tr[15]_i_2_n_0 ),
        .O(cbus_sel_cr[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \tr[15]_i_2 
       (.I0(\iv[15]_i_3_n_0 ),
        .I1(ctl_selc_rn[0]),
        .O(\tr[15]_i_2_n_0 ));
endmodule

module mcbs_fsm
   (\stat_reg[2]_0 ,
    Q,
    \iv_reg[0] ,
    \stat_reg[2]_1 ,
    \stat_reg[0]_0 ,
    \stat_reg[0]_1 ,
    \stat_reg[1]_0 ,
    \stat_reg[1]_1 ,
    \stat_reg[0]_2 ,
    \stat_reg[2]_2 ,
    brdy_0,
    \stat_reg[0]_3 ,
    \stat_reg[0]_4 ,
    \stat_reg[0]_5 ,
    \stat_reg[1]_2 ,
    \stat_reg[0]_6 ,
    \stat_reg[0]_7 ,
    \stat_reg[0]_8 ,
    D,
    \stat_reg[0]_9 ,
    \stat_reg[0]_10 ,
    \irq_vec[5] ,
    \stat_reg[2]_3 ,
    SR,
    \stat_reg[2]_4 ,
    \stat_reg[0]_11 ,
    irq,
    ctl_fetch_inferred_i_3,
    \stat_reg[2]_5 ,
    out,
    \stat[0]_i_5 ,
    fch_irq_req,
    brdy,
    \stat[0]_i_5_0 ,
    \stat_reg[1]_3 ,
    \stat_reg[1]_4 ,
    \iv[15]_i_33 ,
    \stat_reg[2]_6 ,
    \eir_fl_reg[1] ,
    cbus,
    \pc_reg[15] ,
    \pc_reg[15]_0 ,
    O,
    \eir_fl_reg[0] ,
    irq_vec,
    \eir_fl_reg[6] ,
    rst_n,
    p_0_in,
    \stat_reg[2]_7 ,
    clk);
  output \stat_reg[2]_0 ;
  output [2:0]Q;
  output \iv_reg[0] ;
  output \stat_reg[2]_1 ;
  output \stat_reg[0]_0 ;
  output \stat_reg[0]_1 ;
  output \stat_reg[1]_0 ;
  output \stat_reg[1]_1 ;
  output \stat_reg[0]_2 ;
  output \stat_reg[2]_2 ;
  output brdy_0;
  output \stat_reg[0]_3 ;
  output \stat_reg[0]_4 ;
  output \stat_reg[0]_5 ;
  output \stat_reg[1]_2 ;
  output \stat_reg[0]_6 ;
  output \stat_reg[0]_7 ;
  output \stat_reg[0]_8 ;
  output [0:0]D;
  output \stat_reg[0]_9 ;
  output \stat_reg[0]_10 ;
  output [5:0]\irq_vec[5] ;
  output \stat_reg[2]_3 ;
  output [0:0]SR;
  output \stat_reg[2]_4 ;
  output \stat_reg[0]_11 ;
  input irq;
  input ctl_fetch_inferred_i_3;
  input \stat_reg[2]_5 ;
  input [3:0]out;
  input [0:0]\stat[0]_i_5 ;
  input fch_irq_req;
  input brdy;
  input \stat[0]_i_5_0 ;
  input \stat_reg[1]_3 ;
  input \stat_reg[1]_4 ;
  input \iv[15]_i_33 ;
  input \stat_reg[2]_6 ;
  input \eir_fl_reg[1] ;
  input [0:0]cbus;
  input \pc_reg[15] ;
  input [0:0]\pc_reg[15]_0 ;
  input [0:0]O;
  input \eir_fl_reg[0] ;
  input [5:0]irq_vec;
  input [5:0]\eir_fl_reg[6] ;
  input rst_n;
  input p_0_in;
  input [2:0]\stat_reg[2]_7 ;
  input clk;

  wire \<const1> ;
  wire [0:0]D;
  wire [0:0]O;
  wire [2:0]Q;
  wire [0:0]SR;
  wire brdy;
  wire brdy_0;
  wire [0:0]cbus;
  wire clk;
  wire ctl_fetch_inferred_i_3;
  wire \eir_fl_reg[0] ;
  wire \eir_fl_reg[1] ;
  wire [5:0]\eir_fl_reg[6] ;
  wire fch_irq_req;
  wire irq;
  wire [5:0]irq_vec;
  wire [5:0]\irq_vec[5] ;
  wire \iv[15]_i_33 ;
  wire \iv_reg[0] ;
  wire [3:0]out;
  wire p_0_in;
  wire \pc_reg[15] ;
  wire [0:0]\pc_reg[15]_0 ;
  wire rst_n;
  wire \stat[0]_i_22_n_0 ;
  wire [0:0]\stat[0]_i_5 ;
  wire \stat[0]_i_5_0 ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[0]_10 ;
  wire \stat_reg[0]_11 ;
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
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_2 ;
  wire \stat_reg[2]_3 ;
  wire \stat_reg[2]_4 ;
  wire \stat_reg[2]_5 ;
  wire \stat_reg[2]_6 ;
  wire [2:0]\stat_reg[2]_7 ;

  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h0054)) 
    \badr[15]_INST_0_i_70 
       (.I0(\eir_fl_reg[1] ),
        .I1(Q[0]),
        .I2(fch_irq_req),
        .I3(Q[2]),
        .O(\stat_reg[0]_4 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \badrx[15]_INST_0_i_2 
       (.I0(out[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\stat_reg[2]_4 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[0]_INST_0_i_8 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\stat_reg[2]_2 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bcmd[2]_INST_0_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\stat_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0220)) 
    \bdatw[15]_INST_0_i_16 
       (.I0(Q[0]),
        .I1(\eir_fl_reg[1] ),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\stat_reg[0]_5 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \bdatw[8]_INST_0_i_30 
       (.I0(out[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\stat_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \ccmd[3]_INST_0_i_5 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(out[3]),
        .I4(out[2]),
        .I5(\iv[15]_i_33 ),
        .O(\stat_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_ext_fl_i_1
       (.I0(Q[0]),
        .I1(\stat_reg[1]_2 ),
        .O(\stat_reg[0]_11 ));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_inferred_i_26
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\stat_reg[0]_8 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    ctl_fetch_inferred_i_8
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(irq),
        .I3(ctl_fetch_inferred_i_3),
        .I4(\stat_reg[2]_5 ),
        .I5(out[1]),
        .O(\stat_reg[2]_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \eir_fl[15]_i_1 
       (.I0(\stat_reg[2]_3 ),
        .I1(rst_n),
        .I2(\eir_fl_reg[0] ),
        .O(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[1]_i_1 
       (.I0(irq_vec[0]),
        .I1(\stat_reg[2]_3 ),
        .I2(\eir_fl_reg[6] [0]),
        .O(\irq_vec[5] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[2]_i_1 
       (.I0(irq_vec[1]),
        .I1(\stat_reg[2]_3 ),
        .I2(\eir_fl_reg[6] [1]),
        .O(\irq_vec[5] [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[3]_i_1 
       (.I0(irq_vec[2]),
        .I1(\stat_reg[2]_3 ),
        .I2(\eir_fl_reg[6] [2]),
        .O(\irq_vec[5] [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[4]_i_1 
       (.I0(irq_vec[3]),
        .I1(\stat_reg[2]_3 ),
        .I2(\eir_fl_reg[6] [3]),
        .O(\irq_vec[5] [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[5]_i_1 
       (.I0(irq_vec[4]),
        .I1(\stat_reg[2]_3 ),
        .I2(\eir_fl_reg[6] [4]),
        .O(\irq_vec[5] [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[6]_i_2 
       (.I0(irq_vec[5]),
        .I1(\stat_reg[2]_3 ),
        .I2(\eir_fl_reg[6] [5]),
        .O(\irq_vec[5] [5]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \fch_irq_lev[1]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(fch_irq_req),
        .I4(\eir_fl_reg[1] ),
        .I5(brdy),
        .O(\stat_reg[2]_3 ));
  LUT4 #(
    .INIT(16'hAAEA)) 
    \iv[15]_i_11 
       (.I0(\stat_reg[0]_3 ),
        .I1(brdy),
        .I2(out[0]),
        .I3(\stat_reg[1]_0 ),
        .O(brdy_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \pc[15]_i_1 
       (.I0(cbus),
        .I1(\pc_reg[15] ),
        .I2(\stat_reg[0]_9 ),
        .I3(\pc_reg[15]_0 ),
        .I4(O),
        .I5(\stat_reg[0]_10 ),
        .O(D));
  LUT4 #(
    .INIT(16'h2220)) 
    \pc[15]_i_3 
       (.I0(\pc_reg[15] ),
        .I1(\eir_fl_reg[0] ),
        .I2(Q[0]),
        .I3(\stat_reg[1]_2 ),
        .O(\stat_reg[0]_9 ));
  LUT4 #(
    .INIT(16'h888A)) 
    \pc[15]_i_5 
       (.I0(\pc_reg[15] ),
        .I1(\eir_fl_reg[0] ),
        .I2(Q[0]),
        .I3(\stat_reg[1]_2 ),
        .O(\stat_reg[0]_10 ));
  LUT6 #(
    .INIT(64'h45404040FFFFFFFF)) 
    \stat[0]_i_12 
       (.I0(\stat[0]_i_22_n_0 ),
        .I1(\stat[0]_i_5 ),
        .I2(Q[0]),
        .I3(fch_irq_req),
        .I4(brdy),
        .I5(\stat[0]_i_5_0 ),
        .O(\iv_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \stat[0]_i_20 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(out[3]),
        .I4(out[2]),
        .I5(\iv[15]_i_33 ),
        .O(\stat_reg[0]_2 ));
  LUT2 #(
    .INIT(4'hE)) 
    \stat[0]_i_22 
       (.I0(Q[1]),
        .I1(\eir_fl_reg[1] ),
        .O(\stat[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[0]_i_25 
       (.I0(Q[0]),
        .I1(brdy),
        .O(\stat_reg[0]_7 ));
  LUT2 #(
    .INIT(4'h8)) 
    \stat[1]_i_15 
       (.I0(Q[0]),
        .I1(brdy),
        .O(\stat_reg[0]_6 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[1]_i_2 
       (.I0(Q[0]),
        .I1(\stat_reg[1]_2 ),
        .O(\stat_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \stat[1]_i_7 
       (.I0(\stat_reg[1]_0 ),
        .I1(out[0]),
        .I2(Q[0]),
        .I3(\stat_reg[1]_3 ),
        .I4(\stat_reg[1]_1 ),
        .I5(\stat_reg[1]_4 ),
        .O(\stat_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \stat[2]_i_4 
       (.I0(Q[1]),
        .I1(\stat_reg[2]_6 ),
        .I2(\stat_reg[2]_5 ),
        .I3(out[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\stat_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \stat[2]_i_5 
       (.I0(\eir_fl_reg[1] ),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\stat_reg[1]_2 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\stat_reg[2]_7 [0]),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\stat_reg[2]_7 [1]),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\stat_reg[2]_7 [2]),
        .Q(Q[2]),
        .R(p_0_in));
endmodule

module mcbs_mem
   (cbus,
    \read_cyc_reg[1] ,
    \read_cyc_reg[1]_0 ,
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
    bdatr,
    ctl_copro,
    cbus_i,
    alu_sr_flag,
    bcmd,
    brdy,
    p_0_in,
    clk,
    \read_cyc_reg[1]_7 ,
    \read_cyc_reg[0] );
  output [0:0]cbus;
  output [1:0]\read_cyc_reg[1] ;
  output \read_cyc_reg[1]_0 ;
  output \read_cyc_reg[1]_1 ;
  output \read_cyc_reg[1]_2 ;
  output \read_cyc_reg[1]_3 ;
  output \read_cyc_reg[1]_4 ;
  output \read_cyc_reg[1]_5 ;
  output \read_cyc_reg[1]_6 ;
  input [15:0]bdatr;
  input ctl_copro;
  input [15:0]cbus_i;
  input [0:0]alu_sr_flag;
  input [0:0]bcmd;
  input brdy;
  input p_0_in;
  input clk;
  input \read_cyc_reg[1]_7 ;
  input \read_cyc_reg[0] ;
  output cbus_i_7_sn_1;
  output cbus_i_6_sn_1;
  output cbus_i_5_sn_1;
  output cbus_i_4_sn_1;
  output cbus_i_3_sn_1;
  output cbus_i_2_sn_1;
  output cbus_i_1_sn_1;
  output cbus_i_0_sn_1;

  wire [0:0]alu_sr_flag;
  wire [0:0]bcmd;
  wire [15:0]bdatr;
  wire brdy;
  wire [0:0]cbus;
  wire [15:0]cbus_i;
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
  wire \read_cyc_reg[0] ;
  wire [1:0]\read_cyc_reg[1] ;
  wire \read_cyc_reg[1]_0 ;
  wire \read_cyc_reg[1]_1 ;
  wire \read_cyc_reg[1]_2 ;
  wire \read_cyc_reg[1]_3 ;
  wire \read_cyc_reg[1]_4 ;
  wire \read_cyc_reg[1]_5 ;
  wire \read_cyc_reg[1]_6 ;
  wire \read_cyc_reg[1]_7 ;

  mcbs_mem_bctl bctl
       (.alu_sr_flag(alu_sr_flag),
        .bcmd(bcmd),
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
        .\read_cyc_reg[0]_0 (\read_cyc_reg[1] [0]),
        .\read_cyc_reg[0]_1 (\read_cyc_reg[0] ),
        .\read_cyc_reg[1]_0 (\read_cyc_reg[1] [1]),
        .\read_cyc_reg[1]_1 (\read_cyc_reg[1]_0 ),
        .\read_cyc_reg[1]_2 (\read_cyc_reg[1]_1 ),
        .\read_cyc_reg[1]_3 (\read_cyc_reg[1]_2 ),
        .\read_cyc_reg[1]_4 (\read_cyc_reg[1]_3 ),
        .\read_cyc_reg[1]_5 (\read_cyc_reg[1]_4 ),
        .\read_cyc_reg[1]_6 (\read_cyc_reg[1]_5 ),
        .\read_cyc_reg[1]_7 (\read_cyc_reg[1]_6 ),
        .\read_cyc_reg[1]_8 (\read_cyc_reg[1]_7 ));
endmodule

module mcbs_mem_bctl
   (cbus,
    \read_cyc_reg[1]_0 ,
    \read_cyc_reg[1]_1 ,
    \read_cyc_reg[1]_2 ,
    \read_cyc_reg[1]_3 ,
    \read_cyc_reg[1]_4 ,
    \read_cyc_reg[1]_5 ,
    \read_cyc_reg[1]_6 ,
    \read_cyc_reg[1]_7 ,
    .cbus_i_7_sp_1(cbus_i_7_sn_1),
    .cbus_i_6_sp_1(cbus_i_6_sn_1),
    .cbus_i_5_sp_1(cbus_i_5_sn_1),
    .cbus_i_4_sp_1(cbus_i_4_sn_1),
    .cbus_i_3_sp_1(cbus_i_3_sn_1),
    .cbus_i_2_sp_1(cbus_i_2_sn_1),
    .cbus_i_1_sp_1(cbus_i_1_sn_1),
    .cbus_i_0_sp_1(cbus_i_0_sn_1),
    \read_cyc_reg[0]_0 ,
    bdatr,
    ctl_copro,
    cbus_i,
    alu_sr_flag,
    bcmd,
    brdy,
    p_0_in,
    clk,
    \read_cyc_reg[1]_8 ,
    \read_cyc_reg[0]_1 );
  output [0:0]cbus;
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
  input ctl_copro;
  input [15:0]cbus_i;
  input [0:0]alu_sr_flag;
  input [0:0]bcmd;
  input brdy;
  input p_0_in;
  input clk;
  input \read_cyc_reg[1]_8 ;
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
  wire [0:0]alu_sr_flag;
  wire [0:0]bcmd;
  wire [15:0]bdatr;
  wire brdy;
  wire [0:0]cbus;
  wire [15:0]cbus_i;
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
  wire \iv[1]_i_9_n_0 ;
  wire \iv[2]_i_9_n_0 ;
  wire \iv[3]_i_9_n_0 ;
  wire \iv[4]_i_9_n_0 ;
  wire \iv[5]_i_9_n_0 ;
  wire \iv[6]_i_8_n_0 ;
  wire \iv[7]_i_9_n_0 ;
  wire p_0_in;
  wire [2:2]read_cyc;
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
  wire \read_cyc_reg[1]_8 ;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[0]_i_3 
       (.I0(\iv[0]_i_8_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[0]),
        .I3(bdatr[0]),
        .I4(read_cyc),
        .I5(\read_cyc_reg[1]_0 ),
        .O(cbus_i_0_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[0]_i_8 
       (.I0(bdatr[8]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[0]),
        .I3(\read_cyc_reg[1]_0 ),
        .I4(read_cyc),
        .O(\iv[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[10]_i_3 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(read_cyc),
        .I2(bdatr[10]),
        .I3(cbus_i[10]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_5 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[11]_i_3 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(read_cyc),
        .I2(bdatr[11]),
        .I3(cbus_i[11]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_4 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[12]_i_3 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(read_cyc),
        .I2(bdatr[12]),
        .I3(cbus_i[12]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_3 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[13]_i_3 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(read_cyc),
        .I2(bdatr[13]),
        .I3(cbus_i[13]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[14]_i_4 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(read_cyc),
        .I2(bdatr[14]),
        .I3(cbus_i[14]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF404040)) 
    \iv[15]_i_2 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(read_cyc),
        .I2(bdatr[15]),
        .I3(ctl_copro),
        .I4(cbus_i[15]),
        .I5(alu_sr_flag),
        .O(cbus));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[1]_i_3 
       (.I0(\iv[1]_i_9_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[1]),
        .I3(bdatr[1]),
        .I4(read_cyc),
        .I5(\read_cyc_reg[1]_0 ),
        .O(cbus_i_1_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[1]_i_9 
       (.I0(bdatr[9]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[1]),
        .I3(\read_cyc_reg[1]_0 ),
        .I4(read_cyc),
        .O(\iv[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[2]_i_3 
       (.I0(\iv[2]_i_9_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[2]),
        .I3(bdatr[2]),
        .I4(read_cyc),
        .I5(\read_cyc_reg[1]_0 ),
        .O(cbus_i_2_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[2]_i_9 
       (.I0(bdatr[10]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[2]),
        .I3(\read_cyc_reg[1]_0 ),
        .I4(read_cyc),
        .O(\iv[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[3]_i_3 
       (.I0(\iv[3]_i_9_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[3]),
        .I3(bdatr[3]),
        .I4(read_cyc),
        .I5(\read_cyc_reg[1]_0 ),
        .O(cbus_i_3_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[3]_i_9 
       (.I0(bdatr[11]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[3]),
        .I3(\read_cyc_reg[1]_0 ),
        .I4(read_cyc),
        .O(\iv[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[4]_i_3 
       (.I0(\iv[4]_i_9_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[4]),
        .I3(bdatr[4]),
        .I4(read_cyc),
        .I5(\read_cyc_reg[1]_0 ),
        .O(cbus_i_4_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[4]_i_9 
       (.I0(bdatr[12]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[4]),
        .I3(\read_cyc_reg[1]_0 ),
        .I4(read_cyc),
        .O(\iv[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[5]_i_3 
       (.I0(\iv[5]_i_9_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[5]),
        .I3(bdatr[5]),
        .I4(read_cyc),
        .I5(\read_cyc_reg[1]_0 ),
        .O(cbus_i_5_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[5]_i_9 
       (.I0(bdatr[13]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[5]),
        .I3(\read_cyc_reg[1]_0 ),
        .I4(read_cyc),
        .O(\iv[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[6]_i_3 
       (.I0(\iv[6]_i_8_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[6]),
        .I3(bdatr[6]),
        .I4(read_cyc),
        .I5(\read_cyc_reg[1]_0 ),
        .O(cbus_i_6_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[6]_i_8 
       (.I0(bdatr[14]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[6]),
        .I3(\read_cyc_reg[1]_0 ),
        .I4(read_cyc),
        .O(\iv[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \iv[7]_i_3 
       (.I0(\iv[7]_i_9_n_0 ),
        .I1(ctl_copro),
        .I2(cbus_i[7]),
        .I3(bdatr[7]),
        .I4(read_cyc),
        .I5(\read_cyc_reg[1]_0 ),
        .O(cbus_i_7_sn_1));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \iv[7]_i_9 
       (.I0(bdatr[15]),
        .I1(\read_cyc_reg[0]_0 ),
        .I2(bdatr[7]),
        .I3(\read_cyc_reg[1]_0 ),
        .I4(read_cyc),
        .O(\iv[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[8]_i_3 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(read_cyc),
        .I2(bdatr[8]),
        .I3(cbus_i[8]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_7 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[9]_i_3 
       (.I0(\read_cyc_reg[1]_0 ),
        .I1(read_cyc),
        .I2(bdatr[9]),
        .I3(cbus_i[9]),
        .I4(ctl_copro),
        .O(\read_cyc_reg[1]_6 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \read_cyc[2]_i_1 
       (.I0(bcmd),
        .I1(brdy),
        .I2(read_cyc),
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
        .D(\read_cyc_reg[1]_8 ),
        .Q(\read_cyc_reg[1]_0 ),
        .R(p_0_in));
  FDRE \read_cyc_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc[2]_i_1_n_0 ),
        .Q(read_cyc),
        .R(p_0_in));
endmodule

module mcbs_rgf
   (out,
    \grn_reg[15] ,
    \grn_reg[15]_0 ,
    \grn_reg[15]_1 ,
    \grn_reg[15]_2 ,
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
    \sr_reg[15] ,
    \pc_reg[15] ,
    \sp_reg[15] ,
    \iv_reg[15] ,
    \tr_reg[15] ,
    \stat_reg[0] ,
    p_0_in,
    sp_dec_0,
    O,
    \sp_reg[1] ,
    \sp_reg[7] ,
    \sp_reg[11] ,
    \sp_reg[15]_0 ,
    \grn_reg[15]_14 ,
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
    \grn_reg[15]_15 ,
    \pc_reg[15]_0 ,
    \tr_reg[0] ,
    \iv_reg[0] ,
    fch_irq_req,
    fch_pc,
    p_0_in_0,
    clk,
    \sr_reg[1] ,
    Q,
    irq,
    irq_lev,
    rst_n,
    \badr[1]_INST_0_i_7 ,
    ctl_sela_rn,
    \badr[0]_INST_0_i_5 ,
    \badr[0]_INST_0_i_1 ,
    \badr[0]_INST_0_i_1_0 ,
    \badr[1]_INST_0_i_7_0 ,
    \badr[15]_INST_0_i_2 ,
    \badr[0]_INST_0_i_1_1 ,
    \badr[0]_INST_0_i_1_2 ,
    \bdatw[8]_INST_0_i_7 ,
    \bdatw[8]_INST_0_i_7_0 ,
    D,
    \sp_reg[15]_1 ,
    cbus_sel_cr,
    \tr_reg[15]_0 ,
    E,
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
    \grn_reg[15]_30 );
  output [15:0]out;
  output [15:0]\grn_reg[15] ;
  output [15:0]\grn_reg[15]_0 ;
  output [15:0]\grn_reg[15]_1 ;
  output [15:0]\grn_reg[15]_2 ;
  output [15:0]\grn_reg[15]_3 ;
  output [15:0]\grn_reg[15]_4 ;
  output [15:0]\grn_reg[15]_5 ;
  output [15:0]\grn_reg[15]_6 ;
  output [15:0]\grn_reg[15]_7 ;
  output [15:0]\grn_reg[15]_8 ;
  output [15:0]\grn_reg[15]_9 ;
  output [15:0]\grn_reg[15]_10 ;
  output [15:0]\grn_reg[15]_11 ;
  output [15:0]\grn_reg[15]_12 ;
  output [15:0]\grn_reg[15]_13 ;
  output [15:0]\sr_reg[15] ;
  output [15:0]\pc_reg[15] ;
  output [15:0]\sp_reg[15] ;
  output [15:0]\iv_reg[15] ;
  output [15:0]\tr_reg[15] ;
  output \stat_reg[0] ;
  output p_0_in;
  output [14:0]sp_dec_0;
  output [0:0]O;
  output [2:0]\sp_reg[1] ;
  output [3:0]\sp_reg[7] ;
  output [3:0]\sp_reg[11] ;
  output [3:0]\sp_reg[15]_0 ;
  output \grn_reg[15]_14 ;
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
  output \grn_reg[15]_15 ;
  output \pc_reg[15]_0 ;
  output \tr_reg[0] ;
  output \iv_reg[0] ;
  output fch_irq_req;
  output [15:0]fch_pc;
  input [11:0]p_0_in_0;
  input clk;
  input \sr_reg[1] ;
  input [0:0]Q;
  input irq;
  input [1:0]irq_lev;
  input rst_n;
  input \badr[1]_INST_0_i_7 ;
  input [2:0]ctl_sela_rn;
  input \badr[0]_INST_0_i_5 ;
  input \badr[0]_INST_0_i_1 ;
  input \badr[0]_INST_0_i_1_0 ;
  input \badr[1]_INST_0_i_7_0 ;
  input \badr[15]_INST_0_i_2 ;
  input \badr[0]_INST_0_i_1_1 ;
  input \badr[0]_INST_0_i_1_2 ;
  input \bdatw[8]_INST_0_i_7 ;
  input \bdatw[8]_INST_0_i_7_0 ;
  input [15:0]D;
  input [15:0]\sp_reg[15]_1 ;
  input [1:0]cbus_sel_cr;
  input [15:0]\tr_reg[15]_0 ;
  input [0:0]E;
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

  wire [15:0]D;
  wire [0:0]E;
  wire [0:0]O;
  wire [0:0]Q;
  wire \badr[0]_INST_0_i_1 ;
  wire \badr[0]_INST_0_i_1_0 ;
  wire \badr[0]_INST_0_i_1_1 ;
  wire \badr[0]_INST_0_i_1_2 ;
  wire \badr[0]_INST_0_i_5 ;
  wire \badr[15]_INST_0_i_2 ;
  wire \badr[1]_INST_0_i_7 ;
  wire \badr[1]_INST_0_i_7_0 ;
  wire bank02_n_144;
  wire \bdatw[8]_INST_0_i_7 ;
  wire \bdatw[8]_INST_0_i_7_0 ;
  wire [1:0]cbus_sel_cr;
  wire clk;
  wire [2:0]ctl_sela_rn;
  wire fch_irq_req;
  wire [15:0]fch_pc;
  wire \grn_reg[0] ;
  wire \grn_reg[10] ;
  wire \grn_reg[11] ;
  wire \grn_reg[12] ;
  wire \grn_reg[13] ;
  wire \grn_reg[14] ;
  wire [15:0]\grn_reg[15] ;
  wire [15:0]\grn_reg[15]_0 ;
  wire [15:0]\grn_reg[15]_1 ;
  wire [15:0]\grn_reg[15]_10 ;
  wire [15:0]\grn_reg[15]_11 ;
  wire [15:0]\grn_reg[15]_12 ;
  wire [15:0]\grn_reg[15]_13 ;
  wire \grn_reg[15]_14 ;
  wire \grn_reg[15]_15 ;
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
  wire [15:0]\grn_reg[15]_4 ;
  wire [15:0]\grn_reg[15]_5 ;
  wire [15:0]\grn_reg[15]_6 ;
  wire [15:0]\grn_reg[15]_7 ;
  wire [15:0]\grn_reg[15]_8 ;
  wire [15:0]\grn_reg[15]_9 ;
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
  wire \iv_reg[0] ;
  wire [15:0]\iv_reg[15] ;
  wire [15:0]out;
  wire p_0_in;
  wire [11:0]p_0_in_0;
  wire [15:0]\pc_reg[15] ;
  wire \pc_reg[15]_0 ;
  wire rst_n;
  wire [14:0]sp_dec_0;
  wire [3:0]\sp_reg[11] ;
  wire [15:0]\sp_reg[15] ;
  wire [3:0]\sp_reg[15]_0 ;
  wire [15:0]\sp_reg[15]_1 ;
  wire [2:0]\sp_reg[1] ;
  wire [3:0]\sp_reg[7] ;
  wire [15:0]\sr_reg[15] ;
  wire \sr_reg[1] ;
  wire sreg_n_18;
  wire \stat_reg[0] ;
  wire \tr_reg[0] ;
  wire [15:0]\tr_reg[15] ;
  wire [15:0]\tr_reg[15]_0 ;

  mcbs_rgf_bank bank02
       (.E(E),
        .SR(p_0_in),
        .\badr[0]_INST_0_i_5 (\badr[0]_INST_0_i_5 ),
        .\badr[1]_INST_0_i_7 (\sr_reg[15] [0]),
        .\badr[1]_INST_0_i_7_0 (\badr[1]_INST_0_i_7 ),
        .\badr[1]_INST_0_i_7_1 (\badr[1]_INST_0_i_7_0 ),
        .clk(clk),
        .ctl_sela_rn(ctl_sela_rn[0]),
        .\grn_reg[0] (bank02_n_144),
        .\grn_reg[10] (\grn_reg[10] ),
        .\grn_reg[11] (\grn_reg[11] ),
        .\grn_reg[12] (\grn_reg[12] ),
        .\grn_reg[13] (\grn_reg[13] ),
        .\grn_reg[14] (\grn_reg[14] ),
        .\grn_reg[15] (\grn_reg[15] ),
        .\grn_reg[15]_0 (\grn_reg[15]_0 ),
        .\grn_reg[15]_1 (\grn_reg[15]_1 ),
        .\grn_reg[15]_10 (\grn_reg[15]_18 ),
        .\grn_reg[15]_11 (\grn_reg[15]_19 ),
        .\grn_reg[15]_12 (\grn_reg[15]_20 ),
        .\grn_reg[15]_13 (\grn_reg[15]_21 ),
        .\grn_reg[15]_14 (\grn_reg[15]_22 ),
        .\grn_reg[15]_2 (\grn_reg[15]_2 ),
        .\grn_reg[15]_3 (\grn_reg[15]_3 ),
        .\grn_reg[15]_4 (\grn_reg[15]_4 ),
        .\grn_reg[15]_5 (\grn_reg[15]_5 ),
        .\grn_reg[15]_6 (\grn_reg[15]_15 ),
        .\grn_reg[15]_7 (\tr_reg[15]_0 ),
        .\grn_reg[15]_8 (\grn_reg[15]_16 ),
        .\grn_reg[15]_9 (\grn_reg[15]_17 ),
        .\grn_reg[1] (\grn_reg[1] ),
        .\grn_reg[2] (\grn_reg[2] ),
        .\grn_reg[3] (\grn_reg[3] ),
        .\grn_reg[4] (\grn_reg[4] ),
        .\grn_reg[5] (\grn_reg[5] ),
        .\grn_reg[6] (\grn_reg[6] ),
        .\grn_reg[7] (\grn_reg[7] ),
        .\grn_reg[8] (\grn_reg[8] ),
        .\grn_reg[9] (\grn_reg[9] ),
        .out(out),
        .rst_n(rst_n));
  mcbs_rgf_bank_0 bank13
       (.SR(p_0_in),
        .\badr[0]_INST_0_i_1 (\badr[0]_INST_0_i_1 ),
        .\badr[0]_INST_0_i_1_0 (\badr[0]_INST_0_i_1_0 ),
        .\badr[0]_INST_0_i_1_1 (bank02_n_144),
        .\badr[0]_INST_0_i_5_0 (\badr[1]_INST_0_i_7_0 ),
        .\badr[15]_INST_0_i_2 (\badr[1]_INST_0_i_7 ),
        .\badr[15]_INST_0_i_2_0 (\badr[0]_INST_0_i_5 ),
        .clk(clk),
        .ctl_sela_rn(ctl_sela_rn[0]),
        .\grn_reg[0] (\grn_reg[0] ),
        .\grn_reg[15] (\grn_reg[15]_6 ),
        .\grn_reg[15]_0 (\grn_reg[15]_7 ),
        .\grn_reg[15]_1 (\grn_reg[15]_8 ),
        .\grn_reg[15]_10 (\grn_reg[15]_24 ),
        .\grn_reg[15]_11 (\grn_reg[15]_25 ),
        .\grn_reg[15]_12 (\grn_reg[15]_26 ),
        .\grn_reg[15]_13 (\grn_reg[15]_27 ),
        .\grn_reg[15]_14 (\grn_reg[15]_28 ),
        .\grn_reg[15]_15 (\grn_reg[15]_29 ),
        .\grn_reg[15]_16 (\grn_reg[15]_30 ),
        .\grn_reg[15]_2 (\grn_reg[15]_9 ),
        .\grn_reg[15]_3 (\grn_reg[15]_10 ),
        .\grn_reg[15]_4 (\grn_reg[15]_11 ),
        .\grn_reg[15]_5 (\grn_reg[15]_12 ),
        .\grn_reg[15]_6 (\grn_reg[15]_13 ),
        .\grn_reg[15]_7 (\grn_reg[15]_14 ),
        .\grn_reg[15]_8 (\grn_reg[15]_23 ),
        .\grn_reg[15]_9 (\tr_reg[15]_0 ),
        .out(\sr_reg[15] [0]));
  mcbs_rgf_ivec ivec
       (.SR(p_0_in),
        .\bdatw[8]_INST_0_i_7 (\bdatw[8]_INST_0_i_7 ),
        .\bdatw[8]_INST_0_i_7_0 (\tr_reg[15] [0]),
        .\bdatw[8]_INST_0_i_7_1 (\bdatw[8]_INST_0_i_7_0 ),
        .cbus_sel_cr(cbus_sel_cr[0]),
        .clk(clk),
        .\iv_reg[0]_0 (\iv_reg[0] ),
        .\iv_reg[15]_0 (\iv_reg[15] ),
        .\iv_reg[15]_1 (\tr_reg[15]_0 ));
  mcbs_rgf_pcnt pcnt
       (.D(D),
        .S(sreg_n_18),
        .SR(p_0_in),
        .\badr[15]_INST_0_i_2 (\iv_reg[15] [15]),
        .\badr[15]_INST_0_i_2_0 (\badr[15]_INST_0_i_2 ),
        .clk(clk),
        .ctl_sela_rn(ctl_sela_rn[2:1]),
        .fch_pc(fch_pc),
        .\pc_reg[15]_0 (\pc_reg[15] ),
        .\pc_reg[15]_1 (\pc_reg[15]_0 ),
        .sp_dec_0(sp_dec_0[14]));
  mcbs_rgf_sptr sptr
       (.O(O),
        .SR(p_0_in),
        .clk(clk),
        .sp_dec_0(sp_dec_0),
        .\sp_reg[11]_0 (\sp_reg[11] ),
        .\sp_reg[15]_0 (\sp_reg[15] ),
        .\sp_reg[15]_1 (\sp_reg[15]_0 ),
        .\sp_reg[15]_2 (\sp_reg[15]_1 ),
        .\sp_reg[1]_0 (\sp_reg[1] ),
        .\sp_reg[7]_0 (\sp_reg[7] ));
  mcbs_rgf_sreg sreg
       (.Q(Q),
        .S(sreg_n_18),
        .clk(clk),
        .fch_irq_req(fch_irq_req),
        .irq(irq),
        .irq_lev(irq_lev),
        .p_0_in_0(p_0_in_0),
        .\pc_reg[3]_i_2 (\pc_reg[15] [1]),
        .\sr_reg[15]_0 (\sr_reg[15] ),
        .\sr_reg[1]_0 (\sr_reg[1] ),
        .\stat_reg[0] (\stat_reg[0] ));
  mcbs_rgf_treg treg
       (.SR(p_0_in),
        .\badr[0]_INST_0_i_1 (\badr[0]_INST_0_i_1_1 ),
        .\badr[0]_INST_0_i_1_0 (\iv_reg[15] [0]),
        .\badr[0]_INST_0_i_1_1 (\badr[0]_INST_0_i_1_2 ),
        .cbus_sel_cr(cbus_sel_cr[1]),
        .clk(clk),
        .\tr_reg[0]_0 (\tr_reg[0] ),
        .\tr_reg[15]_0 (\tr_reg[15] ),
        .\tr_reg[15]_1 (\tr_reg[15]_0 ));
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
    \grn_reg[15]_6 ,
    \grn_reg[0] ,
    rst_n,
    \badr[1]_INST_0_i_7 ,
    \badr[1]_INST_0_i_7_0 ,
    ctl_sela_rn,
    \badr[1]_INST_0_i_7_1 ,
    \badr[0]_INST_0_i_5 ,
    E,
    \grn_reg[15]_7 ,
    clk,
    \grn_reg[15]_8 ,
    \grn_reg[15]_9 ,
    \grn_reg[15]_10 ,
    \grn_reg[15]_11 ,
    \grn_reg[15]_12 ,
    \grn_reg[15]_13 ,
    \grn_reg[15]_14 );
  output [0:0]SR;
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
  output \grn_reg[15]_6 ;
  output \grn_reg[0] ;
  input rst_n;
  input [0:0]\badr[1]_INST_0_i_7 ;
  input \badr[1]_INST_0_i_7_0 ;
  input [0:0]ctl_sela_rn;
  input \badr[1]_INST_0_i_7_1 ;
  input \badr[0]_INST_0_i_5 ;
  input [0:0]E;
  input [15:0]\grn_reg[15]_7 ;
  input clk;
  input [0:0]\grn_reg[15]_8 ;
  input [0:0]\grn_reg[15]_9 ;
  input [0:0]\grn_reg[15]_10 ;
  input [0:0]\grn_reg[15]_11 ;
  input [0:0]\grn_reg[15]_12 ;
  input [0:0]\grn_reg[15]_13 ;
  input [0:0]\grn_reg[15]_14 ;
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
  wire \badr[0]_INST_0_i_5 ;
  wire [0:0]\badr[1]_INST_0_i_7 ;
  wire \badr[1]_INST_0_i_7_0 ;
  wire \badr[1]_INST_0_i_7_1 ;
  wire clk;
  wire [0:0]ctl_sela_rn;
  (* DONT_TOUCH *) wire [15:0]gr00;
  (* DONT_TOUCH *) wire [15:0]gr01;
  (* DONT_TOUCH *) wire [15:0]gr02;
  (* DONT_TOUCH *) wire [15:0]gr03;
  (* DONT_TOUCH *) wire [15:0]gr04;
  (* DONT_TOUCH *) wire [15:0]gr05;
  (* DONT_TOUCH *) wire [15:0]gr06;
  (* DONT_TOUCH *) wire [15:0]gr07;
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
  wire \grn_reg[15]_6 ;
  wire [15:0]\grn_reg[15]_7 ;
  wire [0:0]\grn_reg[15]_8 ;
  wire [0:0]\grn_reg[15]_9 ;
  wire \grn_reg[1] ;
  wire \grn_reg[2] ;
  wire \grn_reg[3] ;
  wire \grn_reg[4] ;
  wire \grn_reg[5] ;
  wire \grn_reg[6] ;
  wire \grn_reg[7] ;
  wire \grn_reg[8] ;
  wire \grn_reg[9] ;
  wire rst_n;

  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \badr[0]_INST_0_i_9 
       (.I0(gr07[0]),
        .I1(gr06[0]),
        .I2(\badr[1]_INST_0_i_7 ),
        .I3(\badr[1]_INST_0_i_7_0 ),
        .I4(ctl_sela_rn),
        .I5(\badr[0]_INST_0_i_5 ),
        .O(\grn_reg[0] ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \badr[10]_INST_0_i_10 
       (.I0(gr03[10]),
        .I1(gr02[10]),
        .I2(\badr[1]_INST_0_i_7 ),
        .I3(\badr[1]_INST_0_i_7_0 ),
        .I4(ctl_sela_rn),
        .I5(\badr[1]_INST_0_i_7_1 ),
        .O(\grn_reg[10] ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \badr[11]_INST_0_i_11 
       (.I0(gr03[11]),
        .I1(gr02[11]),
        .I2(\badr[1]_INST_0_i_7 ),
        .I3(\badr[1]_INST_0_i_7_0 ),
        .I4(ctl_sela_rn),
        .I5(\badr[1]_INST_0_i_7_1 ),
        .O(\grn_reg[11] ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \badr[12]_INST_0_i_10 
       (.I0(gr03[12]),
        .I1(gr02[12]),
        .I2(\badr[1]_INST_0_i_7 ),
        .I3(\badr[1]_INST_0_i_7_0 ),
        .I4(ctl_sela_rn),
        .I5(\badr[1]_INST_0_i_7_1 ),
        .O(\grn_reg[12] ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \badr[13]_INST_0_i_10 
       (.I0(gr03[13]),
        .I1(gr02[13]),
        .I2(\badr[1]_INST_0_i_7 ),
        .I3(\badr[1]_INST_0_i_7_0 ),
        .I4(ctl_sela_rn),
        .I5(\badr[1]_INST_0_i_7_1 ),
        .O(\grn_reg[13] ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \badr[14]_INST_0_i_19 
       (.I0(gr03[14]),
        .I1(gr02[14]),
        .I2(\badr[1]_INST_0_i_7 ),
        .I3(\badr[1]_INST_0_i_7_0 ),
        .I4(ctl_sela_rn),
        .I5(\badr[1]_INST_0_i_7_1 ),
        .O(\grn_reg[14] ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \badr[1]_INST_0_i_10 
       (.I0(gr03[1]),
        .I1(gr02[1]),
        .I2(\badr[1]_INST_0_i_7 ),
        .I3(\badr[1]_INST_0_i_7_0 ),
        .I4(ctl_sela_rn),
        .I5(\badr[1]_INST_0_i_7_1 ),
        .O(\grn_reg[1] ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \badr[2]_INST_0_i_10 
       (.I0(gr03[2]),
        .I1(gr02[2]),
        .I2(\badr[1]_INST_0_i_7 ),
        .I3(\badr[1]_INST_0_i_7_0 ),
        .I4(ctl_sela_rn),
        .I5(\badr[1]_INST_0_i_7_1 ),
        .O(\grn_reg[2] ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \badr[3]_INST_0_i_10 
       (.I0(gr03[3]),
        .I1(gr02[3]),
        .I2(\badr[1]_INST_0_i_7 ),
        .I3(\badr[1]_INST_0_i_7_0 ),
        .I4(ctl_sela_rn),
        .I5(\badr[1]_INST_0_i_7_1 ),
        .O(\grn_reg[3] ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \badr[4]_INST_0_i_10 
       (.I0(gr03[4]),
        .I1(gr02[4]),
        .I2(\badr[1]_INST_0_i_7 ),
        .I3(\badr[1]_INST_0_i_7_0 ),
        .I4(ctl_sela_rn),
        .I5(\badr[1]_INST_0_i_7_1 ),
        .O(\grn_reg[4] ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \badr[5]_INST_0_i_10 
       (.I0(gr03[5]),
        .I1(gr02[5]),
        .I2(\badr[1]_INST_0_i_7 ),
        .I3(\badr[1]_INST_0_i_7_0 ),
        .I4(ctl_sela_rn),
        .I5(\badr[1]_INST_0_i_7_1 ),
        .O(\grn_reg[5] ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \badr[6]_INST_0_i_10 
       (.I0(gr03[6]),
        .I1(gr02[6]),
        .I2(\badr[1]_INST_0_i_7 ),
        .I3(\badr[1]_INST_0_i_7_0 ),
        .I4(ctl_sela_rn),
        .I5(\badr[1]_INST_0_i_7_1 ),
        .O(\grn_reg[6] ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \badr[7]_INST_0_i_11 
       (.I0(gr03[7]),
        .I1(gr02[7]),
        .I2(\badr[1]_INST_0_i_7 ),
        .I3(\badr[1]_INST_0_i_7_0 ),
        .I4(ctl_sela_rn),
        .I5(\badr[1]_INST_0_i_7_1 ),
        .O(\grn_reg[7] ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \badr[8]_INST_0_i_10 
       (.I0(gr03[8]),
        .I1(gr02[8]),
        .I2(\badr[1]_INST_0_i_7 ),
        .I3(\badr[1]_INST_0_i_7_0 ),
        .I4(ctl_sela_rn),
        .I5(\badr[1]_INST_0_i_7_1 ),
        .O(\grn_reg[8] ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \badr[9]_INST_0_i_10 
       (.I0(gr03[9]),
        .I1(gr02[9]),
        .I2(\badr[1]_INST_0_i_7 ),
        .I3(\badr[1]_INST_0_i_7_0 ),
        .I4(ctl_sela_rn),
        .I5(\badr[1]_INST_0_i_7_1 ),
        .O(\grn_reg[9] ));
  mcbs_rgf_grn_8 grn00
       (.E(E),
        .Q(gr00),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_7 ),
        .rst_n(rst_n));
  mcbs_rgf_grn_9 grn01
       (.Q(gr01),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_8 ),
        .\grn_reg[15]_1 (\grn_reg[15]_7 ));
  mcbs_rgf_grn_10 grn02
       (.Q(gr02),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_9 ),
        .\grn_reg[15]_1 (\grn_reg[15]_7 ));
  mcbs_rgf_grn_11 grn03
       (.Q(gr03),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_10 ),
        .\grn_reg[15]_1 (\grn_reg[15]_7 ));
  mcbs_rgf_grn_12 grn04
       (.Q(gr04),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_11 ),
        .\grn_reg[15]_1 (\grn_reg[15]_7 ));
  mcbs_rgf_grn_13 grn05
       (.Q(gr05),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_12 ),
        .\grn_reg[15]_1 (\grn_reg[15]_7 ));
  mcbs_rgf_grn_14 grn06
       (.Q(gr06),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_13 ),
        .\grn_reg[15]_1 (\grn_reg[15]_7 ));
  mcbs_rgf_grn_15 grn07
       (.Q(gr07),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_14 ),
        .\grn_reg[15]_1 (\grn_reg[15]_7 ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \iv[4]_i_16 
       (.I0(gr03[15]),
        .I1(gr02[15]),
        .I2(\badr[1]_INST_0_i_7 ),
        .I3(\badr[1]_INST_0_i_7_0 ),
        .I4(ctl_sela_rn),
        .I5(\badr[1]_INST_0_i_7_1 ),
        .O(\grn_reg[15]_6 ));
endmodule

(* ORIG_REF_NAME = "mcbs_rgf_bank" *) 
module mcbs_rgf_bank_0
   (.\grn_reg[15] ({gr00[15],gr00[14],gr00[13],gr00[12],gr00[11],gr00[10],gr00[9],gr00[8],gr00[7],gr00[6],gr00[5],gr00[4],gr00[3],gr00[2],gr00[1],gr00[0]}),
    .\grn_reg[15]_0 ({gr01[15],gr01[14],gr01[13],gr01[12],gr01[11],gr01[10],gr01[9],gr01[8],gr01[7],gr01[6],gr01[5],gr01[4],gr01[3],gr01[2],gr01[1],gr01[0]}),
    .\grn_reg[15]_1 ({gr02[15],gr02[14],gr02[13],gr02[12],gr02[11],gr02[10],gr02[9],gr02[8],gr02[7],gr02[6],gr02[5],gr02[4],gr02[3],gr02[2],gr02[1],gr02[0]}),
    .\grn_reg[15]_2 ({gr03[15],gr03[14],gr03[13],gr03[12],gr03[11],gr03[10],gr03[9],gr03[8],gr03[7],gr03[6],gr03[5],gr03[4],gr03[3],gr03[2],gr03[1],gr03[0]}),
    .\grn_reg[15]_3 ({gr04[15],gr04[14],gr04[13],gr04[12],gr04[11],gr04[10],gr04[9],gr04[8],gr04[7],gr04[6],gr04[5],gr04[4],gr04[3],gr04[2],gr04[1],gr04[0]}),
    .\grn_reg[15]_4 ({gr05[15],gr05[14],gr05[13],gr05[12],gr05[11],gr05[10],gr05[9],gr05[8],gr05[7],gr05[6],gr05[5],gr05[4],gr05[3],gr05[2],gr05[1],gr05[0]}),
    .\grn_reg[15]_5 ({gr06[15],gr06[14],gr06[13],gr06[12],gr06[11],gr06[10],gr06[9],gr06[8],gr06[7],gr06[6],gr06[5],gr06[4],gr06[3],gr06[2],gr06[1],gr06[0]}),
    .\grn_reg[15]_6 ({gr07[15],gr07[14],gr07[13],gr07[12],gr07[11],gr07[10],gr07[9],gr07[8],gr07[7],gr07[6],gr07[5],gr07[4],gr07[3],gr07[2],gr07[1],gr07[0]}),
    \grn_reg[15]_7 ,
    \grn_reg[0] ,
    out,
    \badr[15]_INST_0_i_2 ,
    ctl_sela_rn,
    \badr[15]_INST_0_i_2_0 ,
    \badr[0]_INST_0_i_1 ,
    \badr[0]_INST_0_i_1_0 ,
    \badr[0]_INST_0_i_1_1 ,
    \badr[0]_INST_0_i_5_0 ,
    SR,
    \grn_reg[15]_8 ,
    \grn_reg[15]_9 ,
    clk,
    \grn_reg[15]_10 ,
    \grn_reg[15]_11 ,
    \grn_reg[15]_12 ,
    \grn_reg[15]_13 ,
    \grn_reg[15]_14 ,
    \grn_reg[15]_15 ,
    \grn_reg[15]_16 );
  output \grn_reg[15]_7 ;
  output \grn_reg[0] ;
  input [0:0]out;
  input \badr[15]_INST_0_i_2 ;
  input [0:0]ctl_sela_rn;
  input \badr[15]_INST_0_i_2_0 ;
  input \badr[0]_INST_0_i_1 ;
  input \badr[0]_INST_0_i_1_0 ;
  input \badr[0]_INST_0_i_1_1 ;
  input \badr[0]_INST_0_i_5_0 ;
  input [0:0]SR;
  input [0:0]\grn_reg[15]_8 ;
  input [15:0]\grn_reg[15]_9 ;
  input clk;
  input [0:0]\grn_reg[15]_10 ;
  input [0:0]\grn_reg[15]_11 ;
  input [0:0]\grn_reg[15]_12 ;
  input [0:0]\grn_reg[15]_13 ;
  input [0:0]\grn_reg[15]_14 ;
  input [0:0]\grn_reg[15]_15 ;
  input [0:0]\grn_reg[15]_16 ;
     output [15:0]gr00;
     output [15:0]gr01;
     output [15:0]gr02;
     output [15:0]gr03;
     output [15:0]gr04;
     output [15:0]gr05;
     output [15:0]gr06;
     output [15:0]gr07;

  wire [0:0]SR;
  wire \badr[0]_INST_0_i_1 ;
  wire \badr[0]_INST_0_i_1_0 ;
  wire \badr[0]_INST_0_i_1_1 ;
  wire \badr[0]_INST_0_i_5_0 ;
  wire \badr[0]_INST_0_i_8_n_0 ;
  wire \badr[15]_INST_0_i_2 ;
  wire \badr[15]_INST_0_i_2_0 ;
  wire clk;
  wire [0:0]ctl_sela_rn;
  (* DONT_TOUCH *) wire [15:0]gr00;
  (* DONT_TOUCH *) wire [15:0]gr01;
  (* DONT_TOUCH *) wire [15:0]gr02;
  (* DONT_TOUCH *) wire [15:0]gr03;
  (* DONT_TOUCH *) wire [15:0]gr04;
  (* DONT_TOUCH *) wire [15:0]gr05;
  (* DONT_TOUCH *) wire [15:0]gr06;
  (* DONT_TOUCH *) wire [15:0]gr07;
  wire \grn_reg[0] ;
  wire [0:0]\grn_reg[15]_10 ;
  wire [0:0]\grn_reg[15]_11 ;
  wire [0:0]\grn_reg[15]_12 ;
  wire [0:0]\grn_reg[15]_13 ;
  wire [0:0]\grn_reg[15]_14 ;
  wire [0:0]\grn_reg[15]_15 ;
  wire [0:0]\grn_reg[15]_16 ;
  wire \grn_reg[15]_7 ;
  wire [0:0]\grn_reg[15]_8 ;
  wire [15:0]\grn_reg[15]_9 ;
  wire [0:0]out;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \badr[0]_INST_0_i_5 
       (.I0(\badr[0]_INST_0_i_1 ),
        .I1(gr04[0]),
        .I2(\badr[0]_INST_0_i_8_n_0 ),
        .I3(\badr[0]_INST_0_i_1_0 ),
        .I4(gr01[0]),
        .I5(\badr[0]_INST_0_i_1_1 ),
        .O(\grn_reg[0] ));
  LUT6 #(
    .INIT(64'hA000C00000000000)) 
    \badr[0]_INST_0_i_8 
       (.I0(gr03[0]),
        .I1(gr02[0]),
        .I2(out),
        .I3(\badr[15]_INST_0_i_2 ),
        .I4(ctl_sela_rn),
        .I5(\badr[0]_INST_0_i_5_0 ),
        .O(\badr[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA000C00000000000)) 
    \badr[15]_INST_0_i_10 
       (.I0(gr07[15]),
        .I1(gr06[15]),
        .I2(out),
        .I3(\badr[15]_INST_0_i_2 ),
        .I4(ctl_sela_rn),
        .I5(\badr[15]_INST_0_i_2_0 ),
        .O(\grn_reg[15]_7 ));
  mcbs_rgf_grn grn00
       (.Q(gr00),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_8 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcbs_rgf_grn_1 grn01
       (.Q(gr01),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_10 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcbs_rgf_grn_2 grn02
       (.Q(gr02),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_11 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcbs_rgf_grn_3 grn03
       (.Q(gr03),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_12 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcbs_rgf_grn_4 grn04
       (.Q(gr04),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_13 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcbs_rgf_grn_5 grn05
       (.Q(gr05),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_14 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcbs_rgf_grn_6 grn06
       (.Q(gr06),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_15 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
  mcbs_rgf_grn_7 grn07
       (.Q(gr07),
        .SR(SR),
        .clk(clk),
        .\grn_reg[15]_0 (\grn_reg[15]_16 ),
        .\grn_reg[15]_1 (\grn_reg[15]_9 ));
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
   (.\iv_reg[15]_0 ({iv[15],iv[14],iv[13],iv[12],iv[11],iv[10],iv[9],iv[8],iv[7],iv[6],iv[5],iv[4],iv[3],iv[2],iv[1],iv[0]}),
    \iv_reg[0]_0 ,
    \bdatw[8]_INST_0_i_7 ,
    \bdatw[8]_INST_0_i_7_0 ,
    \bdatw[8]_INST_0_i_7_1 ,
    SR,
    cbus_sel_cr,
    \iv_reg[15]_1 ,
    clk);
  output \iv_reg[0]_0 ;
  input \bdatw[8]_INST_0_i_7 ;
  input [0:0]\bdatw[8]_INST_0_i_7_0 ;
  input \bdatw[8]_INST_0_i_7_1 ;
  input [0:0]SR;
  input [0:0]cbus_sel_cr;
  input [15:0]\iv_reg[15]_1 ;
  input clk;
     output [15:0]iv;

  wire [0:0]SR;
  wire \bdatw[8]_INST_0_i_7 ;
  wire [0:0]\bdatw[8]_INST_0_i_7_0 ;
  wire \bdatw[8]_INST_0_i_7_1 ;
  wire [0:0]cbus_sel_cr;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]iv;
  wire \iv_reg[0]_0 ;
  wire [15:0]\iv_reg[15]_1 ;

  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_27 
       (.I0(iv[0]),
        .I1(\bdatw[8]_INST_0_i_7 ),
        .I2(\bdatw[8]_INST_0_i_7_0 ),
        .I3(\bdatw[8]_INST_0_i_7_1 ),
        .O(\iv_reg[0]_0 ));
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

module mcbs_rgf_pcnt
   (.\pc_reg[15]_0 ({pc[15],pc[14],pc[13],pc[12],pc[11],pc[10],pc[9],pc[8],pc[7],pc[6],pc[5],pc[4],pc[3],pc[2],pc[1],pc[0]}),
    \pc_reg[15]_1 ,
    fch_pc,
    sp_dec_0,
    \badr[15]_INST_0_i_2 ,
    \badr[15]_INST_0_i_2_0 ,
    ctl_sela_rn,
    S,
    SR,
    D,
    clk);
  output \pc_reg[15]_1 ;
  output [15:0]fch_pc;
  input [0:0]sp_dec_0;
  input [0:0]\badr[15]_INST_0_i_2 ;
  input \badr[15]_INST_0_i_2_0 ;
  input [1:0]ctl_sela_rn;
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
  wire [0:0]\badr[15]_INST_0_i_2 ;
  wire \badr[15]_INST_0_i_2_0 ;
  wire clk;
  wire [1:0]ctl_sela_rn;
  wire [15:0]fch_pc;
  (* DONT_TOUCH *) wire [15:0]pc;
  wire \pc_reg[11]_i_2_n_0 ;
  wire \pc_reg[11]_i_2_n_1 ;
  wire \pc_reg[11]_i_2_n_2 ;
  wire \pc_reg[11]_i_2_n_3 ;
  wire \pc_reg[15]_1 ;
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
  wire [0:0]sp_dec_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h0000F000CC00AA00)) 
    \badr[15]_INST_0_i_12 
       (.I0(pc[15]),
        .I1(sp_dec_0),
        .I2(\badr[15]_INST_0_i_2 ),
        .I3(\badr[15]_INST_0_i_2_0 ),
        .I4(ctl_sela_rn[1]),
        .I5(ctl_sela_rn[0]),
        .O(\pc_reg[15]_1 ));
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
   (.\sp_reg[15]_0 ({sp[15],sp[14],sp[13],sp[12],sp[11],sp[10],sp[9],sp[8],sp[7],sp[6],sp[5],sp[4],sp[3],sp[2],sp[1],sp[0]}),
    sp_dec_0,
    O,
    \sp_reg[1]_0 ,
    \sp_reg[7]_0 ,
    \sp_reg[11]_0 ,
    \sp_reg[15]_1 ,
    SR,
    \sp_reg[15]_2 ,
    clk);
  output [14:0]sp_dec_0;
  output [0:0]O;
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
  wire [0:0]O;
  wire [0:0]SR;
  wire \badr[11]_INST_0_i_13_n_0 ;
  wire \badr[11]_INST_0_i_14_n_0 ;
  wire \badr[11]_INST_0_i_15_n_0 ;
  wire \badr[11]_INST_0_i_16_n_0 ;
  wire \badr[11]_INST_0_i_8_n_0 ;
  wire \badr[11]_INST_0_i_8_n_1 ;
  wire \badr[11]_INST_0_i_8_n_2 ;
  wire \badr[11]_INST_0_i_8_n_3 ;
  wire \badr[14]_INST_0_i_10_n_1 ;
  wire \badr[14]_INST_0_i_10_n_2 ;
  wire \badr[14]_INST_0_i_10_n_3 ;
  wire \badr[14]_INST_0_i_21_n_0 ;
  wire \badr[14]_INST_0_i_22_n_0 ;
  wire \badr[14]_INST_0_i_23_n_0 ;
  wire \badr[14]_INST_0_i_24_n_0 ;
  wire \badr[7]_INST_0_i_13_n_0 ;
  wire \badr[7]_INST_0_i_14_n_0 ;
  wire \badr[7]_INST_0_i_15_n_0 ;
  wire \badr[7]_INST_0_i_16_n_0 ;
  wire \badr[7]_INST_0_i_8_n_0 ;
  wire \badr[7]_INST_0_i_8_n_1 ;
  wire \badr[7]_INST_0_i_8_n_2 ;
  wire \badr[7]_INST_0_i_8_n_3 ;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]sp;
  wire \sp[0]_i_3_n_0 ;
  wire \sp[0]_i_4_n_0 ;
  wire \sp[0]_i_5_n_0 ;
  wire \sp[3]_i_5_n_0 ;
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
  wire \sp_reg[15]_i_2_n_1 ;
  wire \sp_reg[15]_i_2_n_2 ;
  wire \sp_reg[15]_i_2_n_3 ;
  wire [2:0]\sp_reg[1]_0 ;
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
  LUT1 #(
    .INIT(2'h1)) 
    \badr[11]_INST_0_i_13 
       (.I0(sp[11]),
        .O(\badr[11]_INST_0_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[11]_INST_0_i_14 
       (.I0(sp[10]),
        .O(\badr[11]_INST_0_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[11]_INST_0_i_15 
       (.I0(sp[9]),
        .O(\badr[11]_INST_0_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[11]_INST_0_i_16 
       (.I0(sp[8]),
        .O(\badr[11]_INST_0_i_16_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[11]_INST_0_i_8 
       (.CI(\badr[7]_INST_0_i_8_n_0 ),
        .CO({\badr[11]_INST_0_i_8_n_0 ,\badr[11]_INST_0_i_8_n_1 ,\badr[11]_INST_0_i_8_n_2 ,\badr[11]_INST_0_i_8_n_3 }),
        .CYINIT(\<const0> ),
        .DI(sp[11:8]),
        .O(sp_dec_0[10:7]),
        .S({\badr[11]_INST_0_i_13_n_0 ,\badr[11]_INST_0_i_14_n_0 ,\badr[11]_INST_0_i_15_n_0 ,\badr[11]_INST_0_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[14]_INST_0_i_10 
       (.CI(\badr[11]_INST_0_i_8_n_0 ),
        .CO({\badr[14]_INST_0_i_10_n_1 ,\badr[14]_INST_0_i_10_n_2 ,\badr[14]_INST_0_i_10_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,sp[14:12]}),
        .O(sp_dec_0[14:11]),
        .S({\badr[14]_INST_0_i_21_n_0 ,\badr[14]_INST_0_i_22_n_0 ,\badr[14]_INST_0_i_23_n_0 ,\badr[14]_INST_0_i_24_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[14]_INST_0_i_21 
       (.I0(sp[15]),
        .O(\badr[14]_INST_0_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[14]_INST_0_i_22 
       (.I0(sp[14]),
        .O(\badr[14]_INST_0_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[14]_INST_0_i_23 
       (.I0(sp[13]),
        .O(\badr[14]_INST_0_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[14]_INST_0_i_24 
       (.I0(sp[12]),
        .O(\badr[14]_INST_0_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[7]_INST_0_i_13 
       (.I0(sp[7]),
        .O(\badr[7]_INST_0_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[7]_INST_0_i_14 
       (.I0(sp[6]),
        .O(\badr[7]_INST_0_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[7]_INST_0_i_15 
       (.I0(sp[5]),
        .O(\badr[7]_INST_0_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[7]_INST_0_i_16 
       (.I0(sp[4]),
        .O(\badr[7]_INST_0_i_16_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[7]_INST_0_i_8 
       (.CI(\sp_reg[0]_i_2_n_0 ),
        .CO({\badr[7]_INST_0_i_8_n_0 ,\badr[7]_INST_0_i_8_n_1 ,\badr[7]_INST_0_i_8_n_2 ,\badr[7]_INST_0_i_8_n_3 }),
        .CYINIT(\<const0> ),
        .DI(sp[7:4]),
        .O(sp_dec_0[6:3]),
        .S({\badr[7]_INST_0_i_13_n_0 ,\badr[7]_INST_0_i_14_n_0 ,\badr[7]_INST_0_i_15_n_0 ,\badr[7]_INST_0_i_16_n_0 }));
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
    \sp[3]_i_5 
       (.I0(sp[1]),
        .O(\sp[3]_i_5_n_0 ));
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
        .O({sp_dec_0[2:0],O}),
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
  CARRY4 \sp_reg[15]_i_2 
       (.CI(\sp_reg[11]_i_2_n_0 ),
        .CO({\sp_reg[15]_i_2_n_1 ,\sp_reg[15]_i_2_n_2 ,\sp_reg[15]_i_2_n_3 }),
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
        .S({sp[3:2],\sp[3]_i_5_n_0 ,sp[0]}));
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

module mcbs_rgf_sreg
   (.\sr_reg[15]_0 ({sr[15],sr[14],sr[13],sr[12],sr[11],sr[10],sr[9],sr[8],sr[7],sr[6],sr[5],sr[4],sr[3],sr[2],sr[1],sr[0]}),
    \stat_reg[0] ,
    fch_irq_req,
    S,
    p_0_in_0,
    clk,
    \sr_reg[1]_0 ,
    Q,
    irq,
    irq_lev,
    \pc_reg[3]_i_2 );
  output \stat_reg[0] ;
  output fch_irq_req;
  output [0:0]S;
  input [11:0]p_0_in_0;
  input clk;
  input \sr_reg[1]_0 ;
  input [0:0]Q;
  input irq;
  input [1:0]irq_lev;
  input [0:0]\pc_reg[3]_i_2 ;
     output [15:0]sr;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]Q;
  wire [0:0]S;
  wire clk;
  wire fch_irq_req;
  wire irq;
  wire [1:0]irq_lev;
  wire [11:0]p_0_in_0;
  wire [0:0]\pc_reg[3]_i_2 ;
  (* DONT_TOUCH *) wire [15:0]sr;
  wire \sr_reg[1]_0 ;
  wire \stat_reg[0] ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h5155115151555155)) 
    \bcmd[1]_INST_0_i_5 
       (.I0(Q),
        .I1(irq),
        .I2(irq_lev[1]),
        .I3(sr[3]),
        .I4(irq_lev[0]),
        .I5(sr[2]),
        .O(\stat_reg[0] ));
  LUT5 #(
    .INIT(32'h20F20000)) 
    fch_irq_req_fl_i_1
       (.I0(sr[2]),
        .I1(irq_lev[0]),
        .I2(sr[3]),
        .I3(irq_lev[1]),
        .I4(irq),
        .O(fch_irq_req));
  LUT6 #(
    .INIT(64'h5955995959555955)) 
    \pc[3]_i_3 
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
        .D(p_0_in_0[0]),
        .Q(sr[0]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in_0[7]),
        .Q(sr[10]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[11]),
        .Q(sr[11]),
        .R(\sr_reg[1]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in_0[8]),
        .Q(sr[12]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in_0[9]),
        .Q(sr[13]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in_0[10]),
        .Q(sr[14]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in_0[11]),
        .Q(sr[15]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[1]),
        .Q(sr[1]),
        .R(\sr_reg[1]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in_0[1]),
        .Q(sr[2]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in_0[2]),
        .Q(sr[3]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in_0[3]),
        .Q(sr[4]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in_0[4]),
        .Q(sr[5]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in_0[5]),
        .Q(sr[6]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in_0[6]),
        .Q(sr[7]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[8]),
        .Q(sr[8]),
        .R(\sr_reg[1]_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \sr_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sr[9]),
        .Q(sr[9]),
        .R(\sr_reg[1]_0 ));
endmodule

module mcbs_rgf_treg
   (.\tr_reg[15]_0 ({tr[15],tr[14],tr[13],tr[12],tr[11],tr[10],tr[9],tr[8],tr[7],tr[6],tr[5],tr[4],tr[3],tr[2],tr[1],tr[0]}),
    \tr_reg[0]_0 ,
    \badr[0]_INST_0_i_1 ,
    \badr[0]_INST_0_i_1_0 ,
    \badr[0]_INST_0_i_1_1 ,
    SR,
    cbus_sel_cr,
    \tr_reg[15]_1 ,
    clk);
  output \tr_reg[0]_0 ;
  input \badr[0]_INST_0_i_1 ;
  input [0:0]\badr[0]_INST_0_i_1_0 ;
  input \badr[0]_INST_0_i_1_1 ;
  input [0:0]SR;
  input [0:0]cbus_sel_cr;
  input [15:0]\tr_reg[15]_1 ;
  input clk;
     output [15:0]tr;

  wire [0:0]SR;
  wire \badr[0]_INST_0_i_1 ;
  wire [0:0]\badr[0]_INST_0_i_1_0 ;
  wire \badr[0]_INST_0_i_1_1 ;
  wire [0:0]cbus_sel_cr;
  wire clk;
  (* DONT_TOUCH *) wire [15:0]tr;
  wire \tr_reg[0]_0 ;
  wire [15:0]\tr_reg[15]_1 ;

  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_2 
       (.I0(tr[0]),
        .I1(\badr[0]_INST_0_i_1 ),
        .I2(\badr[0]_INST_0_i_1_0 ),
        .I3(\badr[0]_INST_0_i_1_1 ),
        .O(\tr_reg[0]_0 ));
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
  wire ctl_n_4;
  wire ctl_n_5;
  wire ctl_n_6;
  wire ctl_n_7;
  wire ctl_n_8;
  wire ctl_n_9;
  wire [2:0]ctl_sela_rn;
  wire [15:0]fadr;
  wire [15:0]fch_ir;
  wire fch_irq_req;
  wire fch_n_100;
  wire fch_n_101;
  wire fch_n_102;
  wire fch_n_103;
  wire fch_n_104;
  wire fch_n_169;
  wire fch_n_170;
  wire fch_n_171;
  wire fch_n_172;
  wire fch_n_173;
  wire fch_n_174;
  wire fch_n_175;
  wire fch_n_176;
  wire fch_n_178;
  wire fch_n_179;
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
  wire fch_n_22;
  wire fch_n_229;
  wire fch_n_230;
  wire fch_n_231;
  wire fch_n_232;
  wire fch_n_233;
  wire fch_n_234;
  wire fch_n_235;
  wire fch_n_236;
  wire fch_n_237;
  wire fch_n_26;
  wire fch_n_29;
  wire fch_n_30;
  wire fch_n_31;
  wire fch_n_32;
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
  wire mem_n_15;
  wire mem_n_16;
  wire mem_n_17;
  wire mem_n_3;
  wire mem_n_4;
  wire mem_n_5;
  wire mem_n_6;
  wire mem_n_7;
  wire mem_n_8;
  wire mem_n_9;
  wire [6:1]p_1_in;
  wire \pcnt/p_0_in ;
  wire [15:0]\pcnt/p_1_in ;
  wire [1:0]read_cyc;
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
  wire rgf_n_208;
  wire rgf_n_209;
  wire rgf_n_21;
  wire rgf_n_210;
  wire rgf_n_211;
  wire rgf_n_212;
  wire rgf_n_213;
  wire rgf_n_214;
  wire rgf_n_215;
  wire rgf_n_216;
  wire rgf_n_217;
  wire rgf_n_218;
  wire rgf_n_219;
  wire rgf_n_22;
  wire rgf_n_220;
  wire rgf_n_221;
  wire rgf_n_222;
  wire rgf_n_223;
  wire rgf_n_224;
  wire rgf_n_225;
  wire rgf_n_226;
  wire rgf_n_227;
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
  wire rgf_n_26;
  wire rgf_n_27;
  wire rgf_n_270;
  wire rgf_n_28;
  wire rgf_n_29;
  wire rgf_n_3;
  wire rgf_n_30;
  wire rgf_n_31;
  wire rgf_n_32;
  wire rgf_n_33;
  wire rgf_n_336;
  wire rgf_n_34;
  wire rgf_n_35;
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
  wire [3:0]rgf_sr_flag;
  wire [1:0]rgf_sr_ie;
  wire [15:0]rgf_tr;
  wire rst_n;
  wire [15:0]\sptr/p_0_in ;
  wire [15:1]\sptr/sp_dec_0 ;
  wire [0:0]sr_bank;
  wire [15:0]\sreg/p_0_in ;
  wire [7:0]\sreg/p_2_in ;
  wire [2:0]stat;
  wire [2:0]stat_nx;

  mcbs_alu alu
       (.DI({fch_n_209,fch_n_210,fch_n_211}),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .S({fch_n_205,fch_n_206,fch_n_207,fch_n_208}),
        .\sr[4]_i_16 (alu_n_17),
        .\sr[6]_i_2 (fch_n_204),
        .\sr[6]_i_2_0 ({fch_n_202,fch_n_203}),
        .tout__1_carry__0_i_8({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .tout__1_carry__1_i_8({alu_n_8,alu_n_9,alu_n_10,alu_n_11}),
        .tout__1_carry__2_i_8({\art/p_0_in ,alu_n_13,alu_n_14,alu_n_15}),
        .tout__1_carry__3_i_3(\art/add/tout ),
        .\tr_reg[11] ({fch_n_230,fch_n_231,fch_n_232,fch_n_233}),
        .\tr_reg[11]_0 ({fch_n_234,fch_n_235,fch_n_236,fch_n_237}),
        .\tr_reg[14] ({fch_n_198,fch_n_199,fch_n_200,fch_n_201}),
        .\tr_reg[14]_0 ({fch_n_194,fch_n_195,fch_n_196,fch_n_197}),
        .\tr_reg[7] ({fch_n_169,fch_n_170,fch_n_171,fch_n_172}),
        .\tr_reg[7]_0 ({fch_n_173,fch_n_174,fch_n_175,fch_n_176}));
  mcbs_fsm ctl
       (.D(\pcnt/p_1_in [15]),
        .O(fch_pc[15]),
        .Q(stat),
        .SR(ctl_n_30),
        .brdy(brdy),
        .brdy_0(ctl_n_12),
        .cbus(cbus[15]),
        .clk(clk),
        .ctl_fetch_inferred_i_3(rgf_n_336),
        .\eir_fl_reg[0] (ctl_fetch),
        .\eir_fl_reg[1] (fch_n_22),
        .\eir_fl_reg[6] (p_1_in),
        .fch_irq_req(fch_irq_req),
        .irq(irq),
        .irq_vec(irq_vec),
        .\irq_vec[5] ({ctl_n_23,ctl_n_24,ctl_n_25,ctl_n_26,ctl_n_27,ctl_n_28}),
        .\iv[15]_i_33 (fch_n_20),
        .\iv_reg[0] (ctl_n_4),
        .out({fch_ir[15],fch_ir[12],fch_ir[1:0]}),
        .p_0_in(\pcnt/p_0_in ),
        .\pc_reg[15] (fch_n_78),
        .\pc_reg[15]_0 (fadr[15]),
        .rst_n(rst_n),
        .\stat[0]_i_5 (rgf_iv_ve),
        .\stat[0]_i_5_0 (fch_n_26),
        .\stat_reg[0]_0 (ctl_n_6),
        .\stat_reg[0]_1 (ctl_n_7),
        .\stat_reg[0]_10 (ctl_n_22),
        .\stat_reg[0]_11 (ctl_n_32),
        .\stat_reg[0]_2 (ctl_n_10),
        .\stat_reg[0]_3 (ctl_n_13),
        .\stat_reg[0]_4 (ctl_n_14),
        .\stat_reg[0]_5 (ctl_n_15),
        .\stat_reg[0]_6 (ctl_n_17),
        .\stat_reg[0]_7 (ctl_n_18),
        .\stat_reg[0]_8 (ctl_n_19),
        .\stat_reg[0]_9 (ctl_n_21),
        .\stat_reg[1]_0 (ctl_n_8),
        .\stat_reg[1]_1 (ctl_n_9),
        .\stat_reg[1]_2 (ctl_n_16),
        .\stat_reg[1]_3 (fch_n_29),
        .\stat_reg[1]_4 (fch_n_30),
        .\stat_reg[2]_0 (ctl_n_0),
        .\stat_reg[2]_1 (ctl_n_5),
        .\stat_reg[2]_2 (ctl_n_11),
        .\stat_reg[2]_3 (ctl_n_29),
        .\stat_reg[2]_4 (ctl_n_31),
        .\stat_reg[2]_5 (fch_n_21),
        .\stat_reg[2]_6 (fch_n_31),
        .\stat_reg[2]_7 (stat_nx));
  mcbs_fch fch
       (.D(\pcnt/p_1_in [14:0]),
        .DI({fch_n_209,fch_n_210,fch_n_211}),
        .E(fch_n_178),
        .O({\sptr/sp_dec_0 [3:1],rgf_n_353}),
        .Q(stat),
        .S({fch_n_205,fch_n_206,fch_n_207,fch_n_208}),
        .SR(ctl_n_30),
        .abus_o(abus_o),
        .alu_sr_flag(alu_sr_flag),
        .badr(badr),
        .\badr[0]_0 (rgf_n_387),
        .\badr[0]_1 (rgf_n_370),
        .\badr[0]_INST_0_i_12_0 (fch_n_100),
        .\badr[10]_INST_0_i_1_0 ({fch_n_230,fch_n_231,fch_n_232,fch_n_233}),
        .\badr[10]_INST_0_i_1_1 (rgf_n_380),
        .\badr[11]_INST_0_i_1_0 (rgf_n_381),
        .\badr[12]_INST_0_i_1_0 (rgf_n_382),
        .\badr[13]_INST_0_i_1_0 (rgf_n_383),
        .\badr[14]_INST_0_i_1_0 ({fch_n_194,fch_n_195,fch_n_196,fch_n_197}),
        .\badr[14]_INST_0_i_1_1 (rgf_n_384),
        .\badr[15]_INST_0_i_1_0 ({fch_n_198,fch_n_199,fch_n_200,fch_n_201}),
        .\badr[15]_INST_0_i_1_1 ({fch_n_202,fch_n_203}),
        .\badr[15]_INST_0_i_1_2 (fch_n_204),
        .\badr[15]_INST_0_i_27_0 (fch_n_99),
        .\badr[15]_INST_0_i_29_0 (fch_n_101),
        .\badr[15]_INST_0_i_31_0 (ctl_n_14),
        .\badr[1]_INST_0_i_1_0 (rgf_n_371),
        .\badr[2]_INST_0_i_1_0 (rgf_n_372),
        .\badr[3]_INST_0_i_1_0 (rgf_n_373),
        .\badr[4]_INST_0_i_1_0 (rgf_n_374),
        .\badr[5]_INST_0_i_1_0 (rgf_n_375),
        .\badr[6]_INST_0_i_1_0 ({fch_n_169,fch_n_170,fch_n_171,fch_n_172}),
        .\badr[6]_INST_0_i_1_1 (rgf_n_376),
        .\badr[7]_INST_0_i_1_0 (rgf_n_377),
        .\badr[8]_INST_0_i_1_0 (rgf_n_378),
        .\badr[9]_INST_0_i_1_0 (rgf_n_379),
        .badr_0_sp_1(ctl_n_31),
        .badrx(badrx),
        .\badrx[15] (rgf_tr),
        .bbus_o(bbus_o),
        .bcmd(bcmd[2]),
        .\bcmd[1] (rgf_n_336),
        .bdatw(bdatw),
        .\bdatw[11]_INST_0_i_2_0 (ctl_n_15),
        .\bdatw[15]_INST_0_i_1_0 (\ivec/p_0_in ),
        .\bdatw[15]_INST_0_i_59_0 (fch_n_104),
        .\bdatw[15]_INST_0_i_60_0 (fch_n_103),
        .\bdatw[15]_INST_0_i_6_0 (fadr),
        .\bdatw[15]_INST_0_i_6_1 ({rgf_n_208,rgf_n_209,rgf_n_210,rgf_n_211,rgf_n_212,rgf_n_213,rgf_n_214,rgf_n_215,rgf_n_216,rgf_n_217,rgf_n_218,rgf_n_219,rgf_n_220,rgf_n_221,rgf_n_222,rgf_n_223}),
        .\bdatw[15]_INST_0_i_6_2 ({rgf_n_192,rgf_n_193,rgf_n_194,rgf_n_195,rgf_n_196,rgf_n_197,rgf_n_198,rgf_n_199,rgf_n_200,rgf_n_201,rgf_n_202,rgf_n_203,rgf_n_204,rgf_n_205,rgf_n_206,rgf_n_207}),
        .\bdatw[15]_INST_0_i_6_3 ({rgf_n_128,rgf_n_129,rgf_n_130,rgf_n_131,rgf_n_132,rgf_n_133,rgf_n_134,rgf_n_135,rgf_n_136,rgf_n_137,rgf_n_138,rgf_n_139,rgf_n_140,rgf_n_141,rgf_n_142,rgf_n_143}),
        .\bdatw[15]_INST_0_i_6_4 ({rgf_n_144,rgf_n_145,rgf_n_146,rgf_n_147,rgf_n_148,rgf_n_149,rgf_n_150,rgf_n_151,rgf_n_152,rgf_n_153,rgf_n_154,rgf_n_155,rgf_n_156,rgf_n_157,rgf_n_158,rgf_n_159}),
        .\bdatw[15]_INST_0_i_6_5 ({rgf_n_160,rgf_n_161,rgf_n_162,rgf_n_163,rgf_n_164,rgf_n_165,rgf_n_166,rgf_n_167,rgf_n_168,rgf_n_169,rgf_n_170,rgf_n_171,rgf_n_172,rgf_n_173,rgf_n_174,rgf_n_175}),
        .\bdatw[15]_INST_0_i_7_0 ({rgf_n_224,rgf_n_225,rgf_n_226,rgf_n_227,rgf_n_228,rgf_n_229,rgf_n_230,rgf_n_231,rgf_n_232,rgf_n_233,rgf_n_234,rgf_n_235,rgf_n_236,rgf_n_237,rgf_n_238,rgf_n_239}),
        .\bdatw[15]_INST_0_i_7_1 ({rgf_n_240,rgf_n_241,rgf_n_242,rgf_n_243,rgf_n_244,rgf_n_245,rgf_n_246,rgf_n_247,rgf_n_248,rgf_n_249,rgf_n_250,rgf_n_251,rgf_n_252,rgf_n_253,rgf_n_254,rgf_n_255}),
        .\bdatw[15]_INST_0_i_7_10 ({rgf_n_112,rgf_n_113,rgf_n_114,rgf_n_115,rgf_n_116,rgf_n_117,rgf_n_118,rgf_n_119,rgf_n_120,rgf_n_121,rgf_n_122,rgf_n_123,rgf_n_124,rgf_n_125,rgf_n_126,rgf_n_127}),
        .\bdatw[15]_INST_0_i_7_2 ({rgf_n_176,rgf_n_177,rgf_n_178,rgf_n_179,rgf_n_180,rgf_n_181,rgf_n_182,rgf_n_183,rgf_n_184,rgf_n_185,rgf_n_186,rgf_n_187,rgf_n_188,rgf_n_189,rgf_n_190,rgf_n_191}),
        .\bdatw[15]_INST_0_i_7_3 ({rgf_n_0,rgf_n_1,rgf_n_2,rgf_n_3,rgf_n_4,rgf_n_5,rgf_n_6,rgf_n_7,rgf_n_8,rgf_n_9,rgf_n_10,rgf_n_11,rgf_n_12,rgf_n_13,rgf_n_14,rgf_n_15}),
        .\bdatw[15]_INST_0_i_7_4 ({rgf_n_16,rgf_n_17,rgf_n_18,rgf_n_19,rgf_n_20,rgf_n_21,rgf_n_22,rgf_n_23,rgf_n_24,rgf_n_25,rgf_n_26,rgf_n_27,rgf_n_28,rgf_n_29,rgf_n_30,rgf_n_31}),
        .\bdatw[15]_INST_0_i_7_5 ({rgf_n_32,rgf_n_33,rgf_n_34,rgf_n_35,rgf_n_36,rgf_n_37,rgf_n_38,rgf_n_39,rgf_n_40,rgf_n_41,rgf_n_42,rgf_n_43,rgf_n_44,rgf_n_45,rgf_n_46,rgf_n_47}),
        .\bdatw[15]_INST_0_i_7_6 ({rgf_n_64,rgf_n_65,rgf_n_66,rgf_n_67,rgf_n_68,rgf_n_69,rgf_n_70,rgf_n_71,rgf_n_72,rgf_n_73,rgf_n_74,rgf_n_75,rgf_n_76,rgf_n_77,rgf_n_78,rgf_n_79}),
        .\bdatw[15]_INST_0_i_7_7 ({rgf_n_48,rgf_n_49,rgf_n_50,rgf_n_51,rgf_n_52,rgf_n_53,rgf_n_54,rgf_n_55,rgf_n_56,rgf_n_57,rgf_n_58,rgf_n_59,rgf_n_60,rgf_n_61,rgf_n_62,rgf_n_63}),
        .\bdatw[15]_INST_0_i_7_8 ({rgf_n_80,rgf_n_81,rgf_n_82,rgf_n_83,rgf_n_84,rgf_n_85,rgf_n_86,rgf_n_87,rgf_n_88,rgf_n_89,rgf_n_90,rgf_n_91,rgf_n_92,rgf_n_93,rgf_n_94,rgf_n_95}),
        .\bdatw[15]_INST_0_i_7_9 ({rgf_n_96,rgf_n_97,rgf_n_98,rgf_n_99,rgf_n_100,rgf_n_101,rgf_n_102,rgf_n_103,rgf_n_104,rgf_n_105,rgf_n_106,rgf_n_107,rgf_n_108,rgf_n_109,rgf_n_110,rgf_n_111}),
        .\bdatw[15]_INST_0_i_81_0 (ctl_n_11),
        .\bdatw[8]_INST_0_i_2_0 (rgf_n_388),
        .\bdatw[8]_INST_0_i_6_0 (ctl_n_5),
        .brdy(brdy),
        .brdy_0(stat_nx),
        .brdy_1(fch_n_212),
        .brdy_2(fch_n_229),
        .cbus(cbus[14:0]),
        .cbus_sel_cr(cbus_sel_cr),
        .ccmd(ccmd),
        .clk(clk),
        .cpuid(cpuid),
        .crdy(crdy),
        .crdy_0(fch_n_29),
        .crdy_1(fch_n_30),
        .ctl_copro(ctl_copro),
        .ctl_fetch_ext_fl_reg_0(ctl_n_32),
        .ctl_fetch_fl_reg_0(ctl_fetch),
        .ctl_fetch_fl_reg_1(ctl_n_17),
        .ctl_fetch_fl_reg_2(ctl_n_0),
        .ctl_fetch_inferred_i_14_0(ctl_n_19),
        .ctl_sela_rn(ctl_sela_rn),
        .\eir_fl_reg[6]_0 ({ctl_n_23,ctl_n_24,ctl_n_25,ctl_n_26,ctl_n_27,ctl_n_28}),
        .\fch_irq_lev_reg[0]_0 (ctl_n_29),
        .fch_irq_req(fch_irq_req),
        .fch_pc(fch_pc[14:0]),
        .fdat(fdat),
        .in0(ctl_fetch),
        .irq_lev(irq_lev),
        .\iv[14]_i_36_0 (rgf_n_369),
        .\iv[14]_i_36_1 (rgf_n_386),
        .\iv[15]_i_12_0 (ctl_n_9),
        .\iv[15]_i_4_0 (fch_n_78),
        .\iv[4]_i_12_0 (rgf_n_385),
        .\iv_reg[0] (ctl_n_12),
        .out({fch_ir[15],fch_ir[12],fch_ir[1:0]}),
        .p_0_in({\sreg/p_0_in [15:12],\sreg/p_0_in [10],\sreg/p_0_in [7:2],\sreg/p_0_in [0]}),
        .p_0_in_0(\pcnt/p_0_in ),
        .\pc_reg[0] (ctl_n_21),
        .\pc_reg[0]_0 (ctl_n_22),
        .read_cyc(read_cyc),
        .rst_n(rst_n),
        .rst_n_0(fch_n_32),
        .rst_n_fl_reg_0(p_1_in),
        .rst_n_fl_reg_1(fch_n_20),
        .rst_n_fl_reg_2(fch_n_21),
        .rst_n_fl_reg_3(fch_n_22),
        .rst_n_fl_reg_4(fch_n_26),
        .rst_n_fl_reg_5(fch_n_31),
        .rst_n_fl_reg_6(fch_n_95),
        .rst_n_fl_reg_7(fch_n_97),
        .sp_dec_0(\sptr/sp_dec_0 [15:4]),
        .\sp_reg[11] ({rgf_n_361,rgf_n_362,rgf_n_363,rgf_n_364}),
        .\sp_reg[15] ({fch_n_79,fch_n_80,fch_n_81,fch_n_82,fch_n_83,fch_n_84,fch_n_85,fch_n_86,fch_n_87,fch_n_88,fch_n_89,fch_n_90,fch_n_91,fch_n_92,fch_n_93,fch_n_94}),
        .\sp_reg[15]_0 (\sptr/p_0_in ),
        .\sp_reg[15]_1 ({rgf_n_365,rgf_n_366,rgf_n_367,rgf_n_368}),
        .\sp_reg[15]_2 (cbus[15]),
        .\sp_reg[3] ({rgf_n_354,rgf_n_355,rgf_n_356}),
        .\sp_reg[7] ({rgf_n_357,rgf_n_358,rgf_n_359,rgf_n_360}),
        .\sr[4]_i_5_0 (alu_n_17),
        .\sr_reg[0] (fch_n_96),
        .\sr_reg[0]_0 (fch_n_98),
        .\sr_reg[0]_1 (fch_n_179),
        .\sr_reg[0]_10 (fch_n_188),
        .\sr_reg[0]_11 (fch_n_189),
        .\sr_reg[0]_12 (fch_n_190),
        .\sr_reg[0]_13 (fch_n_191),
        .\sr_reg[0]_14 (fch_n_192),
        .\sr_reg[0]_15 (fch_n_193),
        .\sr_reg[0]_2 (fch_n_180),
        .\sr_reg[0]_3 (fch_n_181),
        .\sr_reg[0]_4 (fch_n_182),
        .\sr_reg[0]_5 (fch_n_183),
        .\sr_reg[0]_6 (fch_n_184),
        .\sr_reg[0]_7 (fch_n_185),
        .\sr_reg[0]_8 (fch_n_186),
        .\sr_reg[0]_9 (fch_n_187),
        .\sr_reg[15] ({\sreg/p_2_in ,rgf_sr_flag,rgf_sr_ie,rgf_n_270,sr_bank}),
        .\sr_reg[6] (\art/add/tout ),
        .\sr_reg[7] ({\art/p_0_in ,alu_n_13,alu_n_14,alu_n_15}),
        .\stat[0]_i_5_0 (ctl_n_10),
        .\stat[0]_i_5_1 (ctl_n_18),
        .\stat_reg[0] (bcmd[0]),
        .\stat_reg[0]_0 (bcmd[1]),
        .\stat_reg[0]_1 (ctl_n_4),
        .\stat_reg[1] (ctl_n_13),
        .\stat_reg[1]_0 (ctl_n_7),
        .\stat_reg[2] (fch_n_102),
        .\stat_reg[2]_0 (ctl_n_8),
        .\stat_reg[2]_1 (ctl_n_16),
        .tout__1_carry__0_i_1_0({fch_n_173,fch_n_174,fch_n_175,fch_n_176}),
        .tout__1_carry__1_i_1_0({fch_n_234,fch_n_235,fch_n_236,fch_n_237}),
        .tout__1_carry_i_25_0(ctl_n_6),
        .\tr_reg[0] (mem_n_17),
        .\tr_reg[10] (mem_n_7),
        .\tr_reg[11] ({alu_n_8,alu_n_9,alu_n_10,alu_n_11}),
        .\tr_reg[11]_0 (mem_n_6),
        .\tr_reg[12] (mem_n_5),
        .\tr_reg[13] (mem_n_4),
        .\tr_reg[14] (mem_n_3),
        .\tr_reg[1] (mem_n_16),
        .\tr_reg[2] (mem_n_15),
        .\tr_reg[3] ({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .\tr_reg[3]_0 (mem_n_14),
        .\tr_reg[4] (mem_n_13),
        .\tr_reg[5] (mem_n_12),
        .\tr_reg[6] (mem_n_11),
        .\tr_reg[7] ({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .\tr_reg[7]_0 (mem_n_10),
        .\tr_reg[8] (mem_n_9),
        .\tr_reg[9] (mem_n_8));
  mcbs_mem mem
       (.alu_sr_flag(alu_sr_flag),
        .bcmd(bcmd[0]),
        .bdatr(bdatr),
        .brdy(brdy),
        .cbus(cbus[15]),
        .cbus_i(cbus_i),
        .cbus_i_0_sp_1(mem_n_17),
        .cbus_i_1_sp_1(mem_n_16),
        .cbus_i_2_sp_1(mem_n_15),
        .cbus_i_3_sp_1(mem_n_14),
        .cbus_i_4_sp_1(mem_n_13),
        .cbus_i_5_sp_1(mem_n_12),
        .cbus_i_6_sp_1(mem_n_11),
        .cbus_i_7_sp_1(mem_n_10),
        .clk(clk),
        .ctl_copro(ctl_copro),
        .p_0_in(\pcnt/p_0_in ),
        .\read_cyc_reg[0] (fch_n_212),
        .\read_cyc_reg[1] (read_cyc),
        .\read_cyc_reg[1]_0 (mem_n_3),
        .\read_cyc_reg[1]_1 (mem_n_4),
        .\read_cyc_reg[1]_2 (mem_n_5),
        .\read_cyc_reg[1]_3 (mem_n_6),
        .\read_cyc_reg[1]_4 (mem_n_7),
        .\read_cyc_reg[1]_5 (mem_n_8),
        .\read_cyc_reg[1]_6 (mem_n_9),
        .\read_cyc_reg[1]_7 (fch_n_229));
  mcbs_rgf rgf
       (.D(\pcnt/p_1_in ),
        .E(fch_n_181),
        .O(rgf_n_353),
        .Q(stat[0]),
        .\badr[0]_INST_0_i_1 (fch_n_96),
        .\badr[0]_INST_0_i_1_0 (fch_n_98),
        .\badr[0]_INST_0_i_1_1 (fch_n_99),
        .\badr[0]_INST_0_i_1_2 (fch_n_101),
        .\badr[0]_INST_0_i_5 (fch_n_95),
        .\badr[15]_INST_0_i_2 (fch_n_102),
        .\badr[1]_INST_0_i_7 (fch_n_100),
        .\badr[1]_INST_0_i_7_0 (fch_n_97),
        .\bdatw[8]_INST_0_i_7 (fch_n_103),
        .\bdatw[8]_INST_0_i_7_0 (fch_n_104),
        .cbus_sel_cr(cbus_sel_cr),
        .clk(clk),
        .ctl_sela_rn(ctl_sela_rn),
        .fch_irq_req(fch_irq_req),
        .fch_pc(fch_pc),
        .\grn_reg[0] (rgf_n_370),
        .\grn_reg[10] (rgf_n_380),
        .\grn_reg[11] (rgf_n_381),
        .\grn_reg[12] (rgf_n_382),
        .\grn_reg[13] (rgf_n_383),
        .\grn_reg[14] (rgf_n_384),
        .\grn_reg[15] ({rgf_n_16,rgf_n_17,rgf_n_18,rgf_n_19,rgf_n_20,rgf_n_21,rgf_n_22,rgf_n_23,rgf_n_24,rgf_n_25,rgf_n_26,rgf_n_27,rgf_n_28,rgf_n_29,rgf_n_30,rgf_n_31}),
        .\grn_reg[15]_0 ({rgf_n_32,rgf_n_33,rgf_n_34,rgf_n_35,rgf_n_36,rgf_n_37,rgf_n_38,rgf_n_39,rgf_n_40,rgf_n_41,rgf_n_42,rgf_n_43,rgf_n_44,rgf_n_45,rgf_n_46,rgf_n_47}),
        .\grn_reg[15]_1 ({rgf_n_48,rgf_n_49,rgf_n_50,rgf_n_51,rgf_n_52,rgf_n_53,rgf_n_54,rgf_n_55,rgf_n_56,rgf_n_57,rgf_n_58,rgf_n_59,rgf_n_60,rgf_n_61,rgf_n_62,rgf_n_63}),
        .\grn_reg[15]_10 ({rgf_n_192,rgf_n_193,rgf_n_194,rgf_n_195,rgf_n_196,rgf_n_197,rgf_n_198,rgf_n_199,rgf_n_200,rgf_n_201,rgf_n_202,rgf_n_203,rgf_n_204,rgf_n_205,rgf_n_206,rgf_n_207}),
        .\grn_reg[15]_11 ({rgf_n_208,rgf_n_209,rgf_n_210,rgf_n_211,rgf_n_212,rgf_n_213,rgf_n_214,rgf_n_215,rgf_n_216,rgf_n_217,rgf_n_218,rgf_n_219,rgf_n_220,rgf_n_221,rgf_n_222,rgf_n_223}),
        .\grn_reg[15]_12 ({rgf_n_224,rgf_n_225,rgf_n_226,rgf_n_227,rgf_n_228,rgf_n_229,rgf_n_230,rgf_n_231,rgf_n_232,rgf_n_233,rgf_n_234,rgf_n_235,rgf_n_236,rgf_n_237,rgf_n_238,rgf_n_239}),
        .\grn_reg[15]_13 ({rgf_n_240,rgf_n_241,rgf_n_242,rgf_n_243,rgf_n_244,rgf_n_245,rgf_n_246,rgf_n_247,rgf_n_248,rgf_n_249,rgf_n_250,rgf_n_251,rgf_n_252,rgf_n_253,rgf_n_254,rgf_n_255}),
        .\grn_reg[15]_14 (rgf_n_369),
        .\grn_reg[15]_15 (rgf_n_385),
        .\grn_reg[15]_16 (fch_n_185),
        .\grn_reg[15]_17 (fch_n_191),
        .\grn_reg[15]_18 (fch_n_193),
        .\grn_reg[15]_19 (fch_n_179),
        .\grn_reg[15]_2 ({rgf_n_64,rgf_n_65,rgf_n_66,rgf_n_67,rgf_n_68,rgf_n_69,rgf_n_70,rgf_n_71,rgf_n_72,rgf_n_73,rgf_n_74,rgf_n_75,rgf_n_76,rgf_n_77,rgf_n_78,rgf_n_79}),
        .\grn_reg[15]_20 (fch_n_183),
        .\grn_reg[15]_21 (fch_n_186),
        .\grn_reg[15]_22 (fch_n_188),
        .\grn_reg[15]_23 (fch_n_180),
        .\grn_reg[15]_24 (fch_n_184),
        .\grn_reg[15]_25 (fch_n_190),
        .\grn_reg[15]_26 (fch_n_192),
        .\grn_reg[15]_27 (fch_n_178),
        .\grn_reg[15]_28 (fch_n_182),
        .\grn_reg[15]_29 (fch_n_187),
        .\grn_reg[15]_3 ({rgf_n_80,rgf_n_81,rgf_n_82,rgf_n_83,rgf_n_84,rgf_n_85,rgf_n_86,rgf_n_87,rgf_n_88,rgf_n_89,rgf_n_90,rgf_n_91,rgf_n_92,rgf_n_93,rgf_n_94,rgf_n_95}),
        .\grn_reg[15]_30 (fch_n_189),
        .\grn_reg[15]_4 ({rgf_n_96,rgf_n_97,rgf_n_98,rgf_n_99,rgf_n_100,rgf_n_101,rgf_n_102,rgf_n_103,rgf_n_104,rgf_n_105,rgf_n_106,rgf_n_107,rgf_n_108,rgf_n_109,rgf_n_110,rgf_n_111}),
        .\grn_reg[15]_5 ({rgf_n_112,rgf_n_113,rgf_n_114,rgf_n_115,rgf_n_116,rgf_n_117,rgf_n_118,rgf_n_119,rgf_n_120,rgf_n_121,rgf_n_122,rgf_n_123,rgf_n_124,rgf_n_125,rgf_n_126,rgf_n_127}),
        .\grn_reg[15]_6 ({rgf_n_128,rgf_n_129,rgf_n_130,rgf_n_131,rgf_n_132,rgf_n_133,rgf_n_134,rgf_n_135,rgf_n_136,rgf_n_137,rgf_n_138,rgf_n_139,rgf_n_140,rgf_n_141,rgf_n_142,rgf_n_143}),
        .\grn_reg[15]_7 ({rgf_n_144,rgf_n_145,rgf_n_146,rgf_n_147,rgf_n_148,rgf_n_149,rgf_n_150,rgf_n_151,rgf_n_152,rgf_n_153,rgf_n_154,rgf_n_155,rgf_n_156,rgf_n_157,rgf_n_158,rgf_n_159}),
        .\grn_reg[15]_8 ({rgf_n_160,rgf_n_161,rgf_n_162,rgf_n_163,rgf_n_164,rgf_n_165,rgf_n_166,rgf_n_167,rgf_n_168,rgf_n_169,rgf_n_170,rgf_n_171,rgf_n_172,rgf_n_173,rgf_n_174,rgf_n_175}),
        .\grn_reg[15]_9 ({rgf_n_176,rgf_n_177,rgf_n_178,rgf_n_179,rgf_n_180,rgf_n_181,rgf_n_182,rgf_n_183,rgf_n_184,rgf_n_185,rgf_n_186,rgf_n_187,rgf_n_188,rgf_n_189,rgf_n_190,rgf_n_191}),
        .\grn_reg[1] (rgf_n_371),
        .\grn_reg[2] (rgf_n_372),
        .\grn_reg[3] (rgf_n_373),
        .\grn_reg[4] (rgf_n_374),
        .\grn_reg[5] (rgf_n_375),
        .\grn_reg[6] (rgf_n_376),
        .\grn_reg[7] (rgf_n_377),
        .\grn_reg[8] (rgf_n_378),
        .\grn_reg[9] (rgf_n_379),
        .irq(irq),
        .irq_lev(irq_lev),
        .\iv_reg[0] (rgf_n_388),
        .\iv_reg[15] ({\ivec/p_0_in ,rgf_iv_ve}),
        .out({rgf_n_0,rgf_n_1,rgf_n_2,rgf_n_3,rgf_n_4,rgf_n_5,rgf_n_6,rgf_n_7,rgf_n_8,rgf_n_9,rgf_n_10,rgf_n_11,rgf_n_12,rgf_n_13,rgf_n_14,rgf_n_15}),
        .p_0_in(\pcnt/p_0_in ),
        .p_0_in_0({\sreg/p_0_in [15:12],\sreg/p_0_in [10],\sreg/p_0_in [7:2],\sreg/p_0_in [0]}),
        .\pc_reg[15] (fadr),
        .\pc_reg[15]_0 (rgf_n_386),
        .rst_n(rst_n),
        .sp_dec_0(\sptr/sp_dec_0 ),
        .\sp_reg[11] ({rgf_n_361,rgf_n_362,rgf_n_363,rgf_n_364}),
        .\sp_reg[15] (\sptr/p_0_in ),
        .\sp_reg[15]_0 ({rgf_n_365,rgf_n_366,rgf_n_367,rgf_n_368}),
        .\sp_reg[15]_1 ({fch_n_79,fch_n_80,fch_n_81,fch_n_82,fch_n_83,fch_n_84,fch_n_85,fch_n_86,fch_n_87,fch_n_88,fch_n_89,fch_n_90,fch_n_91,fch_n_92,fch_n_93,fch_n_94}),
        .\sp_reg[1] ({rgf_n_354,rgf_n_355,rgf_n_356}),
        .\sp_reg[7] ({rgf_n_357,rgf_n_358,rgf_n_359,rgf_n_360}),
        .\sr_reg[15] ({\sreg/p_2_in ,rgf_sr_flag,rgf_sr_ie,rgf_n_270,sr_bank}),
        .\sr_reg[1] (fch_n_32),
        .\stat_reg[0] (rgf_n_336),
        .\tr_reg[0] (rgf_n_387),
        .\tr_reg[15] (rgf_tr),
        .\tr_reg[15]_0 (cbus));
endmodule
