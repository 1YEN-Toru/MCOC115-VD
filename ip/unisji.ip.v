
(* STRUCTURAL_NETLIST = "yes" *)
module unisji
   (clk,
    rst_n,
    brdy,
    bcmdw,
    bcmdr,
    bcs_unsj_n,
    badr,
    bdatw,
    bdatr,
    unsj_dat0,
    unsj_dat1,
    unsj_adr0,
    .unsj_adr1({\^unsj_adr1 [10],\^unsj_adr1 [9],\^unsj_adr1 [8],\^unsj_adr1 [7],\^unsj_adr1 [6],\^unsj_adr1 [5],\^unsj_adr1 [4],\^unsj_adr1 [3],\^unsj_adr1 [2],\^unsj_adr1 [1],\<const1> }));
//
//	Code Conversion (unicode <-> S-JIS) Unit
//		(c) 2022	1YEN Toru
//
//
//	2023/11/25	ver.1.02
//		corresponding to Xilinx Vivado
//		fix: 0 KU conversion mistake
//
//	2022/08/06	ver.1.00
//
  input clk;
  input rst_n;
  input brdy;
  input bcmdw;
  input bcmdr;
  input bcs_unsj_n;
  input [3:0]badr;
  input [15:0]bdatw;
  output [15:0]bdatr;
  input [95:0]unsj_dat0;
  input [95:0]unsj_dat1;
  output [10:0]unsj_adr0;
  output \<const1> ;
     output [10:1]\^unsj_adr1 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_unsj_n;
  wire [15:0]bdatr;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[10]_INST_0_i_1_n_0 ;
  wire \bdatr[11]_INST_0_i_1_n_0 ;
  wire \bdatr[12]_INST_0_i_1_n_0 ;
  wire \bdatr[13]_INST_0_i_1_n_0 ;
  wire \bdatr[14]_INST_0_i_1_n_0 ;
  wire \bdatr[15]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_2_n_0 ;
  wire \bdatr[1]_INST_0_i_3_n_0 ;
  wire \bdatr[1]_INST_0_i_4_n_0 ;
  wire \bdatr[1]_INST_0_i_5_n_0 ;
  wire \bdatr[1]_INST_0_i_6_n_0 ;
  wire \bdatr[1]_INST_0_i_7_n_0 ;
  wire \bdatr[1]_INST_0_i_8_n_0 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_1_n_0 ;
  wire \bdatr[5]_INST_0_i_1_n_0 ;
  wire \bdatr[6]_INST_0_i_1_n_0 ;
  wire \bdatr[7]_INST_0_i_1_n_0 ;
  wire \bdatr[8]_INST_0_i_1_n_0 ;
  wire \bdatr[9]_INST_0_i_1_n_0 ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire codk_22;
  wire cods_22;
  wire cods_4_carry__0_i_1_n_0;
  wire cods_4_carry__0_i_2_n_0;
  wire cods_4_carry__0_i_3_n_0;
  wire cods_4_carry__0_i_4_n_0;
  wire cods_4_carry__0_i_5_n_0;
  wire cods_4_carry__0_i_6_n_0;
  wire cods_4_carry__0_i_7_n_0;
  wire cods_4_carry__1_i_2_n_0;
  wire cods_4_carry__1_i_3_n_0;
  wire cods_4_carry__1_i_5_n_0;
  wire cods_4_carry__2_i_2_n_0;
  wire cods_4_carry__2_i_3_n_0;
  wire cods_4_carry__2_i_4_n_0;
  wire cods_4_carry__2_i_5_n_0;
  wire cods_4_carry_i_10_n_0;
  wire cods_4_carry_i_11_n_0;
  wire cods_4_carry_i_12_n_0;
  wire cods_4_carry_i_13_n_0;
  wire cods_4_carry_i_14_n_0;
  wire cods_4_carry_i_15_n_0;
  wire cods_4_carry_i_16_n_0;
  wire cods_4_carry_i_17_n_0;
  wire cods_4_carry_i_18_n_0;
  wire cods_4_carry_i_19_n_0;
  wire cods_4_carry_i_1_n_0;
  wire cods_4_carry_i_20_n_0;
  wire cods_4_carry_i_21_n_0;
  wire cods_4_carry_i_2_n_0;
  wire cods_4_carry_i_3_n_0;
  wire cods_4_carry_i_5_n_0;
  wire cods_4_carry_i_6_n_0;
  wire cods_4_carry_i_7_n_0;
  wire cods_4_carry_i_8_n_0;
  wire cods_4_carry_i_9_n_0;
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
  wire codt_2_carry_i_5_n_0;
  wire [7:1]codt_40_out;
  wire codt_4__0_carry__0_i_1_n_0;
  wire codt_4__0_carry__0_i_2_n_0;
  wire codt_4__0_carry__0_i_3_n_0;
  wire codt_4__0_carry__0_i_4_n_0;
  wire codt_4__0_carry__0_i_5_n_0;
  wire codt_4__0_carry__0_i_6_n_0;
  wire codt_4__0_carry__0_i_7_n_0;
  wire codt_4__0_carry_i_10_n_0;
  wire codt_4__0_carry_i_11_n_0;
  wire codt_4__0_carry_i_1_n_0;
  wire codt_4__0_carry_i_2_n_0;
  wire codt_4__0_carry_i_3_n_0;
  wire codt_4__0_carry_i_5_n_0;
  wire codt_4__0_carry_i_6_n_0;
  wire codt_4__0_carry_i_7_n_0;
  wire codt_4__0_carry_i_8_n_0;
  wire codt_4__0_carry_i_9_n_0;
  wire [14:0]data1;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1__3_n_0;
  wire i__carry__0_i_1__4_n_0;
  wire i__carry__0_i_1__5_n_0;
  wire i__carry__0_i_1__6_n_0;
  wire i__carry__0_i_1__7_n_0;
  wire i__carry__0_i_1__8_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2__3_n_0;
  wire i__carry__0_i_2__4_n_0;
  wire i__carry__0_i_2__5_n_0;
  wire i__carry__0_i_2__6_n_0;
  wire i__carry__0_i_2__7_n_0;
  wire i__carry__0_i_2__8_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1__5_n_0;
  wire i__carry_i_1__6_n_0;
  wire i__carry_i_1__7_n_0;
  wire i__carry_i_1__8_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2__5_n_0;
  wire i__carry_i_2__6_n_0;
  wire i__carry_i_2__7_n_0;
  wire i__carry_i_2__8_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_3__5_n_0;
  wire i__carry_i_3__6_n_0;
  wire i__carry_i_3__7_n_0;
  wire i__carry_i_3__8_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4__4_n_0;
  wire i__carry_i_4__5_n_0;
  wire i__carry_i_4__6_n_0;
  wire i__carry_i_4__7_n_0;
  wire i__carry_i_4__8_n_0;
  wire i__carry_i_4_n_0;
  wire [10:2]p_0_in;
  wire [7:1]p_0_in1_in;
  wire [15:0]p_2_in;
  wire rst_n;
  wire [2:0]stat;
  wire \stat[2]_i_2_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire \ucmp0/ucmp_match1 ;
  wire \ucmp0/ucmp_match10_out ;
  wire \ucmp0/ucmp_match12_out ;
  wire \ucmp0/ucmp_match14_out ;
  wire \ucmp0/ucmp_match16_out ;
  wire \ucmp0/ucmp_match18_out ;
  wire \ucmp0/ucmp_match1_carry__0_n_3 ;
  wire \ucmp0/ucmp_match1_carry_n_0 ;
  wire \ucmp0/ucmp_match1_carry_n_1 ;
  wire \ucmp0/ucmp_match1_carry_n_2 ;
  wire \ucmp0/ucmp_match1_carry_n_3 ;
  wire \ucmp0/ucmp_match1_inferred__0/i__carry__0_n_3 ;
  wire \ucmp0/ucmp_match1_inferred__0/i__carry_n_0 ;
  wire \ucmp0/ucmp_match1_inferred__0/i__carry_n_1 ;
  wire \ucmp0/ucmp_match1_inferred__0/i__carry_n_2 ;
  wire \ucmp0/ucmp_match1_inferred__0/i__carry_n_3 ;
  wire \ucmp0/ucmp_match1_inferred__1/i__carry__0_n_3 ;
  wire \ucmp0/ucmp_match1_inferred__1/i__carry_n_0 ;
  wire \ucmp0/ucmp_match1_inferred__1/i__carry_n_1 ;
  wire \ucmp0/ucmp_match1_inferred__1/i__carry_n_2 ;
  wire \ucmp0/ucmp_match1_inferred__1/i__carry_n_3 ;
  wire \ucmp0/ucmp_match1_inferred__2/i__carry__0_n_3 ;
  wire \ucmp0/ucmp_match1_inferred__2/i__carry_n_0 ;
  wire \ucmp0/ucmp_match1_inferred__2/i__carry_n_1 ;
  wire \ucmp0/ucmp_match1_inferred__2/i__carry_n_2 ;
  wire \ucmp0/ucmp_match1_inferred__2/i__carry_n_3 ;
  wire \ucmp0/ucmp_match1_inferred__3/i__carry__0_n_3 ;
  wire \ucmp0/ucmp_match1_inferred__3/i__carry_n_0 ;
  wire \ucmp0/ucmp_match1_inferred__3/i__carry_n_1 ;
  wire \ucmp0/ucmp_match1_inferred__3/i__carry_n_2 ;
  wire \ucmp0/ucmp_match1_inferred__3/i__carry_n_3 ;
  wire \ucmp0/ucmp_match1_inferred__4/i__carry__0_n_3 ;
  wire \ucmp0/ucmp_match1_inferred__4/i__carry_n_0 ;
  wire \ucmp0/ucmp_match1_inferred__4/i__carry_n_1 ;
  wire \ucmp0/ucmp_match1_inferred__4/i__carry_n_2 ;
  wire \ucmp0/ucmp_match1_inferred__4/i__carry_n_3 ;
  wire \ucmp1/ucmp_match1 ;
  wire \ucmp1/ucmp_match10_out ;
  wire \ucmp1/ucmp_match12_out ;
  wire \ucmp1/ucmp_match14_out ;
  wire \ucmp1/ucmp_match16_out ;
  wire \ucmp1/ucmp_match18_out ;
  wire \ucmp1/ucmp_match1_carry__0_n_3 ;
  wire \ucmp1/ucmp_match1_carry_n_0 ;
  wire \ucmp1/ucmp_match1_carry_n_1 ;
  wire \ucmp1/ucmp_match1_carry_n_2 ;
  wire \ucmp1/ucmp_match1_carry_n_3 ;
  wire \ucmp1/ucmp_match1_inferred__0/i__carry__0_n_3 ;
  wire \ucmp1/ucmp_match1_inferred__0/i__carry_n_0 ;
  wire \ucmp1/ucmp_match1_inferred__0/i__carry_n_1 ;
  wire \ucmp1/ucmp_match1_inferred__0/i__carry_n_2 ;
  wire \ucmp1/ucmp_match1_inferred__0/i__carry_n_3 ;
  wire \ucmp1/ucmp_match1_inferred__1/i__carry__0_n_3 ;
  wire \ucmp1/ucmp_match1_inferred__1/i__carry_n_0 ;
  wire \ucmp1/ucmp_match1_inferred__1/i__carry_n_1 ;
  wire \ucmp1/ucmp_match1_inferred__1/i__carry_n_2 ;
  wire \ucmp1/ucmp_match1_inferred__1/i__carry_n_3 ;
  wire \ucmp1/ucmp_match1_inferred__2/i__carry__0_n_3 ;
  wire \ucmp1/ucmp_match1_inferred__2/i__carry_n_0 ;
  wire \ucmp1/ucmp_match1_inferred__2/i__carry_n_1 ;
  wire \ucmp1/ucmp_match1_inferred__2/i__carry_n_2 ;
  wire \ucmp1/ucmp_match1_inferred__2/i__carry_n_3 ;
  wire \ucmp1/ucmp_match1_inferred__3/i__carry__0_n_3 ;
  wire \ucmp1/ucmp_match1_inferred__3/i__carry_n_0 ;
  wire \ucmp1/ucmp_match1_inferred__3/i__carry_n_1 ;
  wire \ucmp1/ucmp_match1_inferred__3/i__carry_n_2 ;
  wire \ucmp1/ucmp_match1_inferred__3/i__carry_n_3 ;
  wire \ucmp1/ucmp_match1_inferred__4/i__carry__0_n_3 ;
  wire \ucmp1/ucmp_match1_inferred__4/i__carry_n_0 ;
  wire \ucmp1/ucmp_match1_inferred__4/i__carry_n_1 ;
  wire \ucmp1/ucmp_match1_inferred__4/i__carry_n_2 ;
  wire \ucmp1/ucmp_match1_inferred__4/i__carry_n_3 ;
  wire ucmp_match1_carry__0_i_1__0_n_0;
  wire ucmp_match1_carry__0_i_1_n_0;
  wire ucmp_match1_carry__0_i_2__0_n_0;
  wire ucmp_match1_carry__0_i_2_n_0;
  wire ucmp_match1_carry_i_1__0_n_0;
  wire ucmp_match1_carry_i_1_n_0;
  wire ucmp_match1_carry_i_2__0_n_0;
  wire ucmp_match1_carry_i_2_n_0;
  wire ucmp_match1_carry_i_3__0_n_0;
  wire ucmp_match1_carry_i_3_n_0;
  wire ucmp_match1_carry_i_4__0_n_0;
  wire ucmp_match1_carry_i_4_n_0;
  wire \uctl/uctl_adr00 ;
  wire \uctl/uctl_kutn1__0_carry__0_n_3 ;
  wire \uctl/uctl_kutn1__0_carry_n_0 ;
  wire \uctl/uctl_kutn1__0_carry_n_1 ;
  wire \uctl/uctl_kutn1__0_carry_n_2 ;
  wire \uctl/uctl_kutn1__0_carry_n_3 ;
  wire [2:0]\uctl/ufsm/stat_nx ;
  wire \uctl/ufsm/uctl_busy_t ;
  wire \uctl/unsj_adr0[0]_INST_0_i_1_n_0 ;
  wire \uctl/unsj_adr0[1]_INST_0_i_1_n_0 ;
  wire \uctl/unsj_adr0[2]_INST_0_i_1_n_0 ;
  wire \uctl/unsj_adr0[3]_INST_0_i_1_n_0 ;
  wire \uctl/unsjctl_rd0 ;
  wire \uctl/unsjkutn_rd0 ;
  wire \uctl/unsjsjis_rd0 ;
  wire \uctl/unsjunic[15]_i_10_n_0 ;
  wire \uctl/unsjunic[15]_i_11_n_0 ;
  wire \uctl/unsjunic[15]_i_12_n_0 ;
  wire \uctl/unsjunic[15]_i_13_n_0 ;
  wire \uctl/unsjunic_rd0 ;
  wire [10:0]uctl_adr0;
  wire [10:1]uctl_adr1;
  wire uctl_busy;
  wire [13:0]uctl_kutn;
  wire [6:1]uctl_kutn1;
  wire uctl_kutn1__0_carry__0_i_1_n_0;
  wire uctl_kutn1__0_carry__0_i_2_n_0;
  wire uctl_kutn1__0_carry__0_i_3_n_0;
  wire uctl_kutn1__0_carry_i_10_n_0;
  wire uctl_kutn1__0_carry_i_11_n_0;
  wire uctl_kutn1__0_carry_i_12_n_0;
  wire uctl_kutn1__0_carry_i_13_n_0;
  wire uctl_kutn1__0_carry_i_1_n_0;
  wire uctl_kutn1__0_carry_i_2_n_0;
  wire uctl_kutn1__0_carry_i_3_n_0;
  wire uctl_kutn1__0_carry_i_4_n_0;
  wire uctl_kutn1__0_carry_i_5_n_0;
  wire uctl_kutn1__0_carry_i_6_n_0;
  wire uctl_kutn1__0_carry_i_7_n_0;
  wire uctl_kutn1__0_carry_i_8_n_0;
  wire [1:1]uctl_kutn_l_1;
  wire \uktn/codt_2_carry__0_n_0 ;
  wire \uktn/codt_2_carry__0_n_1 ;
  wire \uktn/codt_2_carry__0_n_2 ;
  wire \uktn/codt_2_carry__0_n_3 ;
  wire \uktn/codt_2_carry__0_n_4 ;
  wire \uktn/codt_2_carry__0_n_5 ;
  wire \uktn/codt_2_carry__0_n_6 ;
  wire \uktn/codt_2_carry__0_n_7 ;
  wire \uktn/codt_2_carry__1_n_0 ;
  wire \uktn/codt_2_carry__1_n_1 ;
  wire \uktn/codt_2_carry__1_n_2 ;
  wire \uktn/codt_2_carry__1_n_3 ;
  wire \uktn/codt_2_carry__2_n_2 ;
  wire \uktn/codt_2_carry__2_n_3 ;
  wire \uktn/codt_2_carry_n_0 ;
  wire \uktn/codt_2_carry_n_1 ;
  wire \uktn/codt_2_carry_n_2 ;
  wire \uktn/codt_2_carry_n_3 ;
  wire \uktn/codt_2_carry_n_4 ;
  wire \uktn/codt_2_carry_n_5 ;
  wire \uktn/codt_2_carry_n_6 ;
  wire \uktn/codt_2_carry_n_7 ;
  wire \uktn/codt_4__0_carry__0_n_2 ;
  wire \uktn/codt_4__0_carry__0_n_3 ;
  wire \uktn/codt_4__0_carry_n_0 ;
  wire \uktn/codt_4__0_carry_n_1 ;
  wire \uktn/codt_4__0_carry_n_2 ;
  wire \uktn/codt_4__0_carry_n_3 ;
  wire [10:0]unsj_adr0;
  wire [10:1]\^unsj_adr1 ;
  wire \unsj_cnt[10]_i_3_n_0 ;
  wire \unsj_cnt[10]_i_4_n_0 ;
  wire \unsj_cnt[10]_i_5_n_0 ;
  wire \unsj_cnt[10]_i_6_n_0 ;
  wire \unsj_cnt[10]_i_7_n_0 ;
  wire \unsj_cnt[1]_i_1_n_0 ;
  wire [95:0]unsj_dat0;
  wire [95:0]unsj_dat1;
  wire unsjctl_rd;
  wire [15:0]unsjkutn;
  wire \unsjkutn[0]_i_1_n_0 ;
  wire \unsjkutn[10]_i_1_n_0 ;
  wire \unsjkutn[10]_i_2_n_0 ;
  wire \unsjkutn[11]_i_1_n_0 ;
  wire \unsjkutn[11]_i_2_n_0 ;
  wire \unsjkutn[12]_i_1_n_0 ;
  wire \unsjkutn[13]_i_1_n_0 ;
  wire \unsjkutn[13]_i_3_n_0 ;
  wire \unsjkutn[14]_i_1_n_0 ;
  wire \unsjkutn[14]_i_2_n_0 ;
  wire \unsjkutn[14]_i_3_n_0 ;
  wire \unsjkutn[15]_i_1_n_0 ;
  wire \unsjkutn[15]_i_2_n_0 ;
  wire \unsjkutn[15]_i_3_n_0 ;
  wire \unsjkutn[15]_i_4_n_0 ;
  wire \unsjkutn[15]_i_5_n_0 ;
  wire \unsjkutn[15]_i_6_n_0 ;
  wire \unsjkutn[15]_i_7_n_0 ;
  wire \unsjkutn[1]_i_1_n_0 ;
  wire \unsjkutn[2]_i_1_n_0 ;
  wire \unsjkutn[3]_i_1_n_0 ;
  wire \unsjkutn[4]_i_1_n_0 ;
  wire \unsjkutn[5]_i_1_n_0 ;
  wire \unsjkutn[6]_i_1_n_0 ;
  wire \unsjkutn[7]_i_1_n_0 ;
  wire \unsjkutn[8]_i_1_n_0 ;
  wire \unsjkutn[9]_i_1_n_0 ;
  wire unsjkutn_rd;
  wire \unsjsjis[0]_i_1_n_0 ;
  wire \unsjsjis[10]_i_1_n_0 ;
  wire \unsjsjis[11]_i_1_n_0 ;
  wire \unsjsjis[12]_i_1_n_0 ;
  wire \unsjsjis[13]_i_1_n_0 ;
  wire \unsjsjis[14]_i_1_n_0 ;
  wire \unsjsjis[15]_i_1_n_0 ;
  wire \unsjsjis[15]_i_2_n_0 ;
  wire \unsjsjis[15]_i_3_n_0 ;
  wire \unsjsjis[15]_i_4_n_0 ;
  wire \unsjsjis[15]_i_5_n_0 ;
  wire \unsjsjis[15]_i_6_n_0 ;
  wire \unsjsjis[15]_i_7_n_0 ;
  wire \unsjsjis[15]_i_8_n_0 ;
  wire \unsjsjis[15]_i_9_n_0 ;
  wire \unsjsjis[1]_i_1_n_0 ;
  wire \unsjsjis[1]_i_2_n_0 ;
  wire \unsjsjis[2]_i_1_n_0 ;
  wire \unsjsjis[2]_i_2_n_0 ;
  wire \unsjsjis[3]_i_1_n_0 ;
  wire \unsjsjis[3]_i_2_n_0 ;
  wire \unsjsjis[4]_i_1_n_0 ;
  wire \unsjsjis[5]_i_1_n_0 ;
  wire \unsjsjis[5]_i_2_n_0 ;
  wire \unsjsjis[6]_i_1_n_0 ;
  wire \unsjsjis[6]_i_2_n_0 ;
  wire \unsjsjis[7]_i_1_n_0 ;
  wire \unsjsjis[7]_i_2_n_0 ;
  wire \unsjsjis[7]_i_3_n_0 ;
  wire \unsjsjis[7]_i_4_n_0 ;
  wire \unsjsjis[8]_i_1_n_0 ;
  wire \unsjsjis[9]_i_1_n_0 ;
  wire [15:0]unsjsjis_0;
  wire unsjsjis_rd;
  wire [15:0]unsjunic;
  wire \unsjunic[0]_i_2_n_0 ;
  wire \unsjunic[0]_i_3_n_0 ;
  wire \unsjunic[10]_i_2_n_0 ;
  wire \unsjunic[10]_i_3_n_0 ;
  wire \unsjunic[11]_i_2_n_0 ;
  wire \unsjunic[11]_i_3_n_0 ;
  wire \unsjunic[12]_i_2_n_0 ;
  wire \unsjunic[12]_i_3_n_0 ;
  wire \unsjunic[13]_i_2_n_0 ;
  wire \unsjunic[13]_i_3_n_0 ;
  wire \unsjunic[14]_i_2_n_0 ;
  wire \unsjunic[14]_i_3_n_0 ;
  wire \unsjunic[15]_i_1_n_0 ;
  wire \unsjunic[15]_i_2_n_0 ;
  wire \unsjunic[15]_i_4_n_0 ;
  wire \unsjunic[15]_i_5_n_0 ;
  wire \unsjunic[15]_i_6_n_0 ;
  wire \unsjunic[15]_i_7_n_0 ;
  wire \unsjunic[15]_i_8_n_0 ;
  wire \unsjunic[15]_i_9_n_0 ;
  wire \unsjunic[1]_i_2_n_0 ;
  wire \unsjunic[1]_i_3_n_0 ;
  wire \unsjunic[2]_i_2_n_0 ;
  wire \unsjunic[2]_i_3_n_0 ;
  wire \unsjunic[3]_i_2_n_0 ;
  wire \unsjunic[3]_i_3_n_0 ;
  wire \unsjunic[4]_i_2_n_0 ;
  wire \unsjunic[4]_i_3_n_0 ;
  wire \unsjunic[5]_i_2_n_0 ;
  wire \unsjunic[5]_i_3_n_0 ;
  wire \unsjunic[6]_i_2_n_0 ;
  wire \unsjunic[6]_i_3_n_0 ;
  wire \unsjunic[7]_i_2_n_0 ;
  wire \unsjunic[7]_i_3_n_0 ;
  wire \unsjunic[8]_i_2_n_0 ;
  wire \unsjunic[8]_i_3_n_0 ;
  wire \unsjunic[9]_i_2_n_0 ;
  wire \unsjunic[9]_i_3_n_0 ;
  wire unsjunic_rd;
  wire \usjs/cods_4_carry__0_n_0 ;
  wire \usjs/cods_4_carry__0_n_1 ;
  wire \usjs/cods_4_carry__0_n_2 ;
  wire \usjs/cods_4_carry__0_n_3 ;
  wire \usjs/cods_4_carry__1_n_0 ;
  wire \usjs/cods_4_carry__1_n_1 ;
  wire \usjs/cods_4_carry__1_n_2 ;
  wire \usjs/cods_4_carry__1_n_3 ;
  wire \usjs/cods_4_carry__2_n_0 ;
  wire \usjs/cods_4_carry__2_n_2 ;
  wire \usjs/cods_4_carry__2_n_3 ;
  wire \usjs/cods_4_carry_n_0 ;
  wire \usjs/cods_4_carry_n_1 ;
  wire \usjs/cods_4_carry_n_2 ;
  wire \usjs/cods_4_carry_n_3 ;
  wire \usjs/usjs_byte1__0_carry__0_n_0 ;
  wire \usjs/usjs_byte1__0_carry__0_n_1 ;
  wire \usjs/usjs_byte1__0_carry__0_n_2 ;
  wire \usjs/usjs_byte1__0_carry__0_n_3 ;
  wire \usjs/usjs_byte1__0_carry__1_n_3 ;
  wire \usjs/usjs_byte1__0_carry_n_0 ;
  wire \usjs/usjs_byte1__0_carry_n_1 ;
  wire \usjs/usjs_byte1__0_carry_n_2 ;
  wire \usjs/usjs_byte1__0_carry_n_3 ;
  wire [15:6]usjs_byte0;
  wire usjs_byte1__0_carry__0_i_1_n_0;
  wire usjs_byte1__0_carry__0_i_2_n_0;
  wire usjs_byte1__0_carry__0_i_3_n_0;
  wire usjs_byte1__0_carry__0_i_4_n_0;
  wire usjs_byte1__0_carry__1_i_1_n_0;
  wire usjs_byte1__0_carry__1_i_2_n_0;
  wire usjs_byte1__0_carry_i_1_n_0;
  wire usjs_byte1__0_carry_i_2_n_0;
  wire usjs_byte1__0_carry_i_3_n_0;
  wire usjs_byte1__0_carry_i_4_n_0;
  wire usjs_byte1__0_carry_i_5_n_0;
  wire [3:0]\NLW_usjs/cods_4_carry__2_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'hC1)) 
    \bdatr[0]_INST_0 
       (.I0(\bdatr[0]_INST_0_i_1_n_0 ),
        .I1(uctl_busy),
        .I2(unsjctl_rd),
        .O(bdatr[0]));
  LUT6 #(
    .INIT(64'h5555003F5555FF3F)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(unsjunic[0]),
        .I1(unsjkutn[0]),
        .I2(unsjkutn_rd),
        .I3(unsjsjis_rd),
        .I4(unsjunic_rd),
        .I5(unsjsjis_0[0]),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatr[10]_INST_0 
       (.I0(unsjctl_rd),
        .I1(uctl_busy),
        .I2(\bdatr[10]_INST_0_i_1_n_0 ),
        .O(bdatr[10]));
  LUT6 #(
    .INIT(64'h0000353FFFFF353F)) 
    \bdatr[10]_INST_0_i_1 
       (.I0(unsjkutn[10]),
        .I1(unsjsjis_0[10]),
        .I2(unsjsjis_rd),
        .I3(unsjkutn_rd),
        .I4(unsjunic_rd),
        .I5(unsjunic[10]),
        .O(\bdatr[10]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatr[11]_INST_0 
       (.I0(unsjctl_rd),
        .I1(uctl_busy),
        .I2(\bdatr[11]_INST_0_i_1_n_0 ),
        .O(bdatr[11]));
  LUT6 #(
    .INIT(64'h0000353FFFFF353F)) 
    \bdatr[11]_INST_0_i_1 
       (.I0(unsjkutn[11]),
        .I1(unsjsjis_0[11]),
        .I2(unsjsjis_rd),
        .I3(unsjkutn_rd),
        .I4(unsjunic_rd),
        .I5(unsjunic[11]),
        .O(\bdatr[11]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatr[12]_INST_0 
       (.I0(unsjctl_rd),
        .I1(uctl_busy),
        .I2(\bdatr[12]_INST_0_i_1_n_0 ),
        .O(bdatr[12]));
  LUT6 #(
    .INIT(64'h03F305F503F30FFF)) 
    \bdatr[12]_INST_0_i_1 
       (.I0(unsjkutn[12]),
        .I1(unsjsjis_0[12]),
        .I2(unsjunic_rd),
        .I3(unsjunic[12]),
        .I4(unsjsjis_rd),
        .I5(unsjkutn_rd),
        .O(\bdatr[12]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatr[13]_INST_0 
       (.I0(unsjctl_rd),
        .I1(uctl_busy),
        .I2(\bdatr[13]_INST_0_i_1_n_0 ),
        .O(bdatr[13]));
  LUT6 #(
    .INIT(64'h0000353FFFFF353F)) 
    \bdatr[13]_INST_0_i_1 
       (.I0(unsjkutn[13]),
        .I1(unsjsjis_0[13]),
        .I2(unsjsjis_rd),
        .I3(unsjkutn_rd),
        .I4(unsjunic_rd),
        .I5(unsjunic[13]),
        .O(\bdatr[13]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatr[14]_INST_0 
       (.I0(unsjctl_rd),
        .I1(uctl_busy),
        .I2(\bdatr[14]_INST_0_i_1_n_0 ),
        .O(bdatr[14]));
  LUT6 #(
    .INIT(64'h0000353FFFFF353F)) 
    \bdatr[14]_INST_0_i_1 
       (.I0(unsjkutn[14]),
        .I1(unsjsjis_0[14]),
        .I2(unsjsjis_rd),
        .I3(unsjkutn_rd),
        .I4(unsjunic_rd),
        .I5(unsjunic[14]),
        .O(\bdatr[14]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \bdatr[15]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(unsjctl_rd),
        .I2(uctl_busy),
        .O(bdatr[15]));
  LUT6 #(
    .INIT(64'hAAAAAAAAF0CCF000)) 
    \bdatr[15]_INST_0_i_1 
       (.I0(unsjunic[15]),
        .I1(unsjkutn_rd),
        .I2(unsjsjis_0[15]),
        .I3(unsjsjis_rd),
        .I4(unsjkutn[15]),
        .I5(unsjunic_rd),
        .O(\bdatr[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5503)) 
    \bdatr[1]_INST_0 
       (.I0(\bdatr[1]_INST_0_i_1_n_0 ),
        .I1(\bdatr[1]_INST_0_i_2_n_0 ),
        .I2(uctl_busy),
        .I3(unsjctl_rd),
        .O(bdatr[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555455)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(\bdatr[1]_INST_0_i_3_n_0 ),
        .I1(\bdatr[1]_INST_0_i_4_n_0 ),
        .I2(unsjsjis_0[14]),
        .I3(unsjsjis_0[15]),
        .I4(unsjsjis_0[13]),
        .I5(\bdatr[1]_INST_0_i_5_n_0 ),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4744477747774777)) 
    \bdatr[1]_INST_0_i_2 
       (.I0(unsjunic[1]),
        .I1(unsjunic_rd),
        .I2(unsjsjis_0[1]),
        .I3(unsjsjis_rd),
        .I4(unsjkutn_rd),
        .I5(unsjkutn[1]),
        .O(\bdatr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000057770000)) 
    \bdatr[1]_INST_0_i_3 
       (.I0(unsjsjis_0[11]),
        .I1(unsjsjis_0[10]),
        .I2(unsjsjis_0[9]),
        .I3(unsjsjis_0[8]),
        .I4(\bdatr[1]_INST_0_i_6_n_0 ),
        .I5(unsjsjis_0[12]),
        .O(\bdatr[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bdatr[1]_INST_0_i_4 
       (.I0(unsjsjis_0[9]),
        .I1(unsjsjis_0[12]),
        .I2(unsjsjis_0[8]),
        .I3(unsjsjis_0[13]),
        .I4(unsjsjis_0[11]),
        .I5(unsjsjis_0[10]),
        .O(\bdatr[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000444033337333)) 
    \bdatr[1]_INST_0_i_5 
       (.I0(\bdatr[1]_INST_0_i_7_n_0 ),
        .I1(unsjsjis_0[6]),
        .I2(unsjsjis_0[1]),
        .I3(unsjsjis_0[0]),
        .I4(\bdatr[1]_INST_0_i_8_n_0 ),
        .I5(unsjsjis_0[7]),
        .O(\bdatr[1]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatr[1]_INST_0_i_6 
       (.I0(unsjsjis_0[13]),
        .I1(unsjsjis_0[15]),
        .I2(unsjsjis_0[14]),
        .O(\bdatr[1]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatr[1]_INST_0_i_7 
       (.I0(unsjsjis_0[5]),
        .I1(unsjsjis_0[4]),
        .O(\bdatr[1]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatr[1]_INST_0_i_8 
       (.I0(unsjsjis_0[3]),
        .I1(unsjsjis_0[2]),
        .O(\bdatr[1]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatr[2]_INST_0 
       (.I0(unsjctl_rd),
        .I1(uctl_busy),
        .I2(\bdatr[2]_INST_0_i_1_n_0 ),
        .O(bdatr[2]));
  LUT6 #(
    .INIT(64'h0000353FFFFF353F)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(unsjkutn[2]),
        .I1(unsjsjis_0[2]),
        .I2(unsjsjis_rd),
        .I3(unsjkutn_rd),
        .I4(unsjunic_rd),
        .I5(unsjunic[2]),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatr[3]_INST_0 
       (.I0(unsjctl_rd),
        .I1(uctl_busy),
        .I2(\bdatr[3]_INST_0_i_1_n_0 ),
        .O(bdatr[3]));
  LUT6 #(
    .INIT(64'h03F305F503F30FFF)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(unsjkutn[3]),
        .I1(unsjsjis_0[3]),
        .I2(unsjunic_rd),
        .I3(unsjunic[3]),
        .I4(unsjsjis_rd),
        .I5(unsjkutn_rd),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatr[4]_INST_0 
       (.I0(unsjctl_rd),
        .I1(uctl_busy),
        .I2(\bdatr[4]_INST_0_i_1_n_0 ),
        .O(bdatr[4]));
  LUT6 #(
    .INIT(64'h0000353FFFFF353F)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(unsjkutn[4]),
        .I1(unsjsjis_0[4]),
        .I2(unsjsjis_rd),
        .I3(unsjkutn_rd),
        .I4(unsjunic_rd),
        .I5(unsjunic[4]),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatr[5]_INST_0 
       (.I0(unsjctl_rd),
        .I1(uctl_busy),
        .I2(\bdatr[5]_INST_0_i_1_n_0 ),
        .O(bdatr[5]));
  LUT6 #(
    .INIT(64'h0000353FFFFF353F)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(unsjkutn[5]),
        .I1(unsjsjis_0[5]),
        .I2(unsjsjis_rd),
        .I3(unsjkutn_rd),
        .I4(unsjunic_rd),
        .I5(unsjunic[5]),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatr[6]_INST_0 
       (.I0(unsjctl_rd),
        .I1(uctl_busy),
        .I2(\bdatr[6]_INST_0_i_1_n_0 ),
        .O(bdatr[6]));
  LUT6 #(
    .INIT(64'h03F305F503F30FFF)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(unsjkutn[6]),
        .I1(unsjsjis_0[6]),
        .I2(unsjunic_rd),
        .I3(unsjunic[6]),
        .I4(unsjsjis_rd),
        .I5(unsjkutn_rd),
        .O(\bdatr[6]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \bdatr[7]_INST_0 
       (.I0(\bdatr[7]_INST_0_i_1_n_0 ),
        .I1(uctl_busy),
        .I2(unsjctl_rd),
        .O(bdatr[7]));
  LUT6 #(
    .INIT(64'h5555003F5555FF3F)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(unsjunic[7]),
        .I1(unsjkutn[7]),
        .I2(unsjkutn_rd),
        .I3(unsjsjis_rd),
        .I4(unsjunic_rd),
        .I5(unsjsjis_0[7]),
        .O(\bdatr[7]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatr[8]_INST_0 
       (.I0(unsjctl_rd),
        .I1(uctl_busy),
        .I2(\bdatr[8]_INST_0_i_1_n_0 ),
        .O(bdatr[8]));
  LUT6 #(
    .INIT(64'h0000353FFFFF353F)) 
    \bdatr[8]_INST_0_i_1 
       (.I0(unsjkutn[8]),
        .I1(unsjsjis_0[8]),
        .I2(unsjsjis_rd),
        .I3(unsjkutn_rd),
        .I4(unsjunic_rd),
        .I5(unsjunic[8]),
        .O(\bdatr[8]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatr[9]_INST_0 
       (.I0(unsjctl_rd),
        .I1(uctl_busy),
        .I2(\bdatr[9]_INST_0_i_1_n_0 ),
        .O(bdatr[9]));
  LUT6 #(
    .INIT(64'h03F305F503F30FFF)) 
    \bdatr[9]_INST_0_i_1 
       (.I0(unsjkutn[9]),
        .I1(unsjsjis_0[9]),
        .I2(unsjunic_rd),
        .I3(unsjunic[9]),
        .I4(unsjsjis_rd),
        .I5(unsjkutn_rd),
        .O(\bdatr[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC8CCC888)) 
    cods_4_carry__0_i_1
       (.I0(uctl_kutn1[5]),
        .I1(\unsjkutn[15]_i_5_n_0 ),
        .I2(uctl_adr1[4]),
        .I3(\unsjkutn[14]_i_2_n_0 ),
        .I4(uctl_adr0[4]),
        .O(cods_4_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cods_4_carry__0_i_2
       (.I0(uctl_kutn1[4]),
        .I1(\unsjkutn[15]_i_5_n_0 ),
        .O(cods_4_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cods_4_carry__0_i_3
       (.I0(uctl_kutn1[3]),
        .I1(\unsjkutn[15]_i_5_n_0 ),
        .O(cods_4_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cods_4_carry__0_i_4
       (.I0(uctl_kutn1[6]),
        .I1(cods_4_carry_i_3_n_0),
        .O(cods_4_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hC0C0C0606060C060)) 
    cods_4_carry__0_i_5
       (.I0(uctl_kutn1[5]),
        .I1(uctl_kutn1[6]),
        .I2(\unsjkutn[15]_i_5_n_0 ),
        .I3(uctl_adr0[4]),
        .I4(\unsjkutn[14]_i_2_n_0 ),
        .I5(uctl_adr1[4]),
        .O(cods_4_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h1DE2FFFFE21DFFFF)) 
    cods_4_carry__0_i_6
       (.I0(uctl_adr0[4]),
        .I1(\unsjkutn[14]_i_2_n_0 ),
        .I2(uctl_adr1[4]),
        .I3(uctl_kutn1[5]),
        .I4(\unsjkutn[15]_i_5_n_0 ),
        .I5(uctl_kutn1[4]),
        .O(cods_4_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'hB7)) 
    cods_4_carry__0_i_7
       (.I0(uctl_kutn1[3]),
        .I1(\unsjkutn[15]_i_5_n_0 ),
        .I2(uctl_kutn1[4]),
        .O(cods_4_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cods_4_carry__1_i_1
       (.I0(cods_4_carry_i_3_n_0),
        .O(uctl_kutn[8]));
  LUT6 #(
    .INIT(64'h000088C0000000C0)) 
    cods_4_carry__1_i_2
       (.I0(cods_4_carry_i_10_n_0),
        .I1(cods_4_carry_i_12_n_0),
        .I2(uctl_adr0[8]),
        .I3(cods_4_carry_i_11_n_0),
        .I4(cods_4_carry_i_9_n_0),
        .I5(uctl_adr1[8]),
        .O(cods_4_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h0C000A0A00000000)) 
    cods_4_carry__1_i_3
       (.I0(uctl_adr0[7]),
        .I1(uctl_adr1[7]),
        .I2(cods_4_carry_i_9_n_0),
        .I3(cods_4_carry_i_10_n_0),
        .I4(cods_4_carry_i_11_n_0),
        .I5(cods_4_carry_i_12_n_0),
        .O(cods_4_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h8A80)) 
    cods_4_carry__1_i_4
       (.I0(\unsjkutn[15]_i_5_n_0 ),
        .I1(uctl_adr1[6]),
        .I2(\unsjkutn[14]_i_2_n_0 ),
        .I3(uctl_adr0[6]),
        .O(uctl_kutn[10]));
  LUT6 #(
    .INIT(64'h50A0303050A0C0C0)) 
    cods_4_carry__1_i_5
       (.I0(uctl_adr1[4]),
        .I1(uctl_adr0[4]),
        .I2(\unsjkutn[15]_i_5_n_0 ),
        .I3(uctl_adr1[5]),
        .I4(\unsjkutn[14]_i_2_n_0 ),
        .I5(uctl_adr0[5]),
        .O(cods_4_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h8A80FFFF8A808A80)) 
    cods_4_carry__2_i_1
       (.I0(\unsjkutn[15]_i_5_n_0 ),
        .I1(uctl_adr1[10]),
        .I2(\unsjkutn[14]_i_2_n_0 ),
        .I3(uctl_adr0[10]),
        .I4(cods_4_carry__2_i_4_n_0),
        .I5(cods_4_carry__2_i_5_n_0),
        .O(cods_22));
  LUT6 #(
    .INIT(64'h0C000A0A00000000)) 
    cods_4_carry__2_i_2
       (.I0(uctl_adr0[10]),
        .I1(uctl_adr1[10]),
        .I2(cods_4_carry_i_9_n_0),
        .I3(cods_4_carry_i_10_n_0),
        .I4(cods_4_carry_i_11_n_0),
        .I5(cods_4_carry_i_12_n_0),
        .O(cods_4_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    cods_4_carry__2_i_3
       (.I0(\unsjkutn[15]_i_5_n_0 ),
        .I1(uctl_adr0[9]),
        .I2(\unsjkutn[14]_i_2_n_0 ),
        .I3(uctl_adr1[9]),
        .O(cods_4_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h757FF5FF7F7FFFFF)) 
    cods_4_carry__2_i_4
       (.I0(\unsjsjis[15]_i_9_n_0 ),
        .I1(uctl_adr1[8]),
        .I2(\unsjkutn[14]_i_2_n_0 ),
        .I3(uctl_adr0[8]),
        .I4(uctl_adr1[9]),
        .I5(uctl_adr0[9]),
        .O(cods_4_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'hA000C0C0A0000000)) 
    cods_4_carry__2_i_5
       (.I0(uctl_adr1[7]),
        .I1(uctl_adr0[7]),
        .I2(\unsjkutn[15]_i_5_n_0 ),
        .I3(uctl_adr1[6]),
        .I4(\unsjkutn[14]_i_2_n_0 ),
        .I5(uctl_adr0[6]),
        .O(cods_4_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cods_4_carry_i_1
       (.I0(uctl_kutn1[2]),
        .I1(\unsjkutn[15]_i_5_n_0 ),
        .O(cods_4_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    cods_4_carry_i_10
       (.I0(\ucmp1/ucmp_match12_out ),
        .I1(\ucmp1/ucmp_match10_out ),
        .I2(\ucmp1/ucmp_match14_out ),
        .I3(\ucmp1/ucmp_match16_out ),
        .I4(\ucmp1/ucmp_match1 ),
        .I5(\ucmp1/ucmp_match18_out ),
        .O(cods_4_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    cods_4_carry_i_11
       (.I0(\ucmp0/ucmp_match16_out ),
        .I1(\ucmp0/ucmp_match14_out ),
        .I2(\ucmp0/ucmp_match1 ),
        .I3(\ucmp0/ucmp_match18_out ),
        .I4(\ucmp0/ucmp_match10_out ),
        .I5(\ucmp0/ucmp_match12_out ),
        .O(cods_4_carry_i_11_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    cods_4_carry_i_12
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .O(cods_4_carry_i_12_n_0));
  LUT3 #(
    .INIT(8'h07)) 
    cods_4_carry_i_13
       (.I0(cods_4_carry_i_11_n_0),
        .I1(\ucmp1/ucmp_match1 ),
        .I2(\ucmp0/ucmp_match1 ),
        .O(cods_4_carry_i_13_n_0));
  LUT3 #(
    .INIT(8'h15)) 
    cods_4_carry_i_14
       (.I0(\ucmp0/ucmp_match12_out ),
        .I1(cods_4_carry_i_11_n_0),
        .I2(\ucmp1/ucmp_match12_out ),
        .O(cods_4_carry_i_14_n_0));
  LUT5 #(
    .INIT(32'h11103030)) 
    cods_4_carry_i_15
       (.I0(\ucmp1/ucmp_match14_out ),
        .I1(\ucmp0/ucmp_match14_out ),
        .I2(\ucmp0/ucmp_match16_out ),
        .I3(\ucmp1/ucmp_match16_out ),
        .I4(cods_4_carry_i_11_n_0),
        .O(cods_4_carry_i_15_n_0));
  LUT3 #(
    .INIT(8'hEA)) 
    cods_4_carry_i_16
       (.I0(\ucmp0/ucmp_match10_out ),
        .I1(cods_4_carry_i_11_n_0),
        .I2(\ucmp1/ucmp_match10_out ),
        .O(cods_4_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    cods_4_carry_i_17
       (.I0(uctl_kutn1[4]),
        .I1(uctl_kutn1[2]),
        .I2(uctl_kutn1[5]),
        .I3(uctl_kutn1[1]),
        .O(cods_4_carry_i_17_n_0));
  LUT5 #(
    .INIT(32'hEFEEAAAA)) 
    cods_4_carry_i_18
       (.I0(cods_4_carry_i_9_n_0),
        .I1(cods_4_carry_i_16_n_0),
        .I2(cods_4_carry_i_15_n_0),
        .I3(cods_4_carry_i_14_n_0),
        .I4(cods_4_carry_i_13_n_0),
        .O(cods_4_carry_i_18_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cods_4_carry_i_19
       (.I0(unsjunic[14]),
        .I1(unsjunic[13]),
        .I2(unsjunic[3]),
        .I3(unsjunic[2]),
        .O(cods_4_carry_i_19_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cods_4_carry_i_2
       (.I0(uctl_kutn1[1]),
        .I1(\unsjkutn[15]_i_5_n_0 ),
        .O(cods_4_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cods_4_carry_i_20
       (.I0(unsjunic[5]),
        .I1(unsjunic[6]),
        .I2(unsjunic[4]),
        .I3(unsjunic[7]),
        .I4(cods_4_carry_i_21_n_0),
        .O(cods_4_carry_i_20_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cods_4_carry_i_21
       (.I0(unsjunic[15]),
        .I1(unsjunic[12]),
        .I2(unsjunic[10]),
        .I3(unsjunic[9]),
        .O(cods_4_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'hF3FFF5F5FFFFFFFF)) 
    cods_4_carry_i_3
       (.I0(uctl_adr0[4]),
        .I1(uctl_adr1[4]),
        .I2(cods_4_carry_i_9_n_0),
        .I3(cods_4_carry_i_10_n_0),
        .I4(cods_4_carry_i_11_n_0),
        .I5(cods_4_carry_i_12_n_0),
        .O(cods_4_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h000000002222AA2A)) 
    cods_4_carry_i_4
       (.I0(\unsjkutn[15]_i_5_n_0 ),
        .I1(cods_4_carry_i_13_n_0),
        .I2(cods_4_carry_i_14_n_0),
        .I3(cods_4_carry_i_15_n_0),
        .I4(cods_4_carry_i_16_n_0),
        .I5(cods_4_carry_i_9_n_0),
        .O(uctl_kutn[0]));
  LUT3 #(
    .INIT(8'hB7)) 
    cods_4_carry_i_5
       (.I0(uctl_kutn1[2]),
        .I1(\unsjkutn[15]_i_5_n_0 ),
        .I2(uctl_kutn1[3]),
        .O(cods_4_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'hB7)) 
    cods_4_carry_i_6
       (.I0(uctl_kutn1[1]),
        .I1(\unsjkutn[15]_i_5_n_0 ),
        .I2(uctl_kutn1[2]),
        .O(cods_4_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h48444888)) 
    cods_4_carry_i_7
       (.I0(uctl_kutn1[1]),
        .I1(\unsjkutn[15]_i_5_n_0 ),
        .I2(uctl_adr1[4]),
        .I3(\unsjkutn[14]_i_2_n_0 ),
        .I4(uctl_adr0[4]),
        .O(cods_4_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hBBBB404433333333)) 
    cods_4_carry_i_8
       (.I0(uctl_kutn1[6]),
        .I1(cods_4_carry_i_3_n_0),
        .I2(cods_4_carry_i_17_n_0),
        .I3(uctl_kutn1[3]),
        .I4(cods_4_carry_i_18_n_0),
        .I5(\unsjkutn[15]_i_5_n_0 ),
        .O(cods_4_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    cods_4_carry_i_9
       (.I0(cods_4_carry_i_19_n_0),
        .I1(unsjunic[1]),
        .I2(unsjunic[0]),
        .I3(unsjunic[11]),
        .I4(unsjunic[8]),
        .I5(cods_4_carry_i_20_n_0),
        .O(cods_4_carry_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__0_i_1
       (.I0(unsjsjis_0[7]),
        .O(codt_2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__0_i_2
       (.I0(unsjsjis_0[6]),
        .O(codt_2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__0_i_3
       (.I0(unsjsjis_0[5]),
        .O(codt_2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__0_i_4
       (.I0(unsjsjis_0[4]),
        .O(codt_2_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__1_i_1
       (.I0(unsjsjis_0[11]),
        .O(codt_2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__1_i_2
       (.I0(unsjsjis_0[10]),
        .O(codt_2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__1_i_3
       (.I0(unsjsjis_0[9]),
        .O(codt_2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__1_i_4
       (.I0(unsjsjis_0[8]),
        .O(codt_2_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h8F)) 
    codt_2_carry__2_i_1
       (.I0(unsjsjis_0[15]),
        .I1(unsjsjis_0[13]),
        .I2(unsjsjis_0[14]),
        .O(codt_2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__2_i_2
       (.I0(unsjsjis_0[13]),
        .O(codt_2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry__2_i_3
       (.I0(unsjsjis_0[12]),
        .O(codt_2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry_i_1
       (.I0(unsjsjis_0[3]),
        .O(codt_2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry_i_2
       (.I0(unsjsjis_0[2]),
        .O(codt_2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_2_carry_i_3
       (.I0(unsjsjis_0[1]),
        .O(codt_2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA55559555)) 
    codt_2_carry_i_4
       (.I0(unsjsjis_0[0]),
        .I1(unsjsjis_0[3]),
        .I2(unsjsjis_0[2]),
        .I3(unsjsjis_0[1]),
        .I4(codt_2_carry_i_5_n_0),
        .I5(unsjsjis_0[7]),
        .O(codt_2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    codt_2_carry_i_5
       (.I0(unsjsjis_0[4]),
        .I1(unsjsjis_0[5]),
        .I2(unsjsjis_0[0]),
        .I3(unsjsjis_0[6]),
        .O(codt_2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    codt_4__0_carry__0_i_1
       (.I0(\uktn/codt_2_carry__0_n_5 ),
        .I1(codt_4__0_carry_i_11_n_0),
        .O(codt_4__0_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    codt_4__0_carry__0_i_2
       (.I0(\uktn/codt_2_carry__0_n_7 ),
        .I1(\uktn/codt_2_carry_n_6 ),
        .I2(\uktn/codt_2_carry_n_7 ),
        .I3(\uktn/codt_2_carry_n_5 ),
        .I4(\uktn/codt_2_carry_n_4 ),
        .O(codt_4__0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h3C7E)) 
    codt_4__0_carry__0_i_3
       (.I0(\uktn/codt_2_carry__0_n_4 ),
        .I1(codt_4__0_carry_i_11_n_0),
        .I2(\uktn/codt_2_carry__0_n_5 ),
        .I3(codt_4__0_carry_i_10_n_0),
        .O(codt_4__0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h817E)) 
    codt_4__0_carry__0_i_4
       (.I0(codk_22),
        .I1(\uktn/codt_2_carry__0_n_6 ),
        .I2(codt_4__0_carry__0_i_6_n_0),
        .I3(\uktn/codt_2_carry__0_n_5 ),
        .O(codt_4__0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6669)) 
    codt_4__0_carry__0_i_5
       (.I0(codk_22),
        .I1(\uktn/codt_2_carry__0_n_6 ),
        .I2(codt_4__0_carry__0_i_7_n_0),
        .I3(\uktn/codt_2_carry__0_n_7 ),
        .O(codt_4__0_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    codt_4__0_carry__0_i_6
       (.I0(\uktn/codt_2_carry__0_n_7 ),
        .I1(\uktn/codt_2_carry_n_6 ),
        .I2(\uktn/codt_2_carry_n_7 ),
        .I3(\uktn/codt_2_carry_n_5 ),
        .I4(\uktn/codt_2_carry_n_4 ),
        .O(codt_4__0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    codt_4__0_carry__0_i_7
       (.I0(\uktn/codt_2_carry_n_4 ),
        .I1(\uktn/codt_2_carry_n_5 ),
        .I2(\uktn/codt_2_carry_n_7 ),
        .I3(\uktn/codt_2_carry_n_6 ),
        .O(codt_4__0_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codt_4__0_carry_i_1
       (.I0(\uktn/codt_2_carry_n_7 ),
        .O(codt_4__0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9155555555555555)) 
    codt_4__0_carry_i_10
       (.I0(\uktn/codt_2_carry__0_n_6 ),
        .I1(\uktn/codt_2_carry_n_5 ),
        .I2(\uktn/codt_2_carry_n_7 ),
        .I3(\uktn/codt_2_carry_n_6 ),
        .I4(\uktn/codt_2_carry_n_4 ),
        .I5(\uktn/codt_2_carry__0_n_7 ),
        .O(codt_4__0_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    codt_4__0_carry_i_11
       (.I0(\uktn/codt_2_carry__0_n_6 ),
        .I1(\uktn/codt_2_carry_n_4 ),
        .I2(\uktn/codt_2_carry_n_5 ),
        .I3(\uktn/codt_2_carry_n_7 ),
        .I4(\uktn/codt_2_carry_n_6 ),
        .I5(\uktn/codt_2_carry__0_n_7 ),
        .O(codt_4__0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h7F80)) 
    codt_4__0_carry_i_2
       (.I0(\uktn/codt_2_carry_n_5 ),
        .I1(\uktn/codt_2_carry_n_7 ),
        .I2(\uktn/codt_2_carry_n_6 ),
        .I3(\uktn/codt_2_carry_n_4 ),
        .O(codt_4__0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    codt_4__0_carry_i_3
       (.I0(\uktn/codt_2_carry_n_6 ),
        .I1(\uktn/codt_2_carry_n_7 ),
        .I2(\uktn/codt_2_carry_n_5 ),
        .O(codt_4__0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hBAA7)) 
    codt_4__0_carry_i_4
       (.I0(\uktn/codt_2_carry__0_n_4 ),
        .I1(codt_4__0_carry_i_10_n_0),
        .I2(\uktn/codt_2_carry__0_n_5 ),
        .I3(codt_4__0_carry_i_11_n_0),
        .O(codk_22));
  LUT1 #(
    .INIT(2'h1)) 
    codt_4__0_carry_i_5
       (.I0(codk_22),
        .O(codt_4__0_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'hEAAA1555)) 
    codt_4__0_carry_i_6
       (.I0(\uktn/codt_2_carry_n_4 ),
        .I1(\uktn/codt_2_carry_n_5 ),
        .I2(\uktn/codt_2_carry_n_7 ),
        .I3(\uktn/codt_2_carry_n_6 ),
        .I4(\uktn/codt_2_carry__0_n_7 ),
        .O(codt_4__0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'hAA95)) 
    codt_4__0_carry_i_7
       (.I0(\uktn/codt_2_carry_n_4 ),
        .I1(\uktn/codt_2_carry_n_6 ),
        .I2(\uktn/codt_2_carry_n_7 ),
        .I3(\uktn/codt_2_carry_n_5 ),
        .O(codt_4__0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6999)) 
    codt_4__0_carry_i_8
       (.I0(codk_22),
        .I1(\uktn/codt_2_carry_n_5 ),
        .I2(\uktn/codt_2_carry_n_7 ),
        .I3(\uktn/codt_2_carry_n_6 ),
        .O(codt_4__0_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    codt_4__0_carry_i_9
       (.I0(codk_22),
        .I1(\uktn/codt_2_carry_n_6 ),
        .I2(\uktn/codt_2_carry_n_7 ),
        .O(codt_4__0_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(unsj_dat0[31]),
        .I1(unsjunic[15]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__0
       (.I0(unsj_dat0[47]),
        .I1(unsjunic[15]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__1
       (.I0(unsj_dat0[63]),
        .I1(unsjunic[15]),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__2
       (.I0(unsj_dat0[79]),
        .I1(unsjunic[15]),
        .O(i__carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__3
       (.I0(unsj_dat0[95]),
        .I1(unsjunic[15]),
        .O(i__carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__4
       (.I0(unsj_dat1[31]),
        .I1(unsjunic[15]),
        .O(i__carry__0_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__5
       (.I0(unsj_dat1[47]),
        .I1(unsjunic[15]),
        .O(i__carry__0_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__6
       (.I0(unsj_dat1[63]),
        .I1(unsjunic[15]),
        .O(i__carry__0_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__7
       (.I0(unsj_dat1[79]),
        .I1(unsjunic[15]),
        .O(i__carry__0_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__8
       (.I0(unsj_dat1[95]),
        .I1(unsjunic[15]),
        .O(i__carry__0_i_1__8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(unsj_dat0[30]),
        .I1(unsjunic[14]),
        .I2(unsjunic[13]),
        .I3(unsj_dat0[29]),
        .I4(unsjunic[12]),
        .I5(unsj_dat0[28]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__0
       (.I0(unsj_dat0[45]),
        .I1(unsjunic[13]),
        .I2(unsjunic[14]),
        .I3(unsj_dat0[46]),
        .I4(unsjunic[12]),
        .I5(unsj_dat0[44]),
        .O(i__carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__1
       (.I0(unsj_dat0[62]),
        .I1(unsjunic[14]),
        .I2(unsjunic[12]),
        .I3(unsj_dat0[60]),
        .I4(unsjunic[13]),
        .I5(unsj_dat0[61]),
        .O(i__carry__0_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__2
       (.I0(unsj_dat0[77]),
        .I1(unsjunic[13]),
        .I2(unsjunic[14]),
        .I3(unsj_dat0[78]),
        .I4(unsjunic[12]),
        .I5(unsj_dat0[76]),
        .O(i__carry__0_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__3
       (.I0(unsj_dat0[94]),
        .I1(unsjunic[14]),
        .I2(unsjunic[12]),
        .I3(unsj_dat0[92]),
        .I4(unsjunic[13]),
        .I5(unsj_dat0[93]),
        .O(i__carry__0_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__4
       (.I0(unsj_dat1[30]),
        .I1(unsjunic[14]),
        .I2(unsjunic[12]),
        .I3(unsj_dat1[28]),
        .I4(unsjunic[13]),
        .I5(unsj_dat1[29]),
        .O(i__carry__0_i_2__4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__5
       (.I0(unsj_dat1[45]),
        .I1(unsjunic[13]),
        .I2(unsjunic[14]),
        .I3(unsj_dat1[46]),
        .I4(unsjunic[12]),
        .I5(unsj_dat1[44]),
        .O(i__carry__0_i_2__5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__6
       (.I0(unsj_dat1[62]),
        .I1(unsjunic[14]),
        .I2(unsjunic[12]),
        .I3(unsj_dat1[60]),
        .I4(unsjunic[13]),
        .I5(unsj_dat1[61]),
        .O(i__carry__0_i_2__6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__7
       (.I0(unsj_dat1[77]),
        .I1(unsjunic[13]),
        .I2(unsjunic[14]),
        .I3(unsj_dat1[78]),
        .I4(unsjunic[12]),
        .I5(unsj_dat1[76]),
        .O(i__carry__0_i_2__7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__8
       (.I0(unsj_dat1[94]),
        .I1(unsjunic[14]),
        .I2(unsjunic[12]),
        .I3(unsj_dat1[92]),
        .I4(unsjunic[13]),
        .I5(unsj_dat1[93]),
        .O(i__carry__0_i_2__8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(unsj_dat0[27]),
        .I1(unsjunic[11]),
        .I2(unsjunic[10]),
        .I3(unsj_dat0[26]),
        .I4(unsjunic[9]),
        .I5(unsj_dat0[25]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__0
       (.I0(unsj_dat0[43]),
        .I1(unsjunic[11]),
        .I2(unsjunic[9]),
        .I3(unsj_dat0[41]),
        .I4(unsjunic[10]),
        .I5(unsj_dat0[42]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__1
       (.I0(unsj_dat0[59]),
        .I1(unsjunic[11]),
        .I2(unsjunic[9]),
        .I3(unsj_dat0[57]),
        .I4(unsjunic[10]),
        .I5(unsj_dat0[58]),
        .O(i__carry_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__2
       (.I0(unsj_dat0[75]),
        .I1(unsjunic[11]),
        .I2(unsjunic[10]),
        .I3(unsj_dat0[74]),
        .I4(unsjunic[9]),
        .I5(unsj_dat0[73]),
        .O(i__carry_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__3
       (.I0(unsj_dat0[91]),
        .I1(unsjunic[11]),
        .I2(unsjunic[10]),
        .I3(unsj_dat0[90]),
        .I4(unsjunic[9]),
        .I5(unsj_dat0[89]),
        .O(i__carry_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__4
       (.I0(unsj_dat1[27]),
        .I1(unsjunic[11]),
        .I2(unsjunic[9]),
        .I3(unsj_dat1[25]),
        .I4(unsjunic[10]),
        .I5(unsj_dat1[26]),
        .O(i__carry_i_1__4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__5
       (.I0(unsj_dat1[42]),
        .I1(unsjunic[10]),
        .I2(unsjunic[11]),
        .I3(unsj_dat1[43]),
        .I4(unsjunic[9]),
        .I5(unsj_dat1[41]),
        .O(i__carry_i_1__5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__6
       (.I0(unsj_dat1[59]),
        .I1(unsjunic[11]),
        .I2(unsjunic[9]),
        .I3(unsj_dat1[57]),
        .I4(unsjunic[10]),
        .I5(unsj_dat1[58]),
        .O(i__carry_i_1__6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__7
       (.I0(unsj_dat1[75]),
        .I1(unsjunic[11]),
        .I2(unsjunic[10]),
        .I3(unsj_dat1[74]),
        .I4(unsjunic[9]),
        .I5(unsj_dat1[73]),
        .O(i__carry_i_1__7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__8
       (.I0(unsj_dat1[91]),
        .I1(unsjunic[11]),
        .I2(unsjunic[9]),
        .I3(unsj_dat1[89]),
        .I4(unsjunic[10]),
        .I5(unsj_dat1[90]),
        .O(i__carry_i_1__8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(unsj_dat0[24]),
        .I1(unsjunic[8]),
        .I2(unsjunic[6]),
        .I3(unsj_dat0[22]),
        .I4(unsjunic[7]),
        .I5(unsj_dat0[23]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__0
       (.I0(unsj_dat0[40]),
        .I1(unsjunic[8]),
        .I2(unsjunic[6]),
        .I3(unsj_dat0[38]),
        .I4(unsjunic[7]),
        .I5(unsj_dat0[39]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__1
       (.I0(unsj_dat0[56]),
        .I1(unsjunic[8]),
        .I2(unsjunic[6]),
        .I3(unsj_dat0[54]),
        .I4(unsjunic[7]),
        .I5(unsj_dat0[55]),
        .O(i__carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__2
       (.I0(unsj_dat0[71]),
        .I1(unsjunic[7]),
        .I2(unsjunic[8]),
        .I3(unsj_dat0[72]),
        .I4(unsjunic[6]),
        .I5(unsj_dat0[70]),
        .O(i__carry_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__3
       (.I0(unsj_dat0[88]),
        .I1(unsjunic[8]),
        .I2(unsjunic[6]),
        .I3(unsj_dat0[86]),
        .I4(unsjunic[7]),
        .I5(unsj_dat0[87]),
        .O(i__carry_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__4
       (.I0(unsj_dat1[23]),
        .I1(unsjunic[7]),
        .I2(unsjunic[8]),
        .I3(unsj_dat1[24]),
        .I4(unsjunic[6]),
        .I5(unsj_dat1[22]),
        .O(i__carry_i_2__4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__5
       (.I0(unsj_dat1[40]),
        .I1(unsjunic[8]),
        .I2(unsjunic[6]),
        .I3(unsj_dat1[38]),
        .I4(unsjunic[7]),
        .I5(unsj_dat1[39]),
        .O(i__carry_i_2__5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__6
       (.I0(unsj_dat1[56]),
        .I1(unsjunic[8]),
        .I2(unsjunic[7]),
        .I3(unsj_dat1[55]),
        .I4(unsjunic[6]),
        .I5(unsj_dat1[54]),
        .O(i__carry_i_2__6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__7
       (.I0(unsj_dat1[72]),
        .I1(unsjunic[8]),
        .I2(unsjunic[6]),
        .I3(unsj_dat1[70]),
        .I4(unsjunic[7]),
        .I5(unsj_dat1[71]),
        .O(i__carry_i_2__7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__8
       (.I0(unsj_dat1[88]),
        .I1(unsjunic[8]),
        .I2(unsjunic[6]),
        .I3(unsj_dat1[86]),
        .I4(unsjunic[7]),
        .I5(unsj_dat1[87]),
        .O(i__carry_i_2__8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(unsj_dat0[21]),
        .I1(unsjunic[5]),
        .I2(unsjunic[3]),
        .I3(unsj_dat0[19]),
        .I4(unsjunic[4]),
        .I5(unsj_dat0[20]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__0
       (.I0(unsj_dat0[37]),
        .I1(unsjunic[5]),
        .I2(unsjunic[3]),
        .I3(unsj_dat0[35]),
        .I4(unsjunic[4]),
        .I5(unsj_dat0[36]),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__1
       (.I0(unsj_dat0[53]),
        .I1(unsjunic[5]),
        .I2(unsjunic[4]),
        .I3(unsj_dat0[52]),
        .I4(unsjunic[3]),
        .I5(unsj_dat0[51]),
        .O(i__carry_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__2
       (.I0(unsj_dat0[68]),
        .I1(unsjunic[4]),
        .I2(unsjunic[5]),
        .I3(unsj_dat0[69]),
        .I4(unsjunic[3]),
        .I5(unsj_dat0[67]),
        .O(i__carry_i_3__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__3
       (.I0(unsj_dat0[85]),
        .I1(unsjunic[5]),
        .I2(unsjunic[3]),
        .I3(unsj_dat0[83]),
        .I4(unsjunic[4]),
        .I5(unsj_dat0[84]),
        .O(i__carry_i_3__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__4
       (.I0(unsj_dat1[21]),
        .I1(unsjunic[5]),
        .I2(unsjunic[4]),
        .I3(unsj_dat1[20]),
        .I4(unsjunic[3]),
        .I5(unsj_dat1[19]),
        .O(i__carry_i_3__4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__5
       (.I0(unsj_dat1[37]),
        .I1(unsjunic[5]),
        .I2(unsjunic[3]),
        .I3(unsj_dat1[35]),
        .I4(unsjunic[4]),
        .I5(unsj_dat1[36]),
        .O(i__carry_i_3__5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__6
       (.I0(unsj_dat1[53]),
        .I1(unsjunic[5]),
        .I2(unsjunic[3]),
        .I3(unsj_dat1[51]),
        .I4(unsjunic[4]),
        .I5(unsj_dat1[52]),
        .O(i__carry_i_3__6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__7
       (.I0(unsj_dat1[69]),
        .I1(unsjunic[5]),
        .I2(unsjunic[3]),
        .I3(unsj_dat1[67]),
        .I4(unsjunic[4]),
        .I5(unsj_dat1[68]),
        .O(i__carry_i_3__7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__8
       (.I0(unsj_dat1[85]),
        .I1(unsjunic[5]),
        .I2(unsjunic[3]),
        .I3(unsj_dat1[83]),
        .I4(unsjunic[4]),
        .I5(unsj_dat1[84]),
        .O(i__carry_i_3__8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(unsj_dat0[18]),
        .I1(unsjunic[2]),
        .I2(unsjunic[0]),
        .I3(unsj_dat0[16]),
        .I4(unsjunic[1]),
        .I5(unsj_dat0[17]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__0
       (.I0(unsj_dat0[33]),
        .I1(unsjunic[1]),
        .I2(unsjunic[2]),
        .I3(unsj_dat0[34]),
        .I4(unsjunic[0]),
        .I5(unsj_dat0[32]),
        .O(i__carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__1
       (.I0(unsj_dat0[50]),
        .I1(unsjunic[2]),
        .I2(unsjunic[1]),
        .I3(unsj_dat0[49]),
        .I4(unsjunic[0]),
        .I5(unsj_dat0[48]),
        .O(i__carry_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__2
       (.I0(unsj_dat0[66]),
        .I1(unsjunic[2]),
        .I2(unsjunic[0]),
        .I3(unsj_dat0[64]),
        .I4(unsjunic[1]),
        .I5(unsj_dat0[65]),
        .O(i__carry_i_4__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__3
       (.I0(unsj_dat0[82]),
        .I1(unsjunic[2]),
        .I2(unsjunic[0]),
        .I3(unsj_dat0[80]),
        .I4(unsjunic[1]),
        .I5(unsj_dat0[81]),
        .O(i__carry_i_4__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__4
       (.I0(unsj_dat1[18]),
        .I1(unsjunic[2]),
        .I2(unsjunic[1]),
        .I3(unsj_dat1[17]),
        .I4(unsjunic[0]),
        .I5(unsj_dat1[16]),
        .O(i__carry_i_4__4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__5
       (.I0(unsj_dat1[34]),
        .I1(unsjunic[2]),
        .I2(unsjunic[1]),
        .I3(unsj_dat1[33]),
        .I4(unsjunic[0]),
        .I5(unsj_dat1[32]),
        .O(i__carry_i_4__5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__6
       (.I0(unsj_dat1[49]),
        .I1(unsjunic[1]),
        .I2(unsjunic[2]),
        .I3(unsj_dat1[50]),
        .I4(unsjunic[0]),
        .I5(unsj_dat1[48]),
        .O(i__carry_i_4__6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__7
       (.I0(unsj_dat1[66]),
        .I1(unsjunic[2]),
        .I2(unsjunic[0]),
        .I3(unsj_dat1[64]),
        .I4(unsjunic[1]),
        .I5(unsj_dat1[65]),
        .O(i__carry_i_4__7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__8
       (.I0(unsj_dat1[82]),
        .I1(unsjunic[2]),
        .I2(unsjunic[0]),
        .I3(unsj_dat1[80]),
        .I4(unsjunic[1]),
        .I5(unsj_dat1[81]),
        .O(i__carry_i_4__8_n_0));
  LUT6 #(
    .INIT(64'hF1F1F1F1F1F1F100)) 
    \stat[0]_i_1 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(\unsj_cnt[10]_i_3_n_0 ),
        .I3(stat[1]),
        .I4(\stat[2]_i_2_n_0 ),
        .I5(\unsjsjis[15]_i_4_n_0 ),
        .O(\uctl/ufsm/stat_nx [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCCFCCCE)) 
    \stat[1]_i_1 
       (.I0(\stat[2]_i_2_n_0 ),
        .I1(\unsj_cnt[10]_i_3_n_0 ),
        .I2(stat[0]),
        .I3(stat[2]),
        .I4(stat[1]),
        .I5(\unsjkutn[15]_i_6_n_0 ),
        .O(\uctl/ufsm/stat_nx [1]));
  LUT5 #(
    .INIT(32'hFF00FF02)) 
    \stat[2]_i_1 
       (.I0(\stat[2]_i_2_n_0 ),
        .I1(stat[0]),
        .I2(stat[2]),
        .I3(\unsj_cnt[10]_i_3_n_0 ),
        .I4(stat[1]),
        .O(\uctl/ufsm/stat_nx [2]));
  LUT4 #(
    .INIT(16'h0010)) 
    \stat[2]_i_2 
       (.I0(\stat[2]_i_3_n_0 ),
        .I1(bcs_unsj_n),
        .I2(bcmdw),
        .I3(uctl_busy),
        .O(\stat[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \stat[2]_i_3 
       (.I0(badr[3]),
        .I1(badr[2]),
        .I2(badr[1]),
        .I3(badr[0]),
        .O(\stat[2]_i_3_n_0 ));
  CARRY4 \ucmp0/ucmp_match1_carry 
       (.CI(\<const0> ),
        .CO({\ucmp0/ucmp_match1_carry_n_0 ,\ucmp0/ucmp_match1_carry_n_1 ,\ucmp0/ucmp_match1_carry_n_2 ,\ucmp0/ucmp_match1_carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({ucmp_match1_carry_i_1_n_0,ucmp_match1_carry_i_2_n_0,ucmp_match1_carry_i_3_n_0,ucmp_match1_carry_i_4_n_0}));
  CARRY4 \ucmp0/ucmp_match1_carry__0 
       (.CI(\ucmp0/ucmp_match1_carry_n_0 ),
        .CO({\ucmp0/ucmp_match1 ,\ucmp0/ucmp_match1_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,ucmp_match1_carry__0_i_1_n_0,ucmp_match1_carry__0_i_2_n_0}));
  CARRY4 \ucmp0/ucmp_match1_inferred__0/i__carry 
       (.CI(\<const0> ),
        .CO({\ucmp0/ucmp_match1_inferred__0/i__carry_n_0 ,\ucmp0/ucmp_match1_inferred__0/i__carry_n_1 ,\ucmp0/ucmp_match1_inferred__0/i__carry_n_2 ,\ucmp0/ucmp_match1_inferred__0/i__carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \ucmp0/ucmp_match1_inferred__0/i__carry__0 
       (.CI(\ucmp0/ucmp_match1_inferred__0/i__carry_n_0 ),
        .CO({\ucmp0/ucmp_match10_out ,\ucmp0/ucmp_match1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0}));
  CARRY4 \ucmp0/ucmp_match1_inferred__1/i__carry 
       (.CI(\<const0> ),
        .CO({\ucmp0/ucmp_match1_inferred__1/i__carry_n_0 ,\ucmp0/ucmp_match1_inferred__1/i__carry_n_1 ,\ucmp0/ucmp_match1_inferred__1/i__carry_n_2 ,\ucmp0/ucmp_match1_inferred__1/i__carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \ucmp0/ucmp_match1_inferred__1/i__carry__0 
       (.CI(\ucmp0/ucmp_match1_inferred__1/i__carry_n_0 ),
        .CO({\ucmp0/ucmp_match12_out ,\ucmp0/ucmp_match1_inferred__1/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0}));
  CARRY4 \ucmp0/ucmp_match1_inferred__2/i__carry 
       (.CI(\<const0> ),
        .CO({\ucmp0/ucmp_match1_inferred__2/i__carry_n_0 ,\ucmp0/ucmp_match1_inferred__2/i__carry_n_1 ,\ucmp0/ucmp_match1_inferred__2/i__carry_n_2 ,\ucmp0/ucmp_match1_inferred__2/i__carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}));
  CARRY4 \ucmp0/ucmp_match1_inferred__2/i__carry__0 
       (.CI(\ucmp0/ucmp_match1_inferred__2/i__carry_n_0 ),
        .CO({\ucmp0/ucmp_match14_out ,\ucmp0/ucmp_match1_inferred__2/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0}));
  CARRY4 \ucmp0/ucmp_match1_inferred__3/i__carry 
       (.CI(\<const0> ),
        .CO({\ucmp0/ucmp_match1_inferred__3/i__carry_n_0 ,\ucmp0/ucmp_match1_inferred__3/i__carry_n_1 ,\ucmp0/ucmp_match1_inferred__3/i__carry_n_2 ,\ucmp0/ucmp_match1_inferred__3/i__carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0}));
  CARRY4 \ucmp0/ucmp_match1_inferred__3/i__carry__0 
       (.CI(\ucmp0/ucmp_match1_inferred__3/i__carry_n_0 ),
        .CO({\ucmp0/ucmp_match16_out ,\ucmp0/ucmp_match1_inferred__3/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,i__carry__0_i_1__2_n_0,i__carry__0_i_2__2_n_0}));
  CARRY4 \ucmp0/ucmp_match1_inferred__4/i__carry 
       (.CI(\<const0> ),
        .CO({\ucmp0/ucmp_match1_inferred__4/i__carry_n_0 ,\ucmp0/ucmp_match1_inferred__4/i__carry_n_1 ,\ucmp0/ucmp_match1_inferred__4/i__carry_n_2 ,\ucmp0/ucmp_match1_inferred__4/i__carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({i__carry_i_1__3_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0}));
  CARRY4 \ucmp0/ucmp_match1_inferred__4/i__carry__0 
       (.CI(\ucmp0/ucmp_match1_inferred__4/i__carry_n_0 ),
        .CO({\ucmp0/ucmp_match18_out ,\ucmp0/ucmp_match1_inferred__4/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,i__carry__0_i_1__3_n_0,i__carry__0_i_2__3_n_0}));
  CARRY4 \ucmp1/ucmp_match1_carry 
       (.CI(\<const0> ),
        .CO({\ucmp1/ucmp_match1_carry_n_0 ,\ucmp1/ucmp_match1_carry_n_1 ,\ucmp1/ucmp_match1_carry_n_2 ,\ucmp1/ucmp_match1_carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({ucmp_match1_carry_i_1__0_n_0,ucmp_match1_carry_i_2__0_n_0,ucmp_match1_carry_i_3__0_n_0,ucmp_match1_carry_i_4__0_n_0}));
  CARRY4 \ucmp1/ucmp_match1_carry__0 
       (.CI(\ucmp1/ucmp_match1_carry_n_0 ),
        .CO({\ucmp1/ucmp_match1 ,\ucmp1/ucmp_match1_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,ucmp_match1_carry__0_i_1__0_n_0,ucmp_match1_carry__0_i_2__0_n_0}));
  CARRY4 \ucmp1/ucmp_match1_inferred__0/i__carry 
       (.CI(\<const0> ),
        .CO({\ucmp1/ucmp_match1_inferred__0/i__carry_n_0 ,\ucmp1/ucmp_match1_inferred__0/i__carry_n_1 ,\ucmp1/ucmp_match1_inferred__0/i__carry_n_2 ,\ucmp1/ucmp_match1_inferred__0/i__carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({i__carry_i_1__4_n_0,i__carry_i_2__4_n_0,i__carry_i_3__4_n_0,i__carry_i_4__4_n_0}));
  CARRY4 \ucmp1/ucmp_match1_inferred__0/i__carry__0 
       (.CI(\ucmp1/ucmp_match1_inferred__0/i__carry_n_0 ),
        .CO({\ucmp1/ucmp_match10_out ,\ucmp1/ucmp_match1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,i__carry__0_i_1__4_n_0,i__carry__0_i_2__4_n_0}));
  CARRY4 \ucmp1/ucmp_match1_inferred__1/i__carry 
       (.CI(\<const0> ),
        .CO({\ucmp1/ucmp_match1_inferred__1/i__carry_n_0 ,\ucmp1/ucmp_match1_inferred__1/i__carry_n_1 ,\ucmp1/ucmp_match1_inferred__1/i__carry_n_2 ,\ucmp1/ucmp_match1_inferred__1/i__carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({i__carry_i_1__5_n_0,i__carry_i_2__5_n_0,i__carry_i_3__5_n_0,i__carry_i_4__5_n_0}));
  CARRY4 \ucmp1/ucmp_match1_inferred__1/i__carry__0 
       (.CI(\ucmp1/ucmp_match1_inferred__1/i__carry_n_0 ),
        .CO({\ucmp1/ucmp_match12_out ,\ucmp1/ucmp_match1_inferred__1/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,i__carry__0_i_1__5_n_0,i__carry__0_i_2__5_n_0}));
  CARRY4 \ucmp1/ucmp_match1_inferred__2/i__carry 
       (.CI(\<const0> ),
        .CO({\ucmp1/ucmp_match1_inferred__2/i__carry_n_0 ,\ucmp1/ucmp_match1_inferred__2/i__carry_n_1 ,\ucmp1/ucmp_match1_inferred__2/i__carry_n_2 ,\ucmp1/ucmp_match1_inferred__2/i__carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({i__carry_i_1__6_n_0,i__carry_i_2__6_n_0,i__carry_i_3__6_n_0,i__carry_i_4__6_n_0}));
  CARRY4 \ucmp1/ucmp_match1_inferred__2/i__carry__0 
       (.CI(\ucmp1/ucmp_match1_inferred__2/i__carry_n_0 ),
        .CO({\ucmp1/ucmp_match14_out ,\ucmp1/ucmp_match1_inferred__2/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,i__carry__0_i_1__6_n_0,i__carry__0_i_2__6_n_0}));
  CARRY4 \ucmp1/ucmp_match1_inferred__3/i__carry 
       (.CI(\<const0> ),
        .CO({\ucmp1/ucmp_match1_inferred__3/i__carry_n_0 ,\ucmp1/ucmp_match1_inferred__3/i__carry_n_1 ,\ucmp1/ucmp_match1_inferred__3/i__carry_n_2 ,\ucmp1/ucmp_match1_inferred__3/i__carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({i__carry_i_1__7_n_0,i__carry_i_2__7_n_0,i__carry_i_3__7_n_0,i__carry_i_4__7_n_0}));
  CARRY4 \ucmp1/ucmp_match1_inferred__3/i__carry__0 
       (.CI(\ucmp1/ucmp_match1_inferred__3/i__carry_n_0 ),
        .CO({\ucmp1/ucmp_match16_out ,\ucmp1/ucmp_match1_inferred__3/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,i__carry__0_i_1__7_n_0,i__carry__0_i_2__7_n_0}));
  CARRY4 \ucmp1/ucmp_match1_inferred__4/i__carry 
       (.CI(\<const0> ),
        .CO({\ucmp1/ucmp_match1_inferred__4/i__carry_n_0 ,\ucmp1/ucmp_match1_inferred__4/i__carry_n_1 ,\ucmp1/ucmp_match1_inferred__4/i__carry_n_2 ,\ucmp1/ucmp_match1_inferred__4/i__carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({i__carry_i_1__8_n_0,i__carry_i_2__8_n_0,i__carry_i_3__8_n_0,i__carry_i_4__8_n_0}));
  CARRY4 \ucmp1/ucmp_match1_inferred__4/i__carry__0 
       (.CI(\ucmp1/ucmp_match1_inferred__4/i__carry_n_0 ),
        .CO({\ucmp1/ucmp_match18_out ,\ucmp1/ucmp_match1_inferred__4/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,i__carry__0_i_1__8_n_0,i__carry__0_i_2__8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ucmp_match1_carry__0_i_1
       (.I0(unsj_dat0[15]),
        .I1(unsjunic[15]),
        .O(ucmp_match1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ucmp_match1_carry__0_i_1__0
       (.I0(unsj_dat1[15]),
        .I1(unsjunic[15]),
        .O(ucmp_match1_carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ucmp_match1_carry__0_i_2
       (.I0(unsj_dat0[14]),
        .I1(unsjunic[14]),
        .I2(unsjunic[12]),
        .I3(unsj_dat0[12]),
        .I4(unsjunic[13]),
        .I5(unsj_dat0[13]),
        .O(ucmp_match1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ucmp_match1_carry__0_i_2__0
       (.I0(unsj_dat1[13]),
        .I1(unsjunic[13]),
        .I2(unsjunic[14]),
        .I3(unsj_dat1[14]),
        .I4(unsjunic[12]),
        .I5(unsj_dat1[12]),
        .O(ucmp_match1_carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ucmp_match1_carry_i_1
       (.I0(unsj_dat0[11]),
        .I1(unsjunic[11]),
        .I2(unsjunic[9]),
        .I3(unsj_dat0[9]),
        .I4(unsjunic[10]),
        .I5(unsj_dat0[10]),
        .O(ucmp_match1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ucmp_match1_carry_i_1__0
       (.I0(unsj_dat1[11]),
        .I1(unsjunic[11]),
        .I2(unsjunic[9]),
        .I3(unsj_dat1[9]),
        .I4(unsjunic[10]),
        .I5(unsj_dat1[10]),
        .O(ucmp_match1_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ucmp_match1_carry_i_2
       (.I0(unsj_dat0[8]),
        .I1(unsjunic[8]),
        .I2(unsjunic[7]),
        .I3(unsj_dat0[7]),
        .I4(unsjunic[6]),
        .I5(unsj_dat0[6]),
        .O(ucmp_match1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ucmp_match1_carry_i_2__0
       (.I0(unsj_dat1[7]),
        .I1(unsjunic[7]),
        .I2(unsjunic[8]),
        .I3(unsj_dat1[8]),
        .I4(unsjunic[6]),
        .I5(unsj_dat1[6]),
        .O(ucmp_match1_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ucmp_match1_carry_i_3
       (.I0(unsj_dat0[5]),
        .I1(unsjunic[5]),
        .I2(unsjunic[3]),
        .I3(unsj_dat0[3]),
        .I4(unsjunic[4]),
        .I5(unsj_dat0[4]),
        .O(ucmp_match1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ucmp_match1_carry_i_3__0
       (.I0(unsj_dat1[5]),
        .I1(unsjunic[5]),
        .I2(unsjunic[4]),
        .I3(unsj_dat1[4]),
        .I4(unsjunic[3]),
        .I5(unsj_dat1[3]),
        .O(ucmp_match1_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ucmp_match1_carry_i_4
       (.I0(unsj_dat0[2]),
        .I1(unsjunic[2]),
        .I2(unsjunic[0]),
        .I3(unsj_dat0[0]),
        .I4(unsjunic[1]),
        .I5(unsj_dat0[1]),
        .O(ucmp_match1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ucmp_match1_carry_i_4__0
       (.I0(unsj_dat1[2]),
        .I1(unsjunic[2]),
        .I2(unsjunic[0]),
        .I3(unsj_dat1[0]),
        .I4(unsjunic[1]),
        .I5(unsj_dat1[1]),
        .O(ucmp_match1_carry_i_4__0_n_0));
  FDRE \uctl/uctl_adr0_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(unsj_adr0[0]),
        .Q(uctl_adr0[0]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr0_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(unsj_adr0[10]),
        .Q(uctl_adr0[10]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr0_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(unsj_adr0[1]),
        .Q(uctl_adr0[1]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr0_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(unsj_adr0[2]),
        .Q(uctl_adr0[2]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr0_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(unsj_adr0[3]),
        .Q(uctl_adr0[3]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr0_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(unsj_adr0[4]),
        .Q(uctl_adr0[4]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr0_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(unsj_adr0[5]),
        .Q(uctl_adr0[5]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr0_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(unsj_adr0[6]),
        .Q(uctl_adr0[6]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr0_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(unsj_adr0[7]),
        .Q(uctl_adr0[7]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr0_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(unsj_adr0[8]),
        .Q(uctl_adr0[8]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr0_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(unsj_adr0[9]),
        .Q(uctl_adr0[9]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr1_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\^unsj_adr1 [10]),
        .Q(uctl_adr1[10]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr1_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\^unsj_adr1 [1]),
        .Q(uctl_adr1[1]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr1_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\^unsj_adr1 [2]),
        .Q(uctl_adr1[2]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr1_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\^unsj_adr1 [3]),
        .Q(uctl_adr1[3]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr1_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\^unsj_adr1 [4]),
        .Q(uctl_adr1[4]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr1_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\^unsj_adr1 [5]),
        .Q(uctl_adr1[5]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr1_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\^unsj_adr1 [6]),
        .Q(uctl_adr1[6]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr1_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\^unsj_adr1 [7]),
        .Q(uctl_adr1[7]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr1_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\^unsj_adr1 [8]),
        .Q(uctl_adr1[8]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/uctl_adr1_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\^unsj_adr1 [9]),
        .Q(uctl_adr1[9]),
        .R(\uctl/uctl_adr00 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uctl/uctl_kutn1__0_carry 
       (.CI(\<const0> ),
        .CO({\uctl/uctl_kutn1__0_carry_n_0 ,\uctl/uctl_kutn1__0_carry_n_1 ,\uctl/uctl_kutn1__0_carry_n_2 ,\uctl/uctl_kutn1__0_carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI({uctl_kutn1__0_carry_i_1_n_0,uctl_kutn1__0_carry_i_2_n_0,uctl_kutn1__0_carry_i_3_n_0,\<const0> }),
        .O(uctl_kutn1[4:1]),
        .S({uctl_kutn1__0_carry_i_4_n_0,uctl_kutn1__0_carry_i_5_n_0,uctl_kutn1__0_carry_i_6_n_0,uctl_kutn1__0_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uctl/uctl_kutn1__0_carry__0 
       (.CI(\uctl/uctl_kutn1__0_carry_n_0 ),
        .CO(\uctl/uctl_kutn1__0_carry__0_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,uctl_kutn1__0_carry__0_i_1_n_0}),
        .O(uctl_kutn1[6:5]),
        .S({\<const0> ,\<const0> ,uctl_kutn1__0_carry__0_i_2_n_0,uctl_kutn1__0_carry__0_i_3_n_0}));
  FDRE \uctl/ufsm/stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\uctl/ufsm/stat_nx [0]),
        .Q(stat[0]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uctl/ufsm/stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\uctl/ufsm/stat_nx [1]),
        .Q(stat[1]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uctl/ufsm/stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\uctl/ufsm/stat_nx [2]),
        .Q(stat[2]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uctl/ufsm/uctl_busy_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(\uctl/ufsm/uctl_busy_t ),
        .Q(uctl_busy),
        .R(\unsjkutn[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11406876541191E8)) 
    \uctl/unsj_adr0[0]_INST_0_i_1 
       (.I0(unsjkutn[6]),
        .I1(unsjkutn[2]),
        .I2(unsjkutn[1]),
        .I3(unsjkutn[3]),
        .I4(unsjkutn[5]),
        .I5(unsjkutn[4]),
        .O(\uctl/unsj_adr0[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h300033304CF330CC)) 
    \uctl/unsj_adr0[1]_INST_0_i_1 
       (.I0(unsjkutn[1]),
        .I1(unsjkutn[6]),
        .I2(unsjkutn[2]),
        .I3(unsjkutn[3]),
        .I4(unsjkutn[4]),
        .I5(unsjkutn[5]),
        .O(\uctl/unsj_adr0[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00007FF00F0FF000)) 
    \uctl/unsj_adr0[2]_INST_0_i_1 
       (.I0(unsjkutn[1]),
        .I1(unsjkutn[2]),
        .I2(unsjkutn[6]),
        .I3(unsjkutn[3]),
        .I4(unsjkutn[5]),
        .I5(unsjkutn[4]),
        .O(\uctl/unsj_adr0[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF7F000000FF00)) 
    \uctl/unsj_adr0[3]_INST_0_i_1 
       (.I0(unsjkutn[3]),
        .I1(unsjkutn[1]),
        .I2(unsjkutn[2]),
        .I3(unsjkutn[6]),
        .I4(unsjkutn[5]),
        .I5(unsjkutn[4]),
        .O(\uctl/unsj_adr0[3]_INST_0_i_1_n_0 ));
  FDRE \uctl/unsj_cnt_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[10]),
        .Q(\^unsj_adr1 [10]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/unsj_cnt_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\unsj_cnt[1]_i_1_n_0 ),
        .Q(\^unsj_adr1 [1]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/unsj_cnt_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[2]),
        .Q(\^unsj_adr1 [2]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/unsj_cnt_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[3]),
        .Q(\^unsj_adr1 [3]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/unsj_cnt_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[4]),
        .Q(\^unsj_adr1 [4]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/unsj_cnt_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[5]),
        .Q(\^unsj_adr1 [5]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/unsj_cnt_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[6]),
        .Q(\^unsj_adr1 [6]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/unsj_cnt_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[7]),
        .Q(\^unsj_adr1 [7]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/unsj_cnt_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[8]),
        .Q(\^unsj_adr1 [8]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/unsj_cnt_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[9]),
        .Q(\^unsj_adr1 [9]),
        .R(\uctl/uctl_adr00 ));
  FDRE \uctl/unsjctl_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\uctl/unsjctl_rd0 ),
        .Q(unsjctl_rd),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uctl/unsjkutn_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\uctl/unsjkutn_rd0 ),
        .Q(unsjkutn_rd),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uctl/unsjsjis_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\uctl/unsjsjis_rd0 ),
        .Q(unsjsjis_rd),
        .R(\unsjkutn[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000492412492492)) 
    \uctl/unsjunic[15]_i_10 
       (.I0(unsjkutn[4]),
        .I1(unsjkutn[3]),
        .I2(unsjkutn[2]),
        .I3(unsjkutn[1]),
        .I4(unsjkutn[6]),
        .I5(unsjkutn[5]),
        .O(\uctl/unsjunic[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000249292494924)) 
    \uctl/unsjunic[15]_i_11 
       (.I0(unsjkutn[4]),
        .I1(unsjkutn[3]),
        .I2(unsjkutn[2]),
        .I3(unsjkutn[1]),
        .I4(unsjkutn[5]),
        .I5(unsjkutn[6]),
        .O(\uctl/unsjunic[15]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    \uctl/unsjunic[15]_i_12 
       (.I0(\uctl/unsjunic[15]_i_13_n_0 ),
        .I1(unsjkutn[4]),
        .I2(unsjkutn[5]),
        .I3(unsjkutn[6]),
        .I4(unsjkutn[0]),
        .O(\uctl/unsjunic[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h007FFFFF00000000)) 
    \uctl/unsjunic[15]_i_13 
       (.I0(unsjkutn[1]),
        .I1(unsjkutn[2]),
        .I2(unsjkutn[3]),
        .I3(unsjkutn[5]),
        .I4(unsjkutn[6]),
        .I5(unsjkutn[0]),
        .O(\uctl/unsjunic[15]_i_13_n_0 ));
  FDRE \uctl/unsjunic_rd_reg 
       (.C(clk),
        .CE(brdy),
        .D(\uctl/unsjunic_rd0 ),
        .Q(unsjunic_rd),
        .R(\unsjkutn[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEBABEBABEBABEBAA)) 
    uctl_busy_i_1
       (.I0(\unsjkutn[15]_i_6_n_0 ),
        .I1(stat[0]),
        .I2(stat[2]),
        .I3(stat[1]),
        .I4(\stat[2]_i_2_n_0 ),
        .I5(\unsjsjis[15]_i_4_n_0 ),
        .O(\uctl/ufsm/uctl_busy_t ));
  LUT3 #(
    .INIT(8'h1D)) 
    uctl_kutn1__0_carry__0_i_1
       (.I0(uctl_adr0[2]),
        .I1(\unsjkutn[14]_i_2_n_0 ),
        .I2(uctl_adr1[2]),
        .O(uctl_kutn1__0_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    uctl_kutn1__0_carry__0_i_2
       (.I0(uctl_adr0[2]),
        .I1(uctl_adr1[2]),
        .I2(uctl_adr0[3]),
        .I3(\unsjkutn[14]_i_2_n_0 ),
        .I4(uctl_adr1[3]),
        .O(uctl_kutn1__0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h47034400B8FCBBFF)) 
    uctl_kutn1__0_carry__0_i_3
       (.I0(uctl_adr1[3]),
        .I1(\unsjkutn[14]_i_2_n_0 ),
        .I2(uctl_adr0[3]),
        .I3(uctl_adr1[1]),
        .I4(uctl_adr0[1]),
        .I5(uctl_kutn1__0_carry_i_10_n_0),
        .O(uctl_kutn1__0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h02F2)) 
    uctl_kutn1__0_carry_i_1
       (.I0(uctl_adr0[0]),
        .I1(uctl_adr0[2]),
        .I2(\unsjkutn[14]_i_2_n_0 ),
        .I3(uctl_adr1[2]),
        .O(uctl_kutn1__0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    uctl_kutn1__0_carry_i_10
       (.I0(uctl_adr1[2]),
        .I1(\unsjkutn[14]_i_2_n_0 ),
        .I2(uctl_adr0[2]),
        .O(uctl_kutn1__0_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    uctl_kutn1__0_carry_i_11
       (.I0(uctl_adr1[1]),
        .I1(\unsjkutn[14]_i_2_n_0 ),
        .I2(uctl_adr0[1]),
        .O(uctl_kutn1__0_carry_i_11_n_0));
  LUT5 #(
    .INIT(32'h00000155)) 
    uctl_kutn1__0_carry_i_12
       (.I0(\ucmp0/ucmp_match1 ),
        .I1(\ucmp1/ucmp_match1 ),
        .I2(\ucmp1/ucmp_match10_out ),
        .I3(cods_4_carry_i_11_n_0),
        .I4(\ucmp0/ucmp_match10_out ),
        .O(uctl_kutn1__0_carry_i_12_n_0));
  LUT3 #(
    .INIT(8'h15)) 
    uctl_kutn1__0_carry_i_13
       (.I0(\ucmp0/ucmp_match14_out ),
        .I1(cods_4_carry_i_11_n_0),
        .I2(\ucmp1/ucmp_match14_out ),
        .O(uctl_kutn1__0_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h0151)) 
    uctl_kutn1__0_carry_i_2
       (.I0(uctl_kutn1__0_carry_i_8_n_0),
        .I1(uctl_adr0[1]),
        .I2(\unsjkutn[14]_i_2_n_0 ),
        .I3(uctl_adr1[1]),
        .O(uctl_kutn1__0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hAB)) 
    uctl_kutn1__0_carry_i_3
       (.I0(uctl_kutn_l_1),
        .I1(\unsjkutn[14]_i_2_n_0 ),
        .I2(uctl_adr0[0]),
        .O(uctl_kutn1__0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hA5BBA5445A445ABB)) 
    uctl_kutn1__0_carry_i_4
       (.I0(uctl_kutn1__0_carry_i_10_n_0),
        .I1(uctl_adr0[0]),
        .I2(uctl_adr1[3]),
        .I3(\unsjkutn[14]_i_2_n_0 ),
        .I4(uctl_adr0[3]),
        .I5(uctl_kutn1__0_carry_i_11_n_0),
        .O(uctl_kutn1__0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h656A6A65)) 
    uctl_kutn1__0_carry_i_5
       (.I0(uctl_kutn1__0_carry_i_2_n_0),
        .I1(uctl_adr1[2]),
        .I2(\unsjkutn[14]_i_2_n_0 ),
        .I3(uctl_adr0[2]),
        .I4(uctl_adr0[0]),
        .O(uctl_kutn1__0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hC3DDC3223C223CDD)) 
    uctl_kutn1__0_carry_i_6
       (.I0(uctl_adr0[0]),
        .I1(uctl_kutn_l_1),
        .I2(uctl_adr1[1]),
        .I3(\unsjkutn[14]_i_2_n_0 ),
        .I4(uctl_adr0[1]),
        .I5(uctl_kutn1__0_carry_i_8_n_0),
        .O(uctl_kutn1__0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    uctl_kutn1__0_carry_i_7
       (.I0(uctl_kutn_l_1),
        .I1(\unsjkutn[14]_i_2_n_0 ),
        .I2(uctl_adr0[0]),
        .O(uctl_kutn1__0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAABABABBB)) 
    uctl_kutn1__0_carry_i_8
       (.I0(cods_4_carry_i_9_n_0),
        .I1(\ucmp0/ucmp_match10_out ),
        .I2(cods_4_carry_i_11_n_0),
        .I3(\ucmp1/ucmp_match10_out ),
        .I4(\ucmp1/ucmp_match1 ),
        .I5(\ucmp0/ucmp_match1 ),
        .O(uctl_kutn1__0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h4444440444044404)) 
    uctl_kutn1__0_carry_i_9
       (.I0(cods_4_carry_i_9_n_0),
        .I1(uctl_kutn1__0_carry_i_12_n_0),
        .I2(uctl_kutn1__0_carry_i_13_n_0),
        .I3(\ucmp0/ucmp_match12_out ),
        .I4(cods_4_carry_i_11_n_0),
        .I5(\ucmp1/ucmp_match12_out ),
        .O(uctl_kutn_l_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uktn/codt_2_carry 
       (.CI(\<const0> ),
        .CO({\uktn/codt_2_carry_n_0 ,\uktn/codt_2_carry_n_1 ,\uktn/codt_2_carry_n_2 ,\uktn/codt_2_carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI(unsjsjis_0[3:0]),
        .O({\uktn/codt_2_carry_n_4 ,\uktn/codt_2_carry_n_5 ,\uktn/codt_2_carry_n_6 ,\uktn/codt_2_carry_n_7 }),
        .S({codt_2_carry_i_1_n_0,codt_2_carry_i_2_n_0,codt_2_carry_i_3_n_0,codt_2_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uktn/codt_2_carry__0 
       (.CI(\uktn/codt_2_carry_n_0 ),
        .CO({\uktn/codt_2_carry__0_n_0 ,\uktn/codt_2_carry__0_n_1 ,\uktn/codt_2_carry__0_n_2 ,\uktn/codt_2_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI(unsjsjis_0[7:4]),
        .O({\uktn/codt_2_carry__0_n_4 ,\uktn/codt_2_carry__0_n_5 ,\uktn/codt_2_carry__0_n_6 ,\uktn/codt_2_carry__0_n_7 }),
        .S({codt_2_carry__0_i_1_n_0,codt_2_carry__0_i_2_n_0,codt_2_carry__0_i_3_n_0,codt_2_carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uktn/codt_2_carry__1 
       (.CI(\uktn/codt_2_carry__0_n_0 ),
        .CO({\uktn/codt_2_carry__1_n_0 ,\uktn/codt_2_carry__1_n_1 ,\uktn/codt_2_carry__1_n_2 ,\uktn/codt_2_carry__1_n_3 }),
        .CYINIT(\<const0> ),
        .DI(unsjsjis_0[11:8]),
        .O(p_0_in1_in[4:1]),
        .S({codt_2_carry__1_i_1_n_0,codt_2_carry__1_i_2_n_0,codt_2_carry__1_i_3_n_0,codt_2_carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uktn/codt_2_carry__2 
       (.CI(\uktn/codt_2_carry__1_n_0 ),
        .CO({\uktn/codt_2_carry__2_n_2 ,\uktn/codt_2_carry__2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,unsjsjis_0[13:12]}),
        .O(p_0_in1_in[7:5]),
        .S({\<const0> ,codt_2_carry__2_i_1_n_0,codt_2_carry__2_i_2_n_0,codt_2_carry__2_i_3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uktn/codt_4__0_carry 
       (.CI(\<const0> ),
        .CO({\uktn/codt_4__0_carry_n_0 ,\uktn/codt_4__0_carry_n_1 ,\uktn/codt_4__0_carry_n_2 ,\uktn/codt_4__0_carry_n_3 }),
        .CYINIT(codt_4__0_carry_i_1_n_0),
        .DI({codt_4__0_carry_i_2_n_0,codt_4__0_carry_i_3_n_0,codk_22,codt_4__0_carry_i_5_n_0}),
        .O(codt_40_out[4:1]),
        .S({codt_4__0_carry_i_6_n_0,codt_4__0_carry_i_7_n_0,codt_4__0_carry_i_8_n_0,codt_4__0_carry_i_9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \uktn/codt_4__0_carry__0 
       (.CI(\uktn/codt_4__0_carry_n_0 ),
        .CO({\uktn/codt_4__0_carry__0_n_2 ,\uktn/codt_4__0_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,codt_4__0_carry__0_i_1_n_0,codt_4__0_carry__0_i_2_n_0}),
        .O(codt_40_out[7:5]),
        .S({\<const0> ,codt_4__0_carry__0_i_3_n_0,codt_4__0_carry__0_i_4_n_0,codt_4__0_carry__0_i_5_n_0}));
  FDRE \uktn/unsjkutn_reg[0] 
       (.C(clk),
        .CE(\unsjkutn[15]_i_2_n_0 ),
        .D(\unsjkutn[0]_i_1_n_0 ),
        .Q(unsjkutn[0]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uktn/unsjkutn_reg[10] 
       (.C(clk),
        .CE(\unsjkutn[15]_i_2_n_0 ),
        .D(\unsjkutn[10]_i_1_n_0 ),
        .Q(unsjkutn[10]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uktn/unsjkutn_reg[11] 
       (.C(clk),
        .CE(\unsjkutn[15]_i_2_n_0 ),
        .D(\unsjkutn[11]_i_1_n_0 ),
        .Q(unsjkutn[11]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uktn/unsjkutn_reg[12] 
       (.C(clk),
        .CE(\unsjkutn[15]_i_2_n_0 ),
        .D(\unsjkutn[12]_i_1_n_0 ),
        .Q(unsjkutn[12]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uktn/unsjkutn_reg[13] 
       (.C(clk),
        .CE(\unsjkutn[15]_i_2_n_0 ),
        .D(\unsjkutn[13]_i_1_n_0 ),
        .Q(unsjkutn[13]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uktn/unsjkutn_reg[14] 
       (.C(clk),
        .CE(\unsjkutn[15]_i_2_n_0 ),
        .D(\unsjkutn[14]_i_1_n_0 ),
        .Q(unsjkutn[14]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uktn/unsjkutn_reg[15] 
       (.C(clk),
        .CE(\unsjkutn[15]_i_2_n_0 ),
        .D(\unsjkutn[15]_i_3_n_0 ),
        .Q(unsjkutn[15]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uktn/unsjkutn_reg[1] 
       (.C(clk),
        .CE(\unsjkutn[15]_i_2_n_0 ),
        .D(\unsjkutn[1]_i_1_n_0 ),
        .Q(unsjkutn[1]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uktn/unsjkutn_reg[2] 
       (.C(clk),
        .CE(\unsjkutn[15]_i_2_n_0 ),
        .D(\unsjkutn[2]_i_1_n_0 ),
        .Q(unsjkutn[2]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uktn/unsjkutn_reg[3] 
       (.C(clk),
        .CE(\unsjkutn[15]_i_2_n_0 ),
        .D(\unsjkutn[3]_i_1_n_0 ),
        .Q(unsjkutn[3]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uktn/unsjkutn_reg[4] 
       (.C(clk),
        .CE(\unsjkutn[15]_i_2_n_0 ),
        .D(\unsjkutn[4]_i_1_n_0 ),
        .Q(unsjkutn[4]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uktn/unsjkutn_reg[5] 
       (.C(clk),
        .CE(\unsjkutn[15]_i_2_n_0 ),
        .D(\unsjkutn[5]_i_1_n_0 ),
        .Q(unsjkutn[5]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uktn/unsjkutn_reg[6] 
       (.C(clk),
        .CE(\unsjkutn[15]_i_2_n_0 ),
        .D(\unsjkutn[6]_i_1_n_0 ),
        .Q(unsjkutn[6]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uktn/unsjkutn_reg[7] 
       (.C(clk),
        .CE(\unsjkutn[15]_i_2_n_0 ),
        .D(\unsjkutn[7]_i_1_n_0 ),
        .Q(unsjkutn[7]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uktn/unsjkutn_reg[8] 
       (.C(clk),
        .CE(\unsjkutn[15]_i_2_n_0 ),
        .D(\unsjkutn[8]_i_1_n_0 ),
        .Q(unsjkutn[8]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  FDRE \uktn/unsjkutn_reg[9] 
       (.C(clk),
        .CE(\unsjkutn[15]_i_2_n_0 ),
        .D(\unsjkutn[9]_i_1_n_0 ),
        .Q(unsjkutn[9]),
        .R(\unsjkutn[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \unsj_adr0[0]_INST_0 
       (.I0(\uctl/unsj_adr0[0]_INST_0_i_1_n_0 ),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(stat[0]),
        .O(unsj_adr0[0]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \unsj_adr0[10]_INST_0 
       (.I0(unsjkutn[14]),
        .I1(stat[0]),
        .I2(stat[2]),
        .I3(stat[1]),
        .I4(\^unsj_adr1 [10]),
        .O(unsj_adr0[10]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \unsj_adr0[1]_INST_0 
       (.I0(\uctl/unsj_adr0[1]_INST_0_i_1_n_0 ),
        .I1(stat[0]),
        .I2(stat[2]),
        .I3(stat[1]),
        .I4(\^unsj_adr1 [1]),
        .O(unsj_adr0[1]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \unsj_adr0[2]_INST_0 
       (.I0(\uctl/unsj_adr0[2]_INST_0_i_1_n_0 ),
        .I1(stat[0]),
        .I2(stat[2]),
        .I3(stat[1]),
        .I4(\^unsj_adr1 [2]),
        .O(unsj_adr0[2]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \unsj_adr0[3]_INST_0 
       (.I0(\uctl/unsj_adr0[3]_INST_0_i_1_n_0 ),
        .I1(stat[0]),
        .I2(stat[2]),
        .I3(stat[1]),
        .I4(\^unsj_adr1 [3]),
        .O(unsj_adr0[3]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \unsj_adr0[4]_INST_0 
       (.I0(unsjkutn[8]),
        .I1(stat[0]),
        .I2(stat[2]),
        .I3(stat[1]),
        .I4(\^unsj_adr1 [4]),
        .O(unsj_adr0[4]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \unsj_adr0[5]_INST_0 
       (.I0(unsjkutn[9]),
        .I1(stat[0]),
        .I2(stat[2]),
        .I3(stat[1]),
        .I4(\^unsj_adr1 [5]),
        .O(unsj_adr0[5]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \unsj_adr0[6]_INST_0 
       (.I0(unsjkutn[10]),
        .I1(stat[0]),
        .I2(stat[2]),
        .I3(stat[1]),
        .I4(\^unsj_adr1 [6]),
        .O(unsj_adr0[6]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \unsj_adr0[7]_INST_0 
       (.I0(unsjkutn[11]),
        .I1(stat[0]),
        .I2(stat[2]),
        .I3(stat[1]),
        .I4(\^unsj_adr1 [7]),
        .O(unsj_adr0[7]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \unsj_adr0[8]_INST_0 
       (.I0(unsjkutn[12]),
        .I1(stat[0]),
        .I2(stat[2]),
        .I3(stat[1]),
        .I4(\^unsj_adr1 [8]),
        .O(unsj_adr0[8]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \unsj_adr0[9]_INST_0 
       (.I0(unsjkutn[13]),
        .I1(stat[0]),
        .I2(stat[2]),
        .I3(stat[1]),
        .I4(\^unsj_adr1 [9]),
        .O(unsj_adr0[9]));
  LUT2 #(
    .INIT(4'h7)) 
    \unsj_cnt[10]_i_1 
       (.I0(rst_n),
        .I1(\unsj_cnt[10]_i_3_n_0 ),
        .O(\uctl/uctl_adr00 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \unsj_cnt[10]_i_2 
       (.I0(\^unsj_adr1 [10]),
        .I1(\^unsj_adr1 [8]),
        .I2(\unsj_cnt[10]_i_4_n_0 ),
        .I3(\^unsj_adr1 [7]),
        .I4(\^unsj_adr1 [9]),
        .O(p_0_in[10]));
  LUT5 #(
    .INIT(32'h40000000)) 
    \unsj_cnt[10]_i_3 
       (.I0(\unsj_cnt[10]_i_5_n_0 ),
        .I1(\unsj_cnt[10]_i_6_n_0 ),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(stat[1]),
        .O(\unsj_cnt[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \unsj_cnt[10]_i_4 
       (.I0(\^unsj_adr1 [6]),
        .I1(\^unsj_adr1 [4]),
        .I2(\^unsj_adr1 [2]),
        .I3(\^unsj_adr1 [1]),
        .I4(\^unsj_adr1 [3]),
        .I5(\^unsj_adr1 [5]),
        .O(\unsj_cnt[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \unsj_cnt[10]_i_5 
       (.I0(\^unsj_adr1 [5]),
        .I1(\^unsj_adr1 [10]),
        .I2(\^unsj_adr1 [8]),
        .I3(\^unsj_adr1 [9]),
        .I4(\unsj_cnt[10]_i_7_n_0 ),
        .O(\unsj_cnt[10]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \unsj_cnt[10]_i_6 
       (.I0(cods_4_carry_i_9_n_0),
        .I1(cods_4_carry_i_10_n_0),
        .I2(cods_4_carry_i_11_n_0),
        .O(\unsj_cnt[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \unsj_cnt[10]_i_7 
       (.I0(\^unsj_adr1 [1]),
        .I1(\^unsj_adr1 [2]),
        .I2(\^unsj_adr1 [3]),
        .I3(\^unsj_adr1 [7]),
        .I4(\^unsj_adr1 [4]),
        .I5(\^unsj_adr1 [6]),
        .O(\unsj_cnt[10]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \unsj_cnt[1]_i_1 
       (.I0(\^unsj_adr1 [1]),
        .O(\unsj_cnt[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \unsj_cnt[2]_i_1 
       (.I0(\^unsj_adr1 [2]),
        .I1(\^unsj_adr1 [1]),
        .O(p_0_in[2]));
  LUT3 #(
    .INIT(8'h6A)) 
    \unsj_cnt[3]_i_1 
       (.I0(\^unsj_adr1 [3]),
        .I1(\^unsj_adr1 [1]),
        .I2(\^unsj_adr1 [2]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \unsj_cnt[4]_i_1 
       (.I0(\^unsj_adr1 [4]),
        .I1(\^unsj_adr1 [2]),
        .I2(\^unsj_adr1 [1]),
        .I3(\^unsj_adr1 [3]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \unsj_cnt[5]_i_1 
       (.I0(\^unsj_adr1 [5]),
        .I1(\^unsj_adr1 [3]),
        .I2(\^unsj_adr1 [1]),
        .I3(\^unsj_adr1 [2]),
        .I4(\^unsj_adr1 [4]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \unsj_cnt[6]_i_1 
       (.I0(\^unsj_adr1 [6]),
        .I1(\^unsj_adr1 [4]),
        .I2(\^unsj_adr1 [2]),
        .I3(\^unsj_adr1 [1]),
        .I4(\^unsj_adr1 [3]),
        .I5(\^unsj_adr1 [5]),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \unsj_cnt[7]_i_1 
       (.I0(\^unsj_adr1 [7]),
        .I1(\unsj_cnt[10]_i_4_n_0 ),
        .O(p_0_in[7]));
  LUT3 #(
    .INIT(8'h6A)) 
    \unsj_cnt[8]_i_1 
       (.I0(\^unsj_adr1 [8]),
        .I1(\unsj_cnt[10]_i_4_n_0 ),
        .I2(\^unsj_adr1 [7]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \unsj_cnt[9]_i_1 
       (.I0(\^unsj_adr1 [9]),
        .I1(\^unsj_adr1 [7]),
        .I2(\unsj_cnt[10]_i_4_n_0 ),
        .I3(\^unsj_adr1 [8]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    unsjctl_rd_i_1
       (.I0(bcs_unsj_n),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(badr[2]),
        .I5(badr[3]),
        .O(\uctl/unsjctl_rd0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \unsjkutn[0]_i_1 
       (.I0(uctl_kutn[0]),
        .I1(\uktn/codt_2_carry_n_7 ),
        .I2(\unsjkutn[15]_i_6_n_0 ),
        .O(\unsjkutn[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h90FF)) 
    \unsjkutn[10]_i_1 
       (.I0(p_0_in1_in[1]),
        .I1(p_0_in1_in[2]),
        .I2(\unsjkutn[15]_i_6_n_0 ),
        .I3(\unsjkutn[10]_i_2_n_0 ),
        .O(\unsjkutn[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF5F5FFFFFFFF)) 
    \unsjkutn[10]_i_2 
       (.I0(uctl_adr0[6]),
        .I1(uctl_adr1[6]),
        .I2(cods_4_carry_i_9_n_0),
        .I3(cods_4_carry_i_10_n_0),
        .I4(cods_4_carry_i_11_n_0),
        .I5(cods_4_carry_i_12_n_0),
        .O(\unsjkutn[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEEEBAAAA)) 
    \unsjkutn[11]_i_1 
       (.I0(\unsjkutn[11]_i_2_n_0 ),
        .I1(p_0_in1_in[3]),
        .I2(p_0_in1_in[2]),
        .I3(p_0_in1_in[1]),
        .I4(\unsjkutn[15]_i_6_n_0 ),
        .O(\unsjkutn[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C000A0A00000000)) 
    \unsjkutn[11]_i_2 
       (.I0(uctl_adr0[7]),
        .I1(uctl_adr1[7]),
        .I2(cods_4_carry_i_9_n_0),
        .I3(cods_4_carry_i_10_n_0),
        .I4(cods_4_carry_i_11_n_0),
        .I5(cods_4_carry_i_12_n_0),
        .O(\unsjkutn[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEBAAAAAAAA)) 
    \unsjkutn[12]_i_1 
       (.I0(uctl_kutn[12]),
        .I1(p_0_in1_in[4]),
        .I2(p_0_in1_in[3]),
        .I3(p_0_in1_in[1]),
        .I4(p_0_in1_in[2]),
        .I5(\unsjkutn[15]_i_6_n_0 ),
        .O(\unsjkutn[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000088C0000000C0)) 
    \unsjkutn[12]_i_2 
       (.I0(cods_4_carry_i_10_n_0),
        .I1(cods_4_carry_i_12_n_0),
        .I2(uctl_adr0[8]),
        .I3(cods_4_carry_i_11_n_0),
        .I4(cods_4_carry_i_9_n_0),
        .I5(uctl_adr1[8]),
        .O(uctl_kutn[12]));
  LUT4 #(
    .INIT(16'hBEAA)) 
    \unsjkutn[13]_i_1 
       (.I0(uctl_kutn[13]),
        .I1(p_0_in1_in[5]),
        .I2(\unsjkutn[13]_i_3_n_0 ),
        .I3(\unsjkutn[15]_i_6_n_0 ),
        .O(\unsjkutn[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \unsjkutn[13]_i_2 
       (.I0(\unsjkutn[15]_i_5_n_0 ),
        .I1(uctl_adr0[9]),
        .I2(\unsjkutn[14]_i_2_n_0 ),
        .I3(uctl_adr1[9]),
        .O(uctl_kutn[13]));
  LUT4 #(
    .INIT(16'h0001)) 
    \unsjkutn[13]_i_3 
       (.I0(p_0_in1_in[3]),
        .I1(p_0_in1_in[1]),
        .I2(p_0_in1_in[2]),
        .I3(p_0_in1_in[4]),
        .O(\unsjkutn[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A80FFFF8A808A80)) 
    \unsjkutn[14]_i_1 
       (.I0(\unsjkutn[15]_i_5_n_0 ),
        .I1(uctl_adr1[10]),
        .I2(\unsjkutn[14]_i_2_n_0 ),
        .I3(uctl_adr0[10]),
        .I4(\unsjkutn[14]_i_3_n_0 ),
        .I5(\unsjkutn[15]_i_6_n_0 ),
        .O(\unsjkutn[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \unsjkutn[14]_i_2 
       (.I0(cods_4_carry_i_9_n_0),
        .I1(cods_4_carry_i_11_n_0),
        .O(\unsjkutn[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \unsjkutn[14]_i_3 
       (.I0(p_0_in1_in[6]),
        .I1(p_0_in1_in[5]),
        .I2(p_0_in1_in[3]),
        .I3(p_0_in1_in[1]),
        .I4(p_0_in1_in[2]),
        .I5(p_0_in1_in[4]),
        .O(\unsjkutn[14]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \unsjkutn[15]_i_1 
       (.I0(rst_n),
        .O(\unsjkutn[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFFFEFE)) 
    \unsjkutn[15]_i_2 
       (.I0(\unsjkutn[15]_i_4_n_0 ),
        .I1(\bdatr[1]_INST_0_i_1_n_0 ),
        .I2(\unsjkutn[15]_i_5_n_0 ),
        .I3(stat[1]),
        .I4(stat[0]),
        .I5(stat[2]),
        .O(\unsjkutn[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8A20)) 
    \unsjkutn[15]_i_3 
       (.I0(\unsjkutn[15]_i_6_n_0 ),
        .I1(p_0_in1_in[6]),
        .I2(\unsjkutn[15]_i_7_n_0 ),
        .I3(p_0_in1_in[7]),
        .O(\unsjkutn[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \unsjkutn[15]_i_4 
       (.I0(\unsj_cnt[10]_i_5_n_0 ),
        .I1(\unsj_cnt[10]_i_6_n_0 ),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(stat[1]),
        .O(\unsjkutn[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080800080)) 
    \unsjkutn[15]_i_5 
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(stat[2]),
        .I3(cods_4_carry_i_11_n_0),
        .I4(cods_4_carry_i_10_n_0),
        .I5(cods_4_carry_i_9_n_0),
        .O(\unsjkutn[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \unsjkutn[15]_i_6 
       (.I0(\bdatr[1]_INST_0_i_1_n_0 ),
        .I1(stat[1]),
        .I2(stat[0]),
        .I3(stat[2]),
        .I4(\unsjunic[15]_i_4_n_0 ),
        .O(\unsjkutn[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \unsjkutn[15]_i_7 
       (.I0(p_0_in1_in[4]),
        .I1(p_0_in1_in[2]),
        .I2(p_0_in1_in[1]),
        .I3(p_0_in1_in[3]),
        .I4(p_0_in1_in[5]),
        .O(\unsjkutn[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \unsjkutn[1]_i_1 
       (.I0(\unsjkutn[15]_i_5_n_0 ),
        .I1(uctl_kutn1[1]),
        .I2(\unsjkutn[15]_i_6_n_0 ),
        .I3(codt_40_out[1]),
        .O(\unsjkutn[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \unsjkutn[2]_i_1 
       (.I0(\unsjkutn[15]_i_5_n_0 ),
        .I1(uctl_kutn1[2]),
        .I2(\unsjkutn[15]_i_6_n_0 ),
        .I3(codt_40_out[2]),
        .O(\unsjkutn[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \unsjkutn[3]_i_1 
       (.I0(\unsjkutn[15]_i_5_n_0 ),
        .I1(uctl_kutn1[3]),
        .I2(\unsjkutn[15]_i_6_n_0 ),
        .I3(codt_40_out[3]),
        .O(\unsjkutn[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \unsjkutn[4]_i_1 
       (.I0(\unsjkutn[15]_i_5_n_0 ),
        .I1(uctl_kutn1[4]),
        .I2(\unsjkutn[15]_i_6_n_0 ),
        .I3(codt_40_out[4]),
        .O(\unsjkutn[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \unsjkutn[5]_i_1 
       (.I0(\unsjkutn[15]_i_5_n_0 ),
        .I1(uctl_kutn1[5]),
        .I2(\unsjkutn[15]_i_6_n_0 ),
        .I3(codt_40_out[5]),
        .O(\unsjkutn[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \unsjkutn[6]_i_1 
       (.I0(\unsjkutn[15]_i_5_n_0 ),
        .I1(uctl_kutn1[6]),
        .I2(\unsjkutn[15]_i_6_n_0 ),
        .I3(codt_40_out[6]),
        .O(\unsjkutn[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \unsjkutn[7]_i_1 
       (.I0(codt_40_out[7]),
        .I1(\unsjkutn[15]_i_6_n_0 ),
        .O(\unsjkutn[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \unsjkutn[8]_i_1 
       (.I0(\unsjkutn[15]_i_6_n_0 ),
        .I1(codk_22),
        .I2(cods_4_carry_i_3_n_0),
        .O(\unsjkutn[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A80FFFF8A808A80)) 
    \unsjkutn[9]_i_1 
       (.I0(\unsjkutn[15]_i_5_n_0 ),
        .I1(uctl_adr1[5]),
        .I2(\unsjkutn[14]_i_2_n_0 ),
        .I3(uctl_adr0[5]),
        .I4(p_0_in1_in[1]),
        .I5(\unsjkutn[15]_i_6_n_0 ),
        .O(\unsjkutn[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    unsjkutn_rd_i_1
       (.I0(badr[3]),
        .I1(badr[2]),
        .I2(bcmdr),
        .I3(bcs_unsj_n),
        .I4(badr[0]),
        .I5(badr[1]),
        .O(\uctl/unsjkutn_rd0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \unsjsjis[0]_i_1 
       (.I0(bdatw[0]),
        .I1(\unsjsjis[15]_i_4_n_0 ),
        .I2(data1[0]),
        .I3(\unsjsjis[15]_i_5_n_0 ),
        .I4(\unsjsjis[7]_i_2_n_0 ),
        .I5(uctl_kutn[0]),
        .O(\unsjsjis[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B888)) 
    \unsjsjis[10]_i_1 
       (.I0(bdatw[10]),
        .I1(\unsjsjis[15]_i_4_n_0 ),
        .I2(data1[10]),
        .I3(\unsjsjis[15]_i_5_n_0 ),
        .I4(\unsjsjis[15]_i_6_n_0 ),
        .I5(\unsjsjis[15]_i_7_n_0 ),
        .O(\unsjsjis[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B888)) 
    \unsjsjis[11]_i_1 
       (.I0(bdatw[11]),
        .I1(\unsjsjis[15]_i_4_n_0 ),
        .I2(data1[11]),
        .I3(\unsjsjis[15]_i_5_n_0 ),
        .I4(\unsjsjis[15]_i_6_n_0 ),
        .I5(\unsjsjis[15]_i_7_n_0 ),
        .O(\unsjsjis[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B888)) 
    \unsjsjis[12]_i_1 
       (.I0(bdatw[12]),
        .I1(\unsjsjis[15]_i_4_n_0 ),
        .I2(data1[12]),
        .I3(\unsjsjis[15]_i_5_n_0 ),
        .I4(\unsjsjis[15]_i_6_n_0 ),
        .I5(\unsjsjis[15]_i_7_n_0 ),
        .O(\unsjsjis[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B888)) 
    \unsjsjis[13]_i_1 
       (.I0(bdatw[13]),
        .I1(\unsjsjis[15]_i_4_n_0 ),
        .I2(data1[13]),
        .I3(\unsjsjis[15]_i_5_n_0 ),
        .I4(\unsjsjis[15]_i_6_n_0 ),
        .I5(\unsjsjis[15]_i_7_n_0 ),
        .O(\unsjsjis[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B888)) 
    \unsjsjis[14]_i_1 
       (.I0(bdatw[14]),
        .I1(\unsjsjis[15]_i_4_n_0 ),
        .I2(data1[14]),
        .I3(\unsjsjis[15]_i_5_n_0 ),
        .I4(\unsjsjis[15]_i_6_n_0 ),
        .I5(\unsjsjis[15]_i_7_n_0 ),
        .O(\unsjsjis[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \unsjsjis[15]_i_1 
       (.I0(\unsjkutn[15]_i_4_n_0 ),
        .I1(rst_n),
        .O(\unsjsjis[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \unsjsjis[15]_i_2 
       (.I0(\unsjkutn[15]_i_5_n_0 ),
        .I1(\unsjsjis[15]_i_4_n_0 ),
        .O(\unsjsjis[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0000FFFC)) 
    \unsjsjis[15]_i_3 
       (.I0(bdatw[15]),
        .I1(\unsjsjis[15]_i_5_n_0 ),
        .I2(\unsjsjis[15]_i_6_n_0 ),
        .I3(\unsjsjis[15]_i_7_n_0 ),
        .I4(\usjs/cods_4_carry__2_n_0 ),
        .I5(\unsjsjis[15]_i_4_n_0 ),
        .O(\unsjsjis[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \unsjsjis[15]_i_4 
       (.I0(\unsjsjis[15]_i_8_n_0 ),
        .I1(bcs_unsj_n),
        .I2(bcmdw),
        .I3(uctl_busy),
        .O(\unsjsjis[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \unsjsjis[15]_i_5 
       (.I0(\unsjsjis[15]_i_9_n_0 ),
        .I1(uctl_kutn[12]),
        .I2(\unsjkutn[10]_i_2_n_0 ),
        .I3(\unsjkutn[11]_i_2_n_0 ),
        .O(\unsjsjis[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFFACC00000000)) 
    \unsjsjis[15]_i_6 
       (.I0(uctl_adr1[10]),
        .I1(uctl_adr0[10]),
        .I2(uctl_adr1[9]),
        .I3(\unsjkutn[14]_i_2_n_0 ),
        .I4(uctl_adr0[9]),
        .I5(\unsjkutn[15]_i_5_n_0 ),
        .O(\unsjsjis[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5457)) 
    \unsjsjis[15]_i_7 
       (.I0(uctl_adr1[4]),
        .I1(cods_4_carry_i_9_n_0),
        .I2(cods_4_carry_i_11_n_0),
        .I3(uctl_adr0[4]),
        .O(\unsjsjis[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \unsjsjis[15]_i_8 
       (.I0(badr[0]),
        .I1(badr[1]),
        .I2(badr[3]),
        .I3(badr[2]),
        .O(\unsjsjis[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0C000A0A00000000)) 
    \unsjsjis[15]_i_9 
       (.I0(uctl_adr0[5]),
        .I1(uctl_adr1[5]),
        .I2(cods_4_carry_i_9_n_0),
        .I3(cods_4_carry_i_10_n_0),
        .I4(cods_4_carry_i_11_n_0),
        .I5(cods_4_carry_i_12_n_0),
        .O(\unsjsjis[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \unsjsjis[1]_i_1 
       (.I0(bdatw[1]),
        .I1(\unsjsjis[15]_i_4_n_0 ),
        .I2(data1[1]),
        .I3(\unsjsjis[15]_i_5_n_0 ),
        .I4(\unsjsjis[7]_i_2_n_0 ),
        .I5(\unsjsjis[1]_i_2_n_0 ),
        .O(\unsjsjis[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \unsjsjis[1]_i_2 
       (.I0(uctl_kutn1[1]),
        .I1(\unsjkutn[15]_i_5_n_0 ),
        .O(\unsjsjis[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \unsjsjis[2]_i_1 
       (.I0(bdatw[2]),
        .I1(\unsjsjis[15]_i_4_n_0 ),
        .I2(data1[2]),
        .I3(\unsjsjis[15]_i_5_n_0 ),
        .I4(\unsjsjis[7]_i_2_n_0 ),
        .I5(\unsjsjis[2]_i_2_n_0 ),
        .O(\unsjsjis[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \unsjsjis[2]_i_2 
       (.I0(uctl_kutn1[2]),
        .I1(\unsjkutn[15]_i_5_n_0 ),
        .O(\unsjsjis[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \unsjsjis[3]_i_1 
       (.I0(bdatw[3]),
        .I1(\unsjsjis[15]_i_4_n_0 ),
        .I2(data1[3]),
        .I3(\unsjsjis[15]_i_5_n_0 ),
        .I4(\unsjsjis[7]_i_2_n_0 ),
        .I5(\unsjsjis[3]_i_2_n_0 ),
        .O(\unsjsjis[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \unsjsjis[3]_i_2 
       (.I0(uctl_kutn1[3]),
        .I1(\unsjkutn[15]_i_5_n_0 ),
        .O(\unsjsjis[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \unsjsjis[4]_i_1 
       (.I0(bdatw[4]),
        .I1(\unsjsjis[15]_i_4_n_0 ),
        .I2(data1[4]),
        .I3(\unsjsjis[15]_i_5_n_0 ),
        .I4(\unsjsjis[7]_i_2_n_0 ),
        .I5(cods_4_carry__0_i_2_n_0),
        .O(\unsjsjis[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B888B8B8B8BB)) 
    \unsjsjis[5]_i_1 
       (.I0(bdatw[5]),
        .I1(\unsjsjis[15]_i_4_n_0 ),
        .I2(data1[5]),
        .I3(\unsjsjis[15]_i_5_n_0 ),
        .I4(\unsjsjis[7]_i_2_n_0 ),
        .I5(\unsjsjis[5]_i_2_n_0 ),
        .O(\unsjsjis[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \unsjsjis[5]_i_2 
       (.I0(uctl_kutn1[5]),
        .I1(\unsjkutn[15]_i_5_n_0 ),
        .O(\unsjsjis[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \unsjsjis[6]_i_1 
       (.I0(bdatw[6]),
        .I1(\unsjsjis[15]_i_4_n_0 ),
        .I2(data1[6]),
        .I3(\unsjsjis[15]_i_5_n_0 ),
        .I4(\unsjsjis[7]_i_2_n_0 ),
        .I5(\unsjsjis[6]_i_2_n_0 ),
        .O(\unsjsjis[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \unsjsjis[6]_i_2 
       (.I0(uctl_kutn1[5]),
        .I1(\unsjkutn[15]_i_5_n_0 ),
        .I2(uctl_kutn1[6]),
        .O(\unsjsjis[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \unsjsjis[7]_i_1 
       (.I0(bdatw[7]),
        .I1(\unsjsjis[15]_i_4_n_0 ),
        .I2(data1[7]),
        .I3(\unsjsjis[15]_i_5_n_0 ),
        .I4(\unsjsjis[7]_i_2_n_0 ),
        .I5(\unsjsjis[7]_i_3_n_0 ),
        .O(\unsjsjis[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAEA)) 
    \unsjsjis[7]_i_2 
       (.I0(cods_4_carry_i_3_n_0),
        .I1(\unsjkutn[15]_i_5_n_0 ),
        .I2(uctl_adr0[9]),
        .I3(\unsjkutn[14]_i_2_n_0 ),
        .I4(uctl_adr1[9]),
        .I5(\unsjsjis[7]_i_4_n_0 ),
        .O(\unsjsjis[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \unsjsjis[7]_i_3 
       (.I0(uctl_kutn1[5]),
        .I1(\unsjkutn[15]_i_5_n_0 ),
        .I2(uctl_kutn1[6]),
        .O(\unsjsjis[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0C000A0A00000000)) 
    \unsjsjis[7]_i_4 
       (.I0(uctl_adr0[10]),
        .I1(uctl_adr1[10]),
        .I2(cods_4_carry_i_9_n_0),
        .I3(cods_4_carry_i_10_n_0),
        .I4(cods_4_carry_i_11_n_0),
        .I5(cods_4_carry_i_12_n_0),
        .O(\unsjsjis[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B888)) 
    \unsjsjis[8]_i_1 
       (.I0(bdatw[8]),
        .I1(\unsjsjis[15]_i_4_n_0 ),
        .I2(data1[8]),
        .I3(\unsjsjis[15]_i_5_n_0 ),
        .I4(\unsjsjis[15]_i_6_n_0 ),
        .I5(\unsjsjis[15]_i_7_n_0 ),
        .O(\unsjsjis[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B888)) 
    \unsjsjis[9]_i_1 
       (.I0(bdatw[9]),
        .I1(\unsjsjis[15]_i_4_n_0 ),
        .I2(data1[9]),
        .I3(\unsjsjis[15]_i_5_n_0 ),
        .I4(\unsjsjis[15]_i_6_n_0 ),
        .I5(\unsjsjis[15]_i_7_n_0 ),
        .O(\unsjsjis[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    unsjsjis_rd_i_1
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(bcs_unsj_n),
        .I5(bcmdr),
        .O(\uctl/unsjsjis_rd0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \unsjunic[0]_i_1 
       (.I0(bdatw[0]),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\unsjunic[0]_i_2_n_0 ),
        .I3(\unsjunic[15]_i_6_n_0 ),
        .I4(unsjsjis_0[0]),
        .O(p_2_in[0]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \unsjunic[0]_i_2 
       (.I0(unsj_dat0[16]),
        .I1(\unsjunic[15]_i_7_n_0 ),
        .I2(unsj_dat0[0]),
        .I3(\unsjunic[15]_i_8_n_0 ),
        .I4(\unsjunic[0]_i_3_n_0 ),
        .O(\unsjunic[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \unsjunic[0]_i_3 
       (.I0(unsj_dat0[32]),
        .I1(unsj_dat0[48]),
        .I2(\uctl/unsjunic[15]_i_11_n_0 ),
        .I3(unsj_dat0[64]),
        .I4(\uctl/unsjunic[15]_i_12_n_0 ),
        .I5(unsj_dat0[80]),
        .O(\unsjunic[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \unsjunic[10]_i_1 
       (.I0(bdatw[10]),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\unsjunic[10]_i_2_n_0 ),
        .I3(\unsjunic[15]_i_6_n_0 ),
        .I4(usjs_byte0[10]),
        .O(p_2_in[10]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \unsjunic[10]_i_2 
       (.I0(unsj_dat0[26]),
        .I1(\unsjunic[15]_i_7_n_0 ),
        .I2(unsj_dat0[10]),
        .I3(\unsjunic[15]_i_8_n_0 ),
        .I4(\unsjunic[10]_i_3_n_0 ),
        .O(\unsjunic[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \unsjunic[10]_i_3 
       (.I0(unsj_dat0[42]),
        .I1(unsj_dat0[58]),
        .I2(\uctl/unsjunic[15]_i_11_n_0 ),
        .I3(unsj_dat0[74]),
        .I4(\uctl/unsjunic[15]_i_12_n_0 ),
        .I5(unsj_dat0[90]),
        .O(\unsjunic[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \unsjunic[11]_i_1 
       (.I0(bdatw[11]),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\unsjunic[11]_i_2_n_0 ),
        .I3(\unsjunic[15]_i_6_n_0 ),
        .I4(usjs_byte0[11]),
        .O(p_2_in[11]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \unsjunic[11]_i_2 
       (.I0(unsj_dat0[27]),
        .I1(\unsjunic[15]_i_7_n_0 ),
        .I2(unsj_dat0[11]),
        .I3(\unsjunic[15]_i_8_n_0 ),
        .I4(\unsjunic[11]_i_3_n_0 ),
        .O(\unsjunic[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \unsjunic[11]_i_3 
       (.I0(unsj_dat0[43]),
        .I1(unsj_dat0[59]),
        .I2(\uctl/unsjunic[15]_i_11_n_0 ),
        .I3(unsj_dat0[75]),
        .I4(\uctl/unsjunic[15]_i_12_n_0 ),
        .I5(unsj_dat0[91]),
        .O(\unsjunic[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \unsjunic[12]_i_1 
       (.I0(bdatw[12]),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\unsjunic[12]_i_2_n_0 ),
        .I3(\unsjunic[15]_i_6_n_0 ),
        .I4(usjs_byte0[12]),
        .O(p_2_in[12]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \unsjunic[12]_i_2 
       (.I0(unsj_dat0[28]),
        .I1(\unsjunic[15]_i_7_n_0 ),
        .I2(unsj_dat0[12]),
        .I3(\unsjunic[15]_i_8_n_0 ),
        .I4(\unsjunic[12]_i_3_n_0 ),
        .O(\unsjunic[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \unsjunic[12]_i_3 
       (.I0(unsj_dat0[44]),
        .I1(unsj_dat0[60]),
        .I2(\uctl/unsjunic[15]_i_11_n_0 ),
        .I3(unsj_dat0[76]),
        .I4(\uctl/unsjunic[15]_i_12_n_0 ),
        .I5(unsj_dat0[92]),
        .O(\unsjunic[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \unsjunic[13]_i_1 
       (.I0(bdatw[13]),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\unsjunic[13]_i_2_n_0 ),
        .I3(\unsjunic[15]_i_6_n_0 ),
        .I4(usjs_byte0[13]),
        .O(p_2_in[13]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \unsjunic[13]_i_2 
       (.I0(unsj_dat0[29]),
        .I1(\unsjunic[15]_i_7_n_0 ),
        .I2(unsj_dat0[13]),
        .I3(\unsjunic[15]_i_8_n_0 ),
        .I4(\unsjunic[13]_i_3_n_0 ),
        .O(\unsjunic[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \unsjunic[13]_i_3 
       (.I0(unsj_dat0[45]),
        .I1(unsj_dat0[61]),
        .I2(\uctl/unsjunic[15]_i_11_n_0 ),
        .I3(unsj_dat0[77]),
        .I4(\uctl/unsjunic[15]_i_12_n_0 ),
        .I5(unsj_dat0[93]),
        .O(\unsjunic[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \unsjunic[14]_i_1 
       (.I0(bdatw[14]),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\unsjunic[14]_i_2_n_0 ),
        .I3(\unsjunic[15]_i_6_n_0 ),
        .I4(usjs_byte0[14]),
        .O(p_2_in[14]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \unsjunic[14]_i_2 
       (.I0(unsj_dat0[30]),
        .I1(\unsjunic[15]_i_7_n_0 ),
        .I2(unsj_dat0[14]),
        .I3(\unsjunic[15]_i_8_n_0 ),
        .I4(\unsjunic[14]_i_3_n_0 ),
        .O(\unsjunic[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \unsjunic[14]_i_3 
       (.I0(unsj_dat0[46]),
        .I1(unsj_dat0[62]),
        .I2(\uctl/unsjunic[15]_i_11_n_0 ),
        .I3(unsj_dat0[78]),
        .I4(\uctl/unsjunic[15]_i_12_n_0 ),
        .I5(unsj_dat0[94]),
        .O(\unsjunic[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00100000FFFFFFFF)) 
    \unsjunic[15]_i_1 
       (.I0(\unsjunic[15]_i_4_n_0 ),
        .I1(stat[2]),
        .I2(stat[0]),
        .I3(stat[1]),
        .I4(\bdatr[1]_INST_0_i_1_n_0 ),
        .I5(rst_n),
        .O(\unsjunic[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCFECC)) 
    \unsjunic[15]_i_2 
       (.I0(\unsjunic[15]_i_4_n_0 ),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(stat[2]),
        .O(\unsjunic[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \unsjunic[15]_i_3 
       (.I0(bdatw[15]),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\unsjunic[15]_i_5_n_0 ),
        .I3(\unsjunic[15]_i_6_n_0 ),
        .I4(usjs_byte0[15]),
        .O(p_2_in[15]));
  LUT3 #(
    .INIT(8'h02)) 
    \unsjunic[15]_i_4 
       (.I0(\bdatr[1]_INST_0_i_4_n_0 ),
        .I1(unsjsjis_0[15]),
        .I2(unsjsjis_0[14]),
        .O(\unsjunic[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \unsjunic[15]_i_5 
       (.I0(unsj_dat0[31]),
        .I1(\unsjunic[15]_i_7_n_0 ),
        .I2(unsj_dat0[15]),
        .I3(\unsjunic[15]_i_8_n_0 ),
        .I4(\unsjunic[15]_i_9_n_0 ),
        .O(\unsjunic[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \unsjunic[15]_i_6 
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(stat[2]),
        .O(\unsjunic[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0142142142142142)) 
    \unsjunic[15]_i_7 
       (.I0(unsjkutn[6]),
        .I1(unsjkutn[5]),
        .I2(unsjkutn[1]),
        .I3(unsjkutn[2]),
        .I4(unsjkutn[3]),
        .I5(unsjkutn[4]),
        .O(\unsjunic[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \unsjunic[15]_i_8 
       (.I0(\uctl/unsjunic[15]_i_10_n_0 ),
        .I1(\uctl/unsjunic[15]_i_11_n_0 ),
        .I2(\uctl/unsjunic[15]_i_12_n_0 ),
        .O(\unsjunic[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \unsjunic[15]_i_9 
       (.I0(unsj_dat0[47]),
        .I1(unsj_dat0[63]),
        .I2(\uctl/unsjunic[15]_i_11_n_0 ),
        .I3(unsj_dat0[79]),
        .I4(\uctl/unsjunic[15]_i_12_n_0 ),
        .I5(unsj_dat0[95]),
        .O(\unsjunic[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \unsjunic[1]_i_1 
       (.I0(bdatw[1]),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\unsjunic[1]_i_2_n_0 ),
        .I3(\unsjunic[15]_i_6_n_0 ),
        .I4(unsjsjis_0[1]),
        .O(p_2_in[1]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \unsjunic[1]_i_2 
       (.I0(unsj_dat0[17]),
        .I1(\unsjunic[15]_i_7_n_0 ),
        .I2(unsj_dat0[1]),
        .I3(\unsjunic[15]_i_8_n_0 ),
        .I4(\unsjunic[1]_i_3_n_0 ),
        .O(\unsjunic[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \unsjunic[1]_i_3 
       (.I0(unsj_dat0[33]),
        .I1(unsj_dat0[49]),
        .I2(\uctl/unsjunic[15]_i_11_n_0 ),
        .I3(unsj_dat0[65]),
        .I4(\uctl/unsjunic[15]_i_12_n_0 ),
        .I5(unsj_dat0[81]),
        .O(\unsjunic[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \unsjunic[2]_i_1 
       (.I0(bdatw[2]),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\unsjunic[2]_i_2_n_0 ),
        .I3(\unsjunic[15]_i_6_n_0 ),
        .I4(unsjsjis_0[2]),
        .O(p_2_in[2]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \unsjunic[2]_i_2 
       (.I0(unsj_dat0[18]),
        .I1(\unsjunic[15]_i_7_n_0 ),
        .I2(unsj_dat0[2]),
        .I3(\unsjunic[15]_i_8_n_0 ),
        .I4(\unsjunic[2]_i_3_n_0 ),
        .O(\unsjunic[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \unsjunic[2]_i_3 
       (.I0(unsj_dat0[34]),
        .I1(unsj_dat0[50]),
        .I2(\uctl/unsjunic[15]_i_11_n_0 ),
        .I3(unsj_dat0[66]),
        .I4(\uctl/unsjunic[15]_i_12_n_0 ),
        .I5(unsj_dat0[82]),
        .O(\unsjunic[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \unsjunic[3]_i_1 
       (.I0(bdatw[3]),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\unsjunic[3]_i_2_n_0 ),
        .I3(\unsjunic[15]_i_6_n_0 ),
        .I4(unsjsjis_0[3]),
        .O(p_2_in[3]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \unsjunic[3]_i_2 
       (.I0(unsj_dat0[19]),
        .I1(\unsjunic[15]_i_7_n_0 ),
        .I2(unsj_dat0[3]),
        .I3(\unsjunic[15]_i_8_n_0 ),
        .I4(\unsjunic[3]_i_3_n_0 ),
        .O(\unsjunic[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \unsjunic[3]_i_3 
       (.I0(unsj_dat0[35]),
        .I1(unsj_dat0[51]),
        .I2(\uctl/unsjunic[15]_i_11_n_0 ),
        .I3(unsj_dat0[67]),
        .I4(\uctl/unsjunic[15]_i_12_n_0 ),
        .I5(unsj_dat0[83]),
        .O(\unsjunic[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \unsjunic[4]_i_1 
       (.I0(bdatw[4]),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\unsjunic[4]_i_2_n_0 ),
        .I3(\unsjunic[15]_i_6_n_0 ),
        .I4(unsjsjis_0[4]),
        .O(p_2_in[4]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \unsjunic[4]_i_2 
       (.I0(unsj_dat0[20]),
        .I1(\unsjunic[15]_i_7_n_0 ),
        .I2(unsj_dat0[4]),
        .I3(\unsjunic[15]_i_8_n_0 ),
        .I4(\unsjunic[4]_i_3_n_0 ),
        .O(\unsjunic[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \unsjunic[4]_i_3 
       (.I0(unsj_dat0[36]),
        .I1(unsj_dat0[52]),
        .I2(\uctl/unsjunic[15]_i_11_n_0 ),
        .I3(unsj_dat0[68]),
        .I4(\uctl/unsjunic[15]_i_12_n_0 ),
        .I5(unsj_dat0[84]),
        .O(\unsjunic[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \unsjunic[5]_i_1 
       (.I0(bdatw[5]),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\unsjunic[5]_i_2_n_0 ),
        .I3(\unsjunic[15]_i_6_n_0 ),
        .I4(unsjsjis_0[5]),
        .O(p_2_in[5]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \unsjunic[5]_i_2 
       (.I0(unsj_dat0[21]),
        .I1(\unsjunic[15]_i_7_n_0 ),
        .I2(unsj_dat0[5]),
        .I3(\unsjunic[15]_i_8_n_0 ),
        .I4(\unsjunic[5]_i_3_n_0 ),
        .O(\unsjunic[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \unsjunic[5]_i_3 
       (.I0(unsj_dat0[37]),
        .I1(unsj_dat0[53]),
        .I2(\uctl/unsjunic[15]_i_11_n_0 ),
        .I3(unsj_dat0[69]),
        .I4(\uctl/unsjunic[15]_i_12_n_0 ),
        .I5(unsj_dat0[85]),
        .O(\unsjunic[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \unsjunic[6]_i_1 
       (.I0(bdatw[6]),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\unsjunic[6]_i_2_n_0 ),
        .I3(\unsjunic[15]_i_6_n_0 ),
        .I4(usjs_byte0[6]),
        .O(p_2_in[6]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \unsjunic[6]_i_2 
       (.I0(unsj_dat0[22]),
        .I1(\unsjunic[15]_i_7_n_0 ),
        .I2(unsj_dat0[6]),
        .I3(\unsjunic[15]_i_8_n_0 ),
        .I4(\unsjunic[6]_i_3_n_0 ),
        .O(\unsjunic[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \unsjunic[6]_i_3 
       (.I0(unsj_dat0[38]),
        .I1(unsj_dat0[54]),
        .I2(\uctl/unsjunic[15]_i_11_n_0 ),
        .I3(unsj_dat0[70]),
        .I4(\uctl/unsjunic[15]_i_12_n_0 ),
        .I5(unsj_dat0[86]),
        .O(\unsjunic[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \unsjunic[7]_i_1 
       (.I0(bdatw[7]),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\unsjunic[7]_i_2_n_0 ),
        .I3(\unsjunic[15]_i_6_n_0 ),
        .I4(usjs_byte0[7]),
        .O(p_2_in[7]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \unsjunic[7]_i_2 
       (.I0(unsj_dat0[23]),
        .I1(\unsjunic[15]_i_7_n_0 ),
        .I2(unsj_dat0[7]),
        .I3(\unsjunic[15]_i_8_n_0 ),
        .I4(\unsjunic[7]_i_3_n_0 ),
        .O(\unsjunic[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \unsjunic[7]_i_3 
       (.I0(unsj_dat0[39]),
        .I1(unsj_dat0[55]),
        .I2(\uctl/unsjunic[15]_i_11_n_0 ),
        .I3(unsj_dat0[71]),
        .I4(\uctl/unsjunic[15]_i_12_n_0 ),
        .I5(unsj_dat0[87]),
        .O(\unsjunic[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \unsjunic[8]_i_1 
       (.I0(bdatw[8]),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\unsjunic[8]_i_2_n_0 ),
        .I3(\unsjunic[15]_i_6_n_0 ),
        .I4(usjs_byte0[8]),
        .O(p_2_in[8]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \unsjunic[8]_i_2 
       (.I0(unsj_dat0[24]),
        .I1(\unsjunic[15]_i_7_n_0 ),
        .I2(unsj_dat0[8]),
        .I3(\unsjunic[15]_i_8_n_0 ),
        .I4(\unsjunic[8]_i_3_n_0 ),
        .O(\unsjunic[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \unsjunic[8]_i_3 
       (.I0(unsj_dat0[40]),
        .I1(unsj_dat0[56]),
        .I2(\uctl/unsjunic[15]_i_11_n_0 ),
        .I3(unsj_dat0[72]),
        .I4(\uctl/unsjunic[15]_i_12_n_0 ),
        .I5(unsj_dat0[88]),
        .O(\unsjunic[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \unsjunic[9]_i_1 
       (.I0(bdatw[9]),
        .I1(\stat[2]_i_2_n_0 ),
        .I2(\unsjunic[9]_i_2_n_0 ),
        .I3(\unsjunic[15]_i_6_n_0 ),
        .I4(usjs_byte0[9]),
        .O(p_2_in[9]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \unsjunic[9]_i_2 
       (.I0(unsj_dat0[25]),
        .I1(\unsjunic[15]_i_7_n_0 ),
        .I2(unsj_dat0[9]),
        .I3(\unsjunic[15]_i_8_n_0 ),
        .I4(\unsjunic[9]_i_3_n_0 ),
        .O(\unsjunic[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \unsjunic[9]_i_3 
       (.I0(unsj_dat0[41]),
        .I1(unsj_dat0[57]),
        .I2(\uctl/unsjunic[15]_i_11_n_0 ),
        .I3(unsj_dat0[73]),
        .I4(\uctl/unsjunic[15]_i_12_n_0 ),
        .I5(unsj_dat0[89]),
        .O(\unsjunic[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    unsjunic_rd_i_1
       (.I0(bcs_unsj_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[2]),
        .I5(badr[3]),
        .O(\uctl/unsjunic_rd0 ));
  CARRY4 \usjs/cods_4_carry 
       (.CI(\<const0> ),
        .CO({\usjs/cods_4_carry_n_0 ,\usjs/cods_4_carry_n_1 ,\usjs/cods_4_carry_n_2 ,\usjs/cods_4_carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI({cods_4_carry_i_1_n_0,cods_4_carry_i_2_n_0,cods_4_carry_i_3_n_0,uctl_kutn[0]}),
        .O(data1[3:0]),
        .S({cods_4_carry_i_5_n_0,cods_4_carry_i_6_n_0,cods_4_carry_i_7_n_0,cods_4_carry_i_8_n_0}));
  CARRY4 \usjs/cods_4_carry__0 
       (.CI(\usjs/cods_4_carry_n_0 ),
        .CO({\usjs/cods_4_carry__0_n_0 ,\usjs/cods_4_carry__0_n_1 ,\usjs/cods_4_carry__0_n_2 ,\usjs/cods_4_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({cods_4_carry_i_3_n_0,cods_4_carry__0_i_1_n_0,cods_4_carry__0_i_2_n_0,cods_4_carry__0_i_3_n_0}),
        .O(data1[7:4]),
        .S({cods_4_carry__0_i_4_n_0,cods_4_carry__0_i_5_n_0,cods_4_carry__0_i_6_n_0,cods_4_carry__0_i_7_n_0}));
  CARRY4 \usjs/cods_4_carry__1 
       (.CI(\usjs/cods_4_carry__0_n_0 ),
        .CO({\usjs/cods_4_carry__1_n_0 ,\usjs/cods_4_carry__1_n_1 ,\usjs/cods_4_carry__1_n_2 ,\usjs/cods_4_carry__1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,uctl_kutn[8]}),
        .O(data1[11:8]),
        .S({cods_4_carry__1_i_2_n_0,cods_4_carry__1_i_3_n_0,uctl_kutn[10],cods_4_carry__1_i_5_n_0}));
  CARRY4 \usjs/cods_4_carry__2 
       (.CI(\usjs/cods_4_carry__1_n_0 ),
        .CO({\usjs/cods_4_carry__2_n_0 ,\NLW_usjs/cods_4_carry__2_CO_UNCONNECTED [2],\usjs/cods_4_carry__2_n_2 ,\usjs/cods_4_carry__2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data1[14:12]),
        .S({\<const1> ,cods_22,cods_4_carry__2_i_2_n_0,cods_4_carry__2_i_3_n_0}));
  FDRE \usjs/unsjsjis_reg[0] 
       (.C(clk),
        .CE(\unsjsjis[15]_i_2_n_0 ),
        .D(\unsjsjis[0]_i_1_n_0 ),
        .Q(unsjsjis_0[0]),
        .R(\unsjsjis[15]_i_1_n_0 ));
  FDRE \usjs/unsjsjis_reg[10] 
       (.C(clk),
        .CE(\unsjsjis[15]_i_2_n_0 ),
        .D(\unsjsjis[10]_i_1_n_0 ),
        .Q(unsjsjis_0[10]),
        .R(\unsjsjis[15]_i_1_n_0 ));
  FDRE \usjs/unsjsjis_reg[11] 
       (.C(clk),
        .CE(\unsjsjis[15]_i_2_n_0 ),
        .D(\unsjsjis[11]_i_1_n_0 ),
        .Q(unsjsjis_0[11]),
        .R(\unsjsjis[15]_i_1_n_0 ));
  FDRE \usjs/unsjsjis_reg[12] 
       (.C(clk),
        .CE(\unsjsjis[15]_i_2_n_0 ),
        .D(\unsjsjis[12]_i_1_n_0 ),
        .Q(unsjsjis_0[12]),
        .R(\unsjsjis[15]_i_1_n_0 ));
  FDRE \usjs/unsjsjis_reg[13] 
       (.C(clk),
        .CE(\unsjsjis[15]_i_2_n_0 ),
        .D(\unsjsjis[13]_i_1_n_0 ),
        .Q(unsjsjis_0[13]),
        .R(\unsjsjis[15]_i_1_n_0 ));
  FDRE \usjs/unsjsjis_reg[14] 
       (.C(clk),
        .CE(\unsjsjis[15]_i_2_n_0 ),
        .D(\unsjsjis[14]_i_1_n_0 ),
        .Q(unsjsjis_0[14]),
        .R(\unsjsjis[15]_i_1_n_0 ));
  FDRE \usjs/unsjsjis_reg[15] 
       (.C(clk),
        .CE(\unsjsjis[15]_i_2_n_0 ),
        .D(\unsjsjis[15]_i_3_n_0 ),
        .Q(unsjsjis_0[15]),
        .R(\unsjsjis[15]_i_1_n_0 ));
  FDRE \usjs/unsjsjis_reg[1] 
       (.C(clk),
        .CE(\unsjsjis[15]_i_2_n_0 ),
        .D(\unsjsjis[1]_i_1_n_0 ),
        .Q(unsjsjis_0[1]),
        .R(\unsjsjis[15]_i_1_n_0 ));
  FDRE \usjs/unsjsjis_reg[2] 
       (.C(clk),
        .CE(\unsjsjis[15]_i_2_n_0 ),
        .D(\unsjsjis[2]_i_1_n_0 ),
        .Q(unsjsjis_0[2]),
        .R(\unsjsjis[15]_i_1_n_0 ));
  FDRE \usjs/unsjsjis_reg[3] 
       (.C(clk),
        .CE(\unsjsjis[15]_i_2_n_0 ),
        .D(\unsjsjis[3]_i_1_n_0 ),
        .Q(unsjsjis_0[3]),
        .R(\unsjsjis[15]_i_1_n_0 ));
  FDRE \usjs/unsjsjis_reg[4] 
       (.C(clk),
        .CE(\unsjsjis[15]_i_2_n_0 ),
        .D(\unsjsjis[4]_i_1_n_0 ),
        .Q(unsjsjis_0[4]),
        .R(\unsjsjis[15]_i_1_n_0 ));
  FDRE \usjs/unsjsjis_reg[5] 
       (.C(clk),
        .CE(\unsjsjis[15]_i_2_n_0 ),
        .D(\unsjsjis[5]_i_1_n_0 ),
        .Q(unsjsjis_0[5]),
        .R(\unsjsjis[15]_i_1_n_0 ));
  FDRE \usjs/unsjsjis_reg[6] 
       (.C(clk),
        .CE(\unsjsjis[15]_i_2_n_0 ),
        .D(\unsjsjis[6]_i_1_n_0 ),
        .Q(unsjsjis_0[6]),
        .R(\unsjsjis[15]_i_1_n_0 ));
  FDRE \usjs/unsjsjis_reg[7] 
       (.C(clk),
        .CE(\unsjsjis[15]_i_2_n_0 ),
        .D(\unsjsjis[7]_i_1_n_0 ),
        .Q(unsjsjis_0[7]),
        .R(\unsjsjis[15]_i_1_n_0 ));
  FDRE \usjs/unsjsjis_reg[8] 
       (.C(clk),
        .CE(\unsjsjis[15]_i_2_n_0 ),
        .D(\unsjsjis[8]_i_1_n_0 ),
        .Q(unsjsjis_0[8]),
        .R(\unsjsjis[15]_i_1_n_0 ));
  FDRE \usjs/unsjsjis_reg[9] 
       (.C(clk),
        .CE(\unsjsjis[15]_i_2_n_0 ),
        .D(\unsjsjis[9]_i_1_n_0 ),
        .Q(unsjsjis_0[9]),
        .R(\unsjsjis[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \usjs/usjs_byte1__0_carry 
       (.CI(\<const0> ),
        .CO({\usjs/usjs_byte1__0_carry_n_0 ,\usjs/usjs_byte1__0_carry_n_1 ,\usjs/usjs_byte1__0_carry_n_2 ,\usjs/usjs_byte1__0_carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI({unsjsjis_0[8:7],usjs_byte1__0_carry_i_1_n_0,\<const0> }),
        .O(usjs_byte0[9:6]),
        .S({usjs_byte1__0_carry_i_2_n_0,usjs_byte1__0_carry_i_3_n_0,usjs_byte1__0_carry_i_4_n_0,usjs_byte1__0_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \usjs/usjs_byte1__0_carry__0 
       (.CI(\usjs/usjs_byte1__0_carry_n_0 ),
        .CO({\usjs/usjs_byte1__0_carry__0_n_0 ,\usjs/usjs_byte1__0_carry__0_n_1 ,\usjs/usjs_byte1__0_carry__0_n_2 ,\usjs/usjs_byte1__0_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI(unsjsjis_0[12:9]),
        .O(usjs_byte0[13:10]),
        .S({usjs_byte1__0_carry__0_i_1_n_0,usjs_byte1__0_carry__0_i_2_n_0,usjs_byte1__0_carry__0_i_3_n_0,usjs_byte1__0_carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \usjs/usjs_byte1__0_carry__1 
       (.CI(\usjs/usjs_byte1__0_carry__0_n_0 ),
        .CO(\usjs/usjs_byte1__0_carry__1_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,unsjsjis_0[13]}),
        .O(usjs_byte0[15:14]),
        .S({\<const0> ,\<const0> ,usjs_byte1__0_carry__1_i_1_n_0,usjs_byte1__0_carry__1_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    usjs_byte1__0_carry__0_i_1
       (.I0(unsjsjis_0[12]),
        .I1(unsjsjis_0[13]),
        .O(usjs_byte1__0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    usjs_byte1__0_carry__0_i_2
       (.I0(unsjsjis_0[11]),
        .I1(unsjsjis_0[12]),
        .O(usjs_byte1__0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    usjs_byte1__0_carry__0_i_3
       (.I0(unsjsjis_0[10]),
        .I1(unsjsjis_0[11]),
        .O(usjs_byte1__0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    usjs_byte1__0_carry__0_i_4
       (.I0(unsjsjis_0[9]),
        .I1(unsjsjis_0[10]),
        .O(usjs_byte1__0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    usjs_byte1__0_carry__1_i_1
       (.I0(unsjsjis_0[14]),
        .I1(unsjsjis_0[15]),
        .O(usjs_byte1__0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    usjs_byte1__0_carry__1_i_2
       (.I0(unsjsjis_0[13]),
        .I1(unsjsjis_0[14]),
        .O(usjs_byte1__0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    usjs_byte1__0_carry_i_1
       (.I0(unsjsjis_0[7]),
        .O(usjs_byte1__0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    usjs_byte1__0_carry_i_2
       (.I0(unsjsjis_0[8]),
        .I1(unsjsjis_0[9]),
        .O(usjs_byte1__0_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hFF0010FF)) 
    usjs_byte1__0_carry_i_3
       (.I0(unsjsjis_0[14]),
        .I1(unsjsjis_0[15]),
        .I2(\bdatr[1]_INST_0_i_4_n_0 ),
        .I3(unsjsjis_0[7]),
        .I4(unsjsjis_0[8]),
        .O(usjs_byte1__0_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFEF0000)) 
    usjs_byte1__0_carry_i_4
       (.I0(unsjsjis_0[14]),
        .I1(unsjsjis_0[15]),
        .I2(\bdatr[1]_INST_0_i_4_n_0 ),
        .I3(unsjsjis_0[6]),
        .I4(unsjsjis_0[7]),
        .O(usjs_byte1__0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hAAAAAA6A)) 
    usjs_byte1__0_carry_i_5
       (.I0(unsjsjis_0[6]),
        .I1(unsjsjis_0[7]),
        .I2(\bdatr[1]_INST_0_i_4_n_0 ),
        .I3(unsjsjis_0[15]),
        .I4(unsjsjis_0[14]),
        .O(usjs_byte1__0_carry_i_5_n_0));
  FDRE \uuni/unsjunic_reg[0] 
       (.C(clk),
        .CE(\unsjunic[15]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(unsjunic[0]),
        .R(\unsjunic[15]_i_1_n_0 ));
  FDRE \uuni/unsjunic_reg[10] 
       (.C(clk),
        .CE(\unsjunic[15]_i_2_n_0 ),
        .D(p_2_in[10]),
        .Q(unsjunic[10]),
        .R(\unsjunic[15]_i_1_n_0 ));
  FDRE \uuni/unsjunic_reg[11] 
       (.C(clk),
        .CE(\unsjunic[15]_i_2_n_0 ),
        .D(p_2_in[11]),
        .Q(unsjunic[11]),
        .R(\unsjunic[15]_i_1_n_0 ));
  FDRE \uuni/unsjunic_reg[12] 
       (.C(clk),
        .CE(\unsjunic[15]_i_2_n_0 ),
        .D(p_2_in[12]),
        .Q(unsjunic[12]),
        .R(\unsjunic[15]_i_1_n_0 ));
  FDRE \uuni/unsjunic_reg[13] 
       (.C(clk),
        .CE(\unsjunic[15]_i_2_n_0 ),
        .D(p_2_in[13]),
        .Q(unsjunic[13]),
        .R(\unsjunic[15]_i_1_n_0 ));
  FDRE \uuni/unsjunic_reg[14] 
       (.C(clk),
        .CE(\unsjunic[15]_i_2_n_0 ),
        .D(p_2_in[14]),
        .Q(unsjunic[14]),
        .R(\unsjunic[15]_i_1_n_0 ));
  FDRE \uuni/unsjunic_reg[15] 
       (.C(clk),
        .CE(\unsjunic[15]_i_2_n_0 ),
        .D(p_2_in[15]),
        .Q(unsjunic[15]),
        .R(\unsjunic[15]_i_1_n_0 ));
  FDRE \uuni/unsjunic_reg[1] 
       (.C(clk),
        .CE(\unsjunic[15]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(unsjunic[1]),
        .R(\unsjunic[15]_i_1_n_0 ));
  FDRE \uuni/unsjunic_reg[2] 
       (.C(clk),
        .CE(\unsjunic[15]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(unsjunic[2]),
        .R(\unsjunic[15]_i_1_n_0 ));
  FDRE \uuni/unsjunic_reg[3] 
       (.C(clk),
        .CE(\unsjunic[15]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(unsjunic[3]),
        .R(\unsjunic[15]_i_1_n_0 ));
  FDRE \uuni/unsjunic_reg[4] 
       (.C(clk),
        .CE(\unsjunic[15]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(unsjunic[4]),
        .R(\unsjunic[15]_i_1_n_0 ));
  FDRE \uuni/unsjunic_reg[5] 
       (.C(clk),
        .CE(\unsjunic[15]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(unsjunic[5]),
        .R(\unsjunic[15]_i_1_n_0 ));
  FDRE \uuni/unsjunic_reg[6] 
       (.C(clk),
        .CE(\unsjunic[15]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(unsjunic[6]),
        .R(\unsjunic[15]_i_1_n_0 ));
  FDRE \uuni/unsjunic_reg[7] 
       (.C(clk),
        .CE(\unsjunic[15]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(unsjunic[7]),
        .R(\unsjunic[15]_i_1_n_0 ));
  FDRE \uuni/unsjunic_reg[8] 
       (.C(clk),
        .CE(\unsjunic[15]_i_2_n_0 ),
        .D(p_2_in[8]),
        .Q(unsjunic[8]),
        .R(\unsjunic[15]_i_1_n_0 ));
  FDRE \uuni/unsjunic_reg[9] 
       (.C(clk),
        .CE(\unsjunic[15]_i_2_n_0 ),
        .D(p_2_in[9]),
        .Q(unsjunic[9]),
        .R(\unsjunic[15]_i_1_n_0 ));
endmodule
