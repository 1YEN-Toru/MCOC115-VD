
module sfpu_fdiv
   (D,
    \sglb_f_reg[29] ,
    sglc_e,
    cbus,
    \fquo_reg[19] ,
    \fquo_reg[19]_0 ,
    \fquo_reg[19]_1 ,
    \fquo_reg[19]_2 ,
    sglc_zer0,
    \fquo_reg[0] ,
    \fquo_reg[19]_3 ,
    den,
    \cbus[24]_INST_0_i_4 ,
    sgla_r_0,
    S,
    \cbus[27]_INST_0_i_5 ,
    \sglc_e[8]_i_4 ,
    \cbus[8] ,
    \cbus[8]_0 ,
    Q,
    \cbus[8]_1 ,
    \cbus[8]_2 ,
    .cbus_0_sp_1(cbus_0_sn_1),
    \cbus[0]_0 ,
    \cbus[8]_3 ,
    \cbus[8]_4 ,
    \cbus[0]_1 ,
    \cbus[0]_2 ,
    \cbus[1]_INST_0_i_1 ,
    \cbus[2]_INST_0_i_1 ,
    rem4_carry__5_0,
    fctl_load_d__4,
    \cbus[30]_INST_0_i_10 ,
    \cbus[30]_INST_0_i_10_0 ,
    \cbus[30]_INST_0_i_10_1 ,
    \cbus[30]_INST_0_i_10_2 ,
    \cbus[30]_INST_0_i_10_3 ,
    rem4_carry_0,
    \den_r_reg[49] ,
    dso_r,
    \sglc_f_reg[5] );
  output [4:0]D;
  output [25:0]\sglb_f_reg[29] ;
  output [8:0]sglc_e;
  output [0:0]cbus;
  output \fquo_reg[19] ;
  output \fquo_reg[19]_0 ;
  output \fquo_reg[19]_1 ;
  output \fquo_reg[19]_2 ;
  output sglc_zer0;
  output \fquo_reg[0] ;
  output \fquo_reg[19]_3 ;
  input [28:0]den;
  input \cbus[24]_INST_0_i_4 ;
  input [38:0]sgla_r_0;
  input [3:0]S;
  input [3:0]\cbus[27]_INST_0_i_5 ;
  input [0:0]\sglc_e[8]_i_4 ;
  input \cbus[8] ;
  input \cbus[8]_0 ;
  input [0:0]Q;
  input \cbus[8]_1 ;
  input \cbus[8]_2 ;
  input [3:0]\cbus[0]_0 ;
  input \cbus[8]_3 ;
  input \cbus[8]_4 ;
  input \cbus[0]_1 ;
  input \cbus[0]_2 ;
  input \cbus[1]_INST_0_i_1 ;
  input \cbus[2]_INST_0_i_1 ;
  input [26:0]rem4_carry__5_0;
  input fctl_load_d__4;
  input \cbus[30]_INST_0_i_10 ;
  input \cbus[30]_INST_0_i_10_0 ;
  input \cbus[30]_INST_0_i_10_1 ;
  input \cbus[30]_INST_0_i_10_2 ;
  input \cbus[30]_INST_0_i_10_3 ;
  input [0:0]rem4_carry_0;
  input [24:0]\den_r_reg[49] ;
  input [24:0]dso_r;
  input \sglc_f_reg[5] ;
  input cbus_0_sn_1;

  wire \<const0> ;
  wire [4:0]D;
  wire [0:0]Q;
  wire [3:0]S;
  wire [0:0]cbus;
  wire [3:0]\cbus[0]_0 ;
  wire \cbus[0]_1 ;
  wire \cbus[0]_2 ;
  wire \cbus[1]_INST_0_i_1 ;
  wire \cbus[24]_INST_0_i_4 ;
  wire [3:0]\cbus[27]_INST_0_i_5 ;
  wire \cbus[2]_INST_0_i_1 ;
  wire \cbus[30]_INST_0_i_10 ;
  wire \cbus[30]_INST_0_i_10_0 ;
  wire \cbus[30]_INST_0_i_10_1 ;
  wire \cbus[30]_INST_0_i_10_2 ;
  wire \cbus[30]_INST_0_i_10_3 ;
  wire \cbus[30]_INST_0_i_39_n_0 ;
  wire \cbus[30]_INST_0_i_44_n_0 ;
  wire \cbus[8] ;
  wire \cbus[8]_0 ;
  wire \cbus[8]_1 ;
  wire \cbus[8]_2 ;
  wire \cbus[8]_3 ;
  wire \cbus[8]_4 ;
  wire cbus_0_sn_1;
  wire [28:0]den;
  wire [24:0]\den_r_reg[49] ;
  wire [24:0]dso_r;
  wire fctl_load_d__4;
  wire \fquo_reg[0] ;
  wire \fquo_reg[19] ;
  wire \fquo_reg[19]_0 ;
  wire \fquo_reg[19]_1 ;
  wire \fquo_reg[19]_2 ;
  wire \fquo_reg[19]_3 ;
  wire p_0_in0;
  wire [0:0]p_1_in7_in;
  wire rem0_carry__0_i_1_n_0;
  wire rem0_carry__0_i_2_n_0;
  wire rem0_carry__0_i_3_n_0;
  wire rem0_carry__0_i_4_n_0;
  wire rem0_carry__0_n_0;
  wire rem0_carry__0_n_1;
  wire rem0_carry__0_n_2;
  wire rem0_carry__0_n_3;
  wire rem0_carry__1_i_1_n_0;
  wire rem0_carry__1_i_2_n_0;
  wire rem0_carry__1_i_3_n_0;
  wire rem0_carry__1_i_4_n_0;
  wire rem0_carry__1_n_0;
  wire rem0_carry__1_n_1;
  wire rem0_carry__1_n_2;
  wire rem0_carry__1_n_3;
  wire rem0_carry__2_i_1_n_0;
  wire rem0_carry__2_i_2_n_0;
  wire rem0_carry__2_i_3_n_0;
  wire rem0_carry__2_i_4_n_0;
  wire rem0_carry__2_n_0;
  wire rem0_carry__2_n_1;
  wire rem0_carry__2_n_2;
  wire rem0_carry__2_n_3;
  wire rem0_carry__3_i_1_n_0;
  wire rem0_carry__3_i_2_n_0;
  wire rem0_carry__3_i_3_n_0;
  wire rem0_carry__3_i_4_n_0;
  wire rem0_carry__3_n_0;
  wire rem0_carry__3_n_1;
  wire rem0_carry__3_n_2;
  wire rem0_carry__3_n_3;
  wire rem0_carry__4_i_1_n_0;
  wire rem0_carry__4_i_2_n_0;
  wire rem0_carry__4_i_3_n_0;
  wire rem0_carry__4_i_4_n_0;
  wire rem0_carry__4_n_0;
  wire rem0_carry__4_n_1;
  wire rem0_carry__4_n_2;
  wire rem0_carry__4_n_3;
  wire rem0_carry__5_i_1_n_0;
  wire rem0_carry__5_i_2_n_0;
  wire rem0_carry__5_n_3;
  wire rem0_carry_i_2_n_0;
  wire rem0_carry_i_3_n_0;
  wire rem0_carry_i_4_n_0;
  wire rem0_carry_i_5_n_0;
  wire rem0_carry_n_0;
  wire rem0_carry_n_1;
  wire rem0_carry_n_2;
  wire rem0_carry_n_3;
  wire [26:1]rem1;
  wire rem1_carry__0_i_1_n_0;
  wire rem1_carry__0_i_2_n_0;
  wire rem1_carry__0_i_3_n_0;
  wire rem1_carry__0_i_4_n_0;
  wire rem1_carry__0_n_0;
  wire rem1_carry__0_n_1;
  wire rem1_carry__0_n_2;
  wire rem1_carry__0_n_3;
  wire rem1_carry__1_i_1_n_0;
  wire rem1_carry__1_i_2_n_0;
  wire rem1_carry__1_i_3_n_0;
  wire rem1_carry__1_i_4_n_0;
  wire rem1_carry__1_n_0;
  wire rem1_carry__1_n_1;
  wire rem1_carry__1_n_2;
  wire rem1_carry__1_n_3;
  wire rem1_carry__2_i_1_n_0;
  wire rem1_carry__2_i_2_n_0;
  wire rem1_carry__2_i_3_n_0;
  wire rem1_carry__2_i_4_n_0;
  wire rem1_carry__2_n_0;
  wire rem1_carry__2_n_1;
  wire rem1_carry__2_n_2;
  wire rem1_carry__2_n_3;
  wire rem1_carry__3_i_1_n_0;
  wire rem1_carry__3_i_2_n_0;
  wire rem1_carry__3_i_3_n_0;
  wire rem1_carry__3_i_4_n_0;
  wire rem1_carry__3_n_0;
  wire rem1_carry__3_n_1;
  wire rem1_carry__3_n_2;
  wire rem1_carry__3_n_3;
  wire rem1_carry__4_i_1_n_0;
  wire rem1_carry__4_i_2_n_0;
  wire rem1_carry__4_i_3_n_0;
  wire rem1_carry__4_i_4_n_0;
  wire rem1_carry__4_n_0;
  wire rem1_carry__4_n_1;
  wire rem1_carry__4_n_2;
  wire rem1_carry__4_n_3;
  wire rem1_carry__5_i_1_n_0;
  wire rem1_carry__5_i_2_n_0;
  wire rem1_carry__5_n_3;
  wire rem1_carry_i_2_n_0;
  wire rem1_carry_i_3_n_0;
  wire rem1_carry_i_4_n_0;
  wire rem1_carry_i_5_n_0;
  wire rem1_carry_n_0;
  wire rem1_carry_n_1;
  wire rem1_carry_n_2;
  wire rem1_carry_n_3;
  wire [26:1]rem2;
  wire rem2_carry__0_i_1_n_0;
  wire rem2_carry__0_i_2_n_0;
  wire rem2_carry__0_i_3_n_0;
  wire rem2_carry__0_i_4_n_0;
  wire rem2_carry__0_n_0;
  wire rem2_carry__0_n_1;
  wire rem2_carry__0_n_2;
  wire rem2_carry__0_n_3;
  wire rem2_carry__1_i_1_n_0;
  wire rem2_carry__1_i_2_n_0;
  wire rem2_carry__1_i_3_n_0;
  wire rem2_carry__1_i_4_n_0;
  wire rem2_carry__1_n_0;
  wire rem2_carry__1_n_1;
  wire rem2_carry__1_n_2;
  wire rem2_carry__1_n_3;
  wire rem2_carry__2_i_1_n_0;
  wire rem2_carry__2_i_2_n_0;
  wire rem2_carry__2_i_3_n_0;
  wire rem2_carry__2_i_4_n_0;
  wire rem2_carry__2_n_0;
  wire rem2_carry__2_n_1;
  wire rem2_carry__2_n_2;
  wire rem2_carry__2_n_3;
  wire rem2_carry__3_i_1_n_0;
  wire rem2_carry__3_i_2_n_0;
  wire rem2_carry__3_i_3_n_0;
  wire rem2_carry__3_i_4_n_0;
  wire rem2_carry__3_n_0;
  wire rem2_carry__3_n_1;
  wire rem2_carry__3_n_2;
  wire rem2_carry__3_n_3;
  wire rem2_carry__4_i_1_n_0;
  wire rem2_carry__4_i_2_n_0;
  wire rem2_carry__4_i_3_n_0;
  wire rem2_carry__4_i_4_n_0;
  wire rem2_carry__4_n_0;
  wire rem2_carry__4_n_1;
  wire rem2_carry__4_n_2;
  wire rem2_carry__4_n_3;
  wire rem2_carry__5_i_1_n_0;
  wire rem2_carry__5_i_2_n_0;
  wire rem2_carry__5_n_3;
  wire rem2_carry_i_2_n_0;
  wire rem2_carry_i_3_n_0;
  wire rem2_carry_i_4_n_0;
  wire rem2_carry_i_5_n_0;
  wire rem2_carry_n_0;
  wire rem2_carry_n_1;
  wire rem2_carry_n_2;
  wire rem2_carry_n_3;
  wire [26:1]rem3;
  wire rem3_carry__0_i_1_n_0;
  wire rem3_carry__0_i_2_n_0;
  wire rem3_carry__0_i_3_n_0;
  wire rem3_carry__0_i_4_n_0;
  wire rem3_carry__0_n_0;
  wire rem3_carry__0_n_1;
  wire rem3_carry__0_n_2;
  wire rem3_carry__0_n_3;
  wire rem3_carry__1_i_1_n_0;
  wire rem3_carry__1_i_2_n_0;
  wire rem3_carry__1_i_3_n_0;
  wire rem3_carry__1_i_4_n_0;
  wire rem3_carry__1_n_0;
  wire rem3_carry__1_n_1;
  wire rem3_carry__1_n_2;
  wire rem3_carry__1_n_3;
  wire rem3_carry__2_i_1_n_0;
  wire rem3_carry__2_i_2_n_0;
  wire rem3_carry__2_i_3_n_0;
  wire rem3_carry__2_i_4_n_0;
  wire rem3_carry__2_n_0;
  wire rem3_carry__2_n_1;
  wire rem3_carry__2_n_2;
  wire rem3_carry__2_n_3;
  wire rem3_carry__3_i_1_n_0;
  wire rem3_carry__3_i_2_n_0;
  wire rem3_carry__3_i_3_n_0;
  wire rem3_carry__3_i_4_n_0;
  wire rem3_carry__3_n_0;
  wire rem3_carry__3_n_1;
  wire rem3_carry__3_n_2;
  wire rem3_carry__3_n_3;
  wire rem3_carry__4_i_1_n_0;
  wire rem3_carry__4_i_2_n_0;
  wire rem3_carry__4_i_3_n_0;
  wire rem3_carry__4_i_4_n_0;
  wire rem3_carry__4_n_0;
  wire rem3_carry__4_n_1;
  wire rem3_carry__4_n_2;
  wire rem3_carry__4_n_3;
  wire rem3_carry__5_i_1_n_0;
  wire rem3_carry__5_i_2_n_0;
  wire rem3_carry__5_n_3;
  wire rem3_carry_i_2_n_0;
  wire rem3_carry_i_3_n_0;
  wire rem3_carry_i_4_n_0;
  wire rem3_carry_i_5_n_0;
  wire rem3_carry_n_0;
  wire rem3_carry_n_1;
  wire rem3_carry_n_2;
  wire rem3_carry_n_3;
  wire [0:0]rem4_carry_0;
  wire rem4_carry__0_i_5_n_0;
  wire rem4_carry__0_i_6_n_0;
  wire rem4_carry__0_i_7_n_0;
  wire rem4_carry__0_i_8_n_0;
  wire rem4_carry__0_n_0;
  wire rem4_carry__0_n_1;
  wire rem4_carry__0_n_2;
  wire rem4_carry__0_n_3;
  wire rem4_carry__0_n_4;
  wire rem4_carry__0_n_5;
  wire rem4_carry__0_n_6;
  wire rem4_carry__0_n_7;
  wire rem4_carry__1_i_5_n_0;
  wire rem4_carry__1_i_6_n_0;
  wire rem4_carry__1_i_7_n_0;
  wire rem4_carry__1_i_8_n_0;
  wire rem4_carry__1_n_0;
  wire rem4_carry__1_n_1;
  wire rem4_carry__1_n_2;
  wire rem4_carry__1_n_3;
  wire rem4_carry__1_n_4;
  wire rem4_carry__1_n_5;
  wire rem4_carry__1_n_6;
  wire rem4_carry__1_n_7;
  wire rem4_carry__2_i_5_n_0;
  wire rem4_carry__2_i_6_n_0;
  wire rem4_carry__2_i_7_n_0;
  wire rem4_carry__2_i_8_n_0;
  wire rem4_carry__2_n_0;
  wire rem4_carry__2_n_1;
  wire rem4_carry__2_n_2;
  wire rem4_carry__2_n_3;
  wire rem4_carry__2_n_4;
  wire rem4_carry__2_n_5;
  wire rem4_carry__2_n_6;
  wire rem4_carry__2_n_7;
  wire rem4_carry__3_i_5_n_0;
  wire rem4_carry__3_i_6_n_0;
  wire rem4_carry__3_i_7_n_0;
  wire rem4_carry__3_i_8_n_0;
  wire rem4_carry__3_n_0;
  wire rem4_carry__3_n_1;
  wire rem4_carry__3_n_2;
  wire rem4_carry__3_n_3;
  wire rem4_carry__3_n_4;
  wire rem4_carry__3_n_5;
  wire rem4_carry__3_n_6;
  wire rem4_carry__3_n_7;
  wire rem4_carry__4_i_5_n_0;
  wire rem4_carry__4_i_6_n_0;
  wire rem4_carry__4_i_7_n_0;
  wire rem4_carry__4_i_8_n_0;
  wire rem4_carry__4_n_0;
  wire rem4_carry__4_n_1;
  wire rem4_carry__4_n_2;
  wire rem4_carry__4_n_3;
  wire rem4_carry__4_n_4;
  wire rem4_carry__4_n_5;
  wire rem4_carry__4_n_6;
  wire rem4_carry__4_n_7;
  wire [26:0]rem4_carry__5_0;
  wire rem4_carry__5_i_2_n_0;
  wire rem4_carry__5_i_3_n_0;
  wire rem4_carry__5_n_3;
  wire rem4_carry__5_n_7;
  wire rem4_carry_i_6_n_0;
  wire rem4_carry_i_7_n_0;
  wire rem4_carry_i_8_n_0;
  wire rem4_carry_i_9_n_0;
  wire rem4_carry_n_0;
  wire rem4_carry_n_1;
  wire rem4_carry_n_2;
  wire rem4_carry_n_3;
  wire rem4_carry_n_4;
  wire rem4_carry_n_5;
  wire rem4_carry_n_6;
  wire rem4_carry_n_7;
  wire [38:0]sgla_r_0;
  wire [25:0]\sglb_f_reg[29] ;
  wire [8:0]sglc_e;
  wire [0:0]\sglc_e[8]_i_4 ;
  wire sglc_e_carry__0_n_0;
  wire sglc_e_carry__0_n_1;
  wire sglc_e_carry__0_n_2;
  wire sglc_e_carry__0_n_3;
  wire sglc_e_carry_n_0;
  wire sglc_e_carry_n_1;
  wire sglc_e_carry_n_2;
  wire sglc_e_carry_n_3;
  wire \sglc_f_reg[5] ;
  wire sglc_zer0;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEFFFEF)) 
    \cbus[0]_INST_0_i_1 
       (.I0(\cbus[0]_1 ),
        .I1(\cbus[0]_2 ),
        .I2(\sglb_f_reg[29] [25]),
        .I3(\cbus[0]_0 [3]),
        .I4(rem1[26]),
        .I5(cbus_0_sn_1),
        .O(\fquo_reg[19]_0 ));
  LUT5 #(
    .INIT(32'hFFFF1015)) 
    \cbus[1]_INST_0_i_4 
       (.I0(cbus_0_sn_1),
        .I1(rem2[26]),
        .I2(\cbus[0]_0 [3]),
        .I3(rem1[26]),
        .I4(\cbus[1]_INST_0_i_1 ),
        .O(\fquo_reg[19]_1 ));
  LUT5 #(
    .INIT(32'hFFFF1015)) 
    \cbus[2]_INST_0_i_4 
       (.I0(cbus_0_sn_1),
        .I1(rem3[26]),
        .I2(\cbus[0]_0 [3]),
        .I3(rem2[26]),
        .I4(\cbus[2]_INST_0_i_1 ),
        .O(\fquo_reg[19]_2 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cbus[30]_INST_0_i_24 
       (.I0(\cbus[30]_INST_0_i_10 ),
        .I1(\cbus[30]_INST_0_i_10_0 ),
        .I2(\cbus[30]_INST_0_i_10_1 ),
        .I3(\cbus[30]_INST_0_i_39_n_0 ),
        .I4(\cbus[30]_INST_0_i_10_2 ),
        .I5(\cbus[30]_INST_0_i_10_3 ),
        .O(sglc_zer0));
  LUT6 #(
    .INIT(64'hBFBFFFBFFFFFFFFF)) 
    \cbus[30]_INST_0_i_39 
       (.I0(\cbus[30]_INST_0_i_44_n_0 ),
        .I1(rem1[26]),
        .I2(\sglb_f_reg[29] [25]),
        .I3(\cbus[0]_0 [3]),
        .I4(rem3[26]),
        .I5(rem2[26]),
        .O(\cbus[30]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFAFEFFF)) 
    \cbus[30]_INST_0_i_44 
       (.I0(\cbus[0]_0 [1]),
        .I1(\cbus[0]_0 [2]),
        .I2(p_0_in0),
        .I3(\cbus[0]_0 [3]),
        .I4(rem3[26]),
        .I5(\cbus[0]_0 [0]),
        .O(\cbus[30]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \cbus[8]_INST_0 
       (.I0(\cbus[8] ),
        .I1(\cbus[8]_0 ),
        .I2(Q),
        .I3(\cbus[8]_1 ),
        .I4(\fquo_reg[19] ),
        .I5(\cbus[8]_2 ),
        .O(cbus));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1015)) 
    \cbus[8]_INST_0_i_1 
       (.I0(cbus_0_sn_1),
        .I1(p_0_in0),
        .I2(\cbus[0]_0 [3]),
        .I3(rem3[26]),
        .I4(\cbus[8]_3 ),
        .I5(\cbus[8]_4 ),
        .O(\fquo_reg[19] ));
  LUT3 #(
    .INIT(8'h8B)) 
    \cbus[9]_INST_0_i_2 
       (.I0(\cbus[0]_0 [0]),
        .I1(\cbus[0]_0 [3]),
        .I2(p_0_in0),
        .O(\fquo_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \fquo[0]_i_1 
       (.I0(\sglb_f_reg[29] [25]),
        .O(D[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \fquo[1]_i_1 
       (.I0(rem1[26]),
        .O(D[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \fquo[2]_i_1 
       (.I0(rem2[26]),
        .O(D[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \fquo[3]_i_1 
       (.I0(rem3[26]),
        .O(D[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \fquo[4]_i_1 
       (.I0(p_0_in0),
        .O(D[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry
       (.CI(\<const0> ),
        .CO({rem0_carry_n_0,rem0_carry_n_1,rem0_carry_n_2,rem0_carry_n_3}),
        .CYINIT(D[1]),
        .DI({rem1[3:1],den[0]}),
        .O(\sglb_f_reg[29] [3:0]),
        .S({rem0_carry_i_2_n_0,rem0_carry_i_3_n_0,rem0_carry_i_4_n_0,rem0_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__0
       (.CI(rem0_carry_n_0),
        .CO({rem0_carry__0_n_0,rem0_carry__0_n_1,rem0_carry__0_n_2,rem0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem1[7:4]),
        .O(\sglb_f_reg[29] [7:4]),
        .S({rem0_carry__0_i_1_n_0,rem0_carry__0_i_2_n_0,rem0_carry__0_i_3_n_0,rem0_carry__0_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__0_i_1
       (.I0(rem1[7]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [7]),
        .I3(fctl_load_d__4),
        .I4(dso_r[7]),
        .O(rem0_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__0_i_2
       (.I0(rem1[6]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [6]),
        .I3(fctl_load_d__4),
        .I4(dso_r[6]),
        .O(rem0_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__0_i_3
       (.I0(rem1[5]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [5]),
        .I3(fctl_load_d__4),
        .I4(dso_r[5]),
        .O(rem0_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__0_i_4
       (.I0(rem1[4]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [4]),
        .I3(fctl_load_d__4),
        .I4(dso_r[4]),
        .O(rem0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__1
       (.CI(rem0_carry__0_n_0),
        .CO({rem0_carry__1_n_0,rem0_carry__1_n_1,rem0_carry__1_n_2,rem0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem1[11:8]),
        .O(\sglb_f_reg[29] [11:8]),
        .S({rem0_carry__1_i_1_n_0,rem0_carry__1_i_2_n_0,rem0_carry__1_i_3_n_0,rem0_carry__1_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__1_i_1
       (.I0(rem1[11]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [11]),
        .I3(fctl_load_d__4),
        .I4(dso_r[11]),
        .O(rem0_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__1_i_2
       (.I0(rem1[10]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [10]),
        .I3(fctl_load_d__4),
        .I4(dso_r[10]),
        .O(rem0_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__1_i_3
       (.I0(rem1[9]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [9]),
        .I3(fctl_load_d__4),
        .I4(dso_r[9]),
        .O(rem0_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__1_i_4
       (.I0(rem1[8]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [8]),
        .I3(fctl_load_d__4),
        .I4(dso_r[8]),
        .O(rem0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__2
       (.CI(rem0_carry__1_n_0),
        .CO({rem0_carry__2_n_0,rem0_carry__2_n_1,rem0_carry__2_n_2,rem0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem1[15:12]),
        .O(\sglb_f_reg[29] [15:12]),
        .S({rem0_carry__2_i_1_n_0,rem0_carry__2_i_2_n_0,rem0_carry__2_i_3_n_0,rem0_carry__2_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__2_i_1
       (.I0(rem1[15]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [15]),
        .I3(fctl_load_d__4),
        .I4(dso_r[15]),
        .O(rem0_carry__2_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__2_i_2
       (.I0(rem1[14]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [14]),
        .I3(fctl_load_d__4),
        .I4(dso_r[14]),
        .O(rem0_carry__2_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__2_i_3
       (.I0(rem1[13]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [13]),
        .I3(fctl_load_d__4),
        .I4(dso_r[13]),
        .O(rem0_carry__2_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__2_i_4
       (.I0(rem1[12]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [12]),
        .I3(fctl_load_d__4),
        .I4(dso_r[12]),
        .O(rem0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__3
       (.CI(rem0_carry__2_n_0),
        .CO({rem0_carry__3_n_0,rem0_carry__3_n_1,rem0_carry__3_n_2,rem0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem1[19:16]),
        .O(\sglb_f_reg[29] [19:16]),
        .S({rem0_carry__3_i_1_n_0,rem0_carry__3_i_2_n_0,rem0_carry__3_i_3_n_0,rem0_carry__3_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__3_i_1
       (.I0(rem1[19]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [19]),
        .I3(fctl_load_d__4),
        .I4(dso_r[19]),
        .O(rem0_carry__3_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__3_i_2
       (.I0(rem1[18]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [18]),
        .I3(fctl_load_d__4),
        .I4(dso_r[18]),
        .O(rem0_carry__3_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__3_i_3
       (.I0(rem1[17]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [17]),
        .I3(fctl_load_d__4),
        .I4(dso_r[17]),
        .O(rem0_carry__3_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__3_i_4
       (.I0(rem1[16]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [16]),
        .I3(fctl_load_d__4),
        .I4(dso_r[16]),
        .O(rem0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__4
       (.CI(rem0_carry__3_n_0),
        .CO({rem0_carry__4_n_0,rem0_carry__4_n_1,rem0_carry__4_n_2,rem0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem1[23:20]),
        .O(\sglb_f_reg[29] [23:20]),
        .S({rem0_carry__4_i_1_n_0,rem0_carry__4_i_2_n_0,rem0_carry__4_i_3_n_0,rem0_carry__4_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__4_i_1
       (.I0(rem1[23]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [23]),
        .I3(fctl_load_d__4),
        .I4(dso_r[23]),
        .O(rem0_carry__4_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__4_i_2
       (.I0(rem1[22]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [22]),
        .I3(fctl_load_d__4),
        .I4(dso_r[22]),
        .O(rem0_carry__4_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__4_i_3
       (.I0(rem1[21]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [21]),
        .I3(fctl_load_d__4),
        .I4(dso_r[21]),
        .O(rem0_carry__4_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__4_i_4
       (.I0(rem1[20]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [20]),
        .I3(fctl_load_d__4),
        .I4(dso_r[20]),
        .O(rem0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem0_carry__5
       (.CI(rem0_carry__4_n_0),
        .CO(rem0_carry__5_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,rem1[24]}),
        .O(\sglb_f_reg[29] [25:24]),
        .S({\<const0> ,\<const0> ,rem0_carry__5_i_1_n_0,rem0_carry__5_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rem0_carry__5_i_1
       (.I0(rem1[25]),
        .I1(rem1[26]),
        .O(rem0_carry__5_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry__5_i_2
       (.I0(rem1[24]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [24]),
        .I3(fctl_load_d__4),
        .I4(dso_r[24]),
        .O(rem0_carry__5_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry_i_2
       (.I0(rem1[3]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [3]),
        .I3(fctl_load_d__4),
        .I4(dso_r[3]),
        .O(rem0_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry_i_3
       (.I0(rem1[2]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [2]),
        .I3(fctl_load_d__4),
        .I4(dso_r[2]),
        .O(rem0_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem0_carry_i_4
       (.I0(rem1[1]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [1]),
        .I3(fctl_load_d__4),
        .I4(dso_r[1]),
        .O(rem0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69CC6933)) 
    rem0_carry_i_5
       (.I0(sgla_r_0[0]),
        .I1(rem1[26]),
        .I2(\den_r_reg[49] [0]),
        .I3(fctl_load_d__4),
        .I4(dso_r[0]),
        .O(rem0_carry_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry
       (.CI(\<const0> ),
        .CO({rem1_carry_n_0,rem1_carry_n_1,rem1_carry_n_2,rem1_carry_n_3}),
        .CYINIT(D[2]),
        .DI({rem2[3:1],den[1]}),
        .O(rem1[4:1]),
        .S({rem1_carry_i_2_n_0,rem1_carry_i_3_n_0,rem1_carry_i_4_n_0,rem1_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry__0
       (.CI(rem1_carry_n_0),
        .CO({rem1_carry__0_n_0,rem1_carry__0_n_1,rem1_carry__0_n_2,rem1_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2[7:4]),
        .O(rem1[8:5]),
        .S({rem1_carry__0_i_1_n_0,rem1_carry__0_i_2_n_0,rem1_carry__0_i_3_n_0,rem1_carry__0_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__0_i_1
       (.I0(rem2[7]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [7]),
        .I3(fctl_load_d__4),
        .I4(dso_r[7]),
        .O(rem1_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__0_i_2
       (.I0(rem2[6]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [6]),
        .I3(fctl_load_d__4),
        .I4(dso_r[6]),
        .O(rem1_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__0_i_3
       (.I0(rem2[5]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [5]),
        .I3(fctl_load_d__4),
        .I4(dso_r[5]),
        .O(rem1_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__0_i_4
       (.I0(rem2[4]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [4]),
        .I3(fctl_load_d__4),
        .I4(dso_r[4]),
        .O(rem1_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry__1
       (.CI(rem1_carry__0_n_0),
        .CO({rem1_carry__1_n_0,rem1_carry__1_n_1,rem1_carry__1_n_2,rem1_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2[11:8]),
        .O(rem1[12:9]),
        .S({rem1_carry__1_i_1_n_0,rem1_carry__1_i_2_n_0,rem1_carry__1_i_3_n_0,rem1_carry__1_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__1_i_1
       (.I0(rem2[11]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [11]),
        .I3(fctl_load_d__4),
        .I4(dso_r[11]),
        .O(rem1_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__1_i_2
       (.I0(rem2[10]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [10]),
        .I3(fctl_load_d__4),
        .I4(dso_r[10]),
        .O(rem1_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__1_i_3
       (.I0(rem2[9]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [9]),
        .I3(fctl_load_d__4),
        .I4(dso_r[9]),
        .O(rem1_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__1_i_4
       (.I0(rem2[8]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [8]),
        .I3(fctl_load_d__4),
        .I4(dso_r[8]),
        .O(rem1_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry__2
       (.CI(rem1_carry__1_n_0),
        .CO({rem1_carry__2_n_0,rem1_carry__2_n_1,rem1_carry__2_n_2,rem1_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2[15:12]),
        .O(rem1[16:13]),
        .S({rem1_carry__2_i_1_n_0,rem1_carry__2_i_2_n_0,rem1_carry__2_i_3_n_0,rem1_carry__2_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__2_i_1
       (.I0(rem2[15]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [15]),
        .I3(fctl_load_d__4),
        .I4(dso_r[15]),
        .O(rem1_carry__2_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__2_i_2
       (.I0(rem2[14]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [14]),
        .I3(fctl_load_d__4),
        .I4(dso_r[14]),
        .O(rem1_carry__2_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__2_i_3
       (.I0(rem2[13]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [13]),
        .I3(fctl_load_d__4),
        .I4(dso_r[13]),
        .O(rem1_carry__2_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__2_i_4
       (.I0(rem2[12]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [12]),
        .I3(fctl_load_d__4),
        .I4(dso_r[12]),
        .O(rem1_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry__3
       (.CI(rem1_carry__2_n_0),
        .CO({rem1_carry__3_n_0,rem1_carry__3_n_1,rem1_carry__3_n_2,rem1_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2[19:16]),
        .O(rem1[20:17]),
        .S({rem1_carry__3_i_1_n_0,rem1_carry__3_i_2_n_0,rem1_carry__3_i_3_n_0,rem1_carry__3_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__3_i_1
       (.I0(rem2[19]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [19]),
        .I3(fctl_load_d__4),
        .I4(dso_r[19]),
        .O(rem1_carry__3_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__3_i_2
       (.I0(rem2[18]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [18]),
        .I3(fctl_load_d__4),
        .I4(dso_r[18]),
        .O(rem1_carry__3_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__3_i_3
       (.I0(rem2[17]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [17]),
        .I3(fctl_load_d__4),
        .I4(dso_r[17]),
        .O(rem1_carry__3_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__3_i_4
       (.I0(rem2[16]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [16]),
        .I3(fctl_load_d__4),
        .I4(dso_r[16]),
        .O(rem1_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry__4
       (.CI(rem1_carry__3_n_0),
        .CO({rem1_carry__4_n_0,rem1_carry__4_n_1,rem1_carry__4_n_2,rem1_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem2[23:20]),
        .O(rem1[24:21]),
        .S({rem1_carry__4_i_1_n_0,rem1_carry__4_i_2_n_0,rem1_carry__4_i_3_n_0,rem1_carry__4_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__4_i_1
       (.I0(rem2[23]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [23]),
        .I3(fctl_load_d__4),
        .I4(dso_r[23]),
        .O(rem1_carry__4_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__4_i_2
       (.I0(rem2[22]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [22]),
        .I3(fctl_load_d__4),
        .I4(dso_r[22]),
        .O(rem1_carry__4_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__4_i_3
       (.I0(rem2[21]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [21]),
        .I3(fctl_load_d__4),
        .I4(dso_r[21]),
        .O(rem1_carry__4_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__4_i_4
       (.I0(rem2[20]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [20]),
        .I3(fctl_load_d__4),
        .I4(dso_r[20]),
        .O(rem1_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem1_carry__5
       (.CI(rem1_carry__4_n_0),
        .CO(rem1_carry__5_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,rem2[24]}),
        .O(rem1[26:25]),
        .S({\<const0> ,\<const0> ,rem1_carry__5_i_1_n_0,rem1_carry__5_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rem1_carry__5_i_1
       (.I0(rem2[25]),
        .I1(rem2[26]),
        .O(rem1_carry__5_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry__5_i_2
       (.I0(rem2[24]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [24]),
        .I3(fctl_load_d__4),
        .I4(dso_r[24]),
        .O(rem1_carry__5_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry_i_2
       (.I0(rem2[3]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [3]),
        .I3(fctl_load_d__4),
        .I4(dso_r[3]),
        .O(rem1_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry_i_3
       (.I0(rem2[2]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [2]),
        .I3(fctl_load_d__4),
        .I4(dso_r[2]),
        .O(rem1_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem1_carry_i_4
       (.I0(rem2[1]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [1]),
        .I3(fctl_load_d__4),
        .I4(dso_r[1]),
        .O(rem1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69CC6933)) 
    rem1_carry_i_5
       (.I0(sgla_r_0[1]),
        .I1(rem2[26]),
        .I2(\den_r_reg[49] [0]),
        .I3(fctl_load_d__4),
        .I4(dso_r[0]),
        .O(rem1_carry_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry
       (.CI(\<const0> ),
        .CO({rem2_carry_n_0,rem2_carry_n_1,rem2_carry_n_2,rem2_carry_n_3}),
        .CYINIT(D[3]),
        .DI({rem3[3:1],den[2]}),
        .O(rem2[4:1]),
        .S({rem2_carry_i_2_n_0,rem2_carry_i_3_n_0,rem2_carry_i_4_n_0,rem2_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__0
       (.CI(rem2_carry_n_0),
        .CO({rem2_carry__0_n_0,rem2_carry__0_n_1,rem2_carry__0_n_2,rem2_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem3[7:4]),
        .O(rem2[8:5]),
        .S({rem2_carry__0_i_1_n_0,rem2_carry__0_i_2_n_0,rem2_carry__0_i_3_n_0,rem2_carry__0_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__0_i_1
       (.I0(rem3[7]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [7]),
        .I3(fctl_load_d__4),
        .I4(dso_r[7]),
        .O(rem2_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__0_i_2
       (.I0(rem3[6]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [6]),
        .I3(fctl_load_d__4),
        .I4(dso_r[6]),
        .O(rem2_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__0_i_3
       (.I0(rem3[5]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [5]),
        .I3(fctl_load_d__4),
        .I4(dso_r[5]),
        .O(rem2_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__0_i_4
       (.I0(rem3[4]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [4]),
        .I3(fctl_load_d__4),
        .I4(dso_r[4]),
        .O(rem2_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__1
       (.CI(rem2_carry__0_n_0),
        .CO({rem2_carry__1_n_0,rem2_carry__1_n_1,rem2_carry__1_n_2,rem2_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem3[11:8]),
        .O(rem2[12:9]),
        .S({rem2_carry__1_i_1_n_0,rem2_carry__1_i_2_n_0,rem2_carry__1_i_3_n_0,rem2_carry__1_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__1_i_1
       (.I0(rem3[11]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [11]),
        .I3(fctl_load_d__4),
        .I4(dso_r[11]),
        .O(rem2_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__1_i_2
       (.I0(rem3[10]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [10]),
        .I3(fctl_load_d__4),
        .I4(dso_r[10]),
        .O(rem2_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__1_i_3
       (.I0(rem3[9]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [9]),
        .I3(fctl_load_d__4),
        .I4(dso_r[9]),
        .O(rem2_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__1_i_4
       (.I0(rem3[8]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [8]),
        .I3(fctl_load_d__4),
        .I4(dso_r[8]),
        .O(rem2_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__2
       (.CI(rem2_carry__1_n_0),
        .CO({rem2_carry__2_n_0,rem2_carry__2_n_1,rem2_carry__2_n_2,rem2_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem3[15:12]),
        .O(rem2[16:13]),
        .S({rem2_carry__2_i_1_n_0,rem2_carry__2_i_2_n_0,rem2_carry__2_i_3_n_0,rem2_carry__2_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__2_i_1
       (.I0(rem3[15]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [15]),
        .I3(fctl_load_d__4),
        .I4(dso_r[15]),
        .O(rem2_carry__2_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__2_i_2
       (.I0(rem3[14]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [14]),
        .I3(fctl_load_d__4),
        .I4(dso_r[14]),
        .O(rem2_carry__2_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__2_i_3
       (.I0(rem3[13]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [13]),
        .I3(fctl_load_d__4),
        .I4(dso_r[13]),
        .O(rem2_carry__2_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__2_i_4
       (.I0(rem3[12]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [12]),
        .I3(fctl_load_d__4),
        .I4(dso_r[12]),
        .O(rem2_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__3
       (.CI(rem2_carry__2_n_0),
        .CO({rem2_carry__3_n_0,rem2_carry__3_n_1,rem2_carry__3_n_2,rem2_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem3[19:16]),
        .O(rem2[20:17]),
        .S({rem2_carry__3_i_1_n_0,rem2_carry__3_i_2_n_0,rem2_carry__3_i_3_n_0,rem2_carry__3_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__3_i_1
       (.I0(rem3[19]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [19]),
        .I3(fctl_load_d__4),
        .I4(dso_r[19]),
        .O(rem2_carry__3_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__3_i_2
       (.I0(rem3[18]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [18]),
        .I3(fctl_load_d__4),
        .I4(dso_r[18]),
        .O(rem2_carry__3_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__3_i_3
       (.I0(rem3[17]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [17]),
        .I3(fctl_load_d__4),
        .I4(dso_r[17]),
        .O(rem2_carry__3_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__3_i_4
       (.I0(rem3[16]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [16]),
        .I3(fctl_load_d__4),
        .I4(dso_r[16]),
        .O(rem2_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__4
       (.CI(rem2_carry__3_n_0),
        .CO({rem2_carry__4_n_0,rem2_carry__4_n_1,rem2_carry__4_n_2,rem2_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(rem3[23:20]),
        .O(rem2[24:21]),
        .S({rem2_carry__4_i_1_n_0,rem2_carry__4_i_2_n_0,rem2_carry__4_i_3_n_0,rem2_carry__4_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__4_i_1
       (.I0(rem3[23]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [23]),
        .I3(fctl_load_d__4),
        .I4(dso_r[23]),
        .O(rem2_carry__4_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__4_i_2
       (.I0(rem3[22]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [22]),
        .I3(fctl_load_d__4),
        .I4(dso_r[22]),
        .O(rem2_carry__4_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__4_i_3
       (.I0(rem3[21]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [21]),
        .I3(fctl_load_d__4),
        .I4(dso_r[21]),
        .O(rem2_carry__4_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__4_i_4
       (.I0(rem3[20]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [20]),
        .I3(fctl_load_d__4),
        .I4(dso_r[20]),
        .O(rem2_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem2_carry__5
       (.CI(rem2_carry__4_n_0),
        .CO(rem2_carry__5_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,rem3[24]}),
        .O(rem2[26:25]),
        .S({\<const0> ,\<const0> ,rem2_carry__5_i_1_n_0,rem2_carry__5_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rem2_carry__5_i_1
       (.I0(rem3[25]),
        .I1(rem3[26]),
        .O(rem2_carry__5_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry__5_i_2
       (.I0(rem3[24]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [24]),
        .I3(fctl_load_d__4),
        .I4(dso_r[24]),
        .O(rem2_carry__5_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry_i_2
       (.I0(rem3[3]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [3]),
        .I3(fctl_load_d__4),
        .I4(dso_r[3]),
        .O(rem2_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry_i_3
       (.I0(rem3[2]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [2]),
        .I3(fctl_load_d__4),
        .I4(dso_r[2]),
        .O(rem2_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem2_carry_i_4
       (.I0(rem3[1]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [1]),
        .I3(fctl_load_d__4),
        .I4(dso_r[1]),
        .O(rem2_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69CC6933)) 
    rem2_carry_i_5
       (.I0(sgla_r_0[2]),
        .I1(rem3[26]),
        .I2(\den_r_reg[49] [0]),
        .I3(fctl_load_d__4),
        .I4(dso_r[0]),
        .O(rem2_carry_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry
       (.CI(\<const0> ),
        .CO({rem3_carry_n_0,rem3_carry_n_1,rem3_carry_n_2,rem3_carry_n_3}),
        .CYINIT(D[4]),
        .DI({rem4_carry_n_5,rem4_carry_n_6,rem4_carry_n_7,den[3]}),
        .O(rem3[4:1]),
        .S({rem3_carry_i_2_n_0,rem3_carry_i_3_n_0,rem3_carry_i_4_n_0,rem3_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__0
       (.CI(rem3_carry_n_0),
        .CO({rem3_carry__0_n_0,rem3_carry__0_n_1,rem3_carry__0_n_2,rem3_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({rem4_carry__0_n_5,rem4_carry__0_n_6,rem4_carry__0_n_7,rem4_carry_n_4}),
        .O(rem3[8:5]),
        .S({rem3_carry__0_i_1_n_0,rem3_carry__0_i_2_n_0,rem3_carry__0_i_3_n_0,rem3_carry__0_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__0_i_1
       (.I0(rem4_carry__0_n_5),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [7]),
        .I3(fctl_load_d__4),
        .I4(dso_r[7]),
        .O(rem3_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__0_i_2
       (.I0(rem4_carry__0_n_6),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [6]),
        .I3(fctl_load_d__4),
        .I4(dso_r[6]),
        .O(rem3_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__0_i_3
       (.I0(rem4_carry__0_n_7),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [5]),
        .I3(fctl_load_d__4),
        .I4(dso_r[5]),
        .O(rem3_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__0_i_4
       (.I0(rem4_carry_n_4),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [4]),
        .I3(fctl_load_d__4),
        .I4(dso_r[4]),
        .O(rem3_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__1
       (.CI(rem3_carry__0_n_0),
        .CO({rem3_carry__1_n_0,rem3_carry__1_n_1,rem3_carry__1_n_2,rem3_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({rem4_carry__1_n_5,rem4_carry__1_n_6,rem4_carry__1_n_7,rem4_carry__0_n_4}),
        .O(rem3[12:9]),
        .S({rem3_carry__1_i_1_n_0,rem3_carry__1_i_2_n_0,rem3_carry__1_i_3_n_0,rem3_carry__1_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__1_i_1
       (.I0(rem4_carry__1_n_5),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [11]),
        .I3(fctl_load_d__4),
        .I4(dso_r[11]),
        .O(rem3_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__1_i_2
       (.I0(rem4_carry__1_n_6),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [10]),
        .I3(fctl_load_d__4),
        .I4(dso_r[10]),
        .O(rem3_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__1_i_3
       (.I0(rem4_carry__1_n_7),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [9]),
        .I3(fctl_load_d__4),
        .I4(dso_r[9]),
        .O(rem3_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__1_i_4
       (.I0(rem4_carry__0_n_4),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [8]),
        .I3(fctl_load_d__4),
        .I4(dso_r[8]),
        .O(rem3_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__2
       (.CI(rem3_carry__1_n_0),
        .CO({rem3_carry__2_n_0,rem3_carry__2_n_1,rem3_carry__2_n_2,rem3_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({rem4_carry__2_n_5,rem4_carry__2_n_6,rem4_carry__2_n_7,rem4_carry__1_n_4}),
        .O(rem3[16:13]),
        .S({rem3_carry__2_i_1_n_0,rem3_carry__2_i_2_n_0,rem3_carry__2_i_3_n_0,rem3_carry__2_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__2_i_1
       (.I0(rem4_carry__2_n_5),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [15]),
        .I3(fctl_load_d__4),
        .I4(dso_r[15]),
        .O(rem3_carry__2_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__2_i_2
       (.I0(rem4_carry__2_n_6),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [14]),
        .I3(fctl_load_d__4),
        .I4(dso_r[14]),
        .O(rem3_carry__2_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__2_i_3
       (.I0(rem4_carry__2_n_7),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [13]),
        .I3(fctl_load_d__4),
        .I4(dso_r[13]),
        .O(rem3_carry__2_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__2_i_4
       (.I0(rem4_carry__1_n_4),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [12]),
        .I3(fctl_load_d__4),
        .I4(dso_r[12]),
        .O(rem3_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__3
       (.CI(rem3_carry__2_n_0),
        .CO({rem3_carry__3_n_0,rem3_carry__3_n_1,rem3_carry__3_n_2,rem3_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI({rem4_carry__3_n_5,rem4_carry__3_n_6,rem4_carry__3_n_7,rem4_carry__2_n_4}),
        .O(rem3[20:17]),
        .S({rem3_carry__3_i_1_n_0,rem3_carry__3_i_2_n_0,rem3_carry__3_i_3_n_0,rem3_carry__3_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__3_i_1
       (.I0(rem4_carry__3_n_5),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [19]),
        .I3(fctl_load_d__4),
        .I4(dso_r[19]),
        .O(rem3_carry__3_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__3_i_2
       (.I0(rem4_carry__3_n_6),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [18]),
        .I3(fctl_load_d__4),
        .I4(dso_r[18]),
        .O(rem3_carry__3_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__3_i_3
       (.I0(rem4_carry__3_n_7),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [17]),
        .I3(fctl_load_d__4),
        .I4(dso_r[17]),
        .O(rem3_carry__3_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__3_i_4
       (.I0(rem4_carry__2_n_4),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [16]),
        .I3(fctl_load_d__4),
        .I4(dso_r[16]),
        .O(rem3_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__4
       (.CI(rem3_carry__3_n_0),
        .CO({rem3_carry__4_n_0,rem3_carry__4_n_1,rem3_carry__4_n_2,rem3_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI({rem4_carry__4_n_5,rem4_carry__4_n_6,rem4_carry__4_n_7,rem4_carry__3_n_4}),
        .O(rem3[24:21]),
        .S({rem3_carry__4_i_1_n_0,rem3_carry__4_i_2_n_0,rem3_carry__4_i_3_n_0,rem3_carry__4_i_4_n_0}));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__4_i_1
       (.I0(rem4_carry__4_n_5),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [23]),
        .I3(fctl_load_d__4),
        .I4(dso_r[23]),
        .O(rem3_carry__4_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__4_i_2
       (.I0(rem4_carry__4_n_6),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [22]),
        .I3(fctl_load_d__4),
        .I4(dso_r[22]),
        .O(rem3_carry__4_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__4_i_3
       (.I0(rem4_carry__4_n_7),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [21]),
        .I3(fctl_load_d__4),
        .I4(dso_r[21]),
        .O(rem3_carry__4_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__4_i_4
       (.I0(rem4_carry__3_n_4),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [20]),
        .I3(fctl_load_d__4),
        .I4(dso_r[20]),
        .O(rem3_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem3_carry__5
       (.CI(rem3_carry__4_n_0),
        .CO(rem3_carry__5_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,rem4_carry__4_n_4}),
        .O(rem3[26:25]),
        .S({\<const0> ,\<const0> ,rem3_carry__5_i_1_n_0,rem3_carry__5_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rem3_carry__5_i_1
       (.I0(rem4_carry__5_n_7),
        .I1(p_0_in0),
        .O(rem3_carry__5_i_1_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry__5_i_2
       (.I0(rem4_carry__4_n_4),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [24]),
        .I3(fctl_load_d__4),
        .I4(dso_r[24]),
        .O(rem3_carry__5_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry_i_2
       (.I0(rem4_carry_n_5),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [3]),
        .I3(fctl_load_d__4),
        .I4(dso_r[3]),
        .O(rem3_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry_i_3
       (.I0(rem4_carry_n_6),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [2]),
        .I3(fctl_load_d__4),
        .I4(dso_r[2]),
        .O(rem3_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h69666999)) 
    rem3_carry_i_4
       (.I0(rem4_carry_n_7),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [1]),
        .I3(fctl_load_d__4),
        .I4(dso_r[1]),
        .O(rem3_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69CC6933)) 
    rem3_carry_i_5
       (.I0(sgla_r_0[3]),
        .I1(p_0_in0),
        .I2(\den_r_reg[49] [0]),
        .I3(fctl_load_d__4),
        .I4(dso_r[0]),
        .O(rem3_carry_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem4_carry
       (.CI(\<const0> ),
        .CO({rem4_carry_n_0,rem4_carry_n_1,rem4_carry_n_2,rem4_carry_n_3}),
        .CYINIT(p_1_in7_in),
        .DI(den[7:4]),
        .O({rem4_carry_n_4,rem4_carry_n_5,rem4_carry_n_6,rem4_carry_n_7}),
        .S({rem4_carry_i_6_n_0,rem4_carry_i_7_n_0,rem4_carry_i_8_n_0,rem4_carry_i_9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem4_carry__0
       (.CI(rem4_carry_n_0),
        .CO({rem4_carry__0_n_0,rem4_carry__0_n_1,rem4_carry__0_n_2,rem4_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(den[11:8]),
        .O({rem4_carry__0_n_4,rem4_carry__0_n_5,rem4_carry__0_n_6,rem4_carry__0_n_7}),
        .S({rem4_carry__0_i_5_n_0,rem4_carry__0_i_6_n_0,rem4_carry__0_i_7_n_0,rem4_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__0_i_5
       (.I0(rem4_carry__5_0[7]),
        .I1(sgla_r_0[11]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [7]),
        .I4(fctl_load_d__4),
        .I5(dso_r[7]),
        .O(rem4_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__0_i_6
       (.I0(rem4_carry__5_0[6]),
        .I1(sgla_r_0[10]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [6]),
        .I4(fctl_load_d__4),
        .I5(dso_r[6]),
        .O(rem4_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__0_i_7
       (.I0(rem4_carry__5_0[5]),
        .I1(sgla_r_0[9]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [5]),
        .I4(fctl_load_d__4),
        .I5(dso_r[5]),
        .O(rem4_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__0_i_8
       (.I0(rem4_carry__5_0[4]),
        .I1(sgla_r_0[8]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [4]),
        .I4(fctl_load_d__4),
        .I5(dso_r[4]),
        .O(rem4_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem4_carry__1
       (.CI(rem4_carry__0_n_0),
        .CO({rem4_carry__1_n_0,rem4_carry__1_n_1,rem4_carry__1_n_2,rem4_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(den[15:12]),
        .O({rem4_carry__1_n_4,rem4_carry__1_n_5,rem4_carry__1_n_6,rem4_carry__1_n_7}),
        .S({rem4_carry__1_i_5_n_0,rem4_carry__1_i_6_n_0,rem4_carry__1_i_7_n_0,rem4_carry__1_i_8_n_0}));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__1_i_5
       (.I0(rem4_carry__5_0[11]),
        .I1(sgla_r_0[15]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [11]),
        .I4(fctl_load_d__4),
        .I5(dso_r[11]),
        .O(rem4_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__1_i_6
       (.I0(rem4_carry__5_0[10]),
        .I1(sgla_r_0[14]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [10]),
        .I4(fctl_load_d__4),
        .I5(dso_r[10]),
        .O(rem4_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__1_i_7
       (.I0(rem4_carry__5_0[9]),
        .I1(sgla_r_0[13]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [9]),
        .I4(fctl_load_d__4),
        .I5(dso_r[9]),
        .O(rem4_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__1_i_8
       (.I0(rem4_carry__5_0[8]),
        .I1(sgla_r_0[12]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [8]),
        .I4(fctl_load_d__4),
        .I5(dso_r[8]),
        .O(rem4_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem4_carry__2
       (.CI(rem4_carry__1_n_0),
        .CO({rem4_carry__2_n_0,rem4_carry__2_n_1,rem4_carry__2_n_2,rem4_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(den[19:16]),
        .O({rem4_carry__2_n_4,rem4_carry__2_n_5,rem4_carry__2_n_6,rem4_carry__2_n_7}),
        .S({rem4_carry__2_i_5_n_0,rem4_carry__2_i_6_n_0,rem4_carry__2_i_7_n_0,rem4_carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__2_i_5
       (.I0(rem4_carry__5_0[15]),
        .I1(sgla_r_0[19]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [15]),
        .I4(fctl_load_d__4),
        .I5(dso_r[15]),
        .O(rem4_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__2_i_6
       (.I0(rem4_carry__5_0[14]),
        .I1(sgla_r_0[18]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [14]),
        .I4(fctl_load_d__4),
        .I5(dso_r[14]),
        .O(rem4_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__2_i_7
       (.I0(rem4_carry__5_0[13]),
        .I1(sgla_r_0[17]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [13]),
        .I4(fctl_load_d__4),
        .I5(dso_r[13]),
        .O(rem4_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__2_i_8
       (.I0(rem4_carry__5_0[12]),
        .I1(sgla_r_0[16]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [12]),
        .I4(fctl_load_d__4),
        .I5(dso_r[12]),
        .O(rem4_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem4_carry__3
       (.CI(rem4_carry__2_n_0),
        .CO({rem4_carry__3_n_0,rem4_carry__3_n_1,rem4_carry__3_n_2,rem4_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(den[23:20]),
        .O({rem4_carry__3_n_4,rem4_carry__3_n_5,rem4_carry__3_n_6,rem4_carry__3_n_7}),
        .S({rem4_carry__3_i_5_n_0,rem4_carry__3_i_6_n_0,rem4_carry__3_i_7_n_0,rem4_carry__3_i_8_n_0}));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__3_i_5
       (.I0(rem4_carry__5_0[19]),
        .I1(sgla_r_0[23]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [19]),
        .I4(fctl_load_d__4),
        .I5(dso_r[19]),
        .O(rem4_carry__3_i_5_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__3_i_6
       (.I0(rem4_carry__5_0[18]),
        .I1(sgla_r_0[22]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [18]),
        .I4(fctl_load_d__4),
        .I5(dso_r[18]),
        .O(rem4_carry__3_i_6_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__3_i_7
       (.I0(rem4_carry__5_0[17]),
        .I1(sgla_r_0[21]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [17]),
        .I4(fctl_load_d__4),
        .I5(dso_r[17]),
        .O(rem4_carry__3_i_7_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__3_i_8
       (.I0(rem4_carry__5_0[16]),
        .I1(sgla_r_0[20]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [16]),
        .I4(fctl_load_d__4),
        .I5(dso_r[16]),
        .O(rem4_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem4_carry__4
       (.CI(rem4_carry__3_n_0),
        .CO({rem4_carry__4_n_0,rem4_carry__4_n_1,rem4_carry__4_n_2,rem4_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(den[27:24]),
        .O({rem4_carry__4_n_4,rem4_carry__4_n_5,rem4_carry__4_n_6,rem4_carry__4_n_7}),
        .S({rem4_carry__4_i_5_n_0,rem4_carry__4_i_6_n_0,rem4_carry__4_i_7_n_0,rem4_carry__4_i_8_n_0}));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__4_i_5
       (.I0(rem4_carry__5_0[23]),
        .I1(sgla_r_0[27]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [23]),
        .I4(fctl_load_d__4),
        .I5(dso_r[23]),
        .O(rem4_carry__4_i_5_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__4_i_6
       (.I0(rem4_carry__5_0[22]),
        .I1(sgla_r_0[26]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [22]),
        .I4(fctl_load_d__4),
        .I5(dso_r[22]),
        .O(rem4_carry__4_i_6_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__4_i_7
       (.I0(rem4_carry__5_0[21]),
        .I1(sgla_r_0[25]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [21]),
        .I4(fctl_load_d__4),
        .I5(dso_r[21]),
        .O(rem4_carry__4_i_7_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__4_i_8
       (.I0(rem4_carry__5_0[20]),
        .I1(sgla_r_0[24]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [20]),
        .I4(fctl_load_d__4),
        .I5(dso_r[20]),
        .O(rem4_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rem4_carry__5
       (.CI(rem4_carry__4_n_0),
        .CO(rem4_carry__5_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,den[28]}),
        .O({p_0_in0,rem4_carry__5_n_7}),
        .S({\<const0> ,\<const0> ,rem4_carry__5_i_2_n_0,rem4_carry__5_i_3_n_0}));
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    rem4_carry__5_i_2
       (.I0(rem4_carry__5_0[25]),
        .I1(sgla_r_0[29]),
        .I2(rem4_carry__5_0[26]),
        .I3(fctl_load_d__4),
        .I4(sgla_r_0[30]),
        .O(rem4_carry__5_i_2_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry__5_i_3
       (.I0(rem4_carry__5_0[24]),
        .I1(sgla_r_0[28]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [24]),
        .I4(fctl_load_d__4),
        .I5(dso_r[24]),
        .O(rem4_carry__5_i_3_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    rem4_carry_i_1
       (.I0(rem4_carry__5_0[26]),
        .I1(fctl_load_d__4),
        .I2(sgla_r_0[30]),
        .O(p_1_in7_in));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry_i_6
       (.I0(rem4_carry__5_0[3]),
        .I1(sgla_r_0[7]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [3]),
        .I4(fctl_load_d__4),
        .I5(dso_r[3]),
        .O(rem4_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry_i_7
       (.I0(rem4_carry__5_0[2]),
        .I1(sgla_r_0[6]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [2]),
        .I4(fctl_load_d__4),
        .I5(dso_r[2]),
        .O(rem4_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry_i_8
       (.I0(rem4_carry__5_0[1]),
        .I1(sgla_r_0[5]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [1]),
        .I4(fctl_load_d__4),
        .I5(dso_r[1]),
        .O(rem4_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    rem4_carry_i_9
       (.I0(rem4_carry__5_0[0]),
        .I1(sgla_r_0[4]),
        .I2(rem4_carry_0),
        .I3(\den_r_reg[49] [0]),
        .I4(fctl_load_d__4),
        .I5(dso_r[0]),
        .O(rem4_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sglc_e_carry
       (.CI(\<const0> ),
        .CO({sglc_e_carry_n_0,sglc_e_carry_n_1,sglc_e_carry_n_2,sglc_e_carry_n_3}),
        .CYINIT(\cbus[24]_INST_0_i_4 ),
        .DI(sgla_r_0[34:31]),
        .O(sglc_e[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sglc_e_carry__0
       (.CI(sglc_e_carry_n_0),
        .CO({sglc_e_carry__0_n_0,sglc_e_carry__0_n_1,sglc_e_carry__0_n_2,sglc_e_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(sgla_r_0[38:35]),
        .O(sglc_e[7:4]),
        .S(\cbus[27]_INST_0_i_5 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sglc_e_carry__1
       (.CI(sglc_e_carry__0_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(sglc_e[8]),
        .S({\<const0> ,\<const0> ,\<const0> ,\sglc_e[8]_i_4 }));
  LUT2 #(
    .INIT(4'h8)) 
    \sglc_f[5]_i_2 
       (.I0(\fquo_reg[19]_0 ),
        .I1(\sglc_f_reg[5] ),
        .O(\fquo_reg[19]_3 ));
endmodule

module sfpu_fsm
   (fctl_ccmd_add,
    E,
    fctl_ccmd_sub,
    fctl_ccmd_mul,
    fctl_ccmd_hlf,
    fctl_ccmd_int,
    .ccmd_1_sp_1(ccmd_1_sn_1),
    fctl_load_b,
    \ccmd[1]_0 ,
    \ccmd[1]_1 ,
    \abus[16] ,
    \ccmd[1]_2 ,
    .abus_14_sp_1(abus_14_sn_1),
    \sgla_f_reg[16] ,
    \ccmd[1]_3 ,
    \ccmd[1]_4 ,
    \sgla_f_reg[23] ,
    \stat_reg[3]_0 ,
    \stat_reg[3]_1 ,
    \abus[19] ,
    \abus[20] ,
    .abus_13_sp_1(abus_13_sn_1),
    \stat_reg[2]_0 ,
    Q,
    \stat_reg[0]_0 ,
    \abus[18] ,
    \abus[15] ,
    D,
    \bbus[22] ,
    \bbus[24] ,
    \stat_reg[2]_1 ,
    fctl_ccmd_int_reg_0,
    \bbus[26] ,
    \bbus[27] ,
    \bbus[24]_0 ,
    \bbus[25] ,
    sglb_r,
    \stat_reg[0]_1 ,
    \stat_reg[0]_2 ,
    \sglc_f_reg[13] ,
    \sglc_f_reg[14] ,
    \stat_reg[0]_3 ,
    \stat_reg[0]_4 ,
    \stat_reg[0]_5 ,
    \stat_reg[3]_2 ,
    cbus,
    fctl_ccmd_add_reg_0,
    fctl_ccmd_int_reg_1,
    fctl_ccmd_int_reg_2,
    fctl_ccmd_add_reg_1,
    \sgla_e_reg[6] ,
    p_22_in,
    fctl_ccmd_reg_reg_0,
    fctl_ccmd_reg_reg_1,
    \sglc_i_reg[41] ,
    fctl_ccmd_hlf_reg_0,
    fctl_ccmd_hlf_reg_1,
    \sgla_e_reg[1] ,
    fctl_ccmd_hlf_reg_2,
    fctl_ccmd_add_reg_2,
    fctl_ccmd_add_reg_3,
    \sglc_f_reg[27] ,
    \sglc_e_reg[4] ,
    fctl_ccmd_add_reg_4,
    \sglb_i_reg[31] ,
    fctl_ccmd_mul_reg_0,
    fctl_ccmd_hlf_reg_3,
    fctl_ccmd_add_reg_5,
    fctl_ccmd_mul_reg_1,
    fctl_ccmd_mul_reg_2,
    fctl_ccmd_mul_reg_3,
    fctl_ccmd_add_reg_6,
    fctl_ccmd_mul_reg_4,
    fctl_ccmd_mul_reg_5,
    fctl_ccmd_mul_reg_6,
    fctl_ccmd_mul_reg_7,
    fctl_ccmd_mul_reg_8,
    fctl_ccmd_mul_reg_9,
    fctl_ccmd_add_reg_7,
    fctl_ccmd_add_reg_8,
    fctl_ccmd_mul_reg_10,
    fctl_ccmd_mul_reg_11,
    fctl_ccmd_mul_reg_12,
    fctl_ccmd_mul_reg_13,
    fctl_ccmd_mul_reg_14,
    fctl_ccmd_add_reg_9,
    fctl_ccmd_mul_reg_15,
    fctl_ccmd_add_reg_10,
    fctl_ccmd_mul_reg_16,
    fctl_ccmd_add_reg_11,
    fctl_ccmd_add_reg_12,
    fctl_ccmd_add_reg_13,
    fctl_ccmd_add_reg_14,
    fctl_ccmd_add_reg_15,
    fctl_ccmd_add_reg_16,
    fctl_ccmd_add_reg_17,
    fctl_ccmd_add_reg_18,
    fctl_ccmd_add_reg_19,
    \stat_reg[1]_0 ,
    den,
    fctl_load_d__4,
    \sgla_f_reg[0] ,
    \stat_reg[3]_3 ,
    \sgla_i_reg[31] ,
    \cbus[31]_INST_0_i_53 ,
    \sgla_i_reg[31]_0 ,
    sglc_f_t_carry__6,
    S,
    p_0_in1_in,
    fctl_ccmd_add_reg_20,
    fctl_ccmd_add_reg_21,
    fctl_ccmd_add_reg_22,
    fctl_ccmd_add_reg_23,
    fctl_ccmd_add_reg_24,
    fctl_ccmd_add_reg_25,
    fctl_ccmd_add_reg_26,
    \stat_reg[1]_1 ,
    \stat_reg[1]_2 ,
    \stat_reg[1]_3 ,
    \stat_reg[1]_4 ,
    \abus[27] ,
    fctl_ccmd_cmp_reg_0,
    fctl_ccmd_int_reg_3,
    sfpu_dsp_a,
    sfpu_dsp_b,
    SR,
    clk,
    \sgla_f_reg[9] ,
    \sgla_f_reg[5] ,
    \sgla_f_reg[8] ,
    abus,
    sgla_r_0,
    \sgla_f_reg[21] ,
    \sgla_f[19]_i_2 ,
    \sgla_f[5]_i_2 ,
    O,
    \sgla_f[1]_i_2 ,
    \sgla_f[12]_i_5 ,
    \sgla_f[14]_i_5 ,
    \sgla_e[7]_i_9 ,
    \sgla_e[7]_i_16 ,
    \sgla_f_reg[28] ,
    sgla_e__0,
    \sgla_e_reg[6]_0 ,
    \sgla_e_reg[5] ,
    \sgla_e_reg[4] ,
    bbus,
    \sglb_f_reg[24] ,
    \sglb_f_reg[25] ,
    \sglb_f_reg[26] ,
    \sglb_f_reg[27] ,
    \sglb_e_reg[2] ,
    \sglb_f_reg[31] ,
    rst_n,
    \sglc_i_reg[41]_0 ,
    \sglc_f[10]_i_3_0 ,
    \sglc_f[10]_i_3_1 ,
    \sglc_f_reg[30] ,
    \sglc_f_reg[31] ,
    \sglc_f_reg[31]_0 ,
    .cbus_4_sp_1(cbus_4_sn_1),
    sglc_sr_flag2,
    \cbus[4]_0 ,
    \sglc_f[4]_i_2_0 ,
    \sglc_f[4]_i_2_1 ,
    \cbus[29] ,
    \cbus[29]_0 ,
    \cbus[29]_1 ,
    \cbus[30] ,
    \cbus[30]_0 ,
    \cbus[30]_1 ,
    \cbus[30]_2 ,
    \cbus[29]_INST_0_i_4 ,
    \cbus[30]_3 ,
    \sglc_e[8]_i_3_0 ,
    \cbus[25] ,
    \cbus[25]_0 ,
    \cbus[28] ,
    \cbus[30]_4 ,
    \cbus[24] ,
    \cbus[24]_0 ,
    \cbus[24]_1 ,
    \cbus[28]_0 ,
    \cbus[4]_1 ,
    sglc_r_sgla,
    .cbus_5_sp_1(cbus_5_sn_1),
    \cbus[22] ,
    \cbus[22]_0 ,
    \cbus[23] ,
    \cbus[25]_1 ,
    \cbus[25]_2 ,
    \cbus[27] ,
    \cbus[27]_0 ,
    \cbus[28]_1 ,
    \sglc_f[28]_i_3_0 ,
    \cbus[4]_INST_0_i_4_0 ,
    sglc_r_fadd,
    \sglc_i_reg[41]_1 ,
    \sglc_i_reg[42] ,
    \sglc_i_reg[42]_0 ,
    \cbus[25]_3 ,
    p_5_in,
    sglc_nan,
    \cbus[26]_INST_0_i_4 ,
    \cbus[30]_5 ,
    \stat_reg[2]_2 ,
    sglc_r_fmul,
    \cbus[31]_INST_0_i_33_0 ,
    \cbus[31]_INST_0_i_33_1 ,
    \cbus[2]_INST_0_i_4 ,
    \cbus[11]_INST_0_i_5 ,
    \cbus[15]_INST_0_i_5 ,
    \cbus[19]_INST_0_i_2 ,
    \cbus[18]_INST_0_i_1 ,
    \cbus[22]_INST_0_i_2 ,
    sglc_e,
    \sglc_i_reg[42]_1 ,
    \sglc_i_reg[42]_2 ,
    \sglc_i_reg[42]_3 ,
    \sglc_i_reg[42]_4 ,
    \cbus[3]_INST_0_i_1 ,
    \cbus[4]_INST_0_i_4_1 ,
    ccmd,
    fnrm_norm_fin,
    p_0_in,
    \sglc_i_reg[41]_2 ,
    \stat_reg[1]_5 ,
    sglb_sft_fin,
    sgla_sft_fin,
    \sglc_f[11]_i_12_0 ,
    fdiv_nan_inf,
    \cbus[31]_INST_0_i_4 ,
    \cbus[31]_INST_0_i_4_0 ,
    \cbus[7]_INST_0_i_6 ,
    CO,
    sglc_f_t_carry__6_0,
    \sglc_f[10]_i_3_2 ,
    \sglc_f_reg[14]_0 ,
    \sglc_f_reg[15] ,
    \sglc_f[10]_i_2 ,
    \cbus[29]_INST_0_i_4_0 ,
    \cbus[21]_INST_0_i_2 );
  output fctl_ccmd_add;
  output [0:0]E;
  output fctl_ccmd_sub;
  output fctl_ccmd_mul;
  output fctl_ccmd_hlf;
  output fctl_ccmd_int;
  output fctl_load_b;
  output \ccmd[1]_0 ;
  output \ccmd[1]_1 ;
  output \abus[16] ;
  output \ccmd[1]_2 ;
  output \sgla_f_reg[16] ;
  output \ccmd[1]_3 ;
  output \ccmd[1]_4 ;
  output \sgla_f_reg[23] ;
  output \stat_reg[3]_0 ;
  output \stat_reg[3]_1 ;
  output \abus[19] ;
  output \abus[20] ;
  output \stat_reg[2]_0 ;
  output [3:0]Q;
  output \stat_reg[0]_0 ;
  output \abus[18] ;
  output \abus[15] ;
  output [6:0]D;
  output [3:0]\bbus[22] ;
  output \bbus[24] ;
  output \stat_reg[2]_1 ;
  output fctl_ccmd_int_reg_0;
  output \bbus[26] ;
  output \bbus[27] ;
  output \bbus[24]_0 ;
  output [0:0]\bbus[25] ;
  output [0:0]sglb_r;
  output \stat_reg[0]_1 ;
  output \stat_reg[0]_2 ;
  output \sglc_f_reg[13] ;
  output \sglc_f_reg[14] ;
  output \stat_reg[0]_3 ;
  output \stat_reg[0]_4 ;
  output [1:0]\stat_reg[0]_5 ;
  output [0:0]\stat_reg[3]_2 ;
  output [6:0]cbus;
  output fctl_ccmd_add_reg_0;
  output fctl_ccmd_int_reg_1;
  output fctl_ccmd_int_reg_2;
  output fctl_ccmd_add_reg_1;
  output \sgla_e_reg[6] ;
  output [4:0]p_22_in;
  output fctl_ccmd_reg_reg_0;
  output fctl_ccmd_reg_reg_1;
  output \sglc_i_reg[41] ;
  output fctl_ccmd_hlf_reg_0;
  output fctl_ccmd_hlf_reg_1;
  output \sgla_e_reg[1] ;
  output fctl_ccmd_hlf_reg_2;
  output fctl_ccmd_add_reg_2;
  output fctl_ccmd_add_reg_3;
  output \sglc_f_reg[27] ;
  output \sglc_e_reg[4] ;
  output [1:0]fctl_ccmd_add_reg_4;
  output \sglb_i_reg[31] ;
  output fctl_ccmd_mul_reg_0;
  output fctl_ccmd_hlf_reg_3;
  output fctl_ccmd_add_reg_5;
  output fctl_ccmd_mul_reg_1;
  output fctl_ccmd_mul_reg_2;
  output fctl_ccmd_mul_reg_3;
  output fctl_ccmd_add_reg_6;
  output fctl_ccmd_mul_reg_4;
  output fctl_ccmd_mul_reg_5;
  output fctl_ccmd_mul_reg_6;
  output fctl_ccmd_mul_reg_7;
  output fctl_ccmd_mul_reg_8;
  output fctl_ccmd_mul_reg_9;
  output fctl_ccmd_add_reg_7;
  output fctl_ccmd_add_reg_8;
  output fctl_ccmd_mul_reg_10;
  output fctl_ccmd_mul_reg_11;
  output fctl_ccmd_mul_reg_12;
  output fctl_ccmd_mul_reg_13;
  output fctl_ccmd_mul_reg_14;
  output fctl_ccmd_add_reg_9;
  output fctl_ccmd_mul_reg_15;
  output fctl_ccmd_add_reg_10;
  output fctl_ccmd_mul_reg_16;
  output fctl_ccmd_add_reg_11;
  output fctl_ccmd_add_reg_12;
  output fctl_ccmd_add_reg_13;
  output fctl_ccmd_add_reg_14;
  output fctl_ccmd_add_reg_15;
  output fctl_ccmd_add_reg_16;
  output fctl_ccmd_add_reg_17;
  output fctl_ccmd_add_reg_18;
  output fctl_ccmd_add_reg_19;
  output \stat_reg[1]_0 ;
  output [3:0]den;
  output fctl_load_d__4;
  output [0:0]\sgla_f_reg[0] ;
  output [0:0]\stat_reg[3]_3 ;
  output \sgla_i_reg[31] ;
  output \cbus[31]_INST_0_i_53 ;
  output \sgla_i_reg[31]_0 ;
  output [0:0]sglc_f_t_carry__6;
  output [3:0]S;
  output [30:0]p_0_in1_in;
  output [3:0]fctl_ccmd_add_reg_20;
  output [3:0]fctl_ccmd_add_reg_21;
  output [3:0]fctl_ccmd_add_reg_22;
  output [3:0]fctl_ccmd_add_reg_23;
  output [3:0]fctl_ccmd_add_reg_24;
  output [3:0]fctl_ccmd_add_reg_25;
  output [2:0]fctl_ccmd_add_reg_26;
  output \stat_reg[1]_1 ;
  output \stat_reg[1]_2 ;
  output \stat_reg[1]_3 ;
  output \stat_reg[1]_4 ;
  output \abus[27] ;
  output fctl_ccmd_cmp_reg_0;
  output fctl_ccmd_int_reg_3;
  output [23:0]sfpu_dsp_a;
  output [23:0]sfpu_dsp_b;
  input [0:0]SR;
  input clk;
  input \sgla_f_reg[9] ;
  input \sgla_f_reg[5] ;
  input \sgla_f_reg[8] ;
  input [14:0]abus;
  input [39:0]sgla_r_0;
  input \sgla_f_reg[21] ;
  input \sgla_f[19]_i_2 ;
  input \sgla_f[5]_i_2 ;
  input [0:0]O;
  input \sgla_f[1]_i_2 ;
  input \sgla_f[12]_i_5 ;
  input \sgla_f[14]_i_5 ;
  input [0:0]\sgla_e[7]_i_9 ;
  input [0:0]\sgla_e[7]_i_16 ;
  input [0:0]\sgla_f_reg[28] ;
  input [6:0]sgla_e__0;
  input \sgla_e_reg[6]_0 ;
  input \sgla_e_reg[5] ;
  input \sgla_e_reg[4] ;
  input [11:0]bbus;
  input \sglb_f_reg[24] ;
  input \sglb_f_reg[25] ;
  input \sglb_f_reg[26] ;
  input \sglb_f_reg[27] ;
  input \sglb_e_reg[2] ;
  input [0:0]\sglb_f_reg[31] ;
  input rst_n;
  input [0:0]\sglc_i_reg[41]_0 ;
  input [5:0]\sglc_f[10]_i_3_0 ;
  input \sglc_f[10]_i_3_1 ;
  input \sglc_f_reg[30] ;
  input \sglc_f_reg[31] ;
  input \sglc_f_reg[31]_0 ;
  input sglc_sr_flag2;
  input \cbus[4]_0 ;
  input \sglc_f[4]_i_2_0 ;
  input \sglc_f[4]_i_2_1 ;
  input \cbus[29] ;
  input \cbus[29]_0 ;
  input \cbus[29]_1 ;
  input \cbus[30] ;
  input \cbus[30]_0 ;
  input \cbus[30]_1 ;
  input \cbus[30]_2 ;
  input [2:0]\cbus[29]_INST_0_i_4 ;
  input \cbus[30]_3 ;
  input [0:0]\sglc_e[8]_i_3_0 ;
  input \cbus[25] ;
  input \cbus[25]_0 ;
  input \cbus[28] ;
  input [2:0]\cbus[30]_4 ;
  input \cbus[24] ;
  input \cbus[24]_0 ;
  input \cbus[24]_1 ;
  input [3:0]\cbus[28]_0 ;
  input \cbus[4]_1 ;
  input [2:0]sglc_r_sgla;
  input \cbus[22] ;
  input \cbus[22]_0 ;
  input \cbus[23] ;
  input \cbus[25]_1 ;
  input \cbus[25]_2 ;
  input \cbus[27] ;
  input \cbus[27]_0 ;
  input \cbus[28]_1 ;
  input \sglc_f[28]_i_3_0 ;
  input [1:0]\cbus[4]_INST_0_i_4_0 ;
  input [1:0]sglc_r_fadd;
  input \sglc_i_reg[41]_1 ;
  input \sglc_i_reg[42] ;
  input \sglc_i_reg[42]_0 ;
  input \cbus[25]_3 ;
  input p_5_in;
  input sglc_nan;
  input \cbus[26]_INST_0_i_4 ;
  input \cbus[30]_5 ;
  input \stat_reg[2]_2 ;
  input [33:0]sglc_r_fmul;
  input [27:0]\cbus[31]_INST_0_i_33_0 ;
  input [3:0]\cbus[31]_INST_0_i_33_1 ;
  input [3:0]\cbus[2]_INST_0_i_4 ;
  input [3:0]\cbus[11]_INST_0_i_5 ;
  input [3:0]\cbus[15]_INST_0_i_5 ;
  input [3:0]\cbus[19]_INST_0_i_2 ;
  input [3:0]\cbus[18]_INST_0_i_1 ;
  input [3:0]\cbus[22]_INST_0_i_2 ;
  input [8:0]sglc_e;
  input \sglc_i_reg[42]_1 ;
  input \sglc_i_reg[42]_2 ;
  input \sglc_i_reg[42]_3 ;
  input \sglc_i_reg[42]_4 ;
  input [2:0]\cbus[3]_INST_0_i_1 ;
  input [0:0]\cbus[4]_INST_0_i_4_1 ;
  input [4:0]ccmd;
  input fnrm_norm_fin;
  input [0:0]p_0_in;
  input \sglc_i_reg[41]_2 ;
  input \stat_reg[1]_5 ;
  input sglb_sft_fin;
  input sgla_sft_fin;
  input \sglc_f[11]_i_12_0 ;
  input fdiv_nan_inf;
  input \cbus[31]_INST_0_i_4 ;
  input \cbus[31]_INST_0_i_4_0 ;
  input \cbus[7]_INST_0_i_6 ;
  input [0:0]CO;
  input [30:0]sglc_f_t_carry__6_0;
  input \sglc_f[10]_i_3_2 ;
  input \sglc_f_reg[14]_0 ;
  input \sglc_f_reg[15] ;
  input \sglc_f[10]_i_2 ;
  input \cbus[29]_INST_0_i_4_0 ;
  input \cbus[21]_INST_0_i_2 ;
  output ccmd_1_sn_1;
  output abus_14_sn_1;
  output abus_13_sn_1;
  input cbus_4_sn_1;
  input cbus_5_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]CO;
  wire [6:0]D;
  wire [0:0]E;
  wire [0:0]O;
  wire [3:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [14:0]abus;
  wire \abus[15] ;
  wire \abus[16] ;
  wire \abus[18] ;
  wire \abus[19] ;
  wire \abus[20] ;
  wire \abus[27] ;
  wire abus_13_sn_1;
  wire abus_14_sn_1;
  wire [11:0]bbus;
  wire [3:0]\bbus[22] ;
  wire \bbus[24] ;
  wire \bbus[24]_0 ;
  wire [0:0]\bbus[25] ;
  wire \bbus[26] ;
  wire \bbus[27] ;
  wire [6:0]cbus;
  wire \cbus[10]_INST_0_i_3_n_0 ;
  wire [3:0]\cbus[11]_INST_0_i_5 ;
  wire [3:0]\cbus[15]_INST_0_i_5 ;
  wire [3:0]\cbus[18]_INST_0_i_1 ;
  wire [3:0]\cbus[19]_INST_0_i_2 ;
  wire \cbus[21]_INST_0_i_2 ;
  wire \cbus[22] ;
  wire \cbus[22]_0 ;
  wire [3:0]\cbus[22]_INST_0_i_2 ;
  wire \cbus[23] ;
  wire \cbus[23]_INST_0_i_1_n_0 ;
  wire \cbus[24] ;
  wire \cbus[24]_0 ;
  wire \cbus[24]_1 ;
  wire \cbus[24]_INST_0_i_1_n_0 ;
  wire \cbus[24]_INST_0_i_4_n_0 ;
  wire \cbus[24]_INST_0_i_5_n_0 ;
  wire \cbus[24]_INST_0_i_6_n_0 ;
  wire \cbus[24]_INST_0_i_7_n_0 ;
  wire \cbus[25] ;
  wire \cbus[25]_0 ;
  wire \cbus[25]_1 ;
  wire \cbus[25]_2 ;
  wire \cbus[25]_3 ;
  wire \cbus[25]_INST_0_i_3_n_0 ;
  wire \cbus[26]_INST_0_i_4 ;
  wire \cbus[27] ;
  wire \cbus[27]_0 ;
  wire \cbus[28] ;
  wire [3:0]\cbus[28]_0 ;
  wire \cbus[28]_1 ;
  wire \cbus[28]_INST_0_i_3_n_0 ;
  wire \cbus[28]_INST_0_i_5_n_0 ;
  wire \cbus[28]_INST_0_i_6_n_0 ;
  wire \cbus[28]_INST_0_i_7_n_0 ;
  wire \cbus[28]_INST_0_i_9_n_0 ;
  wire \cbus[29] ;
  wire \cbus[29]_0 ;
  wire \cbus[29]_1 ;
  wire [2:0]\cbus[29]_INST_0_i_4 ;
  wire \cbus[29]_INST_0_i_4_0 ;
  wire \cbus[29]_INST_0_i_5_n_0 ;
  wire \cbus[29]_INST_0_i_6_n_0 ;
  wire \cbus[29]_INST_0_i_7_n_0 ;
  wire [3:0]\cbus[2]_INST_0_i_4 ;
  wire \cbus[30] ;
  wire \cbus[30]_0 ;
  wire \cbus[30]_1 ;
  wire \cbus[30]_2 ;
  wire \cbus[30]_3 ;
  wire [2:0]\cbus[30]_4 ;
  wire \cbus[30]_5 ;
  wire \cbus[30]_INST_0_i_12_n_0 ;
  wire \cbus[30]_INST_0_i_16_n_0 ;
  wire \cbus[30]_INST_0_i_4_n_0 ;
  wire \cbus[30]_INST_0_i_6_n_0 ;
  wire \cbus[31]_INST_0_i_21_n_0 ;
  wire \cbus[31]_INST_0_i_23_n_0 ;
  wire [27:0]\cbus[31]_INST_0_i_33_0 ;
  wire [3:0]\cbus[31]_INST_0_i_33_1 ;
  wire \cbus[31]_INST_0_i_38_n_0 ;
  wire \cbus[31]_INST_0_i_4 ;
  wire \cbus[31]_INST_0_i_40_n_0 ;
  wire \cbus[31]_INST_0_i_4_0 ;
  wire \cbus[31]_INST_0_i_51_n_0 ;
  wire \cbus[31]_INST_0_i_52_n_2 ;
  wire \cbus[31]_INST_0_i_52_n_3 ;
  wire \cbus[31]_INST_0_i_53 ;
  wire \cbus[31]_INST_0_i_62_n_0 ;
  wire \cbus[31]_INST_0_i_63_n_0 ;
  wire \cbus[31]_INST_0_i_64_n_0 ;
  wire [2:0]\cbus[3]_INST_0_i_1 ;
  wire \cbus[4]_0 ;
  wire \cbus[4]_1 ;
  wire \cbus[4]_INST_0_i_2_n_0 ;
  wire [1:0]\cbus[4]_INST_0_i_4_0 ;
  wire [0:0]\cbus[4]_INST_0_i_4_1 ;
  wire \cbus[4]_INST_0_i_4_n_0 ;
  wire \cbus[4]_INST_0_i_5_n_0 ;
  wire \cbus[4]_INST_0_i_6_n_0 ;
  wire \cbus[7]_INST_0_i_6 ;
  wire \cbus[9]_INST_0_i_3_n_0 ;
  wire cbus_4_sn_1;
  wire cbus_5_sn_1;
  wire [4:0]ccmd;
  wire \ccmd[1]_0 ;
  wire \ccmd[1]_1 ;
  wire \ccmd[1]_2 ;
  wire \ccmd[1]_3 ;
  wire \ccmd[1]_4 ;
  wire ccmd_1_sn_1;
  wire clk;
  wire crdy_f;
  wire crdy_f_i_4_n_0;
  wire crdy_f_i_5_n_0;
  wire crdy_t;
  wire [3:0]den;
  wire fctl_cbus_out;
  wire fctl_ccmd_add;
  wire fctl_ccmd_add0;
  wire fctl_ccmd_add1;
  wire fctl_ccmd_add_reg_0;
  wire fctl_ccmd_add_reg_1;
  wire fctl_ccmd_add_reg_10;
  wire fctl_ccmd_add_reg_11;
  wire fctl_ccmd_add_reg_12;
  wire fctl_ccmd_add_reg_13;
  wire fctl_ccmd_add_reg_14;
  wire fctl_ccmd_add_reg_15;
  wire fctl_ccmd_add_reg_16;
  wire fctl_ccmd_add_reg_17;
  wire fctl_ccmd_add_reg_18;
  wire fctl_ccmd_add_reg_19;
  wire fctl_ccmd_add_reg_2;
  wire [3:0]fctl_ccmd_add_reg_20;
  wire [3:0]fctl_ccmd_add_reg_21;
  wire [3:0]fctl_ccmd_add_reg_22;
  wire [3:0]fctl_ccmd_add_reg_23;
  wire [3:0]fctl_ccmd_add_reg_24;
  wire [3:0]fctl_ccmd_add_reg_25;
  wire [2:0]fctl_ccmd_add_reg_26;
  wire fctl_ccmd_add_reg_3;
  wire [1:0]fctl_ccmd_add_reg_4;
  wire fctl_ccmd_add_reg_5;
  wire fctl_ccmd_add_reg_6;
  wire fctl_ccmd_add_reg_7;
  wire fctl_ccmd_add_reg_8;
  wire fctl_ccmd_add_reg_9;
  wire fctl_ccmd_cmp;
  wire fctl_ccmd_cmp_reg_0;
  wire fctl_ccmd_div;
  wire fctl_ccmd_div_i_1_n_0;
  wire fctl_ccmd_hlf;
  wire fctl_ccmd_hlf_reg_0;
  wire fctl_ccmd_hlf_reg_1;
  wire fctl_ccmd_hlf_reg_2;
  wire fctl_ccmd_hlf_reg_3;
  wire fctl_ccmd_int;
  wire fctl_ccmd_int0;
  wire fctl_ccmd_int_reg_0;
  wire fctl_ccmd_int_reg_1;
  wire fctl_ccmd_int_reg_2;
  wire fctl_ccmd_int_reg_3;
  wire fctl_ccmd_mul;
  wire fctl_ccmd_mul_i_1_n_0;
  wire fctl_ccmd_mul_reg_0;
  wire fctl_ccmd_mul_reg_1;
  wire fctl_ccmd_mul_reg_10;
  wire fctl_ccmd_mul_reg_11;
  wire fctl_ccmd_mul_reg_12;
  wire fctl_ccmd_mul_reg_13;
  wire fctl_ccmd_mul_reg_14;
  wire fctl_ccmd_mul_reg_15;
  wire fctl_ccmd_mul_reg_16;
  wire fctl_ccmd_mul_reg_2;
  wire fctl_ccmd_mul_reg_3;
  wire fctl_ccmd_mul_reg_4;
  wire fctl_ccmd_mul_reg_5;
  wire fctl_ccmd_mul_reg_6;
  wire fctl_ccmd_mul_reg_7;
  wire fctl_ccmd_mul_reg_8;
  wire fctl_ccmd_mul_reg_9;
  wire fctl_ccmd_reg;
  wire fctl_ccmd_reg0;
  wire fctl_ccmd_reg60_in;
  wire fctl_ccmd_reg_reg_0;
  wire fctl_ccmd_reg_reg_1;
  wire fctl_ccmd_sub;
  wire fctl_ccmd_sub0;
  wire fctl_load_b;
  wire fctl_load_d__4;
  wire fdiv_nan_inf;
  wire fnrm_norm_fin;
  wire [0:0]p_0_in;
  wire [30:0]p_0_in1_in;
  wire [4:0]p_22_in;
  wire p_5_in;
  wire rst_n;
  wire [23:0]sfpu_dsp_a;
  wire [23:0]sfpu_dsp_b;
  wire [0:0]\sgla_e[7]_i_16 ;
  wire [0:0]\sgla_e[7]_i_9 ;
  wire [6:0]sgla_e__0;
  wire \sgla_e_reg[1] ;
  wire \sgla_e_reg[4] ;
  wire \sgla_e_reg[5] ;
  wire \sgla_e_reg[6] ;
  wire \sgla_e_reg[6]_0 ;
  wire \sgla_f[12]_i_5 ;
  wire \sgla_f[14]_i_5 ;
  wire \sgla_f[19]_i_2 ;
  wire \sgla_f[1]_i_2 ;
  wire \sgla_f[28]_i_4_n_0 ;
  wire \sgla_f[5]_i_2 ;
  wire [0:0]\sgla_f_reg[0] ;
  wire \sgla_f_reg[16] ;
  wire \sgla_f_reg[21] ;
  wire \sgla_f_reg[23] ;
  wire [0:0]\sgla_f_reg[28] ;
  wire \sgla_f_reg[5] ;
  wire \sgla_f_reg[8] ;
  wire \sgla_f_reg[9] ;
  wire \sgla_i[31]_i_2_n_0 ;
  wire \sgla_i_reg[31] ;
  wire \sgla_i_reg[31]_0 ;
  wire [39:0]sgla_r_0;
  wire sgla_sft_fin;
  wire \sglb_e_reg[2] ;
  wire \sglb_f[28]_i_3_n_0 ;
  wire \sglb_f_reg[24] ;
  wire \sglb_f_reg[25] ;
  wire \sglb_f_reg[26] ;
  wire \sglb_f_reg[27] ;
  wire [0:0]\sglb_f_reg[31] ;
  wire \sglb_i_reg[31] ;
  wire [0:0]sglb_r;
  wire sglb_sft_fin;
  wire [8:0]sglc_e;
  wire [0:0]\sglc_e[8]_i_3_0 ;
  wire \sglc_e[8]_i_4_n_0 ;
  wire \sglc_e_reg[4] ;
  wire [31:29]sglc_f0;
  wire \sglc_f[10]_i_2 ;
  wire [5:0]\sglc_f[10]_i_3_0 ;
  wire \sglc_f[10]_i_3_1 ;
  wire \sglc_f[10]_i_3_2 ;
  wire \sglc_f[11]_i_10_n_0 ;
  wire \sglc_f[11]_i_11_n_0 ;
  wire \sglc_f[11]_i_12_0 ;
  wire \sglc_f[11]_i_12_n_0 ;
  wire \sglc_f[15]_i_13_n_0 ;
  wire \sglc_f[15]_i_14_n_0 ;
  wire \sglc_f[28]_i_3_0 ;
  wire \sglc_f[4]_i_2_0 ;
  wire \sglc_f[4]_i_2_1 ;
  wire \sglc_f_reg[13] ;
  wire \sglc_f_reg[14] ;
  wire \sglc_f_reg[14]_0 ;
  wire \sglc_f_reg[15] ;
  wire \sglc_f_reg[27] ;
  wire \sglc_f_reg[30] ;
  wire \sglc_f_reg[31] ;
  wire \sglc_f_reg[31]_0 ;
  wire [0:0]sglc_f_t_carry__6;
  wire [30:0]sglc_f_t_carry__6_0;
  wire \sglc_i_reg[41] ;
  wire [0:0]\sglc_i_reg[41]_0 ;
  wire \sglc_i_reg[41]_1 ;
  wire \sglc_i_reg[41]_2 ;
  wire \sglc_i_reg[42] ;
  wire \sglc_i_reg[42]_0 ;
  wire \sglc_i_reg[42]_1 ;
  wire \sglc_i_reg[42]_2 ;
  wire \sglc_i_reg[42]_3 ;
  wire \sglc_i_reg[42]_4 ;
  wire sglc_nan;
  wire [1:0]sglc_r_fadd;
  wire [33:0]sglc_r_fmul;
  wire [2:0]sglc_r_sgla;
  wire sglc_sr_flag2;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_4_n_0 ;
  wire \stat[0]_i_5_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[1]_i_6_n_0 ;
  wire \stat[3]_i_2_n_0 ;
  wire \stat[3]_i_3_n_0 ;
  wire \stat[3]_i_4_n_0 ;
  wire [3:0]stat_nx;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[0]_2 ;
  wire \stat_reg[0]_3 ;
  wire \stat_reg[0]_4 ;
  wire [1:0]\stat_reg[0]_5 ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire \stat_reg[1]_2 ;
  wire \stat_reg[1]_3 ;
  wire \stat_reg[1]_4 ;
  wire \stat_reg[1]_5 ;
  wire \stat_reg[2]_0 ;
  wire \stat_reg[2]_1 ;
  wire \stat_reg[2]_2 ;
  wire \stat_reg[3]_0 ;
  wire \stat_reg[3]_1 ;
  wire [0:0]\stat_reg[3]_2 ;
  wire [0:0]\stat_reg[3]_3 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \cbus[0]_INST_0_i_4 
       (.I0(\cbus[31]_INST_0_i_33_0 [4]),
        .I1(\cbus[31]_INST_0_i_33_1 [3]),
        .I2(\cbus[2]_INST_0_i_4 [1]),
        .I3(fctl_ccmd_add),
        .I4(fctl_ccmd_mul),
        .I5(sglc_r_fmul[1]),
        .O(fctl_ccmd_add_reg_5));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \cbus[10]_INST_0_i_1 
       (.I0(fctl_ccmd_add_reg_2),
        .I1(cbus_5_sn_1),
        .I2(\cbus[10]_INST_0_i_3_n_0 ),
        .I3(sglc_r_sgla[1]),
        .I4(fctl_ccmd_add_reg_1),
        .O(fctl_ccmd_add_reg_3));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[10]_INST_0_i_3 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[6]),
        .I2(\cbus[31]_INST_0_i_33_0 [9]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[11]_INST_0_i_5 [2]),
        .I5(fctl_ccmd_add),
        .O(\cbus[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \cbus[11]_INST_0_i_7 
       (.I0(\cbus[31]_INST_0_i_33_0 [10]),
        .I1(\cbus[31]_INST_0_i_33_1 [3]),
        .I2(\cbus[11]_INST_0_i_5 [3]),
        .I3(fctl_ccmd_add),
        .I4(fctl_ccmd_mul),
        .I5(sglc_r_fmul[7]),
        .O(fctl_ccmd_add_reg_6));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[12]_INST_0_i_3 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[8]),
        .I2(\cbus[31]_INST_0_i_33_0 [11]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[15]_INST_0_i_5 [0]),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg_4));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[13]_INST_0_i_3 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[9]),
        .I2(\cbus[31]_INST_0_i_33_0 [12]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[15]_INST_0_i_5 [1]),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg_5));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[14]_INST_0_i_5 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[10]),
        .I2(\cbus[31]_INST_0_i_33_0 [13]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[15]_INST_0_i_5 [2]),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg_6));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[15]_INST_0_i_9 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[11]),
        .I2(\cbus[31]_INST_0_i_33_0 [14]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[15]_INST_0_i_5 [3]),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg_7));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[16]_INST_0_i_3 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[12]),
        .I2(\cbus[31]_INST_0_i_33_0 [15]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[19]_INST_0_i_2 [0]),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg_8));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[17]_INST_0_i_7 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[13]),
        .I2(\cbus[31]_INST_0_i_33_0 [16]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[19]_INST_0_i_2 [1]),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg_9));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[17]_INST_0_i_9 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[18]),
        .I2(\cbus[31]_INST_0_i_33_0 [21]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[18]_INST_0_i_1 [2]),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg_12));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[18]_INST_0_i_4 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[19]),
        .I2(\cbus[31]_INST_0_i_33_0 [22]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[18]_INST_0_i_1 [3]),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg_13));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \cbus[18]_INST_0_i_8 
       (.I0(\cbus[31]_INST_0_i_33_0 [17]),
        .I1(\cbus[31]_INST_0_i_33_1 [3]),
        .I2(\cbus[19]_INST_0_i_2 [2]),
        .I3(fctl_ccmd_add),
        .I4(fctl_ccmd_mul),
        .I5(sglc_r_fmul[14]),
        .O(fctl_ccmd_add_reg_7));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \cbus[19]_INST_0_i_5 
       (.I0(\cbus[31]_INST_0_i_33_0 [18]),
        .I1(\cbus[31]_INST_0_i_33_1 [3]),
        .I2(\cbus[19]_INST_0_i_2 [3]),
        .I3(fctl_ccmd_add),
        .I4(fctl_ccmd_mul),
        .I5(sglc_r_fmul[15]),
        .O(fctl_ccmd_add_reg_8));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[19]_INST_0_i_8 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[20]),
        .I2(\cbus[31]_INST_0_i_33_0 [23]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[22]_INST_0_i_2 [0]),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg_14));
  LUT4 #(
    .INIT(16'hA808)) 
    \cbus[1]_INST_0_i_5 
       (.I0(fctl_ccmd_add),
        .I1(\cbus[3]_INST_0_i_1 [0]),
        .I2(\cbus[31]_INST_0_i_33_1 [3]),
        .I3(\cbus[31]_INST_0_i_33_0 [0]),
        .O(fctl_ccmd_add_reg_19));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[1]_INST_0_i_6 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[2]),
        .I2(\cbus[31]_INST_0_i_33_0 [5]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[2]_INST_0_i_4 [2]),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg_1));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[20]_INST_0_i_10 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[16]),
        .I2(\cbus[31]_INST_0_i_33_0 [19]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[18]_INST_0_i_1 [0]),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg_10));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \cbus[20]_INST_0_i_9 
       (.I0(\cbus[31]_INST_0_i_33_0 [24]),
        .I1(\cbus[31]_INST_0_i_33_1 [3]),
        .I2(\cbus[22]_INST_0_i_2 [1]),
        .I3(fctl_ccmd_add),
        .I4(fctl_ccmd_mul),
        .I5(sglc_r_fmul[21]),
        .O(fctl_ccmd_add_reg_9));
  LUT5 #(
    .INIT(32'h00001000)) 
    \cbus[21]_INST_0_i_10 
       (.I0(fctl_ccmd_cmp),
        .I1(fctl_ccmd_int),
        .I2(\cbus[21]_INST_0_i_2 ),
        .I3(Q[3]),
        .I4(fctl_ccmd_reg),
        .O(fctl_ccmd_cmp_reg_0));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[21]_INST_0_i_13 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[17]),
        .I2(\cbus[31]_INST_0_i_33_0 [20]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[18]_INST_0_i_1 [1]),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg_11));
  LUT6 #(
    .INIT(64'h7FFF7FF5FFFFFFFF)) 
    \cbus[21]_INST_0_i_4 
       (.I0(fctl_ccmd_int),
        .I1(\stat_reg[2]_2 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(fctl_ccmd_int_reg_2));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[21]_INST_0_i_6 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[22]),
        .I2(\cbus[31]_INST_0_i_33_0 [25]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[22]_INST_0_i_2 [2]),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg_15));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \cbus[21]_INST_0_i_8 
       (.I0(fctl_ccmd_int),
        .I1(\cbus[21]_INST_0_i_2 ),
        .I2(Q[3]),
        .I3(fctl_ccmd_reg),
        .I4(\cbus[29]_INST_0_i_4 [1]),
        .I5(fctl_ccmd_hlf),
        .O(fctl_ccmd_int_reg_3));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[22]_INST_0_i_14 
       (.I0(\cbus[31]_INST_0_i_33_1 [0]),
        .O(sglc_f_t_carry__6));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \cbus[22]_INST_0_i_3 
       (.I0(\cbus[31]_INST_0_i_23_n_0 ),
        .I1(\sglc_f[10]_i_3_0 [4]),
        .I2(\cbus[22] ),
        .I3(\cbus[22]_0 ),
        .I4(fctl_ccmd_int_reg_2),
        .O(\sglc_f_reg[27] ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \cbus[22]_INST_0_i_5 
       (.I0(\cbus[31]_INST_0_i_33_0 [26]),
        .I1(\cbus[31]_INST_0_i_33_1 [3]),
        .I2(\cbus[22]_INST_0_i_2 [3]),
        .I3(fctl_ccmd_add),
        .I4(fctl_ccmd_mul),
        .I5(sglc_r_fmul[23]),
        .O(fctl_ccmd_add_reg_10));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \cbus[23]_INST_0 
       (.I0(p_22_in[0]),
        .I1(\cbus[29]_0 ),
        .I2(\cbus[23]_INST_0_i_1_n_0 ),
        .I3(\cbus[29]_INST_0_i_5_n_0 ),
        .O(cbus[1]));
  LUT4 #(
    .INIT(16'h444F)) 
    \cbus[23]_INST_0_i_1 
       (.I0(fctl_ccmd_int_reg_2),
        .I1(\cbus[23] ),
        .I2(fctl_ccmd_hlf_reg_2),
        .I3(\cbus[28]_0 [0]),
        .O(\cbus[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEEEFE)) 
    \cbus[24]_INST_0 
       (.I0(\cbus[29]_INST_0_i_5_n_0 ),
        .I1(\cbus[24]_INST_0_i_1_n_0 ),
        .I2(\cbus[29]_0 ),
        .I3(p_22_in[0]),
        .I4(p_22_in[1]),
        .O(cbus[2]));
  LUT5 #(
    .INIT(32'h4F44444F)) 
    \cbus[24]_INST_0_i_1 
       (.I0(fctl_ccmd_int_reg_2),
        .I1(\cbus[24]_1 ),
        .I2(fctl_ccmd_hlf_reg_2),
        .I3(\cbus[28]_0 [1]),
        .I4(\cbus[28]_0 [0]),
        .O(\cbus[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFFEEFE)) 
    \cbus[24]_INST_0_i_2 
       (.I0(\cbus[24]_INST_0_i_4_n_0 ),
        .I1(\cbus[24]_INST_0_i_5_n_0 ),
        .I2(sgla_r_0[31]),
        .I3(\cbus[24] ),
        .I4(\cbus[24]_0 ),
        .I5(fctl_ccmd_add_reg_1),
        .O(p_22_in[0]));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFFEEFE)) 
    \cbus[24]_INST_0_i_3 
       (.I0(\cbus[24]_INST_0_i_6_n_0 ),
        .I1(\cbus[24]_INST_0_i_7_n_0 ),
        .I2(sgla_r_0[32]),
        .I3(\cbus[24] ),
        .I4(\cbus[24]_0 ),
        .I5(fctl_ccmd_add_reg_1),
        .O(p_22_in[1]));
  LUT4 #(
    .INIT(16'h0008)) 
    \cbus[24]_INST_0_i_4 
       (.I0(sglc_e[0]),
        .I1(fctl_ccmd_div),
        .I2(fctl_ccmd_mul),
        .I3(fctl_ccmd_add),
        .O(\cbus[24]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF088)) 
    \cbus[24]_INST_0_i_5 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[25]),
        .I2(sgla_r_0[31]),
        .I3(fctl_ccmd_add),
        .O(\cbus[24]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \cbus[24]_INST_0_i_6 
       (.I0(sglc_e[1]),
        .I1(fctl_ccmd_div),
        .I2(fctl_ccmd_mul),
        .I3(fctl_ccmd_add),
        .O(\cbus[24]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF088)) 
    \cbus[24]_INST_0_i_7 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[26]),
        .I2(sgla_r_0[32]),
        .I3(fctl_ccmd_add),
        .O(\cbus[24]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \cbus[25]_INST_0 
       (.I0(\cbus[25] ),
        .I1(\cbus[30]_0 ),
        .I2(\cbus[25]_0 ),
        .I3(fctl_ccmd_hlf_reg_0),
        .I4(fctl_ccmd_reg_reg_0),
        .I5(\cbus[25]_INST_0_i_3_n_0 ),
        .O(cbus[3]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \cbus[25]_INST_0_i_3 
       (.I0(fctl_ccmd_int_reg_2),
        .I1(\cbus[25]_1 ),
        .I2(\cbus[30]_2 ),
        .I3(\cbus[25]_2 ),
        .I4(fctl_ccmd_reg_reg_1),
        .O(\cbus[25]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \cbus[26]_INST_0_i_3 
       (.I0(fctl_ccmd_hlf),
        .I1(p_5_in),
        .I2(\cbus[25]_3 ),
        .O(fctl_ccmd_hlf_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF44444FF4)) 
    \cbus[27]_INST_0_i_3 
       (.I0(fctl_ccmd_int_reg_2),
        .I1(\cbus[27] ),
        .I2(\cbus[27]_0 ),
        .I3(\cbus[28]_0 [2]),
        .I4(fctl_ccmd_hlf_reg_2),
        .I5(fctl_ccmd_reg_reg_1),
        .O(\sglc_e_reg[4] ));
  LUT6 #(
    .INIT(64'hFF4FF444F444F444)) 
    \cbus[27]_INST_0_i_5 
       (.I0(fctl_ccmd_add_reg_2),
        .I1(sglc_e[4]),
        .I2(fctl_ccmd_add),
        .I3(sgla_r_0[35]),
        .I4(sglc_r_fmul[29]),
        .I5(fctl_ccmd_mul),
        .O(fctl_ccmd_add_reg_12));
  LUT5 #(
    .INIT(32'hFFFFFF90)) 
    \cbus[28]_INST_0 
       (.I0(p_22_in[2]),
        .I1(\cbus[28] ),
        .I2(\cbus[29]_0 ),
        .I3(\cbus[28]_INST_0_i_3_n_0 ),
        .I4(fctl_ccmd_hlf_reg_1),
        .O(cbus[4]));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFFEEFE)) 
    \cbus[28]_INST_0_i_1 
       (.I0(\cbus[28]_INST_0_i_5_n_0 ),
        .I1(\cbus[28]_INST_0_i_6_n_0 ),
        .I2(sgla_r_0[36]),
        .I3(\cbus[24] ),
        .I4(\cbus[24]_0 ),
        .I5(fctl_ccmd_add_reg_1),
        .O(p_22_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF11111FF1)) 
    \cbus[28]_INST_0_i_3 
       (.I0(fctl_ccmd_int_reg_2),
        .I1(\cbus[28]_INST_0_i_7_n_0 ),
        .I2(\cbus[28]_1 ),
        .I3(\cbus[28]_0 [3]),
        .I4(fctl_ccmd_hlf_reg_2),
        .I5(fctl_ccmd_reg_reg_1),
        .O(\cbus[28]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \cbus[28]_INST_0_i_4 
       (.I0(fctl_ccmd_hlf_reg_3),
        .I1(p_5_in),
        .I2(\cbus[25]_3 ),
        .O(fctl_ccmd_hlf_reg_1));
  LUT4 #(
    .INIT(16'h0008)) 
    \cbus[28]_INST_0_i_5 
       (.I0(sglc_e[5]),
        .I1(fctl_ccmd_div),
        .I2(fctl_ccmd_mul),
        .I3(fctl_ccmd_add),
        .O(\cbus[28]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \cbus[28]_INST_0_i_6 
       (.I0(sgla_r_0[36]),
        .I1(fctl_ccmd_add),
        .I2(fctl_ccmd_mul),
        .I3(sglc_r_fmul[30]),
        .O(\cbus[28]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h11110001)) 
    \cbus[28]_INST_0_i_7 
       (.I0(\sglc_f[28]_i_3_0 ),
        .I1(\cbus[28]_INST_0_i_9_n_0 ),
        .I2(\cbus[4]_INST_0_i_4_0 [0]),
        .I3(\cbus[4]_INST_0_i_4_0 [1]),
        .I4(fctl_ccmd_add_reg_2),
        .O(\cbus[28]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \cbus[28]_INST_0_i_9 
       (.I0(\cbus[31]_INST_0_i_33_0 [27]),
        .I1(\cbus[31]_INST_0_i_33_1 [3]),
        .I2(\cbus[31]_INST_0_i_33_1 [0]),
        .I3(fctl_ccmd_add),
        .I4(fctl_ccmd_mul),
        .I5(sglc_r_fmul[24]),
        .O(\cbus[28]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF90)) 
    \cbus[29]_INST_0 
       (.I0(\sgla_e_reg[6] ),
        .I1(\cbus[29] ),
        .I2(\cbus[29]_0 ),
        .I3(\cbus[29]_1 ),
        .I4(\cbus[29]_INST_0_i_5_n_0 ),
        .O(cbus[5]));
  LUT6 #(
    .INIT(64'h1111111101010001)) 
    \cbus[29]_INST_0_i_1 
       (.I0(\cbus[29]_INST_0_i_6_n_0 ),
        .I1(\cbus[29]_INST_0_i_7_n_0 ),
        .I2(\cbus[24]_0 ),
        .I3(sgla_r_0[37]),
        .I4(\cbus[24] ),
        .I5(fctl_ccmd_add_reg_1),
        .O(\sgla_e_reg[6] ));
  LUT6 #(
    .INIT(64'hF7F7F7F7F7F7F0F7)) 
    \cbus[29]_INST_0_i_11 
       (.I0(fctl_ccmd_hlf),
        .I1(fctl_ccmd_reg_reg_0),
        .I2(\cbus[29]_INST_0_i_4 [1]),
        .I3(fctl_ccmd_cmp_reg_0),
        .I4(\cbus[29]_INST_0_i_4 [2]),
        .I5(\cbus[29]_INST_0_i_4_0 ),
        .O(fctl_ccmd_hlf_reg_2));
  LUT4 #(
    .INIT(16'hA808)) 
    \cbus[29]_INST_0_i_15 
       (.I0(fctl_ccmd_add),
        .I1(\cbus[31]_INST_0_i_33_1 [1]),
        .I2(\cbus[31]_INST_0_i_33_1 [3]),
        .I3(sglc_f0[29]),
        .O(fctl_ccmd_add_reg_16));
  LUT4 #(
    .INIT(16'hAAFE)) 
    \cbus[29]_INST_0_i_5 
       (.I0(fctl_ccmd_reg_reg_1),
        .I1(\cbus[25]_3 ),
        .I2(p_5_in),
        .I3(fctl_ccmd_hlf_reg_3),
        .O(\cbus[29]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \cbus[29]_INST_0_i_6 
       (.I0(sglc_e[6]),
        .I1(fctl_ccmd_div),
        .I2(fctl_ccmd_mul),
        .I3(fctl_ccmd_add),
        .O(\cbus[29]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \cbus[29]_INST_0_i_7 
       (.I0(sgla_r_0[37]),
        .I1(fctl_ccmd_add),
        .I2(fctl_ccmd_mul),
        .I3(sglc_r_fmul[31]),
        .O(\cbus[29]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cbus[2]_INST_0_i_5 
       (.I0(fctl_ccmd_add),
        .I1(\cbus[3]_INST_0_i_1 [1]),
        .I2(\cbus[31]_INST_0_i_33_1 [3]),
        .I3(\cbus[31]_INST_0_i_33_0 [1]),
        .O(fctl_ccmd_add_reg_18));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[2]_INST_0_i_7 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[3]),
        .I2(\cbus[31]_INST_0_i_33_0 [6]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[2]_INST_0_i_4 [3]),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg_2));
  LUT6 #(
    .INIT(64'hFFFFFFFF57750000)) 
    \cbus[30]_INST_0 
       (.I0(\cbus[30] ),
        .I1(\cbus[30]_0 ),
        .I2(p_22_in[3]),
        .I3(\cbus[30]_INST_0_i_4_n_0 ),
        .I4(fctl_ccmd_reg_reg_0),
        .I5(\cbus[30]_INST_0_i_6_n_0 ),
        .O(cbus[6]));
  LUT6 #(
    .INIT(64'hFF4FF444F444F444)) 
    \cbus[30]_INST_0_i_12 
       (.I0(fctl_ccmd_add_reg_2),
        .I1(sglc_e[7]),
        .I2(fctl_ccmd_add),
        .I3(sgla_r_0[38]),
        .I4(sglc_r_fmul[32]),
        .I5(fctl_ccmd_mul),
        .O(\cbus[30]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cbus[30]_INST_0_i_14 
       (.I0(p_22_in[1]),
        .I1(p_22_in[0]),
        .O(\sgla_e_reg[1] ));
  LUT2 #(
    .INIT(4'h1)) 
    \cbus[30]_INST_0_i_16 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\cbus[30]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000040004)) 
    \cbus[30]_INST_0_i_18 
       (.I0(fctl_ccmd_reg),
        .I1(fctl_cbus_out),
        .I2(fctl_ccmd_int),
        .I3(fctl_ccmd_cmp),
        .I4(\cbus[29]_INST_0_i_4 [2]),
        .I5(\cbus[26]_INST_0_i_4 ),
        .O(fctl_ccmd_reg_reg_1));
  LUT4 #(
    .INIT(16'hFF04)) 
    \cbus[30]_INST_0_i_3 
       (.I0(fctl_ccmd_add_reg_1),
        .I1(sgla_r_0[38]),
        .I2(\cbus[30]_3 ),
        .I3(\cbus[30]_INST_0_i_12_n_0 ),
        .O(p_22_in[3]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \cbus[30]_INST_0_i_30 
       (.I0(fctl_ccmd_add_reg_2),
        .I1(sglc_e[2]),
        .I2(sglc_r_fmul[27]),
        .I3(fctl_ccmd_mul),
        .I4(fctl_ccmd_add),
        .I5(sgla_r_0[33]),
        .O(fctl_ccmd_mul_reg_16));
  LUT6 #(
    .INIT(64'hFF4FF444F444F444)) 
    \cbus[30]_INST_0_i_31 
       (.I0(fctl_ccmd_add_reg_2),
        .I1(sglc_e[3]),
        .I2(fctl_ccmd_add),
        .I3(sgla_r_0[34]),
        .I4(sglc_r_fmul[28]),
        .I5(fctl_ccmd_mul),
        .O(fctl_ccmd_add_reg_11));
  LUT4 #(
    .INIT(16'hA808)) 
    \cbus[30]_INST_0_i_32 
       (.I0(fctl_ccmd_add),
        .I1(\cbus[31]_INST_0_i_33_1 [2]),
        .I2(\cbus[31]_INST_0_i_33_1 [3]),
        .I3(sglc_f0[30]),
        .O(fctl_ccmd_add_reg_15));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \cbus[30]_INST_0_i_4 
       (.I0(\sgla_e_reg[6] ),
        .I1(\cbus[30]_4 [2]),
        .I2(\cbus[30]_4 [0]),
        .I3(\sgla_e_reg[1] ),
        .I4(\cbus[30]_4 [1]),
        .I5(p_22_in[2]),
        .O(\cbus[30]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088800080)) 
    \cbus[30]_INST_0_i_5 
       (.I0(fctl_ccmd_reg),
        .I1(Q[3]),
        .I2(\cbus[30]_INST_0_i_16_n_0 ),
        .I3(Q[0]),
        .I4(\cbus[30]_5 ),
        .I5(fctl_ccmd_int),
        .O(fctl_ccmd_reg_reg_0));
  LUT5 #(
    .INIT(32'hABFFABAB)) 
    \cbus[30]_INST_0_i_6 
       (.I0(fctl_ccmd_reg_reg_1),
        .I1(\sglc_f_reg[30] ),
        .I2(fctl_ccmd_int_reg_2),
        .I3(\cbus[30]_1 ),
        .I4(\cbus[30]_2 ),
        .O(\cbus[30]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFEFFFCF0000)) 
    \cbus[31]_INST_0_i_14 
       (.I0(sglb_r),
        .I1(\cbus[31]_INST_0_i_4 ),
        .I2(\cbus[31]_INST_0_i_53 ),
        .I3(\cbus[31]_INST_0_i_4_0 ),
        .I4(\cbus[31]_INST_0_i_33_1 [3]),
        .I5(sgla_r_0[39]),
        .O(\sgla_i_reg[31] ));
  LUT6 #(
    .INIT(64'h00000000EBBE0000)) 
    \cbus[31]_INST_0_i_17 
       (.I0(sglc_nan),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(fctl_ccmd_sub),
        .I3(sgla_r_0[39]),
        .I4(fctl_ccmd_mul),
        .I5(fctl_ccmd_add),
        .O(\sglb_i_reg[31] ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \cbus[31]_INST_0_i_2 
       (.I0(fctl_ccmd_hlf),
        .I1(fctl_ccmd_int),
        .I2(fctl_cbus_out),
        .I3(fctl_ccmd_reg),
        .O(fctl_ccmd_hlf_reg_3));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \cbus[31]_INST_0_i_20 
       (.I0(fctl_ccmd_add),
        .I1(fctl_ccmd_mul),
        .I2(fctl_ccmd_reg),
        .I3(fctl_ccmd_div),
        .O(fctl_ccmd_add_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFFFF0FEEFFFF)) 
    \cbus[31]_INST_0_i_21 
       (.I0(fctl_ccmd_cmp),
        .I1(\cbus[29]_INST_0_i_4 [2]),
        .I2(\cbus[31]_INST_0_i_38_n_0 ),
        .I3(fctl_ccmd_reg),
        .I4(fctl_cbus_out),
        .I5(fctl_ccmd_int),
        .O(\cbus[31]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000F002200000022)) 
    \cbus[31]_INST_0_i_23 
       (.I0(\cbus[29]_INST_0_i_4 [2]),
        .I1(fctl_ccmd_cmp),
        .I2(fctl_ccmd_hlf),
        .I3(\cbus[31]_INST_0_i_40_n_0 ),
        .I4(fctl_ccmd_reg),
        .I5(\cbus[25]_3 ),
        .O(\cbus[31]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cbus[31]_INST_0_i_31 
       (.I0(fctl_ccmd_sub),
        .I1(\sglc_i_reg[41]_0 ),
        .O(sglb_r));
  LUT6 #(
    .INIT(64'h0000000000051105)) 
    \cbus[31]_INST_0_i_33 
       (.I0(\cbus[31]_INST_0_i_51_n_0 ),
        .I1(sglc_f0[31]),
        .I2(\cbus[31]_INST_0_i_33_1 [2]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(sglc_f0[30]),
        .I5(\cbus[7]_INST_0_i_6 ),
        .O(\cbus[31]_INST_0_i_53 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[31]_INST_0_i_38 
       (.I0(fctl_ccmd_hlf),
        .I1(\cbus[29]_INST_0_i_4 [1]),
        .O(\cbus[31]_INST_0_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \cbus[31]_INST_0_i_39 
       (.I0(fctl_ccmd_add),
        .I1(sglc_f0[31]),
        .I2(\cbus[31]_INST_0_i_33_1 [3]),
        .O(fctl_ccmd_add_reg_14));
  LUT6 #(
    .INIT(64'hBFFFBFFAFFFFFFFF)) 
    \cbus[31]_INST_0_i_40 
       (.I0(fctl_ccmd_int),
        .I1(\stat_reg[2]_2 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\cbus[31]_INST_0_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[31]_INST_0_i_51 
       (.I0(\cbus[31]_INST_0_i_33_1 [0]),
        .I1(\cbus[31]_INST_0_i_33_0 [27]),
        .I2(\cbus[31]_INST_0_i_33_1 [1]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(sglc_f0[29]),
        .O(\cbus[31]_INST_0_i_51_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[31]_INST_0_i_52 
       (.CI(CO),
        .CO({\cbus[31]_INST_0_i_52_n_2 ,\cbus[31]_INST_0_i_52_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(sglc_f0),
        .S({\<const0> ,\cbus[31]_INST_0_i_62_n_0 ,\cbus[31]_INST_0_i_63_n_0 ,\cbus[31]_INST_0_i_64_n_0 }));
  LUT5 #(
    .INIT(32'hFFFF222F)) 
    \cbus[31]_INST_0_i_6 
       (.I0(\cbus[29]_INST_0_i_4 [0]),
        .I1(\cbus[31]_INST_0_i_21_n_0 ),
        .I2(\sglc_f_reg[31] ),
        .I3(fctl_ccmd_int_reg_2),
        .I4(\cbus[31]_INST_0_i_23_n_0 ),
        .O(\sglc_i_reg[41] ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[31]_INST_0_i_62 
       (.I0(\cbus[31]_INST_0_i_33_1 [3]),
        .O(\cbus[31]_INST_0_i_62_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[31]_INST_0_i_63 
       (.I0(\cbus[31]_INST_0_i_33_1 [2]),
        .O(\cbus[31]_INST_0_i_63_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[31]_INST_0_i_64 
       (.I0(\cbus[31]_INST_0_i_33_1 [1]),
        .O(\cbus[31]_INST_0_i_64_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \cbus[31]_INST_0_i_7 
       (.I0(fctl_ccmd_add),
        .I1(fctl_ccmd_mul),
        .I2(fctl_ccmd_div),
        .O(fctl_ccmd_add_reg_2));
  LUT2 #(
    .INIT(4'hB)) 
    \cbus[31]_INST_0_i_9 
       (.I0(fctl_ccmd_add),
        .I1(fctl_ccmd_mul),
        .O(fctl_ccmd_add_reg_13));
  LUT4 #(
    .INIT(16'hA808)) 
    \cbus[3]_INST_0_i_3 
       (.I0(fctl_ccmd_add),
        .I1(\cbus[3]_INST_0_i_1 [2]),
        .I2(\cbus[31]_INST_0_i_33_1 [3]),
        .I3(\cbus[31]_INST_0_i_33_0 [2]),
        .O(fctl_ccmd_add_reg_17));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \cbus[4]_INST_0 
       (.I0(cbus_4_sn_1),
        .I1(fctl_ccmd_add_reg_0),
        .I2(fctl_ccmd_int_reg_1),
        .I3(sglc_sr_flag2),
        .I4(\cbus[4]_INST_0_i_2_n_0 ),
        .I5(\cbus[4]_0 ),
        .O(cbus[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \cbus[4]_INST_0_i_2 
       (.I0(\cbus[4]_INST_0_i_4_n_0 ),
        .I1(fctl_ccmd_int_reg_2),
        .O(\cbus[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1111111101010001)) 
    \cbus[4]_INST_0_i_4 
       (.I0(\cbus[4]_INST_0_i_5_n_0 ),
        .I1(\cbus[4]_INST_0_i_6_n_0 ),
        .I2(\sglc_f[4]_i_2_0 ),
        .I3(sgla_r_0[4]),
        .I4(\sglc_f[4]_i_2_1 ),
        .I5(fctl_ccmd_add_reg_1),
        .O(\cbus[4]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \cbus[4]_INST_0_i_5 
       (.I0(\cbus[4]_INST_0_i_4_1 ),
        .I1(\cbus[4]_INST_0_i_4_0 [1]),
        .I2(fctl_ccmd_div),
        .I3(fctl_ccmd_mul),
        .I4(fctl_ccmd_add),
        .O(\cbus[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[4]_INST_0_i_6 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[0]),
        .I2(\cbus[31]_INST_0_i_33_0 [3]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[2]_INST_0_i_4 [0]),
        .I5(fctl_ccmd_add),
        .O(\cbus[4]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \cbus[7]_INST_0_i_1 
       (.I0(fctl_ccmd_int),
        .I1(fctl_cbus_out),
        .I2(fctl_ccmd_reg),
        .I3(fctl_ccmd_cmp),
        .O(fctl_ccmd_int_reg_1));
  LUT2 #(
    .INIT(4'h6)) 
    \cbus[7]_INST_0_i_5 
       (.I0(\cbus[31]_INST_0_i_33_1 [3]),
        .I1(sgla_r_0[39]),
        .O(\sgla_i_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[8]_INST_0_i_2 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[4]),
        .I2(\cbus[31]_INST_0_i_33_0 [7]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[11]_INST_0_i_5 [0]),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg_3));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \cbus[9]_INST_0_i_1 
       (.I0(fctl_ccmd_add_reg_2),
        .I1(\cbus[4]_1 ),
        .I2(\cbus[9]_INST_0_i_3_n_0 ),
        .I3(sglc_r_sgla[0]),
        .I4(fctl_ccmd_add_reg_1),
        .O(fctl_ccmd_add_reg_0));
  LUT6 #(
    .INIT(64'hF0FFF00088888888)) 
    \cbus[9]_INST_0_i_3 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_r_fmul[5]),
        .I2(\cbus[31]_INST_0_i_33_0 [8]),
        .I3(\cbus[31]_INST_0_i_33_1 [3]),
        .I4(\cbus[11]_INST_0_i_5 [1]),
        .I5(fctl_ccmd_add),
        .O(\cbus[9]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    crdy_INST_0
       (.I0(crdy_f),
        .I1(fctl_cbus_out),
        .O(E));
  LUT5 #(
    .INIT(32'hA0020002)) 
    crdy_INST_0_i_1
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\stat_reg[2]_2 ),
        .O(fctl_cbus_out));
  LUT6 #(
    .INIT(64'hFF7FFB7B00000000)) 
    crdy_f_i_1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(fnrm_norm_fin),
        .I4(p_0_in),
        .I5(crdy_f_i_4_n_0),
        .O(crdy_t));
  LUT6 #(
    .INIT(64'hAAAAAA00AAAAAAFB)) 
    crdy_f_i_4
       (.I0(Q[3]),
        .I1(ccmd[4]),
        .I2(crdy_f_i_5_n_0),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(crdy_f_i_4_n_0));
  LUT4 #(
    .INIT(16'hE001)) 
    crdy_f_i_5
       (.I0(ccmd[0]),
        .I1(ccmd[1]),
        .I2(ccmd[2]),
        .I3(ccmd[3]),
        .O(crdy_f_i_5_n_0));
  FDSE crdy_f_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(crdy_t),
        .Q(crdy_f),
        .S(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \den_r[23]_i_1 
       (.I0(fctl_load_d__4),
        .I1(sgla_r_0[0]),
        .O(\sgla_f_reg[0] ));
  LUT5 #(
    .INIT(32'h55551000)) 
    \den_r[49]_i_1 
       (.I0(Q[3]),
        .I1(fdiv_nan_inf),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\stat_reg[3]_3 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \dso_r[24]_i_1 
       (.I0(Q[0]),
        .I1(fdiv_nan_inf),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(fctl_load_d__4));
  LUT5 #(
    .INIT(32'h00900020)) 
    fctl_ccmd_add_i_1
       (.I0(ccmd[1]),
        .I1(ccmd[3]),
        .I2(ccmd[4]),
        .I3(ccmd[2]),
        .I4(ccmd[0]),
        .O(fctl_ccmd_add0));
  FDRE fctl_ccmd_add_reg
       (.C(clk),
        .CE(E),
        .D(fctl_ccmd_add0),
        .Q(fctl_ccmd_add),
        .R(SR));
  LUT5 #(
    .INIT(32'h40000000)) 
    fctl_ccmd_cmp_i_1
       (.I0(ccmd[2]),
        .I1(ccmd[3]),
        .I2(ccmd[4]),
        .I3(ccmd[0]),
        .I4(ccmd[1]),
        .O(fctl_ccmd_add1));
  FDRE fctl_ccmd_cmp_reg
       (.C(clk),
        .CE(E),
        .D(fctl_ccmd_add1),
        .Q(fctl_ccmd_cmp),
        .R(SR));
  LUT5 #(
    .INIT(32'h01000000)) 
    fctl_ccmd_div_i_1
       (.I0(ccmd[1]),
        .I1(ccmd[3]),
        .I2(ccmd[0]),
        .I3(ccmd[2]),
        .I4(ccmd[4]),
        .O(fctl_ccmd_div_i_1_n_0));
  FDRE fctl_ccmd_div_reg
       (.C(clk),
        .CE(E),
        .D(fctl_ccmd_div_i_1_n_0),
        .Q(fctl_ccmd_div),
        .R(SR));
  LUT5 #(
    .INIT(32'h10000000)) 
    fctl_ccmd_hlf_i_1
       (.I0(ccmd[3]),
        .I1(ccmd[0]),
        .I2(ccmd[4]),
        .I3(ccmd[1]),
        .I4(ccmd[2]),
        .O(fctl_ccmd_reg60_in));
  FDRE fctl_ccmd_hlf_reg
       (.C(clk),
        .CE(E),
        .D(fctl_ccmd_reg60_in),
        .Q(fctl_ccmd_hlf),
        .R(SR));
  LUT5 #(
    .INIT(32'h00048000)) 
    fctl_ccmd_int_i_1
       (.I0(ccmd[2]),
        .I1(ccmd[4]),
        .I2(ccmd[0]),
        .I3(ccmd[1]),
        .I4(ccmd[3]),
        .O(fctl_ccmd_int0));
  FDRE fctl_ccmd_int_reg
       (.C(clk),
        .CE(E),
        .D(fctl_ccmd_int0),
        .Q(fctl_ccmd_int),
        .R(SR));
  LUT5 #(
    .INIT(32'h10000000)) 
    fctl_ccmd_mul_i_1
       (.I0(ccmd[3]),
        .I1(ccmd[2]),
        .I2(ccmd[4]),
        .I3(ccmd[0]),
        .I4(ccmd[1]),
        .O(fctl_ccmd_mul_i_1_n_0));
  FDRE fctl_ccmd_mul_reg
       (.C(clk),
        .CE(E),
        .D(fctl_ccmd_mul_i_1_n_0),
        .Q(fctl_ccmd_mul),
        .R(SR));
  LUT5 #(
    .INIT(32'h1070A080)) 
    fctl_ccmd_reg_i_1
       (.I0(ccmd[2]),
        .I1(ccmd[1]),
        .I2(ccmd[4]),
        .I3(ccmd[0]),
        .I4(ccmd[3]),
        .O(fctl_ccmd_reg0));
  FDRE fctl_ccmd_reg_reg
       (.C(clk),
        .CE(E),
        .D(fctl_ccmd_reg0),
        .Q(fctl_ccmd_reg),
        .R(SR));
  LUT5 #(
    .INIT(32'h00900000)) 
    fctl_ccmd_sub_i_1
       (.I0(ccmd[3]),
        .I1(ccmd[0]),
        .I2(ccmd[4]),
        .I3(ccmd[2]),
        .I4(ccmd[1]),
        .O(fctl_ccmd_sub0));
  FDRE fctl_ccmd_sub_reg
       (.C(clk),
        .CE(E),
        .D(fctl_ccmd_sub0),
        .Q(fctl_ccmd_sub),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    rem0_carry_i_1
       (.I0(fctl_load_d__4),
        .I1(sgla_r_0[1]),
        .O(den[0]));
  LUT2 #(
    .INIT(4'h8)) 
    rem1_carry_i_1
       (.I0(fctl_load_d__4),
        .I1(sgla_r_0[2]),
        .O(den[1]));
  LUT2 #(
    .INIT(4'h8)) 
    rem2_carry_i_1
       (.I0(fctl_load_d__4),
        .I1(sgla_r_0[3]),
        .O(den[2]));
  LUT2 #(
    .INIT(4'h8)) 
    rem3_carry_i_1
       (.I0(fctl_load_d__4),
        .I1(sgla_r_0[4]),
        .O(den[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[0]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[5]),
        .O(sfpu_dsp_a[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[10]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[15]),
        .O(sfpu_dsp_a[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[11]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[16]),
        .O(sfpu_dsp_a[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[12]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[17]),
        .O(sfpu_dsp_a[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[13]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[18]),
        .O(sfpu_dsp_a[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[14]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[19]),
        .O(sfpu_dsp_a[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[15]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[20]),
        .O(sfpu_dsp_a[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[16]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[21]),
        .O(sfpu_dsp_a[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[17]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[22]),
        .O(sfpu_dsp_a[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[18]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[23]),
        .O(sfpu_dsp_a[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[19]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[24]),
        .O(sfpu_dsp_a[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[1]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[6]),
        .O(sfpu_dsp_a[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[20]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[25]),
        .O(sfpu_dsp_a[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[21]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[26]),
        .O(sfpu_dsp_a[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[22]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[27]),
        .O(sfpu_dsp_a[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[23]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[28]),
        .O(sfpu_dsp_a[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[2]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[7]),
        .O(sfpu_dsp_a[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[3]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[8]),
        .O(sfpu_dsp_a[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[4]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[9]),
        .O(sfpu_dsp_a[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[5]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[10]),
        .O(sfpu_dsp_a[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[6]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[11]),
        .O(sfpu_dsp_a[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[7]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[12]),
        .O(sfpu_dsp_a[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[8]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[13]),
        .O(sfpu_dsp_a[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_a[9]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sgla_r_0[14]),
        .O(sfpu_dsp_a[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[0]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[5]),
        .O(sfpu_dsp_b[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[10]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[15]),
        .O(sfpu_dsp_b[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[11]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[16]),
        .O(sfpu_dsp_b[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[12]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[17]),
        .O(sfpu_dsp_b[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[13]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[18]),
        .O(sfpu_dsp_b[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[14]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[19]),
        .O(sfpu_dsp_b[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[15]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[20]),
        .O(sfpu_dsp_b[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[16]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[21]),
        .O(sfpu_dsp_b[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[17]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[22]),
        .O(sfpu_dsp_b[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[18]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[23]),
        .O(sfpu_dsp_b[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[19]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[24]),
        .O(sfpu_dsp_b[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[1]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[6]),
        .O(sfpu_dsp_b[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[20]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[25]),
        .O(sfpu_dsp_b[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[21]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[26]),
        .O(sfpu_dsp_b[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[22]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[27]),
        .O(sfpu_dsp_b[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[23]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[28]),
        .O(sfpu_dsp_b[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[2]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[7]),
        .O(sfpu_dsp_b[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[3]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[8]),
        .O(sfpu_dsp_b[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[4]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[9]),
        .O(sfpu_dsp_b[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[5]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[10]),
        .O(sfpu_dsp_b[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[6]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[11]),
        .O(sfpu_dsp_b[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[7]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[12]),
        .O(sfpu_dsp_b[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[8]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[13]),
        .O(sfpu_dsp_b[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \sfpu_dsp_b[9]_INST_0 
       (.I0(fctl_ccmd_mul),
        .I1(sglc_f_t_carry__6_0[14]),
        .O(sfpu_dsp_b[9]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \sgla_e[1]_i_1 
       (.I0(abus[8]),
        .I1(abus[7]),
        .I2(fctl_load_b),
        .I3(sgla_e__0[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \sgla_e[2]_i_1 
       (.I0(abus[9]),
        .I1(abus[7]),
        .I2(abus[8]),
        .I3(fctl_load_b),
        .I4(sgla_e__0[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \sgla_e[3]_i_1 
       (.I0(abus[10]),
        .I1(abus[8]),
        .I2(abus[7]),
        .I3(abus[9]),
        .I4(fctl_load_b),
        .I5(sgla_e__0[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \sgla_e[4]_i_1 
       (.I0(abus[11]),
        .I1(\sgla_e_reg[4] ),
        .I2(fctl_load_b),
        .I3(sgla_e__0[3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \sgla_e[5]_i_1 
       (.I0(abus[12]),
        .I1(\sgla_e_reg[5] ),
        .I2(fctl_load_b),
        .I3(sgla_e__0[4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \sgla_e[6]_i_1 
       (.I0(abus[13]),
        .I1(\sgla_e_reg[6]_0 ),
        .I2(fctl_load_b),
        .I3(sgla_e__0[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h95FF9500)) 
    \sgla_e[7]_i_1 
       (.I0(abus[14]),
        .I1(\sgla_e_reg[6]_0 ),
        .I2(abus[13]),
        .I3(fctl_load_b),
        .I4(sgla_e__0[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFDFDFFFFFF)) 
    \sgla_e[7]_i_15 
       (.I0(\sgla_e[7]_i_9 ),
        .I1(\sgla_e[7]_i_16 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\stat_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \sgla_f[18]_i_5 
       (.I0(abus[0]),
        .I1(fctl_load_b),
        .I2(\ccmd[1]_2 ),
        .I3(sgla_r_0[26]),
        .O(abus_13_sn_1));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \sgla_f[19]_i_4 
       (.I0(fctl_load_b),
        .I1(abus[1]),
        .I2(sgla_r_0[27]),
        .I3(\ccmd[1]_2 ),
        .I4(\sgla_f[19]_i_2 ),
        .O(abus_14_sn_1));
  LUT5 #(
    .INIT(32'h00000042)) 
    \sgla_f[1]_i_10 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\sgla_e[7]_i_16 ),
        .O(\stat_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \sgla_f[1]_i_9 
       (.I0(\stat_reg[3]_1 ),
        .I1(O),
        .I2(\sgla_f[1]_i_2 ),
        .I3(fctl_load_b),
        .O(\stat_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sgla_f[20]_i_5 
       (.I0(fctl_load_b),
        .I1(abus[2]),
        .O(\abus[15] ));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \sgla_f[21]_i_2 
       (.I0(fctl_load_b),
        .I1(abus[3]),
        .I2(sgla_r_0[29]),
        .I3(\ccmd[1]_2 ),
        .I4(\sgla_f_reg[21] ),
        .O(\abus[16] ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sgla_f[22]_i_4 
       (.I0(\ccmd[1]_3 ),
        .I1(sgla_r_0[23]),
        .I2(sgla_r_0[24]),
        .I3(\ccmd[1]_4 ),
        .I4(sgla_r_0[30]),
        .I5(\ccmd[1]_2 ),
        .O(\sgla_f_reg[23] ));
  LUT2 #(
    .INIT(4'h8)) 
    \sgla_f[23]_i_6 
       (.I0(fctl_load_b),
        .I1(abus[4]),
        .O(\abus[18] ));
  LUT2 #(
    .INIT(4'hE)) 
    \sgla_f[23]_i_7 
       (.I0(fctl_load_b),
        .I1(\sgla_f[14]_i_5 ),
        .O(\ccmd[1]_2 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \sgla_f[24]_i_5 
       (.I0(abus[5]),
        .I1(fctl_load_b),
        .I2(\ccmd[1]_4 ),
        .I3(sgla_r_0[26]),
        .O(\abus[19] ));
  LUT2 #(
    .INIT(4'hE)) 
    \sgla_f[25]_i_4 
       (.I0(fctl_load_b),
        .I1(\sgla_f_reg[9] ),
        .O(ccmd_1_sn_1));
  LUT4 #(
    .INIT(16'h8F88)) 
    \sgla_f[25]_i_6 
       (.I0(abus[6]),
        .I1(fctl_load_b),
        .I2(\ccmd[1]_4 ),
        .I3(sgla_r_0[27]),
        .O(\abus[20] ));
  LUT2 #(
    .INIT(4'hE)) 
    \sgla_f[26]_i_6 
       (.I0(fctl_load_b),
        .I1(\sgla_f[5]_i_2 ),
        .O(\ccmd[1]_3 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sgla_f[26]_i_7 
       (.I0(fctl_load_b),
        .I1(\sgla_f[12]_i_5 ),
        .O(\ccmd[1]_4 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sgla_f[27]_i_4 
       (.I0(fctl_load_b),
        .I1(\sgla_f_reg[8] ),
        .O(\ccmd[1]_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sgla_f[27]_i_5 
       (.I0(fctl_load_b),
        .I1(\sgla_f_reg[5] ),
        .O(\ccmd[1]_0 ));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \sgla_f[28]_i_1 
       (.I0(\sgla_f[28]_i_4_n_0 ),
        .I1(abus[11]),
        .I2(abus[9]),
        .I3(abus[13]),
        .I4(rst_n),
        .O(\abus[27] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \sgla_f[28]_i_4 
       (.I0(abus[7]),
        .I1(abus[8]),
        .I2(abus[12]),
        .I3(abus[10]),
        .I4(fctl_load_b),
        .I5(abus[14]),
        .O(\sgla_f[28]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \sgla_f[28]_i_8 
       (.I0(\sgla_f_reg[28] ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\stat_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sgla_f[8]_i_4 
       (.I0(\ccmd[1]_2 ),
        .I1(sgla_r_0[16]),
        .I2(sgla_r_0[9]),
        .I3(\ccmd[1]_3 ),
        .I4(sgla_r_0[10]),
        .I5(\ccmd[1]_4 ),
        .O(\sgla_f_reg[16] ));
  LUT5 #(
    .INIT(32'h1FFE0000)) 
    \sgla_i[31]_i_1 
       (.I0(ccmd[1]),
        .I1(ccmd[0]),
        .I2(ccmd[2]),
        .I3(ccmd[3]),
        .I4(\sgla_i[31]_i_2_n_0 ),
        .O(fctl_load_b));
  LUT5 #(
    .INIT(32'h00000002)) 
    \sgla_i[31]_i_2 
       (.I0(ccmd[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\sgla_i[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \sglb_e[1]_i_2 
       (.I0(bbus[5]),
        .I1(bbus[4]),
        .I2(fctl_load_b),
        .O(\bbus[24]_0 ));
  LUT5 #(
    .INIT(32'hFFFF2A80)) 
    \sglb_e[2]_i_4 
       (.I0(fctl_load_b),
        .I1(bbus[5]),
        .I2(bbus[4]),
        .I3(bbus[6]),
        .I4(\sglb_e_reg[2] ),
        .O(\bbus[24] ));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \sglb_e[3]_i_2 
       (.I0(bbus[7]),
        .I1(bbus[5]),
        .I2(bbus[4]),
        .I3(bbus[6]),
        .I4(fctl_load_b),
        .O(\bbus[26] ));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \sglb_e[4]_i_5 
       (.I0(bbus[8]),
        .I1(bbus[6]),
        .I2(bbus[4]),
        .I3(bbus[5]),
        .I4(bbus[7]),
        .I5(fctl_load_b),
        .O(\bbus[27] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEBF)) 
    \sglb_e[8]_i_5 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(fctl_ccmd_int),
        .I5(\sglb_f_reg[31] ),
        .O(\stat_reg[2]_1 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \sglb_f[24]_i_1 
       (.I0(fctl_load_b),
        .I1(bbus[0]),
        .I2(\sglb_f_reg[24] ),
        .O(\bbus[22] [0]));
  LUT3 #(
    .INIT(8'hF8)) 
    \sglb_f[25]_i_1 
       (.I0(fctl_load_b),
        .I1(bbus[1]),
        .I2(\sglb_f_reg[25] ),
        .O(\bbus[22] [1]));
  LUT3 #(
    .INIT(8'hF8)) 
    \sglb_f[26]_i_1 
       (.I0(fctl_load_b),
        .I1(bbus[2]),
        .I2(\sglb_f_reg[26] ),
        .O(\bbus[22] [2]));
  LUT3 #(
    .INIT(8'hF8)) 
    \sglb_f[27]_i_1 
       (.I0(fctl_load_b),
        .I1(bbus[3]),
        .I2(\sglb_f_reg[27] ),
        .O(\bbus[22] [3]));
  LUT5 #(
    .INIT(32'h0002FFFF)) 
    \sglb_f[28]_i_1 
       (.I0(\sglb_f[28]_i_3_n_0 ),
        .I1(bbus[6]),
        .I2(bbus[5]),
        .I3(bbus[4]),
        .I4(rst_n),
        .O(\bbus[25] ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \sglb_f[28]_i_3 
       (.I0(bbus[9]),
        .I1(bbus[10]),
        .I2(bbus[7]),
        .I3(bbus[8]),
        .I4(bbus[11]),
        .I5(fctl_load_b),
        .O(\sglb_f[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFB)) 
    \sglb_f[30]_i_3 
       (.I0(fctl_ccmd_int),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(fctl_ccmd_int_reg_0));
  LUT4 #(
    .INIT(16'hFF04)) 
    \sglc_e[8]_i_3 
       (.I0(fctl_ccmd_add_reg_1),
        .I1(\sglc_e[8]_i_3_0 ),
        .I2(\cbus[30]_3 ),
        .I3(\sglc_e[8]_i_4_n_0 ),
        .O(p_22_in[4]));
  LUT6 #(
    .INIT(64'hFF4FF444F444F444)) 
    \sglc_e[8]_i_4 
       (.I0(fctl_ccmd_add_reg_2),
        .I1(sglc_e[8]),
        .I2(fctl_ccmd_add),
        .I3(\sglc_e[8]_i_3_0 ),
        .I4(sglc_r_fmul[33]),
        .I5(fctl_ccmd_mul),
        .O(\sglc_e[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sglc_f[10]_i_3 
       (.I0(\sglc_f[11]_i_10_n_0 ),
        .I1(\sglc_f[10]_i_3_0 [2]),
        .I2(\sglc_f[10]_i_3_0 [0]),
        .I3(\sglc_f[11]_i_12_n_0 ),
        .I4(\sglc_f[10]_i_3_0 [1]),
        .I5(\sglc_f[11]_i_11_n_0 ),
        .O(\sglc_f_reg[13] ));
  LUT3 #(
    .INIT(8'h5D)) 
    \sglc_f[11]_i_10 
       (.I0(\sglc_f[10]_i_3_0 [5]),
        .I1(\stat_reg[1]_0 ),
        .I2(\stat_reg[0]_3 ),
        .O(\sglc_f[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h40404045FFFFFFFF)) 
    \sglc_f[11]_i_11 
       (.I0(\stat_reg[0]_3 ),
        .I1(\sglc_f[15]_i_13_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\sglc_f[15]_i_14_n_0 ),
        .I5(\sglc_f[10]_i_3_2 ),
        .O(\sglc_f[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40404045)) 
    \sglc_f[11]_i_12 
       (.I0(\stat_reg[0]_3 ),
        .I1(\sglc_f[15]_i_13_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\sglc_f[15]_i_14_n_0 ),
        .I5(\sglc_f[10]_i_3_1 ),
        .O(\sglc_f[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sglc_f[11]_i_4 
       (.I0(\sglc_f[11]_i_10_n_0 ),
        .I1(\sglc_f[10]_i_3_0 [3]),
        .I2(\sglc_f[10]_i_3_0 [2]),
        .I3(\sglc_f[11]_i_11_n_0 ),
        .I4(\sglc_f[10]_i_3_0 [1]),
        .I5(\sglc_f[11]_i_12_n_0 ),
        .O(\sglc_f_reg[14] ));
  LUT6 #(
    .INIT(64'h2000200020002022)) 
    \sglc_f[14]_i_6 
       (.I0(\sglc_f_reg[14]_0 ),
        .I1(\stat_reg[0]_3 ),
        .I2(\sglc_f[15]_i_13_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\sglc_f[15]_i_14_n_0 ),
        .O(\stat_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h00000000BFBFBFBA)) 
    \sglc_f[15]_i_11 
       (.I0(\stat_reg[0]_3 ),
        .I1(\sglc_f[15]_i_13_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\sglc_f[15]_i_14_n_0 ),
        .I5(\sglc_f[10]_i_2 ),
        .O(\stat_reg[1]_3 ));
  LUT3 #(
    .INIT(8'h45)) 
    \sglc_f[15]_i_13 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\sglc_f[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5757575757575777)) 
    \sglc_f[15]_i_14 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(sgla_sft_fin),
        .I3(\sglc_f[11]_i_12_0 ),
        .I4(fctl_ccmd_int),
        .I5(\sglb_f_reg[31] ),
        .O(\sglc_f[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2000200020002022)) 
    \sglc_f[15]_i_6 
       (.I0(\sglc_f_reg[15] ),
        .I1(\stat_reg[0]_3 ),
        .I2(\sglc_f[15]_i_13_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\sglc_f[15]_i_14_n_0 ),
        .O(\stat_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h40404045FFFFFFFF)) 
    \sglc_f[26]_i_9 
       (.I0(\stat_reg[0]_3 ),
        .I1(\sglc_f[15]_i_13_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\sglc_f[15]_i_14_n_0 ),
        .I5(\sglc_f[10]_i_2 ),
        .O(\stat_reg[1]_4 ));
  LUT6 #(
    .INIT(64'h1111BAAA00002222)) 
    \sglc_f[28]_i_15 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(sglb_sft_fin),
        .I3(sgla_sft_fin),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\stat_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_f[28]_i_3 
       (.I0(\stat_reg[0]_2 ),
        .I1(\cbus[28]_INST_0_i_7_n_0 ),
        .O(\stat_reg[0]_4 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_f[30]_i_1 
       (.I0(\stat_reg[0]_2 ),
        .I1(\sglc_f_reg[30] ),
        .O(\stat_reg[0]_5 [0]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \sglc_f[31]_i_1 
       (.I0(\stat_reg[0]_2 ),
        .I1(\sglc_f_reg[31]_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\stat_reg[3]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_f[31]_i_2 
       (.I0(\stat_reg[0]_2 ),
        .I1(\sglc_f_reg[31] ),
        .O(\stat_reg[0]_5 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_f[4]_i_2 
       (.I0(\stat_reg[0]_2 ),
        .I1(\cbus[4]_INST_0_i_4_n_0 ),
        .O(\stat_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__0_i_1
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[7]),
        .O(p_0_in1_in[7]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__0_i_2
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[6]),
        .O(p_0_in1_in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__0_i_3
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[5]),
        .O(p_0_in1_in[5]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__0_i_4
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[4]),
        .O(p_0_in1_in[4]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__0_i_5
       (.I0(p_0_in1_in[7]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[7]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_20[3]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__0_i_6
       (.I0(p_0_in1_in[6]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[6]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_20[2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__0_i_7
       (.I0(p_0_in1_in[5]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[5]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_20[1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__0_i_8
       (.I0(p_0_in1_in[4]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[4]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_20[0]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__1_i_1
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[11]),
        .O(p_0_in1_in[11]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__1_i_2
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[10]),
        .O(p_0_in1_in[10]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__1_i_3
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[9]),
        .O(p_0_in1_in[9]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__1_i_4
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[8]),
        .O(p_0_in1_in[8]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__1_i_5
       (.I0(p_0_in1_in[11]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[11]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_21[3]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__1_i_6
       (.I0(p_0_in1_in[10]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[10]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_21[2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__1_i_7
       (.I0(p_0_in1_in[9]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[9]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_21[1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__1_i_8
       (.I0(p_0_in1_in[8]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[8]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_21[0]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__2_i_1
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[15]),
        .O(p_0_in1_in[15]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__2_i_2
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[14]),
        .O(p_0_in1_in[14]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__2_i_3
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[13]),
        .O(p_0_in1_in[13]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__2_i_4
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[12]),
        .O(p_0_in1_in[12]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__2_i_5
       (.I0(p_0_in1_in[15]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[15]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_22[3]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__2_i_6
       (.I0(p_0_in1_in[14]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[14]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_22[2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__2_i_7
       (.I0(p_0_in1_in[13]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[13]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_22[1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__2_i_8
       (.I0(p_0_in1_in[12]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[12]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_22[0]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__3_i_1
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[19]),
        .O(p_0_in1_in[19]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__3_i_2
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[18]),
        .O(p_0_in1_in[18]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__3_i_3
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[17]),
        .O(p_0_in1_in[17]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__3_i_4
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[16]),
        .O(p_0_in1_in[16]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__3_i_5
       (.I0(p_0_in1_in[19]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[19]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_23[3]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__3_i_6
       (.I0(p_0_in1_in[18]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[18]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_23[2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__3_i_7
       (.I0(p_0_in1_in[17]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[17]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_23[1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__3_i_8
       (.I0(p_0_in1_in[16]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[16]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_23[0]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__4_i_1
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[23]),
        .O(p_0_in1_in[23]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__4_i_2
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[22]),
        .O(p_0_in1_in[22]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__4_i_3
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[21]),
        .O(p_0_in1_in[21]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__4_i_4
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[20]),
        .O(p_0_in1_in[20]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__4_i_5
       (.I0(p_0_in1_in[23]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[23]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_24[3]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__4_i_6
       (.I0(p_0_in1_in[22]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[22]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_24[2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__4_i_7
       (.I0(p_0_in1_in[21]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[21]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_24[1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__4_i_8
       (.I0(p_0_in1_in[20]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[20]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_24[0]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__5_i_1
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[27]),
        .O(p_0_in1_in[27]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__5_i_2
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[26]),
        .O(p_0_in1_in[26]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__5_i_3
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[25]),
        .O(p_0_in1_in[25]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__5_i_4
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[24]),
        .O(p_0_in1_in[24]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__5_i_5
       (.I0(p_0_in1_in[27]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[27]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_25[3]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__5_i_6
       (.I0(p_0_in1_in[26]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[26]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_25[2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__5_i_7
       (.I0(p_0_in1_in[25]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[25]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_25[1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__5_i_8
       (.I0(p_0_in1_in[24]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[24]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_25[0]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__6_i_1
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[30]),
        .O(p_0_in1_in[30]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__6_i_2
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[29]),
        .O(p_0_in1_in[29]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry__6_i_3
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[28]),
        .O(p_0_in1_in[28]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__6_i_5
       (.I0(p_0_in1_in[30]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[30]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_26[2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__6_i_6
       (.I0(p_0_in1_in[29]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[29]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_26[1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry__6_i_7
       (.I0(p_0_in1_in[28]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[28]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(fctl_ccmd_add_reg_26[0]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry_i_2
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[3]),
        .O(p_0_in1_in[3]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry_i_3
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[2]),
        .O(p_0_in1_in[2]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry_i_4
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[1]),
        .O(p_0_in1_in[1]));
  LUT2 #(
    .INIT(4'h8)) 
    sglc_f_t_carry_i_5
       (.I0(fctl_ccmd_add),
        .I1(sgla_r_0[0]),
        .O(p_0_in1_in[0]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry_i_6
       (.I0(p_0_in1_in[3]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[3]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry_i_7
       (.I0(p_0_in1_in[2]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[2]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry_i_8
       (.I0(p_0_in1_in[1]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[1]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    sglc_f_t_carry_i_9
       (.I0(p_0_in1_in[0]),
        .I1(fctl_ccmd_add),
        .I2(sglc_f_t_carry__6_0[0]),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[39]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4F4F4)) 
    \sglc_i[41]_i_1 
       (.I0(fctl_ccmd_add_reg_1),
        .I1(sglc_r_sgla[2]),
        .I2(\sglb_i_reg[31] ),
        .I3(fctl_ccmd_add),
        .I4(sglc_r_fadd[0]),
        .I5(\sglc_i_reg[41]_1 ),
        .O(fctl_ccmd_add_reg_4[0]));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \sglc_i[42]_i_1 
       (.I0(\sglc_i_reg[42] ),
        .I1(sglc_r_fadd[1]),
        .I2(fctl_ccmd_add),
        .I3(fctl_ccmd_mul_reg_0),
        .I4(\sglc_i_reg[42]_0 ),
        .O(fctl_ccmd_add_reg_4[1]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \sglc_i[42]_i_2 
       (.I0(\sglc_i_reg[42]_1 ),
        .I1(\sglc_i_reg[42]_2 ),
        .I2(\sglc_i_reg[42]_3 ),
        .I3(\sglc_i_reg[42]_4 ),
        .I4(fctl_ccmd_mul),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg_0));
  LUT6 #(
    .INIT(64'h000000000008AF08)) 
    \sglc_i[44]_i_1 
       (.I0(Q[0]),
        .I1(\sglc_i_reg[41]_2 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\stat_reg[0]_3 ),
        .O(\stat_reg[0]_2 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \sglc_i[44]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(fdiv_nan_inf),
        .I3(Q[2]),
        .O(\stat_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF50501000)) 
    \stat[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(\stat[0]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\stat[0]_i_3_n_0 ),
        .O(stat_nx[0]));
  LUT3 #(
    .INIT(8'hFB)) 
    \stat[0]_i_2 
       (.I0(fdiv_nan_inf),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF191A0000)) 
    \stat[0]_i_3 
       (.I0(ccmd[0]),
        .I1(ccmd[3]),
        .I2(ccmd[2]),
        .I3(ccmd[1]),
        .I4(\stat[0]_i_4_n_0 ),
        .I5(\stat[0]_i_5_n_0 ),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008A00)) 
    \stat[0]_i_4 
       (.I0(ccmd[4]),
        .I1(ccmd[1]),
        .I2(ccmd[3]),
        .I3(\stat[0]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\stat[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h50005FC0)) 
    \stat[0]_i_5 
       (.I0(\stat_reg[2]_2 ),
        .I1(p_0_in),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\stat[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0101015151510151)) 
    \stat[1]_i_1 
       (.I0(\stat_reg[0]_3 ),
        .I1(\stat[1]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(\stat[1]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\stat_reg[1]_5 ),
        .O(stat_nx[1]));
  LUT6 #(
    .INIT(64'hA0A0A0A0FBFFFFFF)) 
    \stat[1]_i_2 
       (.I0(Q[2]),
        .I1(\stat[1]_i_5_n_0 ),
        .I2(Q[3]),
        .I3(\stat[1]_i_6_n_0 ),
        .I4(ccmd[4]),
        .I5(Q[1]),
        .O(\stat[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \stat[1]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\sglc_i_reg[41]_2 ),
        .O(\stat[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1918)) 
    \stat[1]_i_5 
       (.I0(ccmd[0]),
        .I1(ccmd[1]),
        .I2(ccmd[3]),
        .I3(ccmd[2]),
        .O(\stat[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \stat[1]_i_6 
       (.I0(ccmd[2]),
        .I1(ccmd[3]),
        .O(\stat[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h757F555055505550)) 
    \stat[2]_i_1 
       (.I0(Q[3]),
        .I1(\stat_reg[2]_2 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\sglc_i_reg[41]_2 ),
        .O(stat_nx[2]));
  LUT4 #(
    .INIT(16'h5510)) 
    \stat[3]_i_1 
       (.I0(\stat_reg[0]_3 ),
        .I1(Q[0]),
        .I2(\stat[3]_i_2_n_0 ),
        .I3(\stat[3]_i_3_n_0 ),
        .O(stat_nx[3]));
  LUT5 #(
    .INIT(32'h00F40000)) 
    \stat[3]_i_2 
       (.I0(Q[3]),
        .I1(ccmd[4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\stat[3]_i_4_n_0 ),
        .O(\stat[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    \stat[3]_i_3 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\sglc_i_reg[41]_2 ),
        .I3(Q[1]),
        .I4(\stat_reg[1]_5 ),
        .O(\stat[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hABFEBFAA)) 
    \stat[3]_i_4 
       (.I0(Q[1]),
        .I1(ccmd[0]),
        .I2(ccmd[1]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .O(\stat[3]_i_4_n_0 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \stat_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[3]),
        .Q(Q[3]),
        .R(SR));
endmodule

module sfpu_norm
   (\sglc_f_reg[29]_0 ,
    Q,
    \sglc_f_reg[30]_0 ,
    \sglc_e_reg[6]_0 ,
    \sglc_e_reg[5]_0 ,
    \sglc_e_reg[3]_0 ,
    cbus,
    \sglc_f_reg[10]_0 ,
    \sglc_i_reg[44]_0 ,
    \sglc_e_reg[7]_0 ,
    \sglc_i_reg[42]_0 ,
    \sglc_i_reg[44]_1 ,
    \sglc_e_reg[7]_1 ,
    \sglc_f_reg[12]_0 ,
    \sglc_f_reg[11]_0 ,
    \sglc_f_reg[9]_0 ,
    fnrm_norm_fin,
    \sglc_i_reg[42]_1 ,
    \sglc_e_reg[8]_0 ,
    \sglc_e_reg[1]_0 ,
    \sglc_e_reg[0]_0 ,
    \sglc_i_reg[43]_0 ,
    \stat_reg[0] ,
    \sglc_f_reg[30]_1 ,
    \stat_reg[1] ,
    \sfpu_dsp_c[29] ,
    sglc_r_fmul,
    \sfpu_dsp_c[35] ,
    \sfpu_dsp_c[38] ,
    \sfpu_dsp_c[46] ,
    \sglc_f_reg[28]_0 ,
    \sglc_f_reg[30]_2 ,
    \stat_reg[3] ,
    \sglc_f_reg[0]_0 ,
    \sglc_i_reg[41]_0 ,
    \sglc_f_reg[1]_0 ,
    \sglc_f_reg[2]_0 ,
    \sglc_f_reg[3]_0 ,
    \sglc_f_reg[4]_0 ,
    \sglc_f_reg[5]_0 ,
    \sglc_f_reg[10]_1 ,
    \sglc_f_reg[10]_2 ,
    \sglc_f_reg[11]_1 ,
    \sglc_f_reg[11]_2 ,
    \sglc_f_reg[27]_0 ,
    \sglc_f_reg[1]_1 ,
    \sglc_f_reg[1]_2 ,
    \sglc_f_reg[28]_1 ,
    \sglc_f_reg[6]_0 ,
    \sglc_f_reg[7]_0 ,
    \sglc_f_reg[8]_0 ,
    \sglc_f_reg[9]_1 ,
    \sglc_f_reg[12]_1 ,
    \sglc_f_reg[13]_0 ,
    \sglc_f_reg[14]_0 ,
    \sglc_f_reg[15]_0 ,
    \sglc_f_reg[16]_0 ,
    \sglc_f_reg[17]_0 ,
    \sglc_f_reg[18]_0 ,
    \sglc_f_reg[19]_0 ,
    \sglc_f_reg[20]_0 ,
    \sglc_f_reg[21]_0 ,
    \sglc_f_reg[22]_0 ,
    \sglc_f_reg[23]_0 ,
    \sglc_f_reg[24]_0 ,
    \sglc_f_reg[25]_0 ,
    \sglc_f_reg[26]_0 ,
    \sglc_f_reg[15]_1 ,
    \sglc_f_reg[16]_1 ,
    \cbus[29] ,
    \sglc_f_reg[29]_1 ,
    \cbus[29]_0 ,
    \cbus[26] ,
    \cbus[26]_0 ,
    \cbus[26]_1 ,
    \cbus[26]_2 ,
    \cbus[5] ,
    \cbus[5]_0 ,
    \cbus[5]_1 ,
    \cbus[26]_3 ,
    \sglc_i_reg[44]_2 ,
    p_5_in,
    fctl_ccmd_hlf,
    .cbus_0_sp_1(cbus_0_sn_1),
    \stat_reg[1]_0 ,
    sfpu_dsp_c,
    \cbus[0]_0 ,
    SR,
    E,
    D,
    clk,
    \sglc_i_reg[42]_2 ,
    p_22_in,
    \sglc_e_reg[7]_2 );
  output \sglc_f_reg[29]_0 ;
  output [21:0]Q;
  output \sglc_f_reg[30]_0 ;
  output \sglc_e_reg[6]_0 ;
  output [3:0]\sglc_e_reg[5]_0 ;
  output \sglc_e_reg[3]_0 ;
  output [0:0]cbus;
  output \sglc_f_reg[10]_0 ;
  output \sglc_i_reg[44]_0 ;
  output \sglc_e_reg[7]_0 ;
  output \sglc_i_reg[42]_0 ;
  output [2:0]\sglc_i_reg[44]_1 ;
  output \sglc_e_reg[7]_1 ;
  output \sglc_f_reg[12]_0 ;
  output \sglc_f_reg[11]_0 ;
  output \sglc_f_reg[9]_0 ;
  output fnrm_norm_fin;
  output \sglc_i_reg[42]_1 ;
  output \sglc_e_reg[8]_0 ;
  output \sglc_e_reg[1]_0 ;
  output \sglc_e_reg[0]_0 ;
  output \sglc_i_reg[43]_0 ;
  output \stat_reg[0] ;
  output \sglc_f_reg[30]_1 ;
  output \stat_reg[1] ;
  output \sfpu_dsp_c[29] ;
  output [24:0]sglc_r_fmul;
  output \sfpu_dsp_c[35] ;
  output \sfpu_dsp_c[38] ;
  output \sfpu_dsp_c[46] ;
  output \sglc_f_reg[28]_0 ;
  output \sglc_f_reg[30]_2 ;
  output \stat_reg[3] ;
  input \sglc_f_reg[0]_0 ;
  input \sglc_i_reg[41]_0 ;
  input \sglc_f_reg[1]_0 ;
  input \sglc_f_reg[2]_0 ;
  input \sglc_f_reg[3]_0 ;
  input \sglc_f_reg[4]_0 ;
  input \sglc_f_reg[5]_0 ;
  input \sglc_f_reg[10]_1 ;
  input \sglc_f_reg[10]_2 ;
  input \sglc_f_reg[11]_1 ;
  input \sglc_f_reg[11]_2 ;
  input \sglc_f_reg[27]_0 ;
  input \sglc_f_reg[1]_1 ;
  input \sglc_f_reg[1]_2 ;
  input \sglc_f_reg[28]_1 ;
  input \sglc_f_reg[6]_0 ;
  input \sglc_f_reg[7]_0 ;
  input \sglc_f_reg[8]_0 ;
  input \sglc_f_reg[9]_1 ;
  input \sglc_f_reg[12]_1 ;
  input \sglc_f_reg[13]_0 ;
  input \sglc_f_reg[14]_0 ;
  input \sglc_f_reg[15]_0 ;
  input \sglc_f_reg[16]_0 ;
  input \sglc_f_reg[17]_0 ;
  input \sglc_f_reg[18]_0 ;
  input \sglc_f_reg[19]_0 ;
  input \sglc_f_reg[20]_0 ;
  input \sglc_f_reg[21]_0 ;
  input \sglc_f_reg[22]_0 ;
  input \sglc_f_reg[23]_0 ;
  input \sglc_f_reg[24]_0 ;
  input \sglc_f_reg[25]_0 ;
  input \sglc_f_reg[26]_0 ;
  input \sglc_f_reg[15]_1 ;
  input \sglc_f_reg[16]_1 ;
  input \cbus[29] ;
  input \sglc_f_reg[29]_1 ;
  input \cbus[29]_0 ;
  input \cbus[26] ;
  input \cbus[26]_0 ;
  input \cbus[26]_1 ;
  input \cbus[26]_2 ;
  input \cbus[5] ;
  input [0:0]\cbus[5]_0 ;
  input \cbus[5]_1 ;
  input \cbus[26]_3 ;
  input \sglc_i_reg[44]_2 ;
  input p_5_in;
  input fctl_ccmd_hlf;
  input [3:0]\stat_reg[1]_0 ;
  input [24:0]sfpu_dsp_c;
  input \cbus[0]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input [1:0]D;
  input clk;
  input [1:0]\sglc_i_reg[42]_2 ;
  input [7:0]p_22_in;
  input \sglc_e_reg[7]_2 ;
  input cbus_0_sn_1;

  wire \<const0> ;
  wire [1:0]D;
  wire [0:0]E;
  wire [21:0]Q;
  wire [0:0]SR;
  wire [0:0]cbus;
  wire \cbus[0]_0 ;
  wire \cbus[26] ;
  wire \cbus[26]_0 ;
  wire \cbus[26]_1 ;
  wire \cbus[26]_2 ;
  wire \cbus[26]_3 ;
  wire \cbus[26]_INST_0_i_2_n_0 ;
  wire \cbus[26]_INST_0_i_4_n_0 ;
  wire \cbus[26]_INST_0_i_5_n_0 ;
  wire \cbus[29] ;
  wire \cbus[29]_0 ;
  wire \cbus[30]_INST_0_i_33_n_0 ;
  wire \cbus[5] ;
  wire [0:0]\cbus[5]_0 ;
  wire \cbus[5]_1 ;
  wire cbus_0_sn_1;
  wire clk;
  wire crdy_INST_0_i_3_n_0;
  wire crdy_INST_0_i_4_n_0;
  wire crdy_INST_0_i_5_n_0;
  wire crdy_INST_0_i_6_n_0;
  wire fctl_ccmd_hlf;
  wire fnrm_norm_fin;
  wire [5:4]p_0_in;
  wire [2:0]p_1_in;
  wire [7:0]p_22_in;
  wire p_5_in;
  wire [24:0]sfpu_dsp_c;
  wire \sfpu_dsp_c[29] ;
  wire \sfpu_dsp_c[35] ;
  wire \sfpu_dsp_c[38] ;
  wire \sfpu_dsp_c[46] ;
  wire \sglc_e[3]_i_10_n_0 ;
  wire \sglc_e[3]_i_11_n_0 ;
  wire \sglc_e[3]_i_12_n_0 ;
  wire \sglc_e[3]_i_14_n_0 ;
  wire \sglc_e[3]_i_15_n_0 ;
  wire \sglc_e[3]_i_2_n_0 ;
  wire \sglc_e[3]_i_3_n_0 ;
  wire \sglc_e[3]_i_4_n_0 ;
  wire \sglc_e[3]_i_5_n_0 ;
  wire \sglc_e[3]_i_6_n_0 ;
  wire \sglc_e[3]_i_7_n_0 ;
  wire \sglc_e[3]_i_8_n_0 ;
  wire \sglc_e[3]_i_9_n_0 ;
  wire \sglc_e[7]_i_2_n_0 ;
  wire \sglc_e[7]_i_3_n_0 ;
  wire \sglc_e[7]_i_4_n_0 ;
  wire \sglc_e[7]_i_5_n_0 ;
  wire \sglc_e[7]_i_6_n_0 ;
  wire \sglc_e[7]_i_7_n_0 ;
  wire \sglc_e[7]_i_8_n_0 ;
  wire \sglc_e[7]_i_9_n_0 ;
  wire \sglc_e[8]_i_2_n_0 ;
  wire \sglc_e_reg[0]_0 ;
  wire \sglc_e_reg[1]_0 ;
  wire \sglc_e_reg[3]_0 ;
  wire \sglc_e_reg[3]_i_1_n_0 ;
  wire \sglc_e_reg[3]_i_1_n_1 ;
  wire \sglc_e_reg[3]_i_1_n_2 ;
  wire \sglc_e_reg[3]_i_1_n_3 ;
  wire \sglc_e_reg[3]_i_1_n_4 ;
  wire \sglc_e_reg[3]_i_1_n_5 ;
  wire \sglc_e_reg[3]_i_1_n_6 ;
  wire \sglc_e_reg[3]_i_1_n_7 ;
  wire [3:0]\sglc_e_reg[5]_0 ;
  wire \sglc_e_reg[6]_0 ;
  wire \sglc_e_reg[7]_0 ;
  wire \sglc_e_reg[7]_1 ;
  wire \sglc_e_reg[7]_2 ;
  wire \sglc_e_reg[7]_i_1_n_0 ;
  wire \sglc_e_reg[7]_i_1_n_1 ;
  wire \sglc_e_reg[7]_i_1_n_2 ;
  wire \sglc_e_reg[7]_i_1_n_3 ;
  wire \sglc_e_reg[7]_i_1_n_4 ;
  wire \sglc_e_reg[7]_i_1_n_5 ;
  wire \sglc_e_reg[7]_i_1_n_6 ;
  wire \sglc_e_reg[7]_i_1_n_7 ;
  wire \sglc_e_reg[8]_0 ;
  wire \sglc_e_reg[8]_i_1_n_7 ;
  wire \sglc_e_reg_n_0_[2] ;
  wire \sglc_e_reg_n_0_[3] ;
  wire \sglc_e_reg_n_0_[6] ;
  wire \sglc_e_reg_n_0_[7] ;
  wire \sglc_e_reg_n_0_[8] ;
  wire \sglc_f[0]_i_1_n_0 ;
  wire \sglc_f[0]_i_2_n_0 ;
  wire \sglc_f[10]_i_1_n_0 ;
  wire \sglc_f[10]_i_2_n_0 ;
  wire \sglc_f[10]_i_4_n_0 ;
  wire \sglc_f[10]_i_5_n_0 ;
  wire \sglc_f[10]_i_6_n_0 ;
  wire \sglc_f[10]_i_7_n_0 ;
  wire \sglc_f[10]_i_8_n_0 ;
  wire \sglc_f[11]_i_1_n_0 ;
  wire \sglc_f[11]_i_2_n_0 ;
  wire \sglc_f[11]_i_3_n_0 ;
  wire \sglc_f[11]_i_5_n_0 ;
  wire \sglc_f[11]_i_6_n_0 ;
  wire \sglc_f[11]_i_7_n_0 ;
  wire \sglc_f[11]_i_8_n_0 ;
  wire \sglc_f[11]_i_9_n_0 ;
  wire \sglc_f[12]_i_1_n_0 ;
  wire \sglc_f[12]_i_2_n_0 ;
  wire \sglc_f[12]_i_3_n_0 ;
  wire \sglc_f[12]_i_4_n_0 ;
  wire \sglc_f[12]_i_5_n_0 ;
  wire \sglc_f[12]_i_6_n_0 ;
  wire \sglc_f[13]_i_1_n_0 ;
  wire \sglc_f[13]_i_2_n_0 ;
  wire \sglc_f[13]_i_3_n_0 ;
  wire \sglc_f[13]_i_4_n_0 ;
  wire \sglc_f[13]_i_5_n_0 ;
  wire \sglc_f[13]_i_6_n_0 ;
  wire \sglc_f[13]_i_7_n_0 ;
  wire \sglc_f[13]_i_8_n_0 ;
  wire \sglc_f[14]_i_1_n_0 ;
  wire \sglc_f[14]_i_2_n_0 ;
  wire \sglc_f[14]_i_3_n_0 ;
  wire \sglc_f[14]_i_4_n_0 ;
  wire \sglc_f[14]_i_5_n_0 ;
  wire \sglc_f[14]_i_7_n_0 ;
  wire \sglc_f[14]_i_8_n_0 ;
  wire \sglc_f[14]_i_9_n_0 ;
  wire \sglc_f[15]_i_10_n_0 ;
  wire \sglc_f[15]_i_12_n_0 ;
  wire \sglc_f[15]_i_1_n_0 ;
  wire \sglc_f[15]_i_2_n_0 ;
  wire \sglc_f[15]_i_3_n_0 ;
  wire \sglc_f[15]_i_4_n_0 ;
  wire \sglc_f[15]_i_5_n_0 ;
  wire \sglc_f[15]_i_7_n_0 ;
  wire \sglc_f[15]_i_8_n_0 ;
  wire \sglc_f[15]_i_9_n_0 ;
  wire \sglc_f[16]_i_1_n_0 ;
  wire \sglc_f[16]_i_2_n_0 ;
  wire \sglc_f[16]_i_3_n_0 ;
  wire \sglc_f[16]_i_4_n_0 ;
  wire \sglc_f[16]_i_5_n_0 ;
  wire \sglc_f[16]_i_6_n_0 ;
  wire \sglc_f[16]_i_7_n_0 ;
  wire \sglc_f[17]_i_1_n_0 ;
  wire \sglc_f[17]_i_2_n_0 ;
  wire \sglc_f[17]_i_3_n_0 ;
  wire \sglc_f[17]_i_4_n_0 ;
  wire \sglc_f[17]_i_5_n_0 ;
  wire \sglc_f[17]_i_6_n_0 ;
  wire \sglc_f[17]_i_7_n_0 ;
  wire \sglc_f[18]_i_1_n_0 ;
  wire \sglc_f[18]_i_2_n_0 ;
  wire \sglc_f[18]_i_3_n_0 ;
  wire \sglc_f[18]_i_4_n_0 ;
  wire \sglc_f[18]_i_5_n_0 ;
  wire \sglc_f[18]_i_6_n_0 ;
  wire \sglc_f[18]_i_7_n_0 ;
  wire \sglc_f[19]_i_1_n_0 ;
  wire \sglc_f[19]_i_2_n_0 ;
  wire \sglc_f[19]_i_3_n_0 ;
  wire \sglc_f[19]_i_4_n_0 ;
  wire \sglc_f[19]_i_5_n_0 ;
  wire \sglc_f[19]_i_6_n_0 ;
  wire \sglc_f[19]_i_7_n_0 ;
  wire \sglc_f[1]_i_1_n_0 ;
  wire \sglc_f[1]_i_2_n_0 ;
  wire \sglc_f[1]_i_3_n_0 ;
  wire \sglc_f[1]_i_4_n_0 ;
  wire \sglc_f[20]_i_1_n_0 ;
  wire \sglc_f[20]_i_2_n_0 ;
  wire \sglc_f[20]_i_3_n_0 ;
  wire \sglc_f[20]_i_4_n_0 ;
  wire \sglc_f[20]_i_5_n_0 ;
  wire \sglc_f[20]_i_6_n_0 ;
  wire \sglc_f[20]_i_7_n_0 ;
  wire \sglc_f[21]_i_1_n_0 ;
  wire \sglc_f[21]_i_2_n_0 ;
  wire \sglc_f[21]_i_3_n_0 ;
  wire \sglc_f[21]_i_4_n_0 ;
  wire \sglc_f[21]_i_5_n_0 ;
  wire \sglc_f[21]_i_6_n_0 ;
  wire \sglc_f[21]_i_7_n_0 ;
  wire \sglc_f[22]_i_1_n_0 ;
  wire \sglc_f[22]_i_2_n_0 ;
  wire \sglc_f[22]_i_3_n_0 ;
  wire \sglc_f[22]_i_4_n_0 ;
  wire \sglc_f[22]_i_5_n_0 ;
  wire \sglc_f[22]_i_6_n_0 ;
  wire \sglc_f[22]_i_7_n_0 ;
  wire \sglc_f[23]_i_1_n_0 ;
  wire \sglc_f[23]_i_2_n_0 ;
  wire \sglc_f[23]_i_3_n_0 ;
  wire \sglc_f[23]_i_4_n_0 ;
  wire \sglc_f[23]_i_5_n_0 ;
  wire \sglc_f[23]_i_6_n_0 ;
  wire \sglc_f[23]_i_7_n_0 ;
  wire \sglc_f[24]_i_1_n_0 ;
  wire \sglc_f[24]_i_2_n_0 ;
  wire \sglc_f[24]_i_3_n_0 ;
  wire \sglc_f[24]_i_4_n_0 ;
  wire \sglc_f[24]_i_5_n_0 ;
  wire \sglc_f[24]_i_6_n_0 ;
  wire \sglc_f[24]_i_7_n_0 ;
  wire \sglc_f[25]_i_1_n_0 ;
  wire \sglc_f[25]_i_2_n_0 ;
  wire \sglc_f[25]_i_3_n_0 ;
  wire \sglc_f[25]_i_4_n_0 ;
  wire \sglc_f[25]_i_5_n_0 ;
  wire \sglc_f[25]_i_6_n_0 ;
  wire \sglc_f[25]_i_7_n_0 ;
  wire \sglc_f[26]_i_10_n_0 ;
  wire \sglc_f[26]_i_11_n_0 ;
  wire \sglc_f[26]_i_12_n_0 ;
  wire \sglc_f[26]_i_1_n_0 ;
  wire \sglc_f[26]_i_2_n_0 ;
  wire \sglc_f[26]_i_3_n_0 ;
  wire \sglc_f[26]_i_4_n_0 ;
  wire \sglc_f[26]_i_5_n_0 ;
  wire \sglc_f[26]_i_6_n_0 ;
  wire \sglc_f[26]_i_7_n_0 ;
  wire \sglc_f[26]_i_8_n_0 ;
  wire \sglc_f[27]_i_1_n_0 ;
  wire \sglc_f[27]_i_2_n_0 ;
  wire \sglc_f[27]_i_3_n_0 ;
  wire \sglc_f[27]_i_4_n_0 ;
  wire \sglc_f[27]_i_5_n_0 ;
  wire \sglc_f[27]_i_7_n_0 ;
  wire \sglc_f[27]_i_8_n_0 ;
  wire \sglc_f[27]_i_9_n_0 ;
  wire \sglc_f[28]_i_10_n_0 ;
  wire \sglc_f[28]_i_11_n_0 ;
  wire \sglc_f[28]_i_12_n_0 ;
  wire \sglc_f[28]_i_13_n_0 ;
  wire \sglc_f[28]_i_14_n_0 ;
  wire \sglc_f[28]_i_16_n_0 ;
  wire \sglc_f[28]_i_1_n_0 ;
  wire \sglc_f[28]_i_2_n_0 ;
  wire \sglc_f[28]_i_4_n_0 ;
  wire \sglc_f[28]_i_5_n_0 ;
  wire \sglc_f[28]_i_6_n_0 ;
  wire \sglc_f[28]_i_7_n_0 ;
  wire \sglc_f[28]_i_8_n_0 ;
  wire \sglc_f[28]_i_9_n_0 ;
  wire \sglc_f[29]_i_1_n_0 ;
  wire \sglc_f[2]_i_1_n_0 ;
  wire \sglc_f[2]_i_2_n_0 ;
  wire \sglc_f[2]_i_3_n_0 ;
  wire \sglc_f[2]_i_4_n_0 ;
  wire \sglc_f[2]_i_5_n_0 ;
  wire \sglc_f[3]_i_1_n_0 ;
  wire \sglc_f[3]_i_2_n_0 ;
  wire \sglc_f[3]_i_3_n_0 ;
  wire \sglc_f[3]_i_4_n_0 ;
  wire \sglc_f[3]_i_5_n_0 ;
  wire \sglc_f[4]_i_1_n_0 ;
  wire \sglc_f[4]_i_3_n_0 ;
  wire \sglc_f[4]_i_4_n_0 ;
  wire \sglc_f[4]_i_5_n_0 ;
  wire \sglc_f[4]_i_6_n_0 ;
  wire \sglc_f[4]_i_7_n_0 ;
  wire \sglc_f[5]_i_1_n_0 ;
  wire \sglc_f[5]_i_3_n_0 ;
  wire \sglc_f[5]_i_4_n_0 ;
  wire \sglc_f[5]_i_5_n_0 ;
  wire \sglc_f[5]_i_6_n_0 ;
  wire \sglc_f[5]_i_7_n_0 ;
  wire \sglc_f[6]_i_1_n_0 ;
  wire \sglc_f[6]_i_2_n_0 ;
  wire \sglc_f[6]_i_3_n_0 ;
  wire \sglc_f[6]_i_4_n_0 ;
  wire \sglc_f[7]_i_1_n_0 ;
  wire \sglc_f[7]_i_2_n_0 ;
  wire \sglc_f[7]_i_3_n_0 ;
  wire \sglc_f[7]_i_4_n_0 ;
  wire \sglc_f[7]_i_5_n_0 ;
  wire \sglc_f[8]_i_1_n_0 ;
  wire \sglc_f[8]_i_2_n_0 ;
  wire \sglc_f[8]_i_3_n_0 ;
  wire \sglc_f[8]_i_4_n_0 ;
  wire \sglc_f[9]_i_1_n_0 ;
  wire \sglc_f[9]_i_2_n_0 ;
  wire \sglc_f[9]_i_3_n_0 ;
  wire \sglc_f[9]_i_4_n_0 ;
  wire \sglc_f[9]_i_5_n_0 ;
  wire \sglc_f[9]_i_6_n_0 ;
  wire \sglc_f_reg[0]_0 ;
  wire \sglc_f_reg[10]_0 ;
  wire \sglc_f_reg[10]_1 ;
  wire \sglc_f_reg[10]_2 ;
  wire \sglc_f_reg[11]_0 ;
  wire \sglc_f_reg[11]_1 ;
  wire \sglc_f_reg[11]_2 ;
  wire \sglc_f_reg[12]_0 ;
  wire \sglc_f_reg[12]_1 ;
  wire \sglc_f_reg[13]_0 ;
  wire \sglc_f_reg[14]_0 ;
  wire \sglc_f_reg[15]_0 ;
  wire \sglc_f_reg[15]_1 ;
  wire \sglc_f_reg[16]_0 ;
  wire \sglc_f_reg[16]_1 ;
  wire \sglc_f_reg[17]_0 ;
  wire \sglc_f_reg[18]_0 ;
  wire \sglc_f_reg[19]_0 ;
  wire \sglc_f_reg[1]_0 ;
  wire \sglc_f_reg[1]_1 ;
  wire \sglc_f_reg[1]_2 ;
  wire \sglc_f_reg[20]_0 ;
  wire \sglc_f_reg[21]_0 ;
  wire \sglc_f_reg[22]_0 ;
  wire \sglc_f_reg[23]_0 ;
  wire \sglc_f_reg[24]_0 ;
  wire \sglc_f_reg[25]_0 ;
  wire \sglc_f_reg[26]_0 ;
  wire \sglc_f_reg[27]_0 ;
  wire \sglc_f_reg[28]_0 ;
  wire \sglc_f_reg[28]_1 ;
  wire \sglc_f_reg[29]_0 ;
  wire \sglc_f_reg[29]_1 ;
  wire \sglc_f_reg[2]_0 ;
  wire \sglc_f_reg[30]_0 ;
  wire \sglc_f_reg[30]_1 ;
  wire \sglc_f_reg[30]_2 ;
  wire \sglc_f_reg[3]_0 ;
  wire \sglc_f_reg[4]_0 ;
  wire \sglc_f_reg[5]_0 ;
  wire \sglc_f_reg[6]_0 ;
  wire \sglc_f_reg[7]_0 ;
  wire \sglc_f_reg[8]_0 ;
  wire \sglc_f_reg[9]_0 ;
  wire \sglc_f_reg[9]_1 ;
  wire \sglc_f_reg_n_0_[0] ;
  wire \sglc_f_reg_n_0_[1] ;
  wire \sglc_f_reg_n_0_[2] ;
  wire \sglc_f_reg_n_0_[3] ;
  wire \sglc_f_reg_n_0_[4] ;
  wire \sglc_i[42]_i_10_n_0 ;
  wire \sglc_i[42]_i_7_n_0 ;
  wire \sglc_i[42]_i_8_n_0 ;
  wire \sglc_i[42]_i_9_n_0 ;
  wire \sglc_i_reg[41]_0 ;
  wire \sglc_i_reg[42]_0 ;
  wire \sglc_i_reg[42]_1 ;
  wire [1:0]\sglc_i_reg[42]_2 ;
  wire \sglc_i_reg[43]_0 ;
  wire \sglc_i_reg[44]_0 ;
  wire [2:0]\sglc_i_reg[44]_1 ;
  wire \sglc_i_reg[44]_2 ;
  wire sglc_inf;
  wire [24:0]sglc_r_fmul;
  wire \stat_reg[0] ;
  wire \stat_reg[1] ;
  wire [3:0]\stat_reg[1]_0 ;
  wire \stat_reg[3] ;

  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[0]_INST_0_i_6 
       (.I0(sfpu_dsp_c[1]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[0]),
        .O(sglc_r_fmul[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[10]_INST_0_i_5 
       (.I0(sfpu_dsp_c[6]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[5]),
        .O(sglc_r_fmul[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[11]_INST_0_i_8 
       (.I0(sfpu_dsp_c[7]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[6]),
        .O(sglc_r_fmul[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[12]_INST_0_i_4 
       (.I0(sfpu_dsp_c[8]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[7]),
        .O(sglc_r_fmul[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[13]_INST_0_i_5 
       (.I0(sfpu_dsp_c[9]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[8]),
        .O(sglc_r_fmul[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[14]_INST_0_i_6 
       (.I0(sfpu_dsp_c[10]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[9]),
        .O(sglc_r_fmul[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[15]_INST_0_i_13 
       (.I0(sfpu_dsp_c[11]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[10]),
        .O(sglc_r_fmul[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[16]_INST_0_i_5 
       (.I0(sfpu_dsp_c[12]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[11]),
        .O(sglc_r_fmul[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[17]_INST_0_i_10 
       (.I0(sfpu_dsp_c[13]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[12]),
        .O(sglc_r_fmul[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[17]_INST_0_i_12 
       (.I0(sfpu_dsp_c[18]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[17]),
        .O(sglc_r_fmul[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[18]_INST_0_i_10 
       (.I0(sfpu_dsp_c[19]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[18]),
        .O(sglc_r_fmul[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[18]_INST_0_i_11 
       (.I0(sfpu_dsp_c[14]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[13]),
        .O(sglc_r_fmul[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[19]_INST_0_i_10 
       (.I0(sfpu_dsp_c[15]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[14]),
        .O(sglc_r_fmul[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[19]_INST_0_i_14 
       (.I0(sfpu_dsp_c[20]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[19]),
        .O(sglc_r_fmul[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[1]_INST_0_i_7 
       (.I0(sfpu_dsp_c[2]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[1]),
        .O(sglc_r_fmul[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[20]_INST_0_i_11 
       (.I0(sfpu_dsp_c[21]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[20]),
        .O(sglc_r_fmul[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[20]_INST_0_i_12 
       (.I0(sfpu_dsp_c[16]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[15]),
        .O(sglc_r_fmul[16]));
  LUT3 #(
    .INIT(8'h45)) 
    \cbus[21]_INST_0_i_11 
       (.I0(sglc_inf),
        .I1(\sglc_e_reg_n_0_[8] ),
        .I2(\sglc_e_reg_n_0_[7] ),
        .O(\sglc_i_reg[43]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[21]_INST_0_i_16 
       (.I0(sfpu_dsp_c[22]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[21]),
        .O(sglc_r_fmul[22]));
  LUT6 #(
    .INIT(64'hBA000000FF0000FF)) 
    \cbus[21]_INST_0_i_17 
       (.I0(\sglc_f_reg[30]_1 ),
        .I1(crdy_INST_0_i_4_n_0),
        .I2(crdy_INST_0_i_3_n_0),
        .I3(\stat_reg[1]_0 [0]),
        .I4(\stat_reg[1]_0 [1]),
        .I5(\stat_reg[1]_0 [2]),
        .O(\stat_reg[0] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[21]_INST_0_i_18 
       (.I0(sfpu_dsp_c[17]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[16]),
        .O(sglc_r_fmul[17]));
  LUT6 #(
    .INIT(64'h5555545555555555)) 
    \cbus[21]_INST_0_i_2 
       (.I0(\cbus[0]_0 ),
        .I1(\sglc_e_reg[8]_0 ),
        .I2(\sglc_i_reg[44]_1 [2]),
        .I3(cbus_0_sn_1),
        .I4(\sglc_i_reg[44]_1 [1]),
        .I5(\sglc_i_reg[43]_0 ),
        .O(\sglc_i_reg[44]_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \cbus[21]_INST_0_i_9 
       (.I0(\sglc_e_reg_n_0_[8] ),
        .I1(\cbus[30]_INST_0_i_33_n_0 ),
        .I2(\sglc_e_reg_n_0_[7] ),
        .O(\sglc_e_reg[8]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[22]_INST_0_i_9 
       (.I0(sfpu_dsp_c[23]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[22]),
        .O(sglc_r_fmul[23]));
  LUT5 #(
    .INIT(32'h40404004)) 
    \cbus[25]_INST_0_i_2 
       (.I0(\sglc_i_reg[44]_1 [1]),
        .I1(fctl_ccmd_hlf),
        .I2(\sglc_e_reg_n_0_[2] ),
        .I3(\sglc_e_reg[5]_0 [0]),
        .I4(\sglc_e_reg[5]_0 [1]),
        .O(\sglc_i_reg[42]_1 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \cbus[25]_INST_0_i_4 
       (.I0(\sglc_e_reg[5]_0 [1]),
        .I1(\sglc_e_reg[5]_0 [0]),
        .I2(\sglc_e_reg_n_0_[2] ),
        .O(\sglc_e_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \cbus[26]_INST_0 
       (.I0(\cbus[26] ),
        .I1(\cbus[26]_0 ),
        .I2(\cbus[26]_INST_0_i_2_n_0 ),
        .I3(\cbus[26]_1 ),
        .I4(\cbus[26]_2 ),
        .I5(\cbus[26]_INST_0_i_4_n_0 ),
        .O(cbus));
  LUT6 #(
    .INIT(64'h4040404040404004)) 
    \cbus[26]_INST_0_i_2 
       (.I0(\sglc_i_reg[44]_1 [1]),
        .I1(fctl_ccmd_hlf),
        .I2(\sglc_e_reg_n_0_[3] ),
        .I3(\sglc_e_reg[5]_0 [0]),
        .I4(\sglc_e_reg[5]_0 [1]),
        .I5(\sglc_e_reg_n_0_[2] ),
        .O(\cbus[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44F4F444)) 
    \cbus[26]_INST_0_i_4 
       (.I0(\cbus[29] ),
        .I1(\sglc_f_reg[26]_0 ),
        .I2(\sglc_e_reg[7]_0 ),
        .I3(\sglc_e_reg_n_0_[3] ),
        .I4(\cbus[26]_INST_0_i_5_n_0 ),
        .I5(\cbus[26]_3 ),
        .O(\cbus[26]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cbus[26]_INST_0_i_5 
       (.I0(\sglc_e_reg_n_0_[2] ),
        .I1(\sglc_e_reg[5]_0 [1]),
        .I2(\sglc_e_reg[5]_0 [0]),
        .O(\cbus[26]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cbus[27]_INST_0_i_6 
       (.I0(\sglc_e_reg[5]_0 [0]),
        .I1(\sglc_e_reg[5]_0 [1]),
        .I2(\sglc_e_reg_n_0_[2] ),
        .I3(\sglc_e_reg_n_0_[3] ),
        .O(\sglc_e_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cbus[28]_INST_0_i_10 
       (.I0(sfpu_dsp_c[24]),
        .I1(sfpu_dsp_c[23]),
        .O(sglc_r_fmul[24]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cbus[29]_INST_0_i_12 
       (.I0(\sglc_e_reg_n_0_[3] ),
        .I1(\sglc_e_reg_n_0_[2] ),
        .I2(\sglc_e_reg[5]_0 [1]),
        .I3(\sglc_e_reg[5]_0 [0]),
        .I4(\sglc_e_reg[5]_0 [2]),
        .O(\sglc_e_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h1F11111F1F111F11)) 
    \cbus[29]_INST_0_i_4 
       (.I0(\cbus[29] ),
        .I1(\sglc_f_reg[29]_1 ),
        .I2(\cbus[29]_0 ),
        .I3(\sglc_e_reg_n_0_[6] ),
        .I4(\sglc_e_reg[5]_0 [3]),
        .I5(\sglc_e_reg[3]_0 ),
        .O(\sglc_e_reg[6]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[2]_INST_0_i_8 
       (.I0(sfpu_dsp_c[3]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[2]),
        .O(sglc_r_fmul[3]));
  LUT5 #(
    .INIT(32'hEEEE000F)) 
    \cbus[30]_INST_0_i_1 
       (.I0(\sglc_i_reg[44]_1 [1]),
        .I1(\sglc_e_reg[7]_1 ),
        .I2(\sglc_i_reg[44]_2 ),
        .I3(p_5_in),
        .I4(fctl_ccmd_hlf),
        .O(\sglc_i_reg[42]_0 ));
  LUT6 #(
    .INIT(64'hA222AAAAA222A222)) 
    \cbus[30]_INST_0_i_17 
       (.I0(\stat_reg[1]_0 [1]),
        .I1(\stat_reg[1]_0 [2]),
        .I2(p_1_in[0]),
        .I3(\sglc_f_reg[29]_0 ),
        .I4(crdy_INST_0_i_4_n_0),
        .I5(crdy_INST_0_i_3_n_0),
        .O(\stat_reg[1] ));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    \cbus[30]_INST_0_i_20 
       (.I0(\sglc_e_reg_n_0_[7] ),
        .I1(\cbus[30]_INST_0_i_33_n_0 ),
        .I2(\sglc_e_reg_n_0_[8] ),
        .I3(\sglc_i_reg[44]_1 [2]),
        .I4(cbus_0_sn_1),
        .I5(\sglc_i_reg[44]_1 [1]),
        .O(\sglc_e_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cbus[30]_INST_0_i_33 
       (.I0(\sglc_e_reg_n_0_[2] ),
        .I1(\sglc_e_reg[5]_0 [1]),
        .I2(\sglc_e_reg_n_0_[3] ),
        .I3(\sglc_e_reg[5]_0 [2]),
        .I4(\sglc_e_reg[5]_0 [3]),
        .I5(\sglc_e_reg_n_0_[6] ),
        .O(\cbus[30]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hA9AA)) 
    \cbus[30]_INST_0_i_7 
       (.I0(\sglc_e_reg_n_0_[7] ),
        .I1(\sglc_e_reg[5]_0 [3]),
        .I2(\sglc_e_reg_n_0_[6] ),
        .I3(\sglc_e_reg[3]_0 ),
        .O(\sglc_e_reg[7]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[4]_INST_0_i_3 
       (.I0(p_0_in[4]),
        .I1(\sglc_i_reg[44]_0 ),
        .O(\sglc_f_reg[9]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cbus[4]_INST_0_i_8 
       (.I0(sfpu_dsp_c[24]),
        .I1(sfpu_dsp_c[0]),
        .O(sglc_r_fmul[0]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \cbus[5]_INST_0_i_1 
       (.I0(\sglc_i_reg[44]_0 ),
        .I1(p_0_in[5]),
        .I2(\cbus[5] ),
        .I3(\cbus[29] ),
        .I4(\cbus[5]_0 ),
        .I5(\cbus[5]_1 ),
        .O(\sglc_f_reg[10]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[6]_INST_0_i_3 
       (.I0(Q[4]),
        .I1(\sglc_i_reg[44]_0 ),
        .O(\sglc_f_reg[11]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[7]_INST_0_i_4 
       (.I0(Q[5]),
        .I1(\sglc_i_reg[44]_0 ),
        .O(\sglc_f_reg[12]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[8]_INST_0_i_4 
       (.I0(sfpu_dsp_c[4]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[3]),
        .O(sglc_r_fmul[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[9]_INST_0_i_5 
       (.I0(sfpu_dsp_c[5]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[4]),
        .O(sglc_r_fmul[5]));
  LUT5 #(
    .INIT(32'hF222FFFF)) 
    crdy_INST_0_i_2
       (.I0(crdy_INST_0_i_3_n_0),
        .I1(crdy_INST_0_i_4_n_0),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(p_1_in[0]),
        .I4(\stat_reg[1]_0 [2]),
        .O(\sglc_f_reg[28]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    crdy_INST_0_i_3
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(\sglc_f[26]_i_8_n_0 ),
        .I4(\sglc_f[15]_i_9_n_0 ),
        .I5(Q[9]),
        .O(crdy_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    crdy_INST_0_i_4
       (.I0(crdy_INST_0_i_5_n_0),
        .I1(crdy_INST_0_i_6_n_0),
        .I2(Q[4]),
        .I3(\sglc_f_reg_n_0_[1] ),
        .I4(p_0_in[4]),
        .O(crdy_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    crdy_INST_0_i_5
       (.I0(Q[2]),
        .I1(\sglc_f_reg_n_0_[4] ),
        .I2(Q[0]),
        .I3(\sglc_f_reg_n_0_[0] ),
        .I4(p_0_in[5]),
        .I5(Q[5]),
        .O(crdy_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    crdy_INST_0_i_6
       (.I0(\sglc_f_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(\sglc_f_reg_n_0_[2] ),
        .I3(Q[3]),
        .O(crdy_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h0002FFFF00020002)) 
    crdy_f_i_2
       (.I0(p_1_in[0]),
        .I1(p_1_in[1]),
        .I2(Q[21]),
        .I3(p_1_in[2]),
        .I4(crdy_INST_0_i_4_n_0),
        .I5(crdy_INST_0_i_3_n_0),
        .O(fnrm_norm_fin));
  LUT5 #(
    .INIT(32'h00000002)) 
    \sglc_e[3]_i_10 
       (.I0(\sglc_f[26]_i_8_n_0 ),
        .I1(Q[15]),
        .I2(Q[14]),
        .I3(Q[12]),
        .I4(Q[13]),
        .O(\sglc_e[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD55555555)) 
    \sglc_e[3]_i_11 
       (.I0(\sglc_f_reg[29]_0 ),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(Q[14]),
        .I4(Q[15]),
        .I5(\sglc_f[26]_i_8_n_0 ),
        .O(\sglc_e[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFFFFFEFEFF00)) 
    \sglc_e[3]_i_12 
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(\sglc_e[3]_i_15_n_0 ),
        .I3(\sglc_f[11]_i_3_n_0 ),
        .I4(\sglc_f[28]_i_14_n_0 ),
        .I5(\sglc_f[28]_i_9_n_0 ),
        .O(\sglc_e[3]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \sglc_e[3]_i_13 
       (.I0(p_1_in[2]),
        .I1(Q[21]),
        .I2(p_1_in[1]),
        .O(\sglc_f_reg[30]_2 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \sglc_e[3]_i_14 
       (.I0(p_1_in[2]),
        .I1(Q[21]),
        .I2(p_1_in[1]),
        .I3(Q[20]),
        .I4(p_1_in[0]),
        .O(\sglc_e[3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \sglc_e[3]_i_15 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .O(\sglc_e[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_e[3]_i_2 
       (.I0(\sglc_e_reg_n_0_[3] ),
        .I1(\sglc_i_reg[41]_0 ),
        .O(\sglc_e[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_e[3]_i_3 
       (.I0(\sglc_e_reg_n_0_[2] ),
        .I1(\sglc_i_reg[41]_0 ),
        .O(\sglc_e[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_e[3]_i_4 
       (.I0(\sglc_e_reg[5]_0 [1]),
        .I1(\sglc_i_reg[41]_0 ),
        .O(\sglc_e[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_e[3]_i_5 
       (.I0(\sglc_e_reg[5]_0 [0]),
        .I1(\sglc_i_reg[41]_0 ),
        .O(\sglc_e[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF9A009A)) 
    \sglc_e[3]_i_6 
       (.I0(\sglc_e_reg_n_0_[3] ),
        .I1(\sglc_e[3]_i_10_n_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(p_22_in[3]),
        .O(\sglc_e[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \sglc_e[3]_i_7 
       (.I0(\sglc_e_reg_n_0_[2] ),
        .I1(crdy_INST_0_i_3_n_0),
        .I2(\sglc_e[3]_i_11_n_0 ),
        .I3(\sglc_f[15]_i_8_n_0 ),
        .I4(\sglc_i_reg[41]_0 ),
        .I5(p_22_in[2]),
        .O(\sglc_e[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF9A009A)) 
    \sglc_e[3]_i_8 
       (.I0(\sglc_e_reg[5]_0 [1]),
        .I1(\sglc_e[3]_i_12_n_0 ),
        .I2(\sglc_f_reg[30]_2 ),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(p_22_in[1]),
        .O(\sglc_e[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA590000AA59)) 
    \sglc_e[3]_i_9 
       (.I0(\sglc_e_reg[5]_0 [0]),
        .I1(p_1_in[2]),
        .I2(Q[21]),
        .I3(\sglc_e[3]_i_14_n_0 ),
        .I4(\sglc_i_reg[41]_0 ),
        .I5(p_22_in[0]),
        .O(\sglc_e[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_e[7]_i_2 
       (.I0(\sglc_e_reg_n_0_[7] ),
        .I1(\sglc_i_reg[41]_0 ),
        .O(\sglc_e[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_e[7]_i_3 
       (.I0(\sglc_e_reg_n_0_[6] ),
        .I1(\sglc_i_reg[41]_0 ),
        .O(\sglc_e[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_e[7]_i_4 
       (.I0(\sglc_e_reg[5]_0 [3]),
        .I1(\sglc_i_reg[41]_0 ),
        .O(\sglc_e[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_e[7]_i_5 
       (.I0(\sglc_e_reg[5]_0 [2]),
        .I1(\sglc_i_reg[41]_0 ),
        .O(\sglc_e[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \sglc_e[7]_i_6 
       (.I0(\sglc_e_reg_n_0_[7] ),
        .I1(p_1_in[2]),
        .I2(Q[21]),
        .I3(p_1_in[1]),
        .I4(\sglc_i_reg[41]_0 ),
        .I5(p_22_in[6]),
        .O(\sglc_e[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA9FFFFAAA9)) 
    \sglc_e[7]_i_7 
       (.I0(\sglc_e_reg_n_0_[6] ),
        .I1(p_1_in[2]),
        .I2(Q[21]),
        .I3(p_1_in[1]),
        .I4(\sglc_i_reg[41]_0 ),
        .I5(\sglc_e_reg[7]_2 ),
        .O(\sglc_e[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \sglc_e[7]_i_8 
       (.I0(\sglc_e_reg[5]_0 [3]),
        .I1(p_1_in[2]),
        .I2(Q[21]),
        .I3(p_1_in[1]),
        .I4(\sglc_i_reg[41]_0 ),
        .I5(p_22_in[5]),
        .O(\sglc_e[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \sglc_e[7]_i_9 
       (.I0(\sglc_e_reg[5]_0 [2]),
        .I1(p_1_in[2]),
        .I2(Q[21]),
        .I3(p_1_in[1]),
        .I4(\sglc_i_reg[41]_0 ),
        .I5(p_22_in[4]),
        .O(\sglc_e[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \sglc_e[8]_i_2 
       (.I0(\sglc_e_reg_n_0_[8] ),
        .I1(p_1_in[2]),
        .I2(Q[21]),
        .I3(p_1_in[1]),
        .I4(\sglc_i_reg[41]_0 ),
        .I5(p_22_in[7]),
        .O(\sglc_e[8]_i_2_n_0 ));
  FDRE \sglc_e_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\sglc_e_reg[3]_i_1_n_7 ),
        .Q(\sglc_e_reg[5]_0 [0]),
        .R(SR));
  FDRE \sglc_e_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\sglc_e_reg[3]_i_1_n_6 ),
        .Q(\sglc_e_reg[5]_0 [1]),
        .R(SR));
  FDRE \sglc_e_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\sglc_e_reg[3]_i_1_n_5 ),
        .Q(\sglc_e_reg_n_0_[2] ),
        .R(SR));
  FDRE \sglc_e_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\sglc_e_reg[3]_i_1_n_4 ),
        .Q(\sglc_e_reg_n_0_[3] ),
        .R(SR));
  CARRY4 \sglc_e_reg[3]_i_1 
       (.CI(\<const0> ),
        .CO({\sglc_e_reg[3]_i_1_n_0 ,\sglc_e_reg[3]_i_1_n_1 ,\sglc_e_reg[3]_i_1_n_2 ,\sglc_e_reg[3]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\sglc_e[3]_i_2_n_0 ,\sglc_e[3]_i_3_n_0 ,\sglc_e[3]_i_4_n_0 ,\sglc_e[3]_i_5_n_0 }),
        .O({\sglc_e_reg[3]_i_1_n_4 ,\sglc_e_reg[3]_i_1_n_5 ,\sglc_e_reg[3]_i_1_n_6 ,\sglc_e_reg[3]_i_1_n_7 }),
        .S({\sglc_e[3]_i_6_n_0 ,\sglc_e[3]_i_7_n_0 ,\sglc_e[3]_i_8_n_0 ,\sglc_e[3]_i_9_n_0 }));
  FDRE \sglc_e_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\sglc_e_reg[7]_i_1_n_7 ),
        .Q(\sglc_e_reg[5]_0 [2]),
        .R(SR));
  FDRE \sglc_e_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\sglc_e_reg[7]_i_1_n_6 ),
        .Q(\sglc_e_reg[5]_0 [3]),
        .R(SR));
  FDRE \sglc_e_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\sglc_e_reg[7]_i_1_n_5 ),
        .Q(\sglc_e_reg_n_0_[6] ),
        .R(SR));
  FDRE \sglc_e_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\sglc_e_reg[7]_i_1_n_4 ),
        .Q(\sglc_e_reg_n_0_[7] ),
        .R(SR));
  CARRY4 \sglc_e_reg[7]_i_1 
       (.CI(\sglc_e_reg[3]_i_1_n_0 ),
        .CO({\sglc_e_reg[7]_i_1_n_0 ,\sglc_e_reg[7]_i_1_n_1 ,\sglc_e_reg[7]_i_1_n_2 ,\sglc_e_reg[7]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\sglc_e[7]_i_2_n_0 ,\sglc_e[7]_i_3_n_0 ,\sglc_e[7]_i_4_n_0 ,\sglc_e[7]_i_5_n_0 }),
        .O({\sglc_e_reg[7]_i_1_n_4 ,\sglc_e_reg[7]_i_1_n_5 ,\sglc_e_reg[7]_i_1_n_6 ,\sglc_e_reg[7]_i_1_n_7 }),
        .S({\sglc_e[7]_i_6_n_0 ,\sglc_e[7]_i_7_n_0 ,\sglc_e[7]_i_8_n_0 ,\sglc_e[7]_i_9_n_0 }));
  FDRE \sglc_e_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\sglc_e_reg[8]_i_1_n_7 ),
        .Q(\sglc_e_reg_n_0_[8] ),
        .R(SR));
  CARRY4 \sglc_e_reg[8]_i_1 
       (.CI(\sglc_e_reg[7]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\sglc_e_reg[8]_i_1_n_7 ),
        .S({\<const0> ,\<const0> ,\<const0> ,\sglc_e[8]_i_2_n_0 }));
  LUT6 #(
    .INIT(64'hDDCCDDFCDDCCDDCC)) 
    \sglc_f[0]_i_1 
       (.I0(\sglc_f_reg[0]_0 ),
        .I1(\sglc_f[0]_i_2_n_0 ),
        .I2(\sglc_f_reg_n_0_[3] ),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(\sglc_f_reg[29]_0 ),
        .I5(Q[21]),
        .O(\sglc_f[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000F000800000008)) 
    \sglc_f[0]_i_2 
       (.I0(p_1_in[1]),
        .I1(\sglc_f_reg_n_0_[1] ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(Q[21]),
        .I4(p_1_in[2]),
        .I5(\sglc_f_reg_n_0_[2] ),
        .O(\sglc_f[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF45FF45FF45)) 
    \sglc_f[10]_i_1 
       (.I0(\sglc_f[10]_i_2_n_0 ),
        .I1(\sglc_f_reg_n_0_[2] ),
        .I2(\sglc_f[11]_i_3_n_0 ),
        .I3(\sglc_f_reg[10]_1 ),
        .I4(\sglc_f_reg[10]_2 ),
        .I5(\sglc_i_reg[41]_0 ),
        .O(\sglc_f[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sglc_f[10]_i_2 
       (.I0(\sglc_f[10]_i_4_n_0 ),
        .I1(\sglc_f_reg[16]_1 ),
        .I2(\sglc_f[10]_i_5_n_0 ),
        .I3(\sglc_f[10]_i_6_n_0 ),
        .I4(\sglc_f[10]_i_7_n_0 ),
        .I5(\sglc_f[10]_i_8_n_0 ),
        .O(\sglc_f[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002020200)) 
    \sglc_f[10]_i_4 
       (.I0(\sglc_e[3]_i_14_n_0 ),
        .I1(Q[19]),
        .I2(Q[18]),
        .I3(Q[17]),
        .I4(Q[16]),
        .I5(Q[1]),
        .O(\sglc_f[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \sglc_f[10]_i_5 
       (.I0(p_0_in[4]),
        .I1(p_1_in[0]),
        .I2(Q[20]),
        .I3(p_1_in[1]),
        .I4(Q[21]),
        .I5(p_1_in[2]),
        .O(\sglc_f[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0004000400040000)) 
    \sglc_f[10]_i_6 
       (.I0(Q[3]),
        .I1(\sglc_f_reg[29]_0 ),
        .I2(Q[20]),
        .I3(p_1_in[0]),
        .I4(Q[18]),
        .I5(Q[19]),
        .O(\sglc_f[10]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sglc_f[10]_i_7 
       (.I0(\sglc_f_reg_n_0_[4] ),
        .I1(\sglc_f[7]_i_5_n_0 ),
        .O(\sglc_f[10]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \sglc_f[10]_i_8 
       (.I0(\sglc_f[28]_i_14_n_0 ),
        .I1(\sglc_f_reg_n_0_[0] ),
        .I2(\sglc_e[3]_i_10_n_0 ),
        .O(\sglc_f[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF45FF45FF45)) 
    \sglc_f[11]_i_1 
       (.I0(\sglc_f[11]_i_2_n_0 ),
        .I1(\sglc_f_reg_n_0_[3] ),
        .I2(\sglc_f[11]_i_3_n_0 ),
        .I3(\sglc_f_reg[11]_1 ),
        .I4(\sglc_f_reg[11]_2 ),
        .I5(\sglc_i_reg[41]_0 ),
        .O(\sglc_f[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sglc_f[11]_i_2 
       (.I0(\sglc_f[11]_i_5_n_0 ),
        .I1(\sglc_f_reg[16]_1 ),
        .I2(\sglc_f[11]_i_6_n_0 ),
        .I3(\sglc_f[11]_i_7_n_0 ),
        .I4(\sglc_f[11]_i_8_n_0 ),
        .I5(\sglc_f[11]_i_9_n_0 ),
        .O(\sglc_f[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000E0000)) 
    \sglc_f[11]_i_3 
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[14]),
        .I3(Q[15]),
        .I4(\sglc_f[26]_i_8_n_0 ),
        .O(\sglc_f[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002020200)) 
    \sglc_f[11]_i_5 
       (.I0(\sglc_e[3]_i_14_n_0 ),
        .I1(Q[19]),
        .I2(Q[18]),
        .I3(Q[17]),
        .I4(Q[16]),
        .I5(Q[2]),
        .O(\sglc_f[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \sglc_f[11]_i_6 
       (.I0(p_0_in[5]),
        .I1(p_1_in[0]),
        .I2(Q[20]),
        .I3(p_1_in[1]),
        .I4(Q[21]),
        .I5(p_1_in[2]),
        .O(\sglc_f[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0004000400040000)) 
    \sglc_f[11]_i_7 
       (.I0(p_0_in[4]),
        .I1(\sglc_f_reg[29]_0 ),
        .I2(Q[20]),
        .I3(p_1_in[0]),
        .I4(Q[18]),
        .I5(Q[19]),
        .O(\sglc_f[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_f[11]_i_8 
       (.I0(\sglc_e[3]_i_10_n_0 ),
        .I1(\sglc_f_reg_n_0_[1] ),
        .O(\sglc_f[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \sglc_f[11]_i_9 
       (.I0(\sglc_f[28]_i_14_n_0 ),
        .I1(\sglc_f[7]_i_5_n_0 ),
        .I2(Q[0]),
        .O(\sglc_f[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4F4F4)) 
    \sglc_f[12]_i_1 
       (.I0(\sglc_f[13]_i_2_n_0 ),
        .I1(\sglc_f_reg_n_0_[0] ),
        .I2(\sglc_f[12]_i_2_n_0 ),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(\sglc_f_reg[12]_1 ),
        .I5(\sglc_f[12]_i_3_n_0 ),
        .O(\sglc_f[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \sglc_f[12]_i_2 
       (.I0(Q[4]),
        .I1(\sglc_f[1]_i_4_n_0 ),
        .I2(p_0_in[5]),
        .I3(\sglc_f[26]_i_3_n_0 ),
        .I4(\sglc_f[12]_i_4_n_0 ),
        .O(\sglc_f[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \sglc_f[12]_i_3 
       (.I0(\sglc_f_reg[29]_0 ),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f[15]_i_9_n_0 ),
        .I3(\sglc_f[26]_i_8_n_0 ),
        .I4(\sglc_f[12]_i_5_n_0 ),
        .O(\sglc_f[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h880088880F000F0F)) 
    \sglc_f[12]_i_4 
       (.I0(\sglc_f[28]_i_9_n_0 ),
        .I1(Q[3]),
        .I2(\sglc_f[12]_i_6_n_0 ),
        .I3(\sglc_f_reg[1]_2 ),
        .I4(\sglc_f_reg[1]_1 ),
        .I5(\sglc_f_reg[29]_0 ),
        .O(\sglc_f[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000770777077707)) 
    \sglc_f[12]_i_5 
       (.I0(\sglc_f[11]_i_3_n_0 ),
        .I1(\sglc_f_reg_n_0_[4] ),
        .I2(Q[1]),
        .I3(\sglc_f[7]_i_5_n_0 ),
        .I4(\sglc_f_reg_n_0_[2] ),
        .I5(\sglc_e[3]_i_10_n_0 ),
        .O(\sglc_f[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000F0077FF0FFF77)) 
    \sglc_f[12]_i_6 
       (.I0(Q[6]),
        .I1(p_1_in[1]),
        .I2(Q[7]),
        .I3(Q[21]),
        .I4(p_1_in[2]),
        .I5(Q[8]),
        .O(\sglc_f[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF444)) 
    \sglc_f[13]_i_1 
       (.I0(\sglc_f[13]_i_2_n_0 ),
        .I1(\sglc_f_reg_n_0_[1] ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(\sglc_f_reg[13]_0 ),
        .I4(\sglc_f[13]_i_3_n_0 ),
        .I5(\sglc_f[13]_i_4_n_0 ),
        .O(\sglc_f[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF1FFFFF)) 
    \sglc_f[13]_i_2 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(\sglc_f[28]_i_14_n_0 ),
        .I5(crdy_INST_0_i_3_n_0),
        .O(\sglc_f[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFBAFFFFFFBA)) 
    \sglc_f[13]_i_3 
       (.I0(\sglc_f[13]_i_5_n_0 ),
        .I1(\sglc_f[1]_i_4_n_0 ),
        .I2(Q[5]),
        .I3(\sglc_f[13]_i_6_n_0 ),
        .I4(Q[4]),
        .I5(\sglc_f[26]_i_3_n_0 ),
        .O(\sglc_f[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \sglc_f[13]_i_4 
       (.I0(\sglc_f_reg[29]_0 ),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f[15]_i_9_n_0 ),
        .I3(\sglc_f[26]_i_8_n_0 ),
        .I4(\sglc_f[13]_i_7_n_0 ),
        .O(\sglc_f[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80880000)) 
    \sglc_f[13]_i_5 
       (.I0(p_0_in[4]),
        .I1(\sglc_f[28]_i_9_n_0 ),
        .I2(\sglc_f_reg[1]_2 ),
        .I3(\sglc_f_reg[1]_1 ),
        .I4(\sglc_f_reg[29]_0 ),
        .O(\sglc_f[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF101110111011)) 
    \sglc_f[13]_i_6 
       (.I0(\sglc_f[13]_i_8_n_0 ),
        .I1(\sglc_f_reg[29]_0 ),
        .I2(\sglc_f_reg[1]_2 ),
        .I3(\sglc_f_reg[1]_1 ),
        .I4(\sglc_f_reg[30]_0 ),
        .I5(Q[8]),
        .O(\sglc_f[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000DDD0DDD0DDD)) 
    \sglc_f[13]_i_7 
       (.I0(Q[2]),
        .I1(\sglc_f[7]_i_5_n_0 ),
        .I2(\sglc_f_reg_n_0_[3] ),
        .I3(\sglc_e[3]_i_10_n_0 ),
        .I4(Q[0]),
        .I5(\sglc_f[11]_i_3_n_0 ),
        .O(\sglc_f[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h5C5F5F5F)) 
    \sglc_f[13]_i_8 
       (.I0(Q[9]),
        .I1(p_1_in[2]),
        .I2(Q[21]),
        .I3(p_1_in[1]),
        .I4(Q[7]),
        .O(\sglc_f[13]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_f[13]_i_9 
       (.I0(p_1_in[2]),
        .I1(Q[21]),
        .O(\sglc_f_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sglc_f[14]_i_1 
       (.I0(\sglc_f[14]_i_2_n_0 ),
        .I1(\sglc_f[14]_i_3_n_0 ),
        .I2(\sglc_f[14]_i_4_n_0 ),
        .I3(\sglc_f[14]_i_5_n_0 ),
        .I4(\sglc_f_reg[14]_0 ),
        .I5(\sglc_f[14]_i_7_n_0 ),
        .O(\sglc_f[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \sglc_f[14]_i_2 
       (.I0(\sglc_f_reg_n_0_[2] ),
        .I1(crdy_INST_0_i_3_n_0),
        .I2(\sglc_f[28]_i_14_n_0 ),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(\sglc_f_reg[29]_0 ),
        .I5(\sglc_f[15]_i_8_n_0 ),
        .O(\sglc_f[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \sglc_f[14]_i_3 
       (.I0(\sglc_f_reg[29]_0 ),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f[15]_i_9_n_0 ),
        .I3(\sglc_f[26]_i_8_n_0 ),
        .I4(\sglc_f[14]_i_8_n_0 ),
        .O(\sglc_f[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_f[14]_i_4 
       (.I0(Q[5]),
        .I1(\sglc_f[26]_i_3_n_0 ),
        .O(\sglc_f[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sglc_f[14]_i_5 
       (.I0(\sglc_f[9]_i_3_n_0 ),
        .I1(p_0_in[5]),
        .I2(\sglc_f_reg[15]_1 ),
        .I3(\sglc_f[14]_i_9_n_0 ),
        .I4(Q[6]),
        .I5(\sglc_f[1]_i_4_n_0 ),
        .O(\sglc_f[14]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_f[14]_i_7 
       (.I0(\sglc_f_reg_n_0_[0] ),
        .I1(\sglc_f[28]_i_8_n_0 ),
        .O(\sglc_f[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000770777077707)) 
    \sglc_f[14]_i_8 
       (.I0(\sglc_f[11]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(\sglc_f[7]_i_5_n_0 ),
        .I4(\sglc_e[3]_i_10_n_0 ),
        .I5(\sglc_f_reg_n_0_[4] ),
        .O(\sglc_f[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4474477747774777)) 
    \sglc_f[14]_i_9 
       (.I0(Q[10]),
        .I1(Q[21]),
        .I2(p_1_in[2]),
        .I3(Q[9]),
        .I4(Q[8]),
        .I5(p_1_in[1]),
        .O(\sglc_f[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sglc_f[15]_i_1 
       (.I0(\sglc_f[15]_i_2_n_0 ),
        .I1(\sglc_f[15]_i_3_n_0 ),
        .I2(\sglc_f[15]_i_4_n_0 ),
        .I3(\sglc_f[15]_i_5_n_0 ),
        .I4(\sglc_f_reg[15]_0 ),
        .I5(\sglc_f[15]_i_7_n_0 ),
        .O(\sglc_f[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000770777077707)) 
    \sglc_f[15]_i_10 
       (.I0(\sglc_f[11]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(p_0_in[4]),
        .I3(\sglc_f[7]_i_5_n_0 ),
        .I4(\sglc_e[3]_i_10_n_0 ),
        .I5(Q[0]),
        .O(\sglc_f[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4474477747774777)) 
    \sglc_f[15]_i_12 
       (.I0(Q[11]),
        .I1(Q[21]),
        .I2(p_1_in[2]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(p_1_in[1]),
        .O(\sglc_f[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \sglc_f[15]_i_2 
       (.I0(\sglc_f_reg_n_0_[3] ),
        .I1(crdy_INST_0_i_3_n_0),
        .I2(\sglc_f[28]_i_14_n_0 ),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(\sglc_f_reg[29]_0 ),
        .I5(\sglc_f[15]_i_8_n_0 ),
        .O(\sglc_f[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \sglc_f[15]_i_3 
       (.I0(\sglc_f_reg[29]_0 ),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f[15]_i_9_n_0 ),
        .I3(\sglc_f[26]_i_8_n_0 ),
        .I4(\sglc_f[15]_i_10_n_0 ),
        .O(\sglc_f[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \sglc_f[15]_i_4 
       (.I0(Q[4]),
        .I1(\sglc_f[28]_i_9_n_0 ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(p_1_in[2]),
        .I4(Q[21]),
        .I5(p_1_in[1]),
        .O(\sglc_f[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sglc_f[15]_i_5 
       (.I0(\sglc_f[26]_i_3_n_0 ),
        .I1(Q[6]),
        .I2(\sglc_f_reg[15]_1 ),
        .I3(\sglc_f[15]_i_12_n_0 ),
        .I4(Q[7]),
        .I5(\sglc_f[1]_i_4_n_0 ),
        .O(\sglc_f[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_f[15]_i_7 
       (.I0(\sglc_f_reg_n_0_[1] ),
        .I1(\sglc_f[28]_i_8_n_0 ),
        .O(\sglc_f[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \sglc_f[15]_i_8 
       (.I0(Q[8]),
        .I1(\sglc_f[28]_i_14_n_0 ),
        .I2(Q[9]),
        .O(\sglc_f[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sglc_f[15]_i_9 
       (.I0(Q[15]),
        .I1(Q[14]),
        .I2(Q[12]),
        .I3(Q[13]),
        .I4(Q[11]),
        .I5(Q[10]),
        .O(\sglc_f[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \sglc_f[16]_i_1 
       (.I0(\sglc_f[16]_i_2_n_0 ),
        .I1(\sglc_f[26]_i_3_n_0 ),
        .I2(Q[7]),
        .I3(\sglc_f[16]_i_3_n_0 ),
        .I4(\sglc_f[16]_i_4_n_0 ),
        .I5(\sglc_f[16]_i_5_n_0 ),
        .O(\sglc_f[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000F88)) 
    \sglc_f[16]_i_2 
       (.I0(\sglc_f[28]_i_12_n_0 ),
        .I1(Q[5]),
        .I2(\sglc_f[16]_i_6_n_0 ),
        .I3(\sglc_f[26]_i_8_n_0 ),
        .I4(\sglc_f_reg[16]_1 ),
        .I5(\sglc_f[28]_i_14_n_0 ),
        .O(\sglc_f[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \sglc_f[16]_i_3 
       (.I0(Q[8]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(Q[20]),
        .I4(p_1_in[0]),
        .O(\sglc_f[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hACAFA0A3A0A3A0A3)) 
    \sglc_f[16]_i_4 
       (.I0(\sglc_f_reg[16]_0 ),
        .I1(\sglc_f_reg[29]_0 ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(\sglc_f[16]_i_7_n_0 ),
        .I4(\sglc_f_reg_n_0_[0] ),
        .I5(crdy_INST_0_i_3_n_0),
        .O(\sglc_f[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sglc_f[16]_i_5 
       (.I0(\sglc_f[28]_i_8_n_0 ),
        .I1(\sglc_f_reg_n_0_[2] ),
        .I2(\sglc_f[26]_i_11_n_0 ),
        .I3(\sglc_f_reg_n_0_[4] ),
        .O(\sglc_f[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7707770700007707)) 
    \sglc_f[16]_i_6 
       (.I0(\sglc_e[3]_i_10_n_0 ),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(\sglc_f[26]_i_12_n_0 ),
        .I4(p_0_in[5]),
        .I5(\sglc_f[7]_i_5_n_0 ),
        .O(\sglc_f[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00070F07F0F7FFF7)) 
    \sglc_f[16]_i_7 
       (.I0(Q[10]),
        .I1(p_1_in[1]),
        .I2(Q[21]),
        .I3(p_1_in[2]),
        .I4(Q[11]),
        .I5(Q[12]),
        .O(\sglc_f[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \sglc_f[17]_i_1 
       (.I0(\sglc_f[17]_i_2_n_0 ),
        .I1(\sglc_f[26]_i_3_n_0 ),
        .I2(Q[8]),
        .I3(\sglc_f[17]_i_3_n_0 ),
        .I4(\sglc_f[17]_i_4_n_0 ),
        .I5(\sglc_f[17]_i_5_n_0 ),
        .O(\sglc_f[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000F88)) 
    \sglc_f[17]_i_2 
       (.I0(\sglc_f[28]_i_12_n_0 ),
        .I1(Q[6]),
        .I2(\sglc_f[17]_i_6_n_0 ),
        .I3(\sglc_f[26]_i_8_n_0 ),
        .I4(\sglc_f_reg[16]_1 ),
        .I5(\sglc_f[28]_i_14_n_0 ),
        .O(\sglc_f[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \sglc_f[17]_i_3 
       (.I0(Q[9]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(Q[20]),
        .I4(p_1_in[0]),
        .O(\sglc_f[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hACAFA0A3A0A3A0A3)) 
    \sglc_f[17]_i_4 
       (.I0(\sglc_f_reg[17]_0 ),
        .I1(\sglc_f_reg[29]_0 ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(\sglc_f[17]_i_7_n_0 ),
        .I4(\sglc_f_reg_n_0_[1] ),
        .I5(crdy_INST_0_i_3_n_0),
        .O(\sglc_f[17]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sglc_f[17]_i_5 
       (.I0(\sglc_f[28]_i_8_n_0 ),
        .I1(\sglc_f_reg_n_0_[3] ),
        .I2(\sglc_f[26]_i_11_n_0 ),
        .I3(Q[0]),
        .O(\sglc_f[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7707770700007707)) 
    \sglc_f[17]_i_6 
       (.I0(\sglc_e[3]_i_10_n_0 ),
        .I1(Q[2]),
        .I2(p_0_in[4]),
        .I3(\sglc_f[26]_i_12_n_0 ),
        .I4(Q[4]),
        .I5(\sglc_f[7]_i_5_n_0 ),
        .O(\sglc_f[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000F0077FF0FFF77)) 
    \sglc_f[17]_i_7 
       (.I0(Q[11]),
        .I1(p_1_in[1]),
        .I2(Q[12]),
        .I3(Q[21]),
        .I4(p_1_in[2]),
        .I5(Q[13]),
        .O(\sglc_f[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \sglc_f[18]_i_1 
       (.I0(\sglc_f[18]_i_2_n_0 ),
        .I1(\sglc_f[26]_i_3_n_0 ),
        .I2(Q[9]),
        .I3(\sglc_f[18]_i_3_n_0 ),
        .I4(\sglc_f[18]_i_4_n_0 ),
        .I5(\sglc_f[18]_i_5_n_0 ),
        .O(\sglc_f[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000F88)) 
    \sglc_f[18]_i_2 
       (.I0(\sglc_f[28]_i_12_n_0 ),
        .I1(Q[7]),
        .I2(\sglc_f[18]_i_6_n_0 ),
        .I3(\sglc_f[26]_i_8_n_0 ),
        .I4(\sglc_f_reg[16]_1 ),
        .I5(\sglc_f[28]_i_14_n_0 ),
        .O(\sglc_f[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \sglc_f[18]_i_3 
       (.I0(Q[10]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(Q[20]),
        .I4(p_1_in[0]),
        .O(\sglc_f[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hACAFA0A3A0A3A0A3)) 
    \sglc_f[18]_i_4 
       (.I0(\sglc_f_reg[18]_0 ),
        .I1(\sglc_f_reg[29]_0 ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(\sglc_f[18]_i_7_n_0 ),
        .I4(\sglc_f_reg_n_0_[2] ),
        .I5(crdy_INST_0_i_3_n_0),
        .O(\sglc_f[18]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sglc_f[18]_i_5 
       (.I0(\sglc_f[28]_i_8_n_0 ),
        .I1(\sglc_f_reg_n_0_[4] ),
        .I2(\sglc_f[26]_i_11_n_0 ),
        .I3(Q[1]),
        .O(\sglc_f[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7707770700007707)) 
    \sglc_f[18]_i_6 
       (.I0(\sglc_e[3]_i_10_n_0 ),
        .I1(Q[3]),
        .I2(p_0_in[5]),
        .I3(\sglc_f[26]_i_12_n_0 ),
        .I4(Q[5]),
        .I5(\sglc_f[7]_i_5_n_0 ),
        .O(\sglc_f[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5350535F535F535F)) 
    \sglc_f[18]_i_7 
       (.I0(Q[14]),
        .I1(Q[13]),
        .I2(Q[21]),
        .I3(p_1_in[2]),
        .I4(Q[12]),
        .I5(p_1_in[1]),
        .O(\sglc_f[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \sglc_f[19]_i_1 
       (.I0(\sglc_f[19]_i_2_n_0 ),
        .I1(\sglc_f[26]_i_3_n_0 ),
        .I2(Q[10]),
        .I3(\sglc_f[19]_i_3_n_0 ),
        .I4(\sglc_f[19]_i_4_n_0 ),
        .I5(\sglc_f[19]_i_5_n_0 ),
        .O(\sglc_f[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000F88)) 
    \sglc_f[19]_i_2 
       (.I0(\sglc_f[28]_i_12_n_0 ),
        .I1(Q[8]),
        .I2(\sglc_f[19]_i_6_n_0 ),
        .I3(\sglc_f[26]_i_8_n_0 ),
        .I4(\sglc_f_reg[16]_1 ),
        .I5(\sglc_f[28]_i_14_n_0 ),
        .O(\sglc_f[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \sglc_f[19]_i_3 
       (.I0(Q[11]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(Q[20]),
        .I4(p_1_in[0]),
        .O(\sglc_f[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hACAFA0A3A0A3A0A3)) 
    \sglc_f[19]_i_4 
       (.I0(\sglc_f_reg[19]_0 ),
        .I1(\sglc_f_reg[29]_0 ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(\sglc_f[19]_i_7_n_0 ),
        .I4(\sglc_f_reg_n_0_[3] ),
        .I5(crdy_INST_0_i_3_n_0),
        .O(\sglc_f[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sglc_f[19]_i_5 
       (.I0(\sglc_f[28]_i_8_n_0 ),
        .I1(Q[0]),
        .I2(\sglc_f[26]_i_11_n_0 ),
        .I3(Q[2]),
        .O(\sglc_f[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7707770700007707)) 
    \sglc_f[19]_i_6 
       (.I0(\sglc_e[3]_i_10_n_0 ),
        .I1(p_0_in[4]),
        .I2(Q[4]),
        .I3(\sglc_f[26]_i_12_n_0 ),
        .I4(Q[6]),
        .I5(\sglc_f[7]_i_5_n_0 ),
        .O(\sglc_f[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000F0077FF0FFF77)) 
    \sglc_f[19]_i_7 
       (.I0(Q[13]),
        .I1(p_1_in[1]),
        .I2(Q[14]),
        .I3(Q[21]),
        .I4(p_1_in[2]),
        .I5(Q[15]),
        .O(\sglc_f[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \sglc_f[1]_i_1 
       (.I0(\sglc_f_reg[1]_0 ),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f[1]_i_2_n_0 ),
        .I3(\sglc_f[1]_i_3_n_0 ),
        .I4(\sglc_f_reg_n_0_[0] ),
        .I5(\sglc_f[1]_i_4_n_0 ),
        .O(\sglc_f[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0022003000220000)) 
    \sglc_f[1]_i_2 
       (.I0(\sglc_f_reg_n_0_[3] ),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(p_1_in[1]),
        .I3(Q[21]),
        .I4(p_1_in[2]),
        .I5(\sglc_f_reg_n_0_[2] ),
        .O(\sglc_f[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \sglc_f[1]_i_3 
       (.I0(\sglc_f_reg_n_0_[4] ),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(Q[21]),
        .O(\sglc_f[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h1F1FFF1F)) 
    \sglc_f[1]_i_4 
       (.I0(p_1_in[0]),
        .I1(Q[20]),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(\sglc_f_reg[1]_1 ),
        .I4(\sglc_f_reg[1]_2 ),
        .O(\sglc_f[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \sglc_f[20]_i_1 
       (.I0(\sglc_f[20]_i_2_n_0 ),
        .I1(\sglc_f[26]_i_3_n_0 ),
        .I2(Q[11]),
        .I3(\sglc_f[20]_i_3_n_0 ),
        .I4(\sglc_f[20]_i_4_n_0 ),
        .I5(\sglc_f[20]_i_5_n_0 ),
        .O(\sglc_f[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000F88)) 
    \sglc_f[20]_i_2 
       (.I0(\sglc_f[28]_i_12_n_0 ),
        .I1(Q[9]),
        .I2(\sglc_f[20]_i_6_n_0 ),
        .I3(\sglc_f[26]_i_8_n_0 ),
        .I4(\sglc_f_reg[16]_1 ),
        .I5(\sglc_f[28]_i_14_n_0 ),
        .O(\sglc_f[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \sglc_f[20]_i_3 
       (.I0(Q[12]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(Q[20]),
        .I4(p_1_in[0]),
        .O(\sglc_f[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hACAFA0A3A0A3A0A3)) 
    \sglc_f[20]_i_4 
       (.I0(\sglc_f_reg[20]_0 ),
        .I1(\sglc_f_reg[29]_0 ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(\sglc_f[20]_i_7_n_0 ),
        .I4(\sglc_f_reg_n_0_[4] ),
        .I5(crdy_INST_0_i_3_n_0),
        .O(\sglc_f[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sglc_f[20]_i_5 
       (.I0(\sglc_f[28]_i_8_n_0 ),
        .I1(Q[1]),
        .I2(\sglc_f[26]_i_11_n_0 ),
        .I3(Q[3]),
        .O(\sglc_f[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7707770700007707)) 
    \sglc_f[20]_i_6 
       (.I0(\sglc_e[3]_i_10_n_0 ),
        .I1(p_0_in[5]),
        .I2(Q[5]),
        .I3(\sglc_f[26]_i_12_n_0 ),
        .I4(Q[7]),
        .I5(\sglc_f[7]_i_5_n_0 ),
        .O(\sglc_f[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5350535F535F535F)) 
    \sglc_f[20]_i_7 
       (.I0(Q[16]),
        .I1(Q[15]),
        .I2(Q[21]),
        .I3(p_1_in[2]),
        .I4(Q[14]),
        .I5(p_1_in[1]),
        .O(\sglc_f[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \sglc_f[21]_i_1 
       (.I0(\sglc_f[21]_i_2_n_0 ),
        .I1(\sglc_f[26]_i_3_n_0 ),
        .I2(Q[12]),
        .I3(\sglc_f[21]_i_3_n_0 ),
        .I4(\sglc_f[21]_i_4_n_0 ),
        .I5(\sglc_f[21]_i_5_n_0 ),
        .O(\sglc_f[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000F88)) 
    \sglc_f[21]_i_2 
       (.I0(\sglc_f[28]_i_12_n_0 ),
        .I1(Q[10]),
        .I2(\sglc_f[21]_i_6_n_0 ),
        .I3(\sglc_f[26]_i_8_n_0 ),
        .I4(\sglc_f_reg[16]_1 ),
        .I5(\sglc_f[28]_i_14_n_0 ),
        .O(\sglc_f[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \sglc_f[21]_i_3 
       (.I0(Q[13]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(Q[20]),
        .I4(p_1_in[0]),
        .O(\sglc_f[21]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sglc_f[21]_i_4 
       (.I0(\sglc_f[28]_i_8_n_0 ),
        .I1(Q[2]),
        .I2(\sglc_f[26]_i_11_n_0 ),
        .I3(p_0_in[4]),
        .O(\sglc_f[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF80FF8F0080008F)) 
    \sglc_f[21]_i_5 
       (.I0(crdy_INST_0_i_3_n_0),
        .I1(Q[0]),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(\sglc_f[21]_i_7_n_0 ),
        .I5(\sglc_f_reg[21]_0 ),
        .O(\sglc_f[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7707770700007707)) 
    \sglc_f[21]_i_6 
       (.I0(\sglc_e[3]_i_10_n_0 ),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\sglc_f[26]_i_12_n_0 ),
        .I4(Q[8]),
        .I5(\sglc_f[7]_i_5_n_0 ),
        .O(\sglc_f[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000F0077FF0FFF77)) 
    \sglc_f[21]_i_7 
       (.I0(Q[15]),
        .I1(p_1_in[1]),
        .I2(Q[16]),
        .I3(Q[21]),
        .I4(p_1_in[2]),
        .I5(Q[17]),
        .O(\sglc_f[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \sglc_f[22]_i_1 
       (.I0(\sglc_f[22]_i_2_n_0 ),
        .I1(\sglc_f[26]_i_3_n_0 ),
        .I2(Q[13]),
        .I3(\sglc_f[22]_i_3_n_0 ),
        .I4(\sglc_f[22]_i_4_n_0 ),
        .I5(\sglc_f[22]_i_5_n_0 ),
        .O(\sglc_f[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000F88)) 
    \sglc_f[22]_i_2 
       (.I0(\sglc_f[28]_i_12_n_0 ),
        .I1(Q[11]),
        .I2(\sglc_f[22]_i_6_n_0 ),
        .I3(\sglc_f[26]_i_8_n_0 ),
        .I4(\sglc_f_reg[16]_1 ),
        .I5(\sglc_f[28]_i_14_n_0 ),
        .O(\sglc_f[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \sglc_f[22]_i_3 
       (.I0(Q[14]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(Q[20]),
        .I4(p_1_in[0]),
        .O(\sglc_f[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hACAFA0A3A0A3A0A3)) 
    \sglc_f[22]_i_4 
       (.I0(\sglc_f_reg[22]_0 ),
        .I1(\sglc_f_reg[29]_0 ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(\sglc_f[22]_i_7_n_0 ),
        .I4(Q[1]),
        .I5(crdy_INST_0_i_3_n_0),
        .O(\sglc_f[22]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sglc_f[22]_i_5 
       (.I0(\sglc_f[28]_i_8_n_0 ),
        .I1(Q[3]),
        .I2(\sglc_f[26]_i_11_n_0 ),
        .I3(p_0_in[5]),
        .O(\sglc_f[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7707770700007707)) 
    \sglc_f[22]_i_6 
       (.I0(\sglc_e[3]_i_10_n_0 ),
        .I1(Q[5]),
        .I2(Q[7]),
        .I3(\sglc_f[26]_i_12_n_0 ),
        .I4(Q[9]),
        .I5(\sglc_f[7]_i_5_n_0 ),
        .O(\sglc_f[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000F0077FF0FFF77)) 
    \sglc_f[22]_i_7 
       (.I0(Q[16]),
        .I1(p_1_in[1]),
        .I2(Q[17]),
        .I3(Q[21]),
        .I4(p_1_in[2]),
        .I5(Q[18]),
        .O(\sglc_f[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \sglc_f[23]_i_1 
       (.I0(\sglc_f[23]_i_2_n_0 ),
        .I1(\sglc_f[26]_i_3_n_0 ),
        .I2(Q[14]),
        .I3(\sglc_f[23]_i_3_n_0 ),
        .I4(\sglc_f[23]_i_4_n_0 ),
        .I5(\sglc_f[23]_i_5_n_0 ),
        .O(\sglc_f[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000F88)) 
    \sglc_f[23]_i_2 
       (.I0(\sglc_f[28]_i_12_n_0 ),
        .I1(Q[12]),
        .I2(\sglc_f[23]_i_6_n_0 ),
        .I3(\sglc_f[26]_i_8_n_0 ),
        .I4(\sglc_f_reg[16]_1 ),
        .I5(\sglc_f[28]_i_14_n_0 ),
        .O(\sglc_f[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \sglc_f[23]_i_3 
       (.I0(Q[15]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(Q[20]),
        .I4(p_1_in[0]),
        .O(\sglc_f[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hACAFA0A3A0A3A0A3)) 
    \sglc_f[23]_i_4 
       (.I0(\sglc_f_reg[23]_0 ),
        .I1(\sglc_f_reg[29]_0 ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(\sglc_f[23]_i_7_n_0 ),
        .I4(Q[2]),
        .I5(crdy_INST_0_i_3_n_0),
        .O(\sglc_f[23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sglc_f[23]_i_5 
       (.I0(\sglc_f[28]_i_8_n_0 ),
        .I1(p_0_in[4]),
        .I2(\sglc_f[26]_i_11_n_0 ),
        .I3(Q[4]),
        .O(\sglc_f[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7707770700007707)) 
    \sglc_f[23]_i_6 
       (.I0(\sglc_e[3]_i_10_n_0 ),
        .I1(Q[6]),
        .I2(Q[8]),
        .I3(\sglc_f[26]_i_12_n_0 ),
        .I4(Q[10]),
        .I5(\sglc_f[7]_i_5_n_0 ),
        .O(\sglc_f[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000F0077FF0FFF77)) 
    \sglc_f[23]_i_7 
       (.I0(Q[17]),
        .I1(p_1_in[1]),
        .I2(Q[18]),
        .I3(Q[21]),
        .I4(p_1_in[2]),
        .I5(Q[19]),
        .O(\sglc_f[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \sglc_f[24]_i_1 
       (.I0(\sglc_f[24]_i_2_n_0 ),
        .I1(\sglc_f[26]_i_3_n_0 ),
        .I2(Q[15]),
        .I3(\sglc_f[24]_i_3_n_0 ),
        .I4(\sglc_f[24]_i_4_n_0 ),
        .I5(\sglc_f[24]_i_5_n_0 ),
        .O(\sglc_f[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000F88)) 
    \sglc_f[24]_i_2 
       (.I0(\sglc_f[28]_i_12_n_0 ),
        .I1(Q[13]),
        .I2(\sglc_f[24]_i_6_n_0 ),
        .I3(\sglc_f[26]_i_8_n_0 ),
        .I4(\sglc_f_reg[16]_1 ),
        .I5(\sglc_f[28]_i_14_n_0 ),
        .O(\sglc_f[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \sglc_f[24]_i_3 
       (.I0(Q[16]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(Q[20]),
        .I4(p_1_in[0]),
        .O(\sglc_f[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hACAFA0A3A0A3A0A3)) 
    \sglc_f[24]_i_4 
       (.I0(\sglc_f_reg[24]_0 ),
        .I1(\sglc_f_reg[29]_0 ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(\sglc_f[24]_i_7_n_0 ),
        .I4(Q[3]),
        .I5(crdy_INST_0_i_3_n_0),
        .O(\sglc_f[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sglc_f[24]_i_5 
       (.I0(\sglc_f[28]_i_8_n_0 ),
        .I1(p_0_in[5]),
        .I2(\sglc_f[26]_i_11_n_0 ),
        .I3(Q[5]),
        .O(\sglc_f[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7707770700007707)) 
    \sglc_f[24]_i_6 
       (.I0(\sglc_e[3]_i_10_n_0 ),
        .I1(Q[7]),
        .I2(Q[9]),
        .I3(\sglc_f[26]_i_12_n_0 ),
        .I4(Q[11]),
        .I5(\sglc_f[7]_i_5_n_0 ),
        .O(\sglc_f[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000F0077FF0FFF77)) 
    \sglc_f[24]_i_7 
       (.I0(Q[18]),
        .I1(p_1_in[1]),
        .I2(Q[19]),
        .I3(Q[21]),
        .I4(p_1_in[2]),
        .I5(Q[20]),
        .O(\sglc_f[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \sglc_f[25]_i_1 
       (.I0(\sglc_f[25]_i_2_n_0 ),
        .I1(\sglc_f[26]_i_3_n_0 ),
        .I2(Q[16]),
        .I3(\sglc_f[25]_i_3_n_0 ),
        .I4(\sglc_f[25]_i_4_n_0 ),
        .I5(\sglc_f[25]_i_5_n_0 ),
        .O(\sglc_f[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000F88)) 
    \sglc_f[25]_i_2 
       (.I0(\sglc_f[28]_i_12_n_0 ),
        .I1(Q[14]),
        .I2(\sglc_f[25]_i_6_n_0 ),
        .I3(\sglc_f[26]_i_8_n_0 ),
        .I4(\sglc_f_reg[16]_1 ),
        .I5(\sglc_f[28]_i_14_n_0 ),
        .O(\sglc_f[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \sglc_f[25]_i_3 
       (.I0(Q[17]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(Q[20]),
        .I4(p_1_in[0]),
        .O(\sglc_f[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hACAFA0A3A0A3A0A3)) 
    \sglc_f[25]_i_4 
       (.I0(\sglc_f_reg[25]_0 ),
        .I1(\sglc_f_reg[29]_0 ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(\sglc_f[25]_i_7_n_0 ),
        .I4(p_0_in[4]),
        .I5(crdy_INST_0_i_3_n_0),
        .O(\sglc_f[25]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sglc_f[25]_i_5 
       (.I0(\sglc_f[28]_i_8_n_0 ),
        .I1(Q[4]),
        .I2(\sglc_f[26]_i_11_n_0 ),
        .I3(Q[6]),
        .O(\sglc_f[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7707770700007707)) 
    \sglc_f[25]_i_6 
       (.I0(\sglc_e[3]_i_10_n_0 ),
        .I1(Q[8]),
        .I2(Q[10]),
        .I3(\sglc_f[26]_i_12_n_0 ),
        .I4(Q[12]),
        .I5(\sglc_f[7]_i_5_n_0 ),
        .O(\sglc_f[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000F0077FF0FFF77)) 
    \sglc_f[25]_i_7 
       (.I0(Q[19]),
        .I1(p_1_in[1]),
        .I2(Q[20]),
        .I3(Q[21]),
        .I4(p_1_in[2]),
        .I5(p_1_in[0]),
        .O(\sglc_f[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \sglc_f[26]_i_1 
       (.I0(\sglc_f[26]_i_2_n_0 ),
        .I1(\sglc_f[26]_i_3_n_0 ),
        .I2(Q[17]),
        .I3(\sglc_f[26]_i_4_n_0 ),
        .I4(\sglc_f[26]_i_5_n_0 ),
        .I5(\sglc_f[26]_i_6_n_0 ),
        .O(\sglc_f[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0407F7F7)) 
    \sglc_f[26]_i_10 
       (.I0(p_1_in[0]),
        .I1(p_1_in[2]),
        .I2(Q[21]),
        .I3(Q[20]),
        .I4(p_1_in[1]),
        .O(\sglc_f[26]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF5DFFFF)) 
    \sglc_f[26]_i_11 
       (.I0(\sglc_f_reg[29]_0 ),
        .I1(\sglc_f_reg[1]_1 ),
        .I2(\sglc_f_reg[1]_2 ),
        .I3(crdy_INST_0_i_3_n_0),
        .I4(\sglc_f[28]_i_14_n_0 ),
        .I5(\sglc_f[15]_i_8_n_0 ),
        .O(\sglc_f[26]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFF1FFFF)) 
    \sglc_f[26]_i_12 
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[15]),
        .I3(Q[14]),
        .I4(\sglc_f[26]_i_8_n_0 ),
        .O(\sglc_f[26]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000F88)) 
    \sglc_f[26]_i_2 
       (.I0(\sglc_f[28]_i_12_n_0 ),
        .I1(Q[15]),
        .I2(\sglc_f[26]_i_7_n_0 ),
        .I3(\sglc_f[26]_i_8_n_0 ),
        .I4(\sglc_f_reg[16]_1 ),
        .I5(\sglc_f[28]_i_14_n_0 ),
        .O(\sglc_f[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEEFFFF)) 
    \sglc_f[26]_i_3 
       (.I0(Q[20]),
        .I1(p_1_in[0]),
        .I2(\sglc_f_reg[1]_2 ),
        .I3(\sglc_f_reg[1]_1 ),
        .I4(\sglc_f_reg[29]_0 ),
        .I5(\sglc_f[28]_i_12_n_0 ),
        .O(\sglc_f[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \sglc_f[26]_i_4 
       (.I0(Q[18]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(Q[20]),
        .I4(p_1_in[0]),
        .O(\sglc_f[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hACAFA0A3A0A3A0A3)) 
    \sglc_f[26]_i_5 
       (.I0(\sglc_f_reg[26]_0 ),
        .I1(\sglc_f_reg[29]_0 ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(\sglc_f[26]_i_10_n_0 ),
        .I4(p_0_in[5]),
        .I5(crdy_INST_0_i_3_n_0),
        .O(\sglc_f[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sglc_f[26]_i_6 
       (.I0(\sglc_f[28]_i_8_n_0 ),
        .I1(Q[5]),
        .I2(\sglc_f[26]_i_11_n_0 ),
        .I3(Q[7]),
        .O(\sglc_f[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7707770700007707)) 
    \sglc_f[26]_i_7 
       (.I0(\sglc_e[3]_i_10_n_0 ),
        .I1(Q[9]),
        .I2(Q[11]),
        .I3(\sglc_f[26]_i_12_n_0 ),
        .I4(Q[13]),
        .I5(\sglc_f[7]_i_5_n_0 ),
        .O(\sglc_f[26]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \sglc_f[26]_i_8 
       (.I0(Q[18]),
        .I1(Q[19]),
        .I2(\sglc_e[3]_i_14_n_0 ),
        .I3(Q[16]),
        .I4(Q[17]),
        .O(\sglc_f[26]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sglc_f[27]_i_1 
       (.I0(\sglc_f[27]_i_2_n_0 ),
        .I1(\sglc_f[27]_i_3_n_0 ),
        .I2(\sglc_f[27]_i_4_n_0 ),
        .I3(\sglc_f[27]_i_5_n_0 ),
        .I4(\sglc_f_reg[27]_0 ),
        .I5(\sglc_f[27]_i_7_n_0 ),
        .O(\sglc_f[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_f[27]_i_2 
       (.I0(Q[6]),
        .I1(\sglc_f[28]_i_8_n_0 ),
        .O(\sglc_f[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \sglc_f[27]_i_3 
       (.I0(Q[8]),
        .I1(\sglc_f_reg[29]_0 ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(\sglc_f[28]_i_14_n_0 ),
        .I4(crdy_INST_0_i_3_n_0),
        .O(\sglc_f[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \sglc_f[27]_i_4 
       (.I0(\sglc_f[26]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(\sglc_f[27]_i_8_n_0 ),
        .I3(Q[19]),
        .I4(\sglc_f[1]_i_4_n_0 ),
        .O(\sglc_f[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \sglc_f[27]_i_5 
       (.I0(\sglc_f_reg[29]_0 ),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f[28]_i_9_n_0 ),
        .I3(Q[16]),
        .I4(\sglc_f[27]_i_9_n_0 ),
        .I5(\sglc_f[28]_i_11_n_0 ),
        .O(\sglc_f[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \sglc_f[27]_i_7 
       (.I0(Q[4]),
        .I1(crdy_INST_0_i_3_n_0),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(p_1_in[2]),
        .I4(Q[21]),
        .I5(p_1_in[1]),
        .O(\sglc_f[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCEC0CEC00000CEC0)) 
    \sglc_f[27]_i_8 
       (.I0(p_1_in[0]),
        .I1(p_1_in[2]),
        .I2(Q[21]),
        .I3(p_1_in[1]),
        .I4(\sglc_f_reg[1]_1 ),
        .I5(\sglc_f_reg[1]_2 ),
        .O(\sglc_f[27]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF0D)) 
    \sglc_f[27]_i_9 
       (.I0(Q[10]),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(Q[15]),
        .I4(Q[14]),
        .O(\sglc_f[27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sglc_f[28]_i_1 
       (.I0(\sglc_f[28]_i_2_n_0 ),
        .I1(\sglc_f_reg[28]_1 ),
        .I2(\sglc_f[28]_i_4_n_0 ),
        .I3(\sglc_f[28]_i_5_n_0 ),
        .I4(\sglc_f[28]_i_6_n_0 ),
        .I5(\sglc_f[28]_i_7_n_0 ),
        .O(\sglc_f[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF0D)) 
    \sglc_f[28]_i_10 
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(Q[14]),
        .I4(Q[15]),
        .O(\sglc_f[28]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h80880000)) 
    \sglc_f[28]_i_11 
       (.I0(\sglc_f[26]_i_8_n_0 ),
        .I1(\sglc_f[15]_i_9_n_0 ),
        .I2(\sglc_f_reg[1]_2 ),
        .I3(\sglc_f_reg[1]_1 ),
        .I4(\sglc_f_reg[29]_0 ),
        .O(\sglc_f[28]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \sglc_f[28]_i_12 
       (.I0(p_1_in[0]),
        .I1(Q[20]),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(Q[19]),
        .I4(Q[18]),
        .O(\sglc_f[28]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFEFFFF)) 
    \sglc_f[28]_i_13 
       (.I0(p_1_in[2]),
        .I1(Q[21]),
        .I2(p_1_in[1]),
        .I3(p_1_in[0]),
        .I4(Q[19]),
        .I5(Q[20]),
        .O(\sglc_f[28]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \sglc_f[28]_i_14 
       (.I0(\sglc_f[26]_i_8_n_0 ),
        .I1(Q[10]),
        .I2(Q[11]),
        .I3(\sglc_f[28]_i_16_n_0 ),
        .O(\sglc_f[28]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sglc_f[28]_i_16 
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[14]),
        .I3(Q[15]),
        .O(\sglc_f[28]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_f[28]_i_2 
       (.I0(Q[7]),
        .I1(\sglc_f[28]_i_8_n_0 ),
        .O(\sglc_f[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \sglc_f[28]_i_4 
       (.I0(Q[17]),
        .I1(\sglc_f[28]_i_9_n_0 ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(p_1_in[2]),
        .I4(Q[21]),
        .I5(p_1_in[1]),
        .O(\sglc_f[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h444F444F444F4F4F)) 
    \sglc_f[28]_i_5 
       (.I0(\sglc_f[28]_i_10_n_0 ),
        .I1(\sglc_f[28]_i_11_n_0 ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(\sglc_f_reg[29]_0 ),
        .I4(\sglc_f[28]_i_12_n_0 ),
        .I5(\sglc_f[28]_i_13_n_0 ),
        .O(\sglc_f[28]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80880000)) 
    \sglc_f[28]_i_6 
       (.I0(Q[9]),
        .I1(\sglc_f[28]_i_14_n_0 ),
        .I2(\sglc_f_reg[1]_2 ),
        .I3(\sglc_f_reg[1]_1 ),
        .I4(\sglc_f_reg[29]_0 ),
        .O(\sglc_f[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \sglc_f[28]_i_7 
       (.I0(Q[5]),
        .I1(crdy_INST_0_i_3_n_0),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(p_1_in[2]),
        .I4(Q[21]),
        .I5(p_1_in[1]),
        .O(\sglc_f[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5DFFFFFFFFFF)) 
    \sglc_f[28]_i_8 
       (.I0(\sglc_f_reg[29]_0 ),
        .I1(\sglc_f_reg[1]_1 ),
        .I2(\sglc_f_reg[1]_2 ),
        .I3(\sglc_f[28]_i_14_n_0 ),
        .I4(crdy_INST_0_i_3_n_0),
        .I5(\sglc_f[15]_i_8_n_0 ),
        .O(\sglc_f[28]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000E0000)) 
    \sglc_f[28]_i_9 
       (.I0(Q[16]),
        .I1(Q[17]),
        .I2(Q[18]),
        .I3(Q[19]),
        .I4(\sglc_e[3]_i_14_n_0 ),
        .O(\sglc_f[28]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h55C0)) 
    \sglc_f[29]_i_1 
       (.I0(\sglc_f_reg[29]_1 ),
        .I1(p_1_in[0]),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(\sglc_i_reg[41]_0 ),
        .O(\sglc_f[29]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \sglc_f[29]_i_2 
       (.I0(p_1_in[1]),
        .I1(Q[21]),
        .I2(p_1_in[2]),
        .O(\sglc_f_reg[29]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \sglc_f[2]_i_1 
       (.I0(\sglc_f_reg[2]_0 ),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f[2]_i_2_n_0 ),
        .I3(\sglc_f[2]_i_3_n_0 ),
        .I4(\sglc_f[2]_i_4_n_0 ),
        .I5(\sglc_f[2]_i_5_n_0 ),
        .O(\sglc_f[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \sglc_f[2]_i_2 
       (.I0(\sglc_f_reg_n_0_[1] ),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(Q[20]),
        .I4(p_1_in[0]),
        .O(\sglc_f[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0022003000220000)) 
    \sglc_f[2]_i_3 
       (.I0(\sglc_f_reg_n_0_[4] ),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(p_1_in[1]),
        .I3(Q[21]),
        .I4(p_1_in[2]),
        .I5(\sglc_f_reg_n_0_[3] ),
        .O(\sglc_f[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \sglc_f[2]_i_4 
       (.I0(Q[0]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(Q[21]),
        .O(\sglc_f[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_f[2]_i_5 
       (.I0(\sglc_f_reg_n_0_[0] ),
        .I1(\sglc_f[26]_i_3_n_0 ),
        .O(\sglc_f[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \sglc_f[31]_i_3 
       (.I0(p_1_in[2]),
        .I1(Q[21]),
        .I2(p_1_in[1]),
        .I3(p_1_in[0]),
        .O(\sglc_f_reg[30]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \sglc_f[3]_i_1 
       (.I0(\sglc_f_reg[3]_0 ),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f[3]_i_2_n_0 ),
        .I3(\sglc_f[3]_i_3_n_0 ),
        .I4(\sglc_f[3]_i_4_n_0 ),
        .I5(\sglc_f[3]_i_5_n_0 ),
        .O(\sglc_f[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \sglc_f[3]_i_2 
       (.I0(\sglc_f_reg_n_0_[2] ),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(Q[20]),
        .I4(p_1_in[0]),
        .O(\sglc_f[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0022003000220000)) 
    \sglc_f[3]_i_3 
       (.I0(Q[0]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(p_1_in[1]),
        .I3(Q[21]),
        .I4(p_1_in[2]),
        .I5(\sglc_f_reg_n_0_[4] ),
        .O(\sglc_f[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \sglc_f[3]_i_4 
       (.I0(Q[1]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(Q[21]),
        .O(\sglc_f[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_f[3]_i_5 
       (.I0(\sglc_f_reg_n_0_[1] ),
        .I1(\sglc_f[26]_i_3_n_0 ),
        .O(\sglc_f[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sglc_f[4]_i_1 
       (.I0(\sglc_f_reg[4]_0 ),
        .I1(\sglc_f[4]_i_3_n_0 ),
        .I2(\sglc_f[4]_i_4_n_0 ),
        .I3(\sglc_f[4]_i_5_n_0 ),
        .I4(\sglc_f[4]_i_6_n_0 ),
        .I5(\sglc_f[4]_i_7_n_0 ),
        .O(\sglc_f[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \sglc_f[4]_i_3 
       (.I0(\sglc_f_reg_n_0_[0] ),
        .I1(\sglc_f[28]_i_9_n_0 ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(p_1_in[2]),
        .I4(Q[21]),
        .I5(p_1_in[1]),
        .O(\sglc_f[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \sglc_f[4]_i_4 
       (.I0(\sglc_f_reg_n_0_[3] ),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(Q[20]),
        .I4(p_1_in[0]),
        .O(\sglc_f[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0022003000220000)) 
    \sglc_f[4]_i_5 
       (.I0(Q[1]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(p_1_in[1]),
        .I3(Q[21]),
        .I4(p_1_in[2]),
        .I5(Q[0]),
        .O(\sglc_f[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \sglc_f[4]_i_6 
       (.I0(Q[2]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(Q[21]),
        .O(\sglc_f[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_f[4]_i_7 
       (.I0(\sglc_f_reg_n_0_[2] ),
        .I1(\sglc_f[26]_i_3_n_0 ),
        .O(\sglc_f[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sglc_f[5]_i_1 
       (.I0(\sglc_f_reg[5]_0 ),
        .I1(\sglc_f[5]_i_3_n_0 ),
        .I2(\sglc_f[5]_i_4_n_0 ),
        .I3(\sglc_f[5]_i_5_n_0 ),
        .I4(\sglc_f[5]_i_6_n_0 ),
        .I5(\sglc_f[5]_i_7_n_0 ),
        .O(\sglc_f[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \sglc_f[5]_i_3 
       (.I0(\sglc_f_reg_n_0_[1] ),
        .I1(\sglc_f[28]_i_9_n_0 ),
        .I2(\sglc_i_reg[41]_0 ),
        .I3(p_1_in[2]),
        .I4(Q[21]),
        .I5(p_1_in[1]),
        .O(\sglc_f[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \sglc_f[5]_i_4 
       (.I0(\sglc_f_reg_n_0_[4] ),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(Q[20]),
        .I4(p_1_in[0]),
        .O(\sglc_f[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0022003000220000)) 
    \sglc_f[5]_i_5 
       (.I0(Q[2]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(p_1_in[1]),
        .I3(Q[21]),
        .I4(p_1_in[2]),
        .I5(Q[1]),
        .O(\sglc_f[5]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \sglc_f[5]_i_6 
       (.I0(Q[3]),
        .I1(\sglc_i_reg[41]_0 ),
        .I2(Q[21]),
        .O(\sglc_f[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglc_f[5]_i_7 
       (.I0(\sglc_f_reg_n_0_[3] ),
        .I1(\sglc_f[26]_i_3_n_0 ),
        .O(\sglc_f[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8F88)) 
    \sglc_f[6]_i_1 
       (.I0(\sglc_i_reg[41]_0 ),
        .I1(\sglc_f_reg[6]_0 ),
        .I2(\sglc_f[9]_i_3_n_0 ),
        .I3(\sglc_f_reg_n_0_[2] ),
        .I4(\sglc_f[6]_i_2_n_0 ),
        .I5(\sglc_f[6]_i_3_n_0 ),
        .O(\sglc_f[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sglc_f[6]_i_2 
       (.I0(\sglc_f[26]_i_3_n_0 ),
        .I1(\sglc_f_reg_n_0_[4] ),
        .I2(Q[0]),
        .I3(\sglc_f[1]_i_4_n_0 ),
        .I4(\sglc_f_reg[15]_1 ),
        .I5(\sglc_f[6]_i_4_n_0 ),
        .O(\sglc_f[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \sglc_f[6]_i_3 
       (.I0(\sglc_f_reg_n_0_[0] ),
        .I1(\sglc_f[7]_i_5_n_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(\sglc_f[15]_i_9_n_0 ),
        .O(\sglc_f[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00070F07F0F7FFF7)) 
    \sglc_f[6]_i_4 
       (.I0(Q[2]),
        .I1(p_1_in[1]),
        .I2(Q[21]),
        .I3(p_1_in[2]),
        .I4(Q[3]),
        .I5(p_0_in[4]),
        .O(\sglc_f[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8F88)) 
    \sglc_f[7]_i_1 
       (.I0(\sglc_i_reg[41]_0 ),
        .I1(\sglc_f_reg[7]_0 ),
        .I2(\sglc_f[9]_i_3_n_0 ),
        .I3(\sglc_f_reg_n_0_[3] ),
        .I4(\sglc_f[7]_i_2_n_0 ),
        .I5(\sglc_f[7]_i_3_n_0 ),
        .O(\sglc_f[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sglc_f[7]_i_2 
       (.I0(\sglc_f[26]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\sglc_f[1]_i_4_n_0 ),
        .I4(\sglc_f_reg[15]_1 ),
        .I5(\sglc_f[7]_i_4_n_0 ),
        .O(\sglc_f[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \sglc_f[7]_i_3 
       (.I0(\sglc_f_reg_n_0_[1] ),
        .I1(\sglc_f[7]_i_5_n_0 ),
        .I2(\sglc_f_reg[29]_0 ),
        .I3(\sglc_i_reg[41]_0 ),
        .I4(\sglc_f[15]_i_9_n_0 ),
        .O(\sglc_f[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00070F07F0F7FFF7)) 
    \sglc_f[7]_i_4 
       (.I0(Q[3]),
        .I1(p_1_in[1]),
        .I2(Q[21]),
        .I3(p_1_in[2]),
        .I4(p_0_in[4]),
        .I5(p_0_in[5]),
        .O(\sglc_f[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \sglc_f[7]_i_5 
       (.I0(Q[14]),
        .I1(Q[15]),
        .I2(\sglc_f[26]_i_8_n_0 ),
        .O(\sglc_f[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8FFF8F8)) 
    \sglc_f[8]_i_1 
       (.I0(\sglc_i_reg[41]_0 ),
        .I1(\sglc_f_reg[8]_0 ),
        .I2(\sglc_f[8]_i_2_n_0 ),
        .I3(\sglc_f[26]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\sglc_f[8]_i_3_n_0 ),
        .O(\sglc_f[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \sglc_f[8]_i_2 
       (.I0(\sglc_f_reg_n_0_[0] ),
        .I1(\sglc_f[28]_i_11_n_0 ),
        .I2(\sglc_f[11]_i_3_n_0 ),
        .I3(\sglc_f[9]_i_5_n_0 ),
        .I4(\sglc_f_reg_n_0_[2] ),
        .O(\sglc_f[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sglc_f[8]_i_3 
       (.I0(\sglc_f[9]_i_3_n_0 ),
        .I1(\sglc_f_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\sglc_f[1]_i_4_n_0 ),
        .I4(\sglc_f_reg[15]_1 ),
        .I5(\sglc_f[8]_i_4_n_0 ),
        .O(\sglc_f[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00070F07F0F7FFF7)) 
    \sglc_f[8]_i_4 
       (.I0(p_0_in[4]),
        .I1(p_1_in[1]),
        .I2(Q[21]),
        .I3(p_1_in[2]),
        .I4(p_0_in[5]),
        .I5(Q[4]),
        .O(\sglc_f[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8FFF8F8)) 
    \sglc_f[9]_i_1 
       (.I0(\sglc_i_reg[41]_0 ),
        .I1(\sglc_f_reg[9]_1 ),
        .I2(\sglc_f[9]_i_2_n_0 ),
        .I3(\sglc_f[9]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(\sglc_f[9]_i_4_n_0 ),
        .O(\sglc_f[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \sglc_f[9]_i_2 
       (.I0(\sglc_f[9]_i_5_n_0 ),
        .I1(\sglc_f_reg_n_0_[3] ),
        .I2(\sglc_f_reg_n_0_[1] ),
        .I3(\sglc_f[28]_i_11_n_0 ),
        .I4(\sglc_f[11]_i_3_n_0 ),
        .O(\sglc_f[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFFFF)) 
    \sglc_f[9]_i_3 
       (.I0(p_1_in[1]),
        .I1(Q[21]),
        .I2(p_1_in[2]),
        .I3(\sglc_f_reg[1]_1 ),
        .I4(\sglc_f_reg[1]_2 ),
        .I5(\sglc_f[28]_i_9_n_0 ),
        .O(\sglc_f[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sglc_f[9]_i_4 
       (.I0(\sglc_f[26]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(\sglc_f_reg[15]_1 ),
        .I3(\sglc_f[9]_i_6_n_0 ),
        .I4(Q[3]),
        .I5(\sglc_f[1]_i_4_n_0 ),
        .O(\sglc_f[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF75FF)) 
    \sglc_f[9]_i_5 
       (.I0(\sglc_f[15]_i_9_n_0 ),
        .I1(\sglc_f_reg[1]_2 ),
        .I2(\sglc_f_reg[1]_1 ),
        .I3(\sglc_f_reg[29]_0 ),
        .I4(\sglc_f[7]_i_5_n_0 ),
        .O(\sglc_f[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00F00FFF07F707F7)) 
    \sglc_f[9]_i_6 
       (.I0(p_0_in[5]),
        .I1(p_1_in[1]),
        .I2(Q[21]),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(p_1_in[2]),
        .O(\sglc_f[9]_i_6_n_0 ));
  FDRE \sglc_f_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[0]_i_1_n_0 ),
        .Q(\sglc_f_reg_n_0_[0] ),
        .R(SR));
  FDRE \sglc_f_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[10]_i_1_n_0 ),
        .Q(p_0_in[5]),
        .R(SR));
  FDRE \sglc_f_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[11]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \sglc_f_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[12]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \sglc_f_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[13]_i_1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE \sglc_f_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[14]_i_1_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE \sglc_f_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[15]_i_1_n_0 ),
        .Q(Q[8]),
        .R(SR));
  FDRE \sglc_f_reg[16] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[16]_i_1_n_0 ),
        .Q(Q[9]),
        .R(SR));
  FDRE \sglc_f_reg[17] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[17]_i_1_n_0 ),
        .Q(Q[10]),
        .R(SR));
  FDRE \sglc_f_reg[18] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[18]_i_1_n_0 ),
        .Q(Q[11]),
        .R(SR));
  FDRE \sglc_f_reg[19] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[19]_i_1_n_0 ),
        .Q(Q[12]),
        .R(SR));
  FDRE \sglc_f_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[1]_i_1_n_0 ),
        .Q(\sglc_f_reg_n_0_[1] ),
        .R(SR));
  FDRE \sglc_f_reg[20] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[20]_i_1_n_0 ),
        .Q(Q[13]),
        .R(SR));
  FDRE \sglc_f_reg[21] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[21]_i_1_n_0 ),
        .Q(Q[14]),
        .R(SR));
  FDRE \sglc_f_reg[22] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[22]_i_1_n_0 ),
        .Q(Q[15]),
        .R(SR));
  FDRE \sglc_f_reg[23] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[23]_i_1_n_0 ),
        .Q(Q[16]),
        .R(SR));
  FDRE \sglc_f_reg[24] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[24]_i_1_n_0 ),
        .Q(Q[17]),
        .R(SR));
  FDRE \sglc_f_reg[25] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[25]_i_1_n_0 ),
        .Q(Q[18]),
        .R(SR));
  FDRE \sglc_f_reg[26] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[26]_i_1_n_0 ),
        .Q(Q[19]),
        .R(SR));
  FDRE \sglc_f_reg[27] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[27]_i_1_n_0 ),
        .Q(Q[20]),
        .R(SR));
  FDRE \sglc_f_reg[28] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[28]_i_1_n_0 ),
        .Q(p_1_in[0]),
        .R(SR));
  FDRE \sglc_f_reg[29] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[29]_i_1_n_0 ),
        .Q(p_1_in[1]),
        .R(SR));
  FDRE \sglc_f_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[2]_i_1_n_0 ),
        .Q(\sglc_f_reg_n_0_[2] ),
        .R(SR));
  FDRE \sglc_f_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(p_1_in[2]),
        .R(SR));
  FDRE \sglc_f_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[21]),
        .R(SR));
  FDRE \sglc_f_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[3]_i_1_n_0 ),
        .Q(\sglc_f_reg_n_0_[3] ),
        .R(SR));
  FDRE \sglc_f_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[4]_i_1_n_0 ),
        .Q(\sglc_f_reg_n_0_[4] ),
        .R(SR));
  FDRE \sglc_f_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[5]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \sglc_f_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[6]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \sglc_f_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[7]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \sglc_f_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[8]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \sglc_f_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\sglc_f[9]_i_1_n_0 ),
        .Q(p_0_in[4]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00010501)) 
    \sglc_i[42]_i_10 
       (.I0(sfpu_dsp_c[16]),
        .I1(sfpu_dsp_c[15]),
        .I2(sfpu_dsp_c[17]),
        .I3(sfpu_dsp_c[24]),
        .I4(sfpu_dsp_c[18]),
        .O(\sglc_i[42]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000407)) 
    \sglc_i[42]_i_3 
       (.I0(sfpu_dsp_c[6]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[5]),
        .I3(sfpu_dsp_c[3]),
        .I4(sfpu_dsp_c[4]),
        .I5(\sglc_i[42]_i_7_n_0 ),
        .O(\sfpu_dsp_c[29] ));
  LUT6 #(
    .INIT(64'h0000000000000407)) 
    \sglc_i[42]_i_4 
       (.I0(sfpu_dsp_c[12]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[11]),
        .I3(sfpu_dsp_c[9]),
        .I4(sfpu_dsp_c[10]),
        .I5(\sglc_i[42]_i_8_n_0 ),
        .O(\sfpu_dsp_c[35] ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \sglc_i[42]_i_5 
       (.I0(sfpu_dsp_c[23]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[22]),
        .I3(sfpu_dsp_c[21]),
        .I4(\sglc_i[42]_i_9_n_0 ),
        .O(\sfpu_dsp_c[46] ));
  LUT6 #(
    .INIT(64'hFFFFFBF8FFFFFFFF)) 
    \sglc_i[42]_i_6 
       (.I0(sfpu_dsp_c[15]),
        .I1(sfpu_dsp_c[24]),
        .I2(sfpu_dsp_c[14]),
        .I3(sfpu_dsp_c[12]),
        .I4(sfpu_dsp_c[13]),
        .I5(\sglc_i[42]_i_10_n_0 ),
        .O(\sfpu_dsp_c[38] ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \sglc_i[42]_i_7 
       (.I0(sfpu_dsp_c[0]),
        .I1(sfpu_dsp_c[3]),
        .I2(sfpu_dsp_c[24]),
        .I3(sfpu_dsp_c[2]),
        .I4(sfpu_dsp_c[1]),
        .O(\sglc_i[42]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFFEC)) 
    \sglc_i[42]_i_8 
       (.I0(sfpu_dsp_c[9]),
        .I1(sfpu_dsp_c[8]),
        .I2(sfpu_dsp_c[24]),
        .I3(sfpu_dsp_c[7]),
        .I4(sfpu_dsp_c[6]),
        .O(\sglc_i[42]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFFEC)) 
    \sglc_i[42]_i_9 
       (.I0(sfpu_dsp_c[21]),
        .I1(sfpu_dsp_c[20]),
        .I2(sfpu_dsp_c[24]),
        .I3(sfpu_dsp_c[19]),
        .I4(sfpu_dsp_c[18]),
        .O(\sglc_i[42]_i_9_n_0 ));
  FDRE \sglc_i_reg[41] 
       (.C(clk),
        .CE(\sglc_i_reg[41]_0 ),
        .D(\sglc_i_reg[42]_2 [0]),
        .Q(\sglc_i_reg[44]_1 [0]),
        .R(SR));
  FDRE \sglc_i_reg[42] 
       (.C(clk),
        .CE(\sglc_i_reg[41]_0 ),
        .D(\sglc_i_reg[42]_2 [1]),
        .Q(\sglc_i_reg[44]_1 [1]),
        .R(SR));
  FDRE \sglc_i_reg[43] 
       (.C(clk),
        .CE(\sglc_i_reg[41]_0 ),
        .D(p_5_in),
        .Q(sglc_inf),
        .R(SR));
  FDRE \sglc_i_reg[44] 
       (.C(clk),
        .CE(\sglc_i_reg[41]_0 ),
        .D(\sglc_i_reg[44]_2 ),
        .Q(\sglc_i_reg[44]_1 [2]),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \stat[1]_i_4 
       (.I0(\sglc_f_reg[28]_0 ),
        .I1(\stat_reg[1]_0 [3]),
        .O(\stat_reg[3] ));
endmodule

module sfpu_sadd
   (O,
    fctl_ccmd_add_reg,
    fctl_ccmd_add_reg_0,
    fctl_ccmd_add_reg_1,
    fctl_ccmd_add_reg_2,
    fctl_ccmd_add_reg_3,
    fctl_ccmd_add_reg_4,
    fctl_ccmd_add_reg_5,
    fctl_ccmd_add_reg_6,
    \cbus[7]_INST_0_i_8_0 ,
    sglc_sr_flag2,
    \cbus[7]_INST_0_i_10_0 ,
    sglc_f0,
    \cbus[30]_INST_0_i_23_0 ,
    \cbus[31]_INST_0_i_65_0 ,
    CO,
    \cbus[0]_INST_0_i_2 ,
    p_0_in1_in,
    S,
    \cbus[4]_INST_0_i_6 ,
    \cbus[8]_INST_0_i_2 ,
    \cbus[12]_INST_0_i_3 ,
    \cbus[16]_INST_0_i_3 ,
    \cbus[20]_INST_0_i_10 ,
    \cbus[19]_INST_0_i_8 ,
    \cbus[31]_INST_0_i_51 ,
    \sglc_i_reg[42] ,
    fctl_ccmd_add,
    \cbus[22]_INST_0_i_1 ,
    \cbus[4] ,
    \cbus[20]_INST_0_i_9 );
  output [3:0]O;
  output [3:0]fctl_ccmd_add_reg;
  output [3:0]fctl_ccmd_add_reg_0;
  output [3:0]fctl_ccmd_add_reg_1;
  output [3:0]fctl_ccmd_add_reg_2;
  output [3:0]fctl_ccmd_add_reg_3;
  output [3:0]fctl_ccmd_add_reg_4;
  output [3:0]fctl_ccmd_add_reg_5;
  output fctl_ccmd_add_reg_6;
  output \cbus[7]_INST_0_i_8_0 ;
  output sglc_sr_flag2;
  output [0:0]\cbus[7]_INST_0_i_10_0 ;
  output [27:0]sglc_f0;
  output \cbus[30]_INST_0_i_23_0 ;
  output \cbus[31]_INST_0_i_65_0 ;
  output [0:0]CO;
  input \cbus[0]_INST_0_i_2 ;
  input [30:0]p_0_in1_in;
  input [3:0]S;
  input [3:0]\cbus[4]_INST_0_i_6 ;
  input [3:0]\cbus[8]_INST_0_i_2 ;
  input [3:0]\cbus[12]_INST_0_i_3 ;
  input [3:0]\cbus[16]_INST_0_i_3 ;
  input [3:0]\cbus[20]_INST_0_i_10 ;
  input [3:0]\cbus[19]_INST_0_i_8 ;
  input [3:0]\cbus[31]_INST_0_i_51 ;
  input \sglc_i_reg[42] ;
  input fctl_ccmd_add;
  input \cbus[22]_INST_0_i_1 ;
  input [0:0]\cbus[4] ;
  input [0:0]\cbus[20]_INST_0_i_9 ;

  wire \<const0> ;
  wire [0:0]CO;
  wire [3:0]O;
  wire [3:0]S;
  wire \cbus[0]_INST_0_i_2 ;
  wire [3:0]\cbus[12]_INST_0_i_3 ;
  wire \cbus[12]_INST_0_i_5_n_0 ;
  wire \cbus[12]_INST_0_i_5_n_1 ;
  wire \cbus[12]_INST_0_i_5_n_2 ;
  wire \cbus[12]_INST_0_i_5_n_3 ;
  wire \cbus[12]_INST_0_i_6_n_0 ;
  wire \cbus[12]_INST_0_i_7_n_0 ;
  wire \cbus[12]_INST_0_i_8_n_0 ;
  wire \cbus[12]_INST_0_i_9_n_0 ;
  wire \cbus[16]_INST_0_i_10_n_0 ;
  wire [3:0]\cbus[16]_INST_0_i_3 ;
  wire \cbus[16]_INST_0_i_6_n_0 ;
  wire \cbus[16]_INST_0_i_6_n_1 ;
  wire \cbus[16]_INST_0_i_6_n_2 ;
  wire \cbus[16]_INST_0_i_6_n_3 ;
  wire \cbus[16]_INST_0_i_7_n_0 ;
  wire \cbus[16]_INST_0_i_8_n_0 ;
  wire \cbus[16]_INST_0_i_9_n_0 ;
  wire \cbus[19]_INST_0_i_15_n_0 ;
  wire \cbus[19]_INST_0_i_16_n_0 ;
  wire \cbus[19]_INST_0_i_17_n_0 ;
  wire \cbus[19]_INST_0_i_18_n_0 ;
  wire [3:0]\cbus[19]_INST_0_i_8 ;
  wire \cbus[19]_INST_0_i_9_n_0 ;
  wire \cbus[19]_INST_0_i_9_n_1 ;
  wire \cbus[19]_INST_0_i_9_n_2 ;
  wire \cbus[19]_INST_0_i_9_n_3 ;
  wire [3:0]\cbus[20]_INST_0_i_10 ;
  wire [0:0]\cbus[20]_INST_0_i_9 ;
  wire \cbus[21]_INST_0_i_19_n_0 ;
  wire \cbus[21]_INST_0_i_19_n_1 ;
  wire \cbus[21]_INST_0_i_19_n_2 ;
  wire \cbus[21]_INST_0_i_19_n_3 ;
  wire \cbus[21]_INST_0_i_22_n_0 ;
  wire \cbus[21]_INST_0_i_23_n_0 ;
  wire \cbus[21]_INST_0_i_24_n_0 ;
  wire \cbus[21]_INST_0_i_25_n_0 ;
  wire \cbus[22]_INST_0_i_1 ;
  wire \cbus[22]_INST_0_i_15_n_0 ;
  wire \cbus[22]_INST_0_i_16_n_0 ;
  wire \cbus[22]_INST_0_i_17_n_0 ;
  wire \cbus[22]_INST_0_i_8_n_1 ;
  wire \cbus[22]_INST_0_i_8_n_2 ;
  wire \cbus[22]_INST_0_i_8_n_3 ;
  wire \cbus[30]_INST_0_i_22_n_0 ;
  wire \cbus[30]_INST_0_i_23_0 ;
  wire \cbus[30]_INST_0_i_23_n_0 ;
  wire \cbus[30]_INST_0_i_35_n_0 ;
  wire \cbus[31]_INST_0_i_49_n_0 ;
  wire [3:0]\cbus[31]_INST_0_i_51 ;
  wire \cbus[31]_INST_0_i_55_n_0 ;
  wire \cbus[31]_INST_0_i_56_n_0 ;
  wire \cbus[31]_INST_0_i_65_0 ;
  wire \cbus[31]_INST_0_i_65_n_0 ;
  wire \cbus[31]_INST_0_i_66_n_0 ;
  wire \cbus[3]_INST_0_i_4_n_0 ;
  wire \cbus[3]_INST_0_i_4_n_1 ;
  wire \cbus[3]_INST_0_i_4_n_2 ;
  wire \cbus[3]_INST_0_i_4_n_3 ;
  wire \cbus[3]_INST_0_i_5_n_0 ;
  wire \cbus[3]_INST_0_i_6_n_0 ;
  wire \cbus[3]_INST_0_i_7_n_0 ;
  wire \cbus[3]_INST_0_i_8_n_0 ;
  wire \cbus[3]_INST_0_i_9_n_0 ;
  wire [0:0]\cbus[4] ;
  wire [3:0]\cbus[4]_INST_0_i_6 ;
  wire [0:0]\cbus[7]_INST_0_i_10_0 ;
  wire \cbus[7]_INST_0_i_10_n_0 ;
  wire \cbus[7]_INST_0_i_11_n_0 ;
  wire \cbus[7]_INST_0_i_12_n_0 ;
  wire \cbus[7]_INST_0_i_8_0 ;
  wire \cbus[7]_INST_0_i_8_n_0 ;
  wire \cbus[7]_INST_0_i_9_n_0 ;
  wire [3:0]\cbus[8]_INST_0_i_2 ;
  wire \cbus[8]_INST_0_i_5_n_0 ;
  wire \cbus[8]_INST_0_i_5_n_1 ;
  wire \cbus[8]_INST_0_i_5_n_2 ;
  wire \cbus[8]_INST_0_i_5_n_3 ;
  wire \cbus[8]_INST_0_i_6_n_0 ;
  wire \cbus[8]_INST_0_i_7_n_0 ;
  wire \cbus[8]_INST_0_i_8_n_0 ;
  wire \cbus[8]_INST_0_i_9_n_0 ;
  wire fctl_ccmd_add;
  wire [3:0]fctl_ccmd_add_reg;
  wire [3:0]fctl_ccmd_add_reg_0;
  wire [3:0]fctl_ccmd_add_reg_1;
  wire [3:0]fctl_ccmd_add_reg_2;
  wire [3:0]fctl_ccmd_add_reg_3;
  wire [3:0]fctl_ccmd_add_reg_4;
  wire [3:0]fctl_ccmd_add_reg_5;
  wire fctl_ccmd_add_reg_6;
  wire [30:0]p_0_in1_in;
  wire [27:0]sglc_f0;
  wire sglc_f_t_carry__0_n_0;
  wire sglc_f_t_carry__0_n_1;
  wire sglc_f_t_carry__0_n_2;
  wire sglc_f_t_carry__0_n_3;
  wire sglc_f_t_carry__1_n_0;
  wire sglc_f_t_carry__1_n_1;
  wire sglc_f_t_carry__1_n_2;
  wire sglc_f_t_carry__1_n_3;
  wire sglc_f_t_carry__2_n_0;
  wire sglc_f_t_carry__2_n_1;
  wire sglc_f_t_carry__2_n_2;
  wire sglc_f_t_carry__2_n_3;
  wire sglc_f_t_carry__3_n_0;
  wire sglc_f_t_carry__3_n_1;
  wire sglc_f_t_carry__3_n_2;
  wire sglc_f_t_carry__3_n_3;
  wire sglc_f_t_carry__4_n_0;
  wire sglc_f_t_carry__4_n_1;
  wire sglc_f_t_carry__4_n_2;
  wire sglc_f_t_carry__4_n_3;
  wire sglc_f_t_carry__5_n_0;
  wire sglc_f_t_carry__5_n_1;
  wire sglc_f_t_carry__5_n_2;
  wire sglc_f_t_carry__5_n_3;
  wire sglc_f_t_carry__6_n_1;
  wire sglc_f_t_carry__6_n_2;
  wire sglc_f_t_carry__6_n_3;
  wire sglc_f_t_carry_n_0;
  wire sglc_f_t_carry_n_1;
  wire sglc_f_t_carry_n_2;
  wire sglc_f_t_carry_n_3;
  wire \sglc_i_reg[42] ;
  wire [19:1]sglc_r_fadd;
  wire sglc_sr_flag2;

  GND GND
       (.G(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[12]_INST_0_i_5 
       (.CI(\cbus[8]_INST_0_i_5_n_0 ),
        .CO({\cbus[12]_INST_0_i_5_n_0 ,\cbus[12]_INST_0_i_5_n_1 ,\cbus[12]_INST_0_i_5_n_2 ,\cbus[12]_INST_0_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(sglc_f0[11:8]),
        .S({\cbus[12]_INST_0_i_6_n_0 ,\cbus[12]_INST_0_i_7_n_0 ,\cbus[12]_INST_0_i_8_n_0 ,\cbus[12]_INST_0_i_9_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_6 
       (.I0(fctl_ccmd_add_reg_1[0]),
        .O(\cbus[12]_INST_0_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_7 
       (.I0(fctl_ccmd_add_reg_0[3]),
        .O(\cbus[12]_INST_0_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_8 
       (.I0(fctl_ccmd_add_reg_0[2]),
        .O(\cbus[12]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[12]_INST_0_i_9 
       (.I0(fctl_ccmd_add_reg_0[1]),
        .O(\cbus[12]_INST_0_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[16]_INST_0_i_10 
       (.I0(fctl_ccmd_add_reg_1[1]),
        .O(\cbus[16]_INST_0_i_10_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[16]_INST_0_i_6 
       (.CI(\cbus[12]_INST_0_i_5_n_0 ),
        .CO({\cbus[16]_INST_0_i_6_n_0 ,\cbus[16]_INST_0_i_6_n_1 ,\cbus[16]_INST_0_i_6_n_2 ,\cbus[16]_INST_0_i_6_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(sglc_f0[15:12]),
        .S({\cbus[16]_INST_0_i_7_n_0 ,\cbus[16]_INST_0_i_8_n_0 ,\cbus[16]_INST_0_i_9_n_0 ,\cbus[16]_INST_0_i_10_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[16]_INST_0_i_7 
       (.I0(fctl_ccmd_add_reg_2[0]),
        .O(\cbus[16]_INST_0_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[16]_INST_0_i_8 
       (.I0(fctl_ccmd_add_reg_1[3]),
        .O(\cbus[16]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[16]_INST_0_i_9 
       (.I0(fctl_ccmd_add_reg_1[2]),
        .O(\cbus[16]_INST_0_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[19]_INST_0_i_15 
       (.I0(fctl_ccmd_add_reg_3[0]),
        .O(\cbus[19]_INST_0_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[19]_INST_0_i_16 
       (.I0(fctl_ccmd_add_reg_2[3]),
        .O(\cbus[19]_INST_0_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[19]_INST_0_i_17 
       (.I0(fctl_ccmd_add_reg_2[2]),
        .O(\cbus[19]_INST_0_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[19]_INST_0_i_18 
       (.I0(fctl_ccmd_add_reg_2[1]),
        .O(\cbus[19]_INST_0_i_18_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[19]_INST_0_i_9 
       (.CI(\cbus[16]_INST_0_i_6_n_0 ),
        .CO({\cbus[19]_INST_0_i_9_n_0 ,\cbus[19]_INST_0_i_9_n_1 ,\cbus[19]_INST_0_i_9_n_2 ,\cbus[19]_INST_0_i_9_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(sglc_f0[19:16]),
        .S({\cbus[19]_INST_0_i_15_n_0 ,\cbus[19]_INST_0_i_16_n_0 ,\cbus[19]_INST_0_i_17_n_0 ,\cbus[19]_INST_0_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[21]_INST_0_i_19 
       (.CI(\cbus[19]_INST_0_i_9_n_0 ),
        .CO({\cbus[21]_INST_0_i_19_n_0 ,\cbus[21]_INST_0_i_19_n_1 ,\cbus[21]_INST_0_i_19_n_2 ,\cbus[21]_INST_0_i_19_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(sglc_f0[23:20]),
        .S({\cbus[21]_INST_0_i_22_n_0 ,\cbus[21]_INST_0_i_23_n_0 ,\cbus[21]_INST_0_i_24_n_0 ,\cbus[21]_INST_0_i_25_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[21]_INST_0_i_22 
       (.I0(fctl_ccmd_add_reg_4[0]),
        .O(\cbus[21]_INST_0_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[21]_INST_0_i_23 
       (.I0(fctl_ccmd_add_reg_3[3]),
        .O(\cbus[21]_INST_0_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[21]_INST_0_i_24 
       (.I0(fctl_ccmd_add_reg_3[2]),
        .O(\cbus[21]_INST_0_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[21]_INST_0_i_25 
       (.I0(fctl_ccmd_add_reg_3[1]),
        .O(\cbus[21]_INST_0_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[22]_INST_0_i_15 
       (.I0(fctl_ccmd_add_reg_4[3]),
        .O(\cbus[22]_INST_0_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[22]_INST_0_i_16 
       (.I0(fctl_ccmd_add_reg_4[2]),
        .O(\cbus[22]_INST_0_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[22]_INST_0_i_17 
       (.I0(fctl_ccmd_add_reg_4[1]),
        .O(\cbus[22]_INST_0_i_17_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[22]_INST_0_i_8 
       (.CI(\cbus[21]_INST_0_i_19_n_0 ),
        .CO({CO,\cbus[22]_INST_0_i_8_n_1 ,\cbus[22]_INST_0_i_8_n_2 ,\cbus[22]_INST_0_i_8_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(sglc_f0[27:24]),
        .S({\cbus[20]_INST_0_i_9 ,\cbus[22]_INST_0_i_15_n_0 ,\cbus[22]_INST_0_i_16_n_0 ,\cbus[22]_INST_0_i_17_n_0 }));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \cbus[30]_INST_0_i_22 
       (.I0(sglc_f0[18]),
        .I1(fctl_ccmd_add_reg_5[3]),
        .I2(fctl_ccmd_add_reg_2[3]),
        .I3(sglc_f0[17]),
        .I4(fctl_ccmd_add_reg_2[2]),
        .I5(\cbus[31]_INST_0_i_49_n_0 ),
        .O(\cbus[30]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \cbus[30]_INST_0_i_23 
       (.I0(sglc_f0[22]),
        .I1(fctl_ccmd_add_reg_5[3]),
        .I2(fctl_ccmd_add_reg_3[3]),
        .I3(sglc_f0[21]),
        .I4(fctl_ccmd_add_reg_3[2]),
        .I5(\cbus[30]_INST_0_i_35_n_0 ),
        .O(\cbus[30]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[30]_INST_0_i_35 
       (.I0(fctl_ccmd_add_reg_3[0]),
        .I1(sglc_f0[19]),
        .I2(fctl_ccmd_add_reg_3[1]),
        .I3(fctl_ccmd_add_reg_5[3]),
        .I4(sglc_f0[20]),
        .O(\cbus[30]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \cbus[30]_INST_0_i_9 
       (.I0(\cbus[30]_INST_0_i_22_n_0 ),
        .I1(\cbus[30]_INST_0_i_23_n_0 ),
        .I2(\sglc_i_reg[42] ),
        .I3(\cbus[7]_INST_0_i_8_0 ),
        .I4(fctl_ccmd_add),
        .I5(\cbus[22]_INST_0_i_1 ),
        .O(fctl_ccmd_add_reg_6));
  LUT6 #(
    .INIT(64'hFFFFFEAEFFFFFFFF)) 
    \cbus[31]_INST_0_i_32 
       (.I0(\cbus[31]_INST_0_i_49_n_0 ),
        .I1(fctl_ccmd_add_reg_2[2]),
        .I2(fctl_ccmd_add_reg_5[3]),
        .I3(sglc_f0[17]),
        .I4(sglc_r_fadd[19]),
        .I5(\cbus[30]_INST_0_i_23_n_0 ),
        .O(\cbus[30]_INST_0_i_23_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \cbus[31]_INST_0_i_34 
       (.I0(sglc_r_fadd[1]),
        .I1(O[0]),
        .I2(\cbus[31]_INST_0_i_55_n_0 ),
        .I3(\cbus[31]_INST_0_i_56_n_0 ),
        .I4(\cbus[7]_INST_0_i_9_n_0 ),
        .I5(\cbus[7]_INST_0_i_8_n_0 ),
        .O(\cbus[7]_INST_0_i_8_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[31]_INST_0_i_49 
       (.I0(fctl_ccmd_add_reg_2[0]),
        .I1(sglc_f0[15]),
        .I2(fctl_ccmd_add_reg_2[1]),
        .I3(fctl_ccmd_add_reg_5[3]),
        .I4(sglc_f0[16]),
        .O(\cbus[31]_INST_0_i_49_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[31]_INST_0_i_50 
       (.I0(sglc_f0[18]),
        .I1(fctl_ccmd_add_reg_5[3]),
        .I2(fctl_ccmd_add_reg_2[3]),
        .O(sglc_r_fadd[19]));
  LUT6 #(
    .INIT(64'hFFBBFCB8FFFFFFFF)) 
    \cbus[31]_INST_0_i_53 
       (.I0(sglc_f0[24]),
        .I1(fctl_ccmd_add_reg_5[3]),
        .I2(fctl_ccmd_add_reg_4[1]),
        .I3(sglc_f0[23]),
        .I4(fctl_ccmd_add_reg_4[0]),
        .I5(\cbus[31]_INST_0_i_65_n_0 ),
        .O(\cbus[31]_INST_0_i_65_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[31]_INST_0_i_54 
       (.I0(sglc_f0[0]),
        .I1(fctl_ccmd_add_reg_5[3]),
        .I2(O[1]),
        .O(sglc_r_fadd[1]));
  LUT5 #(
    .INIT(32'h00053305)) 
    \cbus[31]_INST_0_i_55 
       (.I0(O[2]),
        .I1(sglc_f0[1]),
        .I2(O[3]),
        .I3(fctl_ccmd_add_reg_5[3]),
        .I4(sglc_f0[2]),
        .O(\cbus[31]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \cbus[31]_INST_0_i_56 
       (.I0(sglc_f0[6]),
        .I1(fctl_ccmd_add_reg_5[3]),
        .I2(fctl_ccmd_add_reg[3]),
        .I3(sglc_f0[5]),
        .I4(fctl_ccmd_add_reg[2]),
        .I5(\cbus[31]_INST_0_i_66_n_0 ),
        .O(\cbus[31]_INST_0_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h00053305)) 
    \cbus[31]_INST_0_i_65 
       (.I0(fctl_ccmd_add_reg_4[2]),
        .I1(sglc_f0[25]),
        .I2(fctl_ccmd_add_reg_4[3]),
        .I3(fctl_ccmd_add_reg_5[3]),
        .I4(sglc_f0[26]),
        .O(\cbus[31]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[31]_INST_0_i_66 
       (.I0(fctl_ccmd_add_reg[0]),
        .I1(sglc_f0[3]),
        .I2(fctl_ccmd_add_reg[1]),
        .I3(fctl_ccmd_add_reg_5[3]),
        .I4(sglc_f0[4]),
        .O(\cbus[31]_INST_0_i_66_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[3]_INST_0_i_4 
       (.CI(\<const0> ),
        .CO({\cbus[3]_INST_0_i_4_n_0 ,\cbus[3]_INST_0_i_4_n_1 ,\cbus[3]_INST_0_i_4_n_2 ,\cbus[3]_INST_0_i_4_n_3 }),
        .CYINIT(\cbus[3]_INST_0_i_5_n_0 ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(sglc_f0[3:0]),
        .S({\cbus[3]_INST_0_i_6_n_0 ,\cbus[3]_INST_0_i_7_n_0 ,\cbus[3]_INST_0_i_8_n_0 ,\cbus[3]_INST_0_i_9_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[3]_INST_0_i_5 
       (.I0(O[0]),
        .O(\cbus[3]_INST_0_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[3]_INST_0_i_6 
       (.I0(fctl_ccmd_add_reg[0]),
        .O(\cbus[3]_INST_0_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[3]_INST_0_i_7 
       (.I0(O[3]),
        .O(\cbus[3]_INST_0_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[3]_INST_0_i_8 
       (.I0(O[2]),
        .O(\cbus[3]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[3]_INST_0_i_9 
       (.I0(O[1]),
        .O(\cbus[3]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[4]_INST_0_i_1 
       (.I0(\cbus[7]_INST_0_i_10_0 ),
        .I1(\cbus[4] ),
        .O(sglc_sr_flag2));
  LUT6 #(
    .INIT(64'h0000000808080008)) 
    \cbus[7]_INST_0_i_10 
       (.I0(\cbus[31]_INST_0_i_56_n_0 ),
        .I1(\cbus[31]_INST_0_i_55_n_0 ),
        .I2(O[0]),
        .I3(O[1]),
        .I4(fctl_ccmd_add_reg_5[3]),
        .I5(sglc_f0[0]),
        .O(\cbus[7]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cbus[7]_INST_0_i_11 
       (.I0(fctl_ccmd_add_reg_1[0]),
        .I1(sglc_f0[11]),
        .I2(fctl_ccmd_add_reg_1[1]),
        .I3(fctl_ccmd_add_reg_5[3]),
        .I4(sglc_f0[12]),
        .O(\cbus[7]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00053305)) 
    \cbus[7]_INST_0_i_12 
       (.I0(fctl_ccmd_add_reg_0[2]),
        .I1(sglc_f0[9]),
        .I2(fctl_ccmd_add_reg_0[3]),
        .I3(fctl_ccmd_add_reg_5[3]),
        .I4(sglc_f0[10]),
        .O(\cbus[7]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \cbus[7]_INST_0_i_6 
       (.I0(\cbus[30]_INST_0_i_22_n_0 ),
        .I1(\cbus[30]_INST_0_i_23_n_0 ),
        .I2(\sglc_i_reg[42] ),
        .I3(\cbus[7]_INST_0_i_8_n_0 ),
        .I4(\cbus[7]_INST_0_i_9_n_0 ),
        .I5(\cbus[7]_INST_0_i_10_n_0 ),
        .O(\cbus[7]_INST_0_i_10_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \cbus[7]_INST_0_i_8 
       (.I0(sglc_f0[14]),
        .I1(fctl_ccmd_add_reg_5[3]),
        .I2(fctl_ccmd_add_reg_1[3]),
        .I3(sglc_f0[13]),
        .I4(fctl_ccmd_add_reg_1[2]),
        .I5(\cbus[7]_INST_0_i_11_n_0 ),
        .O(\cbus[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFBBFCB8FFFFFFFF)) 
    \cbus[7]_INST_0_i_9 
       (.I0(sglc_f0[8]),
        .I1(fctl_ccmd_add_reg_5[3]),
        .I2(fctl_ccmd_add_reg_0[1]),
        .I3(sglc_f0[7]),
        .I4(fctl_ccmd_add_reg_0[0]),
        .I5(\cbus[7]_INST_0_i_12_n_0 ),
        .O(\cbus[7]_INST_0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cbus[8]_INST_0_i_5 
       (.CI(\cbus[3]_INST_0_i_4_n_0 ),
        .CO({\cbus[8]_INST_0_i_5_n_0 ,\cbus[8]_INST_0_i_5_n_1 ,\cbus[8]_INST_0_i_5_n_2 ,\cbus[8]_INST_0_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(sglc_f0[7:4]),
        .S({\cbus[8]_INST_0_i_6_n_0 ,\cbus[8]_INST_0_i_7_n_0 ,\cbus[8]_INST_0_i_8_n_0 ,\cbus[8]_INST_0_i_9_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[8]_INST_0_i_6 
       (.I0(fctl_ccmd_add_reg_0[0]),
        .O(\cbus[8]_INST_0_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[8]_INST_0_i_7 
       (.I0(fctl_ccmd_add_reg[3]),
        .O(\cbus[8]_INST_0_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[8]_INST_0_i_8 
       (.I0(fctl_ccmd_add_reg[2]),
        .O(\cbus[8]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cbus[8]_INST_0_i_9 
       (.I0(fctl_ccmd_add_reg[1]),
        .O(\cbus[8]_INST_0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sglc_f_t_carry
       (.CI(\<const0> ),
        .CO({sglc_f_t_carry_n_0,sglc_f_t_carry_n_1,sglc_f_t_carry_n_2,sglc_f_t_carry_n_3}),
        .CYINIT(\cbus[0]_INST_0_i_2 ),
        .DI(p_0_in1_in[3:0]),
        .O(O),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sglc_f_t_carry__0
       (.CI(sglc_f_t_carry_n_0),
        .CO({sglc_f_t_carry__0_n_0,sglc_f_t_carry__0_n_1,sglc_f_t_carry__0_n_2,sglc_f_t_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(p_0_in1_in[7:4]),
        .O(fctl_ccmd_add_reg),
        .S(\cbus[4]_INST_0_i_6 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sglc_f_t_carry__1
       (.CI(sglc_f_t_carry__0_n_0),
        .CO({sglc_f_t_carry__1_n_0,sglc_f_t_carry__1_n_1,sglc_f_t_carry__1_n_2,sglc_f_t_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(p_0_in1_in[11:8]),
        .O(fctl_ccmd_add_reg_0),
        .S(\cbus[8]_INST_0_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sglc_f_t_carry__2
       (.CI(sglc_f_t_carry__1_n_0),
        .CO({sglc_f_t_carry__2_n_0,sglc_f_t_carry__2_n_1,sglc_f_t_carry__2_n_2,sglc_f_t_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(p_0_in1_in[15:12]),
        .O(fctl_ccmd_add_reg_1),
        .S(\cbus[12]_INST_0_i_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sglc_f_t_carry__3
       (.CI(sglc_f_t_carry__2_n_0),
        .CO({sglc_f_t_carry__3_n_0,sglc_f_t_carry__3_n_1,sglc_f_t_carry__3_n_2,sglc_f_t_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(p_0_in1_in[19:16]),
        .O(fctl_ccmd_add_reg_2),
        .S(\cbus[16]_INST_0_i_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sglc_f_t_carry__4
       (.CI(sglc_f_t_carry__3_n_0),
        .CO({sglc_f_t_carry__4_n_0,sglc_f_t_carry__4_n_1,sglc_f_t_carry__4_n_2,sglc_f_t_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(p_0_in1_in[23:20]),
        .O(fctl_ccmd_add_reg_3),
        .S(\cbus[20]_INST_0_i_10 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sglc_f_t_carry__5
       (.CI(sglc_f_t_carry__4_n_0),
        .CO({sglc_f_t_carry__5_n_0,sglc_f_t_carry__5_n_1,sglc_f_t_carry__5_n_2,sglc_f_t_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI(p_0_in1_in[27:24]),
        .O(fctl_ccmd_add_reg_4),
        .S(\cbus[19]_INST_0_i_8 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sglc_f_t_carry__6
       (.CI(sglc_f_t_carry__5_n_0),
        .CO({sglc_f_t_carry__6_n_1,sglc_f_t_carry__6_n_2,sglc_f_t_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,p_0_in1_in[30:28]}),
        .O(fctl_ccmd_add_reg_5),
        .S(\cbus[31]_INST_0_i_51 ));
endmodule

module sfpu_sdiv
   (\sglb_f_reg[29] ,
    sglc_e,
    SR,
    cbus,
    \fquo_reg[3]_0 ,
    \fquo_reg[19]_0 ,
    \fquo_reg[19]_1 ,
    \fquo_reg[2]_0 ,
    \fquo_reg[19]_2 ,
    \fquo_reg[19]_3 ,
    \fquo_reg[19]_4 ,
    \fquo_reg[2]_1 ,
    \fquo_reg[5]_0 ,
    \fquo_reg[6]_0 ,
    \fquo_reg[11]_0 ,
    \fquo_reg[13]_0 ,
    \fquo_reg[15]_0 ,
    \fquo_reg[16]_0 ,
    \fquo_reg[6]_1 ,
    \fquo_reg[7]_0 ,
    \fquo_reg[8]_0 ,
    \fquo_reg[9]_0 ,
    \fquo_reg[11]_1 ,
    \fquo_reg[13]_1 ,
    \fquo_reg[16]_1 ,
    \fquo_reg[17]_0 ,
    \den_r_reg[49]_0 ,
    sglc_zer0,
    \fquo_reg[0]_0 ,
    \fquo_reg[1]_0 ,
    \fquo_reg[19]_5 ,
    den,
    \cbus[24]_INST_0_i_4 ,
    sgla_r_0,
    S,
    \cbus[27]_INST_0_i_5 ,
    \sglc_e[8]_i_4 ,
    rst_n,
    \cbus[8] ,
    Q,
    \cbus[8]_0 ,
    \cbus[8]_1 ,
    .cbus_0_sp_1(cbus_0_sn_1),
    \cbus[8]_2 ,
    \cbus[8]_3 ,
    \cbus[7] ,
    \cbus[7]_0 ,
    \cbus[0]_0 ,
    \cbus[0]_1 ,
    \cbus[8]_4 ,
    \cbus[8]_5 ,
    \cbus[1]_INST_0_i_1 ,
    \cbus[2]_INST_0_i_1 ,
    \cbus[11]_INST_0_i_1 ,
    \cbus[14]_INST_0_i_1 ,
    \cbus[15]_INST_0_i_1 ,
    \cbus[20]_INST_0_i_2 ,
    \cbus[17]_INST_0_i_1 ,
    \cbus[19]_INST_0_i_1 ,
    \cbus[20]_INST_0_i_1 ,
    fctl_load_d__4,
    rem4_carry,
    \dso_r_reg[24]_0 ,
    \sglc_f_reg[5] ,
    E,
    clk,
    D);
  output [0:0]\sglb_f_reg[29] ;
  output [8:0]sglc_e;
  output [0:0]SR;
  output [0:0]cbus;
  output \fquo_reg[3]_0 ;
  output \fquo_reg[19]_0 ;
  output [1:0]\fquo_reg[19]_1 ;
  output \fquo_reg[2]_0 ;
  output \fquo_reg[19]_2 ;
  output \fquo_reg[19]_3 ;
  output \fquo_reg[19]_4 ;
  output \fquo_reg[2]_1 ;
  output \fquo_reg[5]_0 ;
  output \fquo_reg[6]_0 ;
  output \fquo_reg[11]_0 ;
  output \fquo_reg[13]_0 ;
  output \fquo_reg[15]_0 ;
  output \fquo_reg[16]_0 ;
  output \fquo_reg[6]_1 ;
  output \fquo_reg[7]_0 ;
  output \fquo_reg[8]_0 ;
  output \fquo_reg[9]_0 ;
  output \fquo_reg[11]_1 ;
  output \fquo_reg[13]_1 ;
  output \fquo_reg[16]_1 ;
  output \fquo_reg[17]_0 ;
  output [25:0]\den_r_reg[49]_0 ;
  output sglc_zer0;
  output \fquo_reg[0]_0 ;
  output \fquo_reg[1]_0 ;
  output \fquo_reg[19]_5 ;
  input [28:0]den;
  input \cbus[24]_INST_0_i_4 ;
  input [38:0]sgla_r_0;
  input [3:0]S;
  input [3:0]\cbus[27]_INST_0_i_5 ;
  input [0:0]\sglc_e[8]_i_4 ;
  input rst_n;
  input \cbus[8] ;
  input [0:0]Q;
  input \cbus[8]_0 ;
  input \cbus[8]_1 ;
  input \cbus[8]_2 ;
  input \cbus[8]_3 ;
  input \cbus[7] ;
  input \cbus[7]_0 ;
  input \cbus[0]_0 ;
  input \cbus[0]_1 ;
  input \cbus[8]_4 ;
  input \cbus[8]_5 ;
  input \cbus[1]_INST_0_i_1 ;
  input \cbus[2]_INST_0_i_1 ;
  input \cbus[11]_INST_0_i_1 ;
  input \cbus[14]_INST_0_i_1 ;
  input \cbus[15]_INST_0_i_1 ;
  input \cbus[20]_INST_0_i_2 ;
  input \cbus[17]_INST_0_i_1 ;
  input \cbus[19]_INST_0_i_1 ;
  input \cbus[20]_INST_0_i_1 ;
  input fctl_load_d__4;
  input [0:0]rem4_carry;
  input [24:0]\dso_r_reg[24]_0 ;
  input \sglc_f_reg[5] ;
  input [0:0]E;
  input clk;
  input [0:0]D;
  input cbus_0_sn_1;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [0:0]cbus;
  wire \cbus[0]_0 ;
  wire \cbus[0]_1 ;
  wire \cbus[11]_INST_0_i_1 ;
  wire \cbus[14]_INST_0_i_1 ;
  wire \cbus[15]_INST_0_i_1 ;
  wire \cbus[17]_INST_0_i_1 ;
  wire \cbus[19]_INST_0_i_1 ;
  wire \cbus[1]_INST_0_i_1 ;
  wire \cbus[20]_INST_0_i_1 ;
  wire \cbus[20]_INST_0_i_2 ;
  wire \cbus[24]_INST_0_i_4 ;
  wire [3:0]\cbus[27]_INST_0_i_5 ;
  wire \cbus[2]_INST_0_i_1 ;
  wire \cbus[30]_INST_0_i_36_n_0 ;
  wire \cbus[30]_INST_0_i_37_n_0 ;
  wire \cbus[30]_INST_0_i_38_n_0 ;
  wire \cbus[30]_INST_0_i_40_n_0 ;
  wire \cbus[30]_INST_0_i_41_n_0 ;
  wire \cbus[7] ;
  wire \cbus[7]_0 ;
  wire \cbus[8] ;
  wire \cbus[8]_0 ;
  wire \cbus[8]_1 ;
  wire \cbus[8]_2 ;
  wire \cbus[8]_3 ;
  wire \cbus[8]_4 ;
  wire \cbus[8]_5 ;
  wire cbus_0_sn_1;
  wire clk;
  wire [28:0]den;
  wire [48:48]den_r;
  wire [25:0]\den_r_reg[49]_0 ;
  wire [24:0]dso_r;
  wire [24:0]\dso_r_reg[24]_0 ;
  wire fctl_load_d__4;
  wire fdiv_n_1;
  wire fdiv_n_2;
  wire fdiv_n_3;
  wire \fquo_reg[0]_0 ;
  wire \fquo_reg[11]_0 ;
  wire \fquo_reg[11]_1 ;
  wire \fquo_reg[13]_0 ;
  wire \fquo_reg[13]_1 ;
  wire \fquo_reg[15]_0 ;
  wire \fquo_reg[16]_0 ;
  wire \fquo_reg[16]_1 ;
  wire \fquo_reg[17]_0 ;
  wire \fquo_reg[19]_0 ;
  wire [1:0]\fquo_reg[19]_1 ;
  wire \fquo_reg[19]_2 ;
  wire \fquo_reg[19]_3 ;
  wire \fquo_reg[19]_4 ;
  wire \fquo_reg[19]_5 ;
  wire \fquo_reg[1]_0 ;
  wire \fquo_reg[2]_0 ;
  wire \fquo_reg[2]_1 ;
  wire \fquo_reg[3]_0 ;
  wire \fquo_reg[5]_0 ;
  wire \fquo_reg[6]_0 ;
  wire \fquo_reg[6]_1 ;
  wire \fquo_reg[7]_0 ;
  wire \fquo_reg[8]_0 ;
  wire \fquo_reg[9]_0 ;
  wire \fquo_reg_n_0_[0] ;
  wire \fquo_reg_n_0_[10] ;
  wire \fquo_reg_n_0_[11] ;
  wire \fquo_reg_n_0_[12] ;
  wire \fquo_reg_n_0_[13] ;
  wire \fquo_reg_n_0_[14] ;
  wire \fquo_reg_n_0_[15] ;
  wire \fquo_reg_n_0_[16] ;
  wire \fquo_reg_n_0_[17] ;
  wire \fquo_reg_n_0_[1] ;
  wire \fquo_reg_n_0_[2] ;
  wire \fquo_reg_n_0_[3] ;
  wire \fquo_reg_n_0_[4] ;
  wire \fquo_reg_n_0_[5] ;
  wire \fquo_reg_n_0_[6] ;
  wire \fquo_reg_n_0_[7] ;
  wire \fquo_reg_n_0_[8] ;
  wire \fquo_reg_n_0_[9] ;
  wire [0:0]p_1_in5_in;
  wire [0:0]quo_0;
  wire [25:1]rem0;
  wire [0:0]rem4_carry;
  wire rst_n;
  wire [38:0]sgla_r_0;
  wire [0:0]\sglb_f_reg[29] ;
  wire [8:0]sglc_e;
  wire [0:0]\sglc_e[8]_i_4 ;
  wire \sglc_f_reg[5] ;
  wire sglc_zer0;

  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[10]_INST_0_i_2 
       (.I0(\fquo_reg_n_0_[1] ),
        .I1(\fquo_reg[19]_1 [1]),
        .I2(\fquo_reg_n_0_[0] ),
        .O(\fquo_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \cbus[11]_INST_0_i_5 
       (.I0(\cbus[11]_INST_0_i_1 ),
        .I1(cbus_0_sn_1),
        .I2(\fquo_reg_n_0_[2] ),
        .I3(\fquo_reg[19]_1 [1]),
        .I4(\fquo_reg_n_0_[1] ),
        .O(\fquo_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFEEEFE)) 
    \cbus[12]_INST_0_i_1 
       (.I0(\cbus[7] ),
        .I1(\cbus[7]_0 ),
        .I2(\fquo_reg_n_0_[2] ),
        .I3(\fquo_reg[19]_1 [1]),
        .I4(\fquo_reg_n_0_[3] ),
        .I5(cbus_0_sn_1),
        .O(\fquo_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFEEEFE)) 
    \cbus[13]_INST_0_i_1 
       (.I0(\cbus[8]_4 ),
        .I1(\cbus[8]_5 ),
        .I2(\fquo_reg_n_0_[3] ),
        .I3(\fquo_reg[19]_1 [1]),
        .I4(\fquo_reg_n_0_[4] ),
        .I5(cbus_0_sn_1),
        .O(\fquo_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \cbus[14]_INST_0_i_4 
       (.I0(cbus_0_sn_1),
        .I1(\fquo_reg_n_0_[5] ),
        .I2(\fquo_reg[19]_1 [1]),
        .I3(\fquo_reg_n_0_[4] ),
        .I4(\cbus[14]_INST_0_i_1 ),
        .O(\fquo_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \cbus[15]_INST_0_i_5 
       (.I0(cbus_0_sn_1),
        .I1(\fquo_reg_n_0_[6] ),
        .I2(\fquo_reg[19]_1 [1]),
        .I3(\fquo_reg_n_0_[5] ),
        .I4(\cbus[15]_INST_0_i_1 ),
        .O(\fquo_reg[6]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cbus[16]_INST_0_i_2 
       (.I0(\fquo_reg_n_0_[6] ),
        .I1(\fquo_reg[19]_1 [1]),
        .I2(\fquo_reg_n_0_[7] ),
        .I3(cbus_0_sn_1),
        .O(\fquo_reg[6]_1 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \cbus[17]_INST_0_i_5 
       (.I0(cbus_0_sn_1),
        .I1(\fquo_reg_n_0_[13] ),
        .I2(\fquo_reg[19]_1 [1]),
        .I3(\fquo_reg_n_0_[12] ),
        .I4(\cbus[17]_INST_0_i_1 ),
        .O(\fquo_reg[13]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cbus[17]_INST_0_i_6 
       (.I0(\fquo_reg_n_0_[7] ),
        .I1(\fquo_reg[19]_1 [1]),
        .I2(\fquo_reg_n_0_[8] ),
        .I3(cbus_0_sn_1),
        .O(\fquo_reg[7]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cbus[18]_INST_0_i_3 
       (.I0(\fquo_reg_n_0_[13] ),
        .I1(\fquo_reg[19]_1 [1]),
        .I2(\fquo_reg_n_0_[14] ),
        .I3(cbus_0_sn_1),
        .O(\fquo_reg[13]_1 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cbus[18]_INST_0_i_7 
       (.I0(\fquo_reg_n_0_[8] ),
        .I1(\fquo_reg[19]_1 [1]),
        .I2(\fquo_reg_n_0_[9] ),
        .I3(cbus_0_sn_1),
        .O(\fquo_reg[8]_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \cbus[19]_INST_0_i_3 
       (.I0(cbus_0_sn_1),
        .I1(\fquo_reg_n_0_[15] ),
        .I2(\fquo_reg[19]_1 [1]),
        .I3(\fquo_reg_n_0_[14] ),
        .I4(\cbus[19]_INST_0_i_1 ),
        .O(\fquo_reg[15]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cbus[19]_INST_0_i_4 
       (.I0(\fquo_reg_n_0_[9] ),
        .I1(\fquo_reg[19]_1 [1]),
        .I2(\fquo_reg_n_0_[10] ),
        .I3(cbus_0_sn_1),
        .O(\fquo_reg[9]_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \cbus[20]_INST_0_i_5 
       (.I0(cbus_0_sn_1),
        .I1(\fquo_reg_n_0_[16] ),
        .I2(\fquo_reg[19]_1 [1]),
        .I3(\fquo_reg_n_0_[15] ),
        .I4(\cbus[20]_INST_0_i_1 ),
        .O(\fquo_reg[16]_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \cbus[20]_INST_0_i_8 
       (.I0(cbus_0_sn_1),
        .I1(\fquo_reg_n_0_[11] ),
        .I2(\fquo_reg[19]_1 [1]),
        .I3(\fquo_reg_n_0_[10] ),
        .I4(\cbus[20]_INST_0_i_2 ),
        .O(\fquo_reg[11]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cbus[21]_INST_0_i_12 
       (.I0(\fquo_reg_n_0_[11] ),
        .I1(\fquo_reg[19]_1 [1]),
        .I2(\fquo_reg_n_0_[12] ),
        .I3(cbus_0_sn_1),
        .O(\fquo_reg[11]_1 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cbus[21]_INST_0_i_5 
       (.I0(\fquo_reg_n_0_[16] ),
        .I1(\fquo_reg[19]_1 [1]),
        .I2(\fquo_reg_n_0_[17] ),
        .I3(cbus_0_sn_1),
        .O(\fquo_reg[16]_1 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \cbus[22]_INST_0_i_4 
       (.I0(\fquo_reg_n_0_[17] ),
        .I1(\fquo_reg[19]_1 [1]),
        .I2(\fquo_reg[19]_1 [0]),
        .I3(cbus_0_sn_1),
        .O(\fquo_reg[17]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cbus[30]_INST_0_i_36 
       (.I0(\fquo_reg[19]_1 [0]),
        .I1(\fquo_reg_n_0_[15] ),
        .I2(\fquo_reg[19]_1 [1]),
        .I3(\fquo_reg_n_0_[14] ),
        .I4(\fquo_reg_n_0_[16] ),
        .O(\cbus[30]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEFA)) 
    \cbus[30]_INST_0_i_37 
       (.I0(\fquo_reg_n_0_[13] ),
        .I1(\fquo_reg_n_0_[14] ),
        .I2(\fquo_reg_n_0_[11] ),
        .I3(\fquo_reg[19]_1 [1]),
        .I4(\fquo_reg_n_0_[10] ),
        .I5(\fquo_reg_n_0_[12] ),
        .O(\cbus[30]_INST_0_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cbus[30]_INST_0_i_38 
       (.I0(\fquo_reg[19]_1 [0]),
        .I1(\fquo_reg[19]_1 [1]),
        .I2(\fquo_reg_n_0_[17] ),
        .O(\cbus[30]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEFA)) 
    \cbus[30]_INST_0_i_40 
       (.I0(\fquo_reg_n_0_[9] ),
        .I1(\fquo_reg_n_0_[10] ),
        .I2(\fquo_reg_n_0_[7] ),
        .I3(\fquo_reg[19]_1 [1]),
        .I4(\fquo_reg_n_0_[6] ),
        .I5(\fquo_reg_n_0_[8] ),
        .O(\cbus[30]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEFA)) 
    \cbus[30]_INST_0_i_41 
       (.I0(\fquo_reg_n_0_[5] ),
        .I1(\fquo_reg_n_0_[6] ),
        .I2(\fquo_reg_n_0_[3] ),
        .I3(\fquo_reg[19]_1 [1]),
        .I4(\fquo_reg_n_0_[2] ),
        .I5(\fquo_reg_n_0_[4] ),
        .O(\cbus[30]_INST_0_i_41_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ccmd_f[4]_i_1 
       (.I0(rst_n),
        .O(SR));
  FDRE \den_r_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D),
        .Q(\den_r_reg[49]_0 [0]),
        .R(SR));
  FDRE \den_r_reg[24] 
       (.C(clk),
        .CE(E),
        .D(rem0[1]),
        .Q(\den_r_reg[49]_0 [1]),
        .R(SR));
  FDRE \den_r_reg[25] 
       (.C(clk),
        .CE(E),
        .D(rem0[2]),
        .Q(\den_r_reg[49]_0 [2]),
        .R(SR));
  FDRE \den_r_reg[26] 
       (.C(clk),
        .CE(E),
        .D(rem0[3]),
        .Q(\den_r_reg[49]_0 [3]),
        .R(SR));
  FDRE \den_r_reg[27] 
       (.C(clk),
        .CE(E),
        .D(rem0[4]),
        .Q(\den_r_reg[49]_0 [4]),
        .R(SR));
  FDRE \den_r_reg[28] 
       (.C(clk),
        .CE(E),
        .D(rem0[5]),
        .Q(\den_r_reg[49]_0 [5]),
        .R(SR));
  FDRE \den_r_reg[29] 
       (.C(clk),
        .CE(E),
        .D(rem0[6]),
        .Q(\den_r_reg[49]_0 [6]),
        .R(SR));
  FDRE \den_r_reg[30] 
       (.C(clk),
        .CE(E),
        .D(rem0[7]),
        .Q(\den_r_reg[49]_0 [7]),
        .R(SR));
  FDRE \den_r_reg[31] 
       (.C(clk),
        .CE(E),
        .D(rem0[8]),
        .Q(\den_r_reg[49]_0 [8]),
        .R(SR));
  FDRE \den_r_reg[32] 
       (.C(clk),
        .CE(E),
        .D(rem0[9]),
        .Q(\den_r_reg[49]_0 [9]),
        .R(SR));
  FDRE \den_r_reg[33] 
       (.C(clk),
        .CE(E),
        .D(rem0[10]),
        .Q(\den_r_reg[49]_0 [10]),
        .R(SR));
  FDRE \den_r_reg[34] 
       (.C(clk),
        .CE(E),
        .D(rem0[11]),
        .Q(\den_r_reg[49]_0 [11]),
        .R(SR));
  FDRE \den_r_reg[35] 
       (.C(clk),
        .CE(E),
        .D(rem0[12]),
        .Q(\den_r_reg[49]_0 [12]),
        .R(SR));
  FDRE \den_r_reg[36] 
       (.C(clk),
        .CE(E),
        .D(rem0[13]),
        .Q(\den_r_reg[49]_0 [13]),
        .R(SR));
  FDRE \den_r_reg[37] 
       (.C(clk),
        .CE(E),
        .D(rem0[14]),
        .Q(\den_r_reg[49]_0 [14]),
        .R(SR));
  FDRE \den_r_reg[38] 
       (.C(clk),
        .CE(E),
        .D(rem0[15]),
        .Q(\den_r_reg[49]_0 [15]),
        .R(SR));
  FDRE \den_r_reg[39] 
       (.C(clk),
        .CE(E),
        .D(rem0[16]),
        .Q(\den_r_reg[49]_0 [16]),
        .R(SR));
  FDRE \den_r_reg[40] 
       (.C(clk),
        .CE(E),
        .D(rem0[17]),
        .Q(\den_r_reg[49]_0 [17]),
        .R(SR));
  FDRE \den_r_reg[41] 
       (.C(clk),
        .CE(E),
        .D(rem0[18]),
        .Q(\den_r_reg[49]_0 [18]),
        .R(SR));
  FDRE \den_r_reg[42] 
       (.C(clk),
        .CE(E),
        .D(rem0[19]),
        .Q(\den_r_reg[49]_0 [19]),
        .R(SR));
  FDRE \den_r_reg[43] 
       (.C(clk),
        .CE(E),
        .D(rem0[20]),
        .Q(\den_r_reg[49]_0 [20]),
        .R(SR));
  FDRE \den_r_reg[44] 
       (.C(clk),
        .CE(E),
        .D(rem0[21]),
        .Q(\den_r_reg[49]_0 [21]),
        .R(SR));
  FDRE \den_r_reg[45] 
       (.C(clk),
        .CE(E),
        .D(rem0[22]),
        .Q(\den_r_reg[49]_0 [22]),
        .R(SR));
  FDRE \den_r_reg[46] 
       (.C(clk),
        .CE(E),
        .D(rem0[23]),
        .Q(\den_r_reg[49]_0 [23]),
        .R(SR));
  FDRE \den_r_reg[47] 
       (.C(clk),
        .CE(E),
        .D(rem0[24]),
        .Q(\den_r_reg[49]_0 [24]),
        .R(SR));
  FDRE \den_r_reg[48] 
       (.C(clk),
        .CE(E),
        .D(rem0[25]),
        .Q(den_r),
        .R(SR));
  FDRE \den_r_reg[49] 
       (.C(clk),
        .CE(E),
        .D(\sglb_f_reg[29] ),
        .Q(\den_r_reg[49]_0 [25]),
        .R(SR));
  FDRE \dso_r_reg[0] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [0]),
        .Q(dso_r[0]),
        .R(SR));
  FDRE \dso_r_reg[10] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [10]),
        .Q(dso_r[10]),
        .R(SR));
  FDRE \dso_r_reg[11] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [11]),
        .Q(dso_r[11]),
        .R(SR));
  FDRE \dso_r_reg[12] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [12]),
        .Q(dso_r[12]),
        .R(SR));
  FDRE \dso_r_reg[13] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [13]),
        .Q(dso_r[13]),
        .R(SR));
  FDRE \dso_r_reg[14] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [14]),
        .Q(dso_r[14]),
        .R(SR));
  FDRE \dso_r_reg[15] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [15]),
        .Q(dso_r[15]),
        .R(SR));
  FDRE \dso_r_reg[16] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [16]),
        .Q(dso_r[16]),
        .R(SR));
  FDRE \dso_r_reg[17] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [17]),
        .Q(dso_r[17]),
        .R(SR));
  FDRE \dso_r_reg[18] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [18]),
        .Q(dso_r[18]),
        .R(SR));
  FDRE \dso_r_reg[19] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [19]),
        .Q(dso_r[19]),
        .R(SR));
  FDRE \dso_r_reg[1] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [1]),
        .Q(dso_r[1]),
        .R(SR));
  FDRE \dso_r_reg[20] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [20]),
        .Q(dso_r[20]),
        .R(SR));
  FDRE \dso_r_reg[21] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [21]),
        .Q(dso_r[21]),
        .R(SR));
  FDRE \dso_r_reg[22] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [22]),
        .Q(dso_r[22]),
        .R(SR));
  FDRE \dso_r_reg[23] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [23]),
        .Q(dso_r[23]),
        .R(SR));
  FDRE \dso_r_reg[24] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [24]),
        .Q(dso_r[24]),
        .R(SR));
  FDRE \dso_r_reg[2] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [2]),
        .Q(dso_r[2]),
        .R(SR));
  FDRE \dso_r_reg[3] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [3]),
        .Q(dso_r[3]),
        .R(SR));
  FDRE \dso_r_reg[4] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [4]),
        .Q(dso_r[4]),
        .R(SR));
  FDRE \dso_r_reg[5] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [5]),
        .Q(dso_r[5]),
        .R(SR));
  FDRE \dso_r_reg[6] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [6]),
        .Q(dso_r[6]),
        .R(SR));
  FDRE \dso_r_reg[7] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [7]),
        .Q(dso_r[7]),
        .R(SR));
  FDRE \dso_r_reg[8] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [8]),
        .Q(dso_r[8]),
        .R(SR));
  FDRE \dso_r_reg[9] 
       (.C(clk),
        .CE(fctl_load_d__4),
        .D(\dso_r_reg[24]_0 [9]),
        .Q(dso_r[9]),
        .R(SR));
  sfpu_fdiv fdiv
       (.D({p_1_in5_in,fdiv_n_1,fdiv_n_2,fdiv_n_3,quo_0}),
        .Q(Q),
        .S(S),
        .cbus(cbus),
        .\cbus[0]_0 ({\fquo_reg[19]_1 [1],\fquo_reg_n_0_[2] ,\fquo_reg_n_0_[1] ,\fquo_reg_n_0_[0] }),
        .\cbus[0]_1 (\cbus[0]_0 ),
        .\cbus[0]_2 (\cbus[0]_1 ),
        .\cbus[1]_INST_0_i_1 (\cbus[1]_INST_0_i_1 ),
        .\cbus[24]_INST_0_i_4 (\cbus[24]_INST_0_i_4 ),
        .\cbus[27]_INST_0_i_5 (\cbus[27]_INST_0_i_5 ),
        .\cbus[2]_INST_0_i_1 (\cbus[2]_INST_0_i_1 ),
        .\cbus[30]_INST_0_i_10 (\cbus[30]_INST_0_i_36_n_0 ),
        .\cbus[30]_INST_0_i_10_0 (\cbus[30]_INST_0_i_37_n_0 ),
        .\cbus[30]_INST_0_i_10_1 (\cbus[30]_INST_0_i_38_n_0 ),
        .\cbus[30]_INST_0_i_10_2 (\cbus[30]_INST_0_i_40_n_0 ),
        .\cbus[30]_INST_0_i_10_3 (\cbus[30]_INST_0_i_41_n_0 ),
        .\cbus[8] (\cbus[8] ),
        .\cbus[8]_0 (\fquo_reg[3]_0 ),
        .\cbus[8]_1 (\cbus[8]_0 ),
        .\cbus[8]_2 (\cbus[8]_1 ),
        .\cbus[8]_3 (\cbus[8]_2 ),
        .\cbus[8]_4 (\cbus[8]_3 ),
        .cbus_0_sp_1(cbus_0_sn_1),
        .den(den),
        .\den_r_reg[49] (\dso_r_reg[24]_0 ),
        .dso_r(dso_r),
        .fctl_load_d__4(fctl_load_d__4),
        .\fquo_reg[0] (\fquo_reg[0]_0 ),
        .\fquo_reg[19] (\fquo_reg[19]_0 ),
        .\fquo_reg[19]_0 (\fquo_reg[19]_2 ),
        .\fquo_reg[19]_1 (\fquo_reg[19]_3 ),
        .\fquo_reg[19]_2 (\fquo_reg[19]_4 ),
        .\fquo_reg[19]_3 (\fquo_reg[19]_5 ),
        .rem4_carry_0(rem4_carry),
        .rem4_carry__5_0({\den_r_reg[49]_0 [25],den_r,\den_r_reg[49]_0 [24:0]}),
        .sgla_r_0(sgla_r_0),
        .\sglb_f_reg[29] ({\sglb_f_reg[29] ,rem0}),
        .sglc_e(sglc_e),
        .\sglc_e[8]_i_4 (\sglc_e[8]_i_4 ),
        .\sglc_f_reg[5] (\sglc_f_reg[5] ),
        .sglc_zer0(sglc_zer0));
  FDRE \fquo_reg[0] 
       (.C(clk),
        .CE(E),
        .D(quo_0),
        .Q(\fquo_reg_n_0_[0] ),
        .R(SR));
  FDRE \fquo_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\fquo_reg_n_0_[5] ),
        .Q(\fquo_reg_n_0_[10] ),
        .R(SR));
  FDRE \fquo_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\fquo_reg_n_0_[6] ),
        .Q(\fquo_reg_n_0_[11] ),
        .R(SR));
  FDRE \fquo_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\fquo_reg_n_0_[7] ),
        .Q(\fquo_reg_n_0_[12] ),
        .R(SR));
  FDRE \fquo_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\fquo_reg_n_0_[8] ),
        .Q(\fquo_reg_n_0_[13] ),
        .R(SR));
  FDRE \fquo_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\fquo_reg_n_0_[9] ),
        .Q(\fquo_reg_n_0_[14] ),
        .R(SR));
  FDRE \fquo_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\fquo_reg_n_0_[10] ),
        .Q(\fquo_reg_n_0_[15] ),
        .R(SR));
  FDRE \fquo_reg[16] 
       (.C(clk),
        .CE(E),
        .D(\fquo_reg_n_0_[11] ),
        .Q(\fquo_reg_n_0_[16] ),
        .R(SR));
  FDRE \fquo_reg[17] 
       (.C(clk),
        .CE(E),
        .D(\fquo_reg_n_0_[12] ),
        .Q(\fquo_reg_n_0_[17] ),
        .R(SR));
  FDRE \fquo_reg[18] 
       (.C(clk),
        .CE(E),
        .D(\fquo_reg_n_0_[13] ),
        .Q(\fquo_reg[19]_1 [0]),
        .R(SR));
  FDRE \fquo_reg[19] 
       (.C(clk),
        .CE(E),
        .D(\fquo_reg_n_0_[14] ),
        .Q(\fquo_reg[19]_1 [1]),
        .R(SR));
  FDRE \fquo_reg[1] 
       (.C(clk),
        .CE(E),
        .D(fdiv_n_3),
        .Q(\fquo_reg_n_0_[1] ),
        .R(SR));
  FDRE \fquo_reg[2] 
       (.C(clk),
        .CE(E),
        .D(fdiv_n_2),
        .Q(\fquo_reg_n_0_[2] ),
        .R(SR));
  FDRE \fquo_reg[3] 
       (.C(clk),
        .CE(E),
        .D(fdiv_n_1),
        .Q(\fquo_reg_n_0_[3] ),
        .R(SR));
  FDRE \fquo_reg[4] 
       (.C(clk),
        .CE(E),
        .D(p_1_in5_in),
        .Q(\fquo_reg_n_0_[4] ),
        .R(SR));
  FDRE \fquo_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\fquo_reg_n_0_[0] ),
        .Q(\fquo_reg_n_0_[5] ),
        .R(SR));
  FDRE \fquo_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\fquo_reg_n_0_[1] ),
        .Q(\fquo_reg_n_0_[6] ),
        .R(SR));
  FDRE \fquo_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\fquo_reg_n_0_[2] ),
        .Q(\fquo_reg_n_0_[7] ),
        .R(SR));
  FDRE \fquo_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\fquo_reg_n_0_[3] ),
        .Q(\fquo_reg_n_0_[8] ),
        .R(SR));
  FDRE \fquo_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\fquo_reg_n_0_[4] ),
        .Q(\fquo_reg_n_0_[9] ),
        .R(SR));
endmodule

module sfpu_sgla
   (sgla_r_0,
    \stat_reg[0] ,
    \stat_reg[3] ,
    \stat_reg[3]_0 ,
    \stat_reg[3]_1 ,
    O,
    sgla_sft_fin,
    \sglb_e_reg[8] ,
    \sgla_e_reg[7]_0 ,
    \stat_reg[0]_0 ,
    \stat_reg[0]_1 ,
    \stat_reg[0]_2 ,
    \sgla_e_reg[7]_1 ,
    \sgla_f_reg[23]_0 ,
    \sgla_f_reg[21]_0 ,
    \ccmd_f_reg[3]_0 ,
    \sgla_i_reg[24]_0 ,
    \sgla_i_reg[23]_0 ,
    \sgla_i_reg[10]_0 ,
    sglc_r_sgla,
    \sgla_i_reg[24]_1 ,
    \sgla_i_reg[24]_2 ,
    \ccmd_f_reg[1]_0 ,
    Q,
    \sgla_i_reg[4]_0 ,
    \sgla_e_reg[6]_0 ,
    .abus_28_sp_1(abus_28_sn_1),
    .abus_26_sp_1(abus_26_sn_1),
    \sglb_f_reg[30] ,
    fctl_ccmd_int_reg,
    \sgla_e_reg[7]_2 ,
    .ccmd_1_sp_1(ccmd_1_sn_1),
    \sglb_f_reg[26] ,
    \sgla_e_reg[3]_0 ,
    \sgla_e_reg[3]_1 ,
    \sglb_f_reg[27] ,
    \sglb_f_reg[28] ,
    \sglb_f_reg[29] ,
    \sglb_e_reg[3] ,
    \sglb_e_reg[4] ,
    \stat_reg[2] ,
    \sgla_e_reg[7]_3 ,
    \sgla_e_reg[3]_2 ,
    \sglb_e_reg[2] ,
    \sgla_e_reg[7]_4 ,
    \sglb_e_reg[3]_0 ,
    \sgla_e_reg[7]_5 ,
    SR,
    E,
    sglb_sft_fin,
    \sgla_e_reg[3]_3 ,
    cbus,
    fctl_ccmd_add_reg,
    \sgla_f_reg[0]_0 ,
    \sgla_i_reg[6]_0 ,
    \sgla_f_reg[1]_0 ,
    \sgla_i_reg[7]_0 ,
    \sgla_f_reg[2]_0 ,
    \sgla_f_reg[3]_0 ,
    \sgla_i_reg[29]_0 ,
    \sgla_i_reg[30]_0 ,
    \sgla_i_reg[31]_0 ,
    \sgla_f_reg[18]_0 ,
    \sgla_f_reg[23]_1 ,
    \sgla_f_reg[19]_0 ,
    \sgla_f_reg[14]_0 ,
    \sgla_f_reg[24]_0 ,
    \sgla_i_reg[8]_0 ,
    \sgla_f_reg[17]_0 ,
    \sgla_i_reg[12]_0 ,
    \sgla_f_reg[16]_0 ,
    \sgla_i_reg[11]_0 ,
    \fquo_reg[11] ,
    \sgla_f_reg[20]_0 ,
    \sgla_f_reg[15]_0 ,
    \sgla_f_reg[25]_0 ,
    \sgla_f_reg[26]_0 ,
    \sgla_e_reg[2]_0 ,
    p_22_in,
    \sgla_e_reg[3]_4 ,
    \sgla_e_reg[5]_0 ,
    \sgla_e_reg[4]_0 ,
    \sgla_i_reg[5]_0 ,
    \sgla_f_reg[13]_0 ,
    \sgla_f_reg[22]_0 ,
    \sgla_f_reg[27]_0 ,
    \sgla_i_reg[28]_0 ,
    fctl_ccmd_sub_reg,
    p_5_in,
    \sgla_e_reg[8]_0 ,
    \ccmd_f_reg[0]_0 ,
    fctl_ccmd_int_reg_0,
    p_0_in,
    den,
    \sgla_f_reg[31]_0 ,
    fdiv_nan_inf,
    sglc_s2__0,
    \sgla_f_reg[31]_1 ,
    \sgla_e_reg[3]_5 ,
    \sgla_e_reg[7]_6 ,
    \sgla_e_reg[0]_0 ,
    \sgla_f_reg[27]_1 ,
    .abus_25_sp_1(abus_25_sn_1),
    \sgla_e_reg[8]_1 ,
    \sgla_f_reg[28]_0 ,
    clk,
    fctl_load_b,
    \sgla_f_reg[5]_0 ,
    \sgla_f_reg[8]_0 ,
    \sgla_f_reg[9]_0 ,
    \sgla_f_reg[21]_1 ,
    \sgla_f_reg[28]_1 ,
    \sgla_f_reg[8]_1 ,
    \sgla_f_reg[19]_1 ,
    \sgla_f_reg[24]_1 ,
    \sgla_f_reg[0]_1 ,
    abus,
    \sgla_f_reg[18]_1 ,
    \sgla_f_reg[22]_1 ,
    \sgla_f_reg[25]_1 ,
    rst_n,
    \sgla_f_reg[20]_1 ,
    \sgla_f_reg[20]_2 ,
    \sgla_f_reg[23]_2 ,
    \sgla_f_reg[5]_1 ,
    \sgla_f_reg[7]_0 ,
    sglb_r,
    D,
    \sgla_e_reg[7]_i_2_0 ,
    \sgla_f_reg[1]_1 ,
    bbus,
    data1,
    data6,
    \sglb_f_reg[28]_0 ,
    \sglb_e_reg[1] ,
    \sglb_f_reg[31] ,
    \sglb_e_reg[2]_0 ,
    \sglb_e_reg[3]_1 ,
    \sglb_e_reg[3]_2 ,
    \sglb_e_reg[3]_3 ,
    fctl_ccmd_int,
    S,
    \sglb_f_reg[31]_0 ,
    .cbus_0_sp_1(cbus_0_sn_1),
    \cbus[21] ,
    \cbus[0]_0 ,
    \cbus[0]_1 ,
    \sglc_i_reg[43] ,
    \cbus[0]_2 ,
    fctl_ccmd_add,
    .cbus_1_sp_1(cbus_1_sn_1),
    .cbus_2_sp_1(cbus_2_sn_1),
    .cbus_3_sp_1(cbus_3_sn_1),
    \cbus[3]_0 ,
    \sglc_f_reg[29] ,
    \sglc_f_reg[30] ,
    \sglc_f_reg[31] ,
    .cbus_13_sp_1(cbus_13_sn_1),
    \cbus[13]_0 ,
    \cbus[13]_1 ,
    .cbus_14_sp_1(cbus_14_sn_1),
    \cbus[14]_0 ,
    .cbus_7_sp_1(cbus_7_sn_1),
    \cbus[7]_0 ,
    sglc_r_fadd,
    \cbus[7]_1 ,
    .cbus_11_sp_1(cbus_11_sn_1),
    \cbus[11]_0 ,
    .cbus_15_sp_1(cbus_15_sn_1),
    .cbus_16_sp_1(cbus_16_sn_1),
    \cbus[16]_0 ,
    \cbus[25] ,
    \cbus[27] ,
    \cbus[27]_0 ,
    \cbus[27]_1 ,
    \cbus[29] ,
    .cbus_19_sp_1(cbus_19_sn_1),
    \cbus[30]_INST_0_i_4 ,
    \cbus[30]_INST_0_i_4_0 ,
    \cbus[27]_2 ,
    .cbus_5_sp_1(cbus_5_sn_1),
    \cbus[5]_0 ,
    sglc_sr_flag,
    .cbus_6_sp_1(cbus_6_sn_1),
    \cbus[1]_0 ,
    \cbus[2]_0 ,
    .cbus_9_sp_1(cbus_9_sn_1),
    \cbus[11]_1 ,
    \cbus[14]_1 ,
    \cbus[15]_0 ,
    .cbus_12_sp_1(cbus_12_sn_1),
    \cbus[12]_0 ,
    \cbus[22] ,
    .cbus_17_sp_1(cbus_17_sn_1),
    .cbus_18_sp_1(cbus_18_sn_1),
    \cbus[18]_0 ,
    .cbus_20_sp_1(cbus_20_sn_1),
    \cbus[21]_0 ,
    \cbus[21]_1 ,
    \cbus[22]_0 ,
    \cbus[22]_1 ,
    fctl_ccmd_sub,
    \cbus[31] ,
    \cbus[0]_3 ,
    \cbus[0]_4 ,
    \cbus[0]_5 ,
    \cbus[0]_6 ,
    \sglc_i_reg[43]_0 ,
    \sglc_i_reg[43]_1 ,
    \sglc_i_reg[41] ,
    fctl_load_d__4,
    rem4_carry_i_9,
    sglb_nan0,
    sglb_nan012_in,
    sfpu_dsp_c,
    sglc_e_carry,
    \sglc_f_reg[27] ,
    \sglb_e_reg[8]_i_15_0 ,
    \sgla_e_reg[0]_1 ,
    \ccmd_f_reg[4]_0 ,
    ccmd);
  output [42:0]sgla_r_0;
  output \stat_reg[0] ;
  output \stat_reg[3] ;
  output \stat_reg[3]_0 ;
  output \stat_reg[3]_1 ;
  output [0:0]O;
  output sgla_sft_fin;
  output [0:0]\sglb_e_reg[8] ;
  output [0:0]\sgla_e_reg[7]_0 ;
  output \stat_reg[0]_0 ;
  output \stat_reg[0]_1 ;
  output \stat_reg[0]_2 ;
  output [0:0]\sgla_e_reg[7]_1 ;
  output \sgla_f_reg[23]_0 ;
  output \sgla_f_reg[21]_0 ;
  output \ccmd_f_reg[3]_0 ;
  output \sgla_i_reg[24]_0 ;
  output \sgla_i_reg[23]_0 ;
  output \sgla_i_reg[10]_0 ;
  output [2:0]sglc_r_sgla;
  output \sgla_i_reg[24]_1 ;
  output \sgla_i_reg[24]_2 ;
  output \ccmd_f_reg[1]_0 ;
  output [0:0]Q;
  output \sgla_i_reg[4]_0 ;
  output [6:0]\sgla_e_reg[6]_0 ;
  output [25:0]\sglb_f_reg[30] ;
  output fctl_ccmd_int_reg;
  output \sgla_e_reg[7]_2 ;
  output \sglb_f_reg[26] ;
  output \sgla_e_reg[3]_0 ;
  output \sgla_e_reg[3]_1 ;
  output \sglb_f_reg[27] ;
  output \sglb_f_reg[28] ;
  output \sglb_f_reg[29] ;
  output [3:0]\sglb_e_reg[3] ;
  output \sglb_e_reg[4] ;
  output \stat_reg[2] ;
  output [0:0]\sgla_e_reg[7]_3 ;
  output [3:0]\sgla_e_reg[3]_2 ;
  output \sglb_e_reg[2] ;
  output [3:0]\sgla_e_reg[7]_4 ;
  output \sglb_e_reg[3]_0 ;
  output \sgla_e_reg[7]_5 ;
  output [0:0]SR;
  output [1:0]E;
  output sglb_sft_fin;
  output \sgla_e_reg[3]_3 ;
  output [21:0]cbus;
  output fctl_ccmd_add_reg;
  output \sgla_f_reg[0]_0 ;
  output \sgla_i_reg[6]_0 ;
  output \sgla_f_reg[1]_0 ;
  output \sgla_i_reg[7]_0 ;
  output \sgla_f_reg[2]_0 ;
  output \sgla_f_reg[3]_0 ;
  output \sgla_i_reg[29]_0 ;
  output \sgla_i_reg[30]_0 ;
  output \sgla_i_reg[31]_0 ;
  output \sgla_f_reg[18]_0 ;
  output \sgla_f_reg[23]_1 ;
  output \sgla_f_reg[19]_0 ;
  output \sgla_f_reg[14]_0 ;
  output \sgla_f_reg[24]_0 ;
  output \sgla_i_reg[8]_0 ;
  output \sgla_f_reg[17]_0 ;
  output \sgla_i_reg[12]_0 ;
  output \sgla_f_reg[16]_0 ;
  output \sgla_i_reg[11]_0 ;
  output \fquo_reg[11] ;
  output \sgla_f_reg[20]_0 ;
  output \sgla_f_reg[15]_0 ;
  output \sgla_f_reg[25]_0 ;
  output \sgla_f_reg[26]_0 ;
  output \sgla_e_reg[2]_0 ;
  output [2:0]p_22_in;
  output \sgla_e_reg[3]_4 ;
  output \sgla_e_reg[5]_0 ;
  output \sgla_e_reg[4]_0 ;
  output \sgla_i_reg[5]_0 ;
  output \sgla_f_reg[13]_0 ;
  output \sgla_f_reg[22]_0 ;
  output \sgla_f_reg[27]_0 ;
  output \sgla_i_reg[28]_0 ;
  output fctl_ccmd_sub_reg;
  output p_5_in;
  output \sgla_e_reg[8]_0 ;
  output \ccmd_f_reg[0]_0 ;
  output fctl_ccmd_int_reg_0;
  output [0:0]p_0_in;
  output [24:0]den;
  output [0:0]\sgla_f_reg[31]_0 ;
  output fdiv_nan_inf;
  output sglc_s2__0;
  output [0:0]\sgla_f_reg[31]_1 ;
  output [3:0]\sgla_e_reg[3]_5 ;
  output [3:0]\sgla_e_reg[7]_6 ;
  output [0:0]\sgla_e_reg[0]_0 ;
  output \sgla_f_reg[27]_1 ;
  output [0:0]\sgla_e_reg[8]_1 ;
  input \sgla_f_reg[28]_0 ;
  input clk;
  input fctl_load_b;
  input \sgla_f_reg[5]_0 ;
  input \sgla_f_reg[8]_0 ;
  input \sgla_f_reg[9]_0 ;
  input \sgla_f_reg[21]_1 ;
  input \sgla_f_reg[28]_1 ;
  input \sgla_f_reg[8]_1 ;
  input \sgla_f_reg[19]_1 ;
  input \sgla_f_reg[24]_1 ;
  input \sgla_f_reg[0]_1 ;
  input [31:0]abus;
  input \sgla_f_reg[18]_1 ;
  input \sgla_f_reg[22]_1 ;
  input \sgla_f_reg[25]_1 ;
  input rst_n;
  input \sgla_f_reg[20]_1 ;
  input \sgla_f_reg[20]_2 ;
  input \sgla_f_reg[23]_2 ;
  input \sgla_f_reg[5]_1 ;
  input \sgla_f_reg[7]_0 ;
  input [40:0]sglb_r;
  input [6:0]D;
  input \sgla_e_reg[7]_i_2_0 ;
  input \sgla_f_reg[1]_1 ;
  input [19:0]bbus;
  input [4:0]data1;
  input [0:0]data6;
  input \sglb_f_reg[28]_0 ;
  input \sglb_e_reg[1] ;
  input \sglb_f_reg[31] ;
  input \sglb_e_reg[2]_0 ;
  input \sglb_e_reg[3]_1 ;
  input \sglb_e_reg[3]_2 ;
  input \sglb_e_reg[3]_3 ;
  input fctl_ccmd_int;
  input [2:0]S;
  input [3:0]\sglb_f_reg[31]_0 ;
  input [16:0]\cbus[21] ;
  input \cbus[0]_0 ;
  input \cbus[0]_1 ;
  input \sglc_i_reg[43] ;
  input [0:0]\cbus[0]_2 ;
  input fctl_ccmd_add;
  input \cbus[3]_0 ;
  input \sglc_f_reg[29] ;
  input \sglc_f_reg[30] ;
  input \sglc_f_reg[31] ;
  input \cbus[13]_0 ;
  input \cbus[13]_1 ;
  input \cbus[14]_0 ;
  input \cbus[7]_0 ;
  input [0:0]sglc_r_fadd;
  input \cbus[7]_1 ;
  input \cbus[11]_0 ;
  input \cbus[16]_0 ;
  input \cbus[25] ;
  input \cbus[27] ;
  input \cbus[27]_0 ;
  input \cbus[27]_1 ;
  input [0:0]\cbus[29] ;
  input \cbus[30]_INST_0_i_4 ;
  input \cbus[30]_INST_0_i_4_0 ;
  input \cbus[27]_2 ;
  input \cbus[5]_0 ;
  input [0:0]sglc_sr_flag;
  input \cbus[1]_0 ;
  input \cbus[2]_0 ;
  input \cbus[11]_1 ;
  input \cbus[14]_1 ;
  input \cbus[15]_0 ;
  input \cbus[12]_0 ;
  input \cbus[22] ;
  input \cbus[18]_0 ;
  input \cbus[21]_0 ;
  input \cbus[21]_1 ;
  input \cbus[22]_0 ;
  input \cbus[22]_1 ;
  input fctl_ccmd_sub;
  input [0:0]\cbus[31] ;
  input \cbus[0]_3 ;
  input \cbus[0]_4 ;
  input \cbus[0]_5 ;
  input \cbus[0]_6 ;
  input \sglc_i_reg[43]_0 ;
  input \sglc_i_reg[43]_1 ;
  input [0:0]\sglc_i_reg[41] ;
  input fctl_load_d__4;
  input [25:0]rem4_carry_i_9;
  input sglb_nan0;
  input sglb_nan012_in;
  input [0:0]sfpu_dsp_c;
  input [0:0]sglc_e_carry;
  input \sglc_f_reg[27] ;
  input [0:0]\sglb_e_reg[8]_i_15_0 ;
  input [0:0]\sgla_e_reg[0]_1 ;
  input [0:0]\ccmd_f_reg[4]_0 ;
  input [4:0]ccmd;
  output abus_28_sn_1;
  output abus_26_sn_1;
  output ccmd_1_sn_1;
  output abus_25_sn_1;
  input cbus_0_sn_1;
  input cbus_1_sn_1;
  input cbus_2_sn_1;
  input cbus_3_sn_1;
  input cbus_13_sn_1;
  input cbus_14_sn_1;
  input cbus_7_sn_1;
  input cbus_11_sn_1;
  input cbus_15_sn_1;
  input cbus_16_sn_1;
  input cbus_19_sn_1;
  input cbus_5_sn_1;
  input cbus_6_sn_1;
  input cbus_9_sn_1;
  input cbus_12_sn_1;
  input cbus_17_sn_1;
  input cbus_18_sn_1;
  input cbus_20_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [6:0]D;
  wire [1:0]E;
  wire [0:0]O;
  wire [0:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire [31:0]abus;
  wire abus_25_sn_1;
  wire abus_26_sn_1;
  wire abus_28_sn_1;
  wire [19:0]bbus;
  wire [21:0]cbus;
  wire \cbus[0]_0 ;
  wire \cbus[0]_1 ;
  wire [0:0]\cbus[0]_2 ;
  wire \cbus[0]_3 ;
  wire \cbus[0]_4 ;
  wire \cbus[0]_5 ;
  wire \cbus[0]_6 ;
  wire \cbus[0]_INST_0_i_5_n_0 ;
  wire \cbus[10]_INST_0_i_6_n_0 ;
  wire \cbus[11]_0 ;
  wire \cbus[11]_1 ;
  wire \cbus[11]_INST_0_i_2_n_0 ;
  wire \cbus[11]_INST_0_i_3_n_0 ;
  wire \cbus[11]_INST_0_i_4_n_0 ;
  wire \cbus[11]_INST_0_i_6_n_0 ;
  wire \cbus[12]_0 ;
  wire \cbus[13]_0 ;
  wire \cbus[13]_1 ;
  wire \cbus[13]_INST_0_i_4_n_0 ;
  wire \cbus[14]_0 ;
  wire \cbus[14]_1 ;
  wire \cbus[14]_INST_0_i_2_n_0 ;
  wire \cbus[14]_INST_0_i_3_n_0 ;
  wire \cbus[15]_0 ;
  wire \cbus[15]_INST_0_i_10_n_0 ;
  wire \cbus[15]_INST_0_i_11_n_0 ;
  wire \cbus[15]_INST_0_i_12_n_0 ;
  wire \cbus[15]_INST_0_i_2_n_0 ;
  wire \cbus[15]_INST_0_i_3_n_0 ;
  wire \cbus[15]_INST_0_i_4_n_0 ;
  wire \cbus[15]_INST_0_i_6_n_0 ;
  wire \cbus[15]_INST_0_i_7_n_0 ;
  wire \cbus[15]_INST_0_i_8_n_0 ;
  wire \cbus[16]_0 ;
  wire \cbus[16]_INST_0_i_4_n_0 ;
  wire \cbus[17]_INST_0_i_11_n_0 ;
  wire \cbus[17]_INST_0_i_3_n_0 ;
  wire \cbus[17]_INST_0_i_4_n_0 ;
  wire \cbus[17]_INST_0_i_8_n_0 ;
  wire \cbus[18]_0 ;
  wire \cbus[18]_INST_0_i_12_n_0 ;
  wire \cbus[18]_INST_0_i_5_n_0 ;
  wire \cbus[18]_INST_0_i_6_n_0 ;
  wire \cbus[18]_INST_0_i_9_n_0 ;
  wire \cbus[19]_INST_0_i_11_n_0 ;
  wire \cbus[19]_INST_0_i_12_n_0 ;
  wire \cbus[19]_INST_0_i_13_n_0 ;
  wire \cbus[19]_INST_0_i_19_n_0 ;
  wire \cbus[19]_INST_0_i_6_n_0 ;
  wire \cbus[19]_INST_0_i_7_n_0 ;
  wire \cbus[1]_0 ;
  wire \cbus[1]_INST_0_i_3_n_0 ;
  wire \cbus[20]_INST_0_i_3_n_0 ;
  wire \cbus[20]_INST_0_i_4_n_0 ;
  wire \cbus[20]_INST_0_i_6_n_0 ;
  wire \cbus[20]_INST_0_i_7_n_0 ;
  wire [16:0]\cbus[21] ;
  wire \cbus[21]_0 ;
  wire \cbus[21]_1 ;
  wire \cbus[21]_INST_0_i_14_n_0 ;
  wire \cbus[21]_INST_0_i_15_n_0 ;
  wire \cbus[21]_INST_0_i_20_n_0 ;
  wire \cbus[21]_INST_0_i_21_n_0 ;
  wire \cbus[21]_INST_0_i_7_n_0 ;
  wire \cbus[22] ;
  wire \cbus[22]_0 ;
  wire \cbus[22]_1 ;
  wire \cbus[22]_INST_0_i_10_n_0 ;
  wire \cbus[22]_INST_0_i_11_n_0 ;
  wire \cbus[22]_INST_0_i_12_n_0 ;
  wire \cbus[22]_INST_0_i_13_n_0 ;
  wire \cbus[22]_INST_0_i_18_n_0 ;
  wire \cbus[22]_INST_0_i_19_n_0 ;
  wire \cbus[22]_INST_0_i_6_n_0 ;
  wire \cbus[22]_INST_0_i_7_n_0 ;
  wire \cbus[25] ;
  wire \cbus[27] ;
  wire \cbus[27]_0 ;
  wire \cbus[27]_1 ;
  wire \cbus[27]_2 ;
  wire \cbus[27]_INST_0_i_2_n_0 ;
  wire \cbus[27]_INST_0_i_4_n_0 ;
  wire [0:0]\cbus[29] ;
  wire \cbus[29]_INST_0_i_13_n_0 ;
  wire \cbus[29]_INST_0_i_14_n_0 ;
  wire \cbus[2]_0 ;
  wire \cbus[2]_INST_0_i_3_n_0 ;
  wire \cbus[2]_INST_0_i_6_n_0 ;
  wire \cbus[30]_INST_0_i_21_n_0 ;
  wire \cbus[30]_INST_0_i_25_n_0 ;
  wire \cbus[30]_INST_0_i_26_n_0 ;
  wire \cbus[30]_INST_0_i_27_n_0 ;
  wire \cbus[30]_INST_0_i_28_n_0 ;
  wire \cbus[30]_INST_0_i_29_n_0 ;
  wire \cbus[30]_INST_0_i_34_n_0 ;
  wire \cbus[30]_INST_0_i_4 ;
  wire \cbus[30]_INST_0_i_42_n_0 ;
  wire \cbus[30]_INST_0_i_43_n_0 ;
  wire \cbus[30]_INST_0_i_4_0 ;
  wire [0:0]\cbus[31] ;
  wire \cbus[31]_INST_0_i_18_n_0 ;
  wire \cbus[31]_INST_0_i_19_n_0 ;
  wire \cbus[31]_INST_0_i_30_n_0 ;
  wire \cbus[31]_INST_0_i_35_n_0 ;
  wire \cbus[31]_INST_0_i_36_n_0 ;
  wire \cbus[31]_INST_0_i_37_n_0 ;
  wire \cbus[31]_INST_0_i_45_n_0 ;
  wire \cbus[31]_INST_0_i_46_n_0 ;
  wire \cbus[31]_INST_0_i_47_n_0 ;
  wire \cbus[31]_INST_0_i_59_n_0 ;
  wire \cbus[31]_INST_0_i_60_n_0 ;
  wire \cbus[31]_INST_0_i_61_n_0 ;
  wire \cbus[3]_0 ;
  wire \cbus[5]_0 ;
  wire \cbus[6]_INST_0_i_2_n_0 ;
  wire \cbus[7]_0 ;
  wire \cbus[7]_1 ;
  wire \cbus[7]_INST_0_i_3_n_0 ;
  wire \cbus[9]_INST_0_i_6_n_0 ;
  wire cbus_0_sn_1;
  wire cbus_11_sn_1;
  wire cbus_12_sn_1;
  wire cbus_13_sn_1;
  wire cbus_14_sn_1;
  wire cbus_15_sn_1;
  wire cbus_16_sn_1;
  wire cbus_17_sn_1;
  wire cbus_18_sn_1;
  wire cbus_19_sn_1;
  wire cbus_1_sn_1;
  wire cbus_20_sn_1;
  wire cbus_2_sn_1;
  wire cbus_3_sn_1;
  wire cbus_5_sn_1;
  wire cbus_6_sn_1;
  wire cbus_7_sn_1;
  wire cbus_9_sn_1;
  wire [4:0]ccmd;
  wire ccmd_1_sn_1;
  wire [4:0]ccmd_f;
  wire \ccmd_f_reg[0]_0 ;
  wire \ccmd_f_reg[1]_0 ;
  wire \ccmd_f_reg[3]_0 ;
  wire [0:0]\ccmd_f_reg[4]_0 ;
  wire clk;
  wire [4:0]data1;
  wire [0:0]data6;
  wire [24:0]den;
  wire fctl_ccmd_add;
  wire fctl_ccmd_add_reg;
  wire fctl_ccmd_int;
  wire fctl_ccmd_int_reg;
  wire fctl_ccmd_int_reg_0;
  wire fctl_ccmd_sub;
  wire fctl_ccmd_sub_reg;
  wire fctl_load_b;
  wire fctl_load_d__4;
  wire fdiv_nan_inf;
  wire \fquo_reg[11] ;
  wire [0:0]p_0_in;
  wire p_0_in14_in;
  wire p_0_in17_in;
  wire p_0_in1_in;
  wire p_0_in20_in;
  wire p_0_in3_in;
  wire p_0_in6_in;
  wire p_0_in9_in;
  wire [7:0]p_0_in_0;
  wire [2:0]p_22_in;
  wire [8:0]p_2_in;
  wire p_5_in;
  wire [25:0]rem4_carry_i_9;
  wire rst_n;
  wire [0:0]sfpu_dsp_c;
  wire \sgla_e[3]_i_10_n_0 ;
  wire \sgla_e[3]_i_11_n_0 ;
  wire \sgla_e[3]_i_12_n_0 ;
  wire \sgla_e[3]_i_13_n_0 ;
  wire \sgla_e[3]_i_14_n_0 ;
  wire \sgla_e[3]_i_15_n_0 ;
  wire \sgla_e[3]_i_16_n_0 ;
  wire \sgla_e[3]_i_17_n_0 ;
  wire \sgla_e[3]_i_18_n_0 ;
  wire \sgla_e[3]_i_19_n_0 ;
  wire \sgla_e[3]_i_20_n_0 ;
  wire \sgla_e[3]_i_21_n_0 ;
  wire \sgla_e[3]_i_22_n_0 ;
  wire \sgla_e[3]_i_3_n_0 ;
  wire \sgla_e[3]_i_4_n_0 ;
  wire \sgla_e[3]_i_5_n_0 ;
  wire \sgla_e[3]_i_6_n_0 ;
  wire \sgla_e[3]_i_7_n_0 ;
  wire \sgla_e[3]_i_8_n_0 ;
  wire \sgla_e[3]_i_9_n_0 ;
  wire \sgla_e[7]_i_10_n_0 ;
  wire \sgla_e[7]_i_11_n_0 ;
  wire \sgla_e[7]_i_12_n_0 ;
  wire \sgla_e[7]_i_13_n_0 ;
  wire \sgla_e[7]_i_14_n_0 ;
  wire \sgla_e[7]_i_16_n_0 ;
  wire \sgla_e[7]_i_17_n_0 ;
  wire \sgla_e[7]_i_18_n_0 ;
  wire \sgla_e[7]_i_3_n_0 ;
  wire \sgla_e[7]_i_4_n_0 ;
  wire \sgla_e[7]_i_5_n_0 ;
  wire \sgla_e[7]_i_6_n_0 ;
  wire \sgla_e[7]_i_7_n_0 ;
  wire \sgla_e[7]_i_8_n_0 ;
  wire \sgla_e[7]_i_9_n_0 ;
  wire \sgla_e[8]_i_4_n_0 ;
  wire \sgla_e[8]_i_5_n_0 ;
  wire \sgla_e[8]_i_6_n_0 ;
  wire \sgla_e[8]_i_7_n_0 ;
  wire \sgla_e[8]_i_8_n_0 ;
  wire \sgla_e[8]_i_9_n_0 ;
  wire [8:0]sgla_e__0;
  wire [0:0]\sgla_e_reg[0]_0 ;
  wire [0:0]\sgla_e_reg[0]_1 ;
  wire \sgla_e_reg[2]_0 ;
  wire \sgla_e_reg[3]_0 ;
  wire \sgla_e_reg[3]_1 ;
  wire [3:0]\sgla_e_reg[3]_2 ;
  wire \sgla_e_reg[3]_3 ;
  wire \sgla_e_reg[3]_4 ;
  wire [3:0]\sgla_e_reg[3]_5 ;
  wire \sgla_e_reg[3]_i_2_n_0 ;
  wire \sgla_e_reg[3]_i_2_n_1 ;
  wire \sgla_e_reg[3]_i_2_n_2 ;
  wire \sgla_e_reg[3]_i_2_n_3 ;
  wire \sgla_e_reg[4]_0 ;
  wire \sgla_e_reg[5]_0 ;
  wire [6:0]\sgla_e_reg[6]_0 ;
  wire [0:0]\sgla_e_reg[7]_0 ;
  wire [0:0]\sgla_e_reg[7]_1 ;
  wire \sgla_e_reg[7]_2 ;
  wire [0:0]\sgla_e_reg[7]_3 ;
  wire [3:0]\sgla_e_reg[7]_4 ;
  wire \sgla_e_reg[7]_5 ;
  wire [3:0]\sgla_e_reg[7]_6 ;
  wire \sgla_e_reg[7]_i_2_0 ;
  wire \sgla_e_reg[7]_i_2_n_0 ;
  wire \sgla_e_reg[7]_i_2_n_1 ;
  wire \sgla_e_reg[7]_i_2_n_2 ;
  wire \sgla_e_reg[7]_i_2_n_3 ;
  wire \sgla_e_reg[8]_0 ;
  wire [0:0]\sgla_e_reg[8]_1 ;
  wire \sgla_f[0]_i_1_n_0 ;
  wire \sgla_f[0]_i_3_n_0 ;
  wire \sgla_f[0]_i_4_n_0 ;
  wire \sgla_f[0]_i_5_n_0 ;
  wire \sgla_f[0]_i_6_n_0 ;
  wire \sgla_f[0]_i_7_n_0 ;
  wire \sgla_f[10]_i_1_n_0 ;
  wire \sgla_f[10]_i_2_n_0 ;
  wire \sgla_f[10]_i_3_n_0 ;
  wire \sgla_f[10]_i_4_n_0 ;
  wire \sgla_f[10]_i_5_n_0 ;
  wire \sgla_f[11]_i_1_n_0 ;
  wire \sgla_f[11]_i_2_n_0 ;
  wire \sgla_f[11]_i_3_n_0 ;
  wire \sgla_f[11]_i_4_n_0 ;
  wire \sgla_f[11]_i_5_n_0 ;
  wire \sgla_f[12]_i_1_n_0 ;
  wire \sgla_f[12]_i_2_n_0 ;
  wire \sgla_f[12]_i_3_n_0 ;
  wire \sgla_f[12]_i_4_n_0 ;
  wire \sgla_f[12]_i_5_n_0 ;
  wire \sgla_f[13]_i_1_n_0 ;
  wire \sgla_f[13]_i_2_n_0 ;
  wire \sgla_f[13]_i_3_n_0 ;
  wire \sgla_f[13]_i_4_n_0 ;
  wire \sgla_f[13]_i_5_n_0 ;
  wire \sgla_f[14]_i_1_n_0 ;
  wire \sgla_f[14]_i_2_n_0 ;
  wire \sgla_f[14]_i_3_n_0 ;
  wire \sgla_f[14]_i_4_n_0 ;
  wire \sgla_f[14]_i_5_n_0 ;
  wire \sgla_f[15]_i_1_n_0 ;
  wire \sgla_f[15]_i_2_n_0 ;
  wire \sgla_f[15]_i_3_n_0 ;
  wire \sgla_f[15]_i_4_n_0 ;
  wire \sgla_f[15]_i_5_n_0 ;
  wire \sgla_f[16]_i_1_n_0 ;
  wire \sgla_f[16]_i_2_n_0 ;
  wire \sgla_f[16]_i_3_n_0 ;
  wire \sgla_f[16]_i_4_n_0 ;
  wire \sgla_f[16]_i_5_n_0 ;
  wire \sgla_f[17]_i_1_n_0 ;
  wire \sgla_f[17]_i_2_n_0 ;
  wire \sgla_f[17]_i_3_n_0 ;
  wire \sgla_f[17]_i_4_n_0 ;
  wire \sgla_f[17]_i_5_n_0 ;
  wire \sgla_f[18]_i_1_n_0 ;
  wire \sgla_f[18]_i_2_n_0 ;
  wire \sgla_f[18]_i_3_n_0 ;
  wire \sgla_f[18]_i_4_n_0 ;
  wire \sgla_f[19]_i_1_n_0 ;
  wire \sgla_f[19]_i_2_n_0 ;
  wire \sgla_f[19]_i_3_n_0 ;
  wire \sgla_f[1]_i_12_n_0 ;
  wire \sgla_f[1]_i_13_n_0 ;
  wire \sgla_f[1]_i_14_n_0 ;
  wire \sgla_f[1]_i_15_n_0 ;
  wire \sgla_f[1]_i_17_n_0 ;
  wire \sgla_f[1]_i_18_n_0 ;
  wire \sgla_f[1]_i_19_n_0 ;
  wire \sgla_f[1]_i_1_n_0 ;
  wire \sgla_f[1]_i_20_n_0 ;
  wire \sgla_f[1]_i_21_n_0 ;
  wire \sgla_f[1]_i_22_n_0 ;
  wire \sgla_f[1]_i_23_n_0 ;
  wire \sgla_f[1]_i_24_n_0 ;
  wire \sgla_f[1]_i_25_n_0 ;
  wire \sgla_f[1]_i_26_n_0 ;
  wire \sgla_f[1]_i_2_n_0 ;
  wire \sgla_f[1]_i_3_n_0 ;
  wire \sgla_f[1]_i_4_n_0 ;
  wire \sgla_f[1]_i_5_n_0 ;
  wire \sgla_f[1]_i_6_n_0 ;
  wire \sgla_f[1]_i_7_n_0 ;
  wire \sgla_f[1]_i_8_n_0 ;
  wire \sgla_f[20]_i_1_n_0 ;
  wire \sgla_f[20]_i_2_n_0 ;
  wire \sgla_f[20]_i_3_n_0 ;
  wire \sgla_f[20]_i_4_n_0 ;
  wire \sgla_f[20]_i_6_n_0 ;
  wire \sgla_f[21]_i_1_n_0 ;
  wire \sgla_f[21]_i_3_n_0 ;
  wire \sgla_f[21]_i_4_n_0 ;
  wire \sgla_f[22]_i_1_n_0 ;
  wire \sgla_f[22]_i_2_n_0 ;
  wire \sgla_f[22]_i_3_n_0 ;
  wire \sgla_f[22]_i_5_n_0 ;
  wire \sgla_f[23]_i_10_n_0 ;
  wire \sgla_f[23]_i_1_n_0 ;
  wire \sgla_f[23]_i_2_n_0 ;
  wire \sgla_f[23]_i_3_n_0 ;
  wire \sgla_f[23]_i_4_n_0 ;
  wire \sgla_f[23]_i_5_n_0 ;
  wire \sgla_f[23]_i_8_n_0 ;
  wire \sgla_f[24]_i_1_n_0 ;
  wire \sgla_f[24]_i_2_n_0 ;
  wire \sgla_f[24]_i_3_n_0 ;
  wire \sgla_f[24]_i_4_n_0 ;
  wire \sgla_f[25]_i_1_n_0 ;
  wire \sgla_f[25]_i_2_n_0 ;
  wire \sgla_f[25]_i_3_n_0 ;
  wire \sgla_f[25]_i_5_n_0 ;
  wire \sgla_f[26]_i_1_n_0 ;
  wire \sgla_f[26]_i_2_n_0 ;
  wire \sgla_f[26]_i_3_n_0 ;
  wire \sgla_f[26]_i_4_n_0 ;
  wire \sgla_f[26]_i_5_n_0 ;
  wire \sgla_f[27]_i_10_n_0 ;
  wire \sgla_f[27]_i_1_n_0 ;
  wire \sgla_f[27]_i_2_n_0 ;
  wire \sgla_f[27]_i_3_n_0 ;
  wire \sgla_f[27]_i_6_n_0 ;
  wire \sgla_f[27]_i_7_n_0 ;
  wire \sgla_f[27]_i_8_n_0 ;
  wire \sgla_f[28]_i_10_n_0 ;
  wire \sgla_f[28]_i_11_n_0 ;
  wire \sgla_f[28]_i_12_n_0 ;
  wire \sgla_f[28]_i_14_n_0 ;
  wire \sgla_f[28]_i_15_n_0 ;
  wire \sgla_f[28]_i_16_n_0 ;
  wire \sgla_f[28]_i_17_n_0 ;
  wire \sgla_f[28]_i_23_n_0 ;
  wire \sgla_f[28]_i_24_n_0 ;
  wire \sgla_f[28]_i_25_n_0 ;
  wire \sgla_f[28]_i_26_n_0 ;
  wire \sgla_f[28]_i_27_n_0 ;
  wire \sgla_f[28]_i_28_n_0 ;
  wire \sgla_f[28]_i_29_n_0 ;
  wire \sgla_f[28]_i_2_n_0 ;
  wire \sgla_f[28]_i_31_n_0 ;
  wire \sgla_f[28]_i_32_n_0 ;
  wire \sgla_f[28]_i_33_n_0 ;
  wire \sgla_f[28]_i_34_n_0 ;
  wire \sgla_f[28]_i_35_n_0 ;
  wire \sgla_f[28]_i_36_n_0 ;
  wire \sgla_f[28]_i_37_n_0 ;
  wire \sgla_f[28]_i_38_n_0 ;
  wire \sgla_f[28]_i_39_n_0 ;
  wire \sgla_f[28]_i_3_n_0 ;
  wire \sgla_f[28]_i_40_n_0 ;
  wire \sgla_f[28]_i_41_n_0 ;
  wire \sgla_f[28]_i_5_n_0 ;
  wire \sgla_f[28]_i_7_n_0 ;
  wire \sgla_f[28]_i_9_n_0 ;
  wire \sgla_f[29]_i_1_n_0 ;
  wire \sgla_f[29]_i_2_n_0 ;
  wire \sgla_f[29]_i_3_n_0 ;
  wire \sgla_f[29]_i_4_n_0 ;
  wire \sgla_f[29]_i_5_n_0 ;
  wire \sgla_f[2]_i_1_n_0 ;
  wire \sgla_f[2]_i_2_n_0 ;
  wire \sgla_f[2]_i_3_n_0 ;
  wire \sgla_f[2]_i_4_n_0 ;
  wire \sgla_f[30]_i_1_n_0 ;
  wire \sgla_f[30]_i_2_n_0 ;
  wire \sgla_f[30]_i_3_n_0 ;
  wire \sgla_f[30]_i_4_n_0 ;
  wire \sgla_f[30]_i_5_n_0 ;
  wire \sgla_f[31]_i_1_n_0 ;
  wire \sgla_f[31]_i_2_n_0 ;
  wire \sgla_f[31]_i_3_n_0 ;
  wire \sgla_f[31]_i_4_n_0 ;
  wire \sgla_f[31]_i_5_n_0 ;
  wire \sgla_f[31]_i_6_n_0 ;
  wire \sgla_f[31]_i_7_n_0 ;
  wire \sgla_f[31]_i_8_n_0 ;
  wire \sgla_f[3]_i_1_n_0 ;
  wire \sgla_f[3]_i_2_n_0 ;
  wire \sgla_f[3]_i_3_n_0 ;
  wire \sgla_f[3]_i_4_n_0 ;
  wire \sgla_f[3]_i_5_n_0 ;
  wire \sgla_f[3]_i_6_n_0 ;
  wire \sgla_f[3]_i_7_n_0 ;
  wire \sgla_f[4]_i_1_n_0 ;
  wire \sgla_f[4]_i_2_n_0 ;
  wire \sgla_f[4]_i_3_n_0 ;
  wire \sgla_f[4]_i_4_n_0 ;
  wire \sgla_f[4]_i_5_n_0 ;
  wire \sgla_f[4]_i_6_n_0 ;
  wire \sgla_f[4]_i_7_n_0 ;
  wire \sgla_f[4]_i_8_n_0 ;
  wire \sgla_f[4]_i_9_n_0 ;
  wire \sgla_f[5]_i_1_n_0 ;
  wire \sgla_f[5]_i_2_n_0 ;
  wire \sgla_f[5]_i_3_n_0 ;
  wire \sgla_f[5]_i_4_n_0 ;
  wire \sgla_f[6]_i_1_n_0 ;
  wire \sgla_f[6]_i_2_n_0 ;
  wire \sgla_f[6]_i_3_n_0 ;
  wire \sgla_f[6]_i_4_n_0 ;
  wire \sgla_f[6]_i_5_n_0 ;
  wire \sgla_f[7]_i_1_n_0 ;
  wire \sgla_f[7]_i_2_n_0 ;
  wire \sgla_f[7]_i_3_n_0 ;
  wire \sgla_f[7]_i_4_n_0 ;
  wire \sgla_f[7]_i_5_n_0 ;
  wire \sgla_f[7]_i_6_n_0 ;
  wire \sgla_f[8]_i_1_n_0 ;
  wire \sgla_f[8]_i_2_n_0 ;
  wire \sgla_f[8]_i_3_n_0 ;
  wire \sgla_f[8]_i_5_n_0 ;
  wire \sgla_f[9]_i_1_n_0 ;
  wire \sgla_f[9]_i_2_n_0 ;
  wire \sgla_f[9]_i_3_n_0 ;
  wire \sgla_f[9]_i_4_n_0 ;
  wire \sgla_f[9]_i_5_n_0 ;
  wire \sgla_f_reg[0]_0 ;
  wire \sgla_f_reg[0]_1 ;
  wire \sgla_f_reg[13]_0 ;
  wire \sgla_f_reg[14]_0 ;
  wire \sgla_f_reg[15]_0 ;
  wire \sgla_f_reg[16]_0 ;
  wire \sgla_f_reg[17]_0 ;
  wire \sgla_f_reg[18]_0 ;
  wire \sgla_f_reg[18]_1 ;
  wire \sgla_f_reg[19]_0 ;
  wire \sgla_f_reg[19]_1 ;
  wire \sgla_f_reg[1]_0 ;
  wire \sgla_f_reg[1]_1 ;
  wire \sgla_f_reg[1]_i_11_n_0 ;
  wire \sgla_f_reg[1]_i_11_n_1 ;
  wire \sgla_f_reg[1]_i_11_n_2 ;
  wire \sgla_f_reg[1]_i_11_n_3 ;
  wire \sgla_f_reg[1]_i_11_n_4 ;
  wire \sgla_f_reg[1]_i_11_n_5 ;
  wire \sgla_f_reg[1]_i_11_n_6 ;
  wire \sgla_f_reg[20]_0 ;
  wire \sgla_f_reg[20]_1 ;
  wire \sgla_f_reg[20]_2 ;
  wire \sgla_f_reg[21]_0 ;
  wire \sgla_f_reg[21]_1 ;
  wire \sgla_f_reg[22]_0 ;
  wire \sgla_f_reg[22]_1 ;
  wire \sgla_f_reg[23]_0 ;
  wire \sgla_f_reg[23]_1 ;
  wire \sgla_f_reg[23]_2 ;
  wire \sgla_f_reg[24]_0 ;
  wire \sgla_f_reg[24]_1 ;
  wire \sgla_f_reg[25]_0 ;
  wire \sgla_f_reg[25]_1 ;
  wire \sgla_f_reg[26]_0 ;
  wire \sgla_f_reg[27]_0 ;
  wire \sgla_f_reg[27]_1 ;
  wire \sgla_f_reg[28]_0 ;
  wire \sgla_f_reg[28]_1 ;
  wire \sgla_f_reg[28]_i_13_n_0 ;
  wire \sgla_f_reg[28]_i_13_n_1 ;
  wire \sgla_f_reg[28]_i_13_n_2 ;
  wire \sgla_f_reg[28]_i_13_n_3 ;
  wire \sgla_f_reg[28]_i_13_n_4 ;
  wire \sgla_f_reg[28]_i_13_n_5 ;
  wire \sgla_f_reg[28]_i_13_n_6 ;
  wire \sgla_f_reg[28]_i_30_n_0 ;
  wire \sgla_f_reg[28]_i_30_n_1 ;
  wire \sgla_f_reg[28]_i_30_n_2 ;
  wire \sgla_f_reg[28]_i_30_n_3 ;
  wire \sgla_f_reg[28]_i_30_n_7 ;
  wire \sgla_f_reg[28]_i_6_n_0 ;
  wire \sgla_f_reg[28]_i_6_n_1 ;
  wire \sgla_f_reg[28]_i_6_n_2 ;
  wire \sgla_f_reg[28]_i_6_n_3 ;
  wire \sgla_f_reg[2]_0 ;
  wire [0:0]\sgla_f_reg[31]_0 ;
  wire [0:0]\sgla_f_reg[31]_1 ;
  wire \sgla_f_reg[3]_0 ;
  wire \sgla_f_reg[5]_0 ;
  wire \sgla_f_reg[5]_1 ;
  wire \sgla_f_reg[7]_0 ;
  wire \sgla_f_reg[8]_0 ;
  wire \sgla_f_reg[8]_1 ;
  wire \sgla_f_reg[9]_0 ;
  wire \sgla_i_reg[10]_0 ;
  wire \sgla_i_reg[11]_0 ;
  wire \sgla_i_reg[12]_0 ;
  wire \sgla_i_reg[23]_0 ;
  wire \sgla_i_reg[24]_0 ;
  wire \sgla_i_reg[24]_1 ;
  wire \sgla_i_reg[24]_2 ;
  wire \sgla_i_reg[28]_0 ;
  wire \sgla_i_reg[29]_0 ;
  wire \sgla_i_reg[30]_0 ;
  wire \sgla_i_reg[31]_0 ;
  wire \sgla_i_reg[4]_0 ;
  wire \sgla_i_reg[5]_0 ;
  wire \sgla_i_reg[6]_0 ;
  wire \sgla_i_reg[7]_0 ;
  wire \sgla_i_reg[8]_0 ;
  wire \sgla_i_reg_n_0_[0] ;
  wire \sgla_i_reg_n_0_[10] ;
  wire \sgla_i_reg_n_0_[11] ;
  wire \sgla_i_reg_n_0_[12] ;
  wire \sgla_i_reg_n_0_[13] ;
  wire \sgla_i_reg_n_0_[14] ;
  wire \sgla_i_reg_n_0_[15] ;
  wire \sgla_i_reg_n_0_[16] ;
  wire \sgla_i_reg_n_0_[17] ;
  wire \sgla_i_reg_n_0_[18] ;
  wire \sgla_i_reg_n_0_[19] ;
  wire \sgla_i_reg_n_0_[1] ;
  wire \sgla_i_reg_n_0_[20] ;
  wire \sgla_i_reg_n_0_[21] ;
  wire \sgla_i_reg_n_0_[22] ;
  wire \sgla_i_reg_n_0_[2] ;
  wire \sgla_i_reg_n_0_[3] ;
  wire \sgla_i_reg_n_0_[4] ;
  wire \sgla_i_reg_n_0_[5] ;
  wire \sgla_i_reg_n_0_[6] ;
  wire \sgla_i_reg_n_0_[7] ;
  wire \sgla_i_reg_n_0_[8] ;
  wire \sgla_i_reg_n_0_[9] ;
  wire [42:0]sgla_r_0;
  wire sgla_sft_fin;
  wire \sglb_e[0]_i_2_n_0 ;
  wire \sglb_e[1]_i_4_n_0 ;
  wire \sglb_e[1]_i_5_n_0 ;
  wire \sglb_e[1]_i_6_n_0 ;
  wire \sglb_e[2]_i_2_n_0 ;
  wire \sglb_e[3]_i_3_n_0 ;
  wire \sglb_e[4]_i_6_n_0 ;
  wire \sglb_e[8]_i_20_n_0 ;
  wire \sglb_e[8]_i_3_n_0 ;
  wire \sglb_e_reg[1] ;
  wire \sglb_e_reg[2] ;
  wire \sglb_e_reg[2]_0 ;
  wire [3:0]\sglb_e_reg[3] ;
  wire \sglb_e_reg[3]_0 ;
  wire \sglb_e_reg[3]_1 ;
  wire \sglb_e_reg[3]_2 ;
  wire \sglb_e_reg[3]_3 ;
  wire \sglb_e_reg[4] ;
  wire [0:0]\sglb_e_reg[8] ;
  wire [0:0]\sglb_e_reg[8]_i_15_0 ;
  wire \sglb_e_reg[8]_i_4_n_0 ;
  wire \sglb_e_reg[8]_i_4_n_1 ;
  wire \sglb_e_reg[8]_i_4_n_2 ;
  wire \sglb_e_reg[8]_i_4_n_3 ;
  wire \sglb_f[0]_i_2_n_0 ;
  wire \sglb_f[10]_i_2_n_0 ;
  wire \sglb_f[10]_i_3_n_0 ;
  wire \sglb_f[11]_i_2_n_0 ;
  wire \sglb_f[11]_i_3_n_0 ;
  wire \sglb_f[12]_i_2_n_0 ;
  wire \sglb_f[12]_i_3_n_0 ;
  wire \sglb_f[13]_i_2_n_0 ;
  wire \sglb_f[13]_i_3_n_0 ;
  wire \sglb_f[14]_i_2_n_0 ;
  wire \sglb_f[14]_i_3_n_0 ;
  wire \sglb_f[15]_i_2_n_0 ;
  wire \sglb_f[15]_i_3_n_0 ;
  wire \sglb_f[16]_i_2_n_0 ;
  wire \sglb_f[17]_i_2_n_0 ;
  wire \sglb_f[18]_i_2_n_0 ;
  wire \sglb_f[19]_i_2_n_0 ;
  wire \sglb_f[1]_i_2_n_0 ;
  wire \sglb_f[20]_i_2_n_0 ;
  wire \sglb_f[21]_i_2_n_0 ;
  wire \sglb_f[22]_i_2_n_0 ;
  wire \sglb_f[23]_i_2_n_0 ;
  wire \sglb_f[29]_i_2_n_0 ;
  wire \sglb_f[2]_i_2_n_0 ;
  wire \sglb_f[30]_i_4_n_0 ;
  wire \sglb_f[31]_i_3_n_0 ;
  wire \sglb_f[31]_i_5_n_0 ;
  wire \sglb_f[31]_i_9_n_0 ;
  wire \sglb_f[3]_i_2_n_0 ;
  wire \sglb_f[4]_i_2_n_0 ;
  wire \sglb_f[4]_i_3_n_0 ;
  wire \sglb_f[4]_i_4_n_0 ;
  wire \sglb_f[4]_i_5_n_0 ;
  wire \sglb_f[5]_i_2_n_0 ;
  wire \sglb_f[5]_i_3_n_0 ;
  wire \sglb_f[6]_i_2_n_0 ;
  wire \sglb_f[6]_i_3_n_0 ;
  wire \sglb_f[7]_i_2_n_0 ;
  wire \sglb_f[7]_i_3_n_0 ;
  wire \sglb_f[8]_i_2_n_0 ;
  wire \sglb_f[8]_i_3_n_0 ;
  wire \sglb_f[9]_i_2_n_0 ;
  wire \sglb_f[9]_i_3_n_0 ;
  wire \sglb_f_reg[26] ;
  wire \sglb_f_reg[27] ;
  wire \sglb_f_reg[28] ;
  wire \sglb_f_reg[28]_0 ;
  wire \sglb_f_reg[29] ;
  wire [25:0]\sglb_f_reg[30] ;
  wire \sglb_f_reg[31] ;
  wire [3:0]\sglb_f_reg[31]_0 ;
  wire \sglb_f_reg[31]_i_4_n_0 ;
  wire \sglb_f_reg[31]_i_4_n_1 ;
  wire \sglb_f_reg[31]_i_4_n_2 ;
  wire \sglb_f_reg[31]_i_4_n_3 ;
  wire sglb_nan0;
  wire sglb_nan012_in;
  wire [40:0]sglb_r;
  wire sglb_sft_fin;
  wire [0:0]sglc_e_carry;
  wire \sglc_f_reg[27] ;
  wire \sglc_f_reg[29] ;
  wire \sglc_f_reg[30] ;
  wire \sglc_f_reg[31] ;
  wire \sglc_i[41]_i_3_n_0 ;
  wire \sglc_i[43]_i_2_n_0 ;
  wire \sglc_i[44]_i_4_n_0 ;
  wire \sglc_i[44]_i_6_n_0 ;
  wire \sglc_i[44]_i_7_n_0 ;
  wire [0:0]\sglc_i_reg[41] ;
  wire \sglc_i_reg[43] ;
  wire \sglc_i_reg[43]_0 ;
  wire \sglc_i_reg[43]_1 ;
  wire [0:0]sglc_r_fadd;
  wire [2:0]sglc_r_sgla;
  wire sglc_s2__0;
  wire [0:0]sglc_sr_flag;
  wire \stat_reg[0] ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[0]_2 ;
  wire \stat_reg[2] ;
  wire \stat_reg[3] ;
  wire \stat_reg[3]_0 ;
  wire \stat_reg[3]_1 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h44F444F444F4FFFF)) 
    \cbus[0]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(cbus_0_sn_1),
        .I2(\cbus[21] [0]),
        .I3(\cbus[0]_0 ),
        .I4(\sgla_f_reg[0]_0 ),
        .I5(\cbus[0]_1 ),
        .O(cbus[0]));
  LUT6 #(
    .INIT(64'h0000AAEFAAEFAAEF)) 
    \cbus[0]_INST_0_i_2 
       (.I0(\sglc_i_reg[43] ),
        .I1(\sgla_i_reg[24]_0 ),
        .I2(sgla_r_0[0]),
        .I3(\cbus[0]_INST_0_i_5_n_0 ),
        .I4(\cbus[0]_2 ),
        .I5(fctl_ccmd_add),
        .O(\sgla_f_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00000000EAEAFFEA)) 
    \cbus[0]_INST_0_i_3 
       (.I0(\cbus[11]_INST_0_i_3_n_0 ),
        .I1(\cbus[11]_INST_0_i_2_n_0 ),
        .I2(\sgla_i_reg_n_0_[5] ),
        .I3(sgla_r_0[5]),
        .I4(\cbus[22]_INST_0_i_12_n_0 ),
        .I5(\sglc_i_reg[43] ),
        .O(\sgla_i_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \cbus[0]_INST_0_i_5 
       (.I0(\sgla_i_reg_n_0_[0] ),
        .I1(ccmd_f[4]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[2]),
        .I4(ccmd_f[1]),
        .I5(ccmd_f[0]),
        .O(\cbus[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \cbus[10]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\sgla_f_reg[15]_0 ),
        .I2(\cbus[21] [5]),
        .I3(\cbus[0]_0 ),
        .I4(cbus_5_sn_1),
        .I5(\cbus[0]_1 ),
        .O(cbus[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFD5550000)) 
    \cbus[10]_INST_0_i_4 
       (.I0(\cbus[11]_INST_0_i_6_n_0 ),
        .I1(sgla_r_0[36]),
        .I2(\cbus[22]_INST_0_i_10_n_0 ),
        .I3(sgla_r_0[33]),
        .I4(sgla_r_0[10]),
        .I5(\cbus[10]_INST_0_i_6_n_0 ),
        .O(sglc_r_sgla[1]));
  LUT3 #(
    .INIT(8'hEA)) 
    \cbus[10]_INST_0_i_6 
       (.I0(\cbus[11]_INST_0_i_3_n_0 ),
        .I1(\cbus[11]_INST_0_i_2_n_0 ),
        .I2(\sgla_i_reg_n_0_[10] ),
        .O(\cbus[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \cbus[11]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\sgla_f_reg[16]_0 ),
        .I2(\cbus[21] [6]),
        .I3(\cbus[0]_0 ),
        .I4(\sgla_i_reg[11]_0 ),
        .I5(\cbus[0]_1 ),
        .O(cbus[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555540)) 
    \cbus[11]_INST_0_i_1 
       (.I0(\sglc_i_reg[43] ),
        .I1(\sgla_i_reg_n_0_[11] ),
        .I2(\cbus[11]_INST_0_i_2_n_0 ),
        .I3(\cbus[11]_INST_0_i_3_n_0 ),
        .I4(\cbus[11]_INST_0_i_4_n_0 ),
        .I5(\cbus[11]_1 ),
        .O(\sgla_i_reg[11]_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \cbus[11]_INST_0_i_2 
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[1]),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[4]),
        .O(\cbus[11]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \cbus[11]_INST_0_i_3 
       (.I0(\cbus[15]_INST_0_i_6_n_0 ),
        .I1(\sgla_i_reg[10]_0 ),
        .I2(ccmd_f[1]),
        .I3(\cbus[19]_INST_0_i_11_n_0 ),
        .I4(p_0_in_0[1]),
        .O(\cbus[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA8000000AAAAAAAA)) 
    \cbus[11]_INST_0_i_4 
       (.I0(sgla_r_0[11]),
        .I1(sgla_r_0[33]),
        .I2(sgla_r_0[32]),
        .I3(\cbus[22]_INST_0_i_10_n_0 ),
        .I4(sgla_r_0[36]),
        .I5(\cbus[11]_INST_0_i_6_n_0 ),
        .O(\cbus[11]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \cbus[11]_INST_0_i_6 
       (.I0(\cbus[22]_INST_0_i_12_n_0 ),
        .I1(sgla_r_0[34]),
        .I2(\cbus[22]_INST_0_i_10_n_0 ),
        .I3(sgla_r_0[36]),
        .O(\cbus[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \cbus[12]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\sgla_f_reg[17]_0 ),
        .I2(\cbus[21] [7]),
        .I3(\cbus[0]_0 ),
        .I4(cbus_7_sn_1),
        .I5(\cbus[0]_1 ),
        .O(cbus[10]));
  LUT6 #(
    .INIT(64'h00000000EAEAFFEA)) 
    \cbus[12]_INST_0_i_2 
       (.I0(\sgla_i_reg[23]_0 ),
        .I1(\cbus[11]_INST_0_i_2_n_0 ),
        .I2(\sgla_i_reg_n_0_[12] ),
        .I3(sgla_r_0[12]),
        .I4(\cbus[15]_INST_0_i_3_n_0 ),
        .I5(\sglc_i_reg[43] ),
        .O(\sgla_i_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \cbus[13]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\sgla_f_reg[18]_0 ),
        .I2(\cbus[21] [8]),
        .I3(\cbus[0]_0 ),
        .I4(cbus_13_sn_1),
        .I5(\cbus[0]_1 ),
        .O(cbus[11]));
  LUT6 #(
    .INIT(64'h00000000FFF2F2F2)) 
    \cbus[13]_INST_0_i_2 
       (.I0(sgla_r_0[13]),
        .I1(\cbus[13]_INST_0_i_4_n_0 ),
        .I2(\cbus[11]_INST_0_i_3_n_0 ),
        .I3(\cbus[11]_INST_0_i_2_n_0 ),
        .I4(\sgla_i_reg_n_0_[13] ),
        .I5(\sglc_i_reg[43] ),
        .O(\sgla_f_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hAAA2AAA2AA82AAA2)) 
    \cbus[13]_INST_0_i_4 
       (.I0(\cbus[22]_INST_0_i_12_n_0 ),
        .I1(sgla_r_0[36]),
        .I2(sgla_r_0[35]),
        .I3(\cbus[22]_INST_0_i_13_n_0 ),
        .I4(sgla_r_0[34]),
        .I5(\cbus[21]_INST_0_i_21_n_0 ),
        .O(\cbus[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \cbus[14]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\sgla_f_reg[19]_0 ),
        .I2(\cbus[21] [9]),
        .I3(\cbus[0]_0 ),
        .I4(\sgla_f_reg[14]_0 ),
        .I5(\cbus[0]_1 ),
        .O(cbus[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555100)) 
    \cbus[14]_INST_0_i_1 
       (.I0(\sglc_i_reg[43] ),
        .I1(\cbus[15]_INST_0_i_3_n_0 ),
        .I2(\cbus[14]_INST_0_i_2_n_0 ),
        .I3(sgla_r_0[14]),
        .I4(\cbus[14]_INST_0_i_3_n_0 ),
        .I5(\cbus[14]_1 ),
        .O(\sgla_f_reg[14]_0 ));
  LUT5 #(
    .INIT(32'h00080800)) 
    \cbus[14]_INST_0_i_2 
       (.I0(sgla_r_0[33]),
        .I1(sgla_r_0[34]),
        .I2(\cbus[22]_INST_0_i_13_n_0 ),
        .I3(sgla_r_0[35]),
        .I4(sgla_r_0[36]),
        .O(\cbus[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \cbus[14]_INST_0_i_3 
       (.I0(\cbus[30]_INST_0_i_27_n_0 ),
        .I1(ccmd_f[1]),
        .I2(\sgla_i_reg[10]_0 ),
        .I3(\cbus[15]_INST_0_i_6_n_0 ),
        .I4(\cbus[11]_INST_0_i_2_n_0 ),
        .I5(\sgla_i_reg_n_0_[14] ),
        .O(\cbus[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \cbus[15]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\sgla_f_reg[20]_0 ),
        .I2(\cbus[21] [10]),
        .I3(\cbus[0]_0 ),
        .I4(\sgla_f_reg[15]_0 ),
        .I5(\cbus[0]_1 ),
        .O(cbus[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55454444)) 
    \cbus[15]_INST_0_i_1 
       (.I0(\sglc_i_reg[43] ),
        .I1(\cbus[15]_INST_0_i_2_n_0 ),
        .I2(\cbus[15]_INST_0_i_3_n_0 ),
        .I3(\cbus[15]_INST_0_i_4_n_0 ),
        .I4(sgla_r_0[15]),
        .I5(\cbus[15]_0 ),
        .O(\sgla_f_reg[15]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cbus[15]_INST_0_i_10 
       (.I0(p_0_in_0[7]),
        .I1(p_0_in_0[6]),
        .O(\cbus[15]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \cbus[15]_INST_0_i_11 
       (.I0(sgla_r_0[33]),
        .I1(sgla_r_0[32]),
        .I2(sgla_r_0[34]),
        .O(\cbus[15]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[15]_INST_0_i_12 
       (.I0(sgla_r_0[39]),
        .I1(sgla_r_0[37]),
        .I2(sgla_r_0[38]),
        .I3(Q),
        .O(\cbus[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \cbus[15]_INST_0_i_2 
       (.I0(\cbus[30]_INST_0_i_27_n_0 ),
        .I1(ccmd_f[1]),
        .I2(\sgla_i_reg[10]_0 ),
        .I3(\cbus[15]_INST_0_i_6_n_0 ),
        .I4(\cbus[11]_INST_0_i_2_n_0 ),
        .I5(\sgla_i_reg_n_0_[15] ),
        .O(\cbus[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4544000045444544)) 
    \cbus[15]_INST_0_i_3 
       (.I0(\cbus[15]_INST_0_i_7_n_0 ),
        .I1(\cbus[31]_INST_0_i_37_n_0 ),
        .I2(\sgla_i_reg[24]_1 ),
        .I3(\cbus[15]_INST_0_i_8_n_0 ),
        .I4(sgla_r_0[35]),
        .I5(\cbus[21]_INST_0_i_20_n_0 ),
        .O(\cbus[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E0E000)) 
    \cbus[15]_INST_0_i_4 
       (.I0(sgla_r_0[32]),
        .I1(sgla_r_0[33]),
        .I2(sgla_r_0[34]),
        .I3(sgla_r_0[36]),
        .I4(sgla_r_0[35]),
        .I5(\cbus[22]_INST_0_i_13_n_0 ),
        .O(\cbus[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \cbus[15]_INST_0_i_6 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[5]),
        .I4(p_0_in_0[3]),
        .I5(\cbus[15]_INST_0_i_10_n_0 ),
        .O(\cbus[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0500F00007000000)) 
    \cbus[15]_INST_0_i_7 
       (.I0(ccmd_f[1]),
        .I1(\sgla_i_reg[24]_1 ),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[4]),
        .I4(ccmd_f[3]),
        .I5(ccmd_f[0]),
        .O(\cbus[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000B0B0000BB0B)) 
    \cbus[15]_INST_0_i_8 
       (.I0(\cbus[15]_INST_0_i_6_n_0 ),
        .I1(p_0_in_0[1]),
        .I2(sgla_r_0[36]),
        .I3(\cbus[15]_INST_0_i_11_n_0 ),
        .I4(\cbus[15]_INST_0_i_12_n_0 ),
        .I5(sgla_r_0[35]),
        .O(\cbus[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \cbus[16]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\fquo_reg[11] ),
        .I2(\cbus[21] [11]),
        .I3(\cbus[0]_0 ),
        .I4(\sgla_f_reg[16]_0 ),
        .I5(\cbus[0]_1 ),
        .O(cbus[14]));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFEFFFE)) 
    \cbus[16]_INST_0_i_1 
       (.I0(cbus_11_sn_1),
        .I1(\cbus[11]_0 ),
        .I2(\cbus[16]_INST_0_i_4_n_0 ),
        .I3(sgla_r_0[16]),
        .I4(\cbus[19]_INST_0_i_7_n_0 ),
        .I5(\sglc_i_reg[43] ),
        .O(\sgla_f_reg[16]_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \cbus[16]_INST_0_i_4 
       (.I0(\sgla_i_reg[23]_0 ),
        .I1(\cbus[11]_INST_0_i_2_n_0 ),
        .I2(\sgla_i_reg_n_0_[16] ),
        .O(\cbus[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \cbus[17]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\sgla_f_reg[22]_0 ),
        .I2(\cbus[21] [12]),
        .I3(\cbus[0]_0 ),
        .I4(\sgla_f_reg[17]_0 ),
        .I5(\cbus[0]_1 ),
        .O(cbus[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55454444)) 
    \cbus[17]_INST_0_i_1 
       (.I0(\sglc_i_reg[43] ),
        .I1(\cbus[17]_INST_0_i_3_n_0 ),
        .I2(\cbus[20]_INST_0_i_6_n_0 ),
        .I3(\cbus[17]_INST_0_i_4_n_0 ),
        .I4(sgla_r_0[22]),
        .I5(cbus_17_sn_1),
        .O(\sgla_f_reg[22]_0 ));
  LUT3 #(
    .INIT(8'hEB)) 
    \cbus[17]_INST_0_i_11 
       (.I0(\cbus[22]_INST_0_i_13_n_0 ),
        .I1(sgla_r_0[35]),
        .I2(sgla_r_0[36]),
        .O(\cbus[17]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFEFFFE)) 
    \cbus[17]_INST_0_i_2 
       (.I0(cbus_12_sn_1),
        .I1(\cbus[12]_0 ),
        .I2(\cbus[17]_INST_0_i_8_n_0 ),
        .I3(sgla_r_0[17]),
        .I4(\cbus[19]_INST_0_i_7_n_0 ),
        .I5(\sglc_i_reg[43] ),
        .O(\sgla_f_reg[17]_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \cbus[17]_INST_0_i_3 
       (.I0(\cbus[11]_INST_0_i_3_n_0 ),
        .I1(\cbus[11]_INST_0_i_2_n_0 ),
        .I2(\sgla_i_reg_n_0_[22] ),
        .O(\cbus[17]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \cbus[17]_INST_0_i_4 
       (.I0(sgla_r_0[33]),
        .I1(\cbus[22]_INST_0_i_10_n_0 ),
        .I2(sgla_r_0[34]),
        .O(\cbus[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF040404)) 
    \cbus[17]_INST_0_i_8 
       (.I0(\cbus[17]_INST_0_i_11_n_0 ),
        .I1(sgla_r_0[17]),
        .I2(\cbus[21]_INST_0_i_21_n_0 ),
        .I3(\sgla_i_reg_n_0_[17] ),
        .I4(\cbus[11]_INST_0_i_2_n_0 ),
        .I5(\cbus[11]_INST_0_i_3_n_0 ),
        .O(\cbus[17]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \cbus[18]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\sgla_f_reg[23]_1 ),
        .I2(\cbus[21] [13]),
        .I3(\cbus[0]_0 ),
        .I4(\sgla_f_reg[18]_0 ),
        .I5(\cbus[0]_1 ),
        .O(cbus[16]));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFEFFFE)) 
    \cbus[18]_INST_0_i_1 
       (.I0(cbus_18_sn_1),
        .I1(\cbus[18]_0 ),
        .I2(\cbus[18]_INST_0_i_5_n_0 ),
        .I3(sgla_r_0[23]),
        .I4(\cbus[18]_INST_0_i_6_n_0 ),
        .I5(\sglc_i_reg[43] ),
        .O(\sgla_f_reg[23]_1 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \cbus[18]_INST_0_i_12 
       (.I0(\cbus[11]_INST_0_i_2_n_0 ),
        .I1(\sgla_i_reg_n_0_[18] ),
        .I2(sgla_r_0[33]),
        .I3(sgla_r_0[18]),
        .I4(\cbus[21]_INST_0_i_20_n_0 ),
        .O(\cbus[18]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFEFFFE)) 
    \cbus[18]_INST_0_i_2 
       (.I0(\cbus[13]_0 ),
        .I1(\cbus[13]_1 ),
        .I2(\cbus[18]_INST_0_i_9_n_0 ),
        .I3(sgla_r_0[18]),
        .I4(\cbus[19]_INST_0_i_7_n_0 ),
        .I5(\sglc_i_reg[43] ),
        .O(\sgla_f_reg[18]_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \cbus[18]_INST_0_i_5 
       (.I0(\cbus[11]_INST_0_i_3_n_0 ),
        .I1(p_0_in_0[0]),
        .I2(\cbus[11]_INST_0_i_2_n_0 ),
        .O(\cbus[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC8C8C8C8C4C0C4C4)) 
    \cbus[18]_INST_0_i_6 
       (.I0(sgla_r_0[36]),
        .I1(\cbus[22]_INST_0_i_12_n_0 ),
        .I2(\cbus[22]_INST_0_i_13_n_0 ),
        .I3(\cbus[22]_INST_0_i_11_n_0 ),
        .I4(sgla_r_0[34]),
        .I5(sgla_r_0[35]),
        .O(\cbus[18]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \cbus[18]_INST_0_i_9 
       (.I0(\cbus[19]_INST_0_i_11_n_0 ),
        .I1(p_0_in_0[1]),
        .I2(\cbus[19]_INST_0_i_12_n_0 ),
        .I3(\cbus[18]_INST_0_i_12_n_0 ),
        .O(\cbus[18]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \cbus[19]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\sgla_f_reg[24]_0 ),
        .I2(\cbus[21] [14]),
        .I3(\cbus[0]_0 ),
        .I4(\sgla_f_reg[19]_0 ),
        .I5(\cbus[0]_1 ),
        .O(cbus[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55101010)) 
    \cbus[19]_INST_0_i_1 
       (.I0(\sglc_i_reg[43] ),
        .I1(\cbus[22]_INST_0_i_7_n_0 ),
        .I2(sgla_r_0[24]),
        .I3(p_0_in_0[1]),
        .I4(\cbus[27]_INST_0_i_4_n_0 ),
        .I5(cbus_19_sn_1),
        .O(\sgla_f_reg[24]_0 ));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \cbus[19]_INST_0_i_11 
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[4]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[0]),
        .O(\cbus[19]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \cbus[19]_INST_0_i_12 
       (.I0(ccmd_f[1]),
        .I1(\cbus[19]_INST_0_i_19_n_0 ),
        .I2(p_0_in_0[6]),
        .I3(p_0_in_0[5]),
        .I4(p_0_in_0[2]),
        .I5(\sgla_i_reg[10]_0 ),
        .O(\cbus[19]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8888888888888)) 
    \cbus[19]_INST_0_i_13 
       (.I0(\cbus[11]_INST_0_i_2_n_0 ),
        .I1(\sgla_i_reg_n_0_[19] ),
        .I2(sgla_r_0[33]),
        .I3(sgla_r_0[32]),
        .I4(sgla_r_0[19]),
        .I5(\cbus[21]_INST_0_i_20_n_0 ),
        .O(\cbus[19]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cbus[19]_INST_0_i_19 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[7]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[4]),
        .O(\cbus[19]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFEFFFE)) 
    \cbus[19]_INST_0_i_2 
       (.I0(cbus_14_sn_1),
        .I1(\cbus[14]_0 ),
        .I2(\cbus[19]_INST_0_i_6_n_0 ),
        .I3(sgla_r_0[19]),
        .I4(\cbus[19]_INST_0_i_7_n_0 ),
        .I5(\sglc_i_reg[43] ),
        .O(\sgla_f_reg[19]_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \cbus[19]_INST_0_i_6 
       (.I0(\cbus[19]_INST_0_i_11_n_0 ),
        .I1(p_0_in_0[1]),
        .I2(\cbus[19]_INST_0_i_12_n_0 ),
        .I3(\cbus[19]_INST_0_i_13_n_0 ),
        .O(\cbus[19]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAA0A2AA)) 
    \cbus[19]_INST_0_i_7 
       (.I0(\cbus[22]_INST_0_i_12_n_0 ),
        .I1(sgla_r_0[34]),
        .I2(\cbus[22]_INST_0_i_13_n_0 ),
        .I3(sgla_r_0[35]),
        .I4(sgla_r_0[36]),
        .O(\cbus[19]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F444F4FFFF)) 
    \cbus[1]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\sgla_i_reg[6]_0 ),
        .I2(\cbus[21] [1]),
        .I3(\cbus[0]_0 ),
        .I4(\sgla_f_reg[1]_0 ),
        .I5(\cbus[0]_1 ),
        .O(cbus[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555540)) 
    \cbus[1]_INST_0_i_1 
       (.I0(\sglc_i_reg[43] ),
        .I1(\sgla_i_reg_n_0_[6] ),
        .I2(\cbus[11]_INST_0_i_2_n_0 ),
        .I3(\cbus[11]_INST_0_i_3_n_0 ),
        .I4(\cbus[1]_INST_0_i_3_n_0 ),
        .I5(\cbus[1]_0 ),
        .O(\sgla_i_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h00000000AAEFEFEF)) 
    \cbus[1]_INST_0_i_2 
       (.I0(\sglc_i_reg[43] ),
        .I1(\sgla_i_reg[24]_0 ),
        .I2(sgla_r_0[1]),
        .I3(\cbus[11]_INST_0_i_2_n_0 ),
        .I4(\sgla_i_reg_n_0_[1] ),
        .I5(cbus_1_sn_1),
        .O(\sgla_f_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8C0C0C0C0C0C0C0C)) 
    \cbus[1]_INST_0_i_3 
       (.I0(sgla_r_0[33]),
        .I1(sgla_r_0[6]),
        .I2(\cbus[22]_INST_0_i_12_n_0 ),
        .I3(sgla_r_0[34]),
        .I4(\cbus[22]_INST_0_i_10_n_0 ),
        .I5(sgla_r_0[36]),
        .O(\cbus[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \cbus[20]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\sgla_f_reg[25]_0 ),
        .I2(\cbus[21] [15]),
        .I3(\cbus[0]_0 ),
        .I4(\sgla_f_reg[20]_0 ),
        .I5(\cbus[0]_1 ),
        .O(cbus[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555100)) 
    \cbus[20]_INST_0_i_1 
       (.I0(\sglc_i_reg[43] ),
        .I1(\cbus[22]_INST_0_i_7_n_0 ),
        .I2(\cbus[20]_INST_0_i_3_n_0 ),
        .I3(sgla_r_0[25]),
        .I4(\cbus[20]_INST_0_i_4_n_0 ),
        .I5(cbus_20_sn_1),
        .O(\sgla_f_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555510)) 
    \cbus[20]_INST_0_i_2 
       (.I0(\sglc_i_reg[43] ),
        .I1(\cbus[20]_INST_0_i_6_n_0 ),
        .I2(sgla_r_0[20]),
        .I3(\cbus[20]_INST_0_i_7_n_0 ),
        .I4(\sgla_i_reg[23]_0 ),
        .I5(cbus_15_sn_1),
        .O(\sgla_f_reg[20]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \cbus[20]_INST_0_i_3 
       (.I0(\cbus[22]_INST_0_i_10_n_0 ),
        .I1(sgla_r_0[33]),
        .I2(sgla_r_0[32]),
        .O(\cbus[20]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \cbus[20]_INST_0_i_4 
       (.I0(\cbus[11]_INST_0_i_3_n_0 ),
        .I1(\cbus[11]_INST_0_i_2_n_0 ),
        .I2(p_0_in_0[2]),
        .O(\cbus[20]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[20]_INST_0_i_6 
       (.I0(\cbus[22]_INST_0_i_12_n_0 ),
        .I1(\cbus[21]_INST_0_i_20_n_0 ),
        .O(\cbus[20]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \cbus[20]_INST_0_i_7 
       (.I0(\sgla_i_reg_n_0_[20] ),
        .I1(ccmd_f[4]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[2]),
        .I4(ccmd_f[1]),
        .I5(ccmd_f[0]),
        .O(\cbus[20]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \cbus[21]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\sgla_f_reg[26]_0 ),
        .I2(\cbus[21] [16]),
        .I3(\cbus[0]_0 ),
        .I4(\fquo_reg[11] ),
        .I5(\cbus[0]_1 ),
        .O(cbus[19]));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFEFFFE)) 
    \cbus[21]_INST_0_i_1 
       (.I0(\cbus[21]_0 ),
        .I1(\cbus[21]_1 ),
        .I2(\cbus[21]_INST_0_i_7_n_0 ),
        .I3(sgla_r_0[26]),
        .I4(\cbus[22]_INST_0_i_7_n_0 ),
        .I5(\sglc_i_reg[43] ),
        .O(\sgla_f_reg[26]_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \cbus[21]_INST_0_i_14 
       (.I0(sgla_r_0[21]),
        .I1(\cbus[21]_INST_0_i_20_n_0 ),
        .I2(\cbus[22]_INST_0_i_12_n_0 ),
        .O(\cbus[21]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \cbus[21]_INST_0_i_15 
       (.I0(\cbus[11]_INST_0_i_2_n_0 ),
        .I1(\sgla_i_reg_n_0_[21] ),
        .I2(sgla_r_0[34]),
        .I3(\cbus[21]_INST_0_i_21_n_0 ),
        .I4(sgla_r_0[21]),
        .I5(\cbus[22]_INST_0_i_10_n_0 ),
        .O(\cbus[21]_INST_0_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h14)) 
    \cbus[21]_INST_0_i_20 
       (.I0(\cbus[22]_INST_0_i_13_n_0 ),
        .I1(sgla_r_0[36]),
        .I2(sgla_r_0[35]),
        .O(\cbus[21]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cbus[21]_INST_0_i_21 
       (.I0(sgla_r_0[32]),
        .I1(sgla_r_0[33]),
        .O(\cbus[21]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFFFFFE)) 
    \cbus[21]_INST_0_i_3 
       (.I0(cbus_16_sn_1),
        .I1(\cbus[16]_0 ),
        .I2(\cbus[21]_INST_0_i_14_n_0 ),
        .I3(\cbus[21]_INST_0_i_15_n_0 ),
        .I4(\sgla_i_reg[23]_0 ),
        .I5(\sglc_i_reg[43] ),
        .O(\fquo_reg[11] ));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \cbus[21]_INST_0_i_7 
       (.I0(\cbus[11]_INST_0_i_3_n_0 ),
        .I1(\cbus[22]_INST_0_i_10_n_0 ),
        .I2(sgla_r_0[26]),
        .I3(sgla_r_0[33]),
        .I4(p_0_in_0[3]),
        .I5(\cbus[11]_INST_0_i_2_n_0 ),
        .O(\cbus[21]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \cbus[22]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\sgla_f_reg[27]_0 ),
        .I2(\cbus[22] ),
        .O(cbus[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cbus[22]_INST_0_i_1 
       (.I0(p_5_in),
        .I1(\cbus[0]_3 ),
        .I2(\cbus[0]_4 ),
        .I3(\cbus[0]_5 ),
        .I4(\sgla_e_reg[8]_0 ),
        .I5(\cbus[0]_6 ),
        .O(fctl_ccmd_add_reg));
  LUT2 #(
    .INIT(4'h1)) 
    \cbus[22]_INST_0_i_10 
       (.I0(sgla_r_0[35]),
        .I1(\cbus[22]_INST_0_i_13_n_0 ),
        .O(\cbus[22]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cbus[22]_INST_0_i_11 
       (.I0(sgla_r_0[32]),
        .I1(sgla_r_0[33]),
        .O(\cbus[22]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0F0F100)) 
    \cbus[22]_INST_0_i_12 
       (.I0(\cbus[30]_INST_0_i_42_n_0 ),
        .I1(\sgla_i_reg[24]_2 ),
        .I2(\cbus[31]_INST_0_i_37_n_0 ),
        .I3(\cbus[19]_INST_0_i_11_n_0 ),
        .I4(\sgla_i_reg[24]_1 ),
        .I5(\cbus[22]_INST_0_i_18_n_0 ),
        .O(\cbus[22]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEBFFFFFFF)) 
    \cbus[22]_INST_0_i_13 
       (.I0(\cbus[31]_INST_0_i_37_n_0 ),
        .I1(sgla_r_0[38]),
        .I2(sgla_r_0[39]),
        .I3(Q),
        .I4(sgla_r_0[37]),
        .I5(\cbus[22]_INST_0_i_19_n_0 ),
        .O(\cbus[22]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h03008800)) 
    \cbus[22]_INST_0_i_18 
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[1]),
        .I3(ccmd_f[4]),
        .I4(ccmd_f[3]),
        .O(\cbus[22]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cbus[22]_INST_0_i_19 
       (.I0(sgla_r_0[35]),
        .I1(sgla_r_0[36]),
        .O(\cbus[22]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFEFFFE)) 
    \cbus[22]_INST_0_i_2 
       (.I0(\cbus[22]_0 ),
        .I1(\cbus[22]_1 ),
        .I2(\cbus[22]_INST_0_i_6_n_0 ),
        .I3(sgla_r_0[27]),
        .I4(\cbus[22]_INST_0_i_7_n_0 ),
        .I5(\sglc_i_reg[43] ),
        .O(\sgla_f_reg[27]_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAEAAAEAAAEA)) 
    \cbus[22]_INST_0_i_6 
       (.I0(\cbus[11]_INST_0_i_3_n_0 ),
        .I1(\cbus[22]_INST_0_i_10_n_0 ),
        .I2(sgla_r_0[27]),
        .I3(\cbus[22]_INST_0_i_11_n_0 ),
        .I4(p_0_in_0[4]),
        .I5(\cbus[11]_INST_0_i_2_n_0 ),
        .O(\cbus[22]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hCC80CC84)) 
    \cbus[22]_INST_0_i_7 
       (.I0(sgla_r_0[36]),
        .I1(\cbus[22]_INST_0_i_12_n_0 ),
        .I2(sgla_r_0[35]),
        .I3(\cbus[22]_INST_0_i_13_n_0 ),
        .I4(sgla_r_0[34]),
        .O(\cbus[22]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cbus[25]_INST_0_i_1 
       (.I0(p_22_in[0]),
        .I1(\cbus[25] ),
        .O(\sgla_e_reg[2]_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \cbus[26]_INST_0_i_1 
       (.I0(p_22_in[1]),
        .I1(\cbus[25] ),
        .I2(p_22_in[0]),
        .O(\sgla_e_reg[3]_4 ));
  LUT5 #(
    .INIT(32'hFFFFFF90)) 
    \cbus[27]_INST_0 
       (.I0(p_22_in[2]),
        .I1(\cbus[27]_INST_0_i_2_n_0 ),
        .I2(\cbus[27] ),
        .I3(\cbus[27]_0 ),
        .I4(\cbus[27]_1 ),
        .O(cbus[21]));
  LUT5 #(
    .INIT(32'hFFFF4544)) 
    \cbus[27]_INST_0_i_1 
       (.I0(\sglc_i_reg[43] ),
        .I1(\cbus[27]_INST_0_i_4_n_0 ),
        .I2(\ccmd_f_reg[1]_0 ),
        .I3(sgla_r_0[36]),
        .I4(\cbus[27]_2 ),
        .O(p_22_in[2]));
  LUT3 #(
    .INIT(8'hFE)) 
    \cbus[27]_INST_0_i_2 
       (.I0(p_22_in[1]),
        .I1(\cbus[25] ),
        .I2(p_22_in[0]),
        .O(\cbus[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \cbus[27]_INST_0_i_4 
       (.I0(\sgla_i_reg[23]_0 ),
        .I1(ccmd_f[4]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[2]),
        .I4(ccmd_f[1]),
        .I5(ccmd_f[0]),
        .O(\cbus[27]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[28]_INST_0_i_2 
       (.I0(p_22_in[2]),
        .I1(p_22_in[0]),
        .I2(\cbus[25] ),
        .I3(p_22_in[1]),
        .O(\sgla_e_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h00000000EAEAFFEA)) 
    \cbus[28]_INST_0_i_8 
       (.I0(\cbus[11]_INST_0_i_3_n_0 ),
        .I1(\cbus[11]_INST_0_i_2_n_0 ),
        .I2(p_0_in_0[5]),
        .I3(sgla_r_0[28]),
        .I4(\ccmd_f_reg[1]_0 ),
        .I5(\sglc_i_reg[43] ),
        .O(\sgla_i_reg[28]_0 ));
  LUT6 #(
    .INIT(64'h00000000BFAABFBF)) 
    \cbus[29]_INST_0_i_10 
       (.I0(\sglc_i_reg[43] ),
        .I1(p_0_in_0[6]),
        .I2(\cbus[11]_INST_0_i_2_n_0 ),
        .I3(\ccmd_f_reg[3]_0 ),
        .I4(sgla_r_0[29]),
        .I5(\sglc_f_reg[29] ),
        .O(\sgla_i_reg[29]_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cbus[29]_INST_0_i_13 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[5]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[3]),
        .O(\cbus[29]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \cbus[29]_INST_0_i_14 
       (.I0(p_0_in_0[1]),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[4]),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[0]),
        .I5(ccmd_f[1]),
        .O(\cbus[29]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cbus[29]_INST_0_i_2 
       (.I0(\cbus[29] ),
        .I1(p_22_in[1]),
        .I2(\cbus[25] ),
        .I3(p_22_in[0]),
        .I4(p_22_in[2]),
        .O(\sgla_e_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \cbus[29]_INST_0_i_8 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[7]),
        .I2(p_0_in_0[6]),
        .I3(\cbus[29]_INST_0_i_13_n_0 ),
        .I4(\sgla_i_reg[10]_0 ),
        .I5(\cbus[29]_INST_0_i_14_n_0 ),
        .O(\sgla_i_reg[23]_0 ));
  LUT6 #(
    .INIT(64'hFAFF0FFFA8FFFFFF)) 
    \cbus[29]_INST_0_i_9 
       (.I0(ccmd_f[1]),
        .I1(\sgla_i_reg[24]_1 ),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[4]),
        .I4(ccmd_f[3]),
        .I5(ccmd_f[0]),
        .O(\ccmd_f_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h44F444F444F4FFFF)) 
    \cbus[2]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\sgla_i_reg[7]_0 ),
        .I2(\cbus[21] [2]),
        .I3(\cbus[0]_0 ),
        .I4(\sgla_f_reg[2]_0 ),
        .I5(\cbus[0]_1 ),
        .O(cbus[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555444)) 
    \cbus[2]_INST_0_i_1 
       (.I0(\sglc_i_reg[43] ),
        .I1(\cbus[2]_INST_0_i_3_n_0 ),
        .I2(\sgla_i_reg_n_0_[7] ),
        .I3(\cbus[11]_INST_0_i_2_n_0 ),
        .I4(\cbus[11]_INST_0_i_3_n_0 ),
        .I5(\cbus[2]_0 ),
        .O(\sgla_i_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h00000000AAEFEFEF)) 
    \cbus[2]_INST_0_i_2 
       (.I0(\sglc_i_reg[43] ),
        .I1(\sgla_i_reg[24]_0 ),
        .I2(sgla_r_0[2]),
        .I3(\cbus[11]_INST_0_i_2_n_0 ),
        .I4(\sgla_i_reg_n_0_[2] ),
        .I5(cbus_2_sn_1),
        .O(\sgla_f_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h08AA)) 
    \cbus[2]_INST_0_i_3 
       (.I0(sgla_r_0[7]),
        .I1(sgla_r_0[36]),
        .I2(\cbus[2]_INST_0_i_6_n_0 ),
        .I3(\cbus[22]_INST_0_i_12_n_0 ),
        .O(\cbus[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBBBF)) 
    \cbus[2]_INST_0_i_6 
       (.I0(sgla_r_0[35]),
        .I1(sgla_r_0[34]),
        .I2(sgla_r_0[33]),
        .I3(sgla_r_0[32]),
        .I4(\cbus[22]_INST_0_i_13_n_0 ),
        .O(\cbus[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001110)) 
    \cbus[30]_INST_0_i_11 
       (.I0(\cbus[31]_INST_0_i_19_n_0 ),
        .I1(\cbus[30]_INST_0_i_25_n_0 ),
        .I2(\cbus[30]_INST_0_i_26_n_0 ),
        .I3(\cbus[30]_INST_0_i_27_n_0 ),
        .I4(\cbus[30]_INST_0_i_28_n_0 ),
        .I5(\cbus[30]_INST_0_i_29_n_0 ),
        .O(\ccmd_f_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hFFFF4544)) 
    \cbus[30]_INST_0_i_13 
       (.I0(\sglc_i_reg[43] ),
        .I1(\cbus[27]_INST_0_i_4_n_0 ),
        .I2(\ccmd_f_reg[1]_0 ),
        .I3(sgla_r_0[34]),
        .I4(\cbus[30]_INST_0_i_4 ),
        .O(p_22_in[0]));
  LUT5 #(
    .INIT(32'hFFFF4544)) 
    \cbus[30]_INST_0_i_15 
       (.I0(\sglc_i_reg[43] ),
        .I1(\cbus[27]_INST_0_i_4_n_0 ),
        .I2(\ccmd_f_reg[1]_0 ),
        .I3(sgla_r_0[35]),
        .I4(\cbus[30]_INST_0_i_4_0 ),
        .O(p_22_in[1]));
  LUT6 #(
    .INIT(64'h00000000BFAABFBF)) 
    \cbus[30]_INST_0_i_19 
       (.I0(\sglc_i_reg[43] ),
        .I1(\cbus[11]_INST_0_i_2_n_0 ),
        .I2(p_0_in_0[7]),
        .I3(\ccmd_f_reg[3]_0 ),
        .I4(sgla_r_0[30]),
        .I5(\sglc_f_reg[30] ),
        .O(\sgla_i_reg[30]_0 ));
  LUT5 #(
    .INIT(32'h0008AAAA)) 
    \cbus[30]_INST_0_i_21 
       (.I0(\sgla_i_reg[24]_1 ),
        .I1(\sgla_i_reg[10]_0 ),
        .I2(\cbus[30]_INST_0_i_34_n_0 ),
        .I3(sgla_r_0[40]),
        .I4(\cbus[31]_INST_0_i_30_n_0 ),
        .O(\cbus[30]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h5554)) 
    \cbus[30]_INST_0_i_25 
       (.I0(\cbus[31]_INST_0_i_37_n_0 ),
        .I1(\sgla_i_reg[24]_1 ),
        .I2(\sgla_i_reg[24]_2 ),
        .I3(\cbus[30]_INST_0_i_42_n_0 ),
        .O(\cbus[30]_INST_0_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[30]_INST_0_i_26 
       (.I0(\sgla_i_reg[10]_0 ),
        .I1(\cbus[15]_INST_0_i_6_n_0 ),
        .O(\cbus[30]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \cbus[30]_INST_0_i_27 
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[4]),
        .I3(ccmd_f[2]),
        .I4(p_0_in_0[1]),
        .O(\cbus[30]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0C0010000C000000)) 
    \cbus[30]_INST_0_i_28 
       (.I0(p_0_in_0[1]),
        .I1(ccmd_f[0]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[4]),
        .I4(ccmd_f[2]),
        .I5(\cbus[30]_INST_0_i_43_n_0 ),
        .O(\cbus[30]_INST_0_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \cbus[30]_INST_0_i_29 
       (.I0(sgla_r_0[36]),
        .I1(sgla_r_0[35]),
        .I2(\cbus[22]_INST_0_i_13_n_0 ),
        .O(\cbus[30]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \cbus[30]_INST_0_i_34 
       (.I0(ccmd_f[4]),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[2]),
        .I3(ccmd_f[1]),
        .O(\cbus[30]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEECCCCCCCC)) 
    \cbus[30]_INST_0_i_42 
       (.I0(sgla_r_0[35]),
        .I1(\cbus[15]_INST_0_i_12_n_0 ),
        .I2(sgla_r_0[33]),
        .I3(sgla_r_0[32]),
        .I4(sgla_r_0[34]),
        .I5(sgla_r_0[36]),
        .O(\cbus[30]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[30]_INST_0_i_43 
       (.I0(p_0_in_0[5]),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[2]),
        .I3(\cbus[31]_INST_0_i_47_n_0 ),
        .O(\cbus[30]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAEA)) 
    \cbus[30]_INST_0_i_8 
       (.I0(\cbus[30]_INST_0_i_21_n_0 ),
        .I1(Q),
        .I2(ccmd_f[2]),
        .I3(\cbus[31]_INST_0_i_37_n_0 ),
        .I4(\sgla_i_reg[24]_2 ),
        .I5(\sglc_i_reg[43] ),
        .O(\sgla_e_reg[8]_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \cbus[31]_INST_0_i_12 
       (.I0(\cbus[31]_INST_0_i_30_n_0 ),
        .I1(\sgla_i_reg[24]_2 ),
        .I2(\sgla_i_reg[10]_0 ),
        .I3(\sglc_i_reg[43] ),
        .O(\ccmd_f_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hEAFF3030)) 
    \cbus[31]_INST_0_i_18 
       (.I0(\cbus[31]_INST_0_i_35_n_0 ),
        .I1(ccmd_f[1]),
        .I2(\cbus[31]_INST_0_i_36_n_0 ),
        .I3(\cbus[31]_INST_0_i_37_n_0 ),
        .I4(sgla_r_0[40]),
        .O(\cbus[31]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \cbus[31]_INST_0_i_19 
       (.I0(ccmd_f[3]),
        .I1(ccmd_f[4]),
        .I2(ccmd_f[1]),
        .I3(ccmd_f[2]),
        .O(\cbus[31]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFAABFBF)) 
    \cbus[31]_INST_0_i_22 
       (.I0(\sglc_i_reg[43] ),
        .I1(\cbus[11]_INST_0_i_2_n_0 ),
        .I2(sgla_r_0[40]),
        .I3(\ccmd_f_reg[3]_0 ),
        .I4(sgla_r_0[31]),
        .I5(\sglc_f_reg[31] ),
        .O(\sgla_i_reg[31]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[31]_INST_0_i_26 
       (.I0(p_0_in_0[1]),
        .I1(\cbus[15]_INST_0_i_6_n_0 ),
        .O(\sgla_i_reg[24]_2 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cbus[31]_INST_0_i_27 
       (.I0(\cbus[31]_INST_0_i_45_n_0 ),
        .I1(\sgla_i_reg_n_0_[10] ),
        .I2(\sgla_i_reg_n_0_[11] ),
        .I3(\sgla_i_reg_n_0_[0] ),
        .I4(\sgla_i_reg_n_0_[4] ),
        .I5(\cbus[31]_INST_0_i_46_n_0 ),
        .O(\sgla_i_reg[10]_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cbus[31]_INST_0_i_28 
       (.I0(p_0_in_0[1]),
        .I1(\cbus[31]_INST_0_i_47_n_0 ),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[4]),
        .I4(p_0_in_0[5]),
        .O(\sgla_i_reg[24]_1 ));
  LUT5 #(
    .INIT(32'hE8FF77FF)) 
    \cbus[31]_INST_0_i_30 
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[2]),
        .I2(ccmd_f[1]),
        .I3(ccmd_f[4]),
        .I4(ccmd_f[3]),
        .O(\cbus[31]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \cbus[31]_INST_0_i_35 
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[4]),
        .I3(ccmd_f[2]),
        .I4(\sgla_i_reg[24]_1 ),
        .O(\cbus[31]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \cbus[31]_INST_0_i_36 
       (.I0(ccmd_f[0]),
        .I1(ccmd_f[4]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[2]),
        .O(\cbus[31]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \cbus[31]_INST_0_i_37 
       (.I0(ccmd_f[1]),
        .I1(ccmd_f[4]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[0]),
        .O(\cbus[31]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[31]_INST_0_i_45 
       (.I0(\sgla_i_reg_n_0_[1] ),
        .I1(\sgla_i_reg_n_0_[2] ),
        .I2(\sgla_i_reg_n_0_[12] ),
        .I3(\sgla_i_reg_n_0_[8] ),
        .O(\cbus[31]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cbus[31]_INST_0_i_46 
       (.I0(\cbus[31]_INST_0_i_59_n_0 ),
        .I1(\cbus[31]_INST_0_i_60_n_0 ),
        .I2(\cbus[31]_INST_0_i_61_n_0 ),
        .I3(\sgla_i_reg_n_0_[17] ),
        .I4(\sgla_i_reg_n_0_[15] ),
        .I5(\sgla_i_reg_n_0_[19] ),
        .O(\cbus[31]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[31]_INST_0_i_47 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[7]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[6]),
        .O(\cbus[31]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AEEAAAAA)) 
    \cbus[31]_INST_0_i_5 
       (.I0(\cbus[31]_INST_0_i_18_n_0 ),
        .I1(\cbus[31]_INST_0_i_19_n_0 ),
        .I2(fctl_ccmd_sub),
        .I3(\cbus[31] ),
        .I4(ccmd_f[0]),
        .I5(\sglc_i_reg[43] ),
        .O(fctl_ccmd_sub_reg));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[31]_INST_0_i_59 
       (.I0(\sgla_i_reg_n_0_[14] ),
        .I1(\sgla_i_reg_n_0_[7] ),
        .I2(\sgla_i_reg_n_0_[16] ),
        .I3(\sgla_i_reg_n_0_[3] ),
        .O(\cbus[31]_INST_0_i_59_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[31]_INST_0_i_60 
       (.I0(\sgla_i_reg_n_0_[5] ),
        .I1(\sgla_i_reg_n_0_[6] ),
        .I2(\sgla_i_reg_n_0_[21] ),
        .I3(\sgla_i_reg_n_0_[22] ),
        .O(\cbus[31]_INST_0_i_60_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[31]_INST_0_i_61 
       (.I0(\sgla_i_reg_n_0_[13] ),
        .I1(\sgla_i_reg_n_0_[20] ),
        .I2(\sgla_i_reg_n_0_[9] ),
        .I3(\sgla_i_reg_n_0_[18] ),
        .O(\cbus[31]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F444F4FFFF)) 
    \cbus[3]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(cbus_3_sn_1),
        .I2(\cbus[21] [3]),
        .I3(\cbus[0]_0 ),
        .I4(\sgla_f_reg[3]_0 ),
        .I5(\cbus[0]_1 ),
        .O(cbus[3]));
  LUT6 #(
    .INIT(64'h00000000AAEFEFEF)) 
    \cbus[3]_INST_0_i_1 
       (.I0(\sglc_i_reg[43] ),
        .I1(\sgla_i_reg[24]_0 ),
        .I2(sgla_r_0[3]),
        .I3(\cbus[11]_INST_0_i_2_n_0 ),
        .I4(\sgla_i_reg_n_0_[3] ),
        .I5(\cbus[3]_0 ),
        .O(\sgla_f_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000000000005551)) 
    \cbus[3]_INST_0_i_2 
       (.I0(\cbus[30]_INST_0_i_28_n_0 ),
        .I1(p_0_in_0[1]),
        .I2(\cbus[19]_INST_0_i_11_n_0 ),
        .I3(\cbus[30]_INST_0_i_26_n_0 ),
        .I4(\cbus[30]_INST_0_i_25_n_0 ),
        .I5(\cbus[31]_INST_0_i_19_n_0 ),
        .O(\sgla_i_reg[24]_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \cbus[4]_INST_0_i_7 
       (.I0(\sgla_i_reg_n_0_[4] ),
        .I1(ccmd_f[4]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[2]),
        .I4(ccmd_f[1]),
        .I5(ccmd_f[0]),
        .O(\sgla_i_reg[4]_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \cbus[5]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(cbus_5_sn_1),
        .I2(\cbus[5]_0 ),
        .O(cbus[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \cbus[6]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\sgla_i_reg[11]_0 ),
        .I2(\cbus[7]_0 ),
        .I3(sglc_sr_flag),
        .I4(\cbus[6]_INST_0_i_2_n_0 ),
        .I5(cbus_6_sn_1),
        .O(cbus[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[6]_INST_0_i_2 
       (.I0(\sgla_i_reg[6]_0 ),
        .I1(\cbus[0]_1 ),
        .O(\cbus[6]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[6]_INST_0_i_4 
       (.I0(\sgla_i_reg[24]_2 ),
        .I1(\sgla_i_reg[10]_0 ),
        .O(sgla_r_0[42]));
  LUT2 #(
    .INIT(4'h8)) 
    \cbus[6]_INST_0_i_6 
       (.I0(\sgla_i_reg[24]_2 ),
        .I1(\sgla_i_reg[10]_0 ),
        .O(sgla_r_0[41]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \cbus[7]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(cbus_7_sn_1),
        .I2(\cbus[7]_0 ),
        .I3(sglc_r_fadd),
        .I4(\cbus[7]_INST_0_i_3_n_0 ),
        .I5(\cbus[7]_1 ),
        .O(cbus[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[7]_INST_0_i_3 
       (.I0(\sgla_i_reg[7]_0 ),
        .I1(\cbus[0]_1 ),
        .O(\cbus[7]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \cbus[7]_INST_0_i_7 
       (.I0(sgla_r_0[40]),
        .I1(\cbus[31] ),
        .I2(fctl_ccmd_sub),
        .O(sglc_s2__0));
  LUT6 #(
    .INIT(64'h00000000EAEAFFEA)) 
    \cbus[8]_INST_0_i_3 
       (.I0(\sgla_i_reg[23]_0 ),
        .I1(\cbus[11]_INST_0_i_2_n_0 ),
        .I2(\sgla_i_reg_n_0_[8] ),
        .I3(sgla_r_0[8]),
        .I4(\cbus[11]_INST_0_i_6_n_0 ),
        .I5(\sglc_i_reg[43] ),
        .O(\sgla_i_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \cbus[9]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\sgla_f_reg[14]_0 ),
        .I2(\cbus[21] [4]),
        .I3(\cbus[0]_0 ),
        .I4(cbus_9_sn_1),
        .I5(\cbus[0]_1 ),
        .O(cbus[7]));
  LUT6 #(
    .INIT(64'hFFFFF8FFF8F8F8F8)) 
    \cbus[9]_INST_0_i_4 
       (.I0(\sgla_i_reg_n_0_[9] ),
        .I1(\cbus[11]_INST_0_i_2_n_0 ),
        .I2(\cbus[11]_INST_0_i_3_n_0 ),
        .I3(\cbus[11]_INST_0_i_6_n_0 ),
        .I4(\cbus[9]_INST_0_i_6_n_0 ),
        .I5(sgla_r_0[9]),
        .O(sglc_r_sgla[0]));
  LUT4 #(
    .INIT(16'h8000)) 
    \cbus[9]_INST_0_i_6 
       (.I0(sgla_r_0[33]),
        .I1(sgla_r_0[32]),
        .I2(\cbus[22]_INST_0_i_10_n_0 ),
        .I3(sgla_r_0[36]),
        .O(\cbus[9]_INST_0_i_6_n_0 ));
  FDRE \ccmd_f_reg[0] 
       (.C(clk),
        .CE(\ccmd_f_reg[4]_0 ),
        .D(ccmd[0]),
        .Q(ccmd_f[0]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \ccmd_f_reg[1] 
       (.C(clk),
        .CE(\ccmd_f_reg[4]_0 ),
        .D(ccmd[1]),
        .Q(ccmd_f[1]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \ccmd_f_reg[2] 
       (.C(clk),
        .CE(\ccmd_f_reg[4]_0 ),
        .D(ccmd[2]),
        .Q(ccmd_f[2]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \ccmd_f_reg[3] 
       (.C(clk),
        .CE(\ccmd_f_reg[4]_0 ),
        .D(ccmd[3]),
        .Q(ccmd_f[3]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \ccmd_f_reg[4] 
       (.C(clk),
        .CE(\ccmd_f_reg[4]_0 ),
        .D(ccmd[4]),
        .Q(ccmd_f[4]),
        .R(\sgla_e_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hAAAAAA02)) 
    crdy_f_i_3
       (.I0(sgla_sft_fin),
        .I1(\sglb_e[8]_i_3_n_0 ),
        .I2(\sglc_i[44]_i_4_n_0 ),
        .I3(fctl_ccmd_int),
        .I4(\sgla_e_reg[7]_3 ),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFFFF72FA272F72FA)) 
    \den_r[49]_i_2 
       (.I0(\sgla_i_reg[24]_2 ),
        .I1(\sgla_i_reg[10]_0 ),
        .I2(sglb_r[40]),
        .I3(\sgla_i_reg[24]_1 ),
        .I4(sglb_nan0),
        .I5(sglb_nan012_in),
        .O(fdiv_nan_inf));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__0_i_1
       (.I0(sgla_r_0[12]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[7]),
        .O(den[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__0_i_2
       (.I0(sgla_r_0[11]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[6]),
        .O(den[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__0_i_3
       (.I0(sgla_r_0[10]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[5]),
        .O(den[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__0_i_4
       (.I0(sgla_r_0[9]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[4]),
        .O(den[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__1_i_1
       (.I0(sgla_r_0[16]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[11]),
        .O(den[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__1_i_2
       (.I0(sgla_r_0[15]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[10]),
        .O(den[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__1_i_3
       (.I0(sgla_r_0[14]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[9]),
        .O(den[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__1_i_4
       (.I0(sgla_r_0[13]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[8]),
        .O(den[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__2_i_1
       (.I0(sgla_r_0[20]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[15]),
        .O(den[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__2_i_2
       (.I0(sgla_r_0[19]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[14]),
        .O(den[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__2_i_3
       (.I0(sgla_r_0[18]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[13]),
        .O(den[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__2_i_4
       (.I0(sgla_r_0[17]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[12]),
        .O(den[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__3_i_1
       (.I0(sgla_r_0[24]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[19]),
        .O(den[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__3_i_2
       (.I0(sgla_r_0[23]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[18]),
        .O(den[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__3_i_3
       (.I0(sgla_r_0[22]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[17]),
        .O(den[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__3_i_4
       (.I0(sgla_r_0[21]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[16]),
        .O(den[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__4_i_1
       (.I0(sgla_r_0[28]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[23]),
        .O(den[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__4_i_2
       (.I0(sgla_r_0[27]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[22]),
        .O(den[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__4_i_3
       (.I0(sgla_r_0[26]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[21]),
        .O(den[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__4_i_4
       (.I0(sgla_r_0[25]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[20]),
        .O(den[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry__5_i_1
       (.I0(sgla_r_0[29]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[24]),
        .O(den[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry_i_10
       (.I0(sgla_r_0[31]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[25]),
        .O(\sgla_f_reg[31]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry_i_2
       (.I0(sgla_r_0[8]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[3]),
        .O(den[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry_i_3
       (.I0(sgla_r_0[7]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[2]),
        .O(den[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry_i_4
       (.I0(sgla_r_0[6]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[1]),
        .O(den[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    rem4_carry_i_5
       (.I0(sgla_r_0[5]),
        .I1(fctl_load_d__4),
        .I2(rem4_carry_i_9[0]),
        .O(den[0]));
  LUT3 #(
    .INIT(8'h3A)) 
    \sgla_e[0]_i_1 
       (.I0(sgla_e__0[0]),
        .I1(abus[23]),
        .I2(fctl_load_b),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \sgla_e[3]_i_10 
       (.I0(\sgla_f[1]_i_12_n_0 ),
        .I1(\sgla_f_reg[28]_i_30_n_7 ),
        .I2(p_0_in14_in),
        .I3(p_0_in20_in),
        .I4(\sgla_e_reg[7]_1 ),
        .I5(\sgla_f_reg[0]_1 ),
        .O(\sgla_e[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h808080C0)) 
    \sgla_e[3]_i_11 
       (.I0(\sgla_f[1]_i_12_n_0 ),
        .I1(p_0_in17_in),
        .I2(\sgla_f_reg[0]_1 ),
        .I3(\sgla_e_reg[7]_1 ),
        .I4(p_0_in20_in),
        .O(\sgla_e[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F0F0F0E)) 
    \sgla_e[3]_i_12 
       (.I0(p_0_in6_in),
        .I1(p_0_in9_in),
        .I2(\sgla_f_reg[28]_1 ),
        .I3(\sgla_f_reg[28]_i_13_n_5 ),
        .I4(\sgla_f_reg[28]_i_13_n_6 ),
        .I5(\sgla_f_reg[28]_i_13_n_4 ),
        .O(\sgla_e[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \sgla_e[3]_i_13 
       (.I0(\sgla_f[1]_i_12_n_0 ),
        .I1(\sgla_e_reg[7]_1 ),
        .I2(p_0_in20_in),
        .I3(p_0_in17_in),
        .I4(\sgla_f_reg[28]_i_30_n_7 ),
        .I5(\sgla_f_reg[0]_1 ),
        .O(\sgla_e[3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h44444445)) 
    \sgla_e[3]_i_14 
       (.I0(\sgla_f[1]_i_4_n_0 ),
        .I1(\sgla_f_reg[28]_1 ),
        .I2(p_0_in3_in),
        .I3(p_0_in9_in),
        .I4(p_0_in6_in),
        .O(\sgla_e[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h80808080808080C0)) 
    \sgla_e[3]_i_15 
       (.I0(\sgla_f[1]_i_12_n_0 ),
        .I1(p_0_in14_in),
        .I2(\sgla_f_reg[0]_1 ),
        .I3(p_0_in17_in),
        .I4(p_0_in20_in),
        .I5(\sgla_e_reg[7]_1 ),
        .O(\sgla_e[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0A0AFAFAFACAFAEA)) 
    \sgla_e[3]_i_16 
       (.I0(\sgla_f[1]_i_8_n_0 ),
        .I1(\sgla_f[1]_i_14_n_0 ),
        .I2(\sgla_f_reg[0]_1 ),
        .I3(p_0_in14_in),
        .I4(\sgla_f_reg[28]_i_30_n_7 ),
        .I5(\sgla_f[1]_i_12_n_0 ),
        .O(\sgla_e[3]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hF1111111)) 
    \sgla_e[3]_i_17 
       (.I0(\sgla_e[8]_i_6_n_0 ),
        .I1(p_0_in6_in),
        .I2(p_0_in20_in),
        .I3(\sgla_f_reg[0]_1 ),
        .I4(\sgla_f[1]_i_12_n_0 ),
        .O(\sgla_e[3]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h95)) 
    \sgla_e[3]_i_18 
       (.I0(sgla_r_0[34]),
        .I1(\sgla_f[4]_i_9_n_0 ),
        .I2(\sgla_e[3]_i_22_n_0 ),
        .O(\sgla_e[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9955AA669995AAAA)) 
    \sgla_e[3]_i_19 
       (.I0(sgla_r_0[33]),
        .I1(\sgla_f_reg[0]_1 ),
        .I2(\sgla_f_reg[28]_i_30_n_7 ),
        .I3(\sglc_i[44]_i_6_n_0 ),
        .I4(\sgla_e[3]_i_14_n_0 ),
        .I5(p_0_in14_in),
        .O(\sgla_e[3]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    \sgla_e[3]_i_20 
       (.I0(\sgla_f_reg[0]_1 ),
        .I1(\sgla_f_reg[1]_i_11_n_4 ),
        .I2(\sgla_f_reg[1]_i_11_n_6 ),
        .I3(\sgla_f_reg[1]_i_11_n_5 ),
        .I4(\sgla_f_reg[28]_i_30_n_7 ),
        .O(\sgla_e[3]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE0E0)) 
    \sgla_e[3]_i_21 
       (.I0(p_0_in14_in),
        .I1(\sglc_i[44]_i_6_n_0 ),
        .I2(\sgla_f_reg[0]_1 ),
        .I3(\sgla_f[28]_i_31_n_0 ),
        .I4(\sgla_f[1]_i_5_n_0 ),
        .O(\sgla_e[3]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAAFE)) 
    \sgla_e[3]_i_22 
       (.I0(\sgla_f[1]_i_4_n_0 ),
        .I1(p_0_in9_in),
        .I2(p_0_in6_in),
        .I3(\sgla_f_reg[28]_1 ),
        .I4(\sgla_e[3]_i_10_n_0 ),
        .O(\sgla_e[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0020AAAA2222)) 
    \sgla_e[3]_i_3 
       (.I0(sgla_r_0[34]),
        .I1(\sgla_e[3]_i_10_n_0 ),
        .I2(\sgla_f[28]_i_31_n_0 ),
        .I3(p_0_in3_in),
        .I4(\sgla_e[3]_i_11_n_0 ),
        .I5(\sgla_e[3]_i_12_n_0 ),
        .O(\sgla_e[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80808880)) 
    \sgla_e[3]_i_4 
       (.I0(sgla_r_0[33]),
        .I1(\sgla_e[3]_i_13_n_0 ),
        .I2(\sgla_e[3]_i_14_n_0 ),
        .I3(\sgla_f[28]_i_31_n_0 ),
        .I4(p_0_in1_in),
        .I5(\sgla_e[3]_i_15_n_0 ),
        .O(\sgla_e[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1F11)) 
    \sgla_e[3]_i_5 
       (.I0(\sgla_e[8]_i_6_n_0 ),
        .I1(O),
        .I2(\sgla_e[3]_i_16_n_0 ),
        .I3(sgla_r_0[32]),
        .O(\sgla_e[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h69669699)) 
    \sgla_e[3]_i_6 
       (.I0(\sgla_e[3]_i_3_n_0 ),
        .I1(sgla_r_0[35]),
        .I2(\sgla_e[7]_i_14_n_0 ),
        .I3(\stat_reg[0]_2 ),
        .I4(\sgla_e[3]_i_17_n_0 ),
        .O(\sgla_e[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9999666966696669)) 
    \sgla_e[3]_i_7 
       (.I0(\sgla_e[3]_i_4_n_0 ),
        .I1(\sgla_e[3]_i_18_n_0 ),
        .I2(\sgla_e[8]_i_6_n_0 ),
        .I3(p_0_in3_in),
        .I4(p_0_in17_in),
        .I5(\sgla_f[31]_i_7_n_0 ),
        .O(\sgla_e[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9999666966696669)) 
    \sgla_e[3]_i_8 
       (.I0(\sgla_e[3]_i_5_n_0 ),
        .I1(\sgla_e[3]_i_19_n_0 ),
        .I2(\sgla_e[8]_i_6_n_0 ),
        .I3(p_0_in1_in),
        .I4(p_0_in14_in),
        .I5(\sgla_f[31]_i_7_n_0 ),
        .O(\sgla_e[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h54ABABABAB545454)) 
    \sgla_e[3]_i_9 
       (.I0(\sgla_e[3]_i_20_n_0 ),
        .I1(O),
        .I2(\sgla_e[8]_i_6_n_0 ),
        .I3(\sgla_e[3]_i_21_n_0 ),
        .I4(\stat_reg[0]_0 ),
        .I5(sgla_r_0[32]),
        .O(\sgla_e[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \sgla_e[4]_i_2 
       (.I0(abus[26]),
        .I1(abus[24]),
        .I2(abus[23]),
        .I3(abus[25]),
        .O(abus_26_sn_1));
  LUT5 #(
    .INIT(32'h80000000)) 
    \sgla_e[5]_i_2 
       (.I0(abus[25]),
        .I1(abus[23]),
        .I2(abus[24]),
        .I3(abus[26]),
        .I4(abus[27]),
        .O(abus_25_sn_1));
  LUT6 #(
    .INIT(64'h9999666966696669)) 
    \sgla_e[7]_i_10 
       (.I0(\sgla_e[7]_i_6_n_0 ),
        .I1(\sgla_e[7]_i_17_n_0 ),
        .I2(\sgla_e[8]_i_6_n_0 ),
        .I3(p_0_in9_in),
        .I4(\sgla_f[31]_i_7_n_0 ),
        .I5(\sgla_e_reg[7]_1 ),
        .O(\sgla_e[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA00AA33AB33)) 
    \sgla_e[7]_i_11 
       (.I0(\sgla_f_reg[1]_i_11_n_6 ),
        .I1(\sgla_f[31]_i_8_n_0 ),
        .I2(\sgla_f_reg[1]_i_11_n_4 ),
        .I3(\sgla_f_reg[0]_1 ),
        .I4(\sgla_f_reg[1]_i_11_n_5 ),
        .I5(\sgla_e[7]_i_18_n_0 ),
        .O(\sgla_e[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3333333333333337)) 
    \sgla_e[7]_i_12 
       (.I0(\sgla_e_reg[7]_1 ),
        .I1(\sgla_f_reg[0]_1 ),
        .I2(\sgla_f[1]_i_12_n_0 ),
        .I3(p_0_in14_in),
        .I4(\sgla_f_reg[28]_i_30_n_7 ),
        .I5(p_0_in17_in),
        .O(\sgla_e[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F3F3F3F3F3FBF)) 
    \sgla_e[7]_i_13 
       (.I0(\sgla_e_reg[7]_1 ),
        .I1(p_0_in20_in),
        .I2(\sgla_f_reg[0]_1 ),
        .I3(\sgla_f_reg[1]_i_11_n_4 ),
        .I4(\sgla_f_reg[1]_i_11_n_6 ),
        .I5(\sgla_f_reg[1]_i_11_n_5 ),
        .O(\sgla_e[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A0A0A2)) 
    \sgla_e[7]_i_14 
       (.I0(\sgla_e[7]_i_12_n_0 ),
        .I1(p_0_in9_in),
        .I2(\sgla_f_reg[28]_1 ),
        .I3(\sgla_f_reg[28]_i_13_n_4 ),
        .I4(\sgla_f_reg[28]_i_13_n_6 ),
        .I5(\sgla_f_reg[28]_i_13_n_5 ),
        .O(\sgla_e[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \sgla_e[7]_i_16 
       (.I0(\sgla_f[1]_i_12_n_0 ),
        .I1(p_0_in14_in),
        .I2(\sgla_f_reg[28]_i_30_n_7 ),
        .I3(p_0_in17_in),
        .I4(\sgla_f_reg[0]_1 ),
        .I5(p_0_in20_in),
        .O(\sgla_e[7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hA955)) 
    \sgla_e[7]_i_17 
       (.I0(sgla_r_0[36]),
        .I1(\sgla_f[1]_i_4_n_0 ),
        .I2(\sgla_e[7]_i_16_n_0 ),
        .I3(\sgla_f[4]_i_7_n_0 ),
        .O(\sgla_e[7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFF1)) 
    \sgla_e[7]_i_18 
       (.I0(\sgla_f_reg[28]_i_13_n_5 ),
        .I1(\sgla_f_reg[28]_i_13_n_4 ),
        .I2(\sgla_f_reg[28]_1 ),
        .I3(\sgla_f_reg[28]_i_13_n_6 ),
        .O(\sgla_e[7]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9990)) 
    \sgla_e[7]_i_3 
       (.I0(sgla_r_0[38]),
        .I1(\sgla_e[8]_i_5_n_0 ),
        .I2(\sgla_f[28]_i_5_n_0 ),
        .I3(sgla_r_0[37]),
        .O(\sgla_e[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \sgla_e[7]_i_4 
       (.I0(\sgla_e[7]_i_11_n_0 ),
        .I1(\sgla_f[28]_i_5_n_0 ),
        .I2(sgla_r_0[37]),
        .O(\sgla_e[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sgla_e[7]_i_5 
       (.I0(\sgla_f[28]_i_5_n_0 ),
        .I1(sgla_r_0[37]),
        .I2(\sgla_e[7]_i_11_n_0 ),
        .O(\sgla_e[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0800AAAA)) 
    \sgla_e[7]_i_6 
       (.I0(sgla_r_0[35]),
        .I1(\sgla_e[7]_i_12_n_0 ),
        .I2(p_0_in6_in),
        .I3(\sgla_f[28]_i_31_n_0 ),
        .I4(\sgla_e[7]_i_13_n_0 ),
        .I5(\sgla_e[7]_i_14_n_0 ),
        .O(\sgla_e[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6669999999999996)) 
    \sgla_e[7]_i_7 
       (.I0(sgla_r_0[39]),
        .I1(\sgla_e[8]_i_7_n_0 ),
        .I2(sgla_r_0[37]),
        .I3(\sgla_f[28]_i_5_n_0 ),
        .I4(sgla_r_0[38]),
        .I5(\sgla_e[8]_i_5_n_0 ),
        .O(\sgla_e[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h96666669)) 
    \sgla_e[7]_i_8 
       (.I0(sgla_r_0[38]),
        .I1(\sgla_e[8]_i_5_n_0 ),
        .I2(\sgla_e[7]_i_11_n_0 ),
        .I3(sgla_r_0[37]),
        .I4(\sgla_f[28]_i_5_n_0 ),
        .O(\sgla_e[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h99959595AAAAAAAA)) 
    \sgla_e[7]_i_9 
       (.I0(\sgla_e[7]_i_5_n_0 ),
        .I1(\sgla_e_reg[7]_i_2_0 ),
        .I2(\sgla_e[7]_i_16_n_0 ),
        .I3(p_0_in9_in),
        .I4(\sgla_f[1]_i_4_n_0 ),
        .I5(sgla_r_0[36]),
        .O(\sgla_e[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00AA3FAA)) 
    \sgla_e[8]_i_1 
       (.I0(sgla_e__0[8]),
        .I1(abus[29]),
        .I2(abus_28_sn_1),
        .I3(fctl_load_b),
        .I4(abus[30]),
        .O(p_2_in[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sgla_e[8]_i_3 
       (.I0(abus[28]),
        .I1(abus[27]),
        .I2(abus[26]),
        .I3(abus[24]),
        .I4(abus[23]),
        .I5(abus[25]),
        .O(abus_28_sn_1));
  LUT6 #(
    .INIT(64'hF00FE11E1EE1F00F)) 
    \sgla_e[8]_i_4 
       (.I0(sgla_r_0[38]),
        .I1(\sgla_e[8]_i_5_n_0 ),
        .I2(Q),
        .I3(\sgla_e[8]_i_6_n_0 ),
        .I4(sgla_r_0[39]),
        .I5(\sgla_e[8]_i_7_n_0 ),
        .O(\sgla_e[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAB3333)) 
    \sgla_e[8]_i_5 
       (.I0(\sgla_f_reg[1]_i_11_n_5 ),
        .I1(\sgla_f[31]_i_8_n_0 ),
        .I2(\sgla_f_reg[1]_i_11_n_4 ),
        .I3(\sgla_f_reg[1]_i_11_n_6 ),
        .I4(\sgla_f_reg[0]_1 ),
        .I5(\sgla_e[8]_i_8_n_0 ),
        .O(\sgla_e[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEEEEF)) 
    \sgla_e[8]_i_6 
       (.I0(\stat_reg[0] ),
        .I1(\sgla_f_reg[28]_1 ),
        .I2(\sgla_f_reg[28]_i_13_n_5 ),
        .I3(\sgla_f_reg[28]_i_13_n_6 ),
        .I4(\sgla_f_reg[28]_i_13_n_4 ),
        .O(\sgla_e[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h55FC55FC55FC54FC)) 
    \sgla_e[8]_i_7 
       (.I0(\sgla_f_reg[1]_i_11_n_4 ),
        .I1(\sgla_f[31]_i_8_n_0 ),
        .I2(\sgla_e[8]_i_9_n_0 ),
        .I3(\sgla_f_reg[0]_1 ),
        .I4(\sgla_f_reg[1]_i_11_n_5 ),
        .I5(\sgla_f_reg[1]_i_11_n_6 ),
        .O(\sgla_e[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFF1)) 
    \sgla_e[8]_i_8 
       (.I0(\sgla_f_reg[28]_i_13_n_6 ),
        .I1(\sgla_f_reg[28]_i_13_n_4 ),
        .I2(\sgla_f_reg[28]_1 ),
        .I3(\sgla_f_reg[28]_i_13_n_5 ),
        .O(\sgla_e[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFAB)) 
    \sgla_e[8]_i_9 
       (.I0(\sgla_f_reg[28]_1 ),
        .I1(\sgla_f_reg[28]_i_13_n_6 ),
        .I2(\sgla_f_reg[28]_i_13_n_5 ),
        .I3(\sgla_f_reg[28]_i_13_n_4 ),
        .O(\sgla_e[8]_i_9_n_0 ));
  FDRE \sgla_e_reg[0] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(sgla_r_0[32]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_e_reg[1] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(D[0]),
        .Q(sgla_r_0[33]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_e_reg[2] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(D[1]),
        .Q(sgla_r_0[34]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_e_reg[3] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(D[2]),
        .Q(sgla_r_0[35]),
        .R(\sgla_e_reg[0]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sgla_e_reg[3]_i_2 
       (.CI(\<const0> ),
        .CO({\sgla_e_reg[3]_i_2_n_0 ,\sgla_e_reg[3]_i_2_n_1 ,\sgla_e_reg[3]_i_2_n_2 ,\sgla_e_reg[3]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\sgla_e[3]_i_3_n_0 ,\sgla_e[3]_i_4_n_0 ,\sgla_e[3]_i_5_n_0 ,\<const0> }),
        .O({\sgla_e_reg[6]_0 [2:0],sgla_e__0[0]}),
        .S({\sgla_e[3]_i_6_n_0 ,\sgla_e[3]_i_7_n_0 ,\sgla_e[3]_i_8_n_0 ,\sgla_e[3]_i_9_n_0 }));
  FDRE \sgla_e_reg[4] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(D[3]),
        .Q(sgla_r_0[36]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_e_reg[5] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(D[4]),
        .Q(sgla_r_0[37]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_e_reg[6] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(D[5]),
        .Q(sgla_r_0[38]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_e_reg[7] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(D[6]),
        .Q(sgla_r_0[39]),
        .R(\sgla_e_reg[0]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sgla_e_reg[7]_i_2 
       (.CI(\sgla_e_reg[3]_i_2_n_0 ),
        .CO({\sgla_e_reg[7]_i_2_n_0 ,\sgla_e_reg[7]_i_2_n_1 ,\sgla_e_reg[7]_i_2_n_2 ,\sgla_e_reg[7]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\sgla_e[7]_i_3_n_0 ,\sgla_e[7]_i_4_n_0 ,\sgla_e[7]_i_5_n_0 ,\sgla_e[7]_i_6_n_0 }),
        .O(\sgla_e_reg[6]_0 [6:3]),
        .S({\sgla_e[7]_i_7_n_0 ,\sgla_e[7]_i_8_n_0 ,\sgla_e[7]_i_9_n_0 ,\sgla_e[7]_i_10_n_0 }));
  FDRE \sgla_e_reg[8] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(p_2_in[8]),
        .Q(Q),
        .R(\sgla_e_reg[0]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sgla_e_reg[8]_i_2 
       (.CI(\sgla_e_reg[7]_i_2_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(sgla_e__0[8]),
        .S({\<const0> ,\<const0> ,\<const0> ,\sgla_e[8]_i_4_n_0 }));
  LUT6 #(
    .INIT(64'h0000000002FE32FE)) 
    \sgla_f[0]_i_1 
       (.I0(sgla_r_0[0]),
        .I1(\stat_reg[0] ),
        .I2(fctl_load_b),
        .I3(\sgla_f[0]_i_3_n_0 ),
        .I4(\sgla_f[1]_i_4_n_0 ),
        .I5(\sgla_f[0]_i_4_n_0 ),
        .O(\sgla_f[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \sgla_f[0]_i_2 
       (.I0(\sgla_f_reg[0]_1 ),
        .I1(\sgla_f_reg[1]_i_11_n_4 ),
        .I2(\sgla_f_reg[1]_i_11_n_6 ),
        .I3(\sgla_f_reg[1]_i_11_n_5 ),
        .I4(\sgla_f[31]_i_8_n_0 ),
        .O(\stat_reg[0] ));
  LUT6 #(
    .INIT(64'h000000000D000D0D)) 
    \sgla_f[0]_i_3 
       (.I0(sgla_r_0[4]),
        .I1(\sgla_f[0]_i_5_n_0 ),
        .I2(fctl_load_b),
        .I3(\sgla_f[4]_i_7_n_0 ),
        .I4(sgla_r_0[16]),
        .I5(\sgla_f[0]_i_6_n_0 ),
        .O(\sgla_f[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555545555)) 
    \sgla_f[0]_i_4 
       (.I0(\sgla_f[1]_i_6_n_0 ),
        .I1(\sgla_f[0]_i_7_n_0 ),
        .I2(\sgla_f[1]_i_4_n_0 ),
        .I3(fctl_load_b),
        .I4(rst_n),
        .I5(\sgla_f[31]_i_7_n_0 ),
        .O(\sgla_f[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \sgla_f[0]_i_5 
       (.I0(\sgla_f[1]_i_12_n_0 ),
        .I1(p_0_in17_in),
        .I2(\sgla_f_reg[0]_1 ),
        .I3(\sgla_e_reg[7]_1 ),
        .I4(p_0_in20_in),
        .O(\sgla_f[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sgla_f[0]_i_6 
       (.I0(\stat_reg[0]_2 ),
        .I1(sgla_r_0[8]),
        .I2(sgla_r_0[1]),
        .I3(\stat_reg[0]_0 ),
        .I4(sgla_r_0[2]),
        .I5(\stat_reg[0]_1 ),
        .O(\sgla_f[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \sgla_f[0]_i_7 
       (.I0(p_0_in1_in),
        .I1(p_0_in6_in),
        .I2(p_0_in9_in),
        .I3(p_0_in3_in),
        .I4(O),
        .I5(\sgla_f_reg[28]_1 ),
        .O(\sgla_f[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \sgla_f[10]_i_1 
       (.I0(\sgla_f[10]_i_2_n_0 ),
        .I1(sgla_r_0[2]),
        .I2(\sgla_f_reg[8]_0 ),
        .I3(\sgla_f[10]_i_3_n_0 ),
        .I4(sgla_r_0[6]),
        .I5(\sgla_f_reg[9]_0 ),
        .O(\sgla_f[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2FFF2FFFFFFF2)) 
    \sgla_f[10]_i_2 
       (.I0(sgla_r_0[12]),
        .I1(\sgla_f_reg[5]_1 ),
        .I2(\sgla_f[10]_i_4_n_0 ),
        .I3(\sgla_f[10]_i_5_n_0 ),
        .I4(sgla_r_0[18]),
        .I5(\sgla_f_reg[20]_1 ),
        .O(\sgla_f[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \sgla_f[10]_i_3 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[9]),
        .I2(fctl_load_b),
        .I3(\stat_reg[3]_0 ),
        .I4(sgla_r_0[8]),
        .O(\sgla_f[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \sgla_f[10]_i_4 
       (.I0(\sgla_f[7]_i_5_n_0 ),
        .I1(sgla_r_0[26]),
        .I2(abus[5]),
        .I3(fctl_load_b),
        .O(\sgla_f[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sgla_f[10]_i_5 
       (.I0(\sgla_f[6]_i_5_n_0 ),
        .I1(sgla_r_0[11]),
        .I2(\sgla_f[7]_i_6_n_0 ),
        .I3(sgla_r_0[14]),
        .O(\sgla_f[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEEFFFFEFEE)) 
    \sgla_f[11]_i_1 
       (.I0(\sgla_f[11]_i_2_n_0 ),
        .I1(\sgla_f[11]_i_3_n_0 ),
        .I2(\sgla_f_reg[5]_0 ),
        .I3(sgla_r_0[9]),
        .I4(sgla_r_0[3]),
        .I5(\sgla_f_reg[8]_0 ),
        .O(\sgla_f[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \sgla_f[11]_i_2 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[10]),
        .I2(\sgla_f[11]_i_4_n_0 ),
        .I3(\sgla_f[11]_i_5_n_0 ),
        .O(\sgla_f[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \sgla_f[11]_i_3 
       (.I0(sgla_r_0[7]),
        .I1(\stat_reg[3] ),
        .I2(fctl_load_b),
        .O(\sgla_f[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sgla_f[11]_i_4 
       (.I0(\sgla_f_reg[5]_1 ),
        .I1(sgla_r_0[13]),
        .I2(sgla_r_0[19]),
        .I3(\sgla_f_reg[20]_1 ),
        .I4(sgla_r_0[12]),
        .I5(\sgla_f[6]_i_5_n_0 ),
        .O(\sgla_f[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF222FFFFF222F222)) 
    \sgla_f[11]_i_5 
       (.I0(sgla_r_0[27]),
        .I1(\sgla_f[7]_i_5_n_0 ),
        .I2(fctl_load_b),
        .I3(abus[6]),
        .I4(\sgla_f[7]_i_6_n_0 ),
        .I5(sgla_r_0[15]),
        .O(\sgla_f[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEEFFFFEFEE)) 
    \sgla_f[12]_i_1 
       (.I0(\sgla_f[12]_i_2_n_0 ),
        .I1(\sgla_f[12]_i_3_n_0 ),
        .I2(\sgla_f_reg[9]_0 ),
        .I3(sgla_r_0[8]),
        .I4(sgla_r_0[10]),
        .I5(\sgla_f_reg[5]_0 ),
        .O(\sgla_f[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \sgla_f[12]_i_2 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[11]),
        .I2(\sgla_f[12]_i_4_n_0 ),
        .I3(\sgla_f[12]_i_5_n_0 ),
        .O(\sgla_f[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \sgla_f[12]_i_3 
       (.I0(sgla_r_0[4]),
        .I1(\stat_reg[3]_1 ),
        .I2(fctl_load_b),
        .O(\sgla_f[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sgla_f[12]_i_4 
       (.I0(\sgla_f_reg[7]_0 ),
        .I1(sgla_r_0[13]),
        .I2(sgla_r_0[16]),
        .I3(\sgla_f[7]_i_6_n_0 ),
        .I4(sgla_r_0[20]),
        .I5(\sgla_f_reg[20]_1 ),
        .O(\sgla_f[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88F8FFFF88F888F8)) 
    \sgla_f[12]_i_5 
       (.I0(fctl_load_b),
        .I1(abus[7]),
        .I2(sgla_r_0[28]),
        .I3(\sgla_f[7]_i_5_n_0 ),
        .I4(\sgla_f_reg[5]_1 ),
        .I5(sgla_r_0[14]),
        .O(\sgla_f[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEEFFFFEFEE)) 
    \sgla_f[13]_i_1 
       (.I0(\sgla_f[13]_i_2_n_0 ),
        .I1(\sgla_f[13]_i_3_n_0 ),
        .I2(\sgla_f_reg[5]_0 ),
        .I3(sgla_r_0[11]),
        .I4(sgla_r_0[5]),
        .I5(\sgla_f_reg[8]_0 ),
        .O(\sgla_f[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \sgla_f[13]_i_2 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[12]),
        .I2(\sgla_f[13]_i_4_n_0 ),
        .I3(\sgla_f[13]_i_5_n_0 ),
        .O(\sgla_f[13]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \sgla_f[13]_i_3 
       (.I0(sgla_r_0[9]),
        .I1(\stat_reg[3] ),
        .I2(fctl_load_b),
        .O(\sgla_f[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sgla_f[13]_i_4 
       (.I0(\sgla_f[7]_i_6_n_0 ),
        .I1(sgla_r_0[17]),
        .I2(sgla_r_0[14]),
        .I3(\sgla_f_reg[7]_0 ),
        .I4(sgla_r_0[15]),
        .I5(\sgla_f_reg[5]_1 ),
        .O(\sgla_f[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \sgla_f[13]_i_5 
       (.I0(\sgla_f_reg[20]_1 ),
        .I1(sgla_r_0[21]),
        .I2(sgla_r_0[29]),
        .I3(\sgla_f[7]_i_5_n_0 ),
        .I4(fctl_load_b),
        .I5(abus[8]),
        .O(\sgla_f[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEEFFFFEFEE)) 
    \sgla_f[14]_i_1 
       (.I0(\sgla_f[14]_i_2_n_0 ),
        .I1(\sgla_f[14]_i_3_n_0 ),
        .I2(\sgla_f_reg[5]_0 ),
        .I3(sgla_r_0[12]),
        .I4(sgla_r_0[10]),
        .I5(\sgla_f_reg[9]_0 ),
        .O(\sgla_f[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \sgla_f[14]_i_2 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[13]),
        .I2(\sgla_f[14]_i_4_n_0 ),
        .I3(\sgla_f[14]_i_5_n_0 ),
        .O(\sgla_f[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \sgla_f[14]_i_3 
       (.I0(sgla_r_0[6]),
        .I1(\stat_reg[3]_1 ),
        .I2(fctl_load_b),
        .O(\sgla_f[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sgla_f[14]_i_4 
       (.I0(\sgla_f_reg[7]_0 ),
        .I1(sgla_r_0[15]),
        .I2(sgla_r_0[18]),
        .I3(\sgla_f[7]_i_6_n_0 ),
        .I4(sgla_r_0[16]),
        .I5(\sgla_f_reg[5]_1 ),
        .O(\sgla_f[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \sgla_f[14]_i_5 
       (.I0(\sgla_f_reg[20]_1 ),
        .I1(sgla_r_0[22]),
        .I2(sgla_r_0[30]),
        .I3(\sgla_f[7]_i_5_n_0 ),
        .I4(fctl_load_b),
        .I5(abus[9]),
        .O(\sgla_f[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \sgla_f[15]_i_1 
       (.I0(\sgla_f[15]_i_2_n_0 ),
        .I1(sgla_r_0[11]),
        .I2(\sgla_f_reg[9]_0 ),
        .I3(\sgla_f[15]_i_3_n_0 ),
        .I4(sgla_r_0[7]),
        .I5(\sgla_f_reg[8]_0 ),
        .O(\sgla_f[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2FFF2FFFFFFF2)) 
    \sgla_f[15]_i_2 
       (.I0(sgla_r_0[17]),
        .I1(\sgla_f_reg[5]_1 ),
        .I2(\sgla_f[15]_i_4_n_0 ),
        .I3(\sgla_f[15]_i_5_n_0 ),
        .I4(sgla_r_0[23]),
        .I5(\sgla_f_reg[20]_1 ),
        .O(\sgla_f[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \sgla_f[15]_i_3 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[14]),
        .I2(fctl_load_b),
        .I3(\stat_reg[3]_0 ),
        .I4(sgla_r_0[13]),
        .O(\sgla_f[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \sgla_f[15]_i_4 
       (.I0(\sgla_f[7]_i_5_n_0 ),
        .I1(sgla_r_0[31]),
        .I2(abus[10]),
        .I3(fctl_load_b),
        .O(\sgla_f[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sgla_f[15]_i_5 
       (.I0(\sgla_f[6]_i_5_n_0 ),
        .I1(sgla_r_0[16]),
        .I2(\sgla_f[7]_i_6_n_0 ),
        .I3(sgla_r_0[19]),
        .O(\sgla_f[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \sgla_f[16]_i_1 
       (.I0(\sgla_f[16]_i_2_n_0 ),
        .I1(\sgla_f_reg[9]_0 ),
        .I2(sgla_r_0[12]),
        .I3(\sgla_f_reg[8]_0 ),
        .I4(sgla_r_0[8]),
        .I5(\sgla_f[16]_i_3_n_0 ),
        .O(\sgla_f[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4F4F4)) 
    \sgla_f[16]_i_2 
       (.I0(\sgla_f[27]_i_8_n_0 ),
        .I1(sgla_r_0[0]),
        .I2(\sgla_f[16]_i_4_n_0 ),
        .I3(fctl_load_b),
        .I4(abus[11]),
        .O(\sgla_f[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \sgla_f[16]_i_3 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[15]),
        .I2(fctl_load_b),
        .I3(\stat_reg[3]_0 ),
        .I4(sgla_r_0[14]),
        .O(\sgla_f[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \sgla_f[16]_i_4 
       (.I0(\sgla_f[16]_i_5_n_0 ),
        .I1(sgla_r_0[20]),
        .I2(\sgla_f[23]_i_5_n_0 ),
        .I3(sgla_r_0[24]),
        .I4(\sgla_f_reg[20]_1 ),
        .O(\sgla_f[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sgla_f[16]_i_5 
       (.I0(\sgla_f[23]_i_10_n_0 ),
        .I1(sgla_r_0[18]),
        .I2(\sgla_f[6]_i_5_n_0 ),
        .I3(sgla_r_0[17]),
        .O(\sgla_f[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEEEFEE)) 
    \sgla_f[17]_i_1 
       (.I0(\sgla_f[17]_i_2_n_0 ),
        .I1(\sgla_f[17]_i_3_n_0 ),
        .I2(\sgla_f_reg[9]_0 ),
        .I3(sgla_r_0[13]),
        .I4(\sgla_f_reg[5]_0 ),
        .I5(sgla_r_0[15]),
        .O(\sgla_f[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \sgla_f[17]_i_2 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[16]),
        .I2(\sgla_f[17]_i_4_n_0 ),
        .I3(sgla_r_0[21]),
        .I4(\sgla_f[23]_i_5_n_0 ),
        .O(\sgla_f[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \sgla_f[17]_i_3 
       (.I0(\sgla_f[27]_i_8_n_0 ),
        .I1(sgla_r_0[1]),
        .I2(fctl_load_b),
        .I3(\stat_reg[3]_1 ),
        .I4(sgla_r_0[9]),
        .O(\sgla_f[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \sgla_f[17]_i_4 
       (.I0(\sgla_f[17]_i_5_n_0 ),
        .I1(sgla_r_0[25]),
        .I2(\sgla_f_reg[20]_1 ),
        .I3(fctl_load_b),
        .I4(abus[12]),
        .O(\sgla_f[17]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sgla_f[17]_i_5 
       (.I0(\sgla_f[23]_i_10_n_0 ),
        .I1(sgla_r_0[19]),
        .I2(\sgla_f[6]_i_5_n_0 ),
        .I3(sgla_r_0[18]),
        .O(\sgla_f[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEEEFEE)) 
    \sgla_f[18]_i_1 
       (.I0(\sgla_f[18]_i_2_n_0 ),
        .I1(\sgla_f[18]_i_3_n_0 ),
        .I2(\sgla_f_reg[9]_0 ),
        .I3(sgla_r_0[14]),
        .I4(\sgla_f_reg[5]_0 ),
        .I5(sgla_r_0[16]),
        .O(\sgla_f[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \sgla_f[18]_i_2 
       (.I0(\sgla_f[27]_i_8_n_0 ),
        .I1(sgla_r_0[2]),
        .I2(\sgla_f[18]_i_4_n_0 ),
        .I3(\sgla_f_reg[18]_1 ),
        .O(\sgla_f[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \sgla_f[18]_i_3 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[17]),
        .I2(fctl_load_b),
        .I3(\stat_reg[3]_1 ),
        .I4(sgla_r_0[10]),
        .O(\sgla_f[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sgla_f[18]_i_4 
       (.I0(\sgla_f[7]_i_6_n_0 ),
        .I1(sgla_r_0[22]),
        .I2(sgla_r_0[19]),
        .I3(\sgla_f_reg[7]_0 ),
        .I4(sgla_r_0[20]),
        .I5(\sgla_f_reg[5]_1 ),
        .O(\sgla_f[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \sgla_f[19]_i_1 
       (.I0(\sgla_f[19]_i_2_n_0 ),
        .I1(\sgla_f_reg[9]_0 ),
        .I2(sgla_r_0[15]),
        .I3(\sgla_f_reg[5]_0 ),
        .I4(sgla_r_0[17]),
        .I5(\sgla_f[19]_i_3_n_0 ),
        .O(\sgla_f[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \sgla_f[19]_i_2 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[18]),
        .I2(\sgla_f_reg[19]_1 ),
        .I3(sgla_r_0[23]),
        .I4(\sgla_f[23]_i_5_n_0 ),
        .O(\sgla_f[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \sgla_f[19]_i_3 
       (.I0(\sgla_f[27]_i_8_n_0 ),
        .I1(sgla_r_0[3]),
        .I2(fctl_load_b),
        .I3(\stat_reg[3]_1 ),
        .I4(sgla_r_0[11]),
        .O(\sgla_f[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sgla_f[19]_i_5 
       (.I0(\sgla_f[23]_i_10_n_0 ),
        .I1(sgla_r_0[21]),
        .I2(\sgla_f[6]_i_5_n_0 ),
        .I3(sgla_r_0[20]),
        .O(\sgla_f_reg[21]_0 ));
  LUT5 #(
    .INIT(32'hAAAA0002)) 
    \sgla_f[1]_i_1 
       (.I0(\sgla_f[1]_i_2_n_0 ),
        .I1(\sgla_f[1]_i_3_n_0 ),
        .I2(\sgla_f[1]_i_4_n_0 ),
        .I3(\sgla_f[1]_i_5_n_0 ),
        .I4(\sgla_f[1]_i_6_n_0 ),
        .O(\sgla_f[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sgla_f[1]_i_12 
       (.I0(\sgla_f_reg[1]_i_11_n_4 ),
        .I1(\sgla_f_reg[1]_i_11_n_6 ),
        .I2(\sgla_f_reg[1]_i_11_n_5 ),
        .O(\sgla_f[1]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sgla_f[1]_i_13 
       (.I0(p_0_in14_in),
        .I1(\sgla_f_reg[28]_i_30_n_7 ),
        .O(\sgla_f[1]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sgla_f[1]_i_14 
       (.I0(p_0_in17_in),
        .I1(p_0_in20_in),
        .I2(\sgla_e_reg[7]_1 ),
        .O(\sgla_f[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \sgla_f[1]_i_15 
       (.I0(\stat_reg[0]_2 ),
        .I1(sgla_r_0[9]),
        .I2(\sgla_f[1]_i_25_n_0 ),
        .I3(fctl_load_b),
        .I4(\sgla_f[4]_i_7_n_0 ),
        .I5(sgla_r_0[17]),
        .O(\sgla_f[1]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sgla_f[1]_i_17 
       (.I0(sgla_r_0[39]),
        .O(\sgla_f[1]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sgla_f[1]_i_18 
       (.I0(sgla_r_0[38]),
        .O(\sgla_f[1]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sgla_f[1]_i_19 
       (.I0(sgla_r_0[37]),
        .O(\sgla_f[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAFEFFFFAAFE0000)) 
    \sgla_f[1]_i_2 
       (.I0(\sgla_f[1]_i_7_n_0 ),
        .I1(sgla_r_0[0]),
        .I2(\sgla_f[1]_i_8_n_0 ),
        .I3(\sgla_f[28]_i_5_n_0 ),
        .I4(\sgla_f_reg[1]_1 ),
        .I5(sgla_r_0[1]),
        .O(\sgla_f[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sgla_f[1]_i_20 
       (.I0(sgla_r_0[36]),
        .O(\sgla_f[1]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h0EF1)) 
    \sgla_f[1]_i_21 
       (.I0(sglb_r[38]),
        .I1(\sgla_f[28]_i_32_n_0 ),
        .I2(\sgla_f[28]_i_33_n_0 ),
        .I3(sgla_r_0[39]),
        .O(\sgla_f[1]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h0EF1)) 
    \sgla_f[1]_i_22 
       (.I0(sglb_r[37]),
        .I1(\sgla_f[28]_i_32_n_0 ),
        .I2(\sgla_f[28]_i_33_n_0 ),
        .I3(sgla_r_0[38]),
        .O(\sgla_f[1]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h0EF1)) 
    \sgla_f[1]_i_23 
       (.I0(sglb_r[36]),
        .I1(\sgla_f[28]_i_32_n_0 ),
        .I2(\sgla_f[28]_i_33_n_0 ),
        .I3(sgla_r_0[37]),
        .O(\sgla_f[1]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \sgla_f[1]_i_24 
       (.I0(\sgla_f[28]_i_28_n_0 ),
        .I1(sglb_r[35]),
        .I2(sgla_r_0[36]),
        .O(\sgla_f[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \sgla_f[1]_i_25 
       (.I0(sgla_r_0[5]),
        .I1(p_0_in20_in),
        .I2(\sgla_e_reg[7]_1 ),
        .I3(\sgla_f_reg[0]_1 ),
        .I4(p_0_in17_in),
        .I5(\sgla_f[1]_i_12_n_0 ),
        .O(\sgla_f[1]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h0EF1)) 
    \sgla_f[1]_i_26 
       (.I0(\sglb_e_reg[8]_i_15_0 ),
        .I1(\sgla_f[28]_i_32_n_0 ),
        .I2(\sgla_f[28]_i_33_n_0 ),
        .I3(Q),
        .O(\sgla_f[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8FFFF)) 
    \sgla_f[1]_i_3 
       (.I0(\sgla_f_reg[0]_1 ),
        .I1(\sgla_f_reg[1]_i_11_n_4 ),
        .I2(\sgla_f_reg[1]_i_11_n_6 ),
        .I3(\sgla_f_reg[1]_i_11_n_5 ),
        .I4(rst_n),
        .I5(fctl_load_b),
        .O(\sgla_f[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00FE)) 
    \sgla_f[1]_i_4 
       (.I0(\sgla_f_reg[28]_i_13_n_4 ),
        .I1(\sgla_f_reg[28]_i_13_n_6 ),
        .I2(\sgla_f_reg[28]_i_13_n_5 ),
        .I3(\sgla_f_reg[28]_1 ),
        .O(\sgla_f[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \sgla_f[1]_i_5 
       (.I0(p_0_in3_in),
        .I1(p_0_in9_in),
        .I2(p_0_in6_in),
        .I3(p_0_in1_in),
        .I4(\sgla_f_reg[28]_1 ),
        .O(\sgla_f[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000220200000000)) 
    \sgla_f[1]_i_6 
       (.I0(\sgla_f_reg[0]_1 ),
        .I1(\sgla_f[1]_i_12_n_0 ),
        .I2(\sgla_f[1]_i_13_n_0 ),
        .I3(\sgla_f[1]_i_14_n_0 ),
        .I4(fctl_load_b),
        .I5(rst_n),
        .O(\sgla_f[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \sgla_f[1]_i_7 
       (.I0(\sgla_f[1]_i_15_n_0 ),
        .I1(sgla_r_0[2]),
        .I2(\stat_reg[0]_0 ),
        .I3(sgla_r_0[3]),
        .I4(\stat_reg[0]_1 ),
        .O(\sgla_f[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555554)) 
    \sgla_f[1]_i_8 
       (.I0(\sgla_f_reg[28]_1 ),
        .I1(p_0_in1_in),
        .I2(p_0_in6_in),
        .I3(p_0_in9_in),
        .I4(p_0_in3_in),
        .I5(\sgla_f[28]_i_31_n_0 ),
        .O(\sgla_f[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF2)) 
    \sgla_f[20]_i_1 
       (.I0(sgla_r_0[12]),
        .I1(\sgla_f_reg[8]_0 ),
        .I2(\sgla_f[20]_i_2_n_0 ),
        .I3(\sgla_f[20]_i_3_n_0 ),
        .I4(\sgla_f[20]_i_4_n_0 ),
        .O(\sgla_f[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4FFF4F4)) 
    \sgla_f[20]_i_2 
       (.I0(\sgla_f[23]_i_5_n_0 ),
        .I1(sgla_r_0[24]),
        .I2(\sgla_f_reg[20]_2 ),
        .I3(\sgla_f_reg[20]_1 ),
        .I4(sgla_r_0[28]),
        .I5(\sgla_f[20]_i_6_n_0 ),
        .O(\sgla_f[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \sgla_f[20]_i_3 
       (.I0(fctl_load_b),
        .I1(\stat_reg[3] ),
        .I2(sgla_r_0[16]),
        .I3(\sgla_f[27]_i_8_n_0 ),
        .I4(sgla_r_0[4]),
        .O(\sgla_f[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \sgla_f[20]_i_4 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[19]),
        .I2(fctl_load_b),
        .I3(\stat_reg[3]_0 ),
        .I4(sgla_r_0[18]),
        .O(\sgla_f[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sgla_f[20]_i_6 
       (.I0(\sgla_f[23]_i_10_n_0 ),
        .I1(sgla_r_0[22]),
        .I2(\sgla_f[6]_i_5_n_0 ),
        .I3(sgla_r_0[21]),
        .O(\sgla_f[20]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFAE)) 
    \sgla_f[21]_i_1 
       (.I0(\sgla_f_reg[21]_1 ),
        .I1(sgla_r_0[17]),
        .I2(\sgla_f_reg[9]_0 ),
        .I3(\sgla_f[21]_i_3_n_0 ),
        .I4(\sgla_f[21]_i_4_n_0 ),
        .O(\sgla_f[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sgla_f[21]_i_3 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[20]),
        .I2(\sgla_f[27]_i_8_n_0 ),
        .I3(sgla_r_0[5]),
        .O(\sgla_f[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h040F0404)) 
    \sgla_f[21]_i_4 
       (.I0(\stat_reg[3]_1 ),
        .I1(sgla_r_0[13]),
        .I2(fctl_load_b),
        .I3(\stat_reg[3]_0 ),
        .I4(sgla_r_0[19]),
        .O(\sgla_f[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sgla_f[21]_i_5 
       (.I0(\sgla_f_reg[5]_1 ),
        .I1(sgla_r_0[23]),
        .I2(sgla_r_0[25]),
        .I3(\sgla_f[7]_i_6_n_0 ),
        .I4(sgla_r_0[22]),
        .I5(\sgla_f[6]_i_5_n_0 ),
        .O(\sgla_f_reg[23]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \sgla_f[22]_i_1 
       (.I0(\sgla_f[22]_i_2_n_0 ),
        .I1(\sgla_f_reg[9]_0 ),
        .I2(sgla_r_0[18]),
        .I3(\sgla_f_reg[5]_0 ),
        .I4(sgla_r_0[20]),
        .I5(\sgla_f[22]_i_3_n_0 ),
        .O(\sgla_f[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \sgla_f[22]_i_2 
       (.I0(\sgla_f[27]_i_8_n_0 ),
        .I1(sgla_r_0[6]),
        .I2(\sgla_f_reg[22]_1 ),
        .I3(\sgla_f[22]_i_5_n_0 ),
        .O(\sgla_f[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \sgla_f[22]_i_3 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[21]),
        .I2(fctl_load_b),
        .I3(\stat_reg[3]_1 ),
        .I4(sgla_r_0[14]),
        .O(\sgla_f[22]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \sgla_f[22]_i_5 
       (.I0(abus[17]),
        .I1(fctl_load_b),
        .I2(\sgla_f[7]_i_6_n_0 ),
        .I3(sgla_r_0[26]),
        .O(\sgla_f[22]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF2)) 
    \sgla_f[23]_i_1 
       (.I0(sgla_r_0[21]),
        .I1(\sgla_f_reg[5]_0 ),
        .I2(\sgla_f[23]_i_2_n_0 ),
        .I3(\sgla_f[23]_i_3_n_0 ),
        .I4(\sgla_f[23]_i_4_n_0 ),
        .O(\sgla_f[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \sgla_f[23]_i_10 
       (.I0(\sgla_f[1]_i_12_n_0 ),
        .I1(\sgla_f_reg[0]_1 ),
        .I2(fctl_load_b),
        .I3(p_0_in14_in),
        .I4(\sgla_f[1]_i_14_n_0 ),
        .O(\sgla_f[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4FFF4F4)) 
    \sgla_f[23]_i_2 
       (.I0(\sgla_f[23]_i_5_n_0 ),
        .I1(sgla_r_0[27]),
        .I2(\sgla_f_reg[23]_2 ),
        .I3(\sgla_f_reg[20]_1 ),
        .I4(sgla_r_0[31]),
        .I5(\sgla_f[23]_i_8_n_0 ),
        .O(\sgla_f[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \sgla_f[23]_i_3 
       (.I0(\sgla_f[27]_i_8_n_0 ),
        .I1(sgla_r_0[7]),
        .I2(fctl_load_b),
        .I3(\stat_reg[3]_1 ),
        .I4(sgla_r_0[15]),
        .O(\sgla_f[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \sgla_f[23]_i_4 
       (.I0(fctl_load_b),
        .I1(\stat_reg[3] ),
        .I2(sgla_r_0[19]),
        .I3(\sgla_f[27]_i_7_n_0 ),
        .I4(sgla_r_0[22]),
        .O(\sgla_f[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \sgla_f[23]_i_5 
       (.I0(fctl_load_b),
        .I1(p_0_in20_in),
        .I2(\sgla_e_reg[7]_1 ),
        .I3(\sgla_f_reg[0]_1 ),
        .I4(p_0_in17_in),
        .I5(\sgla_f[1]_i_12_n_0 ),
        .O(\sgla_f[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sgla_f[23]_i_8 
       (.I0(\sgla_f[23]_i_10_n_0 ),
        .I1(sgla_r_0[25]),
        .I2(\sgla_f[6]_i_5_n_0 ),
        .I3(sgla_r_0[24]),
        .O(\sgla_f[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \sgla_f[23]_i_9 
       (.I0(\sgla_f_reg[1]_i_11_n_5 ),
        .I1(\sgla_f_reg[1]_i_11_n_6 ),
        .I2(\sgla_f_reg[1]_i_11_n_4 ),
        .I3(p_0_in20_in),
        .I4(\sgla_f_reg[0]_1 ),
        .I5(\sgla_e_reg[7]_1 ),
        .O(\stat_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEEEFEE)) 
    \sgla_f[24]_i_1 
       (.I0(\sgla_f[24]_i_2_n_0 ),
        .I1(\sgla_f[24]_i_3_n_0 ),
        .I2(\sgla_f_reg[8]_0 ),
        .I3(sgla_r_0[16]),
        .I4(\sgla_f_reg[5]_0 ),
        .I5(sgla_r_0[22]),
        .O(\sgla_f[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \sgla_f[24]_i_2 
       (.I0(\sgla_f[24]_i_4_n_0 ),
        .I1(\sgla_f_reg[24]_1 ),
        .I2(\sgla_f[27]_i_7_n_0 ),
        .I3(sgla_r_0[23]),
        .O(\sgla_f[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \sgla_f[24]_i_3 
       (.I0(fctl_load_b),
        .I1(\stat_reg[3] ),
        .I2(sgla_r_0[20]),
        .I3(\sgla_f[27]_i_8_n_0 ),
        .I4(sgla_r_0[8]),
        .O(\sgla_f[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sgla_f[24]_i_4 
       (.I0(\sgla_f[7]_i_6_n_0 ),
        .I1(sgla_r_0[28]),
        .I2(\sgla_f_reg[7]_0 ),
        .I3(sgla_r_0[25]),
        .O(\sgla_f[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEEEFEE)) 
    \sgla_f[25]_i_1 
       (.I0(\sgla_f[25]_i_2_n_0 ),
        .I1(\sgla_f[25]_i_3_n_0 ),
        .I2(\sgla_f_reg[8]_0 ),
        .I3(sgla_r_0[17]),
        .I4(\sgla_f_reg[9]_0 ),
        .I5(sgla_r_0[21]),
        .O(\sgla_f[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \sgla_f[25]_i_2 
       (.I0(\sgla_f[27]_i_8_n_0 ),
        .I1(sgla_r_0[9]),
        .I2(\sgla_f[25]_i_5_n_0 ),
        .I3(\sgla_f_reg[25]_1 ),
        .O(\sgla_f[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \sgla_f[25]_i_3 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[24]),
        .I2(fctl_load_b),
        .I3(\stat_reg[3]_0 ),
        .I4(sgla_r_0[23]),
        .O(\sgla_f[25]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sgla_f[25]_i_5 
       (.I0(\sgla_f_reg[7]_0 ),
        .I1(sgla_r_0[26]),
        .I2(\sgla_f[7]_i_6_n_0 ),
        .I3(sgla_r_0[29]),
        .O(\sgla_f[25]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFAE)) 
    \sgla_f[26]_i_1 
       (.I0(\sgla_f[26]_i_2_n_0 ),
        .I1(sgla_r_0[18]),
        .I2(\sgla_f_reg[8]_0 ),
        .I3(\sgla_f[26]_i_3_n_0 ),
        .I4(\sgla_f[26]_i_4_n_0 ),
        .O(\sgla_f[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \sgla_f[26]_i_2 
       (.I0(\sgla_f[26]_i_5_n_0 ),
        .I1(sgla_r_0[27]),
        .I2(\sgla_f_reg[7]_0 ),
        .I3(sgla_r_0[28]),
        .I4(\sgla_f_reg[5]_1 ),
        .O(\sgla_f[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \sgla_f[26]_i_3 
       (.I0(fctl_load_b),
        .I1(\stat_reg[3] ),
        .I2(sgla_r_0[22]),
        .I3(\sgla_f[27]_i_8_n_0 ),
        .I4(sgla_r_0[10]),
        .O(\sgla_f[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \sgla_f[26]_i_4 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[25]),
        .I2(fctl_load_b),
        .I3(\stat_reg[3]_0 ),
        .I4(sgla_r_0[24]),
        .O(\sgla_f[26]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \sgla_f[26]_i_5 
       (.I0(abus[21]),
        .I1(fctl_load_b),
        .I2(\sgla_f[7]_i_6_n_0 ),
        .I3(sgla_r_0[30]),
        .O(\sgla_f[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEEEFEE)) 
    \sgla_f[27]_i_1 
       (.I0(\sgla_f[27]_i_2_n_0 ),
        .I1(\sgla_f[27]_i_3_n_0 ),
        .I2(\sgla_f_reg[8]_0 ),
        .I3(sgla_r_0[19]),
        .I4(\sgla_f_reg[5]_0 ),
        .I5(sgla_r_0[25]),
        .O(\sgla_f[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \sgla_f[27]_i_10 
       (.I0(\sgla_f[6]_i_5_n_0 ),
        .I1(sgla_r_0[28]),
        .I2(abus[22]),
        .I3(fctl_load_b),
        .O(\sgla_f[27]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \sgla_f[27]_i_2 
       (.I0(\sgla_f[27]_i_6_n_0 ),
        .I1(\sgla_f[27]_i_7_n_0 ),
        .I2(sgla_r_0[26]),
        .O(\sgla_f[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \sgla_f[27]_i_3 
       (.I0(fctl_load_b),
        .I1(\stat_reg[3] ),
        .I2(sgla_r_0[23]),
        .I3(\sgla_f[27]_i_8_n_0 ),
        .I4(sgla_r_0[11]),
        .O(\sgla_f[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \sgla_f[27]_i_6 
       (.I0(\sgla_f[27]_i_10_n_0 ),
        .I1(sgla_r_0[31]),
        .I2(\sgla_f[7]_i_6_n_0 ),
        .I3(sgla_r_0[29]),
        .I4(\sgla_f_reg[5]_1 ),
        .O(\sgla_f[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFFFFFFFE)) 
    \sgla_f[27]_i_7 
       (.I0(fctl_load_b),
        .I1(\sgla_f[1]_i_4_n_0 ),
        .I2(\stat_reg[0] ),
        .I3(\sgla_f[28]_i_7_n_0 ),
        .I4(p_0_in1_in),
        .I5(\sgla_f_reg[28]_1 ),
        .O(\sgla_f[27]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \sgla_f[27]_i_8 
       (.I0(fctl_load_b),
        .I1(p_0_in9_in),
        .I2(\sgla_f_reg[28]_1 ),
        .I3(\sgla_f[28]_i_31_n_0 ),
        .I4(\stat_reg[0] ),
        .O(\sgla_f[27]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \sgla_f[27]_i_9 
       (.I0(\sgla_f[28]_i_31_n_0 ),
        .I1(\stat_reg[0] ),
        .I2(\sgla_f_reg[28]_1 ),
        .I3(p_0_in6_in),
        .I4(p_0_in9_in),
        .O(\stat_reg[3]_1 ));
  LUT5 #(
    .INIT(32'hFFFFFF54)) 
    \sgla_f[28]_i_10 
       (.I0(\sgla_f_reg[28]_1 ),
        .I1(p_0_in1_in),
        .I2(\sgla_f[28]_i_7_n_0 ),
        .I3(\stat_reg[0] ),
        .I4(\sgla_f[1]_i_4_n_0 ),
        .O(\sgla_f[28]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sgla_f[28]_i_11 
       (.I0(\stat_reg[3] ),
        .I1(sgla_r_0[24]),
        .I2(\stat_reg[3]_0 ),
        .I3(sgla_r_0[26]),
        .O(\sgla_f[28]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000F000800000008)) 
    \sgla_f[28]_i_12 
       (.I0(p_0_in6_in),
        .I1(sgla_r_0[20]),
        .I2(\sgla_f[28]_i_23_n_0 ),
        .I3(\sgla_f_reg[28]_1 ),
        .I4(p_0_in9_in),
        .I5(sgla_r_0[12]),
        .O(\sgla_f[28]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \sgla_f[28]_i_14 
       (.I0(sgla_r_0[35]),
        .I1(\sgla_f[28]_i_28_n_0 ),
        .I2(sglb_r[34]),
        .O(\sgla_f[28]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \sgla_f[28]_i_15 
       (.I0(sgla_r_0[34]),
        .I1(\sgla_f[28]_i_28_n_0 ),
        .I2(sglb_r[33]),
        .O(\sgla_f[28]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \sgla_f[28]_i_16 
       (.I0(sgla_r_0[33]),
        .I1(\sgla_f[28]_i_28_n_0 ),
        .I2(sglb_r[32]),
        .O(\sgla_f[28]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \sgla_f[28]_i_17 
       (.I0(sgla_r_0[32]),
        .I1(\sgla_f[28]_i_28_n_0 ),
        .I2(sglb_r[31]),
        .O(\sgla_f[28]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \sgla_f[28]_i_19 
       (.I0(\sgla_f[1]_i_12_n_0 ),
        .I1(\sgla_f_reg[28]_i_30_n_7 ),
        .I2(p_0_in14_in),
        .I3(\sgla_f_reg[0]_1 ),
        .I4(\sgla_f[1]_i_14_n_0 ),
        .O(\stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAFFFE)) 
    \sgla_f[28]_i_2 
       (.I0(\sgla_f[28]_i_5_n_0 ),
        .I1(p_0_in1_in),
        .I2(\sgla_f[28]_i_7_n_0 ),
        .I3(O),
        .I4(\sgla_f_reg[28]_1 ),
        .I5(fctl_load_b),
        .O(\sgla_f[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \sgla_f[28]_i_20 
       (.I0(p_0_in17_in),
        .I1(p_0_in20_in),
        .I2(\sgla_e_reg[7]_1 ),
        .I3(\sgla_f[1]_i_12_n_0 ),
        .I4(\sgla_f_reg[0]_1 ),
        .I5(p_0_in14_in),
        .O(\stat_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \sgla_f[28]_i_21 
       (.I0(\sgla_f[28]_i_31_n_0 ),
        .I1(\stat_reg[0] ),
        .I2(\sgla_f_reg[28]_1 ),
        .I3(p_0_in3_in),
        .I4(p_0_in6_in),
        .I5(p_0_in9_in),
        .O(\stat_reg[3] ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \sgla_f[28]_i_22 
       (.I0(\sgla_f[28]_i_7_n_0 ),
        .I1(\sgla_f[28]_i_31_n_0 ),
        .I2(\stat_reg[0] ),
        .I3(\sgla_f_reg[28]_1 ),
        .I4(p_0_in1_in),
        .O(\stat_reg[3]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sgla_f[28]_i_23 
       (.I0(\sgla_f_reg[28]_i_13_n_4 ),
        .I1(\sgla_f_reg[28]_i_13_n_6 ),
        .I2(\sgla_f_reg[28]_i_13_n_5 ),
        .I3(\stat_reg[0] ),
        .O(\sgla_f[28]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h55A9)) 
    \sgla_f[28]_i_24 
       (.I0(sgla_r_0[39]),
        .I1(sglb_r[38]),
        .I2(\sgla_f[28]_i_32_n_0 ),
        .I3(\sgla_f[28]_i_33_n_0 ),
        .O(\sgla_f[28]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h55A9)) 
    \sgla_f[28]_i_25 
       (.I0(sgla_r_0[38]),
        .I1(sglb_r[37]),
        .I2(\sgla_f[28]_i_32_n_0 ),
        .I3(\sgla_f[28]_i_33_n_0 ),
        .O(\sgla_f[28]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h55A9)) 
    \sgla_f[28]_i_26 
       (.I0(sgla_r_0[37]),
        .I1(sglb_r[36]),
        .I2(\sgla_f[28]_i_32_n_0 ),
        .I3(\sgla_f[28]_i_33_n_0 ),
        .O(\sgla_f[28]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \sgla_f[28]_i_27 
       (.I0(sgla_r_0[36]),
        .I1(\sgla_f[28]_i_28_n_0 ),
        .I2(sglb_r[35]),
        .O(\sgla_f[28]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h08000040)) 
    \sgla_f[28]_i_28 
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[4]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[0]),
        .I4(ccmd_f[1]),
        .O(\sgla_f[28]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h55A9)) 
    \sgla_f[28]_i_29 
       (.I0(Q),
        .I1(\sglb_e_reg[8]_i_15_0 ),
        .I2(\sgla_f[28]_i_32_n_0 ),
        .I3(\sgla_f[28]_i_33_n_0 ),
        .O(\sgla_f[28]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFAE)) 
    \sgla_f[28]_i_3 
       (.I0(\sgla_f[28]_i_9_n_0 ),
        .I1(sgla_r_0[27]),
        .I2(\sgla_f[28]_i_10_n_0 ),
        .I3(\sgla_f[28]_i_11_n_0 ),
        .I4(\sgla_f[28]_i_12_n_0 ),
        .O(\sgla_f[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sgla_f[28]_i_31 
       (.I0(\sgla_f_reg[28]_i_13_n_5 ),
        .I1(\sgla_f_reg[28]_i_13_n_6 ),
        .I2(\sgla_f_reg[28]_i_13_n_4 ),
        .O(\sgla_f[28]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \sgla_f[28]_i_32 
       (.I0(ccmd_f[1]),
        .I1(ccmd_f[0]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[4]),
        .I4(ccmd_f[2]),
        .O(\sgla_f[28]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \sgla_f[28]_i_33 
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[3]),
        .I2(ccmd_f[4]),
        .I3(ccmd_f[0]),
        .I4(ccmd_f[1]),
        .O(\sgla_f[28]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sgla_f[28]_i_34 
       (.I0(sgla_r_0[35]),
        .O(\sgla_f[28]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000040)) 
    \sgla_f[28]_i_35 
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[4]),
        .I2(ccmd_f[3]),
        .I3(ccmd_f[0]),
        .I4(ccmd_f[1]),
        .I5(sglb_r[33]),
        .O(\sgla_f[28]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AAAAAA8AAAAAA)) 
    \sgla_f[28]_i_36 
       (.I0(sglb_r[32]),
        .I1(ccmd_f[1]),
        .I2(ccmd_f[0]),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[4]),
        .I5(ccmd_f[2]),
        .O(\sgla_f[28]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AAAAAA8AAAAAA)) 
    \sgla_f[28]_i_37 
       (.I0(sglb_r[31]),
        .I1(ccmd_f[1]),
        .I2(ccmd_f[0]),
        .I3(ccmd_f[3]),
        .I4(ccmd_f[4]),
        .I5(ccmd_f[2]),
        .O(\sgla_f[28]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \sgla_f[28]_i_38 
       (.I0(\sgla_f[28]_i_28_n_0 ),
        .I1(sglb_r[34]),
        .I2(sgla_r_0[35]),
        .O(\sgla_f[28]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \sgla_f[28]_i_39 
       (.I0(\sgla_f[28]_i_28_n_0 ),
        .I1(sglb_r[33]),
        .I2(sgla_r_0[34]),
        .O(\sgla_f[28]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \sgla_f[28]_i_40 
       (.I0(\sgla_f[28]_i_28_n_0 ),
        .I1(sglb_r[32]),
        .I2(sgla_r_0[33]),
        .O(\sgla_f[28]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \sgla_f[28]_i_41 
       (.I0(\sgla_f[28]_i_28_n_0 ),
        .I1(sglb_r[31]),
        .I2(sgla_r_0[32]),
        .O(\sgla_f[28]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF5554)) 
    \sgla_f[28]_i_5 
       (.I0(\sgla_f_reg[28]_1 ),
        .I1(\sgla_f_reg[28]_i_13_n_5 ),
        .I2(\sgla_f_reg[28]_i_13_n_6 ),
        .I3(\sgla_f_reg[28]_i_13_n_4 ),
        .I4(\stat_reg[0] ),
        .O(\sgla_f[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sgla_f[28]_i_7 
       (.I0(p_0_in3_in),
        .I1(p_0_in9_in),
        .I2(p_0_in6_in),
        .O(\sgla_f[28]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \sgla_f[28]_i_9 
       (.I0(\stat_reg[0]_0 ),
        .I1(sgla_r_0[29]),
        .I2(sgla_r_0[30]),
        .I3(\stat_reg[0]_1 ),
        .I4(fctl_load_b),
        .O(\sgla_f[28]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEEEE2)) 
    \sgla_f[29]_i_1 
       (.I0(sgla_r_0[29]),
        .I1(\sgla_f[28]_i_2_n_0 ),
        .I2(\sgla_f[29]_i_2_n_0 ),
        .I3(\sgla_f[29]_i_3_n_0 ),
        .I4(\sgla_f[29]_i_4_n_0 ),
        .I5(\sgla_f[31]_i_5_n_0 ),
        .O(\sgla_f[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sgla_f[29]_i_2 
       (.I0(\stat_reg[3]_1 ),
        .I1(sgla_r_0[21]),
        .I2(\stat_reg[3]_0 ),
        .I3(sgla_r_0[27]),
        .O(\sgla_f[29]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sgla_f[29]_i_3 
       (.I0(\stat_reg[3] ),
        .I1(sgla_r_0[25]),
        .I2(\sgla_f[31]_i_6_n_0 ),
        .I3(sgla_r_0[13]),
        .O(\sgla_f[29]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \sgla_f[29]_i_4 
       (.I0(\sgla_f[28]_i_10_n_0 ),
        .I1(sgla_r_0[28]),
        .I2(\sgla_f[29]_i_5_n_0 ),
        .O(\sgla_f[29]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \sgla_f[29]_i_5 
       (.I0(\stat_reg[0]_0 ),
        .I1(sgla_r_0[30]),
        .I2(sgla_r_0[31]),
        .I3(\stat_reg[0]_1 ),
        .I4(fctl_load_b),
        .O(\sgla_f[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2E2EEE2)) 
    \sgla_f[2]_i_1 
       (.I0(sgla_r_0[2]),
        .I1(\sgla_f[28]_i_2_n_0 ),
        .I2(\sgla_f[2]_i_2_n_0 ),
        .I3(sgla_r_0[1]),
        .I4(\sgla_f[3]_i_3_n_0 ),
        .I5(\sgla_f[3]_i_4_n_0 ),
        .O(\sgla_f[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF2FFF2FFF2)) 
    \sgla_f[2]_i_2 
       (.I0(\sgla_f[28]_i_7_n_0 ),
        .I1(\sgla_f[30]_i_5_n_0 ),
        .I2(fctl_load_b),
        .I3(\sgla_f[2]_i_3_n_0 ),
        .I4(\sgla_f[3]_i_6_n_0 ),
        .I5(sgla_r_0[0]),
        .O(\sgla_f[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \sgla_f[2]_i_3 
       (.I0(sgla_r_0[18]),
        .I1(\sgla_f[4]_i_7_n_0 ),
        .I2(sgla_r_0[3]),
        .I3(\stat_reg[0]_0 ),
        .I4(\sgla_f[2]_i_4_n_0 ),
        .O(\sgla_f[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sgla_f[2]_i_4 
       (.I0(\stat_reg[0]_2 ),
        .I1(sgla_r_0[10]),
        .I2(sgla_r_0[6]),
        .I3(\sgla_f[4]_i_9_n_0 ),
        .I4(sgla_r_0[4]),
        .I5(\stat_reg[0]_1 ),
        .O(\sgla_f[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEEEE2)) 
    \sgla_f[30]_i_1 
       (.I0(sgla_r_0[30]),
        .I1(\sgla_f[28]_i_2_n_0 ),
        .I2(\sgla_f[30]_i_2_n_0 ),
        .I3(\sgla_f[30]_i_3_n_0 ),
        .I4(\sgla_f[30]_i_4_n_0 ),
        .I5(\sgla_f[31]_i_5_n_0 ),
        .O(\sgla_f[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000F0800000008)) 
    \sgla_f[30]_i_2 
       (.I0(p_0_in3_in),
        .I1(sgla_r_0[26]),
        .I2(\sgla_f[30]_i_5_n_0 ),
        .I3(p_0_in6_in),
        .I4(p_0_in9_in),
        .I5(sgla_r_0[22]),
        .O(\sgla_f[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sgla_f[30]_i_3 
       (.I0(\sgla_f[28]_i_10_n_0 ),
        .I1(sgla_r_0[29]),
        .I2(\stat_reg[3]_0 ),
        .I3(sgla_r_0[28]),
        .O(\sgla_f[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \sgla_f[30]_i_4 
       (.I0(\sgla_f[31]_i_6_n_0 ),
        .I1(sgla_r_0[14]),
        .I2(sgla_r_0[31]),
        .I3(\stat_reg[0]_0 ),
        .I4(fctl_load_b),
        .O(\sgla_f[30]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sgla_f[30]_i_5 
       (.I0(\sgla_f_reg[28]_1 ),
        .I1(\stat_reg[0] ),
        .I2(\sgla_f_reg[28]_i_13_n_5 ),
        .I3(\sgla_f_reg[28]_i_13_n_6 ),
        .I4(\sgla_f_reg[28]_i_13_n_4 ),
        .O(\sgla_f[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEEEE2)) 
    \sgla_f[31]_i_1 
       (.I0(sgla_r_0[31]),
        .I1(\sgla_f[28]_i_2_n_0 ),
        .I2(\sgla_f[31]_i_2_n_0 ),
        .I3(\sgla_f[31]_i_3_n_0 ),
        .I4(\sgla_f[31]_i_4_n_0 ),
        .I5(\sgla_f[31]_i_5_n_0 ),
        .O(\sgla_f[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sgla_f[31]_i_2 
       (.I0(\sgla_f[31]_i_6_n_0 ),
        .I1(sgla_r_0[15]),
        .I2(\sgla_f[28]_i_10_n_0 ),
        .I3(sgla_r_0[30]),
        .O(\sgla_f[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sgla_f[31]_i_3 
       (.I0(\stat_reg[3]_1 ),
        .I1(sgla_r_0[23]),
        .I2(\stat_reg[3]_0 ),
        .I3(sgla_r_0[29]),
        .O(\sgla_f[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \sgla_f[31]_i_4 
       (.I0(fctl_load_b),
        .I1(\stat_reg[3] ),
        .I2(sgla_r_0[27]),
        .O(\sgla_f[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFBFFFBFB)) 
    \sgla_f[31]_i_5 
       (.I0(fctl_load_b),
        .I1(rst_n),
        .I2(\sgla_f[31]_i_7_n_0 ),
        .I3(\sgla_f[31]_i_8_n_0 ),
        .I4(\sgla_f[1]_i_4_n_0 ),
        .O(\sgla_f[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \sgla_f[31]_i_6 
       (.I0(\stat_reg[0] ),
        .I1(\sgla_f_reg[28]_i_13_n_5 ),
        .I2(\sgla_f_reg[28]_i_13_n_6 ),
        .I3(\sgla_f_reg[28]_i_13_n_4 ),
        .I4(\sgla_f_reg[28]_1 ),
        .I5(p_0_in9_in),
        .O(\sgla_f[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \sgla_f[31]_i_7 
       (.I0(\sgla_f_reg[1]_i_11_n_5 ),
        .I1(\sgla_f_reg[1]_i_11_n_6 ),
        .I2(\sgla_f_reg[1]_i_11_n_4 ),
        .I3(\sgla_f_reg[0]_1 ),
        .O(\sgla_f[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \sgla_f[31]_i_8 
       (.I0(\sgla_f_reg[0]_1 ),
        .I1(p_0_in17_in),
        .I2(p_0_in20_in),
        .I3(\sgla_e_reg[7]_1 ),
        .I4(p_0_in14_in),
        .I5(\sgla_f_reg[28]_i_30_n_7 ),
        .O(\sgla_f[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2E2EEE2)) 
    \sgla_f[3]_i_1 
       (.I0(sgla_r_0[3]),
        .I1(\sgla_f[28]_i_2_n_0 ),
        .I2(\sgla_f[3]_i_2_n_0 ),
        .I3(sgla_r_0[2]),
        .I4(\sgla_f[3]_i_3_n_0 ),
        .I5(\sgla_f[3]_i_4_n_0 ),
        .O(\sgla_f[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF2FFF2FFF2)) 
    \sgla_f[3]_i_2 
       (.I0(\sgla_f[28]_i_7_n_0 ),
        .I1(\sgla_f[30]_i_5_n_0 ),
        .I2(fctl_load_b),
        .I3(\sgla_f[3]_i_5_n_0 ),
        .I4(sgla_r_0[1]),
        .I5(\sgla_f[3]_i_6_n_0 ),
        .O(\sgla_f[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \sgla_f[3]_i_3 
       (.I0(\sgla_f[28]_i_5_n_0 ),
        .I1(p_0_in1_in),
        .I2(\sgla_f_reg[28]_1 ),
        .O(\sgla_f[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAEFEE)) 
    \sgla_f[3]_i_4 
       (.I0(\sgla_f[1]_i_3_n_0 ),
        .I1(\sgla_f[1]_i_4_n_0 ),
        .I2(\sgla_f_reg[28]_1 ),
        .I3(\sgla_f[28]_i_7_n_0 ),
        .I4(\sgla_f[31]_i_8_n_0 ),
        .O(\sgla_f[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \sgla_f[3]_i_5 
       (.I0(sgla_r_0[19]),
        .I1(\sgla_f[4]_i_7_n_0 ),
        .I2(sgla_r_0[4]),
        .I3(\stat_reg[0]_0 ),
        .I4(\sgla_f[3]_i_7_n_0 ),
        .O(\sgla_f[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \sgla_f[3]_i_6 
       (.I0(p_0_in1_in),
        .I1(\sgla_f_reg[28]_1 ),
        .I2(\stat_reg[0] ),
        .I3(\sgla_f_reg[28]_i_13_n_5 ),
        .I4(\sgla_f_reg[28]_i_13_n_6 ),
        .I5(\sgla_f_reg[28]_i_13_n_4 ),
        .O(\sgla_f[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sgla_f[3]_i_7 
       (.I0(\sgla_f[4]_i_9_n_0 ),
        .I1(sgla_r_0[7]),
        .I2(sgla_r_0[11]),
        .I3(\stat_reg[0]_2 ),
        .I4(sgla_r_0[5]),
        .I5(\stat_reg[0]_1 ),
        .O(\sgla_f[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEEEE2)) 
    \sgla_f[4]_i_1 
       (.I0(sgla_r_0[4]),
        .I1(\sgla_f[28]_i_2_n_0 ),
        .I2(\sgla_f[4]_i_2_n_0 ),
        .I3(\sgla_f[4]_i_3_n_0 ),
        .I4(\sgla_f[4]_i_4_n_0 ),
        .I5(\sgla_f[4]_i_5_n_0 ),
        .O(\sgla_f[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF8F0F8)) 
    \sgla_f[4]_i_2 
       (.I0(sgla_r_0[2]),
        .I1(p_0_in1_in),
        .I2(\sgla_f[4]_i_6_n_0 ),
        .I3(p_0_in3_in),
        .I4(sgla_r_0[0]),
        .I5(\sgla_f[30]_i_5_n_0 ),
        .O(\sgla_f[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBABAFFBA)) 
    \sgla_f[4]_i_3 
       (.I0(fctl_load_b),
        .I1(\sgla_f[4]_i_7_n_0 ),
        .I2(sgla_r_0[20]),
        .I3(sgla_r_0[6]),
        .I4(\stat_reg[0]_1 ),
        .I5(\sgla_f[4]_i_8_n_0 ),
        .O(\sgla_f[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000C0C4)) 
    \sgla_f[4]_i_4 
       (.I0(p_0_in3_in),
        .I1(sgla_r_0[3]),
        .I2(\sgla_f_reg[28]_1 ),
        .I3(p_0_in1_in),
        .I4(\sgla_f[1]_i_4_n_0 ),
        .I5(\stat_reg[0] ),
        .O(\sgla_f[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFF54)) 
    \sgla_f[4]_i_5 
       (.I0(\sgla_f_reg[28]_1 ),
        .I1(p_0_in6_in),
        .I2(p_0_in9_in),
        .I3(\sgla_f[1]_i_4_n_0 ),
        .I4(\sgla_f[1]_i_3_n_0 ),
        .I5(\sgla_f[1]_i_6_n_0 ),
        .O(\sgla_f[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sgla_f[4]_i_6 
       (.I0(p_0_in6_in),
        .I1(p_0_in9_in),
        .O(\sgla_f[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \sgla_f[4]_i_7 
       (.I0(\sgla_f_reg[1]_i_11_n_5 ),
        .I1(\sgla_f_reg[1]_i_11_n_6 ),
        .I2(\sgla_f_reg[1]_i_11_n_4 ),
        .I3(\sgla_f_reg[0]_1 ),
        .I4(\sgla_e_reg[7]_1 ),
        .O(\sgla_f[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sgla_f[4]_i_8 
       (.I0(\sgla_f[4]_i_9_n_0 ),
        .I1(sgla_r_0[8]),
        .I2(sgla_r_0[12]),
        .I3(\stat_reg[0]_2 ),
        .I4(sgla_r_0[5]),
        .I5(\stat_reg[0]_0 ),
        .O(\sgla_f[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \sgla_f[4]_i_9 
       (.I0(\sgla_f[1]_i_12_n_0 ),
        .I1(\sgla_e_reg[7]_1 ),
        .I2(p_0_in20_in),
        .I3(\sgla_f_reg[0]_1 ),
        .I4(p_0_in17_in),
        .O(\sgla_f[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF2)) 
    \sgla_f[5]_i_1 
       (.I0(sgla_r_0[3]),
        .I1(\sgla_f_reg[5]_0 ),
        .I2(\sgla_f[5]_i_2_n_0 ),
        .I3(\sgla_f[5]_i_3_n_0 ),
        .I4(\sgla_f[5]_i_4_n_0 ),
        .O(\sgla_f[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \sgla_f[5]_i_2 
       (.I0(\sgla_f_reg[7]_0 ),
        .I1(sgla_r_0[6]),
        .I2(fctl_load_b),
        .I3(abus[0]),
        .I4(sgla_r_0[21]),
        .I5(\sgla_f[7]_i_5_n_0 ),
        .O(\sgla_f[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sgla_f[5]_i_3 
       (.I0(\sgla_f[7]_i_6_n_0 ),
        .I1(sgla_r_0[9]),
        .I2(sgla_r_0[7]),
        .I3(\sgla_f_reg[5]_1 ),
        .I4(sgla_r_0[13]),
        .I5(\sgla_f_reg[20]_1 ),
        .O(\sgla_f[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \sgla_f[5]_i_4 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[4]),
        .I2(fctl_load_b),
        .I3(\stat_reg[3] ),
        .I4(sgla_r_0[1]),
        .O(\sgla_f[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF2)) 
    \sgla_f[6]_i_1 
       (.I0(sgla_r_0[4]),
        .I1(\sgla_f_reg[5]_0 ),
        .I2(\sgla_f[6]_i_2_n_0 ),
        .I3(\sgla_f[6]_i_3_n_0 ),
        .I4(\sgla_f[6]_i_4_n_0 ),
        .O(\sgla_f[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \sgla_f[6]_i_2 
       (.I0(\sgla_f_reg[20]_1 ),
        .I1(sgla_r_0[14]),
        .I2(sgla_r_0[22]),
        .I3(\sgla_f[7]_i_5_n_0 ),
        .I4(fctl_load_b),
        .I5(abus[1]),
        .O(\sgla_f[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sgla_f[6]_i_3 
       (.I0(\sgla_f[6]_i_5_n_0 ),
        .I1(sgla_r_0[7]),
        .I2(sgla_r_0[10]),
        .I3(\sgla_f[7]_i_6_n_0 ),
        .I4(sgla_r_0[8]),
        .I5(\sgla_f_reg[5]_1 ),
        .O(\sgla_f[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \sgla_f[6]_i_4 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[5]),
        .I2(fctl_load_b),
        .I3(\stat_reg[3] ),
        .I4(sgla_r_0[2]),
        .O(\sgla_f[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \sgla_f[6]_i_5 
       (.I0(\sgla_f[1]_i_12_n_0 ),
        .I1(\sgla_f_reg[0]_1 ),
        .I2(fctl_load_b),
        .I3(p_0_in14_in),
        .I4(\sgla_f_reg[28]_i_30_n_7 ),
        .I5(\sgla_f[1]_i_14_n_0 ),
        .O(\sgla_f[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF2)) 
    \sgla_f[7]_i_1 
       (.I0(sgla_r_0[5]),
        .I1(\sgla_f_reg[5]_0 ),
        .I2(\sgla_f[7]_i_2_n_0 ),
        .I3(\sgla_f[7]_i_3_n_0 ),
        .I4(\sgla_f[7]_i_4_n_0 ),
        .O(\sgla_f[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \sgla_f[7]_i_2 
       (.I0(\sgla_f_reg[5]_1 ),
        .I1(sgla_r_0[9]),
        .I2(sgla_r_0[23]),
        .I3(\sgla_f[7]_i_5_n_0 ),
        .I4(fctl_load_b),
        .I5(abus[2]),
        .O(\sgla_f[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sgla_f[7]_i_3 
       (.I0(\sgla_f[7]_i_6_n_0 ),
        .I1(sgla_r_0[11]),
        .I2(sgla_r_0[8]),
        .I3(\sgla_f_reg[7]_0 ),
        .I4(sgla_r_0[15]),
        .I5(\sgla_f_reg[20]_1 ),
        .O(\sgla_f[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \sgla_f[7]_i_4 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[6]),
        .I2(fctl_load_b),
        .I3(\stat_reg[3] ),
        .I4(sgla_r_0[3]),
        .O(\sgla_f[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \sgla_f[7]_i_5 
       (.I0(fctl_load_b),
        .I1(\sgla_e_reg[7]_1 ),
        .I2(\sgla_f_reg[0]_1 ),
        .I3(\sgla_f_reg[1]_i_11_n_4 ),
        .I4(\sgla_f_reg[1]_i_11_n_6 ),
        .I5(\sgla_f_reg[1]_i_11_n_5 ),
        .O(\sgla_f[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \sgla_f[7]_i_6 
       (.I0(fctl_load_b),
        .I1(p_0_in17_in),
        .I2(\sgla_f_reg[0]_1 ),
        .I3(p_0_in20_in),
        .I4(\sgla_e_reg[7]_1 ),
        .I5(\sgla_f[1]_i_12_n_0 ),
        .O(\sgla_f[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEEFFFFEFEE)) 
    \sgla_f[8]_i_1 
       (.I0(\sgla_f[8]_i_2_n_0 ),
        .I1(\sgla_f[8]_i_3_n_0 ),
        .I2(\sgla_f_reg[5]_0 ),
        .I3(sgla_r_0[6]),
        .I4(sgla_r_0[0]),
        .I5(\sgla_f_reg[8]_0 ),
        .O(\sgla_f[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \sgla_f[8]_i_2 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[7]),
        .I2(\sgla_f_reg[8]_1 ),
        .I3(\sgla_f[8]_i_5_n_0 ),
        .O(\sgla_f[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \sgla_f[8]_i_3 
       (.I0(sgla_r_0[4]),
        .I1(\stat_reg[3] ),
        .I2(fctl_load_b),
        .O(\sgla_f[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF222FFFFF222F222)) 
    \sgla_f[8]_i_5 
       (.I0(sgla_r_0[24]),
        .I1(\sgla_f[7]_i_5_n_0 ),
        .I2(fctl_load_b),
        .I3(abus[3]),
        .I4(\sgla_f[7]_i_6_n_0 ),
        .I5(sgla_r_0[12]),
        .O(\sgla_f[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEEFFFFEFEE)) 
    \sgla_f[9]_i_1 
       (.I0(\sgla_f[9]_i_2_n_0 ),
        .I1(\sgla_f[9]_i_3_n_0 ),
        .I2(\sgla_f_reg[5]_0 ),
        .I3(sgla_r_0[7]),
        .I4(sgla_r_0[5]),
        .I5(\sgla_f_reg[9]_0 ),
        .O(\sgla_f[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \sgla_f[9]_i_2 
       (.I0(\sgla_f[27]_i_7_n_0 ),
        .I1(sgla_r_0[8]),
        .I2(\sgla_f[9]_i_4_n_0 ),
        .I3(\sgla_f[9]_i_5_n_0 ),
        .O(\sgla_f[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \sgla_f[9]_i_3 
       (.I0(sgla_r_0[1]),
        .I1(\stat_reg[3]_1 ),
        .I2(fctl_load_b),
        .O(\sgla_f[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \sgla_f[9]_i_4 
       (.I0(\sgla_f[7]_i_6_n_0 ),
        .I1(sgla_r_0[13]),
        .I2(sgla_r_0[10]),
        .I3(\sgla_f_reg[7]_0 ),
        .I4(sgla_r_0[17]),
        .I5(\sgla_f_reg[20]_1 ),
        .O(\sgla_f[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF222FFFFF222F222)) 
    \sgla_f[9]_i_5 
       (.I0(sgla_r_0[25]),
        .I1(\sgla_f[7]_i_5_n_0 ),
        .I2(fctl_load_b),
        .I3(abus[4]),
        .I4(\sgla_f_reg[5]_1 ),
        .I5(sgla_r_0[11]),
        .O(\sgla_f[9]_i_5_n_0 ));
  FDRE \sgla_f_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sgla_f[0]_i_1_n_0 ),
        .Q(sgla_r_0[0]),
        .R(\<const0> ));
  FDRE \sgla_f_reg[10] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[10]_i_1_n_0 ),
        .Q(sgla_r_0[10]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[11] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[11]_i_1_n_0 ),
        .Q(sgla_r_0[11]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[12] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[12]_i_1_n_0 ),
        .Q(sgla_r_0[12]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[13] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[13]_i_1_n_0 ),
        .Q(sgla_r_0[13]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[14] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[14]_i_1_n_0 ),
        .Q(sgla_r_0[14]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[15] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[15]_i_1_n_0 ),
        .Q(sgla_r_0[15]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[16] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[16]_i_1_n_0 ),
        .Q(sgla_r_0[16]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[17] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[17]_i_1_n_0 ),
        .Q(sgla_r_0[17]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[18] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[18]_i_1_n_0 ),
        .Q(sgla_r_0[18]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[19] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[19]_i_1_n_0 ),
        .Q(sgla_r_0[19]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sgla_f[1]_i_1_n_0 ),
        .Q(sgla_r_0[1]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sgla_f_reg[1]_i_11 
       (.CI(\sgla_f_reg[28]_i_30_n_0 ),
        .CO({\sgla_f_reg[1]_i_11_n_0 ,\sgla_f_reg[1]_i_11_n_1 ,\sgla_f_reg[1]_i_11_n_2 ,\sgla_f_reg[1]_i_11_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\sgla_f[1]_i_17_n_0 ,\sgla_f[1]_i_18_n_0 ,\sgla_f[1]_i_19_n_0 ,\sgla_f[1]_i_20_n_0 }),
        .O({\sgla_f_reg[1]_i_11_n_4 ,\sgla_f_reg[1]_i_11_n_5 ,\sgla_f_reg[1]_i_11_n_6 ,\sgla_e_reg[7]_1 }),
        .S({\sgla_f[1]_i_21_n_0 ,\sgla_f[1]_i_22_n_0 ,\sgla_f[1]_i_23_n_0 ,\sgla_f[1]_i_24_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sgla_f_reg[1]_i_16 
       (.CI(\sgla_f_reg[1]_i_11_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\sglb_e_reg[8] ),
        .S({\<const0> ,\<const0> ,\<const0> ,\sgla_f[1]_i_26_n_0 }));
  FDRE \sgla_f_reg[20] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[20]_i_1_n_0 ),
        .Q(sgla_r_0[20]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[21] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[21]_i_1_n_0 ),
        .Q(sgla_r_0[21]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[22] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[22]_i_1_n_0 ),
        .Q(sgla_r_0[22]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[23] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[23]_i_1_n_0 ),
        .Q(sgla_r_0[23]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[24] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[24]_i_1_n_0 ),
        .Q(sgla_r_0[24]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[25] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[25]_i_1_n_0 ),
        .Q(sgla_r_0[25]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[26] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[26]_i_1_n_0 ),
        .Q(sgla_r_0[26]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[27] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[27]_i_1_n_0 ),
        .Q(sgla_r_0[27]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[28] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[28]_i_3_n_0 ),
        .Q(sgla_r_0[28]),
        .R(\sgla_f_reg[28]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sgla_f_reg[28]_i_13 
       (.CI(\sgla_f_reg[28]_i_6_n_0 ),
        .CO({\sgla_f_reg[28]_i_13_n_0 ,\sgla_f_reg[28]_i_13_n_1 ,\sgla_f_reg[28]_i_13_n_2 ,\sgla_f_reg[28]_i_13_n_3 }),
        .CYINIT(\<const0> ),
        .DI(sgla_r_0[39:36]),
        .O({\sgla_f_reg[28]_i_13_n_4 ,\sgla_f_reg[28]_i_13_n_5 ,\sgla_f_reg[28]_i_13_n_6 ,p_0_in9_in}),
        .S({\sgla_f[28]_i_24_n_0 ,\sgla_f[28]_i_25_n_0 ,\sgla_f[28]_i_26_n_0 ,\sgla_f[28]_i_27_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sgla_f_reg[28]_i_18 
       (.CI(\sgla_f_reg[28]_i_13_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\sgla_e_reg[7]_0 ),
        .S({\<const0> ,\<const0> ,\<const0> ,\sgla_f[28]_i_29_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sgla_f_reg[28]_i_30 
       (.CI(\<const0> ),
        .CO({\sgla_f_reg[28]_i_30_n_0 ,\sgla_f_reg[28]_i_30_n_1 ,\sgla_f_reg[28]_i_30_n_2 ,\sgla_f_reg[28]_i_30_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\sgla_f[28]_i_34_n_0 ,\sgla_f[28]_i_35_n_0 ,\sgla_f[28]_i_36_n_0 ,\sgla_f[28]_i_37_n_0 }),
        .O({p_0_in20_in,p_0_in17_in,p_0_in14_in,\sgla_f_reg[28]_i_30_n_7 }),
        .S({\sgla_f[28]_i_38_n_0 ,\sgla_f[28]_i_39_n_0 ,\sgla_f[28]_i_40_n_0 ,\sgla_f[28]_i_41_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sgla_f_reg[28]_i_6 
       (.CI(\<const0> ),
        .CO({\sgla_f_reg[28]_i_6_n_0 ,\sgla_f_reg[28]_i_6_n_1 ,\sgla_f_reg[28]_i_6_n_2 ,\sgla_f_reg[28]_i_6_n_3 }),
        .CYINIT(\<const1> ),
        .DI(sgla_r_0[35:32]),
        .O({p_0_in6_in,p_0_in3_in,p_0_in1_in,O}),
        .S({\sgla_f[28]_i_14_n_0 ,\sgla_f[28]_i_15_n_0 ,\sgla_f[28]_i_16_n_0 ,\sgla_f[28]_i_17_n_0 }));
  FDRE \sgla_f_reg[29] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sgla_f[29]_i_1_n_0 ),
        .Q(sgla_r_0[29]),
        .R(\<const0> ));
  FDRE \sgla_f_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sgla_f[2]_i_1_n_0 ),
        .Q(sgla_r_0[2]),
        .R(\<const0> ));
  FDRE \sgla_f_reg[30] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sgla_f[30]_i_1_n_0 ),
        .Q(sgla_r_0[30]),
        .R(\<const0> ));
  FDRE \sgla_f_reg[31] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sgla_f[31]_i_1_n_0 ),
        .Q(sgla_r_0[31]),
        .R(\<const0> ));
  FDRE \sgla_f_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sgla_f[3]_i_1_n_0 ),
        .Q(sgla_r_0[3]),
        .R(\<const0> ));
  FDRE \sgla_f_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sgla_f[4]_i_1_n_0 ),
        .Q(sgla_r_0[4]),
        .R(\<const0> ));
  FDRE \sgla_f_reg[5] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[5]_i_1_n_0 ),
        .Q(sgla_r_0[5]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[6] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[6]_i_1_n_0 ),
        .Q(sgla_r_0[6]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[7] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[7]_i_1_n_0 ),
        .Q(sgla_r_0[7]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[8] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[8]_i_1_n_0 ),
        .Q(sgla_r_0[8]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_f_reg[9] 
       (.C(clk),
        .CE(\sgla_f[28]_i_2_n_0 ),
        .D(\sgla_f[9]_i_1_n_0 ),
        .Q(sgla_r_0[9]),
        .R(\sgla_f_reg[28]_0 ));
  FDRE \sgla_i_reg[0] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[0]),
        .Q(\sgla_i_reg_n_0_[0] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[10] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[10]),
        .Q(\sgla_i_reg_n_0_[10] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[11] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[11]),
        .Q(\sgla_i_reg_n_0_[11] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[12] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[12]),
        .Q(\sgla_i_reg_n_0_[12] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[13] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[13]),
        .Q(\sgla_i_reg_n_0_[13] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[14] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[14]),
        .Q(\sgla_i_reg_n_0_[14] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[15] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[15]),
        .Q(\sgla_i_reg_n_0_[15] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[16] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[16]),
        .Q(\sgla_i_reg_n_0_[16] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[17] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[17]),
        .Q(\sgla_i_reg_n_0_[17] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[18] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[18]),
        .Q(\sgla_i_reg_n_0_[18] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[19] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[19]),
        .Q(\sgla_i_reg_n_0_[19] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[1] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[1]),
        .Q(\sgla_i_reg_n_0_[1] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[20] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[20]),
        .Q(\sgla_i_reg_n_0_[20] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[21] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[21]),
        .Q(\sgla_i_reg_n_0_[21] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[22] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[22]),
        .Q(\sgla_i_reg_n_0_[22] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[23] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[23]),
        .Q(p_0_in_0[0]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[24] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[24]),
        .Q(p_0_in_0[1]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[25] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[25]),
        .Q(p_0_in_0[2]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[26] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[26]),
        .Q(p_0_in_0[3]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[27] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[27]),
        .Q(p_0_in_0[4]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[28] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[28]),
        .Q(p_0_in_0[5]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[29] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[29]),
        .Q(p_0_in_0[6]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[2] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[2]),
        .Q(\sgla_i_reg_n_0_[2] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[30] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[30]),
        .Q(p_0_in_0[7]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[31] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[31]),
        .Q(sgla_r_0[40]),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[3] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[3]),
        .Q(\sgla_i_reg_n_0_[3] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[4] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[4]),
        .Q(\sgla_i_reg_n_0_[4] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[5] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[5]),
        .Q(\sgla_i_reg_n_0_[5] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[6] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[6]),
        .Q(\sgla_i_reg_n_0_[6] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[7] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[7]),
        .Q(\sgla_i_reg_n_0_[7] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[8] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[8]),
        .Q(\sgla_i_reg_n_0_[8] ),
        .R(\sgla_e_reg[0]_1 ));
  FDRE \sgla_i_reg[9] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(abus[9]),
        .Q(\sgla_i_reg_n_0_[9] ),
        .R(\sgla_e_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \sglb_e[0]_i_1 
       (.I0(bbus[19]),
        .I1(fctl_load_b),
        .I2(ccmd_1_sn_1),
        .I3(sglb_r[31]),
        .I4(\sglb_e[0]_i_2_n_0 ),
        .O(\sglb_e_reg[3] [0]));
  LUT6 #(
    .INIT(64'hF8F8F88888888888)) 
    \sglb_e[0]_i_2 
       (.I0(data1[0]),
        .I1(\stat_reg[2] ),
        .I2(\sglb_e[4]_i_6_n_0 ),
        .I3(\sgla_e_reg[3]_2 [1]),
        .I4(\sglb_e[1]_i_6_n_0 ),
        .I5(sglb_r[31]),
        .O(\sglb_e[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAFFEAEA)) 
    \sglb_e[1]_i_1 
       (.I0(\sglb_e_reg[1] ),
        .I1(data1[1]),
        .I2(\stat_reg[2] ),
        .I3(sglb_r[32]),
        .I4(\sgla_e_reg[3]_0 ),
        .I5(\sglb_e[1]_i_4_n_0 ),
        .O(\sglb_e_reg[3] [1]));
  LUT5 #(
    .INIT(32'h00040000)) 
    \sglb_e[1]_i_3 
       (.I0(\sgla_e_reg[3]_2 [2]),
        .I1(\sgla_e_reg[3]_2 [1]),
        .I2(\sgla_e_reg[3]_2 [3]),
        .I3(\sgla_e_reg[7]_4 [0]),
        .I4(\sglb_e[4]_i_6_n_0 ),
        .O(\sgla_e_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFF02020208080808)) 
    \sglb_e[1]_i_4 
       (.I0(\sglb_e[1]_i_5_n_0 ),
        .I1(sglb_r[31]),
        .I2(fctl_load_b),
        .I3(\sglb_e[4]_i_6_n_0 ),
        .I4(\sglb_e[1]_i_6_n_0 ),
        .I5(sglb_r[32]),
        .O(\sglb_e[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10101015)) 
    \sglb_e[1]_i_5 
       (.I0(\sglc_i[44]_i_4_n_0 ),
        .I1(\sgla_e_reg[3]_2 [1]),
        .I2(sglb_r[32]),
        .I3(\sgla_e_reg[3]_2 [2]),
        .I4(\sglb_f[31]_i_5_n_0 ),
        .I5(\sglb_f_reg[31] ),
        .O(\sglb_e[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sglb_e[1]_i_6 
       (.I0(\sgla_e_reg[7]_4 [0]),
        .I1(\sgla_e_reg[3]_2 [3]),
        .I2(\sgla_e_reg[3]_2 [2]),
        .O(\sglb_e[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAFFEA)) 
    \sglb_e[2]_i_1 
       (.I0(\sglb_e[2]_i_2_n_0 ),
        .I1(\stat_reg[2] ),
        .I2(data1[2]),
        .I3(\sgla_e_reg[3]_1 ),
        .I4(sglb_r[33]),
        .I5(\sglb_e_reg[2]_0 ),
        .O(\sglb_e_reg[3] [2]));
  LUT6 #(
    .INIT(64'hC0C0C4C00C000000)) 
    \sglb_e[2]_i_2 
       (.I0(\sgla_e_reg[3]_2 [2]),
        .I1(\sglb_e[4]_i_6_n_0 ),
        .I2(\sglb_f[31]_i_5_n_0 ),
        .I3(\sgla_e_reg[3]_2 [1]),
        .I4(sglb_r[32]),
        .I5(sglb_r[33]),
        .O(\sglb_e[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \sglb_e[2]_i_3 
       (.I0(\sgla_e_reg[3]_2 [3]),
        .I1(\sgla_e_reg[7]_4 [0]),
        .I2(\sglb_e[4]_i_6_n_0 ),
        .I3(\sgla_e_reg[3]_2 [2]),
        .O(\sgla_e_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h0000000111110001)) 
    \sglb_e[2]_i_6 
       (.I0(\sgla_e_reg[3]_2 [1]),
        .I1(\sglc_i[44]_i_4_n_0 ),
        .I2(\sgla_e_reg[3]_2 [3]),
        .I3(\sgla_e_reg[7]_4 [0]),
        .I4(sglb_r[33]),
        .I5(\sgla_e_reg[3]_2 [2]),
        .O(\sglb_e_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \sglb_e[3]_i_1 
       (.I0(\sglb_e_reg[3]_1 ),
        .I1(\sglb_e[3]_i_3_n_0 ),
        .I2(data1[3]),
        .I3(\stat_reg[2] ),
        .I4(sglb_r[34]),
        .I5(\sgla_e_reg[7]_2 ),
        .O(\sglb_e_reg[3] [3]));
  LUT6 #(
    .INIT(64'h0000000000000047)) 
    \sglb_e[3]_i_13 
       (.I0(\sgla_e_reg[3]_2 [3]),
        .I1(sglb_r[34]),
        .I2(\sgla_e_reg[7]_4 [0]),
        .I3(\sgla_e_reg[3]_2 [1]),
        .I4(\sgla_e_reg[3]_2 [2]),
        .I5(\sglc_i[44]_i_4_n_0 ),
        .O(\sglb_e_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF47020000)) 
    \sglb_e[3]_i_3 
       (.I0(\sgla_e_reg[3]_2 [3]),
        .I1(sglb_r[34]),
        .I2(\sgla_e_reg[7]_4 [0]),
        .I3(\sglb_e_reg[3]_2 ),
        .I4(\sglb_e[4]_i_6_n_0 ),
        .I5(\sglb_e_reg[3]_3 ),
        .O(\sglb_e[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00005554)) 
    \sglb_e[3]_i_5 
       (.I0(\sglb_f_reg[31] ),
        .I1(\sgla_e_reg[7]_4 [3]),
        .I2(\sgla_e_reg[7]_4 [2]),
        .I3(\sgla_e_reg[7]_4 [1]),
        .I4(fctl_load_b),
        .O(\stat_reg[2] ));
  LUT2 #(
    .INIT(4'h8)) 
    \sglb_e[3]_i_6 
       (.I0(\sglb_e[4]_i_6_n_0 ),
        .I1(\sgla_e_reg[7]_4 [0]),
        .O(\sgla_e_reg[7]_2 ));
  LUT3 #(
    .INIT(8'h40)) 
    \sglb_e[4]_i_3 
       (.I0(\sgla_e_reg[7]_4 [0]),
        .I1(\sgla_e_reg[3]_2 [3]),
        .I2(\sglb_e[4]_i_6_n_0 ),
        .O(\sgla_e_reg[7]_5 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \sglb_e[4]_i_4 
       (.I0(\sgla_e_reg[7]_2 ),
        .I1(sglb_r[35]),
        .I2(\stat_reg[2] ),
        .I3(data1[4]),
        .I4(data6),
        .I5(ccmd_1_sn_1),
        .O(\sglb_e_reg[4] ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \sglb_e[4]_i_6 
       (.I0(\sgla_e_reg[7]_4 [3]),
        .I1(\sgla_e_reg[7]_4 [2]),
        .I2(\sgla_e_reg[7]_4 [1]),
        .I3(\sglb_f_reg[31] ),
        .I4(fctl_load_b),
        .O(\sglb_e[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCFFFFFFFE)) 
    \sglb_e[8]_i_1 
       (.I0(\sglb_e[8]_i_3_n_0 ),
        .I1(fctl_load_b),
        .I2(\sgla_e_reg[7]_4 [1]),
        .I3(\sgla_e_reg[7]_4 [2]),
        .I4(\sgla_e_reg[7]_4 [3]),
        .I5(\sglb_f_reg[31] ),
        .O(E[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \sglb_e[8]_i_20 
       (.I0(Q),
        .I1(\sglb_e_reg[8]_i_15_0 ),
        .O(\sglb_e[8]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sglb_e[8]_i_3 
       (.I0(\sgla_e_reg[3]_2 [1]),
        .I1(\sgla_e_reg[7]_4 [0]),
        .I2(\sgla_e_reg[3]_2 [3]),
        .I3(\sgla_e_reg[3]_2 [2]),
        .I4(\sgla_e_reg[3]_2 [0]),
        .O(\sglb_e[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sglb_e[8]_i_7 
       (.I0(fctl_ccmd_int_reg),
        .I1(fctl_load_b),
        .O(ccmd_1_sn_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sglb_e_reg[8]_i_15 
       (.CI(\sglb_e_reg[8]_i_4_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\sgla_e_reg[7]_3 ),
        .S({\<const0> ,\<const0> ,\<const0> ,\sglb_e[8]_i_20_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sglb_e_reg[8]_i_4 
       (.CI(\sglb_f_reg[31]_i_4_n_0 ),
        .CO({\sglb_e_reg[8]_i_4_n_0 ,\sglb_e_reg[8]_i_4_n_1 ,\sglb_e_reg[8]_i_4_n_2 ,\sglb_e_reg[8]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI(sgla_r_0[39:36]),
        .O(\sgla_e_reg[7]_4 ),
        .S(\sglb_f_reg[31]_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sglb_f[0]_i_1 
       (.I0(\sglb_f[0]_i_2_n_0 ),
        .I1(\sglb_f[4]_i_3_n_0 ),
        .I2(sglb_r[15]),
        .I3(fctl_ccmd_int_reg),
        .I4(sglb_r[0]),
        .O(\sglb_f_reg[30] [0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[0]_i_2 
       (.I0(\sglb_f[29]_i_2_n_0 ),
        .I1(sglb_r[1]),
        .I2(\sglb_f[4]_i_4_n_0 ),
        .I3(sglb_r[3]),
        .I4(sglb_r[7]),
        .I5(\sglb_f[4]_i_5_n_0 ),
        .O(\sglb_f[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sglb_f[10]_i_1 
       (.I0(\sglb_f[10]_i_2_n_0 ),
        .I1(\sglb_f[10]_i_3_n_0 ),
        .O(\sglb_f_reg[30] [10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[10]_i_2 
       (.I0(\sgla_e_reg[7]_2 ),
        .I1(sglb_r[25]),
        .I2(ccmd_1_sn_1),
        .I3(sglb_r[10]),
        .I4(fctl_load_b),
        .I5(bbus[5]),
        .O(\sglb_f[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[10]_i_3 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[11]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[13]),
        .I4(sglb_r[17]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sglb_f[11]_i_1 
       (.I0(\sglb_f[11]_i_2_n_0 ),
        .I1(\sglb_f[11]_i_3_n_0 ),
        .O(\sglb_f_reg[30] [11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[11]_i_2 
       (.I0(\sgla_e_reg[7]_2 ),
        .I1(sglb_r[26]),
        .I2(ccmd_1_sn_1),
        .I3(sglb_r[11]),
        .I4(fctl_load_b),
        .I5(bbus[6]),
        .O(\sglb_f[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[11]_i_3 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[12]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[14]),
        .I4(sglb_r[18]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sglb_f[12]_i_1 
       (.I0(\sglb_f[12]_i_2_n_0 ),
        .I1(\sglb_f[12]_i_3_n_0 ),
        .O(\sglb_f_reg[30] [12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[12]_i_2 
       (.I0(\sgla_e_reg[7]_2 ),
        .I1(sglb_r[27]),
        .I2(ccmd_1_sn_1),
        .I3(sglb_r[12]),
        .I4(fctl_load_b),
        .I5(bbus[7]),
        .O(\sglb_f[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[12]_i_3 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[13]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[15]),
        .I4(sglb_r[19]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sglb_f[13]_i_1 
       (.I0(\sglb_f[13]_i_2_n_0 ),
        .I1(\sglb_f[13]_i_3_n_0 ),
        .O(\sglb_f_reg[30] [13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[13]_i_2 
       (.I0(\sgla_e_reg[7]_2 ),
        .I1(sglb_r[28]),
        .I2(ccmd_1_sn_1),
        .I3(sglb_r[13]),
        .I4(fctl_load_b),
        .I5(bbus[8]),
        .O(\sglb_f[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[13]_i_3 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[14]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[16]),
        .I4(sglb_r[20]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sglb_f[14]_i_1 
       (.I0(\sglb_f[14]_i_2_n_0 ),
        .I1(\sglb_f[14]_i_3_n_0 ),
        .O(\sglb_f_reg[30] [14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[14]_i_2 
       (.I0(\sgla_e_reg[7]_2 ),
        .I1(sglb_r[29]),
        .I2(ccmd_1_sn_1),
        .I3(sglb_r[14]),
        .I4(fctl_load_b),
        .I5(bbus[9]),
        .O(\sglb_f[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[14]_i_3 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[15]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[17]),
        .I4(sglb_r[21]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sglb_f[15]_i_1 
       (.I0(\sglb_f[15]_i_2_n_0 ),
        .I1(\sglb_f[15]_i_3_n_0 ),
        .O(\sglb_f_reg[30] [15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[15]_i_2 
       (.I0(\sgla_e_reg[7]_2 ),
        .I1(sglb_r[30]),
        .I2(ccmd_1_sn_1),
        .I3(sglb_r[15]),
        .I4(fctl_load_b),
        .I5(bbus[10]),
        .O(\sglb_f[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[15]_i_3 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[16]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[18]),
        .I4(sglb_r[22]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sglb_f[16]_i_1 
       (.I0(\sglb_f[16]_i_2_n_0 ),
        .I1(ccmd_1_sn_1),
        .I2(sglb_r[16]),
        .I3(fctl_load_b),
        .I4(bbus[11]),
        .O(\sglb_f_reg[30] [16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[16]_i_2 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[17]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[19]),
        .I4(sglb_r[23]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sglb_f[17]_i_1 
       (.I0(\sglb_f[17]_i_2_n_0 ),
        .I1(ccmd_1_sn_1),
        .I2(sglb_r[17]),
        .I3(fctl_load_b),
        .I4(bbus[12]),
        .O(\sglb_f_reg[30] [17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[17]_i_2 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[18]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[20]),
        .I4(sglb_r[24]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sglb_f[18]_i_1 
       (.I0(\sglb_f[18]_i_2_n_0 ),
        .I1(ccmd_1_sn_1),
        .I2(sglb_r[18]),
        .I3(fctl_load_b),
        .I4(bbus[13]),
        .O(\sglb_f_reg[30] [18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[18]_i_2 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[19]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[21]),
        .I4(sglb_r[25]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sglb_f[19]_i_1 
       (.I0(\sglb_f[19]_i_2_n_0 ),
        .I1(ccmd_1_sn_1),
        .I2(sglb_r[19]),
        .I3(fctl_load_b),
        .I4(bbus[14]),
        .O(\sglb_f_reg[30] [19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[19]_i_2 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[20]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[22]),
        .I4(sglb_r[26]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sglb_f[1]_i_1 
       (.I0(\sglb_f[1]_i_2_n_0 ),
        .I1(\sglb_f[4]_i_3_n_0 ),
        .I2(sglb_r[16]),
        .I3(fctl_ccmd_int_reg),
        .I4(sglb_r[1]),
        .O(\sglb_f_reg[30] [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[1]_i_2 
       (.I0(\sglb_f[29]_i_2_n_0 ),
        .I1(sglb_r[2]),
        .I2(\sglb_f[4]_i_4_n_0 ),
        .I3(sglb_r[4]),
        .I4(sglb_r[8]),
        .I5(\sglb_f[4]_i_5_n_0 ),
        .O(\sglb_f[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sglb_f[20]_i_1 
       (.I0(\sglb_f[20]_i_2_n_0 ),
        .I1(ccmd_1_sn_1),
        .I2(sglb_r[20]),
        .I3(fctl_load_b),
        .I4(bbus[15]),
        .O(\sglb_f_reg[30] [20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[20]_i_2 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[21]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[23]),
        .I4(sglb_r[27]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sglb_f[21]_i_1 
       (.I0(\sglb_f[21]_i_2_n_0 ),
        .I1(ccmd_1_sn_1),
        .I2(sglb_r[21]),
        .I3(fctl_load_b),
        .I4(bbus[16]),
        .O(\sglb_f_reg[30] [21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[21]_i_2 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[22]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[24]),
        .I4(sglb_r[28]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sglb_f[22]_i_1 
       (.I0(\sglb_f[22]_i_2_n_0 ),
        .I1(ccmd_1_sn_1),
        .I2(sglb_r[22]),
        .I3(fctl_load_b),
        .I4(bbus[17]),
        .O(\sglb_f_reg[30] [22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[22]_i_2 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[23]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[25]),
        .I4(sglb_r[29]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sglb_f[23]_i_1 
       (.I0(\sglb_f[23]_i_2_n_0 ),
        .I1(ccmd_1_sn_1),
        .I2(sglb_r[23]),
        .I3(fctl_load_b),
        .I4(bbus[18]),
        .O(\sglb_f_reg[30] [23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[23]_i_2 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[24]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[26]),
        .I4(sglb_r[30]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[24]_i_2 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[25]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[27]),
        .I4(sglb_r[24]),
        .I5(ccmd_1_sn_1),
        .O(\sglb_f_reg[26] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[25]_i_2 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[26]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[28]),
        .I4(sglb_r[25]),
        .I5(ccmd_1_sn_1),
        .O(\sglb_f_reg[27] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[26]_i_2 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[27]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[29]),
        .I4(sglb_r[26]),
        .I5(ccmd_1_sn_1),
        .O(\sglb_f_reg[28] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[27]_i_2 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[28]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[30]),
        .I4(sglb_r[27]),
        .I5(ccmd_1_sn_1),
        .O(\sglb_f_reg[29] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sglb_f[28]_i_2 
       (.I0(fctl_load_b),
        .I1(fctl_ccmd_int_reg),
        .I2(sglb_r[28]),
        .I3(sglb_r[29]),
        .I4(\sglb_f[29]_i_2_n_0 ),
        .O(\sglb_f_reg[30] [24]));
  LUT4 #(
    .INIT(16'hF888)) 
    \sglb_f[29]_i_1 
       (.I0(fctl_ccmd_int_reg),
        .I1(sglb_r[29]),
        .I2(sglb_r[30]),
        .I3(\sglb_f[29]_i_2_n_0 ),
        .O(\sglb_f_reg[30] [25]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \sglb_f[29]_i_2 
       (.I0(\sgla_e_reg[3]_2 [3]),
        .I1(\sgla_e_reg[7]_4 [0]),
        .I2(\sglb_f[31]_i_3_n_0 ),
        .I3(\sgla_e_reg[3]_2 [2]),
        .I4(\sgla_e_reg[3]_2 [1]),
        .O(\sglb_f[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sglb_f[2]_i_1 
       (.I0(\sglb_f[2]_i_2_n_0 ),
        .I1(\sglb_f[4]_i_3_n_0 ),
        .I2(sglb_r[17]),
        .I3(fctl_ccmd_int_reg),
        .I4(sglb_r[2]),
        .O(\sglb_f_reg[30] [2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[2]_i_2 
       (.I0(\sglb_f[29]_i_2_n_0 ),
        .I1(sglb_r[3]),
        .I2(\sglb_f[4]_i_4_n_0 ),
        .I3(sglb_r[5]),
        .I4(sglb_r[9]),
        .I5(\sglb_f[4]_i_5_n_0 ),
        .O(\sglb_f[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEFE)) 
    \sglb_f[30]_i_2 
       (.I0(\sglb_f_reg[28]_0 ),
        .I1(\sgla_e_reg[7]_3 ),
        .I2(\sglb_f[30]_i_4_n_0 ),
        .I3(\sgla_e_reg[3]_2 [1]),
        .I4(\sgla_e_reg[3]_2 [2]),
        .I5(\sgla_e_reg[3]_2 [3]),
        .O(fctl_ccmd_int_reg));
  LUT4 #(
    .INIT(16'h0001)) 
    \sglb_f[30]_i_4 
       (.I0(\sgla_e_reg[7]_4 [1]),
        .I1(\sgla_e_reg[7]_4 [0]),
        .I2(\sgla_e_reg[7]_4 [3]),
        .I3(\sgla_e_reg[7]_4 [2]),
        .O(\sglb_f[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFEFFFFFFFF)) 
    \sglb_f[31]_i_1 
       (.I0(fctl_load_b),
        .I1(\sgla_e_reg[7]_4 [1]),
        .I2(\sgla_e_reg[7]_4 [2]),
        .I3(\sgla_e_reg[7]_4 [3]),
        .I4(\sglb_f_reg[31] ),
        .I5(rst_n),
        .O(SR));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \sglb_f[31]_i_2 
       (.I0(\sglb_f[31]_i_3_n_0 ),
        .I1(\sgla_e_reg[3]_2 [1]),
        .I2(\sglb_f[31]_i_5_n_0 ),
        .I3(\sgla_e_reg[3]_2 [2]),
        .I4(\sgla_e_reg[3]_2 [0]),
        .O(E[1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \sglb_f[31]_i_3 
       (.I0(\sglb_f_reg[31] ),
        .I1(\sgla_e_reg[7]_4 [1]),
        .I2(\sgla_e_reg[7]_4 [2]),
        .I3(\sgla_e_reg[7]_4 [3]),
        .O(\sglb_f[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sglb_f[31]_i_5 
       (.I0(\sgla_e_reg[3]_2 [3]),
        .I1(\sgla_e_reg[7]_4 [0]),
        .O(\sglb_f[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sglb_f[31]_i_9 
       (.I0(sgla_r_0[32]),
        .I1(sglb_r[31]),
        .O(\sglb_f[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sglb_f[3]_i_1 
       (.I0(\sglb_f[3]_i_2_n_0 ),
        .I1(\sglb_f[4]_i_3_n_0 ),
        .I2(sglb_r[18]),
        .I3(fctl_ccmd_int_reg),
        .I4(sglb_r[3]),
        .O(\sglb_f_reg[30] [3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[3]_i_2 
       (.I0(\sglb_f[29]_i_2_n_0 ),
        .I1(sglb_r[4]),
        .I2(\sglb_f[4]_i_4_n_0 ),
        .I3(sglb_r[6]),
        .I4(sglb_r[10]),
        .I5(\sglb_f[4]_i_5_n_0 ),
        .O(\sglb_f[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sglb_f[4]_i_1 
       (.I0(\sglb_f[4]_i_2_n_0 ),
        .I1(\sglb_f[4]_i_3_n_0 ),
        .I2(sglb_r[19]),
        .I3(fctl_ccmd_int_reg),
        .I4(sglb_r[4]),
        .O(\sglb_f_reg[30] [4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[4]_i_2 
       (.I0(\sglb_f[29]_i_2_n_0 ),
        .I1(sglb_r[5]),
        .I2(\sglb_f[4]_i_4_n_0 ),
        .I3(sglb_r[7]),
        .I4(sglb_r[11]),
        .I5(\sglb_f[4]_i_5_n_0 ),
        .O(\sglb_f[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \sglb_f[4]_i_3 
       (.I0(\sgla_e_reg[7]_4 [3]),
        .I1(\sgla_e_reg[7]_4 [2]),
        .I2(\sgla_e_reg[7]_4 [1]),
        .I3(\sglb_f_reg[31] ),
        .I4(\sgla_e_reg[7]_4 [0]),
        .O(\sglb_f[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \sglb_f[4]_i_4 
       (.I0(\sgla_e_reg[3]_2 [3]),
        .I1(\sgla_e_reg[7]_4 [0]),
        .I2(\sglb_f[31]_i_3_n_0 ),
        .I3(\sgla_e_reg[3]_2 [2]),
        .O(\sglb_f[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \sglb_f[4]_i_5 
       (.I0(\sgla_e_reg[7]_4 [0]),
        .I1(\sgla_e_reg[3]_2 [3]),
        .I2(\sgla_e_reg[7]_4 [3]),
        .I3(\sgla_e_reg[7]_4 [2]),
        .I4(\sgla_e_reg[7]_4 [1]),
        .I5(\sglb_f_reg[31] ),
        .O(\sglb_f[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sglb_f[5]_i_1 
       (.I0(\sglb_f[5]_i_2_n_0 ),
        .I1(\sglb_f[5]_i_3_n_0 ),
        .O(\sglb_f_reg[30] [5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[5]_i_2 
       (.I0(\sgla_e_reg[7]_2 ),
        .I1(sglb_r[20]),
        .I2(ccmd_1_sn_1),
        .I3(sglb_r[5]),
        .I4(fctl_load_b),
        .I5(bbus[0]),
        .O(\sglb_f[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[5]_i_3 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[6]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[8]),
        .I4(sglb_r[12]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sglb_f[6]_i_1 
       (.I0(\sglb_f[6]_i_2_n_0 ),
        .I1(\sglb_f[6]_i_3_n_0 ),
        .O(\sglb_f_reg[30] [6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[6]_i_2 
       (.I0(\sgla_e_reg[7]_2 ),
        .I1(sglb_r[21]),
        .I2(ccmd_1_sn_1),
        .I3(sglb_r[6]),
        .I4(fctl_load_b),
        .I5(bbus[1]),
        .O(\sglb_f[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[6]_i_3 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[7]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[9]),
        .I4(sglb_r[13]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sglb_f[7]_i_1 
       (.I0(\sglb_f[7]_i_2_n_0 ),
        .I1(\sglb_f[7]_i_3_n_0 ),
        .O(\sglb_f_reg[30] [7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[7]_i_2 
       (.I0(\sgla_e_reg[7]_2 ),
        .I1(sglb_r[22]),
        .I2(ccmd_1_sn_1),
        .I3(sglb_r[7]),
        .I4(fctl_load_b),
        .I5(bbus[2]),
        .O(\sglb_f[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[7]_i_3 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[8]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[10]),
        .I4(sglb_r[14]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sglb_f[8]_i_1 
       (.I0(\sglb_f[8]_i_2_n_0 ),
        .I1(\sglb_f[8]_i_3_n_0 ),
        .O(\sglb_f_reg[30] [8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[8]_i_2 
       (.I0(\sgla_e_reg[7]_2 ),
        .I1(sglb_r[23]),
        .I2(ccmd_1_sn_1),
        .I3(sglb_r[8]),
        .I4(fctl_load_b),
        .I5(bbus[3]),
        .O(\sglb_f[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[8]_i_3 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[9]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[11]),
        .I4(sglb_r[15]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sglb_f[9]_i_1 
       (.I0(\sglb_f[9]_i_2_n_0 ),
        .I1(\sglb_f[9]_i_3_n_0 ),
        .O(\sglb_f_reg[30] [9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[9]_i_2 
       (.I0(\sgla_e_reg[7]_2 ),
        .I1(sglb_r[24]),
        .I2(ccmd_1_sn_1),
        .I3(sglb_r[9]),
        .I4(fctl_load_b),
        .I5(bbus[4]),
        .O(\sglb_f[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sglb_f[9]_i_3 
       (.I0(\sgla_e_reg[3]_0 ),
        .I1(sglb_r[10]),
        .I2(\sgla_e_reg[3]_1 ),
        .I3(sglb_r[12]),
        .I4(sglb_r[16]),
        .I5(\sgla_e_reg[7]_5 ),
        .O(\sglb_f[9]_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sglb_f_reg[31]_i_4 
       (.CI(\<const0> ),
        .CO({\sglb_f_reg[31]_i_4_n_0 ,\sglb_f_reg[31]_i_4_n_1 ,\sglb_f_reg[31]_i_4_n_2 ,\sglb_f_reg[31]_i_4_n_3 }),
        .CYINIT(\<const1> ),
        .DI(sgla_r_0[35:32]),
        .O(\sgla_e_reg[3]_2 ),
        .S({S,\sglb_f[31]_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    sglc_e_carry__0_i_1
       (.I0(sgla_r_0[39]),
        .I1(sglb_r[38]),
        .O(\sgla_e_reg[7]_6 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    sglc_e_carry__0_i_2
       (.I0(sgla_r_0[38]),
        .I1(sglb_r[37]),
        .O(\sgla_e_reg[7]_6 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    sglc_e_carry__0_i_3
       (.I0(sgla_r_0[37]),
        .I1(sglb_r[36]),
        .O(\sgla_e_reg[7]_6 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    sglc_e_carry__0_i_4
       (.I0(sgla_r_0[36]),
        .I1(sglb_r[35]),
        .O(\sgla_e_reg[7]_6 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    sglc_e_carry__1_i_1__0
       (.I0(Q),
        .I1(\sglb_e_reg[8]_i_15_0 ),
        .O(\sgla_e_reg[8]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    sglc_e_carry_i_1__0
       (.I0(sgla_r_0[35]),
        .I1(sglb_r[34]),
        .O(\sgla_e_reg[3]_5 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    sglc_e_carry_i_2
       (.I0(sgla_r_0[34]),
        .I1(sglb_r[33]),
        .O(\sgla_e_reg[3]_5 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    sglc_e_carry_i_3
       (.I0(sgla_r_0[33]),
        .I1(sglb_r[32]),
        .O(\sgla_e_reg[3]_5 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    sglc_e_carry_i_4
       (.I0(sgla_r_0[32]),
        .I1(sfpu_dsp_c),
        .O(\sgla_e_reg[3]_5 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    sglc_e_carry_i_5
       (.I0(sgla_r_0[32]),
        .I1(sglc_e_carry),
        .O(\sgla_e_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sglc_f[15]_i_15 
       (.I0(\sgla_e_reg[3]_2 [0]),
        .I1(\sgla_e_reg[3]_2 [2]),
        .I2(\sgla_e_reg[3]_2 [3]),
        .I3(\sgla_e_reg[7]_4 [0]),
        .I4(\sgla_e_reg[3]_2 [1]),
        .I5(\sglc_i[44]_i_4_n_0 ),
        .O(\sgla_e_reg[3]_3 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sglc_f[27]_i_6 
       (.I0(\sgla_f_reg[27]_0 ),
        .I1(\sglc_f_reg[27] ),
        .O(\sgla_f_reg[27]_1 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEF)) 
    \sglc_f[28]_i_17 
       (.I0(\sgla_e_reg[7]_3 ),
        .I1(fctl_ccmd_int),
        .I2(\sgla_e_reg[7]_4 [3]),
        .I3(\sgla_e_reg[7]_4 [2]),
        .I4(\sgla_e_reg[7]_4 [1]),
        .I5(\sglb_e[8]_i_3_n_0 ),
        .O(sglb_sft_fin));
  LUT6 #(
    .INIT(64'hB74848B748B7B748)) 
    sglc_f_t_carry__6_i_4
       (.I0(sgla_r_0[31]),
        .I1(fctl_ccmd_add),
        .I2(sglb_r[30]),
        .I3(\cbus[31] ),
        .I4(fctl_ccmd_sub),
        .I5(sgla_r_0[40]),
        .O(\sgla_f_reg[31]_1 ));
  LUT6 #(
    .INIT(64'hEEEEFFEEEEAEBFAE)) 
    \sglc_i[41]_i_2 
       (.I0(\sglc_i[41]_i_3_n_0 ),
        .I1(sgla_r_0[40]),
        .I2(\cbus[31]_INST_0_i_37_n_0 ),
        .I3(\cbus[31]_INST_0_i_36_n_0 ),
        .I4(ccmd_f[1]),
        .I5(\cbus[31]_INST_0_i_35_n_0 ),
        .O(sglc_r_sgla[2]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \sglc_i[41]_i_3 
       (.I0(ccmd_f[2]),
        .I1(ccmd_f[1]),
        .I2(ccmd_f[4]),
        .I3(ccmd_f[3]),
        .I4(sglb_r[39]),
        .I5(ccmd_f[0]),
        .O(\sglc_i[41]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF04)) 
    \sglc_i[43]_i_1 
       (.I0(\sglc_i_reg[43] ),
        .I1(sgla_r_0[41]),
        .I2(\sglc_i[43]_i_2_n_0 ),
        .I3(\sglc_i_reg[43]_0 ),
        .I4(\sglc_i_reg[43]_1 ),
        .O(p_5_in));
  LUT5 #(
    .INIT(32'hBBF7F7F7)) 
    \sglc_i[43]_i_2 
       (.I0(ccmd_f[3]),
        .I1(ccmd_f[4]),
        .I2(ccmd_f[1]),
        .I3(ccmd_f[2]),
        .I4(ccmd_f[0]),
        .O(\sglc_i[43]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEF0000)) 
    \sglc_i[44]_i_2 
       (.I0(\sgla_e_reg[7]_3 ),
        .I1(fctl_ccmd_int),
        .I2(\sglc_i[44]_i_4_n_0 ),
        .I3(\sglb_e[8]_i_3_n_0 ),
        .I4(sgla_sft_fin),
        .I5(\sglc_i_reg[41] ),
        .O(fctl_ccmd_int_reg_0));
  LUT3 #(
    .INIT(8'hFE)) 
    \sglc_i[44]_i_4 
       (.I0(\sgla_e_reg[7]_4 [3]),
        .I1(\sgla_e_reg[7]_4 [2]),
        .I2(\sgla_e_reg[7]_4 [1]),
        .O(\sglc_i[44]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF200F200F200F2F2)) 
    \sglc_i[44]_i_5 
       (.I0(\sgla_f[1]_i_13_n_0 ),
        .I1(\sglc_i[44]_i_6_n_0 ),
        .I2(\sglb_e_reg[8] ),
        .I3(\sgla_e_reg[7]_0 ),
        .I4(\sgla_f[28]_i_31_n_0 ),
        .I5(\sglc_i[44]_i_7_n_0 ),
        .O(sgla_sft_fin));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sglc_i[44]_i_6 
       (.I0(\sgla_f_reg[1]_i_11_n_5 ),
        .I1(\sgla_f_reg[1]_i_11_n_6 ),
        .I2(\sgla_f_reg[1]_i_11_n_4 ),
        .I3(\sgla_e_reg[7]_1 ),
        .I4(p_0_in20_in),
        .I5(p_0_in17_in),
        .O(\sglc_i[44]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sglc_i[44]_i_7 
       (.I0(O),
        .I1(p_0_in3_in),
        .I2(p_0_in9_in),
        .I3(p_0_in6_in),
        .I4(p_0_in1_in),
        .O(\sglc_i[44]_i_7_n_0 ));
endmodule

module sfpu_sglb
   (\sglb_i_reg[28]_0 ,
    \sglb_e_reg[7]_0 ,
    Q,
    \sglb_e_reg[0]_0 ,
    \sglb_e_reg[0]_1 ,
    \sglb_e_reg[0]_2 ,
    data6,
    \sglb_e_reg[1]_0 ,
    sglb_nan0,
    sglb_nan012_in,
    cbus,
    fctl_ccmd_add_reg,
    \sglb_i_reg[31]_0 ,
    fctl_ccmd_hlf_reg,
    \sglb_i_reg[28]_1 ,
    fctl_ccmd_hlf_reg_0,
    sglc_nan,
    fctl_ccmd_mul_reg,
    \sglb_i_reg[31]_1 ,
    \sglb_i_reg[30]_0 ,
    \sglb_i_reg[31]_2 ,
    \sgla_i_reg[24] ,
    sglc_sr_flag,
    S,
    \sglb_e_reg[7]_1 ,
    \sglb_e_reg[8]_0 ,
    \sglb_e_reg[3]_0 ,
    \sglb_e_reg[7]_2 ,
    \sglb_e_reg[4]_0 ,
    \sglb_e_reg[4]_1 ,
    \sglb_e_reg[4]_2 ,
    fctl_load_b,
    bbus,
    \sglb_e_reg[5]_0 ,
    \sglb_e_reg[5]_1 ,
    \sglb_e_reg[8]_1 ,
    \sglb_e[3]_i_3 ,
    \sglb_e[2]_i_4 ,
    \sglb_e[3]_i_3_0 ,
    \sglb_e_reg[8]_2 ,
    \sglb_e_reg[4]_3 ,
    \sglb_e_reg[3]_i_4_0 ,
    \sglb_f_reg[30]_0 ,
    \cbus[31] ,
    \cbus[31]_0 ,
    \cbus[31]_1 ,
    \cbus[27] ,
    \cbus[27]_0 ,
    fctl_ccmd_hlf,
    \sglc_i_reg[44] ,
    \sglc_i_reg[44]_0 ,
    \sglc_i_reg[44]_1 ,
    fctl_ccmd_mul,
    sgla_r_0,
    fctl_ccmd_add,
    \cbus[31]_2 ,
    \cbus[6] ,
    \cbus[31]_3 ,
    \sglc_i_reg[44]_2 ,
    \sglc_i_reg[44]_3 ,
    fctl_ccmd_sub,
    sglc_zer0,
    \sglc_i_reg[44]_4 ,
    \cbus[7] ,
    sglc_s2__0,
    sglc_e_carry__1,
    SR,
    E,
    clk,
    D,
    \sglb_f_reg[31]_0 ,
    \sglb_f_reg[29]_0 ,
    \sglb_e_reg[7]_i_5_0 );
  output [40:0]\sglb_i_reg[28]_0 ;
  output [4:0]\sglb_e_reg[7]_0 ;
  output [0:0]Q;
  output \sglb_e_reg[0]_0 ;
  output \sglb_e_reg[0]_1 ;
  output \sglb_e_reg[0]_2 ;
  output [0:0]data6;
  output \sglb_e_reg[1]_0 ;
  output sglb_nan0;
  output sglb_nan012_in;
  output [0:0]cbus;
  output fctl_ccmd_add_reg;
  output \sglb_i_reg[31]_0 ;
  output fctl_ccmd_hlf_reg;
  output \sglb_i_reg[28]_1 ;
  output fctl_ccmd_hlf_reg_0;
  output sglc_nan;
  output fctl_ccmd_mul_reg;
  output \sglb_i_reg[31]_1 ;
  output [1:0]\sglb_i_reg[30]_0 ;
  output [0:0]\sglb_i_reg[31]_2 ;
  output \sgla_i_reg[24] ;
  output [0:0]sglc_sr_flag;
  output [2:0]S;
  output [3:0]\sglb_e_reg[7]_1 ;
  output [0:0]\sglb_e_reg[8]_0 ;
  output [2:0]\sglb_e_reg[3]_0 ;
  output [3:0]\sglb_e_reg[7]_2 ;
  input \sglb_e_reg[4]_0 ;
  input \sglb_e_reg[4]_1 ;
  input \sglb_e_reg[4]_2 ;
  input fctl_load_b;
  input [31:0]bbus;
  input \sglb_e_reg[5]_0 ;
  input \sglb_e_reg[5]_1 ;
  input \sglb_e_reg[8]_1 ;
  input \sglb_e[3]_i_3 ;
  input \sglb_e[2]_i_4 ;
  input \sglb_e[3]_i_3_0 ;
  input \sglb_e_reg[8]_2 ;
  input \sglb_e_reg[4]_3 ;
  input [3:0]\sglb_e_reg[3]_i_4_0 ;
  input \sglb_f_reg[30]_0 ;
  input \cbus[31] ;
  input \cbus[31]_0 ;
  input \cbus[31]_1 ;
  input \cbus[27] ;
  input \cbus[27]_0 ;
  input fctl_ccmd_hlf;
  input \sglc_i_reg[44] ;
  input \sglc_i_reg[44]_0 ;
  input \sglc_i_reg[44]_1 ;
  input fctl_ccmd_mul;
  input [9:0]sgla_r_0;
  input fctl_ccmd_add;
  input \cbus[31]_2 ;
  input [0:0]\cbus[6] ;
  input \cbus[31]_3 ;
  input \sglc_i_reg[44]_2 ;
  input \sglc_i_reg[44]_3 ;
  input fctl_ccmd_sub;
  input sglc_zer0;
  input \sglc_i_reg[44]_4 ;
  input \cbus[7] ;
  input sglc_s2__0;
  input [0:0]sglc_e_carry__1;
  input [0:0]SR;
  input [1:0]E;
  input clk;
  input [3:0]D;
  input [1:0]\sglb_f_reg[31]_0 ;
  input [29:0]\sglb_f_reg[29]_0 ;
  input [3:0]\sglb_e_reg[7]_i_5_0 ;

  wire \<const0> ;
  wire [3:0]D;
  wire [1:0]E;
  wire [0:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire [31:0]bbus;
  wire [0:0]cbus;
  wire \cbus[27] ;
  wire \cbus[27]_0 ;
  wire \cbus[31] ;
  wire \cbus[31]_0 ;
  wire \cbus[31]_1 ;
  wire \cbus[31]_2 ;
  wire \cbus[31]_3 ;
  wire \cbus[31]_INST_0_i_11_n_0 ;
  wire \cbus[31]_INST_0_i_16_n_0 ;
  wire \cbus[31]_INST_0_i_41_n_0 ;
  wire \cbus[31]_INST_0_i_42_n_0 ;
  wire \cbus[31]_INST_0_i_43_n_0 ;
  wire \cbus[31]_INST_0_i_44_n_0 ;
  wire \cbus[31]_INST_0_i_48_n_0 ;
  wire \cbus[31]_INST_0_i_4_n_0 ;
  wire \cbus[31]_INST_0_i_57_n_0 ;
  wire \cbus[31]_INST_0_i_58_n_0 ;
  wire \cbus[31]_INST_0_i_8_n_0 ;
  wire [0:0]\cbus[6] ;
  wire \cbus[6]_INST_0_i_7_n_0 ;
  wire \cbus[7] ;
  wire clk;
  wire [8:5]data1;
  wire [0:0]data6;
  wire fctl_ccmd_add;
  wire fctl_ccmd_add_reg;
  wire fctl_ccmd_hlf;
  wire fctl_ccmd_hlf_reg;
  wire fctl_ccmd_hlf_reg_0;
  wire fctl_ccmd_mul;
  wire fctl_ccmd_mul_reg;
  wire fctl_ccmd_sub;
  wire fctl_load_b;
  wire [7:0]p_0_in;
  wire \sgla_i_reg[24] ;
  wire [9:0]sgla_r_0;
  wire \sglb_e[2]_i_4 ;
  wire \sglb_e[3]_i_10_n_0 ;
  wire \sglb_e[3]_i_11_n_0 ;
  wire \sglb_e[3]_i_12_n_0 ;
  wire \sglb_e[3]_i_3 ;
  wire \sglb_e[3]_i_3_0 ;
  wire \sglb_e[3]_i_9_n_0 ;
  wire \sglb_e[4]_i_1_n_0 ;
  wire \sglb_e[4]_i_2_n_0 ;
  wire \sglb_e[5]_i_1_n_0 ;
  wire \sglb_e[5]_i_2_n_0 ;
  wire \sglb_e[5]_i_3_n_0 ;
  wire \sglb_e[5]_i_4_n_0 ;
  wire \sglb_e[5]_i_5_n_0 ;
  wire \sglb_e[5]_i_6_n_0 ;
  wire \sglb_e[5]_i_7_n_0 ;
  wire \sglb_e[5]_i_8_n_0 ;
  wire \sglb_e[6]_i_1_n_0 ;
  wire \sglb_e[6]_i_2_n_0 ;
  wire \sglb_e[6]_i_3_n_0 ;
  wire \sglb_e[6]_i_4_n_0 ;
  wire \sglb_e[6]_i_5_n_0 ;
  wire \sglb_e[6]_i_6_n_0 ;
  wire \sglb_e[7]_i_10_n_0 ;
  wire \sglb_e[7]_i_11_n_0 ;
  wire \sglb_e[7]_i_12_n_0 ;
  wire \sglb_e[7]_i_1_n_0 ;
  wire \sglb_e[7]_i_2_n_0 ;
  wire \sglb_e[7]_i_3_n_0 ;
  wire \sglb_e[7]_i_4_n_0 ;
  wire \sglb_e[7]_i_6_n_0 ;
  wire \sglb_e[7]_i_7_n_0 ;
  wire \sglb_e[7]_i_8_n_0 ;
  wire \sglb_e[7]_i_9_n_0 ;
  wire \sglb_e[8]_i_10_n_0 ;
  wire \sglb_e[8]_i_16_n_0 ;
  wire \sglb_e[8]_i_18_n_0 ;
  wire \sglb_e[8]_i_19_n_0 ;
  wire \sglb_e[8]_i_21_n_0 ;
  wire \sglb_e[8]_i_2_n_0 ;
  wire \sglb_e[8]_i_6_n_0 ;
  wire \sglb_e[8]_i_8_n_0 ;
  wire \sglb_e[8]_i_9_n_0 ;
  wire \sglb_e_reg[0]_0 ;
  wire \sglb_e_reg[0]_1 ;
  wire \sglb_e_reg[0]_2 ;
  wire \sglb_e_reg[1]_0 ;
  wire [2:0]\sglb_e_reg[3]_0 ;
  wire [3:0]\sglb_e_reg[3]_i_4_0 ;
  wire \sglb_e_reg[3]_i_4_n_0 ;
  wire \sglb_e_reg[3]_i_4_n_1 ;
  wire \sglb_e_reg[3]_i_4_n_2 ;
  wire \sglb_e_reg[3]_i_4_n_3 ;
  wire \sglb_e_reg[4]_0 ;
  wire \sglb_e_reg[4]_1 ;
  wire \sglb_e_reg[4]_2 ;
  wire \sglb_e_reg[4]_3 ;
  wire \sglb_e_reg[5]_0 ;
  wire \sglb_e_reg[5]_1 ;
  wire [4:0]\sglb_e_reg[7]_0 ;
  wire [3:0]\sglb_e_reg[7]_1 ;
  wire [3:0]\sglb_e_reg[7]_2 ;
  wire [3:0]\sglb_e_reg[7]_i_5_0 ;
  wire \sglb_e_reg[7]_i_5_n_0 ;
  wire \sglb_e_reg[7]_i_5_n_1 ;
  wire \sglb_e_reg[7]_i_5_n_2 ;
  wire \sglb_e_reg[7]_i_5_n_3 ;
  wire [0:0]\sglb_e_reg[8]_0 ;
  wire \sglb_e_reg[8]_1 ;
  wire \sglb_e_reg[8]_2 ;
  wire \sglb_f[30]_i_1_n_0 ;
  wire [29:0]\sglb_f_reg[29]_0 ;
  wire \sglb_f_reg[30]_0 ;
  wire [1:0]\sglb_f_reg[31]_0 ;
  wire [40:0]\sglb_i_reg[28]_0 ;
  wire \sglb_i_reg[28]_1 ;
  wire [1:0]\sglb_i_reg[30]_0 ;
  wire \sglb_i_reg[31]_0 ;
  wire \sglb_i_reg[31]_1 ;
  wire [0:0]\sglb_i_reg[31]_2 ;
  wire \sglb_i_reg_n_0_[0] ;
  wire \sglb_i_reg_n_0_[10] ;
  wire \sglb_i_reg_n_0_[11] ;
  wire \sglb_i_reg_n_0_[12] ;
  wire \sglb_i_reg_n_0_[13] ;
  wire \sglb_i_reg_n_0_[14] ;
  wire \sglb_i_reg_n_0_[15] ;
  wire \sglb_i_reg_n_0_[16] ;
  wire \sglb_i_reg_n_0_[17] ;
  wire \sglb_i_reg_n_0_[18] ;
  wire \sglb_i_reg_n_0_[19] ;
  wire \sglb_i_reg_n_0_[1] ;
  wire \sglb_i_reg_n_0_[20] ;
  wire \sglb_i_reg_n_0_[21] ;
  wire \sglb_i_reg_n_0_[22] ;
  wire \sglb_i_reg_n_0_[2] ;
  wire \sglb_i_reg_n_0_[3] ;
  wire \sglb_i_reg_n_0_[4] ;
  wire \sglb_i_reg_n_0_[5] ;
  wire \sglb_i_reg_n_0_[6] ;
  wire \sglb_i_reg_n_0_[7] ;
  wire \sglb_i_reg_n_0_[8] ;
  wire \sglb_i_reg_n_0_[9] ;
  wire sglb_nan0;
  wire sglb_nan012_in;
  wire [44:44]sglb_r;
  wire [0:0]sglc_e_carry__1;
  wire \sglc_i[43]_i_5_n_0 ;
  wire \sglc_i_reg[44] ;
  wire \sglc_i_reg[44]_0 ;
  wire \sglc_i_reg[44]_1 ;
  wire \sglc_i_reg[44]_2 ;
  wire \sglc_i_reg[44]_3 ;
  wire \sglc_i_reg[44]_4 ;
  wire sglc_nan;
  wire [43:43]sglc_r_fadd;
  wire sglc_s2__0;
  wire [0:0]sglc_sr_flag;
  wire sglc_zer0;

  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cbus[29]_INST_0_i_3 
       (.I0(\cbus[31] ),
        .I1(\cbus[27] ),
        .I2(\cbus[27]_0 ),
        .I3(\sglb_i_reg[28]_1 ),
        .I4(fctl_ccmd_add_reg),
        .O(fctl_ccmd_hlf_reg));
  LUT5 #(
    .INIT(32'h0000FF02)) 
    \cbus[30]_INST_0_i_10 
       (.I0(\cbus[6]_INST_0_i_7_n_0 ),
        .I1(sgla_r_0[8]),
        .I2(\sglb_i_reg[28]_0 [40]),
        .I3(sglc_zer0),
        .I4(\sglc_i_reg[44] ),
        .O(\sglb_i_reg[28]_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cbus[30]_INST_0_i_2 
       (.I0(fctl_ccmd_hlf),
        .I1(\cbus[27] ),
        .I2(\cbus[27]_0 ),
        .I3(\sglb_i_reg[28]_1 ),
        .I4(fctl_ccmd_add_reg),
        .O(fctl_ccmd_hlf_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF11111110)) 
    \cbus[31]_INST_0 
       (.I0(fctl_ccmd_add_reg),
        .I1(\cbus[31] ),
        .I2(\sglb_i_reg[31]_0 ),
        .I3(\cbus[31]_INST_0_i_4_n_0 ),
        .I4(\cbus[31]_0 ),
        .I5(\cbus[31]_1 ),
        .O(cbus));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \cbus[31]_INST_0_i_1 
       (.I0(\sglc_i_reg[44] ),
        .I1(\cbus[31]_INST_0_i_8_n_0 ),
        .I2(\sglc_i_reg[44]_0 ),
        .I3(sglc_nan),
        .I4(\cbus[31]_INST_0_i_11_n_0 ),
        .I5(\sglc_i_reg[44]_1 ),
        .O(fctl_ccmd_add_reg));
  LUT6 #(
    .INIT(64'h88F8D8F88AFA88F8)) 
    \cbus[31]_INST_0_i_10 
       (.I0(sglb_nan0),
        .I1(sglb_nan012_in),
        .I2(\sglc_i_reg[44]_3 ),
        .I3(\sglc_i_reg[44]_2 ),
        .I4(\sglc_i_reg[44]_4 ),
        .I5(\sglb_i_reg[28]_0 [40]),
        .O(sglc_nan));
  LUT6 #(
    .INIT(64'hAAAAA02020202020)) 
    \cbus[31]_INST_0_i_11 
       (.I0(fctl_ccmd_add),
        .I1(\sglc_i_reg[44]_2 ),
        .I2(\sglc_i_reg[44]_3 ),
        .I3(\sglb_i_reg[31]_1 ),
        .I4(sglb_nan012_in),
        .I5(sglb_nan0),
        .O(\cbus[31]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hA888FF88)) 
    \cbus[31]_INST_0_i_13 
       (.I0(sglb_nan0),
        .I1(sglb_nan012_in),
        .I2(\sglb_i_reg[31]_1 ),
        .I3(\sglc_i_reg[44]_3 ),
        .I4(\sglc_i_reg[44]_2 ),
        .O(\sglb_i_reg[30]_0 [1]));
  LUT5 #(
    .INIT(32'h69FFFF00)) 
    \cbus[31]_INST_0_i_15 
       (.I0(\sglb_i_reg[31]_2 ),
        .I1(fctl_ccmd_sub),
        .I2(sgla_r_0[7]),
        .I3(\cbus[6]_INST_0_i_7_n_0 ),
        .I4(sgla_r_0[8]),
        .O(sglc_r_fadd));
  LUT5 #(
    .INIT(32'h6F006060)) 
    \cbus[31]_INST_0_i_16 
       (.I0(\sglb_i_reg[31]_2 ),
        .I1(fctl_ccmd_sub),
        .I2(\cbus[6]_INST_0_i_7_n_0 ),
        .I3(sgla_r_0[7]),
        .I4(sgla_r_0[8]),
        .O(\cbus[31]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \cbus[31]_INST_0_i_24 
       (.I0(p_0_in[7]),
        .I1(p_0_in[6]),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(\cbus[31]_INST_0_i_41_n_0 ),
        .O(sglb_nan0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cbus[31]_INST_0_i_25 
       (.I0(\cbus[31]_INST_0_i_42_n_0 ),
        .I1(\sglb_i_reg_n_0_[21] ),
        .I2(\sglb_i_reg_n_0_[20] ),
        .I3(\sglb_i_reg_n_0_[22] ),
        .I4(\cbus[31]_INST_0_i_43_n_0 ),
        .I5(\cbus[31]_INST_0_i_44_n_0 ),
        .O(sglb_nan012_in));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cbus[31]_INST_0_i_29 
       (.I0(p_0_in[5]),
        .I1(p_0_in[4]),
        .I2(p_0_in[6]),
        .I3(p_0_in[7]),
        .I4(\cbus[31]_INST_0_i_48_n_0 ),
        .O(\sglb_i_reg[28]_0 [40]));
  LUT5 #(
    .INIT(32'h0000FF96)) 
    \cbus[31]_INST_0_i_3 
       (.I0(\sglb_i_reg[31]_2 ),
        .I1(fctl_ccmd_sub),
        .I2(sgla_r_0[7]),
        .I3(\cbus[31]_INST_0_i_8_n_0 ),
        .I4(\sglc_i_reg[44] ),
        .O(\sglb_i_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEAE0000)) 
    \cbus[31]_INST_0_i_4 
       (.I0(\sglb_i_reg[30]_0 [1]),
        .I1(\cbus[31]_2 ),
        .I2(sglc_r_fadd),
        .I3(\cbus[31]_INST_0_i_16_n_0 ),
        .I4(fctl_ccmd_add),
        .I5(\cbus[31]_3 ),
        .O(\cbus[31]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cbus[31]_INST_0_i_41 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .O(\cbus[31]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[31]_INST_0_i_42 
       (.I0(\sglb_i_reg_n_0_[18] ),
        .I1(\sglb_i_reg_n_0_[19] ),
        .I2(\sglb_i_reg_n_0_[16] ),
        .I3(\sglb_i_reg_n_0_[17] ),
        .O(\cbus[31]_INST_0_i_42_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cbus[31]_INST_0_i_43 
       (.I0(\sglb_i_reg_n_0_[5] ),
        .I1(\sglb_i_reg_n_0_[4] ),
        .I2(\sglb_i_reg_n_0_[7] ),
        .I3(\sglb_i_reg_n_0_[6] ),
        .I4(\cbus[31]_INST_0_i_57_n_0 ),
        .O(\cbus[31]_INST_0_i_43_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cbus[31]_INST_0_i_44 
       (.I0(\sglb_i_reg_n_0_[13] ),
        .I1(\sglb_i_reg_n_0_[12] ),
        .I2(\sglb_i_reg_n_0_[15] ),
        .I3(\sglb_i_reg_n_0_[14] ),
        .I4(\cbus[31]_INST_0_i_58_n_0 ),
        .O(\cbus[31]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[31]_INST_0_i_48 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\cbus[31]_INST_0_i_48_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[31]_INST_0_i_57 
       (.I0(\sglb_i_reg_n_0_[2] ),
        .I1(\sglb_i_reg_n_0_[3] ),
        .I2(\sglb_i_reg_n_0_[0] ),
        .I3(\sglb_i_reg_n_0_[1] ),
        .O(\cbus[31]_INST_0_i_57_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cbus[31]_INST_0_i_58 
       (.I0(\sglb_i_reg_n_0_[10] ),
        .I1(\sglb_i_reg_n_0_[11] ),
        .I2(\sglb_i_reg_n_0_[8] ),
        .I3(\sglb_i_reg_n_0_[9] ),
        .O(\cbus[31]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h8DFD88F888F8A8F8)) 
    \cbus[31]_INST_0_i_8 
       (.I0(sglb_nan0),
        .I1(sglb_nan012_in),
        .I2(\sglc_i_reg[44]_3 ),
        .I3(\sglc_i_reg[44]_2 ),
        .I4(\sglc_i_reg[44]_4 ),
        .I5(\sglb_i_reg[28]_0 [40]),
        .O(\cbus[31]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFC2C2C2C2C2C2C2)) 
    \cbus[6]_INST_0_i_1 
       (.I0(\cbus[6] ),
        .I1(sgla_r_0[9]),
        .I2(sglb_r),
        .I3(sgla_r_0[8]),
        .I4(\cbus[6]_INST_0_i_7_n_0 ),
        .I5(\sglb_i_reg[31]_1 ),
        .O(sglc_sr_flag));
  LUT2 #(
    .INIT(4'h8)) 
    \cbus[6]_INST_0_i_5 
       (.I0(sglb_nan0),
        .I1(sglb_nan012_in),
        .O(sglb_r));
  LUT2 #(
    .INIT(4'h2)) 
    \cbus[6]_INST_0_i_7 
       (.I0(sglb_nan0),
        .I1(sglb_nan012_in),
        .O(\cbus[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    \cbus[7]_INST_0_i_2 
       (.I0(\sglb_i_reg[30]_0 [1]),
        .I1(\cbus[7] ),
        .I2(\cbus[6] ),
        .I3(sglc_s2__0),
        .I4(sglc_r_fadd),
        .I5(\cbus[31]_INST_0_i_16_n_0 ),
        .O(\sglb_i_reg[30]_0 [0]));
  LUT6 #(
    .INIT(64'h1540154015400000)) 
    \sglb_e[2]_i_5 
       (.I0(fctl_load_b),
        .I1(\sglb_i_reg[28]_0 [32]),
        .I2(\sglb_i_reg[28]_0 [33]),
        .I3(\sglb_i_reg[28]_0 [34]),
        .I4(\sglb_e[3]_i_3 ),
        .I5(\sglb_e[2]_i_4 ),
        .O(\sglb_e_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sglb_e[3]_i_10 
       (.I0(\sglb_i_reg[28]_0 [34]),
        .I1(\sglb_e_reg[3]_i_4_0 [2]),
        .O(\sglb_e[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sglb_e[3]_i_11 
       (.I0(\sglb_i_reg[28]_0 [33]),
        .I1(\sglb_e_reg[3]_i_4_0 [1]),
        .O(\sglb_e[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sglb_e[3]_i_12 
       (.I0(\sglb_i_reg[28]_0 [32]),
        .I1(\sglb_e_reg[3]_i_4_0 [0]),
        .O(\sglb_e[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h04FCF800)) 
    \sglb_e[3]_i_7 
       (.I0(\sglb_i_reg[28]_0 [33]),
        .I1(\sglb_e_reg[3]_i_4_0 [1]),
        .I2(\sglb_e_reg[3]_i_4_0 [2]),
        .I3(\sglb_i_reg[28]_0 [34]),
        .I4(\sglb_i_reg[28]_0 [35]),
        .O(\sglb_e_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h1540154015400000)) 
    \sglb_e[3]_i_8 
       (.I0(fctl_load_b),
        .I1(\sglb_i_reg[28]_0 [32]),
        .I2(\sglb_e[5]_i_8_n_0 ),
        .I3(\sglb_i_reg[28]_0 [35]),
        .I4(\sglb_e[3]_i_3 ),
        .I5(\sglb_e[3]_i_3_0 ),
        .O(\sglb_e_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sglb_e[3]_i_9 
       (.I0(\sglb_i_reg[28]_0 [35]),
        .I1(\sglb_e_reg[3]_i_4_0 [3]),
        .O(\sglb_e[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBEAA)) 
    \sglb_e[4]_i_1 
       (.I0(\sglb_e[4]_i_2_n_0 ),
        .I1(\sglb_i_reg[28]_0 [35]),
        .I2(\sglb_i_reg[28]_0 [36]),
        .I3(\sglb_e_reg[4]_0 ),
        .I4(\sglb_e_reg[4]_1 ),
        .I5(\sglb_e_reg[4]_2 ),
        .O(\sglb_e[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3FFFC80022AA8800)) 
    \sglb_e[4]_i_2 
       (.I0(\sglb_e_reg[8]_2 ),
        .I1(\sglb_i_reg[28]_0 [35]),
        .I2(\sglb_i_reg[28]_0 [33]),
        .I3(\sglb_i_reg[28]_0 [34]),
        .I4(\sglb_i_reg[28]_0 [36]),
        .I5(\sglb_e_reg[4]_3 ),
        .O(\sglb_e[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sglb_e[4]_i_7 
       (.I0(\sglb_i_reg[28]_0 [35]),
        .I1(\sglb_i_reg[28]_0 [34]),
        .I2(\sglb_i_reg[28]_0 [33]),
        .I3(\sglb_i_reg[28]_0 [32]),
        .I4(\sglb_i_reg[28]_0 [36]),
        .O(data6));
  LUT5 #(
    .INIT(32'hFEEEEEFE)) 
    \sglb_e[5]_i_1 
       (.I0(\sglb_e[5]_i_2_n_0 ),
        .I1(\sglb_e[5]_i_3_n_0 ),
        .I2(fctl_load_b),
        .I3(\sglb_e[5]_i_4_n_0 ),
        .I4(bbus[28]),
        .O(\sglb_e[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFEAAAAA)) 
    \sglb_e[5]_i_2 
       (.I0(\sglb_e[5]_i_5_n_0 ),
        .I1(\sglb_i_reg[28]_0 [36]),
        .I2(\sglb_i_reg[28]_0 [35]),
        .I3(\sglb_i_reg[28]_0 [37]),
        .I4(\sglb_e_reg[4]_0 ),
        .O(\sglb_e[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF282828)) 
    \sglb_e[5]_i_3 
       (.I0(\sglb_e_reg[5]_0 ),
        .I1(\sglb_i_reg[28]_0 [37]),
        .I2(\sglb_i_reg[28]_0 [36]),
        .I3(\sglb_e_reg[5]_1 ),
        .I4(data1[5]),
        .I5(\sglb_e[5]_i_6_n_0 ),
        .O(\sglb_e[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sglb_e[5]_i_4 
       (.I0(bbus[26]),
        .I1(bbus[24]),
        .I2(bbus[23]),
        .I3(bbus[25]),
        .I4(bbus[27]),
        .O(\sglb_e[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3FFFC80022AA8800)) 
    \sglb_e[5]_i_5 
       (.I0(\sglb_e_reg[8]_2 ),
        .I1(\sglb_e[5]_i_7_n_0 ),
        .I2(\sglb_i_reg[28]_0 [33]),
        .I3(\sglb_i_reg[28]_0 [34]),
        .I4(\sglb_i_reg[28]_0 [37]),
        .I5(\sglb_e_reg[4]_3 ),
        .O(\sglb_e[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \sglb_e[5]_i_6 
       (.I0(\sglb_e_reg[8]_1 ),
        .I1(\sglb_i_reg[28]_0 [37]),
        .I2(\sglb_i_reg[28]_0 [32]),
        .I3(\sglb_e[5]_i_8_n_0 ),
        .I4(\sglb_i_reg[28]_0 [36]),
        .I5(\sglb_i_reg[28]_0 [35]),
        .O(\sglb_e[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sglb_e[5]_i_7 
       (.I0(\sglb_i_reg[28]_0 [35]),
        .I1(\sglb_i_reg[28]_0 [36]),
        .O(\sglb_e[5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sglb_e[5]_i_8 
       (.I0(\sglb_i_reg[28]_0 [33]),
        .I1(\sglb_i_reg[28]_0 [34]),
        .O(\sglb_e[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFFFE)) 
    \sglb_e[6]_i_1 
       (.I0(\sglb_e[6]_i_2_n_0 ),
        .I1(\sglb_e[6]_i_3_n_0 ),
        .I2(\sglb_e[6]_i_4_n_0 ),
        .I3(fctl_load_b),
        .I4(\sglb_e[7]_i_3_n_0 ),
        .I5(bbus[29]),
        .O(\sglb_e[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFEAAAAAAAAAAA)) 
    \sglb_e[6]_i_2 
       (.I0(\sglb_e[6]_i_5_n_0 ),
        .I1(\sglb_i_reg[28]_0 [37]),
        .I2(\sglb_i_reg[28]_0 [35]),
        .I3(\sglb_i_reg[28]_0 [36]),
        .I4(\sglb_i_reg[28]_0 [38]),
        .I5(\sglb_e_reg[4]_0 ),
        .O(\sglb_e[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFF88888888888)) 
    \sglb_e[6]_i_3 
       (.I0(data1[6]),
        .I1(\sglb_e_reg[5]_1 ),
        .I2(\sglb_i_reg[28]_0 [37]),
        .I3(\sglb_i_reg[28]_0 [36]),
        .I4(\sglb_i_reg[28]_0 [38]),
        .I5(\sglb_e_reg[5]_0 ),
        .O(\sglb_e[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \sglb_e[6]_i_4 
       (.I0(\sglb_e_reg[8]_1 ),
        .I1(\sglb_i_reg[28]_0 [38]),
        .I2(\sglb_e[8]_i_9_n_0 ),
        .I3(\sglb_i_reg[28]_0 [37]),
        .I4(\sglb_i_reg[28]_0 [35]),
        .I5(\sglb_i_reg[28]_0 [36]),
        .O(\sglb_e[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3FFFE0000AAAA000)) 
    \sglb_e[6]_i_5 
       (.I0(\sglb_e_reg[8]_2 ),
        .I1(\sglb_i_reg[28]_0 [33]),
        .I2(\sglb_i_reg[28]_0 [34]),
        .I3(\sglb_e[6]_i_6_n_0 ),
        .I4(\sglb_i_reg[28]_0 [38]),
        .I5(\sglb_e_reg[4]_3 ),
        .O(\sglb_e[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sglb_e[6]_i_6 
       (.I0(\sglb_i_reg[28]_0 [36]),
        .I1(\sglb_i_reg[28]_0 [35]),
        .I2(\sglb_i_reg[28]_0 [37]),
        .O(\sglb_e[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAEFBAAAA)) 
    \sglb_e[7]_i_1 
       (.I0(\sglb_e[7]_i_2_n_0 ),
        .I1(bbus[29]),
        .I2(\sglb_e[7]_i_3_n_0 ),
        .I3(bbus[30]),
        .I4(fctl_load_b),
        .O(\sglb_e[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sglb_e[7]_i_10 
       (.I0(\sglb_i_reg[28]_0 [38]),
        .I1(\sglb_e_reg[7]_i_5_0 [2]),
        .O(\sglb_e[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sglb_e[7]_i_11 
       (.I0(\sglb_i_reg[28]_0 [37]),
        .I1(\sglb_e_reg[7]_i_5_0 [1]),
        .O(\sglb_e[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sglb_e[7]_i_12 
       (.I0(\sglb_i_reg[28]_0 [36]),
        .I1(\sglb_e_reg[7]_i_5_0 [0]),
        .O(\sglb_e[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \sglb_e[7]_i_2 
       (.I0(\sglb_e[7]_i_4_n_0 ),
        .I1(data1[7]),
        .I2(\sglb_e_reg[5]_1 ),
        .I3(\sglb_e[7]_i_6_n_0 ),
        .I4(\sglb_e[7]_i_7_n_0 ),
        .I5(\sglb_e[7]_i_8_n_0 ),
        .O(\sglb_e[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sglb_e[7]_i_3 
       (.I0(bbus[27]),
        .I1(bbus[25]),
        .I2(bbus[23]),
        .I3(bbus[24]),
        .I4(bbus[26]),
        .I5(bbus[28]),
        .O(\sglb_e[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \sglb_e[7]_i_4 
       (.I0(\sglb_e_reg[8]_1 ),
        .I1(\sglb_i_reg[28]_0 [39]),
        .I2(\sglb_i_reg[28]_0 [32]),
        .I3(\sglb_i_reg[28]_0 [33]),
        .I4(\sglb_i_reg[28]_0 [34]),
        .I5(\sglb_e[8]_i_21_n_0 ),
        .O(\sglb_e[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h28888888)) 
    \sglb_e[7]_i_6 
       (.I0(\sglb_e_reg[5]_0 ),
        .I1(\sglb_i_reg[28]_0 [39]),
        .I2(\sglb_i_reg[28]_0 [38]),
        .I3(\sglb_i_reg[28]_0 [37]),
        .I4(\sglb_i_reg[28]_0 [36]),
        .O(\sglb_e[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \sglb_e[7]_i_7 
       (.I0(\sglb_e_reg[4]_0 ),
        .I1(\sglb_i_reg[28]_0 [39]),
        .I2(\sglb_i_reg[28]_0 [37]),
        .I3(\sglb_i_reg[28]_0 [35]),
        .I4(\sglb_i_reg[28]_0 [36]),
        .I5(\sglb_i_reg[28]_0 [38]),
        .O(\sglb_e[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h3FFFE0000AAAA000)) 
    \sglb_e[7]_i_8 
       (.I0(\sglb_e_reg[8]_2 ),
        .I1(\sglb_i_reg[28]_0 [33]),
        .I2(\sglb_i_reg[28]_0 [34]),
        .I3(\sglb_e[8]_i_21_n_0 ),
        .I4(\sglb_i_reg[28]_0 [39]),
        .I5(\sglb_e_reg[4]_3 ),
        .O(\sglb_e[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sglb_e[7]_i_9 
       (.I0(\sglb_i_reg[28]_0 [39]),
        .I1(\sglb_e_reg[7]_i_5_0 [3]),
        .O(\sglb_e[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8F888888)) 
    \sglb_e[8]_i_10 
       (.I0(data1[8]),
        .I1(\sglb_e_reg[5]_1 ),
        .I2(bbus[30]),
        .I3(fctl_load_b),
        .I4(\sglb_e[8]_i_18_n_0 ),
        .I5(\sglb_e[8]_i_19_n_0 ),
        .O(\sglb_e[8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sglb_e[8]_i_11 
       (.I0(\sglb_i_reg[28]_0 [39]),
        .I1(sgla_r_0[6]),
        .O(\sglb_e_reg[7]_2 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    \sglb_e[8]_i_12 
       (.I0(\sglb_i_reg[28]_0 [38]),
        .I1(sgla_r_0[5]),
        .O(\sglb_e_reg[7]_2 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \sglb_e[8]_i_13 
       (.I0(\sglb_i_reg[28]_0 [37]),
        .I1(sgla_r_0[4]),
        .O(\sglb_e_reg[7]_2 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \sglb_e[8]_i_14 
       (.I0(\sglb_i_reg[28]_0 [36]),
        .I1(sgla_r_0[3]),
        .O(\sglb_e_reg[7]_2 [0]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \sglb_e[8]_i_16 
       (.I0(\sglb_e_reg[5]_0 ),
        .I1(Q),
        .I2(\sglb_i_reg[28]_0 [37]),
        .I3(\sglb_i_reg[28]_0 [36]),
        .I4(\sglb_i_reg[28]_0 [39]),
        .I5(\sglb_i_reg[28]_0 [38]),
        .O(\sglb_e[8]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sglb_e[8]_i_18 
       (.I0(\sglb_e[7]_i_3_n_0 ),
        .I1(bbus[29]),
        .O(\sglb_e[8]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \sglb_e[8]_i_19 
       (.I0(\sglb_e_reg[4]_3 ),
        .I1(Q),
        .I2(\sglb_i_reg[28]_0 [39]),
        .I3(\sglb_e[8]_i_21_n_0 ),
        .I4(\sglb_i_reg[28]_0 [34]),
        .I5(\sglb_i_reg[28]_0 [33]),
        .O(\sglb_e[8]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEEAEAEA)) 
    \sglb_e[8]_i_2 
       (.I0(\sglb_e[8]_i_6_n_0 ),
        .I1(\sglb_e_reg[8]_1 ),
        .I2(Q),
        .I3(\sglb_e[8]_i_8_n_0 ),
        .I4(\sglb_e[8]_i_9_n_0 ),
        .I5(\sglb_e[8]_i_10_n_0 ),
        .O(\sglb_e[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \sglb_e[8]_i_21 
       (.I0(\sglb_i_reg[28]_0 [37]),
        .I1(\sglb_i_reg[28]_0 [35]),
        .I2(\sglb_i_reg[28]_0 [36]),
        .I3(\sglb_i_reg[28]_0 [38]),
        .O(\sglb_e[8]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF3CBC2888)) 
    \sglb_e[8]_i_6 
       (.I0(\sglb_e_reg[8]_2 ),
        .I1(Q),
        .I2(\sglb_e[8]_i_8_n_0 ),
        .I3(\sglb_i_reg[28]_0 [34]),
        .I4(\sglb_e_reg[4]_0 ),
        .I5(\sglb_e[8]_i_16_n_0 ),
        .O(\sglb_e[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \sglb_e[8]_i_8 
       (.I0(\sglb_i_reg[28]_0 [38]),
        .I1(\sglb_i_reg[28]_0 [36]),
        .I2(\sglb_i_reg[28]_0 [35]),
        .I3(\sglb_i_reg[28]_0 [37]),
        .I4(\sglb_i_reg[28]_0 [39]),
        .O(\sglb_e[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sglb_e[8]_i_9 
       (.I0(\sglb_i_reg[28]_0 [34]),
        .I1(\sglb_i_reg[28]_0 [33]),
        .I2(\sglb_i_reg[28]_0 [32]),
        .O(\sglb_e[8]_i_9_n_0 ));
  FDRE \sglb_e_reg[0] 
       (.C(clk),
        .CE(E[0]),
        .D(D[0]),
        .Q(\sglb_i_reg[28]_0 [32]),
        .R(SR));
  FDRE \sglb_e_reg[1] 
       (.C(clk),
        .CE(E[0]),
        .D(D[1]),
        .Q(\sglb_i_reg[28]_0 [33]),
        .R(SR));
  FDRE \sglb_e_reg[2] 
       (.C(clk),
        .CE(E[0]),
        .D(D[2]),
        .Q(\sglb_i_reg[28]_0 [34]),
        .R(SR));
  FDRE \sglb_e_reg[3] 
       (.C(clk),
        .CE(E[0]),
        .D(D[3]),
        .Q(\sglb_i_reg[28]_0 [35]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sglb_e_reg[3]_i_4 
       (.CI(\<const0> ),
        .CO({\sglb_e_reg[3]_i_4_n_0 ,\sglb_e_reg[3]_i_4_n_1 ,\sglb_e_reg[3]_i_4_n_2 ,\sglb_e_reg[3]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI(\sglb_i_reg[28]_0 [35:32]),
        .O(\sglb_e_reg[7]_0 [3:0]),
        .S({\sglb_e[3]_i_9_n_0 ,\sglb_e[3]_i_10_n_0 ,\sglb_e[3]_i_11_n_0 ,\sglb_e[3]_i_12_n_0 }));
  FDRE \sglb_e_reg[4] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_e[4]_i_1_n_0 ),
        .Q(\sglb_i_reg[28]_0 [36]),
        .R(SR));
  FDRE \sglb_e_reg[5] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_e[5]_i_1_n_0 ),
        .Q(\sglb_i_reg[28]_0 [37]),
        .R(SR));
  FDRE \sglb_e_reg[6] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_e[6]_i_1_n_0 ),
        .Q(\sglb_i_reg[28]_0 [38]),
        .R(SR));
  FDRE \sglb_e_reg[7] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_e[7]_i_1_n_0 ),
        .Q(\sglb_i_reg[28]_0 [39]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sglb_e_reg[7]_i_5 
       (.CI(\sglb_e_reg[3]_i_4_n_0 ),
        .CO({\sglb_e_reg[7]_i_5_n_0 ,\sglb_e_reg[7]_i_5_n_1 ,\sglb_e_reg[7]_i_5_n_2 ,\sglb_e_reg[7]_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI(\sglb_i_reg[28]_0 [39:36]),
        .O({data1[7:5],\sglb_e_reg[7]_0 [4]}),
        .S({\sglb_e[7]_i_9_n_0 ,\sglb_e[7]_i_10_n_0 ,\sglb_e[7]_i_11_n_0 ,\sglb_e[7]_i_12_n_0 }));
  FDRE \sglb_e_reg[8] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_e[8]_i_2_n_0 ),
        .Q(Q),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sglb_e_reg[8]_i_17 
       (.CI(\sglb_e_reg[7]_i_5_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data1[8]),
        .S({\<const0> ,\<const0> ,\<const0> ,Q}));
  LUT2 #(
    .INIT(4'h8)) 
    \sglb_f[30]_i_1 
       (.I0(\sglb_i_reg[28]_0 [31]),
        .I1(\sglb_f_reg[30]_0 ),
        .O(\sglb_f[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sglb_f[31]_i_6 
       (.I0(\sglb_i_reg[28]_0 [35]),
        .I1(sgla_r_0[2]),
        .O(\sglb_e_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \sglb_f[31]_i_7 
       (.I0(\sglb_i_reg[28]_0 [34]),
        .I1(sgla_r_0[1]),
        .O(\sglb_e_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \sglb_f[31]_i_8 
       (.I0(\sglb_i_reg[28]_0 [33]),
        .I1(sgla_r_0[0]),
        .O(\sglb_e_reg[3]_0 [0]));
  FDRE \sglb_f_reg[0] 
       (.C(clk),
        .CE(E[1]),
        .D(\sglb_f_reg[29]_0 [0]),
        .Q(\sglb_i_reg[28]_0 [0]),
        .R(\sglb_f_reg[31]_0 [1]));
  FDRE \sglb_f_reg[10] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [10]),
        .Q(\sglb_i_reg[28]_0 [10]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[11] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [11]),
        .Q(\sglb_i_reg[28]_0 [11]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[12] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [12]),
        .Q(\sglb_i_reg[28]_0 [12]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[13] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [13]),
        .Q(\sglb_i_reg[28]_0 [13]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[14] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [14]),
        .Q(\sglb_i_reg[28]_0 [14]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[15] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [15]),
        .Q(\sglb_i_reg[28]_0 [15]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[16] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [16]),
        .Q(\sglb_i_reg[28]_0 [16]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[17] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [17]),
        .Q(\sglb_i_reg[28]_0 [17]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[18] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [18]),
        .Q(\sglb_i_reg[28]_0 [18]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[19] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [19]),
        .Q(\sglb_i_reg[28]_0 [19]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[1] 
       (.C(clk),
        .CE(E[1]),
        .D(\sglb_f_reg[29]_0 [1]),
        .Q(\sglb_i_reg[28]_0 [1]),
        .R(\sglb_f_reg[31]_0 [1]));
  FDRE \sglb_f_reg[20] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [20]),
        .Q(\sglb_i_reg[28]_0 [20]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[21] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [21]),
        .Q(\sglb_i_reg[28]_0 [21]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[22] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [22]),
        .Q(\sglb_i_reg[28]_0 [22]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[23] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [23]),
        .Q(\sglb_i_reg[28]_0 [23]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[24] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [24]),
        .Q(\sglb_i_reg[28]_0 [24]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[25] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [25]),
        .Q(\sglb_i_reg[28]_0 [25]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[26] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [26]),
        .Q(\sglb_i_reg[28]_0 [26]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[27] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [27]),
        .Q(\sglb_i_reg[28]_0 [27]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[28] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [28]),
        .Q(\sglb_i_reg[28]_0 [28]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[29] 
       (.C(clk),
        .CE(E[1]),
        .D(\sglb_f_reg[29]_0 [29]),
        .Q(\sglb_i_reg[28]_0 [29]),
        .R(\sglb_f_reg[31]_0 [1]));
  FDRE \sglb_f_reg[2] 
       (.C(clk),
        .CE(E[1]),
        .D(\sglb_f_reg[29]_0 [2]),
        .Q(\sglb_i_reg[28]_0 [2]),
        .R(\sglb_f_reg[31]_0 [1]));
  FDRE \sglb_f_reg[30] 
       (.C(clk),
        .CE(E[1]),
        .D(\sglb_f[30]_i_1_n_0 ),
        .Q(\sglb_i_reg[28]_0 [30]),
        .R(\sglb_f_reg[31]_0 [1]));
  FDRE \sglb_f_reg[31] 
       (.C(clk),
        .CE(E[1]),
        .D(fctl_load_b),
        .Q(\sglb_i_reg[28]_0 [31]),
        .R(\sglb_f_reg[31]_0 [1]));
  FDRE \sglb_f_reg[3] 
       (.C(clk),
        .CE(E[1]),
        .D(\sglb_f_reg[29]_0 [3]),
        .Q(\sglb_i_reg[28]_0 [3]),
        .R(\sglb_f_reg[31]_0 [1]));
  FDRE \sglb_f_reg[4] 
       (.C(clk),
        .CE(E[1]),
        .D(\sglb_f_reg[29]_0 [4]),
        .Q(\sglb_i_reg[28]_0 [4]),
        .R(\sglb_f_reg[31]_0 [1]));
  FDRE \sglb_f_reg[5] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [5]),
        .Q(\sglb_i_reg[28]_0 [5]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[6] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [6]),
        .Q(\sglb_i_reg[28]_0 [6]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[7] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [7]),
        .Q(\sglb_i_reg[28]_0 [7]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[8] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [8]),
        .Q(\sglb_i_reg[28]_0 [8]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_f_reg[9] 
       (.C(clk),
        .CE(E[0]),
        .D(\sglb_f_reg[29]_0 [9]),
        .Q(\sglb_i_reg[28]_0 [9]),
        .R(\sglb_f_reg[31]_0 [0]));
  FDRE \sglb_i_reg[0] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[0]),
        .Q(\sglb_i_reg_n_0_[0] ),
        .R(SR));
  FDRE \sglb_i_reg[10] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[10]),
        .Q(\sglb_i_reg_n_0_[10] ),
        .R(SR));
  FDRE \sglb_i_reg[11] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[11]),
        .Q(\sglb_i_reg_n_0_[11] ),
        .R(SR));
  FDRE \sglb_i_reg[12] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[12]),
        .Q(\sglb_i_reg_n_0_[12] ),
        .R(SR));
  FDRE \sglb_i_reg[13] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[13]),
        .Q(\sglb_i_reg_n_0_[13] ),
        .R(SR));
  FDRE \sglb_i_reg[14] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[14]),
        .Q(\sglb_i_reg_n_0_[14] ),
        .R(SR));
  FDRE \sglb_i_reg[15] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[15]),
        .Q(\sglb_i_reg_n_0_[15] ),
        .R(SR));
  FDRE \sglb_i_reg[16] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[16]),
        .Q(\sglb_i_reg_n_0_[16] ),
        .R(SR));
  FDRE \sglb_i_reg[17] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[17]),
        .Q(\sglb_i_reg_n_0_[17] ),
        .R(SR));
  FDRE \sglb_i_reg[18] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[18]),
        .Q(\sglb_i_reg_n_0_[18] ),
        .R(SR));
  FDRE \sglb_i_reg[19] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[19]),
        .Q(\sglb_i_reg_n_0_[19] ),
        .R(SR));
  FDRE \sglb_i_reg[1] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[1]),
        .Q(\sglb_i_reg_n_0_[1] ),
        .R(SR));
  FDRE \sglb_i_reg[20] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[20]),
        .Q(\sglb_i_reg_n_0_[20] ),
        .R(SR));
  FDRE \sglb_i_reg[21] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[21]),
        .Q(\sglb_i_reg_n_0_[21] ),
        .R(SR));
  FDRE \sglb_i_reg[22] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[22]),
        .Q(\sglb_i_reg_n_0_[22] ),
        .R(SR));
  FDRE \sglb_i_reg[23] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[23]),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \sglb_i_reg[24] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[24]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \sglb_i_reg[25] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[25]),
        .Q(p_0_in[2]),
        .R(SR));
  FDRE \sglb_i_reg[26] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[26]),
        .Q(p_0_in[3]),
        .R(SR));
  FDRE \sglb_i_reg[27] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[27]),
        .Q(p_0_in[4]),
        .R(SR));
  FDRE \sglb_i_reg[28] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[28]),
        .Q(p_0_in[5]),
        .R(SR));
  FDRE \sglb_i_reg[29] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[29]),
        .Q(p_0_in[6]),
        .R(SR));
  FDRE \sglb_i_reg[2] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[2]),
        .Q(\sglb_i_reg_n_0_[2] ),
        .R(SR));
  FDRE \sglb_i_reg[30] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[30]),
        .Q(p_0_in[7]),
        .R(SR));
  FDRE \sglb_i_reg[31] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[31]),
        .Q(\sglb_i_reg[31]_2 ),
        .R(SR));
  FDRE \sglb_i_reg[3] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[3]),
        .Q(\sglb_i_reg_n_0_[3] ),
        .R(SR));
  FDRE \sglb_i_reg[4] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[4]),
        .Q(\sglb_i_reg_n_0_[4] ),
        .R(SR));
  FDRE \sglb_i_reg[5] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[5]),
        .Q(\sglb_i_reg_n_0_[5] ),
        .R(SR));
  FDRE \sglb_i_reg[6] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[6]),
        .Q(\sglb_i_reg_n_0_[6] ),
        .R(SR));
  FDRE \sglb_i_reg[7] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[7]),
        .Q(\sglb_i_reg_n_0_[7] ),
        .R(SR));
  FDRE \sglb_i_reg[8] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[8]),
        .Q(\sglb_i_reg_n_0_[8] ),
        .R(SR));
  FDRE \sglb_i_reg[9] 
       (.C(clk),
        .CE(fctl_load_b),
        .D(bbus[9]),
        .Q(\sglb_i_reg_n_0_[9] ),
        .R(SR));
  LUT2 #(
    .INIT(4'h9)) 
    sglc_e_carry__0_i_1__0
       (.I0(\sglb_i_reg[28]_0 [39]),
        .I1(sgla_r_0[6]),
        .O(\sglb_e_reg[7]_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sglc_e_carry__0_i_2__0
       (.I0(\sglb_i_reg[28]_0 [38]),
        .I1(sgla_r_0[5]),
        .O(\sglb_e_reg[7]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sglc_e_carry__0_i_3__0
       (.I0(\sglb_i_reg[28]_0 [37]),
        .I1(sgla_r_0[4]),
        .O(\sglb_e_reg[7]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sglc_e_carry__0_i_4__0
       (.I0(\sglb_i_reg[28]_0 [36]),
        .I1(sgla_r_0[3]),
        .O(\sglb_e_reg[7]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    sglc_e_carry__1_i_1
       (.I0(Q),
        .I1(sglc_e_carry__1),
        .O(\sglb_e_reg[8]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    sglc_e_carry_i_1
       (.I0(\sglb_i_reg[28]_0 [32]),
        .O(\sglb_e_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h9)) 
    sglc_e_carry_i_2__0
       (.I0(\sglb_i_reg[28]_0 [35]),
        .I1(sgla_r_0[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    sglc_e_carry_i_3__0
       (.I0(\sglb_i_reg[28]_0 [34]),
        .I1(sgla_r_0[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    sglc_e_carry_i_4__0
       (.I0(\sglb_i_reg[28]_0 [33]),
        .I1(sgla_r_0[0]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h96)) 
    sglc_f_t_carry_i_1
       (.I0(\sglb_i_reg[31]_2 ),
        .I1(fctl_ccmd_sub),
        .I2(sgla_r_0[7]),
        .O(\sglb_i_reg[31]_1 ));
  LUT6 #(
    .INIT(64'h0FFFFF0088888800)) 
    \sglc_i[43]_i_3 
       (.I0(fctl_ccmd_mul),
        .I1(\sglc_i[43]_i_5_n_0 ),
        .I2(\sglb_i_reg[31]_1 ),
        .I3(\cbus[6]_INST_0_i_7_n_0 ),
        .I4(sgla_r_0[8]),
        .I5(fctl_ccmd_add),
        .O(fctl_ccmd_mul_reg));
  LUT5 #(
    .INIT(32'h00001110)) 
    \sglc_i[43]_i_4 
       (.I0(\cbus[6]_INST_0_i_7_n_0 ),
        .I1(\sglc_i_reg[44]_4 ),
        .I2(\sglb_i_reg[28]_0 [40]),
        .I3(sgla_r_0[8]),
        .I4(\sglc_i_reg[44] ),
        .O(\sgla_i_reg[24] ));
  LUT2 #(
    .INIT(4'h1)) 
    \sglc_i[43]_i_5 
       (.I0(\sglb_i_reg[28]_0 [40]),
        .I1(\sglc_i_reg[44]_4 ),
        .O(\sglc_i[43]_i_5_n_0 ));
endmodule

module sfpu_smul
   (sglc_r_fmul,
    Q,
    \cbus[27]_INST_0_i_5 ,
    S,
    \cbus[27]_INST_0_i_5_0 ,
    \sglc_e[8]_i_4 );
  output [8:0]sglc_r_fmul;
  input [0:0]Q;
  input [7:0]\cbus[27]_INST_0_i_5 ;
  input [3:0]S;
  input [3:0]\cbus[27]_INST_0_i_5_0 ;
  input [0:0]\sglc_e[8]_i_4 ;

  wire \<const0> ;
  wire [0:0]Q;
  wire [3:0]S;
  wire [7:0]\cbus[27]_INST_0_i_5 ;
  wire [3:0]\cbus[27]_INST_0_i_5_0 ;
  wire [0:0]\sglc_e[8]_i_4 ;
  wire sglc_e_carry__0_n_0;
  wire sglc_e_carry__0_n_1;
  wire sglc_e_carry__0_n_2;
  wire sglc_e_carry__0_n_3;
  wire sglc_e_carry_n_0;
  wire sglc_e_carry_n_1;
  wire sglc_e_carry_n_2;
  wire sglc_e_carry_n_3;
  wire [8:0]sglc_r_fmul;

  GND GND
       (.G(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sglc_e_carry
       (.CI(\<const0> ),
        .CO({sglc_e_carry_n_0,sglc_e_carry_n_1,sglc_e_carry_n_2,sglc_e_carry_n_3}),
        .CYINIT(Q),
        .DI(\cbus[27]_INST_0_i_5 [3:0]),
        .O(sglc_r_fmul[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sglc_e_carry__0
       (.CI(sglc_e_carry_n_0),
        .CO({sglc_e_carry__0_n_0,sglc_e_carry__0_n_1,sglc_e_carry__0_n_2,sglc_e_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(\cbus[27]_INST_0_i_5 [7:4]),
        .O(sglc_r_fmul[7:4]),
        .S(\cbus[27]_INST_0_i_5_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sglc_e_carry__1
       (.CI(sglc_e_carry__0_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(sglc_r_fmul[8]),
        .S({\<const0> ,\<const0> ,\<const0> ,\sglc_e[8]_i_4 }));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module sglfpu
   (clk,
    rst_n,
    ccmd,
    abus,
    bbus,
    crdy,
    cbus,
    sfpu_dsp_c,
    sfpu_dsp_a,
    sfpu_dsp_b);
//
//	Single precision Floating Point Unit
//		(c) 2021,2023	1YEN Toru
//
//
//	2026/03/14	ver.1.04
//		fix: crdy=1 if not defined ccmd
//
//	2024/03/16	ver.1.02
//		corresponding to Xilinx Vivado
//
//	2023/02/11	ver.1.00
//		float: <1b sign> <8b exponent> <23b fraction>
//		float=pow (-1,<1b sign>)*0x1.<23b fraction>*(2**(<8b exponent> - 127))
//		non normalized number was not supported. it is treated as zero.
//		INF and NaN are available
//
//	================================
//	2021/07/10	ver.1.02
//		ccmd=HCMP: half compare command
//
//	2021/06/12	ver.1.00
//		half: <1b sign> <5b exponent> <10b fraction>
//		half=pow (-1,<1b sign>)*0x1.<10b fraction>*(2**(<5b exponent> - 15))
//		non normalized number was not supported. it is treated as zero.
//		INF and NaN are available
//
  input clk;
  input rst_n;
  input [4:0]ccmd;
  input [31:0]abus;
  input [31:0]bbus;
  output crdy;
  output [31:0]cbus;
  input [47:0]sfpu_dsp_c;
  output [23:0]sfpu_dsp_a;
  output [23:0]sfpu_dsp_b;

  wire [31:0]abus;
  wire [31:0]bbus;
  wire [31:0]cbus;
  wire [4:0]ccmd;
  wire clk;
  wire crdy;
  wire [4:0]data1;
  wire [4:4]data6;
  wire [47:19]den;
  wire [49:49]den__0;
  wire [49:23]den_r;
  wire fadd_n_0;
  wire fadd_n_1;
  wire fadd_n_10;
  wire fadd_n_11;
  wire fadd_n_12;
  wire fadd_n_13;
  wire fadd_n_14;
  wire fadd_n_15;
  wire fadd_n_16;
  wire fadd_n_17;
  wire fadd_n_18;
  wire fadd_n_19;
  wire fadd_n_2;
  wire fadd_n_20;
  wire fadd_n_21;
  wire fadd_n_22;
  wire fadd_n_23;
  wire fadd_n_24;
  wire fadd_n_25;
  wire fadd_n_26;
  wire fadd_n_27;
  wire fadd_n_29;
  wire fadd_n_3;
  wire fadd_n_30;
  wire fadd_n_31;
  wire fadd_n_32;
  wire fadd_n_33;
  wire fadd_n_4;
  wire fadd_n_5;
  wire fadd_n_6;
  wire fadd_n_64;
  wire fadd_n_65;
  wire fadd_n_66;
  wire fadd_n_7;
  wire fadd_n_8;
  wire fadd_n_9;
  wire fctl_ccmd_add;
  wire fctl_ccmd_hlf;
  wire fctl_ccmd_int;
  wire fctl_ccmd_mul;
  wire fctl_ccmd_sub;
  wire fctl_dsft_enb;
  wire fctl_load_b;
  wire fctl_load_d__4;
  wire fctl_n_10;
  wire fctl_n_100;
  wire fctl_n_101;
  wire fctl_n_102;
  wire fctl_n_103;
  wire fctl_n_104;
  wire fctl_n_105;
  wire fctl_n_106;
  wire fctl_n_107;
  wire fctl_n_108;
  wire fctl_n_109;
  wire fctl_n_11;
  wire fctl_n_110;
  wire fctl_n_111;
  wire fctl_n_112;
  wire fctl_n_113;
  wire fctl_n_114;
  wire fctl_n_115;
  wire fctl_n_116;
  wire fctl_n_117;
  wire fctl_n_118;
  wire fctl_n_119;
  wire fctl_n_12;
  wire fctl_n_120;
  wire fctl_n_121;
  wire fctl_n_122;
  wire fctl_n_13;
  wire fctl_n_130;
  wire fctl_n_131;
  wire fctl_n_132;
  wire fctl_n_133;
  wire fctl_n_134;
  wire fctl_n_135;
  wire fctl_n_136;
  wire fctl_n_137;
  wire fctl_n_14;
  wire fctl_n_15;
  wire fctl_n_16;
  wire fctl_n_169;
  wire fctl_n_17;
  wire fctl_n_170;
  wire fctl_n_171;
  wire fctl_n_172;
  wire fctl_n_173;
  wire fctl_n_174;
  wire fctl_n_175;
  wire fctl_n_176;
  wire fctl_n_177;
  wire fctl_n_178;
  wire fctl_n_179;
  wire fctl_n_18;
  wire fctl_n_180;
  wire fctl_n_181;
  wire fctl_n_182;
  wire fctl_n_183;
  wire fctl_n_184;
  wire fctl_n_185;
  wire fctl_n_186;
  wire fctl_n_187;
  wire fctl_n_188;
  wire fctl_n_189;
  wire fctl_n_19;
  wire fctl_n_190;
  wire fctl_n_191;
  wire fctl_n_192;
  wire fctl_n_193;
  wire fctl_n_194;
  wire fctl_n_195;
  wire fctl_n_196;
  wire fctl_n_197;
  wire fctl_n_198;
  wire fctl_n_199;
  wire fctl_n_20;
  wire fctl_n_200;
  wire fctl_n_201;
  wire fctl_n_202;
  wire fctl_n_21;
  wire fctl_n_22;
  wire fctl_n_27;
  wire fctl_n_28;
  wire fctl_n_29;
  wire fctl_n_37;
  wire fctl_n_38;
  wire fctl_n_39;
  wire fctl_n_40;
  wire fctl_n_41;
  wire fctl_n_42;
  wire fctl_n_43;
  wire fctl_n_44;
  wire fctl_n_45;
  wire fctl_n_46;
  wire fctl_n_47;
  wire fctl_n_49;
  wire fctl_n_50;
  wire fctl_n_51;
  wire fctl_n_52;
  wire fctl_n_53;
  wire fctl_n_54;
  wire fctl_n_55;
  wire fctl_n_56;
  wire fctl_n_6;
  wire fctl_n_65;
  wire fctl_n_66;
  wire fctl_n_67;
  wire fctl_n_68;
  wire fctl_n_69;
  wire fctl_n_75;
  wire fctl_n_76;
  wire fctl_n_77;
  wire fctl_n_78;
  wire fctl_n_79;
  wire fctl_n_8;
  wire fctl_n_80;
  wire fctl_n_81;
  wire fctl_n_82;
  wire fctl_n_83;
  wire fctl_n_84;
  wire fctl_n_85;
  wire fctl_n_88;
  wire fctl_n_89;
  wire fctl_n_9;
  wire fctl_n_90;
  wire fctl_n_91;
  wire fctl_n_92;
  wire fctl_n_93;
  wire fctl_n_94;
  wire fctl_n_95;
  wire fctl_n_96;
  wire fctl_n_97;
  wire fctl_n_98;
  wire fctl_n_99;
  wire fdiv_n_12;
  wire fdiv_n_13;
  wire fdiv_n_14;
  wire fdiv_n_15;
  wire fdiv_n_16;
  wire fdiv_n_17;
  wire fdiv_n_18;
  wire fdiv_n_19;
  wire fdiv_n_20;
  wire fdiv_n_21;
  wire fdiv_n_22;
  wire fdiv_n_23;
  wire fdiv_n_24;
  wire fdiv_n_25;
  wire fdiv_n_26;
  wire fdiv_n_27;
  wire fdiv_n_28;
  wire fdiv_n_29;
  wire fdiv_n_30;
  wire fdiv_n_31;
  wire fdiv_n_32;
  wire fdiv_n_33;
  wire fdiv_n_34;
  wire fdiv_n_62;
  wire fdiv_n_63;
  wire fdiv_n_64;
  wire fdiv_nan_inf;
  wire fnrm_norm_fin;
  wire norm_n_0;
  wire norm_n_23;
  wire norm_n_24;
  wire norm_n_25;
  wire norm_n_26;
  wire norm_n_27;
  wire norm_n_28;
  wire norm_n_29;
  wire norm_n_31;
  wire norm_n_32;
  wire norm_n_33;
  wire norm_n_34;
  wire norm_n_35;
  wire norm_n_37;
  wire norm_n_38;
  wire norm_n_39;
  wire norm_n_40;
  wire norm_n_41;
  wire norm_n_43;
  wire norm_n_44;
  wire norm_n_45;
  wire norm_n_46;
  wire norm_n_47;
  wire norm_n_48;
  wire norm_n_49;
  wire norm_n_50;
  wire norm_n_51;
  wire norm_n_77;
  wire norm_n_78;
  wire norm_n_79;
  wire norm_n_80;
  wire norm_n_81;
  wire norm_n_82;
  wire p_0_in;
  wire [30:0]p_0_in1_in;
  wire p_0_in1_in_2;
  wire p_0_in23_in;
  wire p_0_in3_in;
  wire p_0_in6_in;
  wire p_0_in9_in;
  wire [22:0]p_0_in_0;
  wire [2:2]p_0_in_1;
  wire p_0_in__0;
  wire [3:3]p_1_in;
  wire [8:0]p_22_in;
  wire [7:1]p_2_in;
  wire p_3_in;
  wire [23:23]p_3_out;
  wire p_4_in;
  wire p_5_in;
  wire [26:26]rem0;
  wire rst_n;
  wire [23:0]sfpu_dsp_a;
  wire [23:0]sfpu_dsp_b;
  wire [47:0]sfpu_dsp_c;
  wire [8:8]sgla_e;
  wire [7:1]sgla_e__0;
  wire sgla_n_100;
  wire sgla_n_101;
  wire sgla_n_102;
  wire sgla_n_103;
  wire sgla_n_104;
  wire sgla_n_105;
  wire sgla_n_106;
  wire sgla_n_107;
  wire sgla_n_108;
  wire sgla_n_109;
  wire sgla_n_110;
  wire sgla_n_111;
  wire sgla_n_112;
  wire sgla_n_113;
  wire sgla_n_114;
  wire sgla_n_115;
  wire sgla_n_116;
  wire sgla_n_117;
  wire sgla_n_118;
  wire sgla_n_119;
  wire sgla_n_123;
  wire sgla_n_124;
  wire sgla_n_125;
  wire sgla_n_126;
  wire sgla_n_127;
  wire sgla_n_129;
  wire sgla_n_130;
  wire sgla_n_131;
  wire sgla_n_132;
  wire sgla_n_133;
  wire sgla_n_135;
  wire sgla_n_158;
  wire sgla_n_159;
  wire sgla_n_160;
  wire sgla_n_161;
  wire sgla_n_162;
  wire sgla_n_163;
  wire sgla_n_164;
  wire sgla_n_165;
  wire sgla_n_166;
  wire sgla_n_167;
  wire sgla_n_168;
  wire sgla_n_169;
  wire sgla_n_170;
  wire sgla_n_171;
  wire sgla_n_172;
  wire sgla_n_173;
  wire sgla_n_174;
  wire sgla_n_175;
  wire sgla_n_176;
  wire sgla_n_177;
  wire sgla_n_178;
  wire sgla_n_179;
  wire sgla_n_180;
  wire sgla_n_181;
  wire sgla_n_182;
  wire sgla_n_183;
  wire sgla_n_187;
  wire sgla_n_188;
  wire sgla_n_189;
  wire sgla_n_190;
  wire sgla_n_191;
  wire sgla_n_192;
  wire sgla_n_193;
  wire sgla_n_194;
  wire sgla_n_195;
  wire sgla_n_197;
  wire sgla_n_198;
  wire sgla_n_199;
  wire sgla_n_229;
  wire sgla_n_230;
  wire sgla_n_231;
  wire sgla_n_232;
  wire sgla_n_233;
  wire sgla_n_234;
  wire sgla_n_235;
  wire sgla_n_236;
  wire sgla_n_237;
  wire sgla_n_238;
  wire sgla_n_239;
  wire sgla_n_240;
  wire sgla_n_241;
  wire sgla_n_43;
  wire sgla_n_44;
  wire sgla_n_45;
  wire sgla_n_46;
  wire sgla_n_47;
  wire sgla_n_49;
  wire sgla_n_50;
  wire sgla_n_51;
  wire sgla_n_52;
  wire sgla_n_53;
  wire sgla_n_55;
  wire sgla_n_56;
  wire sgla_n_57;
  wire sgla_n_58;
  wire sgla_n_59;
  wire sgla_n_60;
  wire sgla_n_64;
  wire sgla_n_65;
  wire sgla_n_66;
  wire sgla_n_68;
  wire sgla_n_76;
  wire sgla_n_77;
  wire sgla_n_78;
  wire sgla_n_79;
  wire sgla_n_80;
  wire sgla_n_81;
  wire sgla_n_82;
  wire sgla_n_83;
  wire sgla_n_84;
  wire sgla_n_85;
  wire sgla_n_86;
  wire sgla_n_87;
  wire sgla_n_88;
  wire sgla_n_89;
  wire sgla_n_90;
  wire sgla_n_91;
  wire sgla_n_92;
  wire sgla_n_93;
  wire sgla_n_94;
  wire sgla_n_95;
  wire sgla_n_96;
  wire sgla_n_97;
  wire sgla_n_98;
  wire sgla_n_99;
  wire [44:0]sgla_r_0;
  wire sgla_sft_fin;
  wire [8:8]sglb_e;
  wire sglb_n_47;
  wire sglb_n_48;
  wire sglb_n_49;
  wire sglb_n_51;
  wire sglb_n_55;
  wire sglb_n_56;
  wire sglb_n_57;
  wire sglb_n_58;
  wire sglb_n_59;
  wire sglb_n_61;
  wire sglb_n_62;
  wire sglb_n_65;
  wire sglb_n_66;
  wire sglb_n_68;
  wire sglb_n_69;
  wire sglb_n_70;
  wire sglb_n_71;
  wire sglb_n_72;
  wire sglb_n_73;
  wire sglb_n_74;
  wire sglb_n_75;
  wire sglb_n_76;
  wire sglb_n_77;
  wire sglb_n_78;
  wire sglb_n_79;
  wire sglb_n_80;
  wire sglb_n_81;
  wire sglb_n_82;
  wire sglb_nan0;
  wire sglb_nan012_in;
  wire [42:0]sglb_r;
  wire sglb_sft_fin;
  wire [8:0]sglc_e;
  wire sglc_f;
  wire [28:1]sglc_f0;
  wire sglc_nan;
  wire [44:41]sglc_r_fadd;
  wire [40:4]sglc_r_fmul;
  wire [41:9]sglc_r_sgla;
  wire sglc_s2__0;
  wire [2:2]sglc_sr_flag;
  wire sglc_sr_flag2;
  wire sglc_zer;
  wire sglc_zer0;
  wire [3:0]stat;

  sfpu_sadd fadd
       (.CO(fadd_n_66),
        .O({fadd_n_0,fadd_n_1,fadd_n_2,fadd_n_3}),
        .S({fctl_n_134,fctl_n_135,fctl_n_136,fctl_n_137}),
        .\cbus[0]_INST_0_i_2 (sglb_n_62),
        .\cbus[12]_INST_0_i_3 ({fctl_n_177,fctl_n_178,fctl_n_179,fctl_n_180}),
        .\cbus[16]_INST_0_i_3 ({fctl_n_181,fctl_n_182,fctl_n_183,fctl_n_184}),
        .\cbus[19]_INST_0_i_8 ({fctl_n_189,fctl_n_190,fctl_n_191,fctl_n_192}),
        .\cbus[20]_INST_0_i_10 ({fctl_n_185,fctl_n_186,fctl_n_187,fctl_n_188}),
        .\cbus[20]_INST_0_i_9 (fctl_n_133),
        .\cbus[22]_INST_0_i_1 (fctl_n_89),
        .\cbus[30]_INST_0_i_23_0 (fadd_n_64),
        .\cbus[31]_INST_0_i_51 ({sgla_n_229,fctl_n_193,fctl_n_194,fctl_n_195}),
        .\cbus[31]_INST_0_i_65_0 (fadd_n_65),
        .\cbus[4] (sglc_r_fadd[44]),
        .\cbus[4]_INST_0_i_6 ({fctl_n_169,fctl_n_170,fctl_n_171,fctl_n_172}),
        .\cbus[7]_INST_0_i_10_0 (sglc_r_fadd[42]),
        .\cbus[7]_INST_0_i_8_0 (fadd_n_33),
        .\cbus[8]_INST_0_i_2 ({fctl_n_173,fctl_n_174,fctl_n_175,fctl_n_176}),
        .fctl_ccmd_add(fctl_ccmd_add),
        .fctl_ccmd_add_reg({fadd_n_4,fadd_n_5,fadd_n_6,fadd_n_7}),
        .fctl_ccmd_add_reg_0({fadd_n_8,fadd_n_9,fadd_n_10,fadd_n_11}),
        .fctl_ccmd_add_reg_1({fadd_n_12,fadd_n_13,fadd_n_14,fadd_n_15}),
        .fctl_ccmd_add_reg_2({fadd_n_16,fadd_n_17,fadd_n_18,fadd_n_19}),
        .fctl_ccmd_add_reg_3({fadd_n_20,fadd_n_21,fadd_n_22,fadd_n_23}),
        .fctl_ccmd_add_reg_4({fadd_n_24,fadd_n_25,fadd_n_26,fadd_n_27}),
        .fctl_ccmd_add_reg_5({p_0_in,fadd_n_29,fadd_n_30,fadd_n_31}),
        .fctl_ccmd_add_reg_6(fadd_n_32),
        .p_0_in1_in(p_0_in1_in),
        .sglc_f0(sglc_f0),
        .\sglc_i_reg[42] (fctl_n_131),
        .sglc_sr_flag2(sglc_sr_flag2));
  sfpu_fsm fctl
       (.CO(fadd_n_66),
        .D(p_2_in),
        .E(crdy),
        .O(sgla_n_47),
        .Q(stat),
        .S({fctl_n_134,fctl_n_135,fctl_n_136,fctl_n_137}),
        .SR(p_0_in__0),
        .abus({abus[30:23],abus[20:18],abus[16:13]}),
        .\abus[15] (fctl_n_29),
        .\abus[16] (fctl_n_10),
        .\abus[18] (fctl_n_28),
        .\abus[19] (fctl_n_19),
        .\abus[20] (fctl_n_20),
        .\abus[27] (fctl_n_200),
        .abus_13_sp_1(fctl_n_21),
        .abus_14_sp_1(fctl_n_12),
        .bbus(bbus[30:19]),
        .\bbus[22] ({fctl_n_37,fctl_n_38,fctl_n_39,fctl_n_40}),
        .\bbus[24] (fctl_n_41),
        .\bbus[24]_0 (fctl_n_46),
        .\bbus[25] (fctl_n_47),
        .\bbus[26] (fctl_n_44),
        .\bbus[27] (fctl_n_45),
        .cbus({cbus[30:28],cbus[25:23],cbus[4]}),
        .\cbus[11]_INST_0_i_5 ({fadd_n_8,fadd_n_9,fadd_n_10,fadd_n_11}),
        .\cbus[15]_INST_0_i_5 ({fadd_n_12,fadd_n_13,fadd_n_14,fadd_n_15}),
        .\cbus[18]_INST_0_i_1 ({fadd_n_20,fadd_n_21,fadd_n_22,fadd_n_23}),
        .\cbus[19]_INST_0_i_2 ({fadd_n_16,fadd_n_17,fadd_n_18,fadd_n_19}),
        .\cbus[21]_INST_0_i_2 (norm_n_48),
        .\cbus[22] (norm_n_32),
        .\cbus[22]_0 (sgla_n_192),
        .\cbus[22]_INST_0_i_2 ({fadd_n_24,fadd_n_25,fadd_n_26,fadd_n_27}),
        .\cbus[23] (sgla_n_169),
        .\cbus[24] (sgla_n_66),
        .\cbus[24]_0 (sgla_n_59),
        .\cbus[24]_1 (sgla_n_172),
        .\cbus[25] (sgla_n_183),
        .\cbus[25]_0 (norm_n_43),
        .\cbus[25]_1 (sgla_n_181),
        .\cbus[25]_2 (norm_n_45),
        .\cbus[25]_3 (sglb_n_55),
        .\cbus[26]_INST_0_i_4 (norm_n_47),
        .\cbus[27] (sgla_n_193),
        .\cbus[27]_0 (norm_n_46),
        .\cbus[28] (sgla_n_189),
        .\cbus[28]_0 ({norm_n_25,norm_n_26,norm_n_27,norm_n_28}),
        .\cbus[28]_1 (norm_n_29),
        .\cbus[29] (sgla_n_188),
        .\cbus[29]_0 (sglb_n_57),
        .\cbus[29]_1 (norm_n_24),
        .\cbus[29]_INST_0_i_4 ({norm_n_35,sglc_zer,norm_n_37}),
        .\cbus[29]_INST_0_i_4_0 (norm_n_44),
        .\cbus[2]_INST_0_i_4 ({fadd_n_4,fadd_n_5,fadd_n_6,fadd_n_7}),
        .\cbus[30] (norm_n_34),
        .\cbus[30]_0 (sglb_n_59),
        .\cbus[30]_1 (norm_n_38),
        .\cbus[30]_2 (norm_n_33),
        .\cbus[30]_3 (sgla_n_57),
        .\cbus[30]_4 (p_22_in[4:2]),
        .\cbus[30]_5 (norm_n_50),
        .\cbus[31]_INST_0_i_33_0 (sglc_f0),
        .\cbus[31]_INST_0_i_33_1 ({p_0_in,fadd_n_29,fadd_n_30,fadd_n_31}),
        .\cbus[31]_INST_0_i_4 (fadd_n_64),
        .\cbus[31]_INST_0_i_4_0 (fadd_n_33),
        .\cbus[31]_INST_0_i_53 (fctl_n_131),
        .\cbus[3]_INST_0_i_1 ({fadd_n_0,fadd_n_1,fadd_n_2}),
        .\cbus[4]_0 (norm_n_41),
        .\cbus[4]_1 (fdiv_n_62),
        .\cbus[4]_INST_0_i_4_0 ({fdiv_n_14,fdiv_n_15}),
        .\cbus[4]_INST_0_i_4_1 (rem0),
        .\cbus[7]_INST_0_i_6 (fadd_n_65),
        .cbus_4_sp_1(sgla_n_158),
        .cbus_5_sp_1(fdiv_n_63),
        .ccmd(ccmd),
        .\ccmd[1]_0 (fctl_n_8),
        .\ccmd[1]_1 (fctl_n_9),
        .\ccmd[1]_2 (fctl_n_11),
        .\ccmd[1]_3 (fctl_n_14),
        .\ccmd[1]_4 (fctl_n_15),
        .ccmd_1_sp_1(fctl_n_6),
        .clk(clk),
        .den(den[22:19]),
        .fctl_ccmd_add(fctl_ccmd_add),
        .fctl_ccmd_add_reg_0(fctl_n_65),
        .fctl_ccmd_add_reg_1(fctl_n_68),
        .fctl_ccmd_add_reg_10(fctl_n_111),
        .fctl_ccmd_add_reg_11(fctl_n_113),
        .fctl_ccmd_add_reg_12(fctl_n_114),
        .fctl_ccmd_add_reg_13(fctl_n_115),
        .fctl_ccmd_add_reg_14(fctl_n_116),
        .fctl_ccmd_add_reg_15(fctl_n_117),
        .fctl_ccmd_add_reg_16(fctl_n_118),
        .fctl_ccmd_add_reg_17(fctl_n_119),
        .fctl_ccmd_add_reg_18(fctl_n_120),
        .fctl_ccmd_add_reg_19(fctl_n_121),
        .fctl_ccmd_add_reg_2(fctl_n_82),
        .fctl_ccmd_add_reg_20({fctl_n_169,fctl_n_170,fctl_n_171,fctl_n_172}),
        .fctl_ccmd_add_reg_21({fctl_n_173,fctl_n_174,fctl_n_175,fctl_n_176}),
        .fctl_ccmd_add_reg_22({fctl_n_177,fctl_n_178,fctl_n_179,fctl_n_180}),
        .fctl_ccmd_add_reg_23({fctl_n_181,fctl_n_182,fctl_n_183,fctl_n_184}),
        .fctl_ccmd_add_reg_24({fctl_n_185,fctl_n_186,fctl_n_187,fctl_n_188}),
        .fctl_ccmd_add_reg_25({fctl_n_189,fctl_n_190,fctl_n_191,fctl_n_192}),
        .fctl_ccmd_add_reg_26({fctl_n_193,fctl_n_194,fctl_n_195}),
        .fctl_ccmd_add_reg_3(fctl_n_83),
        .fctl_ccmd_add_reg_4({p_4_in,p_3_in}),
        .fctl_ccmd_add_reg_5(fctl_n_91),
        .fctl_ccmd_add_reg_6(fctl_n_95),
        .fctl_ccmd_add_reg_7(fctl_n_102),
        .fctl_ccmd_add_reg_8(fctl_n_103),
        .fctl_ccmd_add_reg_9(fctl_n_109),
        .fctl_ccmd_cmp_reg_0(fctl_n_201),
        .fctl_ccmd_hlf(fctl_ccmd_hlf),
        .fctl_ccmd_hlf_reg_0(fctl_n_78),
        .fctl_ccmd_hlf_reg_1(fctl_n_79),
        .fctl_ccmd_hlf_reg_2(fctl_n_81),
        .fctl_ccmd_hlf_reg_3(fctl_n_90),
        .fctl_ccmd_int(fctl_ccmd_int),
        .fctl_ccmd_int_reg_0(fctl_n_43),
        .fctl_ccmd_int_reg_1(fctl_n_66),
        .fctl_ccmd_int_reg_2(fctl_n_67),
        .fctl_ccmd_int_reg_3(fctl_n_202),
        .fctl_ccmd_mul(fctl_ccmd_mul),
        .fctl_ccmd_mul_reg_0(fctl_n_89),
        .fctl_ccmd_mul_reg_1(fctl_n_92),
        .fctl_ccmd_mul_reg_10(fctl_n_104),
        .fctl_ccmd_mul_reg_11(fctl_n_105),
        .fctl_ccmd_mul_reg_12(fctl_n_106),
        .fctl_ccmd_mul_reg_13(fctl_n_107),
        .fctl_ccmd_mul_reg_14(fctl_n_108),
        .fctl_ccmd_mul_reg_15(fctl_n_110),
        .fctl_ccmd_mul_reg_16(fctl_n_112),
        .fctl_ccmd_mul_reg_2(fctl_n_93),
        .fctl_ccmd_mul_reg_3(fctl_n_94),
        .fctl_ccmd_mul_reg_4(fctl_n_96),
        .fctl_ccmd_mul_reg_5(fctl_n_97),
        .fctl_ccmd_mul_reg_6(fctl_n_98),
        .fctl_ccmd_mul_reg_7(fctl_n_99),
        .fctl_ccmd_mul_reg_8(fctl_n_100),
        .fctl_ccmd_mul_reg_9(fctl_n_101),
        .fctl_ccmd_reg_reg_0(fctl_n_75),
        .fctl_ccmd_reg_reg_1(fctl_n_76),
        .fctl_ccmd_sub(fctl_ccmd_sub),
        .fctl_load_b(fctl_load_b),
        .fctl_load_d__4(fctl_load_d__4),
        .fdiv_nan_inf(fdiv_nan_inf),
        .fnrm_norm_fin(fnrm_norm_fin),
        .p_0_in(p_0_in_1),
        .p_0_in1_in(p_0_in1_in),
        .p_22_in({p_22_in[8:7],p_22_in[5],p_22_in[1:0]}),
        .p_5_in(p_5_in),
        .rst_n(rst_n),
        .sfpu_dsp_a(sfpu_dsp_a),
        .sfpu_dsp_b(sfpu_dsp_b),
        .\sgla_e[7]_i_16 (sgla_n_49),
        .\sgla_e[7]_i_9 (p_0_in23_in),
        .sgla_e__0(sgla_e__0),
        .\sgla_e_reg[1] (fctl_n_80),
        .\sgla_e_reg[4] (sgla_n_77),
        .\sgla_e_reg[5] (sgla_n_240),
        .\sgla_e_reg[6] (fctl_n_69),
        .\sgla_e_reg[6]_0 (sgla_n_76),
        .\sgla_f[12]_i_5 (sgla_n_52),
        .\sgla_f[14]_i_5 (sgla_n_53),
        .\sgla_f[19]_i_2 (sgla_n_56),
        .\sgla_f[1]_i_2 (sgla_n_43),
        .\sgla_f[5]_i_2 (sgla_n_51),
        .\sgla_f_reg[0] (p_3_out),
        .\sgla_f_reg[16] (fctl_n_13),
        .\sgla_f_reg[21] (sgla_n_55),
        .\sgla_f_reg[23] (fctl_n_16),
        .\sgla_f_reg[28] (sgla_n_50),
        .\sgla_f_reg[5] (sgla_n_45),
        .\sgla_f_reg[8] (sgla_n_46),
        .\sgla_f_reg[9] (sgla_n_44),
        .\sgla_i_reg[31] (fctl_n_130),
        .\sgla_i_reg[31]_0 (fctl_n_132),
        .sgla_r_0({sgla_r_0[41],sgla_r_0[39:32],sgla_r_0[30:0]}),
        .sgla_sft_fin(sgla_sft_fin),
        .\sglb_e_reg[2] (sglb_n_47),
        .\sglb_f_reg[24] (sgla_n_107),
        .\sglb_f_reg[25] (sgla_n_110),
        .\sglb_f_reg[26] (sgla_n_111),
        .\sglb_f_reg[27] (sgla_n_112),
        .\sglb_f_reg[31] (sgla_n_119),
        .\sglb_i_reg[31] (fctl_n_88),
        .sglb_r(sglb_r[41]),
        .sglb_sft_fin(sglb_sft_fin),
        .sglc_e(sglc_e),
        .\sglc_e[8]_i_3_0 (sgla_e),
        .\sglc_e_reg[4] (fctl_n_85),
        .\sglc_f[10]_i_2 (norm_n_0),
        .\sglc_f[10]_i_3_0 ({p_1_in,p_0_in_0[22],p_0_in_0[9:6]}),
        .\sglc_f[10]_i_3_1 (norm_n_81),
        .\sglc_f[10]_i_3_2 (norm_n_23),
        .\sglc_f[11]_i_12_0 (sgla_n_135),
        .\sglc_f[28]_i_3_0 (sgla_n_194),
        .\sglc_f[4]_i_2_0 (sgla_n_68),
        .\sglc_f[4]_i_2_1 (sgla_n_58),
        .\sglc_f_reg[13] (fctl_n_51),
        .\sglc_f_reg[14] (fctl_n_52),
        .\sglc_f_reg[14]_0 (sgla_n_171),
        .\sglc_f_reg[15] (sgla_n_180),
        .\sglc_f_reg[27] (fctl_n_84),
        .\sglc_f_reg[30] (sgla_n_166),
        .\sglc_f_reg[31] (sgla_n_167),
        .\sglc_f_reg[31]_0 (norm_n_49),
        .sglc_f_t_carry__6(fctl_n_133),
        .sglc_f_t_carry__6_0(sglb_r[30:0]),
        .\sglc_i_reg[41] (fctl_n_77),
        .\sglc_i_reg[41]_0 (sglb_n_65),
        .\sglc_i_reg[41]_1 (sglb_n_56),
        .\sglc_i_reg[41]_2 (sgla_n_199),
        .\sglc_i_reg[42] (sgla_n_197),
        .\sglc_i_reg[42]_0 (sglb_n_58),
        .\sglc_i_reg[42]_1 (norm_n_51),
        .\sglc_i_reg[42]_2 (norm_n_77),
        .\sglc_i_reg[42]_3 (norm_n_79),
        .\sglc_i_reg[42]_4 (norm_n_78),
        .sglc_nan(sglc_nan),
        .sglc_r_fadd(sglc_r_fadd[42:41]),
        .sglc_r_fmul({sglc_r_fmul[40:32],sglc_r_fmul[28:4]}),
        .sglc_r_sgla({sglc_r_sgla[41],sglc_r_sgla[10:9]}),
        .sglc_sr_flag2(sglc_sr_flag2),
        .\stat_reg[0]_0 (fctl_n_27),
        .\stat_reg[0]_1 (fctl_n_49),
        .\stat_reg[0]_2 (fctl_n_50),
        .\stat_reg[0]_3 (fctl_n_53),
        .\stat_reg[0]_4 (fctl_n_54),
        .\stat_reg[0]_5 ({fctl_n_55,fctl_n_56}),
        .\stat_reg[1]_0 (fctl_n_122),
        .\stat_reg[1]_1 (fctl_n_196),
        .\stat_reg[1]_2 (fctl_n_197),
        .\stat_reg[1]_3 (fctl_n_198),
        .\stat_reg[1]_4 (fctl_n_199),
        .\stat_reg[1]_5 (norm_n_82),
        .\stat_reg[2]_0 (fctl_n_22),
        .\stat_reg[2]_1 (fctl_n_42),
        .\stat_reg[2]_2 (norm_n_80),
        .\stat_reg[3]_0 (fctl_n_17),
        .\stat_reg[3]_1 (fctl_n_18),
        .\stat_reg[3]_2 (sglc_f),
        .\stat_reg[3]_3 (fctl_dsft_enb));
  sfpu_sdiv fdiv
       (.D(p_3_out),
        .E(fctl_dsft_enb),
        .Q(p_0_in_0[8]),
        .S({sglb_n_68,sglb_n_69,sglb_n_70,sgla_n_238}),
        .SR(p_0_in__0),
        .cbus(cbus[8]),
        .\cbus[0]_0 (sgla_n_190),
        .\cbus[0]_1 (fctl_n_91),
        .\cbus[11]_INST_0_i_1 (fctl_n_95),
        .\cbus[14]_INST_0_i_1 (fctl_n_98),
        .\cbus[15]_INST_0_i_1 (fctl_n_99),
        .\cbus[17]_INST_0_i_1 (fctl_n_106),
        .\cbus[19]_INST_0_i_1 (fctl_n_108),
        .\cbus[1]_INST_0_i_1 (fctl_n_92),
        .\cbus[20]_INST_0_i_1 (fctl_n_109),
        .\cbus[20]_INST_0_i_2 (fctl_n_104),
        .\cbus[24]_INST_0_i_4 (sglb_n_49),
        .\cbus[27]_INST_0_i_5 ({sglb_n_71,sglb_n_72,sglb_n_73,sglb_n_74}),
        .\cbus[2]_INST_0_i_1 (fctl_n_93),
        .\cbus[7] (sgla_n_175),
        .\cbus[7]_0 (fctl_n_96),
        .\cbus[8] (sgla_n_158),
        .\cbus[8]_0 (norm_n_32),
        .\cbus[8]_1 (fctl_n_67),
        .\cbus[8]_2 (fctl_n_94),
        .\cbus[8]_3 (sgla_n_173),
        .\cbus[8]_4 (sgla_n_191),
        .\cbus[8]_5 (fctl_n_97),
        .cbus_0_sp_1(fctl_n_82),
        .clk(clk),
        .den(den),
        .\den_r_reg[49]_0 ({den_r[49],den_r[47:23]}),
        .\dso_r_reg[24]_0 (sglb_r[29:5]),
        .fctl_load_d__4(fctl_load_d__4),
        .\fquo_reg[0]_0 (fdiv_n_62),
        .\fquo_reg[11]_0 (fdiv_n_23),
        .\fquo_reg[11]_1 (fdiv_n_31),
        .\fquo_reg[13]_0 (fdiv_n_24),
        .\fquo_reg[13]_1 (fdiv_n_32),
        .\fquo_reg[15]_0 (fdiv_n_25),
        .\fquo_reg[16]_0 (fdiv_n_26),
        .\fquo_reg[16]_1 (fdiv_n_33),
        .\fquo_reg[17]_0 (fdiv_n_34),
        .\fquo_reg[19]_0 (fdiv_n_13),
        .\fquo_reg[19]_1 ({fdiv_n_14,fdiv_n_15}),
        .\fquo_reg[19]_2 (fdiv_n_17),
        .\fquo_reg[19]_3 (fdiv_n_18),
        .\fquo_reg[19]_4 (fdiv_n_19),
        .\fquo_reg[19]_5 (fdiv_n_64),
        .\fquo_reg[1]_0 (fdiv_n_63),
        .\fquo_reg[2]_0 (fdiv_n_16),
        .\fquo_reg[2]_1 (fdiv_n_20),
        .\fquo_reg[3]_0 (fdiv_n_12),
        .\fquo_reg[5]_0 (fdiv_n_21),
        .\fquo_reg[6]_0 (fdiv_n_22),
        .\fquo_reg[6]_1 (fdiv_n_27),
        .\fquo_reg[7]_0 (fdiv_n_28),
        .\fquo_reg[8]_0 (fdiv_n_29),
        .\fquo_reg[9]_0 (fdiv_n_30),
        .rem4_carry(den__0),
        .rst_n(rst_n),
        .sgla_r_0(sgla_r_0[39:1]),
        .\sglb_f_reg[29] (rem0),
        .sglc_e(sglc_e),
        .\sglc_e[8]_i_4 (sgla_n_241),
        .\sglc_f_reg[5] (fctl_n_50),
        .sglc_zer0(sglc_zer0));
  sfpu_smul fmul
       (.Q(sglb_r[32]),
        .S({sgla_n_230,sgla_n_231,sgla_n_232,sgla_n_233}),
        .\cbus[27]_INST_0_i_5 (sgla_r_0[39:32]),
        .\cbus[27]_INST_0_i_5_0 ({sgla_n_234,sgla_n_235,sgla_n_236,sgla_n_237}),
        .\sglc_e[8]_i_4 (sglb_n_75),
        .sglc_r_fmul(sglc_r_fmul[40:32]));
  sfpu_norm norm
       (.D({fctl_n_55,fctl_n_56}),
        .E(sglc_f),
        .Q({p_1_in,p_0_in_0[22:6],p_0_in_0[3:0]}),
        .SR(p_0_in__0),
        .cbus(cbus[26]),
        .\cbus[0]_0 (fctl_n_202),
        .\cbus[26] (sgla_n_187),
        .\cbus[26]_0 (sglb_n_59),
        .\cbus[26]_1 (fctl_n_78),
        .\cbus[26]_2 (fctl_n_75),
        .\cbus[26]_3 (fctl_n_76),
        .\cbus[29] (fctl_n_67),
        .\cbus[29]_0 (fctl_n_81),
        .\cbus[5] (fdiv_n_17),
        .\cbus[5]_0 (sglc_r_fadd[44]),
        .\cbus[5]_1 (fctl_n_66),
        .cbus_0_sp_1(fctl_n_201),
        .clk(clk),
        .fctl_ccmd_hlf(fctl_ccmd_hlf),
        .fnrm_norm_fin(fnrm_norm_fin),
        .p_22_in({p_22_in[8:7],p_22_in[5:0]}),
        .p_5_in(p_5_in),
        .sfpu_dsp_c(sfpu_dsp_c[47:23]),
        .\sfpu_dsp_c[29] (norm_n_51),
        .\sfpu_dsp_c[35] (norm_n_77),
        .\sfpu_dsp_c[38] (norm_n_78),
        .\sfpu_dsp_c[46] (norm_n_79),
        .\sglc_e_reg[0]_0 (norm_n_46),
        .\sglc_e_reg[1]_0 (norm_n_45),
        .\sglc_e_reg[3]_0 (norm_n_29),
        .\sglc_e_reg[5]_0 ({norm_n_25,norm_n_26,norm_n_27,norm_n_28}),
        .\sglc_e_reg[6]_0 (norm_n_24),
        .\sglc_e_reg[7]_0 (norm_n_33),
        .\sglc_e_reg[7]_1 (norm_n_38),
        .\sglc_e_reg[7]_2 (fctl_n_69),
        .\sglc_e_reg[8]_0 (norm_n_44),
        .\sglc_f_reg[0]_0 (sgla_n_159),
        .\sglc_f_reg[10]_0 (norm_n_31),
        .\sglc_f_reg[10]_1 (fctl_n_51),
        .\sglc_f_reg[10]_2 (fctl_n_83),
        .\sglc_f_reg[11]_0 (norm_n_40),
        .\sglc_f_reg[11]_1 (fctl_n_52),
        .\sglc_f_reg[11]_2 (sgla_n_177),
        .\sglc_f_reg[12]_0 (norm_n_39),
        .\sglc_f_reg[12]_1 (fdiv_n_16),
        .\sglc_f_reg[13]_0 (fdiv_n_12),
        .\sglc_f_reg[14]_0 (fctl_n_196),
        .\sglc_f_reg[15]_0 (fctl_n_197),
        .\sglc_f_reg[15]_1 (fctl_n_198),
        .\sglc_f_reg[16]_0 (sgla_n_176),
        .\sglc_f_reg[16]_1 (fctl_n_199),
        .\sglc_f_reg[17]_0 (sgla_n_174),
        .\sglc_f_reg[18]_0 (sgla_n_168),
        .\sglc_f_reg[19]_0 (sgla_n_170),
        .\sglc_f_reg[1]_0 (sgla_n_161),
        .\sglc_f_reg[1]_1 (fctl_n_122),
        .\sglc_f_reg[1]_2 (fctl_n_53),
        .\sglc_f_reg[20]_0 (sgla_n_179),
        .\sglc_f_reg[21]_0 (sgla_n_178),
        .\sglc_f_reg[22]_0 (sgla_n_192),
        .\sglc_f_reg[23]_0 (sgla_n_169),
        .\sglc_f_reg[24]_0 (sgla_n_172),
        .\sglc_f_reg[25]_0 (sgla_n_181),
        .\sglc_f_reg[26]_0 (sgla_n_182),
        .\sglc_f_reg[27]_0 (sgla_n_239),
        .\sglc_f_reg[28]_0 (norm_n_80),
        .\sglc_f_reg[28]_1 (fctl_n_54),
        .\sglc_f_reg[29]_0 (norm_n_0),
        .\sglc_f_reg[29]_1 (sgla_n_165),
        .\sglc_f_reg[2]_0 (sgla_n_163),
        .\sglc_f_reg[30]_0 (norm_n_23),
        .\sglc_f_reg[30]_1 (norm_n_49),
        .\sglc_f_reg[30]_2 (norm_n_81),
        .\sglc_f_reg[3]_0 (sgla_n_164),
        .\sglc_f_reg[4]_0 (fctl_n_49),
        .\sglc_f_reg[5]_0 (fdiv_n_64),
        .\sglc_f_reg[6]_0 (sgla_n_160),
        .\sglc_f_reg[7]_0 (sgla_n_162),
        .\sglc_f_reg[8]_0 (fdiv_n_13),
        .\sglc_f_reg[9]_0 (norm_n_41),
        .\sglc_f_reg[9]_1 (fctl_n_65),
        .\sglc_i_reg[41]_0 (fctl_n_50),
        .\sglc_i_reg[42]_0 (norm_n_34),
        .\sglc_i_reg[42]_1 (norm_n_43),
        .\sglc_i_reg[42]_2 ({p_4_in,p_3_in}),
        .\sglc_i_reg[43]_0 (norm_n_47),
        .\sglc_i_reg[44]_0 (norm_n_32),
        .\sglc_i_reg[44]_1 ({norm_n_35,sglc_zer,norm_n_37}),
        .\sglc_i_reg[44]_2 (sglb_n_55),
        .sglc_r_fmul(sglc_r_fmul[28:4]),
        .\stat_reg[0] (norm_n_48),
        .\stat_reg[1] (norm_n_50),
        .\stat_reg[1]_0 (stat),
        .\stat_reg[3] (norm_n_82));
  sfpu_sgla sgla
       (.D(p_2_in),
        .E({sgla_n_132,sgla_n_133}),
        .O(sgla_n_47),
        .Q(sgla_e),
        .S({sglb_n_76,sglb_n_77,sglb_n_78}),
        .SR(sgla_n_131),
        .abus(abus),
        .abus_25_sp_1(sgla_n_240),
        .abus_26_sp_1(sgla_n_77),
        .abus_28_sp_1(sgla_n_76),
        .bbus({bbus[23],bbus[18:0]}),
        .cbus({cbus[27],cbus[22:9],cbus[7:5],cbus[3:0]}),
        .\cbus[0]_0 (norm_n_32),
        .\cbus[0]_1 (fctl_n_67),
        .\cbus[0]_2 (fadd_n_3),
        .\cbus[0]_3 (sglb_n_55),
        .\cbus[0]_4 (sglb_n_58),
        .\cbus[0]_5 (fadd_n_32),
        .\cbus[0]_6 (fctl_n_90),
        .\cbus[11]_0 (fctl_n_100),
        .\cbus[11]_1 (fdiv_n_20),
        .\cbus[12]_0 (fctl_n_101),
        .\cbus[13]_0 (fdiv_n_29),
        .\cbus[13]_1 (fctl_n_102),
        .\cbus[14]_0 (fctl_n_103),
        .\cbus[14]_1 (fdiv_n_21),
        .\cbus[15]_0 (fdiv_n_22),
        .\cbus[16]_0 (fctl_n_105),
        .\cbus[18]_0 (fctl_n_107),
        .\cbus[1]_0 (fdiv_n_18),
        .\cbus[21] ({p_0_in_0[21:9],p_0_in_0[3:0]}),
        .\cbus[21]_0 (fdiv_n_33),
        .\cbus[21]_1 (fctl_n_110),
        .\cbus[22] (fctl_n_84),
        .\cbus[22]_0 (fdiv_n_34),
        .\cbus[22]_1 (fctl_n_111),
        .\cbus[25] (fctl_n_80),
        .\cbus[27] (sglb_n_57),
        .\cbus[27]_0 (fctl_n_85),
        .\cbus[27]_1 (fctl_n_79),
        .\cbus[27]_2 (fctl_n_114),
        .\cbus[29] (p_22_in[5]),
        .\cbus[2]_0 (fdiv_n_19),
        .\cbus[30]_INST_0_i_4 (fctl_n_112),
        .\cbus[30]_INST_0_i_4_0 (fctl_n_113),
        .\cbus[31] (sglb_n_65),
        .\cbus[3]_0 (fctl_n_119),
        .\cbus[5]_0 (norm_n_31),
        .\cbus[7]_0 (fctl_n_66),
        .\cbus[7]_1 (norm_n_39),
        .cbus_0_sp_1(fdiv_n_17),
        .cbus_11_sp_1(fdiv_n_27),
        .cbus_12_sp_1(fdiv_n_28),
        .cbus_13_sp_1(fdiv_n_12),
        .cbus_14_sp_1(fdiv_n_30),
        .cbus_15_sp_1(fdiv_n_23),
        .cbus_16_sp_1(fdiv_n_31),
        .cbus_17_sp_1(fdiv_n_24),
        .cbus_18_sp_1(fdiv_n_32),
        .cbus_19_sp_1(fdiv_n_25),
        .cbus_1_sp_1(fctl_n_121),
        .cbus_20_sp_1(fdiv_n_26),
        .cbus_2_sp_1(fctl_n_120),
        .cbus_3_sp_1(fdiv_n_13),
        .cbus_5_sp_1(fctl_n_83),
        .cbus_6_sp_1(norm_n_40),
        .cbus_7_sp_1(fdiv_n_16),
        .cbus_9_sp_1(fctl_n_65),
        .ccmd(ccmd),
        .ccmd_1_sp_1(sgla_n_106),
        .\ccmd_f_reg[0]_0 (sgla_n_198),
        .\ccmd_f_reg[1]_0 (sgla_n_66),
        .\ccmd_f_reg[3]_0 (sgla_n_57),
        .\ccmd_f_reg[4]_0 (crdy),
        .clk(clk),
        .data1(data1),
        .data6(data6),
        .den(den[47:23]),
        .fctl_ccmd_add(fctl_ccmd_add),
        .fctl_ccmd_add_reg(sgla_n_158),
        .fctl_ccmd_int(fctl_ccmd_int),
        .fctl_ccmd_int_reg(sgla_n_104),
        .fctl_ccmd_int_reg_0(sgla_n_199),
        .fctl_ccmd_sub(fctl_ccmd_sub),
        .fctl_ccmd_sub_reg(sgla_n_195),
        .fctl_load_b(fctl_load_b),
        .fctl_load_d__4(fctl_load_d__4),
        .fdiv_nan_inf(fdiv_nan_inf),
        .\fquo_reg[11] (sgla_n_178),
        .p_0_in(p_0_in_1),
        .p_22_in(p_22_in[4:2]),
        .p_5_in(p_5_in),
        .rem4_carry_i_9({den_r[49],den_r[47:23]}),
        .rst_n(rst_n),
        .sfpu_dsp_c(sfpu_dsp_c[47]),
        .\sgla_e_reg[0]_0 (sgla_n_238),
        .\sgla_e_reg[0]_1 (p_0_in__0),
        .\sgla_e_reg[2]_0 (sgla_n_183),
        .\sgla_e_reg[3]_0 (sgla_n_108),
        .\sgla_e_reg[3]_1 (sgla_n_109),
        .\sgla_e_reg[3]_2 ({p_0_in6_in,p_0_in3_in,p_0_in1_in_2,sgla_n_123}),
        .\sgla_e_reg[3]_3 (sgla_n_135),
        .\sgla_e_reg[3]_4 (sgla_n_187),
        .\sgla_e_reg[3]_5 ({sgla_n_230,sgla_n_231,sgla_n_232,sgla_n_233}),
        .\sgla_e_reg[4]_0 (sgla_n_189),
        .\sgla_e_reg[5]_0 (sgla_n_188),
        .\sgla_e_reg[6]_0 (sgla_e__0),
        .\sgla_e_reg[7]_0 (sgla_n_50),
        .\sgla_e_reg[7]_1 (p_0_in23_in),
        .\sgla_e_reg[7]_2 (sgla_n_105),
        .\sgla_e_reg[7]_3 (sgla_n_119),
        .\sgla_e_reg[7]_4 ({sgla_n_125,sgla_n_126,sgla_n_127,p_0_in9_in}),
        .\sgla_e_reg[7]_5 (sgla_n_130),
        .\sgla_e_reg[7]_6 ({sgla_n_234,sgla_n_235,sgla_n_236,sgla_n_237}),
        .\sgla_e_reg[7]_i_2_0 (fctl_n_22),
        .\sgla_e_reg[8]_0 (sgla_n_197),
        .\sgla_e_reg[8]_1 (sgla_n_241),
        .\sgla_f_reg[0]_0 (sgla_n_159),
        .\sgla_f_reg[0]_1 (fctl_n_27),
        .\sgla_f_reg[13]_0 (sgla_n_191),
        .\sgla_f_reg[14]_0 (sgla_n_171),
        .\sgla_f_reg[15]_0 (sgla_n_180),
        .\sgla_f_reg[16]_0 (sgla_n_176),
        .\sgla_f_reg[17]_0 (sgla_n_174),
        .\sgla_f_reg[18]_0 (sgla_n_168),
        .\sgla_f_reg[18]_1 (fctl_n_21),
        .\sgla_f_reg[19]_0 (sgla_n_170),
        .\sgla_f_reg[19]_1 (fctl_n_12),
        .\sgla_f_reg[1]_0 (sgla_n_161),
        .\sgla_f_reg[1]_1 (fctl_n_17),
        .\sgla_f_reg[20]_0 (sgla_n_179),
        .\sgla_f_reg[20]_1 (fctl_n_11),
        .\sgla_f_reg[20]_2 (fctl_n_29),
        .\sgla_f_reg[21]_0 (sgla_n_56),
        .\sgla_f_reg[21]_1 (fctl_n_10),
        .\sgla_f_reg[22]_0 (sgla_n_192),
        .\sgla_f_reg[22]_1 (fctl_n_16),
        .\sgla_f_reg[23]_0 (sgla_n_55),
        .\sgla_f_reg[23]_1 (sgla_n_169),
        .\sgla_f_reg[23]_2 (fctl_n_28),
        .\sgla_f_reg[24]_0 (sgla_n_172),
        .\sgla_f_reg[24]_1 (fctl_n_19),
        .\sgla_f_reg[25]_0 (sgla_n_181),
        .\sgla_f_reg[25]_1 (fctl_n_20),
        .\sgla_f_reg[26]_0 (sgla_n_182),
        .\sgla_f_reg[27]_0 (sgla_n_193),
        .\sgla_f_reg[27]_1 (sgla_n_239),
        .\sgla_f_reg[28]_0 (fctl_n_200),
        .\sgla_f_reg[28]_1 (fctl_n_18),
        .\sgla_f_reg[2]_0 (sgla_n_163),
        .\sgla_f_reg[31]_0 (den__0),
        .\sgla_f_reg[31]_1 (sgla_n_229),
        .\sgla_f_reg[3]_0 (sgla_n_164),
        .\sgla_f_reg[5]_0 (fctl_n_8),
        .\sgla_f_reg[5]_1 (fctl_n_15),
        .\sgla_f_reg[7]_0 (fctl_n_14),
        .\sgla_f_reg[8]_0 (fctl_n_9),
        .\sgla_f_reg[8]_1 (fctl_n_13),
        .\sgla_f_reg[9]_0 (fctl_n_6),
        .\sgla_i_reg[10]_0 (sgla_n_60),
        .\sgla_i_reg[11]_0 (sgla_n_177),
        .\sgla_i_reg[12]_0 (sgla_n_175),
        .\sgla_i_reg[23]_0 (sgla_n_59),
        .\sgla_i_reg[24]_0 (sgla_n_58),
        .\sgla_i_reg[24]_1 (sgla_n_64),
        .\sgla_i_reg[24]_2 (sgla_n_65),
        .\sgla_i_reg[28]_0 (sgla_n_194),
        .\sgla_i_reg[29]_0 (sgla_n_165),
        .\sgla_i_reg[30]_0 (sgla_n_166),
        .\sgla_i_reg[31]_0 (sgla_n_167),
        .\sgla_i_reg[4]_0 (sgla_n_68),
        .\sgla_i_reg[5]_0 (sgla_n_190),
        .\sgla_i_reg[6]_0 (sgla_n_160),
        .\sgla_i_reg[7]_0 (sgla_n_162),
        .\sgla_i_reg[8]_0 (sgla_n_173),
        .sgla_r_0({sgla_r_0[44:43],sgla_r_0[41],sgla_r_0[39:0]}),
        .sgla_sft_fin(sgla_sft_fin),
        .\sglb_e_reg[1] (fctl_n_46),
        .\sglb_e_reg[2] (sgla_n_124),
        .\sglb_e_reg[2]_0 (fctl_n_41),
        .\sglb_e_reg[3] ({sgla_n_113,sgla_n_114,sgla_n_115,sgla_n_116}),
        .\sglb_e_reg[3]_0 (sgla_n_129),
        .\sglb_e_reg[3]_1 (fctl_n_44),
        .\sglb_e_reg[3]_2 (sglb_n_51),
        .\sglb_e_reg[3]_3 (sglb_n_48),
        .\sglb_e_reg[4] (sgla_n_117),
        .\sglb_e_reg[8] (sgla_n_49),
        .\sglb_e_reg[8]_i_15_0 (sglb_e),
        .\sglb_f_reg[26] (sgla_n_107),
        .\sglb_f_reg[27] (sgla_n_110),
        .\sglb_f_reg[28] (sgla_n_111),
        .\sglb_f_reg[28]_0 (fctl_n_43),
        .\sglb_f_reg[29] (sgla_n_112),
        .\sglb_f_reg[30] ({sgla_n_78,sgla_n_79,sgla_n_80,sgla_n_81,sgla_n_82,sgla_n_83,sgla_n_84,sgla_n_85,sgla_n_86,sgla_n_87,sgla_n_88,sgla_n_89,sgla_n_90,sgla_n_91,sgla_n_92,sgla_n_93,sgla_n_94,sgla_n_95,sgla_n_96,sgla_n_97,sgla_n_98,sgla_n_99,sgla_n_100,sgla_n_101,sgla_n_102,sgla_n_103}),
        .\sglb_f_reg[31] (fctl_n_42),
        .\sglb_f_reg[31]_0 ({sglb_n_79,sglb_n_80,sglb_n_81,sglb_n_82}),
        .sglb_nan0(sglb_nan0),
        .sglb_nan012_in(sglb_nan012_in),
        .sglb_r({sglb_r[42:41],sglb_r[39:1]}),
        .sglb_sft_fin(sglb_sft_fin),
        .sglc_e_carry(fdiv_n_14),
        .\sglc_f_reg[27] (fctl_n_50),
        .\sglc_f_reg[29] (fctl_n_118),
        .\sglc_f_reg[30] (fctl_n_117),
        .\sglc_f_reg[31] (fctl_n_116),
        .\sglc_i_reg[41] (stat[3]),
        .\sglc_i_reg[43] (fctl_n_68),
        .\sglc_i_reg[43]_0 (sglb_n_61),
        .\sglc_i_reg[43]_1 (sglb_n_66),
        .sglc_r_fadd(sglc_r_fadd[41]),
        .sglc_r_sgla({sglc_r_sgla[41],sglc_r_sgla[10:9]}),
        .sglc_s2__0(sglc_s2__0),
        .sglc_sr_flag(sglc_sr_flag),
        .\stat_reg[0] (sgla_n_43),
        .\stat_reg[0]_0 (sgla_n_51),
        .\stat_reg[0]_1 (sgla_n_52),
        .\stat_reg[0]_2 (sgla_n_53),
        .\stat_reg[2] (sgla_n_118),
        .\stat_reg[3] (sgla_n_44),
        .\stat_reg[3]_0 (sgla_n_45),
        .\stat_reg[3]_1 (sgla_n_46));
  sfpu_sglb sglb
       (.D({sgla_n_113,sgla_n_114,sgla_n_115,sgla_n_116}),
        .E({sgla_n_132,sgla_n_133}),
        .Q(sglb_e),
        .S({sglb_n_68,sglb_n_69,sglb_n_70}),
        .SR(p_0_in__0),
        .bbus(bbus),
        .cbus(cbus[31]),
        .\cbus[27] (sgla_n_197),
        .\cbus[27]_0 (fadd_n_32),
        .\cbus[31] (fctl_n_90),
        .\cbus[31]_0 (sgla_n_195),
        .\cbus[31]_1 (fctl_n_77),
        .\cbus[31]_2 (fctl_n_130),
        .\cbus[31]_3 (fctl_n_88),
        .\cbus[6] (sglc_r_fadd[42]),
        .\cbus[7] (fctl_n_132),
        .clk(clk),
        .data6(data6),
        .fctl_ccmd_add(fctl_ccmd_add),
        .fctl_ccmd_add_reg(sglb_n_55),
        .fctl_ccmd_hlf(fctl_ccmd_hlf),
        .fctl_ccmd_hlf_reg(sglb_n_57),
        .fctl_ccmd_hlf_reg_0(sglb_n_59),
        .fctl_ccmd_mul(fctl_ccmd_mul),
        .fctl_ccmd_mul_reg(sglb_n_61),
        .fctl_ccmd_sub(fctl_ccmd_sub),
        .fctl_load_b(fctl_load_b),
        .\sgla_i_reg[24] (sglb_n_66),
        .sgla_r_0({sgla_r_0[44:43],sgla_r_0[41],sgla_r_0[39:33]}),
        .\sglb_e[2]_i_4 (sgla_n_124),
        .\sglb_e[3]_i_3 (fctl_n_42),
        .\sglb_e[3]_i_3_0 (sgla_n_129),
        .\sglb_e_reg[0]_0 (sglb_n_47),
        .\sglb_e_reg[0]_1 (sglb_n_48),
        .\sglb_e_reg[0]_2 (sglb_n_49),
        .\sglb_e_reg[1]_0 (sglb_n_51),
        .\sglb_e_reg[3]_0 ({sglb_n_76,sglb_n_77,sglb_n_78}),
        .\sglb_e_reg[3]_i_4_0 ({p_0_in6_in,p_0_in3_in,p_0_in1_in_2,sgla_n_123}),
        .\sglb_e_reg[4]_0 (sgla_n_130),
        .\sglb_e_reg[4]_1 (sgla_n_117),
        .\sglb_e_reg[4]_2 (fctl_n_45),
        .\sglb_e_reg[4]_3 (sgla_n_108),
        .\sglb_e_reg[5]_0 (sgla_n_105),
        .\sglb_e_reg[5]_1 (sgla_n_118),
        .\sglb_e_reg[7]_0 (data1),
        .\sglb_e_reg[7]_1 ({sglb_n_71,sglb_n_72,sglb_n_73,sglb_n_74}),
        .\sglb_e_reg[7]_2 ({sglb_n_79,sglb_n_80,sglb_n_81,sglb_n_82}),
        .\sglb_e_reg[7]_i_5_0 ({sgla_n_125,sgla_n_126,sgla_n_127,p_0_in9_in}),
        .\sglb_e_reg[8]_0 (sglb_n_75),
        .\sglb_e_reg[8]_1 (sgla_n_106),
        .\sglb_e_reg[8]_2 (sgla_n_109),
        .\sglb_f_reg[29]_0 ({sgla_n_78,sgla_n_79,fctl_n_37,fctl_n_38,fctl_n_39,fctl_n_40,sgla_n_80,sgla_n_81,sgla_n_82,sgla_n_83,sgla_n_84,sgla_n_85,sgla_n_86,sgla_n_87,sgla_n_88,sgla_n_89,sgla_n_90,sgla_n_91,sgla_n_92,sgla_n_93,sgla_n_94,sgla_n_95,sgla_n_96,sgla_n_97,sgla_n_98,sgla_n_99,sgla_n_100,sgla_n_101,sgla_n_102,sgla_n_103}),
        .\sglb_f_reg[30]_0 (sgla_n_104),
        .\sglb_f_reg[31]_0 ({sgla_n_131,fctl_n_47}),
        .\sglb_i_reg[28]_0 ({sglb_r[42],sglb_r[39:0]}),
        .\sglb_i_reg[28]_1 (sglb_n_58),
        .\sglb_i_reg[30]_0 ({sglc_r_fadd[44],sglc_r_fadd[41]}),
        .\sglb_i_reg[31]_0 (sglb_n_56),
        .\sglb_i_reg[31]_1 (sglb_n_62),
        .\sglb_i_reg[31]_2 (sglb_n_65),
        .sglb_nan0(sglb_nan0),
        .sglb_nan012_in(sglb_nan012_in),
        .sglc_e_carry__1(sgla_e),
        .\sglc_i_reg[44] (fctl_n_82),
        .\sglc_i_reg[44]_0 (fctl_n_115),
        .\sglc_i_reg[44]_1 (sgla_n_198),
        .\sglc_i_reg[44]_2 (sgla_n_60),
        .\sglc_i_reg[44]_3 (sgla_n_65),
        .\sglc_i_reg[44]_4 (sgla_n_64),
        .sglc_nan(sglc_nan),
        .sglc_s2__0(sglc_s2__0),
        .sglc_sr_flag(sglc_sr_flag),
        .sglc_zer0(sglc_zer0));
endmodule
