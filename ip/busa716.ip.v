
(* STRUCTURAL_NETLIST = "yes" *)
module busa716
   (clk,
    rst_n,
    max_punit,
    brdy,
    bdatr,
    bcmd,
    badr,
    badrx,
    bdatw,
    pc0_bcmd,
    pc0_badr,
    pc0_badrx,
    pc0_bdatw,
    pc0_brdy,
    pc0_bdatr,
    pc1_bcmd,
    pc1_badr,
    pc1_badrx,
    pc1_bdatw,
    pc1_brdy,
    pc1_bdatr,
    pc2_bcmd,
    pc2_badr,
    pc2_badrx,
    pc2_bdatw,
    pc2_brdy,
    pc2_bdatr,
    pc3_bcmd,
    pc3_badr,
    pc3_badrx,
    pc3_bdatw,
    pc3_brdy,
    pc3_bdatr,
    pc4_bcmd,
    pc4_badr,
    pc4_badrx,
    pc4_bdatw,
    pc4_brdy,
    pc4_bdatr,
    pc5_bcmd,
    pc5_badr,
    pc5_badrx,
    pc5_bdatw,
    pc5_brdy,
    pc5_bdatr,
    pc6_bcmd,
    pc6_badr,
    pc6_badrx,
    pc6_bdatw,
    pc6_brdy,
    pc6_bdatr);
//
//	Memory bus arbiter
//		(c) 2025	1YEN Toru
//
//
//	2025/02/22	ver.1.00
//		maximum 7 cores to 1 core arbitration
//		16 bit bus
//
  input clk;
  input rst_n;
  input [2:0]max_punit;
  input brdy;
  input [15:0]bdatr;
  output [2:0]bcmd;
  output [15:0]badr;
  output [15:0]badrx;
  output [15:0]bdatw;
  input [2:0]pc0_bcmd;
  input [15:0]pc0_badr;
  input [15:0]pc0_badrx;
  input [15:0]pc0_bdatw;
  output pc0_brdy;
  output [15:0]pc0_bdatr;
  input [2:0]pc1_bcmd;
  input [15:0]pc1_badr;
  input [15:0]pc1_badrx;
  input [15:0]pc1_bdatw;
  output pc1_brdy;
  output [15:0]pc1_bdatr;
  input [2:0]pc2_bcmd;
  input [15:0]pc2_badr;
  input [15:0]pc2_badrx;
  input [15:0]pc2_bdatw;
  output pc2_brdy;
  output [15:0]pc2_bdatr;
  input [2:0]pc3_bcmd;
  input [15:0]pc3_badr;
  input [15:0]pc3_badrx;
  input [15:0]pc3_bdatw;
  output pc3_brdy;
  output [15:0]pc3_bdatr;
  input [2:0]pc4_bcmd;
  input [15:0]pc4_badr;
  input [15:0]pc4_badrx;
  input [15:0]pc4_bdatw;
  output pc4_brdy;
  output [15:0]pc4_bdatr;
  input [2:0]pc5_bcmd;
  input [15:0]pc5_badr;
  input [15:0]pc5_badrx;
  input [15:0]pc5_bdatw;
  output pc5_brdy;
  output [15:0]pc5_bdatr;
  input [2:0]pc6_bcmd;
  input [15:0]pc6_badr;
  input [15:0]pc6_badrx;
  input [15:0]pc6_bdatw;
  output pc6_brdy;
  output [15:0]pc6_bdatr;

  wire \<const0> ;
  wire \<const1> ;
  wire arb_cnt0;
  wire \arb_cnt[0]_i_1_n_0 ;
  wire \arb_cnt[1]_i_1_n_0 ;
  wire \arb_cnt[2]_i_10_n_0 ;
  wire \arb_cnt[2]_i_11_n_0 ;
  wire \arb_cnt[2]_i_12_n_0 ;
  wire \arb_cnt[2]_i_1_n_0 ;
  wire \arb_cnt[2]_i_3_n_0 ;
  wire \arb_cnt[2]_i_4_n_0 ;
  wire \arb_cnt[2]_i_5_n_0 ;
  wire \arb_cnt[2]_i_6_n_0 ;
  wire \arb_cnt[2]_i_7_n_0 ;
  wire \arb_cnt[2]_i_8_n_0 ;
  wire \arb_cnt[2]_i_9_n_0 ;
  wire \arb_cnt_reg_n_0_[0] ;
  wire \arb_cnt_reg_n_0_[1] ;
  wire \arb_cnt_reg_n_0_[2] ;
  wire [15:0]badr;
  wire \badr[0]_INST_0_i_1_n_0 ;
  wire \badr[0]_INST_0_i_2_n_0 ;
  wire \badr[0]_INST_0_i_3_n_0 ;
  wire \badr[0]_INST_0_i_4_n_0 ;
  wire \badr[0]_INST_0_i_5_n_0 ;
  wire \badr[0]_INST_0_i_6_n_0 ;
  wire \badr[0]_INST_0_i_7_n_0 ;
  wire \badr[10]_INST_0_i_1_n_0 ;
  wire \badr[10]_INST_0_i_2_n_0 ;
  wire \badr[10]_INST_0_i_3_n_0 ;
  wire \badr[10]_INST_0_i_4_n_0 ;
  wire \badr[10]_INST_0_i_5_n_0 ;
  wire \badr[10]_INST_0_i_6_n_0 ;
  wire \badr[10]_INST_0_i_7_n_0 ;
  wire \badr[11]_INST_0_i_1_n_0 ;
  wire \badr[11]_INST_0_i_2_n_0 ;
  wire \badr[11]_INST_0_i_3_n_0 ;
  wire \badr[11]_INST_0_i_4_n_0 ;
  wire \badr[11]_INST_0_i_5_n_0 ;
  wire \badr[11]_INST_0_i_6_n_0 ;
  wire \badr[11]_INST_0_i_7_n_0 ;
  wire \badr[12]_INST_0_i_1_n_0 ;
  wire \badr[12]_INST_0_i_2_n_0 ;
  wire \badr[12]_INST_0_i_3_n_0 ;
  wire \badr[12]_INST_0_i_4_n_0 ;
  wire \badr[12]_INST_0_i_5_n_0 ;
  wire \badr[12]_INST_0_i_6_n_0 ;
  wire \badr[12]_INST_0_i_7_n_0 ;
  wire \badr[13]_INST_0_i_1_n_0 ;
  wire \badr[13]_INST_0_i_2_n_0 ;
  wire \badr[13]_INST_0_i_3_n_0 ;
  wire \badr[13]_INST_0_i_4_n_0 ;
  wire \badr[13]_INST_0_i_5_n_0 ;
  wire \badr[13]_INST_0_i_6_n_0 ;
  wire \badr[13]_INST_0_i_7_n_0 ;
  wire \badr[14]_INST_0_i_1_n_0 ;
  wire \badr[14]_INST_0_i_2_n_0 ;
  wire \badr[14]_INST_0_i_3_n_0 ;
  wire \badr[14]_INST_0_i_4_n_0 ;
  wire \badr[14]_INST_0_i_5_n_0 ;
  wire \badr[14]_INST_0_i_6_n_0 ;
  wire \badr[14]_INST_0_i_7_n_0 ;
  wire \badr[15]_INST_0_i_1_n_0 ;
  wire \badr[15]_INST_0_i_2_n_0 ;
  wire \badr[15]_INST_0_i_3_n_0 ;
  wire \badr[15]_INST_0_i_4_n_0 ;
  wire \badr[15]_INST_0_i_5_n_0 ;
  wire \badr[15]_INST_0_i_6_n_0 ;
  wire \badr[15]_INST_0_i_7_n_0 ;
  wire \badr[1]_INST_0_i_1_n_0 ;
  wire \badr[1]_INST_0_i_2_n_0 ;
  wire \badr[1]_INST_0_i_3_n_0 ;
  wire \badr[1]_INST_0_i_4_n_0 ;
  wire \badr[1]_INST_0_i_5_n_0 ;
  wire \badr[1]_INST_0_i_6_n_0 ;
  wire \badr[1]_INST_0_i_7_n_0 ;
  wire \badr[2]_INST_0_i_1_n_0 ;
  wire \badr[2]_INST_0_i_2_n_0 ;
  wire \badr[2]_INST_0_i_3_n_0 ;
  wire \badr[2]_INST_0_i_4_n_0 ;
  wire \badr[2]_INST_0_i_5_n_0 ;
  wire \badr[2]_INST_0_i_6_n_0 ;
  wire \badr[2]_INST_0_i_7_n_0 ;
  wire \badr[3]_INST_0_i_1_n_0 ;
  wire \badr[3]_INST_0_i_2_n_0 ;
  wire \badr[3]_INST_0_i_3_n_0 ;
  wire \badr[3]_INST_0_i_4_n_0 ;
  wire \badr[3]_INST_0_i_5_n_0 ;
  wire \badr[3]_INST_0_i_6_n_0 ;
  wire \badr[3]_INST_0_i_7_n_0 ;
  wire \badr[4]_INST_0_i_1_n_0 ;
  wire \badr[4]_INST_0_i_2_n_0 ;
  wire \badr[4]_INST_0_i_3_n_0 ;
  wire \badr[4]_INST_0_i_4_n_0 ;
  wire \badr[4]_INST_0_i_5_n_0 ;
  wire \badr[4]_INST_0_i_6_n_0 ;
  wire \badr[4]_INST_0_i_7_n_0 ;
  wire \badr[5]_INST_0_i_1_n_0 ;
  wire \badr[5]_INST_0_i_2_n_0 ;
  wire \badr[5]_INST_0_i_3_n_0 ;
  wire \badr[5]_INST_0_i_4_n_0 ;
  wire \badr[5]_INST_0_i_5_n_0 ;
  wire \badr[5]_INST_0_i_6_n_0 ;
  wire \badr[5]_INST_0_i_7_n_0 ;
  wire \badr[6]_INST_0_i_1_n_0 ;
  wire \badr[6]_INST_0_i_2_n_0 ;
  wire \badr[6]_INST_0_i_3_n_0 ;
  wire \badr[6]_INST_0_i_4_n_0 ;
  wire \badr[6]_INST_0_i_5_n_0 ;
  wire \badr[6]_INST_0_i_6_n_0 ;
  wire \badr[6]_INST_0_i_7_n_0 ;
  wire \badr[7]_INST_0_i_1_n_0 ;
  wire \badr[7]_INST_0_i_2_n_0 ;
  wire \badr[7]_INST_0_i_3_n_0 ;
  wire \badr[7]_INST_0_i_4_n_0 ;
  wire \badr[7]_INST_0_i_5_n_0 ;
  wire \badr[7]_INST_0_i_6_n_0 ;
  wire \badr[7]_INST_0_i_7_n_0 ;
  wire \badr[8]_INST_0_i_1_n_0 ;
  wire \badr[8]_INST_0_i_2_n_0 ;
  wire \badr[8]_INST_0_i_3_n_0 ;
  wire \badr[8]_INST_0_i_4_n_0 ;
  wire \badr[8]_INST_0_i_5_n_0 ;
  wire \badr[8]_INST_0_i_6_n_0 ;
  wire \badr[8]_INST_0_i_7_n_0 ;
  wire \badr[9]_INST_0_i_1_n_0 ;
  wire \badr[9]_INST_0_i_2_n_0 ;
  wire \badr[9]_INST_0_i_3_n_0 ;
  wire \badr[9]_INST_0_i_4_n_0 ;
  wire \badr[9]_INST_0_i_5_n_0 ;
  wire \badr[9]_INST_0_i_6_n_0 ;
  wire \badr[9]_INST_0_i_7_n_0 ;
  wire [15:0]badrx;
  wire \badrx[0]_INST_0_i_1_n_0 ;
  wire \badrx[0]_INST_0_i_2_n_0 ;
  wire \badrx[0]_INST_0_i_3_n_0 ;
  wire \badrx[0]_INST_0_i_4_n_0 ;
  wire \badrx[0]_INST_0_i_5_n_0 ;
  wire \badrx[0]_INST_0_i_6_n_0 ;
  wire \badrx[0]_INST_0_i_7_n_0 ;
  wire \badrx[10]_INST_0_i_1_n_0 ;
  wire \badrx[10]_INST_0_i_2_n_0 ;
  wire \badrx[10]_INST_0_i_3_n_0 ;
  wire \badrx[10]_INST_0_i_4_n_0 ;
  wire \badrx[10]_INST_0_i_5_n_0 ;
  wire \badrx[10]_INST_0_i_6_n_0 ;
  wire \badrx[10]_INST_0_i_7_n_0 ;
  wire \badrx[11]_INST_0_i_1_n_0 ;
  wire \badrx[11]_INST_0_i_2_n_0 ;
  wire \badrx[11]_INST_0_i_3_n_0 ;
  wire \badrx[11]_INST_0_i_4_n_0 ;
  wire \badrx[11]_INST_0_i_5_n_0 ;
  wire \badrx[11]_INST_0_i_6_n_0 ;
  wire \badrx[11]_INST_0_i_7_n_0 ;
  wire \badrx[12]_INST_0_i_1_n_0 ;
  wire \badrx[12]_INST_0_i_2_n_0 ;
  wire \badrx[12]_INST_0_i_3_n_0 ;
  wire \badrx[12]_INST_0_i_4_n_0 ;
  wire \badrx[12]_INST_0_i_5_n_0 ;
  wire \badrx[12]_INST_0_i_6_n_0 ;
  wire \badrx[12]_INST_0_i_7_n_0 ;
  wire \badrx[13]_INST_0_i_1_n_0 ;
  wire \badrx[13]_INST_0_i_2_n_0 ;
  wire \badrx[13]_INST_0_i_3_n_0 ;
  wire \badrx[13]_INST_0_i_4_n_0 ;
  wire \badrx[13]_INST_0_i_5_n_0 ;
  wire \badrx[13]_INST_0_i_6_n_0 ;
  wire \badrx[13]_INST_0_i_7_n_0 ;
  wire \badrx[14]_INST_0_i_1_n_0 ;
  wire \badrx[14]_INST_0_i_2_n_0 ;
  wire \badrx[14]_INST_0_i_3_n_0 ;
  wire \badrx[14]_INST_0_i_4_n_0 ;
  wire \badrx[14]_INST_0_i_5_n_0 ;
  wire \badrx[14]_INST_0_i_6_n_0 ;
  wire \badrx[14]_INST_0_i_7_n_0 ;
  wire \badrx[15]_INST_0_i_1_n_0 ;
  wire \badrx[15]_INST_0_i_2_n_0 ;
  wire \badrx[15]_INST_0_i_3_n_0 ;
  wire \badrx[15]_INST_0_i_4_n_0 ;
  wire \badrx[15]_INST_0_i_5_n_0 ;
  wire \badrx[15]_INST_0_i_6_n_0 ;
  wire \badrx[15]_INST_0_i_7_n_0 ;
  wire \badrx[1]_INST_0_i_1_n_0 ;
  wire \badrx[1]_INST_0_i_2_n_0 ;
  wire \badrx[1]_INST_0_i_3_n_0 ;
  wire \badrx[1]_INST_0_i_4_n_0 ;
  wire \badrx[1]_INST_0_i_5_n_0 ;
  wire \badrx[1]_INST_0_i_6_n_0 ;
  wire \badrx[1]_INST_0_i_7_n_0 ;
  wire \badrx[2]_INST_0_i_1_n_0 ;
  wire \badrx[2]_INST_0_i_2_n_0 ;
  wire \badrx[2]_INST_0_i_3_n_0 ;
  wire \badrx[2]_INST_0_i_4_n_0 ;
  wire \badrx[2]_INST_0_i_5_n_0 ;
  wire \badrx[2]_INST_0_i_6_n_0 ;
  wire \badrx[2]_INST_0_i_7_n_0 ;
  wire \badrx[3]_INST_0_i_1_n_0 ;
  wire \badrx[3]_INST_0_i_2_n_0 ;
  wire \badrx[3]_INST_0_i_3_n_0 ;
  wire \badrx[3]_INST_0_i_4_n_0 ;
  wire \badrx[3]_INST_0_i_5_n_0 ;
  wire \badrx[3]_INST_0_i_6_n_0 ;
  wire \badrx[3]_INST_0_i_7_n_0 ;
  wire \badrx[4]_INST_0_i_1_n_0 ;
  wire \badrx[4]_INST_0_i_2_n_0 ;
  wire \badrx[4]_INST_0_i_3_n_0 ;
  wire \badrx[4]_INST_0_i_4_n_0 ;
  wire \badrx[4]_INST_0_i_5_n_0 ;
  wire \badrx[4]_INST_0_i_6_n_0 ;
  wire \badrx[4]_INST_0_i_7_n_0 ;
  wire \badrx[5]_INST_0_i_1_n_0 ;
  wire \badrx[5]_INST_0_i_2_n_0 ;
  wire \badrx[5]_INST_0_i_3_n_0 ;
  wire \badrx[5]_INST_0_i_4_n_0 ;
  wire \badrx[5]_INST_0_i_5_n_0 ;
  wire \badrx[5]_INST_0_i_6_n_0 ;
  wire \badrx[5]_INST_0_i_7_n_0 ;
  wire \badrx[6]_INST_0_i_1_n_0 ;
  wire \badrx[6]_INST_0_i_2_n_0 ;
  wire \badrx[6]_INST_0_i_3_n_0 ;
  wire \badrx[6]_INST_0_i_4_n_0 ;
  wire \badrx[6]_INST_0_i_5_n_0 ;
  wire \badrx[6]_INST_0_i_6_n_0 ;
  wire \badrx[6]_INST_0_i_7_n_0 ;
  wire \badrx[7]_INST_0_i_1_n_0 ;
  wire \badrx[7]_INST_0_i_2_n_0 ;
  wire \badrx[7]_INST_0_i_3_n_0 ;
  wire \badrx[7]_INST_0_i_4_n_0 ;
  wire \badrx[7]_INST_0_i_5_n_0 ;
  wire \badrx[7]_INST_0_i_6_n_0 ;
  wire \badrx[7]_INST_0_i_7_n_0 ;
  wire \badrx[8]_INST_0_i_1_n_0 ;
  wire \badrx[8]_INST_0_i_2_n_0 ;
  wire \badrx[8]_INST_0_i_3_n_0 ;
  wire \badrx[8]_INST_0_i_4_n_0 ;
  wire \badrx[8]_INST_0_i_5_n_0 ;
  wire \badrx[8]_INST_0_i_6_n_0 ;
  wire \badrx[8]_INST_0_i_7_n_0 ;
  wire \badrx[9]_INST_0_i_1_n_0 ;
  wire \badrx[9]_INST_0_i_2_n_0 ;
  wire \badrx[9]_INST_0_i_3_n_0 ;
  wire \badrx[9]_INST_0_i_4_n_0 ;
  wire \badrx[9]_INST_0_i_5_n_0 ;
  wire \badrx[9]_INST_0_i_6_n_0 ;
  wire \badrx[9]_INST_0_i_7_n_0 ;
  wire [2:0]bcmd;
  wire \bcmd[0]_INST_0_i_1_n_0 ;
  wire \bcmd[0]_INST_0_i_2_n_0 ;
  wire \bcmd[0]_INST_0_i_3_n_0 ;
  wire \bcmd[0]_INST_0_i_4_n_0 ;
  wire \bcmd[0]_INST_0_i_5_n_0 ;
  wire \bcmd[0]_INST_0_i_6_n_0 ;
  wire \bcmd[0]_INST_0_i_7_n_0 ;
  wire \bcmd[0]_INST_0_i_8_n_0 ;
  wire \bcmd[1]_INST_0_i_1_n_0 ;
  wire \bcmd[1]_INST_0_i_2_n_0 ;
  wire \bcmd[1]_INST_0_i_3_n_0 ;
  wire \bcmd[1]_INST_0_i_4_n_0 ;
  wire \bcmd[1]_INST_0_i_5_n_0 ;
  wire \bcmd[1]_INST_0_i_6_n_0 ;
  wire \bcmd[1]_INST_0_i_7_n_0 ;
  wire \bcmd[2]_INST_0_i_10_n_0 ;
  wire \bcmd[2]_INST_0_i_11_n_0 ;
  wire \bcmd[2]_INST_0_i_12_n_0 ;
  wire \bcmd[2]_INST_0_i_13_n_0 ;
  wire \bcmd[2]_INST_0_i_14_n_0 ;
  wire \bcmd[2]_INST_0_i_15_n_0 ;
  wire \bcmd[2]_INST_0_i_16_n_0 ;
  wire \bcmd[2]_INST_0_i_1_n_0 ;
  wire \bcmd[2]_INST_0_i_2_n_0 ;
  wire \bcmd[2]_INST_0_i_3_n_0 ;
  wire \bcmd[2]_INST_0_i_4_n_0 ;
  wire \bcmd[2]_INST_0_i_5_n_0 ;
  wire \bcmd[2]_INST_0_i_6_n_0 ;
  wire \bcmd[2]_INST_0_i_7_n_0 ;
  wire \bcmd[2]_INST_0_i_8_n_0 ;
  wire \bcmd[2]_INST_0_i_9_n_0 ;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire \bdatw[0]_INST_0_i_1_n_0 ;
  wire \bdatw[0]_INST_0_i_2_n_0 ;
  wire \bdatw[0]_INST_0_i_3_n_0 ;
  wire \bdatw[0]_INST_0_i_4_n_0 ;
  wire \bdatw[10]_INST_0_i_1_n_0 ;
  wire \bdatw[10]_INST_0_i_2_n_0 ;
  wire \bdatw[10]_INST_0_i_3_n_0 ;
  wire \bdatw[11]_INST_0_i_1_n_0 ;
  wire \bdatw[11]_INST_0_i_2_n_0 ;
  wire \bdatw[11]_INST_0_i_3_n_0 ;
  wire \bdatw[12]_INST_0_i_1_n_0 ;
  wire \bdatw[12]_INST_0_i_2_n_0 ;
  wire \bdatw[12]_INST_0_i_3_n_0 ;
  wire \bdatw[12]_INST_0_i_4_n_0 ;
  wire \bdatw[13]_INST_0_i_1_n_0 ;
  wire \bdatw[13]_INST_0_i_2_n_0 ;
  wire \bdatw[13]_INST_0_i_3_n_0 ;
  wire \bdatw[13]_INST_0_i_4_n_0 ;
  wire \bdatw[14]_INST_0_i_10_n_0 ;
  wire \bdatw[14]_INST_0_i_11_n_0 ;
  wire \bdatw[14]_INST_0_i_12_n_0 ;
  wire \bdatw[14]_INST_0_i_13_n_0 ;
  wire \bdatw[14]_INST_0_i_14_n_0 ;
  wire \bdatw[14]_INST_0_i_1_n_0 ;
  wire \bdatw[14]_INST_0_i_2_n_0 ;
  wire \bdatw[14]_INST_0_i_3_n_0 ;
  wire \bdatw[14]_INST_0_i_4_n_0 ;
  wire \bdatw[14]_INST_0_i_5_n_0 ;
  wire \bdatw[14]_INST_0_i_6_n_0 ;
  wire \bdatw[14]_INST_0_i_7_n_0 ;
  wire \bdatw[14]_INST_0_i_8_n_0 ;
  wire \bdatw[14]_INST_0_i_9_n_0 ;
  wire \bdatw[15]_INST_0_i_1_n_0 ;
  wire \bdatw[15]_INST_0_i_2_n_0 ;
  wire \bdatw[15]_INST_0_i_3_n_0 ;
  wire \bdatw[15]_INST_0_i_4_n_0 ;
  wire \bdatw[15]_INST_0_i_5_n_0 ;
  wire \bdatw[1]_INST_0_i_1_n_0 ;
  wire \bdatw[1]_INST_0_i_2_n_0 ;
  wire \bdatw[1]_INST_0_i_3_n_0 ;
  wire \bdatw[2]_INST_0_i_1_n_0 ;
  wire \bdatw[2]_INST_0_i_2_n_0 ;
  wire \bdatw[2]_INST_0_i_3_n_0 ;
  wire \bdatw[3]_INST_0_i_1_n_0 ;
  wire \bdatw[3]_INST_0_i_2_n_0 ;
  wire \bdatw[3]_INST_0_i_3_n_0 ;
  wire \bdatw[4]_INST_0_i_1_n_0 ;
  wire \bdatw[4]_INST_0_i_2_n_0 ;
  wire \bdatw[4]_INST_0_i_3_n_0 ;
  wire \bdatw[5]_INST_0_i_1_n_0 ;
  wire \bdatw[5]_INST_0_i_2_n_0 ;
  wire \bdatw[5]_INST_0_i_3_n_0 ;
  wire \bdatw[5]_INST_0_i_4_n_0 ;
  wire \bdatw[6]_INST_0_i_1_n_0 ;
  wire \bdatw[6]_INST_0_i_2_n_0 ;
  wire \bdatw[6]_INST_0_i_3_n_0 ;
  wire \bdatw[7]_INST_0_i_1_n_0 ;
  wire \bdatw[7]_INST_0_i_2_n_0 ;
  wire \bdatw[7]_INST_0_i_3_n_0 ;
  wire \bdatw[8]_INST_0_i_1_n_0 ;
  wire \bdatw[8]_INST_0_i_2_n_0 ;
  wire \bdatw[8]_INST_0_i_3_n_0 ;
  wire \bdatw[9]_INST_0_i_1_n_0 ;
  wire \bdatw[9]_INST_0_i_2_n_0 ;
  wire \bdatw[9]_INST_0_i_3_n_0 ;
  wire brdy;
  wire clk;
  wire [2:0]grnt_id_dp;
  wire \grnt_id_dp[0]_i_1_n_0 ;
  wire \grnt_id_dp[1]_i_1_n_0 ;
  wire \grnt_id_dp[2]_i_1_n_0 ;
  wire [2:0]max_punit;
  wire [15:0]pc0_badr;
  wire [15:0]pc0_badr_rsv;
  wire \pc0_badr_rsv[15]_i_1_n_0 ;
  wire \pc0_badr_rsv[15]_i_2_n_0 ;
  wire [15:0]pc0_badrx;
  wire [15:0]pc0_badrx_rsv;
  wire [2:0]pc0_bcmd;
  wire [2:0]pc0_bcmd_rsv;
  wire [15:0]pc0_bdatr;
  wire [15:0]pc0_bdatw;
  wire pc0_brdy;
  wire pc0_brdy_INST_0_i_1_n_0;
  wire pc0_brdy_rsv;
  wire pc0_brdy_rsv0;
  wire pc0_brdy_rsv_i_2_n_0;
  wire [15:0]pc1_badr;
  wire [15:0]pc1_badr_rsv;
  wire \pc1_badr_rsv[15]_i_1_n_0 ;
  wire [15:0]pc1_badrx;
  wire [15:0]pc1_badrx_rsv;
  wire [2:0]pc1_bcmd;
  wire [2:0]pc1_bcmd_rsv;
  wire [15:0]pc1_bdatr;
  wire [15:0]pc1_bdatw;
  wire pc1_brdy;
  wire pc1_brdy_INST_0_i_1_n_0;
  wire pc1_brdy_rsv;
  wire pc1_brdy_rsv0;
  wire [15:0]pc2_badr;
  wire [15:0]pc2_badr_rsv;
  wire \pc2_badr_rsv[15]_i_1_n_0 ;
  wire [15:0]pc2_badrx;
  wire [15:0]pc2_badrx_rsv;
  wire [2:0]pc2_bcmd;
  wire [2:0]pc2_bcmd_rsv;
  wire [15:0]pc2_bdatr;
  wire [15:0]pc2_bdatw;
  wire pc2_brdy;
  wire pc2_brdy_INST_0_i_1_n_0;
  wire pc2_brdy_rsv;
  wire pc2_brdy_rsv0;
  wire pc2_brdy_rsv_i_2_n_0;
  wire [15:0]pc3_badr;
  wire [15:0]pc3_badr_rsv;
  wire \pc3_badr_rsv[15]_i_1_n_0 ;
  wire [15:0]pc3_badrx;
  wire [15:0]pc3_badrx_rsv;
  wire [2:0]pc3_bcmd;
  wire [2:0]pc3_bcmd_rsv;
  wire [15:0]pc3_bdatr;
  wire [15:0]pc3_bdatw;
  wire pc3_brdy;
  wire pc3_brdy_INST_0_i_1_n_0;
  wire pc3_brdy_INST_0_i_2_n_0;
  wire pc3_brdy_rsv;
  wire pc3_brdy_rsv0;
  wire pc3_brdy_rsv_i_2_n_0;
  wire [15:0]pc4_badr;
  wire [15:0]pc4_badr_rsv;
  wire \pc4_badr_rsv[15]_i_1_n_0 ;
  wire [15:0]pc4_badrx;
  wire [15:0]pc4_badrx_rsv;
  wire [2:0]pc4_bcmd;
  wire [2:0]pc4_bcmd_rsv;
  wire [15:0]pc4_bdatr;
  wire [15:0]pc4_bdatw;
  wire pc4_brdy;
  wire pc4_brdy_INST_0_i_1_n_0;
  wire pc4_brdy_INST_0_i_2_n_0;
  wire pc4_brdy_rsv;
  wire pc4_brdy_rsv0;
  wire pc4_brdy_rsv_i_2_n_0;
  wire [15:0]pc5_badr;
  wire [15:0]pc5_badr_rsv;
  wire \pc5_badr_rsv[15]_i_1_n_0 ;
  wire [15:0]pc5_badrx;
  wire [15:0]pc5_badrx_rsv;
  wire [2:0]pc5_bcmd;
  wire [2:0]pc5_bcmd_rsv;
  wire [15:0]pc5_bdatr;
  wire [15:0]pc5_bdatw;
  wire pc5_brdy;
  wire pc5_brdy_INST_0_i_1_n_0;
  wire pc5_brdy_rsv;
  wire pc5_brdy_rsv0;
  wire pc5_brdy_rsv_i_2_n_0;
  wire [15:0]pc6_badr;
  wire [15:0]pc6_badr_rsv;
  wire \pc6_badr_rsv[15]_i_1_n_0 ;
  wire [15:0]pc6_badrx;
  wire [15:0]pc6_badrx_rsv;
  wire [2:0]pc6_bcmd;
  wire [2:0]pc6_bcmd_rsv;
  wire [15:0]pc6_bdatr;
  wire [15:0]pc6_bdatw;
  wire pc6_brdy;
  wire pc6_brdy_INST_0_i_1_n_0;
  wire pc6_brdy_INST_0_i_2_n_0;
  wire pc6_brdy_rsv;
  wire pc6_brdy_rsv0;
  wire pc6_brdy_rsv_i_2_n_0;
  wire rst_n;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h4808)) 
    \arb_cnt[0]_i_1 
       (.I0(\arb_cnt_reg_n_0_[0] ),
        .I1(rst_n),
        .I2(arb_cnt0),
        .I3(\arb_cnt[2]_i_3_n_0 ),
        .O(\arb_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h60A000A0)) 
    \arb_cnt[1]_i_1 
       (.I0(\arb_cnt_reg_n_0_[1] ),
        .I1(\arb_cnt_reg_n_0_[0] ),
        .I2(rst_n),
        .I3(arb_cnt0),
        .I4(\arb_cnt[2]_i_3_n_0 ),
        .O(\arb_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6A00AA000000AA00)) 
    \arb_cnt[2]_i_1 
       (.I0(\arb_cnt_reg_n_0_[2] ),
        .I1(\arb_cnt_reg_n_0_[0] ),
        .I2(\arb_cnt_reg_n_0_[1] ),
        .I3(rst_n),
        .I4(arb_cnt0),
        .I5(\arb_cnt[2]_i_3_n_0 ),
        .O(\arb_cnt[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \arb_cnt[2]_i_10 
       (.I0(pc6_bcmd_rsv[1]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_bcmd[1]),
        .O(\arb_cnt[2]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \arb_cnt[2]_i_11 
       (.I0(pc5_bcmd_rsv[0]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_bcmd[0]),
        .O(\arb_cnt[2]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \arb_cnt[2]_i_12 
       (.I0(pc6_bcmd_rsv[0]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_bcmd[0]),
        .O(\arb_cnt[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h202A808A2A208A80)) 
    \arb_cnt[2]_i_2 
       (.I0(brdy),
        .I1(\arb_cnt[2]_i_4_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\arb_cnt[2]_i_5_n_0 ),
        .I4(\bcmd[0]_INST_0_i_1_n_0 ),
        .I5(\arb_cnt[2]_i_6_n_0 ),
        .O(arb_cnt0));
  LUT6 #(
    .INIT(64'hF6FFFF9FFF6FF6FF)) 
    \arb_cnt[2]_i_3 
       (.I0(\arb_cnt_reg_n_0_[2] ),
        .I1(max_punit[2]),
        .I2(\arb_cnt_reg_n_0_[0] ),
        .I3(max_punit[0]),
        .I4(max_punit[1]),
        .I5(\arb_cnt_reg_n_0_[1] ),
        .O(\arb_cnt[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \arb_cnt[2]_i_4 
       (.I0(\arb_cnt[2]_i_7_n_0 ),
        .I1(\bcmd[1]_INST_0_i_5_n_0 ),
        .I2(\bcmd[2]_INST_0_i_5_n_0 ),
        .I3(\arb_cnt[2]_i_8_n_0 ),
        .I4(\bcmd[2]_INST_0_i_7_n_0 ),
        .I5(\bcmd[1]_INST_0_i_6_n_0 ),
        .O(\arb_cnt[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \arb_cnt[2]_i_5 
       (.I0(\arb_cnt[2]_i_9_n_0 ),
        .I1(\bcmd[1]_INST_0_i_7_n_0 ),
        .I2(\bcmd[2]_INST_0_i_5_n_0 ),
        .I3(\arb_cnt[2]_i_10_n_0 ),
        .I4(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\arb_cnt[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \arb_cnt[2]_i_6 
       (.I0(\arb_cnt[2]_i_11_n_0 ),
        .I1(\bcmd[0]_INST_0_i_8_n_0 ),
        .I2(\bcmd[2]_INST_0_i_5_n_0 ),
        .I3(\arb_cnt[2]_i_12_n_0 ),
        .I4(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\arb_cnt[2]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \arb_cnt[2]_i_7 
       (.I0(pc1_bcmd_rsv[1]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_bcmd[1]),
        .O(\arb_cnt[2]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \arb_cnt[2]_i_8 
       (.I0(pc3_bcmd_rsv[1]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_bcmd[1]),
        .O(\arb_cnt[2]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \arb_cnt[2]_i_9 
       (.I0(pc5_bcmd_rsv[1]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_bcmd[1]),
        .O(\arb_cnt[2]_i_9_n_0 ));
  FDRE \arb_cnt_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\arb_cnt[0]_i_1_n_0 ),
        .Q(\arb_cnt_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \arb_cnt_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\arb_cnt[1]_i_1_n_0 ),
        .Q(\arb_cnt_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE \arb_cnt_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\arb_cnt[2]_i_1_n_0 ),
        .Q(\arb_cnt_reg_n_0_[2] ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[0]_INST_0 
       (.I0(\badr[0]_INST_0_i_1_n_0 ),
        .I1(\badr[0]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[0]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badr[0]_INST_0_i_4_n_0 ),
        .O(badr[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[0]_INST_0_i_1 
       (.I0(pc1_badr_rsv[0]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badr[0]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[0]_INST_0_i_5_n_0 ),
        .O(\badr[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[0]_INST_0_i_2 
       (.I0(pc3_badr_rsv[0]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badr[0]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[0]_INST_0_i_6_n_0 ),
        .O(\badr[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[0]_INST_0_i_3 
       (.I0(pc5_badr_rsv[0]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badr[0]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[0]_INST_0_i_7_n_0 ),
        .O(\badr[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badr[0]_INST_0_i_4 
       (.I0(pc6_badr[0]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badr_rsv[0]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badr[0]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[0]_INST_0_i_5 
       (.I0(pc0_badr_rsv[0]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badr[0]),
        .O(\badr[0]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[0]_INST_0_i_6 
       (.I0(pc2_badr_rsv[0]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badr[0]),
        .O(\badr[0]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[0]_INST_0_i_7 
       (.I0(pc4_badr_rsv[0]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badr[0]),
        .O(\badr[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[10]_INST_0 
       (.I0(\badr[10]_INST_0_i_1_n_0 ),
        .I1(\badr[10]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[10]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badr[10]_INST_0_i_4_n_0 ),
        .O(badr[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[10]_INST_0_i_1 
       (.I0(pc1_badr_rsv[10]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badr[10]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[10]_INST_0_i_5_n_0 ),
        .O(\badr[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[10]_INST_0_i_2 
       (.I0(pc3_badr_rsv[10]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badr[10]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[10]_INST_0_i_6_n_0 ),
        .O(\badr[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[10]_INST_0_i_3 
       (.I0(pc5_badr_rsv[10]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badr[10]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[10]_INST_0_i_7_n_0 ),
        .O(\badr[10]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badr[10]_INST_0_i_4 
       (.I0(pc6_badr[10]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badr_rsv[10]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badr[10]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[10]_INST_0_i_5 
       (.I0(pc0_badr_rsv[10]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badr[10]),
        .O(\badr[10]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[10]_INST_0_i_6 
       (.I0(pc2_badr_rsv[10]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badr[10]),
        .O(\badr[10]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[10]_INST_0_i_7 
       (.I0(pc4_badr_rsv[10]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badr[10]),
        .O(\badr[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[11]_INST_0 
       (.I0(\badr[11]_INST_0_i_1_n_0 ),
        .I1(\badr[11]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[11]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badr[11]_INST_0_i_4_n_0 ),
        .O(badr[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[11]_INST_0_i_1 
       (.I0(pc1_badr_rsv[11]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badr[11]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[11]_INST_0_i_5_n_0 ),
        .O(\badr[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[11]_INST_0_i_2 
       (.I0(pc3_badr_rsv[11]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badr[11]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[11]_INST_0_i_6_n_0 ),
        .O(\badr[11]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[11]_INST_0_i_3 
       (.I0(pc5_badr_rsv[11]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badr[11]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[11]_INST_0_i_7_n_0 ),
        .O(\badr[11]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badr[11]_INST_0_i_4 
       (.I0(pc6_badr[11]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badr_rsv[11]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badr[11]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[11]_INST_0_i_5 
       (.I0(pc0_badr_rsv[11]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badr[11]),
        .O(\badr[11]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[11]_INST_0_i_6 
       (.I0(pc2_badr_rsv[11]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badr[11]),
        .O(\badr[11]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[11]_INST_0_i_7 
       (.I0(pc4_badr_rsv[11]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badr[11]),
        .O(\badr[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[12]_INST_0 
       (.I0(\badr[12]_INST_0_i_1_n_0 ),
        .I1(\badr[12]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[12]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badr[12]_INST_0_i_4_n_0 ),
        .O(badr[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[12]_INST_0_i_1 
       (.I0(pc1_badr_rsv[12]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badr[12]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[12]_INST_0_i_5_n_0 ),
        .O(\badr[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[12]_INST_0_i_2 
       (.I0(pc3_badr_rsv[12]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badr[12]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[12]_INST_0_i_6_n_0 ),
        .O(\badr[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[12]_INST_0_i_3 
       (.I0(pc5_badr_rsv[12]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badr[12]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[12]_INST_0_i_7_n_0 ),
        .O(\badr[12]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badr[12]_INST_0_i_4 
       (.I0(pc6_badr[12]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badr_rsv[12]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badr[12]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[12]_INST_0_i_5 
       (.I0(pc0_badr_rsv[12]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badr[12]),
        .O(\badr[12]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[12]_INST_0_i_6 
       (.I0(pc2_badr_rsv[12]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badr[12]),
        .O(\badr[12]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[12]_INST_0_i_7 
       (.I0(pc4_badr_rsv[12]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badr[12]),
        .O(\badr[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[13]_INST_0 
       (.I0(\badr[13]_INST_0_i_1_n_0 ),
        .I1(\badr[13]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[13]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badr[13]_INST_0_i_4_n_0 ),
        .O(badr[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[13]_INST_0_i_1 
       (.I0(pc1_badr_rsv[13]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badr[13]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[13]_INST_0_i_5_n_0 ),
        .O(\badr[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[13]_INST_0_i_2 
       (.I0(pc3_badr_rsv[13]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badr[13]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[13]_INST_0_i_6_n_0 ),
        .O(\badr[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[13]_INST_0_i_3 
       (.I0(pc5_badr_rsv[13]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badr[13]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[13]_INST_0_i_7_n_0 ),
        .O(\badr[13]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badr[13]_INST_0_i_4 
       (.I0(pc6_badr[13]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badr_rsv[13]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badr[13]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[13]_INST_0_i_5 
       (.I0(pc0_badr_rsv[13]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badr[13]),
        .O(\badr[13]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[13]_INST_0_i_6 
       (.I0(pc2_badr_rsv[13]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badr[13]),
        .O(\badr[13]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[13]_INST_0_i_7 
       (.I0(pc4_badr_rsv[13]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badr[13]),
        .O(\badr[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[14]_INST_0 
       (.I0(\badr[14]_INST_0_i_1_n_0 ),
        .I1(\badr[14]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[14]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badr[14]_INST_0_i_4_n_0 ),
        .O(badr[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[14]_INST_0_i_1 
       (.I0(pc1_badr_rsv[14]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badr[14]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[14]_INST_0_i_5_n_0 ),
        .O(\badr[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[14]_INST_0_i_2 
       (.I0(pc3_badr_rsv[14]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badr[14]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[14]_INST_0_i_6_n_0 ),
        .O(\badr[14]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[14]_INST_0_i_3 
       (.I0(pc5_badr_rsv[14]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badr[14]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[14]_INST_0_i_7_n_0 ),
        .O(\badr[14]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badr[14]_INST_0_i_4 
       (.I0(pc6_badr[14]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badr_rsv[14]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badr[14]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[14]_INST_0_i_5 
       (.I0(pc0_badr_rsv[14]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badr[14]),
        .O(\badr[14]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[14]_INST_0_i_6 
       (.I0(pc2_badr_rsv[14]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badr[14]),
        .O(\badr[14]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[14]_INST_0_i_7 
       (.I0(pc4_badr_rsv[14]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badr[14]),
        .O(\badr[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[15]_INST_0 
       (.I0(\badr[15]_INST_0_i_1_n_0 ),
        .I1(\badr[15]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[15]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badr[15]_INST_0_i_4_n_0 ),
        .O(badr[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[15]_INST_0_i_1 
       (.I0(pc1_badr_rsv[15]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badr[15]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[15]_INST_0_i_5_n_0 ),
        .O(\badr[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[15]_INST_0_i_2 
       (.I0(pc3_badr_rsv[15]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badr[15]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[15]_INST_0_i_6_n_0 ),
        .O(\badr[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[15]_INST_0_i_3 
       (.I0(pc5_badr_rsv[15]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badr[15]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[15]_INST_0_i_7_n_0 ),
        .O(\badr[15]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badr[15]_INST_0_i_4 
       (.I0(pc6_badr[15]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badr_rsv[15]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badr[15]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[15]_INST_0_i_5 
       (.I0(pc0_badr_rsv[15]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badr[15]),
        .O(\badr[15]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[15]_INST_0_i_6 
       (.I0(pc2_badr_rsv[15]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badr[15]),
        .O(\badr[15]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[15]_INST_0_i_7 
       (.I0(pc4_badr_rsv[15]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badr[15]),
        .O(\badr[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[1]_INST_0 
       (.I0(\badr[1]_INST_0_i_1_n_0 ),
        .I1(\badr[1]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[1]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badr[1]_INST_0_i_4_n_0 ),
        .O(badr[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[1]_INST_0_i_1 
       (.I0(pc1_badr_rsv[1]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badr[1]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[1]_INST_0_i_5_n_0 ),
        .O(\badr[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[1]_INST_0_i_2 
       (.I0(pc3_badr_rsv[1]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badr[1]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[1]_INST_0_i_6_n_0 ),
        .O(\badr[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[1]_INST_0_i_3 
       (.I0(pc5_badr_rsv[1]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badr[1]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[1]_INST_0_i_7_n_0 ),
        .O(\badr[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badr[1]_INST_0_i_4 
       (.I0(pc6_badr[1]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badr_rsv[1]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badr[1]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[1]_INST_0_i_5 
       (.I0(pc0_badr_rsv[1]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badr[1]),
        .O(\badr[1]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[1]_INST_0_i_6 
       (.I0(pc2_badr_rsv[1]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badr[1]),
        .O(\badr[1]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[1]_INST_0_i_7 
       (.I0(pc4_badr_rsv[1]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badr[1]),
        .O(\badr[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[2]_INST_0 
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(\badr[2]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[2]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badr[2]_INST_0_i_4_n_0 ),
        .O(badr[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[2]_INST_0_i_1 
       (.I0(pc1_badr_rsv[2]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badr[2]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[2]_INST_0_i_5_n_0 ),
        .O(\badr[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[2]_INST_0_i_2 
       (.I0(pc3_badr_rsv[2]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badr[2]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[2]_INST_0_i_6_n_0 ),
        .O(\badr[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[2]_INST_0_i_3 
       (.I0(pc5_badr_rsv[2]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badr[2]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[2]_INST_0_i_7_n_0 ),
        .O(\badr[2]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badr[2]_INST_0_i_4 
       (.I0(pc6_badr[2]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badr_rsv[2]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badr[2]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[2]_INST_0_i_5 
       (.I0(pc0_badr_rsv[2]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badr[2]),
        .O(\badr[2]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[2]_INST_0_i_6 
       (.I0(pc2_badr_rsv[2]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badr[2]),
        .O(\badr[2]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[2]_INST_0_i_7 
       (.I0(pc4_badr_rsv[2]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badr[2]),
        .O(\badr[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[3]_INST_0 
       (.I0(\badr[3]_INST_0_i_1_n_0 ),
        .I1(\badr[3]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[3]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badr[3]_INST_0_i_4_n_0 ),
        .O(badr[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[3]_INST_0_i_1 
       (.I0(pc1_badr_rsv[3]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badr[3]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[3]_INST_0_i_5_n_0 ),
        .O(\badr[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[3]_INST_0_i_2 
       (.I0(pc3_badr_rsv[3]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badr[3]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[3]_INST_0_i_6_n_0 ),
        .O(\badr[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[3]_INST_0_i_3 
       (.I0(pc5_badr_rsv[3]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badr[3]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[3]_INST_0_i_7_n_0 ),
        .O(\badr[3]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badr[3]_INST_0_i_4 
       (.I0(pc6_badr[3]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badr_rsv[3]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badr[3]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[3]_INST_0_i_5 
       (.I0(pc0_badr_rsv[3]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badr[3]),
        .O(\badr[3]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[3]_INST_0_i_6 
       (.I0(pc2_badr_rsv[3]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badr[3]),
        .O(\badr[3]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[3]_INST_0_i_7 
       (.I0(pc4_badr_rsv[3]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badr[3]),
        .O(\badr[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[4]_INST_0 
       (.I0(\badr[4]_INST_0_i_1_n_0 ),
        .I1(\badr[4]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[4]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badr[4]_INST_0_i_4_n_0 ),
        .O(badr[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[4]_INST_0_i_1 
       (.I0(pc1_badr_rsv[4]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badr[4]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[4]_INST_0_i_5_n_0 ),
        .O(\badr[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[4]_INST_0_i_2 
       (.I0(pc3_badr_rsv[4]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badr[4]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[4]_INST_0_i_6_n_0 ),
        .O(\badr[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[4]_INST_0_i_3 
       (.I0(pc5_badr_rsv[4]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badr[4]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[4]_INST_0_i_7_n_0 ),
        .O(\badr[4]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badr[4]_INST_0_i_4 
       (.I0(pc6_badr[4]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badr_rsv[4]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badr[4]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[4]_INST_0_i_5 
       (.I0(pc0_badr_rsv[4]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badr[4]),
        .O(\badr[4]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[4]_INST_0_i_6 
       (.I0(pc2_badr_rsv[4]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badr[4]),
        .O(\badr[4]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[4]_INST_0_i_7 
       (.I0(pc4_badr_rsv[4]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badr[4]),
        .O(\badr[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[5]_INST_0 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\badr[5]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[5]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badr[5]_INST_0_i_4_n_0 ),
        .O(badr[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[5]_INST_0_i_1 
       (.I0(pc1_badr_rsv[5]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badr[5]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[5]_INST_0_i_5_n_0 ),
        .O(\badr[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[5]_INST_0_i_2 
       (.I0(pc3_badr_rsv[5]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badr[5]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[5]_INST_0_i_6_n_0 ),
        .O(\badr[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[5]_INST_0_i_3 
       (.I0(pc5_badr_rsv[5]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badr[5]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[5]_INST_0_i_7_n_0 ),
        .O(\badr[5]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badr[5]_INST_0_i_4 
       (.I0(pc6_badr[5]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badr_rsv[5]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badr[5]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[5]_INST_0_i_5 
       (.I0(pc0_badr_rsv[5]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badr[5]),
        .O(\badr[5]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[5]_INST_0_i_6 
       (.I0(pc2_badr_rsv[5]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badr[5]),
        .O(\badr[5]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[5]_INST_0_i_7 
       (.I0(pc4_badr_rsv[5]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badr[5]),
        .O(\badr[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[6]_INST_0 
       (.I0(\badr[6]_INST_0_i_1_n_0 ),
        .I1(\badr[6]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[6]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badr[6]_INST_0_i_4_n_0 ),
        .O(badr[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[6]_INST_0_i_1 
       (.I0(pc1_badr_rsv[6]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badr[6]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[6]_INST_0_i_5_n_0 ),
        .O(\badr[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[6]_INST_0_i_2 
       (.I0(pc3_badr_rsv[6]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badr[6]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[6]_INST_0_i_6_n_0 ),
        .O(\badr[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[6]_INST_0_i_3 
       (.I0(pc5_badr_rsv[6]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badr[6]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[6]_INST_0_i_7_n_0 ),
        .O(\badr[6]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badr[6]_INST_0_i_4 
       (.I0(pc6_badr[6]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badr_rsv[6]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badr[6]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[6]_INST_0_i_5 
       (.I0(pc0_badr_rsv[6]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badr[6]),
        .O(\badr[6]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[6]_INST_0_i_6 
       (.I0(pc2_badr_rsv[6]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badr[6]),
        .O(\badr[6]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[6]_INST_0_i_7 
       (.I0(pc4_badr_rsv[6]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badr[6]),
        .O(\badr[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[7]_INST_0 
       (.I0(\badr[7]_INST_0_i_1_n_0 ),
        .I1(\badr[7]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[7]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badr[7]_INST_0_i_4_n_0 ),
        .O(badr[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[7]_INST_0_i_1 
       (.I0(pc1_badr_rsv[7]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badr[7]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[7]_INST_0_i_5_n_0 ),
        .O(\badr[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[7]_INST_0_i_2 
       (.I0(pc3_badr_rsv[7]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badr[7]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[7]_INST_0_i_6_n_0 ),
        .O(\badr[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[7]_INST_0_i_3 
       (.I0(pc5_badr_rsv[7]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badr[7]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[7]_INST_0_i_7_n_0 ),
        .O(\badr[7]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badr[7]_INST_0_i_4 
       (.I0(pc6_badr[7]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badr_rsv[7]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badr[7]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[7]_INST_0_i_5 
       (.I0(pc0_badr_rsv[7]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badr[7]),
        .O(\badr[7]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[7]_INST_0_i_6 
       (.I0(pc2_badr_rsv[7]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badr[7]),
        .O(\badr[7]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[7]_INST_0_i_7 
       (.I0(pc4_badr_rsv[7]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badr[7]),
        .O(\badr[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[8]_INST_0 
       (.I0(\badr[8]_INST_0_i_1_n_0 ),
        .I1(\badr[8]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[8]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badr[8]_INST_0_i_4_n_0 ),
        .O(badr[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[8]_INST_0_i_1 
       (.I0(pc1_badr_rsv[8]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badr[8]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[8]_INST_0_i_5_n_0 ),
        .O(\badr[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[8]_INST_0_i_2 
       (.I0(pc3_badr_rsv[8]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badr[8]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[8]_INST_0_i_6_n_0 ),
        .O(\badr[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[8]_INST_0_i_3 
       (.I0(pc5_badr_rsv[8]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badr[8]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[8]_INST_0_i_7_n_0 ),
        .O(\badr[8]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badr[8]_INST_0_i_4 
       (.I0(pc6_badr[8]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badr_rsv[8]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badr[8]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[8]_INST_0_i_5 
       (.I0(pc0_badr_rsv[8]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badr[8]),
        .O(\badr[8]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[8]_INST_0_i_6 
       (.I0(pc2_badr_rsv[8]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badr[8]),
        .O(\badr[8]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[8]_INST_0_i_7 
       (.I0(pc4_badr_rsv[8]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badr[8]),
        .O(\badr[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badr[9]_INST_0 
       (.I0(\badr[9]_INST_0_i_1_n_0 ),
        .I1(\badr[9]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badr[9]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badr[9]_INST_0_i_4_n_0 ),
        .O(badr[9]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[9]_INST_0_i_1 
       (.I0(pc1_badr_rsv[9]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badr[9]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[9]_INST_0_i_5_n_0 ),
        .O(\badr[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[9]_INST_0_i_2 
       (.I0(pc3_badr_rsv[9]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badr[9]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[9]_INST_0_i_6_n_0 ),
        .O(\badr[9]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badr[9]_INST_0_i_3 
       (.I0(pc5_badr_rsv[9]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badr[9]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badr[9]_INST_0_i_7_n_0 ),
        .O(\badr[9]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badr[9]_INST_0_i_4 
       (.I0(pc6_badr[9]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badr_rsv[9]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badr[9]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[9]_INST_0_i_5 
       (.I0(pc0_badr_rsv[9]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badr[9]),
        .O(\badr[9]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[9]_INST_0_i_6 
       (.I0(pc2_badr_rsv[9]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badr[9]),
        .O(\badr[9]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badr[9]_INST_0_i_7 
       (.I0(pc4_badr_rsv[9]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badr[9]),
        .O(\badr[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badrx[0]_INST_0 
       (.I0(\badrx[0]_INST_0_i_1_n_0 ),
        .I1(\badrx[0]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badrx[0]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badrx[0]_INST_0_i_4_n_0 ),
        .O(badrx[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[0]_INST_0_i_1 
       (.I0(pc1_badrx_rsv[0]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badrx[0]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[0]_INST_0_i_5_n_0 ),
        .O(\badrx[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[0]_INST_0_i_2 
       (.I0(pc3_badrx_rsv[0]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badrx[0]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[0]_INST_0_i_6_n_0 ),
        .O(\badrx[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[0]_INST_0_i_3 
       (.I0(pc5_badrx_rsv[0]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badrx[0]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[0]_INST_0_i_7_n_0 ),
        .O(\badrx[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badrx[0]_INST_0_i_4 
       (.I0(pc6_badrx[0]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badrx_rsv[0]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badrx[0]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[0]_INST_0_i_5 
       (.I0(pc0_badrx_rsv[0]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badrx[0]),
        .O(\badrx[0]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[0]_INST_0_i_6 
       (.I0(pc2_badrx_rsv[0]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badrx[0]),
        .O(\badrx[0]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[0]_INST_0_i_7 
       (.I0(pc4_badrx_rsv[0]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badrx[0]),
        .O(\badrx[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badrx[10]_INST_0 
       (.I0(\badrx[10]_INST_0_i_1_n_0 ),
        .I1(\badrx[10]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badrx[10]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badrx[10]_INST_0_i_4_n_0 ),
        .O(badrx[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[10]_INST_0_i_1 
       (.I0(pc1_badrx_rsv[10]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badrx[10]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[10]_INST_0_i_5_n_0 ),
        .O(\badrx[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[10]_INST_0_i_2 
       (.I0(pc3_badrx_rsv[10]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badrx[10]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[10]_INST_0_i_6_n_0 ),
        .O(\badrx[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[10]_INST_0_i_3 
       (.I0(pc5_badrx_rsv[10]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badrx[10]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[10]_INST_0_i_7_n_0 ),
        .O(\badrx[10]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badrx[10]_INST_0_i_4 
       (.I0(pc6_badrx[10]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badrx_rsv[10]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badrx[10]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[10]_INST_0_i_5 
       (.I0(pc0_badrx_rsv[10]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badrx[10]),
        .O(\badrx[10]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[10]_INST_0_i_6 
       (.I0(pc2_badrx_rsv[10]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badrx[10]),
        .O(\badrx[10]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[10]_INST_0_i_7 
       (.I0(pc4_badrx_rsv[10]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badrx[10]),
        .O(\badrx[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badrx[11]_INST_0 
       (.I0(\badrx[11]_INST_0_i_1_n_0 ),
        .I1(\badrx[11]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badrx[11]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badrx[11]_INST_0_i_4_n_0 ),
        .O(badrx[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[11]_INST_0_i_1 
       (.I0(pc1_badrx_rsv[11]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badrx[11]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[11]_INST_0_i_5_n_0 ),
        .O(\badrx[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[11]_INST_0_i_2 
       (.I0(pc3_badrx_rsv[11]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badrx[11]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[11]_INST_0_i_6_n_0 ),
        .O(\badrx[11]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[11]_INST_0_i_3 
       (.I0(pc5_badrx_rsv[11]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badrx[11]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[11]_INST_0_i_7_n_0 ),
        .O(\badrx[11]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badrx[11]_INST_0_i_4 
       (.I0(pc6_badrx[11]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badrx_rsv[11]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badrx[11]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[11]_INST_0_i_5 
       (.I0(pc0_badrx_rsv[11]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badrx[11]),
        .O(\badrx[11]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[11]_INST_0_i_6 
       (.I0(pc2_badrx_rsv[11]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badrx[11]),
        .O(\badrx[11]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[11]_INST_0_i_7 
       (.I0(pc4_badrx_rsv[11]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badrx[11]),
        .O(\badrx[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badrx[12]_INST_0 
       (.I0(\badrx[12]_INST_0_i_1_n_0 ),
        .I1(\badrx[12]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badrx[12]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badrx[12]_INST_0_i_4_n_0 ),
        .O(badrx[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[12]_INST_0_i_1 
       (.I0(pc1_badrx_rsv[12]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badrx[12]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[12]_INST_0_i_5_n_0 ),
        .O(\badrx[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[12]_INST_0_i_2 
       (.I0(pc3_badrx_rsv[12]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badrx[12]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[12]_INST_0_i_6_n_0 ),
        .O(\badrx[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[12]_INST_0_i_3 
       (.I0(pc5_badrx_rsv[12]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badrx[12]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[12]_INST_0_i_7_n_0 ),
        .O(\badrx[12]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badrx[12]_INST_0_i_4 
       (.I0(pc6_badrx[12]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badrx_rsv[12]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badrx[12]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[12]_INST_0_i_5 
       (.I0(pc0_badrx_rsv[12]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badrx[12]),
        .O(\badrx[12]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[12]_INST_0_i_6 
       (.I0(pc2_badrx_rsv[12]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badrx[12]),
        .O(\badrx[12]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[12]_INST_0_i_7 
       (.I0(pc4_badrx_rsv[12]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badrx[12]),
        .O(\badrx[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badrx[13]_INST_0 
       (.I0(\badrx[13]_INST_0_i_1_n_0 ),
        .I1(\badrx[13]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badrx[13]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badrx[13]_INST_0_i_4_n_0 ),
        .O(badrx[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[13]_INST_0_i_1 
       (.I0(pc1_badrx_rsv[13]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badrx[13]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[13]_INST_0_i_5_n_0 ),
        .O(\badrx[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[13]_INST_0_i_2 
       (.I0(pc3_badrx_rsv[13]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badrx[13]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[13]_INST_0_i_6_n_0 ),
        .O(\badrx[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[13]_INST_0_i_3 
       (.I0(pc5_badrx_rsv[13]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badrx[13]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[13]_INST_0_i_7_n_0 ),
        .O(\badrx[13]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badrx[13]_INST_0_i_4 
       (.I0(pc6_badrx[13]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badrx_rsv[13]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badrx[13]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[13]_INST_0_i_5 
       (.I0(pc0_badrx_rsv[13]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badrx[13]),
        .O(\badrx[13]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[13]_INST_0_i_6 
       (.I0(pc2_badrx_rsv[13]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badrx[13]),
        .O(\badrx[13]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[13]_INST_0_i_7 
       (.I0(pc4_badrx_rsv[13]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badrx[13]),
        .O(\badrx[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badrx[14]_INST_0 
       (.I0(\badrx[14]_INST_0_i_1_n_0 ),
        .I1(\badrx[14]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badrx[14]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badrx[14]_INST_0_i_4_n_0 ),
        .O(badrx[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[14]_INST_0_i_1 
       (.I0(pc1_badrx_rsv[14]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badrx[14]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[14]_INST_0_i_5_n_0 ),
        .O(\badrx[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[14]_INST_0_i_2 
       (.I0(pc3_badrx_rsv[14]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badrx[14]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[14]_INST_0_i_6_n_0 ),
        .O(\badrx[14]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[14]_INST_0_i_3 
       (.I0(pc5_badrx_rsv[14]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badrx[14]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[14]_INST_0_i_7_n_0 ),
        .O(\badrx[14]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badrx[14]_INST_0_i_4 
       (.I0(pc6_badrx[14]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badrx_rsv[14]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badrx[14]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[14]_INST_0_i_5 
       (.I0(pc0_badrx_rsv[14]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badrx[14]),
        .O(\badrx[14]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[14]_INST_0_i_6 
       (.I0(pc2_badrx_rsv[14]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badrx[14]),
        .O(\badrx[14]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[14]_INST_0_i_7 
       (.I0(pc4_badrx_rsv[14]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badrx[14]),
        .O(\badrx[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badrx[15]_INST_0 
       (.I0(\badrx[15]_INST_0_i_1_n_0 ),
        .I1(\badrx[15]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badrx[15]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badrx[15]_INST_0_i_4_n_0 ),
        .O(badrx[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[15]_INST_0_i_1 
       (.I0(pc1_badrx_rsv[15]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badrx[15]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[15]_INST_0_i_5_n_0 ),
        .O(\badrx[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[15]_INST_0_i_2 
       (.I0(pc3_badrx_rsv[15]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badrx[15]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[15]_INST_0_i_6_n_0 ),
        .O(\badrx[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[15]_INST_0_i_3 
       (.I0(pc5_badrx_rsv[15]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badrx[15]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[15]_INST_0_i_7_n_0 ),
        .O(\badrx[15]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badrx[15]_INST_0_i_4 
       (.I0(pc6_badrx[15]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badrx_rsv[15]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badrx[15]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[15]_INST_0_i_5 
       (.I0(pc0_badrx_rsv[15]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badrx[15]),
        .O(\badrx[15]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[15]_INST_0_i_6 
       (.I0(pc2_badrx_rsv[15]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badrx[15]),
        .O(\badrx[15]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[15]_INST_0_i_7 
       (.I0(pc4_badrx_rsv[15]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badrx[15]),
        .O(\badrx[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badrx[1]_INST_0 
       (.I0(\badrx[1]_INST_0_i_1_n_0 ),
        .I1(\badrx[1]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badrx[1]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badrx[1]_INST_0_i_4_n_0 ),
        .O(badrx[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[1]_INST_0_i_1 
       (.I0(pc1_badrx_rsv[1]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badrx[1]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[1]_INST_0_i_5_n_0 ),
        .O(\badrx[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[1]_INST_0_i_2 
       (.I0(pc3_badrx_rsv[1]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badrx[1]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[1]_INST_0_i_6_n_0 ),
        .O(\badrx[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[1]_INST_0_i_3 
       (.I0(pc5_badrx_rsv[1]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badrx[1]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[1]_INST_0_i_7_n_0 ),
        .O(\badrx[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badrx[1]_INST_0_i_4 
       (.I0(pc6_badrx[1]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badrx_rsv[1]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badrx[1]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[1]_INST_0_i_5 
       (.I0(pc0_badrx_rsv[1]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badrx[1]),
        .O(\badrx[1]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[1]_INST_0_i_6 
       (.I0(pc2_badrx_rsv[1]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badrx[1]),
        .O(\badrx[1]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[1]_INST_0_i_7 
       (.I0(pc4_badrx_rsv[1]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badrx[1]),
        .O(\badrx[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badrx[2]_INST_0 
       (.I0(\badrx[2]_INST_0_i_1_n_0 ),
        .I1(\badrx[2]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badrx[2]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badrx[2]_INST_0_i_4_n_0 ),
        .O(badrx[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[2]_INST_0_i_1 
       (.I0(pc1_badrx_rsv[2]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badrx[2]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[2]_INST_0_i_5_n_0 ),
        .O(\badrx[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[2]_INST_0_i_2 
       (.I0(pc3_badrx_rsv[2]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badrx[2]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[2]_INST_0_i_6_n_0 ),
        .O(\badrx[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[2]_INST_0_i_3 
       (.I0(pc5_badrx_rsv[2]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badrx[2]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[2]_INST_0_i_7_n_0 ),
        .O(\badrx[2]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badrx[2]_INST_0_i_4 
       (.I0(pc6_badrx[2]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badrx_rsv[2]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badrx[2]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[2]_INST_0_i_5 
       (.I0(pc0_badrx_rsv[2]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badrx[2]),
        .O(\badrx[2]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[2]_INST_0_i_6 
       (.I0(pc2_badrx_rsv[2]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badrx[2]),
        .O(\badrx[2]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[2]_INST_0_i_7 
       (.I0(pc4_badrx_rsv[2]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badrx[2]),
        .O(\badrx[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badrx[3]_INST_0 
       (.I0(\badrx[3]_INST_0_i_1_n_0 ),
        .I1(\badrx[3]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badrx[3]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badrx[3]_INST_0_i_4_n_0 ),
        .O(badrx[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[3]_INST_0_i_1 
       (.I0(pc1_badrx_rsv[3]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badrx[3]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[3]_INST_0_i_5_n_0 ),
        .O(\badrx[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[3]_INST_0_i_2 
       (.I0(pc3_badrx_rsv[3]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badrx[3]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[3]_INST_0_i_6_n_0 ),
        .O(\badrx[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[3]_INST_0_i_3 
       (.I0(pc5_badrx_rsv[3]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badrx[3]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[3]_INST_0_i_7_n_0 ),
        .O(\badrx[3]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badrx[3]_INST_0_i_4 
       (.I0(pc6_badrx[3]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badrx_rsv[3]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badrx[3]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[3]_INST_0_i_5 
       (.I0(pc0_badrx_rsv[3]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badrx[3]),
        .O(\badrx[3]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[3]_INST_0_i_6 
       (.I0(pc2_badrx_rsv[3]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badrx[3]),
        .O(\badrx[3]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[3]_INST_0_i_7 
       (.I0(pc4_badrx_rsv[3]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badrx[3]),
        .O(\badrx[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badrx[4]_INST_0 
       (.I0(\badrx[4]_INST_0_i_1_n_0 ),
        .I1(\badrx[4]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badrx[4]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badrx[4]_INST_0_i_4_n_0 ),
        .O(badrx[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[4]_INST_0_i_1 
       (.I0(pc1_badrx_rsv[4]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badrx[4]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[4]_INST_0_i_5_n_0 ),
        .O(\badrx[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[4]_INST_0_i_2 
       (.I0(pc3_badrx_rsv[4]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badrx[4]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[4]_INST_0_i_6_n_0 ),
        .O(\badrx[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[4]_INST_0_i_3 
       (.I0(pc5_badrx_rsv[4]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badrx[4]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[4]_INST_0_i_7_n_0 ),
        .O(\badrx[4]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badrx[4]_INST_0_i_4 
       (.I0(pc6_badrx[4]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badrx_rsv[4]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badrx[4]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[4]_INST_0_i_5 
       (.I0(pc0_badrx_rsv[4]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badrx[4]),
        .O(\badrx[4]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[4]_INST_0_i_6 
       (.I0(pc2_badrx_rsv[4]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badrx[4]),
        .O(\badrx[4]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[4]_INST_0_i_7 
       (.I0(pc4_badrx_rsv[4]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badrx[4]),
        .O(\badrx[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badrx[5]_INST_0 
       (.I0(\badrx[5]_INST_0_i_1_n_0 ),
        .I1(\badrx[5]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badrx[5]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badrx[5]_INST_0_i_4_n_0 ),
        .O(badrx[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[5]_INST_0_i_1 
       (.I0(pc1_badrx_rsv[5]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badrx[5]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[5]_INST_0_i_5_n_0 ),
        .O(\badrx[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[5]_INST_0_i_2 
       (.I0(pc3_badrx_rsv[5]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badrx[5]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[5]_INST_0_i_6_n_0 ),
        .O(\badrx[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[5]_INST_0_i_3 
       (.I0(pc5_badrx_rsv[5]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badrx[5]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[5]_INST_0_i_7_n_0 ),
        .O(\badrx[5]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badrx[5]_INST_0_i_4 
       (.I0(pc6_badrx[5]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badrx_rsv[5]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badrx[5]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[5]_INST_0_i_5 
       (.I0(pc0_badrx_rsv[5]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badrx[5]),
        .O(\badrx[5]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[5]_INST_0_i_6 
       (.I0(pc2_badrx_rsv[5]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badrx[5]),
        .O(\badrx[5]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[5]_INST_0_i_7 
       (.I0(pc4_badrx_rsv[5]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badrx[5]),
        .O(\badrx[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badrx[6]_INST_0 
       (.I0(\badrx[6]_INST_0_i_1_n_0 ),
        .I1(\badrx[6]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badrx[6]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badrx[6]_INST_0_i_4_n_0 ),
        .O(badrx[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[6]_INST_0_i_1 
       (.I0(pc1_badrx_rsv[6]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badrx[6]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[6]_INST_0_i_5_n_0 ),
        .O(\badrx[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[6]_INST_0_i_2 
       (.I0(pc3_badrx_rsv[6]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badrx[6]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[6]_INST_0_i_6_n_0 ),
        .O(\badrx[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[6]_INST_0_i_3 
       (.I0(pc5_badrx_rsv[6]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badrx[6]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[6]_INST_0_i_7_n_0 ),
        .O(\badrx[6]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badrx[6]_INST_0_i_4 
       (.I0(pc6_badrx[6]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badrx_rsv[6]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badrx[6]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[6]_INST_0_i_5 
       (.I0(pc0_badrx_rsv[6]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badrx[6]),
        .O(\badrx[6]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[6]_INST_0_i_6 
       (.I0(pc2_badrx_rsv[6]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badrx[6]),
        .O(\badrx[6]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[6]_INST_0_i_7 
       (.I0(pc4_badrx_rsv[6]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badrx[6]),
        .O(\badrx[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badrx[7]_INST_0 
       (.I0(\badrx[7]_INST_0_i_1_n_0 ),
        .I1(\badrx[7]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badrx[7]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badrx[7]_INST_0_i_4_n_0 ),
        .O(badrx[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[7]_INST_0_i_1 
       (.I0(pc1_badrx_rsv[7]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badrx[7]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[7]_INST_0_i_5_n_0 ),
        .O(\badrx[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[7]_INST_0_i_2 
       (.I0(pc3_badrx_rsv[7]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badrx[7]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[7]_INST_0_i_6_n_0 ),
        .O(\badrx[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[7]_INST_0_i_3 
       (.I0(pc5_badrx_rsv[7]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badrx[7]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[7]_INST_0_i_7_n_0 ),
        .O(\badrx[7]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badrx[7]_INST_0_i_4 
       (.I0(pc6_badrx[7]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badrx_rsv[7]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badrx[7]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[7]_INST_0_i_5 
       (.I0(pc0_badrx_rsv[7]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badrx[7]),
        .O(\badrx[7]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[7]_INST_0_i_6 
       (.I0(pc2_badrx_rsv[7]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badrx[7]),
        .O(\badrx[7]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[7]_INST_0_i_7 
       (.I0(pc4_badrx_rsv[7]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badrx[7]),
        .O(\badrx[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badrx[8]_INST_0 
       (.I0(\badrx[8]_INST_0_i_1_n_0 ),
        .I1(\badrx[8]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badrx[8]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badrx[8]_INST_0_i_4_n_0 ),
        .O(badrx[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[8]_INST_0_i_1 
       (.I0(pc1_badrx_rsv[8]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badrx[8]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[8]_INST_0_i_5_n_0 ),
        .O(\badrx[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[8]_INST_0_i_2 
       (.I0(pc3_badrx_rsv[8]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badrx[8]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[8]_INST_0_i_6_n_0 ),
        .O(\badrx[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[8]_INST_0_i_3 
       (.I0(pc5_badrx_rsv[8]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badrx[8]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[8]_INST_0_i_7_n_0 ),
        .O(\badrx[8]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badrx[8]_INST_0_i_4 
       (.I0(pc6_badrx[8]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badrx_rsv[8]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badrx[8]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[8]_INST_0_i_5 
       (.I0(pc0_badrx_rsv[8]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badrx[8]),
        .O(\badrx[8]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[8]_INST_0_i_6 
       (.I0(pc2_badrx_rsv[8]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badrx[8]),
        .O(\badrx[8]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[8]_INST_0_i_7 
       (.I0(pc4_badrx_rsv[8]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badrx[8]),
        .O(\badrx[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \badrx[9]_INST_0 
       (.I0(\badrx[9]_INST_0_i_1_n_0 ),
        .I1(\badrx[9]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\badrx[9]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\badrx[9]_INST_0_i_4_n_0 ),
        .O(badrx[9]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[9]_INST_0_i_1 
       (.I0(pc1_badrx_rsv[9]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_badrx[9]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[9]_INST_0_i_5_n_0 ),
        .O(\badrx[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[9]_INST_0_i_2 
       (.I0(pc3_badrx_rsv[9]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_badrx[9]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[9]_INST_0_i_6_n_0 ),
        .O(\badrx[9]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \badrx[9]_INST_0_i_3 
       (.I0(pc5_badrx_rsv[9]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_badrx[9]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\badrx[9]_INST_0_i_7_n_0 ),
        .O(\badrx[9]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \badrx[9]_INST_0_i_4 
       (.I0(pc6_badrx[9]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_badrx_rsv[9]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\badrx[9]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[9]_INST_0_i_5 
       (.I0(pc0_badrx_rsv[9]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_badrx[9]),
        .O(\badrx[9]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[9]_INST_0_i_6 
       (.I0(pc2_badrx_rsv[9]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_badrx[9]),
        .O(\badrx[9]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \badrx[9]_INST_0_i_7 
       (.I0(pc4_badrx_rsv[9]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_badrx[9]),
        .O(\badrx[9]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bcmd[0]_INST_0 
       (.I0(\bcmd[0]_INST_0_i_1_n_0 ),
        .I1(\bcmd[2]_INST_0_i_3_n_0 ),
        .I2(\bcmd[0]_INST_0_i_2_n_0 ),
        .I3(\bcmd[2]_INST_0_i_5_n_0 ),
        .I4(\bcmd[0]_INST_0_i_3_n_0 ),
        .O(bcmd[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bcmd[0]_INST_0_i_1 
       (.I0(\bcmd[0]_INST_0_i_4_n_0 ),
        .I1(\bcmd[0]_INST_0_i_5_n_0 ),
        .I2(\bcmd[2]_INST_0_i_5_n_0 ),
        .I3(\bcmd[0]_INST_0_i_6_n_0 ),
        .I4(\bcmd[2]_INST_0_i_7_n_0 ),
        .I5(\bcmd[0]_INST_0_i_7_n_0 ),
        .O(\bcmd[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bcmd[0]_INST_0_i_2 
       (.I0(pc5_bcmd_rsv[0]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_bcmd[0]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\bcmd[0]_INST_0_i_8_n_0 ),
        .O(\bcmd[0]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \bcmd[0]_INST_0_i_3 
       (.I0(pc6_bcmd[0]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_bcmd_rsv[0]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\bcmd[0]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[0]_INST_0_i_4 
       (.I0(pc1_bcmd_rsv[0]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_bcmd[0]),
        .O(\bcmd[0]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[0]_INST_0_i_5 
       (.I0(pc0_bcmd_rsv[0]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_bcmd[0]),
        .O(\bcmd[0]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[0]_INST_0_i_6 
       (.I0(pc3_bcmd_rsv[0]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_bcmd[0]),
        .O(\bcmd[0]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[0]_INST_0_i_7 
       (.I0(pc2_bcmd_rsv[0]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_bcmd[0]),
        .O(\bcmd[0]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[0]_INST_0_i_8 
       (.I0(pc4_bcmd_rsv[0]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_bcmd[0]),
        .O(\bcmd[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bcmd[1]_INST_0 
       (.I0(\bcmd[1]_INST_0_i_1_n_0 ),
        .I1(\bcmd[1]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\bcmd[1]_INST_0_i_3_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\bcmd[1]_INST_0_i_4_n_0 ),
        .O(bcmd[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bcmd[1]_INST_0_i_1 
       (.I0(pc1_bcmd_rsv[1]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_bcmd[1]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\bcmd[1]_INST_0_i_5_n_0 ),
        .O(\bcmd[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bcmd[1]_INST_0_i_2 
       (.I0(pc3_bcmd_rsv[1]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_bcmd[1]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\bcmd[1]_INST_0_i_6_n_0 ),
        .O(\bcmd[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bcmd[1]_INST_0_i_3 
       (.I0(pc5_bcmd_rsv[1]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_bcmd[1]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\bcmd[1]_INST_0_i_7_n_0 ),
        .O(\bcmd[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \bcmd[1]_INST_0_i_4 
       (.I0(pc6_bcmd[1]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_bcmd_rsv[1]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\bcmd[1]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[1]_INST_0_i_5 
       (.I0(pc0_bcmd_rsv[1]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_bcmd[1]),
        .O(\bcmd[1]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[1]_INST_0_i_6 
       (.I0(pc2_bcmd_rsv[1]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_bcmd[1]),
        .O(\bcmd[1]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[1]_INST_0_i_7 
       (.I0(pc4_bcmd_rsv[1]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_bcmd[1]),
        .O(\bcmd[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bcmd[2]_INST_0 
       (.I0(\bcmd[2]_INST_0_i_1_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\bcmd[2]_INST_0_i_4_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\bcmd[2]_INST_0_i_6_n_0 ),
        .O(bcmd[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bcmd[2]_INST_0_i_1 
       (.I0(pc1_bcmd_rsv[2]),
        .I1(pc1_brdy_rsv),
        .I2(pc1_bcmd[2]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\bcmd[2]_INST_0_i_8_n_0 ),
        .O(\bcmd[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF200F2F2)) 
    \bcmd[2]_INST_0_i_10 
       (.I0(\bcmd[2]_INST_0_i_13_n_0 ),
        .I1(\bcmd[2]_INST_0_i_14_n_0 ),
        .I2(\arb_cnt_reg_n_0_[2] ),
        .I3(\bcmd[2]_INST_0_i_15_n_0 ),
        .I4(\bcmd[2]_INST_0_i_16_n_0 ),
        .O(\bcmd[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0400000400000000)) 
    \bcmd[2]_INST_0_i_11 
       (.I0(\bcmd[2]_INST_0_i_14_n_0 ),
        .I1(\bcmd[2]_INST_0_i_13_n_0 ),
        .I2(pc6_brdy_rsv),
        .I3(pc6_bcmd[0]),
        .I4(pc6_bcmd[1]),
        .I5(\bcmd[2]_INST_0_i_16_n_0 ),
        .O(\bcmd[2]_INST_0_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[2]_INST_0_i_12 
       (.I0(pc4_bcmd_rsv[2]),
        .I1(pc4_brdy_rsv),
        .I2(pc4_bcmd[2]),
        .O(\bcmd[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000009000009)) 
    \bcmd[2]_INST_0_i_13 
       (.I0(pc0_bcmd[1]),
        .I1(pc0_bcmd[0]),
        .I2(pc0_brdy_rsv),
        .I3(pc1_bcmd[1]),
        .I4(pc1_bcmd[0]),
        .I5(pc1_brdy_rsv),
        .O(\bcmd[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF6FFFFF6)) 
    \bcmd[2]_INST_0_i_14 
       (.I0(pc2_bcmd[1]),
        .I1(pc2_bcmd[0]),
        .I2(pc2_brdy_rsv),
        .I3(pc3_bcmd[1]),
        .I4(pc3_bcmd[0]),
        .I5(pc3_brdy_rsv),
        .O(\bcmd[2]_INST_0_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hBE)) 
    \bcmd[2]_INST_0_i_15 
       (.I0(pc6_brdy_rsv),
        .I1(pc6_bcmd[0]),
        .I2(pc6_bcmd[1]),
        .O(\bcmd[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000009000009)) 
    \bcmd[2]_INST_0_i_16 
       (.I0(pc4_bcmd[1]),
        .I1(pc4_bcmd[0]),
        .I2(pc4_brdy_rsv),
        .I3(pc5_bcmd[1]),
        .I4(pc5_bcmd[0]),
        .I5(pc5_brdy_rsv),
        .O(\bcmd[2]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bcmd[2]_INST_0_i_2 
       (.I0(pc3_bcmd_rsv[2]),
        .I1(pc3_brdy_rsv),
        .I2(pc3_bcmd[2]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\bcmd[2]_INST_0_i_9_n_0 ),
        .O(\bcmd[2]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bcmd[2]_INST_0_i_3 
       (.I0(\bcmd[2]_INST_0_i_10_n_0 ),
        .I1(\bcmd[2]_INST_0_i_11_n_0 ),
        .O(\bcmd[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bcmd[2]_INST_0_i_4 
       (.I0(pc5_bcmd_rsv[2]),
        .I1(pc5_brdy_rsv),
        .I2(pc5_bcmd[2]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\bcmd[2]_INST_0_i_12_n_0 ),
        .O(\bcmd[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0111055501F3F7F7)) 
    \bcmd[2]_INST_0_i_5 
       (.I0(\bcmd[2]_INST_0_i_13_n_0 ),
        .I1(\bcmd[2]_INST_0_i_14_n_0 ),
        .I2(\arb_cnt_reg_n_0_[2] ),
        .I3(\bcmd[2]_INST_0_i_15_n_0 ),
        .I4(\arb_cnt_reg_n_0_[1] ),
        .I5(\bcmd[2]_INST_0_i_16_n_0 ),
        .O(\bcmd[2]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \bcmd[2]_INST_0_i_6 
       (.I0(pc6_bcmd[2]),
        .I1(pc6_brdy_rsv),
        .I2(pc6_bcmd_rsv[2]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\bcmd[2]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \bcmd[2]_INST_0_i_7 
       (.I0(\bcmd[2]_INST_0_i_11_n_0 ),
        .I1(\bdatw[14]_INST_0_i_8_n_0 ),
        .I2(\bcmd[2]_INST_0_i_10_n_0 ),
        .I3(\bdatw[14]_INST_0_i_7_n_0 ),
        .O(\bcmd[2]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[2]_INST_0_i_8 
       (.I0(pc0_bcmd_rsv[2]),
        .I1(pc0_brdy_rsv),
        .I2(pc0_bcmd[2]),
        .O(\bcmd[2]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bcmd[2]_INST_0_i_9 
       (.I0(pc2_bcmd_rsv[2]),
        .I1(pc2_brdy_rsv),
        .I2(pc2_bcmd[2]),
        .O(\bcmd[2]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \bdatw[0]_INST_0 
       (.I0(\bdatw[0]_INST_0_i_1_n_0 ),
        .I1(\bcmd[2]_INST_0_i_3_n_0 ),
        .I2(\bdatw[15]_INST_0_i_3_n_0 ),
        .I3(pc4_bdatw[0]),
        .I4(\bdatw[0]_INST_0_i_2_n_0 ),
        .O(bdatw[0]));
  MUXF7 \bdatw[0]_INST_0_i_1 
       (.I0(\bdatw[0]_INST_0_i_3_n_0 ),
        .I1(\bdatw[0]_INST_0_i_4_n_0 ),
        .O(\bdatw[0]_INST_0_i_1_n_0 ),
        .S(\bcmd[2]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \bdatw[0]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_5_n_0 ),
        .I1(pc6_bdatw[0]),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bdatw[0]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\bdatw[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[0]_INST_0_i_3 
       (.I0(pc3_bdatw[0]),
        .I1(pc3_brdy_rsv),
        .I2(\bcmd[2]_INST_0_i_7_n_0 ),
        .I3(pc2_bdatw[0]),
        .I4(pc2_brdy_rsv),
        .O(\bdatw[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[0]_INST_0_i_4 
       (.I0(pc1_bdatw[0]),
        .I1(pc1_brdy_rsv),
        .I2(\bcmd[2]_INST_0_i_7_n_0 ),
        .I3(pc0_bdatw[0]),
        .I4(pc0_brdy_rsv),
        .O(\bdatw[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFE0EFE0E0)) 
    \bdatw[10]_INST_0 
       (.I0(\bdatw[10]_INST_0_i_1_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\bdatw[15]_INST_0_i_3_n_0 ),
        .I4(pc4_bdatw[10]),
        .I5(\bdatw[10]_INST_0_i_3_n_0 ),
        .O(bdatw[10]));
  LUT6 #(
    .INIT(64'h0000000000F04444)) 
    \bdatw[10]_INST_0_i_1 
       (.I0(pc2_brdy_rsv),
        .I1(pc2_bdatw[10]),
        .I2(pc3_bdatw[10]),
        .I3(pc3_brdy_rsv),
        .I4(\bcmd[2]_INST_0_i_7_n_0 ),
        .I5(\bcmd[2]_INST_0_i_5_n_0 ),
        .O(\bdatw[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00080008AA080008)) 
    \bdatw[10]_INST_0_i_2 
       (.I0(\bcmd[2]_INST_0_i_5_n_0 ),
        .I1(pc0_bdatw[10]),
        .I2(pc0_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(pc1_bdatw[10]),
        .I5(pc1_brdy_rsv),
        .O(\bdatw[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \bdatw[10]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_5_n_0 ),
        .I1(pc6_bdatw[10]),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bdatw[10]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\bdatw[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFE0EFE0E0)) 
    \bdatw[11]_INST_0 
       (.I0(\bdatw[11]_INST_0_i_1_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\bdatw[15]_INST_0_i_3_n_0 ),
        .I4(pc4_bdatw[11]),
        .I5(\bdatw[11]_INST_0_i_3_n_0 ),
        .O(bdatw[11]));
  LUT6 #(
    .INIT(64'h0044000F00440000)) 
    \bdatw[11]_INST_0_i_1 
       (.I0(pc3_brdy_rsv),
        .I1(pc3_bdatw[11]),
        .I2(pc2_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_5_n_0 ),
        .I4(\bcmd[2]_INST_0_i_7_n_0 ),
        .I5(pc2_bdatw[11]),
        .O(\bdatw[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00080008AA080008)) 
    \bdatw[11]_INST_0_i_2 
       (.I0(\bcmd[2]_INST_0_i_5_n_0 ),
        .I1(pc0_bdatw[11]),
        .I2(pc0_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(pc1_bdatw[11]),
        .I5(pc1_brdy_rsv),
        .O(\bdatw[11]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \bdatw[11]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_5_n_0 ),
        .I1(pc6_bdatw[11]),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bdatw[11]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\bdatw[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8B888888)) 
    \bdatw[12]_INST_0 
       (.I0(\bdatw[12]_INST_0_i_1_n_0 ),
        .I1(\bcmd[2]_INST_0_i_3_n_0 ),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bdatw[12]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .I5(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(bdatw[12]));
  MUXF7 \bdatw[12]_INST_0_i_1 
       (.I0(\bdatw[12]_INST_0_i_3_n_0 ),
        .I1(\bdatw[12]_INST_0_i_4_n_0 ),
        .O(\bdatw[12]_INST_0_i_1_n_0 ),
        .S(\bcmd[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000440F00004400)) 
    \bdatw[12]_INST_0_i_2 
       (.I0(pc4_brdy_rsv),
        .I1(pc4_bdatw[12]),
        .I2(pc6_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_5_n_0 ),
        .I4(\bcmd[2]_INST_0_i_7_n_0 ),
        .I5(pc6_bdatw[12]),
        .O(\bdatw[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[12]_INST_0_i_3 
       (.I0(pc3_bdatw[12]),
        .I1(pc3_brdy_rsv),
        .I2(\bcmd[2]_INST_0_i_7_n_0 ),
        .I3(pc2_bdatw[12]),
        .I4(pc2_brdy_rsv),
        .O(\bdatw[12]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[12]_INST_0_i_4 
       (.I0(pc1_bdatw[12]),
        .I1(pc1_brdy_rsv),
        .I2(\bcmd[2]_INST_0_i_7_n_0 ),
        .I3(pc0_bdatw[12]),
        .I4(pc0_brdy_rsv),
        .O(\bdatw[12]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \bdatw[13]_INST_0 
       (.I0(\bdatw[13]_INST_0_i_1_n_0 ),
        .I1(\bcmd[2]_INST_0_i_3_n_0 ),
        .I2(\bdatw[15]_INST_0_i_3_n_0 ),
        .I3(pc4_bdatw[13]),
        .I4(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[13]));
  MUXF7 \bdatw[13]_INST_0_i_1 
       (.I0(\bdatw[13]_INST_0_i_3_n_0 ),
        .I1(\bdatw[13]_INST_0_i_4_n_0 ),
        .O(\bdatw[13]_INST_0_i_1_n_0 ),
        .S(\bcmd[2]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \bdatw[13]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_5_n_0 ),
        .I1(pc6_bdatw[13]),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bdatw[13]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\bdatw[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[13]_INST_0_i_3 
       (.I0(pc3_bdatw[13]),
        .I1(pc3_brdy_rsv),
        .I2(\bcmd[2]_INST_0_i_7_n_0 ),
        .I3(pc2_bdatw[13]),
        .I4(pc2_brdy_rsv),
        .O(\bdatw[13]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[13]_INST_0_i_4 
       (.I0(pc1_bdatw[13]),
        .I1(pc1_brdy_rsv),
        .I2(\bcmd[2]_INST_0_i_7_n_0 ),
        .I3(pc0_bdatw[13]),
        .I4(pc0_brdy_rsv),
        .O(\bdatw[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8B888888)) 
    \bdatw[14]_INST_0 
       (.I0(\bdatw[14]_INST_0_i_1_n_0 ),
        .I1(\bcmd[2]_INST_0_i_3_n_0 ),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bdatw[14]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .I5(\bdatw[14]_INST_0_i_3_n_0 ),
        .O(bdatw[14]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \bdatw[14]_INST_0_i_1 
       (.I0(\bdatw[14]_INST_0_i_4_n_0 ),
        .I1(pc3_bdatw[14]),
        .I2(pc2_bdatw[14]),
        .I3(\bdatw[14]_INST_0_i_5_n_0 ),
        .I4(\bdatw[14]_INST_0_i_6_n_0 ),
        .O(\bdatw[14]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \bdatw[14]_INST_0_i_10 
       (.I0(pc5_brdy_rsv),
        .I1(pc5_bcmd[0]),
        .I2(pc5_bcmd[1]),
        .O(\bdatw[14]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \bdatw[14]_INST_0_i_11 
       (.I0(pc3_brdy_rsv),
        .I1(pc3_bcmd[0]),
        .I2(pc3_bcmd[1]),
        .O(\bdatw[14]_INST_0_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \bdatw[14]_INST_0_i_12 
       (.I0(pc2_brdy_rsv),
        .I1(pc2_bcmd[0]),
        .I2(pc2_bcmd[1]),
        .O(\bdatw[14]_INST_0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \bdatw[14]_INST_0_i_13 
       (.I0(pc1_brdy_rsv),
        .I1(pc1_bcmd[0]),
        .I2(pc1_bcmd[1]),
        .O(\bdatw[14]_INST_0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \bdatw[14]_INST_0_i_14 
       (.I0(pc0_brdy_rsv),
        .I1(pc0_bcmd[0]),
        .I2(pc0_bcmd[1]),
        .O(\bdatw[14]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \bdatw[14]_INST_0_i_2 
       (.I0(\bdatw[14]_INST_0_i_7_n_0 ),
        .I1(\bcmd[2]_INST_0_i_10_n_0 ),
        .I2(\bdatw[14]_INST_0_i_8_n_0 ),
        .I3(\bcmd[2]_INST_0_i_5_n_0 ),
        .O(\bdatw[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000F004400000044)) 
    \bdatw[14]_INST_0_i_3 
       (.I0(pc6_brdy_rsv),
        .I1(pc6_bdatw[14]),
        .I2(pc4_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(pc4_bdatw[14]),
        .O(\bdatw[14]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatw[14]_INST_0_i_4 
       (.I0(pc3_brdy_rsv),
        .I1(\bcmd[2]_INST_0_i_7_n_0 ),
        .I2(\bcmd[2]_INST_0_i_5_n_0 ),
        .O(\bdatw[14]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[14]_INST_0_i_5 
       (.I0(pc2_brdy_rsv),
        .I1(\bcmd[2]_INST_0_i_5_n_0 ),
        .I2(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\bdatw[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00080008AA080008)) 
    \bdatw[14]_INST_0_i_6 
       (.I0(\bcmd[2]_INST_0_i_5_n_0 ),
        .I1(pc0_bdatw[14]),
        .I2(pc0_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(pc1_bdatw[14]),
        .I5(pc1_brdy_rsv),
        .O(\bdatw[14]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00007770)) 
    \bdatw[14]_INST_0_i_7 
       (.I0(\bcmd[2]_INST_0_i_15_n_0 ),
        .I1(\arb_cnt_reg_n_0_[1] ),
        .I2(\arb_cnt_reg_n_0_[0] ),
        .I3(\bdatw[14]_INST_0_i_9_n_0 ),
        .I4(\bdatw[14]_INST_0_i_10_n_0 ),
        .O(\bdatw[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5454DCFF5400D4F0)) 
    \bdatw[14]_INST_0_i_8 
       (.I0(\bdatw[14]_INST_0_i_11_n_0 ),
        .I1(\bdatw[14]_INST_0_i_12_n_0 ),
        .I2(\arb_cnt_reg_n_0_[0] ),
        .I3(\arb_cnt_reg_n_0_[1] ),
        .I4(\bdatw[14]_INST_0_i_13_n_0 ),
        .I5(\bdatw[14]_INST_0_i_14_n_0 ),
        .O(\bdatw[14]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \bdatw[14]_INST_0_i_9 
       (.I0(pc4_brdy_rsv),
        .I1(pc4_bcmd[0]),
        .I2(pc4_bcmd[1]),
        .O(\bdatw[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFE0EFE0E0)) 
    \bdatw[15]_INST_0 
       (.I0(\bdatw[15]_INST_0_i_1_n_0 ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\bdatw[15]_INST_0_i_3_n_0 ),
        .I4(pc4_bdatw[15]),
        .I5(\bdatw[15]_INST_0_i_4_n_0 ),
        .O(bdatw[15]));
  LUT6 #(
    .INIT(64'h0000000000F04444)) 
    \bdatw[15]_INST_0_i_1 
       (.I0(pc2_brdy_rsv),
        .I1(pc2_bdatw[15]),
        .I2(pc3_bdatw[15]),
        .I3(pc3_brdy_rsv),
        .I4(\bcmd[2]_INST_0_i_7_n_0 ),
        .I5(\bcmd[2]_INST_0_i_5_n_0 ),
        .O(\bdatw[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00080008AA080008)) 
    \bdatw[15]_INST_0_i_2 
       (.I0(\bcmd[2]_INST_0_i_5_n_0 ),
        .I1(pc0_bdatw[15]),
        .I2(pc0_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(pc1_bdatw[15]),
        .I5(pc1_brdy_rsv),
        .O(\bdatw[15]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \bdatw[15]_INST_0_i_3 
       (.I0(pc4_brdy_rsv),
        .I1(\bcmd[2]_INST_0_i_7_n_0 ),
        .I2(\bcmd[2]_INST_0_i_5_n_0 ),
        .O(\bdatw[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \bdatw[15]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_5_n_0 ),
        .I1(pc6_bdatw[15]),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bdatw[15]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\bdatw[15]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[15]_INST_0_i_5 
       (.I0(pc6_brdy_rsv),
        .I1(\bcmd[2]_INST_0_i_5_n_0 ),
        .I2(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\bdatw[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8B888888)) 
    \bdatw[1]_INST_0 
       (.I0(\bdatw[1]_INST_0_i_1_n_0 ),
        .I1(\bcmd[2]_INST_0_i_3_n_0 ),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bdatw[1]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .I5(\bdatw[1]_INST_0_i_2_n_0 ),
        .O(bdatw[1]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \bdatw[1]_INST_0_i_1 
       (.I0(\bdatw[14]_INST_0_i_4_n_0 ),
        .I1(pc3_bdatw[1]),
        .I2(pc2_bdatw[1]),
        .I3(\bdatw[14]_INST_0_i_5_n_0 ),
        .I4(\bdatw[1]_INST_0_i_3_n_0 ),
        .O(\bdatw[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000440F00004400)) 
    \bdatw[1]_INST_0_i_2 
       (.I0(pc4_brdy_rsv),
        .I1(pc4_bdatw[1]),
        .I2(pc6_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_5_n_0 ),
        .I4(\bcmd[2]_INST_0_i_7_n_0 ),
        .I5(pc6_bdatw[1]),
        .O(\bdatw[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00080008AA080008)) 
    \bdatw[1]_INST_0_i_3 
       (.I0(\bcmd[2]_INST_0_i_5_n_0 ),
        .I1(pc0_bdatw[1]),
        .I2(pc0_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(pc1_bdatw[1]),
        .I5(pc1_brdy_rsv),
        .O(\bdatw[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFE0EFE0E0)) 
    \bdatw[2]_INST_0 
       (.I0(\bdatw[2]_INST_0_i_1_n_0 ),
        .I1(\bdatw[2]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\bdatw[15]_INST_0_i_3_n_0 ),
        .I4(pc4_bdatw[2]),
        .I5(\bdatw[2]_INST_0_i_3_n_0 ),
        .O(bdatw[2]));
  LUT6 #(
    .INIT(64'h0000000000F04444)) 
    \bdatw[2]_INST_0_i_1 
       (.I0(pc2_brdy_rsv),
        .I1(pc2_bdatw[2]),
        .I2(pc3_bdatw[2]),
        .I3(pc3_brdy_rsv),
        .I4(\bcmd[2]_INST_0_i_7_n_0 ),
        .I5(\bcmd[2]_INST_0_i_5_n_0 ),
        .O(\bdatw[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00080008AA080008)) 
    \bdatw[2]_INST_0_i_2 
       (.I0(\bcmd[2]_INST_0_i_5_n_0 ),
        .I1(pc0_bdatw[2]),
        .I2(pc0_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(pc1_bdatw[2]),
        .I5(pc1_brdy_rsv),
        .O(\bdatw[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \bdatw[2]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_5_n_0 ),
        .I1(pc6_bdatw[2]),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bdatw[2]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\bdatw[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFE0EFE0E0)) 
    \bdatw[3]_INST_0 
       (.I0(\bdatw[3]_INST_0_i_1_n_0 ),
        .I1(\bdatw[3]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\bdatw[15]_INST_0_i_3_n_0 ),
        .I4(pc4_bdatw[3]),
        .I5(\bdatw[3]_INST_0_i_3_n_0 ),
        .O(bdatw[3]));
  LUT6 #(
    .INIT(64'h0000000000F04444)) 
    \bdatw[3]_INST_0_i_1 
       (.I0(pc2_brdy_rsv),
        .I1(pc2_bdatw[3]),
        .I2(pc3_bdatw[3]),
        .I3(pc3_brdy_rsv),
        .I4(\bcmd[2]_INST_0_i_7_n_0 ),
        .I5(\bcmd[2]_INST_0_i_5_n_0 ),
        .O(\bdatw[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00080008AA080008)) 
    \bdatw[3]_INST_0_i_2 
       (.I0(\bcmd[2]_INST_0_i_5_n_0 ),
        .I1(pc0_bdatw[3]),
        .I2(pc0_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(pc1_bdatw[3]),
        .I5(pc1_brdy_rsv),
        .O(\bdatw[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \bdatw[3]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_5_n_0 ),
        .I1(pc6_bdatw[3]),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bdatw[3]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\bdatw[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFE0EFE0E0)) 
    \bdatw[4]_INST_0 
       (.I0(\bdatw[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[4]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\bdatw[15]_INST_0_i_3_n_0 ),
        .I4(pc4_bdatw[4]),
        .I5(\bdatw[4]_INST_0_i_3_n_0 ),
        .O(bdatw[4]));
  LUT6 #(
    .INIT(64'h0000000000F04444)) 
    \bdatw[4]_INST_0_i_1 
       (.I0(pc2_brdy_rsv),
        .I1(pc2_bdatw[4]),
        .I2(pc3_bdatw[4]),
        .I3(pc3_brdy_rsv),
        .I4(\bcmd[2]_INST_0_i_7_n_0 ),
        .I5(\bcmd[2]_INST_0_i_5_n_0 ),
        .O(\bdatw[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00080008AA080008)) 
    \bdatw[4]_INST_0_i_2 
       (.I0(\bcmd[2]_INST_0_i_5_n_0 ),
        .I1(pc0_bdatw[4]),
        .I2(pc0_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(pc1_bdatw[4]),
        .I5(pc1_brdy_rsv),
        .O(\bdatw[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \bdatw[4]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_5_n_0 ),
        .I1(pc6_bdatw[4]),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bdatw[4]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\bdatw[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \bdatw[5]_INST_0 
       (.I0(\bdatw[5]_INST_0_i_1_n_0 ),
        .I1(\bcmd[2]_INST_0_i_3_n_0 ),
        .I2(\bdatw[15]_INST_0_i_3_n_0 ),
        .I3(pc4_bdatw[5]),
        .I4(\bdatw[5]_INST_0_i_2_n_0 ),
        .O(bdatw[5]));
  MUXF7 \bdatw[5]_INST_0_i_1 
       (.I0(\bdatw[5]_INST_0_i_3_n_0 ),
        .I1(\bdatw[5]_INST_0_i_4_n_0 ),
        .O(\bdatw[5]_INST_0_i_1_n_0 ),
        .S(\bcmd[2]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \bdatw[5]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_5_n_0 ),
        .I1(pc6_bdatw[5]),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bdatw[5]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\bdatw[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[5]_INST_0_i_3 
       (.I0(pc3_bdatw[5]),
        .I1(pc3_brdy_rsv),
        .I2(\bcmd[2]_INST_0_i_7_n_0 ),
        .I3(pc2_bdatw[5]),
        .I4(pc2_brdy_rsv),
        .O(\bdatw[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \bdatw[5]_INST_0_i_4 
       (.I0(pc1_bdatw[5]),
        .I1(pc1_brdy_rsv),
        .I2(\bcmd[2]_INST_0_i_7_n_0 ),
        .I3(pc0_bdatw[5]),
        .I4(pc0_brdy_rsv),
        .O(\bdatw[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8B888888)) 
    \bdatw[6]_INST_0 
       (.I0(\bdatw[6]_INST_0_i_1_n_0 ),
        .I1(\bcmd[2]_INST_0_i_3_n_0 ),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bdatw[6]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .I5(\bdatw[6]_INST_0_i_2_n_0 ),
        .O(bdatw[6]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \bdatw[6]_INST_0_i_1 
       (.I0(\bdatw[14]_INST_0_i_5_n_0 ),
        .I1(pc2_bdatw[6]),
        .I2(pc3_bdatw[6]),
        .I3(\bdatw[14]_INST_0_i_4_n_0 ),
        .I4(\bdatw[6]_INST_0_i_3_n_0 ),
        .O(\bdatw[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000F004400000044)) 
    \bdatw[6]_INST_0_i_2 
       (.I0(pc6_brdy_rsv),
        .I1(pc6_bdatw[6]),
        .I2(pc4_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(pc4_bdatw[6]),
        .O(\bdatw[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00080008AA080008)) 
    \bdatw[6]_INST_0_i_3 
       (.I0(\bcmd[2]_INST_0_i_5_n_0 ),
        .I1(pc0_bdatw[6]),
        .I2(pc0_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(pc1_bdatw[6]),
        .I5(pc1_brdy_rsv),
        .O(\bdatw[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFE0EFE0E0)) 
    \bdatw[7]_INST_0 
       (.I0(\bdatw[7]_INST_0_i_1_n_0 ),
        .I1(\bdatw[7]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\bdatw[15]_INST_0_i_3_n_0 ),
        .I4(pc4_bdatw[7]),
        .I5(\bdatw[7]_INST_0_i_3_n_0 ),
        .O(bdatw[7]));
  LUT6 #(
    .INIT(64'h0000000000F04444)) 
    \bdatw[7]_INST_0_i_1 
       (.I0(pc2_brdy_rsv),
        .I1(pc2_bdatw[7]),
        .I2(pc3_bdatw[7]),
        .I3(pc3_brdy_rsv),
        .I4(\bcmd[2]_INST_0_i_7_n_0 ),
        .I5(\bcmd[2]_INST_0_i_5_n_0 ),
        .O(\bdatw[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00080008AA080008)) 
    \bdatw[7]_INST_0_i_2 
       (.I0(\bcmd[2]_INST_0_i_5_n_0 ),
        .I1(pc0_bdatw[7]),
        .I2(pc0_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(pc1_bdatw[7]),
        .I5(pc1_brdy_rsv),
        .O(\bdatw[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \bdatw[7]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_5_n_0 ),
        .I1(pc6_bdatw[7]),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bdatw[7]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\bdatw[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFE0EFE0E0)) 
    \bdatw[8]_INST_0 
       (.I0(\bdatw[8]_INST_0_i_1_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\bdatw[15]_INST_0_i_3_n_0 ),
        .I4(pc4_bdatw[8]),
        .I5(\bdatw[8]_INST_0_i_3_n_0 ),
        .O(bdatw[8]));
  LUT6 #(
    .INIT(64'h00004444000000F0)) 
    \bdatw[8]_INST_0_i_1 
       (.I0(pc3_brdy_rsv),
        .I1(pc3_bdatw[8]),
        .I2(pc2_bdatw[8]),
        .I3(pc2_brdy_rsv),
        .I4(\bcmd[2]_INST_0_i_5_n_0 ),
        .I5(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(\bdatw[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00080008AA080008)) 
    \bdatw[8]_INST_0_i_2 
       (.I0(\bcmd[2]_INST_0_i_5_n_0 ),
        .I1(pc0_bdatw[8]),
        .I2(pc0_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(pc1_bdatw[8]),
        .I5(pc1_brdy_rsv),
        .O(\bdatw[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \bdatw[8]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_5_n_0 ),
        .I1(pc6_bdatw[8]),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bdatw[8]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\bdatw[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFE0EFE0E0)) 
    \bdatw[9]_INST_0 
       (.I0(\bdatw[9]_INST_0_i_1_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\bdatw[15]_INST_0_i_3_n_0 ),
        .I4(pc4_bdatw[9]),
        .I5(\bdatw[9]_INST_0_i_3_n_0 ),
        .O(bdatw[9]));
  LUT6 #(
    .INIT(64'h0000000000F04444)) 
    \bdatw[9]_INST_0_i_1 
       (.I0(pc2_brdy_rsv),
        .I1(pc2_bdatw[9]),
        .I2(pc3_bdatw[9]),
        .I3(pc3_brdy_rsv),
        .I4(\bcmd[2]_INST_0_i_7_n_0 ),
        .I5(\bcmd[2]_INST_0_i_5_n_0 ),
        .O(\bdatw[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00080008AA080008)) 
    \bdatw[9]_INST_0_i_2 
       (.I0(\bcmd[2]_INST_0_i_5_n_0 ),
        .I1(pc0_bdatw[9]),
        .I2(pc0_brdy_rsv),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(pc1_bdatw[9]),
        .I5(pc1_brdy_rsv),
        .O(\bdatw[9]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \bdatw[9]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_5_n_0 ),
        .I1(pc6_bdatw[9]),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bdatw[9]),
        .I4(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\bdatw[9]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEE2E0000)) 
    \grnt_id_dp[0]_i_1 
       (.I0(grnt_id_dp[0]),
        .I1(brdy),
        .I2(bcmd[0]),
        .I3(\bcmd[2]_INST_0_i_7_n_0 ),
        .I4(rst_n),
        .O(\grnt_id_dp[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2EEE0000)) 
    \grnt_id_dp[1]_i_1 
       (.I0(grnt_id_dp[1]),
        .I1(brdy),
        .I2(bcmd[0]),
        .I3(\bcmd[2]_INST_0_i_5_n_0 ),
        .I4(rst_n),
        .O(\grnt_id_dp[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2EEE0000)) 
    \grnt_id_dp[2]_i_1 
       (.I0(grnt_id_dp[2]),
        .I1(brdy),
        .I2(\bcmd[0]_INST_0_i_1_n_0 ),
        .I3(\bcmd[2]_INST_0_i_3_n_0 ),
        .I4(rst_n),
        .O(\grnt_id_dp[2]_i_1_n_0 ));
  FDRE \grnt_id_dp_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\grnt_id_dp[0]_i_1_n_0 ),
        .Q(grnt_id_dp[0]),
        .R(\<const0> ));
  FDRE \grnt_id_dp_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\grnt_id_dp[1]_i_1_n_0 ),
        .Q(grnt_id_dp[1]),
        .R(\<const0> ));
  FDRE \grnt_id_dp_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\grnt_id_dp[2]_i_1_n_0 ),
        .Q(grnt_id_dp[2]),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \pc0_badr_rsv[15]_i_1 
       (.I0(rst_n),
        .O(\pc0_badr_rsv[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00000000)) 
    \pc0_badr_rsv[15]_i_2 
       (.I0(pc0_brdy_rsv),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .I4(pc0_brdy_INST_0_i_1_n_0),
        .I5(brdy),
        .O(\pc0_badr_rsv[15]_i_2_n_0 ));
  FDRE \pc0_badr_rsv_reg[0] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badr[0]),
        .Q(pc0_badr_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badr_rsv_reg[10] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badr[10]),
        .Q(pc0_badr_rsv[10]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badr_rsv_reg[11] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badr[11]),
        .Q(pc0_badr_rsv[11]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badr_rsv_reg[12] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badr[12]),
        .Q(pc0_badr_rsv[12]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badr_rsv_reg[13] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badr[13]),
        .Q(pc0_badr_rsv[13]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badr_rsv_reg[14] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badr[14]),
        .Q(pc0_badr_rsv[14]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badr_rsv_reg[15] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badr[15]),
        .Q(pc0_badr_rsv[15]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badr_rsv_reg[1] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badr[1]),
        .Q(pc0_badr_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badr_rsv_reg[2] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badr[2]),
        .Q(pc0_badr_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badr_rsv_reg[3] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badr[3]),
        .Q(pc0_badr_rsv[3]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badr_rsv_reg[4] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badr[4]),
        .Q(pc0_badr_rsv[4]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badr_rsv_reg[5] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badr[5]),
        .Q(pc0_badr_rsv[5]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badr_rsv_reg[6] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badr[6]),
        .Q(pc0_badr_rsv[6]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badr_rsv_reg[7] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badr[7]),
        .Q(pc0_badr_rsv[7]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badr_rsv_reg[8] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badr[8]),
        .Q(pc0_badr_rsv[8]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badr_rsv_reg[9] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badr[9]),
        .Q(pc0_badr_rsv[9]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badrx_rsv_reg[0] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badrx[0]),
        .Q(pc0_badrx_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badrx_rsv_reg[10] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badrx[10]),
        .Q(pc0_badrx_rsv[10]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badrx_rsv_reg[11] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badrx[11]),
        .Q(pc0_badrx_rsv[11]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badrx_rsv_reg[12] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badrx[12]),
        .Q(pc0_badrx_rsv[12]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badrx_rsv_reg[13] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badrx[13]),
        .Q(pc0_badrx_rsv[13]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badrx_rsv_reg[14] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badrx[14]),
        .Q(pc0_badrx_rsv[14]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badrx_rsv_reg[15] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badrx[15]),
        .Q(pc0_badrx_rsv[15]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badrx_rsv_reg[1] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badrx[1]),
        .Q(pc0_badrx_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badrx_rsv_reg[2] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badrx[2]),
        .Q(pc0_badrx_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badrx_rsv_reg[3] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badrx[3]),
        .Q(pc0_badrx_rsv[3]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badrx_rsv_reg[4] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badrx[4]),
        .Q(pc0_badrx_rsv[4]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badrx_rsv_reg[5] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badrx[5]),
        .Q(pc0_badrx_rsv[5]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badrx_rsv_reg[6] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badrx[6]),
        .Q(pc0_badrx_rsv[6]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badrx_rsv_reg[7] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badrx[7]),
        .Q(pc0_badrx_rsv[7]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badrx_rsv_reg[8] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badrx[8]),
        .Q(pc0_badrx_rsv[8]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_badrx_rsv_reg[9] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_badrx[9]),
        .Q(pc0_badrx_rsv[9]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_bcmd_rsv_reg[0] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_bcmd[0]),
        .Q(pc0_bcmd_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_bcmd_rsv_reg[1] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_bcmd[1]),
        .Q(pc0_bcmd_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc0_bcmd_rsv_reg[2] 
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_bcmd[2]),
        .Q(pc0_bcmd_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \pc0_bdatr[0]_INST_0 
       (.I0(bdatr[0]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc0_bdatr[0]));
  LUT4 #(
    .INIT(16'h0002)) 
    \pc0_bdatr[10]_INST_0 
       (.I0(bdatr[10]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc0_bdatr[10]));
  LUT4 #(
    .INIT(16'h0002)) 
    \pc0_bdatr[11]_INST_0 
       (.I0(bdatr[11]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc0_bdatr[11]));
  LUT4 #(
    .INIT(16'h0002)) 
    \pc0_bdatr[12]_INST_0 
       (.I0(bdatr[12]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc0_bdatr[12]));
  LUT4 #(
    .INIT(16'h0002)) 
    \pc0_bdatr[13]_INST_0 
       (.I0(bdatr[13]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc0_bdatr[13]));
  LUT4 #(
    .INIT(16'h0002)) 
    \pc0_bdatr[14]_INST_0 
       (.I0(bdatr[14]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc0_bdatr[14]));
  LUT4 #(
    .INIT(16'h0002)) 
    \pc0_bdatr[15]_INST_0 
       (.I0(bdatr[15]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc0_bdatr[15]));
  LUT4 #(
    .INIT(16'h0002)) 
    \pc0_bdatr[1]_INST_0 
       (.I0(bdatr[1]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc0_bdatr[1]));
  LUT4 #(
    .INIT(16'h0002)) 
    \pc0_bdatr[2]_INST_0 
       (.I0(bdatr[2]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc0_bdatr[2]));
  LUT4 #(
    .INIT(16'h0002)) 
    \pc0_bdatr[3]_INST_0 
       (.I0(bdatr[3]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc0_bdatr[3]));
  LUT4 #(
    .INIT(16'h0002)) 
    \pc0_bdatr[4]_INST_0 
       (.I0(bdatr[4]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc0_bdatr[4]));
  LUT4 #(
    .INIT(16'h0002)) 
    \pc0_bdatr[5]_INST_0 
       (.I0(bdatr[5]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc0_bdatr[5]));
  LUT4 #(
    .INIT(16'h0002)) 
    \pc0_bdatr[6]_INST_0 
       (.I0(bdatr[6]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc0_bdatr[6]));
  LUT4 #(
    .INIT(16'h0002)) 
    \pc0_bdatr[7]_INST_0 
       (.I0(bdatr[7]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc0_bdatr[7]));
  LUT4 #(
    .INIT(16'h0002)) 
    \pc0_bdatr[8]_INST_0 
       (.I0(bdatr[8]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc0_bdatr[8]));
  LUT4 #(
    .INIT(16'h0002)) 
    \pc0_bdatr[9]_INST_0 
       (.I0(bdatr[9]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc0_bdatr[9]));
  LUT6 #(
    .INIT(64'h0000000001FF0000)) 
    pc0_brdy_INST_0
       (.I0(grnt_id_dp[1]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(pc0_brdy_INST_0_i_1_n_0),
        .I4(brdy),
        .I5(pc0_brdy_rsv),
        .O(pc0_brdy));
  LUT3 #(
    .INIT(8'hEF)) 
    pc0_brdy_INST_0_i_1
       (.I0(\bcmd[2]_INST_0_i_10_n_0 ),
        .I1(\bcmd[2]_INST_0_i_7_n_0 ),
        .I2(\bcmd[2]_INST_0_i_5_n_0 ),
        .O(pc0_brdy_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h20222220)) 
    pc0_brdy_rsv_i_1
       (.I0(pc0_brdy_INST_0_i_1_n_0),
        .I1(pc0_brdy_rsv_i_2_n_0),
        .I2(pc0_brdy_rsv),
        .I3(pc0_bcmd[0]),
        .I4(pc0_bcmd[1]),
        .O(pc0_brdy_rsv0));
  LUT3 #(
    .INIT(8'hFE)) 
    pc0_brdy_rsv_i_2
       (.I0(grnt_id_dp[1]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .O(pc0_brdy_rsv_i_2_n_0));
  FDRE pc0_brdy_rsv_reg
       (.C(clk),
        .CE(\pc0_badr_rsv[15]_i_2_n_0 ),
        .D(pc0_brdy_rsv0),
        .Q(pc0_brdy_rsv),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4440000)) 
    \pc1_badr_rsv[15]_i_1 
       (.I0(pc1_brdy_rsv),
        .I1(pc1_brdy_INST_0_i_1_n_0),
        .I2(\bdatw[14]_INST_0_i_2_n_0 ),
        .I3(\bcmd[2]_INST_0_i_3_n_0 ),
        .I4(brdy),
        .O(\pc1_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badr_rsv_reg[0] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badr[0]),
        .Q(pc1_badr_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badr_rsv_reg[10] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badr[10]),
        .Q(pc1_badr_rsv[10]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badr_rsv_reg[11] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badr[11]),
        .Q(pc1_badr_rsv[11]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badr_rsv_reg[12] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badr[12]),
        .Q(pc1_badr_rsv[12]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badr_rsv_reg[13] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badr[13]),
        .Q(pc1_badr_rsv[13]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badr_rsv_reg[14] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badr[14]),
        .Q(pc1_badr_rsv[14]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badr_rsv_reg[15] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badr[15]),
        .Q(pc1_badr_rsv[15]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badr_rsv_reg[1] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badr[1]),
        .Q(pc1_badr_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badr_rsv_reg[2] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badr[2]),
        .Q(pc1_badr_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badr_rsv_reg[3] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badr[3]),
        .Q(pc1_badr_rsv[3]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badr_rsv_reg[4] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badr[4]),
        .Q(pc1_badr_rsv[4]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badr_rsv_reg[5] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badr[5]),
        .Q(pc1_badr_rsv[5]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badr_rsv_reg[6] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badr[6]),
        .Q(pc1_badr_rsv[6]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badr_rsv_reg[7] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badr[7]),
        .Q(pc1_badr_rsv[7]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badr_rsv_reg[8] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badr[8]),
        .Q(pc1_badr_rsv[8]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badr_rsv_reg[9] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badr[9]),
        .Q(pc1_badr_rsv[9]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badrx_rsv_reg[0] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badrx[0]),
        .Q(pc1_badrx_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badrx_rsv_reg[10] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badrx[10]),
        .Q(pc1_badrx_rsv[10]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badrx_rsv_reg[11] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badrx[11]),
        .Q(pc1_badrx_rsv[11]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badrx_rsv_reg[12] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badrx[12]),
        .Q(pc1_badrx_rsv[12]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badrx_rsv_reg[13] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badrx[13]),
        .Q(pc1_badrx_rsv[13]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badrx_rsv_reg[14] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badrx[14]),
        .Q(pc1_badrx_rsv[14]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badrx_rsv_reg[15] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badrx[15]),
        .Q(pc1_badrx_rsv[15]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badrx_rsv_reg[1] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badrx[1]),
        .Q(pc1_badrx_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badrx_rsv_reg[2] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badrx[2]),
        .Q(pc1_badrx_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badrx_rsv_reg[3] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badrx[3]),
        .Q(pc1_badrx_rsv[3]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badrx_rsv_reg[4] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badrx[4]),
        .Q(pc1_badrx_rsv[4]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badrx_rsv_reg[5] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badrx[5]),
        .Q(pc1_badrx_rsv[5]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badrx_rsv_reg[6] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badrx[6]),
        .Q(pc1_badrx_rsv[6]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badrx_rsv_reg[7] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badrx[7]),
        .Q(pc1_badrx_rsv[7]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badrx_rsv_reg[8] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badrx[8]),
        .Q(pc1_badrx_rsv[8]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_badrx_rsv_reg[9] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_badrx[9]),
        .Q(pc1_badrx_rsv[9]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_bcmd_rsv_reg[0] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_bcmd[0]),
        .Q(pc1_bcmd_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_bcmd_rsv_reg[1] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_bcmd[1]),
        .Q(pc1_bcmd_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc1_bcmd_rsv_reg[2] 
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_bcmd[2]),
        .Q(pc1_bcmd_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc1_bdatr[0]_INST_0 
       (.I0(bdatr[0]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc1_bdatr[0]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc1_bdatr[10]_INST_0 
       (.I0(bdatr[10]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc1_bdatr[10]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc1_bdatr[11]_INST_0 
       (.I0(bdatr[11]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc1_bdatr[11]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc1_bdatr[12]_INST_0 
       (.I0(bdatr[12]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc1_bdatr[12]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc1_bdatr[13]_INST_0 
       (.I0(bdatr[13]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc1_bdatr[13]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc1_bdatr[14]_INST_0 
       (.I0(bdatr[14]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc1_bdatr[14]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc1_bdatr[15]_INST_0 
       (.I0(bdatr[15]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc1_bdatr[15]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc1_bdatr[1]_INST_0 
       (.I0(bdatr[1]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc1_bdatr[1]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc1_bdatr[2]_INST_0 
       (.I0(bdatr[2]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc1_bdatr[2]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc1_bdatr[3]_INST_0 
       (.I0(bdatr[3]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc1_bdatr[3]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc1_bdatr[4]_INST_0 
       (.I0(bdatr[4]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc1_bdatr[4]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc1_bdatr[5]_INST_0 
       (.I0(bdatr[5]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc1_bdatr[5]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc1_bdatr[6]_INST_0 
       (.I0(bdatr[6]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc1_bdatr[6]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc1_bdatr[7]_INST_0 
       (.I0(bdatr[7]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc1_bdatr[7]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc1_bdatr[8]_INST_0 
       (.I0(bdatr[8]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc1_bdatr[8]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc1_bdatr[9]_INST_0 
       (.I0(bdatr[9]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc1_bdatr[9]));
  LUT5 #(
    .INIT(32'h0000EA00)) 
    pc1_brdy_INST_0
       (.I0(pc1_brdy_INST_0_i_1_n_0),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(brdy),
        .I4(pc1_brdy_rsv),
        .O(pc1_brdy));
  LUT3 #(
    .INIT(8'h04)) 
    pc1_brdy_INST_0_i_1
       (.I0(grnt_id_dp[1]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .O(pc1_brdy_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000BE00BE00BE00)) 
    pc1_brdy_rsv_i_1
       (.I0(pc1_brdy_rsv),
        .I1(pc1_bcmd[0]),
        .I2(pc1_bcmd[1]),
        .I3(pc1_brdy_INST_0_i_1_n_0),
        .I4(\bcmd[2]_INST_0_i_3_n_0 ),
        .I5(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(pc1_brdy_rsv0));
  FDRE pc1_brdy_rsv_reg
       (.C(clk),
        .CE(\pc1_badr_rsv[15]_i_1_n_0 ),
        .D(pc1_brdy_rsv0),
        .Q(pc1_brdy_rsv),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00000000)) 
    \pc2_badr_rsv[15]_i_1 
       (.I0(pc2_brdy_rsv),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .I4(pc2_brdy_INST_0_i_1_n_0),
        .I5(brdy),
        .O(\pc2_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badr_rsv_reg[0] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badr[0]),
        .Q(pc2_badr_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badr_rsv_reg[10] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badr[10]),
        .Q(pc2_badr_rsv[10]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badr_rsv_reg[11] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badr[11]),
        .Q(pc2_badr_rsv[11]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badr_rsv_reg[12] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badr[12]),
        .Q(pc2_badr_rsv[12]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badr_rsv_reg[13] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badr[13]),
        .Q(pc2_badr_rsv[13]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badr_rsv_reg[14] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badr[14]),
        .Q(pc2_badr_rsv[14]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badr_rsv_reg[15] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badr[15]),
        .Q(pc2_badr_rsv[15]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badr_rsv_reg[1] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badr[1]),
        .Q(pc2_badr_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badr_rsv_reg[2] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badr[2]),
        .Q(pc2_badr_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badr_rsv_reg[3] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badr[3]),
        .Q(pc2_badr_rsv[3]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badr_rsv_reg[4] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badr[4]),
        .Q(pc2_badr_rsv[4]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badr_rsv_reg[5] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badr[5]),
        .Q(pc2_badr_rsv[5]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badr_rsv_reg[6] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badr[6]),
        .Q(pc2_badr_rsv[6]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badr_rsv_reg[7] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badr[7]),
        .Q(pc2_badr_rsv[7]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badr_rsv_reg[8] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badr[8]),
        .Q(pc2_badr_rsv[8]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badr_rsv_reg[9] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badr[9]),
        .Q(pc2_badr_rsv[9]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badrx_rsv_reg[0] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badrx[0]),
        .Q(pc2_badrx_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badrx_rsv_reg[10] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badrx[10]),
        .Q(pc2_badrx_rsv[10]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badrx_rsv_reg[11] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badrx[11]),
        .Q(pc2_badrx_rsv[11]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badrx_rsv_reg[12] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badrx[12]),
        .Q(pc2_badrx_rsv[12]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badrx_rsv_reg[13] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badrx[13]),
        .Q(pc2_badrx_rsv[13]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badrx_rsv_reg[14] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badrx[14]),
        .Q(pc2_badrx_rsv[14]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badrx_rsv_reg[15] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badrx[15]),
        .Q(pc2_badrx_rsv[15]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badrx_rsv_reg[1] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badrx[1]),
        .Q(pc2_badrx_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badrx_rsv_reg[2] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badrx[2]),
        .Q(pc2_badrx_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badrx_rsv_reg[3] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badrx[3]),
        .Q(pc2_badrx_rsv[3]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badrx_rsv_reg[4] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badrx[4]),
        .Q(pc2_badrx_rsv[4]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badrx_rsv_reg[5] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badrx[5]),
        .Q(pc2_badrx_rsv[5]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badrx_rsv_reg[6] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badrx[6]),
        .Q(pc2_badrx_rsv[6]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badrx_rsv_reg[7] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badrx[7]),
        .Q(pc2_badrx_rsv[7]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badrx_rsv_reg[8] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badrx[8]),
        .Q(pc2_badrx_rsv[8]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_badrx_rsv_reg[9] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_badrx[9]),
        .Q(pc2_badrx_rsv[9]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_bcmd_rsv_reg[0] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_bcmd[0]),
        .Q(pc2_bcmd_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_bcmd_rsv_reg[1] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_bcmd[1]),
        .Q(pc2_bcmd_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc2_bcmd_rsv_reg[2] 
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_bcmd[2]),
        .Q(pc2_bcmd_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc2_bdatr[0]_INST_0 
       (.I0(bdatr[0]),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .O(pc2_bdatr[0]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc2_bdatr[10]_INST_0 
       (.I0(bdatr[10]),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .O(pc2_bdatr[10]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc2_bdatr[11]_INST_0 
       (.I0(bdatr[11]),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .O(pc2_bdatr[11]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc2_bdatr[12]_INST_0 
       (.I0(bdatr[12]),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .O(pc2_bdatr[12]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc2_bdatr[13]_INST_0 
       (.I0(bdatr[13]),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .O(pc2_bdatr[13]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc2_bdatr[14]_INST_0 
       (.I0(bdatr[14]),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .O(pc2_bdatr[14]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc2_bdatr[15]_INST_0 
       (.I0(bdatr[15]),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .O(pc2_bdatr[15]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc2_bdatr[1]_INST_0 
       (.I0(bdatr[1]),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .O(pc2_bdatr[1]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc2_bdatr[2]_INST_0 
       (.I0(bdatr[2]),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .O(pc2_bdatr[2]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc2_bdatr[3]_INST_0 
       (.I0(bdatr[3]),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .O(pc2_bdatr[3]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc2_bdatr[4]_INST_0 
       (.I0(bdatr[4]),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .O(pc2_bdatr[4]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc2_bdatr[5]_INST_0 
       (.I0(bdatr[5]),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .O(pc2_bdatr[5]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc2_bdatr[6]_INST_0 
       (.I0(bdatr[6]),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .O(pc2_bdatr[6]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc2_bdatr[7]_INST_0 
       (.I0(bdatr[7]),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .O(pc2_bdatr[7]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc2_bdatr[8]_INST_0 
       (.I0(bdatr[8]),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .O(pc2_bdatr[8]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc2_bdatr[9]_INST_0 
       (.I0(bdatr[9]),
        .I1(grnt_id_dp[1]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[2]),
        .O(pc2_bdatr[9]));
  LUT6 #(
    .INIT(64'h0000000010FF0000)) 
    pc2_brdy_INST_0
       (.I0(grnt_id_dp[2]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[1]),
        .I3(pc2_brdy_INST_0_i_1_n_0),
        .I4(brdy),
        .I5(pc2_brdy_rsv),
        .O(pc2_brdy));
  LUT3 #(
    .INIT(8'hFE)) 
    pc2_brdy_INST_0_i_1
       (.I0(\bcmd[2]_INST_0_i_10_n_0 ),
        .I1(\bcmd[2]_INST_0_i_5_n_0 ),
        .I2(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(pc2_brdy_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h20222220)) 
    pc2_brdy_rsv_i_1
       (.I0(pc2_brdy_INST_0_i_1_n_0),
        .I1(pc2_brdy_rsv_i_2_n_0),
        .I2(pc2_brdy_rsv),
        .I3(pc2_bcmd[0]),
        .I4(pc2_bcmd[1]),
        .O(pc2_brdy_rsv0));
  LUT3 #(
    .INIT(8'hEF)) 
    pc2_brdy_rsv_i_2
       (.I0(grnt_id_dp[2]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[1]),
        .O(pc2_brdy_rsv_i_2_n_0));
  FDRE pc2_brdy_rsv_reg
       (.C(clk),
        .CE(\pc2_badr_rsv[15]_i_1_n_0 ),
        .D(pc2_brdy_rsv0),
        .Q(pc2_brdy_rsv),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF100000000000)) 
    \pc3_badr_rsv[15]_i_1 
       (.I0(pc3_brdy_rsv),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .I4(pc3_brdy_INST_0_i_1_n_0),
        .I5(brdy),
        .O(\pc3_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badr_rsv_reg[0] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badr[0]),
        .Q(pc3_badr_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badr_rsv_reg[10] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badr[10]),
        .Q(pc3_badr_rsv[10]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badr_rsv_reg[11] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badr[11]),
        .Q(pc3_badr_rsv[11]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badr_rsv_reg[12] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badr[12]),
        .Q(pc3_badr_rsv[12]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badr_rsv_reg[13] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badr[13]),
        .Q(pc3_badr_rsv[13]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badr_rsv_reg[14] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badr[14]),
        .Q(pc3_badr_rsv[14]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badr_rsv_reg[15] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badr[15]),
        .Q(pc3_badr_rsv[15]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badr_rsv_reg[1] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badr[1]),
        .Q(pc3_badr_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badr_rsv_reg[2] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badr[2]),
        .Q(pc3_badr_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badr_rsv_reg[3] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badr[3]),
        .Q(pc3_badr_rsv[3]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badr_rsv_reg[4] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badr[4]),
        .Q(pc3_badr_rsv[4]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badr_rsv_reg[5] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badr[5]),
        .Q(pc3_badr_rsv[5]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badr_rsv_reg[6] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badr[6]),
        .Q(pc3_badr_rsv[6]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badr_rsv_reg[7] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badr[7]),
        .Q(pc3_badr_rsv[7]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badr_rsv_reg[8] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badr[8]),
        .Q(pc3_badr_rsv[8]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badr_rsv_reg[9] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badr[9]),
        .Q(pc3_badr_rsv[9]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badrx_rsv_reg[0] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badrx[0]),
        .Q(pc3_badrx_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badrx_rsv_reg[10] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badrx[10]),
        .Q(pc3_badrx_rsv[10]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badrx_rsv_reg[11] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badrx[11]),
        .Q(pc3_badrx_rsv[11]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badrx_rsv_reg[12] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badrx[12]),
        .Q(pc3_badrx_rsv[12]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badrx_rsv_reg[13] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badrx[13]),
        .Q(pc3_badrx_rsv[13]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badrx_rsv_reg[14] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badrx[14]),
        .Q(pc3_badrx_rsv[14]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badrx_rsv_reg[15] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badrx[15]),
        .Q(pc3_badrx_rsv[15]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badrx_rsv_reg[1] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badrx[1]),
        .Q(pc3_badrx_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badrx_rsv_reg[2] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badrx[2]),
        .Q(pc3_badrx_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badrx_rsv_reg[3] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badrx[3]),
        .Q(pc3_badrx_rsv[3]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badrx_rsv_reg[4] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badrx[4]),
        .Q(pc3_badrx_rsv[4]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badrx_rsv_reg[5] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badrx[5]),
        .Q(pc3_badrx_rsv[5]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badrx_rsv_reg[6] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badrx[6]),
        .Q(pc3_badrx_rsv[6]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badrx_rsv_reg[7] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badrx[7]),
        .Q(pc3_badrx_rsv[7]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badrx_rsv_reg[8] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badrx[8]),
        .Q(pc3_badrx_rsv[8]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_badrx_rsv_reg[9] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_badrx[9]),
        .Q(pc3_badrx_rsv[9]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_bcmd_rsv_reg[0] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_bcmd[0]),
        .Q(pc3_bcmd_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_bcmd_rsv_reg[1] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_bcmd[1]),
        .Q(pc3_bcmd_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc3_bcmd_rsv_reg[2] 
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_bcmd[2]),
        .Q(pc3_bcmd_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc3_bdatr[0]_INST_0 
       (.I0(bdatr[0]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc3_bdatr[0]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc3_bdatr[10]_INST_0 
       (.I0(bdatr[10]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc3_bdatr[10]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc3_bdatr[11]_INST_0 
       (.I0(bdatr[11]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc3_bdatr[11]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc3_bdatr[12]_INST_0 
       (.I0(bdatr[12]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc3_bdatr[12]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc3_bdatr[13]_INST_0 
       (.I0(bdatr[13]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc3_bdatr[13]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc3_bdatr[14]_INST_0 
       (.I0(bdatr[14]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc3_bdatr[14]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc3_bdatr[15]_INST_0 
       (.I0(bdatr[15]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc3_bdatr[15]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc3_bdatr[1]_INST_0 
       (.I0(bdatr[1]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc3_bdatr[1]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc3_bdatr[2]_INST_0 
       (.I0(bdatr[2]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc3_bdatr[2]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc3_bdatr[3]_INST_0 
       (.I0(bdatr[3]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc3_bdatr[3]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc3_bdatr[4]_INST_0 
       (.I0(bdatr[4]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc3_bdatr[4]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc3_bdatr[5]_INST_0 
       (.I0(bdatr[5]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc3_bdatr[5]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc3_bdatr[6]_INST_0 
       (.I0(bdatr[6]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc3_bdatr[6]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc3_bdatr[7]_INST_0 
       (.I0(bdatr[7]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc3_bdatr[7]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc3_bdatr[8]_INST_0 
       (.I0(bdatr[8]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc3_bdatr[8]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc3_bdatr[9]_INST_0 
       (.I0(bdatr[9]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(grnt_id_dp[1]),
        .O(pc3_bdatr[9]));
  LUT6 #(
    .INIT(64'h00000000FF080000)) 
    pc3_brdy_INST_0
       (.I0(grnt_id_dp[1]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(pc3_brdy_INST_0_i_1_n_0),
        .I4(brdy),
        .I5(pc3_brdy_rsv),
        .O(pc3_brdy));
  LUT3 #(
    .INIT(8'h10)) 
    pc3_brdy_INST_0_i_1
       (.I0(\bcmd[2]_INST_0_i_10_n_0 ),
        .I1(pc3_brdy_INST_0_i_2_n_0),
        .I2(\bcmd[2]_INST_0_i_7_n_0 ),
        .O(pc3_brdy_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h200220022002FFFF)) 
    pc3_brdy_INST_0_i_2
       (.I0(\bdatw[14]_INST_0_i_11_n_0 ),
        .I1(pc2_brdy_rsv),
        .I2(pc2_bcmd[0]),
        .I3(pc2_bcmd[1]),
        .I4(\bcmd[2]_INST_0_i_13_n_0 ),
        .I5(\arb_cnt_reg_n_0_[1] ),
        .O(pc3_brdy_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h0000BE00)) 
    pc3_brdy_rsv_i_1
       (.I0(pc3_brdy_rsv),
        .I1(pc3_bcmd[0]),
        .I2(pc3_bcmd[1]),
        .I3(pc3_brdy_rsv_i_2_n_0),
        .I4(pc3_brdy_INST_0_i_1_n_0),
        .O(pc3_brdy_rsv0));
  LUT3 #(
    .INIT(8'h08)) 
    pc3_brdy_rsv_i_2
       (.I0(grnt_id_dp[1]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .O(pc3_brdy_rsv_i_2_n_0));
  FDRE pc3_brdy_rsv_reg
       (.C(clk),
        .CE(\pc3_badr_rsv[15]_i_1_n_0 ),
        .D(pc3_brdy_rsv0),
        .Q(pc3_brdy_rsv),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFF00000000)) 
    \pc4_badr_rsv[15]_i_1 
       (.I0(pc4_brdy_rsv),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .I4(pc4_brdy_INST_0_i_1_n_0),
        .I5(brdy),
        .O(\pc4_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badr_rsv_reg[0] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badr[0]),
        .Q(pc4_badr_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badr_rsv_reg[10] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badr[10]),
        .Q(pc4_badr_rsv[10]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badr_rsv_reg[11] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badr[11]),
        .Q(pc4_badr_rsv[11]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badr_rsv_reg[12] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badr[12]),
        .Q(pc4_badr_rsv[12]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badr_rsv_reg[13] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badr[13]),
        .Q(pc4_badr_rsv[13]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badr_rsv_reg[14] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badr[14]),
        .Q(pc4_badr_rsv[14]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badr_rsv_reg[15] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badr[15]),
        .Q(pc4_badr_rsv[15]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badr_rsv_reg[1] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badr[1]),
        .Q(pc4_badr_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badr_rsv_reg[2] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badr[2]),
        .Q(pc4_badr_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badr_rsv_reg[3] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badr[3]),
        .Q(pc4_badr_rsv[3]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badr_rsv_reg[4] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badr[4]),
        .Q(pc4_badr_rsv[4]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badr_rsv_reg[5] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badr[5]),
        .Q(pc4_badr_rsv[5]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badr_rsv_reg[6] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badr[6]),
        .Q(pc4_badr_rsv[6]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badr_rsv_reg[7] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badr[7]),
        .Q(pc4_badr_rsv[7]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badr_rsv_reg[8] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badr[8]),
        .Q(pc4_badr_rsv[8]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badr_rsv_reg[9] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badr[9]),
        .Q(pc4_badr_rsv[9]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badrx_rsv_reg[0] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badrx[0]),
        .Q(pc4_badrx_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badrx_rsv_reg[10] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badrx[10]),
        .Q(pc4_badrx_rsv[10]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badrx_rsv_reg[11] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badrx[11]),
        .Q(pc4_badrx_rsv[11]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badrx_rsv_reg[12] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badrx[12]),
        .Q(pc4_badrx_rsv[12]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badrx_rsv_reg[13] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badrx[13]),
        .Q(pc4_badrx_rsv[13]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badrx_rsv_reg[14] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badrx[14]),
        .Q(pc4_badrx_rsv[14]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badrx_rsv_reg[15] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badrx[15]),
        .Q(pc4_badrx_rsv[15]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badrx_rsv_reg[1] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badrx[1]),
        .Q(pc4_badrx_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badrx_rsv_reg[2] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badrx[2]),
        .Q(pc4_badrx_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badrx_rsv_reg[3] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badrx[3]),
        .Q(pc4_badrx_rsv[3]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badrx_rsv_reg[4] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badrx[4]),
        .Q(pc4_badrx_rsv[4]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badrx_rsv_reg[5] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badrx[5]),
        .Q(pc4_badrx_rsv[5]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badrx_rsv_reg[6] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badrx[6]),
        .Q(pc4_badrx_rsv[6]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badrx_rsv_reg[7] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badrx[7]),
        .Q(pc4_badrx_rsv[7]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badrx_rsv_reg[8] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badrx[8]),
        .Q(pc4_badrx_rsv[8]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_badrx_rsv_reg[9] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_badrx[9]),
        .Q(pc4_badrx_rsv[9]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_bcmd_rsv_reg[0] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_bcmd[0]),
        .Q(pc4_bcmd_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_bcmd_rsv_reg[1] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_bcmd[1]),
        .Q(pc4_bcmd_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc4_bcmd_rsv_reg[2] 
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_bcmd[2]),
        .Q(pc4_bcmd_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc4_bdatr[0]_INST_0 
       (.I0(bdatr[0]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc4_bdatr[0]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc4_bdatr[10]_INST_0 
       (.I0(bdatr[10]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc4_bdatr[10]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc4_bdatr[11]_INST_0 
       (.I0(bdatr[11]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc4_bdatr[11]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc4_bdatr[12]_INST_0 
       (.I0(bdatr[12]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc4_bdatr[12]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc4_bdatr[13]_INST_0 
       (.I0(bdatr[13]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc4_bdatr[13]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc4_bdatr[14]_INST_0 
       (.I0(bdatr[14]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc4_bdatr[14]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc4_bdatr[15]_INST_0 
       (.I0(bdatr[15]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc4_bdatr[15]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc4_bdatr[1]_INST_0 
       (.I0(bdatr[1]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc4_bdatr[1]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc4_bdatr[2]_INST_0 
       (.I0(bdatr[2]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc4_bdatr[2]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc4_bdatr[3]_INST_0 
       (.I0(bdatr[3]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc4_bdatr[3]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc4_bdatr[4]_INST_0 
       (.I0(bdatr[4]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc4_bdatr[4]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc4_bdatr[5]_INST_0 
       (.I0(bdatr[5]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc4_bdatr[5]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc4_bdatr[6]_INST_0 
       (.I0(bdatr[6]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc4_bdatr[6]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc4_bdatr[7]_INST_0 
       (.I0(bdatr[7]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc4_bdatr[7]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc4_bdatr[8]_INST_0 
       (.I0(bdatr[8]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc4_bdatr[8]));
  LUT4 #(
    .INIT(16'h0020)) 
    \pc4_bdatr[9]_INST_0 
       (.I0(bdatr[9]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc4_bdatr[9]));
  LUT6 #(
    .INIT(64'h0000000004FF0000)) 
    pc4_brdy_INST_0
       (.I0(grnt_id_dp[1]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(pc4_brdy_INST_0_i_1_n_0),
        .I4(brdy),
        .I5(pc4_brdy_rsv),
        .O(pc4_brdy));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFABABAB)) 
    pc4_brdy_INST_0_i_1
       (.I0(\bdatw[14]_INST_0_i_7_n_0 ),
        .I1(pc4_brdy_INST_0_i_2_n_0),
        .I2(\arb_cnt_reg_n_0_[2] ),
        .I3(\bcmd[2]_INST_0_i_15_n_0 ),
        .I4(\arb_cnt_reg_n_0_[1] ),
        .I5(\bcmd[2]_INST_0_i_16_n_0 ),
        .O(pc4_brdy_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h00002002)) 
    pc4_brdy_INST_0_i_2
       (.I0(\bdatw[14]_INST_0_i_13_n_0 ),
        .I1(pc0_brdy_rsv),
        .I2(pc0_bcmd[0]),
        .I3(pc0_bcmd[1]),
        .I4(\bcmd[2]_INST_0_i_14_n_0 ),
        .O(pc4_brdy_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h20222220)) 
    pc4_brdy_rsv_i_1
       (.I0(pc4_brdy_INST_0_i_1_n_0),
        .I1(pc4_brdy_rsv_i_2_n_0),
        .I2(pc4_brdy_rsv),
        .I3(pc4_bcmd[0]),
        .I4(pc4_bcmd[1]),
        .O(pc4_brdy_rsv0));
  LUT3 #(
    .INIT(8'hFB)) 
    pc4_brdy_rsv_i_2
       (.I0(grnt_id_dp[1]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .O(pc4_brdy_rsv_i_2_n_0));
  FDRE pc4_brdy_rsv_reg
       (.C(clk),
        .CE(\pc4_badr_rsv[15]_i_1_n_0 ),
        .D(pc4_brdy_rsv0),
        .Q(pc4_brdy_rsv),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00000000)) 
    \pc5_badr_rsv[15]_i_1 
       (.I0(pc5_brdy_rsv),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .I4(pc5_brdy_INST_0_i_1_n_0),
        .I5(brdy),
        .O(\pc5_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badr_rsv_reg[0] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badr[0]),
        .Q(pc5_badr_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badr_rsv_reg[10] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badr[10]),
        .Q(pc5_badr_rsv[10]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badr_rsv_reg[11] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badr[11]),
        .Q(pc5_badr_rsv[11]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badr_rsv_reg[12] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badr[12]),
        .Q(pc5_badr_rsv[12]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badr_rsv_reg[13] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badr[13]),
        .Q(pc5_badr_rsv[13]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badr_rsv_reg[14] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badr[14]),
        .Q(pc5_badr_rsv[14]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badr_rsv_reg[15] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badr[15]),
        .Q(pc5_badr_rsv[15]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badr_rsv_reg[1] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badr[1]),
        .Q(pc5_badr_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badr_rsv_reg[2] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badr[2]),
        .Q(pc5_badr_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badr_rsv_reg[3] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badr[3]),
        .Q(pc5_badr_rsv[3]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badr_rsv_reg[4] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badr[4]),
        .Q(pc5_badr_rsv[4]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badr_rsv_reg[5] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badr[5]),
        .Q(pc5_badr_rsv[5]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badr_rsv_reg[6] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badr[6]),
        .Q(pc5_badr_rsv[6]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badr_rsv_reg[7] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badr[7]),
        .Q(pc5_badr_rsv[7]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badr_rsv_reg[8] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badr[8]),
        .Q(pc5_badr_rsv[8]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badr_rsv_reg[9] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badr[9]),
        .Q(pc5_badr_rsv[9]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badrx_rsv_reg[0] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badrx[0]),
        .Q(pc5_badrx_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badrx_rsv_reg[10] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badrx[10]),
        .Q(pc5_badrx_rsv[10]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badrx_rsv_reg[11] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badrx[11]),
        .Q(pc5_badrx_rsv[11]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badrx_rsv_reg[12] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badrx[12]),
        .Q(pc5_badrx_rsv[12]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badrx_rsv_reg[13] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badrx[13]),
        .Q(pc5_badrx_rsv[13]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badrx_rsv_reg[14] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badrx[14]),
        .Q(pc5_badrx_rsv[14]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badrx_rsv_reg[15] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badrx[15]),
        .Q(pc5_badrx_rsv[15]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badrx_rsv_reg[1] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badrx[1]),
        .Q(pc5_badrx_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badrx_rsv_reg[2] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badrx[2]),
        .Q(pc5_badrx_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badrx_rsv_reg[3] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badrx[3]),
        .Q(pc5_badrx_rsv[3]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badrx_rsv_reg[4] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badrx[4]),
        .Q(pc5_badrx_rsv[4]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badrx_rsv_reg[5] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badrx[5]),
        .Q(pc5_badrx_rsv[5]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badrx_rsv_reg[6] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badrx[6]),
        .Q(pc5_badrx_rsv[6]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badrx_rsv_reg[7] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badrx[7]),
        .Q(pc5_badrx_rsv[7]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badrx_rsv_reg[8] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badrx[8]),
        .Q(pc5_badrx_rsv[8]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_badrx_rsv_reg[9] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_badrx[9]),
        .Q(pc5_badrx_rsv[9]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_bcmd_rsv_reg[0] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_bcmd[0]),
        .Q(pc5_bcmd_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_bcmd_rsv_reg[1] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_bcmd[1]),
        .Q(pc5_bcmd_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc5_bcmd_rsv_reg[2] 
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_bcmd[2]),
        .Q(pc5_bcmd_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \pc5_bdatr[0]_INST_0 
       (.I0(bdatr[0]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc5_bdatr[0]));
  LUT4 #(
    .INIT(16'h0080)) 
    \pc5_bdatr[10]_INST_0 
       (.I0(bdatr[10]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc5_bdatr[10]));
  LUT4 #(
    .INIT(16'h0080)) 
    \pc5_bdatr[11]_INST_0 
       (.I0(bdatr[11]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc5_bdatr[11]));
  LUT4 #(
    .INIT(16'h0080)) 
    \pc5_bdatr[12]_INST_0 
       (.I0(bdatr[12]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc5_bdatr[12]));
  LUT4 #(
    .INIT(16'h0080)) 
    \pc5_bdatr[13]_INST_0 
       (.I0(bdatr[13]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc5_bdatr[13]));
  LUT4 #(
    .INIT(16'h0080)) 
    \pc5_bdatr[14]_INST_0 
       (.I0(bdatr[14]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc5_bdatr[14]));
  LUT4 #(
    .INIT(16'h0080)) 
    \pc5_bdatr[15]_INST_0 
       (.I0(bdatr[15]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc5_bdatr[15]));
  LUT4 #(
    .INIT(16'h0080)) 
    \pc5_bdatr[1]_INST_0 
       (.I0(bdatr[1]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc5_bdatr[1]));
  LUT4 #(
    .INIT(16'h0080)) 
    \pc5_bdatr[2]_INST_0 
       (.I0(bdatr[2]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc5_bdatr[2]));
  LUT4 #(
    .INIT(16'h0080)) 
    \pc5_bdatr[3]_INST_0 
       (.I0(bdatr[3]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc5_bdatr[3]));
  LUT4 #(
    .INIT(16'h0080)) 
    \pc5_bdatr[4]_INST_0 
       (.I0(bdatr[4]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc5_bdatr[4]));
  LUT4 #(
    .INIT(16'h0080)) 
    \pc5_bdatr[5]_INST_0 
       (.I0(bdatr[5]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc5_bdatr[5]));
  LUT4 #(
    .INIT(16'h0080)) 
    \pc5_bdatr[6]_INST_0 
       (.I0(bdatr[6]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc5_bdatr[6]));
  LUT4 #(
    .INIT(16'h0080)) 
    \pc5_bdatr[7]_INST_0 
       (.I0(bdatr[7]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc5_bdatr[7]));
  LUT4 #(
    .INIT(16'h0080)) 
    \pc5_bdatr[8]_INST_0 
       (.I0(bdatr[8]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc5_bdatr[8]));
  LUT4 #(
    .INIT(16'h0080)) 
    \pc5_bdatr[9]_INST_0 
       (.I0(bdatr[9]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc5_bdatr[9]));
  LUT6 #(
    .INIT(64'h0000000040FF0000)) 
    pc5_brdy_INST_0
       (.I0(grnt_id_dp[1]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(pc5_brdy_INST_0_i_1_n_0),
        .I4(brdy),
        .I5(pc5_brdy_rsv),
        .O(pc5_brdy));
  LUT2 #(
    .INIT(4'h7)) 
    pc5_brdy_INST_0_i_1
       (.I0(\bcmd[2]_INST_0_i_10_n_0 ),
        .I1(\bdatw[14]_INST_0_i_7_n_0 ),
        .O(pc5_brdy_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h20222220)) 
    pc5_brdy_rsv_i_1
       (.I0(pc5_brdy_INST_0_i_1_n_0),
        .I1(pc5_brdy_rsv_i_2_n_0),
        .I2(pc5_brdy_rsv),
        .I3(pc5_bcmd[0]),
        .I4(pc5_bcmd[1]),
        .O(pc5_brdy_rsv0));
  LUT3 #(
    .INIT(8'hBF)) 
    pc5_brdy_rsv_i_2
       (.I0(grnt_id_dp[1]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .O(pc5_brdy_rsv_i_2_n_0));
  FDRE pc5_brdy_rsv_reg
       (.C(clk),
        .CE(\pc5_badr_rsv[15]_i_1_n_0 ),
        .D(pc5_brdy_rsv0),
        .Q(pc5_brdy_rsv),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF100000000000)) 
    \pc6_badr_rsv[15]_i_1 
       (.I0(pc6_brdy_rsv),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .I4(pc6_brdy_INST_0_i_1_n_0),
        .I5(brdy),
        .O(\pc6_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badr_rsv_reg[0] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badr[0]),
        .Q(pc6_badr_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badr_rsv_reg[10] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badr[10]),
        .Q(pc6_badr_rsv[10]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badr_rsv_reg[11] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badr[11]),
        .Q(pc6_badr_rsv[11]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badr_rsv_reg[12] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badr[12]),
        .Q(pc6_badr_rsv[12]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badr_rsv_reg[13] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badr[13]),
        .Q(pc6_badr_rsv[13]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badr_rsv_reg[14] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badr[14]),
        .Q(pc6_badr_rsv[14]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badr_rsv_reg[15] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badr[15]),
        .Q(pc6_badr_rsv[15]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badr_rsv_reg[1] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badr[1]),
        .Q(pc6_badr_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badr_rsv_reg[2] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badr[2]),
        .Q(pc6_badr_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badr_rsv_reg[3] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badr[3]),
        .Q(pc6_badr_rsv[3]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badr_rsv_reg[4] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badr[4]),
        .Q(pc6_badr_rsv[4]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badr_rsv_reg[5] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badr[5]),
        .Q(pc6_badr_rsv[5]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badr_rsv_reg[6] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badr[6]),
        .Q(pc6_badr_rsv[6]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badr_rsv_reg[7] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badr[7]),
        .Q(pc6_badr_rsv[7]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badr_rsv_reg[8] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badr[8]),
        .Q(pc6_badr_rsv[8]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badr_rsv_reg[9] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badr[9]),
        .Q(pc6_badr_rsv[9]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badrx_rsv_reg[0] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badrx[0]),
        .Q(pc6_badrx_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badrx_rsv_reg[10] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badrx[10]),
        .Q(pc6_badrx_rsv[10]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badrx_rsv_reg[11] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badrx[11]),
        .Q(pc6_badrx_rsv[11]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badrx_rsv_reg[12] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badrx[12]),
        .Q(pc6_badrx_rsv[12]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badrx_rsv_reg[13] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badrx[13]),
        .Q(pc6_badrx_rsv[13]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badrx_rsv_reg[14] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badrx[14]),
        .Q(pc6_badrx_rsv[14]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badrx_rsv_reg[15] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badrx[15]),
        .Q(pc6_badrx_rsv[15]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badrx_rsv_reg[1] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badrx[1]),
        .Q(pc6_badrx_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badrx_rsv_reg[2] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badrx[2]),
        .Q(pc6_badrx_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badrx_rsv_reg[3] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badrx[3]),
        .Q(pc6_badrx_rsv[3]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badrx_rsv_reg[4] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badrx[4]),
        .Q(pc6_badrx_rsv[4]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badrx_rsv_reg[5] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badrx[5]),
        .Q(pc6_badrx_rsv[5]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badrx_rsv_reg[6] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badrx[6]),
        .Q(pc6_badrx_rsv[6]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badrx_rsv_reg[7] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badrx[7]),
        .Q(pc6_badrx_rsv[7]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badrx_rsv_reg[8] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badrx[8]),
        .Q(pc6_badrx_rsv[8]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_badrx_rsv_reg[9] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_badrx[9]),
        .Q(pc6_badrx_rsv[9]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_bcmd_rsv_reg[0] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_bcmd[0]),
        .Q(pc6_bcmd_rsv[0]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_bcmd_rsv_reg[1] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_bcmd[1]),
        .Q(pc6_bcmd_rsv[1]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  FDRE \pc6_bcmd_rsv_reg[2] 
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_bcmd[2]),
        .Q(pc6_bcmd_rsv[2]),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc6_bdatr[0]_INST_0 
       (.I0(bdatr[0]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc6_bdatr[0]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc6_bdatr[10]_INST_0 
       (.I0(bdatr[10]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc6_bdatr[10]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc6_bdatr[11]_INST_0 
       (.I0(bdatr[11]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc6_bdatr[11]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc6_bdatr[12]_INST_0 
       (.I0(bdatr[12]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc6_bdatr[12]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc6_bdatr[13]_INST_0 
       (.I0(bdatr[13]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc6_bdatr[13]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc6_bdatr[14]_INST_0 
       (.I0(bdatr[14]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc6_bdatr[14]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc6_bdatr[15]_INST_0 
       (.I0(bdatr[15]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc6_bdatr[15]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc6_bdatr[1]_INST_0 
       (.I0(bdatr[1]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc6_bdatr[1]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc6_bdatr[2]_INST_0 
       (.I0(bdatr[2]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc6_bdatr[2]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc6_bdatr[3]_INST_0 
       (.I0(bdatr[3]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc6_bdatr[3]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc6_bdatr[4]_INST_0 
       (.I0(bdatr[4]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc6_bdatr[4]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc6_bdatr[5]_INST_0 
       (.I0(bdatr[5]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc6_bdatr[5]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc6_bdatr[6]_INST_0 
       (.I0(bdatr[6]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc6_bdatr[6]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc6_bdatr[7]_INST_0 
       (.I0(bdatr[7]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc6_bdatr[7]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc6_bdatr[8]_INST_0 
       (.I0(bdatr[8]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc6_bdatr[8]));
  LUT4 #(
    .INIT(16'h2000)) 
    \pc6_bdatr[9]_INST_0 
       (.I0(bdatr[9]),
        .I1(grnt_id_dp[0]),
        .I2(grnt_id_dp[2]),
        .I3(grnt_id_dp[1]),
        .O(pc6_bdatr[9]));
  LUT6 #(
    .INIT(64'h00000000FF080000)) 
    pc6_brdy_INST_0
       (.I0(grnt_id_dp[1]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .I3(pc6_brdy_INST_0_i_1_n_0),
        .I4(brdy),
        .I5(pc6_brdy_rsv),
        .O(pc6_brdy));
  LUT6 #(
    .INIT(64'h8AA88AA88AA80000)) 
    pc6_brdy_INST_0_i_1
       (.I0(pc6_brdy_INST_0_i_2_n_0),
        .I1(pc6_brdy_rsv),
        .I2(pc6_bcmd[0]),
        .I3(pc6_bcmd[1]),
        .I4(\arb_cnt_reg_n_0_[1] ),
        .I5(\bcmd[2]_INST_0_i_16_n_0 ),
        .O(pc6_brdy_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAABAABAAAAAAAA)) 
    pc6_brdy_INST_0_i_2
       (.I0(\arb_cnt_reg_n_0_[2] ),
        .I1(\bcmd[2]_INST_0_i_14_n_0 ),
        .I2(pc0_bcmd[1]),
        .I3(pc0_bcmd[0]),
        .I4(pc0_brdy_rsv),
        .I5(\bdatw[14]_INST_0_i_13_n_0 ),
        .O(pc6_brdy_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h00008AA8)) 
    pc6_brdy_rsv_i_1
       (.I0(pc6_brdy_rsv_i_2_n_0),
        .I1(pc6_brdy_rsv),
        .I2(pc6_bcmd[0]),
        .I3(pc6_bcmd[1]),
        .I4(pc6_brdy_INST_0_i_1_n_0),
        .O(pc6_brdy_rsv0));
  LUT3 #(
    .INIT(8'h08)) 
    pc6_brdy_rsv_i_2
       (.I0(grnt_id_dp[1]),
        .I1(grnt_id_dp[2]),
        .I2(grnt_id_dp[0]),
        .O(pc6_brdy_rsv_i_2_n_0));
  FDRE pc6_brdy_rsv_reg
       (.C(clk),
        .CE(\pc6_badr_rsv[15]_i_1_n_0 ),
        .D(pc6_brdy_rsv0),
        .Q(pc6_brdy_rsv),
        .R(\pc0_badr_rsv[15]_i_1_n_0 ));
endmodule
