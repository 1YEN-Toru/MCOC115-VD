
(* STRUCTURAL_NETLIST = "yes" *)
module tennessine
   (clk,
    rst_n,
    brdy,
    irq,
    cpuid,
    irq_lev,
    irq_vec,
    fdat,
    bdatr,
    .fadr({\rgf/pcnt/pc [15],\rgf/pcnt/pc [14],\rgf/pcnt/pc [13],\rgf/pcnt/pc [12],\rgf/pcnt/pc [11],\rgf/pcnt/pc [10],\rgf/pcnt/pc [9],\rgf/pcnt/pc [8],\rgf/pcnt/pc [7],\rgf/pcnt/pc [6],\rgf/pcnt/pc [5],\rgf/pcnt/pc [4],\rgf/pcnt/pc [3],\rgf/pcnt/pc [2],\rgf/pcnt/pc [1],\rgf/pcnt/pc [0]}),
    bcmd,
    badr,
    bdatw,
    tnsn_dsp_c,
    tnsn_dsp_a,
    tnsn_dsp_b);
//
//	Tennessine 8 bit CPU core
//		(c) 2023	1YEN Toru
//
//
//	2023/09/30	ver.1.02
//		change instruction fetch latency: 0 => 1
//		corresponding to Xilinx Vivado
//
//	2023/07/08	ver.1.00
//
  input clk;
  input rst_n;
  input brdy;
  input irq;
  input [1:0]cpuid;
  input [1:0]irq_lev;
  input [5:0]irq_vec;
  input [15:0]fdat;
  input [15:0]bdatr;
  output [2:0]bcmd;
  output [15:0]badr;
  output [15:0]bdatw;
  input [17:0]tnsn_dsp_c;
  output [8:0]tnsn_dsp_a;
  output [8:0]tnsn_dsp_b;
     output [15:0]\rgf/pcnt/pc ;

  wire \<const0> ;
  wire \<const1> ;
  wire [14:1]abus_0;
  wire [10:10]\alu/art/add/tout ;
  wire \alu/art/add/tout__1_carry__0_n_0 ;
  wire \alu/art/add/tout__1_carry__0_n_1 ;
  wire \alu/art/add/tout__1_carry__0_n_2 ;
  wire \alu/art/add/tout__1_carry__0_n_3 ;
  wire \alu/art/add/tout__1_carry__0_n_5 ;
  wire \alu/art/add/tout__1_carry__0_n_6 ;
  wire \alu/art/add/tout__1_carry__0_n_7 ;
  wire \alu/art/add/tout__1_carry__1_n_3 ;
  wire \alu/art/add/tout__1_carry_n_0 ;
  wire \alu/art/add/tout__1_carry_n_1 ;
  wire \alu/art/add/tout__1_carry_n_2 ;
  wire \alu/art/add/tout__1_carry_n_3 ;
  wire \alu/art/add/tout__1_carry_n_4 ;
  wire \alu/art/add/tout__1_carry_n_5 ;
  wire \alu/art/add/tout__1_carry_n_6 ;
  wire \alu/art/add/tout__1_carry_n_7 ;
  wire \alu/art/cbus1_carry__0_n_0 ;
  wire \alu/art/cbus1_carry__0_n_1 ;
  wire \alu/art/cbus1_carry__0_n_2 ;
  wire \alu/art/cbus1_carry__0_n_3 ;
  wire \alu/art/cbus1_carry__1_n_0 ;
  wire \alu/art/cbus1_carry__1_n_1 ;
  wire \alu/art/cbus1_carry__1_n_2 ;
  wire \alu/art/cbus1_carry__1_n_3 ;
  wire \alu/art/cbus1_carry__2_n_1 ;
  wire \alu/art/cbus1_carry__2_n_2 ;
  wire \alu/art/cbus1_carry__2_n_3 ;
  wire \alu/art/cbus1_carry_n_0 ;
  wire \alu/art/cbus1_carry_n_1 ;
  wire \alu/art/cbus1_carry_n_2 ;
  wire \alu/art/cbus1_carry_n_3 ;
  wire [7:7]\alu/art/p_0_in ;
  wire [15:0]\alu/data0 ;
  wire [15:0]badr;
  wire \badr[0]_INST_0_i_1_n_0 ;
  wire \badr[0]_INST_0_i_2_n_0 ;
  wire \badr[0]_INST_0_i_3_n_0 ;
  wire \badr[0]_INST_0_i_4_n_0 ;
  wire \badr[0]_INST_0_i_5_n_0 ;
  wire \badr[0]_INST_0_i_6_n_0 ;
  wire \badr[0]_INST_0_i_7_n_0 ;
  wire \badr[10]_INST_0_i_2_n_0 ;
  wire \badr[10]_INST_0_i_3_n_0 ;
  wire \badr[10]_INST_0_i_4_n_0 ;
  wire \badr[10]_INST_0_i_5_n_0 ;
  wire \badr[10]_INST_0_i_6_n_0 ;
  wire \badr[10]_INST_0_i_7_n_0 ;
  wire \badr[11]_INST_0_i_2_n_0 ;
  wire \badr[11]_INST_0_i_3_n_0 ;
  wire \badr[11]_INST_0_i_4_n_0 ;
  wire \badr[11]_INST_0_i_5_n_0 ;
  wire \badr[11]_INST_0_i_6_n_0 ;
  wire \badr[11]_INST_0_i_7_n_0 ;
  wire \badr[12]_INST_0_i_2_n_0 ;
  wire \badr[12]_INST_0_i_3_n_0 ;
  wire \badr[12]_INST_0_i_4_n_0 ;
  wire \badr[12]_INST_0_i_5_n_0 ;
  wire \badr[12]_INST_0_i_6_n_0 ;
  wire \badr[12]_INST_0_i_7_n_0 ;
  wire \badr[13]_INST_0_i_2_n_0 ;
  wire \badr[13]_INST_0_i_3_n_0 ;
  wire \badr[13]_INST_0_i_4_n_0 ;
  wire \badr[13]_INST_0_i_5_n_0 ;
  wire \badr[13]_INST_0_i_6_n_0 ;
  wire \badr[13]_INST_0_i_7_n_0 ;
  wire \badr[14]_INST_0_i_2_n_0 ;
  wire \badr[14]_INST_0_i_3_n_0 ;
  wire \badr[14]_INST_0_i_4_n_0 ;
  wire \badr[14]_INST_0_i_5_n_0 ;
  wire \badr[14]_INST_0_i_6_n_0 ;
  wire \badr[14]_INST_0_i_7_n_0 ;
  wire \badr[15]_INST_0_i_10_n_0 ;
  wire \badr[15]_INST_0_i_11_n_0 ;
  wire \badr[15]_INST_0_i_12_n_0 ;
  wire \badr[15]_INST_0_i_13_n_0 ;
  wire \badr[15]_INST_0_i_14_n_0 ;
  wire \badr[15]_INST_0_i_15_n_0 ;
  wire \badr[15]_INST_0_i_16_n_0 ;
  wire \badr[15]_INST_0_i_17_n_0 ;
  wire \badr[15]_INST_0_i_18_n_0 ;
  wire \badr[15]_INST_0_i_19_n_0 ;
  wire \badr[15]_INST_0_i_1_n_0 ;
  wire \badr[15]_INST_0_i_20_n_0 ;
  wire \badr[15]_INST_0_i_21_n_0 ;
  wire \badr[15]_INST_0_i_22_n_0 ;
  wire \badr[15]_INST_0_i_23_n_0 ;
  wire \badr[15]_INST_0_i_24_n_0 ;
  wire \badr[15]_INST_0_i_25_n_0 ;
  wire \badr[15]_INST_0_i_26_n_0 ;
  wire \badr[15]_INST_0_i_27_n_0 ;
  wire \badr[15]_INST_0_i_28_n_0 ;
  wire \badr[15]_INST_0_i_29_n_0 ;
  wire \badr[15]_INST_0_i_2_n_0 ;
  wire \badr[15]_INST_0_i_30_n_0 ;
  wire \badr[15]_INST_0_i_31_n_0 ;
  wire \badr[15]_INST_0_i_32_n_0 ;
  wire \badr[15]_INST_0_i_33_n_0 ;
  wire \badr[15]_INST_0_i_34_n_0 ;
  wire \badr[15]_INST_0_i_35_n_0 ;
  wire \badr[15]_INST_0_i_36_n_0 ;
  wire \badr[15]_INST_0_i_37_n_0 ;
  wire \badr[15]_INST_0_i_38_n_0 ;
  wire \badr[15]_INST_0_i_39_n_0 ;
  wire \badr[15]_INST_0_i_3_n_0 ;
  wire \badr[15]_INST_0_i_40_n_0 ;
  wire \badr[15]_INST_0_i_41_n_0 ;
  wire \badr[15]_INST_0_i_42_n_0 ;
  wire \badr[15]_INST_0_i_43_n_0 ;
  wire \badr[15]_INST_0_i_44_n_0 ;
  wire \badr[15]_INST_0_i_45_n_0 ;
  wire \badr[15]_INST_0_i_46_n_0 ;
  wire \badr[15]_INST_0_i_47_n_0 ;
  wire \badr[15]_INST_0_i_48_n_0 ;
  wire \badr[15]_INST_0_i_49_n_0 ;
  wire \badr[15]_INST_0_i_4_n_0 ;
  wire \badr[15]_INST_0_i_50_n_0 ;
  wire \badr[15]_INST_0_i_51_n_0 ;
  wire \badr[15]_INST_0_i_52_n_0 ;
  wire \badr[15]_INST_0_i_53_n_0 ;
  wire \badr[15]_INST_0_i_54_n_0 ;
  wire \badr[15]_INST_0_i_55_n_0 ;
  wire \badr[15]_INST_0_i_56_n_0 ;
  wire \badr[15]_INST_0_i_57_n_0 ;
  wire \badr[15]_INST_0_i_58_n_0 ;
  wire \badr[15]_INST_0_i_59_n_0 ;
  wire \badr[15]_INST_0_i_5_n_0 ;
  wire \badr[15]_INST_0_i_60_n_0 ;
  wire \badr[15]_INST_0_i_61_n_0 ;
  wire \badr[15]_INST_0_i_62_n_0 ;
  wire \badr[15]_INST_0_i_63_n_0 ;
  wire \badr[15]_INST_0_i_64_n_0 ;
  wire \badr[15]_INST_0_i_65_n_0 ;
  wire \badr[15]_INST_0_i_66_n_0 ;
  wire \badr[15]_INST_0_i_67_n_0 ;
  wire \badr[15]_INST_0_i_68_n_0 ;
  wire \badr[15]_INST_0_i_69_n_0 ;
  wire \badr[15]_INST_0_i_6_n_0 ;
  wire \badr[15]_INST_0_i_70_n_0 ;
  wire \badr[15]_INST_0_i_71_n_0 ;
  wire \badr[15]_INST_0_i_72_n_0 ;
  wire \badr[15]_INST_0_i_73_n_0 ;
  wire \badr[15]_INST_0_i_74_n_0 ;
  wire \badr[15]_INST_0_i_75_n_0 ;
  wire \badr[15]_INST_0_i_76_n_0 ;
  wire \badr[15]_INST_0_i_77_n_0 ;
  wire \badr[15]_INST_0_i_78_n_0 ;
  wire \badr[15]_INST_0_i_79_n_0 ;
  wire \badr[15]_INST_0_i_7_n_0 ;
  wire \badr[15]_INST_0_i_80_n_0 ;
  wire \badr[15]_INST_0_i_81_n_0 ;
  wire \badr[15]_INST_0_i_82_n_0 ;
  wire \badr[15]_INST_0_i_83_n_0 ;
  wire \badr[15]_INST_0_i_84_n_0 ;
  wire \badr[15]_INST_0_i_85_n_0 ;
  wire \badr[15]_INST_0_i_86_n_0 ;
  wire \badr[15]_INST_0_i_87_n_0 ;
  wire \badr[15]_INST_0_i_88_n_0 ;
  wire \badr[15]_INST_0_i_89_n_0 ;
  wire \badr[15]_INST_0_i_8_n_0 ;
  wire \badr[15]_INST_0_i_90_n_0 ;
  wire \badr[15]_INST_0_i_91_n_0 ;
  wire \badr[15]_INST_0_i_92_n_0 ;
  wire \badr[15]_INST_0_i_93_n_0 ;
  wire \badr[15]_INST_0_i_94_n_0 ;
  wire \badr[15]_INST_0_i_95_n_0 ;
  wire \badr[15]_INST_0_i_96_n_0 ;
  wire \badr[15]_INST_0_i_97_n_0 ;
  wire \badr[15]_INST_0_i_9_n_0 ;
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
  wire [6:0]bbus_0;
  wire [2:0]bcmd;
  wire \bcmd[0]_INST_0_i_1_n_0 ;
  wire \bcmd[0]_INST_0_i_2_n_0 ;
  wire \bcmd[0]_INST_0_i_3_n_0 ;
  wire \bcmd[0]_INST_0_i_4_n_0 ;
  wire \bcmd[0]_INST_0_i_5_n_0 ;
  wire \bcmd[0]_INST_0_i_6_n_0 ;
  wire \bcmd[0]_INST_0_i_7_n_0 ;
  wire \bcmd[1]_INST_0_i_1_n_0 ;
  wire \bcmd[1]_INST_0_i_2_n_0 ;
  wire \bcmd[1]_INST_0_i_3_n_0 ;
  wire \bcmd[1]_INST_0_i_4_n_0 ;
  wire \bcmd[1]_INST_0_i_5_n_0 ;
  wire \bcmd[1]_INST_0_i_6_n_0 ;
  wire \bcmd[1]_INST_0_i_7_n_0 ;
  wire \bcmd[1]_INST_0_i_8_n_0 ;
  wire \bcmd[2]_INST_0_i_1_n_0 ;
  wire \bcmd[2]_INST_0_i_2_n_0 ;
  wire \bctl/read_cyc[1]_i_1_n_0 ;
  wire \bctl/read_cyc[2]_i_1_n_0 ;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire \bdatw[10]_INST_0_i_10_n_0 ;
  wire \bdatw[10]_INST_0_i_11_n_0 ;
  wire \bdatw[10]_INST_0_i_12_n_0 ;
  wire \bdatw[10]_INST_0_i_13_n_0 ;
  wire \bdatw[10]_INST_0_i_14_n_0 ;
  wire \bdatw[10]_INST_0_i_15_n_0 ;
  wire \bdatw[10]_INST_0_i_16_n_0 ;
  wire \bdatw[10]_INST_0_i_17_n_0 ;
  wire \bdatw[10]_INST_0_i_18_n_0 ;
  wire \bdatw[10]_INST_0_i_1_n_0 ;
  wire \bdatw[10]_INST_0_i_2_n_0 ;
  wire \bdatw[10]_INST_0_i_3_n_0 ;
  wire \bdatw[10]_INST_0_i_4_n_0 ;
  wire \bdatw[10]_INST_0_i_5_n_0 ;
  wire \bdatw[10]_INST_0_i_6_n_0 ;
  wire \bdatw[10]_INST_0_i_7_n_0 ;
  wire \bdatw[10]_INST_0_i_8_n_0 ;
  wire \bdatw[10]_INST_0_i_9_n_0 ;
  wire \bdatw[11]_INST_0_i_10_n_0 ;
  wire \bdatw[11]_INST_0_i_11_n_0 ;
  wire \bdatw[11]_INST_0_i_12_n_0 ;
  wire \bdatw[11]_INST_0_i_13_n_0 ;
  wire \bdatw[11]_INST_0_i_14_n_0 ;
  wire \bdatw[11]_INST_0_i_15_n_0 ;
  wire \bdatw[11]_INST_0_i_16_n_0 ;
  wire \bdatw[11]_INST_0_i_17_n_0 ;
  wire \bdatw[11]_INST_0_i_18_n_0 ;
  wire \bdatw[11]_INST_0_i_1_n_0 ;
  wire \bdatw[11]_INST_0_i_2_n_0 ;
  wire \bdatw[11]_INST_0_i_3_n_0 ;
  wire \bdatw[11]_INST_0_i_4_n_0 ;
  wire \bdatw[11]_INST_0_i_5_n_0 ;
  wire \bdatw[11]_INST_0_i_6_n_0 ;
  wire \bdatw[11]_INST_0_i_7_n_0 ;
  wire \bdatw[11]_INST_0_i_8_n_0 ;
  wire \bdatw[11]_INST_0_i_9_n_0 ;
  wire \bdatw[12]_INST_0_i_10_n_0 ;
  wire \bdatw[12]_INST_0_i_11_n_0 ;
  wire \bdatw[12]_INST_0_i_12_n_0 ;
  wire \bdatw[12]_INST_0_i_13_n_0 ;
  wire \bdatw[12]_INST_0_i_14_n_0 ;
  wire \bdatw[12]_INST_0_i_15_n_0 ;
  wire \bdatw[12]_INST_0_i_16_n_0 ;
  wire \bdatw[12]_INST_0_i_17_n_0 ;
  wire \bdatw[12]_INST_0_i_1_n_0 ;
  wire \bdatw[12]_INST_0_i_2_n_0 ;
  wire \bdatw[12]_INST_0_i_3_n_0 ;
  wire \bdatw[12]_INST_0_i_4_n_0 ;
  wire \bdatw[12]_INST_0_i_5_n_0 ;
  wire \bdatw[12]_INST_0_i_6_n_0 ;
  wire \bdatw[12]_INST_0_i_7_n_0 ;
  wire \bdatw[12]_INST_0_i_8_n_0 ;
  wire \bdatw[12]_INST_0_i_9_n_0 ;
  wire \bdatw[13]_INST_0_i_10_n_0 ;
  wire \bdatw[13]_INST_0_i_11_n_0 ;
  wire \bdatw[13]_INST_0_i_12_n_0 ;
  wire \bdatw[13]_INST_0_i_13_n_0 ;
  wire \bdatw[13]_INST_0_i_14_n_0 ;
  wire \bdatw[13]_INST_0_i_15_n_0 ;
  wire \bdatw[13]_INST_0_i_16_n_0 ;
  wire \bdatw[13]_INST_0_i_17_n_0 ;
  wire \bdatw[13]_INST_0_i_18_n_0 ;
  wire \bdatw[13]_INST_0_i_1_n_0 ;
  wire \bdatw[13]_INST_0_i_2_n_0 ;
  wire \bdatw[13]_INST_0_i_3_n_0 ;
  wire \bdatw[13]_INST_0_i_4_n_0 ;
  wire \bdatw[13]_INST_0_i_5_n_0 ;
  wire \bdatw[13]_INST_0_i_6_n_0 ;
  wire \bdatw[13]_INST_0_i_7_n_0 ;
  wire \bdatw[13]_INST_0_i_8_n_0 ;
  wire \bdatw[13]_INST_0_i_9_n_0 ;
  wire \bdatw[14]_INST_0_i_10_n_0 ;
  wire \bdatw[14]_INST_0_i_11_n_0 ;
  wire \bdatw[14]_INST_0_i_12_n_0 ;
  wire \bdatw[14]_INST_0_i_13_n_0 ;
  wire \bdatw[14]_INST_0_i_14_n_0 ;
  wire \bdatw[14]_INST_0_i_15_n_0 ;
  wire \bdatw[14]_INST_0_i_16_n_0 ;
  wire \bdatw[14]_INST_0_i_17_n_0 ;
  wire \bdatw[14]_INST_0_i_18_n_0 ;
  wire \bdatw[14]_INST_0_i_19_n_0 ;
  wire \bdatw[14]_INST_0_i_1_n_0 ;
  wire \bdatw[14]_INST_0_i_2_n_0 ;
  wire \bdatw[14]_INST_0_i_3_n_0 ;
  wire \bdatw[14]_INST_0_i_4_n_0 ;
  wire \bdatw[14]_INST_0_i_5_n_0 ;
  wire \bdatw[14]_INST_0_i_6_n_0 ;
  wire \bdatw[14]_INST_0_i_7_n_0 ;
  wire \bdatw[14]_INST_0_i_8_n_0 ;
  wire \bdatw[14]_INST_0_i_9_n_0 ;
  wire \bdatw[15]_INST_0_i_10_n_0 ;
  wire \bdatw[15]_INST_0_i_11_n_0 ;
  wire \bdatw[15]_INST_0_i_12_n_0 ;
  wire \bdatw[15]_INST_0_i_13_n_0 ;
  wire \bdatw[15]_INST_0_i_14_n_0 ;
  wire \bdatw[15]_INST_0_i_15_n_0 ;
  wire \bdatw[15]_INST_0_i_16_n_0 ;
  wire \bdatw[15]_INST_0_i_17_n_0 ;
  wire \bdatw[15]_INST_0_i_18_n_0 ;
  wire \bdatw[15]_INST_0_i_19_n_0 ;
  wire \bdatw[15]_INST_0_i_1_n_0 ;
  wire \bdatw[15]_INST_0_i_20_n_0 ;
  wire \bdatw[15]_INST_0_i_21_n_0 ;
  wire \bdatw[15]_INST_0_i_22_n_0 ;
  wire \bdatw[15]_INST_0_i_23_n_0 ;
  wire \bdatw[15]_INST_0_i_24_n_0 ;
  wire \bdatw[15]_INST_0_i_25_n_0 ;
  wire \bdatw[15]_INST_0_i_26_n_0 ;
  wire \bdatw[15]_INST_0_i_27_n_0 ;
  wire \bdatw[15]_INST_0_i_28_n_0 ;
  wire \bdatw[15]_INST_0_i_29_n_0 ;
  wire \bdatw[15]_INST_0_i_2_n_0 ;
  wire \bdatw[15]_INST_0_i_30_n_0 ;
  wire \bdatw[15]_INST_0_i_31_n_0 ;
  wire \bdatw[15]_INST_0_i_32_n_0 ;
  wire \bdatw[15]_INST_0_i_33_n_0 ;
  wire \bdatw[15]_INST_0_i_34_n_0 ;
  wire \bdatw[15]_INST_0_i_35_n_0 ;
  wire \bdatw[15]_INST_0_i_36_n_0 ;
  wire \bdatw[15]_INST_0_i_37_n_0 ;
  wire \bdatw[15]_INST_0_i_38_n_0 ;
  wire \bdatw[15]_INST_0_i_39_n_0 ;
  wire \bdatw[15]_INST_0_i_3_n_0 ;
  wire \bdatw[15]_INST_0_i_40_n_0 ;
  wire \bdatw[15]_INST_0_i_41_n_0 ;
  wire \bdatw[15]_INST_0_i_42_n_0 ;
  wire \bdatw[15]_INST_0_i_43_n_0 ;
  wire \bdatw[15]_INST_0_i_44_n_0 ;
  wire \bdatw[15]_INST_0_i_45_n_0 ;
  wire \bdatw[15]_INST_0_i_46_n_0 ;
  wire \bdatw[15]_INST_0_i_47_n_0 ;
  wire \bdatw[15]_INST_0_i_48_n_0 ;
  wire \bdatw[15]_INST_0_i_49_n_0 ;
  wire \bdatw[15]_INST_0_i_4_n_0 ;
  wire \bdatw[15]_INST_0_i_50_n_0 ;
  wire \bdatw[15]_INST_0_i_51_n_0 ;
  wire \bdatw[15]_INST_0_i_52_n_0 ;
  wire \bdatw[15]_INST_0_i_53_n_0 ;
  wire \bdatw[15]_INST_0_i_54_n_0 ;
  wire \bdatw[15]_INST_0_i_55_n_0 ;
  wire \bdatw[15]_INST_0_i_56_n_0 ;
  wire \bdatw[15]_INST_0_i_57_n_0 ;
  wire \bdatw[15]_INST_0_i_58_n_0 ;
  wire \bdatw[15]_INST_0_i_59_n_0 ;
  wire \bdatw[15]_INST_0_i_5_n_0 ;
  wire \bdatw[15]_INST_0_i_60_n_0 ;
  wire \bdatw[15]_INST_0_i_61_n_0 ;
  wire \bdatw[15]_INST_0_i_62_n_0 ;
  wire \bdatw[15]_INST_0_i_63_n_0 ;
  wire \bdatw[15]_INST_0_i_64_n_0 ;
  wire \bdatw[15]_INST_0_i_65_n_0 ;
  wire \bdatw[15]_INST_0_i_66_n_0 ;
  wire \bdatw[15]_INST_0_i_67_n_0 ;
  wire \bdatw[15]_INST_0_i_68_n_0 ;
  wire \bdatw[15]_INST_0_i_69_n_0 ;
  wire \bdatw[15]_INST_0_i_6_n_0 ;
  wire \bdatw[15]_INST_0_i_70_n_0 ;
  wire \bdatw[15]_INST_0_i_71_n_0 ;
  wire \bdatw[15]_INST_0_i_72_n_0 ;
  wire \bdatw[15]_INST_0_i_73_n_0 ;
  wire \bdatw[15]_INST_0_i_74_n_0 ;
  wire \bdatw[15]_INST_0_i_75_n_0 ;
  wire \bdatw[15]_INST_0_i_76_n_0 ;
  wire \bdatw[15]_INST_0_i_77_n_0 ;
  wire \bdatw[15]_INST_0_i_78_n_0 ;
  wire \bdatw[15]_INST_0_i_79_n_0 ;
  wire \bdatw[15]_INST_0_i_7_n_0 ;
  wire \bdatw[15]_INST_0_i_80_n_0 ;
  wire \bdatw[15]_INST_0_i_81_n_0 ;
  wire \bdatw[15]_INST_0_i_82_n_0 ;
  wire \bdatw[15]_INST_0_i_8_n_0 ;
  wire \bdatw[15]_INST_0_i_9_n_0 ;
  wire \bdatw[8]_INST_0_i_10_n_0 ;
  wire \bdatw[8]_INST_0_i_11_n_0 ;
  wire \bdatw[8]_INST_0_i_12_n_0 ;
  wire \bdatw[8]_INST_0_i_13_n_0 ;
  wire \bdatw[8]_INST_0_i_14_n_0 ;
  wire \bdatw[8]_INST_0_i_15_n_0 ;
  wire \bdatw[8]_INST_0_i_16_n_0 ;
  wire \bdatw[8]_INST_0_i_17_n_0 ;
  wire \bdatw[8]_INST_0_i_18_n_0 ;
  wire \bdatw[8]_INST_0_i_1_n_0 ;
  wire \bdatw[8]_INST_0_i_3_n_0 ;
  wire \bdatw[8]_INST_0_i_4_n_0 ;
  wire \bdatw[8]_INST_0_i_5_n_0 ;
  wire \bdatw[8]_INST_0_i_6_n_0 ;
  wire \bdatw[8]_INST_0_i_7_n_0 ;
  wire \bdatw[8]_INST_0_i_8_n_0 ;
  wire \bdatw[8]_INST_0_i_9_n_0 ;
  wire \bdatw[9]_INST_0_i_10_n_0 ;
  wire \bdatw[9]_INST_0_i_11_n_0 ;
  wire \bdatw[9]_INST_0_i_12_n_0 ;
  wire \bdatw[9]_INST_0_i_13_n_0 ;
  wire \bdatw[9]_INST_0_i_14_n_0 ;
  wire \bdatw[9]_INST_0_i_15_n_0 ;
  wire \bdatw[9]_INST_0_i_16_n_0 ;
  wire \bdatw[9]_INST_0_i_17_n_0 ;
  wire \bdatw[9]_INST_0_i_18_n_0 ;
  wire \bdatw[9]_INST_0_i_19_n_0 ;
  wire \bdatw[9]_INST_0_i_1_n_0 ;
  wire \bdatw[9]_INST_0_i_20_n_0 ;
  wire \bdatw[9]_INST_0_i_2_n_0 ;
  wire \bdatw[9]_INST_0_i_3_n_0 ;
  wire \bdatw[9]_INST_0_i_4_n_0 ;
  wire \bdatw[9]_INST_0_i_5_n_0 ;
  wire \bdatw[9]_INST_0_i_6_n_0 ;
  wire \bdatw[9]_INST_0_i_7_n_0 ;
  wire \bdatw[9]_INST_0_i_8_n_0 ;
  wire \bdatw[9]_INST_0_i_9_n_0 ;
  wire brdy;
  wire [15:0]cbus;
  wire cbus1_carry__0_i_4_n_0;
  wire cbus1_carry__0_i_5_n_0;
  wire cbus1_carry__0_i_6_n_0;
  wire cbus1_carry__0_i_7_n_0;
  wire cbus1_carry__1_i_3_n_0;
  wire cbus1_carry__1_i_4_n_0;
  wire cbus1_carry__1_i_5_n_0;
  wire cbus1_carry__1_i_6_n_0;
  wire cbus1_carry__2_i_1_n_0;
  wire cbus1_carry__2_i_2_n_0;
  wire cbus1_carry__2_i_3_n_0;
  wire cbus1_carry__2_i_4_n_0;
  wire cbus1_carry_i_2_n_0;
  wire cbus1_carry_i_3_n_0;
  wire cbus1_carry_i_4_n_0;
  wire cbus1_carry_i_5_n_0;
  wire clk;
  wire [1:0]cpuid;
  wire [2:0]\ctl/stat ;
  wire [1:0]\ctl/stat_nx ;
  (* DONT_TOUCH *) wire ctl_fetch;
  wire ctl_fetch_ext;
  wire ctl_fetch_ext_fl_i_2_n_0;
  wire ctl_fetch_ext_fl_i_3_n_0;
  wire ctl_fetch_ext_fl_i_4_n_0;
  wire ctl_fetch_ext_fl_i_5_n_0;
  wire ctl_fetch_ext_fl_i_6_n_0;
  wire ctl_fetch_inferred_i_10_n_0;
  wire ctl_fetch_inferred_i_11_n_0;
  wire ctl_fetch_inferred_i_12_n_0;
  wire ctl_fetch_inferred_i_13_n_0;
  wire ctl_fetch_inferred_i_14_n_0;
  wire ctl_fetch_inferred_i_15_n_0;
  wire ctl_fetch_inferred_i_16_n_0;
  wire ctl_fetch_inferred_i_17_n_0;
  wire ctl_fetch_inferred_i_18_n_0;
  wire ctl_fetch_inferred_i_19_n_0;
  wire ctl_fetch_inferred_i_20_n_0;
  wire ctl_fetch_inferred_i_2_n_0;
  wire ctl_fetch_inferred_i_3_n_0;
  wire ctl_fetch_inferred_i_4_n_0;
  wire ctl_fetch_inferred_i_5_n_0;
  wire ctl_fetch_inferred_i_6_n_0;
  wire ctl_fetch_inferred_i_7_n_0;
  wire ctl_fetch_inferred_i_8_n_0;
  wire ctl_fetch_inferred_i_9_n_0;
  wire \eir_fl[15]_i_1_n_0 ;
  wire \eir_fl[1]_i_1_n_0 ;
  wire \eir_fl[2]_i_1_n_0 ;
  wire \eir_fl[3]_i_1_n_0 ;
  wire \eir_fl[4]_i_1_n_0 ;
  wire \eir_fl[5]_i_1_n_0 ;
  wire \eir_fl[6]_i_2_n_0 ;
  wire \fch/ctl_fetch_ext_fl ;
  wire \fch/ctl_fetch_fl ;
  (* DONT_TOUCH *) wire [15:0]\fch/eir ;
  wire \fch/eir_fl0 ;
  wire \fch/eir_fl_reg_n_0_[0] ;
  wire \fch/eir_fl_reg_n_0_[10] ;
  wire \fch/eir_fl_reg_n_0_[11] ;
  wire \fch/eir_fl_reg_n_0_[12] ;
  wire \fch/eir_fl_reg_n_0_[13] ;
  wire \fch/eir_fl_reg_n_0_[14] ;
  wire \fch/eir_fl_reg_n_0_[15] ;
  wire \fch/eir_fl_reg_n_0_[1] ;
  wire \fch/eir_fl_reg_n_0_[2] ;
  wire \fch/eir_fl_reg_n_0_[3] ;
  wire \fch/eir_fl_reg_n_0_[4] ;
  wire \fch/eir_fl_reg_n_0_[5] ;
  wire \fch/eir_fl_reg_n_0_[6] ;
  wire \fch/eir_fl_reg_n_0_[7] ;
  wire \fch/eir_fl_reg_n_0_[8] ;
  wire \fch/eir_fl_reg_n_0_[9] ;
  wire \fch/fch_irq_lev0 ;
  wire \fch/fch_irq_req_fl ;
  (* DONT_TOUCH *) wire [15:0]\fch/ir ;
  wire [15:0]\fch/ir_fl ;
  wire \fch/rst_n_fl ;
  wire [1:0]fch_irq_lev;
  wire \fch_irq_lev[0]_i_1_n_0 ;
  wire \fch_irq_lev[1]_i_1_n_0 ;
  wire \fch_irq_lev[1]_i_3_n_0 ;
  wire \fch_irq_lev[1]_i_4_n_0 ;
  wire \fch_irq_lev[1]_i_5_n_0 ;
  wire \fch_irq_lev[1]_i_6_n_0 ;
  wire \fch_irq_lev[1]_i_7_n_0 ;
  wire \fch_irq_lev[1]_i_8_n_0 ;
  wire \fch_irq_lev[1]_i_9_n_0 ;
  wire fch_irq_req;
  wire [15:0]fch_pc;
  wire [15:0]fdat;
  wire \grn[0]_i_10_n_0 ;
  wire \grn[0]_i_11_n_0 ;
  wire \grn[0]_i_12_n_0 ;
  wire \grn[0]_i_13_n_0 ;
  wire \grn[0]_i_2_n_0 ;
  wire \grn[0]_i_3_n_0 ;
  wire \grn[0]_i_4_n_0 ;
  wire \grn[0]_i_5_n_0 ;
  wire \grn[0]_i_6_n_0 ;
  wire \grn[0]_i_7_n_0 ;
  wire \grn[0]_i_8_n_0 ;
  wire \grn[0]_i_9_n_0 ;
  wire \grn[10]_i_2_n_0 ;
  wire \grn[10]_i_3_n_0 ;
  wire \grn[10]_i_4_n_0 ;
  wire \grn[11]_i_2_n_0 ;
  wire \grn[11]_i_3_n_0 ;
  wire \grn[11]_i_4_n_0 ;
  wire \grn[12]_i_2_n_0 ;
  wire \grn[12]_i_3_n_0 ;
  wire \grn[12]_i_4_n_0 ;
  wire \grn[13]_i_2_n_0 ;
  wire \grn[13]_i_3_n_0 ;
  wire \grn[13]_i_4_n_0 ;
  wire \grn[14]_i_10_n_0 ;
  wire \grn[14]_i_11_n_0 ;
  wire \grn[14]_i_12_n_0 ;
  wire \grn[14]_i_13_n_0 ;
  wire \grn[14]_i_14_n_0 ;
  wire \grn[14]_i_2_n_0 ;
  wire \grn[14]_i_3_n_0 ;
  wire \grn[14]_i_4_n_0 ;
  wire \grn[14]_i_5_n_0 ;
  wire \grn[14]_i_6_n_0 ;
  wire \grn[14]_i_7_n_0 ;
  wire \grn[14]_i_8_n_0 ;
  wire \grn[14]_i_9_n_0 ;
  wire \grn[15]_i_10_n_0 ;
  wire \grn[15]_i_11_n_0 ;
  wire \grn[15]_i_12_n_0 ;
  wire \grn[15]_i_13_n_0 ;
  wire \grn[15]_i_14_n_0 ;
  wire \grn[15]_i_15_n_0 ;
  wire \grn[15]_i_16_n_0 ;
  wire \grn[15]_i_17_n_0 ;
  wire \grn[15]_i_18_n_0 ;
  wire \grn[15]_i_19_n_0 ;
  wire \grn[15]_i_1__0_n_0 ;
  wire \grn[15]_i_1__1_n_0 ;
  wire \grn[15]_i_1__2_n_0 ;
  wire \grn[15]_i_1__3_n_0 ;
  wire \grn[15]_i_1__4_n_0 ;
  wire \grn[15]_i_1__6_n_0 ;
  wire \grn[15]_i_1_n_0 ;
  wire \grn[15]_i_20_n_0 ;
  wire \grn[15]_i_21_n_0 ;
  wire \grn[15]_i_22_n_0 ;
  wire \grn[15]_i_23_n_0 ;
  wire \grn[15]_i_24_n_0 ;
  wire \grn[15]_i_25_n_0 ;
  wire \grn[15]_i_26_n_0 ;
  wire \grn[15]_i_27_n_0 ;
  wire \grn[15]_i_28_n_0 ;
  wire \grn[15]_i_30_n_0 ;
  wire \grn[15]_i_31_n_0 ;
  wire \grn[15]_i_32_n_0 ;
  wire \grn[15]_i_33_n_0 ;
  wire \grn[15]_i_34_n_0 ;
  wire \grn[15]_i_35_n_0 ;
  wire \grn[15]_i_36_n_0 ;
  wire \grn[15]_i_37_n_0 ;
  wire \grn[15]_i_38_n_0 ;
  wire \grn[15]_i_39_n_0 ;
  wire \grn[15]_i_3_n_0 ;
  wire \grn[15]_i_40_n_0 ;
  wire \grn[15]_i_41_n_0 ;
  wire \grn[15]_i_42_n_0 ;
  wire \grn[15]_i_43_n_0 ;
  wire \grn[15]_i_44_n_0 ;
  wire \grn[15]_i_45_n_0 ;
  wire \grn[15]_i_46_n_0 ;
  wire \grn[15]_i_47_n_0 ;
  wire \grn[15]_i_48_n_0 ;
  wire \grn[15]_i_49_n_0 ;
  wire \grn[15]_i_4_n_0 ;
  wire \grn[15]_i_50_n_0 ;
  wire \grn[15]_i_51_n_0 ;
  wire \grn[15]_i_52_n_0 ;
  wire \grn[15]_i_53_n_0 ;
  wire \grn[15]_i_54_n_0 ;
  wire \grn[15]_i_55_n_0 ;
  wire \grn[15]_i_56_n_0 ;
  wire \grn[15]_i_57_n_0 ;
  wire \grn[15]_i_58_n_0 ;
  wire \grn[15]_i_59_n_0 ;
  wire \grn[15]_i_5_n_0 ;
  wire \grn[15]_i_60_n_0 ;
  wire \grn[15]_i_61_n_0 ;
  wire \grn[15]_i_62_n_0 ;
  wire \grn[15]_i_63_n_0 ;
  wire \grn[15]_i_64_n_0 ;
  wire \grn[15]_i_65_n_0 ;
  wire \grn[15]_i_66_n_0 ;
  wire \grn[15]_i_67_n_0 ;
  wire \grn[15]_i_68_n_0 ;
  wire \grn[15]_i_69_n_0 ;
  wire \grn[15]_i_6_n_0 ;
  wire \grn[15]_i_70_n_0 ;
  wire \grn[15]_i_71_n_0 ;
  wire \grn[15]_i_72_n_0 ;
  wire \grn[15]_i_73_n_0 ;
  wire \grn[15]_i_74_n_0 ;
  wire \grn[15]_i_7_n_0 ;
  wire \grn[15]_i_8_n_0 ;
  wire \grn[15]_i_9_n_0 ;
  wire \grn[1]_i_10_n_0 ;
  wire \grn[1]_i_11_n_0 ;
  wire \grn[1]_i_12_n_0 ;
  wire \grn[1]_i_13_n_0 ;
  wire \grn[1]_i_14_n_0 ;
  wire \grn[1]_i_15_n_0 ;
  wire \grn[1]_i_16_n_0 ;
  wire \grn[1]_i_17_n_0 ;
  wire \grn[1]_i_18_n_0 ;
  wire \grn[1]_i_19_n_0 ;
  wire \grn[1]_i_20_n_0 ;
  wire \grn[1]_i_21_n_0 ;
  wire \grn[1]_i_2_n_0 ;
  wire \grn[1]_i_3_n_0 ;
  wire \grn[1]_i_4_n_0 ;
  wire \grn[1]_i_5_n_0 ;
  wire \grn[1]_i_6_n_0 ;
  wire \grn[1]_i_7_n_0 ;
  wire \grn[1]_i_8_n_0 ;
  wire \grn[1]_i_9_n_0 ;
  wire \grn[2]_i_10_n_0 ;
  wire \grn[2]_i_11_n_0 ;
  wire \grn[2]_i_12_n_0 ;
  wire \grn[2]_i_13_n_0 ;
  wire \grn[2]_i_14_n_0 ;
  wire \grn[2]_i_15_n_0 ;
  wire \grn[2]_i_2_n_0 ;
  wire \grn[2]_i_3_n_0 ;
  wire \grn[2]_i_4_n_0 ;
  wire \grn[2]_i_5_n_0 ;
  wire \grn[2]_i_6_n_0 ;
  wire \grn[2]_i_7_n_0 ;
  wire \grn[2]_i_8_n_0 ;
  wire \grn[2]_i_9_n_0 ;
  wire \grn[3]_i_10_n_0 ;
  wire \grn[3]_i_11_n_0 ;
  wire \grn[3]_i_12_n_0 ;
  wire \grn[3]_i_13_n_0 ;
  wire \grn[3]_i_14_n_0 ;
  wire \grn[3]_i_15_n_0 ;
  wire \grn[3]_i_16_n_0 ;
  wire \grn[3]_i_17_n_0 ;
  wire \grn[3]_i_2_n_0 ;
  wire \grn[3]_i_3_n_0 ;
  wire \grn[3]_i_4_n_0 ;
  wire \grn[3]_i_5_n_0 ;
  wire \grn[3]_i_6_n_0 ;
  wire \grn[3]_i_7_n_0 ;
  wire \grn[3]_i_8_n_0 ;
  wire \grn[3]_i_9_n_0 ;
  wire \grn[4]_i_10_n_0 ;
  wire \grn[4]_i_11_n_0 ;
  wire \grn[4]_i_12_n_0 ;
  wire \grn[4]_i_13_n_0 ;
  wire \grn[4]_i_14_n_0 ;
  wire \grn[4]_i_15_n_0 ;
  wire \grn[4]_i_16_n_0 ;
  wire \grn[4]_i_17_n_0 ;
  wire \grn[4]_i_18_n_0 ;
  wire \grn[4]_i_19_n_0 ;
  wire \grn[4]_i_20_n_0 ;
  wire \grn[4]_i_21_n_0 ;
  wire \grn[4]_i_22_n_0 ;
  wire \grn[4]_i_2_n_0 ;
  wire \grn[4]_i_3_n_0 ;
  wire \grn[4]_i_4_n_0 ;
  wire \grn[4]_i_5_n_0 ;
  wire \grn[4]_i_6_n_0 ;
  wire \grn[4]_i_7_n_0 ;
  wire \grn[4]_i_8_n_0 ;
  wire \grn[4]_i_9_n_0 ;
  wire \grn[5]_i_10_n_0 ;
  wire \grn[5]_i_11_n_0 ;
  wire \grn[5]_i_12_n_0 ;
  wire \grn[5]_i_13_n_0 ;
  wire \grn[5]_i_14_n_0 ;
  wire \grn[5]_i_15_n_0 ;
  wire \grn[5]_i_16_n_0 ;
  wire \grn[5]_i_17_n_0 ;
  wire \grn[5]_i_2_n_0 ;
  wire \grn[5]_i_3_n_0 ;
  wire \grn[5]_i_4_n_0 ;
  wire \grn[5]_i_5_n_0 ;
  wire \grn[5]_i_6_n_0 ;
  wire \grn[5]_i_7_n_0 ;
  wire \grn[5]_i_8_n_0 ;
  wire \grn[5]_i_9_n_0 ;
  wire \grn[6]_i_10_n_0 ;
  wire \grn[6]_i_11_n_0 ;
  wire \grn[6]_i_12_n_0 ;
  wire \grn[6]_i_13_n_0 ;
  wire \grn[6]_i_14_n_0 ;
  wire \grn[6]_i_15_n_0 ;
  wire \grn[6]_i_16_n_0 ;
  wire \grn[6]_i_17_n_0 ;
  wire \grn[6]_i_18_n_0 ;
  wire \grn[6]_i_19_n_0 ;
  wire \grn[6]_i_20_n_0 ;
  wire \grn[6]_i_21_n_0 ;
  wire \grn[6]_i_22_n_0 ;
  wire \grn[6]_i_23_n_0 ;
  wire \grn[6]_i_24_n_0 ;
  wire \grn[6]_i_2_n_0 ;
  wire \grn[6]_i_3_n_0 ;
  wire \grn[6]_i_4_n_0 ;
  wire \grn[6]_i_5_n_0 ;
  wire \grn[6]_i_6_n_0 ;
  wire \grn[6]_i_7_n_0 ;
  wire \grn[6]_i_8_n_0 ;
  wire \grn[6]_i_9_n_0 ;
  wire \grn[7]_i_10_n_0 ;
  wire \grn[7]_i_11_n_0 ;
  wire \grn[7]_i_12_n_0 ;
  wire \grn[7]_i_13_n_0 ;
  wire \grn[7]_i_14_n_0 ;
  wire \grn[7]_i_15_n_0 ;
  wire \grn[7]_i_16_n_0 ;
  wire \grn[7]_i_1__0_n_0 ;
  wire \grn[7]_i_1__1_n_0 ;
  wire \grn[7]_i_1__2_n_0 ;
  wire \grn[7]_i_1__3_n_0 ;
  wire \grn[7]_i_1__4_n_0 ;
  wire \grn[7]_i_1__5_n_0 ;
  wire \grn[7]_i_1__6_n_0 ;
  wire \grn[7]_i_1_n_0 ;
  wire \grn[7]_i_3_n_0 ;
  wire \grn[7]_i_4_n_0 ;
  wire \grn[7]_i_5_n_0 ;
  wire \grn[7]_i_6_n_0 ;
  wire \grn[7]_i_7_n_0 ;
  wire \grn[7]_i_8_n_0 ;
  wire \grn[7]_i_9_n_0 ;
  wire \grn[8]_i_2_n_0 ;
  wire \grn[8]_i_3_n_0 ;
  wire \grn[8]_i_4_n_0 ;
  wire \grn[9]_i_2_n_0 ;
  wire \grn[9]_i_3_n_0 ;
  wire \grn[9]_i_4_n_0 ;
  wire \grn_reg[15]_i_29_n_0 ;
  wire irq;
  wire [1:0]irq_lev;
  wire [5:0]irq_vec;
  wire \iv[15]_i_10_n_0 ;
  wire \iv[15]_i_11_n_0 ;
  wire \iv[15]_i_12_n_0 ;
  wire \iv[15]_i_13_n_0 ;
  wire \iv[15]_i_14_n_0 ;
  wire \iv[15]_i_15_n_0 ;
  wire \iv[15]_i_16_n_0 ;
  wire \iv[15]_i_17_n_0 ;
  wire \iv[15]_i_18_n_0 ;
  wire \iv[15]_i_19_n_0 ;
  wire \iv[15]_i_20_n_0 ;
  wire \iv[15]_i_21_n_0 ;
  wire \iv[15]_i_22_n_0 ;
  wire \iv[15]_i_23_n_0 ;
  wire \iv[15]_i_24_n_0 ;
  wire \iv[15]_i_25_n_0 ;
  wire \iv[15]_i_26_n_0 ;
  wire \iv[15]_i_27_n_0 ;
  wire \iv[15]_i_2_n_0 ;
  wire \iv[15]_i_3_n_0 ;
  wire \iv[15]_i_4_n_0 ;
  wire \iv[15]_i_5_n_0 ;
  wire \iv[15]_i_6_n_0 ;
  wire \iv[15]_i_7_n_0 ;
  wire \iv[15]_i_8_n_0 ;
  wire \iv[15]_i_9_n_0 ;
  wire [2:0]\mem/read_cyc ;
  wire \pc[0]_i_1_n_0 ;
  wire \pc[10]_i_1_n_0 ;
  wire \pc[11]_i_1_n_0 ;
  wire \pc[12]_i_1_n_0 ;
  wire \pc[13]_i_1_n_0 ;
  wire \pc[14]_i_1_n_0 ;
  wire \pc[15]_i_1_n_0 ;
  wire \pc[15]_i_2_n_0 ;
  wire \pc[15]_i_3_n_0 ;
  wire \pc[1]_i_1_n_0 ;
  wire \pc[1]_i_2_n_0 ;
  wire \pc[2]_i_1_n_0 ;
  wire \pc[3]_i_1_n_0 ;
  wire \pc[3]_i_3_n_0 ;
  wire \pc[4]_i_1_n_0 ;
  wire \pc[5]_i_1_n_0 ;
  wire \pc[6]_i_1_n_0 ;
  wire \pc[7]_i_1_n_0 ;
  wire \pc[8]_i_1_n_0 ;
  wire \pc[9]_i_1_n_0 ;
  wire \pc_reg[11]_i_2_n_0 ;
  wire \pc_reg[11]_i_2_n_1 ;
  wire \pc_reg[11]_i_2_n_2 ;
  wire \pc_reg[11]_i_2_n_3 ;
  wire \pc_reg[15]_i_4_n_1 ;
  wire \pc_reg[15]_i_4_n_2 ;
  wire \pc_reg[15]_i_4_n_3 ;
  wire \pc_reg[3]_i_2_n_0 ;
  wire \pc_reg[3]_i_2_n_1 ;
  wire \pc_reg[3]_i_2_n_2 ;
  wire \pc_reg[3]_i_2_n_3 ;
  wire \pc_reg[7]_i_2_n_0 ;
  wire \pc_reg[7]_i_2_n_1 ;
  wire \pc_reg[7]_i_2_n_2 ;
  wire \pc_reg[7]_i_2_n_3 ;
  wire \read_cyc[0]_i_1_n_0 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank/gr00 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank/gr01 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank/gr02 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank/gr03 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank/gr04 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank/gr05 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank/gr06 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank/gr07 ;
  wire \rgf/bank/grn1 ;
  wire [3:3]\rgf/cbus_sel_cr ;
  (* DONT_TOUCH *) wire [15:0]\rgf/ivec/iv ;
  (* DONT_TOUCH *) wire [15:0]\rgf/pcnt/pc ;
  wire [15:0]\rgf/sp_dec_0 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/sptr/sp ;
  wire [15:0]\rgf/sptr/sp__0 ;
  wire \rgf/sptr/sp_dec_0__0_carry__0_n_0 ;
  wire \rgf/sptr/sp_dec_0__0_carry__0_n_1 ;
  wire \rgf/sptr/sp_dec_0__0_carry__0_n_2 ;
  wire \rgf/sptr/sp_dec_0__0_carry__0_n_3 ;
  wire \rgf/sptr/sp_dec_0__0_carry__0_n_4 ;
  wire \rgf/sptr/sp_dec_0__0_carry__0_n_5 ;
  wire \rgf/sptr/sp_dec_0__0_carry__0_n_6 ;
  wire \rgf/sptr/sp_dec_0__0_carry__0_n_7 ;
  wire \rgf/sptr/sp_dec_0__0_carry__1_n_0 ;
  wire \rgf/sptr/sp_dec_0__0_carry__1_n_1 ;
  wire \rgf/sptr/sp_dec_0__0_carry__1_n_2 ;
  wire \rgf/sptr/sp_dec_0__0_carry__1_n_3 ;
  wire \rgf/sptr/sp_dec_0__0_carry__1_n_4 ;
  wire \rgf/sptr/sp_dec_0__0_carry__1_n_5 ;
  wire \rgf/sptr/sp_dec_0__0_carry__1_n_6 ;
  wire \rgf/sptr/sp_dec_0__0_carry__1_n_7 ;
  wire \rgf/sptr/sp_dec_0__0_carry__2_n_1 ;
  wire \rgf/sptr/sp_dec_0__0_carry__2_n_2 ;
  wire \rgf/sptr/sp_dec_0__0_carry__2_n_3 ;
  wire \rgf/sptr/sp_dec_0__0_carry__2_n_4 ;
  wire \rgf/sptr/sp_dec_0__0_carry__2_n_5 ;
  wire \rgf/sptr/sp_dec_0__0_carry__2_n_6 ;
  wire \rgf/sptr/sp_dec_0__0_carry__2_n_7 ;
  wire \rgf/sptr/sp_dec_0__0_carry_n_0 ;
  wire \rgf/sptr/sp_dec_0__0_carry_n_1 ;
  wire \rgf/sptr/sp_dec_0__0_carry_n_2 ;
  wire \rgf/sptr/sp_dec_0__0_carry_n_3 ;
  wire \rgf/sptr/sp_dec_0__0_carry_n_4 ;
  wire \rgf/sptr/sp_dec_0__0_carry_n_5 ;
  wire \rgf/sptr/sp_dec_0__0_carry_n_6 ;
  wire \rgf/sptr/sp_dec_0_carry__0_n_0 ;
  wire \rgf/sptr/sp_dec_0_carry__0_n_1 ;
  wire \rgf/sptr/sp_dec_0_carry__0_n_2 ;
  wire \rgf/sptr/sp_dec_0_carry__0_n_3 ;
  wire \rgf/sptr/sp_dec_0_carry__1_n_0 ;
  wire \rgf/sptr/sp_dec_0_carry__1_n_1 ;
  wire \rgf/sptr/sp_dec_0_carry__1_n_2 ;
  wire \rgf/sptr/sp_dec_0_carry__1_n_3 ;
  wire \rgf/sptr/sp_dec_0_carry__2_n_1 ;
  wire \rgf/sptr/sp_dec_0_carry__2_n_2 ;
  wire \rgf/sptr/sp_dec_0_carry__2_n_3 ;
  wire \rgf/sptr/sp_dec_0_carry_n_0 ;
  wire \rgf/sptr/sp_dec_0_carry_n_1 ;
  wire \rgf/sptr/sp_dec_0_carry_n_2 ;
  wire \rgf/sptr/sp_dec_0_carry_n_3 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/sreg/sr ;
  wire rst_n;
  wire \sp[0]_i_10_n_0 ;
  wire \sp[0]_i_11_n_0 ;
  wire \sp[0]_i_2_n_0 ;
  wire \sp[0]_i_3_n_0 ;
  wire \sp[0]_i_4_n_0 ;
  wire \sp[0]_i_5_n_0 ;
  wire \sp[0]_i_6_n_0 ;
  wire \sp[0]_i_7_n_0 ;
  wire \sp[0]_i_8_n_0 ;
  wire \sp[0]_i_9_n_0 ;
  wire \sp[10]_i_2_n_0 ;
  wire \sp[11]_i_2_n_0 ;
  wire \sp[12]_i_2_n_0 ;
  wire \sp[13]_i_2_n_0 ;
  wire \sp[14]_i_2_n_0 ;
  wire \sp[15]_i_2_n_0 ;
  wire \sp[15]_i_3_n_0 ;
  wire \sp[1]_i_2_n_0 ;
  wire \sp[1]_i_3_n_0 ;
  wire \sp[1]_i_4_n_0 ;
  wire \sp[1]_i_5_n_0 ;
  wire \sp[2]_i_2_n_0 ;
  wire \sp[3]_i_2_n_0 ;
  wire \sp[4]_i_2_n_0 ;
  wire \sp[5]_i_2_n_0 ;
  wire \sp[6]_i_2_n_0 ;
  wire \sp[7]_i_2_n_0 ;
  wire \sp[8]_i_2_n_0 ;
  wire \sp[9]_i_2_n_0 ;
  wire sp_dec_0__0_carry_i_1_n_0;
  wire sp_dec_0_carry__0_i_1_n_0;
  wire sp_dec_0_carry__0_i_2_n_0;
  wire sp_dec_0_carry__0_i_3_n_0;
  wire sp_dec_0_carry__0_i_4_n_0;
  wire sp_dec_0_carry__1_i_1_n_0;
  wire sp_dec_0_carry__1_i_2_n_0;
  wire sp_dec_0_carry__1_i_3_n_0;
  wire sp_dec_0_carry__1_i_4_n_0;
  wire sp_dec_0_carry__2_i_1_n_0;
  wire sp_dec_0_carry__2_i_2_n_0;
  wire sp_dec_0_carry__2_i_3_n_0;
  wire sp_dec_0_carry__2_i_4_n_0;
  wire sp_dec_0_carry_i_1_n_0;
  wire sp_dec_0_carry_i_2_n_0;
  wire sp_dec_0_carry_i_3_n_0;
  wire \sr[12]_i_1_n_0 ;
  wire \sr[12]_i_2_n_0 ;
  wire \sr[13]_i_10_n_0 ;
  wire \sr[13]_i_11_n_0 ;
  wire \sr[13]_i_12_n_0 ;
  wire \sr[13]_i_1_n_0 ;
  wire \sr[13]_i_2_n_0 ;
  wire \sr[13]_i_3_n_0 ;
  wire \sr[13]_i_4_n_0 ;
  wire \sr[13]_i_5_n_0 ;
  wire \sr[13]_i_6_n_0 ;
  wire \sr[13]_i_7_n_0 ;
  wire \sr[13]_i_8_n_0 ;
  wire \sr[13]_i_9_n_0 ;
  wire \sr[15]_i_1_n_0 ;
  wire \sr[2]_i_1_n_0 ;
  wire \sr[2]_i_2_n_0 ;
  wire \sr[3]_i_1_n_0 ;
  wire \sr[3]_i_2_n_0 ;
  wire \sr[3]_i_3_n_0 ;
  wire \sr[4]_i_10_n_0 ;
  wire \sr[4]_i_11_n_0 ;
  wire \sr[4]_i_12_n_0 ;
  wire \sr[4]_i_13_n_0 ;
  wire \sr[4]_i_14_n_0 ;
  wire \sr[4]_i_15_n_0 ;
  wire \sr[4]_i_16_n_0 ;
  wire \sr[4]_i_17_n_0 ;
  wire \sr[4]_i_18_n_0 ;
  wire \sr[4]_i_19_n_0 ;
  wire \sr[4]_i_1_n_0 ;
  wire \sr[4]_i_2_n_0 ;
  wire \sr[4]_i_3_n_0 ;
  wire \sr[4]_i_4_n_0 ;
  wire \sr[4]_i_5_n_0 ;
  wire \sr[4]_i_6_n_0 ;
  wire \sr[4]_i_7_n_0 ;
  wire \sr[4]_i_8_n_0 ;
  wire \sr[4]_i_9_n_0 ;
  wire \sr[5]_i_1_n_0 ;
  wire \sr[5]_i_2_n_0 ;
  wire \sr[5]_i_3_n_0 ;
  wire \sr[5]_i_4_n_0 ;
  wire \sr[5]_i_5_n_0 ;
  wire \sr[6]_i_10_n_0 ;
  wire \sr[6]_i_11_n_0 ;
  wire \sr[6]_i_12_n_0 ;
  wire \sr[6]_i_13_n_0 ;
  wire \sr[6]_i_14_n_0 ;
  wire \sr[6]_i_15_n_0 ;
  wire \sr[6]_i_16_n_0 ;
  wire \sr[6]_i_1_n_0 ;
  wire \sr[6]_i_2_n_0 ;
  wire \sr[6]_i_3_n_0 ;
  wire \sr[6]_i_4_n_0 ;
  wire \sr[6]_i_5_n_0 ;
  wire \sr[6]_i_6_n_0 ;
  wire \sr[6]_i_7_n_0 ;
  wire \sr[6]_i_8_n_0 ;
  wire \sr[6]_i_9_n_0 ;
  wire \sr[7]_i_1_n_0 ;
  wire \sr[7]_i_2_n_0 ;
  wire \stat[0]_i_10_n_0 ;
  wire \stat[0]_i_11_n_0 ;
  wire \stat[0]_i_12_n_0 ;
  wire \stat[0]_i_13_n_0 ;
  wire \stat[0]_i_14_n_0 ;
  wire \stat[0]_i_15_n_0 ;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_4_n_0 ;
  wire \stat[0]_i_5_n_0 ;
  wire \stat[0]_i_6_n_0 ;
  wire \stat[0]_i_7_n_0 ;
  wire \stat[0]_i_8_n_0 ;
  wire \stat[0]_i_9_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[1]_i_6_n_0 ;
  wire \stat[1]_i_7_n_0 ;
  wire \stat[2]_i_10_n_0 ;
  wire \stat[2]_i_11_n_0 ;
  wire \stat[2]_i_1_n_0 ;
  wire \stat[2]_i_2_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire \stat[2]_i_4_n_0 ;
  wire \stat[2]_i_5_n_0 ;
  wire \stat[2]_i_6_n_0 ;
  wire \stat[2]_i_7_n_0 ;
  wire \stat[2]_i_8_n_0 ;
  wire \stat[2]_i_9_n_0 ;
  wire [8:0]tnsn_dsp_a;
  wire \tnsn_dsp_a[7]_INST_0_i_10_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_11_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_12_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_13_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_14_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_15_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_16_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_17_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_18_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_19_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_1_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_20_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_21_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_22_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_23_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_24_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_25_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_26_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_27_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_28_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_29_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_2_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_30_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_31_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_32_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_33_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_34_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_35_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_36_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_37_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_38_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_39_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_3_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_40_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_4_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_5_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_6_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_7_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_8_n_0 ;
  wire \tnsn_dsp_a[7]_INST_0_i_9_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_1_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_2_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_3_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_4_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_5_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_6_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_7_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_8_n_0 ;
  wire \tnsn_dsp_a[8]_INST_0_i_9_n_0 ;
  wire [8:0]tnsn_dsp_b;
  wire \tnsn_dsp_b[8]_INST_0_i_1_n_0 ;
  wire [17:0]tnsn_dsp_c;
  wire tout__1_carry__0_i_1_n_0;
  wire tout__1_carry__0_i_2_n_0;
  wire tout__1_carry__0_i_3_n_0;
  wire tout__1_carry__0_i_4_n_0;
  wire tout__1_carry__0_i_5_n_0;
  wire tout__1_carry__0_i_6_n_0;
  wire tout__1_carry__0_i_7_n_0;
  wire tout__1_carry__0_i_8_n_0;
  wire tout__1_carry__1_i_1_n_0;
  wire tout__1_carry__1_i_2_n_0;
  wire tout__1_carry__1_i_3_n_0;
  wire tout__1_carry_i_10_n_0;
  wire tout__1_carry_i_1_n_0;
  wire tout__1_carry_i_2_n_0;
  wire tout__1_carry_i_3_n_0;
  wire tout__1_carry_i_4_n_0;
  wire tout__1_carry_i_5_n_0;
  wire tout__1_carry_i_6_n_0;
  wire tout__1_carry_i_7_n_0;
  wire tout__1_carry_i_8_n_0;
  wire tout__1_carry_i_9_n_0;
  wire [3:0]\NLW_alu/art/add/tout__1_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_rgf/sptr/sp_dec_0_carry_O_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu/art/add/tout__1_carry 
       (.CI(\<const0> ),
        .CO({\alu/art/add/tout__1_carry_n_0 ,\alu/art/add/tout__1_carry_n_1 ,\alu/art/add/tout__1_carry_n_2 ,\alu/art/add/tout__1_carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI({tout__1_carry_i_1_n_0,tout__1_carry_i_2_n_0,tout__1_carry_i_3_n_0,\<const0> }),
        .O({\alu/art/add/tout__1_carry_n_4 ,\alu/art/add/tout__1_carry_n_5 ,\alu/art/add/tout__1_carry_n_6 ,\alu/art/add/tout__1_carry_n_7 }),
        .S({tout__1_carry_i_4_n_0,tout__1_carry_i_5_n_0,tout__1_carry_i_6_n_0,tout__1_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu/art/add/tout__1_carry__0 
       (.CI(\alu/art/add/tout__1_carry_n_0 ),
        .CO({\alu/art/add/tout__1_carry__0_n_0 ,\alu/art/add/tout__1_carry__0_n_1 ,\alu/art/add/tout__1_carry__0_n_2 ,\alu/art/add/tout__1_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({tout__1_carry__0_i_1_n_0,tout__1_carry__0_i_2_n_0,tout__1_carry__0_i_3_n_0,tout__1_carry__0_i_4_n_0}),
        .O({\alu/art/p_0_in ,\alu/art/add/tout__1_carry__0_n_5 ,\alu/art/add/tout__1_carry__0_n_6 ,\alu/art/add/tout__1_carry__0_n_7 }),
        .S({tout__1_carry__0_i_5_n_0,tout__1_carry__0_i_6_n_0,tout__1_carry__0_i_7_n_0,tout__1_carry__0_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu/art/add/tout__1_carry__1 
       (.CI(\alu/art/add/tout__1_carry__0_n_0 ),
        .CO(\alu/art/add/tout__1_carry__1_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,tout__1_carry__1_i_1_n_0}),
        .O({\alu/art/add/tout ,\NLW_alu/art/add/tout__1_carry__1_O_UNCONNECTED [0]}),
        .S({\<const0> ,\<const0> ,tout__1_carry__1_i_2_n_0,tout__1_carry__1_i_3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu/art/cbus1_carry 
       (.CI(\<const0> ),
        .CO({\alu/art/cbus1_carry_n_0 ,\alu/art/cbus1_carry_n_1 ,\alu/art/cbus1_carry_n_2 ,\alu/art/cbus1_carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI({abus_0[3],bbus_0[2],abus_0[1],bbus_0[0]}),
        .O(\alu/data0 [3:0]),
        .S({cbus1_carry_i_2_n_0,cbus1_carry_i_3_n_0,cbus1_carry_i_4_n_0,cbus1_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu/art/cbus1_carry__0 
       (.CI(\alu/art/cbus1_carry_n_0 ),
        .CO({\alu/art/cbus1_carry__0_n_0 ,\alu/art/cbus1_carry__0_n_1 ,\alu/art/cbus1_carry__0_n_2 ,\alu/art/cbus1_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({abus_0[7],bbus_0[6:4]}),
        .O(\alu/data0 [7:4]),
        .S({cbus1_carry__0_i_4_n_0,cbus1_carry__0_i_5_n_0,cbus1_carry__0_i_6_n_0,cbus1_carry__0_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu/art/cbus1_carry__1 
       (.CI(\alu/art/cbus1_carry__0_n_0 ),
        .CO({\alu/art/cbus1_carry__1_n_0 ,\alu/art/cbus1_carry__1_n_1 ,\alu/art/cbus1_carry__1_n_2 ,\alu/art/cbus1_carry__1_n_3 }),
        .CYINIT(\<const0> ),
        .DI(abus_0[11:8]),
        .O(\alu/data0 [11:8]),
        .S({cbus1_carry__1_i_3_n_0,cbus1_carry__1_i_4_n_0,cbus1_carry__1_i_5_n_0,cbus1_carry__1_i_6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu/art/cbus1_carry__2 
       (.CI(\alu/art/cbus1_carry__1_n_0 ),
        .CO({\alu/art/cbus1_carry__2_n_1 ,\alu/art/cbus1_carry__2_n_2 ,\alu/art/cbus1_carry__2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,abus_0[14:12]}),
        .O(\alu/data0 [15:12]),
        .S({cbus1_carry__2_i_1_n_0,cbus1_carry__2_i_2_n_0,cbus1_carry__2_i_3_n_0,cbus1_carry__2_i_4_n_0}));
  LUT3 #(
    .INIT(8'h0E)) 
    \badr[0]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(\badr[0]_INST_0_i_1_n_0 ),
        .O(badr[0]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \badr[0]_INST_0_i_1 
       (.I0(\badr[0]_INST_0_i_2_n_0 ),
        .I1(\badr[0]_INST_0_i_3_n_0 ),
        .I2(\badr[0]_INST_0_i_4_n_0 ),
        .I3(\badr[0]_INST_0_i_5_n_0 ),
        .I4(\badr[0]_INST_0_i_6_n_0 ),
        .I5(\badr[0]_INST_0_i_7_n_0 ),
        .O(\badr[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[0]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(\rgf/sp_dec_0 [0]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\rgf/bank/gr03 [0]),
        .O(\badr[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFD00FDFFFF00FF)) 
    \badr[0]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/pcnt/pc [0]),
        .I4(\badr[15]_INST_0_i_13_n_0 ),
        .I5(\rgf/bank/gr05 [0]),
        .O(\badr[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \badr[0]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank/gr06 [0]),
        .I2(\rgf/bank/gr02 [0]),
        .I3(\badr[15]_INST_0_i_15_n_0 ),
        .I4(\rgf/sptr/sp [0]),
        .I5(\badr[15]_INST_0_i_16_n_0 ),
        .O(\badr[0]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[0]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\rgf/bank/gr00 [0]),
        .I2(\badr[15]_INST_0_i_11_n_0 ),
        .I3(\rgf/bank/gr01 [0]),
        .O(\badr[0]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[0]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\rgf/sreg/sr [0]),
        .I2(\badr[15]_INST_0_i_12_n_0 ),
        .I3(\rgf/bank/gr04 [0]),
        .O(\badr[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[0]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/bank/gr07 [0]),
        .I4(\badr[15]_INST_0_i_17_n_0 ),
        .I5(\rgf/ivec/iv [0]),
        .O(\badr[0]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[10]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(abus_0[10]),
        .O(badr[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[10]_INST_0_i_1 
       (.I0(\badr[10]_INST_0_i_2_n_0 ),
        .I1(\badr[10]_INST_0_i_3_n_0 ),
        .I2(\badr[10]_INST_0_i_4_n_0 ),
        .I3(\badr[10]_INST_0_i_5_n_0 ),
        .I4(\badr[10]_INST_0_i_6_n_0 ),
        .I5(\badr[10]_INST_0_i_7_n_0 ),
        .O(abus_0[10]));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[10]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/bank/gr07 [10]),
        .I4(\badr[15]_INST_0_i_11_n_0 ),
        .I5(\rgf/bank/gr01 [10]),
        .O(\badr[10]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[10]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_12_n_0 ),
        .I1(\rgf/bank/gr04 [10]),
        .I2(\badr[15]_INST_0_i_18_n_0 ),
        .I3(\rgf/sp_dec_0 [10]),
        .O(\badr[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \badr[10]_INST_0_i_4 
       (.I0(\rgf/sptr/sp [10]),
        .I1(\badr[15]_INST_0_i_16_n_0 ),
        .I2(\rgf/bank/gr02 [10]),
        .I3(\badr[15]_INST_0_i_15_n_0 ),
        .I4(\rgf/bank/gr06 [10]),
        .I5(\badr[15]_INST_0_i_14_n_0 ),
        .O(\badr[10]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[10]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\rgf/bank/gr00 [10]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\rgf/ivec/iv [10]),
        .O(\badr[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0200FFFF02000200)) 
    \badr[10]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/bank/gr05 [10]),
        .I4(\badr[15]_INST_0_i_19_n_0 ),
        .I5(\rgf/bank/gr03 [10]),
        .O(\badr[10]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[10]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\rgf/sreg/sr [10]),
        .I2(\badr[15]_INST_0_i_13_n_0 ),
        .I3(\rgf/pcnt/pc [10]),
        .O(\badr[10]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[11]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(abus_0[11]),
        .O(badr[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[11]_INST_0_i_1 
       (.I0(\badr[11]_INST_0_i_2_n_0 ),
        .I1(\badr[11]_INST_0_i_3_n_0 ),
        .I2(\badr[11]_INST_0_i_4_n_0 ),
        .I3(\badr[11]_INST_0_i_5_n_0 ),
        .I4(\badr[11]_INST_0_i_6_n_0 ),
        .I5(\badr[11]_INST_0_i_7_n_0 ),
        .O(abus_0[11]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[11]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\rgf/pcnt/pc [11]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\rgf/bank/gr03 [11]),
        .O(\badr[11]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[11]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\rgf/bank/gr00 [11]),
        .I2(\badr[15]_INST_0_i_11_n_0 ),
        .I3(\rgf/bank/gr01 [11]),
        .O(\badr[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \badr[11]_INST_0_i_4 
       (.I0(\rgf/sptr/sp [11]),
        .I1(\badr[15]_INST_0_i_16_n_0 ),
        .I2(\rgf/bank/gr02 [11]),
        .I3(\badr[15]_INST_0_i_15_n_0 ),
        .I4(\rgf/bank/gr06 [11]),
        .I5(\badr[15]_INST_0_i_14_n_0 ),
        .O(\badr[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h02FF020200FF0000)) 
    \badr[11]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_20_n_0 ),
        .I4(\rgf/sreg/sr [11]),
        .I5(\rgf/bank/gr05 [11]),
        .O(\badr[11]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[11]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_12_n_0 ),
        .I1(\rgf/bank/gr04 [11]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\rgf/ivec/iv [11]),
        .O(\badr[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[11]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/bank/gr07 [11]),
        .I4(\badr[15]_INST_0_i_18_n_0 ),
        .I5(\rgf/sp_dec_0 [11]),
        .O(\badr[11]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[12]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(abus_0[12]),
        .O(badr[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[12]_INST_0_i_1 
       (.I0(\badr[12]_INST_0_i_2_n_0 ),
        .I1(\badr[12]_INST_0_i_3_n_0 ),
        .I2(\badr[12]_INST_0_i_4_n_0 ),
        .I3(\badr[12]_INST_0_i_5_n_0 ),
        .I4(\badr[12]_INST_0_i_6_n_0 ),
        .I5(\badr[12]_INST_0_i_7_n_0 ),
        .O(abus_0[12]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[12]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\rgf/sreg/sr [12]),
        .I2(\badr[15]_INST_0_i_21_n_0 ),
        .I3(\rgf/bank/gr00 [12]),
        .O(\badr[12]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[12]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_12_n_0 ),
        .I1(\rgf/bank/gr04 [12]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\rgf/bank/gr03 [12]),
        .O(\badr[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \badr[12]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_15_n_0 ),
        .I1(\rgf/bank/gr02 [12]),
        .I2(\badr[15]_INST_0_i_16_n_0 ),
        .I3(\rgf/sptr/sp [12]),
        .I4(\rgf/bank/gr06 [12]),
        .I5(\badr[15]_INST_0_i_14_n_0 ),
        .O(\badr[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[12]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/bank/gr07 [12]),
        .I4(\badr[15]_INST_0_i_11_n_0 ),
        .I5(\rgf/bank/gr01 [12]),
        .O(\badr[12]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[12]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\rgf/pcnt/pc [12]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\rgf/ivec/iv [12]),
        .O(\badr[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h02FF020200FF0000)) 
    \badr[12]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_18_n_0 ),
        .I4(\rgf/sp_dec_0 [12]),
        .I5(\rgf/bank/gr05 [12]),
        .O(\badr[12]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[13]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(abus_0[13]),
        .O(badr[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[13]_INST_0_i_1 
       (.I0(\badr[13]_INST_0_i_2_n_0 ),
        .I1(\badr[13]_INST_0_i_3_n_0 ),
        .I2(\badr[13]_INST_0_i_4_n_0 ),
        .I3(\badr[13]_INST_0_i_5_n_0 ),
        .I4(\badr[13]_INST_0_i_6_n_0 ),
        .I5(\badr[13]_INST_0_i_7_n_0 ),
        .O(abus_0[13]));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[13]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/bank/gr07 [13]),
        .I4(\badr[15]_INST_0_i_11_n_0 ),
        .I5(\rgf/bank/gr01 [13]),
        .O(\badr[13]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[13]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(\rgf/sp_dec_0 [13]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\rgf/bank/gr03 [13]),
        .O(\badr[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \badr[13]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_15_n_0 ),
        .I1(\rgf/bank/gr02 [13]),
        .I2(\badr[15]_INST_0_i_16_n_0 ),
        .I3(\rgf/sptr/sp [13]),
        .I4(\rgf/bank/gr06 [13]),
        .I5(\badr[15]_INST_0_i_14_n_0 ),
        .O(\badr[13]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[13]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\rgf/bank/gr00 [13]),
        .I2(\badr[15]_INST_0_i_13_n_0 ),
        .I3(\rgf/pcnt/pc [13]),
        .O(\badr[13]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[13]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\rgf/sreg/sr [13]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\rgf/ivec/iv [13]),
        .O(\badr[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h02FF020200FF0000)) 
    \badr[13]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_12_n_0 ),
        .I4(\rgf/bank/gr04 [13]),
        .I5(\rgf/bank/gr05 [13]),
        .O(\badr[13]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[14]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(abus_0[14]),
        .O(badr[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[14]_INST_0_i_1 
       (.I0(\badr[14]_INST_0_i_2_n_0 ),
        .I1(\badr[14]_INST_0_i_3_n_0 ),
        .I2(\badr[14]_INST_0_i_4_n_0 ),
        .I3(\badr[14]_INST_0_i_5_n_0 ),
        .I4(\badr[14]_INST_0_i_6_n_0 ),
        .I5(\badr[14]_INST_0_i_7_n_0 ),
        .O(abus_0[14]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[14]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(\rgf/sp_dec_0 [14]),
        .I2(\badr[15]_INST_0_i_11_n_0 ),
        .I3(\rgf/bank/gr01 [14]),
        .O(\badr[14]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[14]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\rgf/sreg/sr [14]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\rgf/bank/gr03 [14]),
        .O(\badr[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \badr[14]_INST_0_i_4 
       (.I0(\rgf/sptr/sp [14]),
        .I1(\badr[15]_INST_0_i_16_n_0 ),
        .I2(\rgf/bank/gr02 [14]),
        .I3(\badr[15]_INST_0_i_15_n_0 ),
        .I4(\rgf/bank/gr06 [14]),
        .I5(\badr[15]_INST_0_i_14_n_0 ),
        .O(\badr[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[14]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/bank/gr07 [14]),
        .I4(\badr[15]_INST_0_i_12_n_0 ),
        .I5(\rgf/bank/gr04 [14]),
        .O(\badr[14]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[14]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\rgf/pcnt/pc [14]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\rgf/ivec/iv [14]),
        .O(\badr[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h02FF020200FF0000)) 
    \badr[14]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_21_n_0 ),
        .I4(\rgf/bank/gr00 [14]),
        .I5(\rgf/bank/gr05 [14]),
        .O(\badr[14]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \badr[15]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(\badr[15]_INST_0_i_1_n_0 ),
        .O(badr[15]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \badr[15]_INST_0_i_1 
       (.I0(\badr[15]_INST_0_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_3_n_0 ),
        .I2(\badr[15]_INST_0_i_4_n_0 ),
        .I3(\badr[15]_INST_0_i_5_n_0 ),
        .I4(\badr[15]_INST_0_i_6_n_0 ),
        .I5(\badr[15]_INST_0_i_7_n_0 ),
        .O(\badr[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEFEEEE)) 
    \badr[15]_INST_0_i_10 
       (.I0(\badr[15]_INST_0_i_31_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(\badr[15]_INST_0_i_32_n_0 ),
        .I3(\badr[15]_INST_0_i_33_n_0 ),
        .I4(\grn[15]_i_23_n_0 ),
        .I5(\badr[15]_INST_0_i_34_n_0 ),
        .O(\badr[15]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \badr[15]_INST_0_i_11 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_35_n_0 ),
        .O(\badr[15]_INST_0_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \badr[15]_INST_0_i_12 
       (.I0(\badr[15]_INST_0_i_10_n_0 ),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \badr[15]_INST_0_i_13 
       (.I0(\badr[15]_INST_0_i_36_n_0 ),
        .I1(\badr[15]_INST_0_i_37_n_0 ),
        .I2(\badr[15]_INST_0_i_8_n_0 ),
        .I3(\badr[15]_INST_0_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \badr[15]_INST_0_i_14 
       (.I0(\badr[15]_INST_0_i_10_n_0 ),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_38_n_0 ),
        .O(\badr[15]_INST_0_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \badr[15]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_35_n_0 ),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_38_n_0 ),
        .O(\badr[15]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \badr[15]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_36_n_0 ),
        .I1(\badr[15]_INST_0_i_37_n_0 ),
        .I2(\badr[15]_INST_0_i_8_n_0 ),
        .I3(\badr[15]_INST_0_i_38_n_0 ),
        .O(\badr[15]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \badr[15]_INST_0_i_17 
       (.I0(\badr[15]_INST_0_i_36_n_0 ),
        .I1(\badr[15]_INST_0_i_37_n_0 ),
        .I2(\badr[15]_INST_0_i_8_n_0 ),
        .I3(\badr[15]_INST_0_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \badr[15]_INST_0_i_18 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_37_n_0 ),
        .I3(\badr[15]_INST_0_i_36_n_0 ),
        .O(\badr[15]_INST_0_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \badr[15]_INST_0_i_19 
       (.I0(\badr[15]_INST_0_i_35_n_0 ),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[15]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/bank/gr07 [15]),
        .I4(\badr[15]_INST_0_i_11_n_0 ),
        .I5(\rgf/bank/gr01 [15]),
        .O(\badr[15]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \badr[15]_INST_0_i_20 
       (.I0(\badr[15]_INST_0_i_36_n_0 ),
        .I1(\badr[15]_INST_0_i_37_n_0 ),
        .I2(\badr[15]_INST_0_i_8_n_0 ),
        .I3(\badr[15]_INST_0_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \badr[15]_INST_0_i_21 
       (.I0(\badr[15]_INST_0_i_35_n_0 ),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \badr[15]_INST_0_i_22 
       (.I0(\ctl/stat [1]),
        .I1(\ctl/stat [2]),
        .I2(\fch/ir [15]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ),
        .I4(\badr[15]_INST_0_i_39_n_0 ),
        .O(\badr[15]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8088AAAA)) 
    \badr[15]_INST_0_i_23 
       (.I0(\fch/ir [15]),
        .I1(\badr[15]_INST_0_i_40_n_0 ),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [8]),
        .I5(\ctl/stat [0]),
        .O(\badr[15]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \badr[15]_INST_0_i_24 
       (.I0(\bdatw[15]_INST_0_i_46_n_0 ),
        .I1(\badr[15]_INST_0_i_41_n_0 ),
        .I2(\fch/ir [11]),
        .I3(\badr[15]_INST_0_i_42_n_0 ),
        .I4(\fch/ir [10]),
        .I5(\badr[15]_INST_0_i_43_n_0 ),
        .O(\badr[15]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF700)) 
    \badr[15]_INST_0_i_25 
       (.I0(\badr[15]_INST_0_i_44_n_0 ),
        .I1(ctl_fetch_inferred_i_15_n_0),
        .I2(\fch/ir [13]),
        .I3(\badr[15]_INST_0_i_45_n_0 ),
        .I4(ctl_fetch_inferred_i_16_n_0),
        .I5(\fch/ir [15]),
        .O(\badr[15]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBA000000FFFFFFFF)) 
    \badr[15]_INST_0_i_26 
       (.I0(\grn[15]_i_35_n_0 ),
        .I1(\badr[15]_INST_0_i_46_n_0 ),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [0]),
        .I4(\badr[15]_INST_0_i_47_n_0 ),
        .I5(\grn[15]_i_23_n_0 ),
        .O(\badr[15]_INST_0_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_27 
       (.I0(\ctl/stat [0]),
        .I1(\fch/ir [15]),
        .O(\badr[15]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFB8BB)) 
    \badr[15]_INST_0_i_28 
       (.I0(\badr[15]_INST_0_i_48_n_0 ),
        .I1(\fch/ir [11]),
        .I2(\grn[15]_i_33_n_0 ),
        .I3(\fch/ir [4]),
        .I4(\bdatw[15]_INST_0_i_46_n_0 ),
        .I5(\badr[15]_INST_0_i_49_n_0 ),
        .O(\badr[15]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \badr[15]_INST_0_i_29 
       (.I0(\badr[15]_INST_0_i_50_n_0 ),
        .I1(\badr[15]_INST_0_i_51_n_0 ),
        .I2(\fch_irq_lev[1]_i_6_n_0 ),
        .I3(\grn[15]_i_45_n_0 ),
        .I4(\fch/ir [1]),
        .I5(ctl_fetch_inferred_i_9_n_0),
        .O(\badr[15]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hB0BB)) 
    \badr[15]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_12_n_0 ),
        .I1(\rgf/bank/gr04 [15]),
        .I2(\badr[15]_INST_0_i_13_n_0 ),
        .I3(\rgf/pcnt/pc [15]),
        .O(\badr[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7F7F777F7F7F)) 
    \badr[15]_INST_0_i_30 
       (.I0(\badr[15]_INST_0_i_47_n_0 ),
        .I1(\fch/ir [1]),
        .I2(\grn[15]_i_35_n_0 ),
        .I3(\fch/ir [3]),
        .I4(ctl_fetch_inferred_i_8_n_0),
        .I5(\bcmd[1]_INST_0_i_8_n_0 ),
        .O(\badr[15]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABABBBB)) 
    \badr[15]_INST_0_i_31 
       (.I0(\bdatw[15]_INST_0_i_51_n_0 ),
        .I1(\fch/ir [15]),
        .I2(\badr[15]_INST_0_i_52_n_0 ),
        .I3(\badr[15]_INST_0_i_53_n_0 ),
        .I4(\badr[15]_INST_0_i_54_n_0 ),
        .I5(\badr[15]_INST_0_i_55_n_0 ),
        .O(\badr[15]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h1131313111311131)) 
    \badr[15]_INST_0_i_32 
       (.I0(\fch/ir [15]),
        .I1(\ctl/stat [0]),
        .I2(\fch/ir [10]),
        .I3(\badr[15]_INST_0_i_40_n_0 ),
        .I4(\fch/ir [14]),
        .I5(\fch/ir [11]),
        .O(\badr[15]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF470000)) 
    \badr[15]_INST_0_i_33 
       (.I0(\badr[15]_INST_0_i_56_n_0 ),
        .I1(\fch/ir [11]),
        .I2(\badr[15]_INST_0_i_57_n_0 ),
        .I3(\bdatw[15]_INST_0_i_46_n_0 ),
        .I4(\bdatw[15]_INST_0_i_50_n_0 ),
        .I5(\fch/ir [15]),
        .O(\badr[15]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00800080A0A00080)) 
    \badr[15]_INST_0_i_34 
       (.I0(\grn[15]_i_17_n_0 ),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [2]),
        .I3(\badr[15]_INST_0_i_46_n_0 ),
        .I4(\badr[15]_INST_0_i_58_n_0 ),
        .I5(\fch/ir [6]),
        .O(\badr[15]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0455)) 
    \badr[15]_INST_0_i_35 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_32_n_0 ),
        .I2(\badr[15]_INST_0_i_33_n_0 ),
        .I3(\grn[15]_i_23_n_0 ),
        .I4(\badr[15]_INST_0_i_34_n_0 ),
        .I5(\badr[15]_INST_0_i_31_n_0 ),
        .O(\badr[15]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h45554444FFFFFFFF)) 
    \badr[15]_INST_0_i_36 
       (.I0(\badr[15]_INST_0_i_59_n_0 ),
        .I1(\ctl/stat [2]),
        .I2(\badr[15]_INST_0_i_60_n_0 ),
        .I3(\badr[15]_INST_0_i_61_n_0 ),
        .I4(\badr[15]_INST_0_i_62_n_0 ),
        .I5(\badr[15]_INST_0_i_63_n_0 ),
        .O(\badr[15]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABFBB)) 
    \badr[15]_INST_0_i_37 
       (.I0(\badr[15]_INST_0_i_34_n_0 ),
        .I1(\grn[15]_i_23_n_0 ),
        .I2(\badr[15]_INST_0_i_33_n_0 ),
        .I3(\badr[15]_INST_0_i_32_n_0 ),
        .I4(\ctl/stat [2]),
        .I5(\ctl/stat [1]),
        .O(\badr[15]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00202222)) 
    \badr[15]_INST_0_i_38 
       (.I0(\badr[15]_INST_0_i_30_n_0 ),
        .I1(\badr[15]_INST_0_i_29_n_0 ),
        .I2(\badr[15]_INST_0_i_64_n_0 ),
        .I3(\badr[15]_INST_0_i_49_n_0 ),
        .I4(\badr[15]_INST_0_i_27_n_0 ),
        .I5(\bcmd[2]_INST_0_i_2_n_0 ),
        .O(\badr[15]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \badr[15]_INST_0_i_39 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [11]),
        .I5(\grn[15]_i_45_n_0 ),
        .O(\badr[15]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \badr[15]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank/gr06 [15]),
        .I2(\rgf/bank/gr02 [15]),
        .I3(\badr[15]_INST_0_i_15_n_0 ),
        .I4(\badr[15]_INST_0_i_16_n_0 ),
        .I5(\rgf/sptr/sp [15]),
        .O(\badr[15]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_40 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [12]),
        .O(\badr[15]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFDDFFFFFFFF)) 
    \badr[15]_INST_0_i_41 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [3]),
        .O(\badr[15]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0E0B07031F4F8FCF)) 
    \badr[15]_INST_0_i_42 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [6]),
        .I5(\fch/ir [0]),
        .O(\badr[15]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h7777777077777777)) 
    \badr[15]_INST_0_i_43 
       (.I0(\grn[15]_i_43_n_0 ),
        .I1(\fch/ir [3]),
        .I2(\badr[15]_INST_0_i_65_n_0 ),
        .I3(\badr[15]_INST_0_i_66_n_0 ),
        .I4(\badr[15]_INST_0_i_67_n_0 ),
        .I5(\badr[15]_INST_0_i_68_n_0 ),
        .O(\badr[15]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \badr[15]_INST_0_i_44 
       (.I0(\fch_irq_lev[1]_i_9_n_0 ),
        .I1(\fch/ir [8]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ),
        .I3(\fch/ir [12]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ),
        .I5(fch_irq_req),
        .O(\badr[15]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DF75D57F)) 
    \badr[15]_INST_0_i_45 
       (.I0(\fch/ir [13]),
        .I1(\rgf/sreg/sr [7]),
        .I2(\fch/ir [12]),
        .I3(\fch/ir [11]),
        .I4(\rgf/sreg/sr [6]),
        .I5(\fch/ir [14]),
        .O(\badr[15]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \badr[15]_INST_0_i_46 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [4]),
        .I3(\fch/ir [5]),
        .I4(\grn[15]_i_52_n_0 ),
        .I5(\fch/ir [7]),
        .O(\badr[15]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \badr[15]_INST_0_i_47 
       (.I0(\fch/ir [15]),
        .I1(\ctl/stat [0]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [13]),
        .I4(\fch/ir [11]),
        .I5(\fch/ir [12]),
        .O(\badr[15]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAFFFFA8AA0000)) 
    \badr[15]_INST_0_i_48 
       (.I0(\grn[15]_i_54_n_0 ),
        .I1(\grn[15]_i_52_n_0 ),
        .I2(\badr[15]_INST_0_i_69_n_0 ),
        .I3(\badr[15]_INST_0_i_70_n_0 ),
        .I4(\fch/ir [10]),
        .I5(\badr[15]_INST_0_i_71_n_0 ),
        .O(\badr[15]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \badr[15]_INST_0_i_49 
       (.I0(\grn[15]_i_45_n_0 ),
        .I1(\badr[15]_INST_0_i_72_n_0 ),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [4]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_17_n_0 ),
        .I5(\badr[15]_INST_0_i_73_n_0 ),
        .O(\badr[15]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0200FFFF02000200)) 
    \badr[15]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/bank/gr05 [15]),
        .I4(\badr[15]_INST_0_i_17_n_0 ),
        .I5(\rgf/ivec/iv [15]),
        .O(\badr[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000400040404040)) 
    \badr[15]_INST_0_i_50 
       (.I0(\ctl/stat [0]),
        .I1(\fch/ir [15]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [14]),
        .I5(\badr[15]_INST_0_i_40_n_0 ),
        .O(\badr[15]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \badr[15]_INST_0_i_51 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_5_n_0 ),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [10]),
        .I4(\ctl/stat [0]),
        .I5(\fch/ir [15]),
        .O(\badr[15]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h4474FFFFFFFFFFFF)) 
    \badr[15]_INST_0_i_52 
       (.I0(\badr[15]_INST_0_i_74_n_0 ),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [10]),
        .I3(\badr[15]_INST_0_i_75_n_0 ),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [9]),
        .O(\badr[15]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h2311FFFF33117755)) 
    \badr[15]_INST_0_i_53 
       (.I0(\fch/ir [10]),
        .I1(\ctl/stat [0]),
        .I2(\fch/ir [6]),
        .I3(\grn[15]_i_43_n_0 ),
        .I4(\fch/ir [11]),
        .I5(\fch/ir [8]),
        .O(\badr[15]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033333733)) 
    \badr[15]_INST_0_i_54 
       (.I0(\ctl/stat [0]),
        .I1(\bdatw[15]_INST_0_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_71_n_0 ),
        .I3(\fch/ir [10]),
        .I4(\fch/ir [9]),
        .I5(\bdatw[15]_INST_0_i_46_n_0 ),
        .O(\badr[15]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h4044104055555555)) 
    \badr[15]_INST_0_i_55 
       (.I0(\bcmd[0]_INST_0_i_6_n_0 ),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [13]),
        .I5(\fch_irq_lev[1]_i_4_n_0 ),
        .O(\badr[15]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hABAAFFFFABAA0000)) 
    \badr[15]_INST_0_i_56 
       (.I0(\badr[15]_INST_0_i_76_n_0 ),
        .I1(\badr[15]_INST_0_i_77_n_0 ),
        .I2(\badr[15]_INST_0_i_78_n_0 ),
        .I3(\badr[15]_INST_0_i_79_n_0 ),
        .I4(\fch/ir [10]),
        .I5(\badr[15]_INST_0_i_80_n_0 ),
        .O(\badr[15]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000808)) 
    \badr[15]_INST_0_i_57 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [7]),
        .O(\badr[15]_INST_0_i_57_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \badr[15]_INST_0_i_58 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [9]),
        .O(\badr[15]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h4440444044404444)) 
    \badr[15]_INST_0_i_59 
       (.I0(\fch/ir [11]),
        .I1(\bcmd[0]_INST_0_i_6_n_0 ),
        .I2(\badr[15]_INST_0_i_81_n_0 ),
        .I3(\badr[15]_INST_0_i_82_n_0 ),
        .I4(\badr[15]_INST_0_i_83_n_0 ),
        .I5(\badr[15]_INST_0_i_84_n_0 ),
        .O(\badr[15]_INST_0_i_59_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[15]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(\rgf/sp_dec_0 [15]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\rgf/bank/gr03 [15]),
        .O(\badr[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAFBAAAAAAAAAAAA)) 
    \badr[15]_INST_0_i_60 
       (.I0(\badr[15]_INST_0_i_85_n_0 ),
        .I1(\badr[15]_INST_0_i_86_n_0 ),
        .I2(\badr[15]_INST_0_i_87_n_0 ),
        .I3(\fch/ir [15]),
        .I4(\fch/ir [12]),
        .I5(\fch/ir [14]),
        .O(\badr[15]_INST_0_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_61 
       (.I0(\fch/ir [11]),
        .I1(\ctl/stat [1]),
        .O(\badr[15]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFF8F)) 
    \badr[15]_INST_0_i_62 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [15]),
        .I3(\ctl/stat [1]),
        .I4(\ctl/stat [0]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFBFBFBB)) 
    \badr[15]_INST_0_i_63 
       (.I0(\badr[15]_INST_0_i_55_n_0 ),
        .I1(\badr[15]_INST_0_i_54_n_0 ),
        .I2(\badr[15]_INST_0_i_53_n_0 ),
        .I3(\badr[15]_INST_0_i_88_n_0 ),
        .I4(\badr[15]_INST_0_i_89_n_0 ),
        .I5(\fch/ir [15]),
        .O(\badr[15]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \badr[15]_INST_0_i_64 
       (.I0(\bdatw[15]_INST_0_i_46_n_0 ),
        .I1(\badr[15]_INST_0_i_90_n_0 ),
        .I2(\fch/ir [11]),
        .I3(\badr[15]_INST_0_i_71_n_0 ),
        .I4(\fch/ir [10]),
        .I5(\badr[15]_INST_0_i_91_n_0 ),
        .O(\badr[15]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'h0000110F)) 
    \badr[15]_INST_0_i_65 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [0]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [3]),
        .O(\badr[15]_INST_0_i_65_n_0 ));
  LUT4 #(
    .INIT(16'h777F)) 
    \badr[15]_INST_0_i_66 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [0]),
        .I3(\fch/ir [7]),
        .O(\badr[15]_INST_0_i_66_n_0 ));
  LUT4 #(
    .INIT(16'hE0EE)) 
    \badr[15]_INST_0_i_67 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [6]),
        .O(\badr[15]_INST_0_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hFFD5F5D5)) 
    \badr[15]_INST_0_i_68 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [4]),
        .O(\badr[15]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h22AA22AAA228AAAA)) 
    \badr[15]_INST_0_i_69 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [4]),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [1]),
        .I5(\fch/ir [5]),
        .O(\badr[15]_INST_0_i_69_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[15]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\rgf/sreg/sr [15]),
        .I2(\badr[15]_INST_0_i_21_n_0 ),
        .I3(\rgf/bank/gr00 [15]),
        .O(\badr[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAEEAAAAAAE)) 
    \badr[15]_INST_0_i_70 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [1]),
        .I2(\fch/ir [4]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [6]),
        .I5(\fch/ir [3]),
        .O(\badr[15]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h0108040CEF7FBF3F)) 
    \badr[15]_INST_0_i_71 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [1]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [4]),
        .O(\badr[15]_INST_0_i_71_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \badr[15]_INST_0_i_72 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [6]),
        .O(\badr[15]_INST_0_i_72_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \badr[15]_INST_0_i_73 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [1]),
        .I2(\fch/ir [3]),
        .O(\badr[15]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000404000)) 
    \badr[15]_INST_0_i_74 
       (.I0(\ctl/stat [0]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [4]),
        .I4(\fch/ir [3]),
        .I5(\fch/ir [5]),
        .O(\badr[15]_INST_0_i_74_n_0 ));
  LUT5 #(
    .INIT(32'h10010101)) 
    \badr[15]_INST_0_i_75 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [5]),
        .I2(\ctl/stat [0]),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [7]),
        .O(\badr[15]_INST_0_i_75_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \badr[15]_INST_0_i_76 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [5]),
        .O(\badr[15]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h0000570057575757)) 
    \badr[15]_INST_0_i_77 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [4]),
        .I5(\fch/ir [2]),
        .O(\badr[15]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFF7FFF7F7777)) 
    \badr[15]_INST_0_i_78 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [4]),
        .I5(\fch/ir [5]),
        .O(\badr[15]_INST_0_i_78_n_0 ));
  LUT5 #(
    .INIT(32'hDDD0FFFF)) 
    \badr[15]_INST_0_i_79 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [6]),
        .O(\badr[15]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFBBAB)) 
    \badr[15]_INST_0_i_8 
       (.I0(\badr[15]_INST_0_i_22_n_0 ),
        .I1(\badr[15]_INST_0_i_23_n_0 ),
        .I2(\badr[15]_INST_0_i_24_n_0 ),
        .I3(\badr[15]_INST_0_i_25_n_0 ),
        .I4(\badr[15]_INST_0_i_26_n_0 ),
        .I5(\bcmd[2]_INST_0_i_2_n_0 ),
        .O(\badr[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFEF7FBF3108040C0)) 
    \badr[15]_INST_0_i_80 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [5]),
        .O(\badr[15]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h00020A02A002AA02)) 
    \badr[15]_INST_0_i_81 
       (.I0(\badr[15]_INST_0_i_92_n_0 ),
        .I1(\rgf/sreg/sr [6]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [12]),
        .I4(\rgf/sreg/sr [7]),
        .I5(\grn[15]_i_33_n_0 ),
        .O(\badr[15]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h8008A20808082A08)) 
    \badr[15]_INST_0_i_82 
       (.I0(\badr[15]_INST_0_i_93_n_0 ),
        .I1(\fch/ir [14]),
        .I2(\rgf/sreg/sr [5]),
        .I3(\fch/ir [12]),
        .I4(\rgf/sreg/sr [4]),
        .I5(\rgf/sreg/sr [7]),
        .O(\badr[15]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h3037)) 
    \badr[15]_INST_0_i_83 
       (.I0(fch_irq_req),
        .I1(\fch/ir [0]),
        .I2(\ctl/stat [0]),
        .I3(\fch/ir [1]),
        .O(\badr[15]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_84 
       (.I0(\grn[15]_i_45_n_0 ),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [2]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_5_n_0 ),
        .I5(\stat[2]_i_11_n_0 ),
        .O(\badr[15]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h0202020A02020202)) 
    \badr[15]_INST_0_i_85 
       (.I0(\badr[15]_INST_0_i_94_n_0 ),
        .I1(\fch/ir [14]),
        .I2(\ctl/stat [0]),
        .I3(\fch/ir [12]),
        .I4(\fch/ir [13]),
        .I5(\rgf/sreg/sr [5]),
        .O(\badr[15]_INST_0_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2222FFFFF00F)) 
    \badr[15]_INST_0_i_86 
       (.I0(\fch/ir [10]),
        .I1(\grn[15]_i_43_n_0 ),
        .I2(\rgf/sreg/sr [7]),
        .I3(\rgf/sreg/sr [5]),
        .I4(\ctl/stat [0]),
        .I5(\fch/ir [13]),
        .O(\badr[15]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hF100000000000000)) 
    \badr[15]_INST_0_i_87 
       (.I0(\fch/ir [6]),
        .I1(\badr[15]_INST_0_i_95_n_0 ),
        .I2(\badr[15]_INST_0_i_96_n_0 ),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [13]),
        .I5(\fch/ir [9]),
        .O(\badr[15]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA88AA2AA)) 
    \badr[15]_INST_0_i_88 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [4]),
        .I4(\fch/ir [7]),
        .I5(\badr[15]_INST_0_i_97_n_0 ),
        .O(\badr[15]_INST_0_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFFBAAAA)) 
    \badr[15]_INST_0_i_89 
       (.I0(\grn[15]_i_52_n_0 ),
        .I1(\grn[15]_i_42_n_0 ),
        .I2(\ctl/stat [0]),
        .I3(\iv[15]_i_10_n_0 ),
        .I4(\fch/ir [10]),
        .I5(\fch/ir [6]),
        .O(\badr[15]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBAABABBBBBBBB)) 
    \badr[15]_INST_0_i_9 
       (.I0(\badr[15]_INST_0_i_22_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(\badr[15]_INST_0_i_28_n_0 ),
        .I4(\badr[15]_INST_0_i_29_n_0 ),
        .I5(\badr[15]_INST_0_i_30_n_0 ),
        .O(\badr[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFDDFFFFFFFF)) 
    \badr[15]_INST_0_i_90 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [4]),
        .O(\badr[15]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hFBFB0BFBFBFBFBFB)) 
    \badr[15]_INST_0_i_91 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [8]),
        .I4(\badr[15]_INST_0_i_69_n_0 ),
        .I5(\badr[15]_INST_0_i_70_n_0 ),
        .O(\badr[15]_INST_0_i_91_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_92 
       (.I0(\fch/ir [13]),
        .I1(\ctl/stat [0]),
        .O(\badr[15]_INST_0_i_92_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_93 
       (.I0(\ctl/stat [0]),
        .I1(\fch/ir [13]),
        .O(\badr[15]_INST_0_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE4E4FF55)) 
    \badr[15]_INST_0_i_94 
       (.I0(\fch/ir [13]),
        .I1(\rgf/sreg/sr [4]),
        .I2(\rgf/sreg/sr [7]),
        .I3(\rgf/sreg/sr [6]),
        .I4(\fch/ir [12]),
        .I5(\fch/ir [15]),
        .O(\badr[15]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hCCC4CCCCC000CCC0)) 
    \badr[15]_INST_0_i_95 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [4]),
        .I4(\fch/ir [7]),
        .I5(\ctl/stat [0]),
        .O(\badr[15]_INST_0_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h0000F26000000000)) 
    \badr[15]_INST_0_i_96 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [5]),
        .I4(\ctl/stat [0]),
        .I5(\fch/ir [6]),
        .O(\badr[15]_INST_0_i_96_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \badr[15]_INST_0_i_97 
       (.I0(\ctl/stat [0]),
        .I1(\fch/ir [10]),
        .O(\badr[15]_INST_0_i_97_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[1]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(abus_0[1]),
        .O(badr[1]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \badr[1]_INST_0_i_1 
       (.I0(\badr[1]_INST_0_i_2_n_0 ),
        .I1(\badr[1]_INST_0_i_3_n_0 ),
        .I2(\badr[1]_INST_0_i_4_n_0 ),
        .I3(\badr[1]_INST_0_i_5_n_0 ),
        .I4(\badr[1]_INST_0_i_6_n_0 ),
        .O(abus_0[1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[1]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(\rgf/sp_dec_0 [1]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\rgf/bank/gr03 [1]),
        .O(\badr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h02FF020200FF0000)) 
    \badr[1]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_13_n_0 ),
        .I4(\rgf/pcnt/pc [1]),
        .I5(\rgf/bank/gr05 [1]),
        .O(\badr[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[1]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\rgf/bank/gr00 [1]),
        .I2(\badr[15]_INST_0_i_12_n_0 ),
        .I3(\rgf/bank/gr04 [1]),
        .O(\badr[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \badr[1]_INST_0_i_5 
       (.I0(\rgf/sptr/sp [1]),
        .I1(\badr[15]_INST_0_i_16_n_0 ),
        .I2(\rgf/bank/gr02 [1]),
        .I3(\badr[15]_INST_0_i_15_n_0 ),
        .I4(\rgf/bank/gr06 [1]),
        .I5(\badr[15]_INST_0_i_14_n_0 ),
        .O(\badr[1]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \badr[1]_INST_0_i_6 
       (.I0(\rgf/ivec/iv [1]),
        .I1(\badr[15]_INST_0_i_17_n_0 ),
        .I2(\rgf/sreg/sr [1]),
        .I3(\badr[15]_INST_0_i_20_n_0 ),
        .I4(\badr[1]_INST_0_i_7_n_0 ),
        .O(\badr[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0080000C00800000)) 
    \badr[1]_INST_0_i_7 
       (.I0(\rgf/bank/gr07 [1]),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .I3(\badr[15]_INST_0_i_31_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .I5(\rgf/bank/gr01 [1]),
        .O(\badr[1]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \badr[2]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(\badr[2]_INST_0_i_1_n_0 ),
        .O(badr[2]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \badr[2]_INST_0_i_1 
       (.I0(\badr[2]_INST_0_i_2_n_0 ),
        .I1(\badr[2]_INST_0_i_3_n_0 ),
        .I2(\badr[2]_INST_0_i_4_n_0 ),
        .I3(\badr[2]_INST_0_i_5_n_0 ),
        .I4(\badr[2]_INST_0_i_6_n_0 ),
        .O(\badr[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[2]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(\rgf/sp_dec_0 [2]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\rgf/bank/gr03 [2]),
        .O(\badr[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFD00FDFFFF00FF)) 
    \badr[2]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/pcnt/pc [2]),
        .I4(\badr[15]_INST_0_i_13_n_0 ),
        .I5(\rgf/bank/gr05 [2]),
        .O(\badr[2]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[2]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\rgf/bank/gr00 [2]),
        .I2(\badr[15]_INST_0_i_12_n_0 ),
        .I3(\rgf/bank/gr04 [2]),
        .O(\badr[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \badr[2]_INST_0_i_5 
       (.I0(\rgf/sptr/sp [2]),
        .I1(\badr[15]_INST_0_i_16_n_0 ),
        .I2(\rgf/bank/gr02 [2]),
        .I3(\badr[15]_INST_0_i_15_n_0 ),
        .I4(\rgf/bank/gr06 [2]),
        .I5(\badr[15]_INST_0_i_14_n_0 ),
        .O(\badr[2]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \badr[2]_INST_0_i_6 
       (.I0(\rgf/ivec/iv [2]),
        .I1(\badr[15]_INST_0_i_17_n_0 ),
        .I2(\rgf/sreg/sr [2]),
        .I3(\badr[15]_INST_0_i_20_n_0 ),
        .I4(\badr[2]_INST_0_i_7_n_0 ),
        .O(\badr[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0080000C00800000)) 
    \badr[2]_INST_0_i_7 
       (.I0(\rgf/bank/gr07 [2]),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .I3(\badr[15]_INST_0_i_31_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .I5(\rgf/bank/gr01 [2]),
        .O(\badr[2]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[3]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(abus_0[3]),
        .O(badr[3]));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \badr[3]_INST_0_i_1 
       (.I0(\badr[3]_INST_0_i_2_n_0 ),
        .I1(\badr[3]_INST_0_i_3_n_0 ),
        .I2(\badr[3]_INST_0_i_4_n_0 ),
        .I3(\badr[3]_INST_0_i_5_n_0 ),
        .O(abus_0[3]));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[3]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/bank/gr07 [3]),
        .I4(\badr[15]_INST_0_i_21_n_0 ),
        .I5(\rgf/bank/gr00 [3]),
        .O(\badr[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \badr[3]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_15_n_0 ),
        .I1(\rgf/bank/gr02 [3]),
        .I2(\rgf/sptr/sp [3]),
        .I3(\badr[15]_INST_0_i_16_n_0 ),
        .I4(\rgf/bank/gr06 [3]),
        .I5(\badr[15]_INST_0_i_14_n_0 ),
        .O(\badr[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \badr[3]_INST_0_i_4 
       (.I0(\badr[3]_INST_0_i_6_n_0 ),
        .I1(\rgf/bank/gr01 [3]),
        .I2(\badr[15]_INST_0_i_11_n_0 ),
        .I3(\rgf/sp_dec_0 [3]),
        .I4(\badr[15]_INST_0_i_18_n_0 ),
        .O(\badr[3]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA2A200A2)) 
    \badr[3]_INST_0_i_5 
       (.I0(\badr[3]_INST_0_i_7_n_0 ),
        .I1(\rgf/bank/gr03 [3]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\rgf/pcnt/pc [3]),
        .I4(\badr[15]_INST_0_i_13_n_0 ),
        .O(\badr[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0300000200000002)) 
    \badr[3]_INST_0_i_6 
       (.I0(\rgf/sreg/sr [3]),
        .I1(\badr[15]_INST_0_i_36_n_0 ),
        .I2(\badr[15]_INST_0_i_37_n_0 ),
        .I3(\badr[15]_INST_0_i_8_n_0 ),
        .I4(\badr[15]_INST_0_i_9_n_0 ),
        .I5(\rgf/ivec/iv [3]),
        .O(\badr[3]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFF1FFFD)) 
    \badr[3]_INST_0_i_7 
       (.I0(\rgf/bank/gr04 [3]),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .I3(\badr[15]_INST_0_i_10_n_0 ),
        .I4(\rgf/bank/gr05 [3]),
        .O(\badr[3]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \badr[4]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(\badr[4]_INST_0_i_1_n_0 ),
        .O(badr[4]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \badr[4]_INST_0_i_1 
       (.I0(\badr[4]_INST_0_i_2_n_0 ),
        .I1(\badr[4]_INST_0_i_3_n_0 ),
        .I2(\badr[4]_INST_0_i_4_n_0 ),
        .I3(\badr[4]_INST_0_i_5_n_0 ),
        .I4(\badr[4]_INST_0_i_6_n_0 ),
        .O(\badr[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[4]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\rgf/pcnt/pc [4]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\rgf/bank/gr03 [4]),
        .O(\badr[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFD00FDFFFF00FF)) 
    \badr[4]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/sp_dec_0 [4]),
        .I4(\badr[15]_INST_0_i_18_n_0 ),
        .I5(\rgf/bank/gr05 [4]),
        .O(\badr[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \badr[4]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank/gr06 [4]),
        .I2(\rgf/sptr/sp [4]),
        .I3(\badr[15]_INST_0_i_16_n_0 ),
        .I4(\rgf/bank/gr02 [4]),
        .I5(\badr[15]_INST_0_i_15_n_0 ),
        .O(\badr[4]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[4]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\rgf/bank/gr00 [4]),
        .I2(\badr[15]_INST_0_i_11_n_0 ),
        .I3(\rgf/bank/gr01 [4]),
        .O(\badr[4]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \badr[4]_INST_0_i_6 
       (.I0(\rgf/ivec/iv [4]),
        .I1(\badr[15]_INST_0_i_17_n_0 ),
        .I2(\rgf/sreg/sr [4]),
        .I3(\badr[15]_INST_0_i_20_n_0 ),
        .I4(\badr[4]_INST_0_i_7_n_0 ),
        .O(\badr[4]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h20032000)) 
    \badr[4]_INST_0_i_7 
       (.I0(\rgf/bank/gr07 [4]),
        .I1(\badr[15]_INST_0_i_10_n_0 ),
        .I2(\badr[15]_INST_0_i_8_n_0 ),
        .I3(\badr[15]_INST_0_i_9_n_0 ),
        .I4(\rgf/bank/gr04 [4]),
        .O(\badr[4]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \badr[5]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(\badr[5]_INST_0_i_1_n_0 ),
        .O(badr[5]));
  LUT4 #(
    .INIT(16'h0002)) 
    \badr[5]_INST_0_i_1 
       (.I0(\badr[5]_INST_0_i_2_n_0 ),
        .I1(\badr[5]_INST_0_i_3_n_0 ),
        .I2(\badr[5]_INST_0_i_4_n_0 ),
        .I3(\badr[5]_INST_0_i_5_n_0 ),
        .O(\badr[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA2A200A2)) 
    \badr[5]_INST_0_i_2 
       (.I0(\badr[5]_INST_0_i_6_n_0 ),
        .I1(\rgf/bank/gr03 [5]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\rgf/pcnt/pc [5]),
        .I4(\badr[15]_INST_0_i_13_n_0 ),
        .O(\badr[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \badr[5]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank/gr06 [5]),
        .I2(\rgf/bank/gr02 [5]),
        .I3(\badr[15]_INST_0_i_15_n_0 ),
        .I4(\rgf/sptr/sp [5]),
        .I5(\badr[15]_INST_0_i_16_n_0 ),
        .O(\badr[5]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[5]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\rgf/sreg/sr [5]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\rgf/ivec/iv [5]),
        .O(\badr[5]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \badr[5]_INST_0_i_5 
       (.I0(\rgf/sp_dec_0 [5]),
        .I1(\badr[15]_INST_0_i_18_n_0 ),
        .I2(\rgf/bank/gr00 [5]),
        .I3(\badr[15]_INST_0_i_21_n_0 ),
        .I4(\badr[5]_INST_0_i_7_n_0 ),
        .O(\badr[5]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFF1FFFD)) 
    \badr[5]_INST_0_i_6 
       (.I0(\rgf/bank/gr04 [5]),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .I3(\badr[15]_INST_0_i_10_n_0 ),
        .I4(\rgf/bank/gr05 [5]),
        .O(\badr[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0080000C00800000)) 
    \badr[5]_INST_0_i_7 
       (.I0(\rgf/bank/gr07 [5]),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .I3(\badr[15]_INST_0_i_31_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .I5(\rgf/bank/gr01 [5]),
        .O(\badr[5]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \badr[6]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(\badr[6]_INST_0_i_1_n_0 ),
        .O(badr[6]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \badr[6]_INST_0_i_1 
       (.I0(\badr[6]_INST_0_i_2_n_0 ),
        .I1(\badr[6]_INST_0_i_3_n_0 ),
        .I2(\badr[6]_INST_0_i_4_n_0 ),
        .I3(\badr[6]_INST_0_i_5_n_0 ),
        .I4(\badr[6]_INST_0_i_6_n_0 ),
        .O(\badr[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[6]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(\rgf/sp_dec_0 [6]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\rgf/bank/gr03 [6]),
        .O(\badr[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFD00FDFFFF00FF)) 
    \badr[6]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/pcnt/pc [6]),
        .I4(\badr[15]_INST_0_i_13_n_0 ),
        .I5(\rgf/bank/gr05 [6]),
        .O(\badr[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \badr[6]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_15_n_0 ),
        .I1(\rgf/bank/gr02 [6]),
        .I2(\rgf/sptr/sp [6]),
        .I3(\badr[15]_INST_0_i_16_n_0 ),
        .I4(\rgf/bank/gr06 [6]),
        .I5(\badr[15]_INST_0_i_14_n_0 ),
        .O(\badr[6]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[6]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\rgf/sreg/sr [6]),
        .I2(\badr[15]_INST_0_i_21_n_0 ),
        .I3(\rgf/bank/gr00 [6]),
        .O(\badr[6]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \badr[6]_INST_0_i_6 
       (.I0(\rgf/ivec/iv [6]),
        .I1(\badr[15]_INST_0_i_17_n_0 ),
        .I2(\rgf/bank/gr04 [6]),
        .I3(\badr[15]_INST_0_i_12_n_0 ),
        .I4(\badr[6]_INST_0_i_7_n_0 ),
        .O(\badr[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0080000C00800000)) 
    \badr[6]_INST_0_i_7 
       (.I0(\rgf/bank/gr07 [6]),
        .I1(\badr[15]_INST_0_i_8_n_0 ),
        .I2(\badr[15]_INST_0_i_9_n_0 ),
        .I3(\badr[15]_INST_0_i_31_n_0 ),
        .I4(\badr[15]_INST_0_i_37_n_0 ),
        .I5(\rgf/bank/gr01 [6]),
        .O(\badr[6]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \badr[7]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(abus_0[7]),
        .O(badr[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \badr[7]_INST_0_i_1 
       (.I0(\badr[7]_INST_0_i_2_n_0 ),
        .I1(\badr[7]_INST_0_i_3_n_0 ),
        .I2(\badr[7]_INST_0_i_4_n_0 ),
        .I3(\badr[7]_INST_0_i_5_n_0 ),
        .I4(\badr[7]_INST_0_i_6_n_0 ),
        .I5(\badr[7]_INST_0_i_7_n_0 ),
        .O(abus_0[7]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[7]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\rgf/bank/gr00 [7]),
        .I2(\badr[15]_INST_0_i_12_n_0 ),
        .I3(\rgf/bank/gr04 [7]),
        .O(\badr[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \badr[7]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_15_n_0 ),
        .I1(\rgf/bank/gr02 [7]),
        .I2(\rgf/sptr/sp [7]),
        .I3(\badr[15]_INST_0_i_16_n_0 ),
        .I4(\rgf/bank/gr06 [7]),
        .I5(\badr[15]_INST_0_i_14_n_0 ),
        .O(\badr[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[7]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/bank/gr07 [7]),
        .I4(\badr[15]_INST_0_i_20_n_0 ),
        .I5(\rgf/sreg/sr [7]),
        .O(\badr[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0200FFFF02000200)) 
    \badr[7]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/bank/gr05 [7]),
        .I4(\badr[15]_INST_0_i_17_n_0 ),
        .I5(\rgf/ivec/iv [7]),
        .O(\badr[7]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[7]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(\rgf/sp_dec_0 [7]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\rgf/bank/gr03 [7]),
        .O(\badr[7]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \badr[7]_INST_0_i_7 
       (.I0(\rgf/pcnt/pc [7]),
        .I1(\badr[15]_INST_0_i_13_n_0 ),
        .I2(\badr[15]_INST_0_i_11_n_0 ),
        .I3(\rgf/bank/gr01 [7]),
        .O(\badr[7]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \badr[8]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(\badr[8]_INST_0_i_1_n_0 ),
        .O(badr[8]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \badr[8]_INST_0_i_1 
       (.I0(\badr[8]_INST_0_i_2_n_0 ),
        .I1(\badr[8]_INST_0_i_3_n_0 ),
        .I2(\badr[8]_INST_0_i_4_n_0 ),
        .I3(\badr[8]_INST_0_i_5_n_0 ),
        .I4(\badr[8]_INST_0_i_6_n_0 ),
        .I5(\badr[8]_INST_0_i_7_n_0 ),
        .O(\badr[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[8]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/bank/gr07 [8]),
        .I4(\badr[15]_INST_0_i_11_n_0 ),
        .I5(\rgf/bank/gr01 [8]),
        .O(\badr[8]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB0BB)) 
    \badr[8]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_13_n_0 ),
        .I1(\rgf/pcnt/pc [8]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\rgf/bank/gr03 [8]),
        .O(\badr[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \badr[8]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_15_n_0 ),
        .I1(\rgf/bank/gr02 [8]),
        .I2(\badr[15]_INST_0_i_16_n_0 ),
        .I3(\rgf/sptr/sp [8]),
        .I4(\rgf/bank/gr06 [8]),
        .I5(\badr[15]_INST_0_i_14_n_0 ),
        .O(\badr[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h02FF020200FF0000)) 
    \badr[8]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_12_n_0 ),
        .I4(\rgf/bank/gr04 [8]),
        .I5(\rgf/bank/gr05 [8]),
        .O(\badr[8]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[8]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(\rgf/sp_dec_0 [8]),
        .I2(\badr[15]_INST_0_i_17_n_0 ),
        .I3(\rgf/ivec/iv [8]),
        .O(\badr[8]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[8]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\rgf/sreg/sr [8]),
        .I2(\badr[15]_INST_0_i_21_n_0 ),
        .I3(\rgf/bank/gr00 [8]),
        .O(\badr[8]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \badr[9]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(\badr[9]_INST_0_i_1_n_0 ),
        .O(badr[9]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \badr[9]_INST_0_i_1 
       (.I0(\badr[9]_INST_0_i_2_n_0 ),
        .I1(\badr[9]_INST_0_i_3_n_0 ),
        .I2(\badr[9]_INST_0_i_4_n_0 ),
        .I3(\badr[9]_INST_0_i_5_n_0 ),
        .I4(\badr[9]_INST_0_i_6_n_0 ),
        .I5(\badr[9]_INST_0_i_7_n_0 ),
        .O(\badr[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \badr[9]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/bank/gr07 [9]),
        .I4(\badr[15]_INST_0_i_17_n_0 ),
        .I5(\rgf/ivec/iv [9]),
        .O(\badr[9]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB0BB)) 
    \badr[9]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(\rgf/sp_dec_0 [9]),
        .I2(\badr[15]_INST_0_i_19_n_0 ),
        .I3(\rgf/bank/gr03 [9]),
        .O(\badr[9]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[9]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_21_n_0 ),
        .I1(\rgf/bank/gr00 [9]),
        .I2(\badr[15]_INST_0_i_12_n_0 ),
        .I3(\rgf/bank/gr04 [9]),
        .O(\badr[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \badr[9]_INST_0_i_5 
       (.I0(\rgf/sptr/sp [9]),
        .I1(\badr[15]_INST_0_i_16_n_0 ),
        .I2(\rgf/bank/gr02 [9]),
        .I3(\badr[15]_INST_0_i_15_n_0 ),
        .I4(\rgf/bank/gr06 [9]),
        .I5(\badr[15]_INST_0_i_14_n_0 ),
        .O(\badr[9]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \badr[9]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_20_n_0 ),
        .I1(\rgf/sreg/sr [9]),
        .I2(\badr[15]_INST_0_i_13_n_0 ),
        .I3(\rgf/pcnt/pc [9]),
        .O(\badr[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0200FFFF02000200)) 
    \badr[9]_INST_0_i_7 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\rgf/bank/gr05 [9]),
        .I4(\badr[15]_INST_0_i_11_n_0 ),
        .I5(\rgf/bank/gr01 [9]),
        .O(\badr[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000222)) 
    \bcmd[0]_INST_0 
       (.I0(\bcmd[0]_INST_0_i_1_n_0 ),
        .I1(\bcmd[0]_INST_0_i_2_n_0 ),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [6]),
        .I5(\bcmd[0]_INST_0_i_3_n_0 ),
        .O(bcmd[0]));
  LUT6 #(
    .INIT(64'h00000000C001CC01)) 
    \bcmd[0]_INST_0_i_1 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [6]),
        .I5(\bcmd[0]_INST_0_i_4_n_0 ),
        .O(\bcmd[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCFFA)) 
    \bcmd[0]_INST_0_i_2 
       (.I0(\fch/ir [4]),
        .I1(\ctl/stat [0]),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [12]),
        .O(\bcmd[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFEBFBEBFFFBFBF)) 
    \bcmd[0]_INST_0_i_3 
       (.I0(\bcmd[0]_INST_0_i_5_n_0 ),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [6]),
        .I5(\fch/ir [1]),
        .O(\bcmd[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h77FFF7FFFFFFFFFD)) 
    \bcmd[0]_INST_0_i_4 
       (.I0(\bcmd[0]_INST_0_i_6_n_0 ),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [13]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [12]),
        .O(\bcmd[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \bcmd[0]_INST_0_i_5 
       (.I0(\ctl/stat [0]),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [1]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [8]),
        .I5(\bcmd[0]_INST_0_i_7_n_0 ),
        .O(\bcmd[0]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bcmd[0]_INST_0_i_6 
       (.I0(\fch/ir [15]),
        .I1(\ctl/stat [1]),
        .I2(\ctl/stat [2]),
        .O(\bcmd[0]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bcmd[0]_INST_0_i_7 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [4]),
        .O(\bcmd[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000000E)) 
    \bcmd[1]_INST_0 
       (.I0(\bcmd[1]_INST_0_i_1_n_0 ),
        .I1(\bcmd[1]_INST_0_i_2_n_0 ),
        .I2(\bcmd[1]_INST_0_i_3_n_0 ),
        .I3(\bcmd[1]_INST_0_i_4_n_0 ),
        .I4(\bcmd[1]_INST_0_i_5_n_0 ),
        .I5(\bcmd[1]_INST_0_i_6_n_0 ),
        .O(bcmd[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \bcmd[1]_INST_0_i_1 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [12]),
        .O(\bcmd[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAFFBAAAAAAAAA)) 
    \bcmd[1]_INST_0_i_2 
       (.I0(\ctl/stat [0]),
        .I1(irq_lev[0]),
        .I2(\rgf/sreg/sr [2]),
        .I3(\rgf/sreg/sr [3]),
        .I4(irq_lev[1]),
        .I5(irq),
        .O(\bcmd[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33FFFFBBFCFFFFFE)) 
    \bcmd[1]_INST_0_i_3 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [11]),
        .I5(\fch/ir [13]),
        .O(\bcmd[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF6)) 
    \bcmd[1]_INST_0_i_4 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [14]),
        .I2(\ctl/stat [2]),
        .I3(\ctl/stat [1]),
        .I4(\fch/ir [15]),
        .O(\bcmd[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF3FFE0FFE)) 
    \bcmd[1]_INST_0_i_5 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [10]),
        .I5(\bcmd[0]_INST_0_i_2_n_0 ),
        .O(\bcmd[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7FF7777)) 
    \bcmd[1]_INST_0_i_6 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [10]),
        .I5(\bcmd[1]_INST_0_i_7_n_0 ),
        .O(\bcmd[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000002F2F2F2F2)) 
    \bcmd[1]_INST_0_i_7 
       (.I0(\fch/ir [0]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [5]),
        .I5(\bcmd[1]_INST_0_i_8_n_0 ),
        .O(\bcmd[1]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \bcmd[1]_INST_0_i_8 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [10]),
        .O(\bcmd[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \bcmd[2]_INST_0 
       (.I0(\bcmd[2]_INST_0_i_1_n_0 ),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [10]),
        .I5(\fch/ir [8]),
        .O(bcmd[2]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \bcmd[2]_INST_0_i_1 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(\ctl/stat [0]),
        .I2(\fch/ir [15]),
        .I3(\fch/ir [13]),
        .I4(\fch/ir [14]),
        .I5(\fch/ir [12]),
        .O(\bcmd[2]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[2]_INST_0_i_2 
       (.I0(\ctl/stat [2]),
        .I1(\ctl/stat [1]),
        .O(\bcmd[2]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bctl/read_cyc[1]_i_1 
       (.I0(bcmd[2]),
        .I1(brdy),
        .I2(\mem/read_cyc [1]),
        .O(\bctl/read_cyc[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bctl/read_cyc[2]_i_1 
       (.I0(bcmd[0]),
        .I1(brdy),
        .I2(\mem/read_cyc [2]),
        .O(\bctl/read_cyc[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[0]_INST_0 
       (.I0(bcmd[1]),
        .I1(bbus_0[0]),
        .O(bdatw[0]));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[10]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[2]),
        .I2(\bdatw[10]_INST_0_i_1_n_0 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[10]));
  LUT6 #(
    .INIT(64'h00000000B0BB0000)) 
    \bdatw[10]_INST_0_i_1 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\rgf/sreg/sr [10]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\rgf/sptr/sp [10]),
        .I4(\bdatw[10]_INST_0_i_3_n_0 ),
        .I5(\bdatw[10]_INST_0_i_4_n_0 ),
        .O(\bdatw[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[10]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_31_n_0 ),
        .I1(\rgf/sp_dec_0 [2]),
        .I2(\rgf/bank/gr03 [2]),
        .I3(\bdatw[15]_INST_0_i_21_n_0 ),
        .I4(\rgf/bank/gr05 [2]),
        .I5(\bdatw[15]_INST_0_i_23_n_0 ),
        .O(\bdatw[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBB0BBB0B0000BB0B)) 
    \bdatw[10]_INST_0_i_11 
       (.I0(\bdatw[14]_INST_0_i_15_n_0 ),
        .I1(\rgf/bank/gr06 [10]),
        .I2(\fch/eir [10]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(\bdatw[10]_INST_0_i_16_n_0 ),
        .O(\bdatw[10]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[10]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_24_n_0 ),
        .I1(\rgf/pcnt/pc [10]),
        .I2(\bdatw[15]_INST_0_i_11_n_0 ),
        .I3(\rgf/ivec/iv [10]),
        .O(\bdatw[10]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[10]_INST_0_i_13 
       (.I0(\rgf/bank/gr00 [10]),
        .I1(\bdatw[15]_INST_0_i_27_n_0 ),
        .I2(\rgf/bank/gr04 [10]),
        .I3(\bdatw[15]_INST_0_i_28_n_0 ),
        .I4(\bdatw[10]_INST_0_i_17_n_0 ),
        .O(\bdatw[10]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A2020808A202)) 
    \bdatw[10]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[10]_INST_0_i_18_n_0 ),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(\fch/ir [1]),
        .I4(\bdatw[15]_INST_0_i_14_n_0 ),
        .I5(\fch/ir [2]),
        .O(\bdatw[10]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \bdatw[10]_INST_0_i_15 
       (.I0(\fch/eir [2]),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .O(\bdatw[10]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBAB5BABABABABABA)) 
    \bdatw[10]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(\fch/ir [9]),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(\fch/ir [0]),
        .I4(\fch/ir [1]),
        .I5(\bdatw[11]_INST_0_i_18_n_0 ),
        .O(\bdatw[10]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[10]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_23_n_0 ),
        .I1(\rgf/bank/gr05 [10]),
        .I2(\bdatw[15]_INST_0_i_20_n_0 ),
        .I3(\rgf/bank/gr02 [10]),
        .O(\bdatw[10]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \bdatw[10]_INST_0_i_18 
       (.I0(\fch/ir [0]),
        .I1(\fch/ir [1]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [2]),
        .O(\bdatw[10]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bdatw[10]_INST_0_i_2 
       (.I0(\bdatw[10]_INST_0_i_5_n_0 ),
        .I1(\bdatw[10]_INST_0_i_6_n_0 ),
        .I2(\bdatw[10]_INST_0_i_7_n_0 ),
        .I3(\bdatw[10]_INST_0_i_8_n_0 ),
        .I4(\bdatw[10]_INST_0_i_9_n_0 ),
        .I5(\bdatw[10]_INST_0_i_10_n_0 ),
        .O(\bdatw[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA2A200A2)) 
    \bdatw[10]_INST_0_i_3 
       (.I0(\bdatw[10]_INST_0_i_11_n_0 ),
        .I1(\rgf/sp_dec_0 [10]),
        .I2(\bdatw[15]_INST_0_i_31_n_0 ),
        .I3(\rgf/bank/gr03 [10]),
        .I4(\bdatw[15]_INST_0_i_21_n_0 ),
        .O(\bdatw[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \bdatw[10]_INST_0_i_4 
       (.I0(\bdatw[10]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_33_n_0 ),
        .I2(\rgf/bank/gr01 [10]),
        .I3(\bdatw[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/bank/gr07 [10]),
        .I5(\bdatw[10]_INST_0_i_13_n_0 ),
        .O(\bdatw[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \bdatw[10]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(\rgf/sptr/sp [2]),
        .I2(\bdatw[10]_INST_0_i_14_n_0 ),
        .I3(\bdatw[10]_INST_0_i_15_n_0 ),
        .I4(\rgf/sreg/sr [2]),
        .I5(\bdatw[13]_INST_0_i_4_n_0 ),
        .O(\bdatw[10]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[10]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_30_n_0 ),
        .I1(\rgf/bank/gr07 [2]),
        .I2(\bdatw[15]_INST_0_i_28_n_0 ),
        .I3(\rgf/bank/gr04 [2]),
        .O(\bdatw[10]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[10]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\rgf/bank/gr01 [2]),
        .I2(\bdatw[15]_INST_0_i_27_n_0 ),
        .I3(\rgf/bank/gr00 [2]),
        .O(\bdatw[10]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[10]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_11_n_0 ),
        .I1(\rgf/ivec/iv [2]),
        .I2(\bdatw[14]_INST_0_i_15_n_0 ),
        .I3(\rgf/bank/gr06 [2]),
        .O(\bdatw[10]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[10]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_24_n_0 ),
        .I1(\rgf/pcnt/pc [2]),
        .I2(\bdatw[15]_INST_0_i_20_n_0 ),
        .I3(\rgf/bank/gr02 [2]),
        .O(\bdatw[10]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[11]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[2]),
        .I2(\bdatw[11]_INST_0_i_1_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bdatw[11]));
  LUT5 #(
    .INIT(32'h00000051)) 
    \bdatw[11]_INST_0_i_1 
       (.I0(\bdatw[11]_INST_0_i_3_n_0 ),
        .I1(\rgf/sptr/sp [11]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[11]_INST_0_i_4_n_0 ),
        .I4(\bdatw[11]_INST_0_i_5_n_0 ),
        .O(\bdatw[11]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[11]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\rgf/bank/gr01 [3]),
        .I2(\bdatw[15]_INST_0_i_24_n_0 ),
        .I3(\rgf/pcnt/pc [3]),
        .O(\bdatw[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[11]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_23_n_0 ),
        .I1(\rgf/bank/gr05 [3]),
        .I2(\rgf/bank/gr07 [3]),
        .I3(\bdatw[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/bank/gr04 [3]),
        .I5(\bdatw[15]_INST_0_i_28_n_0 ),
        .O(\bdatw[11]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[11]_INST_0_i_12 
       (.I0(\rgf/bank/gr06 [11]),
        .I1(\bdatw[14]_INST_0_i_15_n_0 ),
        .I2(\rgf/ivec/iv [11]),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(\bdatw[11]_INST_0_i_17_n_0 ),
        .O(\bdatw[11]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[11]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\rgf/bank/gr01 [11]),
        .I2(\bdatw[15]_INST_0_i_21_n_0 ),
        .I3(\rgf/bank/gr03 [11]),
        .O(\bdatw[11]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hC044444444444444)) 
    \bdatw[11]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_56_n_0 ),
        .I1(\bdatw[14]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_57_n_0 ),
        .I3(\bdatw[11]_INST_0_i_18_n_0 ),
        .I4(\fch/ir [0]),
        .I5(\fch/ir [1]),
        .O(\bdatw[11]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \bdatw[11]_INST_0_i_15 
       (.I0(\rgf/ivec/iv [3]),
        .I1(\bdatw[15]_INST_0_i_53_n_0 ),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_14_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(\bdatw[15]_INST_0_i_16_n_0 ),
        .O(\bdatw[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAA000002A0A0AAA8)) 
    \bdatw[11]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_60_n_0 ),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [3]),
        .I4(\bdatw[15]_INST_0_i_13_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[11]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[11]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(\rgf/bank/gr04 [11]),
        .I2(\bdatw[15]_INST_0_i_30_n_0 ),
        .I3(\rgf/bank/gr07 [11]),
        .O(\bdatw[11]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[11]_INST_0_i_18 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [2]),
        .O(\bdatw[11]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \bdatw[11]_INST_0_i_2 
       (.I0(\bdatw[11]_INST_0_i_6_n_0 ),
        .I1(\bdatw[11]_INST_0_i_7_n_0 ),
        .I2(\bdatw[11]_INST_0_i_8_n_0 ),
        .I3(\bdatw[11]_INST_0_i_9_n_0 ),
        .I4(\bdatw[11]_INST_0_i_10_n_0 ),
        .I5(\bdatw[11]_INST_0_i_11_n_0 ),
        .O(\bdatw[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[11]_INST_0_i_3 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\rgf/sreg/sr [11]),
        .I2(\rgf/bank/gr05 [11]),
        .I3(\bdatw[15]_INST_0_i_23_n_0 ),
        .I4(\fch/eir [11]),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEEEFEE)) 
    \bdatw[11]_INST_0_i_4 
       (.I0(\bdatw[11]_INST_0_i_12_n_0 ),
        .I1(\bdatw[11]_INST_0_i_13_n_0 ),
        .I2(\bdatw[11]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .I4(\bdatw[15]_INST_0_i_20_n_0 ),
        .I5(\rgf/bank/gr02 [11]),
        .O(\bdatw[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[11]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_31_n_0 ),
        .I1(\rgf/sp_dec_0 [11]),
        .I2(\rgf/bank/gr00 [11]),
        .I3(\bdatw[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/pcnt/pc [11]),
        .I5(\bdatw[15]_INST_0_i_24_n_0 ),
        .O(\bdatw[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[11]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(\rgf/sptr/sp [3]),
        .I2(\fch/eir [3]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\rgf/bank/gr02 [3]),
        .I5(\bdatw[15]_INST_0_i_20_n_0 ),
        .O(\bdatw[11]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[11]_INST_0_i_7 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\rgf/sreg/sr [3]),
        .O(\bdatw[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF22F2)) 
    \bdatw[11]_INST_0_i_8 
       (.I0(\rgf/bank/gr03 [3]),
        .I1(\bdatw[15]_INST_0_i_21_n_0 ),
        .I2(\rgf/bank/gr00 [3]),
        .I3(\bdatw[15]_INST_0_i_27_n_0 ),
        .I4(\bdatw[11]_INST_0_i_15_n_0 ),
        .I5(\bdatw[11]_INST_0_i_16_n_0 ),
        .O(\bdatw[11]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[11]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_31_n_0 ),
        .I1(\rgf/sp_dec_0 [3]),
        .I2(\bdatw[14]_INST_0_i_15_n_0 ),
        .I3(\rgf/bank/gr06 [3]),
        .O(\bdatw[11]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[12]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[2]),
        .I2(\bdatw[12]_INST_0_i_1_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(bdatw[12]));
  LUT6 #(
    .INIT(64'h0000000000000051)) 
    \bdatw[12]_INST_0_i_1 
       (.I0(\bdatw[12]_INST_0_i_3_n_0 ),
        .I1(\rgf/sptr/sp [12]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[12]_INST_0_i_4_n_0 ),
        .I4(\bdatw[12]_INST_0_i_5_n_0 ),
        .I5(\bdatw[12]_INST_0_i_6_n_0 ),
        .O(\bdatw[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[12]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_30_n_0 ),
        .I1(\rgf/bank/gr07 [4]),
        .I2(\rgf/bank/gr04 [4]),
        .I3(\bdatw[15]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(\bdatw[12]_INST_0_i_16_n_0 ),
        .O(\bdatw[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000040)) 
    \bdatw[12]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_57_n_0 ),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [0]),
        .I4(\fch/ir [1]),
        .I5(\bdatw[15]_INST_0_i_56_n_0 ),
        .O(\bdatw[12]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[12]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_31_n_0 ),
        .I1(\rgf/sp_dec_0 [12]),
        .I2(\bdatw[15]_INST_0_i_21_n_0 ),
        .I3(\rgf/bank/gr03 [12]),
        .O(\bdatw[12]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[12]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_20_n_0 ),
        .I1(\rgf/bank/gr02 [12]),
        .I2(\bdatw[15]_INST_0_i_27_n_0 ),
        .I3(\rgf/bank/gr00 [12]),
        .O(\bdatw[12]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[12]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_11_n_0 ),
        .I1(\rgf/ivec/iv [4]),
        .I2(\bdatw[15]_INST_0_i_20_n_0 ),
        .I3(\rgf/bank/gr02 [4]),
        .O(\bdatw[12]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[12]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_21_n_0 ),
        .I1(\rgf/bank/gr03 [4]),
        .I2(\bdatw[15]_INST_0_i_33_n_0 ),
        .I3(\rgf/bank/gr01 [4]),
        .O(\bdatw[12]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h4C4C7C7C4C4C737C)) 
    \bdatw[12]_INST_0_i_16 
       (.I0(\fch/ir [4]),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(\fch/ir [2]),
        .I4(\fch/ir [3]),
        .I5(\bdatw[12]_INST_0_i_17_n_0 ),
        .O(\bdatw[12]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[12]_INST_0_i_17 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [0]),
        .O(\bdatw[12]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000051)) 
    \bdatw[12]_INST_0_i_2 
       (.I0(\bdatw[12]_INST_0_i_7_n_0 ),
        .I1(\rgf/sreg/sr [4]),
        .I2(\bdatw[13]_INST_0_i_4_n_0 ),
        .I3(\bdatw[12]_INST_0_i_8_n_0 ),
        .I4(\bdatw[12]_INST_0_i_9_n_0 ),
        .I5(\bdatw[12]_INST_0_i_10_n_0 ),
        .O(\bdatw[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[12]_INST_0_i_3 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\rgf/sreg/sr [12]),
        .I2(\rgf/bank/gr01 [12]),
        .I3(\bdatw[15]_INST_0_i_33_n_0 ),
        .I4(\fch/eir [12]),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF222F2F2)) 
    \bdatw[12]_INST_0_i_4 
       (.I0(\rgf/bank/gr07 [12]),
        .I1(\bdatw[15]_INST_0_i_30_n_0 ),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[12]_INST_0_i_11_n_0 ),
        .I4(\bdatw[14]_INST_0_i_13_n_0 ),
        .I5(\bdatw[12]_INST_0_i_12_n_0 ),
        .O(\bdatw[12]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[12]_INST_0_i_5 
       (.I0(\rgf/bank/gr05 [12]),
        .I1(\bdatw[15]_INST_0_i_23_n_0 ),
        .I2(\rgf/pcnt/pc [12]),
        .I3(\bdatw[15]_INST_0_i_24_n_0 ),
        .I4(\bdatw[12]_INST_0_i_13_n_0 ),
        .O(\bdatw[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[12]_INST_0_i_6 
       (.I0(\bdatw[14]_INST_0_i_15_n_0 ),
        .I1(\rgf/bank/gr06 [12]),
        .I2(\rgf/ivec/iv [12]),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(\rgf/bank/gr04 [12]),
        .I5(\bdatw[15]_INST_0_i_28_n_0 ),
        .O(\bdatw[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[12]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(\rgf/sptr/sp [4]),
        .I2(\rgf/sp_dec_0 [4]),
        .I3(\bdatw[15]_INST_0_i_31_n_0 ),
        .I4(\fch/eir [4]),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[12]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[12]_INST_0_i_8 
       (.I0(\rgf/bank/gr05 [4]),
        .I1(\bdatw[15]_INST_0_i_23_n_0 ),
        .I2(\rgf/pcnt/pc [4]),
        .I3(\bdatw[15]_INST_0_i_24_n_0 ),
        .I4(\bdatw[12]_INST_0_i_14_n_0 ),
        .O(\bdatw[12]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[12]_INST_0_i_9 
       (.I0(\rgf/bank/gr06 [4]),
        .I1(\bdatw[14]_INST_0_i_15_n_0 ),
        .I2(\rgf/bank/gr00 [4]),
        .I3(\bdatw[15]_INST_0_i_27_n_0 ),
        .I4(\bdatw[12]_INST_0_i_15_n_0 ),
        .O(\bdatw[12]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[13]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[2]),
        .I2(\bdatw[13]_INST_0_i_1_n_0 ),
        .I3(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[13]));
  LUT6 #(
    .INIT(64'h0000000000000051)) 
    \bdatw[13]_INST_0_i_1 
       (.I0(\bdatw[13]_INST_0_i_3_n_0 ),
        .I1(\rgf/sreg/sr [13]),
        .I2(\bdatw[13]_INST_0_i_4_n_0 ),
        .I3(\bdatw[13]_INST_0_i_5_n_0 ),
        .I4(\bdatw[13]_INST_0_i_6_n_0 ),
        .I5(\bdatw[13]_INST_0_i_7_n_0 ),
        .O(\bdatw[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[13]_INST_0_i_10 
       (.I0(\rgf/bank/gr03 [5]),
        .I1(\bdatw[15]_INST_0_i_21_n_0 ),
        .I2(\rgf/bank/gr04 [5]),
        .I3(\bdatw[15]_INST_0_i_28_n_0 ),
        .I4(\bdatw[13]_INST_0_i_16_n_0 ),
        .O(\bdatw[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[13]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\rgf/bank/gr01 [5]),
        .I2(\rgf/bank/gr06 [5]),
        .I3(\bdatw[14]_INST_0_i_15_n_0 ),
        .I4(\rgf/bank/gr00 [5]),
        .I5(\bdatw[15]_INST_0_i_27_n_0 ),
        .O(\bdatw[13]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[13]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\rgf/bank/gr01 [13]),
        .I2(\bdatw[15]_INST_0_i_11_n_0 ),
        .I3(\rgf/ivec/iv [13]),
        .O(\bdatw[13]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[13]_INST_0_i_13 
       (.I0(\bdatw[14]_INST_0_i_15_n_0 ),
        .I1(\rgf/bank/gr06 [13]),
        .I2(\bdatw[15]_INST_0_i_31_n_0 ),
        .I3(\rgf/sp_dec_0 [13]),
        .O(\bdatw[13]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00004000)) 
    \bdatw[13]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_57_n_0 ),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [0]),
        .I4(\fch/ir [1]),
        .I5(\bdatw[15]_INST_0_i_56_n_0 ),
        .O(\bdatw[13]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[13]_INST_0_i_15 
       (.I0(\bdatw[13]_INST_0_i_17_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_23_n_0 ),
        .I3(\rgf/bank/gr05 [5]),
        .O(\bdatw[13]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[13]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_20_n_0 ),
        .I1(\rgf/bank/gr02 [5]),
        .I2(\bdatw[15]_INST_0_i_30_n_0 ),
        .I3(\rgf/bank/gr07 [5]),
        .O(\bdatw[13]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h47CC47CC47CC4733)) 
    \bdatw[13]_INST_0_i_17 
       (.I0(\fch/ir [5]),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\fch/ir [4]),
        .I3(\bdatw[15]_INST_0_i_13_n_0 ),
        .I4(\bdatw[15]_INST_0_i_59_n_0 ),
        .I5(\bdatw[13]_INST_0_i_18_n_0 ),
        .O(\bdatw[13]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[13]_INST_0_i_18 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [0]),
        .O(\bdatw[13]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000051)) 
    \bdatw[13]_INST_0_i_2 
       (.I0(\bdatw[13]_INST_0_i_8_n_0 ),
        .I1(\rgf/sreg/sr [5]),
        .I2(\bdatw[13]_INST_0_i_4_n_0 ),
        .I3(\bdatw[13]_INST_0_i_9_n_0 ),
        .I4(\bdatw[13]_INST_0_i_10_n_0 ),
        .I5(\bdatw[13]_INST_0_i_11_n_0 ),
        .O(\bdatw[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[13]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(\rgf/sptr/sp [13]),
        .I2(\rgf/bank/gr04 [13]),
        .I3(\bdatw[15]_INST_0_i_28_n_0 ),
        .I4(\fch/eir [13]),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \bdatw[13]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_16_n_0 ),
        .I4(\bdatw[15]_INST_0_i_17_n_0 ),
        .I5(\bdatw[15]_INST_0_i_18_n_0 ),
        .O(\bdatw[13]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[13]_INST_0_i_5 
       (.I0(\rgf/bank/gr07 [13]),
        .I1(\bdatw[15]_INST_0_i_30_n_0 ),
        .I2(\rgf/bank/gr00 [13]),
        .I3(\bdatw[15]_INST_0_i_27_n_0 ),
        .I4(\bdatw[13]_INST_0_i_12_n_0 ),
        .O(\bdatw[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEFFAEFFAE)) 
    \bdatw[13]_INST_0_i_6 
       (.I0(\bdatw[13]_INST_0_i_13_n_0 ),
        .I1(\rgf/pcnt/pc [13]),
        .I2(\bdatw[15]_INST_0_i_24_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .I4(\bdatw[13]_INST_0_i_14_n_0 ),
        .I5(\bdatw[14]_INST_0_i_13_n_0 ),
        .O(\bdatw[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[13]_INST_0_i_7 
       (.I0(\bdatw[15]_INST_0_i_20_n_0 ),
        .I1(\rgf/bank/gr02 [13]),
        .I2(\rgf/bank/gr05 [13]),
        .I3(\bdatw[15]_INST_0_i_23_n_0 ),
        .I4(\rgf/bank/gr03 [13]),
        .I5(\bdatw[15]_INST_0_i_21_n_0 ),
        .O(\bdatw[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[13]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(\rgf/sptr/sp [5]),
        .I2(\rgf/ivec/iv [5]),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(\fch/eir [5]),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[13]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[13]_INST_0_i_9 
       (.I0(\rgf/sp_dec_0 [5]),
        .I1(\bdatw[15]_INST_0_i_31_n_0 ),
        .I2(\rgf/pcnt/pc [5]),
        .I3(\bdatw[15]_INST_0_i_24_n_0 ),
        .I4(\bdatw[13]_INST_0_i_15_n_0 ),
        .O(\bdatw[13]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[14]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[2]),
        .I2(\bdatw[14]_INST_0_i_1_n_0 ),
        .I3(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[14]));
  LUT6 #(
    .INIT(64'h0000000000000051)) 
    \bdatw[14]_INST_0_i_1 
       (.I0(\bdatw[14]_INST_0_i_3_n_0 ),
        .I1(\rgf/sptr/sp [14]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[14]_INST_0_i_4_n_0 ),
        .I4(\bdatw[14]_INST_0_i_5_n_0 ),
        .I5(\bdatw[14]_INST_0_i_6_n_0 ),
        .O(\bdatw[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[14]_INST_0_i_10 
       (.I0(\bdatw[14]_INST_0_i_15_n_0 ),
        .I1(\rgf/bank/gr06 [6]),
        .I2(\rgf/pcnt/pc [6]),
        .I3(\bdatw[15]_INST_0_i_24_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(\bdatw[14]_INST_0_i_18_n_0 ),
        .O(\bdatw[14]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[14]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(\rgf/bank/gr04 [14]),
        .I2(\bdatw[15]_INST_0_i_27_n_0 ),
        .I3(\rgf/bank/gr00 [14]),
        .O(\bdatw[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF10000000)) 
    \bdatw[14]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_57_n_0 ),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [1]),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [2]),
        .I5(\bdatw[15]_INST_0_i_56_n_0 ),
        .O(\bdatw[14]_INST_0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \bdatw[14]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\fch/ir [10]),
        .O(\bdatw[14]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[14]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_20_n_0 ),
        .I1(\rgf/bank/gr02 [14]),
        .I2(\bdatw[15]_INST_0_i_33_n_0 ),
        .I3(\rgf/bank/gr01 [14]),
        .O(\bdatw[14]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \bdatw[14]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_14_n_0 ),
        .I4(\bdatw[15]_INST_0_i_18_n_0 ),
        .I5(\bdatw[15]_INST_0_i_61_n_0 ),
        .O(\bdatw[14]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[14]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_30_n_0 ),
        .I1(\rgf/bank/gr07 [6]),
        .I2(\bdatw[15]_INST_0_i_23_n_0 ),
        .I3(\rgf/bank/gr05 [6]),
        .O(\bdatw[14]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[14]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_21_n_0 ),
        .I1(\rgf/bank/gr03 [6]),
        .I2(\bdatw[15]_INST_0_i_27_n_0 ),
        .I3(\rgf/bank/gr00 [6]),
        .O(\bdatw[14]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h47CC47CC473347CC)) 
    \bdatw[14]_INST_0_i_18 
       (.I0(\fch/ir [6]),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\fch/ir [5]),
        .I3(\bdatw[15]_INST_0_i_13_n_0 ),
        .I4(\bdatw[14]_INST_0_i_19_n_0 ),
        .I5(\bdatw[15]_INST_0_i_59_n_0 ),
        .O(\bdatw[14]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[14]_INST_0_i_19 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [0]),
        .O(\bdatw[14]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000051)) 
    \bdatw[14]_INST_0_i_2 
       (.I0(\bdatw[14]_INST_0_i_7_n_0 ),
        .I1(\rgf/sptr/sp [6]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[14]_INST_0_i_8_n_0 ),
        .I4(\bdatw[14]_INST_0_i_9_n_0 ),
        .I5(\bdatw[14]_INST_0_i_10_n_0 ),
        .O(\bdatw[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[14]_INST_0_i_3 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\rgf/sreg/sr [14]),
        .I2(\fch/eir [14]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\rgf/pcnt/pc [14]),
        .I5(\bdatw[15]_INST_0_i_24_n_0 ),
        .O(\bdatw[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEFFAEFFAE)) 
    \bdatw[14]_INST_0_i_4 
       (.I0(\bdatw[14]_INST_0_i_11_n_0 ),
        .I1(\rgf/sp_dec_0 [14]),
        .I2(\bdatw[15]_INST_0_i_31_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .I4(\bdatw[14]_INST_0_i_12_n_0 ),
        .I5(\bdatw[14]_INST_0_i_13_n_0 ),
        .O(\bdatw[14]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[14]_INST_0_i_5 
       (.I0(\rgf/bank/gr05 [14]),
        .I1(\bdatw[15]_INST_0_i_23_n_0 ),
        .I2(\rgf/bank/gr07 [14]),
        .I3(\bdatw[15]_INST_0_i_30_n_0 ),
        .I4(\bdatw[14]_INST_0_i_14_n_0 ),
        .O(\bdatw[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[14]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_21_n_0 ),
        .I1(\rgf/bank/gr03 [14]),
        .I2(\rgf/bank/gr06 [14]),
        .I3(\bdatw[14]_INST_0_i_15_n_0 ),
        .I4(\rgf/ivec/iv [14]),
        .I5(\bdatw[15]_INST_0_i_11_n_0 ),
        .O(\bdatw[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[14]_INST_0_i_7 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\rgf/sreg/sr [6]),
        .I2(\rgf/sp_dec_0 [6]),
        .I3(\bdatw[15]_INST_0_i_31_n_0 ),
        .I4(\fch/eir [6]),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[14]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[14]_INST_0_i_8 
       (.I0(\rgf/bank/gr02 [6]),
        .I1(\bdatw[15]_INST_0_i_20_n_0 ),
        .I2(\rgf/bank/gr01 [6]),
        .I3(\bdatw[15]_INST_0_i_33_n_0 ),
        .I4(\bdatw[14]_INST_0_i_16_n_0 ),
        .O(\bdatw[14]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[14]_INST_0_i_9 
       (.I0(\rgf/bank/gr04 [6]),
        .I1(\bdatw[15]_INST_0_i_28_n_0 ),
        .I2(\rgf/ivec/iv [6]),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(\bdatw[14]_INST_0_i_17_n_0 ),
        .O(\bdatw[14]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[15]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[2]),
        .I2(\bdatw[15]_INST_0_i_1_n_0 ),
        .I3(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[15]));
  LUT5 #(
    .INIT(32'h00000051)) 
    \bdatw[15]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(\rgf/sptr/sp [15]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[15]_INST_0_i_6_n_0 ),
        .O(\bdatw[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[15]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\rgf/bank/gr01 [7]),
        .I2(\rgf/bank/gr05 [7]),
        .I3(\bdatw[15]_INST_0_i_23_n_0 ),
        .I4(\rgf/ivec/iv [7]),
        .I5(\bdatw[15]_INST_0_i_11_n_0 ),
        .O(\bdatw[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFFFFFFF)) 
    \bdatw[15]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_13_n_0 ),
        .I4(\bdatw[15]_INST_0_i_17_n_0 ),
        .I5(\bdatw[15]_INST_0_i_18_n_0 ),
        .O(\bdatw[15]_INST_0_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \bdatw[15]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDD0FFFFFFFF)) 
    \bdatw[15]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_34_n_0 ),
        .I1(\bdatw[15]_INST_0_i_35_n_0 ),
        .I2(\bdatw[15]_INST_0_i_36_n_0 ),
        .I3(\bdatw[15]_INST_0_i_37_n_0 ),
        .I4(\bdatw[15]_INST_0_i_38_n_0 ),
        .I5(\bcmd[0]_INST_0_i_6_n_0 ),
        .O(\bdatw[15]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEFFAEFFFF)) 
    \bdatw[15]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_39_n_0 ),
        .I1(\bdatw[15]_INST_0_i_40_n_0 ),
        .I2(\bdatw[15]_INST_0_i_41_n_0 ),
        .I3(\bdatw[15]_INST_0_i_42_n_0 ),
        .I4(\bdatw[15]_INST_0_i_43_n_0 ),
        .I5(\bdatw[15]_INST_0_i_44_n_0 ),
        .O(\bdatw[15]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB8B8B8)) 
    \bdatw[15]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_45_n_0 ),
        .I1(\fch/ir [12]),
        .I2(\tnsn_dsp_a[8]_INST_0_i_5_n_0 ),
        .I3(\bdatw[15]_INST_0_i_46_n_0 ),
        .I4(\fch/ir [15]),
        .I5(\bdatw[15]_INST_0_i_47_n_0 ),
        .O(\bdatw[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \bdatw[15]_INST_0_i_16 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(\ctl/stat [0]),
        .I2(\fch/ir [15]),
        .I3(\bdatw[15]_INST_0_i_46_n_0 ),
        .I4(\fch/ir [2]),
        .I5(\bdatw[15]_INST_0_i_48_n_0 ),
        .O(\bdatw[15]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000010000000F)) 
    \bdatw[15]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_49_n_0 ),
        .I1(\bdatw[15]_INST_0_i_46_n_0 ),
        .I2(\fch/ir [15]),
        .I3(\ctl/stat [0]),
        .I4(\bcmd[2]_INST_0_i_2_n_0 ),
        .I5(\bdatw[15]_INST_0_i_50_n_0 ),
        .O(\bdatw[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \bdatw[15]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_48_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(\ctl/stat [0]),
        .I3(\fch/ir [15]),
        .I4(\bdatw[15]_INST_0_i_46_n_0 ),
        .I5(\fch/ir [1]),
        .O(\bdatw[15]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[15]_INST_0_i_19 
       (.I0(\bdatw[15]_INST_0_i_30_n_0 ),
        .I1(\rgf/bank/gr07 [15]),
        .I2(\bdatw[15]_INST_0_i_27_n_0 ),
        .I3(\rgf/bank/gr00 [15]),
        .O(\bdatw[15]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000051)) 
    \bdatw[15]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_7_n_0 ),
        .I1(\rgf/sptr/sp [7]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\bdatw[15]_INST_0_i_8_n_0 ),
        .I4(\bdatw[15]_INST_0_i_9_n_0 ),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(\bdatw[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[15]_INST_0_i_20 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_51_n_0 ),
        .I4(\bdatw[15]_INST_0_i_52_n_0 ),
        .I5(\bdatw[15]_INST_0_i_17_n_0 ),
        .O(\bdatw[15]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[15]_INST_0_i_21 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_16_n_0 ),
        .I4(\bdatw[15]_INST_0_i_53_n_0 ),
        .I5(\bdatw[15]_INST_0_i_51_n_0 ),
        .O(\bdatw[15]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[15]_INST_0_i_22 
       (.I0(\rgf/bank/gr04 [15]),
        .I1(\bdatw[15]_INST_0_i_28_n_0 ),
        .I2(\rgf/sp_dec_0 [15]),
        .I3(\bdatw[15]_INST_0_i_31_n_0 ),
        .I4(\bdatw[15]_INST_0_i_54_n_0 ),
        .O(\bdatw[15]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \bdatw[15]_INST_0_i_23 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_51_n_0 ),
        .I4(\bdatw[15]_INST_0_i_16_n_0 ),
        .I5(\bdatw[15]_INST_0_i_55_n_0 ),
        .O(\bdatw[15]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \bdatw[15]_INST_0_i_24 
       (.I0(\bdatw[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_13_n_0 ),
        .I4(\bdatw[15]_INST_0_i_17_n_0 ),
        .I5(\bdatw[15]_INST_0_i_18_n_0 ),
        .O(\bdatw[15]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hC044444444444444)) 
    \bdatw[15]_INST_0_i_25 
       (.I0(\bdatw[15]_INST_0_i_56_n_0 ),
        .I1(\bdatw[14]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_57_n_0 ),
        .I3(\bdatw[15]_INST_0_i_58_n_0 ),
        .I4(\fch/ir [0]),
        .I5(\fch/ir [1]),
        .O(\bdatw[15]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h44447777CCC3CCC3)) 
    \bdatw[15]_INST_0_i_26 
       (.I0(\fch/ir [7]),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_59_n_0 ),
        .I3(\bdatw[15]_INST_0_i_60_n_0 ),
        .I4(\fch/ir [6]),
        .I5(\bdatw[15]_INST_0_i_13_n_0 ),
        .O(\bdatw[15]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[15]_INST_0_i_27 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_16_n_0 ),
        .I4(\bdatw[15]_INST_0_i_61_n_0 ),
        .I5(\bdatw[15]_INST_0_i_18_n_0 ),
        .O(\bdatw[15]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \bdatw[15]_INST_0_i_28 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_18_n_0 ),
        .I2(\bdatw[15]_INST_0_i_16_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .I4(\bdatw[15]_INST_0_i_13_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[15]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[15]_INST_0_i_29 
       (.I0(\bdatw[15]_INST_0_i_21_n_0 ),
        .I1(\rgf/bank/gr03 [7]),
        .I2(\bdatw[15]_INST_0_i_20_n_0 ),
        .I3(\rgf/bank/gr02 [7]),
        .O(\bdatw[15]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[15]_INST_0_i_3 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\rgf/sreg/sr [15]),
        .I2(\rgf/ivec/iv [15]),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(\fch/eir [15]),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \bdatw[15]_INST_0_i_30 
       (.I0(\bdatw[15]_INST_0_i_16_n_0 ),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(\bdatw[15]_INST_0_i_14_n_0 ),
        .I4(\bdatw[15]_INST_0_i_53_n_0 ),
        .I5(\bdatw[15]_INST_0_i_51_n_0 ),
        .O(\bdatw[15]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \bdatw[15]_INST_0_i_31 
       (.I0(\bdatw[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_16_n_0 ),
        .I4(\bdatw[15]_INST_0_i_18_n_0 ),
        .I5(\bdatw[15]_INST_0_i_17_n_0 ),
        .O(\bdatw[15]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[15]_INST_0_i_32 
       (.I0(\bdatw[15]_INST_0_i_24_n_0 ),
        .I1(\rgf/pcnt/pc [7]),
        .I2(\bdatw[14]_INST_0_i_15_n_0 ),
        .I3(\rgf/bank/gr06 [7]),
        .O(\bdatw[15]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[15]_INST_0_i_33 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_16_n_0 ),
        .I4(\bdatw[15]_INST_0_i_55_n_0 ),
        .I5(\bdatw[15]_INST_0_i_51_n_0 ),
        .O(\bdatw[15]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \bdatw[15]_INST_0_i_34 
       (.I0(\bdatw[15]_INST_0_i_62_n_0 ),
        .I1(\grn[15]_i_45_n_0 ),
        .I2(\bcmd[0]_INST_0_i_7_n_0 ),
        .I3(\bdatw[15]_INST_0_i_63_n_0 ),
        .I4(\fch/ir [8]),
        .I5(\bcmd[1]_INST_0_i_2_n_0 ),
        .O(\bdatw[15]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFF3FFFFFFFFFFFD)) 
    \bdatw[15]_INST_0_i_35 
       (.I0(\fch/ir [0]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [8]),
        .O(\bdatw[15]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAA2222A22A22A)) 
    \bdatw[15]_INST_0_i_36 
       (.I0(\bdatw[15]_INST_0_i_64_n_0 ),
        .I1(ctl_fetch_inferred_i_18_n_0),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [4]),
        .I4(\fch/ir [6]),
        .I5(\fch/ir [3]),
        .O(\bdatw[15]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \bdatw[15]_INST_0_i_37 
       (.I0(\ctl/stat [0]),
        .I1(\fch/ir [13]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [12]),
        .O(\bdatw[15]_INST_0_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \bdatw[15]_INST_0_i_38 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [10]),
        .O(\bdatw[15]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCFCFD00)) 
    \bdatw[15]_INST_0_i_39 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_6_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(\ctl/stat [0]),
        .I3(\fch/ir [12]),
        .I4(\fch/ir [13]),
        .I5(\fch/ir [15]),
        .O(\bdatw[15]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \bdatw[15]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[15]_INST_0_i_16_n_0 ),
        .I4(\bdatw[15]_INST_0_i_17_n_0 ),
        .I5(\bdatw[15]_INST_0_i_18_n_0 ),
        .O(\bdatw[15]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_40 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [12]),
        .O(\bdatw[15]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h88888A8888888888)) 
    \bdatw[15]_INST_0_i_41 
       (.I0(\bdatw[15]_INST_0_i_65_n_0 ),
        .I1(\bdatw[15]_INST_0_i_66_n_0 ),
        .I2(\bdatw[15]_INST_0_i_67_n_0 ),
        .I3(ctl_fetch_ext_fl_i_4_n_0),
        .I4(\bdatw[15]_INST_0_i_68_n_0 ),
        .I5(\bdatw[15]_INST_0_i_69_n_0 ),
        .O(\bdatw[15]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFEFAAAAAFAF)) 
    \bdatw[15]_INST_0_i_42 
       (.I0(\bdatw[15]_INST_0_i_70_n_0 ),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [10]),
        .I3(\bdatw[15]_INST_0_i_71_n_0 ),
        .I4(\fch/ir [11]),
        .I5(\fch/ir [8]),
        .O(\bdatw[15]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hBABAFFBAFFFFFFFF)) 
    \bdatw[15]_INST_0_i_43 
       (.I0(\bdatw[15]_INST_0_i_38_n_0 ),
        .I1(\bdatw[15]_INST_0_i_72_n_0 ),
        .I2(ctl_fetch_inferred_i_8_n_0),
        .I3(\bdatw[15]_INST_0_i_73_n_0 ),
        .I4(\bdatw[15]_INST_0_i_74_n_0 ),
        .I5(\bdatw[15]_INST_0_i_64_n_0 ),
        .O(\bdatw[15]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000B487FFFFFFFF)) 
    \bdatw[15]_INST_0_i_44 
       (.I0(\rgf/sreg/sr [7]),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [11]),
        .I3(\rgf/sreg/sr [6]),
        .I4(\fch/ir [14]),
        .I5(\fch/ir [13]),
        .O(\bdatw[15]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h40FFFFFF40FF0000)) 
    \bdatw[15]_INST_0_i_45 
       (.I0(\bdatw[15]_INST_0_i_75_n_0 ),
        .I1(\bdatw[15]_INST_0_i_76_n_0 ),
        .I2(ctl_fetch_inferred_i_8_n_0),
        .I3(\tnsn_dsp_a[8]_INST_0_i_8_n_0 ),
        .I4(\fch/ir [13]),
        .I5(\tnsn_dsp_a[8]_INST_0_i_6_n_0 ),
        .O(\bdatw[15]_INST_0_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \bdatw[15]_INST_0_i_46 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [13]),
        .O(\bdatw[15]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h90FF90FFFFFF90FF)) 
    \bdatw[15]_INST_0_i_47 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [5]),
        .I2(ctl_fetch_inferred_i_11_n_0),
        .I3(\fch_irq_lev[1]_i_4_n_0 ),
        .I4(\fch/ir [15]),
        .I5(\bdatw[15]_INST_0_i_46_n_0 ),
        .O(\bdatw[15]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D5DDDDDD)) 
    \bdatw[15]_INST_0_i_48 
       (.I0(\fch/ir [11]),
        .I1(\bdatw[15]_INST_0_i_77_n_0 ),
        .I2(\bdatw[15]_INST_0_i_78_n_0 ),
        .I3(\fch/ir [9]),
        .I4(\bdatw[15]_INST_0_i_79_n_0 ),
        .I5(\bdatw[15]_INST_0_i_80_n_0 ),
        .O(\bdatw[15]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hD0FFDDFFD000DDFF)) 
    \bdatw[15]_INST_0_i_49 
       (.I0(ctl_fetch_inferred_i_18_n_0),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[15]_INST_0_i_64_n_0 ),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [0]),
        .I5(\grn[15]_i_33_n_0 ),
        .O(\bdatw[15]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \bdatw[15]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_19_n_0 ),
        .I1(\bdatw[15]_INST_0_i_20_n_0 ),
        .I2(\rgf/bank/gr02 [15]),
        .I3(\bdatw[15]_INST_0_i_21_n_0 ),
        .I4(\rgf/bank/gr03 [15]),
        .I5(\bdatw[15]_INST_0_i_22_n_0 ),
        .O(\bdatw[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \bdatw[15]_INST_0_i_50 
       (.I0(fch_irq_req),
        .I1(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ),
        .I2(\fch/ir [12]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(\stat[0]_i_11_n_0 ),
        .O(\bdatw[15]_INST_0_i_50_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \bdatw[15]_INST_0_i_51 
       (.I0(\rgf/sreg/sr [0]),
        .I1(\rgf/sreg/sr [8]),
        .I2(\rgf/sreg/sr [1]),
        .O(\bdatw[15]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \bdatw[15]_INST_0_i_52 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [1]),
        .I2(\bcmd[2]_INST_0_i_1_n_0 ),
        .I3(\bdatw[15]_INST_0_i_48_n_0 ),
        .O(\bdatw[15]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFDDFF)) 
    \bdatw[15]_INST_0_i_53 
       (.I0(\fch/ir [1]),
        .I1(\bdatw[15]_INST_0_i_48_n_0 ),
        .I2(\bdatw[15]_INST_0_i_50_n_0 ),
        .I3(ctl_fetch_inferred_i_2_n_0),
        .I4(\bdatw[15]_INST_0_i_46_n_0 ),
        .I5(\bdatw[15]_INST_0_i_49_n_0 ),
        .O(\bdatw[15]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[15]_INST_0_i_54 
       (.I0(\bdatw[14]_INST_0_i_15_n_0 ),
        .I1(\rgf/bank/gr06 [15]),
        .I2(\bdatw[15]_INST_0_i_33_n_0 ),
        .I3(\rgf/bank/gr01 [15]),
        .O(\bdatw[15]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF2FFF0FF22FF)) 
    \bdatw[15]_INST_0_i_55 
       (.I0(\fch/ir [1]),
        .I1(\bdatw[15]_INST_0_i_48_n_0 ),
        .I2(\bdatw[15]_INST_0_i_50_n_0 ),
        .I3(ctl_fetch_inferred_i_2_n_0),
        .I4(\bdatw[15]_INST_0_i_46_n_0 ),
        .I5(\bdatw[15]_INST_0_i_49_n_0 ),
        .O(\bdatw[15]_INST_0_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_56 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .O(\bdatw[15]_INST_0_i_56_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_57 
       (.I0(\bdatw[15]_INST_0_i_13_n_0 ),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[15]_INST_0_i_57_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[15]_INST_0_i_58 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [3]),
        .O(\bdatw[15]_INST_0_i_58_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_59 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [2]),
        .O(\bdatw[15]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[15]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_23_n_0 ),
        .I1(\rgf/bank/gr05 [15]),
        .I2(\rgf/pcnt/pc [15]),
        .I3(\bdatw[15]_INST_0_i_24_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(\bdatw[15]_INST_0_i_25_n_0 ),
        .O(\bdatw[15]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatw[15]_INST_0_i_60 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [0]),
        .O(\bdatw[15]_INST_0_i_60_n_0 ));
  LUT5 #(
    .INIT(32'hBABABAFA)) 
    \bdatw[15]_INST_0_i_61 
       (.I0(\bdatw[15]_INST_0_i_51_n_0 ),
        .I1(\bdatw[15]_INST_0_i_50_n_0 ),
        .I2(ctl_fetch_inferred_i_2_n_0),
        .I3(\bdatw[15]_INST_0_i_46_n_0 ),
        .I4(\bdatw[15]_INST_0_i_49_n_0 ),
        .O(\bdatw[15]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \bdatw[15]_INST_0_i_62 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [12]),
        .I3(\fch/ir [14]),
        .I4(\fch/ir [13]),
        .I5(\ctl/stat [0]),
        .O(\bdatw[15]_INST_0_i_62_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[15]_INST_0_i_63 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [1]),
        .O(\bdatw[15]_INST_0_i_63_n_0 ));
  LUT5 #(
    .INIT(32'hFCFC4720)) 
    \bdatw[15]_INST_0_i_64 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [10]),
        .O(\bdatw[15]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF01FFFFFFFF)) 
    \bdatw[15]_INST_0_i_65 
       (.I0(\ctl/stat [1]),
        .I1(\ctl/stat [2]),
        .I2(\fch/ir [11]),
        .I3(\rgf/sreg/sr [5]),
        .I4(\ctl/stat [0]),
        .I5(\fch/ir [14]),
        .O(\bdatw[15]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC444444F4)) 
    \bdatw[15]_INST_0_i_66 
       (.I0(\rgf/sreg/sr [5]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [11]),
        .I3(\ctl/stat [1]),
        .I4(\ctl/stat [2]),
        .I5(\ctl/stat [0]),
        .O(\bdatw[15]_INST_0_i_66_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bdatw[15]_INST_0_i_67 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [1]),
        .I3(\fch/ir [10]),
        .O(\bdatw[15]_INST_0_i_67_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bdatw[15]_INST_0_i_68 
       (.I0(\ctl/stat [2]),
        .I1(\ctl/stat [1]),
        .O(\bdatw[15]_INST_0_i_68_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \bdatw[15]_INST_0_i_69 
       (.I0(\fch/ir [0]),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [3]),
        .I3(\ctl/stat [0]),
        .I4(\fch/ir [4]),
        .O(\bdatw[15]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[15]_INST_0_i_7 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\rgf/sreg/sr [7]),
        .I2(\fch/eir [7]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(\bdatw[15]_INST_0_i_26_n_0 ),
        .O(\bdatw[15]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatw[15]_INST_0_i_70 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [12]),
        .O(\bdatw[15]_INST_0_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatw[15]_INST_0_i_71 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [6]),
        .O(\bdatw[15]_INST_0_i_71_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \bdatw[15]_INST_0_i_72 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [6]),
        .O(\bdatw[15]_INST_0_i_72_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \bdatw[15]_INST_0_i_73 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [7]),
        .O(\bdatw[15]_INST_0_i_73_n_0 ));
  LUT3 #(
    .INIT(8'hE6)) 
    \bdatw[15]_INST_0_i_74 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [5]),
        .O(\bdatw[15]_INST_0_i_74_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatw[15]_INST_0_i_75 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [14]),
        .O(\bdatw[15]_INST_0_i_75_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[15]_INST_0_i_76 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [6]),
        .O(\bdatw[15]_INST_0_i_76_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \bdatw[15]_INST_0_i_77 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [7]),
        .O(\bdatw[15]_INST_0_i_77_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bdatw[15]_INST_0_i_78 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [10]),
        .O(\bdatw[15]_INST_0_i_78_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \bdatw[15]_INST_0_i_79 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [3]),
        .O(\bdatw[15]_INST_0_i_79_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[15]_INST_0_i_8 
       (.I0(\rgf/bank/gr00 [7]),
        .I1(\bdatw[15]_INST_0_i_27_n_0 ),
        .I2(\rgf/bank/gr04 [7]),
        .I3(\bdatw[15]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_29_n_0 ),
        .O(\bdatw[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2222600602022206)) 
    \bdatw[15]_INST_0_i_80 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [9]),
        .I5(\fch/ir [6]),
        .O(\bdatw[15]_INST_0_i_80_n_0 ));
  LUT5 #(
    .INIT(32'hF7FA7F77)) 
    \bdatw[15]_INST_0_i_81 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [4]),
        .I4(\fch/ir [3]),
        .O(\bdatw[15]_INST_0_i_81_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bdatw[15]_INST_0_i_82 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [10]),
        .O(\bdatw[15]_INST_0_i_82_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[15]_INST_0_i_9 
       (.I0(\rgf/bank/gr07 [7]),
        .I1(\bdatw[15]_INST_0_i_30_n_0 ),
        .I2(\rgf/sp_dec_0 [7]),
        .I3(\bdatw[15]_INST_0_i_31_n_0 ),
        .I4(\bdatw[15]_INST_0_i_32_n_0 ),
        .O(\bdatw[15]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[1]_INST_0 
       (.I0(bcmd[1]),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(bdatw[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[2]_INST_0 
       (.I0(bcmd[1]),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[3]_INST_0 
       (.I0(bcmd[1]),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bdatw[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[4]_INST_0 
       (.I0(bcmd[1]),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(bdatw[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[5]_INST_0 
       (.I0(bcmd[1]),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[6]_INST_0 
       (.I0(bcmd[1]),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[7]_INST_0 
       (.I0(bcmd[1]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[7]));
  LUT4 #(
    .INIT(16'h8A02)) 
    \bdatw[8]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[2]),
        .I2(\bdatw[8]_INST_0_i_1_n_0 ),
        .I3(bbus_0[0]),
        .O(bdatw[8]));
  LUT6 #(
    .INIT(64'h00000000B0BB0000)) 
    \bdatw[8]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_4_n_0 ),
        .I1(\rgf/sptr/sp [8]),
        .I2(\bdatw[13]_INST_0_i_4_n_0 ),
        .I3(\rgf/sreg/sr [8]),
        .I4(\bdatw[8]_INST_0_i_3_n_0 ),
        .I5(\bdatw[8]_INST_0_i_4_n_0 ),
        .O(\bdatw[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[8]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_24_n_0 ),
        .I1(\rgf/pcnt/pc [0]),
        .I2(\rgf/bank/gr00 [0]),
        .I3(\bdatw[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/ivec/iv [0]),
        .I5(\bdatw[15]_INST_0_i_11_n_0 ),
        .O(\bdatw[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBB0BBB0B0000BB0B)) 
    \bdatw[8]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\rgf/bank/gr01 [8]),
        .I2(\fch/eir [8]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(\bdatw[8]_INST_0_i_16_n_0 ),
        .O(\bdatw[8]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[8]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_31_n_0 ),
        .I1(\rgf/sp_dec_0 [8]),
        .I2(\bdatw[15]_INST_0_i_27_n_0 ),
        .I3(\rgf/bank/gr00 [8]),
        .O(\bdatw[8]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[8]_INST_0_i_13 
       (.I0(\rgf/bank/gr05 [8]),
        .I1(\bdatw[15]_INST_0_i_23_n_0 ),
        .I2(\rgf/ivec/iv [8]),
        .I3(\bdatw[15]_INST_0_i_11_n_0 ),
        .I4(\bdatw[8]_INST_0_i_17_n_0 ),
        .O(\bdatw[8]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \bdatw[8]_INST_0_i_14 
       (.I0(\rgf/bank/gr07 [0]),
        .I1(\bdatw[8]_INST_0_i_18_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_13_n_0 ),
        .I4(\bdatw[15]_INST_0_i_15_n_0 ),
        .I5(\bdatw[15]_INST_0_i_16_n_0 ),
        .O(\bdatw[8]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8282020282820220)) 
    \bdatw[8]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\fch/ir [1]),
        .I4(\fch/ir [0]),
        .I5(ctl_fetch_inferred_i_14_n_0),
        .O(\bdatw[8]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABABABAB5BA)) 
    \bdatw[8]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(\fch/ir [7]),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(\bdatw[11]_INST_0_i_18_n_0 ),
        .I4(\fch/ir [0]),
        .I5(\fch/ir [1]),
        .O(\bdatw[8]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[8]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_30_n_0 ),
        .I1(\rgf/bank/gr07 [8]),
        .I2(\bdatw[15]_INST_0_i_28_n_0 ),
        .I3(\rgf/bank/gr04 [8]),
        .O(\bdatw[8]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFAFFFFFFFFF)) 
    \bdatw[8]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_51_n_0 ),
        .I1(\bdatw[15]_INST_0_i_49_n_0 ),
        .I2(\bcmd[2]_INST_0_i_1_n_0 ),
        .I3(\bdatw[9]_INST_0_i_19_n_0 ),
        .I4(\bdatw[15]_INST_0_i_48_n_0 ),
        .I5(\fch/ir [1]),
        .O(\bdatw[8]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[8]_INST_0_i_2 
       (.I0(\bdatw[8]_INST_0_i_5_n_0 ),
        .I1(\bdatw[8]_INST_0_i_6_n_0 ),
        .I2(\bdatw[8]_INST_0_i_7_n_0 ),
        .I3(\bdatw[8]_INST_0_i_8_n_0 ),
        .I4(\bdatw[8]_INST_0_i_9_n_0 ),
        .I5(\bdatw[8]_INST_0_i_10_n_0 ),
        .O(bbus_0[0]));
  LUT5 #(
    .INIT(32'hA2A200A2)) 
    \bdatw[8]_INST_0_i_3 
       (.I0(\bdatw[8]_INST_0_i_11_n_0 ),
        .I1(\rgf/bank/gr03 [8]),
        .I2(\bdatw[15]_INST_0_i_21_n_0 ),
        .I3(\rgf/bank/gr02 [8]),
        .I4(\bdatw[15]_INST_0_i_20_n_0 ),
        .O(\bdatw[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \bdatw[8]_INST_0_i_4 
       (.I0(\bdatw[8]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_24_n_0 ),
        .I2(\rgf/pcnt/pc [8]),
        .I3(\bdatw[14]_INST_0_i_15_n_0 ),
        .I4(\rgf/bank/gr06 [8]),
        .I5(\bdatw[8]_INST_0_i_13_n_0 ),
        .O(\bdatw[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[8]_INST_0_i_5 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\rgf/sreg/sr [0]),
        .I2(\fch/eir [0]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\rgf/bank/gr01 [0]),
        .I5(\bdatw[15]_INST_0_i_33_n_0 ),
        .O(\bdatw[8]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[8]_INST_0_i_6 
       (.I0(\rgf/sptr/sp [0]),
        .I1(\bdatw[15]_INST_0_i_4_n_0 ),
        .O(\bdatw[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    \bdatw[8]_INST_0_i_7 
       (.I0(\rgf/bank/gr06 [0]),
        .I1(\bdatw[14]_INST_0_i_15_n_0 ),
        .I2(\bdatw[8]_INST_0_i_14_n_0 ),
        .I3(\rgf/bank/gr02 [0]),
        .I4(\bdatw[15]_INST_0_i_20_n_0 ),
        .I5(\bdatw[8]_INST_0_i_15_n_0 ),
        .O(\bdatw[8]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[8]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_28_n_0 ),
        .I1(\rgf/bank/gr04 [0]),
        .I2(\bdatw[15]_INST_0_i_23_n_0 ),
        .I3(\rgf/bank/gr05 [0]),
        .O(\bdatw[8]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[8]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_31_n_0 ),
        .I1(\rgf/sp_dec_0 [0]),
        .I2(\bdatw[15]_INST_0_i_21_n_0 ),
        .I3(\rgf/bank/gr03 [0]),
        .O(\bdatw[8]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \bdatw[9]_INST_0 
       (.I0(bcmd[1]),
        .I1(bcmd[2]),
        .I2(\bdatw[9]_INST_0_i_1_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(bdatw[9]));
  LUT6 #(
    .INIT(64'h00000000B0BB0000)) 
    \bdatw[9]_INST_0_i_1 
       (.I0(\bdatw[13]_INST_0_i_4_n_0 ),
        .I1(\rgf/sreg/sr [9]),
        .I2(\bdatw[15]_INST_0_i_4_n_0 ),
        .I3(\rgf/sptr/sp [9]),
        .I4(\bdatw[9]_INST_0_i_3_n_0 ),
        .I5(\bdatw[9]_INST_0_i_4_n_0 ),
        .O(\bdatw[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \bdatw[9]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_21_n_0 ),
        .I1(\rgf/bank/gr03 [1]),
        .I2(\bdatw[15]_INST_0_i_15_n_0 ),
        .I3(\bdatw[9]_INST_0_i_15_n_0 ),
        .I4(\rgf/pcnt/pc [1]),
        .I5(\bdatw[15]_INST_0_i_24_n_0 ),
        .O(\bdatw[9]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0000BB0B)) 
    \bdatw[9]_INST_0_i_11 
       (.I0(\bdatw[15]_INST_0_i_20_n_0 ),
        .I1(\rgf/bank/gr02 [9]),
        .I2(\fch/eir [9]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[9]_INST_0_i_16_n_0 ),
        .O(\bdatw[9]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[9]_INST_0_i_12 
       (.I0(\bdatw[15]_INST_0_i_31_n_0 ),
        .I1(\rgf/sp_dec_0 [9]),
        .I2(\bdatw[15]_INST_0_i_21_n_0 ),
        .I3(\rgf/bank/gr03 [9]),
        .O(\bdatw[9]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \bdatw[9]_INST_0_i_13 
       (.I0(\rgf/bank/gr00 [9]),
        .I1(\bdatw[15]_INST_0_i_27_n_0 ),
        .I2(\rgf/pcnt/pc [9]),
        .I3(\bdatw[15]_INST_0_i_24_n_0 ),
        .I4(\bdatw[9]_INST_0_i_17_n_0 ),
        .O(\bdatw[9]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0008003800080008)) 
    \bdatw[9]_INST_0_i_14 
       (.I0(\fch/eir [1]),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_15_n_0 ),
        .I4(\bdatw[9]_INST_0_i_18_n_0 ),
        .I5(\rgf/sp_dec_0 [1]),
        .O(\bdatw[9]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h22226666AAA9EEEE)) 
    \bdatw[9]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [2]),
        .I4(\fch/ir [0]),
        .I5(\fch/ir [1]),
        .O(\bdatw[9]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000C008888C0CC)) 
    \bdatw[9]_INST_0_i_16 
       (.I0(\fch/ir [8]),
        .I1(\bdatw[15]_INST_0_i_15_n_0 ),
        .I2(\bdatw[13]_INST_0_i_18_n_0 ),
        .I3(\bdatw[11]_INST_0_i_18_n_0 ),
        .I4(\bdatw[15]_INST_0_i_13_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[9]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[9]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\rgf/bank/gr01 [9]),
        .I2(\bdatw[14]_INST_0_i_15_n_0 ),
        .I3(\rgf/bank/gr06 [9]),
        .O(\bdatw[9]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFFFFFFF)) 
    \bdatw[9]_INST_0_i_18 
       (.I0(\bdatw[15]_INST_0_i_49_n_0 ),
        .I1(\bdatw[9]_INST_0_i_19_n_0 ),
        .I2(\fch/ir [1]),
        .I3(\bdatw[15]_INST_0_i_48_n_0 ),
        .I4(\fch/ir [2]),
        .I5(\bcmd[2]_INST_0_i_1_n_0 ),
        .O(\bdatw[9]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \bdatw[9]_INST_0_i_19 
       (.I0(\stat[0]_i_11_n_0 ),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[9]_INST_0_i_20_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ),
        .I4(fch_irq_req),
        .I5(ctl_fetch_inferred_i_2_n_0),
        .O(\bdatw[9]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatw[9]_INST_0_i_2 
       (.I0(\bdatw[9]_INST_0_i_5_n_0 ),
        .I1(\bdatw[9]_INST_0_i_6_n_0 ),
        .I2(\bdatw[9]_INST_0_i_7_n_0 ),
        .I3(\bdatw[9]_INST_0_i_8_n_0 ),
        .I4(\bdatw[9]_INST_0_i_9_n_0 ),
        .I5(\bdatw[9]_INST_0_i_10_n_0 ),
        .O(\bdatw[9]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bdatw[9]_INST_0_i_20 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [6]),
        .O(\bdatw[9]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hA2A200A2)) 
    \bdatw[9]_INST_0_i_3 
       (.I0(\bdatw[9]_INST_0_i_11_n_0 ),
        .I1(\rgf/bank/gr05 [9]),
        .I2(\bdatw[15]_INST_0_i_23_n_0 ),
        .I3(\rgf/ivec/iv [9]),
        .I4(\bdatw[15]_INST_0_i_11_n_0 ),
        .O(\bdatw[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \bdatw[9]_INST_0_i_4 
       (.I0(\bdatw[9]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_28_n_0 ),
        .I2(\rgf/bank/gr04 [9]),
        .I3(\bdatw[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/bank/gr07 [9]),
        .I5(\bdatw[9]_INST_0_i_13_n_0 ),
        .O(\bdatw[9]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0D0D000D)) 
    \bdatw[9]_INST_0_i_5 
       (.I0(\rgf/sreg/sr [1]),
        .I1(\bdatw[13]_INST_0_i_4_n_0 ),
        .I2(\bdatw[9]_INST_0_i_14_n_0 ),
        .I3(\rgf/sptr/sp [1]),
        .I4(\bdatw[15]_INST_0_i_4_n_0 ),
        .O(\bdatw[9]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[9]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_33_n_0 ),
        .I1(\rgf/bank/gr01 [1]),
        .I2(\bdatw[15]_INST_0_i_11_n_0 ),
        .I3(\rgf/ivec/iv [1]),
        .O(\bdatw[9]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[9]_INST_0_i_7 
       (.I0(\bdatw[14]_INST_0_i_15_n_0 ),
        .I1(\rgf/bank/gr06 [1]),
        .I2(\bdatw[15]_INST_0_i_28_n_0 ),
        .I3(\rgf/bank/gr04 [1]),
        .O(\bdatw[9]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[9]_INST_0_i_8 
       (.I0(\bdatw[15]_INST_0_i_30_n_0 ),
        .I1(\rgf/bank/gr07 [1]),
        .I2(\bdatw[15]_INST_0_i_23_n_0 ),
        .I3(\rgf/bank/gr05 [1]),
        .O(\bdatw[9]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bdatw[9]_INST_0_i_9 
       (.I0(\bdatw[15]_INST_0_i_27_n_0 ),
        .I1(\rgf/bank/gr00 [1]),
        .I2(\bdatw[15]_INST_0_i_20_n_0 ),
        .I3(\rgf/bank/gr02 [1]),
        .O(\bdatw[9]_INST_0_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    cbus1_carry__0_i_1
       (.I0(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bbus_0[6]));
  LUT1 #(
    .INIT(2'h1)) 
    cbus1_carry__0_i_2
       (.I0(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bbus_0[5]));
  LUT1 #(
    .INIT(2'h1)) 
    cbus1_carry__0_i_3
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(bbus_0[4]));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry__0_i_4
       (.I0(abus_0[7]),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(cbus1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__0_i_5
       (.I0(\badr[6]_INST_0_i_1_n_0 ),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(cbus1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__0_i_6
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(cbus1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__0_i_7
       (.I0(\badr[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(cbus1_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cbus1_carry__1_i_1
       (.I0(\badr[9]_INST_0_i_1_n_0 ),
        .O(abus_0[9]));
  LUT1 #(
    .INIT(2'h1)) 
    cbus1_carry__1_i_2
       (.I0(\badr[8]_INST_0_i_1_n_0 ),
        .O(abus_0[8]));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry__1_i_3
       (.I0(abus_0[11]),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .O(cbus1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry__1_i_4
       (.I0(abus_0[10]),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .O(cbus1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__1_i_5
       (.I0(\badr[9]_INST_0_i_1_n_0 ),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .O(cbus1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__1_i_6
       (.I0(\badr[8]_INST_0_i_1_n_0 ),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .O(cbus1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry__2_i_1
       (.I0(\bdatw[15]_INST_0_i_1_n_0 ),
        .I1(\badr[15]_INST_0_i_1_n_0 ),
        .O(cbus1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry__2_i_2
       (.I0(abus_0[14]),
        .I1(\bdatw[14]_INST_0_i_1_n_0 ),
        .O(cbus1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry__2_i_3
       (.I0(abus_0[13]),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .O(cbus1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry__2_i_4
       (.I0(abus_0[12]),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .O(cbus1_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cbus1_carry_i_1
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bbus_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry_i_2
       (.I0(abus_0[3]),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(cbus1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cbus1_carry_i_3
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(cbus1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry_i_4
       (.I0(abus_0[1]),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(cbus1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cbus1_carry_i_5
       (.I0(\badr[0]_INST_0_i_1_n_0 ),
        .I1(bbus_0[0]),
        .O(cbus1_carry_i_5_n_0));
  FDRE \ctl/stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ctl/stat_nx [0]),
        .Q(\ctl/stat [0]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \ctl/stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ctl/stat_nx [1]),
        .Q(\ctl/stat [1]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \ctl/stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\stat[2]_i_2_n_0 ),
        .Q(\ctl/stat [2]),
        .R(\stat[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    ctl_fetch_ext_fl_i_1
       (.I0(ctl_fetch_ext_fl_i_2_n_0),
        .I1(ctl_fetch_ext_fl_i_3_n_0),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [12]),
        .I4(\ctl/stat [1]),
        .O(ctl_fetch_ext));
  LUT5 #(
    .INIT(32'h00000002)) 
    ctl_fetch_ext_fl_i_2
       (.I0(ctl_fetch_ext_fl_i_4_n_0),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [1]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [9]),
        .O(ctl_fetch_ext_fl_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    ctl_fetch_ext_fl_i_3
       (.I0(\ctl/stat [2]),
        .I1(\fch/ir [0]),
        .I2(ctl_fetch_ext_fl_i_5_n_0),
        .I3(ctl_fetch_ext_fl_i_6_n_0),
        .I4(\ctl/stat [0]),
        .I5(\fch/ir [13]),
        .O(ctl_fetch_ext_fl_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    ctl_fetch_ext_fl_i_4
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [7]),
        .O(ctl_fetch_ext_fl_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ctl_fetch_ext_fl_i_5
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [3]),
        .O(ctl_fetch_ext_fl_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_ext_fl_i_6
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [15]),
        .O(ctl_fetch_ext_fl_i_6_n_0));
  LUT6 #(
    .INIT(64'h000D0D0D0D0D0D0D)) 
    ctl_fetch_inferred_i_1
       (.I0(ctl_fetch_inferred_i_2_n_0),
        .I1(ctl_fetch_inferred_i_3_n_0),
        .I2(ctl_fetch_inferred_i_4_n_0),
        .I3(\fch/ir [0]),
        .I4(ctl_fetch_inferred_i_5_n_0),
        .I5(ctl_fetch_inferred_i_6_n_0),
        .O(ctl_fetch));
  LUT6 #(
    .INIT(64'h7FFFFFFF00FFFFFF)) 
    ctl_fetch_inferred_i_10
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [10]),
        .O(ctl_fetch_inferred_i_10_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    ctl_fetch_inferred_i_11
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [14]),
        .O(ctl_fetch_inferred_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFD0000FFFDDFFD)) 
    ctl_fetch_inferred_i_12
       (.I0(ctl_fetch_inferred_i_18_n_0),
        .I1(ctl_fetch_inferred_i_19_n_0),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [6]),
        .I4(ctl_fetch_inferred_i_20_n_0),
        .I5(\grn[15]_i_35_n_0 ),
        .O(ctl_fetch_inferred_i_12_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    ctl_fetch_inferred_i_13
       (.I0(\ctl/stat [2]),
        .I1(\ctl/stat [1]),
        .I2(\fch/ir [1]),
        .O(ctl_fetch_inferred_i_13_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ctl_fetch_inferred_i_14
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [3]),
        .O(ctl_fetch_inferred_i_14_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    ctl_fetch_inferred_i_15
       (.I0(\rgf/sreg/sr [4]),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [11]),
        .O(ctl_fetch_inferred_i_15_n_0));
  LUT6 #(
    .INIT(64'h0000000069990000)) 
    ctl_fetch_inferred_i_16
       (.I0(\fch/ir [11]),
        .I1(\rgf/sreg/sr [5]),
        .I2(\fch/ir [12]),
        .I3(\rgf/sreg/sr [7]),
        .I4(\fch/ir [14]),
        .I5(\fch/ir [13]),
        .O(ctl_fetch_inferred_i_16_n_0));
  LUT4 #(
    .INIT(16'h4B78)) 
    ctl_fetch_inferred_i_17
       (.I0(\rgf/sreg/sr [7]),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [11]),
        .I3(\rgf/sreg/sr [6]),
        .O(ctl_fetch_inferred_i_17_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    ctl_fetch_inferred_i_18
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [10]),
        .O(ctl_fetch_inferred_i_18_n_0));
  LUT3 #(
    .INIT(8'h4F)) 
    ctl_fetch_inferred_i_19
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [3]),
        .O(ctl_fetch_inferred_i_19_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    ctl_fetch_inferred_i_2
       (.I0(\fch/ir [15]),
        .I1(\ctl/stat [0]),
        .I2(\ctl/stat [1]),
        .I3(\ctl/stat [2]),
        .O(ctl_fetch_inferred_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctl_fetch_inferred_i_20
       (.I0(\ctl/stat [0]),
        .I1(brdy),
        .O(ctl_fetch_inferred_i_20_n_0));
  LUT6 #(
    .INIT(64'hA2A2A200AAAAAAAA)) 
    ctl_fetch_inferred_i_3
       (.I0(ctl_fetch_inferred_i_7_n_0),
        .I1(ctl_fetch_inferred_i_8_n_0),
        .I2(ctl_fetch_inferred_i_9_n_0),
        .I3(ctl_fetch_inferred_i_10_n_0),
        .I4(brdy),
        .I5(ctl_fetch_inferred_i_11_n_0),
        .O(ctl_fetch_inferred_i_3_n_0));
  LUT6 #(
    .INIT(64'h404040FF40404040)) 
    ctl_fetch_inferred_i_4
       (.I0(ctl_fetch_inferred_i_12_n_0),
        .I1(\bcmd[0]_INST_0_i_6_n_0 ),
        .I2(ctl_fetch_inferred_i_11_n_0),
        .I3(\tnsn_dsp_a[7]_INST_0_i_7_n_0 ),
        .I4(ctl_fetch_inferred_i_13_n_0),
        .I5(\stat[2]_i_9_n_0 ),
        .O(ctl_fetch_inferred_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000004444444F)) 
    ctl_fetch_inferred_i_5
       (.I0(\ctl/stat [2]),
        .I1(\stat[2]_i_9_n_0 ),
        .I2(\fch_irq_lev[1]_i_7_n_0 ),
        .I3(ctl_fetch_inferred_i_14_n_0),
        .I4(\ctl/stat [1]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_7_n_0 ),
        .O(ctl_fetch_inferred_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAAAFEFFFFFFFEFF)) 
    ctl_fetch_inferred_i_6
       (.I0(\ctl/stat [2]),
        .I1(\ctl/stat [1]),
        .I2(fch_irq_req),
        .I3(irq),
        .I4(\ctl/stat [0]),
        .I5(\fch/ir [1]),
        .O(ctl_fetch_inferred_i_6_n_0));
  LUT5 #(
    .INIT(32'h33323032)) 
    ctl_fetch_inferred_i_7
       (.I0(ctl_fetch_inferred_i_15_n_0),
        .I1(ctl_fetch_inferred_i_16_n_0),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [13]),
        .I4(ctl_fetch_inferred_i_17_n_0),
        .O(ctl_fetch_inferred_i_7_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    ctl_fetch_inferred_i_8
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [8]),
        .O(ctl_fetch_inferred_i_8_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    ctl_fetch_inferred_i_9
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [4]),
        .O(ctl_fetch_inferred_i_9_n_0));
  LUT3 #(
    .INIT(8'hFB)) 
    \eir_fl[15]_i_1 
       (.I0(\fch/fch_irq_lev0 ),
        .I1(rst_n),
        .I2(ctl_fetch),
        .O(\eir_fl[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[1]_i_1 
       (.I0(irq_vec[0]),
        .I1(\fch/fch_irq_lev0 ),
        .I2(\fch/eir [1]),
        .O(\eir_fl[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[2]_i_1 
       (.I0(irq_vec[1]),
        .I1(\fch/fch_irq_lev0 ),
        .I2(\fch/eir [2]),
        .O(\eir_fl[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[3]_i_1 
       (.I0(irq_vec[2]),
        .I1(\fch/fch_irq_lev0 ),
        .I2(\fch/eir [3]),
        .O(\eir_fl[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[4]_i_1 
       (.I0(irq_vec[3]),
        .I1(\fch/fch_irq_lev0 ),
        .I2(\fch/eir [4]),
        .O(\eir_fl[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[5]_i_1 
       (.I0(irq_vec[4]),
        .I1(\fch/fch_irq_lev0 ),
        .I2(\fch/eir [5]),
        .O(\eir_fl[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \eir_fl[6]_i_1 
       (.I0(ctl_fetch),
        .I1(rst_n),
        .O(\fch/eir_fl0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \eir_fl[6]_i_2 
       (.I0(irq_vec[5]),
        .I1(\fch/fch_irq_lev0 ),
        .I2(\fch/eir [6]),
        .O(\eir_fl[6]_i_2_n_0 ));
  FDRE \fch/ctl_fetch_ext_fl_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(ctl_fetch_ext),
        .Q(\fch/ctl_fetch_ext_fl ),
        .R(\<const0> ));
  FDRE \fch/ctl_fetch_fl_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(ctl_fetch),
        .Q(\fch/ctl_fetch_fl ),
        .R(\<const0> ));
  FDRE \fch/eir_fl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/eir [0]),
        .Q(\fch/eir_fl_reg_n_0_[0] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \fch/eir_fl_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/eir [10]),
        .Q(\fch/eir_fl_reg_n_0_[10] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \fch/eir_fl_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/eir [11]),
        .Q(\fch/eir_fl_reg_n_0_[11] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \fch/eir_fl_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/eir [12]),
        .Q(\fch/eir_fl_reg_n_0_[12] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \fch/eir_fl_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/eir [13]),
        .Q(\fch/eir_fl_reg_n_0_[13] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \fch/eir_fl_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/eir [14]),
        .Q(\fch/eir_fl_reg_n_0_[14] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \fch/eir_fl_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/eir [15]),
        .Q(\fch/eir_fl_reg_n_0_[15] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \fch/eir_fl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[1]_i_1_n_0 ),
        .Q(\fch/eir_fl_reg_n_0_[1] ),
        .R(\fch/eir_fl0 ));
  FDRE \fch/eir_fl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[2]_i_1_n_0 ),
        .Q(\fch/eir_fl_reg_n_0_[2] ),
        .R(\fch/eir_fl0 ));
  FDRE \fch/eir_fl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[3]_i_1_n_0 ),
        .Q(\fch/eir_fl_reg_n_0_[3] ),
        .R(\fch/eir_fl0 ));
  FDRE \fch/eir_fl_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[4]_i_1_n_0 ),
        .Q(\fch/eir_fl_reg_n_0_[4] ),
        .R(\fch/eir_fl0 ));
  FDRE \fch/eir_fl_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[5]_i_1_n_0 ),
        .Q(\fch/eir_fl_reg_n_0_[5] ),
        .R(\fch/eir_fl0 ));
  FDRE \fch/eir_fl_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[6]_i_2_n_0 ),
        .Q(\fch/eir_fl_reg_n_0_[6] ),
        .R(\fch/eir_fl0 ));
  FDRE \fch/eir_fl_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/eir [7]),
        .Q(\fch/eir_fl_reg_n_0_[7] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \fch/eir_fl_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/eir [8]),
        .Q(\fch/eir_fl_reg_n_0_[8] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  FDRE \fch/eir_fl_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/eir [9]),
        .Q(\fch/eir_fl_reg_n_0_[9] ),
        .R(\eir_fl[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_1 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/eir_fl_reg_n_0_[15] ),
        .I2(\fch/ctl_fetch_ext_fl ),
        .I3(fdat[15]),
        .O(\fch/eir [15]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_10 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/eir_fl_reg_n_0_[6] ),
        .I2(\fch/ctl_fetch_ext_fl ),
        .I3(fdat[6]),
        .O(\fch/eir [6]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_11 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/eir_fl_reg_n_0_[5] ),
        .I2(\fch/ctl_fetch_ext_fl ),
        .I3(fdat[5]),
        .O(\fch/eir [5]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_12 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/eir_fl_reg_n_0_[4] ),
        .I2(\fch/ctl_fetch_ext_fl ),
        .I3(fdat[4]),
        .O(\fch/eir [4]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_13 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/eir_fl_reg_n_0_[3] ),
        .I2(\fch/ctl_fetch_ext_fl ),
        .I3(fdat[3]),
        .O(\fch/eir [3]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_14 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/eir_fl_reg_n_0_[2] ),
        .I2(\fch/ctl_fetch_ext_fl ),
        .I3(fdat[2]),
        .O(\fch/eir [2]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_15 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/eir_fl_reg_n_0_[1] ),
        .I2(\fch/ctl_fetch_ext_fl ),
        .I3(fdat[1]),
        .O(\fch/eir [1]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_16 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/eir_fl_reg_n_0_[0] ),
        .I2(\fch/ctl_fetch_ext_fl ),
        .I3(fdat[0]),
        .O(\fch/eir [0]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_2 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/eir_fl_reg_n_0_[14] ),
        .I2(\fch/ctl_fetch_ext_fl ),
        .I3(fdat[14]),
        .O(\fch/eir [14]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_3 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/eir_fl_reg_n_0_[13] ),
        .I2(\fch/ctl_fetch_ext_fl ),
        .I3(fdat[13]),
        .O(\fch/eir [13]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_4 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/eir_fl_reg_n_0_[12] ),
        .I2(\fch/ctl_fetch_ext_fl ),
        .I3(fdat[12]),
        .O(\fch/eir [12]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_5 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/eir_fl_reg_n_0_[11] ),
        .I2(\fch/ctl_fetch_ext_fl ),
        .I3(fdat[11]),
        .O(\fch/eir [11]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_6 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/eir_fl_reg_n_0_[10] ),
        .I2(\fch/ctl_fetch_ext_fl ),
        .I3(fdat[10]),
        .O(\fch/eir [10]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_7 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/eir_fl_reg_n_0_[9] ),
        .I2(\fch/ctl_fetch_ext_fl ),
        .I3(fdat[9]),
        .O(\fch/eir [9]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_8 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/eir_fl_reg_n_0_[8] ),
        .I2(\fch/ctl_fetch_ext_fl ),
        .I3(fdat[8]),
        .O(\fch/eir [8]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_9 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/eir_fl_reg_n_0_[7] ),
        .I2(\fch/ctl_fetch_ext_fl ),
        .I3(fdat[7]),
        .O(\fch/eir [7]));
  FDRE \fch/fch_irq_lev_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch_irq_lev[0]_i_1_n_0 ),
        .Q(fch_irq_lev[0]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/fch_irq_lev_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch_irq_lev[1]_i_1_n_0 ),
        .Q(fch_irq_lev[1]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/fch_irq_req_fl_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(fch_irq_req),
        .Q(\fch/fch_irq_req_fl ),
        .R(\<const0> ));
  FDRE \fch/ir_fl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [0]),
        .Q(\fch/ir_fl [0]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/ir_fl_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [10]),
        .Q(\fch/ir_fl [10]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/ir_fl_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [11]),
        .Q(\fch/ir_fl [11]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/ir_fl_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [12]),
        .Q(\fch/ir_fl [12]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/ir_fl_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [13]),
        .Q(\fch/ir_fl [13]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/ir_fl_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [14]),
        .Q(\fch/ir_fl [14]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/ir_fl_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [15]),
        .Q(\fch/ir_fl [15]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/ir_fl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [1]),
        .Q(\fch/ir_fl [1]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/ir_fl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [2]),
        .Q(\fch/ir_fl [2]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/ir_fl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [3]),
        .Q(\fch/ir_fl [3]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/ir_fl_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [4]),
        .Q(\fch/ir_fl [4]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/ir_fl_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [5]),
        .Q(\fch/ir_fl [5]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/ir_fl_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [6]),
        .Q(\fch/ir_fl [6]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/ir_fl_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [7]),
        .Q(\fch/ir_fl [7]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/ir_fl_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [8]),
        .Q(\fch/ir_fl [8]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \fch/ir_fl_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [9]),
        .Q(\fch/ir_fl [9]),
        .R(\stat[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_1 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/ir_fl [15]),
        .I2(\fch/ctl_fetch_fl ),
        .I3(\fch/fch_irq_req_fl ),
        .I4(fdat[15]),
        .O(\fch/ir [15]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_10 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/ir_fl [6]),
        .I2(\fch/ctl_fetch_fl ),
        .I3(\fch/fch_irq_req_fl ),
        .I4(fdat[6]),
        .O(\fch/ir [6]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_11 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/ir_fl [5]),
        .I2(\fch/ctl_fetch_fl ),
        .I3(\fch/fch_irq_req_fl ),
        .I4(fdat[5]),
        .O(\fch/ir [5]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_12 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/ir_fl [4]),
        .I2(\fch/ctl_fetch_fl ),
        .I3(\fch/fch_irq_req_fl ),
        .I4(fdat[4]),
        .O(\fch/ir [4]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_13 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/ir_fl [3]),
        .I2(\fch/ctl_fetch_fl ),
        .I3(\fch/fch_irq_req_fl ),
        .I4(fdat[3]),
        .O(\fch/ir [3]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_14 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/ir_fl [2]),
        .I2(\fch/ctl_fetch_fl ),
        .I3(\fch/fch_irq_req_fl ),
        .I4(fdat[2]),
        .O(\fch/ir [2]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_15 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/ir_fl [1]),
        .I2(\fch/ctl_fetch_fl ),
        .I3(\fch/fch_irq_req_fl ),
        .I4(fdat[1]),
        .O(\fch/ir [1]));
  LUT5 #(
    .INIT(32'hA8A8A808)) 
    \fch/ir_inferred_i_16 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/ir_fl [0]),
        .I2(\fch/ctl_fetch_fl ),
        .I3(fdat[0]),
        .I4(\fch/fch_irq_req_fl ),
        .O(\fch/ir [0]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_2 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/ir_fl [14]),
        .I2(\fch/ctl_fetch_fl ),
        .I3(\fch/fch_irq_req_fl ),
        .I4(fdat[14]),
        .O(\fch/ir [14]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_3 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/ir_fl [13]),
        .I2(\fch/ctl_fetch_fl ),
        .I3(\fch/fch_irq_req_fl ),
        .I4(fdat[13]),
        .O(\fch/ir [13]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_4 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/ir_fl [12]),
        .I2(\fch/ctl_fetch_fl ),
        .I3(\fch/fch_irq_req_fl ),
        .I4(fdat[12]),
        .O(\fch/ir [12]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_5 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/ir_fl [11]),
        .I2(\fch/ctl_fetch_fl ),
        .I3(\fch/fch_irq_req_fl ),
        .I4(fdat[11]),
        .O(\fch/ir [11]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_6 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/ir_fl [10]),
        .I2(\fch/ctl_fetch_fl ),
        .I3(\fch/fch_irq_req_fl ),
        .I4(fdat[10]),
        .O(\fch/ir [10]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_7 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/ir_fl [9]),
        .I2(\fch/ctl_fetch_fl ),
        .I3(\fch/fch_irq_req_fl ),
        .I4(fdat[9]),
        .O(\fch/ir [9]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_8 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/ir_fl [8]),
        .I2(\fch/ctl_fetch_fl ),
        .I3(\fch/fch_irq_req_fl ),
        .I4(fdat[8]),
        .O(\fch/ir [8]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_9 
       (.I0(\fch/rst_n_fl ),
        .I1(\fch/ir_fl [7]),
        .I2(\fch/ctl_fetch_fl ),
        .I3(\fch/fch_irq_req_fl ),
        .I4(fdat[7]),
        .O(\fch/ir [7]));
  FDRE \fch/rst_n_fl_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(rst_n),
        .Q(\fch/rst_n_fl ),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'hB8)) 
    \fch_irq_lev[0]_i_1 
       (.I0(irq_lev[0]),
        .I1(\fch/fch_irq_lev0 ),
        .I2(fch_irq_lev[0]),
        .O(\fch_irq_lev[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \fch_irq_lev[1]_i_1 
       (.I0(irq_lev[1]),
        .I1(\fch/fch_irq_lev0 ),
        .I2(fch_irq_lev[1]),
        .O(\fch_irq_lev[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \fch_irq_lev[1]_i_2 
       (.I0(\fch_irq_lev[1]_i_3_n_0 ),
        .I1(\fch_irq_lev[1]_i_4_n_0 ),
        .I2(\fch/ir [11]),
        .I3(\fch_irq_lev[1]_i_5_n_0 ),
        .I4(\fch_irq_lev[1]_i_6_n_0 ),
        .I5(\fch_irq_lev[1]_i_7_n_0 ),
        .O(\fch/fch_irq_lev0 ));
  LUT6 #(
    .INIT(64'h40F4000000000000)) 
    \fch_irq_lev[1]_i_3 
       (.I0(irq_lev[0]),
        .I1(\rgf/sreg/sr [2]),
        .I2(\rgf/sreg/sr [3]),
        .I3(irq_lev[1]),
        .I4(irq),
        .I5(brdy),
        .O(\fch_irq_lev[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \fch_irq_lev[1]_i_4 
       (.I0(\ctl/stat [0]),
        .I1(\ctl/stat [1]),
        .I2(\ctl/stat [2]),
        .O(\fch_irq_lev[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fch_irq_lev[1]_i_5 
       (.I0(\fch/ir [15]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [12]),
        .I3(\fch/ir [13]),
        .O(\fch_irq_lev[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \fch_irq_lev[1]_i_6 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [0]),
        .O(\fch_irq_lev[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \fch_irq_lev[1]_i_7 
       (.I0(\fch_irq_lev[1]_i_8_n_0 ),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [4]),
        .I4(\fch/ir [1]),
        .I5(\fch_irq_lev[1]_i_9_n_0 ),
        .O(\fch_irq_lev[1]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \fch_irq_lev[1]_i_8 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [5]),
        .O(\fch_irq_lev[1]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \fch_irq_lev[1]_i_9 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [9]),
        .O(\fch_irq_lev[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h2020A220)) 
    fch_irq_req_fl_i_1
       (.I0(irq),
        .I1(irq_lev[1]),
        .I2(\rgf/sreg/sr [3]),
        .I3(\rgf/sreg/sr [2]),
        .I4(irq_lev[0]),
        .O(fch_irq_req));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \grn[0]_i_1 
       (.I0(\grn[0]_i_2_n_0 ),
        .I1(\grn[4]_i_3_n_0 ),
        .I2(\alu/art/add/tout__1_carry_n_7 ),
        .I3(\grn[0]_i_3_n_0 ),
        .I4(\grn[0]_i_4_n_0 ),
        .O(cbus[0]));
  LUT6 #(
    .INIT(64'h50505F5FCFC0CFC0)) 
    \grn[0]_i_10 
       (.I0(abus_0[1]),
        .I1(\badr[0]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(\badr[2]_INST_0_i_1_n_0 ),
        .I4(abus_0[3]),
        .I5(bbus_0[0]),
        .O(\grn[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFCFCFA0AFC0C0)) 
    \grn[0]_i_11 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\badr[4]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(abus_0[7]),
        .I4(bbus_0[0]),
        .I5(\badr[6]_INST_0_i_1_n_0 ),
        .O(\grn[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \grn[0]_i_12 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\rgf/sreg/sr [6]),
        .O(\grn[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h30303F3F5F505F50)) 
    \grn[0]_i_13 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\badr[4]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(abus_0[3]),
        .I4(\badr[2]_INST_0_i_1_n_0 ),
        .I5(bbus_0[0]),
        .O(\grn[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \grn[0]_i_2 
       (.I0(\grn[0]_i_5_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\grn[0]_i_6_n_0 ),
        .I3(\grn[6]_i_12_n_0 ),
        .O(\grn[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \grn[0]_i_3 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .I1(tnsn_dsp_c[0]),
        .I2(\alu/data0 [0]),
        .I3(\grn[15]_i_9_n_0 ),
        .I4(\grn[0]_i_7_n_0 ),
        .O(\grn[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \grn[0]_i_4 
       (.I0(\grn[0]_i_8_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[0]_i_9_n_0 ),
        .O(\grn[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF1D001DFF1DFF)) 
    \grn[0]_i_5 
       (.I0(\grn[0]_i_10_n_0 ),
        .I1(\grn[6]_i_14_n_0 ),
        .I2(\grn[0]_i_11_n_0 ),
        .I3(\sr[6]_i_6_n_0 ),
        .I4(\grn[0]_i_12_n_0 ),
        .I5(\tnsn_dsp_a[8]_INST_0_i_2_n_0 ),
        .O(\grn[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h101011001010FFEE)) 
    \grn[0]_i_6 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\grn[0]_i_13_n_0 ),
        .I3(\grn[4]_i_22_n_0 ),
        .I4(\grn[6]_i_14_n_0 ),
        .I5(\grn[4]_i_19_n_0 ),
        .O(\grn[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8A888088)) 
    \grn[0]_i_7 
       (.I0(\mem/read_cyc [2]),
        .I1(bdatr[0]),
        .I2(\mem/read_cyc [0]),
        .I3(\mem/read_cyc [1]),
        .I4(bdatr[8]),
        .O(\grn[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA3A33F30FFFF)) 
    \grn[0]_i_8 
       (.I0(\badr[0]_INST_0_i_1_n_0 ),
        .I1(bbus_0[0]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\badr[8]_INST_0_i_1_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(\grn[15]_i_30_n_0 ),
        .O(\grn[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h848C848C0FF00800)) 
    \grn[0]_i_9 
       (.I0(bbus_0[0]),
        .I1(\grn[4]_i_10_n_0 ),
        .I2(\badr[0]_INST_0_i_1_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[15]_i_27_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\grn[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \grn[10]_i_1 
       (.I0(\grn[10]_i_2_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[10]_i_3_n_0 ),
        .I3(\grn[10]_i_4_n_0 ),
        .O(cbus[10]));
  LUT6 #(
    .INIT(64'hFFFC88FFFFFCBBFF)) 
    \grn[10]_i_2 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\badr[2]_INST_0_i_1_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(abus_0[10]),
        .O(\grn[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \grn[10]_i_3 
       (.I0(\grn[14]_i_8_n_0 ),
        .I1(bdatr[10]),
        .I2(\alu/data0 [10]),
        .I3(\grn[15]_i_9_n_0 ),
        .I4(tnsn_dsp_c[10]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(\grn[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0800AAAA)) 
    \grn[10]_i_4 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(abus_0[10]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .O(\grn[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \grn[11]_i_1 
       (.I0(\grn[11]_i_2_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[15]_i_9_n_0 ),
        .I3(\alu/data0 [11]),
        .I4(\grn[11]_i_3_n_0 ),
        .I5(\grn[11]_i_4_n_0 ),
        .O(cbus[11]));
  LUT6 #(
    .INIT(64'hFAFFFAFFF30FF3FF)) 
    \grn[11]_i_2 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(abus_0[11]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(abus_0[3]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \grn[11]_i_3 
       (.I0(\mem/read_cyc [1]),
        .I1(\mem/read_cyc [2]),
        .I2(bdatr[11]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .I4(tnsn_dsp_c[11]),
        .O(\grn[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0800AAAA)) 
    \grn[11]_i_4 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(abus_0[11]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .O(\grn[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \grn[12]_i_1 
       (.I0(\grn[12]_i_2_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[12]_i_3_n_0 ),
        .I3(\grn[12]_i_4_n_0 ),
        .O(cbus[12]));
  LUT6 #(
    .INIT(64'hFF8BFFFFFF8BCCFF)) 
    \grn[12]_i_2 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(abus_0[12]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I4(\grn[15]_i_30_n_0 ),
        .I5(\badr[4]_INST_0_i_1_n_0 ),
        .O(\grn[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \grn[12]_i_3 
       (.I0(\grn[14]_i_8_n_0 ),
        .I1(bdatr[12]),
        .I2(\alu/data0 [12]),
        .I3(\grn[15]_i_9_n_0 ),
        .I4(tnsn_dsp_c[12]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(\grn[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0800AAAA)) 
    \grn[12]_i_4 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(abus_0[12]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .O(\grn[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \grn[13]_i_1 
       (.I0(\grn[13]_i_2_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[15]_i_9_n_0 ),
        .I3(\alu/data0 [13]),
        .I4(\grn[13]_i_3_n_0 ),
        .I5(\grn[13]_i_4_n_0 ),
        .O(cbus[13]));
  LUT6 #(
    .INIT(64'hFF8BFFFFFF8BCCFF)) 
    \grn[13]_i_2 
       (.I0(\bdatw[13]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(abus_0[13]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I4(\grn[15]_i_30_n_0 ),
        .I5(\badr[5]_INST_0_i_1_n_0 ),
        .O(\grn[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \grn[13]_i_3 
       (.I0(\mem/read_cyc [1]),
        .I1(\mem/read_cyc [2]),
        .I2(bdatr[13]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .I4(tnsn_dsp_c[13]),
        .O(\grn[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0800AAAA)) 
    \grn[13]_i_4 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(abus_0[13]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .O(\grn[13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \grn[14]_i_1 
       (.I0(\grn[14]_i_2_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[14]_i_4_n_0 ),
        .I3(\grn[14]_i_5_n_0 ),
        .O(cbus[14]));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \grn[14]_i_10 
       (.I0(\fch/ir [10]),
        .I1(\grn[14]_i_12_n_0 ),
        .I2(\fch/ir [11]),
        .I3(\ctl/stat [1]),
        .I4(\fch/ir [1]),
        .I5(\fch/ir [6]),
        .O(\grn[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBEEFFFFBBEEFFC3)) 
    \grn[14]_i_11 
       (.I0(\grn[14]_i_13_n_0 ),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [7]),
        .I5(\ctl/stat [0]),
        .O(\grn[14]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[14]_i_12 
       (.I0(\fch/ir [0]),
        .I1(\fch/ir [8]),
        .O(\grn[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFFFFBBBBBB8B)) 
    \grn[14]_i_13 
       (.I0(\grn[14]_i_14_n_0 ),
        .I1(\fch/ir [6]),
        .I2(\grn[15]_i_42_n_0 ),
        .I3(\grn[15]_i_52_n_0 ),
        .I4(\fch/ir [3]),
        .I5(\ctl/stat [0]),
        .O(\grn[14]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hBCBCBCFC)) 
    \grn[14]_i_14 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [4]),
        .I4(\fch/ir [3]),
        .O(\grn[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFC88FFFFFCBBFF)) 
    \grn[14]_i_2 
       (.I0(\bdatw[14]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\badr[6]_INST_0_i_1_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(abus_0[14]),
        .O(\grn[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \grn[14]_i_3 
       (.I0(\ctl/stat [2]),
        .I1(\grn[14]_i_6_n_0 ),
        .I2(\fch/ir [15]),
        .I3(\grn[14]_i_7_n_0 ),
        .O(\grn[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \grn[14]_i_4 
       (.I0(\grn[14]_i_8_n_0 ),
        .I1(bdatr[14]),
        .I2(\alu/data0 [14]),
        .I3(\grn[15]_i_9_n_0 ),
        .I4(tnsn_dsp_c[14]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(\grn[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0800AAAA)) 
    \grn[14]_i_5 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(abus_0[14]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .O(\grn[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F7F7F700F7F7)) 
    \grn[14]_i_6 
       (.I0(\grn[14]_i_9_n_0 ),
        .I1(\grn[14]_i_10_n_0 ),
        .I2(\grn[15]_i_21_n_0 ),
        .I3(\grn[14]_i_11_n_0 ),
        .I4(ctl_fetch_inferred_i_11_n_0),
        .I5(\ctl/stat [1]),
        .O(\grn[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF99D5)) 
    \grn[14]_i_7 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [13]),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [12]),
        .I4(\ctl/stat [0]),
        .I5(\ctl/stat [1]),
        .O(\grn[14]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \grn[14]_i_8 
       (.I0(\mem/read_cyc [1]),
        .I1(\mem/read_cyc [2]),
        .O(\grn[14]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \grn[14]_i_9 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [7]),
        .I2(\ctl/stat [0]),
        .O(\grn[14]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \grn[15]_i_1 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_5_n_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .I4(\grn[15]_i_7_n_0 ),
        .O(\grn[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \grn[15]_i_10 
       (.I0(\mem/read_cyc [1]),
        .I1(\mem/read_cyc [2]),
        .I2(bdatr[15]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .I4(tnsn_dsp_c[15]),
        .O(\grn[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0305000000000000)) 
    \grn[15]_i_11 
       (.I0(\badr[15]_INST_0_i_1_n_0 ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[14]_i_3_n_0 ),
        .I5(\grn[15]_i_30_n_0 ),
        .O(\grn[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h45FF4500CFFFCFFF)) 
    \grn[15]_i_12 
       (.I0(\grn[15]_i_31_n_0 ),
        .I1(\grn[15]_i_32_n_0 ),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [11]),
        .I4(\grn[15]_i_33_n_0 ),
        .I5(\fch/ir [4]),
        .O(\grn[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAA08080808080808)) 
    \grn[15]_i_13 
       (.I0(\grn[15]_i_17_n_0 ),
        .I1(\fch/ir [10]),
        .I2(\grn[15]_i_34_n_0 ),
        .I3(\fch/ir [4]),
        .I4(\grn[15]_i_35_n_0 ),
        .I5(brdy),
        .O(\grn[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hD575D555FFFFFFFF)) 
    \grn[15]_i_14 
       (.I0(\fch_irq_lev[1]_i_4_n_0 ),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [14]),
        .I4(\fch/ir [11]),
        .I5(\fch/ir [15]),
        .O(\grn[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88808080AA80A280)) 
    \grn[15]_i_15 
       (.I0(\bcmd[2]_INST_0_i_1_n_0 ),
        .I1(\fch/ir [11]),
        .I2(\grn[15]_i_36_n_0 ),
        .I3(\fch/ir [5]),
        .I4(\grn[15]_i_31_n_0 ),
        .I5(\grn[15]_i_33_n_0 ),
        .O(\grn[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h8000500000005000)) 
    \grn[15]_i_16 
       (.I0(\fch/ir [10]),
        .I1(\bdatw[15]_INST_0_i_58_n_0 ),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [6]),
        .I5(\fch/ir [7]),
        .O(\grn[15]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \grn[15]_i_17 
       (.I0(ctl_fetch_inferred_i_11_n_0),
        .I1(\ctl/stat [0]),
        .I2(\fch/ir [15]),
        .I3(\ctl/stat [1]),
        .I4(\ctl/stat [2]),
        .O(\grn[15]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \grn[15]_i_18 
       (.I0(\fch/ir [5]),
        .I1(brdy),
        .O(\grn[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EECECECE)) 
    \grn[15]_i_19 
       (.I0(\grn[15]_i_37_n_0 ),
        .I1(\fch/ir [15]),
        .I2(\ctl/stat [0]),
        .I3(brdy),
        .I4(\fch/ir [11]),
        .I5(\grn[15]_i_38_n_0 ),
        .O(\grn[15]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \grn[15]_i_1__0 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\grn[15]_i_5_n_0 ),
        .I4(\grn[15]_i_7_n_0 ),
        .O(\grn[15]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \grn[15]_i_1__1 
       (.I0(\grn[15]_i_4_n_0 ),
        .I1(\grn[15]_i_3_n_0 ),
        .I2(\grn[15]_i_5_n_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .I4(\grn[15]_i_7_n_0 ),
        .O(\grn[15]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \grn[15]_i_1__2 
       (.I0(\grn[15]_i_4_n_0 ),
        .I1(\grn[15]_i_3_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\grn[15]_i_5_n_0 ),
        .I4(\grn[15]_i_7_n_0 ),
        .O(\grn[15]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \grn[15]_i_1__3 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\grn[15]_i_5_n_0 ),
        .I4(\grn[15]_i_7_n_0 ),
        .O(\grn[15]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \grn[15]_i_1__4 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_5_n_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .I4(\grn[15]_i_7_n_0 ),
        .O(\grn[15]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \grn[15]_i_1__5 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_5_n_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .I4(\grn[15]_i_7_n_0 ),
        .O(\rgf/bank/grn1 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \grn[15]_i_1__6 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\grn[15]_i_5_n_0 ),
        .I4(\grn[15]_i_7_n_0 ),
        .O(\grn[15]_i_1__6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \grn[15]_i_2 
       (.I0(\grn[15]_i_8_n_0 ),
        .I1(\grn[15]_i_9_n_0 ),
        .I2(\alu/data0 [15]),
        .I3(\grn[15]_i_10_n_0 ),
        .I4(\grn[15]_i_11_n_0 ),
        .O(cbus[15]));
  LUT6 #(
    .INIT(64'hF0C0FECEFECEFECE)) 
    \grn[15]_i_20 
       (.I0(\grn[15]_i_39_n_0 ),
        .I1(\fch/ir [15]),
        .I2(\ctl/stat [0]),
        .I3(\grn[15]_i_40_n_0 ),
        .I4(\grn[15]_i_41_n_0 ),
        .I5(\fch/ir [8]),
        .O(\grn[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \grn[15]_i_21 
       (.I0(\grn[15]_i_42_n_0 ),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [14]),
        .I4(\fch/ir [12]),
        .I5(\fch/ir [13]),
        .O(\grn[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \grn[15]_i_22 
       (.I0(\grn[15]_i_43_n_0 ),
        .I1(\fch/ir [15]),
        .I2(\ctl/stat [0]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [8]),
        .I5(\grn[15]_i_44_n_0 ),
        .O(\grn[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \grn[15]_i_23 
       (.I0(\fch/ir [15]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_17_n_0 ),
        .I4(\grn[15]_i_45_n_0 ),
        .I5(\ctl/stat [0]),
        .O(\grn[15]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    \grn[15]_i_24 
       (.I0(\fch/ir [14]),
        .I1(\ctl/stat [0]),
        .I2(\fch/ir [15]),
        .I3(\fch/ir [13]),
        .I4(\fch/ir [12]),
        .O(\grn[15]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \grn[15]_i_25 
       (.I0(\ctl/stat [0]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [15]),
        .O(\grn[15]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \grn[15]_i_26 
       (.I0(\grn[15]_i_46_n_0 ),
        .I1(\grn[15]_i_47_n_0 ),
        .I2(\fch/ir [15]),
        .I3(\fch/ir [13]),
        .O(\grn[15]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[15]_i_27 
       (.I0(\grn[14]_i_3_n_0 ),
        .I1(\grn[15]_i_30_n_0 ),
        .O(\grn[15]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \grn[15]_i_28 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\grn[15]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h0B0B000B)) 
    \grn[15]_i_3 
       (.I0(\grn[15]_i_12_n_0 ),
        .I1(\bcmd[2]_INST_0_i_1_n_0 ),
        .I2(\grn[15]_i_13_n_0 ),
        .I3(\fch/ir [9]),
        .I4(\grn[15]_i_14_n_0 ),
        .O(\grn[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AB00FF00ABAB)) 
    \grn[15]_i_30 
       (.I0(\grn[15]_i_48_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_5_n_0 ),
        .I2(\grn[15]_i_49_n_0 ),
        .I3(\grn[15]_i_50_n_0 ),
        .I4(\fch/ir [15]),
        .I5(\ctl/stat [1]),
        .O(\grn[15]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h001F)) 
    \grn[15]_i_31 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [10]),
        .O(\grn[15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFECE00000000)) 
    \grn[15]_i_32 
       (.I0(\grn[15]_i_51_n_0 ),
        .I1(\grn[15]_i_52_n_0 ),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [5]),
        .I4(\grn[15]_i_53_n_0 ),
        .I5(\grn[15]_i_54_n_0 ),
        .O(\grn[15]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hFF6EFFFF)) 
    \grn[15]_i_33 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [10]),
        .O(\grn[15]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \grn[15]_i_34 
       (.I0(\bdatw[15]_INST_0_i_71_n_0 ),
        .I1(\grn[15]_i_52_n_0 ),
        .I2(\fch/ir [5]),
        .I3(brdy),
        .I4(\fch/ir [1]),
        .I5(\fch/ir [3]),
        .O(\grn[15]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \grn[15]_i_35 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [8]),
        .O(\grn[15]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h8888888A88888888)) 
    \grn[15]_i_36 
       (.I0(\fch/ir [10]),
        .I1(\grn[15]_i_55_n_0 ),
        .I2(\bdatw[15]_INST_0_i_59_n_0 ),
        .I3(\fch/ir [7]),
        .I4(\grn[15]_i_52_n_0 ),
        .I5(\grn[15]_i_56_n_0 ),
        .O(\grn[15]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444454444)) 
    \grn[15]_i_37 
       (.I0(\bdatw[15]_INST_0_i_46_n_0 ),
        .I1(\grn[15]_i_57_n_0 ),
        .I2(\grn[15]_i_58_n_0 ),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [10]),
        .I5(\ctl/stat [0]),
        .O(\grn[15]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h5155111115115111)) 
    \grn[15]_i_38 
       (.I0(\bcmd[0]_INST_0_i_6_n_0 ),
        .I1(\fch_irq_lev[1]_i_4_n_0 ),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [14]),
        .I5(\fch/ir [12]),
        .O(\grn[15]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA8A808A8A)) 
    \grn[15]_i_39 
       (.I0(ctl_fetch_inferred_i_7_n_0),
        .I1(\grn[15]_i_59_n_0 ),
        .I2(\fch/ir [11]),
        .I3(\grn[15]_i_33_n_0 ),
        .I4(\fch/ir [3]),
        .I5(\bdatw[15]_INST_0_i_46_n_0 ),
        .O(\grn[15]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h5151515100515151)) 
    \grn[15]_i_4 
       (.I0(\grn[15]_i_15_n_0 ),
        .I1(\fch/ir [10]),
        .I2(\grn[15]_i_14_n_0 ),
        .I3(\grn[15]_i_16_n_0 ),
        .I4(\grn[15]_i_17_n_0 ),
        .I5(\grn[15]_i_18_n_0 ),
        .O(\grn[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00F7F7F7F7F7F7F7)) 
    \grn[15]_i_40 
       (.I0(\fch/ir [3]),
        .I1(ctl_fetch_inferred_i_11_n_0),
        .I2(\grn[15]_i_60_n_0 ),
        .I3(brdy),
        .I4(\bdatw[10]_INST_0_i_18_n_0 ),
        .I5(\badr[15]_INST_0_i_39_n_0 ),
        .O(\grn[15]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h0AAAA2AA)) 
    \grn[15]_i_41 
       (.I0(\fch/ir [15]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [13]),
        .I4(\fch/ir [12]),
        .O(\grn[15]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \grn[15]_i_42 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [5]),
        .O(\grn[15]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \grn[15]_i_43 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [9]),
        .O(\grn[15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF3B)) 
    \grn[15]_i_44 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [0]),
        .I2(brdy),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [10]),
        .I5(\ctl/stat [2]),
        .O(\grn[15]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \grn[15]_i_45 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [14]),
        .O(\grn[15]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8BBBBBBBB)) 
    \grn[15]_i_46 
       (.I0(\grn[15]_i_61_n_0 ),
        .I1(\fch/ir [8]),
        .I2(\ctl/stat [0]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [9]),
        .I5(\fch/ir [10]),
        .O(\grn[15]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hBCFC8CFCFC00CCFC)) 
    \grn[15]_i_47 
       (.I0(\grn[15]_i_62_n_0 ),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [9]),
        .I5(\fch/ir [10]),
        .O(\grn[15]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h8088808080808080)) 
    \grn[15]_i_48 
       (.I0(\stat[0]_i_12_n_0 ),
        .I1(ctl_fetch_inferred_i_11_n_0),
        .I2(\grn[15]_i_63_n_0 ),
        .I3(\fch/ir [8]),
        .I4(\grn[15]_i_64_n_0 ),
        .I5(\fch/ir [6]),
        .O(\grn[15]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hE0FF0000E0FFE0FF)) 
    \grn[15]_i_49 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [7]),
        .I3(\grn[15]_i_65_n_0 ),
        .I4(\grn[15]_i_66_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_4_n_0 ),
        .O(\grn[15]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'hF2FF)) 
    \grn[15]_i_5 
       (.I0(\rgf/sreg/sr [1]),
        .I1(\rgf/sreg/sr [8]),
        .I2(\rgf/sreg/sr [0]),
        .I3(\grn[15]_i_19_n_0 ),
        .O(\grn[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001FA7)) 
    \grn[15]_i_50 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [14]),
        .I4(\ctl/stat [0]),
        .I5(\bcmd[2]_INST_0_i_2_n_0 ),
        .O(\grn[15]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFEFF)) 
    \grn[15]_i_51 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [4]),
        .I3(\fch/ir [1]),
        .I4(\fch/ir [6]),
        .O(\grn[15]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \grn[15]_i_52 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [9]),
        .O(\grn[15]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \grn[15]_i_53 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [6]),
        .O(\grn[15]_i_53_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \grn[15]_i_54 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [7]),
        .O(\grn[15]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h4000000022222222)) 
    \grn[15]_i_55 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [2]),
        .I4(\fch/ir [6]),
        .I5(\fch/ir [7]),
        .O(\grn[15]_i_55_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \grn[15]_i_56 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [5]),
        .O(\grn[15]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4F004400)) 
    \grn[15]_i_57 
       (.I0(\fch/ir [10]),
        .I1(\grn[15]_i_67_n_0 ),
        .I2(\ctl/stat [0]),
        .I3(\fch/ir [11]),
        .I4(\grn[15]_i_68_n_0 ),
        .I5(\grn[15]_i_69_n_0 ),
        .O(\grn[15]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'hD0FAF0FA)) 
    \grn[15]_i_58 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [11]),
        .I4(\grn[15]_i_56_n_0 ),
        .O(\grn[15]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000E0FFE0FF)) 
    \grn[15]_i_59 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [3]),
        .I4(\grn[15]_i_70_n_0 ),
        .I5(\fch/ir [10]),
        .O(\grn[15]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hFEC2FEFEC2C2C2C2)) 
    \grn[15]_i_6 
       (.I0(\grn[15]_i_20_n_0 ),
        .I1(\ctl/stat [2]),
        .I2(\ctl/stat [1]),
        .I3(\grn[15]_i_21_n_0 ),
        .I4(\grn[15]_i_22_n_0 ),
        .I5(\grn[15]_i_23_n_0 ),
        .O(\grn[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h04CC44CC55FF55FF)) 
    \grn[15]_i_60 
       (.I0(\grn[15]_i_35_n_0 ),
        .I1(ctl_fetch_inferred_i_9_n_0),
        .I2(\fch/ir [0]),
        .I3(brdy),
        .I4(\grn[15]_i_71_n_0 ),
        .I5(ctl_fetch_inferred_i_18_n_0),
        .O(\grn[15]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h5FFDFFFDD7FDF7FD)) 
    \grn[15]_i_61 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [10]),
        .I2(\ctl/stat [0]),
        .I3(\fch/ir [9]),
        .I4(brdy),
        .I5(\fch/ir [5]),
        .O(\grn[15]_i_61_n_0 ));
  LUT3 #(
    .INIT(8'hC7)) 
    \grn[15]_i_62 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [4]),
        .O(\grn[15]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h0000100010000010)) 
    \grn[15]_i_63 
       (.I0(\grn[15]_i_52_n_0 ),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [5]),
        .I5(\fch/ir [4]),
        .O(\grn[15]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[15]_i_64 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [10]),
        .O(\grn[15]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grn[15]_i_65 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [13]),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [12]),
        .I4(\ctl/stat [0]),
        .I5(\ctl/stat [2]),
        .O(\grn[15]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \grn[15]_i_66 
       (.I0(\ctl/stat [0]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [1]),
        .I3(\fch/ir [14]),
        .I4(\fch/ir [13]),
        .I5(\grn[15]_i_72_n_0 ),
        .O(\grn[15]_i_66_n_0 ));
  LUT5 #(
    .INIT(32'h40433303)) 
    \grn[15]_i_67 
       (.I0(\fch/ir [6]),
        .I1(\ctl/stat [0]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [9]),
        .O(\grn[15]_i_67_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \grn[15]_i_68 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [6]),
        .O(\grn[15]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h2000200000002000)) 
    \grn[15]_i_69 
       (.I0(\grn[15]_i_73_n_0 ),
        .I1(\bdatw[15]_INST_0_i_71_n_0 ),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [10]),
        .I4(\fch/ir [11]),
        .I5(\fch/ir [9]),
        .O(\grn[15]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h0004444444044444)) 
    \grn[15]_i_7 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(\grn[15]_i_24_n_0 ),
        .I2(\grn[15]_i_25_n_0 ),
        .I3(\fch/ir [12]),
        .I4(\fch/ir [14]),
        .I5(\grn[15]_i_26_n_0 ),
        .O(\grn[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF5FDD)) 
    \grn[15]_i_70 
       (.I0(ctl_fetch_inferred_i_8_n_0),
        .I1(ctl_fetch_ext_fl_i_5_n_0),
        .I2(\fch/ir [0]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [5]),
        .I5(\grn[15]_i_74_n_0 ),
        .O(\grn[15]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[15]_i_71 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [6]),
        .O(\grn[15]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \grn[15]_i_72 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [12]),
        .O(\grn[15]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h33333B3BF3333B3B)) 
    \grn[15]_i_73 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [3]),
        .I4(\ctl/stat [0]),
        .I5(\fch/ir [4]),
        .O(\grn[15]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF00800000)) 
    \grn[15]_i_74 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [0]),
        .I2(\grn[15]_i_56_n_0 ),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [9]),
        .I5(\fch/ir [3]),
        .O(\grn[15]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h0020AAAAAAAAAAAA)) 
    \grn[15]_i_8 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_1_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .I5(\tnsn_dsp_a[8]_INST_0_i_2_n_0 ),
        .O(\grn[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \grn[15]_i_9 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\tnsn_dsp_a[8]_INST_0_i_1_n_0 ),
        .I3(\grn_reg[15]_i_29_n_0 ),
        .I4(\grn[15]_i_30_n_0 ),
        .O(\grn[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBAAA)) 
    \grn[1]_i_1 
       (.I0(\grn[1]_i_2_n_0 ),
        .I1(\mem/read_cyc [1]),
        .I2(\mem/read_cyc [2]),
        .I3(bdatr[1]),
        .I4(\grn[1]_i_3_n_0 ),
        .I5(\grn[1]_i_4_n_0 ),
        .O(cbus[1]));
  LUT6 #(
    .INIT(64'h40A05060000010A0)) 
    \grn[1]_i_10 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\grn[15]_i_30_n_0 ),
        .I3(\grn[14]_i_3_n_0 ),
        .I4(\bdatw[9]_INST_0_i_2_n_0 ),
        .I5(abus_0[1]),
        .O(\grn[1]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[1]_i_11 
       (.I0(\sr[4]_i_16_n_0 ),
        .I1(\sr[4]_i_17_n_0 ),
        .O(\grn[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF77747774)) 
    \grn[1]_i_12 
       (.I0(\grn[4]_i_16_n_0 ),
        .I1(\grn[4]_i_15_n_0 ),
        .I2(\grn[1]_i_19_n_0 ),
        .I3(\grn[1]_i_20_n_0 ),
        .I4(\grn[5]_i_14_n_0 ),
        .I5(\grn[6]_i_14_n_0 ),
        .O(\grn[1]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \grn[1]_i_13 
       (.I0(abus_0[7]),
        .I1(\grn[4]_i_15_n_0 ),
        .I2(\sr[6]_i_14_n_0 ),
        .I3(\grn[6]_i_14_n_0 ),
        .I4(\grn[1]_i_21_n_0 ),
        .O(\grn[1]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \grn[1]_i_14 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\grn[15]_i_30_n_0 ),
        .O(\grn[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0EAEA)) 
    \grn[1]_i_15 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\grn[6]_i_15_n_0 ),
        .I2(\grn[6]_i_14_n_0 ),
        .I3(\grn[7]_i_14_n_0 ),
        .I4(\grn[4]_i_15_n_0 ),
        .I5(\sr[6]_i_9_n_0 ),
        .O(\grn[1]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \grn[1]_i_16 
       (.I0(\grn[6]_i_14_n_0 ),
        .I1(\grn[5]_i_16_n_0 ),
        .O(\grn[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h8BBB8BBB8BBB8B88)) 
    \grn[1]_i_17 
       (.I0(\grn[5]_i_15_n_0 ),
        .I1(\grn[6]_i_14_n_0 ),
        .I2(\grn[4]_i_16_n_0 ),
        .I3(\grn[4]_i_15_n_0 ),
        .I4(\grn[1]_i_20_n_0 ),
        .I5(\grn[1]_i_19_n_0 ),
        .O(\grn[1]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \grn[1]_i_18 
       (.I0(\mem/read_cyc [2]),
        .I1(\mem/read_cyc [1]),
        .O(\grn[1]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[1]_i_19 
       (.I0(abus_0[3]),
        .I1(bbus_0[0]),
        .O(\grn[1]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h0E0E0E00)) 
    \grn[1]_i_2 
       (.I0(\grn[1]_i_5_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\grn[1]_i_6_n_0 ),
        .I3(\tnsn_dsp_a[8]_INST_0_i_1_n_0 ),
        .I4(\grn[1]_i_7_n_0 ),
        .O(\grn[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[1]_i_20 
       (.I0(bbus_0[0]),
        .I1(\badr[4]_INST_0_i_1_n_0 ),
        .O(\grn[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h505FCFCF505FC0C0)) 
    \grn[1]_i_21 
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(abus_0[1]),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(\badr[4]_INST_0_i_1_n_0 ),
        .I4(bbus_0[0]),
        .I5(abus_0[3]),
        .O(\grn[1]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \grn[1]_i_3 
       (.I0(\alu/data0 [1]),
        .I1(\grn[15]_i_9_n_0 ),
        .I2(\alu/art/add/tout__1_carry_n_6 ),
        .I3(\grn[4]_i_3_n_0 ),
        .I4(\grn[1]_i_8_n_0 ),
        .O(\grn[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \grn[1]_i_4 
       (.I0(\grn[1]_i_9_n_0 ),
        .I1(\grn[1]_i_10_n_0 ),
        .O(\grn[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3737373434343734)) 
    \grn[1]_i_5 
       (.I0(\grn[1]_i_11_n_0 ),
        .I1(\grn[3]_i_15_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\grn[1]_i_12_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(\grn[1]_i_13_n_0 ),
        .O(\grn[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEBAAAAAFEBAEEEE)) 
    \grn[1]_i_6 
       (.I0(\grn[1]_i_14_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\grn[1]_i_15_n_0 ),
        .I3(\grn[1]_i_16_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .I5(\grn[1]_i_17_n_0 ),
        .O(\grn[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[1]_i_7 
       (.I0(\grn[14]_i_3_n_0 ),
        .I1(\grn[15]_i_30_n_0 ),
        .O(\grn[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \grn[1]_i_8 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .I1(tnsn_dsp_c[1]),
        .I2(\grn[1]_i_18_n_0 ),
        .I3(bdatr[1]),
        .I4(\mem/read_cyc [0]),
        .I5(bdatr[9]),
        .O(\grn[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00820A82A082AA82)) 
    \grn[1]_i_9 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(abus_0[1]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I4(\badr[9]_INST_0_i_1_n_0 ),
        .I5(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\grn[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \grn[2]_i_1 
       (.I0(\grn[2]_i_2_n_0 ),
        .I1(\grn[2]_i_3_n_0 ),
        .I2(tnsn_dsp_c[2]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .I4(\grn[2]_i_4_n_0 ),
        .I5(\grn[2]_i_5_n_0 ),
        .O(cbus[2]));
  LUT6 #(
    .INIT(64'hFFC0B8FFFFF3B8FF)) 
    \grn[2]_i_10 
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(abus_0[10]),
        .O(\grn[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h484C484C0FF00400)) 
    \grn[2]_i_11 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\grn[4]_i_10_n_0 ),
        .I2(\badr[2]_INST_0_i_1_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[15]_i_27_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\grn[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2EFF)) 
    \grn[2]_i_12 
       (.I0(\badr[6]_INST_0_i_1_n_0 ),
        .I1(bbus_0[0]),
        .I2(abus_0[7]),
        .I3(\grn[4]_i_15_n_0 ),
        .O(\grn[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h3F30AFAF3F30A0A0)) 
    \grn[2]_i_13 
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(abus_0[3]),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(\badr[5]_INST_0_i_1_n_0 ),
        .I4(bbus_0[0]),
        .I5(\badr[4]_INST_0_i_1_n_0 ),
        .O(\grn[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h30303F3FA0AFA0AF)) 
    \grn[2]_i_14 
       (.I0(abus_0[7]),
        .I1(\badr[6]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(\badr[5]_INST_0_i_1_n_0 ),
        .I4(\badr[4]_INST_0_i_1_n_0 ),
        .I5(bbus_0[0]),
        .O(\grn[2]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h40E000F0)) 
    \grn[2]_i_15 
       (.I0(bbus_0[0]),
        .I1(\badr[6]_INST_0_i_1_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(abus_0[7]),
        .I4(\grn[4]_i_15_n_0 ),
        .O(\grn[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0E000E0E0E000E00)) 
    \grn[2]_i_2 
       (.I0(\grn[2]_i_6_n_0 ),
        .I1(\grn[2]_i_7_n_0 ),
        .I2(\grn[6]_i_12_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\grn[2]_i_8_n_0 ),
        .I5(\grn[2]_i_9_n_0 ),
        .O(\grn[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \grn[2]_i_3 
       (.I0(\alu/art/add/tout__1_carry_n_5 ),
        .I1(\grn[4]_i_3_n_0 ),
        .I2(\grn[15]_i_9_n_0 ),
        .I3(\alu/data0 [2]),
        .O(\grn[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A8A020)) 
    \grn[2]_i_4 
       (.I0(\mem/read_cyc [2]),
        .I1(\mem/read_cyc [1]),
        .I2(bdatr[2]),
        .I3(\mem/read_cyc [0]),
        .I4(bdatr[10]),
        .O(\grn[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \grn[2]_i_5 
       (.I0(\grn[2]_i_10_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[2]_i_11_n_0 ),
        .O(\grn[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000F05F5F3F3F)) 
    \grn[2]_i_6 
       (.I0(\grn[2]_i_12_n_0 ),
        .I1(\grn[2]_i_13_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\grn[6]_i_13_n_0 ),
        .I4(\grn[6]_i_14_n_0 ),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\grn[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0055110500001105)) 
    \grn[2]_i_7 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\grn[6]_i_13_n_0 ),
        .I2(\grn[6]_i_18_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I4(\grn[6]_i_14_n_0 ),
        .I5(\grn[2]_i_14_n_0 ),
        .O(\grn[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88A8AAAA88A80000)) 
    \grn[2]_i_8 
       (.I0(\grn[6]_i_21_n_0 ),
        .I1(\grn[2]_i_15_n_0 ),
        .I2(\grn[6]_i_20_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I4(\grn[6]_i_14_n_0 ),
        .I5(\grn[2]_i_13_n_0 ),
        .O(\grn[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \grn[2]_i_9 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(abus_0[1]),
        .I3(\grn[3]_i_10_n_0 ),
        .O(\grn[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF08)) 
    \grn[3]_i_1 
       (.I0(\alu/art/add/tout__1_carry_n_4 ),
        .I1(\grn[15]_i_9_n_0 ),
        .I2(\grn[4]_i_3_n_0 ),
        .I3(\grn[3]_i_2_n_0 ),
        .I4(\grn[3]_i_3_n_0 ),
        .I5(\grn[3]_i_4_n_0 ),
        .O(cbus[3]));
  LUT3 #(
    .INIT(8'h8F)) 
    \grn[3]_i_10 
       (.I0(\tnsn_dsp_b[8]_INST_0_i_1_n_0 ),
        .I1(abus_0[7]),
        .I2(\grn[3]_i_15_n_0 ),
        .O(\grn[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBFAABFAABFAAAAAA)) 
    \grn[3]_i_11 
       (.I0(\grn[6]_i_12_n_0 ),
        .I1(\grn[4]_i_21_n_0 ),
        .I2(\grn[3]_i_16_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\grn[6]_i_14_n_0 ),
        .I5(\grn[3]_i_17_n_0 ),
        .O(\grn[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCF5FC05FCF50C050)) 
    \grn[3]_i_12 
       (.I0(abus_0[3]),
        .I1(\badr[4]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(bbus_0[0]),
        .I4(\badr[6]_INST_0_i_1_n_0 ),
        .I5(\badr[5]_INST_0_i_1_n_0 ),
        .O(\grn[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFF00BF00)) 
    \grn[3]_i_13 
       (.I0(bbus_0[0]),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[7]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(\grn[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h303F303F5F5F5050)) 
    \grn[3]_i_14 
       (.I0(abus_0[7]),
        .I1(\rgf/sreg/sr [6]),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(abus_0[1]),
        .I4(\badr[0]_INST_0_i_1_n_0 ),
        .I5(bbus_0[0]),
        .O(\grn[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \grn[3]_i_15 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(bbus_0[0]),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\grn[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACC0F000FFF)) 
    \grn[3]_i_16 
       (.I0(abus_0[7]),
        .I1(\rgf/sreg/sr [6]),
        .I2(\badr[5]_INST_0_i_1_n_0 ),
        .I3(bbus_0[0]),
        .I4(\badr[6]_INST_0_i_1_n_0 ),
        .I5(\grn[4]_i_15_n_0 ),
        .O(\grn[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFAFA0A0A03F303F3)) 
    \grn[3]_i_17 
       (.I0(\badr[0]_INST_0_i_1_n_0 ),
        .I1(abus_0[1]),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(abus_0[3]),
        .I4(\badr[2]_INST_0_i_1_n_0 ),
        .I5(bbus_0[0]),
        .O(\grn[3]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \grn[3]_i_2 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .I1(tnsn_dsp_c[3]),
        .I2(\grn[3]_i_5_n_0 ),
        .I3(\alu/data0 [3]),
        .I4(\grn[15]_i_9_n_0 ),
        .O(\grn[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \grn[3]_i_3 
       (.I0(\grn[3]_i_6_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[3]_i_7_n_0 ),
        .O(\grn[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFAA08)) 
    \grn[3]_i_4 
       (.I0(\grn[3]_i_8_n_0 ),
        .I1(\grn[3]_i_9_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\grn[3]_i_10_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .I5(\grn[3]_i_11_n_0 ),
        .O(\grn[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEF004000)) 
    \grn[3]_i_5 
       (.I0(\mem/read_cyc [0]),
        .I1(bdatr[11]),
        .I2(\mem/read_cyc [1]),
        .I3(\mem/read_cyc [2]),
        .I4(bdatr[3]),
        .O(\grn[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCFBACFFE8B988BDC)) 
    \grn[3]_i_6 
       (.I0(\grn[15]_i_30_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(abus_0[3]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(abus_0[11]),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\grn[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hC06000C0)) 
    \grn[3]_i_7 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\grn[4]_i_10_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(abus_0[3]),
        .O(\grn[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h11111F111F1F1F1F)) 
    \grn[3]_i_8 
       (.I0(\grn[3]_i_12_n_0 ),
        .I1(\grn[6]_i_14_n_0 ),
        .I2(\grn[3]_i_13_n_0 ),
        .I3(\grn[6]_i_17_n_0 ),
        .I4(\grn[3]_i_14_n_0 ),
        .I5(\grn[4]_i_17_n_0 ),
        .O(\grn[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \grn[3]_i_9 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\badr[2]_INST_0_i_1_n_0 ),
        .O(\grn[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \grn[4]_i_1 
       (.I0(\grn[4]_i_2_n_0 ),
        .I1(\grn[4]_i_3_n_0 ),
        .I2(\alu/art/add/tout__1_carry__0_n_7 ),
        .I3(\grn[4]_i_4_n_0 ),
        .I4(\grn[4]_i_5_n_0 ),
        .O(cbus[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[4]_i_10 
       (.I0(\grn[15]_i_30_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .O(\grn[4]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hA0A8A020)) 
    \grn[4]_i_11 
       (.I0(\mem/read_cyc [2]),
        .I1(\mem/read_cyc [1]),
        .I2(bdatr[4]),
        .I3(\mem/read_cyc [0]),
        .I4(bdatr[12]),
        .O(\grn[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFC0B8FFFFF3B8FF)) 
    \grn[4]_i_12 
       (.I0(\badr[4]_INST_0_i_1_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(abus_0[12]),
        .O(\grn[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h408F4FC0408440C0)) 
    \grn[4]_i_13 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\grn[4]_i_10_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\badr[4]_INST_0_i_1_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I5(\grn[15]_i_27_n_0 ),
        .O(\grn[4]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \grn[4]_i_14 
       (.I0(\badr[0]_INST_0_i_1_n_0 ),
        .I1(bbus_0[0]),
        .I2(\rgf/sreg/sr [6]),
        .O(\grn[4]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \grn[4]_i_15 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(bbus_0[0]),
        .O(\grn[4]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \grn[4]_i_16 
       (.I0(abus_0[1]),
        .I1(\badr[2]_INST_0_i_1_n_0 ),
        .I2(bbus_0[0]),
        .O(\grn[4]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h4CCC)) 
    \grn[4]_i_17 
       (.I0(\grn[6]_i_14_n_0 ),
        .I1(\grn[6]_i_21_n_0 ),
        .I2(abus_0[7]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\grn[4]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \grn[4]_i_18 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(bbus_0[0]),
        .I2(\badr[4]_INST_0_i_1_n_0 ),
        .O(\grn[4]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \grn[4]_i_19 
       (.I0(bbus_0[0]),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\badr[0]_INST_0_i_1_n_0 ),
        .O(\grn[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF8A)) 
    \grn[4]_i_2 
       (.I0(\grn[4]_i_6_n_0 ),
        .I1(\grn[4]_i_7_n_0 ),
        .I2(\grn[4]_i_8_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\grn[4]_i_9_n_0 ),
        .I5(\grn[6]_i_12_n_0 ),
        .O(\grn[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAF30A030AF3FA03F)) 
    \grn[4]_i_20 
       (.I0(abus_0[3]),
        .I1(\badr[4]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(bbus_0[0]),
        .I4(abus_0[1]),
        .I5(\badr[2]_INST_0_i_1_n_0 ),
        .O(\grn[4]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \grn[4]_i_21 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\grn[6]_i_14_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0AFAF3F303F30)) 
    \grn[4]_i_22 
       (.I0(\rgf/sreg/sr [6]),
        .I1(\badr[0]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(abus_0[7]),
        .I4(\badr[6]_INST_0_i_1_n_0 ),
        .I5(bbus_0[0]),
        .O(\grn[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE00FEFEFEFF)) 
    \grn[4]_i_3 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_1_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[15]_i_30_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(\grn[4]_i_10_n_0 ),
        .O(\grn[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \grn[4]_i_4 
       (.I0(\grn[15]_i_9_n_0 ),
        .I1(\alu/data0 [4]),
        .I2(tnsn_dsp_c[4]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .I4(\grn[4]_i_11_n_0 ),
        .O(\grn[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \grn[4]_i_5 
       (.I0(\grn[4]_i_12_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[4]_i_13_n_0 ),
        .O(\grn[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAABA)) 
    \grn[4]_i_6 
       (.I0(\grn[3]_i_10_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(abus_0[3]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000004700FFFF)) 
    \grn[4]_i_7 
       (.I0(\grn[4]_i_14_n_0 ),
        .I1(\grn[4]_i_15_n_0 ),
        .I2(\grn[4]_i_16_n_0 ),
        .I3(\grn[6]_i_17_n_0 ),
        .I4(\grn[4]_i_17_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF74FF00FF74)) 
    \grn[4]_i_8 
       (.I0(abus_0[7]),
        .I1(bbus_0[0]),
        .I2(\badr[6]_INST_0_i_1_n_0 ),
        .I3(\grn[6]_i_14_n_0 ),
        .I4(\grn[4]_i_15_n_0 ),
        .I5(\grn[4]_i_18_n_0 ),
        .O(\grn[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00008D00FF008D00)) 
    \grn[4]_i_9 
       (.I0(\grn[6]_i_14_n_0 ),
        .I1(\grn[4]_i_19_n_0 ),
        .I2(\grn[4]_i_20_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\grn[4]_i_21_n_0 ),
        .I5(\grn[4]_i_22_n_0 ),
        .O(\grn[4]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \grn[5]_i_1 
       (.I0(\grn[5]_i_2_n_0 ),
        .O(cbus[5]));
  LUT5 #(
    .INIT(32'h5D5DFF5D)) 
    \grn[5]_i_10 
       (.I0(\grn[6]_i_21_n_0 ),
        .I1(\grn[6]_i_17_n_0 ),
        .I2(\grn[0]_i_10_n_0 ),
        .I3(\grn[6]_i_19_n_0 ),
        .I4(\grn[5]_i_14_n_0 ),
        .O(\grn[5]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h04F7FFFF)) 
    \grn[5]_i_11 
       (.I0(\sr[6]_i_14_n_0 ),
        .I1(\grn[4]_i_15_n_0 ),
        .I2(\grn[6]_i_14_n_0 ),
        .I3(abus_0[7]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\grn[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10101F10)) 
    \grn[5]_i_12 
       (.I0(\grn[0]_i_13_n_0 ),
        .I1(\grn[6]_i_14_n_0 ),
        .I2(\bdatw[11]_INST_0_i_2_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[5]_i_15_n_0 ),
        .I5(\grn[6]_i_12_n_0 ),
        .O(\grn[5]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h8088A088)) 
    \grn[5]_i_13 
       (.I0(\grn[6]_i_14_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\grn[5]_i_16_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\grn[5]_i_17_n_0 ),
        .O(\grn[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0AFAFC0CFC0CF)) 
    \grn[5]_i_14 
       (.I0(\badr[6]_INST_0_i_1_n_0 ),
        .I1(\badr[5]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(abus_0[7]),
        .I4(\rgf/sreg/sr [6]),
        .I5(bbus_0[0]),
        .O(\grn[5]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h30305F50)) 
    \grn[5]_i_15 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\badr[6]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(abus_0[7]),
        .I4(bbus_0[0]),
        .O(\grn[5]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hD1FF)) 
    \grn[5]_i_16 
       (.I0(abus_0[1]),
        .I1(bbus_0[0]),
        .I2(\badr[0]_INST_0_i_1_n_0 ),
        .I3(\grn[4]_i_15_n_0 ),
        .O(\grn[5]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \grn[5]_i_17 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(abus_0[7]),
        .I2(bbus_0[0]),
        .I3(\rgf/sreg/sr [6]),
        .I4(\grn[4]_i_15_n_0 ),
        .O(\grn[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001101)) 
    \grn[5]_i_2 
       (.I0(\grn[5]_i_3_n_0 ),
        .I1(\grn[5]_i_4_n_0 ),
        .I2(tnsn_dsp_c[5]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .I4(\grn[5]_i_5_n_0 ),
        .I5(\grn[5]_i_6_n_0 ),
        .O(\grn[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \grn[5]_i_3 
       (.I0(\alu/art/add/tout__1_carry__0_n_6 ),
        .I1(\grn[4]_i_3_n_0 ),
        .I2(\grn[15]_i_9_n_0 ),
        .I3(\alu/data0 [5]),
        .O(\grn[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A8A020)) 
    \grn[5]_i_4 
       (.I0(\mem/read_cyc [2]),
        .I1(\mem/read_cyc [1]),
        .I2(bdatr[5]),
        .I3(\mem/read_cyc [0]),
        .I4(bdatr[13]),
        .O(\grn[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \grn[5]_i_5 
       (.I0(\grn[5]_i_7_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[5]_i_8_n_0 ),
        .O(\grn[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF8A)) 
    \grn[5]_i_6 
       (.I0(\grn[5]_i_9_n_0 ),
        .I1(\grn[5]_i_10_n_0 ),
        .I2(\grn[5]_i_11_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\grn[5]_i_12_n_0 ),
        .I5(\grn[5]_i_13_n_0 ),
        .O(\grn[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFC0B8FFFFF3B8FF)) 
    \grn[5]_i_7 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\bdatw[13]_INST_0_i_2_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(abus_0[13]),
        .O(\grn[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h408F4FC0408440C0)) 
    \grn[5]_i_8 
       (.I0(\bdatw[13]_INST_0_i_2_n_0 ),
        .I1(\grn[4]_i_10_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\badr[5]_INST_0_i_1_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I5(\grn[15]_i_27_n_0 ),
        .O(\grn[5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \grn[5]_i_9 
       (.I0(\grn[3]_i_10_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\badr[4]_INST_0_i_1_n_0 ),
        .O(\grn[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \grn[6]_i_1 
       (.I0(\grn[6]_i_2_n_0 ),
        .I1(\grn[6]_i_3_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .I3(tnsn_dsp_c[6]),
        .I4(\grn[6]_i_4_n_0 ),
        .I5(\grn[6]_i_5_n_0 ),
        .O(cbus[6]));
  LUT6 #(
    .INIT(64'hCC0CC808C000C808)) 
    \grn[6]_i_10 
       (.I0(\grn[6]_i_20_n_0 ),
        .I1(\grn[6]_i_21_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\grn[6]_i_22_n_0 ),
        .I4(\grn[6]_i_14_n_0 ),
        .I5(\grn[6]_i_23_n_0 ),
        .O(\grn[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \grn[6]_i_11 
       (.I0(\grn[3]_i_10_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\badr[5]_INST_0_i_1_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[6]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h3FEE3FFF)) 
    \grn[6]_i_12 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\grn[14]_i_3_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[8]_INST_0_i_1_n_0 ),
        .O(\grn[6]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h3F3FAFA0)) 
    \grn[6]_i_13 
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(abus_0[1]),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(\badr[0]_INST_0_i_1_n_0 ),
        .I4(bbus_0[0]),
        .O(\grn[6]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6566)) 
    \grn[6]_i_14 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(bbus_0[0]),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\grn[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0AFAFCFC0CFC0)) 
    \grn[6]_i_15 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\badr[6]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(\badr[4]_INST_0_i_1_n_0 ),
        .I4(abus_0[3]),
        .I5(bbus_0[0]),
        .O(\grn[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000510155555555)) 
    \grn[6]_i_16 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\badr[6]_INST_0_i_1_n_0 ),
        .I2(bbus_0[0]),
        .I3(abus_0[7]),
        .I4(\grn[6]_i_24_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[6]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grn[6]_i_17 
       (.I0(\grn[6]_i_14_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\grn[6]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h30303F3FAFA0AFA0)) 
    \grn[6]_i_18 
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(abus_0[1]),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(\badr[0]_INST_0_i_1_n_0 ),
        .I4(\rgf/sreg/sr [6]),
        .I5(bbus_0[0]),
        .O(\grn[6]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \grn[6]_i_19 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\grn[6]_i_14_n_0 ),
        .O(\grn[6]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \grn[6]_i_2 
       (.I0(\grn[6]_i_6_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[6]_i_7_n_0 ),
        .O(\grn[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5F50C0C05F50CFCF)) 
    \grn[6]_i_20 
       (.I0(abus_0[7]),
        .I1(\badr[6]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(\badr[0]_INST_0_i_1_n_0 ),
        .I4(bbus_0[0]),
        .I5(\rgf/sreg/sr [6]),
        .O(\grn[6]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \grn[6]_i_21 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(bbus_0[0]),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\grn[6]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0F4F0F0B)) 
    \grn[6]_i_22 
       (.I0(\grn[6]_i_14_n_0 ),
        .I1(\grn[4]_i_15_n_0 ),
        .I2(abus_0[7]),
        .I3(bbus_0[0]),
        .I4(\badr[6]_INST_0_i_1_n_0 ),
        .O(\grn[6]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFC0C0505F505F)) 
    \grn[6]_i_23 
       (.I0(abus_0[1]),
        .I1(\badr[2]_INST_0_i_1_n_0 ),
        .I2(\grn[4]_i_15_n_0 ),
        .I3(abus_0[3]),
        .I4(\badr[4]_INST_0_i_1_n_0 ),
        .I5(bbus_0[0]),
        .O(\grn[6]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h5DFB)) 
    \grn[6]_i_24 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(bbus_0[0]),
        .I2(\bdatw[11]_INST_0_i_2_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\grn[6]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hEF004000)) 
    \grn[6]_i_3 
       (.I0(\mem/read_cyc [0]),
        .I1(bdatr[14]),
        .I2(\mem/read_cyc [1]),
        .I3(\mem/read_cyc [2]),
        .I4(bdatr[6]),
        .O(\grn[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \grn[6]_i_4 
       (.I0(\alu/art/add/tout__1_carry__0_n_5 ),
        .I1(\grn[4]_i_3_n_0 ),
        .I2(\grn[15]_i_9_n_0 ),
        .I3(\alu/data0 [6]),
        .O(\grn[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E0EEE0E0)) 
    \grn[6]_i_5 
       (.I0(\grn[6]_i_8_n_0 ),
        .I1(\grn[6]_i_9_n_0 ),
        .I2(\bdatw[11]_INST_0_i_2_n_0 ),
        .I3(\grn[6]_i_10_n_0 ),
        .I4(\grn[6]_i_11_n_0 ),
        .I5(\grn[6]_i_12_n_0 ),
        .O(\grn[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFC0B8FFFFF3B8FF)) 
    \grn[6]_i_6 
       (.I0(\badr[6]_INST_0_i_1_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\bdatw[14]_INST_0_i_2_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(abus_0[14]),
        .O(\grn[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3C000B0A3F00A0A0)) 
    \grn[6]_i_7 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(\badr[6]_INST_0_i_1_n_0 ),
        .I3(\grn[4]_i_10_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h202A202A303F0000)) 
    \grn[6]_i_8 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\grn[6]_i_13_n_0 ),
        .I2(\grn[6]_i_14_n_0 ),
        .I3(\grn[6]_i_15_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEFFAEAE)) 
    \grn[6]_i_9 
       (.I0(\grn[6]_i_16_n_0 ),
        .I1(\grn[6]_i_17_n_0 ),
        .I2(\grn[6]_i_18_n_0 ),
        .I3(\grn[6]_i_15_n_0 ),
        .I4(\grn[6]_i_19_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\grn[6]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \grn[7]_i_1 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_5_n_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .O(\grn[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000DD0D)) 
    \grn[7]_i_10 
       (.I0(\grn[6]_i_17_n_0 ),
        .I1(\grn[2]_i_13_n_0 ),
        .I2(\grn[6]_i_19_n_0 ),
        .I3(\grn[3]_i_14_n_0 ),
        .I4(\grn[7]_i_16_n_0 ),
        .O(\grn[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEF004000)) 
    \grn[7]_i_11 
       (.I0(\mem/read_cyc [0]),
        .I1(bdatr[15]),
        .I2(\mem/read_cyc [1]),
        .I3(\mem/read_cyc [2]),
        .I4(bdatr[7]),
        .O(\grn[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000080900000B090)) 
    \grn[7]_i_12 
       (.I0(abus_0[7]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\grn[14]_i_3_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(\grn[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h8A222000)) 
    \grn[7]_i_13 
       (.I0(\grn[4]_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(abus_0[7]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\grn[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \grn[7]_i_14 
       (.I0(\badr[0]_INST_0_i_1_n_0 ),
        .I1(bbus_0[0]),
        .I2(abus_0[1]),
        .O(\grn[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \grn[7]_i_15 
       (.I0(abus_0[3]),
        .I1(\badr[2]_INST_0_i_1_n_0 ),
        .I2(bbus_0[0]),
        .O(\grn[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \grn[7]_i_16 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(abus_0[7]),
        .I2(\grn[6]_i_21_n_0 ),
        .O(\grn[7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \grn[7]_i_1__0 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\grn[15]_i_5_n_0 ),
        .O(\grn[7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \grn[7]_i_1__1 
       (.I0(\grn[15]_i_4_n_0 ),
        .I1(\grn[15]_i_3_n_0 ),
        .I2(\grn[15]_i_5_n_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .O(\grn[7]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \grn[7]_i_1__2 
       (.I0(\grn[15]_i_4_n_0 ),
        .I1(\grn[15]_i_3_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\grn[15]_i_5_n_0 ),
        .O(\grn[7]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \grn[7]_i_1__3 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\grn[15]_i_5_n_0 ),
        .O(\grn[7]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \grn[7]_i_1__4 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_5_n_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .O(\grn[7]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \grn[7]_i_1__5 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_5_n_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .O(\grn[7]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \grn[7]_i_1__6 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\grn[15]_i_5_n_0 ),
        .O(\grn[7]_i_1__6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \grn[7]_i_2 
       (.I0(\grn[7]_i_3_n_0 ),
        .O(cbus[7]));
  LUT5 #(
    .INIT(32'h008A0000)) 
    \grn[7]_i_3 
       (.I0(\grn[7]_i_4_n_0 ),
        .I1(\grn[4]_i_3_n_0 ),
        .I2(\alu/art/p_0_in ),
        .I3(\grn[7]_i_5_n_0 ),
        .I4(\grn[7]_i_6_n_0 ),
        .O(\grn[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFFEEEF)) 
    \grn[7]_i_4 
       (.I0(\grn[7]_i_7_n_0 ),
        .I1(\grn[7]_i_8_n_0 ),
        .I2(\grn[7]_i_9_n_0 ),
        .I3(\grn[3]_i_10_n_0 ),
        .I4(\grn[7]_i_10_n_0 ),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\grn[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \grn[7]_i_5 
       (.I0(\grn[15]_i_9_n_0 ),
        .I1(\alu/data0 [7]),
        .I2(\grn[7]_i_11_n_0 ),
        .I3(tnsn_dsp_c[7]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(\grn[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055151111)) 
    \grn[7]_i_6 
       (.I0(\grn[7]_i_12_n_0 ),
        .I1(\grn[15]_i_27_n_0 ),
        .I2(\tnsn_dsp_b[8]_INST_0_i_1_n_0 ),
        .I3(\badr[15]_INST_0_i_1_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .I5(\grn[7]_i_13_n_0 ),
        .O(\grn[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00D0)) 
    \grn[7]_i_7 
       (.I0(abus_0[7]),
        .I1(\sr[6]_i_6_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\grn[6]_i_12_n_0 ),
        .O(\grn[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2E002E000000FF00)) 
    \grn[7]_i_8 
       (.I0(\grn[7]_i_14_n_0 ),
        .I1(\grn[4]_i_15_n_0 ),
        .I2(\grn[7]_i_15_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\grn[2]_i_14_n_0 ),
        .I5(\grn[6]_i_14_n_0 ),
        .O(\grn[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \grn[7]_i_9 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\badr[6]_INST_0_i_1_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\grn[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \grn[8]_i_1 
       (.I0(\grn[8]_i_2_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[15]_i_9_n_0 ),
        .I3(\alu/data0 [8]),
        .I4(\grn[8]_i_3_n_0 ),
        .I5(\grn[8]_i_4_n_0 ),
        .O(cbus[8]));
  LUT6 #(
    .INIT(64'hFFFF5F0AEEEEFFFF)) 
    \grn[8]_i_2 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\badr[0]_INST_0_i_1_n_0 ),
        .I2(bbus_0[0]),
        .I3(\badr[8]_INST_0_i_1_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(\grn[15]_i_30_n_0 ),
        .O(\grn[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \grn[8]_i_3 
       (.I0(\mem/read_cyc [1]),
        .I1(\mem/read_cyc [2]),
        .I2(bdatr[8]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .I4(tnsn_dsp_c[8]),
        .O(\grn[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0020AAAA)) 
    \grn[8]_i_4 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\badr[8]_INST_0_i_1_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .O(\grn[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \grn[9]_i_1 
       (.I0(\grn[9]_i_2_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\grn[15]_i_9_n_0 ),
        .I3(\alu/data0 [9]),
        .I4(\grn[9]_i_3_n_0 ),
        .I5(\grn[9]_i_4_n_0 ),
        .O(cbus[9]));
  LUT6 #(
    .INIT(64'hFFFFCACAF0FFFFFF)) 
    \grn[9]_i_2 
       (.I0(\badr[9]_INST_0_i_1_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(abus_0[1]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I5(\grn[15]_i_30_n_0 ),
        .O(\grn[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \grn[9]_i_3 
       (.I0(\mem/read_cyc [1]),
        .I1(\mem/read_cyc [2]),
        .I2(bdatr[9]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .I4(tnsn_dsp_c[9]),
        .O(\grn[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0020AAAA)) 
    \grn[9]_i_4 
       (.I0(\grn[15]_i_27_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\badr[9]_INST_0_i_1_n_0 ),
        .I4(\grn[15]_i_28_n_0 ),
        .O(\grn[9]_i_4_n_0 ));
  MUXF7 \grn_reg[15]_i_29 
       (.I0(\grn[14]_i_6_n_0 ),
        .I1(\grn[14]_i_7_n_0 ),
        .O(\grn_reg[15]_i_29_n_0 ),
        .S(\fch/ir [15]));
  LUT4 #(
    .INIT(16'h0004)) 
    \iv[15]_i_1 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\iv[15]_i_2_n_0 ),
        .O(\rgf/cbus_sel_cr ));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[15]_i_10 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [3]),
        .O(\iv[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF001000000000000)) 
    \iv[15]_i_11 
       (.I0(ctl_fetch_ext_fl_i_5_n_0),
        .I1(\fch_irq_lev[1]_i_8_n_0 ),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [11]),
        .I4(\iv[15]_i_21_n_0 ),
        .I5(brdy),
        .O(\iv[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3DFFFFFFFFFFFF3D)) 
    \iv[15]_i_12 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [13]),
        .I4(\fch/ir [12]),
        .I5(\fch/ir [14]),
        .O(\iv[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA2A002000)) 
    \iv[15]_i_13 
       (.I0(\iv[15]_i_22_n_0 ),
        .I1(\tnsn_dsp_a[8]_INST_0_i_9_n_0 ),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [13]),
        .I4(\rgf/sreg/sr [7]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_24_n_0 ),
        .O(\iv[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0C000A0A0)) 
    \iv[15]_i_14 
       (.I0(\iv[15]_i_23_n_0 ),
        .I1(\iv[15]_i_24_n_0 ),
        .I2(\fch/ir [12]),
        .I3(\fch/ir [14]),
        .I4(\fch/ir [13]),
        .I5(\fch/ir [15]),
        .O(\iv[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[15]_i_15 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [13]),
        .O(\iv[15]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \iv[15]_i_16 
       (.I0(\ctl/stat [0]),
        .I1(brdy),
        .I2(\fch/ir [1]),
        .O(\iv[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \iv[15]_i_17 
       (.I0(\ctl/stat [1]),
        .I1(\ctl/stat [2]),
        .I2(\ctl/stat [0]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [1]),
        .O(\iv[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0040444044400040)) 
    \iv[15]_i_18 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [12]),
        .I2(\rgf/sreg/sr [4]),
        .I3(\fch/ir [14]),
        .I4(\rgf/sreg/sr [5]),
        .I5(\rgf/sreg/sr [7]),
        .O(\iv[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2B2AA7A72B2AA3A3)) 
    \iv[15]_i_19 
       (.I0(\fch/ir [15]),
        .I1(\fch/ir [13]),
        .I2(\fch/ir [12]),
        .I3(\rgf/sreg/sr [5]),
        .I4(\fch/ir [14]),
        .I5(\rgf/sreg/sr [6]),
        .O(\iv[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABBBABABABA)) 
    \iv[15]_i_2 
       (.I0(\grn[15]_i_19_n_0 ),
        .I1(\iv[15]_i_3_n_0 ),
        .I2(\bcmd[2]_INST_0_i_2_n_0 ),
        .I3(\iv[15]_i_4_n_0 ),
        .I4(\iv[15]_i_5_n_0 ),
        .I5(\iv[15]_i_6_n_0 ),
        .O(\iv[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAFBFFFFFFFFF)) 
    \iv[15]_i_20 
       (.I0(\iv[15]_i_25_n_0 ),
        .I1(\rgf/sreg/sr [7]),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [14]),
        .I4(\fch/ir [15]),
        .I5(\fch/ir [12]),
        .O(\iv[15]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[15]_i_21 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [6]),
        .O(\iv[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABABBABBBAB)) 
    \iv[15]_i_22 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [15]),
        .I2(\fch/ir [13]),
        .I3(\rgf/sreg/sr [6]),
        .I4(\rgf/sreg/sr [5]),
        .I5(\fch/ir [14]),
        .O(\iv[15]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \iv[15]_i_23 
       (.I0(\rgf/sreg/sr [7]),
        .I1(\rgf/sreg/sr [5]),
        .I2(\fch/ir [14]),
        .I3(\rgf/sreg/sr [4]),
        .O(\iv[15]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h7C)) 
    \iv[15]_i_24 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [7]),
        .O(\iv[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AFAF9F8F)) 
    \iv[15]_i_25 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [4]),
        .I2(ctl_fetch_inferred_i_18_n_0),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [6]),
        .I5(\iv[15]_i_26_n_0 ),
        .O(\iv[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    \iv[15]_i_26 
       (.I0(\iv[15]_i_27_n_0 ),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [8]),
        .I5(\grn[15]_i_56_n_0 ),
        .O(\iv[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00F011F155F5FFFF)) 
    \iv[15]_i_27 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [8]),
        .I2(\rgf/sreg/sr [7]),
        .I3(\fch/ir [14]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [9]),
        .O(\iv[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \iv[15]_i_3 
       (.I0(\fch/ir [0]),
        .I1(\fch_irq_lev[1]_i_5_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_17_n_0 ),
        .I3(\bcmd[0]_INST_0_i_7_n_0 ),
        .I4(\iv[15]_i_7_n_0 ),
        .I5(\iv[15]_i_8_n_0 ),
        .O(\iv[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080000)) 
    \iv[15]_i_4 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [8]),
        .I2(\bcmd[1]_INST_0_i_8_n_0 ),
        .I3(\iv[15]_i_9_n_0 ),
        .I4(\iv[15]_i_10_n_0 ),
        .I5(\iv[15]_i_11_n_0 ),
        .O(\iv[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF76FF)) 
    \iv[15]_i_5 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [2]),
        .I3(\ctl/stat [0]),
        .I4(\fch/ir [15]),
        .I5(\iv[15]_i_12_n_0 ),
        .O(\iv[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEFFFEFFFE)) 
    \iv[15]_i_6 
       (.I0(\ctl/stat [0]),
        .I1(\fch/ir [11]),
        .I2(\iv[15]_i_13_n_0 ),
        .I3(\iv[15]_i_14_n_0 ),
        .I4(\iv[15]_i_15_n_0 ),
        .I5(\fch/ir [15]),
        .O(\iv[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \iv[15]_i_7 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [7]),
        .I2(\ctl/stat [1]),
        .I3(\ctl/stat [2]),
        .I4(\iv[15]_i_16_n_0 ),
        .I5(\iv[15]_i_17_n_0 ),
        .O(\iv[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2020200020202020)) 
    \iv[15]_i_8 
       (.I0(\fch/ir [11]),
        .I1(\ctl/stat [1]),
        .I2(\stat[0]_i_12_n_0 ),
        .I3(\iv[15]_i_18_n_0 ),
        .I4(\iv[15]_i_19_n_0 ),
        .I5(\iv[15]_i_20_n_0 ),
        .O(\iv[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \iv[15]_i_9 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [11]),
        .I3(brdy),
        .I4(\fch/ir [10]),
        .I5(\fch/ir [5]),
        .O(\iv[15]_i_9_n_0 ));
  FDRE \mem/bctl/read_cyc_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc[0]_i_1_n_0 ),
        .Q(\mem/read_cyc [0]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \mem/bctl/read_cyc_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bctl/read_cyc[1]_i_1_n_0 ),
        .Q(\mem/read_cyc [1]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \mem/bctl/read_cyc_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bctl/read_cyc[2]_i_1_n_0 ),
        .Q(\mem/read_cyc [2]),
        .R(\stat[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[0]_i_1 
       (.I0(cbus[0]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\rgf/pcnt/pc [0]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[0]),
        .O(\pc[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[10]_i_1 
       (.I0(cbus[10]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\rgf/pcnt/pc [10]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[10]),
        .O(\pc[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[11]_i_1 
       (.I0(cbus[11]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\rgf/pcnt/pc [11]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[11]),
        .O(\pc[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[12]_i_1 
       (.I0(cbus[12]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\rgf/pcnt/pc [12]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[12]),
        .O(\pc[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[13]_i_1 
       (.I0(cbus[13]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\rgf/pcnt/pc [13]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[13]),
        .O(\pc[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[14]_i_1 
       (.I0(cbus[14]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\rgf/pcnt/pc [14]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[14]),
        .O(\pc[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[15]_i_1 
       (.I0(cbus[15]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\rgf/pcnt/pc [15]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[15]),
        .O(\pc[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \pc[15]_i_2 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\grn[15]_i_6_n_0 ),
        .I3(\iv[15]_i_2_n_0 ),
        .O(\pc[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFD)) 
    \pc[15]_i_3 
       (.I0(ctl_fetch_ext_fl_i_2_n_0),
        .I1(ctl_fetch_ext_fl_i_3_n_0),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [12]),
        .I4(\ctl/stat [1]),
        .I5(ctl_fetch),
        .O(\pc[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \pc[1]_i_1 
       (.I0(\grn[1]_i_2_n_0 ),
        .I1(\pc[1]_i_2_n_0 ),
        .I2(\pc[15]_i_2_n_0 ),
        .I3(\rgf/pcnt/pc [1]),
        .I4(\pc[15]_i_3_n_0 ),
        .I5(fch_pc[1]),
        .O(\pc[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEFEEE)) 
    \pc[1]_i_2 
       (.I0(\grn[1]_i_4_n_0 ),
        .I1(\grn[1]_i_3_n_0 ),
        .I2(bdatr[1]),
        .I3(\mem/read_cyc [2]),
        .I4(\mem/read_cyc [1]),
        .O(\pc[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[2]_i_1 
       (.I0(cbus[2]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\rgf/pcnt/pc [2]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[2]),
        .O(\pc[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[3]_i_1 
       (.I0(cbus[3]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\rgf/pcnt/pc [3]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[3]),
        .O(\pc[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6555AA6555555555)) 
    \pc[3]_i_3 
       (.I0(\rgf/pcnt/pc [1]),
        .I1(irq_lev[0]),
        .I2(\rgf/sreg/sr [2]),
        .I3(\rgf/sreg/sr [3]),
        .I4(irq_lev[1]),
        .I5(irq),
        .O(\pc[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[4]_i_1 
       (.I0(cbus[4]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\rgf/pcnt/pc [4]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[4]),
        .O(\pc[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \pc[5]_i_1 
       (.I0(\grn[5]_i_2_n_0 ),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\rgf/pcnt/pc [5]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[5]),
        .O(\pc[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[6]_i_1 
       (.I0(cbus[6]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\rgf/pcnt/pc [6]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[6]),
        .O(\pc[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \pc[7]_i_1 
       (.I0(\grn[7]_i_3_n_0 ),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\rgf/pcnt/pc [7]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[7]),
        .O(\pc[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[8]_i_1 
       (.I0(cbus[8]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\rgf/pcnt/pc [8]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[8]),
        .O(\pc[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[9]_i_1 
       (.I0(cbus[9]),
        .I1(\pc[15]_i_2_n_0 ),
        .I2(\rgf/pcnt/pc [9]),
        .I3(\pc[15]_i_3_n_0 ),
        .I4(fch_pc[9]),
        .O(\pc[9]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_reg[11]_i_2 
       (.CI(\pc_reg[7]_i_2_n_0 ),
        .CO({\pc_reg[11]_i_2_n_0 ,\pc_reg[11]_i_2_n_1 ,\pc_reg[11]_i_2_n_2 ,\pc_reg[11]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(fch_pc[11:8]),
        .S(\rgf/pcnt/pc [11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_reg[15]_i_4 
       (.CI(\pc_reg[11]_i_2_n_0 ),
        .CO({\pc_reg[15]_i_4_n_1 ,\pc_reg[15]_i_4_n_2 ,\pc_reg[15]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(fch_pc[15:12]),
        .S(\rgf/pcnt/pc [15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_reg[3]_i_2 
       (.CI(\<const0> ),
        .CO({\pc_reg[3]_i_2_n_0 ,\pc_reg[3]_i_2_n_1 ,\pc_reg[3]_i_2_n_2 ,\pc_reg[3]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\rgf/pcnt/pc [1],\<const0> }),
        .O(fch_pc[3:0]),
        .S({\rgf/pcnt/pc [3:2],\pc[3]_i_3_n_0 ,\rgf/pcnt/pc [0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_reg[7]_i_2 
       (.CI(\pc_reg[3]_i_2_n_0 ),
        .CO({\pc_reg[7]_i_2_n_0 ,\pc_reg[7]_i_2_n_1 ,\pc_reg[7]_i_2_n_2 ,\pc_reg[7]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(fch_pc[7:4]),
        .S(\rgf/pcnt/pc [7:4]));
  LUT5 #(
    .INIT(32'h0EFF0E00)) 
    \read_cyc[0]_i_1 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(\badr[0]_INST_0_i_1_n_0 ),
        .I3(brdy),
        .I4(\mem/read_cyc [0]),
        .O(\read_cyc[0]_i_1_n_0 ));
  FDRE \rgf/bank/grn00/grn_reg[0] 
       (.C(clk),
        .CE(\grn[7]_i_1__5_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank/gr00 [0]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn00/grn_reg[10] 
       (.C(clk),
        .CE(\rgf/bank/grn1 ),
        .D(cbus[10]),
        .Q(\rgf/bank/gr00 [10]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn00/grn_reg[11] 
       (.C(clk),
        .CE(\rgf/bank/grn1 ),
        .D(cbus[11]),
        .Q(\rgf/bank/gr00 [11]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn00/grn_reg[12] 
       (.C(clk),
        .CE(\rgf/bank/grn1 ),
        .D(cbus[12]),
        .Q(\rgf/bank/gr00 [12]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn00/grn_reg[13] 
       (.C(clk),
        .CE(\rgf/bank/grn1 ),
        .D(cbus[13]),
        .Q(\rgf/bank/gr00 [13]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn00/grn_reg[14] 
       (.C(clk),
        .CE(\rgf/bank/grn1 ),
        .D(cbus[14]),
        .Q(\rgf/bank/gr00 [14]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn00/grn_reg[15] 
       (.C(clk),
        .CE(\rgf/bank/grn1 ),
        .D(cbus[15]),
        .Q(\rgf/bank/gr00 [15]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn00/grn_reg[1] 
       (.C(clk),
        .CE(\grn[7]_i_1__5_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank/gr00 [1]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn00/grn_reg[2] 
       (.C(clk),
        .CE(\grn[7]_i_1__5_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank/gr00 [2]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn00/grn_reg[3] 
       (.C(clk),
        .CE(\grn[7]_i_1__5_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank/gr00 [3]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn00/grn_reg[4] 
       (.C(clk),
        .CE(\grn[7]_i_1__5_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank/gr00 [4]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn00/grn_reg[5] 
       (.C(clk),
        .CE(\grn[7]_i_1__5_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank/gr00 [5]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn00/grn_reg[6] 
       (.C(clk),
        .CE(\grn[7]_i_1__5_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank/gr00 [6]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn00/grn_reg[7] 
       (.C(clk),
        .CE(\grn[7]_i_1__5_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank/gr00 [7]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn00/grn_reg[8] 
       (.C(clk),
        .CE(\rgf/bank/grn1 ),
        .D(cbus[8]),
        .Q(\rgf/bank/gr00 [8]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn00/grn_reg[9] 
       (.C(clk),
        .CE(\rgf/bank/grn1 ),
        .D(cbus[9]),
        .Q(\rgf/bank/gr00 [9]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn01/grn_reg[0] 
       (.C(clk),
        .CE(\grn[7]_i_1__6_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank/gr01 [0]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn01/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank/gr01 [10]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn01/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank/gr01 [11]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn01/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank/gr01 [12]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn01/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank/gr01 [13]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn01/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank/gr01 [14]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn01/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank/gr01 [15]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn01/grn_reg[1] 
       (.C(clk),
        .CE(\grn[7]_i_1__6_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank/gr01 [1]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn01/grn_reg[2] 
       (.C(clk),
        .CE(\grn[7]_i_1__6_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank/gr01 [2]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn01/grn_reg[3] 
       (.C(clk),
        .CE(\grn[7]_i_1__6_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank/gr01 [3]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn01/grn_reg[4] 
       (.C(clk),
        .CE(\grn[7]_i_1__6_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank/gr01 [4]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn01/grn_reg[5] 
       (.C(clk),
        .CE(\grn[7]_i_1__6_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank/gr01 [5]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn01/grn_reg[6] 
       (.C(clk),
        .CE(\grn[7]_i_1__6_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank/gr01 [6]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn01/grn_reg[7] 
       (.C(clk),
        .CE(\grn[7]_i_1__6_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank/gr01 [7]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn01/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank/gr01 [8]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn01/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank/gr01 [9]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn02/grn_reg[0] 
       (.C(clk),
        .CE(\grn[7]_i_1__4_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank/gr02 [0]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn02/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank/gr02 [10]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn02/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank/gr02 [11]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn02/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank/gr02 [12]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn02/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank/gr02 [13]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn02/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank/gr02 [14]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn02/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank/gr02 [15]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn02/grn_reg[1] 
       (.C(clk),
        .CE(\grn[7]_i_1__4_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank/gr02 [1]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn02/grn_reg[2] 
       (.C(clk),
        .CE(\grn[7]_i_1__4_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank/gr02 [2]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn02/grn_reg[3] 
       (.C(clk),
        .CE(\grn[7]_i_1__4_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank/gr02 [3]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn02/grn_reg[4] 
       (.C(clk),
        .CE(\grn[7]_i_1__4_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank/gr02 [4]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn02/grn_reg[5] 
       (.C(clk),
        .CE(\grn[7]_i_1__4_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank/gr02 [5]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn02/grn_reg[6] 
       (.C(clk),
        .CE(\grn[7]_i_1__4_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank/gr02 [6]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn02/grn_reg[7] 
       (.C(clk),
        .CE(\grn[7]_i_1__4_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank/gr02 [7]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn02/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank/gr02 [8]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn02/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank/gr02 [9]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn03/grn_reg[0] 
       (.C(clk),
        .CE(\grn[7]_i_1__3_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank/gr03 [0]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn03/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank/gr03 [10]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn03/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank/gr03 [11]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn03/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank/gr03 [12]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn03/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank/gr03 [13]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn03/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank/gr03 [14]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn03/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank/gr03 [15]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn03/grn_reg[1] 
       (.C(clk),
        .CE(\grn[7]_i_1__3_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank/gr03 [1]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn03/grn_reg[2] 
       (.C(clk),
        .CE(\grn[7]_i_1__3_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank/gr03 [2]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn03/grn_reg[3] 
       (.C(clk),
        .CE(\grn[7]_i_1__3_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank/gr03 [3]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn03/grn_reg[4] 
       (.C(clk),
        .CE(\grn[7]_i_1__3_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank/gr03 [4]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn03/grn_reg[5] 
       (.C(clk),
        .CE(\grn[7]_i_1__3_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank/gr03 [5]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn03/grn_reg[6] 
       (.C(clk),
        .CE(\grn[7]_i_1__3_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank/gr03 [6]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn03/grn_reg[7] 
       (.C(clk),
        .CE(\grn[7]_i_1__3_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank/gr03 [7]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn03/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank/gr03 [8]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn03/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank/gr03 [9]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn04/grn_reg[0] 
       (.C(clk),
        .CE(\grn[7]_i_1__1_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank/gr04 [0]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn04/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank/gr04 [10]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn04/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank/gr04 [11]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn04/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank/gr04 [12]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn04/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank/gr04 [13]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn04/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank/gr04 [14]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn04/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank/gr04 [15]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn04/grn_reg[1] 
       (.C(clk),
        .CE(\grn[7]_i_1__1_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank/gr04 [1]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn04/grn_reg[2] 
       (.C(clk),
        .CE(\grn[7]_i_1__1_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank/gr04 [2]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn04/grn_reg[3] 
       (.C(clk),
        .CE(\grn[7]_i_1__1_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank/gr04 [3]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn04/grn_reg[4] 
       (.C(clk),
        .CE(\grn[7]_i_1__1_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank/gr04 [4]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn04/grn_reg[5] 
       (.C(clk),
        .CE(\grn[7]_i_1__1_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank/gr04 [5]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn04/grn_reg[6] 
       (.C(clk),
        .CE(\grn[7]_i_1__1_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank/gr04 [6]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn04/grn_reg[7] 
       (.C(clk),
        .CE(\grn[7]_i_1__1_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank/gr04 [7]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn04/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank/gr04 [8]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn04/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank/gr04 [9]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn05/grn_reg[0] 
       (.C(clk),
        .CE(\grn[7]_i_1__2_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank/gr05 [0]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn05/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank/gr05 [10]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn05/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank/gr05 [11]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn05/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank/gr05 [12]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn05/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank/gr05 [13]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn05/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank/gr05 [14]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn05/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank/gr05 [15]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn05/grn_reg[1] 
       (.C(clk),
        .CE(\grn[7]_i_1__2_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank/gr05 [1]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn05/grn_reg[2] 
       (.C(clk),
        .CE(\grn[7]_i_1__2_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank/gr05 [2]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn05/grn_reg[3] 
       (.C(clk),
        .CE(\grn[7]_i_1__2_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank/gr05 [3]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn05/grn_reg[4] 
       (.C(clk),
        .CE(\grn[7]_i_1__2_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank/gr05 [4]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn05/grn_reg[5] 
       (.C(clk),
        .CE(\grn[7]_i_1__2_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank/gr05 [5]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn05/grn_reg[6] 
       (.C(clk),
        .CE(\grn[7]_i_1__2_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank/gr05 [6]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn05/grn_reg[7] 
       (.C(clk),
        .CE(\grn[7]_i_1__2_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank/gr05 [7]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn05/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank/gr05 [8]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn05/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank/gr05 [9]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn06/grn_reg[0] 
       (.C(clk),
        .CE(\grn[7]_i_1_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank/gr06 [0]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn06/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank/gr06 [10]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn06/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank/gr06 [11]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn06/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank/gr06 [12]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn06/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank/gr06 [13]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn06/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank/gr06 [14]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn06/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank/gr06 [15]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn06/grn_reg[1] 
       (.C(clk),
        .CE(\grn[7]_i_1_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank/gr06 [1]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn06/grn_reg[2] 
       (.C(clk),
        .CE(\grn[7]_i_1_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank/gr06 [2]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn06/grn_reg[3] 
       (.C(clk),
        .CE(\grn[7]_i_1_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank/gr06 [3]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn06/grn_reg[4] 
       (.C(clk),
        .CE(\grn[7]_i_1_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank/gr06 [4]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn06/grn_reg[5] 
       (.C(clk),
        .CE(\grn[7]_i_1_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank/gr06 [5]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn06/grn_reg[6] 
       (.C(clk),
        .CE(\grn[7]_i_1_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank/gr06 [6]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn06/grn_reg[7] 
       (.C(clk),
        .CE(\grn[7]_i_1_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank/gr06 [7]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn06/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank/gr06 [8]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn06/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank/gr06 [9]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn07/grn_reg[0] 
       (.C(clk),
        .CE(\grn[7]_i_1__0_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank/gr07 [0]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn07/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank/gr07 [10]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn07/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank/gr07 [11]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn07/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank/gr07 [12]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn07/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank/gr07 [13]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn07/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank/gr07 [14]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn07/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank/gr07 [15]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn07/grn_reg[1] 
       (.C(clk),
        .CE(\grn[7]_i_1__0_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank/gr07 [1]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn07/grn_reg[2] 
       (.C(clk),
        .CE(\grn[7]_i_1__0_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank/gr07 [2]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn07/grn_reg[3] 
       (.C(clk),
        .CE(\grn[7]_i_1__0_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank/gr07 [3]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn07/grn_reg[4] 
       (.C(clk),
        .CE(\grn[7]_i_1__0_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank/gr07 [4]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn07/grn_reg[5] 
       (.C(clk),
        .CE(\grn[7]_i_1__0_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank/gr07 [5]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn07/grn_reg[6] 
       (.C(clk),
        .CE(\grn[7]_i_1__0_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank/gr07 [6]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn07/grn_reg[7] 
       (.C(clk),
        .CE(\grn[7]_i_1__0_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank/gr07 [7]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn07/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank/gr07 [8]),
        .R(\stat[2]_i_1_n_0 ));
  FDRE \rgf/bank/grn07/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank/gr07 [9]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[0] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr ),
        .D(cbus[0]),
        .Q(\rgf/ivec/iv [0]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[10] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr ),
        .D(cbus[10]),
        .Q(\rgf/ivec/iv [10]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[11] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr ),
        .D(cbus[11]),
        .Q(\rgf/ivec/iv [11]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[12] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr ),
        .D(cbus[12]),
        .Q(\rgf/ivec/iv [12]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[13] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr ),
        .D(cbus[13]),
        .Q(\rgf/ivec/iv [13]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[14] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr ),
        .D(cbus[14]),
        .Q(\rgf/ivec/iv [14]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[15] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr ),
        .D(cbus[15]),
        .Q(\rgf/ivec/iv [15]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[1] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr ),
        .D(cbus[1]),
        .Q(\rgf/ivec/iv [1]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[2] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr ),
        .D(cbus[2]),
        .Q(\rgf/ivec/iv [2]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[3] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr ),
        .D(cbus[3]),
        .Q(\rgf/ivec/iv [3]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[4] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr ),
        .D(cbus[4]),
        .Q(\rgf/ivec/iv [4]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[5] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr ),
        .D(cbus[5]),
        .Q(\rgf/ivec/iv [5]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[6] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr ),
        .D(cbus[6]),
        .Q(\rgf/ivec/iv [6]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[7] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr ),
        .D(cbus[7]),
        .Q(\rgf/ivec/iv [7]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[8] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr ),
        .D(cbus[8]),
        .Q(\rgf/ivec/iv [8]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[9] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr ),
        .D(cbus[9]),
        .Q(\rgf/ivec/iv [9]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc[0]_i_1_n_0 ),
        .Q(\rgf/pcnt/pc [0]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc[10]_i_1_n_0 ),
        .Q(\rgf/pcnt/pc [10]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc[11]_i_1_n_0 ),
        .Q(\rgf/pcnt/pc [11]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc[12]_i_1_n_0 ),
        .Q(\rgf/pcnt/pc [12]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc[13]_i_1_n_0 ),
        .Q(\rgf/pcnt/pc [13]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc[14]_i_1_n_0 ),
        .Q(\rgf/pcnt/pc [14]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc[15]_i_1_n_0 ),
        .Q(\rgf/pcnt/pc [15]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc[1]_i_1_n_0 ),
        .Q(\rgf/pcnt/pc [1]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc[2]_i_1_n_0 ),
        .Q(\rgf/pcnt/pc [2]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc[3]_i_1_n_0 ),
        .Q(\rgf/pcnt/pc [3]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc[4]_i_1_n_0 ),
        .Q(\rgf/pcnt/pc [4]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc[5]_i_1_n_0 ),
        .Q(\rgf/pcnt/pc [5]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc[6]_i_1_n_0 ),
        .Q(\rgf/pcnt/pc [6]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc[7]_i_1_n_0 ),
        .Q(\rgf/pcnt/pc [7]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc[8]_i_1_n_0 ),
        .Q(\rgf/pcnt/pc [8]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pc[9]_i_1_n_0 ),
        .Q(\rgf/pcnt/pc [9]),
        .R(\stat[2]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rgf/sptr/sp_dec_0__0_carry 
       (.CI(\<const0> ),
        .CO({\rgf/sptr/sp_dec_0__0_carry_n_0 ,\rgf/sptr/sp_dec_0__0_carry_n_1 ,\rgf/sptr/sp_dec_0__0_carry_n_2 ,\rgf/sptr/sp_dec_0__0_carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\rgf/sptr/sp [1],\<const0> }),
        .O({\rgf/sptr/sp_dec_0__0_carry_n_4 ,\rgf/sptr/sp_dec_0__0_carry_n_5 ,\rgf/sptr/sp_dec_0__0_carry_n_6 ,\rgf/sp_dec_0 [0]}),
        .S({\rgf/sptr/sp [3:2],sp_dec_0__0_carry_i_1_n_0,\rgf/sptr/sp [0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rgf/sptr/sp_dec_0__0_carry__0 
       (.CI(\rgf/sptr/sp_dec_0__0_carry_n_0 ),
        .CO({\rgf/sptr/sp_dec_0__0_carry__0_n_0 ,\rgf/sptr/sp_dec_0__0_carry__0_n_1 ,\rgf/sptr/sp_dec_0__0_carry__0_n_2 ,\rgf/sptr/sp_dec_0__0_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\rgf/sptr/sp_dec_0__0_carry__0_n_4 ,\rgf/sptr/sp_dec_0__0_carry__0_n_5 ,\rgf/sptr/sp_dec_0__0_carry__0_n_6 ,\rgf/sptr/sp_dec_0__0_carry__0_n_7 }),
        .S(\rgf/sptr/sp [7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rgf/sptr/sp_dec_0__0_carry__1 
       (.CI(\rgf/sptr/sp_dec_0__0_carry__0_n_0 ),
        .CO({\rgf/sptr/sp_dec_0__0_carry__1_n_0 ,\rgf/sptr/sp_dec_0__0_carry__1_n_1 ,\rgf/sptr/sp_dec_0__0_carry__1_n_2 ,\rgf/sptr/sp_dec_0__0_carry__1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\rgf/sptr/sp_dec_0__0_carry__1_n_4 ,\rgf/sptr/sp_dec_0__0_carry__1_n_5 ,\rgf/sptr/sp_dec_0__0_carry__1_n_6 ,\rgf/sptr/sp_dec_0__0_carry__1_n_7 }),
        .S(\rgf/sptr/sp [11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rgf/sptr/sp_dec_0__0_carry__2 
       (.CI(\rgf/sptr/sp_dec_0__0_carry__1_n_0 ),
        .CO({\rgf/sptr/sp_dec_0__0_carry__2_n_1 ,\rgf/sptr/sp_dec_0__0_carry__2_n_2 ,\rgf/sptr/sp_dec_0__0_carry__2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\rgf/sptr/sp_dec_0__0_carry__2_n_4 ,\rgf/sptr/sp_dec_0__0_carry__2_n_5 ,\rgf/sptr/sp_dec_0__0_carry__2_n_6 ,\rgf/sptr/sp_dec_0__0_carry__2_n_7 }),
        .S(\rgf/sptr/sp [15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rgf/sptr/sp_dec_0_carry 
       (.CI(\<const0> ),
        .CO({\rgf/sptr/sp_dec_0_carry_n_0 ,\rgf/sptr/sp_dec_0_carry_n_1 ,\rgf/sptr/sp_dec_0_carry_n_2 ,\rgf/sptr/sp_dec_0_carry_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\rgf/sptr/sp [3:1],\<const0> }),
        .O({\rgf/sp_dec_0 [3:1],\NLW_rgf/sptr/sp_dec_0_carry_O_UNCONNECTED [0]}),
        .S({sp_dec_0_carry_i_1_n_0,sp_dec_0_carry_i_2_n_0,sp_dec_0_carry_i_3_n_0,\rgf/sptr/sp [0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rgf/sptr/sp_dec_0_carry__0 
       (.CI(\rgf/sptr/sp_dec_0_carry_n_0 ),
        .CO({\rgf/sptr/sp_dec_0_carry__0_n_0 ,\rgf/sptr/sp_dec_0_carry__0_n_1 ,\rgf/sptr/sp_dec_0_carry__0_n_2 ,\rgf/sptr/sp_dec_0_carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI(\rgf/sptr/sp [7:4]),
        .O(\rgf/sp_dec_0 [7:4]),
        .S({sp_dec_0_carry__0_i_1_n_0,sp_dec_0_carry__0_i_2_n_0,sp_dec_0_carry__0_i_3_n_0,sp_dec_0_carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rgf/sptr/sp_dec_0_carry__1 
       (.CI(\rgf/sptr/sp_dec_0_carry__0_n_0 ),
        .CO({\rgf/sptr/sp_dec_0_carry__1_n_0 ,\rgf/sptr/sp_dec_0_carry__1_n_1 ,\rgf/sptr/sp_dec_0_carry__1_n_2 ,\rgf/sptr/sp_dec_0_carry__1_n_3 }),
        .CYINIT(\<const0> ),
        .DI(\rgf/sptr/sp [11:8]),
        .O(\rgf/sp_dec_0 [11:8]),
        .S({sp_dec_0_carry__1_i_1_n_0,sp_dec_0_carry__1_i_2_n_0,sp_dec_0_carry__1_i_3_n_0,sp_dec_0_carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rgf/sptr/sp_dec_0_carry__2 
       (.CI(\rgf/sptr/sp_dec_0_carry__1_n_0 ),
        .CO({\rgf/sptr/sp_dec_0_carry__2_n_1 ,\rgf/sptr/sp_dec_0_carry__2_n_2 ,\rgf/sptr/sp_dec_0_carry__2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\rgf/sptr/sp [14:12]}),
        .O(\rgf/sp_dec_0 [15:12]),
        .S({sp_dec_0_carry__2_i_1_n_0,sp_dec_0_carry__2_i_2_n_0,sp_dec_0_carry__2_i_3_n_0,sp_dec_0_carry__2_i_4_n_0}));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sptr/sp__0 [0]),
        .Q(\rgf/sptr/sp [0]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sptr/sp__0 [10]),
        .Q(\rgf/sptr/sp [10]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sptr/sp__0 [11]),
        .Q(\rgf/sptr/sp [11]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sptr/sp__0 [12]),
        .Q(\rgf/sptr/sp [12]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sptr/sp__0 [13]),
        .Q(\rgf/sptr/sp [13]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sptr/sp__0 [14]),
        .Q(\rgf/sptr/sp [14]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sptr/sp__0 [15]),
        .Q(\rgf/sptr/sp [15]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sptr/sp__0 [1]),
        .Q(\rgf/sptr/sp [1]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sptr/sp__0 [2]),
        .Q(\rgf/sptr/sp [2]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sptr/sp__0 [3]),
        .Q(\rgf/sptr/sp [3]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sptr/sp__0 [4]),
        .Q(\rgf/sptr/sp [4]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sptr/sp__0 [5]),
        .Q(\rgf/sptr/sp [5]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sptr/sp__0 [6]),
        .Q(\rgf/sptr/sp [6]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sptr/sp__0 [7]),
        .Q(\rgf/sptr/sp [7]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sptr/sp__0 [8]),
        .Q(\rgf/sptr/sp [8]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sptr/sp__0 [9]),
        .Q(\rgf/sptr/sp [9]),
        .R(\stat[2]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/sr [0]),
        .Q(\rgf/sreg/sr [0]),
        .R(\sr[15]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/sr [10]),
        .Q(\rgf/sreg/sr [10]),
        .R(\sr[15]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/sr [11]),
        .Q(\rgf/sreg/sr [11]),
        .R(\sr[15]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr[12]_i_1_n_0 ),
        .Q(\rgf/sreg/sr [12]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr[13]_i_1_n_0 ),
        .Q(\rgf/sreg/sr [13]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/sr [14]),
        .Q(\rgf/sreg/sr [14]),
        .R(\sr[15]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/sr [15]),
        .Q(\rgf/sreg/sr [15]),
        .R(\sr[15]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/sr [1]),
        .Q(\rgf/sreg/sr [1]),
        .R(\sr[15]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr[2]_i_1_n_0 ),
        .Q(\rgf/sreg/sr [2]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr[3]_i_1_n_0 ),
        .Q(\rgf/sreg/sr [3]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr[4]_i_1_n_0 ),
        .Q(\rgf/sreg/sr [4]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr[5]_i_1_n_0 ),
        .Q(\rgf/sreg/sr [5]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr[6]_i_1_n_0 ),
        .Q(\rgf/sreg/sr [6]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sr[7]_i_1_n_0 ),
        .Q(\rgf/sreg/sr [7]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/sr [8]),
        .Q(\rgf/sreg/sr [8]),
        .R(\sr[15]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/sr [9]),
        .Q(\rgf/sreg/sr [9]),
        .R(\sr[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \sp[0]_i_1 
       (.I0(cbus[0]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp[0]_i_2_n_0 ),
        .I3(\rgf/sptr/sp [0]),
        .I4(\sp[0]_i_3_n_0 ),
        .I5(\rgf/sp_dec_0 [0]),
        .O(\rgf/sptr/sp__0 [0]));
  LUT6 #(
    .INIT(64'hF5FFFFFFEEEEEEEE)) 
    \sp[0]_i_10 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [6]),
        .I2(\ctl/stat [0]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [12]),
        .I5(\fch/ir [10]),
        .O(\sp[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0CFFFFEE)) 
    \sp[0]_i_11 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [8]),
        .O(\sp[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001005)) 
    \sp[0]_i_2 
       (.I0(\sp[0]_i_4_n_0 ),
        .I1(\ctl/stat [0]),
        .I2(\fch/ir [12]),
        .I3(\fch/ir [11]),
        .I4(\sp[0]_i_5_n_0 ),
        .I5(\sp[0]_i_6_n_0 ),
        .O(\sp[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FFF1)) 
    \sp[0]_i_3 
       (.I0(fch_irq_req),
        .I1(\ctl/stat [0]),
        .I2(\fch/ir [12]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [10]),
        .I5(\sp[0]_i_7_n_0 ),
        .O(\sp[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFF0200FFFFFF)) 
    \sp[0]_i_4 
       (.I0(\ctl/stat [0]),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [5]),
        .I5(\fch/ir [1]),
        .O(\sp[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFE)) 
    \sp[0]_i_5 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [7]),
        .I5(\sp[0]_i_8_n_0 ),
        .O(\sp[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7EFFFFFFFF)) 
    \sp[0]_i_6 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [15]),
        .I4(\bcmd[2]_INST_0_i_2_n_0 ),
        .I5(brdy),
        .O(\sp[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEF6AFF7)) 
    \sp[0]_i_7 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [0]),
        .I5(\sp[0]_i_9_n_0 ),
        .O(\sp[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h3FFF3FFE)) 
    \sp[0]_i_8 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [2]),
        .O(\sp[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFFFFFFFFFFFE)) 
    \sp[0]_i_9 
       (.I0(\sp[0]_i_6_n_0 ),
        .I1(\sp[0]_i_10_n_0 ),
        .I2(\sp[0]_i_11_n_0 ),
        .I3(\fch/ir [2]),
        .I4(\fch/ir [9]),
        .I5(\fch/ir [8]),
        .O(\sp[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[10]_i_1 
       (.I0(cbus[10]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp[10]_i_2_n_0 ),
        .O(\rgf/sptr/sp__0 [10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[10]_i_2 
       (.I0(\rgf/sptr/sp_dec_0__0_carry__1_n_5 ),
        .I1(\sp[0]_i_2_n_0 ),
        .I2(\rgf/sptr/sp [10]),
        .I3(\sp[0]_i_3_n_0 ),
        .I4(\rgf/sp_dec_0 [10]),
        .O(\sp[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[11]_i_1 
       (.I0(cbus[11]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp[11]_i_2_n_0 ),
        .O(\rgf/sptr/sp__0 [11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[11]_i_2 
       (.I0(\rgf/sptr/sp_dec_0__0_carry__1_n_4 ),
        .I1(\sp[0]_i_2_n_0 ),
        .I2(\rgf/sptr/sp [11]),
        .I3(\sp[0]_i_3_n_0 ),
        .I4(\rgf/sp_dec_0 [11]),
        .O(\sp[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[12]_i_1 
       (.I0(cbus[12]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp[12]_i_2_n_0 ),
        .O(\rgf/sptr/sp__0 [12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[12]_i_2 
       (.I0(\rgf/sptr/sp_dec_0__0_carry__2_n_7 ),
        .I1(\sp[0]_i_2_n_0 ),
        .I2(\rgf/sptr/sp [12]),
        .I3(\sp[0]_i_3_n_0 ),
        .I4(\rgf/sp_dec_0 [12]),
        .O(\sp[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[13]_i_1 
       (.I0(cbus[13]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp[13]_i_2_n_0 ),
        .O(\rgf/sptr/sp__0 [13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[13]_i_2 
       (.I0(\rgf/sptr/sp_dec_0__0_carry__2_n_6 ),
        .I1(\sp[0]_i_2_n_0 ),
        .I2(\rgf/sptr/sp [13]),
        .I3(\sp[0]_i_3_n_0 ),
        .I4(\rgf/sp_dec_0 [13]),
        .O(\sp[13]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[14]_i_1 
       (.I0(cbus[14]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp[14]_i_2_n_0 ),
        .O(\rgf/sptr/sp__0 [14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[14]_i_2 
       (.I0(\rgf/sptr/sp_dec_0__0_carry__2_n_5 ),
        .I1(\sp[0]_i_2_n_0 ),
        .I2(\rgf/sptr/sp [14]),
        .I3(\sp[0]_i_3_n_0 ),
        .I4(\rgf/sp_dec_0 [14]),
        .O(\sp[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[15]_i_1 
       (.I0(cbus[15]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp[15]_i_3_n_0 ),
        .O(\rgf/sptr/sp__0 [15]));
  LUT4 #(
    .INIT(16'h0400)) 
    \sp[15]_i_2 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\iv[15]_i_2_n_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .O(\sp[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[15]_i_3 
       (.I0(\rgf/sptr/sp_dec_0__0_carry__2_n_4 ),
        .I1(\sp[0]_i_2_n_0 ),
        .I2(\rgf/sptr/sp [15]),
        .I3(\sp[0]_i_3_n_0 ),
        .I4(\rgf/sp_dec_0 [15]),
        .O(\sp[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    \sp[1]_i_1 
       (.I0(\grn[1]_i_2_n_0 ),
        .I1(\sp[1]_i_2_n_0 ),
        .I2(\grn[1]_i_4_n_0 ),
        .I3(\sp[15]_i_2_n_0 ),
        .I4(\sp[1]_i_3_n_0 ),
        .O(\rgf/sptr/sp__0 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \sp[1]_i_2 
       (.I0(\grn[14]_i_8_n_0 ),
        .I1(bdatr[1]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .I3(tnsn_dsp_c[1]),
        .I4(\sp[1]_i_4_n_0 ),
        .I5(\sp[1]_i_5_n_0 ),
        .O(\sp[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[1]_i_3 
       (.I0(\rgf/sptr/sp_dec_0__0_carry_n_6 ),
        .I1(\sp[0]_i_2_n_0 ),
        .I2(\rgf/sptr/sp [1]),
        .I3(\sp[0]_i_3_n_0 ),
        .I4(\rgf/sp_dec_0 [1]),
        .O(\sp[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \sp[1]_i_4 
       (.I0(bdatr[9]),
        .I1(\mem/read_cyc [0]),
        .I2(bdatr[1]),
        .I3(\mem/read_cyc [1]),
        .I4(\mem/read_cyc [2]),
        .O(\sp[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \sp[1]_i_5 
       (.I0(\grn[4]_i_3_n_0 ),
        .I1(\alu/art/add/tout__1_carry_n_6 ),
        .I2(\grn[15]_i_9_n_0 ),
        .I3(\alu/data0 [1]),
        .O(\sp[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[2]_i_1 
       (.I0(cbus[2]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp[2]_i_2_n_0 ),
        .O(\rgf/sptr/sp__0 [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[2]_i_2 
       (.I0(\rgf/sptr/sp_dec_0__0_carry_n_5 ),
        .I1(\sp[0]_i_2_n_0 ),
        .I2(\rgf/sptr/sp [2]),
        .I3(\sp[0]_i_3_n_0 ),
        .I4(\rgf/sp_dec_0 [2]),
        .O(\sp[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[3]_i_1 
       (.I0(cbus[3]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp[3]_i_2_n_0 ),
        .O(\rgf/sptr/sp__0 [3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[3]_i_2 
       (.I0(\rgf/sptr/sp_dec_0__0_carry_n_4 ),
        .I1(\sp[0]_i_2_n_0 ),
        .I2(\rgf/sptr/sp [3]),
        .I3(\sp[0]_i_3_n_0 ),
        .I4(\rgf/sp_dec_0 [3]),
        .O(\sp[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[4]_i_1 
       (.I0(cbus[4]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp[4]_i_2_n_0 ),
        .O(\rgf/sptr/sp__0 [4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[4]_i_2 
       (.I0(\rgf/sptr/sp_dec_0__0_carry__0_n_7 ),
        .I1(\sp[0]_i_2_n_0 ),
        .I2(\rgf/sptr/sp [4]),
        .I3(\sp[0]_i_3_n_0 ),
        .I4(\rgf/sp_dec_0 [4]),
        .O(\sp[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \sp[5]_i_1 
       (.I0(\grn[5]_i_2_n_0 ),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp[5]_i_2_n_0 ),
        .O(\rgf/sptr/sp__0 [5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[5]_i_2 
       (.I0(\rgf/sptr/sp_dec_0__0_carry__0_n_6 ),
        .I1(\sp[0]_i_2_n_0 ),
        .I2(\rgf/sptr/sp [5]),
        .I3(\sp[0]_i_3_n_0 ),
        .I4(\rgf/sp_dec_0 [5]),
        .O(\sp[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[6]_i_1 
       (.I0(cbus[6]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp[6]_i_2_n_0 ),
        .O(\rgf/sptr/sp__0 [6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[6]_i_2 
       (.I0(\rgf/sptr/sp_dec_0__0_carry__0_n_5 ),
        .I1(\sp[0]_i_2_n_0 ),
        .I2(\rgf/sptr/sp [6]),
        .I3(\sp[0]_i_3_n_0 ),
        .I4(\rgf/sp_dec_0 [6]),
        .O(\sp[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \sp[7]_i_1 
       (.I0(\grn[7]_i_3_n_0 ),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp[7]_i_2_n_0 ),
        .O(\rgf/sptr/sp__0 [7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[7]_i_2 
       (.I0(\rgf/sptr/sp_dec_0__0_carry__0_n_4 ),
        .I1(\sp[0]_i_2_n_0 ),
        .I2(\rgf/sptr/sp [7]),
        .I3(\sp[0]_i_3_n_0 ),
        .I4(\rgf/sp_dec_0 [7]),
        .O(\sp[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[8]_i_1 
       (.I0(cbus[8]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp[8]_i_2_n_0 ),
        .O(\rgf/sptr/sp__0 [8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[8]_i_2 
       (.I0(\rgf/sptr/sp_dec_0__0_carry__1_n_7 ),
        .I1(\sp[0]_i_2_n_0 ),
        .I2(\rgf/sptr/sp [8]),
        .I3(\sp[0]_i_3_n_0 ),
        .I4(\rgf/sp_dec_0 [8]),
        .O(\sp[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[9]_i_1 
       (.I0(cbus[9]),
        .I1(\sp[15]_i_2_n_0 ),
        .I2(\sp[9]_i_2_n_0 ),
        .O(\rgf/sptr/sp__0 [9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sp[9]_i_2 
       (.I0(\rgf/sptr/sp_dec_0__0_carry__1_n_6 ),
        .I1(\sp[0]_i_2_n_0 ),
        .I2(\rgf/sptr/sp [9]),
        .I3(\sp[0]_i_3_n_0 ),
        .I4(\rgf/sp_dec_0 [9]),
        .O(\sp[9]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0__0_carry_i_1
       (.I0(\rgf/sptr/sp [1]),
        .O(sp_dec_0__0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__0_i_1
       (.I0(\rgf/sptr/sp [7]),
        .O(sp_dec_0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__0_i_2
       (.I0(\rgf/sptr/sp [6]),
        .O(sp_dec_0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__0_i_3
       (.I0(\rgf/sptr/sp [5]),
        .O(sp_dec_0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__0_i_4
       (.I0(\rgf/sptr/sp [4]),
        .O(sp_dec_0_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__1_i_1
       (.I0(\rgf/sptr/sp [11]),
        .O(sp_dec_0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__1_i_2
       (.I0(\rgf/sptr/sp [10]),
        .O(sp_dec_0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__1_i_3
       (.I0(\rgf/sptr/sp [9]),
        .O(sp_dec_0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__1_i_4
       (.I0(\rgf/sptr/sp [8]),
        .O(sp_dec_0_carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__2_i_1
       (.I0(\rgf/sptr/sp [15]),
        .O(sp_dec_0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__2_i_2
       (.I0(\rgf/sptr/sp [14]),
        .O(sp_dec_0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__2_i_3
       (.I0(\rgf/sptr/sp [13]),
        .O(sp_dec_0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry__2_i_4
       (.I0(\rgf/sptr/sp [12]),
        .O(sp_dec_0_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry_i_1
       (.I0(\rgf/sptr/sp [3]),
        .O(sp_dec_0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry_i_2
       (.I0(\rgf/sptr/sp [2]),
        .O(sp_dec_0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sp_dec_0_carry_i_3
       (.I0(\rgf/sptr/sp [1]),
        .O(sp_dec_0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hFF540000FF54FF54)) 
    \sr[12]_i_1 
       (.I0(\sr[15]_i_1_n_0 ),
        .I1(\sr[13]_i_2_n_0 ),
        .I2(\rgf/sreg/sr [12]),
        .I3(cpuid[0]),
        .I4(\sr[12]_i_2_n_0 ),
        .I5(\sr[13]_i_4_n_0 ),
        .O(\sr[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE0FF)) 
    \sr[12]_i_2 
       (.I0(\sr[13]_i_5_n_0 ),
        .I1(\sr[13]_i_6_n_0 ),
        .I2(cpuid[0]),
        .I3(rst_n),
        .I4(\rgf/sreg/sr [12]),
        .O(\sr[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF540000FF54FF54)) 
    \sr[13]_i_1 
       (.I0(\sr[15]_i_1_n_0 ),
        .I1(\sr[13]_i_2_n_0 ),
        .I2(\rgf/sreg/sr [13]),
        .I3(cpuid[1]),
        .I4(\sr[13]_i_3_n_0 ),
        .I5(\sr[13]_i_4_n_0 ),
        .O(\sr[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000F080003FF0000)) 
    \sr[13]_i_10 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [10]),
        .I4(\fch/ir [11]),
        .I5(\fch/ir [8]),
        .O(\sr[13]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sr[13]_i_11 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [8]),
        .O(\sr[13]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h23034003)) 
    \sr[13]_i_12 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [4]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [7]),
        .O(\sr[13]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \sr[13]_i_2 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\iv[15]_i_2_n_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .O(\sr[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE0FF)) 
    \sr[13]_i_3 
       (.I0(\sr[13]_i_5_n_0 ),
        .I1(\sr[13]_i_6_n_0 ),
        .I2(cpuid[1]),
        .I3(rst_n),
        .I4(\rgf/sreg/sr [13]),
        .O(\sr[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[13]_i_4 
       (.I0(\sr[3]_i_3_n_0 ),
        .I1(\sr[13]_i_2_n_0 ),
        .O(\sr[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000000E)) 
    \sr[13]_i_5 
       (.I0(\fch/ir [15]),
        .I1(\fch/ir [14]),
        .I2(\ctl/stat [0]),
        .I3(\ctl/stat [1]),
        .I4(\ctl/stat [2]),
        .I5(\sr[13]_i_7_n_0 ),
        .O(\sr[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \sr[13]_i_6 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [11]),
        .I3(\ctl/stat [1]),
        .I4(ctl_fetch_inferred_i_14_n_0),
        .I5(\sr[13]_i_8_n_0 ),
        .O(\sr[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF00F4FCFFF0F4FCF)) 
    \sr[13]_i_7 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [15]),
        .I3(\fch/ir [12]),
        .I4(\fch/ir [13]),
        .I5(\sr[13]_i_9_n_0 ),
        .O(\sr[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \sr[13]_i_8 
       (.I0(\bdatw[15]_INST_0_i_82_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ),
        .I2(\ctl/stat [2]),
        .I3(brdy),
        .I4(\ctl/stat [0]),
        .I5(\fch_irq_lev[1]_i_5_n_0 ),
        .O(\sr[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFBAAAAAAAAAAAAAA)) 
    \sr[13]_i_9 
       (.I0(\sr[13]_i_10_n_0 ),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [10]),
        .I4(\sr[13]_i_11_n_0 ),
        .I5(\sr[13]_i_12_n_0 ),
        .O(\sr[13]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \sr[15]_i_1 
       (.I0(rst_n),
        .I1(\sr[3]_i_3_n_0 ),
        .O(\sr[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAA2A0A20AA2000)) 
    \sr[2]_i_1 
       (.I0(rst_n),
        .I1(\sr[2]_i_2_n_0 ),
        .I2(\sr[3]_i_3_n_0 ),
        .I3(\sr[13]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [2]),
        .I5(cbus[2]),
        .O(\sr[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sr[2]_i_2 
       (.I0(fch_irq_lev[0]),
        .I1(\sr[13]_i_6_n_0 ),
        .I2(\rgf/sreg/sr [2]),
        .O(\sr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAA2A0A20AA2000)) 
    \sr[3]_i_1 
       (.I0(rst_n),
        .I1(\sr[3]_i_2_n_0 ),
        .I2(\sr[3]_i_3_n_0 ),
        .I3(\sr[13]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [3]),
        .I5(cbus[3]),
        .O(\sr[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sr[3]_i_2 
       (.I0(fch_irq_lev[1]),
        .I1(\sr[13]_i_6_n_0 ),
        .I2(\rgf/sreg/sr [3]),
        .O(\sr[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \sr[3]_i_3 
       (.I0(\grn[15]_i_3_n_0 ),
        .I1(\grn[15]_i_4_n_0 ),
        .I2(\iv[15]_i_2_n_0 ),
        .I3(\grn[15]_i_6_n_0 ),
        .O(\sr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888888A8A8A8AA)) 
    \sr[4]_i_1 
       (.I0(rst_n),
        .I1(\sr[4]_i_2_n_0 ),
        .I2(\sr[4]_i_3_n_0 ),
        .I3(\sr[4]_i_4_n_0 ),
        .I4(\sr[4]_i_5_n_0 ),
        .I5(\sr[4]_i_6_n_0 ),
        .O(\sr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE3FFE3FFE0FFE3)) 
    \sr[4]_i_10 
       (.I0(\sr[4]_i_15_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\sr[6]_i_6_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\sr[4]_i_16_n_0 ),
        .I5(\sr[4]_i_17_n_0 ),
        .O(\sr[4]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h4C1900FF)) 
    \sr[4]_i_11 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\grn_reg[15]_i_29_n_0 ),
        .I3(\grn[14]_i_3_n_0 ),
        .I4(\grn[15]_i_30_n_0 ),
        .O(\sr[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sr[4]_i_12 
       (.I0(\grn[4]_i_3_n_0 ),
        .I1(\sr[4]_i_18_n_0 ),
        .I2(\alu/art/add/tout__1_carry_n_7 ),
        .I3(\alu/art/add/tout__1_carry_n_6 ),
        .I4(\alu/art/add/tout__1_carry_n_5 ),
        .I5(\alu/art/add/tout__1_carry_n_4 ),
        .O(\sr[4]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sr[4]_i_13 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_1_n_0 ),
        .I1(\grn[1]_i_7_n_0 ),
        .O(\sr[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC8CBCFCFC8CBC)) 
    \sr[4]_i_14 
       (.I0(\grn[5]_i_16_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I3(\grn[1]_i_21_n_0 ),
        .I4(\grn[6]_i_14_n_0 ),
        .I5(\grn[5]_i_15_n_0 ),
        .O(\sr[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0AFAFC0CFC0CF)) 
    \sr[4]_i_15 
       (.I0(\sr[4]_i_19_n_0 ),
        .I1(\grn[1]_i_21_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\grn[6]_i_23_n_0 ),
        .I4(\grn[5]_i_14_n_0 ),
        .I5(\grn[6]_i_14_n_0 ),
        .O(\sr[4]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \sr[4]_i_16 
       (.I0(abus_0[7]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\sr[4]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sr[4]_i_17 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\badr[0]_INST_0_i_1_n_0 ),
        .O(\sr[4]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_18 
       (.I0(\alu/art/add/tout__1_carry__0_n_7 ),
        .I1(\alu/art/p_0_in ),
        .I2(\alu/art/add/tout__1_carry__0_n_6 ),
        .I3(\alu/art/add/tout__1_carry__0_n_5 ),
        .O(\sr[4]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h0F33AAAA)) 
    \sr[4]_i_19 
       (.I0(abus_0[7]),
        .I1(\badr[5]_INST_0_i_1_n_0 ),
        .I2(\badr[6]_INST_0_i_1_n_0 ),
        .I3(bbus_0[0]),
        .I4(\grn[4]_i_15_n_0 ),
        .O(\sr[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFEEFE)) 
    \sr[4]_i_2 
       (.I0(\grn[4]_i_5_n_0 ),
        .I1(\grn[4]_i_4_n_0 ),
        .I2(\alu/art/add/tout__1_carry__0_n_7 ),
        .I3(\grn[4]_i_3_n_0 ),
        .I4(\grn[4]_i_2_n_0 ),
        .I5(\sr[13]_i_4_n_0 ),
        .O(\sr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0004FFFF)) 
    \sr[4]_i_3 
       (.I0(\sr[4]_i_7_n_0 ),
        .I1(\grn[7]_i_6_n_0 ),
        .I2(\grn[1]_i_4_n_0 ),
        .I3(\grn[3]_i_3_n_0 ),
        .I4(\sr[13]_i_5_n_0 ),
        .I5(\sr[4]_i_8_n_0 ),
        .O(\sr[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_4 
       (.I0(\grn[6]_i_5_n_0 ),
        .I1(\grn[3]_i_4_n_0 ),
        .I2(\grn[5]_i_6_n_0 ),
        .I3(\grn[2]_i_2_n_0 ),
        .O(\sr[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF4FFFFFFFF)) 
    \sr[4]_i_5 
       (.I0(\sr[4]_i_9_n_0 ),
        .I1(\sr[4]_i_10_n_0 ),
        .I2(\grn[6]_i_12_n_0 ),
        .I3(\grn[0]_i_2_n_0 ),
        .I4(\grn[4]_i_2_n_0 ),
        .I5(\grn[7]_i_4_n_0 ),
        .O(\sr[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \sr[4]_i_6 
       (.I0(\sr[13]_i_4_n_0 ),
        .I1(\sr[13]_i_5_n_0 ),
        .I2(\rgf/sreg/sr [4]),
        .O(\sr[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sr[4]_i_7 
       (.I0(\grn[0]_i_4_n_0 ),
        .I1(\sr[4]_i_11_n_0 ),
        .I2(\grn[2]_i_5_n_0 ),
        .I3(\grn[4]_i_5_n_0 ),
        .I4(\grn[5]_i_5_n_0 ),
        .I5(\grn[6]_i_2_n_0 ),
        .O(\sr[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF45EF)) 
    \sr[4]_i_8 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\grn[4]_i_10_n_0 ),
        .I3(tout__1_carry_i_10_n_0),
        .I4(\rgf/sreg/sr [4]),
        .I5(\sr[4]_i_12_n_0 ),
        .O(\sr[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAFFFFFFFFFFEA)) 
    \sr[4]_i_9 
       (.I0(\sr[4]_i_13_n_0 ),
        .I1(\sr[4]_i_14_n_0 ),
        .I2(\grn[1]_i_15_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[15]_i_30_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .O(\sr[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8A008A000000FF00)) 
    \sr[5]_i_1 
       (.I0(\sr[5]_i_2_n_0 ),
        .I1(\sr[5]_i_3_n_0 ),
        .I2(\sr[5]_i_4_n_0 ),
        .I3(rst_n),
        .I4(\grn[5]_i_2_n_0 ),
        .I5(\sr[13]_i_4_n_0 ),
        .O(\sr[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sr[5]_i_2 
       (.I0(\rgf/sreg/sr [5]),
        .I1(\sr[13]_i_5_n_0 ),
        .O(\sr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000960FFFFFFFF)) 
    \sr[5]_i_3 
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[7]),
        .I3(\alu/art/p_0_in ),
        .I4(\grn[4]_i_3_n_0 ),
        .I5(\sr[13]_i_5_n_0 ),
        .O(\sr[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD2FFFFFFFFFFFFFF)) 
    \sr[5]_i_4 
       (.I0(\sr[6]_i_7_n_0 ),
        .I1(\sr[5]_i_5_n_0 ),
        .I2(\grn[7]_i_4_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I4(\grn[1]_i_7_n_0 ),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\sr[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0FDF0F0)) 
    \sr[5]_i_5 
       (.I0(abus_0[7]),
        .I1(\sr[6]_i_6_n_0 ),
        .I2(\grn[6]_i_12_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\sr[6]_i_8_n_0 ),
        .O(\sr[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8A008A000000FF00)) 
    \sr[6]_i_1 
       (.I0(\sr[6]_i_2_n_0 ),
        .I1(\sr[6]_i_3_n_0 ),
        .I2(\sr[6]_i_4_n_0 ),
        .I3(rst_n),
        .I4(\sr[6]_i_5_n_0 ),
        .I5(\sr[13]_i_4_n_0 ),
        .O(\sr[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[6]_i_10 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(bbus_0[0]),
        .I2(\badr[6]_INST_0_i_1_n_0 ),
        .O(\sr[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFDDDDDDDDDDDD)) 
    \sr[6]_i_11 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\grn[6]_i_14_n_0 ),
        .I2(bbus_0[0]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I4(\grn[4]_i_15_n_0 ),
        .I5(abus_0[7]),
        .O(\sr[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3A003A00FF000000)) 
    \sr[6]_i_12 
       (.I0(\badr[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[3]),
        .I2(bbus_0[0]),
        .I3(\grn[6]_i_14_n_0 ),
        .I4(\sr[6]_i_16_n_0 ),
        .I5(\grn[4]_i_15_n_0 ),
        .O(\sr[6]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \sr[6]_i_13 
       (.I0(abus_0[3]),
        .I1(\badr[4]_INST_0_i_1_n_0 ),
        .I2(bbus_0[0]),
        .O(\sr[6]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \sr[6]_i_14 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\badr[6]_INST_0_i_1_n_0 ),
        .I2(bbus_0[0]),
        .O(\sr[6]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sr[6]_i_15 
       (.I0(\badr[0]_INST_0_i_1_n_0 ),
        .I1(bbus_0[0]),
        .O(\sr[6]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \sr[6]_i_16 
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(abus_0[1]),
        .I2(bbus_0[0]),
        .O(\sr[6]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sr[6]_i_2 
       (.I0(\rgf/sreg/sr [6]),
        .I1(\sr[13]_i_5_n_0 ),
        .O(\sr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0F022FF)) 
    \sr[6]_i_3 
       (.I0(abus_0[7]),
        .I1(\sr[6]_i_6_n_0 ),
        .I2(\sr[6]_i_7_n_0 ),
        .I3(\sr[6]_i_8_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .I5(\grn[6]_i_12_n_0 ),
        .O(\sr[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAA28)) 
    \sr[6]_i_4 
       (.I0(\sr[13]_i_5_n_0 ),
        .I1(\alu/art/add/tout ),
        .I2(tout__1_carry_i_8_n_0),
        .I3(\grn[4]_i_3_n_0 ),
        .O(\sr[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001101)) 
    \sr[6]_i_5 
       (.I0(\grn[6]_i_5_n_0 ),
        .I1(\grn[6]_i_4_n_0 ),
        .I2(tnsn_dsp_c[6]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .I4(\grn[6]_i_3_n_0 ),
        .I5(\grn[6]_i_2_n_0 ),
        .O(\sr[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \sr[6]_i_6 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(bbus_0[0]),
        .I2(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(\sr[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000775F000F)) 
    \sr[6]_i_7 
       (.I0(\grn[6]_i_19_n_0 ),
        .I1(\sr[6]_i_9_n_0 ),
        .I2(\sr[6]_i_10_n_0 ),
        .I3(\grn[4]_i_15_n_0 ),
        .I4(\sr[6]_i_11_n_0 ),
        .I5(\sr[6]_i_12_n_0 ),
        .O(\sr[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA03F3FAFA03030)) 
    \sr[6]_i_8 
       (.I0(\sr[6]_i_13_n_0 ),
        .I1(\sr[6]_i_14_n_0 ),
        .I2(\grn[6]_i_14_n_0 ),
        .I3(\sr[6]_i_15_n_0 ),
        .I4(\grn[4]_i_15_n_0 ),
        .I5(\grn[4]_i_16_n_0 ),
        .O(\sr[6]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sr[6]_i_9 
       (.I0(abus_0[7]),
        .I1(bbus_0[0]),
        .I2(\rgf/sreg/sr [6]),
        .O(\sr[6]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h880C)) 
    \sr[7]_i_1 
       (.I0(\sr[7]_i_2_n_0 ),
        .I1(rst_n),
        .I2(\grn[7]_i_3_n_0 ),
        .I3(\sr[13]_i_4_n_0 ),
        .O(\sr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33F3AAAAFFFFAAAA)) 
    \sr[7]_i_2 
       (.I0(\rgf/sreg/sr [7]),
        .I1(\grn[7]_i_6_n_0 ),
        .I2(\alu/art/p_0_in ),
        .I3(\grn[4]_i_3_n_0 ),
        .I4(\sr[13]_i_5_n_0 ),
        .I5(\grn[7]_i_4_n_0 ),
        .O(\sr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    \stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(\ctl/stat [1]),
        .I2(\ctl/stat [2]),
        .I3(\fch/ir [12]),
        .I4(\fch/ir [15]),
        .I5(\stat[0]_i_3_n_0 ),
        .O(\ctl/stat_nx [0]));
  LUT3 #(
    .INIT(8'h73)) 
    \stat[0]_i_10 
       (.I0(brdy),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [1]),
        .O(\stat[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \stat[0]_i_11 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [11]),
        .O(\stat[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[0]_i_12 
       (.I0(\ctl/stat [2]),
        .I1(\ctl/stat [0]),
        .O(\stat[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBFBFBFBFBFBF)) 
    \stat[0]_i_13 
       (.I0(\stat[0]_i_15_n_0 ),
        .I1(\fch/ir [11]),
        .I2(\iv[15]_i_15_n_0 ),
        .I3(\fch/ir [3]),
        .I4(\ctl/stat [0]),
        .I5(\fch/ir [10]),
        .O(\stat[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \stat[0]_i_14 
       (.I0(\ctl/stat [1]),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [1]),
        .O(\stat[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h7F3F)) 
    \stat[0]_i_15 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [10]),
        .O(\stat[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0002AAAA00020002)) 
    \stat[0]_i_2 
       (.I0(\stat[0]_i_4_n_0 ),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [15]),
        .I3(\stat[0]_i_5_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_7_n_0 ),
        .I5(\stat[2]_i_9_n_0 ),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C0CAE0CFF0CAE)) 
    \stat[0]_i_3 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_6_n_0 ),
        .I1(\stat[0]_i_6_n_0 ),
        .I2(\stat[0]_i_7_n_0 ),
        .I3(\ctl/stat [0]),
        .I4(\fch/ir [13]),
        .I5(\tnsn_dsp_a[8]_INST_0_i_8_n_0 ),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDFDD0FFFDDDD0000)) 
    \stat[0]_i_4 
       (.I0(\stat[0]_i_8_n_0 ),
        .I1(\stat[0]_i_9_n_0 ),
        .I2(\stat[0]_i_10_n_0 ),
        .I3(\ctl/stat [1]),
        .I4(\stat[0]_i_11_n_0 ),
        .I5(\stat[0]_i_12_n_0 ),
        .O(\stat[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDEDECFFCCFCF)) 
    \stat[0]_i_5 
       (.I0(\rgf/sreg/sr [6]),
        .I1(\ctl/stat [1]),
        .I2(\fch/ir [11]),
        .I3(\rgf/sreg/sr [5]),
        .I4(\fch/ir [14]),
        .I5(\fch/ir [13]),
        .O(\stat[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hC3070307)) 
    \stat[0]_i_6 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [3]),
        .O(\stat[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF99109999)) 
    \stat[0]_i_7 
       (.I0(\ctl/stat [0]),
        .I1(brdy),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [10]),
        .I5(\stat[0]_i_13_n_0 ),
        .O(\stat[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF91FF)) 
    \stat[0]_i_8 
       (.I0(\ctl/stat [0]),
        .I1(brdy),
        .I2(\fch/ir [0]),
        .I3(\fch/ir [1]),
        .I4(\ctl/stat [1]),
        .I5(\ctl/stat [2]),
        .O(\stat[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCAF000000000)) 
    \stat[0]_i_9 
       (.I0(fch_irq_req),
        .I1(\rgf/ivec/iv [0]),
        .I2(\ctl/stat [0]),
        .I3(brdy),
        .I4(\ctl/stat [2]),
        .I5(\stat[0]_i_14_n_0 ),
        .O(\stat[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h000011F0)) 
    \stat[1]_i_1 
       (.I0(\stat[1]_i_2_n_0 ),
        .I1(\stat[1]_i_3_n_0 ),
        .I2(\stat[2]_i_4_n_0 ),
        .I3(\stat[1]_i_4_n_0 ),
        .I4(\fch/ir [15]),
        .O(\ctl/stat_nx [1]));
  LUT6 #(
    .INIT(64'hF7F4F7F7F7F4C4C4)) 
    \stat[1]_i_2 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_6_n_0 ),
        .I1(\fch/ir [12]),
        .I2(\ctl/stat [1]),
        .I3(\stat[1]_i_5_n_0 ),
        .I4(\fch/ir [14]),
        .I5(\stat[1]_i_6_n_0 ),
        .O(\stat[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFBABF5F5)) 
    \stat[1]_i_3 
       (.I0(\stat[1]_i_7_n_0 ),
        .I1(brdy),
        .I2(\ctl/stat [2]),
        .I3(\fch/ir [1]),
        .I4(\ctl/stat [0]),
        .O(\stat[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \stat[1]_i_4 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [14]),
        .I2(\ctl/stat [1]),
        .I3(\ctl/stat [0]),
        .I4(\rgf/sreg/sr [6]),
        .I5(\fch/ir [13]),
        .O(\stat[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \stat[1]_i_5 
       (.I0(\rgf/sreg/sr [5]),
        .I1(\fch/ir [11]),
        .O(\stat[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0F1F5F5)) 
    \stat[1]_i_6 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [1]),
        .I2(\ctl/stat [1]),
        .I3(\fch/ir [0]),
        .I4(\stat[2]_i_9_n_0 ),
        .O(\stat[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stat[1]_i_7 
       (.I0(\fch/ir [12]),
        .I1(\ctl/stat [1]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [11]),
        .O(\stat[1]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \stat[2]_i_1 
       (.I0(rst_n),
        .O(\stat[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2A2AAA2AAAAAAAAA)) 
    \stat[2]_i_10 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [11]),
        .I3(\stat[2]_i_11_n_0 ),
        .I4(\ctl/stat [0]),
        .I5(ctl_fetch_inferred_i_18_n_0),
        .O(\stat[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stat[2]_i_11 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [4]),
        .O(\stat[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h40405140)) 
    \stat[2]_i_2 
       (.I0(\fch/ir [15]),
        .I1(\stat[2]_i_3_n_0 ),
        .I2(\stat[2]_i_4_n_0 ),
        .I3(\stat[2]_i_5_n_0 ),
        .I4(\stat[2]_i_6_n_0 ),
        .O(\stat[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA8A)) 
    \stat[2]_i_3 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [12]),
        .I2(\rgf/sreg/sr [6]),
        .I3(\ctl/stat [0]),
        .I4(\fch/ir [14]),
        .I5(\bcmd[2]_INST_0_i_2_n_0 ),
        .O(\stat[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4111)) 
    \stat[2]_i_4 
       (.I0(\ctl/stat [0]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [12]),
        .I3(\rgf/sreg/sr [7]),
        .I4(\fch/ir [14]),
        .I5(\stat[2]_i_7_n_0 ),
        .O(\stat[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1111111F11111110)) 
    \stat[2]_i_5 
       (.I0(\ctl/stat [0]),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [12]),
        .I4(\fch/ir [11]),
        .I5(\stat[2]_i_8_n_0 ),
        .O(\stat[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h550F550355F05503)) 
    \stat[2]_i_6 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_6_n_0 ),
        .I1(\stat[2]_i_9_n_0 ),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [12]),
        .I4(\fch/ir [14]),
        .I5(\rgf/sreg/sr [5]),
        .O(\stat[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBAA)) 
    \stat[2]_i_7 
       (.I0(\stat[2]_i_10_n_0 ),
        .I1(\fch/ir [3]),
        .I2(ctl_fetch_inferred_i_9_n_0),
        .I3(\ctl/stat [0]),
        .I4(\ctl/stat [2]),
        .I5(\ctl/stat [1]),
        .O(\stat[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1055000000AA4000)) 
    \stat[2]_i_8 
       (.I0(\ctl/stat [2]),
        .I1(\ctl/stat [0]),
        .I2(brdy),
        .I3(\fch/ir [1]),
        .I4(\fch/ir [0]),
        .I5(\ctl/stat [1]),
        .O(\stat[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \stat[2]_i_9 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [2]),
        .I5(\stat[2]_i_11_n_0 ),
        .O(\stat[2]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_a[0]_INST_0 
       (.I0(\badr[0]_INST_0_i_1_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(tnsn_dsp_a[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[1]_INST_0 
       (.I0(abus_0[1]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(tnsn_dsp_a[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_a[2]_INST_0 
       (.I0(\badr[2]_INST_0_i_1_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(tnsn_dsp_a[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[3]_INST_0 
       (.I0(abus_0[3]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(tnsn_dsp_a[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_a[4]_INST_0 
       (.I0(\badr[4]_INST_0_i_1_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(tnsn_dsp_a[4]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_a[5]_INST_0 
       (.I0(\badr[5]_INST_0_i_1_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(tnsn_dsp_a[5]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_a[6]_INST_0 
       (.I0(\badr[6]_INST_0_i_1_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(tnsn_dsp_a[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[7]_INST_0 
       (.I0(abus_0[7]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(tnsn_dsp_a[7]));
  LUT3 #(
    .INIT(8'h9F)) 
    \tnsn_dsp_a[7]_INST_0_i_1 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I2(\tnsn_dsp_a[8]_INST_0_i_1_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \tnsn_dsp_a[7]_INST_0_i_10 
       (.I0(\fch/ir [15]),
        .I1(\ctl/stat [1]),
        .O(\tnsn_dsp_a[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00FE00FE000000FE)) 
    \tnsn_dsp_a[7]_INST_0_i_11 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_19_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_20_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_21_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_22_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_23_n_0 ),
        .I5(\ctl/stat [0]),
        .O(\tnsn_dsp_a[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000000E)) 
    \tnsn_dsp_a[7]_INST_0_i_12 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_6_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_24_n_0 ),
        .I2(\fch/ir [13]),
        .I3(\ctl/stat [1]),
        .I4(\ctl/stat [0]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_25_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tnsn_dsp_a[7]_INST_0_i_13 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [4]),
        .O(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0F3CCFFC8BB88BB8)) 
    \tnsn_dsp_a[7]_INST_0_i_14 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_26_n_0 ),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [11]),
        .I3(\rgf/sreg/sr [7]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_27_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_28_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h80A280A8FFFFFFFF)) 
    \tnsn_dsp_a[7]_INST_0_i_15 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_29_n_0 ),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [15]),
        .I4(\rgf/sreg/sr [6]),
        .I5(\stat[0]_i_12_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF000CDCDFFFFCDCD)) 
    \tnsn_dsp_a[7]_INST_0_i_16 
       (.I0(\fch/ir [14]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_30_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_31_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_32_n_0 ),
        .I4(\fch/ir [11]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_33_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tnsn_dsp_a[7]_INST_0_i_17 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [11]),
        .O(\tnsn_dsp_a[7]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \tnsn_dsp_a[7]_INST_0_i_18 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [0]),
        .I3(\fch/ir [1]),
        .O(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h7F77)) 
    \tnsn_dsp_a[7]_INST_0_i_19 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [9]),
        .O(\tnsn_dsp_a[7]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000455555555)) 
    \tnsn_dsp_a[7]_INST_0_i_2 
       (.I0(\ctl/stat [1]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_4_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_5_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_6_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_7_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_8_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45FF45FFFFFF45FF)) 
    \tnsn_dsp_a[7]_INST_0_i_20 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [7]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_34_n_0 ),
        .I4(\fch/ir [10]),
        .I5(\fch/ir [8]),
        .O(\tnsn_dsp_a[7]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFAFA3AFAFA3AFAFA)) 
    \tnsn_dsp_a[7]_INST_0_i_21 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [5]),
        .I5(\fch/ir [3]),
        .O(\tnsn_dsp_a[7]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h2222002000000020)) 
    \tnsn_dsp_a[7]_INST_0_i_22 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_35_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_36_n_0 ),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [11]),
        .O(\tnsn_dsp_a[7]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h50410541)) 
    \tnsn_dsp_a[7]_INST_0_i_23 
       (.I0(\fch/ir [14]),
        .I1(\rgf/sreg/sr [6]),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [12]),
        .I4(\rgf/sreg/sr [7]),
        .O(\tnsn_dsp_a[7]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \tnsn_dsp_a[7]_INST_0_i_24 
       (.I0(\fch/ir [15]),
        .I1(\fch/ir [12]),
        .O(\tnsn_dsp_a[7]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h41054141)) 
    \tnsn_dsp_a[7]_INST_0_i_25 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [15]),
        .I4(\rgf/sreg/sr [5]),
        .O(\tnsn_dsp_a[7]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hE0EEAAAAFFFFAAAA)) 
    \tnsn_dsp_a[7]_INST_0_i_26 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_37_n_0 ),
        .I1(\fch/ir [3]),
        .I2(\tnsn_dsp_a[7]_INST_0_i_38_n_0 ),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [9]),
        .I5(\fch/ir [8]),
        .O(\tnsn_dsp_a[7]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h400F)) 
    \tnsn_dsp_a[7]_INST_0_i_27 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [6]),
        .O(\tnsn_dsp_a[7]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \tnsn_dsp_a[7]_INST_0_i_28 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [10]),
        .O(\tnsn_dsp_a[7]_INST_0_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[7]_INST_0_i_29 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [12]),
        .O(\tnsn_dsp_a[7]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h5555555544444544)) 
    \tnsn_dsp_a[7]_INST_0_i_3 
       (.I0(\ctl/stat [2]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_9_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_10_n_0 ),
        .I3(\fch/ir [13]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_11_n_0 ),
        .I5(\tnsn_dsp_a[7]_INST_0_i_12_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h41000500)) 
    \tnsn_dsp_a[7]_INST_0_i_30 
       (.I0(\fch/ir [15]),
        .I1(\rgf/sreg/sr [7]),
        .I2(\rgf/sreg/sr [5]),
        .I3(\fch/ir [14]),
        .I4(\fch/ir [12]),
        .O(\tnsn_dsp_a[7]_INST_0_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \tnsn_dsp_a[7]_INST_0_i_31 
       (.I0(\fch/ir [15]),
        .I1(\rgf/sreg/sr [4]),
        .I2(\fch/ir [12]),
        .O(\tnsn_dsp_a[7]_INST_0_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h73)) 
    \tnsn_dsp_a[7]_INST_0_i_32 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [14]),
        .I2(\rgf/sreg/sr [5]),
        .O(\tnsn_dsp_a[7]_INST_0_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h7777F77F)) 
    \tnsn_dsp_a[7]_INST_0_i_33 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [14]),
        .I2(\rgf/sreg/sr [7]),
        .I3(\rgf/sreg/sr [5]),
        .I4(\fch/ir [15]),
        .O(\tnsn_dsp_a[7]_INST_0_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[7]_INST_0_i_34 
       (.I0(\fch/ir [11]),
        .I1(\ctl/stat [0]),
        .O(\tnsn_dsp_a[7]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h444400004FFF0F0F)) 
    \tnsn_dsp_a[7]_INST_0_i_35 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [4]),
        .I4(\fch/ir [7]),
        .I5(\ctl/stat [0]),
        .O(\tnsn_dsp_a[7]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000808)) 
    \tnsn_dsp_a[7]_INST_0_i_36 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [4]),
        .I4(\ctl/stat [0]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_39_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hDDFDFFFFDDFDDDFD)) 
    \tnsn_dsp_a[7]_INST_0_i_37 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [11]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_40_n_0 ),
        .I5(\fch/ir [9]),
        .O(\tnsn_dsp_a[7]_INST_0_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hBBBBFFBF)) 
    \tnsn_dsp_a[7]_INST_0_i_38 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [4]),
        .O(\tnsn_dsp_a[7]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFF7FFF3F)) 
    \tnsn_dsp_a[7]_INST_0_i_39 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [12]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [9]),
        .I5(\fch/ir [7]),
        .O(\tnsn_dsp_a[7]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \tnsn_dsp_a[7]_INST_0_i_4 
       (.I0(\ctl/stat [2]),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [3]),
        .I4(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tnsn_dsp_a[7]_INST_0_i_40 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [5]),
        .O(\tnsn_dsp_a[7]_INST_0_i_40_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \tnsn_dsp_a[7]_INST_0_i_5 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [9]),
        .O(\tnsn_dsp_a[7]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \tnsn_dsp_a[7]_INST_0_i_6 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [10]),
        .I2(\ctl/stat [0]),
        .O(\tnsn_dsp_a[7]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \tnsn_dsp_a[7]_INST_0_i_7 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [13]),
        .I2(\fch/ir [12]),
        .I3(\fch/ir [14]),
        .I4(\fch/ir [15]),
        .O(\tnsn_dsp_a[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0FF00FFE0FFFF)) 
    \tnsn_dsp_a[7]_INST_0_i_8 
       (.I0(\fch/ir [15]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_14_n_0 ),
        .I2(\fch/ir [12]),
        .I3(\tnsn_dsp_a[7]_INST_0_i_15_n_0 ),
        .I4(\fch/ir [13]),
        .I5(\tnsn_dsp_a[7]_INST_0_i_16_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \tnsn_dsp_a[7]_INST_0_i_9 
       (.I0(\ctl/stat [1]),
        .I1(\fch_irq_lev[1]_i_5_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_17_n_0 ),
        .I3(\tnsn_dsp_a[7]_INST_0_i_13_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_18_n_0 ),
        .O(\tnsn_dsp_a[7]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[8]_INST_0 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_1_n_0 ),
        .I1(\tnsn_dsp_a[8]_INST_0_i_2_n_0 ),
        .O(tnsn_dsp_a[8]));
  LUT5 #(
    .INIT(32'h01000101)) 
    \tnsn_dsp_a[8]_INST_0_i_1 
       (.I0(\ctl/stat [2]),
        .I1(\ctl/stat [1]),
        .I2(\ctl/stat [0]),
        .I3(\tnsn_dsp_a[8]_INST_0_i_3_n_0 ),
        .I4(\tnsn_dsp_a[8]_INST_0_i_4_n_0 ),
        .O(\tnsn_dsp_a[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \tnsn_dsp_a[8]_INST_0_i_2 
       (.I0(abus_0[7]),
        .I1(\tnsn_dsp_b[8]_INST_0_i_1_n_0 ),
        .O(\tnsn_dsp_a[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000080FF00008000)) 
    \tnsn_dsp_a[8]_INST_0_i_3 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [15]),
        .I4(\fch/ir [12]),
        .I5(\tnsn_dsp_a[8]_INST_0_i_5_n_0 ),
        .O(\tnsn_dsp_a[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC055FFFFFFFF)) 
    \tnsn_dsp_a[8]_INST_0_i_4 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_6_n_0 ),
        .I1(\tnsn_dsp_a[8]_INST_0_i_7_n_0 ),
        .I2(\tnsn_dsp_a[8]_INST_0_i_8_n_0 ),
        .I3(\fch/ir [13]),
        .I4(\fch/ir [15]),
        .I5(\fch/ir [12]),
        .O(\tnsn_dsp_a[8]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h4F45101A)) 
    \tnsn_dsp_a[8]_INST_0_i_5 
       (.I0(\fch/ir [14]),
        .I1(\rgf/sreg/sr [6]),
        .I2(\fch/ir [13]),
        .I3(\rgf/sreg/sr [5]),
        .I4(\fch/ir [11]),
        .O(\tnsn_dsp_a[8]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h59A9A959)) 
    \tnsn_dsp_a[8]_INST_0_i_6 
       (.I0(\fch/ir [11]),
        .I1(\rgf/sreg/sr [4]),
        .I2(\fch/ir [14]),
        .I3(\rgf/sreg/sr [5]),
        .I4(\rgf/sreg/sr [7]),
        .O(\tnsn_dsp_a[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFFF7FFFFFFFAFFF)) 
    \tnsn_dsp_a[8]_INST_0_i_7 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [14]),
        .I3(\tnsn_dsp_a[8]_INST_0_i_9_n_0 ),
        .I4(\fch/ir [11]),
        .I5(\fch/ir [8]),
        .O(\tnsn_dsp_a[8]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hBE)) 
    \tnsn_dsp_a[8]_INST_0_i_8 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [11]),
        .I2(\rgf/sreg/sr [7]),
        .O(\tnsn_dsp_a[8]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_a[8]_INST_0_i_9 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [9]),
        .O(\tnsn_dsp_a[8]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_b[0]_INST_0 
       (.I0(bbus_0[0]),
        .I1(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(tnsn_dsp_b[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_b[1]_INST_0 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(tnsn_dsp_b[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_b[2]_INST_0 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(tnsn_dsp_b[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_b[3]_INST_0 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(tnsn_dsp_b[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_b[4]_INST_0 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(tnsn_dsp_b[4]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_b[5]_INST_0 
       (.I0(\bdatw[13]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(tnsn_dsp_b[5]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_b[6]_INST_0 
       (.I0(\bdatw[14]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(tnsn_dsp_b[6]));
  LUT2 #(
    .INIT(4'h1)) 
    \tnsn_dsp_b[7]_INST_0 
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_1_n_0 ),
        .O(tnsn_dsp_b[7]));
  LUT3 #(
    .INIT(8'h08)) 
    \tnsn_dsp_b[8]_INST_0 
       (.I0(\tnsn_dsp_a[8]_INST_0_i_1_n_0 ),
        .I1(\tnsn_dsp_b[8]_INST_0_i_1_n_0 ),
        .I2(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(tnsn_dsp_b[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \tnsn_dsp_b[8]_INST_0_i_1 
       (.I0(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .O(\tnsn_dsp_b[8]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    tout__1_carry__0_i_1
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[7]),
        .O(tout__1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    tout__1_carry__0_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(\badr[5]_INST_0_i_1_n_0 ),
        .O(tout__1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    tout__1_carry__0_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\badr[4]_INST_0_i_1_n_0 ),
        .O(tout__1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h28)) 
    tout__1_carry__0_i_4
       (.I0(abus_0[3]),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_8_n_0),
        .O(tout__1_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h9696A55A)) 
    tout__1_carry__0_i_5
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[7]),
        .I3(\bdatw[14]_INST_0_i_2_n_0 ),
        .I4(\badr[6]_INST_0_i_1_n_0 ),
        .O(tout__1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__0_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry__0_i_2_n_0),
        .I3(\badr[6]_INST_0_i_1_n_0 ),
        .O(tout__1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__0_i_7
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(\badr[5]_INST_0_i_1_n_0 ),
        .I3(tout__1_carry__0_i_3_n_0),
        .O(tout__1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry__0_i_8
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\badr[4]_INST_0_i_1_n_0 ),
        .I3(tout__1_carry__0_i_4_n_0),
        .O(tout__1_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tout__1_carry__1_i_1
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(tout__1_carry_i_8_n_0),
        .O(tout__1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tout__1_carry__1_i_2
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[7]),
        .O(tout__1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hF6)) 
    tout__1_carry__1_i_3
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(tout__1_carry_i_8_n_0),
        .I2(abus_0[7]),
        .O(tout__1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    tout__1_carry_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(\badr[2]_INST_0_i_1_n_0 ),
        .O(tout__1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    tout__1_carry_i_10
       (.I0(\tnsn_dsp_a[8]_INST_0_i_1_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .O(tout__1_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[1]),
        .O(tout__1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h099F)) 
    tout__1_carry_i_3
       (.I0(bbus_0[0]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(\badr[0]_INST_0_i_1_n_0 ),
        .I3(tout__1_carry_i_9_n_0),
        .O(tout__1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry_i_4
       (.I0(abus_0[3]),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_8_n_0),
        .I3(tout__1_carry_i_1_n_0),
        .O(tout__1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry_i_5
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(\badr[2]_INST_0_i_1_n_0 ),
        .I3(tout__1_carry_i_2_n_0),
        .O(tout__1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[1]),
        .I3(tout__1_carry_i_3_n_0),
        .O(tout__1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    tout__1_carry_i_7
       (.I0(bbus_0[0]),
        .I1(tout__1_carry_i_8_n_0),
        .I2(\badr[0]_INST_0_i_1_n_0 ),
        .I3(tout__1_carry_i_9_n_0),
        .O(tout__1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'hAAEF)) 
    tout__1_carry_i_8
       (.I0(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I1(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I2(\grn[4]_i_10_n_0 ),
        .I3(tout__1_carry_i_10_n_0),
        .O(tout__1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFEF00110000)) 
    tout__1_carry_i_9
       (.I0(\tnsn_dsp_a[8]_INST_0_i_1_n_0 ),
        .I1(\grn[14]_i_3_n_0 ),
        .I2(\tnsn_dsp_a[7]_INST_0_i_2_n_0 ),
        .I3(\grn[15]_i_30_n_0 ),
        .I4(\tnsn_dsp_a[7]_INST_0_i_3_n_0 ),
        .I5(\rgf/sreg/sr [6]),
        .O(tout__1_carry_i_9_n_0));
endmodule
