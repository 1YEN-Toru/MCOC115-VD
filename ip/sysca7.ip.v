
(* maxcnt_bootr = "32" *) (* maxcnt_reset = "64" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module sysca7
   (clk,
    locked_clk,
    sys_reset,
    sys_bootr,
    sys_mdsim,
    rst_n,
    bootmd,
    simumd);
//
//	System Controller for Cmod A7
//		(c) 2021,2023	1YEN Toru
//
//
//	2023/09/23	ver.1.00
//		new name: SYSCA7
//		corresponding to Cmod A7-35T
//		add: locked_clk: input clk stable, positive logic
//		add: sys_mdsim => simumd: simulation mode, positive logic
//
//	================================
//	2021/10/16	ver.1.06
//		Improved boot reset timing, again
//
//	2021/08/14	ver.1.04
//		Improved boot reset timing
//
//	2021/06/12	ver.1.02
//		corresponding to boot mode
//		boot reset control
//
//	2021/04/10	ver.1.00
//		synchronous reset control
//
  input clk;
  input locked_clk;
  input sys_reset;
  input sys_bootr;
  input sys_mdsim;
  output rst_n;
  output bootmd;
  output simumd;

  wire \<const0> ;
  wire \<const1> ;
  wire \arst_cnt[0]_i_3_n_0 ;
  wire [15:0]arst_cnt_reg;
  wire \arst_cnt_reg[0]_i_2_n_0 ;
  wire \arst_cnt_reg[0]_i_2_n_1 ;
  wire \arst_cnt_reg[0]_i_2_n_2 ;
  wire \arst_cnt_reg[0]_i_2_n_3 ;
  wire \arst_cnt_reg[0]_i_2_n_4 ;
  wire \arst_cnt_reg[0]_i_2_n_5 ;
  wire \arst_cnt_reg[0]_i_2_n_6 ;
  wire \arst_cnt_reg[0]_i_2_n_7 ;
  wire \arst_cnt_reg[12]_i_1_n_1 ;
  wire \arst_cnt_reg[12]_i_1_n_2 ;
  wire \arst_cnt_reg[12]_i_1_n_3 ;
  wire \arst_cnt_reg[12]_i_1_n_4 ;
  wire \arst_cnt_reg[12]_i_1_n_5 ;
  wire \arst_cnt_reg[12]_i_1_n_6 ;
  wire \arst_cnt_reg[12]_i_1_n_7 ;
  wire \arst_cnt_reg[4]_i_1_n_0 ;
  wire \arst_cnt_reg[4]_i_1_n_1 ;
  wire \arst_cnt_reg[4]_i_1_n_2 ;
  wire \arst_cnt_reg[4]_i_1_n_3 ;
  wire \arst_cnt_reg[4]_i_1_n_4 ;
  wire \arst_cnt_reg[4]_i_1_n_5 ;
  wire \arst_cnt_reg[4]_i_1_n_6 ;
  wire \arst_cnt_reg[4]_i_1_n_7 ;
  wire \arst_cnt_reg[8]_i_1_n_0 ;
  wire \arst_cnt_reg[8]_i_1_n_1 ;
  wire \arst_cnt_reg[8]_i_1_n_2 ;
  wire \arst_cnt_reg[8]_i_1_n_3 ;
  wire \arst_cnt_reg[8]_i_1_n_4 ;
  wire \arst_cnt_reg[8]_i_1_n_5 ;
  wire \arst_cnt_reg[8]_i_1_n_6 ;
  wire \arst_cnt_reg[8]_i_1_n_7 ;
  wire arst_n_inv_i_1_n_0;
  wire arst_n_inv_i_2_n_0;
  wire arst_n_inv_i_3_n_0;
  wire arst_n_inv_i_4_n_0;
  wire arst_n_reg_inv_n_0;
  wire bootmd;
  wire bootmd_i_1_n_0;
  wire \brst_cnt[0]_i_3_n_0 ;
  wire [15:0]brst_cnt_reg;
  wire \brst_cnt_reg[0]_i_2_n_0 ;
  wire \brst_cnt_reg[0]_i_2_n_1 ;
  wire \brst_cnt_reg[0]_i_2_n_2 ;
  wire \brst_cnt_reg[0]_i_2_n_3 ;
  wire \brst_cnt_reg[0]_i_2_n_4 ;
  wire \brst_cnt_reg[0]_i_2_n_5 ;
  wire \brst_cnt_reg[0]_i_2_n_6 ;
  wire \brst_cnt_reg[0]_i_2_n_7 ;
  wire \brst_cnt_reg[12]_i_1_n_1 ;
  wire \brst_cnt_reg[12]_i_1_n_2 ;
  wire \brst_cnt_reg[12]_i_1_n_3 ;
  wire \brst_cnt_reg[12]_i_1_n_4 ;
  wire \brst_cnt_reg[12]_i_1_n_5 ;
  wire \brst_cnt_reg[12]_i_1_n_6 ;
  wire \brst_cnt_reg[12]_i_1_n_7 ;
  wire \brst_cnt_reg[4]_i_1_n_0 ;
  wire \brst_cnt_reg[4]_i_1_n_1 ;
  wire \brst_cnt_reg[4]_i_1_n_2 ;
  wire \brst_cnt_reg[4]_i_1_n_3 ;
  wire \brst_cnt_reg[4]_i_1_n_4 ;
  wire \brst_cnt_reg[4]_i_1_n_5 ;
  wire \brst_cnt_reg[4]_i_1_n_6 ;
  wire \brst_cnt_reg[4]_i_1_n_7 ;
  wire \brst_cnt_reg[8]_i_1_n_0 ;
  wire \brst_cnt_reg[8]_i_1_n_1 ;
  wire \brst_cnt_reg[8]_i_1_n_2 ;
  wire \brst_cnt_reg[8]_i_1_n_3 ;
  wire \brst_cnt_reg[8]_i_1_n_4 ;
  wire \brst_cnt_reg[8]_i_1_n_5 ;
  wire \brst_cnt_reg[8]_i_1_n_6 ;
  wire \brst_cnt_reg[8]_i_1_n_7 ;
  wire brst_n0;
  wire brst_n_inv_i_1_n_0;
  wire brst_n_inv_i_2_n_0;
  wire brst_n_inv_i_3_n_0;
  wire brst_n_inv_i_4_n_0;
  wire clear;
  wire clk;
  wire locked_clk;
  wire rst_n;
  wire sel;
  wire simumd;
  wire simumd_i_1_n_0;
  wire sys_bootr;
  wire sys_bootr_n_s1;
  wire sys_bootr_n_s1_i_1_n_0;
  wire sys_bootr_n_s2;
  wire sys_mdsim;
  wire sys_mdsim_s1;
  wire sys_mdsim_s2;
  wire sys_reset;
  wire sys_reset_n_s1;
  wire sys_reset_n_s1_i_1_n_0;
  wire sys_reset_n_s2;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \arst_cnt[0]_i_1 
       (.I0(sys_reset_n_s2),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \arst_cnt[0]_i_3 
       (.I0(arst_cnt_reg[0]),
        .O(\arst_cnt[0]_i_3_n_0 ));
  FDRE \arst_cnt_reg[0] 
       (.C(clk),
        .CE(arst_n_reg_inv_n_0),
        .D(\arst_cnt_reg[0]_i_2_n_7 ),
        .Q(arst_cnt_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \arst_cnt_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\arst_cnt_reg[0]_i_2_n_0 ,\arst_cnt_reg[0]_i_2_n_1 ,\arst_cnt_reg[0]_i_2_n_2 ,\arst_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\arst_cnt_reg[0]_i_2_n_4 ,\arst_cnt_reg[0]_i_2_n_5 ,\arst_cnt_reg[0]_i_2_n_6 ,\arst_cnt_reg[0]_i_2_n_7 }),
        .S({arst_cnt_reg[3:1],\arst_cnt[0]_i_3_n_0 }));
  FDRE \arst_cnt_reg[10] 
       (.C(clk),
        .CE(arst_n_reg_inv_n_0),
        .D(\arst_cnt_reg[8]_i_1_n_5 ),
        .Q(arst_cnt_reg[10]),
        .R(clear));
  FDRE \arst_cnt_reg[11] 
       (.C(clk),
        .CE(arst_n_reg_inv_n_0),
        .D(\arst_cnt_reg[8]_i_1_n_4 ),
        .Q(arst_cnt_reg[11]),
        .R(clear));
  FDRE \arst_cnt_reg[12] 
       (.C(clk),
        .CE(arst_n_reg_inv_n_0),
        .D(\arst_cnt_reg[12]_i_1_n_7 ),
        .Q(arst_cnt_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \arst_cnt_reg[12]_i_1 
       (.CI(\arst_cnt_reg[8]_i_1_n_0 ),
        .CO({\arst_cnt_reg[12]_i_1_n_1 ,\arst_cnt_reg[12]_i_1_n_2 ,\arst_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\arst_cnt_reg[12]_i_1_n_4 ,\arst_cnt_reg[12]_i_1_n_5 ,\arst_cnt_reg[12]_i_1_n_6 ,\arst_cnt_reg[12]_i_1_n_7 }),
        .S(arst_cnt_reg[15:12]));
  FDRE \arst_cnt_reg[13] 
       (.C(clk),
        .CE(arst_n_reg_inv_n_0),
        .D(\arst_cnt_reg[12]_i_1_n_6 ),
        .Q(arst_cnt_reg[13]),
        .R(clear));
  FDRE \arst_cnt_reg[14] 
       (.C(clk),
        .CE(arst_n_reg_inv_n_0),
        .D(\arst_cnt_reg[12]_i_1_n_5 ),
        .Q(arst_cnt_reg[14]),
        .R(clear));
  FDRE \arst_cnt_reg[15] 
       (.C(clk),
        .CE(arst_n_reg_inv_n_0),
        .D(\arst_cnt_reg[12]_i_1_n_4 ),
        .Q(arst_cnt_reg[15]),
        .R(clear));
  FDRE \arst_cnt_reg[1] 
       (.C(clk),
        .CE(arst_n_reg_inv_n_0),
        .D(\arst_cnt_reg[0]_i_2_n_6 ),
        .Q(arst_cnt_reg[1]),
        .R(clear));
  FDRE \arst_cnt_reg[2] 
       (.C(clk),
        .CE(arst_n_reg_inv_n_0),
        .D(\arst_cnt_reg[0]_i_2_n_5 ),
        .Q(arst_cnt_reg[2]),
        .R(clear));
  FDRE \arst_cnt_reg[3] 
       (.C(clk),
        .CE(arst_n_reg_inv_n_0),
        .D(\arst_cnt_reg[0]_i_2_n_4 ),
        .Q(arst_cnt_reg[3]),
        .R(clear));
  FDRE \arst_cnt_reg[4] 
       (.C(clk),
        .CE(arst_n_reg_inv_n_0),
        .D(\arst_cnt_reg[4]_i_1_n_7 ),
        .Q(arst_cnt_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \arst_cnt_reg[4]_i_1 
       (.CI(\arst_cnt_reg[0]_i_2_n_0 ),
        .CO({\arst_cnt_reg[4]_i_1_n_0 ,\arst_cnt_reg[4]_i_1_n_1 ,\arst_cnt_reg[4]_i_1_n_2 ,\arst_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\arst_cnt_reg[4]_i_1_n_4 ,\arst_cnt_reg[4]_i_1_n_5 ,\arst_cnt_reg[4]_i_1_n_6 ,\arst_cnt_reg[4]_i_1_n_7 }),
        .S(arst_cnt_reg[7:4]));
  FDRE \arst_cnt_reg[5] 
       (.C(clk),
        .CE(arst_n_reg_inv_n_0),
        .D(\arst_cnt_reg[4]_i_1_n_6 ),
        .Q(arst_cnt_reg[5]),
        .R(clear));
  FDRE \arst_cnt_reg[6] 
       (.C(clk),
        .CE(arst_n_reg_inv_n_0),
        .D(\arst_cnt_reg[4]_i_1_n_5 ),
        .Q(arst_cnt_reg[6]),
        .R(clear));
  FDRE \arst_cnt_reg[7] 
       (.C(clk),
        .CE(arst_n_reg_inv_n_0),
        .D(\arst_cnt_reg[4]_i_1_n_4 ),
        .Q(arst_cnt_reg[7]),
        .R(clear));
  FDRE \arst_cnt_reg[8] 
       (.C(clk),
        .CE(arst_n_reg_inv_n_0),
        .D(\arst_cnt_reg[8]_i_1_n_7 ),
        .Q(arst_cnt_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \arst_cnt_reg[8]_i_1 
       (.CI(\arst_cnt_reg[4]_i_1_n_0 ),
        .CO({\arst_cnt_reg[8]_i_1_n_0 ,\arst_cnt_reg[8]_i_1_n_1 ,\arst_cnt_reg[8]_i_1_n_2 ,\arst_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\arst_cnt_reg[8]_i_1_n_4 ,\arst_cnt_reg[8]_i_1_n_5 ,\arst_cnt_reg[8]_i_1_n_6 ,\arst_cnt_reg[8]_i_1_n_7 }),
        .S(arst_cnt_reg[11:8]));
  FDRE \arst_cnt_reg[9] 
       (.C(clk),
        .CE(arst_n_reg_inv_n_0),
        .D(\arst_cnt_reg[8]_i_1_n_6 ),
        .Q(arst_cnt_reg[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'h2AAAFFFF)) 
    arst_n_inv_i_1
       (.I0(arst_n_reg_inv_n_0),
        .I1(arst_n_inv_i_2_n_0),
        .I2(arst_n_inv_i_3_n_0),
        .I3(arst_n_inv_i_4_n_0),
        .I4(sys_reset_n_s2),
        .O(arst_n_inv_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    arst_n_inv_i_2
       (.I0(arst_cnt_reg[12]),
        .I1(arst_cnt_reg[13]),
        .I2(arst_cnt_reg[10]),
        .I3(arst_cnt_reg[11]),
        .I4(arst_cnt_reg[15]),
        .I5(arst_cnt_reg[14]),
        .O(arst_n_inv_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    arst_n_inv_i_3
       (.I0(arst_cnt_reg[1]),
        .I1(arst_cnt_reg[0]),
        .I2(arst_cnt_reg[3]),
        .I3(arst_cnt_reg[2]),
        .O(arst_n_inv_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    arst_n_inv_i_4
       (.I0(arst_cnt_reg[6]),
        .I1(arst_cnt_reg[7]),
        .I2(arst_cnt_reg[4]),
        .I3(arst_cnt_reg[5]),
        .I4(arst_cnt_reg[9]),
        .I5(arst_cnt_reg[8]),
        .O(arst_n_inv_i_4_n_0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    arst_n_reg_inv
       (.C(clk),
        .CE(\<const1> ),
        .D(arst_n_inv_i_1_n_0),
        .Q(arst_n_reg_inv_n_0),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h32)) 
    bootmd_i_1
       (.I0(sel),
        .I1(arst_n_reg_inv_n_0),
        .I2(bootmd),
        .O(bootmd_i_1_n_0));
  FDRE bootmd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(bootmd_i_1_n_0),
        .Q(bootmd),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h7)) 
    \brst_cnt[0]_i_1 
       (.I0(sys_reset_n_s2),
        .I1(sys_bootr_n_s2),
        .O(brst_n0));
  LUT1 #(
    .INIT(2'h1)) 
    \brst_cnt[0]_i_3 
       (.I0(brst_cnt_reg[0]),
        .O(\brst_cnt[0]_i_3_n_0 ));
  FDRE \brst_cnt_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(\brst_cnt_reg[0]_i_2_n_7 ),
        .Q(brst_cnt_reg[0]),
        .R(brst_n0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \brst_cnt_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\brst_cnt_reg[0]_i_2_n_0 ,\brst_cnt_reg[0]_i_2_n_1 ,\brst_cnt_reg[0]_i_2_n_2 ,\brst_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\brst_cnt_reg[0]_i_2_n_4 ,\brst_cnt_reg[0]_i_2_n_5 ,\brst_cnt_reg[0]_i_2_n_6 ,\brst_cnt_reg[0]_i_2_n_7 }),
        .S({brst_cnt_reg[3:1],\brst_cnt[0]_i_3_n_0 }));
  FDRE \brst_cnt_reg[10] 
       (.C(clk),
        .CE(sel),
        .D(\brst_cnt_reg[8]_i_1_n_5 ),
        .Q(brst_cnt_reg[10]),
        .R(brst_n0));
  FDRE \brst_cnt_reg[11] 
       (.C(clk),
        .CE(sel),
        .D(\brst_cnt_reg[8]_i_1_n_4 ),
        .Q(brst_cnt_reg[11]),
        .R(brst_n0));
  FDRE \brst_cnt_reg[12] 
       (.C(clk),
        .CE(sel),
        .D(\brst_cnt_reg[12]_i_1_n_7 ),
        .Q(brst_cnt_reg[12]),
        .R(brst_n0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \brst_cnt_reg[12]_i_1 
       (.CI(\brst_cnt_reg[8]_i_1_n_0 ),
        .CO({\brst_cnt_reg[12]_i_1_n_1 ,\brst_cnt_reg[12]_i_1_n_2 ,\brst_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\brst_cnt_reg[12]_i_1_n_4 ,\brst_cnt_reg[12]_i_1_n_5 ,\brst_cnt_reg[12]_i_1_n_6 ,\brst_cnt_reg[12]_i_1_n_7 }),
        .S(brst_cnt_reg[15:12]));
  FDRE \brst_cnt_reg[13] 
       (.C(clk),
        .CE(sel),
        .D(\brst_cnt_reg[12]_i_1_n_6 ),
        .Q(brst_cnt_reg[13]),
        .R(brst_n0));
  FDRE \brst_cnt_reg[14] 
       (.C(clk),
        .CE(sel),
        .D(\brst_cnt_reg[12]_i_1_n_5 ),
        .Q(brst_cnt_reg[14]),
        .R(brst_n0));
  FDRE \brst_cnt_reg[15] 
       (.C(clk),
        .CE(sel),
        .D(\brst_cnt_reg[12]_i_1_n_4 ),
        .Q(brst_cnt_reg[15]),
        .R(brst_n0));
  FDRE \brst_cnt_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(\brst_cnt_reg[0]_i_2_n_6 ),
        .Q(brst_cnt_reg[1]),
        .R(brst_n0));
  FDRE \brst_cnt_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(\brst_cnt_reg[0]_i_2_n_5 ),
        .Q(brst_cnt_reg[2]),
        .R(brst_n0));
  FDRE \brst_cnt_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(\brst_cnt_reg[0]_i_2_n_4 ),
        .Q(brst_cnt_reg[3]),
        .R(brst_n0));
  FDRE \brst_cnt_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(\brst_cnt_reg[4]_i_1_n_7 ),
        .Q(brst_cnt_reg[4]),
        .R(brst_n0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \brst_cnt_reg[4]_i_1 
       (.CI(\brst_cnt_reg[0]_i_2_n_0 ),
        .CO({\brst_cnt_reg[4]_i_1_n_0 ,\brst_cnt_reg[4]_i_1_n_1 ,\brst_cnt_reg[4]_i_1_n_2 ,\brst_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\brst_cnt_reg[4]_i_1_n_4 ,\brst_cnt_reg[4]_i_1_n_5 ,\brst_cnt_reg[4]_i_1_n_6 ,\brst_cnt_reg[4]_i_1_n_7 }),
        .S(brst_cnt_reg[7:4]));
  FDRE \brst_cnt_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(\brst_cnt_reg[4]_i_1_n_6 ),
        .Q(brst_cnt_reg[5]),
        .R(brst_n0));
  FDRE \brst_cnt_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(\brst_cnt_reg[4]_i_1_n_5 ),
        .Q(brst_cnt_reg[6]),
        .R(brst_n0));
  FDRE \brst_cnt_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(\brst_cnt_reg[4]_i_1_n_4 ),
        .Q(brst_cnt_reg[7]),
        .R(brst_n0));
  FDRE \brst_cnt_reg[8] 
       (.C(clk),
        .CE(sel),
        .D(\brst_cnt_reg[8]_i_1_n_7 ),
        .Q(brst_cnt_reg[8]),
        .R(brst_n0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \brst_cnt_reg[8]_i_1 
       (.CI(\brst_cnt_reg[4]_i_1_n_0 ),
        .CO({\brst_cnt_reg[8]_i_1_n_0 ,\brst_cnt_reg[8]_i_1_n_1 ,\brst_cnt_reg[8]_i_1_n_2 ,\brst_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\brst_cnt_reg[8]_i_1_n_4 ,\brst_cnt_reg[8]_i_1_n_5 ,\brst_cnt_reg[8]_i_1_n_6 ,\brst_cnt_reg[8]_i_1_n_7 }),
        .S(brst_cnt_reg[11:8]));
  FDRE \brst_cnt_reg[9] 
       (.C(clk),
        .CE(sel),
        .D(\brst_cnt_reg[8]_i_1_n_6 ),
        .Q(brst_cnt_reg[9]),
        .R(brst_n0));
  LUT6 #(
    .INIT(64'h2AAAFFFFFFFFFFFF)) 
    brst_n_inv_i_1
       (.I0(sel),
        .I1(brst_n_inv_i_2_n_0),
        .I2(brst_n_inv_i_3_n_0),
        .I3(brst_n_inv_i_4_n_0),
        .I4(sys_bootr_n_s2),
        .I5(sys_reset_n_s2),
        .O(brst_n_inv_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    brst_n_inv_i_2
       (.I0(brst_cnt_reg[12]),
        .I1(brst_cnt_reg[13]),
        .I2(brst_cnt_reg[10]),
        .I3(brst_cnt_reg[11]),
        .I4(brst_cnt_reg[15]),
        .I5(brst_cnt_reg[14]),
        .O(brst_n_inv_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    brst_n_inv_i_3
       (.I0(brst_cnt_reg[1]),
        .I1(brst_cnt_reg[0]),
        .I2(brst_cnt_reg[3]),
        .I3(brst_cnt_reg[2]),
        .O(brst_n_inv_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    brst_n_inv_i_4
       (.I0(brst_cnt_reg[6]),
        .I1(brst_cnt_reg[7]),
        .I2(brst_cnt_reg[5]),
        .I3(brst_cnt_reg[4]),
        .I4(brst_cnt_reg[9]),
        .I5(brst_cnt_reg[8]),
        .O(brst_n_inv_i_4_n_0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    brst_n_reg_inv
       (.C(clk),
        .CE(\<const1> ),
        .D(brst_n_inv_i_1_n_0),
        .Q(sel),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h1)) 
    rst_n_INST_0
       (.I0(arst_n_reg_inv_n_0),
        .I1(sel),
        .O(rst_n));
  LUT4 #(
    .INIT(16'hABA8)) 
    simumd_i_1
       (.I0(sys_mdsim_s2),
        .I1(sel),
        .I2(arst_n_reg_inv_n_0),
        .I3(simumd),
        .O(simumd_i_1_n_0));
  FDRE simumd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(simumd_i_1_n_0),
        .Q(simumd),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h2)) 
    sys_bootr_n_s1_i_1
       (.I0(locked_clk),
        .I1(sys_bootr),
        .O(sys_bootr_n_s1_i_1_n_0));
  FDRE sys_bootr_n_s1_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sys_bootr_n_s1_i_1_n_0),
        .Q(sys_bootr_n_s1),
        .R(\<const0> ));
  FDRE sys_bootr_n_s2_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sys_bootr_n_s1),
        .Q(sys_bootr_n_s2),
        .R(\<const0> ));
  FDRE sys_mdsim_s1_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sys_mdsim),
        .Q(sys_mdsim_s1),
        .R(\<const0> ));
  FDRE sys_mdsim_s2_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sys_mdsim_s1),
        .Q(sys_mdsim_s2),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h2)) 
    sys_reset_n_s1_i_1
       (.I0(locked_clk),
        .I1(sys_reset),
        .O(sys_reset_n_s1_i_1_n_0));
  FDRE sys_reset_n_s1_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sys_reset_n_s1_i_1_n_0),
        .Q(sys_reset_n_s1),
        .R(\<const0> ));
  FDRE sys_reset_n_s2_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sys_reset_n_s1),
        .Q(sys_reset_n_s2),
        .R(\<const0> ));
endmodule
