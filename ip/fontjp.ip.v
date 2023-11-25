
(* STRUCTURAL_NETLIST = "yes" *)
module fontjp
   (clk,
    rst_n,
    brdy,
    bcmdb,
    bcmdw,
    bcmdr,
    bcs_fnjp_n,
    badr,
    bdatw,
    bdatr,
    fnjp_dat,
    fnjp_adr);
//
//	Japanese font ROM unit
//		(c) 2021	1YEN Toru
//
//
//	2023/11/25	ver.1.02
//		corresponding to Xilinx Vivado
//
//	2021/10/16	ver.1.00
//		Japanese KANJI level-1 and 2 included
//
  input clk;
  input rst_n;
  input brdy;
  input bcmdb;
  input bcmdw;
  input bcmdr;
  input bcs_fnjp_n;
  input [3:0]badr;
  input [15:0]bdatw;
  output [15:0]bdatr;
  input [63:0]fnjp_dat;
  output [12:0]fnjp_adr;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]badr;
  wire bcmdb;
  wire bcmdr;
  wire bcmdw;
  wire bcs_fnjp_n;
  wire [15:0]bdatr;
  wire \bdatr[0]_INST_0_i_10_n_0 ;
  wire \bdatr[0]_INST_0_i_11_n_0 ;
  wire \bdatr[0]_INST_0_i_12_n_0 ;
  wire \bdatr[0]_INST_0_i_13_n_0 ;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[0]_INST_0_i_2_n_0 ;
  wire \bdatr[0]_INST_0_i_3_n_0 ;
  wire \bdatr[0]_INST_0_i_4_n_0 ;
  wire \bdatr[0]_INST_0_i_5_n_0 ;
  wire \bdatr[0]_INST_0_i_6_n_0 ;
  wire \bdatr[0]_INST_0_i_7_n_0 ;
  wire \bdatr[0]_INST_0_i_8_n_0 ;
  wire \bdatr[0]_INST_0_i_9_n_0 ;
  wire \bdatr[10]_INST_0_i_1_n_0 ;
  wire \bdatr[10]_INST_0_i_2_n_0 ;
  wire \bdatr[10]_INST_0_i_3_n_0 ;
  wire \bdatr[10]_INST_0_i_4_n_0 ;
  wire \bdatr[10]_INST_0_i_5_n_0 ;
  wire \bdatr[10]_INST_0_i_6_n_0 ;
  wire \bdatr[10]_INST_0_i_7_n_0 ;
  wire \bdatr[10]_INST_0_i_8_n_0 ;
  wire \bdatr[11]_INST_0_i_10_n_0 ;
  wire \bdatr[11]_INST_0_i_11_n_0 ;
  wire \bdatr[11]_INST_0_i_12_n_0 ;
  wire \bdatr[11]_INST_0_i_13_n_0 ;
  wire \bdatr[11]_INST_0_i_14_n_0 ;
  wire \bdatr[11]_INST_0_i_15_n_0 ;
  wire \bdatr[11]_INST_0_i_16_n_0 ;
  wire \bdatr[11]_INST_0_i_1_n_0 ;
  wire \bdatr[11]_INST_0_i_2_n_0 ;
  wire \bdatr[11]_INST_0_i_3_n_0 ;
  wire \bdatr[11]_INST_0_i_4_n_0 ;
  wire \bdatr[11]_INST_0_i_5_n_0 ;
  wire \bdatr[11]_INST_0_i_6_n_0 ;
  wire \bdatr[11]_INST_0_i_7_n_0 ;
  wire \bdatr[11]_INST_0_i_8_n_0 ;
  wire \bdatr[11]_INST_0_i_9_n_0 ;
  wire \bdatr[12]_INST_0_i_10_n_0 ;
  wire \bdatr[12]_INST_0_i_11_n_0 ;
  wire \bdatr[12]_INST_0_i_12_n_0 ;
  wire \bdatr[12]_INST_0_i_1_n_0 ;
  wire \bdatr[12]_INST_0_i_2_n_0 ;
  wire \bdatr[12]_INST_0_i_3_n_0 ;
  wire \bdatr[12]_INST_0_i_4_n_0 ;
  wire \bdatr[12]_INST_0_i_5_n_0 ;
  wire \bdatr[12]_INST_0_i_6_n_0 ;
  wire \bdatr[12]_INST_0_i_7_n_0 ;
  wire \bdatr[12]_INST_0_i_8_n_0 ;
  wire \bdatr[12]_INST_0_i_9_n_0 ;
  wire \bdatr[13]_INST_0_i_10_n_0 ;
  wire \bdatr[13]_INST_0_i_11_n_0 ;
  wire \bdatr[13]_INST_0_i_12_n_0 ;
  wire \bdatr[13]_INST_0_i_13_n_0 ;
  wire \bdatr[13]_INST_0_i_14_n_0 ;
  wire \bdatr[13]_INST_0_i_15_n_0 ;
  wire \bdatr[13]_INST_0_i_16_n_0 ;
  wire \bdatr[13]_INST_0_i_17_n_0 ;
  wire \bdatr[13]_INST_0_i_18_n_0 ;
  wire \bdatr[13]_INST_0_i_1_n_0 ;
  wire \bdatr[13]_INST_0_i_2_n_0 ;
  wire \bdatr[13]_INST_0_i_3_n_0 ;
  wire \bdatr[13]_INST_0_i_4_n_0 ;
  wire \bdatr[13]_INST_0_i_5_n_0 ;
  wire \bdatr[13]_INST_0_i_6_n_0 ;
  wire \bdatr[13]_INST_0_i_7_n_0 ;
  wire \bdatr[13]_INST_0_i_8_n_0 ;
  wire \bdatr[13]_INST_0_i_9_n_0 ;
  wire \bdatr[14]_INST_0_i_10_n_0 ;
  wire \bdatr[14]_INST_0_i_11_n_0 ;
  wire \bdatr[14]_INST_0_i_12_n_0 ;
  wire \bdatr[14]_INST_0_i_13_n_0 ;
  wire \bdatr[14]_INST_0_i_14_n_0 ;
  wire \bdatr[14]_INST_0_i_1_n_0 ;
  wire \bdatr[14]_INST_0_i_2_n_0 ;
  wire \bdatr[14]_INST_0_i_3_n_0 ;
  wire \bdatr[14]_INST_0_i_4_n_0 ;
  wire \bdatr[14]_INST_0_i_5_n_0 ;
  wire \bdatr[14]_INST_0_i_6_n_0 ;
  wire \bdatr[14]_INST_0_i_7_n_0 ;
  wire \bdatr[14]_INST_0_i_8_n_0 ;
  wire \bdatr[14]_INST_0_i_9_n_0 ;
  wire \bdatr[15]_INST_0_i_10_n_0 ;
  wire \bdatr[15]_INST_0_i_11_n_0 ;
  wire \bdatr[15]_INST_0_i_12_n_0 ;
  wire \bdatr[15]_INST_0_i_13_n_0 ;
  wire \bdatr[15]_INST_0_i_14_n_0 ;
  wire \bdatr[15]_INST_0_i_15_n_0 ;
  wire \bdatr[15]_INST_0_i_1_n_0 ;
  wire \bdatr[15]_INST_0_i_2_n_0 ;
  wire \bdatr[15]_INST_0_i_3_n_0 ;
  wire \bdatr[15]_INST_0_i_4_n_0 ;
  wire \bdatr[15]_INST_0_i_5_n_0 ;
  wire \bdatr[15]_INST_0_i_6_n_0 ;
  wire \bdatr[15]_INST_0_i_7_n_0 ;
  wire \bdatr[15]_INST_0_i_8_n_0 ;
  wire \bdatr[15]_INST_0_i_9_n_0 ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_2_n_0 ;
  wire \bdatr[1]_INST_0_i_3_n_0 ;
  wire \bdatr[1]_INST_0_i_4_n_0 ;
  wire \bdatr[1]_INST_0_i_5_n_0 ;
  wire \bdatr[1]_INST_0_i_6_n_0 ;
  wire \bdatr[1]_INST_0_i_7_n_0 ;
  wire \bdatr[1]_INST_0_i_8_n_0 ;
  wire \bdatr[1]_INST_0_i_9_n_0 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_2_n_0 ;
  wire \bdatr[2]_INST_0_i_3_n_0 ;
  wire \bdatr[2]_INST_0_i_4_n_0 ;
  wire \bdatr[2]_INST_0_i_5_n_0 ;
  wire \bdatr[2]_INST_0_i_6_n_0 ;
  wire \bdatr[2]_INST_0_i_7_n_0 ;
  wire \bdatr[2]_INST_0_i_8_n_0 ;
  wire \bdatr[2]_INST_0_i_9_n_0 ;
  wire \bdatr[3]_INST_0_i_10_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_2_n_0 ;
  wire \bdatr[3]_INST_0_i_3_n_0 ;
  wire \bdatr[3]_INST_0_i_4_n_0 ;
  wire \bdatr[3]_INST_0_i_5_n_0 ;
  wire \bdatr[3]_INST_0_i_6_n_0 ;
  wire \bdatr[3]_INST_0_i_7_n_0 ;
  wire \bdatr[3]_INST_0_i_8_n_0 ;
  wire \bdatr[3]_INST_0_i_9_n_0 ;
  wire \bdatr[4]_INST_0_i_10_n_0 ;
  wire \bdatr[4]_INST_0_i_11_n_0 ;
  wire \bdatr[4]_INST_0_i_12_n_0 ;
  wire \bdatr[4]_INST_0_i_13_n_0 ;
  wire \bdatr[4]_INST_0_i_14_n_0 ;
  wire \bdatr[4]_INST_0_i_15_n_0 ;
  wire \bdatr[4]_INST_0_i_16_n_0 ;
  wire \bdatr[4]_INST_0_i_17_n_0 ;
  wire \bdatr[4]_INST_0_i_18_n_0 ;
  wire \bdatr[4]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_2_n_0 ;
  wire \bdatr[4]_INST_0_i_3_n_0 ;
  wire \bdatr[4]_INST_0_i_4_n_0 ;
  wire \bdatr[4]_INST_0_i_5_n_0 ;
  wire \bdatr[4]_INST_0_i_6_n_0 ;
  wire \bdatr[4]_INST_0_i_7_n_0 ;
  wire \bdatr[4]_INST_0_i_8_n_0 ;
  wire \bdatr[4]_INST_0_i_9_n_0 ;
  wire \bdatr[5]_INST_0_i_10_n_0 ;
  wire \bdatr[5]_INST_0_i_11_n_0 ;
  wire \bdatr[5]_INST_0_i_1_n_0 ;
  wire \bdatr[5]_INST_0_i_2_n_0 ;
  wire \bdatr[5]_INST_0_i_3_n_0 ;
  wire \bdatr[5]_INST_0_i_4_n_0 ;
  wire \bdatr[5]_INST_0_i_5_n_0 ;
  wire \bdatr[5]_INST_0_i_6_n_0 ;
  wire \bdatr[5]_INST_0_i_7_n_0 ;
  wire \bdatr[5]_INST_0_i_8_n_0 ;
  wire \bdatr[5]_INST_0_i_9_n_0 ;
  wire \bdatr[6]_INST_0_i_10_n_0 ;
  wire \bdatr[6]_INST_0_i_11_n_0 ;
  wire \bdatr[6]_INST_0_i_12_n_0 ;
  wire \bdatr[6]_INST_0_i_13_n_0 ;
  wire \bdatr[6]_INST_0_i_14_n_0 ;
  wire \bdatr[6]_INST_0_i_15_n_0 ;
  wire \bdatr[6]_INST_0_i_16_n_0 ;
  wire \bdatr[6]_INST_0_i_17_n_0 ;
  wire \bdatr[6]_INST_0_i_18_n_0 ;
  wire \bdatr[6]_INST_0_i_19_n_0 ;
  wire \bdatr[6]_INST_0_i_1_n_0 ;
  wire \bdatr[6]_INST_0_i_2_n_0 ;
  wire \bdatr[6]_INST_0_i_3_n_0 ;
  wire \bdatr[6]_INST_0_i_4_n_0 ;
  wire \bdatr[6]_INST_0_i_5_n_0 ;
  wire \bdatr[6]_INST_0_i_6_n_0 ;
  wire \bdatr[6]_INST_0_i_7_n_0 ;
  wire \bdatr[6]_INST_0_i_8_n_0 ;
  wire \bdatr[6]_INST_0_i_9_n_0 ;
  wire \bdatr[7]_INST_0_i_10_n_0 ;
  wire \bdatr[7]_INST_0_i_11_n_0 ;
  wire \bdatr[7]_INST_0_i_12_n_0 ;
  wire \bdatr[7]_INST_0_i_13_n_0 ;
  wire \bdatr[7]_INST_0_i_14_n_0 ;
  wire \bdatr[7]_INST_0_i_1_n_0 ;
  wire \bdatr[7]_INST_0_i_2_n_0 ;
  wire \bdatr[7]_INST_0_i_3_n_0 ;
  wire \bdatr[7]_INST_0_i_4_n_0 ;
  wire \bdatr[7]_INST_0_i_5_n_0 ;
  wire \bdatr[7]_INST_0_i_6_n_0 ;
  wire \bdatr[7]_INST_0_i_7_n_0 ;
  wire \bdatr[7]_INST_0_i_8_n_0 ;
  wire \bdatr[7]_INST_0_i_9_n_0 ;
  wire \bdatr[8]_INST_0_i_1_n_0 ;
  wire \bdatr[8]_INST_0_i_2_n_0 ;
  wire \bdatr[8]_INST_0_i_3_n_0 ;
  wire \bdatr[8]_INST_0_i_4_n_0 ;
  wire \bdatr[8]_INST_0_i_5_n_0 ;
  wire \bdatr[8]_INST_0_i_6_n_0 ;
  wire \bdatr[8]_INST_0_i_7_n_0 ;
  wire \bdatr[8]_INST_0_i_8_n_0 ;
  wire \bdatr[9]_INST_0_i_10_n_0 ;
  wire \bdatr[9]_INST_0_i_11_n_0 ;
  wire \bdatr[9]_INST_0_i_1_n_0 ;
  wire \bdatr[9]_INST_0_i_2_n_0 ;
  wire \bdatr[9]_INST_0_i_3_n_0 ;
  wire \bdatr[9]_INST_0_i_4_n_0 ;
  wire \bdatr[9]_INST_0_i_5_n_0 ;
  wire \bdatr[9]_INST_0_i_6_n_0 ;
  wire \bdatr[9]_INST_0_i_7_n_0 ;
  wire \bdatr[9]_INST_0_i_8_n_0 ;
  wire \bdatr[9]_INST_0_i_9_n_0 ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire [6:1]codk_2;
  wire codk_22;
  wire codkt_1__1_carry__0_i_1_n_0;
  wire codkt_1__1_carry__0_i_2_n_0;
  wire codkt_1__1_carry__0_i_3_n_0;
  wire codkt_1__1_carry__0_i_4_n_0;
  wire codkt_1__1_carry__0_i_5_n_0;
  wire codkt_1__1_carry__0_i_6_n_0;
  wire codkt_1__1_carry__1_i_10_n_0;
  wire codkt_1__1_carry__1_i_1_n_0;
  wire codkt_1__1_carry__1_i_2_n_0;
  wire codkt_1__1_carry__1_i_3_n_0;
  wire codkt_1__1_carry__1_i_4_n_0;
  wire codkt_1__1_carry__1_i_5_n_0;
  wire codkt_1__1_carry__1_i_6_n_0;
  wire codkt_1__1_carry__1_i_7_n_0;
  wire codkt_1__1_carry__1_i_8_n_0;
  wire codkt_1__1_carry__1_i_9_n_0;
  wire codkt_1__1_carry__2_i_1_n_0;
  wire codkt_1__1_carry_i_1_n_0;
  wire codkt_1__1_carry_i_2_n_0;
  wire codkt_1__1_carry_i_3_n_0;
  wire codkt_1__1_carry_i_4_n_0;
  wire codkt_1__1_carry_i_5_n_0;
  wire codkt_1__37_carry__0_i_5_n_0;
  wire codkt_1__37_carry__0_i_6_n_0;
  wire codkt_1__37_carry__0_i_7_n_0;
  wire codkt_1__37_carry__0_i_8_n_0;
  wire codkt_1__37_carry__1_i_3_n_0;
  wire codkt_1__37_carry__1_i_4_n_0;
  wire codkt_1__37_carry__1_i_5_n_0;
  wire codkt_1__37_carry__1_i_6_n_0;
  wire codkt_1__37_carry_i_2_n_0;
  wire codkt_1__37_carry_i_3_n_0;
  wire codkt_1__37_carry_i_4_n_0;
  wire codkt_1__37_carry_i_5_n_0;
  wire codkt_1__66_carry__0_i_1_n_0;
  wire codkt_1__66_carry__0_i_2_n_0;
  wire codkt_1__66_carry__0_i_3_n_0;
  wire codkt_1__66_carry__0_i_4_n_0;
  wire codkt_1__66_carry__0_i_5_n_0;
  wire codkt_1__66_carry__0_i_6_n_0;
  wire codkt_1__66_carry__0_i_7_n_0;
  wire codkt_1__66_carry__0_i_8_n_0;
  wire codkt_1__66_carry__1_i_1_n_0;
  wire codkt_1__66_carry__1_i_2_n_0;
  wire codkt_1__66_carry__1_i_3_n_0;
  wire codkt_1__66_carry__1_i_4_n_0;
  wire codkt_1__66_carry__1_i_5_n_0;
  wire codkt_1__66_carry__1_i_6_n_0;
  wire codkt_1__66_carry__1_i_7_n_0;
  wire codkt_1__66_carry_i_1_n_0;
  wire codkt_1__66_carry_i_2_n_0;
  wire codkt_1__66_carry_i_3_n_0;
  wire codkt_1__66_carry_i_4_n_0;
  wire codkt_1__66_carry_i_5_n_0;
  wire codkt_1__66_carry_i_6_n_0;
  wire codt_2_carry__0_i_1_n_0;
  wire codt_2_carry__0_i_2_n_0;
  wire codt_2_carry__0_i_3_n_0;
  wire codt_2_carry__0_i_4_n_0;
  wire codt_2_carry__1_i_1_n_0;
  wire codt_2_carry__1_i_2_n_0;
  wire codt_2_carry__1_i_3_n_0;
  wire codt_2_carry__1_i_4_n_0;
  wire codt_2_carry__2_i_1_n_0;
  wire codt_2_carry__2_i_2_n_0;
  wire codt_2_carry__2_i_3_n_0;
  wire codt_2_carry_i_1_n_0;
  wire codt_2_carry_i_2_n_0;
  wire codt_2_carry_i_3_n_0;
  wire codt_2_carry_i_4_n_0;
  wire \fcod/codkt_1__1_carry__0_n_0 ;
  wire \fcod/codkt_1__1_carry__0_n_1 ;
  wire \fcod/codkt_1__1_carry__0_n_2 ;
  wire \fcod/codkt_1__1_carry__0_n_3 ;
  wire \fcod/codkt_1__1_carry__0_n_4 ;
  wire \fcod/codkt_1__1_carry__0_n_5 ;
  wire \fcod/codkt_1__1_carry__0_n_6 ;
  wire \fcod/codkt_1__1_carry__0_n_7 ;
  wire \fcod/codkt_1__1_carry__1_n_0 ;
  wire \fcod/codkt_1__1_carry__1_n_1 ;
  wire \fcod/codkt_1__1_carry__1_n_2 ;
  wire \fcod/codkt_1__1_carry__1_n_3 ;
  wire \fcod/codkt_1__1_carry__1_n_4 ;
  wire \fcod/codkt_1__1_carry__1_n_5 ;
  wire \fcod/codkt_1__1_carry__1_n_6 ;
  wire \fcod/codkt_1__1_carry__1_n_7 ;
  wire \fcod/codkt_1__1_carry__2_n_7 ;
  wire \fcod/codkt_1__1_carry_n_0 ;
  wire \fcod/codkt_1__1_carry_n_1 ;
  wire \fcod/codkt_1__1_carry_n_2 ;
  wire \fcod/codkt_1__1_carry_n_3 ;
  wire \fcod/codkt_1__1_carry_n_4 ;
  wire \fcod/codkt_1__1_carry_n_5 ;
  wire \fcod/codkt_1__1_carry_n_6 ;
  wire \fcod/codkt_1__1_carry_n_7 ;
  wire \fcod/codkt_1__37_carry__0_n_0 ;
  wire \fcod/codkt_1__37_carry__0_n_1 ;
  wire \fcod/codkt_1__37_carry__0_n_2 ;
  wire \fcod/codkt_1__37_carry__0_n_3 ;
  wire \fcod/codkt_1__37_carry__0_n_4 ;
  wire \fcod/codkt_1__37_carry__0_n_5 ;
  wire \fcod/codkt_1__37_carry__0_n_6 ;
  wire \fcod/codkt_1__37_carry__0_n_7 ;
  wire \fcod/codkt_1__37_carry__1_n_2 ;
  wire \fcod/codkt_1__37_carry__1_n_3 ;
  wire \fcod/codkt_1__37_carry__1_n_5 ;
  wire \fcod/codkt_1__37_carry__1_n_6 ;
  wire \fcod/codkt_1__37_carry__1_n_7 ;
  wire \fcod/codkt_1__37_carry_n_0 ;
  wire \fcod/codkt_1__37_carry_n_1 ;
  wire \fcod/codkt_1__37_carry_n_2 ;
  wire \fcod/codkt_1__37_carry_n_3 ;
  wire \fcod/codkt_1__37_carry_n_4 ;
  wire \fcod/codkt_1__37_carry_n_5 ;
  wire \fcod/codkt_1__37_carry_n_6 ;
  wire \fcod/codkt_1__37_carry_n_7 ;
  wire \fcod/codkt_1__66_carry__0_n_0 ;
  wire \fcod/codkt_1__66_carry__0_n_1 ;
  wire \fcod/codkt_1__66_carry__0_n_2 ;
  wire \fcod/codkt_1__66_carry__0_n_3 ;
  wire \fcod/codkt_1__66_carry__0_n_4 ;
  wire \fcod/codkt_1__66_carry__0_n_5 ;
  wire \fcod/codkt_1__66_carry__0_n_6 ;
  wire \fcod/codkt_1__66_carry__0_n_7 ;
  wire \fcod/codkt_1__66_carry__1_n_1 ;
  wire \fcod/codkt_1__66_carry__1_n_2 ;
  wire \fcod/codkt_1__66_carry__1_n_3 ;
  wire \fcod/codkt_1__66_carry__1_n_4 ;
  wire \fcod/codkt_1__66_carry__1_n_5 ;
  wire \fcod/codkt_1__66_carry__1_n_6 ;
  wire \fcod/codkt_1__66_carry__1_n_7 ;
  wire \fcod/codkt_1__66_carry_n_0 ;
  wire \fcod/codkt_1__66_carry_n_1 ;
  wire \fcod/codkt_1__66_carry_n_2 ;
  wire \fcod/codkt_1__66_carry_n_3 ;
  wire \fcod/codkt_1__66_carry_n_4 ;
  wire \fcod/codkt_1__66_carry_n_5 ;
  wire \fcod/codkt_1__66_carry_n_6 ;
  wire \fcod/codkt_1__66_carry_n_7 ;
  wire \fcod/codt_2_carry__0_n_0 ;
  wire \fcod/codt_2_carry__0_n_1 ;
  wire \fcod/codt_2_carry__0_n_2 ;
  wire \fcod/codt_2_carry__0_n_3 ;
  wire \fcod/codt_2_carry__0_n_4 ;
  wire \fcod/codt_2_carry__0_n_5 ;
  wire \fcod/codt_2_carry__0_n_6 ;
  wire \fcod/codt_2_carry__0_n_7 ;
  wire \fcod/codt_2_carry__1_n_0 ;
  wire \fcod/codt_2_carry__1_n_1 ;
  wire \fcod/codt_2_carry__1_n_2 ;
  wire \fcod/codt_2_carry__1_n_3 ;
  wire \fcod/codt_2_carry__2_n_1 ;
  wire \fcod/codt_2_carry__2_n_2 ;
  wire \fcod/codt_2_carry__2_n_3 ;
  wire \fcod/codt_2_carry_n_0 ;
  wire \fcod/codt_2_carry_n_1 ;
  wire \fcod/codt_2_carry_n_2 ;
  wire \fcod/codt_2_carry_n_3 ;
  wire \fcod/codt_2_carry_n_4 ;
  wire \fcod/codt_2_carry_n_5 ;
  wire \fcod/codt_2_carry_n_6 ;
  wire \fcod/codt_2_carry_n_7 ;
  wire \fcod/fnjpcod_reg_n_0_[0] ;
  wire \fcod/fnjpcod_reg_n_0_[1] ;
  wire \fcod/fnjpcod_reg_n_0_[2] ;
  wire \fcod/fnjpcod_reg_n_0_[3] ;
  wire \fcod/fnjpcod_reg_n_0_[4] ;
  wire \fcod/fnjpcod_reg_n_0_[5] ;
  wire \fcod/fnjpcod_reg_n_0_[6] ;
  wire \fcod/fnjpcod_reg_n_0_[7] ;
  wire [7:0]\fcod/p_0_in ;
  wire \fctl/fnjpcod_rd0 ;
  wire \fctl/fnjpctl_rd0 ;
  wire \fctl/fnjpctl_reg_n_0_[0] ;
  wire \fctl/fnjpctl_reg_n_0_[1] ;
  wire \fctl/fnjpctl_reg_n_0_[2] ;
  wire \fctl/fnjpctl_reg_n_0_[3] ;
  wire \fctl/fnjpctl_reg_n_0_[4] ;
  wire \fctl/fnjpctl_wr ;
  wire \fctl/fnjpdata_rd0 ;
  wire \fctl/fnjpdatb_rd0 ;
  wire \fctl/fnjpdatc_rd0 ;
  wire \fctl/fnjpdatd_rd0 ;
  wire \fctl/fnjpdbl_rd0 ;
  wire fctl_ktc;
  wire [12:0]fnjp_adr;
  wire \fnjp_adr[12]_INST_0_i_1_n_0 ;
  wire \fnjp_adr[12]_INST_0_i_2_n_0 ;
  wire \fnjp_adr[7]_INST_0_i_1_n_0 ;
  wire \fnjp_adr[7]_INST_0_i_2_n_0 ;
  wire \fnjp_adr[9]_INST_0_i_1_n_0 ;
  wire \fnjp_adr[9]_INST_0_i_2_n_0 ;
  wire \fnjp_adr[9]_INST_0_i_3_n_0 ;
  wire \fnjp_adr[9]_INST_0_i_4_n_0 ;
  wire [63:0]fnjp_dat;
  wire fnjpcod_rd;
  wire fnjpcod_wr;
  wire \fnjpctl[5]_i_1_n_0 ;
  wire \fnjpctl[5]_i_3_n_0 ;
  wire fnjpctl_rd;
  wire fnjpctl_rd_i_2_n_0;
  wire [7:0]fnjpdbl;
  wire fnjpdbl_rd;
  wire fnjpdbl_wr;
  wire [8:1]p_0_in1_in;
  wire rst_n;
  wire [3:0]sel0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF1FFF1F1)) 
    \bdatr[0]_INST_0 
       (.I0(\bdatr[0]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\bdatr[0]_INST_0_i_2_n_0 ),
        .I3(\bdatr[0]_INST_0_i_3_n_0 ),
        .I4(fnjpcod_rd),
        .I5(\bdatr[0]_INST_0_i_4_n_0 ),
        .O(bdatr[0]));
  LUT6 #(
    .INIT(64'hB8BBB888B8BBB8BB)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(\bdatr[0]_INST_0_i_5_n_0 ),
        .I1(sel0[2]),
        .I2(\bdatr[0]_INST_0_i_6_n_0 ),
        .I3(sel0[1]),
        .I4(\bdatr[0]_INST_0_i_7_n_0 ),
        .I5(sel0[0]),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \bdatr[0]_INST_0_i_10 
       (.I0(\bdatr[12]_INST_0_i_12_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[1] ),
        .I2(\bdatr[12]_INST_0_i_9_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[0] ),
        .I4(\bdatr[12]_INST_0_i_11_n_0 ),
        .O(\bdatr[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEFEADFD545408A80)) 
    \bdatr[0]_INST_0_i_11 
       (.I0(\bdatr[0]_INST_0_i_12_n_0 ),
        .I1(fnjp_dat[7]),
        .I2(\fctl/fnjpctl_reg_n_0_[3] ),
        .I3(fnjp_dat[0]),
        .I4(\fctl/fnjpctl_reg_n_0_[2] ),
        .I5(\bdatr[0]_INST_0_i_13_n_0 ),
        .O(\bdatr[0]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatr[0]_INST_0_i_12 
       (.I0(\fctl/fnjpctl_reg_n_0_[0] ),
        .I1(\fctl/fnjpctl_reg_n_0_[1] ),
        .O(\bdatr[0]_INST_0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bdatr[0]_INST_0_i_13 
       (.I0(fnjp_dat[63]),
        .I1(\fctl/fnjpctl_reg_n_0_[3] ),
        .I2(fnjp_dat[56]),
        .O(\bdatr[0]_INST_0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \bdatr[0]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(\bdatr[0]_INST_0_i_8_n_0 ),
        .I2(\fctl/fnjpctl_reg_n_0_[4] ),
        .O(\bdatr[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F444F4F)) 
    \bdatr[0]_INST_0_i_3 
       (.I0(\fcod/fnjpcod_reg_n_0_[0] ),
        .I1(fctl_ktc),
        .I2(\bdatr[0]_INST_0_i_9_n_0 ),
        .I3(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I4(\fcod/codkt_1__1_carry_n_7 ),
        .O(\bdatr[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[0]_INST_0_i_4 
       (.I0(fnjpdbl_rd),
        .I1(fnjpdbl[0]),
        .I2(fnjpctl_rd),
        .I3(\fctl/fnjpctl_reg_n_0_[0] ),
        .O(\bdatr[0]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA9995999)) 
    \bdatr[0]_INST_0_i_5 
       (.I0(\fctl/fnjpctl_reg_n_0_[4] ),
        .I1(\bdatr[0]_INST_0_i_10_n_0 ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\fctl/fnjpctl_reg_n_0_[0] ),
        .I4(\bdatr[12]_INST_0_i_10_n_0 ),
        .O(\bdatr[0]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA9995999)) 
    \bdatr[0]_INST_0_i_6 
       (.I0(\fctl/fnjpctl_reg_n_0_[4] ),
        .I1(\bdatr[5]_INST_0_i_10_n_0 ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\fctl/fnjpctl_reg_n_0_[0] ),
        .I4(\bdatr[15]_INST_0_i_15_n_0 ),
        .O(\bdatr[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA99A5995599A599)) 
    \bdatr[0]_INST_0_i_7 
       (.I0(\fctl/fnjpctl_reg_n_0_[4] ),
        .I1(\bdatr[0]_INST_0_i_11_n_0 ),
        .I2(\bdatr[15]_INST_0_i_8_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[1] ),
        .I4(\fctl/fnjpctl_reg_n_0_[0] ),
        .I5(\bdatr[15]_INST_0_i_9_n_0 ),
        .O(\bdatr[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[0]_INST_0_i_8 
       (.I0(\bdatr[14]_INST_0_i_6_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[14]_INST_0_i_8_n_0 ),
        .I4(\bdatr[14]_INST_0_i_5_n_0 ),
        .I5(\bdatr[14]_INST_0_i_7_n_0 ),
        .O(\bdatr[0]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \bdatr[0]_INST_0_i_9 
       (.I0(fctl_ktc),
        .I1(\fnjp_adr[9]_INST_0_i_1_n_0 ),
        .I2(\fcod/fnjpcod_reg_n_0_[0] ),
        .I3(\fnjp_adr[7]_INST_0_i_2_n_0 ),
        .I4(\fcod/p_0_in [0]),
        .O(\bdatr[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEEFEEE)) 
    \bdatr[10]_INST_0 
       (.I0(\bdatr[10]_INST_0_i_1_n_0 ),
        .I1(\bdatr[10]_INST_0_i_2_n_0 ),
        .I2(fnjpdbl[5]),
        .I3(fnjpdbl_rd),
        .I4(\bdatr[10]_INST_0_i_3_n_0 ),
        .I5(fnjpcod_rd),
        .O(bdatr[10]));
  LUT5 #(
    .INIT(32'h00002AA2)) 
    \bdatr[10]_INST_0_i_1 
       (.I0(\bdatr[10]_INST_0_i_4_n_0 ),
        .I1(sel0[2]),
        .I2(\fctl/fnjpctl_reg_n_0_[4] ),
        .I3(\bdatr[10]_INST_0_i_5_n_0 ),
        .I4(sel0[3]),
        .O(\bdatr[10]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \bdatr[10]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(\bdatr[10]_INST_0_i_6_n_0 ),
        .I2(\fctl/fnjpctl_reg_n_0_[4] ),
        .O(\bdatr[10]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0BFB)) 
    \bdatr[10]_INST_0_i_3 
       (.I0(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I1(\fcod/codkt_1__66_carry__1_n_6 ),
        .I2(fctl_ktc),
        .I3(\fcod/p_0_in [2]),
        .O(\bdatr[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBEAAEEEEBEAA)) 
    \bdatr[10]_INST_0_i_4 
       (.I0(sel0[2]),
        .I1(\fctl/fnjpctl_reg_n_0_[4] ),
        .I2(\bdatr[10]_INST_0_i_7_n_0 ),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(\bdatr[10]_INST_0_i_8_n_0 ),
        .O(\bdatr[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFAFC0A0CFA0C0A)) 
    \bdatr[10]_INST_0_i_5 
       (.I0(\bdatr[13]_INST_0_i_5_n_0 ),
        .I1(\bdatr[13]_INST_0_i_7_n_0 ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\fctl/fnjpctl_reg_n_0_[0] ),
        .I4(\bdatr[13]_INST_0_i_6_n_0 ),
        .I5(\bdatr[13]_INST_0_i_4_n_0 ),
        .O(\bdatr[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[10]_INST_0_i_6 
       (.I0(\bdatr[15]_INST_0_i_13_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[15]_INST_0_i_15_n_0 ),
        .I4(\bdatr[15]_INST_0_i_12_n_0 ),
        .I5(\bdatr[15]_INST_0_i_14_n_0 ),
        .O(\bdatr[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[10]_INST_0_i_7 
       (.I0(\bdatr[9]_INST_0_i_11_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[9]_INST_0_i_10_n_0 ),
        .I4(\bdatr[9]_INST_0_i_8_n_0 ),
        .I5(\bdatr[9]_INST_0_i_9_n_0 ),
        .O(\bdatr[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[10]_INST_0_i_8 
       (.I0(\bdatr[11]_INST_0_i_7_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[11]_INST_0_i_9_n_0 ),
        .I4(\bdatr[11]_INST_0_i_8_n_0 ),
        .I5(\bdatr[11]_INST_0_i_10_n_0 ),
        .O(\bdatr[10]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \bdatr[11]_INST_0 
       (.I0(\bdatr[11]_INST_0_i_1_n_0 ),
        .I1(\bdatr[11]_INST_0_i_2_n_0 ),
        .I2(fnjpcod_rd),
        .I3(\bdatr[11]_INST_0_i_3_n_0 ),
        .O(bdatr[11]));
  LUT5 #(
    .INIT(32'h40045555)) 
    \bdatr[11]_INST_0_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(\bdatr[11]_INST_0_i_4_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[4] ),
        .I4(\bdatr[11]_INST_0_i_5_n_0 ),
        .O(\bdatr[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[11]_INST_0_i_10 
       (.I0(fnjp_dat[20]),
        .I1(fnjp_dat[19]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[44]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[43]),
        .O(\bdatr[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00550F33FF550F33)) 
    \bdatr[11]_INST_0_i_11 
       (.I0(\bdatr[4]_INST_0_i_8_n_0 ),
        .I1(\bdatr[4]_INST_0_i_16_n_0 ),
        .I2(\bdatr[4]_INST_0_i_17_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[1] ),
        .I4(\fctl/fnjpctl_reg_n_0_[0] ),
        .I5(\bdatr[4]_INST_0_i_18_n_0 ),
        .O(\bdatr[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00330F55FF330F55)) 
    \bdatr[11]_INST_0_i_12 
       (.I0(\bdatr[4]_INST_0_i_12_n_0 ),
        .I1(\bdatr[4]_INST_0_i_11_n_0 ),
        .I2(\bdatr[4]_INST_0_i_13_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[1] ),
        .I4(\fctl/fnjpctl_reg_n_0_[0] ),
        .I5(\bdatr[4]_INST_0_i_14_n_0 ),
        .O(\bdatr[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[11]_INST_0_i_13 
       (.I0(fnjp_dat[39]),
        .I1(fnjp_dat[32]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[31]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[24]),
        .O(\bdatr[11]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[11]_INST_0_i_14 
       (.I0(fnjp_dat[59]),
        .I1(fnjp_dat[60]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[3]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[4]),
        .O(\bdatr[11]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[11]_INST_0_i_15 
       (.I0(fnjp_dat[4]),
        .I1(fnjp_dat[3]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[60]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[59]),
        .O(\bdatr[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[11]_INST_0_i_16 
       (.I0(fnjp_dat[24]),
        .I1(fnjp_dat[31]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[32]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[39]),
        .O(\bdatr[11]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFF606060)) 
    \bdatr[11]_INST_0_i_2 
       (.I0(\fctl/fnjpctl_reg_n_0_[4] ),
        .I1(\bdatr[11]_INST_0_i_6_n_0 ),
        .I2(sel0[3]),
        .I3(fnjpdbl[5]),
        .I4(fnjpdbl_rd),
        .O(\bdatr[11]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0BFB)) 
    \bdatr[11]_INST_0_i_3 
       (.I0(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I1(\fcod/codkt_1__66_carry__1_n_5 ),
        .I2(fctl_ktc),
        .I3(\fcod/p_0_in [3]),
        .O(\bdatr[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h330F5500330F55FF)) 
    \bdatr[11]_INST_0_i_4 
       (.I0(\bdatr[11]_INST_0_i_7_n_0 ),
        .I1(\bdatr[11]_INST_0_i_8_n_0 ),
        .I2(\bdatr[11]_INST_0_i_9_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[1] ),
        .I4(\fctl/fnjpctl_reg_n_0_[0] ),
        .I5(\bdatr[11]_INST_0_i_10_n_0 ),
        .O(\bdatr[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF07F7FD0D)) 
    \bdatr[11]_INST_0_i_5 
       (.I0(sel0[0]),
        .I1(\bdatr[11]_INST_0_i_11_n_0 ),
        .I2(sel0[1]),
        .I3(\bdatr[11]_INST_0_i_12_n_0 ),
        .I4(\fctl/fnjpctl_reg_n_0_[4] ),
        .I5(sel0[2]),
        .O(\bdatr[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[11]_INST_0_i_6 
       (.I0(\bdatr[11]_INST_0_i_13_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[11]_INST_0_i_14_n_0 ),
        .I4(\bdatr[11]_INST_0_i_15_n_0 ),
        .I5(\bdatr[11]_INST_0_i_16_n_0 ),
        .O(\bdatr[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[11]_INST_0_i_7 
       (.I0(fnjp_dat[43]),
        .I1(fnjp_dat[44]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[19]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[20]),
        .O(\bdatr[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[11]_INST_0_i_8 
       (.I0(fnjp_dat[37]),
        .I1(fnjp_dat[34]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[29]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[26]),
        .O(\bdatr[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[11]_INST_0_i_9 
       (.I0(fnjp_dat[26]),
        .I1(fnjp_dat[29]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[34]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[37]),
        .O(\bdatr[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEEFEEE)) 
    \bdatr[12]_INST_0 
       (.I0(\bdatr[12]_INST_0_i_1_n_0 ),
        .I1(\bdatr[12]_INST_0_i_2_n_0 ),
        .I2(fnjpdbl[6]),
        .I3(fnjpdbl_rd),
        .I4(\bdatr[12]_INST_0_i_3_n_0 ),
        .I5(fnjpcod_rd),
        .O(bdatr[12]));
  LUT5 #(
    .INIT(32'h01515101)) 
    \bdatr[12]_INST_0_i_1 
       (.I0(sel0[3]),
        .I1(\bdatr[12]_INST_0_i_4_n_0 ),
        .I2(sel0[2]),
        .I3(\bdatr[12]_INST_0_i_5_n_0 ),
        .I4(\fctl/fnjpctl_reg_n_0_[4] ),
        .O(\bdatr[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[12]_INST_0_i_10 
       (.I0(fnjp_dat[60]),
        .I1(fnjp_dat[59]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[4]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[3]),
        .O(\bdatr[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[12]_INST_0_i_11 
       (.I0(fnjp_dat[3]),
        .I1(fnjp_dat[4]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[59]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[60]),
        .O(\bdatr[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[12]_INST_0_i_12 
       (.I0(fnjp_dat[32]),
        .I1(fnjp_dat[39]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[24]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[31]),
        .O(\bdatr[12]_INST_0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \bdatr[12]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(\bdatr[12]_INST_0_i_6_n_0 ),
        .I2(\fctl/fnjpctl_reg_n_0_[4] ),
        .O(\bdatr[12]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h55CF)) 
    \bdatr[12]_INST_0_i_3 
       (.I0(\fcod/p_0_in [4]),
        .I1(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I2(\fcod/codkt_1__66_carry__1_n_4 ),
        .I3(fctl_ktc),
        .O(\bdatr[12]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB847BB77)) 
    \bdatr[12]_INST_0_i_4 
       (.I0(\bdatr[12]_INST_0_i_7_n_0 ),
        .I1(sel0[1]),
        .I2(\bdatr[12]_INST_0_i_8_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[4] ),
        .I4(sel0[0]),
        .O(\bdatr[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[12]_INST_0_i_5 
       (.I0(\bdatr[13]_INST_0_i_11_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[13]_INST_0_i_13_n_0 ),
        .I4(\bdatr[13]_INST_0_i_12_n_0 ),
        .I5(\bdatr[13]_INST_0_i_14_n_0 ),
        .O(\bdatr[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[12]_INST_0_i_6 
       (.I0(\bdatr[12]_INST_0_i_9_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[12]_INST_0_i_10_n_0 ),
        .I4(\bdatr[12]_INST_0_i_11_n_0 ),
        .I5(\bdatr[12]_INST_0_i_12_n_0 ),
        .O(\bdatr[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[12]_INST_0_i_7 
       (.I0(\bdatr[4]_INST_0_i_13_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[4]_INST_0_i_11_n_0 ),
        .I4(\bdatr[4]_INST_0_i_14_n_0 ),
        .I5(\bdatr[4]_INST_0_i_12_n_0 ),
        .O(\bdatr[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[12]_INST_0_i_8 
       (.I0(\bdatr[6]_INST_0_i_14_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[6]_INST_0_i_12_n_0 ),
        .I4(\bdatr[6]_INST_0_i_15_n_0 ),
        .I5(\bdatr[6]_INST_0_i_13_n_0 ),
        .O(\bdatr[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[12]_INST_0_i_9 
       (.I0(fnjp_dat[31]),
        .I1(fnjp_dat[24]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[39]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[32]),
        .O(\bdatr[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF41550000)) 
    \bdatr[13]_INST_0 
       (.I0(sel0[3]),
        .I1(\bdatr[13]_INST_0_i_1_n_0 ),
        .I2(\fctl/fnjpctl_reg_n_0_[4] ),
        .I3(sel0[2]),
        .I4(\bdatr[13]_INST_0_i_2_n_0 ),
        .I5(\bdatr[13]_INST_0_i_3_n_0 ),
        .O(bdatr[13]));
  LUT6 #(
    .INIT(64'h350035F0350F35FF)) 
    \bdatr[13]_INST_0_i_1 
       (.I0(\bdatr[13]_INST_0_i_4_n_0 ),
        .I1(\bdatr[13]_INST_0_i_5_n_0 ),
        .I2(\fctl/fnjpctl_reg_n_0_[0] ),
        .I3(\fctl/fnjpctl_reg_n_0_[1] ),
        .I4(\bdatr[13]_INST_0_i_6_n_0 ),
        .I5(\bdatr[13]_INST_0_i_7_n_0 ),
        .O(\bdatr[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFAFC0A0CFA0C0A)) 
    \bdatr[13]_INST_0_i_10 
       (.I0(\bdatr[13]_INST_0_i_15_n_0 ),
        .I1(\bdatr[13]_INST_0_i_16_n_0 ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\fctl/fnjpctl_reg_n_0_[0] ),
        .I4(\bdatr[13]_INST_0_i_17_n_0 ),
        .I5(\bdatr[13]_INST_0_i_18_n_0 ),
        .O(\bdatr[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[13]_INST_0_i_11 
       (.I0(fnjp_dat[29]),
        .I1(fnjp_dat[26]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[37]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[34]),
        .O(\bdatr[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[13]_INST_0_i_12 
       (.I0(fnjp_dat[19]),
        .I1(fnjp_dat[20]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[43]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[44]),
        .O(\bdatr[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[13]_INST_0_i_13 
       (.I0(fnjp_dat[44]),
        .I1(fnjp_dat[43]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[20]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[19]),
        .O(\bdatr[13]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[13]_INST_0_i_14 
       (.I0(fnjp_dat[34]),
        .I1(fnjp_dat[37]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[26]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[29]),
        .O(\bdatr[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[13]_INST_0_i_15 
       (.I0(fnjp_dat[2]),
        .I1(fnjp_dat[5]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[58]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[61]),
        .O(\bdatr[13]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[13]_INST_0_i_16 
       (.I0(fnjp_dat[40]),
        .I1(fnjp_dat[47]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[16]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[23]),
        .O(\bdatr[13]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[13]_INST_0_i_17 
       (.I0(fnjp_dat[61]),
        .I1(fnjp_dat[58]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[5]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[2]),
        .O(\bdatr[13]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[13]_INST_0_i_18 
       (.I0(fnjp_dat[23]),
        .I1(fnjp_dat[16]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[47]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[40]),
        .O(\bdatr[13]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFEAAEFAFAEAAE)) 
    \bdatr[13]_INST_0_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\fctl/fnjpctl_reg_n_0_[4] ),
        .I3(\bdatr[13]_INST_0_i_8_n_0 ),
        .I4(sel0[1]),
        .I5(\bdatr[13]_INST_0_i_9_n_0 ),
        .O(\bdatr[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \bdatr[13]_INST_0_i_3 
       (.I0(fnjpdbl[6]),
        .I1(fnjpdbl_rd),
        .I2(\fctl/fnjpctl_reg_n_0_[4] ),
        .I3(\bdatr[13]_INST_0_i_10_n_0 ),
        .I4(sel0[3]),
        .O(\bdatr[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[13]_INST_0_i_4 
       (.I0(fnjp_dat[45]),
        .I1(fnjp_dat[42]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[21]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[18]),
        .O(\bdatr[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[13]_INST_0_i_5 
       (.I0(fnjp_dat[21]),
        .I1(fnjp_dat[18]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[45]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[42]),
        .O(\bdatr[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[13]_INST_0_i_6 
       (.I0(fnjp_dat[42]),
        .I1(fnjp_dat[45]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[18]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[21]),
        .O(\bdatr[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[13]_INST_0_i_7 
       (.I0(fnjp_dat[18]),
        .I1(fnjp_dat[21]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[42]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[45]),
        .O(\bdatr[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h33550F0033550FFF)) 
    \bdatr[13]_INST_0_i_8 
       (.I0(\bdatr[14]_INST_0_i_12_n_0 ),
        .I1(\bdatr[14]_INST_0_i_13_n_0 ),
        .I2(\bdatr[14]_INST_0_i_11_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[1] ),
        .I4(\fctl/fnjpctl_reg_n_0_[0] ),
        .I5(\bdatr[14]_INST_0_i_14_n_0 ),
        .O(\bdatr[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCCF0AAFFCCF0AA00)) 
    \bdatr[13]_INST_0_i_9 
       (.I0(\bdatr[13]_INST_0_i_11_n_0 ),
        .I1(\bdatr[13]_INST_0_i_12_n_0 ),
        .I2(\bdatr[13]_INST_0_i_13_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[1] ),
        .I4(\fctl/fnjpctl_reg_n_0_[0] ),
        .I5(\bdatr[13]_INST_0_i_14_n_0 ),
        .O(\bdatr[13]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \bdatr[14]_INST_0 
       (.I0(fnjpdbl[7]),
        .I1(fnjpdbl_rd),
        .I2(\bdatr[14]_INST_0_i_1_n_0 ),
        .O(bdatr[14]));
  LUT6 #(
    .INIT(64'h8874B844B874B874)) 
    \bdatr[14]_INST_0_i_1 
       (.I0(\bdatr[14]_INST_0_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\bdatr[14]_INST_0_i_3_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[4] ),
        .I4(\bdatr[14]_INST_0_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\bdatr[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[14]_INST_0_i_10 
       (.I0(\bdatr[4]_INST_0_i_17_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[4]_INST_0_i_8_n_0 ),
        .I4(\bdatr[4]_INST_0_i_18_n_0 ),
        .I5(\bdatr[4]_INST_0_i_16_n_0 ),
        .O(\bdatr[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[14]_INST_0_i_11 
       (.I0(fnjp_dat[13]),
        .I1(fnjp_dat[10]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[53]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[50]),
        .O(\bdatr[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[14]_INST_0_i_12 
       (.I0(fnjp_dat[46]),
        .I1(fnjp_dat[41]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[22]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[17]),
        .O(\bdatr[14]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[14]_INST_0_i_13 
       (.I0(fnjp_dat[17]),
        .I1(fnjp_dat[22]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[41]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[46]),
        .O(\bdatr[14]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[14]_INST_0_i_14 
       (.I0(fnjp_dat[50]),
        .I1(fnjp_dat[53]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[10]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[13]),
        .O(\bdatr[14]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h407043734C7C4F7F)) 
    \bdatr[14]_INST_0_i_2 
       (.I0(\bdatr[14]_INST_0_i_5_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[14]_INST_0_i_6_n_0 ),
        .I4(\bdatr[14]_INST_0_i_7_n_0 ),
        .I5(\bdatr[14]_INST_0_i_8_n_0 ),
        .O(\bdatr[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBEBAAEEEEEBAA)) 
    \bdatr[14]_INST_0_i_3 
       (.I0(sel0[2]),
        .I1(\fctl/fnjpctl_reg_n_0_[4] ),
        .I2(\bdatr[14]_INST_0_i_9_n_0 ),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(\bdatr[14]_INST_0_i_10_n_0 ),
        .O(\bdatr[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[14]_INST_0_i_4 
       (.I0(\bdatr[14]_INST_0_i_11_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[14]_INST_0_i_12_n_0 ),
        .I4(\bdatr[14]_INST_0_i_13_n_0 ),
        .I5(\bdatr[14]_INST_0_i_14_n_0 ),
        .O(\bdatr[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[14]_INST_0_i_5 
       (.I0(fnjp_dat[15]),
        .I1(fnjp_dat[8]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[55]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[48]),
        .O(\bdatr[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \bdatr[14]_INST_0_i_6 
       (.I0(fnjp_dat[6]),
        .I1(fnjp_dat[1]),
        .I2(fnjp_dat[62]),
        .I3(\fctl/fnjpctl_reg_n_0_[3] ),
        .I4(fnjp_dat[57]),
        .I5(\fctl/fnjpctl_reg_n_0_[2] ),
        .O(\bdatr[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[14]_INST_0_i_7 
       (.I0(fnjp_dat[1]),
        .I1(fnjp_dat[6]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[57]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[62]),
        .O(\bdatr[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \bdatr[14]_INST_0_i_8 
       (.I0(fnjp_dat[8]),
        .I1(fnjp_dat[15]),
        .I2(fnjp_dat[48]),
        .I3(\fctl/fnjpctl_reg_n_0_[3] ),
        .I4(fnjp_dat[55]),
        .I5(\fctl/fnjpctl_reg_n_0_[2] ),
        .O(\bdatr[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00330F55FF330F55)) 
    \bdatr[14]_INST_0_i_9 
       (.I0(\bdatr[6]_INST_0_i_19_n_0 ),
        .I1(\bdatr[6]_INST_0_i_8_n_0 ),
        .I2(\bdatr[6]_INST_0_i_17_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[0] ),
        .I4(\fctl/fnjpctl_reg_n_0_[1] ),
        .I5(\bdatr[6]_INST_0_i_18_n_0 ),
        .O(\bdatr[14]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAEEA)) 
    \bdatr[15]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[4] ),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .O(bdatr[15]));
  LUT5 #(
    .INIT(32'h00002AA2)) 
    \bdatr[15]_INST_0_i_1 
       (.I0(\bdatr[15]_INST_0_i_4_n_0 ),
        .I1(sel0[2]),
        .I2(\bdatr[15]_INST_0_i_5_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[4] ),
        .I4(sel0[3]),
        .O(\bdatr[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00550F33FF550F33)) 
    \bdatr[15]_INST_0_i_10 
       (.I0(\bdatr[14]_INST_0_i_6_n_0 ),
        .I1(\bdatr[14]_INST_0_i_8_n_0 ),
        .I2(\bdatr[14]_INST_0_i_5_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[1] ),
        .I4(\fctl/fnjpctl_reg_n_0_[0] ),
        .I5(\bdatr[14]_INST_0_i_7_n_0 ),
        .O(\bdatr[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[15]_INST_0_i_11 
       (.I0(\bdatr[12]_INST_0_i_11_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[12]_INST_0_i_9_n_0 ),
        .I4(\bdatr[12]_INST_0_i_12_n_0 ),
        .I5(\bdatr[12]_INST_0_i_10_n_0 ),
        .O(\bdatr[15]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[15]_INST_0_i_12 
       (.I0(fnjp_dat[5]),
        .I1(fnjp_dat[2]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[61]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[58]),
        .O(\bdatr[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[15]_INST_0_i_13 
       (.I0(fnjp_dat[47]),
        .I1(fnjp_dat[40]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[23]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[16]),
        .O(\bdatr[15]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[15]_INST_0_i_14 
       (.I0(fnjp_dat[16]),
        .I1(fnjp_dat[23]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[40]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[47]),
        .O(\bdatr[15]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[15]_INST_0_i_15 
       (.I0(fnjp_dat[58]),
        .I1(fnjp_dat[61]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[2]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[5]),
        .O(\bdatr[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[15]_INST_0_i_2 
       (.I0(\bdatr[15]_INST_0_i_6_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[15]_INST_0_i_7_n_0 ),
        .I4(\bdatr[15]_INST_0_i_8_n_0 ),
        .I5(\bdatr[15]_INST_0_i_9_n_0 ),
        .O(\bdatr[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \bdatr[15]_INST_0_i_3 
       (.I0(fnjpcod_rd),
        .I1(fctl_ktc),
        .I2(\fnjp_adr[9]_INST_0_i_1_n_0 ),
        .I3(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I4(fnjpdbl[7]),
        .I5(fnjpdbl_rd),
        .O(\bdatr[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFEAAEFAFAEAAE)) 
    \bdatr[15]_INST_0_i_4 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\fctl/fnjpctl_reg_n_0_[4] ),
        .I3(\bdatr[15]_INST_0_i_10_n_0 ),
        .I4(sel0[1]),
        .I5(\bdatr[15]_INST_0_i_11_n_0 ),
        .O(\bdatr[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[15]_INST_0_i_5 
       (.I0(\bdatr[15]_INST_0_i_12_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[15]_INST_0_i_13_n_0 ),
        .I4(\bdatr[15]_INST_0_i_14_n_0 ),
        .I5(\bdatr[15]_INST_0_i_15_n_0 ),
        .O(\bdatr[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[15]_INST_0_i_6 
       (.I0(fnjp_dat[7]),
        .I1(fnjp_dat[0]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[63]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[56]),
        .O(\bdatr[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[15]_INST_0_i_7 
       (.I0(fnjp_dat[63]),
        .I1(fnjp_dat[56]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[7]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[0]),
        .O(\bdatr[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[15]_INST_0_i_8 
       (.I0(fnjp_dat[0]),
        .I1(fnjp_dat[7]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[56]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[63]),
        .O(\bdatr[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[15]_INST_0_i_9 
       (.I0(fnjp_dat[56]),
        .I1(fnjp_dat[63]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[0]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[7]),
        .O(\bdatr[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAEFFAEFFAE)) 
    \bdatr[1]_INST_0 
       (.I0(\bdatr[1]_INST_0_i_1_n_0 ),
        .I1(fnjpcod_rd),
        .I2(\bdatr[1]_INST_0_i_2_n_0 ),
        .I3(\bdatr[1]_INST_0_i_3_n_0 ),
        .I4(fnjpctl_rd),
        .I5(\fctl/fnjpctl_reg_n_0_[1] ),
        .O(bdatr[1]));
  LUT6 #(
    .INIT(64'h44B8748874B874B8)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(\bdatr[1]_INST_0_i_4_n_0 ),
        .I1(sel0[3]),
        .I2(\bdatr[1]_INST_0_i_5_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[4] ),
        .I4(\bdatr[1]_INST_0_i_6_n_0 ),
        .I5(sel0[2]),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4F444F4F)) 
    \bdatr[1]_INST_0_i_2 
       (.I0(\fcod/fnjpcod_reg_n_0_[1] ),
        .I1(fctl_ktc),
        .I2(\bdatr[1]_INST_0_i_7_n_0 ),
        .I3(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I4(\fcod/codkt_1__66_carry_n_7 ),
        .O(\bdatr[1]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[1]_INST_0_i_3 
       (.I0(fnjpdbl[0]),
        .I1(fnjpdbl_rd),
        .O(\bdatr[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFB3BCB08F838C80)) 
    \bdatr[1]_INST_0_i_4 
       (.I0(\bdatr[6]_INST_0_i_17_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[6]_INST_0_i_18_n_0 ),
        .I4(\bdatr[6]_INST_0_i_8_n_0 ),
        .I5(\bdatr[6]_INST_0_i_19_n_0 ),
        .O(\bdatr[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBEBAAEEEEEBAA)) 
    \bdatr[1]_INST_0_i_5 
       (.I0(sel0[2]),
        .I1(\fctl/fnjpctl_reg_n_0_[4] ),
        .I2(\bdatr[1]_INST_0_i_8_n_0 ),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(\bdatr[1]_INST_0_i_9_n_0 ),
        .O(\bdatr[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFB3BCB08F838C80)) 
    \bdatr[1]_INST_0_i_6 
       (.I0(\bdatr[4]_INST_0_i_16_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[4]_INST_0_i_17_n_0 ),
        .I4(\bdatr[4]_INST_0_i_8_n_0 ),
        .I5(\bdatr[4]_INST_0_i_18_n_0 ),
        .O(\bdatr[1]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \bdatr[1]_INST_0_i_7 
       (.I0(\fnjp_adr[9]_INST_0_i_1_n_0 ),
        .I1(\fcod/fnjpcod_reg_n_0_[1] ),
        .I2(\fcod/p_0_in [1]),
        .I3(\fnjp_adr[7]_INST_0_i_2_n_0 ),
        .I4(fctl_ktc),
        .O(\bdatr[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \bdatr[1]_INST_0_i_8 
       (.I0(\bdatr[14]_INST_0_i_8_n_0 ),
        .I1(\bdatr[14]_INST_0_i_6_n_0 ),
        .I2(\bdatr[14]_INST_0_i_5_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[0] ),
        .I4(\fctl/fnjpctl_reg_n_0_[1] ),
        .I5(\bdatr[14]_INST_0_i_7_n_0 ),
        .O(\bdatr[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[1]_INST_0_i_9 
       (.I0(\bdatr[14]_INST_0_i_14_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[14]_INST_0_i_13_n_0 ),
        .I4(\bdatr[14]_INST_0_i_12_n_0 ),
        .I5(\bdatr[14]_INST_0_i_11_n_0 ),
        .O(\bdatr[1]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \bdatr[2]_INST_0 
       (.I0(\bdatr[2]_INST_0_i_1_n_0 ),
        .I1(\bdatr[2]_INST_0_i_2_n_0 ),
        .I2(fnjpcod_rd),
        .I3(\bdatr[2]_INST_0_i_3_n_0 ),
        .O(bdatr[2]));
  LUT5 #(
    .INIT(32'h01515101)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(sel0[3]),
        .I1(\bdatr[2]_INST_0_i_4_n_0 ),
        .I2(sel0[2]),
        .I3(\bdatr[2]_INST_0_i_5_n_0 ),
        .I4(\fctl/fnjpctl_reg_n_0_[4] ),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF606060)) 
    \bdatr[2]_INST_0_i_2 
       (.I0(\fctl/fnjpctl_reg_n_0_[4] ),
        .I1(\bdatr[2]_INST_0_i_6_n_0 ),
        .I2(sel0[3]),
        .I3(fnjpctl_rd),
        .I4(\fctl/fnjpctl_reg_n_0_[2] ),
        .I5(\bdatr[3]_INST_0_i_3_n_0 ),
        .O(\bdatr[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F444F4F)) 
    \bdatr[2]_INST_0_i_3 
       (.I0(\fcod/fnjpcod_reg_n_0_[2] ),
        .I1(fctl_ktc),
        .I2(\bdatr[2]_INST_0_i_7_n_0 ),
        .I3(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I4(\fcod/codkt_1__66_carry_n_6 ),
        .O(\bdatr[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB847BB77)) 
    \bdatr[2]_INST_0_i_4 
       (.I0(\bdatr[2]_INST_0_i_8_n_0 ),
        .I1(sel0[1]),
        .I2(\bdatr[2]_INST_0_i_9_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[4] ),
        .I4(sel0[0]),
        .O(\bdatr[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[2]_INST_0_i_5 
       (.I0(\bdatr[13]_INST_0_i_13_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[13]_INST_0_i_14_n_0 ),
        .I4(\bdatr[13]_INST_0_i_11_n_0 ),
        .I5(\bdatr[13]_INST_0_i_12_n_0 ),
        .O(\bdatr[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[2]_INST_0_i_6 
       (.I0(\bdatr[14]_INST_0_i_12_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[14]_INST_0_i_14_n_0 ),
        .I4(\bdatr[14]_INST_0_i_11_n_0 ),
        .I5(\bdatr[14]_INST_0_i_13_n_0 ),
        .O(\bdatr[2]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \bdatr[2]_INST_0_i_7 
       (.I0(fctl_ktc),
        .I1(\fnjp_adr[9]_INST_0_i_1_n_0 ),
        .I2(\fcod/fnjpcod_reg_n_0_[2] ),
        .I3(\fnjp_adr[7]_INST_0_i_2_n_0 ),
        .I4(\fcod/p_0_in [2]),
        .O(\bdatr[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[2]_INST_0_i_8 
       (.I0(\bdatr[13]_INST_0_i_6_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[13]_INST_0_i_7_n_0 ),
        .I4(\bdatr[13]_INST_0_i_4_n_0 ),
        .I5(\bdatr[13]_INST_0_i_5_n_0 ),
        .O(\bdatr[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[2]_INST_0_i_9 
       (.I0(\bdatr[13]_INST_0_i_16_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[13]_INST_0_i_15_n_0 ),
        .I4(\bdatr[13]_INST_0_i_17_n_0 ),
        .I5(\bdatr[13]_INST_0_i_18_n_0 ),
        .O(\bdatr[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAEFFAEFFAE)) 
    \bdatr[3]_INST_0 
       (.I0(\bdatr[3]_INST_0_i_1_n_0 ),
        .I1(fnjpcod_rd),
        .I2(\bdatr[3]_INST_0_i_2_n_0 ),
        .I3(\bdatr[3]_INST_0_i_3_n_0 ),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjpctl_rd),
        .O(bdatr[3]));
  LUT6 #(
    .INIT(64'h44B8748874B874B8)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(\bdatr[3]_INST_0_i_4_n_0 ),
        .I1(sel0[3]),
        .I2(\bdatr[3]_INST_0_i_5_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[4] ),
        .I4(\bdatr[3]_INST_0_i_6_n_0 ),
        .I5(sel0[2]),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \bdatr[3]_INST_0_i_10 
       (.I0(\fnjp_adr[9]_INST_0_i_4_n_0 ),
        .I1(\fcod/p_0_in [5]),
        .I2(\fcod/p_0_in [6]),
        .I3(\fcod/p_0_in [7]),
        .O(\bdatr[3]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h4F444F4F)) 
    \bdatr[3]_INST_0_i_2 
       (.I0(\fcod/fnjpcod_reg_n_0_[3] ),
        .I1(fctl_ktc),
        .I2(\bdatr[3]_INST_0_i_7_n_0 ),
        .I3(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I4(\fcod/codkt_1__66_carry_n_5 ),
        .O(\bdatr[3]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[3]_INST_0_i_3 
       (.I0(fnjpdbl_rd),
        .I1(fnjpdbl[1]),
        .O(\bdatr[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[3]_INST_0_i_4 
       (.I0(\bdatr[6]_INST_0_i_13_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[6]_INST_0_i_15_n_0 ),
        .I4(\bdatr[6]_INST_0_i_12_n_0 ),
        .I5(\bdatr[6]_INST_0_i_14_n_0 ),
        .O(\bdatr[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF40408F8)) 
    \bdatr[3]_INST_0_i_5 
       (.I0(\bdatr[3]_INST_0_i_8_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(\bdatr[3]_INST_0_i_9_n_0 ),
        .I4(\fctl/fnjpctl_reg_n_0_[4] ),
        .I5(sel0[2]),
        .O(\bdatr[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[3]_INST_0_i_6 
       (.I0(\bdatr[4]_INST_0_i_12_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[4]_INST_0_i_14_n_0 ),
        .I4(\bdatr[4]_INST_0_i_11_n_0 ),
        .I5(\bdatr[4]_INST_0_i_13_n_0 ),
        .O(\bdatr[3]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \bdatr[3]_INST_0_i_7 
       (.I0(\fcod/fnjpcod_reg_n_0_[3] ),
        .I1(\bdatr[3]_INST_0_i_10_n_0 ),
        .I2(\fcod/p_0_in [3]),
        .I3(\fnjp_adr[7]_INST_0_i_2_n_0 ),
        .I4(fctl_ktc),
        .O(\bdatr[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[3]_INST_0_i_8 
       (.I0(\bdatr[12]_INST_0_i_12_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[12]_INST_0_i_11_n_0 ),
        .I4(\bdatr[12]_INST_0_i_10_n_0 ),
        .I5(\bdatr[12]_INST_0_i_9_n_0 ),
        .O(\bdatr[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00330F55FF330F55)) 
    \bdatr[3]_INST_0_i_9 
       (.I0(\bdatr[13]_INST_0_i_13_n_0 ),
        .I1(\bdatr[13]_INST_0_i_11_n_0 ),
        .I2(\bdatr[13]_INST_0_i_12_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[1] ),
        .I4(\fctl/fnjpctl_reg_n_0_[0] ),
        .I5(\bdatr[13]_INST_0_i_14_n_0 ),
        .O(\bdatr[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF1FFF1F1)) 
    \bdatr[4]_INST_0 
       (.I0(\bdatr[4]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\bdatr[4]_INST_0_i_2_n_0 ),
        .I3(\bdatr[4]_INST_0_i_3_n_0 ),
        .I4(fnjpcod_rd),
        .I5(\bdatr[4]_INST_0_i_4_n_0 ),
        .O(bdatr[4]));
  LUT6 #(
    .INIT(64'hB487B7B7B4878484)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(\bdatr[4]_INST_0_i_5_n_0 ),
        .I1(sel0[2]),
        .I2(\fctl/fnjpctl_reg_n_0_[4] ),
        .I3(\bdatr[4]_INST_0_i_6_n_0 ),
        .I4(sel0[1]),
        .I5(\bdatr[4]_INST_0_i_7_n_0 ),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \bdatr[4]_INST_0_i_10 
       (.I0(fctl_ktc),
        .I1(\fnjp_adr[9]_INST_0_i_1_n_0 ),
        .I2(\fcod/fnjpcod_reg_n_0_[4] ),
        .I3(\fnjp_adr[7]_INST_0_i_2_n_0 ),
        .I4(\fcod/p_0_in [4]),
        .O(\bdatr[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[4]_INST_0_i_11 
       (.I0(fnjp_dat[28]),
        .I1(fnjp_dat[27]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[36]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[35]),
        .O(\bdatr[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[4]_INST_0_i_12 
       (.I0(fnjp_dat[36]),
        .I1(fnjp_dat[35]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[28]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[27]),
        .O(\bdatr[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[4]_INST_0_i_13 
       (.I0(fnjp_dat[27]),
        .I1(fnjp_dat[28]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[35]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[36]),
        .O(\bdatr[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[4]_INST_0_i_14 
       (.I0(fnjp_dat[35]),
        .I1(fnjp_dat[36]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[27]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[28]),
        .O(\bdatr[4]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \bdatr[4]_INST_0_i_15 
       (.I0(\bdatr[11]_INST_0_i_15_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[1] ),
        .I2(\bdatr[11]_INST_0_i_14_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[0] ),
        .I4(\bdatr[11]_INST_0_i_13_n_0 ),
        .O(\bdatr[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[4]_INST_0_i_16 
       (.I0(fnjp_dat[52]),
        .I1(fnjp_dat[51]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[12]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[11]),
        .O(\bdatr[4]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[4]_INST_0_i_17 
       (.I0(fnjp_dat[11]),
        .I1(fnjp_dat[12]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[51]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[52]),
        .O(\bdatr[4]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[4]_INST_0_i_18 
       (.I0(fnjp_dat[33]),
        .I1(fnjp_dat[38]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[25]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[30]),
        .O(\bdatr[4]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h20002AAA8AAA8000)) 
    \bdatr[4]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(\bdatr[4]_INST_0_i_8_n_0 ),
        .I2(\fctl/fnjpctl_reg_n_0_[0] ),
        .I3(\fctl/fnjpctl_reg_n_0_[1] ),
        .I4(\bdatr[4]_INST_0_i_9_n_0 ),
        .I5(\fctl/fnjpctl_reg_n_0_[4] ),
        .O(\bdatr[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F444F4F)) 
    \bdatr[4]_INST_0_i_3 
       (.I0(\fcod/fnjpcod_reg_n_0_[4] ),
        .I1(fctl_ktc),
        .I2(\bdatr[4]_INST_0_i_10_n_0 ),
        .I3(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I4(\fcod/codkt_1__66_carry_n_4 ),
        .O(\bdatr[4]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[4]_INST_0_i_4 
       (.I0(fnjpdbl[2]),
        .I1(fnjpdbl_rd),
        .I2(\fctl/fnjpctl_reg_n_0_[4] ),
        .I3(fnjpctl_rd),
        .O(\bdatr[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[4]_INST_0_i_5 
       (.I0(\bdatr[4]_INST_0_i_11_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[4]_INST_0_i_12_n_0 ),
        .I4(\bdatr[4]_INST_0_i_13_n_0 ),
        .I5(\bdatr[4]_INST_0_i_14_n_0 ),
        .O(\bdatr[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[4]_INST_0_i_6 
       (.I0(\bdatr[11]_INST_0_i_9_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[11]_INST_0_i_10_n_0 ),
        .I4(\bdatr[11]_INST_0_i_7_n_0 ),
        .I5(\bdatr[11]_INST_0_i_8_n_0 ),
        .O(\bdatr[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBF80407FFFFFFFFF)) 
    \bdatr[4]_INST_0_i_7 
       (.I0(\bdatr[11]_INST_0_i_16_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[4]_INST_0_i_15_n_0 ),
        .I4(\fctl/fnjpctl_reg_n_0_[4] ),
        .I5(sel0[0]),
        .O(\bdatr[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[4]_INST_0_i_8 
       (.I0(fnjp_dat[30]),
        .I1(fnjp_dat[25]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[38]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[33]),
        .O(\bdatr[4]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \bdatr[4]_INST_0_i_9 
       (.I0(\bdatr[4]_INST_0_i_16_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[1] ),
        .I2(\bdatr[4]_INST_0_i_17_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[0] ),
        .I4(\bdatr[4]_INST_0_i_18_n_0 ),
        .O(\bdatr[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF1FFF1F1)) 
    \bdatr[5]_INST_0 
       (.I0(\bdatr[5]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\bdatr[5]_INST_0_i_2_n_0 ),
        .I3(\bdatr[5]_INST_0_i_3_n_0 ),
        .I4(fnjpcod_rd),
        .I5(\bdatr[5]_INST_0_i_4_n_0 ),
        .O(bdatr[5]));
  LUT6 #(
    .INIT(64'h4B787B7B4B784848)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(\bdatr[5]_INST_0_i_5_n_0 ),
        .I1(sel0[2]),
        .I2(\fctl/fnjpctl_reg_n_0_[4] ),
        .I3(\bdatr[5]_INST_0_i_6_n_0 ),
        .I4(sel0[1]),
        .I5(\bdatr[5]_INST_0_i_7_n_0 ),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \bdatr[5]_INST_0_i_10 
       (.I0(\bdatr[15]_INST_0_i_14_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[1] ),
        .I2(\bdatr[15]_INST_0_i_13_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[0] ),
        .I4(\bdatr[15]_INST_0_i_12_n_0 ),
        .O(\bdatr[5]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \bdatr[5]_INST_0_i_11 
       (.I0(\bdatr[15]_INST_0_i_12_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[1] ),
        .I2(\bdatr[15]_INST_0_i_15_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[0] ),
        .I4(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[5]_INST_0_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \bdatr[5]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(\bdatr[5]_INST_0_i_8_n_0 ),
        .I2(\fctl/fnjpctl_reg_n_0_[4] ),
        .O(\bdatr[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F444F4F)) 
    \bdatr[5]_INST_0_i_3 
       (.I0(\fcod/fnjpcod_reg_n_0_[5] ),
        .I1(fctl_ktc),
        .I2(\bdatr[5]_INST_0_i_9_n_0 ),
        .I3(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I4(\fcod/codkt_1__66_carry__0_n_7 ),
        .O(\bdatr[5]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[5]_INST_0_i_4 
       (.I0(fnjpdbl[2]),
        .I1(fnjpdbl_rd),
        .I2(fnjpctl_rd),
        .I3(fctl_ktc),
        .O(\bdatr[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h01C10DCD31F13DFD)) 
    \bdatr[5]_INST_0_i_5 
       (.I0(\bdatr[11]_INST_0_i_9_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[11]_INST_0_i_10_n_0 ),
        .I4(\bdatr[11]_INST_0_i_7_n_0 ),
        .I5(\bdatr[11]_INST_0_i_8_n_0 ),
        .O(\bdatr[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \bdatr[5]_INST_0_i_6 
       (.I0(\bdatr[13]_INST_0_i_7_n_0 ),
        .I1(\bdatr[13]_INST_0_i_6_n_0 ),
        .I2(\bdatr[13]_INST_0_i_5_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[1] ),
        .I4(\fctl/fnjpctl_reg_n_0_[0] ),
        .I5(\bdatr[13]_INST_0_i_4_n_0 ),
        .O(\bdatr[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBF80407FFFFFFFFF)) 
    \bdatr[5]_INST_0_i_7 
       (.I0(\bdatr[5]_INST_0_i_10_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[5]_INST_0_i_11_n_0 ),
        .I4(\fctl/fnjpctl_reg_n_0_[4] ),
        .I5(sel0[0]),
        .O(\bdatr[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[5]_INST_0_i_8 
       (.I0(\bdatr[9]_INST_0_i_9_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[9]_INST_0_i_8_n_0 ),
        .I4(\bdatr[9]_INST_0_i_10_n_0 ),
        .I5(\bdatr[9]_INST_0_i_11_n_0 ),
        .O(\bdatr[5]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \bdatr[5]_INST_0_i_9 
       (.I0(fctl_ktc),
        .I1(\fnjp_adr[9]_INST_0_i_1_n_0 ),
        .I2(\fcod/fnjpcod_reg_n_0_[5] ),
        .I3(\fnjp_adr[7]_INST_0_i_2_n_0 ),
        .I4(\fcod/p_0_in [5]),
        .O(\bdatr[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF1FFF1F1)) 
    \bdatr[6]_INST_0 
       (.I0(\bdatr[6]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\bdatr[6]_INST_0_i_2_n_0 ),
        .I3(\bdatr[6]_INST_0_i_3_n_0 ),
        .I4(fnjpcod_rd),
        .I5(\bdatr[6]_INST_0_i_4_n_0 ),
        .O(bdatr[6]));
  LUT6 #(
    .INIT(64'hB487B7B7B4878484)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(\bdatr[6]_INST_0_i_5_n_0 ),
        .I1(sel0[2]),
        .I2(\fctl/fnjpctl_reg_n_0_[4] ),
        .I3(\bdatr[6]_INST_0_i_6_n_0 ),
        .I4(sel0[1]),
        .I5(\bdatr[6]_INST_0_i_7_n_0 ),
        .O(\bdatr[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \bdatr[6]_INST_0_i_10 
       (.I0(fctl_ktc),
        .I1(\fnjp_adr[9]_INST_0_i_1_n_0 ),
        .I2(\fcod/fnjpcod_reg_n_0_[6] ),
        .I3(\fnjp_adr[7]_INST_0_i_2_n_0 ),
        .I4(\fcod/p_0_in [6]),
        .O(\bdatr[6]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hE5850505)) 
    \bdatr[6]_INST_0_i_11 
       (.I0(\fcod/fnjpcod_reg_n_0_[7] ),
        .I1(\fcod/fnjpcod_reg_n_0_[0] ),
        .I2(\fcod/fnjpcod_reg_n_0_[6] ),
        .I3(\fcod/fnjpcod_reg_n_0_[1] ),
        .I4(\fnjp_adr[12]_INST_0_i_2_n_0 ),
        .O(\bdatr[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[6]_INST_0_i_12 
       (.I0(fnjp_dat[12]),
        .I1(fnjp_dat[11]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[52]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[51]),
        .O(\bdatr[6]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[6]_INST_0_i_13 
       (.I0(fnjp_dat[38]),
        .I1(fnjp_dat[33]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[30]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[25]),
        .O(\bdatr[6]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[6]_INST_0_i_14 
       (.I0(fnjp_dat[25]),
        .I1(fnjp_dat[30]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[33]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[38]),
        .O(\bdatr[6]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[6]_INST_0_i_15 
       (.I0(fnjp_dat[51]),
        .I1(fnjp_dat[52]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[11]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[12]),
        .O(\bdatr[6]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \bdatr[6]_INST_0_i_16 
       (.I0(\bdatr[7]_INST_0_i_8_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[1] ),
        .I2(\bdatr[7]_INST_0_i_11_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[0] ),
        .I4(\bdatr[7]_INST_0_i_9_n_0 ),
        .O(\bdatr[6]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[6]_INST_0_i_17 
       (.I0(fnjp_dat[54]),
        .I1(fnjp_dat[49]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[14]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[9]),
        .O(\bdatr[6]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[6]_INST_0_i_18 
       (.I0(fnjp_dat[9]),
        .I1(fnjp_dat[14]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[49]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[54]),
        .O(\bdatr[6]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[6]_INST_0_i_19 
       (.I0(fnjp_dat[49]),
        .I1(fnjp_dat[54]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[9]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[14]),
        .O(\bdatr[6]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h20002AAA8AAA8000)) 
    \bdatr[6]_INST_0_i_2 
       (.I0(sel0[3]),
        .I1(\bdatr[6]_INST_0_i_8_n_0 ),
        .I2(\fctl/fnjpctl_reg_n_0_[0] ),
        .I3(\fctl/fnjpctl_reg_n_0_[1] ),
        .I4(\bdatr[6]_INST_0_i_9_n_0 ),
        .I5(\fctl/fnjpctl_reg_n_0_[4] ),
        .O(\bdatr[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F444F4F)) 
    \bdatr[6]_INST_0_i_3 
       (.I0(\fcod/fnjpcod_reg_n_0_[6] ),
        .I1(fctl_ktc),
        .I2(\bdatr[6]_INST_0_i_10_n_0 ),
        .I3(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I4(\fcod/codkt_1__66_carry__0_n_6 ),
        .O(\bdatr[6]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[6]_INST_0_i_4 
       (.I0(fnjpdbl[3]),
        .I1(fnjpdbl_rd),
        .I2(\bdatr[6]_INST_0_i_11_n_0 ),
        .I3(fnjpctl_rd),
        .O(\bdatr[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[6]_INST_0_i_5 
       (.I0(\bdatr[6]_INST_0_i_12_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[6]_INST_0_i_13_n_0 ),
        .I4(\bdatr[6]_INST_0_i_14_n_0 ),
        .I5(\bdatr[6]_INST_0_i_15_n_0 ),
        .O(\bdatr[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[6]_INST_0_i_6 
       (.I0(\bdatr[9]_INST_0_i_10_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[9]_INST_0_i_9_n_0 ),
        .I4(\bdatr[9]_INST_0_i_11_n_0 ),
        .I5(\bdatr[9]_INST_0_i_8_n_0 ),
        .O(\bdatr[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBF80407FFFFFFFFF)) 
    \bdatr[6]_INST_0_i_7 
       (.I0(\bdatr[7]_INST_0_i_10_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[6]_INST_0_i_16_n_0 ),
        .I4(\fctl/fnjpctl_reg_n_0_[4] ),
        .I5(sel0[0]),
        .O(\bdatr[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[6]_INST_0_i_8 
       (.I0(fnjp_dat[14]),
        .I1(fnjp_dat[9]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[54]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[49]),
        .O(\bdatr[6]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \bdatr[6]_INST_0_i_9 
       (.I0(\bdatr[6]_INST_0_i_17_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[1] ),
        .I2(\bdatr[6]_INST_0_i_18_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[0] ),
        .I4(\bdatr[6]_INST_0_i_19_n_0 ),
        .O(\bdatr[6]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1DD1)) 
    \bdatr[7]_INST_0 
       (.I0(\bdatr[7]_INST_0_i_1_n_0 ),
        .I1(sel0[3]),
        .I2(\bdatr[7]_INST_0_i_2_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[4] ),
        .I4(\bdatr[7]_INST_0_i_3_n_0 ),
        .I5(\bdatr[7]_INST_0_i_4_n_0 ),
        .O(bdatr[7]));
  LUT6 #(
    .INIT(64'hFF0000FF478B478B)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(\bdatr[7]_INST_0_i_5_n_0 ),
        .I1(sel0[1]),
        .I2(\bdatr[7]_INST_0_i_6_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[4] ),
        .I4(\bdatr[7]_INST_0_i_7_n_0 ),
        .I5(sel0[2]),
        .O(\bdatr[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[7]_INST_0_i_10 
       (.I0(fnjp_dat[8]),
        .I1(fnjp_dat[15]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[48]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[55]),
        .O(\bdatr[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[7]_INST_0_i_11 
       (.I0(fnjp_dat[57]),
        .I1(fnjp_dat[62]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[1]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[6]),
        .O(\bdatr[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFFFFFFFFFF0FF)) 
    \bdatr[7]_INST_0_i_12 
       (.I0(\fcod/p_0_in [4]),
        .I1(\bdatr[7]_INST_0_i_14_n_0 ),
        .I2(\fnjp_adr[9]_INST_0_i_4_n_0 ),
        .I3(\fcod/p_0_in [7]),
        .I4(\fcod/p_0_in [6]),
        .I5(\fcod/p_0_in [5]),
        .O(\bdatr[7]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \bdatr[7]_INST_0_i_13 
       (.I0(\bdatr[15]_INST_0_i_6_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[1] ),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[0] ),
        .I4(\bdatr[15]_INST_0_i_7_n_0 ),
        .O(\bdatr[7]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hAA80)) 
    \bdatr[7]_INST_0_i_14 
       (.I0(\fcod/p_0_in [3]),
        .I1(\fcod/p_0_in [1]),
        .I2(\fcod/p_0_in [0]),
        .I3(\fcod/p_0_in [2]),
        .O(\bdatr[7]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[7]_INST_0_i_2 
       (.I0(\bdatr[7]_INST_0_i_8_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[7]_INST_0_i_9_n_0 ),
        .I4(\bdatr[7]_INST_0_i_10_n_0 ),
        .I5(\bdatr[7]_INST_0_i_11_n_0 ),
        .O(\bdatr[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA08AA080000AA08)) 
    \bdatr[7]_INST_0_i_3 
       (.I0(fnjpcod_rd),
        .I1(\fcod/codkt_1__66_carry__0_n_5 ),
        .I2(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I3(\fnjp_adr[7]_INST_0_i_1_n_0 ),
        .I4(fctl_ktc),
        .I5(\fcod/fnjpcod_reg_n_0_[7] ),
        .O(\bdatr[7]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[7]_INST_0_i_4 
       (.I0(fnjpdbl[3]),
        .I1(fnjpdbl_rd),
        .I2(\bdatr[7]_INST_0_i_12_n_0 ),
        .I3(fnjpctl_rd),
        .O(\bdatr[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00550F33FF550F33)) 
    \bdatr[7]_INST_0_i_5 
       (.I0(\bdatr[13]_INST_0_i_17_n_0 ),
        .I1(\bdatr[13]_INST_0_i_16_n_0 ),
        .I2(\bdatr[13]_INST_0_i_18_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[1] ),
        .I4(\fctl/fnjpctl_reg_n_0_[0] ),
        .I5(\bdatr[13]_INST_0_i_15_n_0 ),
        .O(\bdatr[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h20002AAA8AAA8000)) 
    \bdatr[7]_INST_0_i_6 
       (.I0(sel0[0]),
        .I1(\bdatr[15]_INST_0_i_8_n_0 ),
        .I2(\fctl/fnjpctl_reg_n_0_[0] ),
        .I3(\fctl/fnjpctl_reg_n_0_[1] ),
        .I4(\bdatr[7]_INST_0_i_13_n_0 ),
        .I5(\fctl/fnjpctl_reg_n_0_[4] ),
        .O(\bdatr[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[7]_INST_0_i_7 
       (.I0(\bdatr[11]_INST_0_i_15_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[11]_INST_0_i_13_n_0 ),
        .I4(\bdatr[11]_INST_0_i_16_n_0 ),
        .I5(\bdatr[11]_INST_0_i_14_n_0 ),
        .O(\bdatr[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[7]_INST_0_i_8 
       (.I0(fnjp_dat[6]),
        .I1(fnjp_dat[1]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[62]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[57]),
        .O(\bdatr[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[7]_INST_0_i_9 
       (.I0(fnjp_dat[55]),
        .I1(fnjp_dat[48]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[15]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[8]),
        .O(\bdatr[7]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \bdatr[8]_INST_0 
       (.I0(\bdatr[8]_INST_0_i_1_n_0 ),
        .I1(\bdatr[8]_INST_0_i_2_n_0 ),
        .I2(fnjpcod_rd),
        .I3(\bdatr[8]_INST_0_i_3_n_0 ),
        .O(bdatr[8]));
  LUT5 #(
    .INIT(32'h04405555)) 
    \bdatr[8]_INST_0_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(\bdatr[8]_INST_0_i_4_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[4] ),
        .I4(\bdatr[8]_INST_0_i_5_n_0 ),
        .O(\bdatr[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \bdatr[8]_INST_0_i_2 
       (.I0(fnjpdbl[4]),
        .I1(fnjpdbl_rd),
        .I2(\fctl/fnjpctl_reg_n_0_[4] ),
        .I3(\bdatr[8]_INST_0_i_6_n_0 ),
        .I4(sel0[3]),
        .O(\bdatr[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00FFD0D0)) 
    \bdatr[8]_INST_0_i_3 
       (.I0(\fcod/codkt_1__66_carry__0_n_4 ),
        .I1(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I2(\fnjp_adr[9]_INST_0_i_1_n_0 ),
        .I3(\fcod/p_0_in [0]),
        .I4(fctl_ktc),
        .O(\bdatr[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[8]_INST_0_i_4 
       (.I0(\bdatr[13]_INST_0_i_17_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[13]_INST_0_i_16_n_0 ),
        .I4(\bdatr[13]_INST_0_i_18_n_0 ),
        .I5(\bdatr[13]_INST_0_i_15_n_0 ),
        .O(\bdatr[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFD0D07F7)) 
    \bdatr[8]_INST_0_i_5 
       (.I0(sel0[0]),
        .I1(\bdatr[8]_INST_0_i_7_n_0 ),
        .I2(sel0[1]),
        .I3(\bdatr[8]_INST_0_i_8_n_0 ),
        .I4(\fctl/fnjpctl_reg_n_0_[4] ),
        .I5(sel0[2]),
        .O(\bdatr[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[8]_INST_0_i_6 
       (.I0(\bdatr[15]_INST_0_i_7_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[15]_INST_0_i_9_n_0 ),
        .I4(\bdatr[15]_INST_0_i_6_n_0 ),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[8]_INST_0_i_7 
       (.I0(\bdatr[7]_INST_0_i_11_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[7]_INST_0_i_10_n_0 ),
        .I4(\bdatr[7]_INST_0_i_9_n_0 ),
        .I5(\bdatr[7]_INST_0_i_8_n_0 ),
        .O(\bdatr[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[8]_INST_0_i_8 
       (.I0(\bdatr[11]_INST_0_i_14_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[11]_INST_0_i_16_n_0 ),
        .I4(\bdatr[11]_INST_0_i_13_n_0 ),
        .I5(\bdatr[11]_INST_0_i_15_n_0 ),
        .O(\bdatr[8]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \bdatr[9]_INST_0 
       (.I0(\bdatr[9]_INST_0_i_1_n_0 ),
        .I1(fnjpcod_rd),
        .I2(\bdatr[9]_INST_0_i_2_n_0 ),
        .I3(fnjpdbl_rd),
        .I4(fnjpdbl[4]),
        .O(bdatr[9]));
  LUT6 #(
    .INIT(64'h744488B87474B8B8)) 
    \bdatr[9]_INST_0_i_1 
       (.I0(\bdatr[9]_INST_0_i_3_n_0 ),
        .I1(sel0[3]),
        .I2(\bdatr[9]_INST_0_i_4_n_0 ),
        .I3(\bdatr[9]_INST_0_i_5_n_0 ),
        .I4(\fctl/fnjpctl_reg_n_0_[4] ),
        .I5(sel0[2]),
        .O(\bdatr[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[9]_INST_0_i_10 
       (.I0(fnjp_dat[10]),
        .I1(fnjp_dat[13]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[50]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[53]),
        .O(\bdatr[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[9]_INST_0_i_11 
       (.I0(fnjp_dat[41]),
        .I1(fnjp_dat[46]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[17]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[22]),
        .O(\bdatr[9]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00FFD0D0)) 
    \bdatr[9]_INST_0_i_2 
       (.I0(\fcod/codkt_1__66_carry__1_n_7 ),
        .I1(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I2(\fnjp_adr[9]_INST_0_i_1_n_0 ),
        .I3(\fcod/p_0_in [1]),
        .I4(fctl_ktc),
        .O(\bdatr[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \bdatr[9]_INST_0_i_3 
       (.I0(\bdatr[7]_INST_0_i_9_n_0 ),
        .I1(\fctl/fnjpctl_reg_n_0_[0] ),
        .I2(\fctl/fnjpctl_reg_n_0_[1] ),
        .I3(\bdatr[7]_INST_0_i_11_n_0 ),
        .I4(\bdatr[7]_INST_0_i_8_n_0 ),
        .I5(\bdatr[7]_INST_0_i_10_n_0 ),
        .O(\bdatr[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEBAABBBBEBAA)) 
    \bdatr[9]_INST_0_i_4 
       (.I0(sel0[2]),
        .I1(\fctl/fnjpctl_reg_n_0_[4] ),
        .I2(\bdatr[9]_INST_0_i_6_n_0 ),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(\bdatr[9]_INST_0_i_7_n_0 ),
        .O(\bdatr[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \bdatr[9]_INST_0_i_5 
       (.I0(\bdatr[9]_INST_0_i_8_n_0 ),
        .I1(\bdatr[9]_INST_0_i_9_n_0 ),
        .I2(\bdatr[9]_INST_0_i_10_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[0] ),
        .I4(\fctl/fnjpctl_reg_n_0_[1] ),
        .I5(\bdatr[9]_INST_0_i_11_n_0 ),
        .O(\bdatr[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00550F33FF550F33)) 
    \bdatr[9]_INST_0_i_6 
       (.I0(\bdatr[6]_INST_0_i_8_n_0 ),
        .I1(\bdatr[6]_INST_0_i_17_n_0 ),
        .I2(\bdatr[6]_INST_0_i_18_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[1] ),
        .I4(\fctl/fnjpctl_reg_n_0_[0] ),
        .I5(\bdatr[6]_INST_0_i_19_n_0 ),
        .O(\bdatr[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00330F55FF330F55)) 
    \bdatr[9]_INST_0_i_7 
       (.I0(\bdatr[6]_INST_0_i_13_n_0 ),
        .I1(\bdatr[6]_INST_0_i_12_n_0 ),
        .I2(\bdatr[6]_INST_0_i_14_n_0 ),
        .I3(\fctl/fnjpctl_reg_n_0_[1] ),
        .I4(\fctl/fnjpctl_reg_n_0_[0] ),
        .I5(\bdatr[6]_INST_0_i_15_n_0 ),
        .O(\bdatr[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[9]_INST_0_i_8 
       (.I0(fnjp_dat[53]),
        .I1(fnjp_dat[50]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[13]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[10]),
        .O(\bdatr[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bdatr[9]_INST_0_i_9 
       (.I0(fnjp_dat[22]),
        .I1(fnjp_dat[17]),
        .I2(\fctl/fnjpctl_reg_n_0_[2] ),
        .I3(fnjp_dat[46]),
        .I4(\fctl/fnjpctl_reg_n_0_[3] ),
        .I5(fnjp_dat[41]),
        .O(\bdatr[9]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    codkt_1__1_carry__0_i_1
       (.I0(p_0_in1_in[1]),
        .I1(codk_2[6]),
        .I2(\fcod/codt_2_carry__0_n_4 ),
        .O(codkt_1__1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codkt_1__1_carry__0_i_2
       (.I0(codkt_1__1_carry_i_4_n_0),
        .O(codkt_1__1_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h96696969)) 
    codkt_1__1_carry__0_i_3
       (.I0(\fcod/codt_2_carry__0_n_4 ),
        .I1(codk_2[6]),
        .I2(p_0_in1_in[1]),
        .I3(codk_2[5]),
        .I4(\fcod/codt_2_carry__0_n_5 ),
        .O(codkt_1__1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    codkt_1__1_carry__0_i_4
       (.I0(codk_2[5]),
        .I1(\fcod/codt_2_carry__0_n_5 ),
        .I2(codkt_1__1_carry_i_4_n_0),
        .O(codkt_1__1_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h5556AAA9)) 
    codkt_1__1_carry__0_i_5
       (.I0(\fcod/codt_2_carry__0_n_6 ),
        .I1(p_0_in1_in[2]),
        .I2(p_0_in1_in[1]),
        .I3(p_0_in1_in[3]),
        .I4(p_0_in1_in[4]),
        .O(codkt_1__1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h56A9)) 
    codkt_1__1_carry__0_i_6
       (.I0(\fcod/codt_2_carry__0_n_7 ),
        .I1(p_0_in1_in[1]),
        .I2(p_0_in1_in[2]),
        .I3(p_0_in1_in[3]),
        .O(codkt_1__1_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    codkt_1__1_carry__1_i_1
       (.I0(p_0_in1_in[7]),
        .I1(codkt_1__1_carry__1_i_9_n_0),
        .I2(p_0_in1_in[8]),
        .O(codkt_1__1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    codkt_1__1_carry__1_i_10
       (.I0(codkt_1__1_carry__1_i_9_n_0),
        .I1(p_0_in1_in[7]),
        .O(codkt_1__1_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'hE10000E1E100E100)) 
    codkt_1__1_carry__1_i_2
       (.I0(p_0_in1_in[1]),
        .I1(p_0_in1_in[2]),
        .I2(p_0_in1_in[3]),
        .I3(p_0_in1_in[8]),
        .I4(p_0_in1_in[7]),
        .I5(codkt_1__1_carry__1_i_9_n_0),
        .O(codkt_1__1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    codkt_1__1_carry__1_i_3
       (.I0(codkt_1__1_carry__1_i_9_n_0),
        .I1(p_0_in1_in[7]),
        .I2(p_0_in1_in[2]),
        .I3(p_0_in1_in[1]),
        .O(codkt_1__1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    codkt_1__1_carry__1_i_4
       (.I0(\fcod/codt_2_carry__0_n_4 ),
        .I1(codk_2[6]),
        .I2(p_0_in1_in[1]),
        .O(codkt_1__1_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEB)) 
    codkt_1__1_carry__1_i_5
       (.I0(codkt_1__1_carry__1_i_1_n_0),
        .I1(p_0_in1_in[5]),
        .I2(p_0_in1_in[4]),
        .I3(p_0_in1_in[2]),
        .I4(p_0_in1_in[1]),
        .I5(p_0_in1_in[3]),
        .O(codkt_1__1_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'hB6D0B6D0B6D0D06B)) 
    codkt_1__1_carry__1_i_6
       (.I0(codkt_1__1_carry__1_i_10_n_0),
        .I1(p_0_in1_in[8]),
        .I2(p_0_in1_in[4]),
        .I3(p_0_in1_in[3]),
        .I4(p_0_in1_in[1]),
        .I5(p_0_in1_in[2]),
        .O(codkt_1__1_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h4BB42DD22DD2B44B)) 
    codkt_1__1_carry__1_i_7
       (.I0(codkt_1__1_carry__1_i_9_n_0),
        .I1(p_0_in1_in[7]),
        .I2(p_0_in1_in[8]),
        .I3(p_0_in1_in[3]),
        .I4(p_0_in1_in[2]),
        .I5(p_0_in1_in[1]),
        .O(codkt_1__1_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h69969669)) 
    codkt_1__1_carry__1_i_8
       (.I0(codkt_1__1_carry__1_i_9_n_0),
        .I1(p_0_in1_in[7]),
        .I2(codkt_1__1_carry__1_i_4_n_0),
        .I3(p_0_in1_in[1]),
        .I4(p_0_in1_in[2]),
        .O(codkt_1__1_carry__1_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    codkt_1__1_carry__1_i_9
       (.I0(p_0_in1_in[5]),
        .I1(p_0_in1_in[3]),
        .I2(p_0_in1_in[1]),
        .I3(p_0_in1_in[2]),
        .I4(p_0_in1_in[4]),
        .I5(p_0_in1_in[6]),
        .O(codkt_1__1_carry__1_i_9_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    codkt_1__1_carry__2_i_1
       (.I0(p_0_in1_in[6]),
        .I1(p_0_in1_in[5]),
        .I2(p_0_in1_in[3]),
        .I3(p_0_in1_in[1]),
        .I4(p_0_in1_in[2]),
        .I5(p_0_in1_in[4]),
        .O(codkt_1__1_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    codkt_1__1_carry_i_1
       (.I0(\fcod/codt_2_carry_n_4 ),
        .I1(p_0_in1_in[2]),
        .I2(p_0_in1_in[1]),
        .O(codkt_1__1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    codkt_1__1_carry_i_2
       (.I0(\fcod/codt_2_carry_n_5 ),
        .I1(p_0_in1_in[1]),
        .O(codkt_1__1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    codkt_1__1_carry_i_3
       (.I0(\fcod/codt_2_carry_n_6 ),
        .I1(codkt_1__1_carry_i_4_n_0),
        .O(codkt_1__1_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h000CFF20)) 
    codkt_1__1_carry_i_4
       (.I0(\fcod/codt_2_carry_n_7 ),
        .I1(codkt_1__1_carry_i_5_n_0),
        .I2(\fcod/codt_2_carry__0_n_6 ),
        .I3(\fcod/codt_2_carry__0_n_5 ),
        .I4(\fcod/codt_2_carry__0_n_4 ),
        .O(codkt_1__1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    codkt_1__1_carry_i_5
       (.I0(\fcod/codt_2_carry_n_4 ),
        .I1(\fcod/codt_2_carry_n_5 ),
        .I2(\fcod/codt_2_carry__0_n_7 ),
        .I3(\fcod/codt_2_carry_n_6 ),
        .O(codkt_1__1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hAAA9)) 
    codkt_1__37_carry__0_i_1
       (.I0(p_0_in1_in[4]),
        .I1(p_0_in1_in[3]),
        .I2(p_0_in1_in[1]),
        .I3(p_0_in1_in[2]),
        .O(codk_2[4]));
  LUT3 #(
    .INIT(8'hA9)) 
    codkt_1__37_carry__0_i_2
       (.I0(p_0_in1_in[3]),
        .I1(p_0_in1_in[2]),
        .I2(p_0_in1_in[1]),
        .O(codk_2[3]));
  LUT2 #(
    .INIT(4'h9)) 
    codkt_1__37_carry__0_i_3
       (.I0(p_0_in1_in[2]),
        .I1(p_0_in1_in[1]),
        .O(codk_2[2]));
  LUT1 #(
    .INIT(2'h1)) 
    codkt_1__37_carry__0_i_4
       (.I0(p_0_in1_in[1]),
        .O(codk_2[1]));
  LUT6 #(
    .INIT(64'h6666666999999996)) 
    codkt_1__37_carry__0_i_5
       (.I0(codkt_1__1_carry__1_i_9_n_0),
        .I1(p_0_in1_in[7]),
        .I2(p_0_in1_in[2]),
        .I3(p_0_in1_in[1]),
        .I4(p_0_in1_in[3]),
        .I5(p_0_in1_in[4]),
        .O(codkt_1__37_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hFC03FC0203FC03FD)) 
    codkt_1__37_carry__0_i_6
       (.I0(p_0_in1_in[4]),
        .I1(p_0_in1_in[2]),
        .I2(p_0_in1_in[1]),
        .I3(p_0_in1_in[3]),
        .I4(p_0_in1_in[5]),
        .I5(p_0_in1_in[6]),
        .O(codkt_1__37_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'hC3C23C3D)) 
    codkt_1__37_carry__0_i_7
       (.I0(p_0_in1_in[3]),
        .I1(p_0_in1_in[1]),
        .I2(p_0_in1_in[2]),
        .I3(p_0_in1_in[4]),
        .I4(p_0_in1_in[5]),
        .O(codkt_1__37_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h32CD)) 
    codkt_1__37_carry__0_i_8
       (.I0(p_0_in1_in[2]),
        .I1(p_0_in1_in[1]),
        .I2(p_0_in1_in[3]),
        .I3(p_0_in1_in[4]),
        .O(codkt_1__37_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    codkt_1__37_carry__1_i_1
       (.I0(p_0_in1_in[6]),
        .I1(p_0_in1_in[5]),
        .I2(p_0_in1_in[3]),
        .I3(p_0_in1_in[1]),
        .I4(p_0_in1_in[2]),
        .I5(p_0_in1_in[4]),
        .O(codk_2[6]));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    codkt_1__37_carry__1_i_2
       (.I0(p_0_in1_in[5]),
        .I1(p_0_in1_in[4]),
        .I2(p_0_in1_in[2]),
        .I3(p_0_in1_in[1]),
        .I4(p_0_in1_in[3]),
        .O(codk_2[5]));
  LUT3 #(
    .INIT(8'hC7)) 
    codkt_1__37_carry__1_i_3
       (.I0(p_0_in1_in[8]),
        .I1(codkt_1__1_carry__1_i_9_n_0),
        .I2(p_0_in1_in[7]),
        .O(codkt_1__37_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    codkt_1__37_carry__1_i_4
       (.I0(codk_2[6]),
        .I1(codkt_1__1_carry__1_i_1_n_0),
        .O(codkt_1__37_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'h5AA559A5)) 
    codkt_1__37_carry__1_i_5
       (.I0(p_0_in1_in[8]),
        .I1(p_0_in1_in[7]),
        .I2(p_0_in1_in[5]),
        .I3(codkt_1__37_carry__1_i_6_n_0),
        .I4(p_0_in1_in[6]),
        .O(codkt_1__37_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    codkt_1__37_carry__1_i_6
       (.I0(p_0_in1_in[3]),
        .I1(p_0_in1_in[1]),
        .I2(p_0_in1_in[2]),
        .I3(p_0_in1_in[4]),
        .O(codkt_1__37_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codkt_1__37_carry_i_1
       (.I0(codkt_1__1_carry_i_4_n_0),
        .O(codk_22));
  LUT4 #(
    .INIT(16'h56A9)) 
    codkt_1__37_carry_i_2
       (.I0(codkt_1__1_carry_i_4_n_0),
        .I1(p_0_in1_in[1]),
        .I2(p_0_in1_in[2]),
        .I3(p_0_in1_in[3]),
        .O(codkt_1__37_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    codkt_1__37_carry_i_3
       (.I0(p_0_in1_in[1]),
        .I1(p_0_in1_in[2]),
        .O(codkt_1__37_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    codkt_1__37_carry_i_4
       (.I0(p_0_in1_in[1]),
        .O(codkt_1__37_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codkt_1__37_carry_i_5
       (.I0(codkt_1__1_carry_i_4_n_0),
        .O(codkt_1__37_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    codkt_1__66_carry__0_i_1
       (.I0(\fcod/codkt_1__37_carry__0_n_6 ),
        .I1(\fcod/codkt_1__1_carry__0_n_4 ),
        .I2(codkt_1__1_carry_i_4_n_0),
        .O(codkt_1__66_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    codkt_1__66_carry__0_i_2
       (.I0(\fcod/codkt_1__37_carry__0_n_7 ),
        .I1(\fcod/codkt_1__1_carry__0_n_5 ),
        .O(codkt_1__66_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    codkt_1__66_carry__0_i_3
       (.I0(\fcod/codkt_1__37_carry_n_4 ),
        .I1(\fcod/codkt_1__1_carry__0_n_6 ),
        .I2(codkt_1__1_carry_i_4_n_0),
        .O(codkt_1__66_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    codkt_1__66_carry__0_i_4
       (.I0(codkt_1__1_carry_i_4_n_0),
        .I1(\fcod/codkt_1__37_carry_n_4 ),
        .I2(\fcod/codkt_1__1_carry__0_n_6 ),
        .O(codkt_1__66_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h17E8E817)) 
    codkt_1__66_carry__0_i_5
       (.I0(codkt_1__1_carry_i_4_n_0),
        .I1(\fcod/codkt_1__1_carry__0_n_4 ),
        .I2(\fcod/codkt_1__37_carry__0_n_6 ),
        .I3(\fcod/codkt_1__37_carry__0_n_5 ),
        .I4(\fcod/codkt_1__1_carry__1_n_7 ),
        .O(codkt_1__66_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    codkt_1__66_carry__0_i_6
       (.I0(codkt_1__66_carry__0_i_2_n_0),
        .I1(\fcod/codkt_1__37_carry__0_n_6 ),
        .I2(\fcod/codkt_1__1_carry__0_n_4 ),
        .I3(codkt_1__1_carry_i_4_n_0),
        .O(codkt_1__66_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h66969699)) 
    codkt_1__66_carry__0_i_7
       (.I0(\fcod/codkt_1__37_carry__0_n_7 ),
        .I1(\fcod/codkt_1__1_carry__0_n_5 ),
        .I2(codkt_1__1_carry_i_4_n_0),
        .I3(\fcod/codkt_1__1_carry__0_n_6 ),
        .I4(\fcod/codkt_1__37_carry_n_4 ),
        .O(codkt_1__66_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h96696969)) 
    codkt_1__66_carry__0_i_8
       (.I0(\fcod/codkt_1__1_carry__0_n_6 ),
        .I1(\fcod/codkt_1__37_carry_n_4 ),
        .I2(codkt_1__1_carry_i_4_n_0),
        .I3(\fcod/codkt_1__1_carry__0_n_7 ),
        .I4(\fcod/codkt_1__37_carry_n_5 ),
        .O(codkt_1__66_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    codkt_1__66_carry__1_i_1
       (.I0(\fcod/codkt_1__37_carry__1_n_7 ),
        .I1(\fcod/codkt_1__1_carry__1_n_5 ),
        .O(codkt_1__66_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    codkt_1__66_carry__1_i_2
       (.I0(\fcod/codkt_1__37_carry__0_n_4 ),
        .I1(\fcod/codkt_1__1_carry__1_n_6 ),
        .O(codkt_1__66_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    codkt_1__66_carry__1_i_3
       (.I0(\fcod/codkt_1__37_carry__0_n_5 ),
        .I1(\fcod/codkt_1__1_carry__1_n_7 ),
        .O(codkt_1__66_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    codkt_1__66_carry__1_i_4
       (.I0(\fcod/codkt_1__1_carry__1_n_4 ),
        .I1(\fcod/codkt_1__37_carry__1_n_6 ),
        .I2(\fcod/codkt_1__1_carry__2_n_7 ),
        .I3(\fcod/codkt_1__37_carry__1_n_5 ),
        .O(codkt_1__66_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    codkt_1__66_carry__1_i_5
       (.I0(\fcod/codkt_1__1_carry__1_n_5 ),
        .I1(\fcod/codkt_1__37_carry__1_n_7 ),
        .I2(\fcod/codkt_1__37_carry__1_n_6 ),
        .I3(\fcod/codkt_1__1_carry__1_n_4 ),
        .O(codkt_1__66_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    codkt_1__66_carry__1_i_6
       (.I0(\fcod/codkt_1__1_carry__1_n_6 ),
        .I1(\fcod/codkt_1__37_carry__0_n_4 ),
        .I2(\fcod/codkt_1__37_carry__1_n_7 ),
        .I3(\fcod/codkt_1__1_carry__1_n_5 ),
        .O(codkt_1__66_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    codkt_1__66_carry__1_i_7
       (.I0(\fcod/codkt_1__1_carry__1_n_7 ),
        .I1(\fcod/codkt_1__37_carry__0_n_5 ),
        .I2(\fcod/codkt_1__37_carry__0_n_4 ),
        .I3(\fcod/codkt_1__1_carry__1_n_6 ),
        .O(codkt_1__66_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    codkt_1__66_carry_i_1
       (.I0(\fcod/codkt_1__37_carry_n_6 ),
        .I1(\fcod/codkt_1__1_carry_n_4 ),
        .O(codkt_1__66_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    codkt_1__66_carry_i_2
       (.I0(\fcod/codkt_1__1_carry_n_5 ),
        .I1(\fcod/codkt_1__37_carry_n_7 ),
        .O(codkt_1__66_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    codkt_1__66_carry_i_3
       (.I0(\fcod/codkt_1__1_carry_n_4 ),
        .I1(\fcod/codkt_1__37_carry_n_6 ),
        .I2(\fcod/codkt_1__1_carry__0_n_7 ),
        .I3(\fcod/codkt_1__37_carry_n_5 ),
        .O(codkt_1__66_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    codkt_1__66_carry_i_4
       (.I0(\fcod/codkt_1__37_carry_n_7 ),
        .I1(\fcod/codkt_1__1_carry_n_5 ),
        .I2(\fcod/codkt_1__1_carry_n_4 ),
        .I3(\fcod/codkt_1__37_carry_n_6 ),
        .O(codkt_1__66_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    codkt_1__66_carry_i_5
       (.I0(\fcod/codkt_1__1_carry_n_5 ),
        .I1(\fcod/codkt_1__37_carry_n_7 ),
        .O(codkt_1__66_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    codkt_1__66_carry_i_6
       (.I0(\fcod/codkt_1__1_carry_n_6 ),
        .I1(codkt_1__1_carry_i_4_n_0),
        .O(codkt_1__66_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__0_i_1
       (.I0(\fcod/fnjpcod_reg_n_0_[7] ),
        .O(codt_2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__0_i_2
       (.I0(\fcod/fnjpcod_reg_n_0_[6] ),
        .O(codt_2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__0_i_3
       (.I0(\fcod/fnjpcod_reg_n_0_[5] ),
        .O(codt_2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__0_i_4
       (.I0(\fcod/fnjpcod_reg_n_0_[4] ),
        .O(codt_2_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__1_i_1
       (.I0(\fcod/p_0_in [3]),
        .O(codt_2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__1_i_2
       (.I0(\fcod/p_0_in [2]),
        .O(codt_2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__1_i_3
       (.I0(\fcod/p_0_in [1]),
        .O(codt_2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__1_i_4
       (.I0(\fcod/p_0_in [0]),
        .O(codt_2_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h8F)) 
    codt_2_carry__2_i_1
       (.I0(\fcod/p_0_in [5]),
        .I1(\fcod/p_0_in [7]),
        .I2(\fcod/p_0_in [6]),
        .O(codt_2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__2_i_2
       (.I0(\fcod/p_0_in [5]),
        .O(codt_2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__2_i_3
       (.I0(\fcod/p_0_in [4]),
        .O(codt_2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry_i_1
       (.I0(\fcod/fnjpcod_reg_n_0_[3] ),
        .O(codt_2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry_i_2
       (.I0(\fcod/fnjpcod_reg_n_0_[2] ),
        .O(codt_2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry_i_3
       (.I0(\fcod/fnjpcod_reg_n_0_[1] ),
        .O(codt_2_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'hFF0080FF)) 
    codt_2_carry_i_4
       (.I0(\fnjp_adr[12]_INST_0_i_2_n_0 ),
        .I1(\fcod/fnjpcod_reg_n_0_[1] ),
        .I2(\fcod/fnjpcod_reg_n_0_[6] ),
        .I3(\fcod/fnjpcod_reg_n_0_[0] ),
        .I4(\fcod/fnjpcod_reg_n_0_[7] ),
        .O(codt_2_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fcod/codkt_1__1_carry 
       (.CI(\<const0> ),
        .CO({\fcod/codkt_1__1_carry_n_0 ,\fcod/codkt_1__1_carry_n_1 ,\fcod/codkt_1__1_carry_n_2 ,\fcod/codkt_1__1_carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\fcod/codt_2_carry_n_4 ,\fcod/codt_2_carry_n_5 ,\fcod/codt_2_carry_n_6 ,\<const0> }),
        .O({\fcod/codkt_1__1_carry_n_4 ,\fcod/codkt_1__1_carry_n_5 ,\fcod/codkt_1__1_carry_n_6 ,\fcod/codkt_1__1_carry_n_7 }),
        .S({codkt_1__1_carry_i_1_n_0,codkt_1__1_carry_i_2_n_0,codkt_1__1_carry_i_3_n_0,\fcod/codt_2_carry_n_7 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fcod/codkt_1__1_carry__0 
       (.CI(\fcod/codkt_1__1_carry_n_0 ),
        .CO({\fcod/codkt_1__1_carry__0_n_0 ,\fcod/codkt_1__1_carry__0_n_1 ,\fcod/codkt_1__1_carry__0_n_2 ,\fcod/codkt_1__1_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({codkt_1__1_carry__0_i_1_n_0,codkt_1__1_carry__0_i_2_n_0,\fcod/codt_2_carry__0_n_6 ,\fcod/codt_2_carry__0_n_7 }),
        .O({\fcod/codkt_1__1_carry__0_n_4 ,\fcod/codkt_1__1_carry__0_n_5 ,\fcod/codkt_1__1_carry__0_n_6 ,\fcod/codkt_1__1_carry__0_n_7 }),
        .S({codkt_1__1_carry__0_i_3_n_0,codkt_1__1_carry__0_i_4_n_0,codkt_1__1_carry__0_i_5_n_0,codkt_1__1_carry__0_i_6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fcod/codkt_1__1_carry__1 
       (.CI(\fcod/codkt_1__1_carry__0_n_0 ),
        .CO({\fcod/codkt_1__1_carry__1_n_0 ,\fcod/codkt_1__1_carry__1_n_1 ,\fcod/codkt_1__1_carry__1_n_2 ,\fcod/codkt_1__1_carry__1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({codkt_1__1_carry__1_i_1_n_0,codkt_1__1_carry__1_i_2_n_0,codkt_1__1_carry__1_i_3_n_0,codkt_1__1_carry__1_i_4_n_0}),
        .O({\fcod/codkt_1__1_carry__1_n_4 ,\fcod/codkt_1__1_carry__1_n_5 ,\fcod/codkt_1__1_carry__1_n_6 ,\fcod/codkt_1__1_carry__1_n_7 }),
        .S({codkt_1__1_carry__1_i_5_n_0,codkt_1__1_carry__1_i_6_n_0,codkt_1__1_carry__1_i_7_n_0,codkt_1__1_carry__1_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fcod/codkt_1__1_carry__2 
       (.CI(\fcod/codkt_1__1_carry__1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\fcod/codkt_1__1_carry__2_n_7 ),
        .S({\<const0> ,\<const0> ,\<const0> ,codkt_1__1_carry__2_i_1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fcod/codkt_1__37_carry 
       (.CI(\<const0> ),
        .CO({\fcod/codkt_1__37_carry_n_0 ,\fcod/codkt_1__37_carry_n_1 ,\fcod/codkt_1__37_carry_n_2 ,\fcod/codkt_1__37_carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI({codk_22,\<const0> ,\<const0> ,\<const1> }),
        .O({\fcod/codkt_1__37_carry_n_4 ,\fcod/codkt_1__37_carry_n_5 ,\fcod/codkt_1__37_carry_n_6 ,\fcod/codkt_1__37_carry_n_7 }),
        .S({codkt_1__37_carry_i_2_n_0,codkt_1__37_carry_i_3_n_0,codkt_1__37_carry_i_4_n_0,codkt_1__37_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fcod/codkt_1__37_carry__0 
       (.CI(\fcod/codkt_1__37_carry_n_0 ),
        .CO({\fcod/codkt_1__37_carry__0_n_0 ,\fcod/codkt_1__37_carry__0_n_1 ,\fcod/codkt_1__37_carry__0_n_2 ,\fcod/codkt_1__37_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI(codk_2[4:1]),
        .O({\fcod/codkt_1__37_carry__0_n_4 ,\fcod/codkt_1__37_carry__0_n_5 ,\fcod/codkt_1__37_carry__0_n_6 ,\fcod/codkt_1__37_carry__0_n_7 }),
        .S({codkt_1__37_carry__0_i_5_n_0,codkt_1__37_carry__0_i_6_n_0,codkt_1__37_carry__0_i_7_n_0,codkt_1__37_carry__0_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fcod/codkt_1__37_carry__1 
       (.CI(\fcod/codkt_1__37_carry__0_n_0 ),
        .CO({\fcod/codkt_1__37_carry__1_n_2 ,\fcod/codkt_1__37_carry__1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,codk_2[6:5]}),
        .O({\fcod/codkt_1__37_carry__1_n_5 ,\fcod/codkt_1__37_carry__1_n_6 ,\fcod/codkt_1__37_carry__1_n_7 }),
        .S({\<const0> ,codkt_1__37_carry__1_i_3_n_0,codkt_1__37_carry__1_i_4_n_0,codkt_1__37_carry__1_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fcod/codkt_1__66_carry 
       (.CI(\<const0> ),
        .CO({\fcod/codkt_1__66_carry_n_0 ,\fcod/codkt_1__66_carry_n_1 ,\fcod/codkt_1__66_carry_n_2 ,\fcod/codkt_1__66_carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI({codkt_1__66_carry_i_1_n_0,codkt_1__66_carry_i_2_n_0,\<const0> ,\fcod/codkt_1__1_carry_n_6 }),
        .O({\fcod/codkt_1__66_carry_n_4 ,\fcod/codkt_1__66_carry_n_5 ,\fcod/codkt_1__66_carry_n_6 ,\fcod/codkt_1__66_carry_n_7 }),
        .S({codkt_1__66_carry_i_3_n_0,codkt_1__66_carry_i_4_n_0,codkt_1__66_carry_i_5_n_0,codkt_1__66_carry_i_6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fcod/codkt_1__66_carry__0 
       (.CI(\fcod/codkt_1__66_carry_n_0 ),
        .CO({\fcod/codkt_1__66_carry__0_n_0 ,\fcod/codkt_1__66_carry__0_n_1 ,\fcod/codkt_1__66_carry__0_n_2 ,\fcod/codkt_1__66_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({codkt_1__66_carry__0_i_1_n_0,codkt_1__66_carry__0_i_2_n_0,codkt_1__66_carry__0_i_3_n_0,codkt_1__66_carry__0_i_4_n_0}),
        .O({\fcod/codkt_1__66_carry__0_n_4 ,\fcod/codkt_1__66_carry__0_n_5 ,\fcod/codkt_1__66_carry__0_n_6 ,\fcod/codkt_1__66_carry__0_n_7 }),
        .S({codkt_1__66_carry__0_i_5_n_0,codkt_1__66_carry__0_i_6_n_0,codkt_1__66_carry__0_i_7_n_0,codkt_1__66_carry__0_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fcod/codkt_1__66_carry__1 
       (.CI(\fcod/codkt_1__66_carry__0_n_0 ),
        .CO({\fcod/codkt_1__66_carry__1_n_1 ,\fcod/codkt_1__66_carry__1_n_2 ,\fcod/codkt_1__66_carry__1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,codkt_1__66_carry__1_i_1_n_0,codkt_1__66_carry__1_i_2_n_0,codkt_1__66_carry__1_i_3_n_0}),
        .O({\fcod/codkt_1__66_carry__1_n_4 ,\fcod/codkt_1__66_carry__1_n_5 ,\fcod/codkt_1__66_carry__1_n_6 ,\fcod/codkt_1__66_carry__1_n_7 }),
        .S({codkt_1__66_carry__1_i_4_n_0,codkt_1__66_carry__1_i_5_n_0,codkt_1__66_carry__1_i_6_n_0,codkt_1__66_carry__1_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fcod/codt_2_carry 
       (.CI(\<const0> ),
        .CO({\fcod/codt_2_carry_n_0 ,\fcod/codt_2_carry_n_1 ,\fcod/codt_2_carry_n_2 ,\fcod/codt_2_carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\fcod/fnjpcod_reg_n_0_[3] ,\fcod/fnjpcod_reg_n_0_[2] ,\fcod/fnjpcod_reg_n_0_[1] ,\fcod/fnjpcod_reg_n_0_[0] }),
        .O({\fcod/codt_2_carry_n_4 ,\fcod/codt_2_carry_n_5 ,\fcod/codt_2_carry_n_6 ,\fcod/codt_2_carry_n_7 }),
        .S({codt_2_carry_i_1_n_0,codt_2_carry_i_2_n_0,codt_2_carry_i_3_n_0,codt_2_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fcod/codt_2_carry__0 
       (.CI(\fcod/codt_2_carry_n_0 ),
        .CO({\fcod/codt_2_carry__0_n_0 ,\fcod/codt_2_carry__0_n_1 ,\fcod/codt_2_carry__0_n_2 ,\fcod/codt_2_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\fcod/fnjpcod_reg_n_0_[7] ,\fcod/fnjpcod_reg_n_0_[6] ,\fcod/fnjpcod_reg_n_0_[5] ,\fcod/fnjpcod_reg_n_0_[4] }),
        .O({\fcod/codt_2_carry__0_n_4 ,\fcod/codt_2_carry__0_n_5 ,\fcod/codt_2_carry__0_n_6 ,\fcod/codt_2_carry__0_n_7 }),
        .S({codt_2_carry__0_i_1_n_0,codt_2_carry__0_i_2_n_0,codt_2_carry__0_i_3_n_0,codt_2_carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fcod/codt_2_carry__1 
       (.CI(\fcod/codt_2_carry__0_n_0 ),
        .CO({\fcod/codt_2_carry__1_n_0 ,\fcod/codt_2_carry__1_n_1 ,\fcod/codt_2_carry__1_n_2 ,\fcod/codt_2_carry__1_n_3 }),
        .CYINIT(\<const0> ),
        .DI(\fcod/p_0_in [3:0]),
        .O(p_0_in1_in[4:1]),
        .S({codt_2_carry__1_i_1_n_0,codt_2_carry__1_i_2_n_0,codt_2_carry__1_i_3_n_0,codt_2_carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fcod/codt_2_carry__2 
       (.CI(\fcod/codt_2_carry__1_n_0 ),
        .CO({\fcod/codt_2_carry__2_n_1 ,\fcod/codt_2_carry__2_n_2 ,\fcod/codt_2_carry__2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\fcod/p_0_in [6:4]}),
        .O(p_0_in1_in[8:5]),
        .S({\fcod/p_0_in [7],codt_2_carry__2_i_1_n_0,codt_2_carry__2_i_2_n_0,codt_2_carry__2_i_3_n_0}));
  FDRE \fcod/fnjpcod_reg[0] 
       (.C(clk),
        .CE(fnjpcod_wr),
        .D(bdatw[0]),
        .Q(\fcod/fnjpcod_reg_n_0_[0] ),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fcod/fnjpcod_reg[10] 
       (.C(clk),
        .CE(fnjpcod_wr),
        .D(bdatw[10]),
        .Q(\fcod/p_0_in [2]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fcod/fnjpcod_reg[11] 
       (.C(clk),
        .CE(fnjpcod_wr),
        .D(bdatw[11]),
        .Q(\fcod/p_0_in [3]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fcod/fnjpcod_reg[12] 
       (.C(clk),
        .CE(fnjpcod_wr),
        .D(bdatw[12]),
        .Q(\fcod/p_0_in [4]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fcod/fnjpcod_reg[13] 
       (.C(clk),
        .CE(fnjpcod_wr),
        .D(bdatw[13]),
        .Q(\fcod/p_0_in [5]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fcod/fnjpcod_reg[14] 
       (.C(clk),
        .CE(fnjpcod_wr),
        .D(bdatw[14]),
        .Q(\fcod/p_0_in [6]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fcod/fnjpcod_reg[15] 
       (.C(clk),
        .CE(fnjpcod_wr),
        .D(bdatw[15]),
        .Q(\fcod/p_0_in [7]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fcod/fnjpcod_reg[1] 
       (.C(clk),
        .CE(fnjpcod_wr),
        .D(bdatw[1]),
        .Q(\fcod/fnjpcod_reg_n_0_[1] ),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fcod/fnjpcod_reg[2] 
       (.C(clk),
        .CE(fnjpcod_wr),
        .D(bdatw[2]),
        .Q(\fcod/fnjpcod_reg_n_0_[2] ),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fcod/fnjpcod_reg[3] 
       (.C(clk),
        .CE(fnjpcod_wr),
        .D(bdatw[3]),
        .Q(\fcod/fnjpcod_reg_n_0_[3] ),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fcod/fnjpcod_reg[4] 
       (.C(clk),
        .CE(fnjpcod_wr),
        .D(bdatw[4]),
        .Q(\fcod/fnjpcod_reg_n_0_[4] ),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fcod/fnjpcod_reg[5] 
       (.C(clk),
        .CE(fnjpcod_wr),
        .D(bdatw[5]),
        .Q(\fcod/fnjpcod_reg_n_0_[5] ),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fcod/fnjpcod_reg[6] 
       (.C(clk),
        .CE(fnjpcod_wr),
        .D(bdatw[6]),
        .Q(\fcod/fnjpcod_reg_n_0_[6] ),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fcod/fnjpcod_reg[7] 
       (.C(clk),
        .CE(fnjpcod_wr),
        .D(bdatw[7]),
        .Q(\fcod/fnjpcod_reg_n_0_[7] ),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fcod/fnjpcod_reg[8] 
       (.C(clk),
        .CE(fnjpcod_wr),
        .D(bdatw[8]),
        .Q(\fcod/p_0_in [0]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fcod/fnjpcod_reg[9] 
       (.C(clk),
        .CE(fnjpcod_wr),
        .D(bdatw[9]),
        .Q(\fcod/p_0_in [1]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fctl/fnjpcod_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\fctl/fnjpcod_rd0 ),
        .Q(fnjpcod_rd),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fctl/fnjpctl_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\fctl/fnjpctl_rd0 ),
        .Q(fnjpctl_rd),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fctl/fnjpctl_reg[0] 
       (.C(clk),
        .CE(\fctl/fnjpctl_wr ),
        .D(bdatw[0]),
        .Q(\fctl/fnjpctl_reg_n_0_[0] ),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fctl/fnjpctl_reg[1] 
       (.C(clk),
        .CE(\fctl/fnjpctl_wr ),
        .D(bdatw[1]),
        .Q(\fctl/fnjpctl_reg_n_0_[1] ),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fctl/fnjpctl_reg[2] 
       (.C(clk),
        .CE(\fctl/fnjpctl_wr ),
        .D(bdatw[2]),
        .Q(\fctl/fnjpctl_reg_n_0_[2] ),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fctl/fnjpctl_reg[3] 
       (.C(clk),
        .CE(\fctl/fnjpctl_wr ),
        .D(bdatw[3]),
        .Q(\fctl/fnjpctl_reg_n_0_[3] ),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fctl/fnjpctl_reg[4] 
       (.C(clk),
        .CE(\fctl/fnjpctl_wr ),
        .D(bdatw[4]),
        .Q(\fctl/fnjpctl_reg_n_0_[4] ),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fctl/fnjpctl_reg[5] 
       (.C(clk),
        .CE(\fctl/fnjpctl_wr ),
        .D(bdatw[5]),
        .Q(fctl_ktc),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fctl/fnjpdata_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\fctl/fnjpdata_rd0 ),
        .Q(sel0[3]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fctl/fnjpdatb_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\fctl/fnjpdatb_rd0 ),
        .Q(sel0[2]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fctl/fnjpdatc_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\fctl/fnjpdatc_rd0 ),
        .Q(sel0[1]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fctl/fnjpdatd_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\fctl/fnjpdatd_rd0 ),
        .Q(sel0[0]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fctl/fnjpdbl_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\fctl/fnjpdbl_rd0 ),
        .Q(fnjpdbl_rd),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fdbl/fnjpdbl_reg[0] 
       (.C(clk),
        .CE(fnjpdbl_wr),
        .D(bdatw[0]),
        .Q(fnjpdbl[0]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fdbl/fnjpdbl_reg[1] 
       (.C(clk),
        .CE(fnjpdbl_wr),
        .D(bdatw[1]),
        .Q(fnjpdbl[1]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fdbl/fnjpdbl_reg[2] 
       (.C(clk),
        .CE(fnjpdbl_wr),
        .D(bdatw[2]),
        .Q(fnjpdbl[2]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fdbl/fnjpdbl_reg[3] 
       (.C(clk),
        .CE(fnjpdbl_wr),
        .D(bdatw[3]),
        .Q(fnjpdbl[3]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fdbl/fnjpdbl_reg[4] 
       (.C(clk),
        .CE(fnjpdbl_wr),
        .D(bdatw[4]),
        .Q(fnjpdbl[4]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fdbl/fnjpdbl_reg[5] 
       (.C(clk),
        .CE(fnjpdbl_wr),
        .D(bdatw[5]),
        .Q(fnjpdbl[5]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fdbl/fnjpdbl_reg[6] 
       (.C(clk),
        .CE(fnjpdbl_wr),
        .D(bdatw[6]),
        .Q(fnjpdbl[6]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  FDRE \fdbl/fnjpdbl_reg[7] 
       (.C(clk),
        .CE(fnjpdbl_wr),
        .D(bdatw[7]),
        .Q(fnjpdbl[7]),
        .R(\fnjpctl[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \fnjp_adr[0]_INST_0 
       (.I0(\bdatr[0]_INST_0_i_3_n_0 ),
        .O(fnjp_adr[0]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \fnjp_adr[10]_INST_0 
       (.I0(\fcod/p_0_in [2]),
        .I1(fctl_ktc),
        .I2(\fcod/codkt_1__66_carry__1_n_6 ),
        .I3(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .O(fnjp_adr[10]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \fnjp_adr[11]_INST_0 
       (.I0(\fcod/p_0_in [3]),
        .I1(fctl_ktc),
        .I2(\fcod/codkt_1__66_carry__1_n_5 ),
        .I3(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .O(fnjp_adr[11]));
  LUT4 #(
    .INIT(16'hAE04)) 
    \fnjp_adr[12]_INST_0 
       (.I0(fctl_ktc),
        .I1(\fcod/codkt_1__66_carry__1_n_4 ),
        .I2(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I3(\fcod/p_0_in [4]),
        .O(fnjp_adr[12]));
  LUT6 #(
    .INIT(64'hEEAAEAAAEAFFAAFF)) 
    \fnjp_adr[12]_INST_0_i_1 
       (.I0(\bdatr[7]_INST_0_i_12_n_0 ),
        .I1(\fnjp_adr[12]_INST_0_i_2_n_0 ),
        .I2(\fcod/fnjpcod_reg_n_0_[1] ),
        .I3(\fcod/fnjpcod_reg_n_0_[6] ),
        .I4(\fcod/fnjpcod_reg_n_0_[0] ),
        .I5(\fcod/fnjpcod_reg_n_0_[7] ),
        .O(\fnjp_adr[12]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \fnjp_adr[12]_INST_0_i_2 
       (.I0(\fcod/fnjpcod_reg_n_0_[2] ),
        .I1(\fcod/fnjpcod_reg_n_0_[3] ),
        .I2(\fcod/fnjpcod_reg_n_0_[4] ),
        .I3(\fcod/fnjpcod_reg_n_0_[5] ),
        .O(\fnjp_adr[12]_INST_0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \fnjp_adr[1]_INST_0 
       (.I0(\bdatr[1]_INST_0_i_2_n_0 ),
        .O(fnjp_adr[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \fnjp_adr[2]_INST_0 
       (.I0(\bdatr[2]_INST_0_i_3_n_0 ),
        .O(fnjp_adr[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \fnjp_adr[3]_INST_0 
       (.I0(\bdatr[3]_INST_0_i_2_n_0 ),
        .O(fnjp_adr[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \fnjp_adr[4]_INST_0 
       (.I0(\bdatr[4]_INST_0_i_3_n_0 ),
        .O(fnjp_adr[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \fnjp_adr[5]_INST_0 
       (.I0(\bdatr[5]_INST_0_i_3_n_0 ),
        .O(fnjp_adr[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \fnjp_adr[6]_INST_0 
       (.I0(\bdatr[6]_INST_0_i_3_n_0 ),
        .O(fnjp_adr[6]));
  LUT5 #(
    .INIT(32'hF2F200F2)) 
    \fnjp_adr[7]_INST_0 
       (.I0(\fcod/codkt_1__66_carry__0_n_5 ),
        .I1(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I2(\fnjp_adr[7]_INST_0_i_1_n_0 ),
        .I3(fctl_ktc),
        .I4(\fcod/fnjpcod_reg_n_0_[7] ),
        .O(fnjp_adr[7]));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \fnjp_adr[7]_INST_0_i_1 
       (.I0(fctl_ktc),
        .I1(\fnjp_adr[9]_INST_0_i_1_n_0 ),
        .I2(\fcod/fnjpcod_reg_n_0_[7] ),
        .I3(\fnjp_adr[7]_INST_0_i_2_n_0 ),
        .I4(\fcod/p_0_in [7]),
        .O(\fnjp_adr[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \fnjp_adr[7]_INST_0_i_2 
       (.I0(\fcod/fnjpcod_reg_n_0_[1] ),
        .I1(\fcod/fnjpcod_reg_n_0_[0] ),
        .I2(\fcod/fnjpcod_reg_n_0_[3] ),
        .I3(\fcod/fnjpcod_reg_n_0_[2] ),
        .I4(\fnjp_adr[9]_INST_0_i_2_n_0 ),
        .O(\fnjp_adr[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8DDD8D8D)) 
    \fnjp_adr[8]_INST_0 
       (.I0(fctl_ktc),
        .I1(\fcod/p_0_in [0]),
        .I2(\fnjp_adr[9]_INST_0_i_1_n_0 ),
        .I3(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I4(\fcod/codkt_1__66_carry__0_n_4 ),
        .O(fnjp_adr[8]));
  LUT5 #(
    .INIT(32'h8DDD8D8D)) 
    \fnjp_adr[9]_INST_0 
       (.I0(fctl_ktc),
        .I1(\fcod/p_0_in [1]),
        .I2(\fnjp_adr[9]_INST_0_i_1_n_0 ),
        .I3(\fnjp_adr[12]_INST_0_i_1_n_0 ),
        .I4(\fcod/codkt_1__66_carry__1_n_7 ),
        .O(fnjp_adr[9]));
  LUT6 #(
    .INIT(64'hEEEEEEE0EEEEEEEE)) 
    \fnjp_adr[9]_INST_0_i_1 
       (.I0(\fnjp_adr[9]_INST_0_i_2_n_0 ),
        .I1(\fnjp_adr[9]_INST_0_i_3_n_0 ),
        .I2(\fcod/p_0_in [7]),
        .I3(\fcod/p_0_in [6]),
        .I4(\fcod/p_0_in [5]),
        .I5(\fnjp_adr[9]_INST_0_i_4_n_0 ),
        .O(\fnjp_adr[9]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fnjp_adr[9]_INST_0_i_2 
       (.I0(\fcod/fnjpcod_reg_n_0_[6] ),
        .I1(\fcod/fnjpcod_reg_n_0_[7] ),
        .I2(\fcod/fnjpcod_reg_n_0_[4] ),
        .I3(\fcod/fnjpcod_reg_n_0_[5] ),
        .O(\fnjp_adr[9]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fnjp_adr[9]_INST_0_i_3 
       (.I0(\fcod/fnjpcod_reg_n_0_[2] ),
        .I1(\fcod/fnjpcod_reg_n_0_[3] ),
        .I2(\fcod/fnjpcod_reg_n_0_[0] ),
        .I3(\fcod/fnjpcod_reg_n_0_[1] ),
        .O(\fnjp_adr[9]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \fnjp_adr[9]_INST_0_i_4 
       (.I0(\fcod/p_0_in [4]),
        .I1(\fcod/p_0_in [3]),
        .I2(\fcod/p_0_in [0]),
        .I3(\fcod/p_0_in [2]),
        .I4(\fcod/p_0_in [1]),
        .O(\fnjp_adr[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \fnjpcod[15]_i_1 
       (.I0(bcmdb),
        .I1(badr[3]),
        .I2(badr[2]),
        .I3(badr[1]),
        .I4(badr[0]),
        .I5(\fnjpctl[5]_i_3_n_0 ),
        .O(fnjpcod_wr));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    fnjpcod_rd_i_1
       (.I0(bcmdb),
        .I1(badr[3]),
        .I2(badr[2]),
        .I3(badr[1]),
        .I4(badr[0]),
        .I5(fnjpctl_rd_i_2_n_0),
        .O(\fctl/fnjpcod_rd0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \fnjpctl[5]_i_1 
       (.I0(rst_n),
        .O(\fnjpctl[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \fnjpctl[5]_i_2 
       (.I0(bcmdb),
        .I1(badr[3]),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(badr[1]),
        .I5(\fnjpctl[5]_i_3_n_0 ),
        .O(\fctl/fnjpctl_wr ));
  LUT3 #(
    .INIT(8'h08)) 
    \fnjpctl[5]_i_3 
       (.I0(bcmdw),
        .I1(brdy),
        .I2(bcs_fnjp_n),
        .O(\fnjpctl[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    fnjpctl_rd_i_1
       (.I0(bcmdb),
        .I1(badr[3]),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(badr[1]),
        .I5(fnjpctl_rd_i_2_n_0),
        .O(\fctl/fnjpctl_rd0 ));
  LUT2 #(
    .INIT(4'h2)) 
    fnjpctl_rd_i_2
       (.I0(bcmdr),
        .I1(bcs_fnjp_n),
        .O(fnjpctl_rd_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000008800000008)) 
    fnjpdata_rd_i_1
       (.I0(fnjpctl_rd_i_2_n_0),
        .I1(badr[3]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[1]),
        .I5(bcmdb),
        .O(\fctl/fnjpdata_rd0 ));
  LUT6 #(
    .INIT(64'h0088000000080000)) 
    fnjpdatb_rd_i_1
       (.I0(fnjpctl_rd_i_2_n_0),
        .I1(badr[1]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[3]),
        .I5(bcmdb),
        .O(\fctl/fnjpdatb_rd0 ));
  LUT6 #(
    .INIT(64'h0088000000080000)) 
    fnjpdatc_rd_i_1
       (.I0(fnjpctl_rd_i_2_n_0),
        .I1(badr[3]),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[2]),
        .I5(bcmdb),
        .O(\fctl/fnjpdatc_rd0 ));
  LUT6 #(
    .INIT(64'h8800000008000000)) 
    fnjpdatd_rd_i_1
       (.I0(fnjpctl_rd_i_2_n_0),
        .I1(badr[1]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[3]),
        .I5(bcmdb),
        .O(\fctl/fnjpdatd_rd0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \fnjpdbl[7]_i_1 
       (.I0(bcmdb),
        .I1(badr[3]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[1]),
        .I5(\fnjpctl[5]_i_3_n_0 ),
        .O(fnjpdbl_wr));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    fnjpdbl_rd_i_1
       (.I0(bcmdb),
        .I1(badr[3]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[1]),
        .I5(fnjpctl_rd_i_2_n_0),
        .O(\fctl/fnjpdbl_rd0 ));
endmodule
