
(* STRUCTURAL_NETLIST = "yes" *)
module trng32
   (clk,
    rst_n,
    brdy,
    bcmdr,
    bcmdw,
    bcs_trng_n,
    trng_clk1,
    trng_clk2,
    badr,
    bdatw,
    trng_lcgi,
    bdatr,
    trng_lcgo);
//
// True Random Number Generator unit
//		(c) 2025	1YEN Toru
//
//
//	2025/05/24	ver.1.02
//		add: trngtlcg register
//			eg.) wire	[31:0]	trng_lcgi=
//					trng_lcgo[31:0]*32'd1_103_515_245 + 32'd12_345;
//
//	2025/05/10	ver.1.00
//
  input clk;
  input rst_n;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bcs_trng_n;
  input trng_clk1;
  input trng_clk2;
  input [3:0]badr;
  input [15:0]bdatw;
  input [31:0]trng_lcgi;
  output [15:0]bdatr;
  output [31:0]trng_lcgo;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_trng_n;
  wire [15:0]bdatr;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[0]_INST_0_i_2_n_0 ;
  wire \bdatr[0]_INST_0_i_3_n_0 ;
  wire \bdatr[0]_INST_0_i_4_n_0 ;
  wire \bdatr[0]_INST_0_i_5_n_0 ;
  wire \bdatr[10]_INST_0_i_1_n_0 ;
  wire \bdatr[10]_INST_0_i_2_n_0 ;
  wire \bdatr[10]_INST_0_i_3_n_0 ;
  wire \bdatr[10]_INST_0_i_4_n_0 ;
  wire \bdatr[10]_INST_0_i_5_n_0 ;
  wire \bdatr[11]_INST_0_i_1_n_0 ;
  wire \bdatr[11]_INST_0_i_2_n_0 ;
  wire \bdatr[11]_INST_0_i_3_n_0 ;
  wire \bdatr[11]_INST_0_i_4_n_0 ;
  wire \bdatr[11]_INST_0_i_5_n_0 ;
  wire \bdatr[12]_INST_0_i_1_n_0 ;
  wire \bdatr[12]_INST_0_i_2_n_0 ;
  wire \bdatr[12]_INST_0_i_3_n_0 ;
  wire \bdatr[12]_INST_0_i_4_n_0 ;
  wire \bdatr[12]_INST_0_i_5_n_0 ;
  wire \bdatr[13]_INST_0_i_1_n_0 ;
  wire \bdatr[13]_INST_0_i_2_n_0 ;
  wire \bdatr[13]_INST_0_i_3_n_0 ;
  wire \bdatr[13]_INST_0_i_4_n_0 ;
  wire \bdatr[13]_INST_0_i_5_n_0 ;
  wire \bdatr[14]_INST_0_i_1_n_0 ;
  wire \bdatr[14]_INST_0_i_2_n_0 ;
  wire \bdatr[14]_INST_0_i_3_n_0 ;
  wire \bdatr[14]_INST_0_i_4_n_0 ;
  wire \bdatr[14]_INST_0_i_5_n_0 ;
  wire \bdatr[15]_INST_0_i_10_n_0 ;
  wire \bdatr[15]_INST_0_i_11_n_0 ;
  wire \bdatr[15]_INST_0_i_12_n_0 ;
  wire \bdatr[15]_INST_0_i_13_n_0 ;
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
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_2_n_0 ;
  wire \bdatr[2]_INST_0_i_3_n_0 ;
  wire \bdatr[2]_INST_0_i_4_n_0 ;
  wire \bdatr[2]_INST_0_i_5_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_2_n_0 ;
  wire \bdatr[3]_INST_0_i_3_n_0 ;
  wire \bdatr[3]_INST_0_i_4_n_0 ;
  wire \bdatr[3]_INST_0_i_5_n_0 ;
  wire \bdatr[4]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_2_n_0 ;
  wire \bdatr[4]_INST_0_i_3_n_0 ;
  wire \bdatr[4]_INST_0_i_4_n_0 ;
  wire \bdatr[4]_INST_0_i_5_n_0 ;
  wire \bdatr[5]_INST_0_i_1_n_0 ;
  wire \bdatr[5]_INST_0_i_2_n_0 ;
  wire \bdatr[5]_INST_0_i_3_n_0 ;
  wire \bdatr[5]_INST_0_i_4_n_0 ;
  wire \bdatr[5]_INST_0_i_5_n_0 ;
  wire \bdatr[6]_INST_0_i_1_n_0 ;
  wire \bdatr[6]_INST_0_i_2_n_0 ;
  wire \bdatr[6]_INST_0_i_3_n_0 ;
  wire \bdatr[6]_INST_0_i_4_n_0 ;
  wire \bdatr[6]_INST_0_i_5_n_0 ;
  wire \bdatr[7]_INST_0_i_1_n_0 ;
  wire \bdatr[7]_INST_0_i_2_n_0 ;
  wire \bdatr[7]_INST_0_i_3_n_0 ;
  wire \bdatr[7]_INST_0_i_4_n_0 ;
  wire \bdatr[7]_INST_0_i_5_n_0 ;
  wire \bdatr[8]_INST_0_i_1_n_0 ;
  wire \bdatr[8]_INST_0_i_2_n_0 ;
  wire \bdatr[8]_INST_0_i_3_n_0 ;
  wire \bdatr[8]_INST_0_i_4_n_0 ;
  wire \bdatr[8]_INST_0_i_5_n_0 ;
  wire \bdatr[9]_INST_0_i_1_n_0 ;
  wire \bdatr[9]_INST_0_i_2_n_0 ;
  wire \bdatr[9]_INST_0_i_3_n_0 ;
  wire \bdatr[9]_INST_0_i_4_n_0 ;
  wire \bdatr[9]_INST_0_i_5_n_0 ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire [15:0]data5;
  wire [15:0]data7;
  wire p_0_in;
  wire [31:16]p_1_in;
  wire [31:0]p_2_in;
  wire [15:0]p_8_in;
  wire rd_trng0cnth;
  wire rd_trng0cnth0;
  wire rd_trng0cntl;
  wire rd_trng0cntl0;
  wire rd_trng1cnth;
  wire rd_trng1cnth0;
  wire rd_trng1cntl;
  wire rd_trng1cntl0;
  wire rd_trngrandh;
  wire rd_trngrandh0;
  wire rd_trngrandl;
  wire rd_trngrandl0;
  wire rd_trngtlcgh;
  wire rd_trngtlcgh0;
  wire rd_trngtlcgl;
  wire rd_trngtlcgl0;
  wire rst_n;
  wire sel;
  wire tctl_hi_word0;
  wire tctl_hi_word01_out;
  wire \tctl_hi_word[15]_i_3_n_0 ;
  wire tctr_hi_read_i_1_n_0;
  wire tctr_hi_read_i_2_n_0;
  wire tctr_hi_read_i_3_n_0;
  wire tctr_hi_read_reg_n_0;
  wire [15:0]tctr_lo_word;
  wire \tctr_lo_word[0]_i_1_n_0 ;
  wire \tctr_lo_word[0]_i_2_n_0 ;
  wire \tctr_lo_word[10]_i_1_n_0 ;
  wire \tctr_lo_word[10]_i_2_n_0 ;
  wire \tctr_lo_word[11]_i_1_n_0 ;
  wire \tctr_lo_word[11]_i_2_n_0 ;
  wire \tctr_lo_word[12]_i_1_n_0 ;
  wire \tctr_lo_word[12]_i_2_n_0 ;
  wire \tctr_lo_word[13]_i_1_n_0 ;
  wire \tctr_lo_word[13]_i_2_n_0 ;
  wire \tctr_lo_word[14]_i_1_n_0 ;
  wire \tctr_lo_word[14]_i_2_n_0 ;
  wire \tctr_lo_word[15]_i_1_n_0 ;
  wire \tctr_lo_word[15]_i_2_n_0 ;
  wire \tctr_lo_word[15]_i_3_n_0 ;
  wire \tctr_lo_word[1]_i_1_n_0 ;
  wire \tctr_lo_word[1]_i_2_n_0 ;
  wire \tctr_lo_word[2]_i_1_n_0 ;
  wire \tctr_lo_word[2]_i_2_n_0 ;
  wire \tctr_lo_word[3]_i_1_n_0 ;
  wire \tctr_lo_word[3]_i_2_n_0 ;
  wire \tctr_lo_word[4]_i_1_n_0 ;
  wire \tctr_lo_word[4]_i_2_n_0 ;
  wire \tctr_lo_word[5]_i_1_n_0 ;
  wire \tctr_lo_word[5]_i_2_n_0 ;
  wire \tctr_lo_word[6]_i_1_n_0 ;
  wire \tctr_lo_word[6]_i_2_n_0 ;
  wire \tctr_lo_word[7]_i_1_n_0 ;
  wire \tctr_lo_word[7]_i_2_n_0 ;
  wire \tctr_lo_word[8]_i_1_n_0 ;
  wire \tctr_lo_word[8]_i_2_n_0 ;
  wire \tctr_lo_word[9]_i_1_n_0 ;
  wire \tctr_lo_word[9]_i_2_n_0 ;
  wire tpll_rand1b0;
  wire tpll_rand1b1;
  wire \trng0cnt[0]_i_1_n_0 ;
  wire \trng0cnt[0]_i_4_n_0 ;
  wire \trng0cnt_reg[0]_i_3_n_0 ;
  wire \trng0cnt_reg[0]_i_3_n_1 ;
  wire \trng0cnt_reg[0]_i_3_n_2 ;
  wire \trng0cnt_reg[0]_i_3_n_3 ;
  wire \trng0cnt_reg[0]_i_3_n_4 ;
  wire \trng0cnt_reg[0]_i_3_n_5 ;
  wire \trng0cnt_reg[0]_i_3_n_6 ;
  wire \trng0cnt_reg[0]_i_3_n_7 ;
  wire \trng0cnt_reg[12]_i_1_n_0 ;
  wire \trng0cnt_reg[12]_i_1_n_1 ;
  wire \trng0cnt_reg[12]_i_1_n_2 ;
  wire \trng0cnt_reg[12]_i_1_n_3 ;
  wire \trng0cnt_reg[12]_i_1_n_4 ;
  wire \trng0cnt_reg[12]_i_1_n_5 ;
  wire \trng0cnt_reg[12]_i_1_n_6 ;
  wire \trng0cnt_reg[12]_i_1_n_7 ;
  wire \trng0cnt_reg[16]_i_1_n_0 ;
  wire \trng0cnt_reg[16]_i_1_n_1 ;
  wire \trng0cnt_reg[16]_i_1_n_2 ;
  wire \trng0cnt_reg[16]_i_1_n_3 ;
  wire \trng0cnt_reg[16]_i_1_n_4 ;
  wire \trng0cnt_reg[16]_i_1_n_5 ;
  wire \trng0cnt_reg[16]_i_1_n_6 ;
  wire \trng0cnt_reg[16]_i_1_n_7 ;
  wire \trng0cnt_reg[20]_i_1_n_0 ;
  wire \trng0cnt_reg[20]_i_1_n_1 ;
  wire \trng0cnt_reg[20]_i_1_n_2 ;
  wire \trng0cnt_reg[20]_i_1_n_3 ;
  wire \trng0cnt_reg[20]_i_1_n_4 ;
  wire \trng0cnt_reg[20]_i_1_n_5 ;
  wire \trng0cnt_reg[20]_i_1_n_6 ;
  wire \trng0cnt_reg[20]_i_1_n_7 ;
  wire \trng0cnt_reg[24]_i_1_n_0 ;
  wire \trng0cnt_reg[24]_i_1_n_1 ;
  wire \trng0cnt_reg[24]_i_1_n_2 ;
  wire \trng0cnt_reg[24]_i_1_n_3 ;
  wire \trng0cnt_reg[24]_i_1_n_4 ;
  wire \trng0cnt_reg[24]_i_1_n_5 ;
  wire \trng0cnt_reg[24]_i_1_n_6 ;
  wire \trng0cnt_reg[24]_i_1_n_7 ;
  wire \trng0cnt_reg[28]_i_1_n_1 ;
  wire \trng0cnt_reg[28]_i_1_n_2 ;
  wire \trng0cnt_reg[28]_i_1_n_3 ;
  wire \trng0cnt_reg[28]_i_1_n_4 ;
  wire \trng0cnt_reg[28]_i_1_n_5 ;
  wire \trng0cnt_reg[28]_i_1_n_6 ;
  wire \trng0cnt_reg[28]_i_1_n_7 ;
  wire \trng0cnt_reg[4]_i_1_n_0 ;
  wire \trng0cnt_reg[4]_i_1_n_1 ;
  wire \trng0cnt_reg[4]_i_1_n_2 ;
  wire \trng0cnt_reg[4]_i_1_n_3 ;
  wire \trng0cnt_reg[4]_i_1_n_4 ;
  wire \trng0cnt_reg[4]_i_1_n_5 ;
  wire \trng0cnt_reg[4]_i_1_n_6 ;
  wire \trng0cnt_reg[4]_i_1_n_7 ;
  wire \trng0cnt_reg[8]_i_1_n_0 ;
  wire \trng0cnt_reg[8]_i_1_n_1 ;
  wire \trng0cnt_reg[8]_i_1_n_2 ;
  wire \trng0cnt_reg[8]_i_1_n_3 ;
  wire \trng0cnt_reg[8]_i_1_n_4 ;
  wire \trng0cnt_reg[8]_i_1_n_5 ;
  wire \trng0cnt_reg[8]_i_1_n_6 ;
  wire \trng0cnt_reg[8]_i_1_n_7 ;
  wire \trng0cnt_reg_n_0_[0] ;
  wire \trng0cnt_reg_n_0_[10] ;
  wire \trng0cnt_reg_n_0_[11] ;
  wire \trng0cnt_reg_n_0_[12] ;
  wire \trng0cnt_reg_n_0_[13] ;
  wire \trng0cnt_reg_n_0_[14] ;
  wire \trng0cnt_reg_n_0_[15] ;
  wire \trng0cnt_reg_n_0_[1] ;
  wire \trng0cnt_reg_n_0_[2] ;
  wire \trng0cnt_reg_n_0_[3] ;
  wire \trng0cnt_reg_n_0_[4] ;
  wire \trng0cnt_reg_n_0_[5] ;
  wire \trng0cnt_reg_n_0_[6] ;
  wire \trng0cnt_reg_n_0_[7] ;
  wire \trng0cnt_reg_n_0_[8] ;
  wire \trng0cnt_reg_n_0_[9] ;
  wire \trng1cnt[0]_i_3_n_0 ;
  wire \trng1cnt_reg[0]_i_2_n_0 ;
  wire \trng1cnt_reg[0]_i_2_n_1 ;
  wire \trng1cnt_reg[0]_i_2_n_2 ;
  wire \trng1cnt_reg[0]_i_2_n_3 ;
  wire \trng1cnt_reg[0]_i_2_n_4 ;
  wire \trng1cnt_reg[0]_i_2_n_5 ;
  wire \trng1cnt_reg[0]_i_2_n_6 ;
  wire \trng1cnt_reg[0]_i_2_n_7 ;
  wire \trng1cnt_reg[12]_i_1_n_0 ;
  wire \trng1cnt_reg[12]_i_1_n_1 ;
  wire \trng1cnt_reg[12]_i_1_n_2 ;
  wire \trng1cnt_reg[12]_i_1_n_3 ;
  wire \trng1cnt_reg[12]_i_1_n_4 ;
  wire \trng1cnt_reg[12]_i_1_n_5 ;
  wire \trng1cnt_reg[12]_i_1_n_6 ;
  wire \trng1cnt_reg[12]_i_1_n_7 ;
  wire \trng1cnt_reg[16]_i_1_n_0 ;
  wire \trng1cnt_reg[16]_i_1_n_1 ;
  wire \trng1cnt_reg[16]_i_1_n_2 ;
  wire \trng1cnt_reg[16]_i_1_n_3 ;
  wire \trng1cnt_reg[16]_i_1_n_4 ;
  wire \trng1cnt_reg[16]_i_1_n_5 ;
  wire \trng1cnt_reg[16]_i_1_n_6 ;
  wire \trng1cnt_reg[16]_i_1_n_7 ;
  wire \trng1cnt_reg[20]_i_1_n_0 ;
  wire \trng1cnt_reg[20]_i_1_n_1 ;
  wire \trng1cnt_reg[20]_i_1_n_2 ;
  wire \trng1cnt_reg[20]_i_1_n_3 ;
  wire \trng1cnt_reg[20]_i_1_n_4 ;
  wire \trng1cnt_reg[20]_i_1_n_5 ;
  wire \trng1cnt_reg[20]_i_1_n_6 ;
  wire \trng1cnt_reg[20]_i_1_n_7 ;
  wire \trng1cnt_reg[24]_i_1_n_0 ;
  wire \trng1cnt_reg[24]_i_1_n_1 ;
  wire \trng1cnt_reg[24]_i_1_n_2 ;
  wire \trng1cnt_reg[24]_i_1_n_3 ;
  wire \trng1cnt_reg[24]_i_1_n_4 ;
  wire \trng1cnt_reg[24]_i_1_n_5 ;
  wire \trng1cnt_reg[24]_i_1_n_6 ;
  wire \trng1cnt_reg[24]_i_1_n_7 ;
  wire \trng1cnt_reg[28]_i_1_n_1 ;
  wire \trng1cnt_reg[28]_i_1_n_2 ;
  wire \trng1cnt_reg[28]_i_1_n_3 ;
  wire \trng1cnt_reg[28]_i_1_n_4 ;
  wire \trng1cnt_reg[28]_i_1_n_5 ;
  wire \trng1cnt_reg[28]_i_1_n_6 ;
  wire \trng1cnt_reg[28]_i_1_n_7 ;
  wire \trng1cnt_reg[4]_i_1_n_0 ;
  wire \trng1cnt_reg[4]_i_1_n_1 ;
  wire \trng1cnt_reg[4]_i_1_n_2 ;
  wire \trng1cnt_reg[4]_i_1_n_3 ;
  wire \trng1cnt_reg[4]_i_1_n_4 ;
  wire \trng1cnt_reg[4]_i_1_n_5 ;
  wire \trng1cnt_reg[4]_i_1_n_6 ;
  wire \trng1cnt_reg[4]_i_1_n_7 ;
  wire \trng1cnt_reg[8]_i_1_n_0 ;
  wire \trng1cnt_reg[8]_i_1_n_1 ;
  wire \trng1cnt_reg[8]_i_1_n_2 ;
  wire \trng1cnt_reg[8]_i_1_n_3 ;
  wire \trng1cnt_reg[8]_i_1_n_4 ;
  wire \trng1cnt_reg[8]_i_1_n_5 ;
  wire \trng1cnt_reg[8]_i_1_n_6 ;
  wire \trng1cnt_reg[8]_i_1_n_7 ;
  wire \trng1cnt_reg_n_0_[0] ;
  wire \trng1cnt_reg_n_0_[10] ;
  wire \trng1cnt_reg_n_0_[11] ;
  wire \trng1cnt_reg_n_0_[12] ;
  wire \trng1cnt_reg_n_0_[13] ;
  wire \trng1cnt_reg_n_0_[14] ;
  wire \trng1cnt_reg_n_0_[15] ;
  wire \trng1cnt_reg_n_0_[1] ;
  wire \trng1cnt_reg_n_0_[2] ;
  wire \trng1cnt_reg_n_0_[3] ;
  wire \trng1cnt_reg_n_0_[4] ;
  wire \trng1cnt_reg_n_0_[5] ;
  wire \trng1cnt_reg_n_0_[6] ;
  wire \trng1cnt_reg_n_0_[7] ;
  wire \trng1cnt_reg_n_0_[8] ;
  wire \trng1cnt_reg_n_0_[9] ;
  wire trng_clk1;
  wire trng_clk2;
  wire \trng_lcg[31]_i_1_n_0 ;
  wire \trng_lcg[31]_i_2_n_0 ;
  wire \trng_lcg[31]_i_4_n_0 ;
  wire [31:0]trng_lcgi;
  wire [31:0]trng_lcgo;
  wire trng_rand1b0;
  wire \trng_s_reg_n_0_[0] ;
  wire \trng_s_reg_n_0_[2] ;
  wire \trng_s_reg_n_0_[3] ;
  wire \trngrand[0]_i_1_n_0 ;
  wire \trngrand[10]_i_1_n_0 ;
  wire \trngrand[11]_i_1_n_0 ;
  wire \trngrand[12]_i_1_n_0 ;
  wire \trngrand[13]_i_1_n_0 ;
  wire \trngrand[14]_i_1_n_0 ;
  wire \trngrand[15]_i_1_n_0 ;
  wire \trngrand[16]_i_1_n_0 ;
  wire \trngrand[17]_i_1_n_0 ;
  wire \trngrand[18]_i_1_n_0 ;
  wire \trngrand[19]_i_1_n_0 ;
  wire \trngrand[1]_i_1_n_0 ;
  wire \trngrand[20]_i_1_n_0 ;
  wire \trngrand[21]_i_1_n_0 ;
  wire \trngrand[22]_i_1_n_0 ;
  wire \trngrand[23]_i_1_n_0 ;
  wire \trngrand[24]_i_1_n_0 ;
  wire \trngrand[25]_i_1_n_0 ;
  wire \trngrand[26]_i_1_n_0 ;
  wire \trngrand[27]_i_1_n_0 ;
  wire \trngrand[28]_i_1_n_0 ;
  wire \trngrand[29]_i_1_n_0 ;
  wire \trngrand[2]_i_1_n_0 ;
  wire \trngrand[30]_i_1_n_0 ;
  wire \trngrand[31]_i_1_n_0 ;
  wire \trngrand[31]_i_2_n_0 ;
  wire \trngrand[3]_i_1_n_0 ;
  wire \trngrand[4]_i_1_n_0 ;
  wire \trngrand[5]_i_1_n_0 ;
  wire \trngrand[6]_i_1_n_0 ;
  wire \trngrand[7]_i_1_n_0 ;
  wire \trngrand[8]_i_1_n_0 ;
  wire \trngrand[9]_i_1_n_0 ;
  wire \trngrand_reg_n_0_[0] ;
  wire \trngrand_reg_n_0_[10] ;
  wire \trngrand_reg_n_0_[11] ;
  wire \trngrand_reg_n_0_[12] ;
  wire \trngrand_reg_n_0_[13] ;
  wire \trngrand_reg_n_0_[14] ;
  wire \trngrand_reg_n_0_[15] ;
  wire \trngrand_reg_n_0_[1] ;
  wire \trngrand_reg_n_0_[2] ;
  wire \trngrand_reg_n_0_[3] ;
  wire \trngrand_reg_n_0_[4] ;
  wire \trngrand_reg_n_0_[5] ;
  wire \trngrand_reg_n_0_[6] ;
  wire \trngrand_reg_n_0_[7] ;
  wire \trngrand_reg_n_0_[8] ;
  wire \trngrand_reg_n_0_[9] ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bdatr[0]_INST_0 
       (.I0(\bdatr[0]_INST_0_i_1_n_0 ),
        .I1(\bdatr[0]_INST_0_i_2_n_0 ),
        .I2(\bdatr[0]_INST_0_i_3_n_0 ),
        .I3(\trng1cnt_reg_n_0_[0] ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[0]_INST_0_i_4_n_0 ),
        .O(bdatr[0]));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(tctr_lo_word[0]),
        .I1(\bdatr[15]_INST_0_i_6_n_0 ),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(tctr_hi_read_reg_n_0),
        .I4(data5[0]),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bdatr[0]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(tctr_hi_read_reg_n_0),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(rd_trng0cnth),
        .I4(\trng0cnt_reg_n_0_[0] ),
        .O(\bdatr[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[0]_INST_0_i_3 
       (.I0(\bdatr[15]_INST_0_i_9_n_0 ),
        .I1(rd_trng0cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(data7[0]),
        .O(\bdatr[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF0FCF0FEF0)) 
    \bdatr[0]_INST_0_i_4 
       (.I0(\bdatr[15]_INST_0_i_10_n_0 ),
        .I1(\bdatr[15]_INST_0_i_11_n_0 ),
        .I2(\bdatr[0]_INST_0_i_5_n_0 ),
        .I3(\trngrand_reg_n_0_[0] ),
        .I4(trng_lcgo[29]),
        .I5(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[0]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF000408)) 
    \bdatr[0]_INST_0_i_5 
       (.I0(trng_lcgo[13]),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandl),
        .I3(p_8_in[0]),
        .I4(rd_trngrandh),
        .O(\bdatr[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bdatr[10]_INST_0 
       (.I0(\bdatr[10]_INST_0_i_1_n_0 ),
        .I1(\bdatr[10]_INST_0_i_2_n_0 ),
        .I2(\bdatr[10]_INST_0_i_3_n_0 ),
        .I3(\trng1cnt_reg_n_0_[10] ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[10]_INST_0_i_4_n_0 ),
        .O(bdatr[10]));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \bdatr[10]_INST_0_i_1 
       (.I0(tctr_lo_word[10]),
        .I1(\bdatr[15]_INST_0_i_6_n_0 ),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(tctr_hi_read_reg_n_0),
        .I4(data5[10]),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bdatr[10]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(tctr_hi_read_reg_n_0),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(rd_trng0cnth),
        .I4(\trng0cnt_reg_n_0_[10] ),
        .O(\bdatr[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[10]_INST_0_i_3 
       (.I0(\bdatr[15]_INST_0_i_9_n_0 ),
        .I1(rd_trng0cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(data7[10]),
        .O(\bdatr[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF0FCF0FEF0)) 
    \bdatr[10]_INST_0_i_4 
       (.I0(\bdatr[15]_INST_0_i_10_n_0 ),
        .I1(\bdatr[15]_INST_0_i_11_n_0 ),
        .I2(\bdatr[10]_INST_0_i_5_n_0 ),
        .I3(\trngrand_reg_n_0_[10] ),
        .I4(trng_lcgo[31]),
        .I5(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[10]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF000408)) 
    \bdatr[10]_INST_0_i_5 
       (.I0(trng_lcgo[15]),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandl),
        .I3(p_8_in[10]),
        .I4(rd_trngrandh),
        .O(\bdatr[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bdatr[11]_INST_0 
       (.I0(\bdatr[11]_INST_0_i_1_n_0 ),
        .I1(\bdatr[11]_INST_0_i_2_n_0 ),
        .I2(\bdatr[11]_INST_0_i_3_n_0 ),
        .I3(\trng1cnt_reg_n_0_[11] ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[11]_INST_0_i_4_n_0 ),
        .O(bdatr[11]));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \bdatr[11]_INST_0_i_1 
       (.I0(tctr_lo_word[11]),
        .I1(\bdatr[15]_INST_0_i_6_n_0 ),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(tctr_hi_read_reg_n_0),
        .I4(data5[11]),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bdatr[11]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(tctr_hi_read_reg_n_0),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(rd_trng0cnth),
        .I4(\trng0cnt_reg_n_0_[11] ),
        .O(\bdatr[11]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[11]_INST_0_i_3 
       (.I0(\bdatr[15]_INST_0_i_9_n_0 ),
        .I1(rd_trng0cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(data7[11]),
        .O(\bdatr[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF0FCF0FEF0)) 
    \bdatr[11]_INST_0_i_4 
       (.I0(\bdatr[15]_INST_0_i_10_n_0 ),
        .I1(\bdatr[15]_INST_0_i_11_n_0 ),
        .I2(\bdatr[11]_INST_0_i_5_n_0 ),
        .I3(\trngrand_reg_n_0_[11] ),
        .I4(trng_lcgo[28]),
        .I5(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[11]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF000408)) 
    \bdatr[11]_INST_0_i_5 
       (.I0(trng_lcgo[12]),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandl),
        .I3(p_8_in[11]),
        .I4(rd_trngrandh),
        .O(\bdatr[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bdatr[12]_INST_0 
       (.I0(\bdatr[12]_INST_0_i_1_n_0 ),
        .I1(\bdatr[12]_INST_0_i_2_n_0 ),
        .I2(\bdatr[12]_INST_0_i_3_n_0 ),
        .I3(\trng1cnt_reg_n_0_[12] ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[12]_INST_0_i_4_n_0 ),
        .O(bdatr[12]));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \bdatr[12]_INST_0_i_1 
       (.I0(tctr_lo_word[12]),
        .I1(\bdatr[15]_INST_0_i_6_n_0 ),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(tctr_hi_read_reg_n_0),
        .I4(data5[12]),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bdatr[12]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(tctr_hi_read_reg_n_0),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(rd_trng0cnth),
        .I4(\trng0cnt_reg_n_0_[12] ),
        .O(\bdatr[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[12]_INST_0_i_3 
       (.I0(\bdatr[15]_INST_0_i_9_n_0 ),
        .I1(rd_trng0cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(data7[12]),
        .O(\bdatr[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF0FCF0FEF0)) 
    \bdatr[12]_INST_0_i_4 
       (.I0(\bdatr[15]_INST_0_i_10_n_0 ),
        .I1(\bdatr[15]_INST_0_i_11_n_0 ),
        .I2(\bdatr[12]_INST_0_i_5_n_0 ),
        .I3(\trngrand_reg_n_0_[12] ),
        .I4(trng_lcgo[25]),
        .I5(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[12]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF000408)) 
    \bdatr[12]_INST_0_i_5 
       (.I0(trng_lcgo[9]),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandl),
        .I3(p_8_in[12]),
        .I4(rd_trngrandh),
        .O(\bdatr[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bdatr[13]_INST_0 
       (.I0(\bdatr[13]_INST_0_i_1_n_0 ),
        .I1(\bdatr[13]_INST_0_i_2_n_0 ),
        .I2(\bdatr[13]_INST_0_i_3_n_0 ),
        .I3(\trng1cnt_reg_n_0_[13] ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[13]_INST_0_i_4_n_0 ),
        .O(bdatr[13]));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \bdatr[13]_INST_0_i_1 
       (.I0(tctr_lo_word[13]),
        .I1(\bdatr[15]_INST_0_i_6_n_0 ),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(tctr_hi_read_reg_n_0),
        .I4(data5[13]),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bdatr[13]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(tctr_hi_read_reg_n_0),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(rd_trng0cnth),
        .I4(\trng0cnt_reg_n_0_[13] ),
        .O(\bdatr[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[13]_INST_0_i_3 
       (.I0(\bdatr[15]_INST_0_i_9_n_0 ),
        .I1(rd_trng0cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(data7[13]),
        .O(\bdatr[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF0FCF0FEF0)) 
    \bdatr[13]_INST_0_i_4 
       (.I0(\bdatr[15]_INST_0_i_10_n_0 ),
        .I1(\bdatr[15]_INST_0_i_11_n_0 ),
        .I2(\bdatr[13]_INST_0_i_5_n_0 ),
        .I3(\trngrand_reg_n_0_[13] ),
        .I4(trng_lcgo[22]),
        .I5(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[13]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF000408)) 
    \bdatr[13]_INST_0_i_5 
       (.I0(trng_lcgo[6]),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandl),
        .I3(p_8_in[13]),
        .I4(rd_trngrandh),
        .O(\bdatr[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bdatr[14]_INST_0 
       (.I0(\bdatr[14]_INST_0_i_1_n_0 ),
        .I1(\bdatr[14]_INST_0_i_2_n_0 ),
        .I2(\bdatr[14]_INST_0_i_3_n_0 ),
        .I3(\trng1cnt_reg_n_0_[14] ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[14]_INST_0_i_4_n_0 ),
        .O(bdatr[14]));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \bdatr[14]_INST_0_i_1 
       (.I0(tctr_lo_word[14]),
        .I1(\bdatr[15]_INST_0_i_6_n_0 ),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(tctr_hi_read_reg_n_0),
        .I4(data5[14]),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bdatr[14]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(tctr_hi_read_reg_n_0),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(rd_trng0cnth),
        .I4(\trng0cnt_reg_n_0_[14] ),
        .O(\bdatr[14]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[14]_INST_0_i_3 
       (.I0(\bdatr[15]_INST_0_i_9_n_0 ),
        .I1(rd_trng0cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(data7[14]),
        .O(\bdatr[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF0FCF0FEF0)) 
    \bdatr[14]_INST_0_i_4 
       (.I0(\bdatr[15]_INST_0_i_10_n_0 ),
        .I1(\bdatr[15]_INST_0_i_11_n_0 ),
        .I2(\bdatr[14]_INST_0_i_5_n_0 ),
        .I3(\trngrand_reg_n_0_[14] ),
        .I4(trng_lcgo[19]),
        .I5(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[14]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF000408)) 
    \bdatr[14]_INST_0_i_5 
       (.I0(trng_lcgo[3]),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandl),
        .I3(p_8_in[14]),
        .I4(rd_trngrandh),
        .O(\bdatr[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bdatr[15]_INST_0 
       (.I0(\bdatr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatr[15]_INST_0_i_2_n_0 ),
        .I2(\bdatr[15]_INST_0_i_3_n_0 ),
        .I3(\trng1cnt_reg_n_0_[15] ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[15]_INST_0_i_5_n_0 ),
        .O(bdatr[15]));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \bdatr[15]_INST_0_i_1 
       (.I0(tctr_lo_word[15]),
        .I1(\bdatr[15]_INST_0_i_6_n_0 ),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(tctr_hi_read_reg_n_0),
        .I4(data5[15]),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \bdatr[15]_INST_0_i_10 
       (.I0(tctr_hi_read_reg_n_0),
        .I1(rd_trngtlcgl),
        .I2(rd_trngrandh),
        .I3(rd_trngtlcgh),
        .O(\bdatr[15]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \bdatr[15]_INST_0_i_11 
       (.I0(tctr_hi_read_reg_n_0),
        .I1(rd_trngrandl),
        .I2(rd_trngrandh),
        .O(\bdatr[15]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFF000408)) 
    \bdatr[15]_INST_0_i_12 
       (.I0(trng_lcgo[0]),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandl),
        .I3(p_8_in[15]),
        .I4(rd_trngrandh),
        .O(\bdatr[15]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \bdatr[15]_INST_0_i_13 
       (.I0(tctr_hi_read_reg_n_0),
        .I1(rd_trngtlcgl),
        .I2(rd_trngrandl),
        .I3(rd_trngtlcgh),
        .I4(rd_trngrandh),
        .O(\bdatr[15]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bdatr[15]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(tctr_hi_read_reg_n_0),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(rd_trng0cnth),
        .I4(\trng0cnt_reg_n_0_[15] ),
        .O(\bdatr[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[15]_INST_0_i_3 
       (.I0(\bdatr[15]_INST_0_i_9_n_0 ),
        .I1(rd_trng0cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(data7[15]),
        .O(\bdatr[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \bdatr[15]_INST_0_i_4 
       (.I0(tctr_hi_read_reg_n_0),
        .I1(rd_trng1cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\bdatr[15]_INST_0_i_9_n_0 ),
        .I5(rd_trng0cntl),
        .O(\bdatr[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF0FCF0FEF0)) 
    \bdatr[15]_INST_0_i_5 
       (.I0(\bdatr[15]_INST_0_i_10_n_0 ),
        .I1(\bdatr[15]_INST_0_i_11_n_0 ),
        .I2(\bdatr[15]_INST_0_i_12_n_0 ),
        .I3(\trngrand_reg_n_0_[15] ),
        .I4(trng_lcgo[16]),
        .I5(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00000004)) 
    \bdatr[15]_INST_0_i_6 
       (.I0(rd_trngtlcgh),
        .I1(rd_trng1cntl),
        .I2(rd_trng0cnth),
        .I3(rd_trng1cnth),
        .I4(rd_trngrandh),
        .I5(rd_trngrandl),
        .O(\bdatr[15]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000000AE)) 
    \bdatr[15]_INST_0_i_7 
       (.I0(rd_trngtlcgl),
        .I1(rd_trng0cntl),
        .I2(rd_trng0cnth),
        .I3(rd_trngrandh),
        .I4(rd_trngtlcgh),
        .O(\bdatr[15]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \bdatr[15]_INST_0_i_8 
       (.I0(rd_trng0cnth),
        .I1(rd_trngtlcgl),
        .I2(rd_trngrandh),
        .I3(rd_trngtlcgh),
        .I4(rd_trngrandl),
        .O(\bdatr[15]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bdatr[15]_INST_0_i_9 
       (.I0(rd_trngrandl),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandh),
        .I3(rd_trngtlcgl),
        .O(\bdatr[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bdatr[1]_INST_0 
       (.I0(\bdatr[1]_INST_0_i_1_n_0 ),
        .I1(\bdatr[1]_INST_0_i_2_n_0 ),
        .I2(\bdatr[1]_INST_0_i_3_n_0 ),
        .I3(\trng1cnt_reg_n_0_[1] ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[1]_INST_0_i_4_n_0 ),
        .O(bdatr[1]));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(tctr_lo_word[1]),
        .I1(\bdatr[15]_INST_0_i_6_n_0 ),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(tctr_hi_read_reg_n_0),
        .I4(data5[1]),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bdatr[1]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(tctr_hi_read_reg_n_0),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(rd_trng0cnth),
        .I4(\trng0cnt_reg_n_0_[1] ),
        .O(\bdatr[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[1]_INST_0_i_3 
       (.I0(\bdatr[15]_INST_0_i_9_n_0 ),
        .I1(rd_trng0cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(data7[1]),
        .O(\bdatr[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF0FCF0FEF0)) 
    \bdatr[1]_INST_0_i_4 
       (.I0(\bdatr[15]_INST_0_i_10_n_0 ),
        .I1(\bdatr[15]_INST_0_i_11_n_0 ),
        .I2(\bdatr[1]_INST_0_i_5_n_0 ),
        .I3(\trngrand_reg_n_0_[1] ),
        .I4(trng_lcgo[26]),
        .I5(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[1]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF000408)) 
    \bdatr[1]_INST_0_i_5 
       (.I0(trng_lcgo[10]),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandl),
        .I3(p_8_in[1]),
        .I4(rd_trngrandh),
        .O(\bdatr[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bdatr[2]_INST_0 
       (.I0(\bdatr[2]_INST_0_i_1_n_0 ),
        .I1(\bdatr[2]_INST_0_i_2_n_0 ),
        .I2(\bdatr[2]_INST_0_i_3_n_0 ),
        .I3(\trng1cnt_reg_n_0_[2] ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[2]_INST_0_i_4_n_0 ),
        .O(bdatr[2]));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(tctr_lo_word[2]),
        .I1(\bdatr[15]_INST_0_i_6_n_0 ),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(tctr_hi_read_reg_n_0),
        .I4(data5[2]),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bdatr[2]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(tctr_hi_read_reg_n_0),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(rd_trng0cnth),
        .I4(\trng0cnt_reg_n_0_[2] ),
        .O(\bdatr[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[2]_INST_0_i_3 
       (.I0(\bdatr[15]_INST_0_i_9_n_0 ),
        .I1(rd_trng0cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(data7[2]),
        .O(\bdatr[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF0FCF0FEF0)) 
    \bdatr[2]_INST_0_i_4 
       (.I0(\bdatr[15]_INST_0_i_10_n_0 ),
        .I1(\bdatr[15]_INST_0_i_11_n_0 ),
        .I2(\bdatr[2]_INST_0_i_5_n_0 ),
        .I3(\trngrand_reg_n_0_[2] ),
        .I4(trng_lcgo[23]),
        .I5(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF000408)) 
    \bdatr[2]_INST_0_i_5 
       (.I0(trng_lcgo[7]),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandl),
        .I3(p_8_in[2]),
        .I4(rd_trngrandh),
        .O(\bdatr[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bdatr[3]_INST_0 
       (.I0(\bdatr[3]_INST_0_i_1_n_0 ),
        .I1(\bdatr[3]_INST_0_i_2_n_0 ),
        .I2(\bdatr[3]_INST_0_i_3_n_0 ),
        .I3(\trng1cnt_reg_n_0_[3] ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[3]_INST_0_i_4_n_0 ),
        .O(bdatr[3]));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(tctr_lo_word[3]),
        .I1(\bdatr[15]_INST_0_i_6_n_0 ),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(tctr_hi_read_reg_n_0),
        .I4(data5[3]),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bdatr[3]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(tctr_hi_read_reg_n_0),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(rd_trng0cnth),
        .I4(\trng0cnt_reg_n_0_[3] ),
        .O(\bdatr[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[3]_INST_0_i_3 
       (.I0(\bdatr[15]_INST_0_i_9_n_0 ),
        .I1(rd_trng0cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(data7[3]),
        .O(\bdatr[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF0FCF0FEF0)) 
    \bdatr[3]_INST_0_i_4 
       (.I0(\bdatr[15]_INST_0_i_10_n_0 ),
        .I1(\bdatr[15]_INST_0_i_11_n_0 ),
        .I2(\bdatr[3]_INST_0_i_5_n_0 ),
        .I3(\trngrand_reg_n_0_[3] ),
        .I4(trng_lcgo[20]),
        .I5(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[3]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF000408)) 
    \bdatr[3]_INST_0_i_5 
       (.I0(trng_lcgo[4]),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandl),
        .I3(p_8_in[3]),
        .I4(rd_trngrandh),
        .O(\bdatr[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bdatr[4]_INST_0 
       (.I0(\bdatr[4]_INST_0_i_1_n_0 ),
        .I1(\bdatr[4]_INST_0_i_2_n_0 ),
        .I2(\bdatr[4]_INST_0_i_3_n_0 ),
        .I3(\trng1cnt_reg_n_0_[4] ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[4]_INST_0_i_4_n_0 ),
        .O(bdatr[4]));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(tctr_lo_word[4]),
        .I1(\bdatr[15]_INST_0_i_6_n_0 ),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(tctr_hi_read_reg_n_0),
        .I4(data5[4]),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bdatr[4]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(tctr_hi_read_reg_n_0),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(rd_trng0cnth),
        .I4(\trng0cnt_reg_n_0_[4] ),
        .O(\bdatr[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[4]_INST_0_i_3 
       (.I0(\bdatr[15]_INST_0_i_9_n_0 ),
        .I1(rd_trng0cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(data7[4]),
        .O(\bdatr[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF0FCF0FEF0)) 
    \bdatr[4]_INST_0_i_4 
       (.I0(\bdatr[15]_INST_0_i_10_n_0 ),
        .I1(\bdatr[15]_INST_0_i_11_n_0 ),
        .I2(\bdatr[4]_INST_0_i_5_n_0 ),
        .I3(\trngrand_reg_n_0_[4] ),
        .I4(trng_lcgo[17]),
        .I5(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[4]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF000408)) 
    \bdatr[4]_INST_0_i_5 
       (.I0(trng_lcgo[1]),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandl),
        .I3(p_8_in[4]),
        .I4(rd_trngrandh),
        .O(\bdatr[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bdatr[5]_INST_0 
       (.I0(\bdatr[5]_INST_0_i_1_n_0 ),
        .I1(\bdatr[5]_INST_0_i_2_n_0 ),
        .I2(\bdatr[5]_INST_0_i_3_n_0 ),
        .I3(\trng1cnt_reg_n_0_[5] ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[5]_INST_0_i_4_n_0 ),
        .O(bdatr[5]));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(tctr_lo_word[5]),
        .I1(\bdatr[15]_INST_0_i_6_n_0 ),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(tctr_hi_read_reg_n_0),
        .I4(data5[5]),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bdatr[5]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(tctr_hi_read_reg_n_0),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(rd_trng0cnth),
        .I4(\trng0cnt_reg_n_0_[5] ),
        .O(\bdatr[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[5]_INST_0_i_3 
       (.I0(\bdatr[15]_INST_0_i_9_n_0 ),
        .I1(rd_trng0cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(data7[5]),
        .O(\bdatr[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF0FCF0FEF0)) 
    \bdatr[5]_INST_0_i_4 
       (.I0(\bdatr[15]_INST_0_i_10_n_0 ),
        .I1(\bdatr[15]_INST_0_i_11_n_0 ),
        .I2(\bdatr[5]_INST_0_i_5_n_0 ),
        .I3(\trngrand_reg_n_0_[5] ),
        .I4(trng_lcgo[14]),
        .I5(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[5]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF000408)) 
    \bdatr[5]_INST_0_i_5 
       (.I0(trng_lcgo[30]),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandl),
        .I3(p_8_in[5]),
        .I4(rd_trngrandh),
        .O(\bdatr[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bdatr[6]_INST_0 
       (.I0(\bdatr[6]_INST_0_i_1_n_0 ),
        .I1(\bdatr[6]_INST_0_i_2_n_0 ),
        .I2(\bdatr[6]_INST_0_i_3_n_0 ),
        .I3(\trng1cnt_reg_n_0_[6] ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[6]_INST_0_i_4_n_0 ),
        .O(bdatr[6]));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(tctr_lo_word[6]),
        .I1(\bdatr[15]_INST_0_i_6_n_0 ),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(tctr_hi_read_reg_n_0),
        .I4(data5[6]),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bdatr[6]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(tctr_hi_read_reg_n_0),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(rd_trng0cnth),
        .I4(\trng0cnt_reg_n_0_[6] ),
        .O(\bdatr[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[6]_INST_0_i_3 
       (.I0(\bdatr[15]_INST_0_i_9_n_0 ),
        .I1(rd_trng0cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(data7[6]),
        .O(\bdatr[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF0FCF0FEF0)) 
    \bdatr[6]_INST_0_i_4 
       (.I0(\bdatr[15]_INST_0_i_10_n_0 ),
        .I1(\bdatr[15]_INST_0_i_11_n_0 ),
        .I2(\bdatr[6]_INST_0_i_5_n_0 ),
        .I3(\trngrand_reg_n_0_[6] ),
        .I4(trng_lcgo[11]),
        .I5(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[6]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF000408)) 
    \bdatr[6]_INST_0_i_5 
       (.I0(trng_lcgo[27]),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandl),
        .I3(p_8_in[6]),
        .I4(rd_trngrandh),
        .O(\bdatr[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bdatr[7]_INST_0 
       (.I0(\bdatr[7]_INST_0_i_1_n_0 ),
        .I1(\bdatr[7]_INST_0_i_2_n_0 ),
        .I2(\bdatr[7]_INST_0_i_3_n_0 ),
        .I3(\trng1cnt_reg_n_0_[7] ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[7]_INST_0_i_4_n_0 ),
        .O(bdatr[7]));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(tctr_lo_word[7]),
        .I1(\bdatr[15]_INST_0_i_6_n_0 ),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(tctr_hi_read_reg_n_0),
        .I4(data5[7]),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bdatr[7]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(tctr_hi_read_reg_n_0),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(rd_trng0cnth),
        .I4(\trng0cnt_reg_n_0_[7] ),
        .O(\bdatr[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[7]_INST_0_i_3 
       (.I0(\bdatr[15]_INST_0_i_9_n_0 ),
        .I1(rd_trng0cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(data7[7]),
        .O(\bdatr[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF0FCF0FEF0)) 
    \bdatr[7]_INST_0_i_4 
       (.I0(\bdatr[15]_INST_0_i_10_n_0 ),
        .I1(\bdatr[15]_INST_0_i_11_n_0 ),
        .I2(\bdatr[7]_INST_0_i_5_n_0 ),
        .I3(\trngrand_reg_n_0_[7] ),
        .I4(trng_lcgo[8]),
        .I5(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[7]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF000408)) 
    \bdatr[7]_INST_0_i_5 
       (.I0(trng_lcgo[24]),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandl),
        .I3(p_8_in[7]),
        .I4(rd_trngrandh),
        .O(\bdatr[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bdatr[8]_INST_0 
       (.I0(\bdatr[8]_INST_0_i_1_n_0 ),
        .I1(\bdatr[8]_INST_0_i_2_n_0 ),
        .I2(\bdatr[8]_INST_0_i_3_n_0 ),
        .I3(\trng1cnt_reg_n_0_[8] ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[8]_INST_0_i_4_n_0 ),
        .O(bdatr[8]));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \bdatr[8]_INST_0_i_1 
       (.I0(tctr_lo_word[8]),
        .I1(\bdatr[15]_INST_0_i_6_n_0 ),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(tctr_hi_read_reg_n_0),
        .I4(data5[8]),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bdatr[8]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(tctr_hi_read_reg_n_0),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(rd_trng0cnth),
        .I4(\trng0cnt_reg_n_0_[8] ),
        .O(\bdatr[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[8]_INST_0_i_3 
       (.I0(\bdatr[15]_INST_0_i_9_n_0 ),
        .I1(rd_trng0cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(data7[8]),
        .O(\bdatr[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF0FCF0FEF0)) 
    \bdatr[8]_INST_0_i_4 
       (.I0(\bdatr[15]_INST_0_i_10_n_0 ),
        .I1(\bdatr[15]_INST_0_i_11_n_0 ),
        .I2(\bdatr[8]_INST_0_i_5_n_0 ),
        .I3(\trngrand_reg_n_0_[8] ),
        .I4(trng_lcgo[5]),
        .I5(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[8]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF000408)) 
    \bdatr[8]_INST_0_i_5 
       (.I0(trng_lcgo[21]),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandl),
        .I3(p_8_in[8]),
        .I4(rd_trngrandh),
        .O(\bdatr[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bdatr[9]_INST_0 
       (.I0(\bdatr[9]_INST_0_i_1_n_0 ),
        .I1(\bdatr[9]_INST_0_i_2_n_0 ),
        .I2(\bdatr[9]_INST_0_i_3_n_0 ),
        .I3(\trng1cnt_reg_n_0_[9] ),
        .I4(\bdatr[15]_INST_0_i_4_n_0 ),
        .I5(\bdatr[9]_INST_0_i_4_n_0 ),
        .O(bdatr[9]));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \bdatr[9]_INST_0_i_1 
       (.I0(tctr_lo_word[9]),
        .I1(\bdatr[15]_INST_0_i_6_n_0 ),
        .I2(\bdatr[15]_INST_0_i_7_n_0 ),
        .I3(tctr_hi_read_reg_n_0),
        .I4(data5[9]),
        .I5(\bdatr[15]_INST_0_i_8_n_0 ),
        .O(\bdatr[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bdatr[9]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(tctr_hi_read_reg_n_0),
        .I2(\bdatr[15]_INST_0_i_9_n_0 ),
        .I3(rd_trng0cnth),
        .I4(\trng0cnt_reg_n_0_[9] ),
        .O(\bdatr[9]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatr[9]_INST_0_i_3 
       (.I0(\bdatr[15]_INST_0_i_9_n_0 ),
        .I1(rd_trng0cntl),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(data7[9]),
        .O(\bdatr[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF0FCF0FEF0)) 
    \bdatr[9]_INST_0_i_4 
       (.I0(\bdatr[15]_INST_0_i_10_n_0 ),
        .I1(\bdatr[15]_INST_0_i_11_n_0 ),
        .I2(\bdatr[9]_INST_0_i_5_n_0 ),
        .I3(\trngrand_reg_n_0_[9] ),
        .I4(trng_lcgo[2]),
        .I5(\bdatr[15]_INST_0_i_13_n_0 ),
        .O(\bdatr[9]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF000408)) 
    \bdatr[9]_INST_0_i_5 
       (.I0(trng_lcgo[18]),
        .I1(rd_trngtlcgh),
        .I2(rd_trngrandl),
        .I3(p_8_in[9]),
        .I4(rd_trngrandh),
        .O(\bdatr[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    rd_trng0cnth_i_1
       (.I0(badr[2]),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(bcs_trng_n),
        .I5(badr[3]),
        .O(rd_trng0cnth0));
  FDRE rd_trng0cnth_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_trng0cnth0),
        .Q(rd_trng0cnth),
        .R(\trng_lcg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    rd_trng0cntl_i_1
       (.I0(badr[1]),
        .I1(bcmdr),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(bcs_trng_n),
        .I5(badr[3]),
        .O(rd_trng0cntl0));
  FDRE rd_trng0cntl_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_trng0cntl0),
        .Q(rd_trng0cntl),
        .R(\trng_lcg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    rd_trng1cnth_i_1
       (.I0(badr[2]),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(bcs_trng_n),
        .I5(badr[3]),
        .O(rd_trng1cnth0));
  FDRE rd_trng1cnth_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_trng1cnth0),
        .Q(rd_trng1cnth),
        .R(\trng_lcg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    rd_trng1cntl_i_1
       (.I0(badr[1]),
        .I1(badr[2]),
        .I2(bcmdr),
        .I3(badr[0]),
        .I4(bcs_trng_n),
        .I5(badr[3]),
        .O(rd_trng1cntl0));
  FDRE rd_trng1cntl_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_trng1cntl0),
        .Q(rd_trng1cntl),
        .R(\trng_lcg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    rd_trngrandh_i_1
       (.I0(badr[2]),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[0]),
        .I5(bcs_trng_n),
        .O(rd_trngrandh0));
  FDRE rd_trngrandh_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_trngrandh0),
        .Q(rd_trngrandh),
        .R(\trng_lcg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    rd_trngrandl_i_1
       (.I0(badr[2]),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(bcs_trng_n),
        .I4(badr[0]),
        .I5(badr[3]),
        .O(rd_trngrandl0));
  FDRE rd_trngrandl_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_trngrandl0),
        .Q(rd_trngrandl),
        .R(\trng_lcg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    rd_trngtlcgh_i_1
       (.I0(badr[2]),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[0]),
        .I5(bcs_trng_n),
        .O(rd_trngtlcgh0));
  FDRE rd_trngtlcgh_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_trngtlcgh0),
        .Q(rd_trngtlcgh),
        .R(\trng_lcg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    rd_trngtlcgl_i_1
       (.I0(bcmdr),
        .I1(badr[2]),
        .I2(badr[1]),
        .I3(bcs_trng_n),
        .I4(badr[0]),
        .I5(badr[3]),
        .O(rd_trngtlcgl0));
  FDRE rd_trngtlcgl_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_trngtlcgl0),
        .Q(rd_trngtlcgl),
        .R(\trng_lcg[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4000FFFF)) 
    \tctl_hi_word[15]_i_1 
       (.I0(\tctl_hi_word[15]_i_3_n_0 ),
        .I1(badr[1]),
        .I2(brdy),
        .I3(bcmdw),
        .I4(rst_n),
        .O(tctl_hi_word0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \tctl_hi_word[15]_i_2 
       (.I0(badr[1]),
        .I1(brdy),
        .I2(bcmdw),
        .I3(badr[3]),
        .I4(badr[0]),
        .I5(bcs_trng_n),
        .O(tctl_hi_word01_out));
  LUT3 #(
    .INIT(8'hFE)) 
    \tctl_hi_word[15]_i_3 
       (.I0(bcs_trng_n),
        .I1(badr[0]),
        .I2(badr[3]),
        .O(\tctl_hi_word[15]_i_3_n_0 ));
  FDRE \tctl_hi_word_reg[0] 
       (.C(clk),
        .CE(tctl_hi_word01_out),
        .D(bdatw[0]),
        .Q(p_1_in[16]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[10] 
       (.C(clk),
        .CE(tctl_hi_word01_out),
        .D(bdatw[10]),
        .Q(p_1_in[26]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[11] 
       (.C(clk),
        .CE(tctl_hi_word01_out),
        .D(bdatw[11]),
        .Q(p_1_in[27]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[12] 
       (.C(clk),
        .CE(tctl_hi_word01_out),
        .D(bdatw[12]),
        .Q(p_1_in[28]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[13] 
       (.C(clk),
        .CE(tctl_hi_word01_out),
        .D(bdatw[13]),
        .Q(p_1_in[29]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[14] 
       (.C(clk),
        .CE(tctl_hi_word01_out),
        .D(bdatw[14]),
        .Q(p_1_in[30]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[15] 
       (.C(clk),
        .CE(tctl_hi_word01_out),
        .D(bdatw[15]),
        .Q(p_1_in[31]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[1] 
       (.C(clk),
        .CE(tctl_hi_word01_out),
        .D(bdatw[1]),
        .Q(p_1_in[17]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[2] 
       (.C(clk),
        .CE(tctl_hi_word01_out),
        .D(bdatw[2]),
        .Q(p_1_in[18]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[3] 
       (.C(clk),
        .CE(tctl_hi_word01_out),
        .D(bdatw[3]),
        .Q(p_1_in[19]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[4] 
       (.C(clk),
        .CE(tctl_hi_word01_out),
        .D(bdatw[4]),
        .Q(p_1_in[20]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[5] 
       (.C(clk),
        .CE(tctl_hi_word01_out),
        .D(bdatw[5]),
        .Q(p_1_in[21]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[6] 
       (.C(clk),
        .CE(tctl_hi_word01_out),
        .D(bdatw[6]),
        .Q(p_1_in[22]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[7] 
       (.C(clk),
        .CE(tctl_hi_word01_out),
        .D(bdatw[7]),
        .Q(p_1_in[23]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[8] 
       (.C(clk),
        .CE(tctl_hi_word01_out),
        .D(bdatw[8]),
        .Q(p_1_in[24]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[9] 
       (.C(clk),
        .CE(tctl_hi_word01_out),
        .D(bdatw[9]),
        .Q(p_1_in[25]),
        .R(tctl_hi_word0));
  LUT5 #(
    .INIT(32'hFE020000)) 
    tctr_hi_read_i_1
       (.I0(tctr_hi_read_reg_n_0),
        .I1(rd_trng1cntl),
        .I2(tctr_hi_read_i_2_n_0),
        .I3(\tctr_lo_word[15]_i_1_n_0 ),
        .I4(rst_n),
        .O(tctr_hi_read_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    tctr_hi_read_i_2
       (.I0(rd_trng0cntl),
        .I1(rd_trngrandl),
        .I2(rd_trngtlcgh),
        .I3(rd_trngrandh),
        .I4(rd_trngtlcgl),
        .I5(tctr_hi_read_i_3_n_0),
        .O(tctr_hi_read_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tctr_hi_read_i_3
       (.I0(rd_trng1cnth),
        .I1(rd_trng0cnth),
        .O(tctr_hi_read_i_3_n_0));
  FDRE tctr_hi_read_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(tctr_hi_read_i_1_n_0),
        .Q(tctr_hi_read_reg_n_0),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tctr_lo_word[0]_i_1 
       (.I0(\tctr_lo_word[0]_i_2_n_0 ),
        .I1(\trng1cnt_reg_n_0_[0] ),
        .I2(rd_trng1cnth),
        .O(\tctr_lo_word[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A030A0C0A0F0A00)) 
    \tctr_lo_word[0]_i_2 
       (.I0(\trng0cnt_reg_n_0_[0] ),
        .I1(rd_trngtlcgh),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[0] ),
        .I5(trng_lcgo[29]),
        .O(\tctr_lo_word[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tctr_lo_word[10]_i_1 
       (.I0(\tctr_lo_word[10]_i_2_n_0 ),
        .I1(\trng1cnt_reg_n_0_[10] ),
        .I2(rd_trng1cnth),
        .O(\tctr_lo_word[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A030A0C0A0F0A00)) 
    \tctr_lo_word[10]_i_2 
       (.I0(\trng0cnt_reg_n_0_[10] ),
        .I1(rd_trngtlcgh),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[10] ),
        .I5(trng_lcgo[31]),
        .O(\tctr_lo_word[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tctr_lo_word[11]_i_1 
       (.I0(\tctr_lo_word[11]_i_2_n_0 ),
        .I1(\trng1cnt_reg_n_0_[11] ),
        .I2(rd_trng1cnth),
        .O(\tctr_lo_word[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A030A0C0A0F0A00)) 
    \tctr_lo_word[11]_i_2 
       (.I0(\trng0cnt_reg_n_0_[11] ),
        .I1(rd_trngtlcgh),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[11] ),
        .I5(trng_lcgo[28]),
        .O(\tctr_lo_word[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tctr_lo_word[12]_i_1 
       (.I0(\tctr_lo_word[12]_i_2_n_0 ),
        .I1(\trng1cnt_reg_n_0_[12] ),
        .I2(rd_trng1cnth),
        .O(\tctr_lo_word[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A030A0C0A0F0A00)) 
    \tctr_lo_word[12]_i_2 
       (.I0(\trng0cnt_reg_n_0_[12] ),
        .I1(rd_trngtlcgh),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[12] ),
        .I5(trng_lcgo[25]),
        .O(\tctr_lo_word[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tctr_lo_word[13]_i_1 
       (.I0(\tctr_lo_word[13]_i_2_n_0 ),
        .I1(\trng1cnt_reg_n_0_[13] ),
        .I2(rd_trng1cnth),
        .O(\tctr_lo_word[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A030A0C0A0F0A00)) 
    \tctr_lo_word[13]_i_2 
       (.I0(\trng0cnt_reg_n_0_[13] ),
        .I1(rd_trngtlcgh),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[13] ),
        .I5(trng_lcgo[22]),
        .O(\tctr_lo_word[13]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tctr_lo_word[14]_i_1 
       (.I0(\tctr_lo_word[14]_i_2_n_0 ),
        .I1(\trng1cnt_reg_n_0_[14] ),
        .I2(rd_trng1cnth),
        .O(\tctr_lo_word[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A030A0C0A0F0A00)) 
    \tctr_lo_word[14]_i_2 
       (.I0(\trng0cnt_reg_n_0_[14] ),
        .I1(rd_trngtlcgh),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[14] ),
        .I5(trng_lcgo[19]),
        .O(\tctr_lo_word[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tctr_lo_word[15]_i_1 
       (.I0(rd_trng0cnth),
        .I1(rd_trng1cnth),
        .I2(rd_trngrandh),
        .I3(rd_trngtlcgh),
        .O(\tctr_lo_word[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tctr_lo_word[15]_i_2 
       (.I0(\tctr_lo_word[15]_i_3_n_0 ),
        .I1(\trng1cnt_reg_n_0_[15] ),
        .I2(rd_trng1cnth),
        .O(\tctr_lo_word[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A030A0C0A0F0A00)) 
    \tctr_lo_word[15]_i_3 
       (.I0(\trng0cnt_reg_n_0_[15] ),
        .I1(rd_trngtlcgh),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[15] ),
        .I5(trng_lcgo[16]),
        .O(\tctr_lo_word[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tctr_lo_word[1]_i_1 
       (.I0(\tctr_lo_word[1]_i_2_n_0 ),
        .I1(\trng1cnt_reg_n_0_[1] ),
        .I2(rd_trng1cnth),
        .O(\tctr_lo_word[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A030A0C0A0F0A00)) 
    \tctr_lo_word[1]_i_2 
       (.I0(\trng0cnt_reg_n_0_[1] ),
        .I1(rd_trngtlcgh),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[1] ),
        .I5(trng_lcgo[26]),
        .O(\tctr_lo_word[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tctr_lo_word[2]_i_1 
       (.I0(\tctr_lo_word[2]_i_2_n_0 ),
        .I1(\trng1cnt_reg_n_0_[2] ),
        .I2(rd_trng1cnth),
        .O(\tctr_lo_word[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A030A0C0A0F0A00)) 
    \tctr_lo_word[2]_i_2 
       (.I0(\trng0cnt_reg_n_0_[2] ),
        .I1(rd_trngtlcgh),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[2] ),
        .I5(trng_lcgo[23]),
        .O(\tctr_lo_word[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tctr_lo_word[3]_i_1 
       (.I0(\tctr_lo_word[3]_i_2_n_0 ),
        .I1(\trng1cnt_reg_n_0_[3] ),
        .I2(rd_trng1cnth),
        .O(\tctr_lo_word[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A030A0C0A0F0A00)) 
    \tctr_lo_word[3]_i_2 
       (.I0(\trng0cnt_reg_n_0_[3] ),
        .I1(rd_trngtlcgh),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[3] ),
        .I5(trng_lcgo[20]),
        .O(\tctr_lo_word[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tctr_lo_word[4]_i_1 
       (.I0(\tctr_lo_word[4]_i_2_n_0 ),
        .I1(\trng1cnt_reg_n_0_[4] ),
        .I2(rd_trng1cnth),
        .O(\tctr_lo_word[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A030A0C0A0F0A00)) 
    \tctr_lo_word[4]_i_2 
       (.I0(\trng0cnt_reg_n_0_[4] ),
        .I1(rd_trngtlcgh),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[4] ),
        .I5(trng_lcgo[17]),
        .O(\tctr_lo_word[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tctr_lo_word[5]_i_1 
       (.I0(\tctr_lo_word[5]_i_2_n_0 ),
        .I1(\trng1cnt_reg_n_0_[5] ),
        .I2(rd_trng1cnth),
        .O(\tctr_lo_word[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A030A0C0A0F0A00)) 
    \tctr_lo_word[5]_i_2 
       (.I0(\trng0cnt_reg_n_0_[5] ),
        .I1(rd_trngtlcgh),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[5] ),
        .I5(trng_lcgo[14]),
        .O(\tctr_lo_word[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tctr_lo_word[6]_i_1 
       (.I0(\tctr_lo_word[6]_i_2_n_0 ),
        .I1(\trng1cnt_reg_n_0_[6] ),
        .I2(rd_trng1cnth),
        .O(\tctr_lo_word[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A030A0C0A0F0A00)) 
    \tctr_lo_word[6]_i_2 
       (.I0(\trng0cnt_reg_n_0_[6] ),
        .I1(rd_trngtlcgh),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[6] ),
        .I5(trng_lcgo[11]),
        .O(\tctr_lo_word[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tctr_lo_word[7]_i_1 
       (.I0(\tctr_lo_word[7]_i_2_n_0 ),
        .I1(\trng1cnt_reg_n_0_[7] ),
        .I2(rd_trng1cnth),
        .O(\tctr_lo_word[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A030A0C0A0F0A00)) 
    \tctr_lo_word[7]_i_2 
       (.I0(\trng0cnt_reg_n_0_[7] ),
        .I1(rd_trngtlcgh),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[7] ),
        .I5(trng_lcgo[8]),
        .O(\tctr_lo_word[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tctr_lo_word[8]_i_1 
       (.I0(\tctr_lo_word[8]_i_2_n_0 ),
        .I1(\trng1cnt_reg_n_0_[8] ),
        .I2(rd_trng1cnth),
        .O(\tctr_lo_word[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A030A0C0A0F0A00)) 
    \tctr_lo_word[8]_i_2 
       (.I0(\trng0cnt_reg_n_0_[8] ),
        .I1(rd_trngtlcgh),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[8] ),
        .I5(trng_lcgo[5]),
        .O(\tctr_lo_word[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tctr_lo_word[9]_i_1 
       (.I0(\tctr_lo_word[9]_i_2_n_0 ),
        .I1(\trng1cnt_reg_n_0_[9] ),
        .I2(rd_trng1cnth),
        .O(\tctr_lo_word[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A030A0C0A0F0A00)) 
    \tctr_lo_word[9]_i_2 
       (.I0(\trng0cnt_reg_n_0_[9] ),
        .I1(rd_trngtlcgh),
        .I2(rd_trng1cnth),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[9] ),
        .I5(trng_lcgo[2]),
        .O(\tctr_lo_word[9]_i_2_n_0 ));
  FDRE \tctr_lo_word_reg[0] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(\tctr_lo_word[0]_i_1_n_0 ),
        .Q(tctr_lo_word[0]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \tctr_lo_word_reg[10] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(\tctr_lo_word[10]_i_1_n_0 ),
        .Q(tctr_lo_word[10]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \tctr_lo_word_reg[11] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(\tctr_lo_word[11]_i_1_n_0 ),
        .Q(tctr_lo_word[11]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \tctr_lo_word_reg[12] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(\tctr_lo_word[12]_i_1_n_0 ),
        .Q(tctr_lo_word[12]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \tctr_lo_word_reg[13] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(\tctr_lo_word[13]_i_1_n_0 ),
        .Q(tctr_lo_word[13]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \tctr_lo_word_reg[14] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(\tctr_lo_word[14]_i_1_n_0 ),
        .Q(tctr_lo_word[14]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \tctr_lo_word_reg[15] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(\tctr_lo_word[15]_i_2_n_0 ),
        .Q(tctr_lo_word[15]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \tctr_lo_word_reg[1] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(\tctr_lo_word[1]_i_1_n_0 ),
        .Q(tctr_lo_word[1]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \tctr_lo_word_reg[2] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(\tctr_lo_word[2]_i_1_n_0 ),
        .Q(tctr_lo_word[2]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \tctr_lo_word_reg[3] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(\tctr_lo_word[3]_i_1_n_0 ),
        .Q(tctr_lo_word[3]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \tctr_lo_word_reg[4] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(\tctr_lo_word[4]_i_1_n_0 ),
        .Q(tctr_lo_word[4]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \tctr_lo_word_reg[5] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(\tctr_lo_word[5]_i_1_n_0 ),
        .Q(tctr_lo_word[5]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \tctr_lo_word_reg[6] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(\tctr_lo_word[6]_i_1_n_0 ),
        .Q(tctr_lo_word[6]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \tctr_lo_word_reg[7] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(\tctr_lo_word[7]_i_1_n_0 ),
        .Q(tctr_lo_word[7]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \tctr_lo_word_reg[8] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(\tctr_lo_word[8]_i_1_n_0 ),
        .Q(tctr_lo_word[8]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \tctr_lo_word_reg[9] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(\tctr_lo_word[9]_i_1_n_0 ),
        .Q(tctr_lo_word[9]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE tpll_rand1b0_reg
       (.C(trng_clk1),
        .CE(\<const1> ),
        .D(trng_clk2),
        .Q(tpll_rand1b0),
        .R(\<const0> ));
  FDRE tpll_rand1b1_reg
       (.C(trng_clk1),
        .CE(\<const1> ),
        .D(tpll_rand1b0),
        .Q(tpll_rand1b1),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h7)) 
    \trng0cnt[0]_i_1 
       (.I0(\trngrand[31]_i_2_n_0 ),
        .I1(rst_n),
        .O(\trng0cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \trng0cnt[0]_i_2 
       (.I0(\trng_s_reg_n_0_[3] ),
        .I1(trng_rand1b0),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \trng0cnt[0]_i_4 
       (.I0(\trng0cnt_reg_n_0_[0] ),
        .O(\trng0cnt[0]_i_4_n_0 ));
  FDRE \trng0cnt_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[0]_i_3_n_7 ),
        .Q(\trng0cnt_reg_n_0_[0] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng0cnt_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({\trng0cnt_reg[0]_i_3_n_0 ,\trng0cnt_reg[0]_i_3_n_1 ,\trng0cnt_reg[0]_i_3_n_2 ,\trng0cnt_reg[0]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\trng0cnt_reg[0]_i_3_n_4 ,\trng0cnt_reg[0]_i_3_n_5 ,\trng0cnt_reg[0]_i_3_n_6 ,\trng0cnt_reg[0]_i_3_n_7 }),
        .S({\trng0cnt_reg_n_0_[3] ,\trng0cnt_reg_n_0_[2] ,\trng0cnt_reg_n_0_[1] ,\trng0cnt[0]_i_4_n_0 }));
  FDRE \trng0cnt_reg[10] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[8]_i_1_n_5 ),
        .Q(\trng0cnt_reg_n_0_[10] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[11] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[8]_i_1_n_4 ),
        .Q(\trng0cnt_reg_n_0_[11] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[12] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[12]_i_1_n_7 ),
        .Q(\trng0cnt_reg_n_0_[12] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng0cnt_reg[12]_i_1 
       (.CI(\trng0cnt_reg[8]_i_1_n_0 ),
        .CO({\trng0cnt_reg[12]_i_1_n_0 ,\trng0cnt_reg[12]_i_1_n_1 ,\trng0cnt_reg[12]_i_1_n_2 ,\trng0cnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng0cnt_reg[12]_i_1_n_4 ,\trng0cnt_reg[12]_i_1_n_5 ,\trng0cnt_reg[12]_i_1_n_6 ,\trng0cnt_reg[12]_i_1_n_7 }),
        .S({\trng0cnt_reg_n_0_[15] ,\trng0cnt_reg_n_0_[14] ,\trng0cnt_reg_n_0_[13] ,\trng0cnt_reg_n_0_[12] }));
  FDRE \trng0cnt_reg[13] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[12]_i_1_n_6 ),
        .Q(\trng0cnt_reg_n_0_[13] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[14] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[12]_i_1_n_5 ),
        .Q(\trng0cnt_reg_n_0_[14] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[15] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[12]_i_1_n_4 ),
        .Q(\trng0cnt_reg_n_0_[15] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[16] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[16]_i_1_n_7 ),
        .Q(data5[0]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng0cnt_reg[16]_i_1 
       (.CI(\trng0cnt_reg[12]_i_1_n_0 ),
        .CO({\trng0cnt_reg[16]_i_1_n_0 ,\trng0cnt_reg[16]_i_1_n_1 ,\trng0cnt_reg[16]_i_1_n_2 ,\trng0cnt_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng0cnt_reg[16]_i_1_n_4 ,\trng0cnt_reg[16]_i_1_n_5 ,\trng0cnt_reg[16]_i_1_n_6 ,\trng0cnt_reg[16]_i_1_n_7 }),
        .S(data5[3:0]));
  FDRE \trng0cnt_reg[17] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[16]_i_1_n_6 ),
        .Q(data5[1]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[18] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[16]_i_1_n_5 ),
        .Q(data5[2]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[19] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[16]_i_1_n_4 ),
        .Q(data5[3]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[0]_i_3_n_6 ),
        .Q(\trng0cnt_reg_n_0_[1] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[20] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[20]_i_1_n_7 ),
        .Q(data5[4]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng0cnt_reg[20]_i_1 
       (.CI(\trng0cnt_reg[16]_i_1_n_0 ),
        .CO({\trng0cnt_reg[20]_i_1_n_0 ,\trng0cnt_reg[20]_i_1_n_1 ,\trng0cnt_reg[20]_i_1_n_2 ,\trng0cnt_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng0cnt_reg[20]_i_1_n_4 ,\trng0cnt_reg[20]_i_1_n_5 ,\trng0cnt_reg[20]_i_1_n_6 ,\trng0cnt_reg[20]_i_1_n_7 }),
        .S(data5[7:4]));
  FDRE \trng0cnt_reg[21] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[20]_i_1_n_6 ),
        .Q(data5[5]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[22] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[20]_i_1_n_5 ),
        .Q(data5[6]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[23] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[20]_i_1_n_4 ),
        .Q(data5[7]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[24] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[24]_i_1_n_7 ),
        .Q(data5[8]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng0cnt_reg[24]_i_1 
       (.CI(\trng0cnt_reg[20]_i_1_n_0 ),
        .CO({\trng0cnt_reg[24]_i_1_n_0 ,\trng0cnt_reg[24]_i_1_n_1 ,\trng0cnt_reg[24]_i_1_n_2 ,\trng0cnt_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng0cnt_reg[24]_i_1_n_4 ,\trng0cnt_reg[24]_i_1_n_5 ,\trng0cnt_reg[24]_i_1_n_6 ,\trng0cnt_reg[24]_i_1_n_7 }),
        .S(data5[11:8]));
  FDRE \trng0cnt_reg[25] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[24]_i_1_n_6 ),
        .Q(data5[9]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[26] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[24]_i_1_n_5 ),
        .Q(data5[10]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[27] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[24]_i_1_n_4 ),
        .Q(data5[11]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[28] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[28]_i_1_n_7 ),
        .Q(data5[12]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng0cnt_reg[28]_i_1 
       (.CI(\trng0cnt_reg[24]_i_1_n_0 ),
        .CO({\trng0cnt_reg[28]_i_1_n_1 ,\trng0cnt_reg[28]_i_1_n_2 ,\trng0cnt_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng0cnt_reg[28]_i_1_n_4 ,\trng0cnt_reg[28]_i_1_n_5 ,\trng0cnt_reg[28]_i_1_n_6 ,\trng0cnt_reg[28]_i_1_n_7 }),
        .S(data5[15:12]));
  FDRE \trng0cnt_reg[29] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[28]_i_1_n_6 ),
        .Q(data5[13]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[0]_i_3_n_5 ),
        .Q(\trng0cnt_reg_n_0_[2] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[30] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[28]_i_1_n_5 ),
        .Q(data5[14]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[31] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[28]_i_1_n_4 ),
        .Q(data5[15]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[0]_i_3_n_4 ),
        .Q(\trng0cnt_reg_n_0_[3] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[4]_i_1_n_7 ),
        .Q(\trng0cnt_reg_n_0_[4] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng0cnt_reg[4]_i_1 
       (.CI(\trng0cnt_reg[0]_i_3_n_0 ),
        .CO({\trng0cnt_reg[4]_i_1_n_0 ,\trng0cnt_reg[4]_i_1_n_1 ,\trng0cnt_reg[4]_i_1_n_2 ,\trng0cnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng0cnt_reg[4]_i_1_n_4 ,\trng0cnt_reg[4]_i_1_n_5 ,\trng0cnt_reg[4]_i_1_n_6 ,\trng0cnt_reg[4]_i_1_n_7 }),
        .S({\trng0cnt_reg_n_0_[7] ,\trng0cnt_reg_n_0_[6] ,\trng0cnt_reg_n_0_[5] ,\trng0cnt_reg_n_0_[4] }));
  FDRE \trng0cnt_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[4]_i_1_n_6 ),
        .Q(\trng0cnt_reg_n_0_[5] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[4]_i_1_n_5 ),
        .Q(\trng0cnt_reg_n_0_[6] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[4]_i_1_n_4 ),
        .Q(\trng0cnt_reg_n_0_[7] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng0cnt_reg[8] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[8]_i_1_n_7 ),
        .Q(\trng0cnt_reg_n_0_[8] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng0cnt_reg[8]_i_1 
       (.CI(\trng0cnt_reg[4]_i_1_n_0 ),
        .CO({\trng0cnt_reg[8]_i_1_n_0 ,\trng0cnt_reg[8]_i_1_n_1 ,\trng0cnt_reg[8]_i_1_n_2 ,\trng0cnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng0cnt_reg[8]_i_1_n_4 ,\trng0cnt_reg[8]_i_1_n_5 ,\trng0cnt_reg[8]_i_1_n_6 ,\trng0cnt_reg[8]_i_1_n_7 }),
        .S({\trng0cnt_reg_n_0_[11] ,\trng0cnt_reg_n_0_[10] ,\trng0cnt_reg_n_0_[9] ,\trng0cnt_reg_n_0_[8] }));
  FDRE \trng0cnt_reg[9] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[8]_i_1_n_6 ),
        .Q(\trng0cnt_reg_n_0_[9] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trng1cnt[0]_i_1 
       (.I0(trng_rand1b0),
        .I1(\trng_s_reg_n_0_[3] ),
        .O(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \trng1cnt[0]_i_3 
       (.I0(\trng1cnt_reg_n_0_[0] ),
        .O(\trng1cnt[0]_i_3_n_0 ));
  FDRE \trng1cnt_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[0]_i_2_n_7 ),
        .Q(\trng1cnt_reg_n_0_[0] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng1cnt_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\trng1cnt_reg[0]_i_2_n_0 ,\trng1cnt_reg[0]_i_2_n_1 ,\trng1cnt_reg[0]_i_2_n_2 ,\trng1cnt_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\trng1cnt_reg[0]_i_2_n_4 ,\trng1cnt_reg[0]_i_2_n_5 ,\trng1cnt_reg[0]_i_2_n_6 ,\trng1cnt_reg[0]_i_2_n_7 }),
        .S({\trng1cnt_reg_n_0_[3] ,\trng1cnt_reg_n_0_[2] ,\trng1cnt_reg_n_0_[1] ,\trng1cnt[0]_i_3_n_0 }));
  FDRE \trng1cnt_reg[10] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[8]_i_1_n_5 ),
        .Q(\trng1cnt_reg_n_0_[10] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[8]_i_1_n_4 ),
        .Q(\trng1cnt_reg_n_0_[11] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[12]_i_1_n_7 ),
        .Q(\trng1cnt_reg_n_0_[12] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng1cnt_reg[12]_i_1 
       (.CI(\trng1cnt_reg[8]_i_1_n_0 ),
        .CO({\trng1cnt_reg[12]_i_1_n_0 ,\trng1cnt_reg[12]_i_1_n_1 ,\trng1cnt_reg[12]_i_1_n_2 ,\trng1cnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng1cnt_reg[12]_i_1_n_4 ,\trng1cnt_reg[12]_i_1_n_5 ,\trng1cnt_reg[12]_i_1_n_6 ,\trng1cnt_reg[12]_i_1_n_7 }),
        .S({\trng1cnt_reg_n_0_[15] ,\trng1cnt_reg_n_0_[14] ,\trng1cnt_reg_n_0_[13] ,\trng1cnt_reg_n_0_[12] }));
  FDRE \trng1cnt_reg[13] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[12]_i_1_n_6 ),
        .Q(\trng1cnt_reg_n_0_[13] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[12]_i_1_n_5 ),
        .Q(\trng1cnt_reg_n_0_[14] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[15] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[12]_i_1_n_4 ),
        .Q(\trng1cnt_reg_n_0_[15] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[16] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[16]_i_1_n_7 ),
        .Q(data7[0]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng1cnt_reg[16]_i_1 
       (.CI(\trng1cnt_reg[12]_i_1_n_0 ),
        .CO({\trng1cnt_reg[16]_i_1_n_0 ,\trng1cnt_reg[16]_i_1_n_1 ,\trng1cnt_reg[16]_i_1_n_2 ,\trng1cnt_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng1cnt_reg[16]_i_1_n_4 ,\trng1cnt_reg[16]_i_1_n_5 ,\trng1cnt_reg[16]_i_1_n_6 ,\trng1cnt_reg[16]_i_1_n_7 }),
        .S(data7[3:0]));
  FDRE \trng1cnt_reg[17] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[16]_i_1_n_6 ),
        .Q(data7[1]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[18] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[16]_i_1_n_5 ),
        .Q(data7[2]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[19] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[16]_i_1_n_4 ),
        .Q(data7[3]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[0]_i_2_n_6 ),
        .Q(\trng1cnt_reg_n_0_[1] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[20] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[20]_i_1_n_7 ),
        .Q(data7[4]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng1cnt_reg[20]_i_1 
       (.CI(\trng1cnt_reg[16]_i_1_n_0 ),
        .CO({\trng1cnt_reg[20]_i_1_n_0 ,\trng1cnt_reg[20]_i_1_n_1 ,\trng1cnt_reg[20]_i_1_n_2 ,\trng1cnt_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng1cnt_reg[20]_i_1_n_4 ,\trng1cnt_reg[20]_i_1_n_5 ,\trng1cnt_reg[20]_i_1_n_6 ,\trng1cnt_reg[20]_i_1_n_7 }),
        .S(data7[7:4]));
  FDRE \trng1cnt_reg[21] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[20]_i_1_n_6 ),
        .Q(data7[5]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[22] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[20]_i_1_n_5 ),
        .Q(data7[6]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[23] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[20]_i_1_n_4 ),
        .Q(data7[7]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[24] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[24]_i_1_n_7 ),
        .Q(data7[8]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng1cnt_reg[24]_i_1 
       (.CI(\trng1cnt_reg[20]_i_1_n_0 ),
        .CO({\trng1cnt_reg[24]_i_1_n_0 ,\trng1cnt_reg[24]_i_1_n_1 ,\trng1cnt_reg[24]_i_1_n_2 ,\trng1cnt_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng1cnt_reg[24]_i_1_n_4 ,\trng1cnt_reg[24]_i_1_n_5 ,\trng1cnt_reg[24]_i_1_n_6 ,\trng1cnt_reg[24]_i_1_n_7 }),
        .S(data7[11:8]));
  FDRE \trng1cnt_reg[25] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[24]_i_1_n_6 ),
        .Q(data7[9]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[26] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[24]_i_1_n_5 ),
        .Q(data7[10]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[27] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[24]_i_1_n_4 ),
        .Q(data7[11]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[28] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[28]_i_1_n_7 ),
        .Q(data7[12]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng1cnt_reg[28]_i_1 
       (.CI(\trng1cnt_reg[24]_i_1_n_0 ),
        .CO({\trng1cnt_reg[28]_i_1_n_1 ,\trng1cnt_reg[28]_i_1_n_2 ,\trng1cnt_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng1cnt_reg[28]_i_1_n_4 ,\trng1cnt_reg[28]_i_1_n_5 ,\trng1cnt_reg[28]_i_1_n_6 ,\trng1cnt_reg[28]_i_1_n_7 }),
        .S(data7[15:12]));
  FDRE \trng1cnt_reg[29] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[28]_i_1_n_6 ),
        .Q(data7[13]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[0]_i_2_n_5 ),
        .Q(\trng1cnt_reg_n_0_[2] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[30] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[28]_i_1_n_5 ),
        .Q(data7[14]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[31] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[28]_i_1_n_4 ),
        .Q(data7[15]),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[0]_i_2_n_4 ),
        .Q(\trng1cnt_reg_n_0_[3] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[4]_i_1_n_7 ),
        .Q(\trng1cnt_reg_n_0_[4] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng1cnt_reg[4]_i_1 
       (.CI(\trng1cnt_reg[0]_i_2_n_0 ),
        .CO({\trng1cnt_reg[4]_i_1_n_0 ,\trng1cnt_reg[4]_i_1_n_1 ,\trng1cnt_reg[4]_i_1_n_2 ,\trng1cnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng1cnt_reg[4]_i_1_n_4 ,\trng1cnt_reg[4]_i_1_n_5 ,\trng1cnt_reg[4]_i_1_n_6 ,\trng1cnt_reg[4]_i_1_n_7 }),
        .S({\trng1cnt_reg_n_0_[7] ,\trng1cnt_reg_n_0_[6] ,\trng1cnt_reg_n_0_[5] ,\trng1cnt_reg_n_0_[4] }));
  FDRE \trng1cnt_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[4]_i_1_n_6 ),
        .Q(\trng1cnt_reg_n_0_[5] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[4]_i_1_n_5 ),
        .Q(\trng1cnt_reg_n_0_[6] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[4]_i_1_n_4 ),
        .Q(\trng1cnt_reg_n_0_[7] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  FDRE \trng1cnt_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[8]_i_1_n_7 ),
        .Q(\trng1cnt_reg_n_0_[8] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng1cnt_reg[8]_i_1 
       (.CI(\trng1cnt_reg[4]_i_1_n_0 ),
        .CO({\trng1cnt_reg[8]_i_1_n_0 ,\trng1cnt_reg[8]_i_1_n_1 ,\trng1cnt_reg[8]_i_1_n_2 ,\trng1cnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng1cnt_reg[8]_i_1_n_4 ,\trng1cnt_reg[8]_i_1_n_5 ,\trng1cnt_reg[8]_i_1_n_6 ,\trng1cnt_reg[8]_i_1_n_7 }),
        .S({\trng1cnt_reg_n_0_[11] ,\trng1cnt_reg_n_0_[10] ,\trng1cnt_reg_n_0_[9] ,\trng1cnt_reg_n_0_[8] }));
  FDRE \trng1cnt_reg[9] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[8]_i_1_n_6 ),
        .Q(\trng1cnt_reg_n_0_[9] ),
        .R(\trng0cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[0]_i_1 
       (.I0(trng_lcgi[0]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(bdatw[0]),
        .O(p_2_in[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[10]_i_1 
       (.I0(trng_lcgi[10]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(bdatw[10]),
        .O(p_2_in[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[11]_i_1 
       (.I0(trng_lcgi[11]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(bdatw[11]),
        .O(p_2_in[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[12]_i_1 
       (.I0(trng_lcgi[12]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(bdatw[12]),
        .O(p_2_in[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[13]_i_1 
       (.I0(trng_lcgi[13]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(bdatw[13]),
        .O(p_2_in[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[14]_i_1 
       (.I0(trng_lcgi[14]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(bdatw[14]),
        .O(p_2_in[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[15]_i_1 
       (.I0(trng_lcgi[15]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(bdatw[15]),
        .O(p_2_in[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[16]_i_1 
       (.I0(trng_lcgi[16]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(p_1_in[16]),
        .O(p_2_in[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[17]_i_1 
       (.I0(trng_lcgi[17]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(p_1_in[17]),
        .O(p_2_in[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[18]_i_1 
       (.I0(trng_lcgi[18]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(p_1_in[18]),
        .O(p_2_in[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[19]_i_1 
       (.I0(trng_lcgi[19]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(p_1_in[19]),
        .O(p_2_in[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[1]_i_1 
       (.I0(trng_lcgi[1]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(bdatw[1]),
        .O(p_2_in[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[20]_i_1 
       (.I0(trng_lcgi[20]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(p_1_in[20]),
        .O(p_2_in[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[21]_i_1 
       (.I0(trng_lcgi[21]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(p_1_in[21]),
        .O(p_2_in[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[22]_i_1 
       (.I0(trng_lcgi[22]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(p_1_in[22]),
        .O(p_2_in[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[23]_i_1 
       (.I0(trng_lcgi[23]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(p_1_in[23]),
        .O(p_2_in[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[24]_i_1 
       (.I0(trng_lcgi[24]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(p_1_in[24]),
        .O(p_2_in[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[25]_i_1 
       (.I0(trng_lcgi[25]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(p_1_in[25]),
        .O(p_2_in[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[26]_i_1 
       (.I0(trng_lcgi[26]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(p_1_in[26]),
        .O(p_2_in[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[27]_i_1 
       (.I0(trng_lcgi[27]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(p_1_in[27]),
        .O(p_2_in[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[28]_i_1 
       (.I0(trng_lcgi[28]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(p_1_in[28]),
        .O(p_2_in[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[29]_i_1 
       (.I0(trng_lcgi[29]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(p_1_in[29]),
        .O(p_2_in[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[2]_i_1 
       (.I0(trng_lcgi[2]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(bdatw[2]),
        .O(p_2_in[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[30]_i_1 
       (.I0(trng_lcgi[30]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(p_1_in[30]),
        .O(p_2_in[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \trng_lcg[31]_i_1 
       (.I0(rst_n),
        .O(\trng_lcg[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \trng_lcg[31]_i_2 
       (.I0(rd_trngtlcgl),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .O(\trng_lcg[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[31]_i_3 
       (.I0(trng_lcgi[31]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(p_1_in[31]),
        .O(p_2_in[31]));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \trng_lcg[31]_i_4 
       (.I0(\tctl_hi_word[15]_i_3_n_0 ),
        .I1(badr[1]),
        .I2(brdy),
        .I3(bcmdw),
        .I4(badr[2]),
        .O(\trng_lcg[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[3]_i_1 
       (.I0(trng_lcgi[3]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(bdatw[3]),
        .O(p_2_in[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[4]_i_1 
       (.I0(trng_lcgi[4]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(bdatw[4]),
        .O(p_2_in[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[5]_i_1 
       (.I0(trng_lcgi[5]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(bdatw[5]),
        .O(p_2_in[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[6]_i_1 
       (.I0(trng_lcgi[6]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(bdatw[6]),
        .O(p_2_in[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[7]_i_1 
       (.I0(trng_lcgi[7]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(bdatw[7]),
        .O(p_2_in[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[8]_i_1 
       (.I0(trng_lcgi[8]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(bdatw[8]),
        .O(p_2_in[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \trng_lcg[9]_i_1 
       (.I0(trng_lcgi[9]),
        .I1(\trng_lcg[31]_i_4_n_0 ),
        .I2(bdatw[9]),
        .O(p_2_in[9]));
  FDRE \trng_lcg_reg[0] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(trng_lcgo[0]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[10] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[10]),
        .Q(trng_lcgo[10]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[11] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[11]),
        .Q(trng_lcgo[11]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[12] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[12]),
        .Q(trng_lcgo[12]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[13] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[13]),
        .Q(trng_lcgo[13]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[14] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[14]),
        .Q(trng_lcgo[14]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[15] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[15]),
        .Q(trng_lcgo[15]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[16] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[16]),
        .Q(trng_lcgo[16]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[17] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[17]),
        .Q(trng_lcgo[17]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[18] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[18]),
        .Q(trng_lcgo[18]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[19] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[19]),
        .Q(trng_lcgo[19]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[1] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(trng_lcgo[1]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[20] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[20]),
        .Q(trng_lcgo[20]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[21] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[21]),
        .Q(trng_lcgo[21]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[22] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[22]),
        .Q(trng_lcgo[22]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[23] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[23]),
        .Q(trng_lcgo[23]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[24] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[24]),
        .Q(trng_lcgo[24]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[25] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[25]),
        .Q(trng_lcgo[25]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[26] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[26]),
        .Q(trng_lcgo[26]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[27] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[27]),
        .Q(trng_lcgo[27]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[28] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[28]),
        .Q(trng_lcgo[28]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[29] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[29]),
        .Q(trng_lcgo[29]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[2] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(trng_lcgo[2]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[30] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[30]),
        .Q(trng_lcgo[30]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[31] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[31]),
        .Q(trng_lcgo[31]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[3] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(trng_lcgo[3]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[4] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(trng_lcgo[4]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[5] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(trng_lcgo[5]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[6] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(trng_lcgo[6]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[7] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(trng_lcgo[7]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[8] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[8]),
        .Q(trng_lcgo[8]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_lcg_reg[9] 
       (.C(clk),
        .CE(\trng_lcg[31]_i_2_n_0 ),
        .D(p_2_in[9]),
        .Q(trng_lcgo[9]),
        .R(\trng_lcg[31]_i_1_n_0 ));
  FDRE \trng_s_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tpll_rand1b0),
        .Q(\trng_s_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \trng_s_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trng_s_reg_n_0_[0] ),
        .Q(trng_rand1b0),
        .R(\<const0> ));
  FDRE \trng_s_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(tpll_rand1b1),
        .Q(\trng_s_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE \trng_s_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trng_s_reg_n_0_[2] ),
        .Q(\trng_s_reg_n_0_[3] ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \trngrand[0]_i_1 
       (.I0(\trngrand_reg_n_0_[1] ),
        .I1(\trng_s_reg_n_0_[3] ),
        .I2(trng_rand1b0),
        .I3(\trngrand_reg_n_0_[0] ),
        .I4(\trngrand[31]_i_2_n_0 ),
        .I5(bdatw[0]),
        .O(\trngrand[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[10]_i_1 
       (.I0(\trngrand_reg_n_0_[11] ),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(bdatw[10]),
        .O(\trngrand[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[11]_i_1 
       (.I0(\trngrand_reg_n_0_[12] ),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(bdatw[11]),
        .O(\trngrand[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[12]_i_1 
       (.I0(\trngrand_reg_n_0_[13] ),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(bdatw[12]),
        .O(\trngrand[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[13]_i_1 
       (.I0(\trngrand_reg_n_0_[14] ),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(bdatw[13]),
        .O(\trngrand[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[14]_i_1 
       (.I0(\trngrand_reg_n_0_[15] ),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(bdatw[14]),
        .O(\trngrand[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[15]_i_1 
       (.I0(p_8_in[0]),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(bdatw[15]),
        .O(\trngrand[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[16]_i_1 
       (.I0(p_8_in[1]),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(p_1_in[16]),
        .O(\trngrand[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[17]_i_1 
       (.I0(p_8_in[2]),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(p_1_in[17]),
        .O(\trngrand[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[18]_i_1 
       (.I0(p_8_in[3]),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(p_1_in[18]),
        .O(\trngrand[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[19]_i_1 
       (.I0(p_8_in[4]),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(p_1_in[19]),
        .O(\trngrand[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \trngrand[1]_i_1 
       (.I0(\trngrand_reg_n_0_[2] ),
        .I1(\trng_s_reg_n_0_[3] ),
        .I2(trng_rand1b0),
        .I3(\trngrand_reg_n_0_[0] ),
        .I4(\trngrand[31]_i_2_n_0 ),
        .I5(bdatw[1]),
        .O(\trngrand[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[20]_i_1 
       (.I0(p_8_in[5]),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(p_1_in[20]),
        .O(\trngrand[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \trngrand[21]_i_1 
       (.I0(p_8_in[6]),
        .I1(\trng_s_reg_n_0_[3] ),
        .I2(trng_rand1b0),
        .I3(\trngrand_reg_n_0_[0] ),
        .I4(\trngrand[31]_i_2_n_0 ),
        .I5(p_1_in[21]),
        .O(\trngrand[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[22]_i_1 
       (.I0(p_8_in[7]),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(p_1_in[22]),
        .O(\trngrand[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[23]_i_1 
       (.I0(p_8_in[8]),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(p_1_in[23]),
        .O(\trngrand[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[24]_i_1 
       (.I0(p_8_in[9]),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(p_1_in[24]),
        .O(\trngrand[24]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[25]_i_1 
       (.I0(p_8_in[10]),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(p_1_in[25]),
        .O(\trngrand[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[26]_i_1 
       (.I0(p_8_in[11]),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(p_1_in[26]),
        .O(\trngrand[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[27]_i_1 
       (.I0(p_8_in[12]),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(p_1_in[27]),
        .O(\trngrand[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[28]_i_1 
       (.I0(p_8_in[13]),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(p_1_in[28]),
        .O(\trngrand[28]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[29]_i_1 
       (.I0(p_8_in[14]),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(p_1_in[29]),
        .O(\trngrand[29]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[2]_i_1 
       (.I0(\trngrand_reg_n_0_[3] ),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(bdatw[2]),
        .O(\trngrand[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[30]_i_1 
       (.I0(p_8_in[15]),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(p_1_in[30]),
        .O(\trngrand[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \trngrand[31]_i_1 
       (.I0(\trng_s_reg_n_0_[3] ),
        .I1(trng_rand1b0),
        .I2(\trngrand_reg_n_0_[0] ),
        .I3(\trngrand[31]_i_2_n_0 ),
        .I4(p_1_in[31]),
        .O(\trngrand[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \trngrand[31]_i_2 
       (.I0(\tctl_hi_word[15]_i_3_n_0 ),
        .I1(badr[1]),
        .I2(brdy),
        .I3(bcmdw),
        .I4(badr[2]),
        .O(\trngrand[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[3]_i_1 
       (.I0(\trngrand_reg_n_0_[4] ),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(bdatw[3]),
        .O(\trngrand[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[4]_i_1 
       (.I0(\trngrand_reg_n_0_[5] ),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(bdatw[4]),
        .O(\trngrand[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[5]_i_1 
       (.I0(\trngrand_reg_n_0_[6] ),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(bdatw[5]),
        .O(\trngrand[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[6]_i_1 
       (.I0(\trngrand_reg_n_0_[7] ),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(bdatw[6]),
        .O(\trngrand[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[7]_i_1 
       (.I0(\trngrand_reg_n_0_[8] ),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(bdatw[7]),
        .O(\trngrand[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[8]_i_1 
       (.I0(\trngrand_reg_n_0_[9] ),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(bdatw[8]),
        .O(\trngrand[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trngrand[9]_i_1 
       (.I0(\trngrand_reg_n_0_[10] ),
        .I1(\trngrand[31]_i_2_n_0 ),
        .I2(bdatw[9]),
        .O(\trngrand[9]_i_1_n_0 ));
  FDRE \trngrand_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[0]_i_1_n_0 ),
        .Q(\trngrand_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \trngrand_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[10]_i_1_n_0 ),
        .Q(\trngrand_reg_n_0_[10] ),
        .R(\<const0> ));
  FDRE \trngrand_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[11]_i_1_n_0 ),
        .Q(\trngrand_reg_n_0_[11] ),
        .R(\<const0> ));
  FDRE \trngrand_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[12]_i_1_n_0 ),
        .Q(\trngrand_reg_n_0_[12] ),
        .R(\<const0> ));
  FDRE \trngrand_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[13]_i_1_n_0 ),
        .Q(\trngrand_reg_n_0_[13] ),
        .R(\<const0> ));
  FDRE \trngrand_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[14]_i_1_n_0 ),
        .Q(\trngrand_reg_n_0_[14] ),
        .R(\<const0> ));
  FDRE \trngrand_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[15]_i_1_n_0 ),
        .Q(\trngrand_reg_n_0_[15] ),
        .R(\<const0> ));
  FDRE \trngrand_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[16]_i_1_n_0 ),
        .Q(p_8_in[0]),
        .R(\<const0> ));
  FDRE \trngrand_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[17]_i_1_n_0 ),
        .Q(p_8_in[1]),
        .R(\<const0> ));
  FDRE \trngrand_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[18]_i_1_n_0 ),
        .Q(p_8_in[2]),
        .R(\<const0> ));
  FDRE \trngrand_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[19]_i_1_n_0 ),
        .Q(p_8_in[3]),
        .R(\<const0> ));
  FDRE \trngrand_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[1]_i_1_n_0 ),
        .Q(\trngrand_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE \trngrand_reg[20] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[20]_i_1_n_0 ),
        .Q(p_8_in[4]),
        .R(\<const0> ));
  FDRE \trngrand_reg[21] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[21]_i_1_n_0 ),
        .Q(p_8_in[5]),
        .R(\<const0> ));
  FDRE \trngrand_reg[22] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[22]_i_1_n_0 ),
        .Q(p_8_in[6]),
        .R(\<const0> ));
  FDRE \trngrand_reg[23] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[23]_i_1_n_0 ),
        .Q(p_8_in[7]),
        .R(\<const0> ));
  FDRE \trngrand_reg[24] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[24]_i_1_n_0 ),
        .Q(p_8_in[8]),
        .R(\<const0> ));
  FDRE \trngrand_reg[25] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[25]_i_1_n_0 ),
        .Q(p_8_in[9]),
        .R(\<const0> ));
  FDRE \trngrand_reg[26] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[26]_i_1_n_0 ),
        .Q(p_8_in[10]),
        .R(\<const0> ));
  FDRE \trngrand_reg[27] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[27]_i_1_n_0 ),
        .Q(p_8_in[11]),
        .R(\<const0> ));
  FDRE \trngrand_reg[28] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[28]_i_1_n_0 ),
        .Q(p_8_in[12]),
        .R(\<const0> ));
  FDRE \trngrand_reg[29] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[29]_i_1_n_0 ),
        .Q(p_8_in[13]),
        .R(\<const0> ));
  FDRE \trngrand_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[2]_i_1_n_0 ),
        .Q(\trngrand_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE \trngrand_reg[30] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[30]_i_1_n_0 ),
        .Q(p_8_in[14]),
        .R(\<const0> ));
  FDRE \trngrand_reg[31] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[31]_i_1_n_0 ),
        .Q(p_8_in[15]),
        .R(\<const0> ));
  FDRE \trngrand_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[3]_i_1_n_0 ),
        .Q(\trngrand_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE \trngrand_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[4]_i_1_n_0 ),
        .Q(\trngrand_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE \trngrand_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[5]_i_1_n_0 ),
        .Q(\trngrand_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE \trngrand_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[6]_i_1_n_0 ),
        .Q(\trngrand_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE \trngrand_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[7]_i_1_n_0 ),
        .Q(\trngrand_reg_n_0_[7] ),
        .R(\<const0> ));
  FDRE \trngrand_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[8]_i_1_n_0 ),
        .Q(\trngrand_reg_n_0_[8] ),
        .R(\<const0> ));
  FDRE \trngrand_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[9]_i_1_n_0 ),
        .Q(\trngrand_reg_n_0_[9] ),
        .R(\<const0> ));
endmodule
