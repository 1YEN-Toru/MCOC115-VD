
(* MULH = "5'b00011" *) (* MULS = "5'b00010" *) (* MULU = "5'b00001" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module mulc16
   (clk,
    rst_n,
    ccmd,
    abus,
    bbus,
    .crdy(\<const1> ),
    cbus,
    mulc_dsp_c,
    mulc_dsp_a,
    mulc_dsp_b);
//
//	Multiply Co-processor (16*16=32 bits)
//		(c) 2021	1YEN Toru
//
//
//	2023/09/30	ver.1.02
//		corresponding to Xilinx Vivado
//
//	2021/05/22	ver.1.00
//		16*16=32: 1 cycle operation (32 bit data transfer needs 2 cycles)
//
  input clk;
  input rst_n;
  input [4:0]ccmd;
  input [15:0]abus;
  input [15:0]bbus;
  output [15:0]cbus;
  input [33:0]mulc_dsp_c;
  output [16:0]mulc_dsp_a;
  output [16:0]mulc_dsp_b;
  output \<const1> ;

  wire \<const1> ;
  wire [15:0]abus;
  wire [15:0]bbus;
  wire [15:0]cbus;
  wire \cbus[15]_INST_0_i_2_n_0 ;
  wire [4:0]ccmd;
  wire clk;
  wire [16:0]mulc_dsp_a;
  wire [16:0]mulc_dsp_b;
  wire [33:0]mulc_dsp_c;
  wire [15:0]mulh;
  wire mulh0;
  wire \mulh[15]_i_1_n_0 ;
  wire rst_n;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \cbus[0]_INST_0 
       (.I0(mulc_dsp_c[0]),
        .I1(mulh0),
        .I2(ccmd[0]),
        .I3(mulh[0]),
        .I4(\cbus[15]_INST_0_i_2_n_0 ),
        .O(cbus[0]));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \cbus[10]_INST_0 
       (.I0(mulc_dsp_c[10]),
        .I1(mulh0),
        .I2(ccmd[0]),
        .I3(mulh[10]),
        .I4(\cbus[15]_INST_0_i_2_n_0 ),
        .O(cbus[10]));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \cbus[11]_INST_0 
       (.I0(mulc_dsp_c[11]),
        .I1(mulh0),
        .I2(ccmd[0]),
        .I3(mulh[11]),
        .I4(\cbus[15]_INST_0_i_2_n_0 ),
        .O(cbus[11]));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \cbus[12]_INST_0 
       (.I0(mulc_dsp_c[12]),
        .I1(mulh0),
        .I2(ccmd[0]),
        .I3(mulh[12]),
        .I4(\cbus[15]_INST_0_i_2_n_0 ),
        .O(cbus[12]));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \cbus[13]_INST_0 
       (.I0(mulc_dsp_c[13]),
        .I1(mulh0),
        .I2(ccmd[0]),
        .I3(mulh[13]),
        .I4(\cbus[15]_INST_0_i_2_n_0 ),
        .O(cbus[13]));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \cbus[14]_INST_0 
       (.I0(mulc_dsp_c[14]),
        .I1(mulh0),
        .I2(ccmd[0]),
        .I3(mulh[14]),
        .I4(\cbus[15]_INST_0_i_2_n_0 ),
        .O(cbus[14]));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \cbus[15]_INST_0 
       (.I0(mulc_dsp_c[15]),
        .I1(mulh0),
        .I2(ccmd[0]),
        .I3(mulh[15]),
        .I4(\cbus[15]_INST_0_i_2_n_0 ),
        .O(cbus[15]));
  LUT5 #(
    .INIT(32'h00010010)) 
    \cbus[15]_INST_0_i_1 
       (.I0(ccmd[4]),
        .I1(ccmd[3]),
        .I2(ccmd[0]),
        .I3(ccmd[2]),
        .I4(ccmd[1]),
        .O(mulh0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \cbus[15]_INST_0_i_2 
       (.I0(ccmd[1]),
        .I1(ccmd[4]),
        .I2(ccmd[2]),
        .I3(ccmd[3]),
        .O(\cbus[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \cbus[1]_INST_0 
       (.I0(mulc_dsp_c[1]),
        .I1(mulh0),
        .I2(ccmd[0]),
        .I3(mulh[1]),
        .I4(\cbus[15]_INST_0_i_2_n_0 ),
        .O(cbus[1]));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \cbus[2]_INST_0 
       (.I0(mulc_dsp_c[2]),
        .I1(mulh0),
        .I2(ccmd[0]),
        .I3(mulh[2]),
        .I4(\cbus[15]_INST_0_i_2_n_0 ),
        .O(cbus[2]));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \cbus[3]_INST_0 
       (.I0(mulc_dsp_c[3]),
        .I1(mulh0),
        .I2(ccmd[0]),
        .I3(mulh[3]),
        .I4(\cbus[15]_INST_0_i_2_n_0 ),
        .O(cbus[3]));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \cbus[4]_INST_0 
       (.I0(mulc_dsp_c[4]),
        .I1(mulh0),
        .I2(ccmd[0]),
        .I3(mulh[4]),
        .I4(\cbus[15]_INST_0_i_2_n_0 ),
        .O(cbus[4]));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \cbus[5]_INST_0 
       (.I0(mulc_dsp_c[5]),
        .I1(mulh0),
        .I2(ccmd[0]),
        .I3(mulh[5]),
        .I4(\cbus[15]_INST_0_i_2_n_0 ),
        .O(cbus[5]));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \cbus[6]_INST_0 
       (.I0(mulc_dsp_c[6]),
        .I1(mulh0),
        .I2(ccmd[0]),
        .I3(mulh[6]),
        .I4(\cbus[15]_INST_0_i_2_n_0 ),
        .O(cbus[6]));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \cbus[7]_INST_0 
       (.I0(mulc_dsp_c[7]),
        .I1(mulh0),
        .I2(ccmd[0]),
        .I3(mulh[7]),
        .I4(\cbus[15]_INST_0_i_2_n_0 ),
        .O(cbus[7]));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \cbus[8]_INST_0 
       (.I0(mulc_dsp_c[8]),
        .I1(mulh0),
        .I2(ccmd[0]),
        .I3(mulh[8]),
        .I4(\cbus[15]_INST_0_i_2_n_0 ),
        .O(cbus[8]));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \cbus[9]_INST_0 
       (.I0(mulc_dsp_c[9]),
        .I1(mulh0),
        .I2(ccmd[0]),
        .I3(mulh[9]),
        .I4(\cbus[15]_INST_0_i_2_n_0 ),
        .O(cbus[9]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_a[0]_INST_0 
       (.I0(abus[0]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[0]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_a[10]_INST_0 
       (.I0(abus[10]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[10]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_a[11]_INST_0 
       (.I0(abus[11]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[11]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_a[12]_INST_0 
       (.I0(abus[12]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[12]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_a[13]_INST_0 
       (.I0(abus[13]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[13]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_a[14]_INST_0 
       (.I0(abus[14]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[14]));
  LUT6 #(
    .INIT(64'h0000000000000048)) 
    \mulc_dsp_a[15]_INST_0 
       (.I0(ccmd[1]),
        .I1(abus[15]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[15]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \mulc_dsp_a[16]_INST_0 
       (.I0(ccmd[1]),
        .I1(abus[15]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[16]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_a[1]_INST_0 
       (.I0(abus[1]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[1]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_a[2]_INST_0 
       (.I0(abus[2]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[2]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_a[3]_INST_0 
       (.I0(abus[3]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[3]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_a[4]_INST_0 
       (.I0(abus[4]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[4]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_a[5]_INST_0 
       (.I0(abus[5]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[5]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_a[6]_INST_0 
       (.I0(abus[6]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[6]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_a[7]_INST_0 
       (.I0(abus[7]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[7]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_a[8]_INST_0 
       (.I0(abus[8]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[8]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_a[9]_INST_0 
       (.I0(abus[9]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_a[9]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_b[0]_INST_0 
       (.I0(bbus[0]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[0]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_b[10]_INST_0 
       (.I0(bbus[10]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[10]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_b[11]_INST_0 
       (.I0(bbus[11]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[11]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_b[12]_INST_0 
       (.I0(bbus[12]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[12]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_b[13]_INST_0 
       (.I0(bbus[13]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[13]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_b[14]_INST_0 
       (.I0(bbus[14]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[14]));
  LUT6 #(
    .INIT(64'h0000000000000048)) 
    \mulc_dsp_b[15]_INST_0 
       (.I0(ccmd[1]),
        .I1(bbus[15]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[15]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \mulc_dsp_b[16]_INST_0 
       (.I0(ccmd[1]),
        .I1(bbus[15]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[16]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_b[1]_INST_0 
       (.I0(bbus[1]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[1]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_b[2]_INST_0 
       (.I0(bbus[2]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[2]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_b[3]_INST_0 
       (.I0(bbus[3]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[3]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_b[4]_INST_0 
       (.I0(bbus[4]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[4]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_b[5]_INST_0 
       (.I0(bbus[5]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[5]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_b[6]_INST_0 
       (.I0(bbus[6]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[6]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_b[7]_INST_0 
       (.I0(bbus[7]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[7]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_b[8]_INST_0 
       (.I0(bbus[8]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[8]));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \mulc_dsp_b[9]_INST_0 
       (.I0(bbus[9]),
        .I1(ccmd[1]),
        .I2(ccmd[0]),
        .I3(ccmd[3]),
        .I4(ccmd[2]),
        .I5(ccmd[4]),
        .O(mulc_dsp_b[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \mulh[15]_i_1 
       (.I0(rst_n),
        .O(\mulh[15]_i_1_n_0 ));
  FDRE \mulh_reg[0] 
       (.C(clk),
        .CE(mulh0),
        .D(mulc_dsp_c[16]),
        .Q(mulh[0]),
        .R(\mulh[15]_i_1_n_0 ));
  FDRE \mulh_reg[10] 
       (.C(clk),
        .CE(mulh0),
        .D(mulc_dsp_c[26]),
        .Q(mulh[10]),
        .R(\mulh[15]_i_1_n_0 ));
  FDRE \mulh_reg[11] 
       (.C(clk),
        .CE(mulh0),
        .D(mulc_dsp_c[27]),
        .Q(mulh[11]),
        .R(\mulh[15]_i_1_n_0 ));
  FDRE \mulh_reg[12] 
       (.C(clk),
        .CE(mulh0),
        .D(mulc_dsp_c[28]),
        .Q(mulh[12]),
        .R(\mulh[15]_i_1_n_0 ));
  FDRE \mulh_reg[13] 
       (.C(clk),
        .CE(mulh0),
        .D(mulc_dsp_c[29]),
        .Q(mulh[13]),
        .R(\mulh[15]_i_1_n_0 ));
  FDRE \mulh_reg[14] 
       (.C(clk),
        .CE(mulh0),
        .D(mulc_dsp_c[30]),
        .Q(mulh[14]),
        .R(\mulh[15]_i_1_n_0 ));
  FDRE \mulh_reg[15] 
       (.C(clk),
        .CE(mulh0),
        .D(mulc_dsp_c[31]),
        .Q(mulh[15]),
        .R(\mulh[15]_i_1_n_0 ));
  FDRE \mulh_reg[1] 
       (.C(clk),
        .CE(mulh0),
        .D(mulc_dsp_c[17]),
        .Q(mulh[1]),
        .R(\mulh[15]_i_1_n_0 ));
  FDRE \mulh_reg[2] 
       (.C(clk),
        .CE(mulh0),
        .D(mulc_dsp_c[18]),
        .Q(mulh[2]),
        .R(\mulh[15]_i_1_n_0 ));
  FDRE \mulh_reg[3] 
       (.C(clk),
        .CE(mulh0),
        .D(mulc_dsp_c[19]),
        .Q(mulh[3]),
        .R(\mulh[15]_i_1_n_0 ));
  FDRE \mulh_reg[4] 
       (.C(clk),
        .CE(mulh0),
        .D(mulc_dsp_c[20]),
        .Q(mulh[4]),
        .R(\mulh[15]_i_1_n_0 ));
  FDRE \mulh_reg[5] 
       (.C(clk),
        .CE(mulh0),
        .D(mulc_dsp_c[21]),
        .Q(mulh[5]),
        .R(\mulh[15]_i_1_n_0 ));
  FDRE \mulh_reg[6] 
       (.C(clk),
        .CE(mulh0),
        .D(mulc_dsp_c[22]),
        .Q(mulh[6]),
        .R(\mulh[15]_i_1_n_0 ));
  FDRE \mulh_reg[7] 
       (.C(clk),
        .CE(mulh0),
        .D(mulc_dsp_c[23]),
        .Q(mulh[7]),
        .R(\mulh[15]_i_1_n_0 ));
  FDRE \mulh_reg[8] 
       (.C(clk),
        .CE(mulh0),
        .D(mulc_dsp_c[24]),
        .Q(mulh[8]),
        .R(\mulh[15]_i_1_n_0 ));
  FDRE \mulh_reg[9] 
       (.C(clk),
        .CE(mulh0),
        .D(mulc_dsp_c[25]),
        .Q(mulh[9]),
        .R(\mulh[15]_i_1_n_0 ));
endmodule
