
(* STRUCTURAL_NETLIST = "yes" *)
module fifo16s64
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
//	2023/11/04	ver.1.00
//		for ICFF16 unit
//		`define FIFOIP_TOP		fifo16s64
//		`define FIFOIP_FWRC		fifo16s64_fwrc
//		`define FIFOIP_FRDC		fifo16s64_frdc
//		`define FIFOIP_FSYN		fifo16s64_sync
//		`define FIFOIP_LRAM		fifo16s64_lram
//		`define FIFOIP_DBIT		16
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
  input [15:0]dat_wr;
  output full_wr;
  output full_wr_adv;
  output empty_rd;
  output empty_rd_adv;
  output [15:0]dat_rd;

  wire [5:0]adr_rd;
  wire [5:0]adr_wr;
  wire clear;
  wire clk_rd;
  wire clk_wr;
  wire [15:0]dat_rd;
  wire [15:0]dat_wr;
  wire empty_rd;
  wire empty_rd_adv;
  wire frdc_n_8;
  wire full_wr;
  wire full_wr_adv;
  wire p_0_in;
  wire rd_n;
  wire rst_wr_n;
  wire wr_n;

  fifo16s64_frdc frdc
       (.E(frdc_n_8),
        .Q(adr_wr),
        .SR(clear),
        .clk_rd(clk_rd),
        .empty_rd_adv(empty_rd_adv),
        .empty_rd_reg_0(empty_rd),
        .\ptr_rd_reg[5]_0 (adr_rd),
        .rd_n(rd_n),
        .rst_wr_n(rst_wr_n));
  fifo16s64_fwrc fwrc
       (.Q(adr_wr),
        .SR(clear),
        .clk_wr(clk_wr),
        .full_wr_adv(full_wr_adv),
        .full_wr_reg_0(full_wr),
        .p_0_in(p_0_in),
        .rst_wr_n(rst_wr_n),
        .sub_wr_carry__0_0(adr_rd),
        .wr_n(wr_n));
  fifo16s64_lram lram
       (.E(frdc_n_8),
        .Q(adr_wr),
        .clk_rd(clk_rd),
        .clk_wr(clk_wr),
        .dat_rd(dat_rd),
        .dat_wr(dat_wr),
        .\mem_rd_reg[12]_0 (adr_rd),
        .p_0_in(p_0_in));
endmodule

module fifo16s64_frdc
   (empty_rd_adv,
    empty_rd_reg_0,
    \ptr_rd_reg[5]_0 ,
    E,
    SR,
    clk_rd,
    Q,
    rd_n,
    rst_wr_n);
  output empty_rd_adv;
  output empty_rd_reg_0;
  output [5:0]\ptr_rd_reg[5]_0 ;
  output [0:0]E;
  input [0:0]SR;
  input clk_rd;
  input [5:0]Q;
  input rd_n;
  input rst_wr_n;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]E;
  wire [5:0]Q;
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
  wire \ptr_rd[5]_i_1_n_0 ;
  wire \ptr_rd[5]_i_2_n_0 ;
  wire [5:0]\ptr_rd_reg[5]_0 ;
  wire rd_n;
  wire rst_wr_n;
  wire [5:0]sel0;
  wire sub_rd_carry__0_i_1_n_0;
  wire sub_rd_carry__0_i_2_n_0;
  wire sub_rd_carry__0_n_1;
  wire sub_rd_carry__0_n_3;
  wire sub_rd_carry_i_1_n_0;
  wire sub_rd_carry_i_2_n_0;
  wire sub_rd_carry_i_3_n_0;
  wire sub_rd_carry_i_4_n_0;
  wire sub_rd_carry_i_5_n_0;
  wire sub_rd_carry_n_0;
  wire sub_rd_carry_n_1;
  wire sub_rd_carry_n_2;
  wire sub_rd_carry_n_3;
  wire [3:0]NLW_sub_rd_carry__0_CO_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h1)) 
    drv_rd_i_1
       (.I0(empty_rd_reg_0),
        .I1(rd_n),
        .O(E));
  LUT6 #(
    .INIT(64'h000000010000FFFF)) 
    empty_rd_adv_i_1
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[5]),
        .I5(sel0[4]),
        .O(empty_rd_adv_i_1_n_0));
  FDSE empty_rd_adv_reg
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(empty_rd_adv_i_1_n_0),
        .Q(empty_rd_adv),
        .S(SR));
  LUT3 #(
    .INIT(8'h8F)) 
    empty_rd_i_1
       (.I0(sub_rd_carry__0_n_1),
        .I1(empty_rd_i_2_n_0),
        .I2(rst_wr_n),
        .O(empty_rd_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    empty_rd_i_2
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[5]),
        .I5(sel0[4]),
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
       (.I0(empty_rd_reg_0),
        .I1(rd_n),
        .I2(\ptr_rd_reg[5]_0 [0]),
        .O(\ptr_rd[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD02)) 
    \ptr_rd[1]_i_1 
       (.I0(\ptr_rd_reg[5]_0 [0]),
        .I1(rd_n),
        .I2(empty_rd_reg_0),
        .I3(\ptr_rd_reg[5]_0 [1]),
        .O(\ptr_rd[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFDFF0200)) 
    \ptr_rd[2]_i_1 
       (.I0(\ptr_rd_reg[5]_0 [1]),
        .I1(empty_rd_reg_0),
        .I2(rd_n),
        .I3(\ptr_rd_reg[5]_0 [0]),
        .I4(\ptr_rd_reg[5]_0 [2]),
        .O(\ptr_rd[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFF00080000)) 
    \ptr_rd[3]_i_1 
       (.I0(\ptr_rd_reg[5]_0 [2]),
        .I1(\ptr_rd_reg[5]_0 [0]),
        .I2(rd_n),
        .I3(empty_rd_reg_0),
        .I4(\ptr_rd_reg[5]_0 [1]),
        .I5(\ptr_rd_reg[5]_0 [3]),
        .O(\ptr_rd[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ptr_rd[4]_i_1 
       (.I0(\ptr_rd[5]_i_2_n_0 ),
        .I1(\ptr_rd_reg[5]_0 [4]),
        .O(\ptr_rd[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \ptr_rd[5]_i_1 
       (.I0(\ptr_rd_reg[5]_0 [4]),
        .I1(\ptr_rd[5]_i_2_n_0 ),
        .I2(\ptr_rd_reg[5]_0 [5]),
        .O(\ptr_rd[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \ptr_rd[5]_i_2 
       (.I0(\ptr_rd_reg[5]_0 [2]),
        .I1(\ptr_rd_reg[5]_0 [0]),
        .I2(rd_n),
        .I3(empty_rd_reg_0),
        .I4(\ptr_rd_reg[5]_0 [1]),
        .I5(\ptr_rd_reg[5]_0 [3]),
        .O(\ptr_rd[5]_i_2_n_0 ));
  FDRE \ptr_rd_reg[0] 
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(\ptr_rd[0]_i_1_n_0 ),
        .Q(\ptr_rd_reg[5]_0 [0]),
        .R(SR));
  FDRE \ptr_rd_reg[1] 
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(\ptr_rd[1]_i_1_n_0 ),
        .Q(\ptr_rd_reg[5]_0 [1]),
        .R(SR));
  FDRE \ptr_rd_reg[2] 
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(\ptr_rd[2]_i_1_n_0 ),
        .Q(\ptr_rd_reg[5]_0 [2]),
        .R(SR));
  FDRE \ptr_rd_reg[3] 
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(\ptr_rd[3]_i_1_n_0 ),
        .Q(\ptr_rd_reg[5]_0 [3]),
        .R(SR));
  FDRE \ptr_rd_reg[4] 
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(\ptr_rd[4]_i_1_n_0 ),
        .Q(\ptr_rd_reg[5]_0 [4]),
        .R(SR));
  FDRE \ptr_rd_reg[5] 
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(\ptr_rd[5]_i_1_n_0 ),
        .Q(\ptr_rd_reg[5]_0 [5]),
        .R(SR));
  CARRY4 sub_rd_carry
       (.CI(\<const0> ),
        .CO({sub_rd_carry_n_0,sub_rd_carry_n_1,sub_rd_carry_n_2,sub_rd_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI(Q[3:0]),
        .O(sel0[3:0]),
        .S({sub_rd_carry_i_1_n_0,sub_rd_carry_i_2_n_0,sub_rd_carry_i_3_n_0,sub_rd_carry_i_4_n_0}));
  CARRY4 sub_rd_carry__0
       (.CI(sub_rd_carry_n_0),
        .CO({sub_rd_carry__0_n_1,NLW_sub_rd_carry__0_CO_UNCONNECTED[1],sub_rd_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,Q[5:4]}),
        .O(sel0[5:4]),
        .S({\<const0> ,\<const1> ,sub_rd_carry__0_i_1_n_0,sub_rd_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h9699)) 
    sub_rd_carry__0_i_1
       (.I0(Q[5]),
        .I1(\ptr_rd_reg[5]_0 [5]),
        .I2(\ptr_rd[5]_i_2_n_0 ),
        .I3(\ptr_rd_reg[5]_0 [4]),
        .O(sub_rd_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sub_rd_carry__0_i_2
       (.I0(Q[4]),
        .I1(\ptr_rd[5]_i_2_n_0 ),
        .I2(\ptr_rd_reg[5]_0 [4]),
        .O(sub_rd_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sub_rd_carry_i_1
       (.I0(Q[3]),
        .I1(sub_rd_carry_i_5_n_0),
        .I2(\ptr_rd_reg[5]_0 [3]),
        .O(sub_rd_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAA6AAAA55595555)) 
    sub_rd_carry_i_2
       (.I0(Q[2]),
        .I1(\ptr_rd_reg[5]_0 [1]),
        .I2(empty_rd_reg_0),
        .I3(rd_n),
        .I4(\ptr_rd_reg[5]_0 [0]),
        .I5(\ptr_rd_reg[5]_0 [2]),
        .O(sub_rd_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hAAA65559)) 
    sub_rd_carry_i_3
       (.I0(Q[1]),
        .I1(\ptr_rd_reg[5]_0 [0]),
        .I2(rd_n),
        .I3(empty_rd_reg_0),
        .I4(\ptr_rd_reg[5]_0 [1]),
        .O(sub_rd_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    sub_rd_carry_i_4
       (.I0(Q[0]),
        .I1(empty_rd_reg_0),
        .I2(rd_n),
        .I3(\ptr_rd_reg[5]_0 [0]),
        .O(sub_rd_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    sub_rd_carry_i_5
       (.I0(\ptr_rd_reg[5]_0 [1]),
        .I1(empty_rd_reg_0),
        .I2(rd_n),
        .I3(\ptr_rd_reg[5]_0 [0]),
        .I4(\ptr_rd_reg[5]_0 [2]),
        .O(sub_rd_carry_i_5_n_0));
endmodule

module fifo16s64_fwrc
   (full_wr_reg_0,
    SR,
    full_wr_adv,
    Q,
    p_0_in,
    clk_wr,
    rst_wr_n,
    wr_n,
    sub_wr_carry__0_0);
  output full_wr_reg_0;
  output [0:0]SR;
  output full_wr_adv;
  output [5:0]Q;
  output p_0_in;
  input clk_wr;
  input rst_wr_n;
  input wr_n;
  input [5:0]sub_wr_carry__0_0;

  wire \<const0> ;
  wire \<const1> ;
  wire [5:0]Q;
  wire [0:0]SR;
  wire clk_wr;
  wire full_wr0;
  wire full_wr_adv;
  wire full_wr_reg_0;
  wire p_0_in;
  wire p_1_in;
  wire [5:0]ptr_wr0;
  wire \ptr_wr[5]_i_2_n_0 ;
  wire rst_wr_n;
  wire [5:0]sub_wr_carry__0_0;
  wire sub_wr_carry__0_i_1_n_0;
  wire sub_wr_carry__0_i_2_n_0;
  wire sub_wr_carry__0_n_3;
  wire sub_wr_carry__0_n_6;
  wire sub_wr_carry__0_n_7;
  wire sub_wr_carry_i_1_n_0;
  wire sub_wr_carry_i_2_n_0;
  wire sub_wr_carry_i_3_n_0;
  wire sub_wr_carry_i_4_n_0;
  wire sub_wr_carry_i_5_n_0;
  wire sub_wr_carry_i_6_n_0;
  wire sub_wr_carry_n_0;
  wire sub_wr_carry_n_1;
  wire sub_wr_carry_n_2;
  wire sub_wr_carry_n_3;
  wire sub_wr_carry_n_4;
  wire sub_wr_carry_n_5;
  wire sub_wr_carry_n_6;
  wire sub_wr_carry_n_7;
  wire wr_n;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFFFF000080000000)) 
    full_wr_adv_i_1
       (.I0(sub_wr_carry_n_5),
        .I1(sub_wr_carry_n_4),
        .I2(sub_wr_carry_n_6),
        .I3(sub_wr_carry_n_7),
        .I4(sub_wr_carry__0_n_6),
        .I5(sub_wr_carry__0_n_7),
        .O(p_1_in));
  FDRE full_wr_adv_reg
       (.C(clk_wr),
        .CE(\<const1> ),
        .D(p_1_in),
        .Q(full_wr_adv),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    full_wr_i_1
       (.I0(rst_wr_n),
        .O(SR));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    full_wr_i_2
       (.I0(sub_wr_carry_n_5),
        .I1(sub_wr_carry_n_4),
        .I2(sub_wr_carry_n_7),
        .I3(sub_wr_carry_n_6),
        .I4(sub_wr_carry__0_n_6),
        .I5(sub_wr_carry__0_n_7),
        .O(full_wr0));
  FDRE full_wr_reg
       (.C(clk_wr),
        .CE(\<const1> ),
        .D(full_wr0),
        .Q(full_wr_reg_0),
        .R(SR));
  LUT2 #(
    .INIT(4'h1)) 
    mem_reg_0_63_0_2_i_1
       (.I0(wr_n),
        .I1(full_wr_reg_0),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'hA9)) 
    \ptr_wr[0]_i_1 
       (.I0(Q[0]),
        .I1(full_wr_reg_0),
        .I2(wr_n),
        .O(ptr_wr0[0]));
  LUT4 #(
    .INIT(16'hFD02)) 
    \ptr_wr[1]_i_1 
       (.I0(Q[0]),
        .I1(wr_n),
        .I2(full_wr_reg_0),
        .I3(Q[1]),
        .O(ptr_wr0[1]));
  LUT5 #(
    .INIT(32'hFDFF0200)) 
    \ptr_wr[2]_i_1 
       (.I0(Q[1]),
        .I1(full_wr_reg_0),
        .I2(wr_n),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(ptr_wr0[2]));
  LUT6 #(
    .INIT(64'hFFF7FFFF00080000)) 
    \ptr_wr[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(wr_n),
        .I3(full_wr_reg_0),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(ptr_wr0[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ptr_wr[4]_i_1 
       (.I0(Q[0]),
        .I1(p_0_in),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(ptr_wr0[4]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ptr_wr[5]_i_1 
       (.I0(\ptr_wr[5]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[5]),
        .O(ptr_wr0[5]));
  LUT4 #(
    .INIT(16'h0200)) 
    \ptr_wr[5]_i_2 
       (.I0(Q[0]),
        .I1(wr_n),
        .I2(full_wr_reg_0),
        .I3(Q[1]),
        .O(\ptr_wr[5]_i_2_n_0 ));
  FDRE \ptr_wr_reg[0] 
       (.C(clk_wr),
        .CE(\<const1> ),
        .D(ptr_wr0[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \ptr_wr_reg[1] 
       (.C(clk_wr),
        .CE(\<const1> ),
        .D(ptr_wr0[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \ptr_wr_reg[2] 
       (.C(clk_wr),
        .CE(\<const1> ),
        .D(ptr_wr0[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \ptr_wr_reg[3] 
       (.C(clk_wr),
        .CE(\<const1> ),
        .D(ptr_wr0[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \ptr_wr_reg[4] 
       (.C(clk_wr),
        .CE(\<const1> ),
        .D(ptr_wr0[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \ptr_wr_reg[5] 
       (.C(clk_wr),
        .CE(\<const1> ),
        .D(ptr_wr0[5]),
        .Q(Q[5]),
        .R(SR));
  CARRY4 sub_wr_carry
       (.CI(\<const0> ),
        .CO({sub_wr_carry_n_0,sub_wr_carry_n_1,sub_wr_carry_n_2,sub_wr_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({ptr_wr0[3:2],sub_wr_carry_i_1_n_0,sub_wr_carry_i_2_n_0}),
        .O({sub_wr_carry_n_4,sub_wr_carry_n_5,sub_wr_carry_n_6,sub_wr_carry_n_7}),
        .S({sub_wr_carry_i_3_n_0,sub_wr_carry_i_4_n_0,sub_wr_carry_i_5_n_0,sub_wr_carry_i_6_n_0}));
  CARRY4 sub_wr_carry__0
       (.CI(sub_wr_carry_n_0),
        .CO(sub_wr_carry__0_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,ptr_wr0[4]}),
        .O({sub_wr_carry__0_n_6,sub_wr_carry__0_n_7}),
        .S({\<const0> ,\<const0> ,sub_wr_carry__0_i_1_n_0,sub_wr_carry__0_i_2_n_0}));
  LUT6 #(
    .INIT(64'h6AAAAAAA95555555)) 
    sub_wr_carry__0_i_1
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\ptr_wr[5]_i_2_n_0 ),
        .I5(sub_wr_carry__0_0[5]),
        .O(sub_wr_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    sub_wr_carry__0_i_2
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\ptr_wr[5]_i_2_n_0 ),
        .I4(sub_wr_carry__0_0[4]),
        .O(sub_wr_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFD02)) 
    sub_wr_carry_i_1
       (.I0(Q[0]),
        .I1(wr_n),
        .I2(full_wr_reg_0),
        .I3(Q[1]),
        .O(sub_wr_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hA9)) 
    sub_wr_carry_i_2
       (.I0(Q[0]),
        .I1(full_wr_reg_0),
        .I2(wr_n),
        .O(sub_wr_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h6AAAAAAA95555555)) 
    sub_wr_carry_i_3
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(p_0_in),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(sub_wr_carry__0_0[3]),
        .O(sub_wr_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAA6AAAA55595555)) 
    sub_wr_carry_i_4
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(wr_n),
        .I3(full_wr_reg_0),
        .I4(Q[1]),
        .I5(sub_wr_carry__0_0[2]),
        .O(sub_wr_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hA9AA5655)) 
    sub_wr_carry_i_5
       (.I0(Q[1]),
        .I1(full_wr_reg_0),
        .I2(wr_n),
        .I3(Q[0]),
        .I4(sub_wr_carry__0_0[1]),
        .O(sub_wr_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hE11E)) 
    sub_wr_carry_i_6
       (.I0(wr_n),
        .I1(full_wr_reg_0),
        .I2(Q[0]),
        .I3(sub_wr_carry__0_0[0]),
        .O(sub_wr_carry_i_6_n_0));
endmodule

module fifo16s64_lram
   (dat_rd,
    E,
    clk_rd,
    clk_wr,
    dat_wr,
    p_0_in,
    Q,
    \mem_rd_reg[12]_0 );
  output [15:0]dat_rd;
  input [0:0]E;
  input clk_rd;
  input clk_wr;
  input [15:0]dat_wr;
  input p_0_in;
  input [5:0]Q;
  input [5:0]\mem_rd_reg[12]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]E;
  wire [5:0]Q;
  wire clk_rd;
  wire clk_wr;
  wire [15:0]dat_rd;
  wire [15:0]dat_wr;
  wire drv_rd;
  wire [15:0]mem_rd;
  wire [15:0]mem_rd0;
  wire [5:0]\mem_rd_reg[12]_0 ;
  wire p_0_in;

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
    \dat_rd[10]_INST_0 
       (.I0(drv_rd),
        .I1(mem_rd[10]),
        .O(dat_rd[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \dat_rd[11]_INST_0 
       (.I0(drv_rd),
        .I1(mem_rd[11]),
        .O(dat_rd[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \dat_rd[12]_INST_0 
       (.I0(drv_rd),
        .I1(mem_rd[12]),
        .O(dat_rd[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \dat_rd[13]_INST_0 
       (.I0(drv_rd),
        .I1(mem_rd[13]),
        .O(dat_rd[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \dat_rd[14]_INST_0 
       (.I0(drv_rd),
        .I1(mem_rd[14]),
        .O(dat_rd[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \dat_rd[15]_INST_0 
       (.I0(drv_rd),
        .I1(mem_rd[15]),
        .O(dat_rd[15]));
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
  LUT2 #(
    .INIT(4'h8)) 
    \dat_rd[8]_INST_0 
       (.I0(drv_rd),
        .I1(mem_rd[8]),
        .O(dat_rd[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \dat_rd[9]_INST_0 
       (.I0(drv_rd),
        .I1(mem_rd[9]),
        .O(dat_rd[9]));
  FDRE drv_rd_reg
       (.C(clk_rd),
        .CE(\<const1> ),
        .D(E),
        .Q(drv_rd),
        .R(\<const0> ));
  FDRE \mem_rd_reg[0] 
       (.C(clk_rd),
        .CE(E),
        .D(mem_rd0[0]),
        .Q(mem_rd[0]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[10] 
       (.C(clk_rd),
        .CE(E),
        .D(mem_rd0[10]),
        .Q(mem_rd[10]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[11] 
       (.C(clk_rd),
        .CE(E),
        .D(mem_rd0[11]),
        .Q(mem_rd[11]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[12] 
       (.C(clk_rd),
        .CE(E),
        .D(mem_rd0[12]),
        .Q(mem_rd[12]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[13] 
       (.C(clk_rd),
        .CE(E),
        .D(mem_rd0[13]),
        .Q(mem_rd[13]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[14] 
       (.C(clk_rd),
        .CE(E),
        .D(mem_rd0[14]),
        .Q(mem_rd[14]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[15] 
       (.C(clk_rd),
        .CE(E),
        .D(mem_rd0[15]),
        .Q(mem_rd[15]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[1] 
       (.C(clk_rd),
        .CE(E),
        .D(mem_rd0[1]),
        .Q(mem_rd[1]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[2] 
       (.C(clk_rd),
        .CE(E),
        .D(mem_rd0[2]),
        .Q(mem_rd[2]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[3] 
       (.C(clk_rd),
        .CE(E),
        .D(mem_rd0[3]),
        .Q(mem_rd[3]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[4] 
       (.C(clk_rd),
        .CE(E),
        .D(mem_rd0[4]),
        .Q(mem_rd[4]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[5] 
       (.C(clk_rd),
        .CE(E),
        .D(mem_rd0[5]),
        .Q(mem_rd[5]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[6] 
       (.C(clk_rd),
        .CE(E),
        .D(mem_rd0[6]),
        .Q(mem_rd[6]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[7] 
       (.C(clk_rd),
        .CE(E),
        .D(mem_rd0[7]),
        .Q(mem_rd[7]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[8] 
       (.C(clk_rd),
        .CE(E),
        .D(mem_rd0[8]),
        .Q(mem_rd[8]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[9] 
       (.C(clk_rd),
        .CE(E),
        .D(mem_rd0[9]),
        .Q(mem_rd[9]),
        .R(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "lram/mem_reg_0_63_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M mem_reg_0_63_0_2
       (.ADDRA(\mem_rd_reg[12]_0 ),
        .ADDRB(\mem_rd_reg[12]_0 ),
        .ADDRC(\mem_rd_reg[12]_0 ),
        .ADDRD(Q),
        .DIA(dat_wr[0]),
        .DIB(dat_wr[1]),
        .DIC(dat_wr[2]),
        .DID(\<const0> ),
        .DOA(mem_rd0[0]),
        .DOB(mem_rd0[1]),
        .DOC(mem_rd0[2]),
        .WCLK(clk_wr),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "lram/mem_reg_0_63_12_14" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M mem_reg_0_63_12_14
       (.ADDRA(\mem_rd_reg[12]_0 ),
        .ADDRB(\mem_rd_reg[12]_0 ),
        .ADDRC(\mem_rd_reg[12]_0 ),
        .ADDRD(Q),
        .DIA(dat_wr[12]),
        .DIB(dat_wr[13]),
        .DIC(dat_wr[14]),
        .DID(\<const0> ),
        .DOA(mem_rd0[12]),
        .DOB(mem_rd0[13]),
        .DOC(mem_rd0[14]),
        .WCLK(clk_wr),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "lram/mem_reg_0_63_15_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D mem_reg_0_63_15_15
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(dat_wr[15]),
        .DPO(mem_rd0[15]),
        .DPRA0(\mem_rd_reg[12]_0 [0]),
        .DPRA1(\mem_rd_reg[12]_0 [1]),
        .DPRA2(\mem_rd_reg[12]_0 [2]),
        .DPRA3(\mem_rd_reg[12]_0 [3]),
        .DPRA4(\mem_rd_reg[12]_0 [4]),
        .DPRA5(\mem_rd_reg[12]_0 [5]),
        .WCLK(clk_wr),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "lram/mem_reg_0_63_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M mem_reg_0_63_3_5
       (.ADDRA(\mem_rd_reg[12]_0 ),
        .ADDRB(\mem_rd_reg[12]_0 ),
        .ADDRC(\mem_rd_reg[12]_0 ),
        .ADDRD(Q),
        .DIA(dat_wr[3]),
        .DIB(dat_wr[4]),
        .DIC(dat_wr[5]),
        .DID(\<const0> ),
        .DOA(mem_rd0[3]),
        .DOB(mem_rd0[4]),
        .DOC(mem_rd0[5]),
        .WCLK(clk_wr),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "lram/mem_reg_0_63_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M mem_reg_0_63_6_8
       (.ADDRA(\mem_rd_reg[12]_0 ),
        .ADDRB(\mem_rd_reg[12]_0 ),
        .ADDRC(\mem_rd_reg[12]_0 ),
        .ADDRD(Q),
        .DIA(dat_wr[6]),
        .DIB(dat_wr[7]),
        .DIC(dat_wr[8]),
        .DID(\<const0> ),
        .DOA(mem_rd0[6]),
        .DOB(mem_rd0[7]),
        .DOC(mem_rd0[8]),
        .WCLK(clk_wr),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "lram/mem_reg_0_63_9_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M mem_reg_0_63_9_11
       (.ADDRA(\mem_rd_reg[12]_0 ),
        .ADDRB(\mem_rd_reg[12]_0 ),
        .ADDRC(\mem_rd_reg[12]_0 ),
        .ADDRD(Q),
        .DIA(dat_wr[9]),
        .DIB(dat_wr[10]),
        .DIC(dat_wr[11]),
        .DID(\<const0> ),
        .DOA(mem_rd0[9]),
        .DOB(mem_rd0[10]),
        .DOC(mem_rd0[11]),
        .WCLK(clk_wr),
        .WE(p_0_in));
endmodule
