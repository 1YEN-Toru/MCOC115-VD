
(* STRUCTURAL_NETLIST = "yes" *)
module fifo8s64
   (clk_wr,
    clk_rd,
    rst_wr_n,
    wr_n,
    rd_n,
    dat_wr,
    full_wr,
    full_wr_adv,
    empty_rd,
    empty_rd_adv,
    dat_rd);
//
// LUT FIFO IP
//		(c) 2023	1YEN Toru
//
//
//	2023/10/07	ver.1.00
//		for UART8N1 unit
//		`define FIFOIP_TOP		fifo8s64
//		`define FIFOIP_FWRC		fifo8s64_fwrc
//		`define FIFOIP_FRDC		fifo8s64_frdc
//		`define FIFOIP_FSYN		fifo8s64_sync
//		`define FIFOIP_LRAM		fifo8s64_lram
//		`define FIFOIP_DBIT		8
//		`define FIFOIP_ABIT		6
//		`define FIFOIP_SYNC
//		`define FIFOIP_AMAX		(1<<`FIFOIP_ABIT)
//		`define FIFOIP_ADVE		(`FIFOIP_AMAX/4)
//		`define FIFOIP_ADVF		(`FIFOIP_AMAX - `FIFOIP_ADVE - 1)
//
  input clk_wr;
  input clk_rd;
  input rst_wr_n;
  input wr_n;
  input rd_n;
  input [7:0]dat_wr;
  output full_wr;
  output full_wr_adv;
  output empty_rd;
  output empty_rd_adv;
  output [7:0]dat_rd;

  wire clk_rd;
  wire clk_wr;
  wire [7:0]dat_rd;
  wire [7:0]dat_wr;
  wire empty_rd;
  wire empty_rd_adv;
  wire frdc_n_10;
  wire frdc_n_11;
  wire frdc_n_12;
  wire frdc_n_13;
  wire frdc_n_14;
  wire frdc_n_15;
  wire frdc_n_9;
  wire full_wr;
  wire full_wr_adv;
  wire fwrc_n_10;
  wire p_0_in;
  wire [6:0]ptr_rd_pre;
  wire [6:0]ptr_wr_pre;
  wire rd_n;
  wire rst_wr_n;
  wire wr_n;

  fifo8s64_frdc frdc
       (.DI({frdc_n_10,frdc_n_11}),
        .Q(ptr_wr_pre),
        .SR(p_0_in),
        .clk_rd(clk_rd),
        .empty_rd_adv(empty_rd_adv),
        .empty_rd_reg_0(empty_rd),
        .\ptr_rd_reg[3]_0 ({frdc_n_12,frdc_n_13,frdc_n_14,frdc_n_15}),
        .\ptr_rd_reg[6]_0 (ptr_rd_pre),
        .rd_n(rd_n),
        .rd_n_0(frdc_n_9),
        .rst_wr_n(rst_wr_n));
  fifo8s64_fwrc fwrc
       (.DI({frdc_n_10,frdc_n_11}),
        .Q(ptr_wr_pre),
        .SR(p_0_in),
        .clk_wr(clk_wr),
        .full_wr_adv(full_wr_adv),
        .full_wr_reg_0(full_wr),
        .full_wr_reg_1({frdc_n_12,frdc_n_13,frdc_n_14,frdc_n_15}),
        .p_0_in(fwrc_n_10),
        .\ptr_wr_reg[6]_0 (ptr_rd_pre),
        .rst_wr_n(rst_wr_n),
        .wr_n(wr_n));
  fifo8s64_lram lram
       (.I5(fwrc_n_10),
        .Q(ptr_wr_pre[5:0]),
        .clk_rd(clk_rd),
        .clk_wr(clk_wr),
        .dat_rd(dat_rd),
        .dat_wr(dat_wr),
        .drv_rd_reg_0(frdc_n_9),
        .\mem_rd_reg[6]_0 (ptr_rd_pre[5:0]));
endmodule

module fifo8s64_frdc
   (empty_rd_reg_0,
    empty_rd_adv,
    \ptr_rd_reg[6]_0 ,
    rd_n_0,
    DI,
    \ptr_rd_reg[3]_0 ,
    Q,
    clk_rd,
    rd_n,
    rst_wr_n,
    SR);
  output empty_rd_reg_0;
  output empty_rd_adv;
  output [6:0]\ptr_rd_reg[6]_0 ;
  output rd_n_0;
  output [1:0]DI;
  output [3:0]\ptr_rd_reg[3]_0 ;
  input [6:0]Q;
  input clk_rd;
  input rd_n;
  input rst_wr_n;
  input [0:0]SR;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]DI;
  wire [6:0]Q;
  wire [0:0]SR;
  wire clk_rd;
  wire empty_rd_adv;
  wire empty_rd_adv_i_1_n_0;
  wire empty_rd_i_1_n_0;
  wire empty_rd_i_2_n_0;
  wire empty_rd_reg_0;
  wire \ptr_rd[0]_i_1_n_0 ;
  wire \ptr_rd[1]_i_1_n_0 ;
  wire \ptr_rd[2]_i_1_n_0 ;
  wire \ptr_rd[3]_i_1_n_0 ;
  wire \ptr_rd[4]_i_1_n_0 ;
  wire \ptr_rd[4]_i_2_n_0 ;
  wire \ptr_rd[5]_i_1_n_0 ;
  wire \ptr_rd[6]_i_2_n_0 ;
  wire \ptr_rd[6]_i_3_n_0 ;
  wire \ptr_rd[6]_i_4_n_0 ;
  wire [3:0]\ptr_rd_reg[3]_0 ;
  wire [6:0]\ptr_rd_reg[6]_0 ;
  wire rd_n;
  wire rd_n_0;
  wire rst_wr_n;
  wire [6:0]sub_rd;
  wire sub_rd_carry__0_i_1_n_0;
  wire sub_rd_carry__0_i_2_n_0;
  wire sub_rd_carry__0_i_3_n_0;
  wire sub_rd_carry__0_n_2;
  wire sub_rd_carry__0_n_3;
  wire sub_rd_carry_i_1_n_0;
  wire sub_rd_carry_i_2_n_0;
  wire sub_rd_carry_i_3_n_0;
  wire sub_rd_carry_i_4_n_0;
  wire sub_rd_carry_n_0;
  wire sub_rd_carry_n_1;
  wire sub_rd_carry_n_2;
  wire sub_rd_carry_n_3;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h1)) 
    drv_rd_i_1
       (.I0(rd_n),
        .I1(empty_rd_reg_0),
        .O(rd_n_0));
  LUT5 #(
    .INIT(32'h1101FFFF)) 
    empty_rd_adv_i_1
       (.I0(sub_rd[5]),
        .I1(sub_rd[6]),
        .I2(sub_rd[4]),
        .I3(empty_rd_i_2_n_0),
        .I4(rst_wr_n),
        .O(empty_rd_adv_i_1_n_0));
  FDRE empty_rd_adv_reg
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(empty_rd_adv_i_1_n_0),
        .Q(empty_rd_adv),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    empty_rd_i_1
       (.I0(sub_rd[5]),
        .I1(sub_rd[6]),
        .I2(sub_rd[4]),
        .I3(empty_rd_i_2_n_0),
        .I4(rst_wr_n),
        .O(empty_rd_i_1_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    empty_rd_i_2
       (.I0(sub_rd[1]),
        .I1(sub_rd[0]),
        .I2(sub_rd[3]),
        .I3(sub_rd[2]),
        .O(empty_rd_i_2_n_0));
  FDRE empty_rd_reg
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(empty_rd_i_1_n_0),
        .Q(empty_rd_reg_0),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'hE1)) 
    \ptr_rd[0]_i_1 
       (.I0(rd_n),
        .I1(empty_rd_reg_0),
        .I2(\ptr_rd_reg[6]_0 [0]),
        .O(\ptr_rd[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA9AA)) 
    \ptr_rd[1]_i_1 
       (.I0(\ptr_rd_reg[6]_0 [1]),
        .I1(rd_n),
        .I2(empty_rd_reg_0),
        .I3(\ptr_rd_reg[6]_0 [0]),
        .O(\ptr_rd[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFDFF0200)) 
    \ptr_rd[2]_i_1 
       (.I0(\ptr_rd_reg[6]_0 [1]),
        .I1(rd_n),
        .I2(empty_rd_reg_0),
        .I3(\ptr_rd_reg[6]_0 [0]),
        .I4(\ptr_rd_reg[6]_0 [2]),
        .O(\ptr_rd[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFF00080000)) 
    \ptr_rd[3]_i_1 
       (.I0(\ptr_rd_reg[6]_0 [2]),
        .I1(\ptr_rd_reg[6]_0 [0]),
        .I2(empty_rd_reg_0),
        .I3(rd_n),
        .I4(\ptr_rd_reg[6]_0 [1]),
        .I5(\ptr_rd_reg[6]_0 [3]),
        .O(\ptr_rd[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \ptr_rd[4]_i_1 
       (.I0(\ptr_rd_reg[6]_0 [3]),
        .I1(\ptr_rd_reg[6]_0 [1]),
        .I2(\ptr_rd[4]_i_2_n_0 ),
        .I3(\ptr_rd_reg[6]_0 [0]),
        .I4(\ptr_rd_reg[6]_0 [2]),
        .I5(\ptr_rd_reg[6]_0 [4]),
        .O(\ptr_rd[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ptr_rd[4]_i_2 
       (.I0(empty_rd_reg_0),
        .I1(rd_n),
        .O(\ptr_rd[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \ptr_rd[5]_i_1 
       (.I0(\ptr_rd_reg[6]_0 [4]),
        .I1(\ptr_rd[6]_i_4_n_0 ),
        .I2(\ptr_rd_reg[6]_0 [5]),
        .O(\ptr_rd[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h888F)) 
    \ptr_rd[6]_i_2 
       (.I0(Q[6]),
        .I1(\ptr_rd_reg[6]_0 [6]),
        .I2(rd_n),
        .I3(empty_rd_reg_0),
        .O(\ptr_rd[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00DF2020)) 
    \ptr_rd[6]_i_3 
       (.I0(\ptr_rd_reg[6]_0 [4]),
        .I1(\ptr_rd[6]_i_4_n_0 ),
        .I2(\ptr_rd_reg[6]_0 [5]),
        .I3(Q[6]),
        .I4(\ptr_rd_reg[6]_0 [6]),
        .O(\ptr_rd[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \ptr_rd[6]_i_4 
       (.I0(\ptr_rd_reg[6]_0 [2]),
        .I1(\ptr_rd_reg[6]_0 [0]),
        .I2(empty_rd_reg_0),
        .I3(rd_n),
        .I4(\ptr_rd_reg[6]_0 [1]),
        .I5(\ptr_rd_reg[6]_0 [3]),
        .O(\ptr_rd[6]_i_4_n_0 ));
  FDRE \ptr_rd_reg[0] 
       (.C(clk_rd),
        .CE(\ptr_rd[6]_i_2_n_0 ),
        .D(\ptr_rd[0]_i_1_n_0 ),
        .Q(\ptr_rd_reg[6]_0 [0]),
        .R(SR));
  FDRE \ptr_rd_reg[1] 
       (.C(clk_rd),
        .CE(\ptr_rd[6]_i_2_n_0 ),
        .D(\ptr_rd[1]_i_1_n_0 ),
        .Q(\ptr_rd_reg[6]_0 [1]),
        .R(SR));
  FDRE \ptr_rd_reg[2] 
       (.C(clk_rd),
        .CE(\ptr_rd[6]_i_2_n_0 ),
        .D(\ptr_rd[2]_i_1_n_0 ),
        .Q(\ptr_rd_reg[6]_0 [2]),
        .R(SR));
  FDRE \ptr_rd_reg[3] 
       (.C(clk_rd),
        .CE(\ptr_rd[6]_i_2_n_0 ),
        .D(\ptr_rd[3]_i_1_n_0 ),
        .Q(\ptr_rd_reg[6]_0 [3]),
        .R(SR));
  FDRE \ptr_rd_reg[4] 
       (.C(clk_rd),
        .CE(\ptr_rd[6]_i_2_n_0 ),
        .D(\ptr_rd[4]_i_1_n_0 ),
        .Q(\ptr_rd_reg[6]_0 [4]),
        .R(SR));
  FDRE \ptr_rd_reg[5] 
       (.C(clk_rd),
        .CE(\ptr_rd[6]_i_2_n_0 ),
        .D(\ptr_rd[5]_i_1_n_0 ),
        .Q(\ptr_rd_reg[6]_0 [5]),
        .R(SR));
  FDRE \ptr_rd_reg[6] 
       (.C(clk_rd),
        .CE(\ptr_rd[6]_i_2_n_0 ),
        .D(\ptr_rd[6]_i_3_n_0 ),
        .Q(\ptr_rd_reg[6]_0 [6]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sub_rd_carry
       (.CI(\<const0> ),
        .CO({sub_rd_carry_n_0,sub_rd_carry_n_1,sub_rd_carry_n_2,sub_rd_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI(Q[3:0]),
        .O(sub_rd[3:0]),
        .S({sub_rd_carry_i_1_n_0,sub_rd_carry_i_2_n_0,sub_rd_carry_i_3_n_0,sub_rd_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sub_rd_carry__0
       (.CI(sub_rd_carry_n_0),
        .CO({sub_rd_carry__0_n_2,sub_rd_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,Q[5:4]}),
        .O(sub_rd[6:4]),
        .S({\<const0> ,sub_rd_carry__0_i_1_n_0,sub_rd_carry__0_i_2_n_0,sub_rd_carry__0_i_3_n_0}));
  LUT5 #(
    .INIT(32'hA6AA5955)) 
    sub_rd_carry__0_i_1
       (.I0(Q[6]),
        .I1(\ptr_rd_reg[6]_0 [4]),
        .I2(\ptr_rd[6]_i_4_n_0 ),
        .I3(\ptr_rd_reg[6]_0 [5]),
        .I4(\ptr_rd_reg[6]_0 [6]),
        .O(sub_rd_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9699)) 
    sub_rd_carry__0_i_2
       (.I0(Q[5]),
        .I1(\ptr_rd_reg[6]_0 [5]),
        .I2(\ptr_rd[6]_i_4_n_0 ),
        .I3(\ptr_rd_reg[6]_0 [4]),
        .O(sub_rd_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sub_rd_carry__0_i_3
       (.I0(Q[4]),
        .I1(\ptr_rd_reg[6]_0 [4]),
        .I2(\ptr_rd[6]_i_4_n_0 ),
        .O(sub_rd_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9969999999999999)) 
    sub_rd_carry_i_1
       (.I0(Q[3]),
        .I1(\ptr_rd_reg[6]_0 [3]),
        .I2(\ptr_rd_reg[6]_0 [1]),
        .I3(\ptr_rd[4]_i_2_n_0 ),
        .I4(\ptr_rd_reg[6]_0 [0]),
        .I5(\ptr_rd_reg[6]_0 [2]),
        .O(sub_rd_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9999996999999999)) 
    sub_rd_carry_i_2
       (.I0(Q[2]),
        .I1(\ptr_rd_reg[6]_0 [2]),
        .I2(\ptr_rd_reg[6]_0 [0]),
        .I3(empty_rd_reg_0),
        .I4(rd_n),
        .I5(\ptr_rd_reg[6]_0 [1]),
        .O(sub_rd_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h99969999)) 
    sub_rd_carry_i_3
       (.I0(Q[1]),
        .I1(\ptr_rd_reg[6]_0 [1]),
        .I2(rd_n),
        .I3(empty_rd_reg_0),
        .I4(\ptr_rd_reg[6]_0 [0]),
        .O(sub_rd_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h9996)) 
    sub_rd_carry_i_4
       (.I0(Q[0]),
        .I1(\ptr_rd_reg[6]_0 [0]),
        .I2(empty_rd_reg_0),
        .I3(rd_n),
        .O(sub_rd_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sub_wr_carry__0_i_1
       (.I0(\ptr_rd_reg[6]_0 [5]),
        .O(DI[1]));
  LUT1 #(
    .INIT(2'h1)) 
    sub_wr_carry__0_i_2
       (.I0(\ptr_rd_reg[6]_0 [4]),
        .O(DI[0]));
  LUT1 #(
    .INIT(2'h1)) 
    sub_wr_carry_i_1
       (.I0(\ptr_rd_reg[6]_0 [3]),
        .O(\ptr_rd_reg[3]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    sub_wr_carry_i_2
       (.I0(\ptr_rd_reg[6]_0 [2]),
        .O(\ptr_rd_reg[3]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    sub_wr_carry_i_3
       (.I0(\ptr_rd_reg[6]_0 [1]),
        .O(\ptr_rd_reg[3]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    sub_wr_carry_i_4
       (.I0(\ptr_rd_reg[6]_0 [0]),
        .O(\ptr_rd_reg[3]_0 [0]));
endmodule

module fifo8s64_fwrc
   (full_wr_reg_0,
    full_wr_adv,
    SR,
    Q,
    p_0_in,
    full_wr_reg_1,
    DI,
    clk_wr,
    rst_wr_n,
    \ptr_wr_reg[6]_0 ,
    wr_n);
  output full_wr_reg_0;
  output full_wr_adv;
  output [0:0]SR;
  output [6:0]Q;
  output p_0_in;
  input [3:0]full_wr_reg_1;
  input [1:0]DI;
  input clk_wr;
  input rst_wr_n;
  input [6:0]\ptr_wr_reg[6]_0 ;
  input wr_n;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]DI;
  wire [6:0]Q;
  wire [0:0]SR;
  wire clk_wr;
  wire full_wr_adv;
  wire full_wr_adv_i_1_n_0;
  wire full_wr_i_1_n_0;
  wire full_wr_i_2_n_0;
  wire full_wr_i_3_n_0;
  wire full_wr_reg_0;
  wire [3:0]full_wr_reg_1;
  wire p_0_in;
  wire \ptr_wr[0]_i_1_n_0 ;
  wire \ptr_wr[1]_i_1_n_0 ;
  wire \ptr_wr[2]_i_1_n_0 ;
  wire \ptr_wr[3]_i_1_n_0 ;
  wire \ptr_wr[4]_i_1_n_0 ;
  wire \ptr_wr[5]_i_1_n_0 ;
  wire \ptr_wr[6]_i_1_n_0 ;
  wire \ptr_wr[6]_i_2_n_0 ;
  wire \ptr_wr[6]_i_3_n_0 ;
  wire \ptr_wr[6]_i_4_n_0 ;
  wire [6:0]\ptr_wr_reg[6]_0 ;
  wire rst_wr_n;
  wire [6:0]sub_wr;
  wire sub_wr_carry__0_i_3_n_0;
  wire sub_wr_carry__0_i_4_n_0;
  wire sub_wr_carry__0_i_5_n_0;
  wire sub_wr_carry__0_n_2;
  wire sub_wr_carry__0_n_3;
  wire sub_wr_carry_i_5_n_0;
  wire sub_wr_carry_i_6_n_0;
  wire sub_wr_carry_i_7_n_0;
  wire sub_wr_carry_i_8_n_0;
  wire sub_wr_carry_n_0;
  wire sub_wr_carry_n_1;
  wire sub_wr_carry_n_2;
  wire sub_wr_carry_n_3;
  wire wr_n;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFFEA0000)) 
    full_wr_adv_i_1
       (.I0(full_wr_i_2_n_0),
        .I1(sub_wr[5]),
        .I2(sub_wr[4]),
        .I3(sub_wr[6]),
        .I4(rst_wr_n),
        .O(full_wr_adv_i_1_n_0));
  FDRE full_wr_adv_reg
       (.C(clk_wr),
        .CE(\<const1> ),
        .D(full_wr_adv_i_1_n_0),
        .Q(full_wr_adv),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hAAAAAAAE00000000)) 
    full_wr_i_1
       (.I0(full_wr_i_2_n_0),
        .I1(full_wr_i_3_n_0),
        .I2(sub_wr[0]),
        .I3(sub_wr[1]),
        .I4(sub_wr[2]),
        .I5(rst_wr_n),
        .O(full_wr_i_1_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    full_wr_i_2
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\ptr_wr[6]_i_3_n_0 ),
        .O(full_wr_i_2_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    full_wr_i_3
       (.I0(sub_wr[5]),
        .I1(sub_wr[6]),
        .I2(sub_wr[4]),
        .I3(sub_wr[3]),
        .O(full_wr_i_3_n_0));
  FDRE full_wr_reg
       (.C(clk_wr),
        .CE(\<const1> ),
        .D(full_wr_i_1_n_0),
        .Q(full_wr_reg_0),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h1)) 
    mem_reg_0_63_0_2_i_1
       (.I0(wr_n),
        .I1(full_wr_reg_0),
        .O(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \ptr_rd[6]_i_1 
       (.I0(rst_wr_n),
        .O(SR));
  LUT3 #(
    .INIT(8'hA9)) 
    \ptr_wr[0]_i_1 
       (.I0(Q[0]),
        .I1(wr_n),
        .I2(full_wr_reg_0),
        .O(\ptr_wr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA9AA)) 
    \ptr_wr[1]_i_1 
       (.I0(Q[1]),
        .I1(full_wr_reg_0),
        .I2(wr_n),
        .I3(Q[0]),
        .O(\ptr_wr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    \ptr_wr[2]_i_1 
       (.I0(wr_n),
        .I1(full_wr_reg_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\ptr_wr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA9AAAAAAAAAAAAAA)) 
    \ptr_wr[3]_i_1 
       (.I0(Q[3]),
        .I1(wr_n),
        .I2(full_wr_reg_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\ptr_wr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9AAA)) 
    \ptr_wr[4]_i_1 
       (.I0(Q[4]),
        .I1(\ptr_wr[6]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\ptr_wr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \ptr_wr[5]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(\ptr_wr[6]_i_4_n_0 ),
        .O(\ptr_wr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h888F)) 
    \ptr_wr[6]_i_1 
       (.I0(Q[6]),
        .I1(\ptr_wr_reg[6]_0 [6]),
        .I2(wr_n),
        .I3(full_wr_reg_0),
        .O(\ptr_wr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0004FB04)) 
    \ptr_wr[6]_i_2 
       (.I0(\ptr_wr[6]_i_3_n_0 ),
        .I1(Q[5]),
        .I2(\ptr_wr[6]_i_4_n_0 ),
        .I3(Q[6]),
        .I4(\ptr_wr_reg[6]_0 [6]),
        .O(\ptr_wr[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \ptr_wr[6]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(\ptr_wr[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \ptr_wr[6]_i_4 
       (.I0(wr_n),
        .I1(full_wr_reg_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\ptr_wr[6]_i_4_n_0 ));
  FDRE \ptr_wr_reg[0] 
       (.C(clk_wr),
        .CE(\ptr_wr[6]_i_1_n_0 ),
        .D(\ptr_wr[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \ptr_wr_reg[1] 
       (.C(clk_wr),
        .CE(\ptr_wr[6]_i_1_n_0 ),
        .D(\ptr_wr[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \ptr_wr_reg[2] 
       (.C(clk_wr),
        .CE(\ptr_wr[6]_i_1_n_0 ),
        .D(\ptr_wr[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \ptr_wr_reg[3] 
       (.C(clk_wr),
        .CE(\ptr_wr[6]_i_1_n_0 ),
        .D(\ptr_wr[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \ptr_wr_reg[4] 
       (.C(clk_wr),
        .CE(\ptr_wr[6]_i_1_n_0 ),
        .D(\ptr_wr[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \ptr_wr_reg[5] 
       (.C(clk_wr),
        .CE(\ptr_wr[6]_i_1_n_0 ),
        .D(\ptr_wr[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \ptr_wr_reg[6] 
       (.C(clk_wr),
        .CE(\ptr_wr[6]_i_1_n_0 ),
        .D(\ptr_wr[6]_i_2_n_0 ),
        .Q(Q[6]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sub_wr_carry
       (.CI(\<const0> ),
        .CO({sub_wr_carry_n_0,sub_wr_carry_n_1,sub_wr_carry_n_2,sub_wr_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI(full_wr_reg_1),
        .O(sub_wr[3:0]),
        .S({sub_wr_carry_i_5_n_0,sub_wr_carry_i_6_n_0,sub_wr_carry_i_7_n_0,sub_wr_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sub_wr_carry__0
       (.CI(sub_wr_carry_n_0),
        .CO({sub_wr_carry__0_n_2,sub_wr_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,DI}),
        .O(sub_wr[6:4]),
        .S({\<const0> ,sub_wr_carry__0_i_3_n_0,sub_wr_carry__0_i_4_n_0,sub_wr_carry__0_i_5_n_0}));
  LUT5 #(
    .INIT(32'h99999699)) 
    sub_wr_carry__0_i_3
       (.I0(\ptr_wr_reg[6]_0 [6]),
        .I1(Q[6]),
        .I2(\ptr_wr[6]_i_3_n_0 ),
        .I3(Q[5]),
        .I4(\ptr_wr[6]_i_4_n_0 ),
        .O(sub_wr_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hBFFF40004000BFFF)) 
    sub_wr_carry__0_i_4
       (.I0(\ptr_wr[6]_i_4_n_0 ),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(\ptr_wr_reg[6]_0 [5]),
        .O(sub_wr_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'hF70808F7)) 
    sub_wr_carry__0_i_5
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\ptr_wr[6]_i_4_n_0 ),
        .I3(Q[4]),
        .I4(\ptr_wr_reg[6]_0 [4]),
        .O(sub_wr_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    sub_wr_carry_i_5
       (.I0(Q[2]),
        .I1(\ptr_wr[6]_i_4_n_0 ),
        .I2(Q[3]),
        .I3(\ptr_wr_reg[6]_0 [3]),
        .O(sub_wr_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAAAAA6A55555595)) 
    sub_wr_carry_i_6
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(full_wr_reg_0),
        .I4(wr_n),
        .I5(\ptr_wr_reg[6]_0 [2]),
        .O(sub_wr_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hFD0202FD)) 
    sub_wr_carry_i_7
       (.I0(Q[0]),
        .I1(wr_n),
        .I2(full_wr_reg_0),
        .I3(Q[1]),
        .I4(\ptr_wr_reg[6]_0 [1]),
        .O(sub_wr_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'hE11E)) 
    sub_wr_carry_i_8
       (.I0(full_wr_reg_0),
        .I1(wr_n),
        .I2(Q[0]),
        .I3(\ptr_wr_reg[6]_0 [0]),
        .O(sub_wr_carry_i_8_n_0));
endmodule

module fifo8s64_lram
   (dat_rd,
    drv_rd_reg_0,
    clk_rd,
    clk_wr,
    dat_wr,
    I5,
    \mem_rd_reg[6]_0 ,
    Q);
  output [7:0]dat_rd;
  input drv_rd_reg_0;
  input clk_rd;
  input clk_wr;
  input [7:0]dat_wr;
  input I5;
  input [5:0]\mem_rd_reg[6]_0 ;
  input [5:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire I5;
  wire [5:0]Q;
  wire clk_rd;
  wire clk_wr;
  wire [7:0]dat_rd;
  wire [7:0]dat_wr;
  wire drv_rd;
  wire drv_rd_reg_0;
  wire [7:0]mem_rd;
  wire [7:0]mem_rd0;
  wire [5:0]\mem_rd_reg[6]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h8)) 
    \dat_rd[0]_INST_0 
       (.I0(drv_rd),
        .I1(mem_rd[0]),
        .O(dat_rd[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \dat_rd[1]_INST_0 
       (.I0(drv_rd),
        .I1(mem_rd[1]),
        .O(dat_rd[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \dat_rd[2]_INST_0 
       (.I0(drv_rd),
        .I1(mem_rd[2]),
        .O(dat_rd[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \dat_rd[3]_INST_0 
       (.I0(drv_rd),
        .I1(mem_rd[3]),
        .O(dat_rd[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \dat_rd[4]_INST_0 
       (.I0(drv_rd),
        .I1(mem_rd[4]),
        .O(dat_rd[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \dat_rd[5]_INST_0 
       (.I0(drv_rd),
        .I1(mem_rd[5]),
        .O(dat_rd[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \dat_rd[6]_INST_0 
       (.I0(drv_rd),
        .I1(mem_rd[6]),
        .O(dat_rd[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \dat_rd[7]_INST_0 
       (.I0(drv_rd),
        .I1(mem_rd[7]),
        .O(dat_rd[7]));
  FDRE drv_rd_reg
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(drv_rd_reg_0),
        .Q(drv_rd),
        .R(\<const0> ));
  FDRE \mem_rd_reg[0] 
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(mem_rd0[0]),
        .Q(mem_rd[0]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[1] 
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(mem_rd0[1]),
        .Q(mem_rd[1]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[2] 
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(mem_rd0[2]),
        .Q(mem_rd[2]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[3] 
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(mem_rd0[3]),
        .Q(mem_rd[3]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[4] 
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(mem_rd0[4]),
        .Q(mem_rd[4]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[5] 
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(mem_rd0[5]),
        .Q(mem_rd[5]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[6] 
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(mem_rd0[6]),
        .Q(mem_rd[6]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[7] 
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(mem_rd0[7]),
        .Q(mem_rd[7]),
        .R(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "lram/mem_reg_0_63_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_0_63_0_2
       (.ADDRA(\mem_rd_reg[6]_0 ),
        .ADDRB(\mem_rd_reg[6]_0 ),
        .ADDRC(\mem_rd_reg[6]_0 ),
        .ADDRD(Q),
        .DIA(dat_wr[0]),
        .DIB(dat_wr[1]),
        .DIC(dat_wr[2]),
        .DID(\<const0> ),
        .DOA(mem_rd0[0]),
        .DOB(mem_rd0[1]),
        .DOC(mem_rd0[2]),
        .WCLK(clk_wr),
        .WE(I5));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "lram/mem_reg_0_63_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_0_63_3_5
       (.ADDRA(\mem_rd_reg[6]_0 ),
        .ADDRB(\mem_rd_reg[6]_0 ),
        .ADDRC(\mem_rd_reg[6]_0 ),
        .ADDRD(Q),
        .DIA(dat_wr[3]),
        .DIB(dat_wr[4]),
        .DIC(dat_wr[5]),
        .DID(\<const0> ),
        .DOA(mem_rd0[3]),
        .DOB(mem_rd0[4]),
        .DOC(mem_rd0[5]),
        .WCLK(clk_wr),
        .WE(I5));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "lram/mem_reg_0_63_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM64M mem_reg_0_63_6_7
       (.ADDRA(\mem_rd_reg[6]_0 ),
        .ADDRB(\mem_rd_reg[6]_0 ),
        .ADDRC(\mem_rd_reg[6]_0 ),
        .ADDRD(Q),
        .DIA(dat_wr[6]),
        .DIB(dat_wr[7]),
        .DIC(\<const0> ),
        .DID(\<const0> ),
        .DOA(mem_rd0[6]),
        .DOB(mem_rd0[7]),
        .WCLK(clk_wr),
        .WE(I5));
endmodule
