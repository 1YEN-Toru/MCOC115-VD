
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
    bdatr);
//
// True Random Number Generator unit
//		(c) 2025	1YEN Toru
//
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
  output [15:0]bdatr;

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
  wire \bdatr[10]_INST_0_i_1_n_0 ;
  wire \bdatr[10]_INST_0_i_2_n_0 ;
  wire \bdatr[10]_INST_0_i_3_n_0 ;
  wire \bdatr[11]_INST_0_i_1_n_0 ;
  wire \bdatr[11]_INST_0_i_2_n_0 ;
  wire \bdatr[11]_INST_0_i_3_n_0 ;
  wire \bdatr[12]_INST_0_i_1_n_0 ;
  wire \bdatr[12]_INST_0_i_2_n_0 ;
  wire \bdatr[12]_INST_0_i_3_n_0 ;
  wire \bdatr[13]_INST_0_i_1_n_0 ;
  wire \bdatr[13]_INST_0_i_2_n_0 ;
  wire \bdatr[13]_INST_0_i_3_n_0 ;
  wire \bdatr[14]_INST_0_i_1_n_0 ;
  wire \bdatr[14]_INST_0_i_2_n_0 ;
  wire \bdatr[14]_INST_0_i_3_n_0 ;
  wire \bdatr[15]_INST_0_i_1_n_0 ;
  wire \bdatr[15]_INST_0_i_2_n_0 ;
  wire \bdatr[15]_INST_0_i_3_n_0 ;
  wire \bdatr[15]_INST_0_i_4_n_0 ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_2_n_0 ;
  wire \bdatr[1]_INST_0_i_3_n_0 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_2_n_0 ;
  wire \bdatr[2]_INST_0_i_3_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_2_n_0 ;
  wire \bdatr[3]_INST_0_i_3_n_0 ;
  wire \bdatr[4]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_2_n_0 ;
  wire \bdatr[4]_INST_0_i_3_n_0 ;
  wire \bdatr[5]_INST_0_i_1_n_0 ;
  wire \bdatr[5]_INST_0_i_2_n_0 ;
  wire \bdatr[5]_INST_0_i_3_n_0 ;
  wire \bdatr[6]_INST_0_i_1_n_0 ;
  wire \bdatr[6]_INST_0_i_2_n_0 ;
  wire \bdatr[6]_INST_0_i_3_n_0 ;
  wire \bdatr[7]_INST_0_i_1_n_0 ;
  wire \bdatr[7]_INST_0_i_2_n_0 ;
  wire \bdatr[7]_INST_0_i_3_n_0 ;
  wire \bdatr[8]_INST_0_i_1_n_0 ;
  wire \bdatr[8]_INST_0_i_2_n_0 ;
  wire \bdatr[8]_INST_0_i_3_n_0 ;
  wire \bdatr[9]_INST_0_i_1_n_0 ;
  wire \bdatr[9]_INST_0_i_2_n_0 ;
  wire \bdatr[9]_INST_0_i_3_n_0 ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire [15:0]data3;
  wire [15:0]data5;
  wire p_0_in;
  wire p_1_in;
  wire [15:0]p_2_in;
  wire [15:0]p_6_in;
  wire rd_trng0cnth;
  wire rd_trng0cnth0;
  wire rd_trng0cnth_i_1_n_0;
  wire rd_trng0cntl;
  wire rd_trng0cntl0;
  wire rd_trng1cnth;
  wire rd_trng1cnth0;
  wire rd_trng1cntl;
  wire rd_trng1cntl0;
  wire rd_trngrandh;
  wire rd_trngrandh0;
  wire rd_trngrandh1;
  wire rd_trngrandl;
  wire rd_trngrandl0;
  wire rd_trngrandl1;
  wire rst_n;
  wire sel;
  wire [15:0]tctl_hi_word;
  wire tctl_hi_word0;
  wire tctr_hi_read;
  wire tctr_hi_read_i_1_n_0;
  wire tctr_hi_read_i_2_n_0;
  wire [15:0]tctr_lo_word;
  wire \tctr_lo_word[15]_i_1_n_0 ;
  wire tpll_rand1b0;
  wire tpll_rand1b1;
  wire \trng0cnt[0]_i_3_n_0 ;
  wire \trng0cnt_reg[0]_i_2_n_0 ;
  wire \trng0cnt_reg[0]_i_2_n_1 ;
  wire \trng0cnt_reg[0]_i_2_n_2 ;
  wire \trng0cnt_reg[0]_i_2_n_3 ;
  wire \trng0cnt_reg[0]_i_2_n_4 ;
  wire \trng0cnt_reg[0]_i_2_n_5 ;
  wire \trng0cnt_reg[0]_i_2_n_6 ;
  wire \trng0cnt_reg[0]_i_2_n_7 ;
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
  wire trng_rand1b0;
  wire \trng_s_reg_n_0_[0] ;
  wire \trng_s_reg_n_0_[2] ;
  wire \trng_s_reg_n_0_[3] ;
  wire trngrand3;
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
  wire wr_trngrandh;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \bdatr[0]_INST_0 
       (.I0(rd_trngrandl),
        .I1(rd_trngrandh),
        .I2(\bdatr[0]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_2_n_0 ),
        .I4(\bdatr[0]_INST_0_i_2_n_0 ),
        .I5(\bdatr[0]_INST_0_i_3_n_0 ),
        .O(bdatr[0]));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(data3[0]),
        .I1(\trng0cnt_reg_n_0_[0] ),
        .I2(tctr_lo_word[0]),
        .I3(rd_trng0cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng0cntl),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[0]_INST_0_i_2 
       (.I0(data5[0]),
        .I1(\trng1cnt_reg_n_0_[0] ),
        .I2(tctr_lo_word[0]),
        .I3(rd_trng1cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng1cntl),
        .O(\bdatr[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[0]_INST_0_i_3 
       (.I0(p_6_in[0]),
        .I1(\trngrand_reg_n_0_[0] ),
        .I2(tctr_lo_word[0]),
        .I3(rd_trngrandh),
        .I4(tctr_hi_read),
        .I5(rd_trngrandl),
        .O(\bdatr[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \bdatr[10]_INST_0 
       (.I0(rd_trngrandl),
        .I1(rd_trngrandh),
        .I2(\bdatr[10]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_2_n_0 ),
        .I4(\bdatr[10]_INST_0_i_2_n_0 ),
        .I5(\bdatr[10]_INST_0_i_3_n_0 ),
        .O(bdatr[10]));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[10]_INST_0_i_1 
       (.I0(data3[10]),
        .I1(\trng0cnt_reg_n_0_[10] ),
        .I2(tctr_lo_word[10]),
        .I3(rd_trng0cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng0cntl),
        .O(\bdatr[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[10]_INST_0_i_2 
       (.I0(data5[10]),
        .I1(\trng1cnt_reg_n_0_[10] ),
        .I2(tctr_lo_word[10]),
        .I3(rd_trng1cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng1cntl),
        .O(\bdatr[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[10]_INST_0_i_3 
       (.I0(p_6_in[10]),
        .I1(\trngrand_reg_n_0_[10] ),
        .I2(tctr_lo_word[10]),
        .I3(rd_trngrandh),
        .I4(tctr_hi_read),
        .I5(rd_trngrandl),
        .O(\bdatr[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \bdatr[11]_INST_0 
       (.I0(rd_trngrandl),
        .I1(rd_trngrandh),
        .I2(\bdatr[11]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_2_n_0 ),
        .I4(\bdatr[11]_INST_0_i_2_n_0 ),
        .I5(\bdatr[11]_INST_0_i_3_n_0 ),
        .O(bdatr[11]));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[11]_INST_0_i_1 
       (.I0(data3[11]),
        .I1(\trng0cnt_reg_n_0_[11] ),
        .I2(tctr_lo_word[11]),
        .I3(rd_trng0cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng0cntl),
        .O(\bdatr[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[11]_INST_0_i_2 
       (.I0(data5[11]),
        .I1(\trng1cnt_reg_n_0_[11] ),
        .I2(tctr_lo_word[11]),
        .I3(rd_trng1cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng1cntl),
        .O(\bdatr[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[11]_INST_0_i_3 
       (.I0(p_6_in[11]),
        .I1(\trngrand_reg_n_0_[11] ),
        .I2(tctr_lo_word[11]),
        .I3(rd_trngrandh),
        .I4(tctr_hi_read),
        .I5(rd_trngrandl),
        .O(\bdatr[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \bdatr[12]_INST_0 
       (.I0(rd_trngrandl),
        .I1(rd_trngrandh),
        .I2(\bdatr[12]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_2_n_0 ),
        .I4(\bdatr[12]_INST_0_i_2_n_0 ),
        .I5(\bdatr[12]_INST_0_i_3_n_0 ),
        .O(bdatr[12]));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[12]_INST_0_i_1 
       (.I0(data3[12]),
        .I1(\trng0cnt_reg_n_0_[12] ),
        .I2(tctr_lo_word[12]),
        .I3(rd_trng0cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng0cntl),
        .O(\bdatr[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[12]_INST_0_i_2 
       (.I0(data5[12]),
        .I1(\trng1cnt_reg_n_0_[12] ),
        .I2(tctr_lo_word[12]),
        .I3(rd_trng1cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng1cntl),
        .O(\bdatr[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[12]_INST_0_i_3 
       (.I0(p_6_in[12]),
        .I1(\trngrand_reg_n_0_[12] ),
        .I2(tctr_lo_word[12]),
        .I3(rd_trngrandh),
        .I4(tctr_hi_read),
        .I5(rd_trngrandl),
        .O(\bdatr[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \bdatr[13]_INST_0 
       (.I0(rd_trngrandl),
        .I1(rd_trngrandh),
        .I2(\bdatr[13]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_2_n_0 ),
        .I4(\bdatr[13]_INST_0_i_2_n_0 ),
        .I5(\bdatr[13]_INST_0_i_3_n_0 ),
        .O(bdatr[13]));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[13]_INST_0_i_1 
       (.I0(data3[13]),
        .I1(\trng0cnt_reg_n_0_[13] ),
        .I2(tctr_lo_word[13]),
        .I3(rd_trng0cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng0cntl),
        .O(\bdatr[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[13]_INST_0_i_2 
       (.I0(data5[13]),
        .I1(\trng1cnt_reg_n_0_[13] ),
        .I2(tctr_lo_word[13]),
        .I3(rd_trng1cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng1cntl),
        .O(\bdatr[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[13]_INST_0_i_3 
       (.I0(p_6_in[13]),
        .I1(\trngrand_reg_n_0_[13] ),
        .I2(tctr_lo_word[13]),
        .I3(rd_trngrandh),
        .I4(tctr_hi_read),
        .I5(rd_trngrandl),
        .O(\bdatr[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \bdatr[14]_INST_0 
       (.I0(rd_trngrandl),
        .I1(rd_trngrandh),
        .I2(\bdatr[14]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_2_n_0 ),
        .I4(\bdatr[14]_INST_0_i_2_n_0 ),
        .I5(\bdatr[14]_INST_0_i_3_n_0 ),
        .O(bdatr[14]));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[14]_INST_0_i_1 
       (.I0(data3[14]),
        .I1(\trng0cnt_reg_n_0_[14] ),
        .I2(tctr_lo_word[14]),
        .I3(rd_trng0cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng0cntl),
        .O(\bdatr[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[14]_INST_0_i_2 
       (.I0(data5[14]),
        .I1(\trng1cnt_reg_n_0_[14] ),
        .I2(tctr_lo_word[14]),
        .I3(rd_trng1cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng1cntl),
        .O(\bdatr[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[14]_INST_0_i_3 
       (.I0(p_6_in[14]),
        .I1(\trngrand_reg_n_0_[14] ),
        .I2(tctr_lo_word[14]),
        .I3(rd_trngrandh),
        .I4(tctr_hi_read),
        .I5(rd_trngrandl),
        .O(\bdatr[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \bdatr[15]_INST_0 
       (.I0(rd_trngrandl),
        .I1(rd_trngrandh),
        .I2(\bdatr[15]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_2_n_0 ),
        .I4(\bdatr[15]_INST_0_i_3_n_0 ),
        .I5(\bdatr[15]_INST_0_i_4_n_0 ),
        .O(bdatr[15]));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[15]_INST_0_i_1 
       (.I0(data3[15]),
        .I1(\trng0cnt_reg_n_0_[15] ),
        .I2(tctr_lo_word[15]),
        .I3(rd_trng0cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng0cntl),
        .O(\bdatr[15]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatr[15]_INST_0_i_2 
       (.I0(rd_trng0cntl),
        .I1(rd_trng0cnth),
        .O(\bdatr[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[15]_INST_0_i_3 
       (.I0(data5[15]),
        .I1(\trng1cnt_reg_n_0_[15] ),
        .I2(tctr_lo_word[15]),
        .I3(rd_trng1cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng1cntl),
        .O(\bdatr[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[15]_INST_0_i_4 
       (.I0(p_6_in[15]),
        .I1(\trngrand_reg_n_0_[15] ),
        .I2(tctr_lo_word[15]),
        .I3(rd_trngrandh),
        .I4(tctr_hi_read),
        .I5(rd_trngrandl),
        .O(\bdatr[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \bdatr[1]_INST_0 
       (.I0(rd_trngrandl),
        .I1(rd_trngrandh),
        .I2(\bdatr[1]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_2_n_0 ),
        .I4(\bdatr[1]_INST_0_i_2_n_0 ),
        .I5(\bdatr[1]_INST_0_i_3_n_0 ),
        .O(bdatr[1]));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(data3[1]),
        .I1(\trng0cnt_reg_n_0_[1] ),
        .I2(tctr_lo_word[1]),
        .I3(rd_trng0cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng0cntl),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[1]_INST_0_i_2 
       (.I0(data5[1]),
        .I1(\trng1cnt_reg_n_0_[1] ),
        .I2(tctr_lo_word[1]),
        .I3(rd_trng1cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng1cntl),
        .O(\bdatr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[1]_INST_0_i_3 
       (.I0(p_6_in[1]),
        .I1(\trngrand_reg_n_0_[1] ),
        .I2(tctr_lo_word[1]),
        .I3(rd_trngrandh),
        .I4(tctr_hi_read),
        .I5(rd_trngrandl),
        .O(\bdatr[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \bdatr[2]_INST_0 
       (.I0(rd_trngrandl),
        .I1(rd_trngrandh),
        .I2(\bdatr[2]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_2_n_0 ),
        .I4(\bdatr[2]_INST_0_i_2_n_0 ),
        .I5(\bdatr[2]_INST_0_i_3_n_0 ),
        .O(bdatr[2]));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(data3[2]),
        .I1(\trng0cnt_reg_n_0_[2] ),
        .I2(tctr_lo_word[2]),
        .I3(rd_trng0cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng0cntl),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[2]_INST_0_i_2 
       (.I0(data5[2]),
        .I1(\trng1cnt_reg_n_0_[2] ),
        .I2(tctr_lo_word[2]),
        .I3(rd_trng1cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng1cntl),
        .O(\bdatr[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[2]_INST_0_i_3 
       (.I0(p_6_in[2]),
        .I1(\trngrand_reg_n_0_[2] ),
        .I2(tctr_lo_word[2]),
        .I3(rd_trngrandh),
        .I4(tctr_hi_read),
        .I5(rd_trngrandl),
        .O(\bdatr[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \bdatr[3]_INST_0 
       (.I0(rd_trngrandl),
        .I1(rd_trngrandh),
        .I2(\bdatr[3]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_2_n_0 ),
        .I4(\bdatr[3]_INST_0_i_2_n_0 ),
        .I5(\bdatr[3]_INST_0_i_3_n_0 ),
        .O(bdatr[3]));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(data3[3]),
        .I1(\trng0cnt_reg_n_0_[3] ),
        .I2(tctr_lo_word[3]),
        .I3(rd_trng0cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng0cntl),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[3]_INST_0_i_2 
       (.I0(data5[3]),
        .I1(\trng1cnt_reg_n_0_[3] ),
        .I2(tctr_lo_word[3]),
        .I3(rd_trng1cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng1cntl),
        .O(\bdatr[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[3]_INST_0_i_3 
       (.I0(p_6_in[3]),
        .I1(\trngrand_reg_n_0_[3] ),
        .I2(tctr_lo_word[3]),
        .I3(rd_trngrandh),
        .I4(tctr_hi_read),
        .I5(rd_trngrandl),
        .O(\bdatr[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \bdatr[4]_INST_0 
       (.I0(rd_trngrandl),
        .I1(rd_trngrandh),
        .I2(\bdatr[4]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_2_n_0 ),
        .I4(\bdatr[4]_INST_0_i_2_n_0 ),
        .I5(\bdatr[4]_INST_0_i_3_n_0 ),
        .O(bdatr[4]));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(data3[4]),
        .I1(\trng0cnt_reg_n_0_[4] ),
        .I2(tctr_lo_word[4]),
        .I3(rd_trng0cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng0cntl),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[4]_INST_0_i_2 
       (.I0(data5[4]),
        .I1(\trng1cnt_reg_n_0_[4] ),
        .I2(tctr_lo_word[4]),
        .I3(rd_trng1cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng1cntl),
        .O(\bdatr[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[4]_INST_0_i_3 
       (.I0(p_6_in[4]),
        .I1(\trngrand_reg_n_0_[4] ),
        .I2(tctr_lo_word[4]),
        .I3(rd_trngrandh),
        .I4(tctr_hi_read),
        .I5(rd_trngrandl),
        .O(\bdatr[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \bdatr[5]_INST_0 
       (.I0(rd_trngrandl),
        .I1(rd_trngrandh),
        .I2(\bdatr[5]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_2_n_0 ),
        .I4(\bdatr[5]_INST_0_i_2_n_0 ),
        .I5(\bdatr[5]_INST_0_i_3_n_0 ),
        .O(bdatr[5]));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(data3[5]),
        .I1(\trng0cnt_reg_n_0_[5] ),
        .I2(tctr_lo_word[5]),
        .I3(rd_trng0cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng0cntl),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[5]_INST_0_i_2 
       (.I0(data5[5]),
        .I1(\trng1cnt_reg_n_0_[5] ),
        .I2(tctr_lo_word[5]),
        .I3(rd_trng1cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng1cntl),
        .O(\bdatr[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[5]_INST_0_i_3 
       (.I0(p_6_in[5]),
        .I1(\trngrand_reg_n_0_[5] ),
        .I2(tctr_lo_word[5]),
        .I3(rd_trngrandh),
        .I4(tctr_hi_read),
        .I5(rd_trngrandl),
        .O(\bdatr[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \bdatr[6]_INST_0 
       (.I0(rd_trngrandl),
        .I1(rd_trngrandh),
        .I2(\bdatr[6]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_2_n_0 ),
        .I4(\bdatr[6]_INST_0_i_2_n_0 ),
        .I5(\bdatr[6]_INST_0_i_3_n_0 ),
        .O(bdatr[6]));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(data3[6]),
        .I1(\trng0cnt_reg_n_0_[6] ),
        .I2(tctr_lo_word[6]),
        .I3(rd_trng0cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng0cntl),
        .O(\bdatr[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[6]_INST_0_i_2 
       (.I0(data5[6]),
        .I1(\trng1cnt_reg_n_0_[6] ),
        .I2(tctr_lo_word[6]),
        .I3(rd_trng1cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng1cntl),
        .O(\bdatr[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[6]_INST_0_i_3 
       (.I0(p_6_in[6]),
        .I1(\trngrand_reg_n_0_[6] ),
        .I2(tctr_lo_word[6]),
        .I3(rd_trngrandh),
        .I4(tctr_hi_read),
        .I5(rd_trngrandl),
        .O(\bdatr[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \bdatr[7]_INST_0 
       (.I0(rd_trngrandl),
        .I1(rd_trngrandh),
        .I2(\bdatr[7]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_2_n_0 ),
        .I4(\bdatr[7]_INST_0_i_2_n_0 ),
        .I5(\bdatr[7]_INST_0_i_3_n_0 ),
        .O(bdatr[7]));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(data3[7]),
        .I1(\trng0cnt_reg_n_0_[7] ),
        .I2(tctr_lo_word[7]),
        .I3(rd_trng0cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng0cntl),
        .O(\bdatr[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[7]_INST_0_i_2 
       (.I0(data5[7]),
        .I1(\trng1cnt_reg_n_0_[7] ),
        .I2(tctr_lo_word[7]),
        .I3(rd_trng1cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng1cntl),
        .O(\bdatr[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[7]_INST_0_i_3 
       (.I0(p_6_in[7]),
        .I1(\trngrand_reg_n_0_[7] ),
        .I2(tctr_lo_word[7]),
        .I3(rd_trngrandh),
        .I4(tctr_hi_read),
        .I5(rd_trngrandl),
        .O(\bdatr[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \bdatr[8]_INST_0 
       (.I0(rd_trngrandl),
        .I1(rd_trngrandh),
        .I2(\bdatr[8]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_2_n_0 ),
        .I4(\bdatr[8]_INST_0_i_2_n_0 ),
        .I5(\bdatr[8]_INST_0_i_3_n_0 ),
        .O(bdatr[8]));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[8]_INST_0_i_1 
       (.I0(data3[8]),
        .I1(\trng0cnt_reg_n_0_[8] ),
        .I2(tctr_lo_word[8]),
        .I3(rd_trng0cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng0cntl),
        .O(\bdatr[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[8]_INST_0_i_2 
       (.I0(data5[8]),
        .I1(\trng1cnt_reg_n_0_[8] ),
        .I2(tctr_lo_word[8]),
        .I3(rd_trng1cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng1cntl),
        .O(\bdatr[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[8]_INST_0_i_3 
       (.I0(p_6_in[8]),
        .I1(\trngrand_reg_n_0_[8] ),
        .I2(tctr_lo_word[8]),
        .I3(rd_trngrandh),
        .I4(tctr_hi_read),
        .I5(rd_trngrandl),
        .O(\bdatr[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \bdatr[9]_INST_0 
       (.I0(rd_trngrandl),
        .I1(rd_trngrandh),
        .I2(\bdatr[9]_INST_0_i_1_n_0 ),
        .I3(\bdatr[15]_INST_0_i_2_n_0 ),
        .I4(\bdatr[9]_INST_0_i_2_n_0 ),
        .I5(\bdatr[9]_INST_0_i_3_n_0 ),
        .O(bdatr[9]));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[9]_INST_0_i_1 
       (.I0(data3[9]),
        .I1(\trng0cnt_reg_n_0_[9] ),
        .I2(tctr_lo_word[9]),
        .I3(rd_trng0cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng0cntl),
        .O(\bdatr[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[9]_INST_0_i_2 
       (.I0(data5[9]),
        .I1(\trng1cnt_reg_n_0_[9] ),
        .I2(tctr_lo_word[9]),
        .I3(rd_trng1cnth),
        .I4(tctr_hi_read),
        .I5(rd_trng1cntl),
        .O(\bdatr[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AACCAA00AA00)) 
    \bdatr[9]_INST_0_i_3 
       (.I0(p_6_in[9]),
        .I1(\trngrand_reg_n_0_[9] ),
        .I2(tctr_lo_word[9]),
        .I3(rd_trngrandh),
        .I4(tctr_hi_read),
        .I5(rd_trngrandl),
        .O(\bdatr[9]_INST_0_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    rd_trng0cnth_i_1
       (.I0(rst_n),
        .O(rd_trng0cnth_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    rd_trng0cnth_i_2
       (.I0(bcs_trng_n),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[2]),
        .I5(badr[0]),
        .O(rd_trng0cnth0));
  FDRE rd_trng0cnth_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_trng0cnth0),
        .Q(rd_trng0cnth),
        .R(rd_trng0cnth_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    rd_trng0cntl_i_1
       (.I0(bcs_trng_n),
        .I1(bcmdr),
        .I2(badr[3]),
        .I3(badr[1]),
        .I4(badr[2]),
        .I5(badr[0]),
        .O(rd_trng0cntl0));
  FDRE rd_trng0cntl_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_trng0cntl0),
        .Q(rd_trng0cntl),
        .R(rd_trng0cnth_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    rd_trng1cnth_i_1
       (.I0(bcs_trng_n),
        .I1(bcmdr),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(badr[1]),
        .I5(badr[0]),
        .O(rd_trng1cnth0));
  FDRE rd_trng1cnth_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_trng1cnth0),
        .Q(rd_trng1cnth),
        .R(rd_trng0cnth_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    rd_trng1cntl_i_1
       (.I0(bcs_trng_n),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[0]),
        .I5(badr[2]),
        .O(rd_trng1cntl0));
  FDRE rd_trng1cntl_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_trng1cntl0),
        .Q(rd_trng1cntl),
        .R(rd_trng0cnth_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    rd_trngrandh_i_1
       (.I0(bcs_trng_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .I5(badr[2]),
        .O(rd_trngrandh0));
  FDRE rd_trngrandh_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_trngrandh0),
        .Q(rd_trngrandh),
        .R(rd_trng0cnth_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    rd_trngrandl_i_1
       (.I0(bcs_trng_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .I5(badr[2]),
        .O(rd_trngrandl0));
  FDRE rd_trngrandl_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_trngrandl0),
        .Q(rd_trngrandl),
        .R(rd_trng0cnth_i_1_n_0));
  LUT5 #(
    .INIT(32'h0800FFFF)) 
    \tctl_hi_word[15]_i_1 
       (.I0(rd_trngrandl1),
        .I1(brdy),
        .I2(bcs_trng_n),
        .I3(bcmdw),
        .I4(rst_n),
        .O(tctl_hi_word0));
  LUT4 #(
    .INIT(16'h2000)) 
    \tctl_hi_word[15]_i_2 
       (.I0(bcmdw),
        .I1(bcs_trng_n),
        .I2(brdy),
        .I3(rd_trngrandh1),
        .O(wr_trngrandh));
  LUT4 #(
    .INIT(16'h0010)) 
    \tctl_hi_word[15]_i_3 
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .O(rd_trngrandl1));
  LUT4 #(
    .INIT(16'h0001)) 
    \tctl_hi_word[15]_i_4 
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .O(rd_trngrandh1));
  FDRE \tctl_hi_word_reg[0] 
       (.C(clk),
        .CE(wr_trngrandh),
        .D(bdatw[0]),
        .Q(tctl_hi_word[0]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[10] 
       (.C(clk),
        .CE(wr_trngrandh),
        .D(bdatw[10]),
        .Q(tctl_hi_word[10]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[11] 
       (.C(clk),
        .CE(wr_trngrandh),
        .D(bdatw[11]),
        .Q(tctl_hi_word[11]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[12] 
       (.C(clk),
        .CE(wr_trngrandh),
        .D(bdatw[12]),
        .Q(tctl_hi_word[12]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[13] 
       (.C(clk),
        .CE(wr_trngrandh),
        .D(bdatw[13]),
        .Q(tctl_hi_word[13]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[14] 
       (.C(clk),
        .CE(wr_trngrandh),
        .D(bdatw[14]),
        .Q(tctl_hi_word[14]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[15] 
       (.C(clk),
        .CE(wr_trngrandh),
        .D(bdatw[15]),
        .Q(tctl_hi_word[15]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[1] 
       (.C(clk),
        .CE(wr_trngrandh),
        .D(bdatw[1]),
        .Q(tctl_hi_word[1]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[2] 
       (.C(clk),
        .CE(wr_trngrandh),
        .D(bdatw[2]),
        .Q(tctl_hi_word[2]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[3] 
       (.C(clk),
        .CE(wr_trngrandh),
        .D(bdatw[3]),
        .Q(tctl_hi_word[3]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[4] 
       (.C(clk),
        .CE(wr_trngrandh),
        .D(bdatw[4]),
        .Q(tctl_hi_word[4]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[5] 
       (.C(clk),
        .CE(wr_trngrandh),
        .D(bdatw[5]),
        .Q(tctl_hi_word[5]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[6] 
       (.C(clk),
        .CE(wr_trngrandh),
        .D(bdatw[6]),
        .Q(tctl_hi_word[6]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[7] 
       (.C(clk),
        .CE(wr_trngrandh),
        .D(bdatw[7]),
        .Q(tctl_hi_word[7]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[8] 
       (.C(clk),
        .CE(wr_trngrandh),
        .D(bdatw[8]),
        .Q(tctl_hi_word[8]),
        .R(tctl_hi_word0));
  FDRE \tctl_hi_word_reg[9] 
       (.C(clk),
        .CE(wr_trngrandh),
        .D(bdatw[9]),
        .Q(tctl_hi_word[9]),
        .R(tctl_hi_word0));
  LUT6 #(
    .INIT(64'hEEEEEEE200000000)) 
    tctr_hi_read_i_1
       (.I0(tctr_hi_read),
        .I1(tctr_hi_read_i_2_n_0),
        .I2(rd_trng0cnth),
        .I3(rd_trngrandh),
        .I4(rd_trng1cnth),
        .I5(rst_n),
        .O(tctr_hi_read_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    tctr_hi_read_i_2
       (.I0(rd_trng1cnth),
        .I1(rd_trngrandh),
        .I2(rd_trng0cntl),
        .I3(rd_trng1cntl),
        .I4(rd_trngrandl),
        .I5(rd_trng0cnth),
        .O(tctr_hi_read_i_2_n_0));
  FDRE tctr_hi_read_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(tctr_hi_read_i_1_n_0),
        .Q(tctr_hi_read),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tctr_lo_word[0]_i_1 
       (.I0(\trng1cnt_reg_n_0_[0] ),
        .I1(rd_trng1cnth),
        .I2(\trng0cnt_reg_n_0_[0] ),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[0] ),
        .O(p_2_in[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tctr_lo_word[10]_i_1 
       (.I0(\trng1cnt_reg_n_0_[10] ),
        .I1(rd_trng1cnth),
        .I2(\trng0cnt_reg_n_0_[10] ),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[10] ),
        .O(p_2_in[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tctr_lo_word[11]_i_1 
       (.I0(\trng1cnt_reg_n_0_[11] ),
        .I1(rd_trng1cnth),
        .I2(\trng0cnt_reg_n_0_[11] ),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[11] ),
        .O(p_2_in[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tctr_lo_word[12]_i_1 
       (.I0(\trng1cnt_reg_n_0_[12] ),
        .I1(rd_trng1cnth),
        .I2(\trng0cnt_reg_n_0_[12] ),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[12] ),
        .O(p_2_in[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tctr_lo_word[13]_i_1 
       (.I0(\trng1cnt_reg_n_0_[13] ),
        .I1(rd_trng1cnth),
        .I2(\trng0cnt_reg_n_0_[13] ),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[13] ),
        .O(p_2_in[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tctr_lo_word[14]_i_1 
       (.I0(\trng1cnt_reg_n_0_[14] ),
        .I1(rd_trng1cnth),
        .I2(\trng0cnt_reg_n_0_[14] ),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[14] ),
        .O(p_2_in[14]));
  LUT3 #(
    .INIT(8'hFE)) 
    \tctr_lo_word[15]_i_1 
       (.I0(rd_trng1cnth),
        .I1(rd_trngrandh),
        .I2(rd_trng0cnth),
        .O(\tctr_lo_word[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tctr_lo_word[15]_i_2 
       (.I0(\trng1cnt_reg_n_0_[15] ),
        .I1(rd_trng1cnth),
        .I2(\trng0cnt_reg_n_0_[15] ),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[15] ),
        .O(p_2_in[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tctr_lo_word[1]_i_1 
       (.I0(\trng1cnt_reg_n_0_[1] ),
        .I1(rd_trng1cnth),
        .I2(\trng0cnt_reg_n_0_[1] ),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[1] ),
        .O(p_2_in[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tctr_lo_word[2]_i_1 
       (.I0(\trng1cnt_reg_n_0_[2] ),
        .I1(rd_trng1cnth),
        .I2(\trng0cnt_reg_n_0_[2] ),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[2] ),
        .O(p_2_in[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tctr_lo_word[3]_i_1 
       (.I0(\trng1cnt_reg_n_0_[3] ),
        .I1(rd_trng1cnth),
        .I2(\trng0cnt_reg_n_0_[3] ),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[3] ),
        .O(p_2_in[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tctr_lo_word[4]_i_1 
       (.I0(\trng1cnt_reg_n_0_[4] ),
        .I1(rd_trng1cnth),
        .I2(\trng0cnt_reg_n_0_[4] ),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[4] ),
        .O(p_2_in[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tctr_lo_word[5]_i_1 
       (.I0(\trng1cnt_reg_n_0_[5] ),
        .I1(rd_trng1cnth),
        .I2(\trng0cnt_reg_n_0_[5] ),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[5] ),
        .O(p_2_in[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tctr_lo_word[6]_i_1 
       (.I0(\trng1cnt_reg_n_0_[6] ),
        .I1(rd_trng1cnth),
        .I2(\trng0cnt_reg_n_0_[6] ),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[6] ),
        .O(p_2_in[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tctr_lo_word[7]_i_1 
       (.I0(\trng1cnt_reg_n_0_[7] ),
        .I1(rd_trng1cnth),
        .I2(\trng0cnt_reg_n_0_[7] ),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[7] ),
        .O(p_2_in[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tctr_lo_word[8]_i_1 
       (.I0(\trng1cnt_reg_n_0_[8] ),
        .I1(rd_trng1cnth),
        .I2(\trng0cnt_reg_n_0_[8] ),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[8] ),
        .O(p_2_in[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tctr_lo_word[9]_i_1 
       (.I0(\trng1cnt_reg_n_0_[9] ),
        .I1(rd_trng1cnth),
        .I2(\trng0cnt_reg_n_0_[9] ),
        .I3(rd_trng0cnth),
        .I4(\trngrand_reg_n_0_[9] ),
        .O(p_2_in[9]));
  FDRE \tctr_lo_word_reg[0] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(tctr_lo_word[0]),
        .R(rd_trng0cnth_i_1_n_0));
  FDRE \tctr_lo_word_reg[10] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(tctr_lo_word[10]),
        .R(rd_trng0cnth_i_1_n_0));
  FDRE \tctr_lo_word_reg[11] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(tctr_lo_word[11]),
        .R(rd_trng0cnth_i_1_n_0));
  FDRE \tctr_lo_word_reg[12] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(tctr_lo_word[12]),
        .R(rd_trng0cnth_i_1_n_0));
  FDRE \tctr_lo_word_reg[13] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(tctr_lo_word[13]),
        .R(rd_trng0cnth_i_1_n_0));
  FDRE \tctr_lo_word_reg[14] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(tctr_lo_word[14]),
        .R(rd_trng0cnth_i_1_n_0));
  FDRE \tctr_lo_word_reg[15] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(tctr_lo_word[15]),
        .R(rd_trng0cnth_i_1_n_0));
  FDRE \tctr_lo_word_reg[1] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(tctr_lo_word[1]),
        .R(rd_trng0cnth_i_1_n_0));
  FDRE \tctr_lo_word_reg[2] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(tctr_lo_word[2]),
        .R(rd_trng0cnth_i_1_n_0));
  FDRE \tctr_lo_word_reg[3] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(tctr_lo_word[3]),
        .R(rd_trng0cnth_i_1_n_0));
  FDRE \tctr_lo_word_reg[4] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(tctr_lo_word[4]),
        .R(rd_trng0cnth_i_1_n_0));
  FDRE \tctr_lo_word_reg[5] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(tctr_lo_word[5]),
        .R(rd_trng0cnth_i_1_n_0));
  FDRE \tctr_lo_word_reg[6] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(tctr_lo_word[6]),
        .R(rd_trng0cnth_i_1_n_0));
  FDRE \tctr_lo_word_reg[7] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(tctr_lo_word[7]),
        .R(rd_trng0cnth_i_1_n_0));
  FDRE \tctr_lo_word_reg[8] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(tctr_lo_word[8]),
        .R(rd_trng0cnth_i_1_n_0));
  FDRE \tctr_lo_word_reg[9] 
       (.C(clk),
        .CE(\tctr_lo_word[15]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(tctr_lo_word[9]),
        .R(rd_trng0cnth_i_1_n_0));
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
    .INIT(4'h9)) 
    \trng0cnt[0]_i_1 
       (.I0(\trng_s_reg_n_0_[3] ),
        .I1(trng_rand1b0),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \trng0cnt[0]_i_3 
       (.I0(\trng0cnt_reg_n_0_[0] ),
        .O(\trng0cnt[0]_i_3_n_0 ));
  FDRE \trng0cnt_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[0]_i_2_n_7 ),
        .Q(\trng0cnt_reg_n_0_[0] ),
        .R(tctl_hi_word0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng0cnt_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\trng0cnt_reg[0]_i_2_n_0 ,\trng0cnt_reg[0]_i_2_n_1 ,\trng0cnt_reg[0]_i_2_n_2 ,\trng0cnt_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\trng0cnt_reg[0]_i_2_n_4 ,\trng0cnt_reg[0]_i_2_n_5 ,\trng0cnt_reg[0]_i_2_n_6 ,\trng0cnt_reg[0]_i_2_n_7 }),
        .S({\trng0cnt_reg_n_0_[3] ,\trng0cnt_reg_n_0_[2] ,\trng0cnt_reg_n_0_[1] ,\trng0cnt[0]_i_3_n_0 }));
  FDRE \trng0cnt_reg[10] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[8]_i_1_n_5 ),
        .Q(\trng0cnt_reg_n_0_[10] ),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[11] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[8]_i_1_n_4 ),
        .Q(\trng0cnt_reg_n_0_[11] ),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[12] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[12]_i_1_n_7 ),
        .Q(\trng0cnt_reg_n_0_[12] ),
        .R(tctl_hi_word0));
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
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[14] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[12]_i_1_n_5 ),
        .Q(\trng0cnt_reg_n_0_[14] ),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[15] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[12]_i_1_n_4 ),
        .Q(\trng0cnt_reg_n_0_[15] ),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[16] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[16]_i_1_n_7 ),
        .Q(data3[0]),
        .R(tctl_hi_word0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng0cnt_reg[16]_i_1 
       (.CI(\trng0cnt_reg[12]_i_1_n_0 ),
        .CO({\trng0cnt_reg[16]_i_1_n_0 ,\trng0cnt_reg[16]_i_1_n_1 ,\trng0cnt_reg[16]_i_1_n_2 ,\trng0cnt_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng0cnt_reg[16]_i_1_n_4 ,\trng0cnt_reg[16]_i_1_n_5 ,\trng0cnt_reg[16]_i_1_n_6 ,\trng0cnt_reg[16]_i_1_n_7 }),
        .S(data3[3:0]));
  FDRE \trng0cnt_reg[17] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[16]_i_1_n_6 ),
        .Q(data3[1]),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[18] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[16]_i_1_n_5 ),
        .Q(data3[2]),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[19] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[16]_i_1_n_4 ),
        .Q(data3[3]),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[0]_i_2_n_6 ),
        .Q(\trng0cnt_reg_n_0_[1] ),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[20] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[20]_i_1_n_7 ),
        .Q(data3[4]),
        .R(tctl_hi_word0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng0cnt_reg[20]_i_1 
       (.CI(\trng0cnt_reg[16]_i_1_n_0 ),
        .CO({\trng0cnt_reg[20]_i_1_n_0 ,\trng0cnt_reg[20]_i_1_n_1 ,\trng0cnt_reg[20]_i_1_n_2 ,\trng0cnt_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng0cnt_reg[20]_i_1_n_4 ,\trng0cnt_reg[20]_i_1_n_5 ,\trng0cnt_reg[20]_i_1_n_6 ,\trng0cnt_reg[20]_i_1_n_7 }),
        .S(data3[7:4]));
  FDRE \trng0cnt_reg[21] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[20]_i_1_n_6 ),
        .Q(data3[5]),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[22] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[20]_i_1_n_5 ),
        .Q(data3[6]),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[23] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[20]_i_1_n_4 ),
        .Q(data3[7]),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[24] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[24]_i_1_n_7 ),
        .Q(data3[8]),
        .R(tctl_hi_word0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng0cnt_reg[24]_i_1 
       (.CI(\trng0cnt_reg[20]_i_1_n_0 ),
        .CO({\trng0cnt_reg[24]_i_1_n_0 ,\trng0cnt_reg[24]_i_1_n_1 ,\trng0cnt_reg[24]_i_1_n_2 ,\trng0cnt_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng0cnt_reg[24]_i_1_n_4 ,\trng0cnt_reg[24]_i_1_n_5 ,\trng0cnt_reg[24]_i_1_n_6 ,\trng0cnt_reg[24]_i_1_n_7 }),
        .S(data3[11:8]));
  FDRE \trng0cnt_reg[25] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[24]_i_1_n_6 ),
        .Q(data3[9]),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[26] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[24]_i_1_n_5 ),
        .Q(data3[10]),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[27] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[24]_i_1_n_4 ),
        .Q(data3[11]),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[28] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[28]_i_1_n_7 ),
        .Q(data3[12]),
        .R(tctl_hi_word0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng0cnt_reg[28]_i_1 
       (.CI(\trng0cnt_reg[24]_i_1_n_0 ),
        .CO({\trng0cnt_reg[28]_i_1_n_1 ,\trng0cnt_reg[28]_i_1_n_2 ,\trng0cnt_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng0cnt_reg[28]_i_1_n_4 ,\trng0cnt_reg[28]_i_1_n_5 ,\trng0cnt_reg[28]_i_1_n_6 ,\trng0cnt_reg[28]_i_1_n_7 }),
        .S(data3[15:12]));
  FDRE \trng0cnt_reg[29] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[28]_i_1_n_6 ),
        .Q(data3[13]),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[0]_i_2_n_5 ),
        .Q(\trng0cnt_reg_n_0_[2] ),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[30] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[28]_i_1_n_5 ),
        .Q(data3[14]),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[31] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[28]_i_1_n_4 ),
        .Q(data3[15]),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[0]_i_2_n_4 ),
        .Q(\trng0cnt_reg_n_0_[3] ),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[4]_i_1_n_7 ),
        .Q(\trng0cnt_reg_n_0_[4] ),
        .R(tctl_hi_word0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng0cnt_reg[4]_i_1 
       (.CI(\trng0cnt_reg[0]_i_2_n_0 ),
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
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[4]_i_1_n_5 ),
        .Q(\trng0cnt_reg_n_0_[6] ),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[4]_i_1_n_4 ),
        .Q(\trng0cnt_reg_n_0_[7] ),
        .R(tctl_hi_word0));
  FDRE \trng0cnt_reg[8] 
       (.C(clk),
        .CE(sel),
        .D(\trng0cnt_reg[8]_i_1_n_7 ),
        .Q(\trng0cnt_reg_n_0_[8] ),
        .R(tctl_hi_word0));
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
        .R(tctl_hi_word0));
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
        .R(tctl_hi_word0));
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
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[8]_i_1_n_4 ),
        .Q(\trng1cnt_reg_n_0_[11] ),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[12]_i_1_n_7 ),
        .Q(\trng1cnt_reg_n_0_[12] ),
        .R(tctl_hi_word0));
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
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[12]_i_1_n_5 ),
        .Q(\trng1cnt_reg_n_0_[14] ),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[15] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[12]_i_1_n_4 ),
        .Q(\trng1cnt_reg_n_0_[15] ),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[16] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[16]_i_1_n_7 ),
        .Q(data5[0]),
        .R(tctl_hi_word0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng1cnt_reg[16]_i_1 
       (.CI(\trng1cnt_reg[12]_i_1_n_0 ),
        .CO({\trng1cnt_reg[16]_i_1_n_0 ,\trng1cnt_reg[16]_i_1_n_1 ,\trng1cnt_reg[16]_i_1_n_2 ,\trng1cnt_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng1cnt_reg[16]_i_1_n_4 ,\trng1cnt_reg[16]_i_1_n_5 ,\trng1cnt_reg[16]_i_1_n_6 ,\trng1cnt_reg[16]_i_1_n_7 }),
        .S(data5[3:0]));
  FDRE \trng1cnt_reg[17] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[16]_i_1_n_6 ),
        .Q(data5[1]),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[18] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[16]_i_1_n_5 ),
        .Q(data5[2]),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[19] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[16]_i_1_n_4 ),
        .Q(data5[3]),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[0]_i_2_n_6 ),
        .Q(\trng1cnt_reg_n_0_[1] ),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[20] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[20]_i_1_n_7 ),
        .Q(data5[4]),
        .R(tctl_hi_word0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng1cnt_reg[20]_i_1 
       (.CI(\trng1cnt_reg[16]_i_1_n_0 ),
        .CO({\trng1cnt_reg[20]_i_1_n_0 ,\trng1cnt_reg[20]_i_1_n_1 ,\trng1cnt_reg[20]_i_1_n_2 ,\trng1cnt_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng1cnt_reg[20]_i_1_n_4 ,\trng1cnt_reg[20]_i_1_n_5 ,\trng1cnt_reg[20]_i_1_n_6 ,\trng1cnt_reg[20]_i_1_n_7 }),
        .S(data5[7:4]));
  FDRE \trng1cnt_reg[21] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[20]_i_1_n_6 ),
        .Q(data5[5]),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[22] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[20]_i_1_n_5 ),
        .Q(data5[6]),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[23] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[20]_i_1_n_4 ),
        .Q(data5[7]),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[24] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[24]_i_1_n_7 ),
        .Q(data5[8]),
        .R(tctl_hi_word0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng1cnt_reg[24]_i_1 
       (.CI(\trng1cnt_reg[20]_i_1_n_0 ),
        .CO({\trng1cnt_reg[24]_i_1_n_0 ,\trng1cnt_reg[24]_i_1_n_1 ,\trng1cnt_reg[24]_i_1_n_2 ,\trng1cnt_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng1cnt_reg[24]_i_1_n_4 ,\trng1cnt_reg[24]_i_1_n_5 ,\trng1cnt_reg[24]_i_1_n_6 ,\trng1cnt_reg[24]_i_1_n_7 }),
        .S(data5[11:8]));
  FDRE \trng1cnt_reg[25] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[24]_i_1_n_6 ),
        .Q(data5[9]),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[26] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[24]_i_1_n_5 ),
        .Q(data5[10]),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[27] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[24]_i_1_n_4 ),
        .Q(data5[11]),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[28] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[28]_i_1_n_7 ),
        .Q(data5[12]),
        .R(tctl_hi_word0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \trng1cnt_reg[28]_i_1 
       (.CI(\trng1cnt_reg[24]_i_1_n_0 ),
        .CO({\trng1cnt_reg[28]_i_1_n_1 ,\trng1cnt_reg[28]_i_1_n_2 ,\trng1cnt_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\trng1cnt_reg[28]_i_1_n_4 ,\trng1cnt_reg[28]_i_1_n_5 ,\trng1cnt_reg[28]_i_1_n_6 ,\trng1cnt_reg[28]_i_1_n_7 }),
        .S(data5[15:12]));
  FDRE \trng1cnt_reg[29] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[28]_i_1_n_6 ),
        .Q(data5[13]),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[0]_i_2_n_5 ),
        .Q(\trng1cnt_reg_n_0_[2] ),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[30] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[28]_i_1_n_5 ),
        .Q(data5[14]),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[31] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[28]_i_1_n_4 ),
        .Q(data5[15]),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[0]_i_2_n_4 ),
        .Q(\trng1cnt_reg_n_0_[3] ),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[4]_i_1_n_7 ),
        .Q(\trng1cnt_reg_n_0_[4] ),
        .R(tctl_hi_word0));
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
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[4]_i_1_n_5 ),
        .Q(\trng1cnt_reg_n_0_[6] ),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[4]_i_1_n_4 ),
        .Q(\trng1cnt_reg_n_0_[7] ),
        .R(tctl_hi_word0));
  FDRE \trng1cnt_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .D(\trng1cnt_reg[8]_i_1_n_7 ),
        .Q(\trng1cnt_reg_n_0_[8] ),
        .R(tctl_hi_word0));
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
        .R(tctl_hi_word0));
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
    .INIT(64'hBF8080BF80BFBF80)) 
    \trngrand[0]_i_1 
       (.I0(bdatw[0]),
        .I1(p_1_in),
        .I2(rd_trngrandl1),
        .I3(\trngrand_reg_n_0_[0] ),
        .I4(p_0_in),
        .I5(\trngrand_reg_n_0_[1] ),
        .O(\trngrand[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[10]_i_1 
       (.I0(bdatw[10]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(\trngrand_reg_n_0_[11] ),
        .O(\trngrand[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[11]_i_1 
       (.I0(bdatw[11]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(\trngrand_reg_n_0_[12] ),
        .O(\trngrand[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[12]_i_1 
       (.I0(bdatw[12]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(\trngrand_reg_n_0_[13] ),
        .O(\trngrand[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[13]_i_1 
       (.I0(bdatw[13]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(\trngrand_reg_n_0_[14] ),
        .O(\trngrand[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[14]_i_1 
       (.I0(bdatw[14]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(\trngrand_reg_n_0_[15] ),
        .O(\trngrand[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[15]_i_1 
       (.I0(bdatw[15]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(p_6_in[0]),
        .O(\trngrand[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[16]_i_1 
       (.I0(tctl_hi_word[0]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(p_6_in[1]),
        .O(\trngrand[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[17]_i_1 
       (.I0(tctl_hi_word[1]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(p_6_in[2]),
        .O(\trngrand[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[18]_i_1 
       (.I0(tctl_hi_word[2]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(p_6_in[3]),
        .O(\trngrand[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[19]_i_1 
       (.I0(tctl_hi_word[3]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(p_6_in[4]),
        .O(\trngrand[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8080BF80BFBF80)) 
    \trngrand[1]_i_1 
       (.I0(bdatw[1]),
        .I1(p_1_in),
        .I2(rd_trngrandl1),
        .I3(\trngrand_reg_n_0_[0] ),
        .I4(p_0_in),
        .I5(\trngrand_reg_n_0_[2] ),
        .O(\trngrand[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[20]_i_1 
       (.I0(tctl_hi_word[4]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(p_6_in[5]),
        .O(\trngrand[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8080BF80BFBF80)) 
    \trngrand[21]_i_1 
       (.I0(tctl_hi_word[5]),
        .I1(p_1_in),
        .I2(rd_trngrandl1),
        .I3(\trngrand_reg_n_0_[0] ),
        .I4(p_0_in),
        .I5(p_6_in[6]),
        .O(\trngrand[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \trngrand[21]_i_2 
       (.I0(brdy),
        .I1(bcs_trng_n),
        .I2(bcmdw),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[22]_i_1 
       (.I0(tctl_hi_word[6]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(p_6_in[7]),
        .O(\trngrand[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[23]_i_1 
       (.I0(tctl_hi_word[7]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(p_6_in[8]),
        .O(\trngrand[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[24]_i_1 
       (.I0(tctl_hi_word[8]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(p_6_in[9]),
        .O(\trngrand[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[25]_i_1 
       (.I0(tctl_hi_word[9]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(p_6_in[10]),
        .O(\trngrand[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[26]_i_1 
       (.I0(tctl_hi_word[10]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(p_6_in[11]),
        .O(\trngrand[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[27]_i_1 
       (.I0(tctl_hi_word[11]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(p_6_in[12]),
        .O(\trngrand[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[28]_i_1 
       (.I0(tctl_hi_word[12]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(p_6_in[13]),
        .O(\trngrand[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[29]_i_1 
       (.I0(tctl_hi_word[13]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(p_6_in[14]),
        .O(\trngrand[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[2]_i_1 
       (.I0(bdatw[2]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(\trngrand_reg_n_0_[3] ),
        .O(\trngrand[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[30]_i_1 
       (.I0(tctl_hi_word[14]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(p_6_in[15]),
        .O(\trngrand[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[31]_i_1 
       (.I0(tctl_hi_word[15]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(trngrand3),
        .O(\trngrand[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \trngrand[31]_i_2 
       (.I0(\trng_s_reg_n_0_[3] ),
        .I1(trng_rand1b0),
        .I2(\trngrand_reg_n_0_[0] ),
        .O(trngrand3));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[3]_i_1 
       (.I0(bdatw[3]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(\trngrand_reg_n_0_[4] ),
        .O(\trngrand[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[4]_i_1 
       (.I0(bdatw[4]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(\trngrand_reg_n_0_[5] ),
        .O(\trngrand[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[5]_i_1 
       (.I0(bdatw[5]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(\trngrand_reg_n_0_[6] ),
        .O(\trngrand[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[6]_i_1 
       (.I0(bdatw[6]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(\trngrand_reg_n_0_[7] ),
        .O(\trngrand[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[7]_i_1 
       (.I0(bdatw[7]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(\trngrand_reg_n_0_[8] ),
        .O(\trngrand[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[8]_i_1 
       (.I0(bdatw[8]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(\trngrand_reg_n_0_[9] ),
        .O(\trngrand[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \trngrand[9]_i_1 
       (.I0(bdatw[9]),
        .I1(bcmdw),
        .I2(bcs_trng_n),
        .I3(brdy),
        .I4(rd_trngrandl1),
        .I5(\trngrand_reg_n_0_[10] ),
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
        .Q(p_6_in[0]),
        .R(\<const0> ));
  FDRE \trngrand_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[17]_i_1_n_0 ),
        .Q(p_6_in[1]),
        .R(\<const0> ));
  FDRE \trngrand_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[18]_i_1_n_0 ),
        .Q(p_6_in[2]),
        .R(\<const0> ));
  FDRE \trngrand_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[19]_i_1_n_0 ),
        .Q(p_6_in[3]),
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
        .Q(p_6_in[4]),
        .R(\<const0> ));
  FDRE \trngrand_reg[21] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[21]_i_1_n_0 ),
        .Q(p_6_in[5]),
        .R(\<const0> ));
  FDRE \trngrand_reg[22] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[22]_i_1_n_0 ),
        .Q(p_6_in[6]),
        .R(\<const0> ));
  FDRE \trngrand_reg[23] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[23]_i_1_n_0 ),
        .Q(p_6_in[7]),
        .R(\<const0> ));
  FDRE \trngrand_reg[24] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[24]_i_1_n_0 ),
        .Q(p_6_in[8]),
        .R(\<const0> ));
  FDRE \trngrand_reg[25] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[25]_i_1_n_0 ),
        .Q(p_6_in[9]),
        .R(\<const0> ));
  FDRE \trngrand_reg[26] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[26]_i_1_n_0 ),
        .Q(p_6_in[10]),
        .R(\<const0> ));
  FDRE \trngrand_reg[27] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[27]_i_1_n_0 ),
        .Q(p_6_in[11]),
        .R(\<const0> ));
  FDRE \trngrand_reg[28] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[28]_i_1_n_0 ),
        .Q(p_6_in[12]),
        .R(\<const0> ));
  FDRE \trngrand_reg[29] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[29]_i_1_n_0 ),
        .Q(p_6_in[13]),
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
        .Q(p_6_in[14]),
        .R(\<const0> ));
  FDRE \trngrand_reg[31] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\trngrand[31]_i_1_n_0 ),
        .Q(p_6_in[15]),
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
