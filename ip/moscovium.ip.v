
(* STRUCTURAL_NETLIST = "yes" *)
module moscovium
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
    badrx,
    badr,
    bdatw,
    crdy,
    cbus_i,
    ccmd,
    abus_o,
    bbus_o);
//
//	Moscovium 16 bit CPU core
//		(c) 2021	1YEN Toru
//
//
//	2023/09/23	ver.1.20
//		change instruction fetch latency: 0 => 1
//		corresponding to Xilinx Vivado
//
//	2023/07/08	ver.1.18
//		instruction: adcz, sbbz, cmbz
//
//	2023/05/20	ver.1.16
//		instruction: divlqr, divlrr, divur, divsr, mulur, mulsr
//
//	2022/10/22	ver.1.14
//		corresponding to interrupt vector / level
//
//	2022/06/04	ver.1.12
//		instruction: csft, csfti
//		revised register file block
//
//	2022/02/19	ver.1.10
//		corresponding to extended address
//		badrx output
//
//	2021/07/31	ver.1.08
//		sr bit field: cpu id for dual core edition
//
//	2021/07/10	ver.1.06
//		hcmp: half compare
//		cmb: compare with borrow
//		adc, sbb: condition of z flag changed
//
//	2021/06/12	ver.1.04
//		half precision fpu instruction:
//			hadd, hsub, hmul, hdiv, hneg, hhalf, huint, hfrac, hmvsg, hsat
//
//	2021/05/22	ver.1.02
//		mul/div instruction: mulu, muls, divu, divs, divlu, divls, divlq, divlr
//		co-processor control bit to sr
//		co-processor I/F
//
//	2021/05/01	ver.1.00
//		interrupt related instruction: pause, rti
//		sr bit operation instruction: sesrl, sesrh, clsrl, clsrh
//		sp relative instruction: ldwsp, stwsp
//		control register iv and tr
//		interrupt enable ie bit in sr
//
//	2021/04/10	ver.0.92
//		alu: smaller barrel shift unit
//
//	2021/03/06	ver.0.90
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
  output [15:0]badrx;
  output [15:0]badr;
  output [15:0]bdatw;
  input crdy;
  input [15:0]cbus_i;
  output [4:0]ccmd;
  output [15:0]abus_o;
  output [15:0]bbus_o;
     output [15:0]\rgf/pcnt/pc ;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]abus_0;
  wire [15:0]abus_o;
  wire [18:18]\alu/art/add/tout ;
  wire \alu/art/add/tout__1_carry__0_n_0 ;
  wire \alu/art/add/tout__1_carry__0_n_1 ;
  wire \alu/art/add/tout__1_carry__0_n_2 ;
  wire \alu/art/add/tout__1_carry__0_n_3 ;
  wire \alu/art/add/tout__1_carry__0_n_4 ;
  wire \alu/art/add/tout__1_carry__0_n_5 ;
  wire \alu/art/add/tout__1_carry__0_n_6 ;
  wire \alu/art/add/tout__1_carry__0_n_7 ;
  wire \alu/art/add/tout__1_carry__1_n_0 ;
  wire \alu/art/add/tout__1_carry__1_n_1 ;
  wire \alu/art/add/tout__1_carry__1_n_2 ;
  wire \alu/art/add/tout__1_carry__1_n_3 ;
  wire \alu/art/add/tout__1_carry__1_n_4 ;
  wire \alu/art/add/tout__1_carry__1_n_5 ;
  wire \alu/art/add/tout__1_carry__1_n_6 ;
  wire \alu/art/add/tout__1_carry__1_n_7 ;
  wire \alu/art/add/tout__1_carry__2_n_0 ;
  wire \alu/art/add/tout__1_carry__2_n_1 ;
  wire \alu/art/add/tout__1_carry__2_n_2 ;
  wire \alu/art/add/tout__1_carry__2_n_3 ;
  wire \alu/art/add/tout__1_carry__2_n_5 ;
  wire \alu/art/add/tout__1_carry__2_n_6 ;
  wire \alu/art/add/tout__1_carry__2_n_7 ;
  wire \alu/art/add/tout__1_carry__3_n_3 ;
  wire \alu/art/add/tout__1_carry_n_0 ;
  wire \alu/art/add/tout__1_carry_n_1 ;
  wire \alu/art/add/tout__1_carry_n_2 ;
  wire \alu/art/add/tout__1_carry_n_3 ;
  wire \alu/art/add/tout__1_carry_n_4 ;
  wire \alu/art/add/tout__1_carry_n_5 ;
  wire \alu/art/add/tout__1_carry_n_6 ;
  wire \alu/art/add/tout__1_carry_n_7 ;
  wire [15:15]\alu/art/p_0_in ;
  wire [3:3]alu_sr_flag;
  wire [15:0]badr;
  wire \badr[0]_INST_0_i_10_n_0 ;
  wire \badr[0]_INST_0_i_11_n_0 ;
  wire \badr[0]_INST_0_i_12_n_0 ;
  wire \badr[0]_INST_0_i_13_n_0 ;
  wire \badr[0]_INST_0_i_14_n_0 ;
  wire \badr[0]_INST_0_i_15_n_0 ;
  wire \badr[0]_INST_0_i_16_n_0 ;
  wire \badr[0]_INST_0_i_17_n_0 ;
  wire \badr[0]_INST_0_i_18_n_0 ;
  wire \badr[0]_INST_0_i_19_n_0 ;
  wire \badr[0]_INST_0_i_20_n_0 ;
  wire \badr[0]_INST_0_i_21_n_0 ;
  wire \badr[0]_INST_0_i_22_n_0 ;
  wire \badr[0]_INST_0_i_2_n_0 ;
  wire \badr[0]_INST_0_i_3_n_0 ;
  wire \badr[0]_INST_0_i_4_n_0 ;
  wire \badr[0]_INST_0_i_5_n_0 ;
  wire \badr[0]_INST_0_i_6_n_0 ;
  wire \badr[0]_INST_0_i_7_n_0 ;
  wire \badr[0]_INST_0_i_8_n_0 ;
  wire \badr[0]_INST_0_i_9_n_0 ;
  wire \badr[10]_INST_0_i_10_n_0 ;
  wire \badr[10]_INST_0_i_11_n_0 ;
  wire \badr[10]_INST_0_i_12_n_0 ;
  wire \badr[10]_INST_0_i_13_n_0 ;
  wire \badr[10]_INST_0_i_14_n_0 ;
  wire \badr[10]_INST_0_i_15_n_0 ;
  wire \badr[10]_INST_0_i_16_n_0 ;
  wire \badr[10]_INST_0_i_17_n_0 ;
  wire \badr[10]_INST_0_i_18_n_0 ;
  wire \badr[10]_INST_0_i_19_n_0 ;
  wire \badr[10]_INST_0_i_20_n_0 ;
  wire \badr[10]_INST_0_i_21_n_0 ;
  wire \badr[10]_INST_0_i_22_n_0 ;
  wire \badr[10]_INST_0_i_2_n_0 ;
  wire \badr[10]_INST_0_i_3_n_0 ;
  wire \badr[10]_INST_0_i_4_n_0 ;
  wire \badr[10]_INST_0_i_5_n_0 ;
  wire \badr[10]_INST_0_i_6_n_0 ;
  wire \badr[10]_INST_0_i_7_n_0 ;
  wire \badr[10]_INST_0_i_8_n_0 ;
  wire \badr[10]_INST_0_i_9_n_0 ;
  wire \badr[11]_INST_0_i_10_n_0 ;
  wire \badr[11]_INST_0_i_11_n_0 ;
  wire \badr[11]_INST_0_i_12_n_0 ;
  wire \badr[11]_INST_0_i_13_n_0 ;
  wire \badr[11]_INST_0_i_14_n_0 ;
  wire \badr[11]_INST_0_i_15_n_0 ;
  wire \badr[11]_INST_0_i_16_n_0 ;
  wire \badr[11]_INST_0_i_17_n_0 ;
  wire \badr[11]_INST_0_i_18_n_0 ;
  wire \badr[11]_INST_0_i_19_n_0 ;
  wire \badr[11]_INST_0_i_20_n_0 ;
  wire \badr[11]_INST_0_i_21_n_0 ;
  wire \badr[11]_INST_0_i_22_n_0 ;
  wire \badr[11]_INST_0_i_23_n_0 ;
  wire \badr[11]_INST_0_i_23_n_1 ;
  wire \badr[11]_INST_0_i_23_n_2 ;
  wire \badr[11]_INST_0_i_23_n_3 ;
  wire \badr[11]_INST_0_i_24_n_0 ;
  wire \badr[11]_INST_0_i_25_n_0 ;
  wire \badr[11]_INST_0_i_26_n_0 ;
  wire \badr[11]_INST_0_i_27_n_0 ;
  wire \badr[11]_INST_0_i_2_n_0 ;
  wire \badr[11]_INST_0_i_3_n_0 ;
  wire \badr[11]_INST_0_i_4_n_0 ;
  wire \badr[11]_INST_0_i_5_n_0 ;
  wire \badr[11]_INST_0_i_6_n_0 ;
  wire \badr[11]_INST_0_i_7_n_0 ;
  wire \badr[11]_INST_0_i_8_n_0 ;
  wire \badr[11]_INST_0_i_9_n_0 ;
  wire \badr[12]_INST_0_i_10_n_0 ;
  wire \badr[12]_INST_0_i_11_n_0 ;
  wire \badr[12]_INST_0_i_12_n_0 ;
  wire \badr[12]_INST_0_i_13_n_0 ;
  wire \badr[12]_INST_0_i_14_n_0 ;
  wire \badr[12]_INST_0_i_15_n_0 ;
  wire \badr[12]_INST_0_i_16_n_0 ;
  wire \badr[12]_INST_0_i_17_n_0 ;
  wire \badr[12]_INST_0_i_18_n_0 ;
  wire \badr[12]_INST_0_i_19_n_0 ;
  wire \badr[12]_INST_0_i_20_n_0 ;
  wire \badr[12]_INST_0_i_21_n_0 ;
  wire \badr[12]_INST_0_i_22_n_0 ;
  wire \badr[12]_INST_0_i_2_n_0 ;
  wire \badr[12]_INST_0_i_3_n_0 ;
  wire \badr[12]_INST_0_i_4_n_0 ;
  wire \badr[12]_INST_0_i_5_n_0 ;
  wire \badr[12]_INST_0_i_6_n_0 ;
  wire \badr[12]_INST_0_i_7_n_0 ;
  wire \badr[12]_INST_0_i_8_n_0 ;
  wire \badr[12]_INST_0_i_9_n_0 ;
  wire \badr[13]_INST_0_i_10_n_0 ;
  wire \badr[13]_INST_0_i_11_n_0 ;
  wire \badr[13]_INST_0_i_12_n_0 ;
  wire \badr[13]_INST_0_i_13_n_0 ;
  wire \badr[13]_INST_0_i_14_n_0 ;
  wire \badr[13]_INST_0_i_15_n_0 ;
  wire \badr[13]_INST_0_i_16_n_0 ;
  wire \badr[13]_INST_0_i_17_n_0 ;
  wire \badr[13]_INST_0_i_18_n_0 ;
  wire \badr[13]_INST_0_i_19_n_0 ;
  wire \badr[13]_INST_0_i_20_n_0 ;
  wire \badr[13]_INST_0_i_21_n_0 ;
  wire \badr[13]_INST_0_i_22_n_0 ;
  wire \badr[13]_INST_0_i_2_n_0 ;
  wire \badr[13]_INST_0_i_3_n_0 ;
  wire \badr[13]_INST_0_i_4_n_0 ;
  wire \badr[13]_INST_0_i_5_n_0 ;
  wire \badr[13]_INST_0_i_6_n_0 ;
  wire \badr[13]_INST_0_i_7_n_0 ;
  wire \badr[13]_INST_0_i_8_n_0 ;
  wire \badr[13]_INST_0_i_9_n_0 ;
  wire \badr[14]_INST_0_i_10_n_0 ;
  wire \badr[14]_INST_0_i_11_n_0 ;
  wire \badr[14]_INST_0_i_12_n_0 ;
  wire \badr[14]_INST_0_i_13_n_0 ;
  wire \badr[14]_INST_0_i_14_n_0 ;
  wire \badr[14]_INST_0_i_15_n_0 ;
  wire \badr[14]_INST_0_i_16_n_0 ;
  wire \badr[14]_INST_0_i_17_n_0 ;
  wire \badr[14]_INST_0_i_18_n_0 ;
  wire \badr[14]_INST_0_i_19_n_0 ;
  wire \badr[14]_INST_0_i_20_n_0 ;
  wire \badr[14]_INST_0_i_21_n_0 ;
  wire \badr[14]_INST_0_i_22_n_0 ;
  wire \badr[14]_INST_0_i_2_n_0 ;
  wire \badr[14]_INST_0_i_3_n_0 ;
  wire \badr[14]_INST_0_i_4_n_0 ;
  wire \badr[14]_INST_0_i_5_n_0 ;
  wire \badr[14]_INST_0_i_6_n_0 ;
  wire \badr[14]_INST_0_i_7_n_0 ;
  wire \badr[14]_INST_0_i_8_n_0 ;
  wire \badr[14]_INST_0_i_9_n_0 ;
  wire \badr[15]_INST_0_i_100_n_0 ;
  wire \badr[15]_INST_0_i_101_n_0 ;
  wire \badr[15]_INST_0_i_102_n_0 ;
  wire \badr[15]_INST_0_i_103_n_0 ;
  wire \badr[15]_INST_0_i_104_n_0 ;
  wire \badr[15]_INST_0_i_105_n_0 ;
  wire \badr[15]_INST_0_i_106_n_0 ;
  wire \badr[15]_INST_0_i_107_n_0 ;
  wire \badr[15]_INST_0_i_108_n_0 ;
  wire \badr[15]_INST_0_i_109_n_0 ;
  wire \badr[15]_INST_0_i_10_n_0 ;
  wire \badr[15]_INST_0_i_110_n_0 ;
  wire \badr[15]_INST_0_i_111_n_0 ;
  wire \badr[15]_INST_0_i_112_n_0 ;
  wire \badr[15]_INST_0_i_113_n_0 ;
  wire \badr[15]_INST_0_i_114_n_0 ;
  wire \badr[15]_INST_0_i_115_n_0 ;
  wire \badr[15]_INST_0_i_116_n_0 ;
  wire \badr[15]_INST_0_i_117_n_0 ;
  wire \badr[15]_INST_0_i_118_n_0 ;
  wire \badr[15]_INST_0_i_119_n_0 ;
  wire \badr[15]_INST_0_i_11_n_0 ;
  wire \badr[15]_INST_0_i_120_n_0 ;
  wire \badr[15]_INST_0_i_121_n_0 ;
  wire \badr[15]_INST_0_i_122_n_0 ;
  wire \badr[15]_INST_0_i_123_n_0 ;
  wire \badr[15]_INST_0_i_124_n_0 ;
  wire \badr[15]_INST_0_i_125_n_0 ;
  wire \badr[15]_INST_0_i_126_n_0 ;
  wire \badr[15]_INST_0_i_127_n_0 ;
  wire \badr[15]_INST_0_i_128_n_0 ;
  wire \badr[15]_INST_0_i_129_n_0 ;
  wire \badr[15]_INST_0_i_12_n_0 ;
  wire \badr[15]_INST_0_i_130_n_0 ;
  wire \badr[15]_INST_0_i_131_n_0 ;
  wire \badr[15]_INST_0_i_132_n_0 ;
  wire \badr[15]_INST_0_i_133_n_0 ;
  wire \badr[15]_INST_0_i_134_n_0 ;
  wire \badr[15]_INST_0_i_135_n_0 ;
  wire \badr[15]_INST_0_i_136_n_0 ;
  wire \badr[15]_INST_0_i_137_n_0 ;
  wire \badr[15]_INST_0_i_138_n_0 ;
  wire \badr[15]_INST_0_i_139_n_0 ;
  wire \badr[15]_INST_0_i_13_n_0 ;
  wire \badr[15]_INST_0_i_140_n_0 ;
  wire \badr[15]_INST_0_i_141_n_0 ;
  wire \badr[15]_INST_0_i_142_n_0 ;
  wire \badr[15]_INST_0_i_143_n_0 ;
  wire \badr[15]_INST_0_i_144_n_0 ;
  wire \badr[15]_INST_0_i_145_n_0 ;
  wire \badr[15]_INST_0_i_146_n_0 ;
  wire \badr[15]_INST_0_i_147_n_0 ;
  wire \badr[15]_INST_0_i_148_n_0 ;
  wire \badr[15]_INST_0_i_149_n_0 ;
  wire \badr[15]_INST_0_i_14_n_0 ;
  wire \badr[15]_INST_0_i_150_n_0 ;
  wire \badr[15]_INST_0_i_151_n_0 ;
  wire \badr[15]_INST_0_i_152_n_0 ;
  wire \badr[15]_INST_0_i_153_n_0 ;
  wire \badr[15]_INST_0_i_154_n_0 ;
  wire \badr[15]_INST_0_i_155_n_0 ;
  wire \badr[15]_INST_0_i_156_n_0 ;
  wire \badr[15]_INST_0_i_157_n_0 ;
  wire \badr[15]_INST_0_i_158_n_0 ;
  wire \badr[15]_INST_0_i_159_n_0 ;
  wire \badr[15]_INST_0_i_160_n_0 ;
  wire \badr[15]_INST_0_i_161_n_0 ;
  wire \badr[15]_INST_0_i_162_n_0 ;
  wire \badr[15]_INST_0_i_163_n_0 ;
  wire \badr[15]_INST_0_i_164_n_0 ;
  wire \badr[15]_INST_0_i_165_n_0 ;
  wire \badr[15]_INST_0_i_166_n_0 ;
  wire \badr[15]_INST_0_i_167_n_0 ;
  wire \badr[15]_INST_0_i_168_n_0 ;
  wire \badr[15]_INST_0_i_169_n_0 ;
  wire \badr[15]_INST_0_i_170_n_0 ;
  wire \badr[15]_INST_0_i_171_n_0 ;
  wire \badr[15]_INST_0_i_172_n_0 ;
  wire \badr[15]_INST_0_i_173_n_0 ;
  wire \badr[15]_INST_0_i_17_n_0 ;
  wire \badr[15]_INST_0_i_18_n_0 ;
  wire \badr[15]_INST_0_i_19_n_0 ;
  wire \badr[15]_INST_0_i_20_n_0 ;
  wire \badr[15]_INST_0_i_21_n_0 ;
  wire \badr[15]_INST_0_i_22_n_0 ;
  wire \badr[15]_INST_0_i_23_n_0 ;
  wire \badr[15]_INST_0_i_24_n_0 ;
  wire \badr[15]_INST_0_i_27_n_0 ;
  wire \badr[15]_INST_0_i_28_n_0 ;
  wire \badr[15]_INST_0_i_29_n_0 ;
  wire \badr[15]_INST_0_i_2_n_0 ;
  wire \badr[15]_INST_0_i_30_n_0 ;
  wire \badr[15]_INST_0_i_31_n_1 ;
  wire \badr[15]_INST_0_i_31_n_2 ;
  wire \badr[15]_INST_0_i_31_n_3 ;
  wire \badr[15]_INST_0_i_3_n_0 ;
  wire \badr[15]_INST_0_i_49_n_0 ;
  wire \badr[15]_INST_0_i_4_n_0 ;
  wire \badr[15]_INST_0_i_50_n_0 ;
  wire \badr[15]_INST_0_i_5_n_0 ;
  wire \badr[15]_INST_0_i_67_n_0 ;
  wire \badr[15]_INST_0_i_68_n_0 ;
  wire \badr[15]_INST_0_i_69_n_0 ;
  wire \badr[15]_INST_0_i_6_n_0 ;
  wire \badr[15]_INST_0_i_70_n_0 ;
  wire \badr[15]_INST_0_i_71_n_0 ;
  wire \badr[15]_INST_0_i_72_n_0 ;
  wire \badr[15]_INST_0_i_74_n_0 ;
  wire \badr[15]_INST_0_i_75_n_0 ;
  wire \badr[15]_INST_0_i_76_n_0 ;
  wire \badr[15]_INST_0_i_77_n_0 ;
  wire \badr[15]_INST_0_i_7_n_0 ;
  wire \badr[15]_INST_0_i_80_n_0 ;
  wire \badr[15]_INST_0_i_81_n_0 ;
  wire \badr[15]_INST_0_i_82_n_0 ;
  wire \badr[15]_INST_0_i_83_n_0 ;
  wire \badr[15]_INST_0_i_84_n_0 ;
  wire \badr[15]_INST_0_i_85_n_0 ;
  wire \badr[15]_INST_0_i_86_n_0 ;
  wire \badr[15]_INST_0_i_87_n_0 ;
  wire \badr[15]_INST_0_i_8_n_0 ;
  wire \badr[15]_INST_0_i_90_n_0 ;
  wire \badr[15]_INST_0_i_91_n_0 ;
  wire \badr[15]_INST_0_i_92_n_0 ;
  wire \badr[15]_INST_0_i_93_n_0 ;
  wire \badr[15]_INST_0_i_94_n_0 ;
  wire \badr[15]_INST_0_i_95_n_0 ;
  wire \badr[15]_INST_0_i_96_n_0 ;
  wire \badr[15]_INST_0_i_97_n_0 ;
  wire \badr[15]_INST_0_i_98_n_0 ;
  wire \badr[15]_INST_0_i_99_n_0 ;
  wire \badr[15]_INST_0_i_9_n_0 ;
  wire \badr[1]_INST_0_i_10_n_0 ;
  wire \badr[1]_INST_0_i_11_n_0 ;
  wire \badr[1]_INST_0_i_12_n_0 ;
  wire \badr[1]_INST_0_i_13_n_0 ;
  wire \badr[1]_INST_0_i_14_n_0 ;
  wire \badr[1]_INST_0_i_15_n_0 ;
  wire \badr[1]_INST_0_i_16_n_0 ;
  wire \badr[1]_INST_0_i_17_n_0 ;
  wire \badr[1]_INST_0_i_18_n_0 ;
  wire \badr[1]_INST_0_i_19_n_0 ;
  wire \badr[1]_INST_0_i_20_n_0 ;
  wire \badr[1]_INST_0_i_21_n_0 ;
  wire \badr[1]_INST_0_i_22_n_0 ;
  wire \badr[1]_INST_0_i_2_n_0 ;
  wire \badr[1]_INST_0_i_3_n_0 ;
  wire \badr[1]_INST_0_i_4_n_0 ;
  wire \badr[1]_INST_0_i_5_n_0 ;
  wire \badr[1]_INST_0_i_6_n_0 ;
  wire \badr[1]_INST_0_i_7_n_0 ;
  wire \badr[1]_INST_0_i_8_n_0 ;
  wire \badr[1]_INST_0_i_9_n_0 ;
  wire \badr[2]_INST_0_i_10_n_0 ;
  wire \badr[2]_INST_0_i_11_n_0 ;
  wire \badr[2]_INST_0_i_12_n_0 ;
  wire \badr[2]_INST_0_i_13_n_0 ;
  wire \badr[2]_INST_0_i_14_n_0 ;
  wire \badr[2]_INST_0_i_15_n_0 ;
  wire \badr[2]_INST_0_i_16_n_0 ;
  wire \badr[2]_INST_0_i_17_n_0 ;
  wire \badr[2]_INST_0_i_18_n_0 ;
  wire \badr[2]_INST_0_i_19_n_0 ;
  wire \badr[2]_INST_0_i_20_n_0 ;
  wire \badr[2]_INST_0_i_21_n_0 ;
  wire \badr[2]_INST_0_i_22_n_0 ;
  wire \badr[2]_INST_0_i_2_n_0 ;
  wire \badr[2]_INST_0_i_3_n_0 ;
  wire \badr[2]_INST_0_i_4_n_0 ;
  wire \badr[2]_INST_0_i_5_n_0 ;
  wire \badr[2]_INST_0_i_6_n_0 ;
  wire \badr[2]_INST_0_i_7_n_0 ;
  wire \badr[2]_INST_0_i_8_n_0 ;
  wire \badr[2]_INST_0_i_9_n_0 ;
  wire \badr[3]_INST_0_i_10_n_0 ;
  wire \badr[3]_INST_0_i_11_n_0 ;
  wire \badr[3]_INST_0_i_12_n_0 ;
  wire \badr[3]_INST_0_i_13_n_0 ;
  wire \badr[3]_INST_0_i_14_n_0 ;
  wire \badr[3]_INST_0_i_15_n_0 ;
  wire \badr[3]_INST_0_i_16_n_0 ;
  wire \badr[3]_INST_0_i_17_n_0 ;
  wire \badr[3]_INST_0_i_18_n_0 ;
  wire \badr[3]_INST_0_i_19_n_0 ;
  wire \badr[3]_INST_0_i_20_n_0 ;
  wire \badr[3]_INST_0_i_21_n_0 ;
  wire \badr[3]_INST_0_i_22_n_0 ;
  wire \badr[3]_INST_0_i_2_n_0 ;
  wire \badr[3]_INST_0_i_3_n_0 ;
  wire \badr[3]_INST_0_i_4_n_0 ;
  wire \badr[3]_INST_0_i_5_n_0 ;
  wire \badr[3]_INST_0_i_6_n_0 ;
  wire \badr[3]_INST_0_i_7_n_0 ;
  wire \badr[3]_INST_0_i_8_n_0 ;
  wire \badr[3]_INST_0_i_9_n_0 ;
  wire \badr[4]_INST_0_i_10_n_0 ;
  wire \badr[4]_INST_0_i_11_n_0 ;
  wire \badr[4]_INST_0_i_12_n_0 ;
  wire \badr[4]_INST_0_i_13_n_0 ;
  wire \badr[4]_INST_0_i_14_n_0 ;
  wire \badr[4]_INST_0_i_15_n_0 ;
  wire \badr[4]_INST_0_i_16_n_0 ;
  wire \badr[4]_INST_0_i_17_n_0 ;
  wire \badr[4]_INST_0_i_18_n_0 ;
  wire \badr[4]_INST_0_i_19_n_0 ;
  wire \badr[4]_INST_0_i_20_n_0 ;
  wire \badr[4]_INST_0_i_21_n_0 ;
  wire \badr[4]_INST_0_i_22_n_0 ;
  wire \badr[4]_INST_0_i_2_n_0 ;
  wire \badr[4]_INST_0_i_3_n_0 ;
  wire \badr[4]_INST_0_i_4_n_0 ;
  wire \badr[4]_INST_0_i_5_n_0 ;
  wire \badr[4]_INST_0_i_6_n_0 ;
  wire \badr[4]_INST_0_i_7_n_0 ;
  wire \badr[4]_INST_0_i_8_n_0 ;
  wire \badr[4]_INST_0_i_9_n_0 ;
  wire \badr[5]_INST_0_i_10_n_0 ;
  wire \badr[5]_INST_0_i_11_n_0 ;
  wire \badr[5]_INST_0_i_12_n_0 ;
  wire \badr[5]_INST_0_i_13_n_0 ;
  wire \badr[5]_INST_0_i_14_n_0 ;
  wire \badr[5]_INST_0_i_15_n_0 ;
  wire \badr[5]_INST_0_i_16_n_0 ;
  wire \badr[5]_INST_0_i_17_n_0 ;
  wire \badr[5]_INST_0_i_18_n_0 ;
  wire \badr[5]_INST_0_i_19_n_0 ;
  wire \badr[5]_INST_0_i_20_n_0 ;
  wire \badr[5]_INST_0_i_21_n_0 ;
  wire \badr[5]_INST_0_i_22_n_0 ;
  wire \badr[5]_INST_0_i_2_n_0 ;
  wire \badr[5]_INST_0_i_3_n_0 ;
  wire \badr[5]_INST_0_i_4_n_0 ;
  wire \badr[5]_INST_0_i_5_n_0 ;
  wire \badr[5]_INST_0_i_6_n_0 ;
  wire \badr[5]_INST_0_i_7_n_0 ;
  wire \badr[5]_INST_0_i_8_n_0 ;
  wire \badr[5]_INST_0_i_9_n_0 ;
  wire \badr[6]_INST_0_i_10_n_0 ;
  wire \badr[6]_INST_0_i_11_n_0 ;
  wire \badr[6]_INST_0_i_12_n_0 ;
  wire \badr[6]_INST_0_i_13_n_0 ;
  wire \badr[6]_INST_0_i_14_n_0 ;
  wire \badr[6]_INST_0_i_15_n_0 ;
  wire \badr[6]_INST_0_i_16_n_0 ;
  wire \badr[6]_INST_0_i_17_n_0 ;
  wire \badr[6]_INST_0_i_18_n_0 ;
  wire \badr[6]_INST_0_i_19_n_0 ;
  wire \badr[6]_INST_0_i_20_n_0 ;
  wire \badr[6]_INST_0_i_21_n_0 ;
  wire \badr[6]_INST_0_i_22_n_0 ;
  wire \badr[6]_INST_0_i_2_n_0 ;
  wire \badr[6]_INST_0_i_3_n_0 ;
  wire \badr[6]_INST_0_i_4_n_0 ;
  wire \badr[6]_INST_0_i_5_n_0 ;
  wire \badr[6]_INST_0_i_6_n_0 ;
  wire \badr[6]_INST_0_i_7_n_0 ;
  wire \badr[6]_INST_0_i_8_n_0 ;
  wire \badr[6]_INST_0_i_9_n_0 ;
  wire \badr[7]_INST_0_i_10_n_0 ;
  wire \badr[7]_INST_0_i_11_n_0 ;
  wire \badr[7]_INST_0_i_12_n_0 ;
  wire \badr[7]_INST_0_i_13_n_0 ;
  wire \badr[7]_INST_0_i_14_n_0 ;
  wire \badr[7]_INST_0_i_15_n_0 ;
  wire \badr[7]_INST_0_i_16_n_0 ;
  wire \badr[7]_INST_0_i_17_n_0 ;
  wire \badr[7]_INST_0_i_18_n_0 ;
  wire \badr[7]_INST_0_i_19_n_0 ;
  wire \badr[7]_INST_0_i_20_n_0 ;
  wire \badr[7]_INST_0_i_21_n_0 ;
  wire \badr[7]_INST_0_i_22_n_0 ;
  wire \badr[7]_INST_0_i_23_n_0 ;
  wire \badr[7]_INST_0_i_23_n_1 ;
  wire \badr[7]_INST_0_i_23_n_2 ;
  wire \badr[7]_INST_0_i_23_n_3 ;
  wire \badr[7]_INST_0_i_24_n_0 ;
  wire \badr[7]_INST_0_i_25_n_0 ;
  wire \badr[7]_INST_0_i_26_n_0 ;
  wire \badr[7]_INST_0_i_27_n_0 ;
  wire \badr[7]_INST_0_i_2_n_0 ;
  wire \badr[7]_INST_0_i_3_n_0 ;
  wire \badr[7]_INST_0_i_4_n_0 ;
  wire \badr[7]_INST_0_i_5_n_0 ;
  wire \badr[7]_INST_0_i_6_n_0 ;
  wire \badr[7]_INST_0_i_7_n_0 ;
  wire \badr[7]_INST_0_i_8_n_0 ;
  wire \badr[7]_INST_0_i_9_n_0 ;
  wire \badr[8]_INST_0_i_10_n_0 ;
  wire \badr[8]_INST_0_i_11_n_0 ;
  wire \badr[8]_INST_0_i_12_n_0 ;
  wire \badr[8]_INST_0_i_13_n_0 ;
  wire \badr[8]_INST_0_i_14_n_0 ;
  wire \badr[8]_INST_0_i_15_n_0 ;
  wire \badr[8]_INST_0_i_16_n_0 ;
  wire \badr[8]_INST_0_i_17_n_0 ;
  wire \badr[8]_INST_0_i_18_n_0 ;
  wire \badr[8]_INST_0_i_19_n_0 ;
  wire \badr[8]_INST_0_i_20_n_0 ;
  wire \badr[8]_INST_0_i_21_n_0 ;
  wire \badr[8]_INST_0_i_22_n_0 ;
  wire \badr[8]_INST_0_i_2_n_0 ;
  wire \badr[8]_INST_0_i_3_n_0 ;
  wire \badr[8]_INST_0_i_4_n_0 ;
  wire \badr[8]_INST_0_i_5_n_0 ;
  wire \badr[8]_INST_0_i_6_n_0 ;
  wire \badr[8]_INST_0_i_7_n_0 ;
  wire \badr[8]_INST_0_i_8_n_0 ;
  wire \badr[8]_INST_0_i_9_n_0 ;
  wire \badr[9]_INST_0_i_10_n_0 ;
  wire \badr[9]_INST_0_i_11_n_0 ;
  wire \badr[9]_INST_0_i_12_n_0 ;
  wire \badr[9]_INST_0_i_13_n_0 ;
  wire \badr[9]_INST_0_i_14_n_0 ;
  wire \badr[9]_INST_0_i_15_n_0 ;
  wire \badr[9]_INST_0_i_16_n_0 ;
  wire \badr[9]_INST_0_i_17_n_0 ;
  wire \badr[9]_INST_0_i_18_n_0 ;
  wire \badr[9]_INST_0_i_19_n_0 ;
  wire \badr[9]_INST_0_i_20_n_0 ;
  wire \badr[9]_INST_0_i_21_n_0 ;
  wire \badr[9]_INST_0_i_22_n_0 ;
  wire \badr[9]_INST_0_i_2_n_0 ;
  wire \badr[9]_INST_0_i_3_n_0 ;
  wire \badr[9]_INST_0_i_4_n_0 ;
  wire \badr[9]_INST_0_i_5_n_0 ;
  wire \badr[9]_INST_0_i_6_n_0 ;
  wire \badr[9]_INST_0_i_7_n_0 ;
  wire \badr[9]_INST_0_i_8_n_0 ;
  wire \badr[9]_INST_0_i_9_n_0 ;
  wire [15:0]badrx;
  wire \badrx[15]_INST_0_i_1_n_0 ;
  wire \badrx[15]_INST_0_i_2_n_0 ;
  wire \badrx[15]_INST_0_i_3_n_0 ;
  wire [15:0]bbus_o;
  wire [2:0]bcmd;
  wire \bcmd[0]_INST_0_i_10_n_0 ;
  wire \bcmd[0]_INST_0_i_11_n_0 ;
  wire \bcmd[0]_INST_0_i_1_n_0 ;
  wire \bcmd[0]_INST_0_i_2_n_0 ;
  wire \bcmd[0]_INST_0_i_3_n_0 ;
  wire \bcmd[0]_INST_0_i_4_n_0 ;
  wire \bcmd[0]_INST_0_i_5_n_0 ;
  wire \bcmd[0]_INST_0_i_6_n_0 ;
  wire \bcmd[0]_INST_0_i_7_n_0 ;
  wire \bcmd[0]_INST_0_i_8_n_0 ;
  wire \bcmd[0]_INST_0_i_9_n_0 ;
  wire \bcmd[1]_INST_0_i_10_n_0 ;
  wire \bcmd[1]_INST_0_i_11_n_0 ;
  wire \bcmd[1]_INST_0_i_1_n_0 ;
  wire \bcmd[1]_INST_0_i_2_n_0 ;
  wire \bcmd[1]_INST_0_i_3_n_0 ;
  wire \bcmd[1]_INST_0_i_4_n_0 ;
  wire \bcmd[1]_INST_0_i_5_n_0 ;
  wire \bcmd[1]_INST_0_i_6_n_0 ;
  wire \bcmd[1]_INST_0_i_7_n_0 ;
  wire \bcmd[1]_INST_0_i_8_n_0 ;
  wire \bcmd[1]_INST_0_i_9_n_0 ;
  wire \bcmd[2]_INST_0_i_1_n_0 ;
  wire \bcmd[2]_INST_0_i_2_n_0 ;
  wire \bcmd[2]_INST_0_i_3_n_0 ;
  wire \bcmd[2]_INST_0_i_4_n_0 ;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire \bdatw[10]_INST_0_i_10_n_0 ;
  wire \bdatw[10]_INST_0_i_11_n_0 ;
  wire \bdatw[10]_INST_0_i_13_n_0 ;
  wire \bdatw[10]_INST_0_i_14_n_0 ;
  wire \bdatw[10]_INST_0_i_15_n_0 ;
  wire \bdatw[10]_INST_0_i_16_n_0 ;
  wire \bdatw[10]_INST_0_i_17_n_0 ;
  wire \bdatw[10]_INST_0_i_18_n_0 ;
  wire \bdatw[10]_INST_0_i_19_n_0 ;
  wire \bdatw[10]_INST_0_i_1_n_0 ;
  wire \bdatw[10]_INST_0_i_20_n_0 ;
  wire \bdatw[10]_INST_0_i_21_n_0 ;
  wire \bdatw[10]_INST_0_i_22_n_0 ;
  wire \bdatw[10]_INST_0_i_23_n_0 ;
  wire \bdatw[10]_INST_0_i_24_n_0 ;
  wire \bdatw[10]_INST_0_i_25_n_0 ;
  wire \bdatw[10]_INST_0_i_26_n_0 ;
  wire \bdatw[10]_INST_0_i_27_n_0 ;
  wire \bdatw[10]_INST_0_i_28_n_0 ;
  wire \bdatw[10]_INST_0_i_29_n_0 ;
  wire \bdatw[10]_INST_0_i_2_n_0 ;
  wire \bdatw[10]_INST_0_i_30_n_0 ;
  wire \bdatw[10]_INST_0_i_31_n_0 ;
  wire \bdatw[10]_INST_0_i_32_n_0 ;
  wire \bdatw[10]_INST_0_i_33_n_0 ;
  wire \bdatw[10]_INST_0_i_34_n_0 ;
  wire \bdatw[10]_INST_0_i_35_n_0 ;
  wire \bdatw[10]_INST_0_i_36_n_0 ;
  wire \bdatw[10]_INST_0_i_37_n_0 ;
  wire \bdatw[10]_INST_0_i_38_n_0 ;
  wire \bdatw[10]_INST_0_i_39_n_0 ;
  wire \bdatw[10]_INST_0_i_3_n_0 ;
  wire \bdatw[10]_INST_0_i_40_n_0 ;
  wire \bdatw[10]_INST_0_i_41_n_0 ;
  wire \bdatw[10]_INST_0_i_42_n_0 ;
  wire \bdatw[10]_INST_0_i_43_n_0 ;
  wire \bdatw[10]_INST_0_i_44_n_0 ;
  wire \bdatw[10]_INST_0_i_45_n_0 ;
  wire \bdatw[10]_INST_0_i_46_n_0 ;
  wire \bdatw[10]_INST_0_i_47_n_0 ;
  wire \bdatw[10]_INST_0_i_48_n_0 ;
  wire \bdatw[10]_INST_0_i_49_n_0 ;
  wire \bdatw[10]_INST_0_i_4_n_0 ;
  wire \bdatw[10]_INST_0_i_50_n_0 ;
  wire \bdatw[10]_INST_0_i_5_n_0 ;
  wire \bdatw[10]_INST_0_i_6_n_0 ;
  wire \bdatw[10]_INST_0_i_7_n_0 ;
  wire \bdatw[10]_INST_0_i_8_n_0 ;
  wire \bdatw[11]_INST_0_i_10_n_0 ;
  wire \bdatw[11]_INST_0_i_11_n_0 ;
  wire \bdatw[11]_INST_0_i_12_n_0 ;
  wire \bdatw[11]_INST_0_i_14_n_0 ;
  wire \bdatw[11]_INST_0_i_15_n_0 ;
  wire \bdatw[11]_INST_0_i_16_n_0 ;
  wire \bdatw[11]_INST_0_i_17_n_0 ;
  wire \bdatw[11]_INST_0_i_18_n_0 ;
  wire \bdatw[11]_INST_0_i_19_n_0 ;
  wire \bdatw[11]_INST_0_i_1_n_0 ;
  wire \bdatw[11]_INST_0_i_20_n_0 ;
  wire \bdatw[11]_INST_0_i_21_n_0 ;
  wire \bdatw[11]_INST_0_i_22_n_0 ;
  wire \bdatw[11]_INST_0_i_23_n_0 ;
  wire \bdatw[11]_INST_0_i_24_n_0 ;
  wire \bdatw[11]_INST_0_i_25_n_0 ;
  wire \bdatw[11]_INST_0_i_26_n_0 ;
  wire \bdatw[11]_INST_0_i_27_n_0 ;
  wire \bdatw[11]_INST_0_i_28_n_0 ;
  wire \bdatw[11]_INST_0_i_29_n_0 ;
  wire \bdatw[11]_INST_0_i_2_n_0 ;
  wire \bdatw[11]_INST_0_i_30_n_0 ;
  wire \bdatw[11]_INST_0_i_31_n_0 ;
  wire \bdatw[11]_INST_0_i_32_n_0 ;
  wire \bdatw[11]_INST_0_i_33_n_0 ;
  wire \bdatw[11]_INST_0_i_34_n_0 ;
  wire \bdatw[11]_INST_0_i_35_n_0 ;
  wire \bdatw[11]_INST_0_i_36_n_0 ;
  wire \bdatw[11]_INST_0_i_37_n_0 ;
  wire \bdatw[11]_INST_0_i_38_n_0 ;
  wire \bdatw[11]_INST_0_i_39_n_0 ;
  wire \bdatw[11]_INST_0_i_3_n_0 ;
  wire \bdatw[11]_INST_0_i_40_n_0 ;
  wire \bdatw[11]_INST_0_i_41_n_0 ;
  wire \bdatw[11]_INST_0_i_42_n_0 ;
  wire \bdatw[11]_INST_0_i_43_n_0 ;
  wire \bdatw[11]_INST_0_i_44_n_0 ;
  wire \bdatw[11]_INST_0_i_45_n_0 ;
  wire \bdatw[11]_INST_0_i_46_n_0 ;
  wire \bdatw[11]_INST_0_i_47_n_0 ;
  wire \bdatw[11]_INST_0_i_48_n_0 ;
  wire \bdatw[11]_INST_0_i_49_n_0 ;
  wire \bdatw[11]_INST_0_i_4_n_0 ;
  wire \bdatw[11]_INST_0_i_50_n_0 ;
  wire \bdatw[11]_INST_0_i_51_n_0 ;
  wire \bdatw[11]_INST_0_i_52_n_0 ;
  wire \bdatw[11]_INST_0_i_5_n_0 ;
  wire \bdatw[11]_INST_0_i_6_n_0 ;
  wire \bdatw[11]_INST_0_i_7_n_0 ;
  wire \bdatw[11]_INST_0_i_8_n_0 ;
  wire \bdatw[12]_INST_0_i_100_n_0 ;
  wire \bdatw[12]_INST_0_i_101_n_0 ;
  wire \bdatw[12]_INST_0_i_102_n_0 ;
  wire \bdatw[12]_INST_0_i_103_n_0 ;
  wire \bdatw[12]_INST_0_i_104_n_0 ;
  wire \bdatw[12]_INST_0_i_105_n_0 ;
  wire \bdatw[12]_INST_0_i_106_n_0 ;
  wire \bdatw[12]_INST_0_i_107_n_0 ;
  wire \bdatw[12]_INST_0_i_10_n_0 ;
  wire \bdatw[12]_INST_0_i_11_n_0 ;
  wire \bdatw[12]_INST_0_i_13_n_0 ;
  wire \bdatw[12]_INST_0_i_14_n_0 ;
  wire \bdatw[12]_INST_0_i_15_n_0 ;
  wire \bdatw[12]_INST_0_i_16_n_0 ;
  wire \bdatw[12]_INST_0_i_17_n_0 ;
  wire \bdatw[12]_INST_0_i_18_n_0 ;
  wire \bdatw[12]_INST_0_i_19_n_0 ;
  wire \bdatw[12]_INST_0_i_1_n_0 ;
  wire \bdatw[12]_INST_0_i_20_n_0 ;
  wire \bdatw[12]_INST_0_i_21_n_0 ;
  wire \bdatw[12]_INST_0_i_22_n_0 ;
  wire \bdatw[12]_INST_0_i_23_n_0 ;
  wire \bdatw[12]_INST_0_i_24_n_0 ;
  wire \bdatw[12]_INST_0_i_25_n_0 ;
  wire \bdatw[12]_INST_0_i_26_n_0 ;
  wire \bdatw[12]_INST_0_i_27_n_0 ;
  wire \bdatw[12]_INST_0_i_28_n_0 ;
  wire \bdatw[12]_INST_0_i_2_n_0 ;
  wire \bdatw[12]_INST_0_i_31_n_0 ;
  wire \bdatw[12]_INST_0_i_32_n_0 ;
  wire \bdatw[12]_INST_0_i_33_n_0 ;
  wire \bdatw[12]_INST_0_i_34_n_0 ;
  wire \bdatw[12]_INST_0_i_37_n_0 ;
  wire \bdatw[12]_INST_0_i_3_n_0 ;
  wire \bdatw[12]_INST_0_i_40_n_0 ;
  wire \bdatw[12]_INST_0_i_42_n_0 ;
  wire \bdatw[12]_INST_0_i_43_n_0 ;
  wire \bdatw[12]_INST_0_i_46_n_0 ;
  wire \bdatw[12]_INST_0_i_47_n_0 ;
  wire \bdatw[12]_INST_0_i_4_n_0 ;
  wire \bdatw[12]_INST_0_i_54_n_0 ;
  wire \bdatw[12]_INST_0_i_56_n_0 ;
  wire \bdatw[12]_INST_0_i_57_n_0 ;
  wire \bdatw[12]_INST_0_i_5_n_0 ;
  wire \bdatw[12]_INST_0_i_60_n_0 ;
  wire \bdatw[12]_INST_0_i_61_n_0 ;
  wire \bdatw[12]_INST_0_i_63_n_0 ;
  wire \bdatw[12]_INST_0_i_64_n_0 ;
  wire \bdatw[12]_INST_0_i_65_n_0 ;
  wire \bdatw[12]_INST_0_i_66_n_0 ;
  wire \bdatw[12]_INST_0_i_67_n_0 ;
  wire \bdatw[12]_INST_0_i_68_n_0 ;
  wire \bdatw[12]_INST_0_i_69_n_0 ;
  wire \bdatw[12]_INST_0_i_6_n_0 ;
  wire \bdatw[12]_INST_0_i_70_n_0 ;
  wire \bdatw[12]_INST_0_i_71_n_0 ;
  wire \bdatw[12]_INST_0_i_72_n_0 ;
  wire \bdatw[12]_INST_0_i_73_n_0 ;
  wire \bdatw[12]_INST_0_i_74_n_0 ;
  wire \bdatw[12]_INST_0_i_75_n_0 ;
  wire \bdatw[12]_INST_0_i_76_n_0 ;
  wire \bdatw[12]_INST_0_i_77_n_0 ;
  wire \bdatw[12]_INST_0_i_78_n_0 ;
  wire \bdatw[12]_INST_0_i_79_n_0 ;
  wire \bdatw[12]_INST_0_i_7_n_0 ;
  wire \bdatw[12]_INST_0_i_80_n_0 ;
  wire \bdatw[12]_INST_0_i_81_n_0 ;
  wire \bdatw[12]_INST_0_i_82_n_0 ;
  wire \bdatw[12]_INST_0_i_83_n_0 ;
  wire \bdatw[12]_INST_0_i_84_n_0 ;
  wire \bdatw[12]_INST_0_i_85_n_0 ;
  wire \bdatw[12]_INST_0_i_86_n_0 ;
  wire \bdatw[12]_INST_0_i_87_n_0 ;
  wire \bdatw[12]_INST_0_i_88_n_0 ;
  wire \bdatw[12]_INST_0_i_89_n_0 ;
  wire \bdatw[12]_INST_0_i_8_n_0 ;
  wire \bdatw[12]_INST_0_i_90_n_0 ;
  wire \bdatw[12]_INST_0_i_91_n_0 ;
  wire \bdatw[12]_INST_0_i_92_n_0 ;
  wire \bdatw[12]_INST_0_i_93_n_0 ;
  wire \bdatw[12]_INST_0_i_94_n_0 ;
  wire \bdatw[12]_INST_0_i_95_n_0 ;
  wire \bdatw[12]_INST_0_i_96_n_0 ;
  wire \bdatw[12]_INST_0_i_97_n_0 ;
  wire \bdatw[12]_INST_0_i_98_n_0 ;
  wire \bdatw[12]_INST_0_i_99_n_0 ;
  wire \bdatw[13]_INST_0_i_11_n_0 ;
  wire \bdatw[13]_INST_0_i_12_n_0 ;
  wire \bdatw[13]_INST_0_i_14_n_0 ;
  wire \bdatw[13]_INST_0_i_15_n_0 ;
  wire \bdatw[13]_INST_0_i_16_n_0 ;
  wire \bdatw[13]_INST_0_i_17_n_0 ;
  wire \bdatw[13]_INST_0_i_18_n_0 ;
  wire \bdatw[13]_INST_0_i_19_n_0 ;
  wire \bdatw[13]_INST_0_i_1_n_0 ;
  wire \bdatw[13]_INST_0_i_20_n_0 ;
  wire \bdatw[13]_INST_0_i_21_n_0 ;
  wire \bdatw[13]_INST_0_i_22_n_0 ;
  wire \bdatw[13]_INST_0_i_23_n_0 ;
  wire \bdatw[13]_INST_0_i_24_n_0 ;
  wire \bdatw[13]_INST_0_i_25_n_0 ;
  wire \bdatw[13]_INST_0_i_26_n_0 ;
  wire \bdatw[13]_INST_0_i_27_n_0 ;
  wire \bdatw[13]_INST_0_i_28_n_0 ;
  wire \bdatw[13]_INST_0_i_29_n_0 ;
  wire \bdatw[13]_INST_0_i_2_n_0 ;
  wire \bdatw[13]_INST_0_i_30_n_0 ;
  wire \bdatw[13]_INST_0_i_31_n_0 ;
  wire \bdatw[13]_INST_0_i_32_n_0 ;
  wire \bdatw[13]_INST_0_i_33_n_0 ;
  wire \bdatw[13]_INST_0_i_34_n_0 ;
  wire \bdatw[13]_INST_0_i_35_n_0 ;
  wire \bdatw[13]_INST_0_i_36_n_0 ;
  wire \bdatw[13]_INST_0_i_37_n_0 ;
  wire \bdatw[13]_INST_0_i_38_n_0 ;
  wire \bdatw[13]_INST_0_i_39_n_0 ;
  wire \bdatw[13]_INST_0_i_3_n_0 ;
  wire \bdatw[13]_INST_0_i_40_n_0 ;
  wire \bdatw[13]_INST_0_i_41_n_0 ;
  wire \bdatw[13]_INST_0_i_42_n_0 ;
  wire \bdatw[13]_INST_0_i_43_n_0 ;
  wire \bdatw[13]_INST_0_i_44_n_0 ;
  wire \bdatw[13]_INST_0_i_4_n_0 ;
  wire \bdatw[13]_INST_0_i_5_n_0 ;
  wire \bdatw[13]_INST_0_i_6_n_0 ;
  wire \bdatw[13]_INST_0_i_7_n_0 ;
  wire \bdatw[13]_INST_0_i_8_n_0 ;
  wire \bdatw[13]_INST_0_i_9_n_0 ;
  wire \bdatw[14]_INST_0_i_10_n_0 ;
  wire \bdatw[14]_INST_0_i_12_n_0 ;
  wire \bdatw[14]_INST_0_i_13_n_0 ;
  wire \bdatw[14]_INST_0_i_15_n_0 ;
  wire \bdatw[14]_INST_0_i_16_n_0 ;
  wire \bdatw[14]_INST_0_i_17_n_0 ;
  wire \bdatw[14]_INST_0_i_18_n_0 ;
  wire \bdatw[14]_INST_0_i_19_n_0 ;
  wire \bdatw[14]_INST_0_i_1_n_0 ;
  wire \bdatw[14]_INST_0_i_20_n_0 ;
  wire \bdatw[14]_INST_0_i_21_n_0 ;
  wire \bdatw[14]_INST_0_i_22_n_0 ;
  wire \bdatw[14]_INST_0_i_23_n_0 ;
  wire \bdatw[14]_INST_0_i_24_n_0 ;
  wire \bdatw[14]_INST_0_i_25_n_0 ;
  wire \bdatw[14]_INST_0_i_26_n_0 ;
  wire \bdatw[14]_INST_0_i_27_n_0 ;
  wire \bdatw[14]_INST_0_i_28_n_0 ;
  wire \bdatw[14]_INST_0_i_29_n_0 ;
  wire \bdatw[14]_INST_0_i_2_n_0 ;
  wire \bdatw[14]_INST_0_i_30_n_0 ;
  wire \bdatw[14]_INST_0_i_31_n_0 ;
  wire \bdatw[14]_INST_0_i_32_n_0 ;
  wire \bdatw[14]_INST_0_i_33_n_0 ;
  wire \bdatw[14]_INST_0_i_34_n_0 ;
  wire \bdatw[14]_INST_0_i_35_n_0 ;
  wire \bdatw[14]_INST_0_i_36_n_0 ;
  wire \bdatw[14]_INST_0_i_37_n_0 ;
  wire \bdatw[14]_INST_0_i_38_n_0 ;
  wire \bdatw[14]_INST_0_i_39_n_0 ;
  wire \bdatw[14]_INST_0_i_3_n_0 ;
  wire \bdatw[14]_INST_0_i_40_n_0 ;
  wire \bdatw[14]_INST_0_i_41_n_0 ;
  wire \bdatw[14]_INST_0_i_42_n_0 ;
  wire \bdatw[14]_INST_0_i_43_n_0 ;
  wire \bdatw[14]_INST_0_i_44_n_0 ;
  wire \bdatw[14]_INST_0_i_45_n_0 ;
  wire \bdatw[14]_INST_0_i_4_n_0 ;
  wire \bdatw[14]_INST_0_i_5_n_0 ;
  wire \bdatw[14]_INST_0_i_6_n_0 ;
  wire \bdatw[14]_INST_0_i_7_n_0 ;
  wire \bdatw[14]_INST_0_i_8_n_0 ;
  wire \bdatw[14]_INST_0_i_9_n_0 ;
  wire \bdatw[15]_INST_0_i_100_n_0 ;
  wire \bdatw[15]_INST_0_i_101_n_0 ;
  wire \bdatw[15]_INST_0_i_102_n_0 ;
  wire \bdatw[15]_INST_0_i_107_n_0 ;
  wire \bdatw[15]_INST_0_i_108_n_0 ;
  wire \bdatw[15]_INST_0_i_109_n_0 ;
  wire \bdatw[15]_INST_0_i_10_n_0 ;
  wire \bdatw[15]_INST_0_i_115_n_0 ;
  wire \bdatw[15]_INST_0_i_116_n_0 ;
  wire \bdatw[15]_INST_0_i_117_n_0 ;
  wire \bdatw[15]_INST_0_i_118_n_0 ;
  wire \bdatw[15]_INST_0_i_119_n_0 ;
  wire \bdatw[15]_INST_0_i_11_n_0 ;
  wire \bdatw[15]_INST_0_i_120_n_0 ;
  wire \bdatw[15]_INST_0_i_121_n_0 ;
  wire \bdatw[15]_INST_0_i_122_n_0 ;
  wire \bdatw[15]_INST_0_i_123_n_0 ;
  wire \bdatw[15]_INST_0_i_124_n_0 ;
  wire \bdatw[15]_INST_0_i_12_n_0 ;
  wire \bdatw[15]_INST_0_i_13_n_0 ;
  wire \bdatw[15]_INST_0_i_14_n_0 ;
  wire \bdatw[15]_INST_0_i_15_n_0 ;
  wire \bdatw[15]_INST_0_i_16_n_0 ;
  wire \bdatw[15]_INST_0_i_17_n_0 ;
  wire \bdatw[15]_INST_0_i_18_n_0 ;
  wire \bdatw[15]_INST_0_i_19_n_0 ;
  wire \bdatw[15]_INST_0_i_1_n_0 ;
  wire \bdatw[15]_INST_0_i_23_n_0 ;
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
  wire \bdatw[15]_INST_0_i_50_n_0 ;
  wire \bdatw[15]_INST_0_i_51_n_0 ;
  wire \bdatw[15]_INST_0_i_52_n_0 ;
  wire \bdatw[15]_INST_0_i_55_n_0 ;
  wire \bdatw[15]_INST_0_i_56_n_0 ;
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
  wire \bdatw[15]_INST_0_i_77_n_0 ;
  wire \bdatw[15]_INST_0_i_78_n_0 ;
  wire \bdatw[15]_INST_0_i_79_n_0 ;
  wire \bdatw[15]_INST_0_i_7_n_0 ;
  wire \bdatw[15]_INST_0_i_80_n_0 ;
  wire \bdatw[15]_INST_0_i_81_n_0 ;
  wire \bdatw[15]_INST_0_i_82_n_0 ;
  wire \bdatw[15]_INST_0_i_83_n_0 ;
  wire \bdatw[15]_INST_0_i_85_n_0 ;
  wire \bdatw[15]_INST_0_i_87_n_0 ;
  wire \bdatw[15]_INST_0_i_88_n_0 ;
  wire \bdatw[15]_INST_0_i_89_n_0 ;
  wire \bdatw[15]_INST_0_i_8_n_0 ;
  wire \bdatw[15]_INST_0_i_90_n_0 ;
  wire \bdatw[15]_INST_0_i_91_n_0 ;
  wire \bdatw[15]_INST_0_i_92_n_0 ;
  wire \bdatw[15]_INST_0_i_93_n_0 ;
  wire \bdatw[15]_INST_0_i_94_n_0 ;
  wire \bdatw[15]_INST_0_i_95_n_0 ;
  wire \bdatw[15]_INST_0_i_96_n_0 ;
  wire \bdatw[15]_INST_0_i_97_n_0 ;
  wire \bdatw[15]_INST_0_i_98_n_0 ;
  wire \bdatw[15]_INST_0_i_99_n_0 ;
  wire \bdatw[15]_INST_0_i_9_n_0 ;
  wire \bdatw[8]_INST_0_i_10_n_0 ;
  wire \bdatw[8]_INST_0_i_11_n_0 ;
  wire \bdatw[8]_INST_0_i_13_n_0 ;
  wire \bdatw[8]_INST_0_i_14_n_0 ;
  wire \bdatw[8]_INST_0_i_15_n_0 ;
  wire \bdatw[8]_INST_0_i_16_n_0 ;
  wire \bdatw[8]_INST_0_i_17_n_0 ;
  wire \bdatw[8]_INST_0_i_18_n_0 ;
  wire \bdatw[8]_INST_0_i_19_n_0 ;
  wire \bdatw[8]_INST_0_i_1_n_0 ;
  wire \bdatw[8]_INST_0_i_20_n_0 ;
  wire \bdatw[8]_INST_0_i_21_n_0 ;
  wire \bdatw[8]_INST_0_i_22_n_0 ;
  wire \bdatw[8]_INST_0_i_23_n_0 ;
  wire \bdatw[8]_INST_0_i_24_n_0 ;
  wire \bdatw[8]_INST_0_i_25_n_0 ;
  wire \bdatw[8]_INST_0_i_26_n_0 ;
  wire \bdatw[8]_INST_0_i_27_n_0 ;
  wire \bdatw[8]_INST_0_i_28_n_0 ;
  wire \bdatw[8]_INST_0_i_29_n_0 ;
  wire \bdatw[8]_INST_0_i_2_n_0 ;
  wire \bdatw[8]_INST_0_i_30_n_0 ;
  wire \bdatw[8]_INST_0_i_31_n_0 ;
  wire \bdatw[8]_INST_0_i_32_n_0 ;
  wire \bdatw[8]_INST_0_i_33_n_0 ;
  wire \bdatw[8]_INST_0_i_34_n_0 ;
  wire \bdatw[8]_INST_0_i_35_n_0 ;
  wire \bdatw[8]_INST_0_i_36_n_0 ;
  wire \bdatw[8]_INST_0_i_37_n_0 ;
  wire \bdatw[8]_INST_0_i_38_n_0 ;
  wire \bdatw[8]_INST_0_i_39_n_0 ;
  wire \bdatw[8]_INST_0_i_3_n_0 ;
  wire \bdatw[8]_INST_0_i_40_n_0 ;
  wire \bdatw[8]_INST_0_i_41_n_0 ;
  wire \bdatw[8]_INST_0_i_42_n_0 ;
  wire \bdatw[8]_INST_0_i_43_n_0 ;
  wire \bdatw[8]_INST_0_i_44_n_0 ;
  wire \bdatw[8]_INST_0_i_45_n_0 ;
  wire \bdatw[8]_INST_0_i_46_n_0 ;
  wire \bdatw[8]_INST_0_i_47_n_0 ;
  wire \bdatw[8]_INST_0_i_48_n_0 ;
  wire \bdatw[8]_INST_0_i_49_n_0 ;
  wire \bdatw[8]_INST_0_i_4_n_0 ;
  wire \bdatw[8]_INST_0_i_50_n_0 ;
  wire \bdatw[8]_INST_0_i_51_n_0 ;
  wire \bdatw[8]_INST_0_i_52_n_0 ;
  wire \bdatw[8]_INST_0_i_5_n_0 ;
  wire \bdatw[8]_INST_0_i_6_n_0 ;
  wire \bdatw[8]_INST_0_i_7_n_0 ;
  wire \bdatw[8]_INST_0_i_9_n_0 ;
  wire \bdatw[9]_INST_0_i_10_n_0 ;
  wire \bdatw[9]_INST_0_i_11_n_0 ;
  wire \bdatw[9]_INST_0_i_12_n_0 ;
  wire \bdatw[9]_INST_0_i_14_n_0 ;
  wire \bdatw[9]_INST_0_i_15_n_0 ;
  wire \bdatw[9]_INST_0_i_16_n_0 ;
  wire \bdatw[9]_INST_0_i_17_n_0 ;
  wire \bdatw[9]_INST_0_i_18_n_0 ;
  wire \bdatw[9]_INST_0_i_19_n_0 ;
  wire \bdatw[9]_INST_0_i_1_n_0 ;
  wire \bdatw[9]_INST_0_i_20_n_0 ;
  wire \bdatw[9]_INST_0_i_21_n_0 ;
  wire \bdatw[9]_INST_0_i_22_n_0 ;
  wire \bdatw[9]_INST_0_i_23_n_0 ;
  wire \bdatw[9]_INST_0_i_24_n_0 ;
  wire \bdatw[9]_INST_0_i_25_n_0 ;
  wire \bdatw[9]_INST_0_i_26_n_0 ;
  wire \bdatw[9]_INST_0_i_27_n_0 ;
  wire \bdatw[9]_INST_0_i_28_n_0 ;
  wire \bdatw[9]_INST_0_i_29_n_0 ;
  wire \bdatw[9]_INST_0_i_2_n_0 ;
  wire \bdatw[9]_INST_0_i_30_n_0 ;
  wire \bdatw[9]_INST_0_i_31_n_0 ;
  wire \bdatw[9]_INST_0_i_32_n_0 ;
  wire \bdatw[9]_INST_0_i_33_n_0 ;
  wire \bdatw[9]_INST_0_i_34_n_0 ;
  wire \bdatw[9]_INST_0_i_35_n_0 ;
  wire \bdatw[9]_INST_0_i_36_n_0 ;
  wire \bdatw[9]_INST_0_i_37_n_0 ;
  wire \bdatw[9]_INST_0_i_38_n_0 ;
  wire \bdatw[9]_INST_0_i_39_n_0 ;
  wire \bdatw[9]_INST_0_i_3_n_0 ;
  wire \bdatw[9]_INST_0_i_40_n_0 ;
  wire \bdatw[9]_INST_0_i_41_n_0 ;
  wire \bdatw[9]_INST_0_i_42_n_0 ;
  wire \bdatw[9]_INST_0_i_43_n_0 ;
  wire \bdatw[9]_INST_0_i_44_n_0 ;
  wire \bdatw[9]_INST_0_i_45_n_0 ;
  wire \bdatw[9]_INST_0_i_46_n_0 ;
  wire \bdatw[9]_INST_0_i_47_n_0 ;
  wire \bdatw[9]_INST_0_i_48_n_0 ;
  wire \bdatw[9]_INST_0_i_49_n_0 ;
  wire \bdatw[9]_INST_0_i_4_n_0 ;
  wire \bdatw[9]_INST_0_i_50_n_0 ;
  wire \bdatw[9]_INST_0_i_51_n_0 ;
  wire \bdatw[9]_INST_0_i_52_n_0 ;
  wire \bdatw[9]_INST_0_i_5_n_0 ;
  wire \bdatw[9]_INST_0_i_6_n_0 ;
  wire \bdatw[9]_INST_0_i_7_n_0 ;
  wire \bdatw[9]_INST_0_i_8_n_0 ;
  wire brdy;
  wire [15:0]cbus;
  wire [15:0]cbus_i;
  wire [4:0]ccmd;
  wire \ccmd[0]_INST_0_i_10_n_0 ;
  wire \ccmd[0]_INST_0_i_11_n_0 ;
  wire \ccmd[0]_INST_0_i_12_n_0 ;
  wire \ccmd[0]_INST_0_i_13_n_0 ;
  wire \ccmd[0]_INST_0_i_14_n_0 ;
  wire \ccmd[0]_INST_0_i_15_n_0 ;
  wire \ccmd[0]_INST_0_i_16_n_0 ;
  wire \ccmd[0]_INST_0_i_17_n_0 ;
  wire \ccmd[0]_INST_0_i_18_n_0 ;
  wire \ccmd[0]_INST_0_i_19_n_0 ;
  wire \ccmd[0]_INST_0_i_1_n_0 ;
  wire \ccmd[0]_INST_0_i_20_n_0 ;
  wire \ccmd[0]_INST_0_i_21_n_0 ;
  wire \ccmd[0]_INST_0_i_22_n_0 ;
  wire \ccmd[0]_INST_0_i_23_n_0 ;
  wire \ccmd[0]_INST_0_i_24_n_0 ;
  wire \ccmd[0]_INST_0_i_25_n_0 ;
  wire \ccmd[0]_INST_0_i_26_n_0 ;
  wire \ccmd[0]_INST_0_i_27_n_0 ;
  wire \ccmd[0]_INST_0_i_28_n_0 ;
  wire \ccmd[0]_INST_0_i_29_n_0 ;
  wire \ccmd[0]_INST_0_i_2_n_0 ;
  wire \ccmd[0]_INST_0_i_30_n_0 ;
  wire \ccmd[0]_INST_0_i_31_n_0 ;
  wire \ccmd[0]_INST_0_i_3_n_0 ;
  wire \ccmd[0]_INST_0_i_4_n_0 ;
  wire \ccmd[0]_INST_0_i_5_n_0 ;
  wire \ccmd[0]_INST_0_i_6_n_0 ;
  wire \ccmd[0]_INST_0_i_7_n_0 ;
  wire \ccmd[0]_INST_0_i_8_n_0 ;
  wire \ccmd[0]_INST_0_i_9_n_0 ;
  wire \ccmd[1]_INST_0_i_10_n_0 ;
  wire \ccmd[1]_INST_0_i_11_n_0 ;
  wire \ccmd[1]_INST_0_i_12_n_0 ;
  wire \ccmd[1]_INST_0_i_13_n_0 ;
  wire \ccmd[1]_INST_0_i_14_n_0 ;
  wire \ccmd[1]_INST_0_i_15_n_0 ;
  wire \ccmd[1]_INST_0_i_16_n_0 ;
  wire \ccmd[1]_INST_0_i_17_n_0 ;
  wire \ccmd[1]_INST_0_i_18_n_0 ;
  wire \ccmd[1]_INST_0_i_19_n_0 ;
  wire \ccmd[1]_INST_0_i_1_n_0 ;
  wire \ccmd[1]_INST_0_i_20_n_0 ;
  wire \ccmd[1]_INST_0_i_21_n_0 ;
  wire \ccmd[1]_INST_0_i_22_n_0 ;
  wire \ccmd[1]_INST_0_i_2_n_0 ;
  wire \ccmd[1]_INST_0_i_3_n_0 ;
  wire \ccmd[1]_INST_0_i_4_n_0 ;
  wire \ccmd[1]_INST_0_i_5_n_0 ;
  wire \ccmd[1]_INST_0_i_6_n_0 ;
  wire \ccmd[1]_INST_0_i_7_n_0 ;
  wire \ccmd[1]_INST_0_i_8_n_0 ;
  wire \ccmd[1]_INST_0_i_9_n_0 ;
  wire \ccmd[2]_INST_0_i_10_n_0 ;
  wire \ccmd[2]_INST_0_i_11_n_0 ;
  wire \ccmd[2]_INST_0_i_12_n_0 ;
  wire \ccmd[2]_INST_0_i_13_n_0 ;
  wire \ccmd[2]_INST_0_i_14_n_0 ;
  wire \ccmd[2]_INST_0_i_15_n_0 ;
  wire \ccmd[2]_INST_0_i_16_n_0 ;
  wire \ccmd[2]_INST_0_i_17_n_0 ;
  wire \ccmd[2]_INST_0_i_18_n_0 ;
  wire \ccmd[2]_INST_0_i_19_n_0 ;
  wire \ccmd[2]_INST_0_i_1_n_0 ;
  wire \ccmd[2]_INST_0_i_20_n_0 ;
  wire \ccmd[2]_INST_0_i_21_n_0 ;
  wire \ccmd[2]_INST_0_i_22_n_0 ;
  wire \ccmd[2]_INST_0_i_23_n_0 ;
  wire \ccmd[2]_INST_0_i_24_n_0 ;
  wire \ccmd[2]_INST_0_i_25_n_0 ;
  wire \ccmd[2]_INST_0_i_26_n_0 ;
  wire \ccmd[2]_INST_0_i_27_n_0 ;
  wire \ccmd[2]_INST_0_i_28_n_0 ;
  wire \ccmd[2]_INST_0_i_29_n_0 ;
  wire \ccmd[2]_INST_0_i_2_n_0 ;
  wire \ccmd[2]_INST_0_i_30_n_0 ;
  wire \ccmd[2]_INST_0_i_31_n_0 ;
  wire \ccmd[2]_INST_0_i_3_n_0 ;
  wire \ccmd[2]_INST_0_i_4_n_0 ;
  wire \ccmd[2]_INST_0_i_5_n_0 ;
  wire \ccmd[2]_INST_0_i_6_n_0 ;
  wire \ccmd[2]_INST_0_i_7_n_0 ;
  wire \ccmd[2]_INST_0_i_8_n_0 ;
  wire \ccmd[2]_INST_0_i_9_n_0 ;
  wire \ccmd[3]_INST_0_i_10_n_0 ;
  wire \ccmd[3]_INST_0_i_11_n_0 ;
  wire \ccmd[3]_INST_0_i_12_n_0 ;
  wire \ccmd[3]_INST_0_i_13_n_0 ;
  wire \ccmd[3]_INST_0_i_14_n_0 ;
  wire \ccmd[3]_INST_0_i_15_n_0 ;
  wire \ccmd[3]_INST_0_i_16_n_0 ;
  wire \ccmd[3]_INST_0_i_17_n_0 ;
  wire \ccmd[3]_INST_0_i_18_n_0 ;
  wire \ccmd[3]_INST_0_i_1_n_0 ;
  wire \ccmd[3]_INST_0_i_2_n_0 ;
  wire \ccmd[3]_INST_0_i_3_n_0 ;
  wire \ccmd[3]_INST_0_i_4_n_0 ;
  wire \ccmd[3]_INST_0_i_5_n_0 ;
  wire \ccmd[3]_INST_0_i_6_n_0 ;
  wire \ccmd[3]_INST_0_i_7_n_0 ;
  wire \ccmd[3]_INST_0_i_8_n_0 ;
  wire \ccmd[3]_INST_0_i_9_n_0 ;
  wire \ccmd[4]_INST_0_i_10_n_0 ;
  wire \ccmd[4]_INST_0_i_11_n_0 ;
  wire \ccmd[4]_INST_0_i_12_n_0 ;
  wire \ccmd[4]_INST_0_i_13_n_0 ;
  wire \ccmd[4]_INST_0_i_14_n_0 ;
  wire \ccmd[4]_INST_0_i_15_n_0 ;
  wire \ccmd[4]_INST_0_i_16_n_0 ;
  wire \ccmd[4]_INST_0_i_17_n_0 ;
  wire \ccmd[4]_INST_0_i_18_n_0 ;
  wire \ccmd[4]_INST_0_i_19_n_0 ;
  wire \ccmd[4]_INST_0_i_1_n_0 ;
  wire \ccmd[4]_INST_0_i_20_n_0 ;
  wire \ccmd[4]_INST_0_i_2_n_0 ;
  wire \ccmd[4]_INST_0_i_3_n_0 ;
  wire \ccmd[4]_INST_0_i_4_n_0 ;
  wire \ccmd[4]_INST_0_i_5_n_0 ;
  wire \ccmd[4]_INST_0_i_6_n_0 ;
  wire \ccmd[4]_INST_0_i_7_n_0 ;
  wire \ccmd[4]_INST_0_i_8_n_0 ;
  wire \ccmd[4]_INST_0_i_9_n_0 ;
  wire clk;
  wire [1:0]cpuid;
  wire crdy;
  wire [2:0]\ctl/stat_nx ;
  (* DONT_TOUCH *) wire ctl_fetch;
  wire ctl_fetch_ext;
  wire ctl_fetch_ext_fl;
  wire ctl_fetch_ext_fl_i_2_n_0;
  wire ctl_fetch_ext_fl_i_3_n_0;
  wire ctl_fetch_ext_fl_i_4_n_0;
  wire ctl_fetch_ext_fl_i_5_n_0;
  wire ctl_fetch_ext_fl_i_6_n_0;
  wire ctl_fetch_ext_fl_i_7_n_0;
  wire ctl_fetch_fl;
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
  wire ctl_fetch_inferred_i_21_n_0;
  wire ctl_fetch_inferred_i_22_n_0;
  wire ctl_fetch_inferred_i_23_n_0;
  wire ctl_fetch_inferred_i_24_n_0;
  wire ctl_fetch_inferred_i_25_n_0;
  wire ctl_fetch_inferred_i_26_n_0;
  wire ctl_fetch_inferred_i_27_n_0;
  wire ctl_fetch_inferred_i_28_n_0;
  wire ctl_fetch_inferred_i_29_n_0;
  wire ctl_fetch_inferred_i_2_n_0;
  wire ctl_fetch_inferred_i_30_n_0;
  wire ctl_fetch_inferred_i_31_n_0;
  wire ctl_fetch_inferred_i_32_n_0;
  wire ctl_fetch_inferred_i_33_n_0;
  wire ctl_fetch_inferred_i_34_n_0;
  wire ctl_fetch_inferred_i_35_n_0;
  wire ctl_fetch_inferred_i_36_n_0;
  wire ctl_fetch_inferred_i_37_n_0;
  wire ctl_fetch_inferred_i_38_n_0;
  wire ctl_fetch_inferred_i_39_n_0;
  wire ctl_fetch_inferred_i_3_n_0;
  wire ctl_fetch_inferred_i_40_n_0;
  wire ctl_fetch_inferred_i_41_n_0;
  wire ctl_fetch_inferred_i_42_n_0;
  wire ctl_fetch_inferred_i_43_n_0;
  wire ctl_fetch_inferred_i_44_n_0;
  wire ctl_fetch_inferred_i_45_n_0;
  wire ctl_fetch_inferred_i_46_n_0;
  wire ctl_fetch_inferred_i_47_n_0;
  wire ctl_fetch_inferred_i_48_n_0;
  wire ctl_fetch_inferred_i_4_n_0;
  wire ctl_fetch_inferred_i_5_n_0;
  wire ctl_fetch_inferred_i_6_n_0;
  wire ctl_fetch_inferred_i_7_n_0;
  wire ctl_fetch_inferred_i_8_n_0;
  wire ctl_fetch_inferred_i_9_n_0;
  wire [0:0]ctl_sela;
  wire [1:0]ctl_sela_rn;
  wire [0:0]ctl_selb_0;
  wire [1:0]ctl_selb_rn;
  wire [1:1]ctl_selc;
  wire [2:0]ctl_selc_rn;
  wire ctl_sp_dec;
  wire ctl_sp_inc;
  wire ctl_sr_ldie;
  wire ctl_sr_upd;
  wire eir_fl0;
  wire \eir_fl[15]_i_1_n_0 ;
  wire \eir_fl[1]_i_1_n_0 ;
  wire \eir_fl[2]_i_1_n_0 ;
  wire \eir_fl[3]_i_1_n_0 ;
  wire \eir_fl[4]_i_1_n_0 ;
  wire \eir_fl[5]_i_1_n_0 ;
  wire \eir_fl[6]_i_2_n_0 ;
  (* DONT_TOUCH *) wire [15:0]\fch/eir ;
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
  wire \fch/fch_irq_lev[0]_i_1_n_0 ;
  wire \fch/fch_irq_lev[1]_i_1_n_0 ;
  (* DONT_TOUCH *) wire [15:0]\fch/ir ;
  wire [1:0]fch_irq_lev;
  wire \fch_irq_lev[1]_i_3_n_0 ;
  wire fch_irq_req;
  wire fch_irq_req_fl;
  wire [15:0]fch_pc;
  wire [15:0]fdat;
  wire \grn[15]_i_1__0_n_0 ;
  wire \grn[15]_i_1__10_n_0 ;
  wire \grn[15]_i_1__11_n_0 ;
  wire \grn[15]_i_1__12_n_0 ;
  wire \grn[15]_i_1__13_n_0 ;
  wire \grn[15]_i_1__14_n_0 ;
  wire \grn[15]_i_1__15_n_0 ;
  wire \grn[15]_i_1__16_n_0 ;
  wire \grn[15]_i_1__17_n_0 ;
  wire \grn[15]_i_1__18_n_0 ;
  wire \grn[15]_i_1__19_n_0 ;
  wire \grn[15]_i_1__1_n_0 ;
  wire \grn[15]_i_1__20_n_0 ;
  wire \grn[15]_i_1__21_n_0 ;
  wire \grn[15]_i_1__22_n_0 ;
  wire \grn[15]_i_1__23_n_0 ;
  wire \grn[15]_i_1__24_n_0 ;
  wire \grn[15]_i_1__25_n_0 ;
  wire \grn[15]_i_1__26_n_0 ;
  wire \grn[15]_i_1__27_n_0 ;
  wire \grn[15]_i_1__28_n_0 ;
  wire \grn[15]_i_1__29_n_0 ;
  wire \grn[15]_i_1__2_n_0 ;
  wire \grn[15]_i_1__30_n_0 ;
  wire \grn[15]_i_1__3_n_0 ;
  wire \grn[15]_i_1__4_n_0 ;
  wire \grn[15]_i_1__5_n_0 ;
  wire \grn[15]_i_1__6_n_0 ;
  wire \grn[15]_i_1__7_n_0 ;
  wire \grn[15]_i_1__8_n_0 ;
  wire \grn[15]_i_1__9_n_0 ;
  wire \grn[15]_i_1_n_0 ;
  wire \grn[15]_i_2__0_n_0 ;
  wire \grn[15]_i_2_n_0 ;
  wire [15:0]ir_fl;
  wire irq;
  wire [1:0]irq_lev;
  wire [5:0]irq_vec;
  wire \iv[0]_i_10_n_0 ;
  wire \iv[0]_i_11_n_0 ;
  wire \iv[0]_i_12_n_0 ;
  wire \iv[0]_i_13_n_0 ;
  wire \iv[0]_i_14_n_0 ;
  wire \iv[0]_i_15_n_0 ;
  wire \iv[0]_i_16_n_0 ;
  wire \iv[0]_i_17_n_0 ;
  wire \iv[0]_i_2_n_0 ;
  wire \iv[0]_i_3_n_0 ;
  wire \iv[0]_i_4_n_0 ;
  wire \iv[0]_i_5_n_0 ;
  wire \iv[0]_i_6_n_0 ;
  wire \iv[0]_i_7_n_0 ;
  wire \iv[0]_i_8_n_0 ;
  wire \iv[0]_i_9_n_0 ;
  wire \iv[10]_i_10_n_0 ;
  wire \iv[10]_i_11_n_0 ;
  wire \iv[10]_i_12_n_0 ;
  wire \iv[10]_i_13_n_0 ;
  wire \iv[10]_i_14_n_0 ;
  wire \iv[10]_i_15_n_0 ;
  wire \iv[10]_i_16_n_0 ;
  wire \iv[10]_i_17_n_0 ;
  wire \iv[10]_i_18_n_0 ;
  wire \iv[10]_i_19_n_0 ;
  wire \iv[10]_i_20_n_0 ;
  wire \iv[10]_i_21_n_0 ;
  wire \iv[10]_i_22_n_0 ;
  wire \iv[10]_i_23_n_0 ;
  wire \iv[10]_i_24_n_0 ;
  wire \iv[10]_i_25_n_0 ;
  wire \iv[10]_i_26_n_0 ;
  wire \iv[10]_i_27_n_0 ;
  wire \iv[10]_i_28_n_0 ;
  wire \iv[10]_i_29_n_0 ;
  wire \iv[10]_i_2_n_0 ;
  wire \iv[10]_i_30_n_0 ;
  wire \iv[10]_i_3_n_0 ;
  wire \iv[10]_i_4_n_0 ;
  wire \iv[10]_i_5_n_0 ;
  wire \iv[10]_i_6_n_0 ;
  wire \iv[10]_i_7_n_0 ;
  wire \iv[10]_i_8_n_0 ;
  wire \iv[10]_i_9_n_0 ;
  wire \iv[11]_i_10_n_0 ;
  wire \iv[11]_i_11_n_0 ;
  wire \iv[11]_i_12_n_0 ;
  wire \iv[11]_i_13_n_0 ;
  wire \iv[11]_i_14_n_0 ;
  wire \iv[11]_i_15_n_0 ;
  wire \iv[11]_i_16_n_0 ;
  wire \iv[11]_i_17_n_0 ;
  wire \iv[11]_i_18_n_0 ;
  wire \iv[11]_i_19_n_0 ;
  wire \iv[11]_i_20_n_0 ;
  wire \iv[11]_i_21_n_0 ;
  wire \iv[11]_i_22_n_0 ;
  wire \iv[11]_i_23_n_0 ;
  wire \iv[11]_i_24_n_0 ;
  wire \iv[11]_i_25_n_0 ;
  wire \iv[11]_i_26_n_0 ;
  wire \iv[11]_i_2_n_0 ;
  wire \iv[11]_i_3_n_0 ;
  wire \iv[11]_i_4_n_0 ;
  wire \iv[11]_i_5_n_0 ;
  wire \iv[11]_i_6_n_0 ;
  wire \iv[11]_i_7_n_0 ;
  wire \iv[11]_i_8_n_0 ;
  wire \iv[11]_i_9_n_0 ;
  wire \iv[12]_i_10_n_0 ;
  wire \iv[12]_i_11_n_0 ;
  wire \iv[12]_i_12_n_0 ;
  wire \iv[12]_i_13_n_0 ;
  wire \iv[12]_i_14_n_0 ;
  wire \iv[12]_i_15_n_0 ;
  wire \iv[12]_i_16_n_0 ;
  wire \iv[12]_i_17_n_0 ;
  wire \iv[12]_i_18_n_0 ;
  wire \iv[12]_i_19_n_0 ;
  wire \iv[12]_i_20_n_0 ;
  wire \iv[12]_i_2_n_0 ;
  wire \iv[12]_i_3_n_0 ;
  wire \iv[12]_i_4_n_0 ;
  wire \iv[12]_i_5_n_0 ;
  wire \iv[12]_i_6_n_0 ;
  wire \iv[12]_i_7_n_0 ;
  wire \iv[12]_i_8_n_0 ;
  wire \iv[12]_i_9_n_0 ;
  wire \iv[13]_i_10_n_0 ;
  wire \iv[13]_i_11_n_0 ;
  wire \iv[13]_i_12_n_0 ;
  wire \iv[13]_i_13_n_0 ;
  wire \iv[13]_i_14_n_0 ;
  wire \iv[13]_i_15_n_0 ;
  wire \iv[13]_i_16_n_0 ;
  wire \iv[13]_i_17_n_0 ;
  wire \iv[13]_i_18_n_0 ;
  wire \iv[13]_i_19_n_0 ;
  wire \iv[13]_i_20_n_0 ;
  wire \iv[13]_i_21_n_0 ;
  wire \iv[13]_i_22_n_0 ;
  wire \iv[13]_i_23_n_0 ;
  wire \iv[13]_i_24_n_0 ;
  wire \iv[13]_i_25_n_0 ;
  wire \iv[13]_i_26_n_0 ;
  wire \iv[13]_i_27_n_0 ;
  wire \iv[13]_i_28_n_0 ;
  wire \iv[13]_i_29_n_0 ;
  wire \iv[13]_i_2_n_0 ;
  wire \iv[13]_i_30_n_0 ;
  wire \iv[13]_i_31_n_0 ;
  wire \iv[13]_i_32_n_0 ;
  wire \iv[13]_i_33_n_0 ;
  wire \iv[13]_i_34_n_0 ;
  wire \iv[13]_i_35_n_0 ;
  wire \iv[13]_i_36_n_0 ;
  wire \iv[13]_i_3_n_0 ;
  wire \iv[13]_i_4_n_0 ;
  wire \iv[13]_i_5_n_0 ;
  wire \iv[13]_i_6_n_0 ;
  wire \iv[13]_i_7_n_0 ;
  wire \iv[13]_i_8_n_0 ;
  wire \iv[13]_i_9_n_0 ;
  wire \iv[14]_i_10_n_0 ;
  wire \iv[14]_i_11_n_0 ;
  wire \iv[14]_i_12_n_0 ;
  wire \iv[14]_i_13_n_0 ;
  wire \iv[14]_i_14_n_0 ;
  wire \iv[14]_i_15_n_0 ;
  wire \iv[14]_i_16_n_0 ;
  wire \iv[14]_i_17_n_0 ;
  wire \iv[14]_i_18_n_0 ;
  wire \iv[14]_i_19_n_0 ;
  wire \iv[14]_i_20_n_0 ;
  wire \iv[14]_i_21_n_0 ;
  wire \iv[14]_i_22_n_0 ;
  wire \iv[14]_i_23_n_0 ;
  wire \iv[14]_i_24_n_0 ;
  wire \iv[14]_i_25_n_0 ;
  wire \iv[14]_i_26_n_0 ;
  wire \iv[14]_i_27_n_0 ;
  wire \iv[14]_i_28_n_0 ;
  wire \iv[14]_i_29_n_0 ;
  wire \iv[14]_i_2_n_0 ;
  wire \iv[14]_i_30_n_0 ;
  wire \iv[14]_i_31_n_0 ;
  wire \iv[14]_i_32_n_0 ;
  wire \iv[14]_i_33_n_0 ;
  wire \iv[14]_i_34_n_0 ;
  wire \iv[14]_i_35_n_0 ;
  wire \iv[14]_i_36_n_0 ;
  wire \iv[14]_i_37_n_0 ;
  wire \iv[14]_i_38_n_0 ;
  wire \iv[14]_i_39_n_0 ;
  wire \iv[14]_i_3_n_0 ;
  wire \iv[14]_i_40_n_0 ;
  wire \iv[14]_i_41_n_0 ;
  wire \iv[14]_i_42_n_0 ;
  wire \iv[14]_i_43_n_0 ;
  wire \iv[14]_i_4_n_0 ;
  wire \iv[14]_i_5_n_0 ;
  wire \iv[14]_i_6_n_0 ;
  wire \iv[14]_i_7_n_0 ;
  wire \iv[14]_i_8_n_0 ;
  wire \iv[14]_i_9_n_0 ;
  wire \iv[15]_i_100_n_0 ;
  wire \iv[15]_i_101_n_0 ;
  wire \iv[15]_i_102_n_0 ;
  wire \iv[15]_i_103_n_0 ;
  wire \iv[15]_i_104_n_0 ;
  wire \iv[15]_i_105_n_0 ;
  wire \iv[15]_i_106_n_0 ;
  wire \iv[15]_i_107_n_0 ;
  wire \iv[15]_i_108_n_0 ;
  wire \iv[15]_i_109_n_0 ;
  wire \iv[15]_i_10_n_0 ;
  wire \iv[15]_i_110_n_0 ;
  wire \iv[15]_i_111_n_0 ;
  wire \iv[15]_i_112_n_0 ;
  wire \iv[15]_i_113_n_0 ;
  wire \iv[15]_i_114_n_0 ;
  wire \iv[15]_i_115_n_0 ;
  wire \iv[15]_i_116_n_0 ;
  wire \iv[15]_i_117_n_0 ;
  wire \iv[15]_i_118_n_0 ;
  wire \iv[15]_i_119_n_0 ;
  wire \iv[15]_i_11_n_0 ;
  wire \iv[15]_i_120_n_0 ;
  wire \iv[15]_i_121_n_0 ;
  wire \iv[15]_i_122_n_0 ;
  wire \iv[15]_i_123_n_0 ;
  wire \iv[15]_i_124_n_0 ;
  wire \iv[15]_i_125_n_0 ;
  wire \iv[15]_i_126_n_0 ;
  wire \iv[15]_i_127_n_0 ;
  wire \iv[15]_i_128_n_0 ;
  wire \iv[15]_i_129_n_0 ;
  wire \iv[15]_i_12_n_0 ;
  wire \iv[15]_i_13_n_0 ;
  wire \iv[15]_i_14_n_0 ;
  wire \iv[15]_i_15_n_0 ;
  wire \iv[15]_i_16_n_0 ;
  wire \iv[15]_i_17_n_0 ;
  wire \iv[15]_i_20_n_0 ;
  wire \iv[15]_i_21_n_0 ;
  wire \iv[15]_i_22_n_0 ;
  wire \iv[15]_i_23_n_0 ;
  wire \iv[15]_i_24_n_0 ;
  wire \iv[15]_i_25_n_0 ;
  wire \iv[15]_i_26_n_0 ;
  wire \iv[15]_i_27_n_0 ;
  wire \iv[15]_i_28_n_0 ;
  wire \iv[15]_i_29_n_0 ;
  wire \iv[15]_i_30_n_0 ;
  wire \iv[15]_i_31_n_0 ;
  wire \iv[15]_i_32_n_0 ;
  wire \iv[15]_i_33_n_0 ;
  wire \iv[15]_i_34_n_0 ;
  wire \iv[15]_i_35_n_0 ;
  wire \iv[15]_i_36_n_0 ;
  wire \iv[15]_i_37_n_0 ;
  wire \iv[15]_i_38_n_0 ;
  wire \iv[15]_i_39_n_0 ;
  wire \iv[15]_i_40_n_0 ;
  wire \iv[15]_i_41_n_0 ;
  wire \iv[15]_i_42_n_0 ;
  wire \iv[15]_i_43_n_0 ;
  wire \iv[15]_i_44_n_0 ;
  wire \iv[15]_i_45_n_0 ;
  wire \iv[15]_i_46_n_0 ;
  wire \iv[15]_i_47_n_0 ;
  wire \iv[15]_i_48_n_0 ;
  wire \iv[15]_i_49_n_0 ;
  wire \iv[15]_i_4_n_0 ;
  wire \iv[15]_i_50_n_0 ;
  wire \iv[15]_i_51_n_0 ;
  wire \iv[15]_i_52_n_0 ;
  wire \iv[15]_i_53_n_0 ;
  wire \iv[15]_i_54_n_0 ;
  wire \iv[15]_i_55_n_0 ;
  wire \iv[15]_i_56_n_0 ;
  wire \iv[15]_i_57_n_0 ;
  wire \iv[15]_i_58_n_0 ;
  wire \iv[15]_i_59_n_0 ;
  wire \iv[15]_i_5_n_0 ;
  wire \iv[15]_i_60_n_0 ;
  wire \iv[15]_i_61_n_0 ;
  wire \iv[15]_i_62_n_0 ;
  wire \iv[15]_i_63_n_0 ;
  wire \iv[15]_i_64_n_0 ;
  wire \iv[15]_i_65_n_0 ;
  wire \iv[15]_i_66_n_0 ;
  wire \iv[15]_i_67_n_0 ;
  wire \iv[15]_i_68_n_0 ;
  wire \iv[15]_i_69_n_0 ;
  wire \iv[15]_i_6_n_0 ;
  wire \iv[15]_i_70_n_0 ;
  wire \iv[15]_i_71_n_0 ;
  wire \iv[15]_i_72_n_0 ;
  wire \iv[15]_i_73_n_0 ;
  wire \iv[15]_i_74_n_0 ;
  wire \iv[15]_i_75_n_0 ;
  wire \iv[15]_i_76_n_0 ;
  wire \iv[15]_i_77_n_0 ;
  wire \iv[15]_i_78_n_0 ;
  wire \iv[15]_i_79_n_0 ;
  wire \iv[15]_i_7_n_0 ;
  wire \iv[15]_i_80_n_0 ;
  wire \iv[15]_i_81_n_0 ;
  wire \iv[15]_i_82_n_0 ;
  wire \iv[15]_i_83_n_0 ;
  wire \iv[15]_i_84_n_0 ;
  wire \iv[15]_i_85_n_0 ;
  wire \iv[15]_i_86_n_0 ;
  wire \iv[15]_i_87_n_0 ;
  wire \iv[15]_i_88_n_0 ;
  wire \iv[15]_i_89_n_0 ;
  wire \iv[15]_i_8_n_0 ;
  wire \iv[15]_i_90_n_0 ;
  wire \iv[15]_i_91_n_0 ;
  wire \iv[15]_i_92_n_0 ;
  wire \iv[15]_i_93_n_0 ;
  wire \iv[15]_i_94_n_0 ;
  wire \iv[15]_i_95_n_0 ;
  wire \iv[15]_i_96_n_0 ;
  wire \iv[15]_i_97_n_0 ;
  wire \iv[15]_i_98_n_0 ;
  wire \iv[15]_i_99_n_0 ;
  wire \iv[15]_i_9_n_0 ;
  wire \iv[1]_i_10_n_0 ;
  wire \iv[1]_i_11_n_0 ;
  wire \iv[1]_i_12_n_0 ;
  wire \iv[1]_i_13_n_0 ;
  wire \iv[1]_i_14_n_0 ;
  wire \iv[1]_i_2_n_0 ;
  wire \iv[1]_i_3_n_0 ;
  wire \iv[1]_i_4_n_0 ;
  wire \iv[1]_i_5_n_0 ;
  wire \iv[1]_i_6_n_0 ;
  wire \iv[1]_i_7_n_0 ;
  wire \iv[1]_i_8_n_0 ;
  wire \iv[1]_i_9_n_0 ;
  wire \iv[2]_i_10_n_0 ;
  wire \iv[2]_i_11_n_0 ;
  wire \iv[2]_i_12_n_0 ;
  wire \iv[2]_i_13_n_0 ;
  wire \iv[2]_i_14_n_0 ;
  wire \iv[2]_i_15_n_0 ;
  wire \iv[2]_i_16_n_0 ;
  wire \iv[2]_i_17_n_0 ;
  wire \iv[2]_i_18_n_0 ;
  wire \iv[2]_i_19_n_0 ;
  wire \iv[2]_i_20_n_0 ;
  wire \iv[2]_i_21_n_0 ;
  wire \iv[2]_i_22_n_0 ;
  wire \iv[2]_i_23_n_0 ;
  wire \iv[2]_i_24_n_0 ;
  wire \iv[2]_i_25_n_0 ;
  wire \iv[2]_i_26_n_0 ;
  wire \iv[2]_i_27_n_0 ;
  wire \iv[2]_i_2_n_0 ;
  wire \iv[2]_i_3_n_0 ;
  wire \iv[2]_i_4_n_0 ;
  wire \iv[2]_i_5_n_0 ;
  wire \iv[2]_i_6_n_0 ;
  wire \iv[2]_i_7_n_0 ;
  wire \iv[2]_i_8_n_0 ;
  wire \iv[2]_i_9_n_0 ;
  wire \iv[3]_i_10_n_0 ;
  wire \iv[3]_i_11_n_0 ;
  wire \iv[3]_i_12_n_0 ;
  wire \iv[3]_i_13_n_0 ;
  wire \iv[3]_i_14_n_0 ;
  wire \iv[3]_i_15_n_0 ;
  wire \iv[3]_i_16_n_0 ;
  wire \iv[3]_i_2_n_0 ;
  wire \iv[3]_i_3_n_0 ;
  wire \iv[3]_i_4_n_0 ;
  wire \iv[3]_i_5_n_0 ;
  wire \iv[3]_i_6_n_0 ;
  wire \iv[3]_i_7_n_0 ;
  wire \iv[3]_i_8_n_0 ;
  wire \iv[3]_i_9_n_0 ;
  wire \iv[4]_i_10_n_0 ;
  wire \iv[4]_i_11_n_0 ;
  wire \iv[4]_i_12_n_0 ;
  wire \iv[4]_i_13_n_0 ;
  wire \iv[4]_i_14_n_0 ;
  wire \iv[4]_i_15_n_0 ;
  wire \iv[4]_i_16_n_0 ;
  wire \iv[4]_i_17_n_0 ;
  wire \iv[4]_i_18_n_0 ;
  wire \iv[4]_i_2_n_0 ;
  wire \iv[4]_i_3_n_0 ;
  wire \iv[4]_i_4_n_0 ;
  wire \iv[4]_i_5_n_0 ;
  wire \iv[4]_i_6_n_0 ;
  wire \iv[4]_i_7_n_0 ;
  wire \iv[4]_i_8_n_0 ;
  wire \iv[4]_i_9_n_0 ;
  wire \iv[5]_i_10_n_0 ;
  wire \iv[5]_i_11_n_0 ;
  wire \iv[5]_i_12_n_0 ;
  wire \iv[5]_i_13_n_0 ;
  wire \iv[5]_i_14_n_0 ;
  wire \iv[5]_i_15_n_0 ;
  wire \iv[5]_i_2_n_0 ;
  wire \iv[5]_i_3_n_0 ;
  wire \iv[5]_i_4_n_0 ;
  wire \iv[5]_i_5_n_0 ;
  wire \iv[5]_i_6_n_0 ;
  wire \iv[5]_i_7_n_0 ;
  wire \iv[5]_i_8_n_0 ;
  wire \iv[5]_i_9_n_0 ;
  wire \iv[6]_i_10_n_0 ;
  wire \iv[6]_i_11_n_0 ;
  wire \iv[6]_i_12_n_0 ;
  wire \iv[6]_i_13_n_0 ;
  wire \iv[6]_i_14_n_0 ;
  wire \iv[6]_i_15_n_0 ;
  wire \iv[6]_i_16_n_0 ;
  wire \iv[6]_i_2_n_0 ;
  wire \iv[6]_i_3_n_0 ;
  wire \iv[6]_i_4_n_0 ;
  wire \iv[6]_i_5_n_0 ;
  wire \iv[6]_i_6_n_0 ;
  wire \iv[6]_i_7_n_0 ;
  wire \iv[6]_i_8_n_0 ;
  wire \iv[6]_i_9_n_0 ;
  wire \iv[7]_i_10_n_0 ;
  wire \iv[7]_i_11_n_0 ;
  wire \iv[7]_i_12_n_0 ;
  wire \iv[7]_i_13_n_0 ;
  wire \iv[7]_i_14_n_0 ;
  wire \iv[7]_i_15_n_0 ;
  wire \iv[7]_i_16_n_0 ;
  wire \iv[7]_i_17_n_0 ;
  wire \iv[7]_i_18_n_0 ;
  wire \iv[7]_i_19_n_0 ;
  wire \iv[7]_i_20_n_0 ;
  wire \iv[7]_i_21_n_0 ;
  wire \iv[7]_i_22_n_0 ;
  wire \iv[7]_i_23_n_0 ;
  wire \iv[7]_i_2_n_0 ;
  wire \iv[7]_i_3_n_0 ;
  wire \iv[7]_i_4_n_0 ;
  wire \iv[7]_i_5_n_0 ;
  wire \iv[7]_i_6_n_0 ;
  wire \iv[7]_i_7_n_0 ;
  wire \iv[7]_i_8_n_0 ;
  wire \iv[7]_i_9_n_0 ;
  wire \iv[8]_i_10_n_0 ;
  wire \iv[8]_i_11_n_0 ;
  wire \iv[8]_i_12_n_0 ;
  wire \iv[8]_i_13_n_0 ;
  wire \iv[8]_i_14_n_0 ;
  wire \iv[8]_i_15_n_0 ;
  wire \iv[8]_i_16_n_0 ;
  wire \iv[8]_i_17_n_0 ;
  wire \iv[8]_i_18_n_0 ;
  wire \iv[8]_i_19_n_0 ;
  wire \iv[8]_i_20_n_0 ;
  wire \iv[8]_i_21_n_0 ;
  wire \iv[8]_i_22_n_0 ;
  wire \iv[8]_i_23_n_0 ;
  wire \iv[8]_i_2_n_0 ;
  wire \iv[8]_i_3_n_0 ;
  wire \iv[8]_i_4_n_0 ;
  wire \iv[8]_i_5_n_0 ;
  wire \iv[8]_i_6_n_0 ;
  wire \iv[8]_i_7_n_0 ;
  wire \iv[8]_i_8_n_0 ;
  wire \iv[8]_i_9_n_0 ;
  wire \iv[9]_i_10_n_0 ;
  wire \iv[9]_i_11_n_0 ;
  wire \iv[9]_i_12_n_0 ;
  wire \iv[9]_i_13_n_0 ;
  wire \iv[9]_i_14_n_0 ;
  wire \iv[9]_i_15_n_0 ;
  wire \iv[9]_i_16_n_0 ;
  wire \iv[9]_i_17_n_0 ;
  wire \iv[9]_i_18_n_0 ;
  wire \iv[9]_i_19_n_0 ;
  wire \iv[9]_i_20_n_0 ;
  wire \iv[9]_i_21_n_0 ;
  wire \iv[9]_i_22_n_0 ;
  wire \iv[9]_i_2_n_0 ;
  wire \iv[9]_i_3_n_0 ;
  wire \iv[9]_i_4_n_0 ;
  wire \iv[9]_i_5_n_0 ;
  wire \iv[9]_i_6_n_0 ;
  wire \iv[9]_i_7_n_0 ;
  wire \iv[9]_i_8_n_0 ;
  wire \iv[9]_i_9_n_0 ;
  wire \mem/bctl/read_cyc[1]_i_1_n_0 ;
  wire \mem/bctl/read_cyc[2]_i_1_n_0 ;
  wire [2:0]\mem/read_cyc ;
  wire \pc[3]_i_3_n_0 ;
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
  wire [4:1]\rgf/abus_sel_cr ;
  wire \rgf/bank02/abuso/gr0_bus1__0 ;
  wire \rgf/bank02/abuso/gr1_bus1__0 ;
  wire \rgf/bank02/abuso/gr2_bus1__0 ;
  wire \rgf/bank02/abuso/gr3_bus1__0 ;
  wire \rgf/bank02/abuso/gr4_bus1__0 ;
  wire \rgf/bank02/abuso/gr5_bus1__0 ;
  wire \rgf/bank02/abuso/gr6_bus1__0 ;
  wire \rgf/bank02/abuso/gr7_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr0_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr1_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr2_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr3_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr4_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr5_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr6_bus1__0 ;
  wire \rgf/bank02/abuso2l/gr7_bus1__0 ;
  wire \rgf/bank02/bbuso/gr0_bus1__0 ;
  wire \rgf/bank02/bbuso/gr1_bus1__0 ;
  wire \rgf/bank02/bbuso/gr2_bus1__0 ;
  wire \rgf/bank02/bbuso/gr3_bus1__0 ;
  wire \rgf/bank02/bbuso/gr4_bus1__0 ;
  wire \rgf/bank02/bbuso/gr5_bus1__0 ;
  wire \rgf/bank02/bbuso/gr6_bus1__0 ;
  wire \rgf/bank02/bbuso/gr7_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr0_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr1_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr2_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr3_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr4_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr5_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr6_bus1__0 ;
  wire \rgf/bank02/bbuso2l/gr7_bus1__0 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank02/gr00 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank02/gr01 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank02/gr02 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank02/gr03 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank02/gr04 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank02/gr05 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank02/gr06 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank02/gr07 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank02/gr20 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank02/gr21 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank02/gr22 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank02/gr23 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank02/gr24 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank02/gr25 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank02/gr26 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank02/gr27 ;
  wire \rgf/bank13/abuso/gr0_bus1__0 ;
  wire \rgf/bank13/abuso/gr1_bus1__0 ;
  wire \rgf/bank13/abuso/gr2_bus1__0 ;
  wire \rgf/bank13/abuso/gr3_bus1__0 ;
  wire \rgf/bank13/abuso/gr4_bus1__0 ;
  wire \rgf/bank13/abuso/gr5_bus1__0 ;
  wire \rgf/bank13/abuso/gr6_bus1__0 ;
  wire \rgf/bank13/abuso/gr7_bus1__0 ;
  wire \rgf/bank13/abuso2l/gr0_bus1__0 ;
  wire \rgf/bank13/abuso2l/gr1_bus1__0 ;
  wire \rgf/bank13/abuso2l/gr2_bus1__0 ;
  wire \rgf/bank13/abuso2l/gr3_bus1__0 ;
  wire \rgf/bank13/abuso2l/gr4_bus1__0 ;
  wire \rgf/bank13/abuso2l/gr5_bus1__0 ;
  wire \rgf/bank13/abuso2l/gr6_bus1__0 ;
  wire \rgf/bank13/abuso2l/gr7_bus1__0 ;
  wire \rgf/bank13/bbuso/gr0_bus1__0 ;
  wire \rgf/bank13/bbuso/gr1_bus1__0 ;
  wire \rgf/bank13/bbuso/gr2_bus1__0 ;
  wire \rgf/bank13/bbuso/gr3_bus1__0 ;
  wire \rgf/bank13/bbuso/gr4_bus1__0 ;
  wire \rgf/bank13/bbuso/gr5_bus1__0 ;
  wire \rgf/bank13/bbuso/gr6_bus1__0 ;
  wire \rgf/bank13/bbuso/gr7_bus1__0 ;
  wire \rgf/bank13/bbuso2l/gr0_bus1__0 ;
  wire \rgf/bank13/bbuso2l/gr1_bus1__0 ;
  wire \rgf/bank13/bbuso2l/gr2_bus1__0 ;
  wire \rgf/bank13/bbuso2l/gr3_bus1__0 ;
  wire \rgf/bank13/bbuso2l/gr4_bus1__0 ;
  wire \rgf/bank13/bbuso2l/gr5_bus1__0 ;
  wire \rgf/bank13/bbuso2l/gr6_bus1__0 ;
  wire \rgf/bank13/bbuso2l/gr7_bus1__0 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank13/gr00 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank13/gr01 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank13/gr02 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank13/gr03 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank13/gr04 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank13/gr05 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank13/gr06 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank13/gr07 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank13/gr20 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank13/gr21 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank13/gr22 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank13/gr23 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank13/gr24 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank13/gr25 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank13/gr26 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/bank13/gr27 ;
  wire [3:0]\rgf/bank_sel ;
  wire [15:0]\rgf/bbus_b02 ;
  wire [5:0]\rgf/bbus_sel_cr ;
  wire [4:3]\rgf/cbus_sel_cr ;
  wire [5:0]\rgf/cbus_sel_cr__0 ;
  (* DONT_TOUCH *) wire [15:0]\rgf/ivec/iv ;
  wire \rgf/pcnt/p_0_in ;
  wire [15:0]\rgf/pcnt/p_1_in ;
  (* DONT_TOUCH *) wire [15:0]\rgf/pcnt/pc ;
  (* DONT_TOUCH *) wire [15:0]\rgf/sptr/sp ;
  wire [15:1]\rgf/sptr/sp_dec_0 ;
  wire [13:0]\rgf/sreg/p_0_in ;
  (* DONT_TOUCH *) wire [15:0]\rgf/sreg/sr ;
  (* DONT_TOUCH *) wire [15:0]\rgf/treg/tr ;
  wire rst_n;
  wire rst_n_fl;
  wire \sp[0]_i_1_n_0 ;
  wire \sp[0]_i_3_n_0 ;
  wire \sp[0]_i_4_n_0 ;
  wire \sp[0]_i_5_n_0 ;
  wire \sp[10]_i_1_n_0 ;
  wire \sp[10]_i_2_n_0 ;
  wire \sp[11]_i_1_n_0 ;
  wire \sp[11]_i_3_n_0 ;
  wire \sp[12]_i_1_n_0 ;
  wire \sp[12]_i_2_n_0 ;
  wire \sp[13]_i_1_n_0 ;
  wire \sp[13]_i_2_n_0 ;
  wire \sp[14]_i_1_n_0 ;
  wire \sp[14]_i_2_n_0 ;
  wire \sp[15]_i_10_n_0 ;
  wire \sp[15]_i_11_n_0 ;
  wire \sp[15]_i_12_n_0 ;
  wire \sp[15]_i_13_n_0 ;
  wire \sp[15]_i_14_n_0 ;
  wire \sp[15]_i_15_n_0 ;
  wire \sp[15]_i_16_n_0 ;
  wire \sp[15]_i_17_n_0 ;
  wire \sp[15]_i_1_n_0 ;
  wire \sp[15]_i_5_n_0 ;
  wire \sp[15]_i_6_n_0 ;
  wire \sp[15]_i_7_n_0 ;
  wire \sp[15]_i_9_n_0 ;
  wire \sp[1]_i_1_n_0 ;
  wire \sp[1]_i_2_n_0 ;
  wire \sp[2]_i_1_n_0 ;
  wire \sp[2]_i_2_n_0 ;
  wire \sp[3]_i_1_n_0 ;
  wire \sp[3]_i_3_n_0 ;
  wire \sp[3]_i_4_n_0 ;
  wire \sp[4]_i_1_n_0 ;
  wire \sp[4]_i_2_n_0 ;
  wire \sp[5]_i_1_n_0 ;
  wire \sp[5]_i_2_n_0 ;
  wire \sp[6]_i_1_n_0 ;
  wire \sp[6]_i_2_n_0 ;
  wire \sp[7]_i_1_n_0 ;
  wire \sp[7]_i_3_n_0 ;
  wire \sp[8]_i_1_n_0 ;
  wire \sp[8]_i_2_n_0 ;
  wire \sp[9]_i_1_n_0 ;
  wire \sp[9]_i_2_n_0 ;
  wire \sp_reg[0]_i_2_n_0 ;
  wire \sp_reg[0]_i_2_n_1 ;
  wire \sp_reg[0]_i_2_n_2 ;
  wire \sp_reg[0]_i_2_n_3 ;
  wire \sp_reg[0]_i_2_n_7 ;
  wire \sp_reg[11]_i_2_n_0 ;
  wire \sp_reg[11]_i_2_n_1 ;
  wire \sp_reg[11]_i_2_n_2 ;
  wire \sp_reg[11]_i_2_n_3 ;
  wire \sp_reg[11]_i_2_n_4 ;
  wire \sp_reg[11]_i_2_n_5 ;
  wire \sp_reg[11]_i_2_n_6 ;
  wire \sp_reg[11]_i_2_n_7 ;
  wire \sp_reg[15]_i_4_n_1 ;
  wire \sp_reg[15]_i_4_n_2 ;
  wire \sp_reg[15]_i_4_n_3 ;
  wire \sp_reg[15]_i_4_n_4 ;
  wire \sp_reg[15]_i_4_n_5 ;
  wire \sp_reg[15]_i_4_n_6 ;
  wire \sp_reg[15]_i_4_n_7 ;
  wire \sp_reg[3]_i_2_n_0 ;
  wire \sp_reg[3]_i_2_n_1 ;
  wire \sp_reg[3]_i_2_n_2 ;
  wire \sp_reg[3]_i_2_n_3 ;
  wire \sp_reg[3]_i_2_n_4 ;
  wire \sp_reg[3]_i_2_n_5 ;
  wire \sp_reg[3]_i_2_n_6 ;
  wire \sp_reg[7]_i_2_n_0 ;
  wire \sp_reg[7]_i_2_n_1 ;
  wire \sp_reg[7]_i_2_n_2 ;
  wire \sp_reg[7]_i_2_n_3 ;
  wire \sp_reg[7]_i_2_n_4 ;
  wire \sp_reg[7]_i_2_n_5 ;
  wire \sp_reg[7]_i_2_n_6 ;
  wire \sp_reg[7]_i_2_n_7 ;
  wire \sr[11]_i_2_n_0 ;
  wire \sr[13]_i_10_n_0 ;
  wire \sr[13]_i_11_n_0 ;
  wire \sr[13]_i_12_n_0 ;
  wire \sr[13]_i_3_n_0 ;
  wire \sr[13]_i_7_n_0 ;
  wire \sr[13]_i_8_n_0 ;
  wire \sr[13]_i_9_n_0 ;
  wire \sr[15]_i_1_n_0 ;
  wire \sr[2]_i_2_n_0 ;
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
  wire \sr[4]_i_20_n_0 ;
  wire \sr[4]_i_21_n_0 ;
  wire \sr[4]_i_2_n_0 ;
  wire \sr[4]_i_3_n_0 ;
  wire \sr[4]_i_4_n_0 ;
  wire \sr[4]_i_5_n_0 ;
  wire \sr[4]_i_6_n_0 ;
  wire \sr[4]_i_7_n_0 ;
  wire \sr[4]_i_8_n_0 ;
  wire \sr[4]_i_9_n_0 ;
  wire \sr[5]_i_2_n_0 ;
  wire \sr[5]_i_3_n_0 ;
  wire \sr[5]_i_4_n_0 ;
  wire \sr[6]_i_10_n_0 ;
  wire \sr[6]_i_11_n_0 ;
  wire \sr[6]_i_2_n_0 ;
  wire \sr[6]_i_3_n_0 ;
  wire \sr[6]_i_4_n_0 ;
  wire \sr[6]_i_5_n_0 ;
  wire \sr[6]_i_6_n_0 ;
  wire \sr[6]_i_7_n_0 ;
  wire \sr[6]_i_8_n_0 ;
  wire \sr[6]_i_9_n_0 ;
  wire \sr[7]_i_10_n_0 ;
  wire \sr[7]_i_11_n_0 ;
  wire \sr[7]_i_12_n_0 ;
  wire \sr[7]_i_13_n_0 ;
  wire \sr[7]_i_14_n_0 ;
  wire \sr[7]_i_15_n_0 ;
  wire \sr[7]_i_16_n_0 ;
  wire \sr[7]_i_17_n_0 ;
  wire \sr[7]_i_18_n_0 ;
  wire \sr[7]_i_2_n_0 ;
  wire \sr[7]_i_3_n_0 ;
  wire \sr[7]_i_5_n_0 ;
  wire \sr[7]_i_6_n_0 ;
  wire \sr[7]_i_7_n_0 ;
  wire \sr[7]_i_8_n_0 ;
  wire \sr[7]_i_9_n_0 ;
  wire [2:0]stat;
  wire \stat[0]_i_10_n_0 ;
  wire \stat[0]_i_11_n_0 ;
  wire \stat[0]_i_12_n_0 ;
  wire \stat[0]_i_13_n_0 ;
  wire \stat[0]_i_14_n_0 ;
  wire \stat[0]_i_15_n_0 ;
  wire \stat[0]_i_16_n_0 ;
  wire \stat[0]_i_17_n_0 ;
  wire \stat[0]_i_18_n_0 ;
  wire \stat[0]_i_19_n_0 ;
  wire \stat[0]_i_20_n_0 ;
  wire \stat[0]_i_21_n_0 ;
  wire \stat[0]_i_22_n_0 ;
  wire \stat[0]_i_23_n_0 ;
  wire \stat[0]_i_24_n_0 ;
  wire \stat[0]_i_25_n_0 ;
  wire \stat[0]_i_26_n_0 ;
  wire \stat[0]_i_27_n_0 ;
  wire \stat[0]_i_28_n_0 ;
  wire \stat[0]_i_29_n_0 ;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_30_n_0 ;
  wire \stat[0]_i_31_n_0 ;
  wire \stat[0]_i_32_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_4_n_0 ;
  wire \stat[0]_i_5_n_0 ;
  wire \stat[0]_i_6_n_0 ;
  wire \stat[0]_i_7_n_0 ;
  wire \stat[0]_i_8_n_0 ;
  wire \stat[0]_i_9_n_0 ;
  wire \stat[1]_i_10_n_0 ;
  wire \stat[1]_i_11_n_0 ;
  wire \stat[1]_i_12_n_0 ;
  wire \stat[1]_i_13_n_0 ;
  wire \stat[1]_i_14_n_0 ;
  wire \stat[1]_i_15_n_0 ;
  wire \stat[1]_i_16_n_0 ;
  wire \stat[1]_i_17_n_0 ;
  wire \stat[1]_i_18_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[1]_i_6_n_0 ;
  wire \stat[1]_i_7_n_0 ;
  wire \stat[1]_i_8_n_0 ;
  wire \stat[1]_i_9_n_0 ;
  wire \stat[2]_i_10_n_0 ;
  wire \stat[2]_i_11_n_0 ;
  wire \stat[2]_i_12_n_0 ;
  wire \stat[2]_i_13_n_0 ;
  wire \stat[2]_i_14_n_0 ;
  wire \stat[2]_i_15_n_0 ;
  wire \stat[2]_i_16_n_0 ;
  wire \stat[2]_i_2_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire \stat[2]_i_4_n_0 ;
  wire \stat[2]_i_6_n_0 ;
  wire \stat[2]_i_7_n_0 ;
  wire \stat[2]_i_8_n_0 ;
  wire \stat[2]_i_9_n_0 ;
  wire \stat_reg[2]_i_5_n_0 ;
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
  wire tout__1_carry__1_i_4_n_0;
  wire tout__1_carry__1_i_5_n_0;
  wire tout__1_carry__1_i_6_n_0;
  wire tout__1_carry__1_i_7_n_0;
  wire tout__1_carry__1_i_8_n_0;
  wire tout__1_carry__2_i_1_n_0;
  wire tout__1_carry__2_i_2_n_0;
  wire tout__1_carry__2_i_3_n_0;
  wire tout__1_carry__2_i_4_n_0;
  wire tout__1_carry__2_i_5_n_0;
  wire tout__1_carry__2_i_6_n_0;
  wire tout__1_carry__2_i_7_n_0;
  wire tout__1_carry__2_i_8_n_0;
  wire tout__1_carry__3_i_1_n_0;
  wire tout__1_carry__3_i_2_n_0;
  wire tout__1_carry__3_i_3_n_0;
  wire tout__1_carry_i_10_n_0;
  wire tout__1_carry_i_11_n_0;
  wire tout__1_carry_i_12_n_0;
  wire tout__1_carry_i_13_n_0;
  wire tout__1_carry_i_14_n_0;
  wire tout__1_carry_i_15_n_0;
  wire tout__1_carry_i_16_n_0;
  wire tout__1_carry_i_17_n_0;
  wire tout__1_carry_i_18_n_0;
  wire tout__1_carry_i_19_n_0;
  wire tout__1_carry_i_1_n_0;
  wire tout__1_carry_i_20_n_0;
  wire tout__1_carry_i_21_n_0;
  wire tout__1_carry_i_2_n_0;
  wire tout__1_carry_i_3_n_0;
  wire tout__1_carry_i_4_n_0;
  wire tout__1_carry_i_5_n_0;
  wire tout__1_carry_i_6_n_0;
  wire tout__1_carry_i_7_n_0;
  wire tout__1_carry_i_8_n_0;
  wire tout__1_carry_i_9_n_0;
  wire \tr[15]_i_2_n_0 ;
  wire [3:0]\NLW_alu/art/add/tout__1_carry__3_O_UNCONNECTED ;
  wire [3:0]\NLW_sp_reg[3]_i_2_O_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[0]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[0]),
        .O(abus_o[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[10]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[10]),
        .O(abus_o[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[11]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[11]),
        .O(abus_o[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[12]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[12]),
        .O(abus_o[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[13]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[13]),
        .O(abus_o[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[14]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[14]),
        .O(abus_o[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[15]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[15]),
        .O(abus_o[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[1]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[1]),
        .O(abus_o[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[2]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[2]),
        .O(abus_o[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[3]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[3]),
        .O(abus_o[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[4]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[4]),
        .O(abus_o[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[5]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[5]),
        .O(abus_o[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[6]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[6]),
        .O(abus_o[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[7]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[7]),
        .O(abus_o[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[8]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[8]),
        .O(abus_o[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \abus_o[9]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(abus_0[9]),
        .O(abus_o[9]));
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
        .O({\alu/art/add/tout__1_carry__0_n_4 ,\alu/art/add/tout__1_carry__0_n_5 ,\alu/art/add/tout__1_carry__0_n_6 ,\alu/art/add/tout__1_carry__0_n_7 }),
        .S({tout__1_carry__0_i_5_n_0,tout__1_carry__0_i_6_n_0,tout__1_carry__0_i_7_n_0,tout__1_carry__0_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu/art/add/tout__1_carry__1 
       (.CI(\alu/art/add/tout__1_carry__0_n_0 ),
        .CO({\alu/art/add/tout__1_carry__1_n_0 ,\alu/art/add/tout__1_carry__1_n_1 ,\alu/art/add/tout__1_carry__1_n_2 ,\alu/art/add/tout__1_carry__1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({tout__1_carry__1_i_1_n_0,tout__1_carry__1_i_2_n_0,tout__1_carry__1_i_3_n_0,tout__1_carry__1_i_4_n_0}),
        .O({\alu/art/add/tout__1_carry__1_n_4 ,\alu/art/add/tout__1_carry__1_n_5 ,\alu/art/add/tout__1_carry__1_n_6 ,\alu/art/add/tout__1_carry__1_n_7 }),
        .S({tout__1_carry__1_i_5_n_0,tout__1_carry__1_i_6_n_0,tout__1_carry__1_i_7_n_0,tout__1_carry__1_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu/art/add/tout__1_carry__2 
       (.CI(\alu/art/add/tout__1_carry__1_n_0 ),
        .CO({\alu/art/add/tout__1_carry__2_n_0 ,\alu/art/add/tout__1_carry__2_n_1 ,\alu/art/add/tout__1_carry__2_n_2 ,\alu/art/add/tout__1_carry__2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({tout__1_carry__2_i_1_n_0,tout__1_carry__2_i_2_n_0,tout__1_carry__2_i_3_n_0,tout__1_carry__2_i_4_n_0}),
        .O({\alu/art/p_0_in ,\alu/art/add/tout__1_carry__2_n_5 ,\alu/art/add/tout__1_carry__2_n_6 ,\alu/art/add/tout__1_carry__2_n_7 }),
        .S({tout__1_carry__2_i_5_n_0,tout__1_carry__2_i_6_n_0,tout__1_carry__2_i_7_n_0,tout__1_carry__2_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu/art/add/tout__1_carry__3 
       (.CI(\alu/art/add/tout__1_carry__2_n_0 ),
        .CO(\alu/art/add/tout__1_carry__3_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,tout__1_carry__3_i_1_n_0}),
        .O({\alu/art/add/tout ,\NLW_alu/art/add/tout__1_carry__3_O_UNCONNECTED [0]}),
        .S({\<const0> ,\<const0> ,tout__1_carry__3_i_2_n_0,tout__1_carry__3_i_3_n_0}));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[0]_INST_0 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[0]),
        .O(badr[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[0]_INST_0_i_1 
       (.I0(\badr[0]_INST_0_i_2_n_0 ),
        .I1(\badr[0]_INST_0_i_3_n_0 ),
        .I2(\badr[0]_INST_0_i_4_n_0 ),
        .I3(\badr[0]_INST_0_i_5_n_0 ),
        .I4(\badr[0]_INST_0_i_6_n_0 ),
        .I5(\badr[0]_INST_0_i_7_n_0 ),
        .O(abus_0[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_10 
       (.I0(\rgf/bank13/gr01 [0]),
        .I1(\rgf/bank13/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [0]),
        .I3(\rgf/bank13/abuso/gr2_bus1__0 ),
        .O(\badr[0]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_11 
       (.I0(\rgf/bank13/gr07 [0]),
        .I1(\rgf/bank13/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [0]),
        .I3(\rgf/bank13/abuso/gr0_bus1__0 ),
        .O(\badr[0]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_12 
       (.I0(\rgf/bank13/gr05 [0]),
        .I1(\rgf/bank13/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [0]),
        .I3(\rgf/bank13/abuso/gr6_bus1__0 ),
        .O(\badr[0]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[0]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/sreg/sr [0]),
        .O(\badr[0]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_14 
       (.I0(\rgf/bank13/gr25 [0]),
        .I1(\rgf/bank13/abuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [0]),
        .I3(\rgf/bank13/abuso2l/gr6_bus1__0 ),
        .O(\badr[0]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [0]),
        .I1(\rgf/bank13/abuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [0]),
        .I3(\rgf/bank13/abuso2l/gr2_bus1__0 ),
        .O(\badr[0]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_16 
       (.I0(\rgf/bank02/gr24 [0]),
        .I1(\rgf/bank02/abuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [0]),
        .I3(\rgf/bank02/abuso2l/gr5_bus1__0 ),
        .O(\badr[0]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_17 
       (.I0(\rgf/bank02/gr03 [0]),
        .I1(\rgf/bank02/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [0]),
        .I3(\rgf/bank02/abuso/gr4_bus1__0 ),
        .O(\badr[0]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_18 
       (.I0(\rgf/bank02/gr01 [0]),
        .I1(\rgf/bank02/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [0]),
        .I3(\rgf/bank02/abuso/gr2_bus1__0 ),
        .O(\badr[0]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_19 
       (.I0(\rgf/bank02/gr07 [0]),
        .I1(\rgf/bank02/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [0]),
        .I3(\rgf/bank02/abuso/gr0_bus1__0 ),
        .O(\badr[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[0]_INST_0_i_2 
       (.I0(\badr[0]_INST_0_i_8_n_0 ),
        .I1(\badr[0]_INST_0_i_9_n_0 ),
        .I2(\badr[0]_INST_0_i_10_n_0 ),
        .I3(\badr[0]_INST_0_i_11_n_0 ),
        .I4(\badr[0]_INST_0_i_12_n_0 ),
        .I5(\badr[0]_INST_0_i_13_n_0 ),
        .O(\badr[0]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_20 
       (.I0(\rgf/bank02/gr05 [0]),
        .I1(\rgf/bank02/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [0]),
        .I3(\rgf/bank02/abuso/gr6_bus1__0 ),
        .O(\badr[0]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[0]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\rgf/bank02/gr20 [0]),
        .O(\badr[0]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[0]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [0]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [0]),
        .I4(\rgf/bank02/gr21 [0]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\badr[0]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[0]_INST_0_i_3 
       (.I0(\badr[0]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank13/gr23 [0]),
        .I2(\rgf/bank13/abuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [0]),
        .I4(\rgf/bank13/abuso2l/gr4_bus1__0 ),
        .I5(\badr[0]_INST_0_i_15_n_0 ),
        .O(\badr[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[0]_INST_0_i_4 
       (.I0(\badr[0]_INST_0_i_16_n_0 ),
        .I1(\badr[0]_INST_0_i_17_n_0 ),
        .I2(\badr[0]_INST_0_i_18_n_0 ),
        .I3(\badr[0]_INST_0_i_19_n_0 ),
        .I4(\badr[0]_INST_0_i_20_n_0 ),
        .I5(\badr[0]_INST_0_i_21_n_0 ),
        .O(\badr[0]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[0]_INST_0_i_5 
       (.I0(\badr[0]_INST_0_i_22_n_0 ),
        .I1(\rgf/bank02/abuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [0]),
        .I3(\rgf/bank02/abuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [0]),
        .O(\badr[0]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hC8400000)) 
    \badr[0]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/sptr/sp [0]),
        .O(\badr[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[0]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\rgf/treg/tr [0]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\rgf/ivec/iv [0]),
        .I4(\rgf/pcnt/pc [0]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\badr[0]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_8 
       (.I0(\rgf/bank13/gr27 [0]),
        .I1(\rgf/bank13/abuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [0]),
        .I3(\rgf/bank13/abuso2l/gr0_bus1__0 ),
        .O(\badr[0]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[0]_INST_0_i_9 
       (.I0(\rgf/bank13/gr03 [0]),
        .I1(\rgf/bank13/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [0]),
        .I3(\rgf/bank13/abuso/gr4_bus1__0 ),
        .O(\badr[0]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[10]_INST_0 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[10]),
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
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_10 
       (.I0(\rgf/bank13/gr01 [10]),
        .I1(\rgf/bank13/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [10]),
        .I3(\rgf/bank13/abuso/gr2_bus1__0 ),
        .O(\badr[10]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_11 
       (.I0(\rgf/bank13/gr07 [10]),
        .I1(\rgf/bank13/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [10]),
        .I3(\rgf/bank13/abuso/gr0_bus1__0 ),
        .O(\badr[10]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_12 
       (.I0(\rgf/bank13/gr05 [10]),
        .I1(\rgf/bank13/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [10]),
        .I3(\rgf/bank13/abuso/gr6_bus1__0 ),
        .O(\badr[10]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[10]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/sreg/sr [10]),
        .O(\badr[10]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_14 
       (.I0(\rgf/bank13/gr25 [10]),
        .I1(\rgf/bank13/abuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [10]),
        .I3(\rgf/bank13/abuso2l/gr6_bus1__0 ),
        .O(\badr[10]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [10]),
        .I1(\rgf/bank13/abuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [10]),
        .I3(\rgf/bank13/abuso2l/gr2_bus1__0 ),
        .O(\badr[10]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_16 
       (.I0(\rgf/bank02/gr24 [10]),
        .I1(\rgf/bank02/abuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [10]),
        .I3(\rgf/bank02/abuso2l/gr5_bus1__0 ),
        .O(\badr[10]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_17 
       (.I0(\rgf/bank02/gr03 [10]),
        .I1(\rgf/bank02/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [10]),
        .I3(\rgf/bank02/abuso/gr4_bus1__0 ),
        .O(\badr[10]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_18 
       (.I0(\rgf/bank02/gr01 [10]),
        .I1(\rgf/bank02/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [10]),
        .I3(\rgf/bank02/abuso/gr2_bus1__0 ),
        .O(\badr[10]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_19 
       (.I0(\rgf/bank02/gr07 [10]),
        .I1(\rgf/bank02/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [10]),
        .I3(\rgf/bank02/abuso/gr0_bus1__0 ),
        .O(\badr[10]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[10]_INST_0_i_2 
       (.I0(\badr[10]_INST_0_i_8_n_0 ),
        .I1(\badr[10]_INST_0_i_9_n_0 ),
        .I2(\badr[10]_INST_0_i_10_n_0 ),
        .I3(\badr[10]_INST_0_i_11_n_0 ),
        .I4(\badr[10]_INST_0_i_12_n_0 ),
        .I5(\badr[10]_INST_0_i_13_n_0 ),
        .O(\badr[10]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_20 
       (.I0(\rgf/bank02/gr05 [10]),
        .I1(\rgf/bank02/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [10]),
        .I3(\rgf/bank02/abuso/gr6_bus1__0 ),
        .O(\badr[10]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[10]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\rgf/bank02/gr20 [10]),
        .O(\badr[10]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[10]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [10]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [10]),
        .I4(\rgf/bank02/gr21 [10]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\badr[10]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[10]_INST_0_i_3 
       (.I0(\badr[10]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank13/gr23 [10]),
        .I2(\rgf/bank13/abuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [10]),
        .I4(\rgf/bank13/abuso2l/gr4_bus1__0 ),
        .I5(\badr[10]_INST_0_i_15_n_0 ),
        .O(\badr[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[10]_INST_0_i_4 
       (.I0(\badr[10]_INST_0_i_16_n_0 ),
        .I1(\badr[10]_INST_0_i_17_n_0 ),
        .I2(\badr[10]_INST_0_i_18_n_0 ),
        .I3(\badr[10]_INST_0_i_19_n_0 ),
        .I4(\badr[10]_INST_0_i_20_n_0 ),
        .I5(\badr[10]_INST_0_i_21_n_0 ),
        .O(\badr[10]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[10]_INST_0_i_5 
       (.I0(\badr[10]_INST_0_i_22_n_0 ),
        .I1(\rgf/bank02/abuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [10]),
        .I3(\rgf/bank02/abuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [10]),
        .O(\badr[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[10]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/sptr/sp_dec_0 [10]),
        .I5(\rgf/sptr/sp [10]),
        .O(\badr[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[10]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\rgf/treg/tr [10]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\rgf/ivec/iv [10]),
        .I4(\rgf/pcnt/pc [10]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\badr[10]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_8 
       (.I0(\rgf/bank13/gr27 [10]),
        .I1(\rgf/bank13/abuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [10]),
        .I3(\rgf/bank13/abuso2l/gr0_bus1__0 ),
        .O(\badr[10]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[10]_INST_0_i_9 
       (.I0(\rgf/bank13/gr03 [10]),
        .I1(\rgf/bank13/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [10]),
        .I3(\rgf/bank13/abuso/gr4_bus1__0 ),
        .O(\badr[10]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[11]_INST_0 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[11]),
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
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_10 
       (.I0(\rgf/bank13/gr01 [11]),
        .I1(\rgf/bank13/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [11]),
        .I3(\rgf/bank13/abuso/gr2_bus1__0 ),
        .O(\badr[11]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_11 
       (.I0(\rgf/bank13/gr07 [11]),
        .I1(\rgf/bank13/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [11]),
        .I3(\rgf/bank13/abuso/gr0_bus1__0 ),
        .O(\badr[11]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_12 
       (.I0(\rgf/bank13/gr05 [11]),
        .I1(\rgf/bank13/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [11]),
        .I3(\rgf/bank13/abuso/gr6_bus1__0 ),
        .O(\badr[11]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[11]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/sreg/sr [11]),
        .O(\badr[11]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_14 
       (.I0(\rgf/bank13/gr25 [11]),
        .I1(\rgf/bank13/abuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [11]),
        .I3(\rgf/bank13/abuso2l/gr6_bus1__0 ),
        .O(\badr[11]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [11]),
        .I1(\rgf/bank13/abuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [11]),
        .I3(\rgf/bank13/abuso2l/gr2_bus1__0 ),
        .O(\badr[11]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_16 
       (.I0(\rgf/bank02/gr24 [11]),
        .I1(\rgf/bank02/abuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [11]),
        .I3(\rgf/bank02/abuso2l/gr5_bus1__0 ),
        .O(\badr[11]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_17 
       (.I0(\rgf/bank02/gr03 [11]),
        .I1(\rgf/bank02/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [11]),
        .I3(\rgf/bank02/abuso/gr4_bus1__0 ),
        .O(\badr[11]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_18 
       (.I0(\rgf/bank02/gr01 [11]),
        .I1(\rgf/bank02/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [11]),
        .I3(\rgf/bank02/abuso/gr2_bus1__0 ),
        .O(\badr[11]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_19 
       (.I0(\rgf/bank02/gr07 [11]),
        .I1(\rgf/bank02/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [11]),
        .I3(\rgf/bank02/abuso/gr0_bus1__0 ),
        .O(\badr[11]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[11]_INST_0_i_2 
       (.I0(\badr[11]_INST_0_i_8_n_0 ),
        .I1(\badr[11]_INST_0_i_9_n_0 ),
        .I2(\badr[11]_INST_0_i_10_n_0 ),
        .I3(\badr[11]_INST_0_i_11_n_0 ),
        .I4(\badr[11]_INST_0_i_12_n_0 ),
        .I5(\badr[11]_INST_0_i_13_n_0 ),
        .O(\badr[11]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_20 
       (.I0(\rgf/bank02/gr05 [11]),
        .I1(\rgf/bank02/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [11]),
        .I3(\rgf/bank02/abuso/gr6_bus1__0 ),
        .O(\badr[11]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[11]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\rgf/bank02/gr20 [11]),
        .O(\badr[11]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[11]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [11]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [11]),
        .I4(\rgf/bank02/gr21 [11]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\badr[11]_INST_0_i_22_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[11]_INST_0_i_23 
       (.CI(\badr[7]_INST_0_i_23_n_0 ),
        .CO({\badr[11]_INST_0_i_23_n_0 ,\badr[11]_INST_0_i_23_n_1 ,\badr[11]_INST_0_i_23_n_2 ,\badr[11]_INST_0_i_23_n_3 }),
        .CYINIT(\<const0> ),
        .DI(\rgf/sptr/sp [11:8]),
        .O(\rgf/sptr/sp_dec_0 [11:8]),
        .S({\badr[11]_INST_0_i_24_n_0 ,\badr[11]_INST_0_i_25_n_0 ,\badr[11]_INST_0_i_26_n_0 ,\badr[11]_INST_0_i_27_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[11]_INST_0_i_24 
       (.I0(\rgf/sptr/sp [11]),
        .O(\badr[11]_INST_0_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[11]_INST_0_i_25 
       (.I0(\rgf/sptr/sp [10]),
        .O(\badr[11]_INST_0_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[11]_INST_0_i_26 
       (.I0(\rgf/sptr/sp [9]),
        .O(\badr[11]_INST_0_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[11]_INST_0_i_27 
       (.I0(\rgf/sptr/sp [8]),
        .O(\badr[11]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[11]_INST_0_i_3 
       (.I0(\badr[11]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank13/gr23 [11]),
        .I2(\rgf/bank13/abuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [11]),
        .I4(\rgf/bank13/abuso2l/gr4_bus1__0 ),
        .I5(\badr[11]_INST_0_i_15_n_0 ),
        .O(\badr[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[11]_INST_0_i_4 
       (.I0(\badr[11]_INST_0_i_16_n_0 ),
        .I1(\badr[11]_INST_0_i_17_n_0 ),
        .I2(\badr[11]_INST_0_i_18_n_0 ),
        .I3(\badr[11]_INST_0_i_19_n_0 ),
        .I4(\badr[11]_INST_0_i_20_n_0 ),
        .I5(\badr[11]_INST_0_i_21_n_0 ),
        .O(\badr[11]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[11]_INST_0_i_5 
       (.I0(\badr[11]_INST_0_i_22_n_0 ),
        .I1(\rgf/bank02/abuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [11]),
        .I3(\rgf/bank02/abuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [11]),
        .O(\badr[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[11]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/sptr/sp_dec_0 [11]),
        .I5(\rgf/sptr/sp [11]),
        .O(\badr[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[11]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\rgf/treg/tr [11]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\rgf/ivec/iv [11]),
        .I4(\rgf/pcnt/pc [11]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\badr[11]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_8 
       (.I0(\rgf/bank13/gr27 [11]),
        .I1(\rgf/bank13/abuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [11]),
        .I3(\rgf/bank13/abuso2l/gr0_bus1__0 ),
        .O(\badr[11]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[11]_INST_0_i_9 
       (.I0(\rgf/bank13/gr03 [11]),
        .I1(\rgf/bank13/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [11]),
        .I3(\rgf/bank13/abuso/gr4_bus1__0 ),
        .O(\badr[11]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[12]_INST_0 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[12]),
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
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_10 
       (.I0(\rgf/bank13/gr01 [12]),
        .I1(\rgf/bank13/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [12]),
        .I3(\rgf/bank13/abuso/gr2_bus1__0 ),
        .O(\badr[12]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_11 
       (.I0(\rgf/bank13/gr07 [12]),
        .I1(\rgf/bank13/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [12]),
        .I3(\rgf/bank13/abuso/gr0_bus1__0 ),
        .O(\badr[12]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_12 
       (.I0(\rgf/bank13/gr05 [12]),
        .I1(\rgf/bank13/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [12]),
        .I3(\rgf/bank13/abuso/gr6_bus1__0 ),
        .O(\badr[12]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[12]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/sreg/sr [12]),
        .O(\badr[12]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_14 
       (.I0(\rgf/bank13/gr25 [12]),
        .I1(\rgf/bank13/abuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [12]),
        .I3(\rgf/bank13/abuso2l/gr6_bus1__0 ),
        .O(\badr[12]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [12]),
        .I1(\rgf/bank13/abuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [12]),
        .I3(\rgf/bank13/abuso2l/gr2_bus1__0 ),
        .O(\badr[12]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_16 
       (.I0(\rgf/bank02/gr24 [12]),
        .I1(\rgf/bank02/abuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [12]),
        .I3(\rgf/bank02/abuso2l/gr5_bus1__0 ),
        .O(\badr[12]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_17 
       (.I0(\rgf/bank02/gr03 [12]),
        .I1(\rgf/bank02/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [12]),
        .I3(\rgf/bank02/abuso/gr4_bus1__0 ),
        .O(\badr[12]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_18 
       (.I0(\rgf/bank02/gr01 [12]),
        .I1(\rgf/bank02/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [12]),
        .I3(\rgf/bank02/abuso/gr2_bus1__0 ),
        .O(\badr[12]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_19 
       (.I0(\rgf/bank02/gr07 [12]),
        .I1(\rgf/bank02/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [12]),
        .I3(\rgf/bank02/abuso/gr0_bus1__0 ),
        .O(\badr[12]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[12]_INST_0_i_2 
       (.I0(\badr[12]_INST_0_i_8_n_0 ),
        .I1(\badr[12]_INST_0_i_9_n_0 ),
        .I2(\badr[12]_INST_0_i_10_n_0 ),
        .I3(\badr[12]_INST_0_i_11_n_0 ),
        .I4(\badr[12]_INST_0_i_12_n_0 ),
        .I5(\badr[12]_INST_0_i_13_n_0 ),
        .O(\badr[12]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_20 
       (.I0(\rgf/bank02/gr05 [12]),
        .I1(\rgf/bank02/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [12]),
        .I3(\rgf/bank02/abuso/gr6_bus1__0 ),
        .O(\badr[12]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[12]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\rgf/bank02/gr20 [12]),
        .O(\badr[12]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[12]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [12]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [12]),
        .I4(\rgf/bank02/gr21 [12]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\badr[12]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[12]_INST_0_i_3 
       (.I0(\badr[12]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank13/gr23 [12]),
        .I2(\rgf/bank13/abuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [12]),
        .I4(\rgf/bank13/abuso2l/gr4_bus1__0 ),
        .I5(\badr[12]_INST_0_i_15_n_0 ),
        .O(\badr[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[12]_INST_0_i_4 
       (.I0(\badr[12]_INST_0_i_16_n_0 ),
        .I1(\badr[12]_INST_0_i_17_n_0 ),
        .I2(\badr[12]_INST_0_i_18_n_0 ),
        .I3(\badr[12]_INST_0_i_19_n_0 ),
        .I4(\badr[12]_INST_0_i_20_n_0 ),
        .I5(\badr[12]_INST_0_i_21_n_0 ),
        .O(\badr[12]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[12]_INST_0_i_5 
       (.I0(\badr[12]_INST_0_i_22_n_0 ),
        .I1(\rgf/bank02/abuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [12]),
        .I3(\rgf/bank02/abuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [12]),
        .O(\badr[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[12]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/sptr/sp_dec_0 [12]),
        .I5(\rgf/sptr/sp [12]),
        .O(\badr[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[12]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\rgf/treg/tr [12]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\rgf/ivec/iv [12]),
        .I4(\rgf/pcnt/pc [12]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\badr[12]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_8 
       (.I0(\rgf/bank13/gr27 [12]),
        .I1(\rgf/bank13/abuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [12]),
        .I3(\rgf/bank13/abuso2l/gr0_bus1__0 ),
        .O(\badr[12]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[12]_INST_0_i_9 
       (.I0(\rgf/bank13/gr03 [12]),
        .I1(\rgf/bank13/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [12]),
        .I3(\rgf/bank13/abuso/gr4_bus1__0 ),
        .O(\badr[12]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[13]_INST_0 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[13]),
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
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_10 
       (.I0(\rgf/bank13/gr01 [13]),
        .I1(\rgf/bank13/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [13]),
        .I3(\rgf/bank13/abuso/gr2_bus1__0 ),
        .O(\badr[13]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_11 
       (.I0(\rgf/bank13/gr07 [13]),
        .I1(\rgf/bank13/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [13]),
        .I3(\rgf/bank13/abuso/gr0_bus1__0 ),
        .O(\badr[13]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_12 
       (.I0(\rgf/bank13/gr05 [13]),
        .I1(\rgf/bank13/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [13]),
        .I3(\rgf/bank13/abuso/gr6_bus1__0 ),
        .O(\badr[13]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[13]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/sreg/sr [13]),
        .O(\badr[13]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_14 
       (.I0(\rgf/bank13/gr25 [13]),
        .I1(\rgf/bank13/abuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [13]),
        .I3(\rgf/bank13/abuso2l/gr6_bus1__0 ),
        .O(\badr[13]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [13]),
        .I1(\rgf/bank13/abuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [13]),
        .I3(\rgf/bank13/abuso2l/gr2_bus1__0 ),
        .O(\badr[13]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_16 
       (.I0(\rgf/bank02/gr24 [13]),
        .I1(\rgf/bank02/abuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [13]),
        .I3(\rgf/bank02/abuso2l/gr5_bus1__0 ),
        .O(\badr[13]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_17 
       (.I0(\rgf/bank02/gr03 [13]),
        .I1(\rgf/bank02/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [13]),
        .I3(\rgf/bank02/abuso/gr4_bus1__0 ),
        .O(\badr[13]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_18 
       (.I0(\rgf/bank02/gr01 [13]),
        .I1(\rgf/bank02/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [13]),
        .I3(\rgf/bank02/abuso/gr2_bus1__0 ),
        .O(\badr[13]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_19 
       (.I0(\rgf/bank02/gr07 [13]),
        .I1(\rgf/bank02/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [13]),
        .I3(\rgf/bank02/abuso/gr0_bus1__0 ),
        .O(\badr[13]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[13]_INST_0_i_2 
       (.I0(\badr[13]_INST_0_i_8_n_0 ),
        .I1(\badr[13]_INST_0_i_9_n_0 ),
        .I2(\badr[13]_INST_0_i_10_n_0 ),
        .I3(\badr[13]_INST_0_i_11_n_0 ),
        .I4(\badr[13]_INST_0_i_12_n_0 ),
        .I5(\badr[13]_INST_0_i_13_n_0 ),
        .O(\badr[13]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_20 
       (.I0(\rgf/bank02/gr05 [13]),
        .I1(\rgf/bank02/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [13]),
        .I3(\rgf/bank02/abuso/gr6_bus1__0 ),
        .O(\badr[13]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[13]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\rgf/bank02/gr20 [13]),
        .O(\badr[13]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[13]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [13]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [13]),
        .I4(\rgf/bank02/gr21 [13]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\badr[13]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[13]_INST_0_i_3 
       (.I0(\badr[13]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank13/gr23 [13]),
        .I2(\rgf/bank13/abuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [13]),
        .I4(\rgf/bank13/abuso2l/gr4_bus1__0 ),
        .I5(\badr[13]_INST_0_i_15_n_0 ),
        .O(\badr[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[13]_INST_0_i_4 
       (.I0(\badr[13]_INST_0_i_16_n_0 ),
        .I1(\badr[13]_INST_0_i_17_n_0 ),
        .I2(\badr[13]_INST_0_i_18_n_0 ),
        .I3(\badr[13]_INST_0_i_19_n_0 ),
        .I4(\badr[13]_INST_0_i_20_n_0 ),
        .I5(\badr[13]_INST_0_i_21_n_0 ),
        .O(\badr[13]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[13]_INST_0_i_5 
       (.I0(\badr[13]_INST_0_i_22_n_0 ),
        .I1(\rgf/bank02/abuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [13]),
        .I3(\rgf/bank02/abuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [13]),
        .O(\badr[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[13]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/sptr/sp_dec_0 [13]),
        .I5(\rgf/sptr/sp [13]),
        .O(\badr[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[13]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\rgf/treg/tr [13]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\rgf/ivec/iv [13]),
        .I4(\rgf/pcnt/pc [13]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\badr[13]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_8 
       (.I0(\rgf/bank13/gr27 [13]),
        .I1(\rgf/bank13/abuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [13]),
        .I3(\rgf/bank13/abuso2l/gr0_bus1__0 ),
        .O(\badr[13]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[13]_INST_0_i_9 
       (.I0(\rgf/bank13/gr03 [13]),
        .I1(\rgf/bank13/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [13]),
        .I3(\rgf/bank13/abuso/gr4_bus1__0 ),
        .O(\badr[13]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[14]_INST_0 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[14]),
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
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_10 
       (.I0(\rgf/bank13/gr01 [14]),
        .I1(\rgf/bank13/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [14]),
        .I3(\rgf/bank13/abuso/gr2_bus1__0 ),
        .O(\badr[14]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_11 
       (.I0(\rgf/bank13/gr07 [14]),
        .I1(\rgf/bank13/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [14]),
        .I3(\rgf/bank13/abuso/gr0_bus1__0 ),
        .O(\badr[14]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_12 
       (.I0(\rgf/bank13/gr05 [14]),
        .I1(\rgf/bank13/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [14]),
        .I3(\rgf/bank13/abuso/gr6_bus1__0 ),
        .O(\badr[14]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[14]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/sreg/sr [14]),
        .O(\badr[14]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_14 
       (.I0(\rgf/bank13/gr25 [14]),
        .I1(\rgf/bank13/abuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [14]),
        .I3(\rgf/bank13/abuso2l/gr6_bus1__0 ),
        .O(\badr[14]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [14]),
        .I1(\rgf/bank13/abuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [14]),
        .I3(\rgf/bank13/abuso2l/gr2_bus1__0 ),
        .O(\badr[14]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_16 
       (.I0(\rgf/bank02/gr24 [14]),
        .I1(\rgf/bank02/abuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [14]),
        .I3(\rgf/bank02/abuso2l/gr5_bus1__0 ),
        .O(\badr[14]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_17 
       (.I0(\rgf/bank02/gr03 [14]),
        .I1(\rgf/bank02/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [14]),
        .I3(\rgf/bank02/abuso/gr4_bus1__0 ),
        .O(\badr[14]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_18 
       (.I0(\rgf/bank02/gr01 [14]),
        .I1(\rgf/bank02/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [14]),
        .I3(\rgf/bank02/abuso/gr2_bus1__0 ),
        .O(\badr[14]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_19 
       (.I0(\rgf/bank02/gr07 [14]),
        .I1(\rgf/bank02/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [14]),
        .I3(\rgf/bank02/abuso/gr0_bus1__0 ),
        .O(\badr[14]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[14]_INST_0_i_2 
       (.I0(\badr[14]_INST_0_i_8_n_0 ),
        .I1(\badr[14]_INST_0_i_9_n_0 ),
        .I2(\badr[14]_INST_0_i_10_n_0 ),
        .I3(\badr[14]_INST_0_i_11_n_0 ),
        .I4(\badr[14]_INST_0_i_12_n_0 ),
        .I5(\badr[14]_INST_0_i_13_n_0 ),
        .O(\badr[14]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_20 
       (.I0(\rgf/bank02/gr05 [14]),
        .I1(\rgf/bank02/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [14]),
        .I3(\rgf/bank02/abuso/gr6_bus1__0 ),
        .O(\badr[14]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[14]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\rgf/bank02/gr20 [14]),
        .O(\badr[14]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[14]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [14]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [14]),
        .I4(\rgf/bank02/gr21 [14]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\badr[14]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[14]_INST_0_i_3 
       (.I0(\badr[14]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank13/gr23 [14]),
        .I2(\rgf/bank13/abuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [14]),
        .I4(\rgf/bank13/abuso2l/gr4_bus1__0 ),
        .I5(\badr[14]_INST_0_i_15_n_0 ),
        .O(\badr[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[14]_INST_0_i_4 
       (.I0(\badr[14]_INST_0_i_16_n_0 ),
        .I1(\badr[14]_INST_0_i_17_n_0 ),
        .I2(\badr[14]_INST_0_i_18_n_0 ),
        .I3(\badr[14]_INST_0_i_19_n_0 ),
        .I4(\badr[14]_INST_0_i_20_n_0 ),
        .I5(\badr[14]_INST_0_i_21_n_0 ),
        .O(\badr[14]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[14]_INST_0_i_5 
       (.I0(\badr[14]_INST_0_i_22_n_0 ),
        .I1(\rgf/bank02/abuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [14]),
        .I3(\rgf/bank02/abuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [14]),
        .O(\badr[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[14]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/sptr/sp_dec_0 [14]),
        .I5(\rgf/sptr/sp [14]),
        .O(\badr[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[14]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\rgf/treg/tr [14]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\rgf/ivec/iv [14]),
        .I4(\rgf/pcnt/pc [14]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\badr[14]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_8 
       (.I0(\rgf/bank13/gr27 [14]),
        .I1(\rgf/bank13/abuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [14]),
        .I3(\rgf/bank13/abuso2l/gr0_bus1__0 ),
        .O(\badr[14]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[14]_INST_0_i_9 
       (.I0(\rgf/bank13/gr03 [14]),
        .I1(\rgf/bank13/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [14]),
        .I3(\rgf/bank13/abuso/gr4_bus1__0 ),
        .O(\badr[14]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[15]_INST_0 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[15]),
        .O(badr[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_1 
       (.I0(\badr[15]_INST_0_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_3_n_0 ),
        .I2(\badr[15]_INST_0_i_4_n_0 ),
        .I3(\badr[15]_INST_0_i_5_n_0 ),
        .I4(\badr[15]_INST_0_i_6_n_0 ),
        .I5(\badr[15]_INST_0_i_7_n_0 ),
        .O(abus_0[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_10 
       (.I0(\rgf/bank13/gr01 [15]),
        .I1(\rgf/bank13/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [15]),
        .I3(\rgf/bank13/abuso/gr2_bus1__0 ),
        .O(\badr[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD0FFDFFF)) 
    \badr[15]_INST_0_i_100 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [5]),
        .I5(\badr[15]_INST_0_i_128_n_0 ),
        .O(\badr[15]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A888A8A)) 
    \badr[15]_INST_0_i_101 
       (.I0(\ccmd[4]_INST_0_i_14_n_0 ),
        .I1(\badr[15]_INST_0_i_129_n_0 ),
        .I2(\badr[15]_INST_0_i_130_n_0 ),
        .I3(\badr[15]_INST_0_i_131_n_0 ),
        .I4(\badr[15]_INST_0_i_132_n_0 ),
        .I5(\badr[15]_INST_0_i_133_n_0 ),
        .O(\badr[15]_INST_0_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \badr[15]_INST_0_i_102 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [8]),
        .I2(ctl_fetch_inferred_i_44_n_0),
        .I3(\fch/ir [4]),
        .I4(\fch/ir [2]),
        .I5(\badr[15]_INST_0_i_134_n_0 ),
        .O(\badr[15]_INST_0_i_102_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \badr[15]_INST_0_i_103 
       (.I0(\fch/ir [11]),
        .I1(stat[1]),
        .O(\badr[15]_INST_0_i_103_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7500)) 
    \badr[15]_INST_0_i_104 
       (.I0(ctl_fetch_inferred_i_11_n_0),
        .I1(\badr[15]_INST_0_i_135_n_0 ),
        .I2(\iv[15]_i_58_n_0 ),
        .I3(\badr[15]_INST_0_i_136_n_0 ),
        .I4(\badr[15]_INST_0_i_137_n_0 ),
        .I5(\badr[15]_INST_0_i_138_n_0 ),
        .O(\badr[15]_INST_0_i_104_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEAAFEFEFEFEFE)) 
    \badr[15]_INST_0_i_105 
       (.I0(\iv[15]_i_12_n_0 ),
        .I1(stat[0]),
        .I2(\badr[15]_INST_0_i_139_n_0 ),
        .I3(\badrx[15]_INST_0_i_3_n_0 ),
        .I4(\fch/ir [6]),
        .I5(\fch/ir [8]),
        .O(\badr[15]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hD5FDD5FDD5FDFFFF)) 
    \badr[15]_INST_0_i_106 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [1]),
        .I3(\fch/ir [0]),
        .I4(crdy),
        .I5(stat[0]),
        .O(\badr[15]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \badr[15]_INST_0_i_107 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [10]),
        .I4(\fch/ir [9]),
        .I5(\bcmd[1]_INST_0_i_7_n_0 ),
        .O(\badr[15]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h1411000055150000)) 
    \badr[15]_INST_0_i_108 
       (.I0(stat[0]),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [15]),
        .I5(\fch/ir [14]),
        .O(\badr[15]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFFFFFEFF)) 
    \badr[15]_INST_0_i_109 
       (.I0(\badr[15]_INST_0_i_140_n_0 ),
        .I1(\badr[15]_INST_0_i_141_n_0 ),
        .I2(\badr[15]_INST_0_i_142_n_0 ),
        .I3(\badr[15]_INST_0_i_143_n_0 ),
        .I4(stat[0]),
        .I5(\badr[15]_INST_0_i_144_n_0 ),
        .O(\badr[15]_INST_0_i_109_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_11 
       (.I0(\rgf/bank13/gr07 [15]),
        .I1(\rgf/bank13/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [15]),
        .I3(\rgf/bank13/abuso/gr0_bus1__0 ),
        .O(\badr[15]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \badr[15]_INST_0_i_110 
       (.I0(\ccmd[2]_INST_0_i_11_n_0 ),
        .I1(\fch/ir [7]),
        .I2(\bdatw[9]_INST_0_i_15_n_0 ),
        .I3(\ccmd[4]_INST_0_i_19_n_0 ),
        .I4(\bcmd[1]_INST_0_i_7_n_0 ),
        .I5(\iv[15]_i_40_n_0 ),
        .O(\badr[15]_INST_0_i_110_n_0 ));
  LUT4 #(
    .INIT(16'hDD4F)) 
    \badr[15]_INST_0_i_111 
       (.I0(\fch/ir [0]),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [1]),
        .O(\badr[15]_INST_0_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFDFFFFF)) 
    \badr[15]_INST_0_i_112 
       (.I0(\ccmd[0]_INST_0_i_17_n_0 ),
        .I1(\fch/ir [4]),
        .I2(\badr[15]_INST_0_i_145_n_0 ),
        .I3(\ccmd[4]_INST_0_i_20_n_0 ),
        .I4(\bdatw[12]_INST_0_i_95_n_0 ),
        .I5(\badr[15]_INST_0_i_146_n_0 ),
        .O(\badr[15]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h00000000888AAA8A)) 
    \badr[15]_INST_0_i_113 
       (.I0(\badr[15]_INST_0_i_147_n_0 ),
        .I1(\ccmd[2]_INST_0_i_14_n_0 ),
        .I2(\fch/ir [1]),
        .I3(\ccmd[4]_INST_0_i_10_n_0 ),
        .I4(\fch/ir [4]),
        .I5(\badr[15]_INST_0_i_148_n_0 ),
        .O(\badr[15]_INST_0_i_113_n_0 ));
  LUT6 #(
    .INIT(64'h70007500FFFFFFFF)) 
    \badr[15]_INST_0_i_114 
       (.I0(\fch/ir [4]),
        .I1(crdy),
        .I2(\fch/ir [8]),
        .I3(\bcmd[0]_INST_0_i_7_n_0 ),
        .I4(\badr[15]_INST_0_i_149_n_0 ),
        .I5(\fch/ir [11]),
        .O(\badr[15]_INST_0_i_114_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0D000D0D0D0)) 
    \badr[15]_INST_0_i_115 
       (.I0(\fch/ir [1]),
        .I1(\badr[15]_INST_0_i_150_n_0 ),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(\fch/ir [3]),
        .I4(ctl_fetch_inferred_i_15_n_0),
        .I5(\ccmd[4]_INST_0_i_20_n_0 ),
        .O(\badr[15]_INST_0_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h0000773F00005500)) 
    \badr[15]_INST_0_i_116 
       (.I0(\badr[15]_INST_0_i_151_n_0 ),
        .I1(\badr[15]_INST_0_i_152_n_0 ),
        .I2(\badr[15]_INST_0_i_153_n_0 ),
        .I3(\fch/ir [10]),
        .I4(\fch/ir [11]),
        .I5(crdy),
        .O(\badr[15]_INST_0_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \badr[15]_INST_0_i_117 
       (.I0(\badr[15]_INST_0_i_124_n_0 ),
        .I1(\bdatw[15]_INST_0_i_45_n_0 ),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [1]),
        .I4(\fch/ir [11]),
        .I5(ctl_fetch_ext_fl_i_6_n_0),
        .O(\badr[15]_INST_0_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h444444444F4F4FFF)) 
    \badr[15]_INST_0_i_118 
       (.I0(\badr[15]_INST_0_i_154_n_0 ),
        .I1(\badr[15]_INST_0_i_155_n_0 ),
        .I2(\badr[15]_INST_0_i_156_n_0 ),
        .I3(\badr[15]_INST_0_i_157_n_0 ),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .I5(\bdatw[15]_INST_0_i_46_n_0 ),
        .O(\badr[15]_INST_0_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h5555555551555555)) 
    \badr[15]_INST_0_i_119 
       (.I0(\fch/ir [11]),
        .I1(\bcmd[0]_INST_0_i_7_n_0 ),
        .I2(crdy),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [3]),
        .I5(\ccmd[4]_INST_0_i_10_n_0 ),
        .O(\badr[15]_INST_0_i_119_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_12 
       (.I0(\rgf/bank13/gr05 [15]),
        .I1(\rgf/bank13/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [15]),
        .I3(\rgf/bank13/abuso/gr6_bus1__0 ),
        .O(\badr[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h1F1F1F1FFF1F1F1F)) 
    \badr[15]_INST_0_i_120 
       (.I0(\badr[15]_INST_0_i_158_n_0 ),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [11]),
        .I3(\badr[15]_INST_0_i_126_n_0 ),
        .I4(\fch/ir [3]),
        .I5(\iv[15]_i_71_n_0 ),
        .O(\badr[15]_INST_0_i_120_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB0000BB03)) 
    \badr[15]_INST_0_i_121 
       (.I0(\badr[15]_INST_0_i_159_n_0 ),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [3]),
        .I3(\bcmd[1]_INST_0_i_7_n_0 ),
        .I4(\badr[15]_INST_0_i_160_n_0 ),
        .I5(\ccmd[4]_INST_0_i_20_n_0 ),
        .O(\badr[15]_INST_0_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFDFFFFF)) 
    \badr[15]_INST_0_i_122 
       (.I0(\bdatw[15]_INST_0_i_13_n_0 ),
        .I1(\fch/ir [4]),
        .I2(\badr[15]_INST_0_i_145_n_0 ),
        .I3(\ccmd[4]_INST_0_i_20_n_0 ),
        .I4(\bdatw[12]_INST_0_i_95_n_0 ),
        .I5(\badr[15]_INST_0_i_161_n_0 ),
        .O(\badr[15]_INST_0_i_122_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[15]_INST_0_i_123 
       (.I0(\bcmd[1]_INST_0_i_7_n_0 ),
        .I1(\ccmd[4]_INST_0_i_19_n_0 ),
        .I2(\bdatw[9]_INST_0_i_15_n_0 ),
        .I3(\fch/ir [7]),
        .I4(\ccmd[2]_INST_0_i_11_n_0 ),
        .O(\badr[15]_INST_0_i_123_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \badr[15]_INST_0_i_124 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [4]),
        .I3(\fch/ir [3]),
        .O(\badr[15]_INST_0_i_124_n_0 ));
  LUT6 #(
    .INIT(64'h00E000F000400000)) 
    \badr[15]_INST_0_i_125 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [10]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [5]),
        .O(\badr[15]_INST_0_i_125_n_0 ));
  LUT5 #(
    .INIT(32'h44444044)) 
    \badr[15]_INST_0_i_126 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [6]),
        .O(\badr[15]_INST_0_i_126_n_0 ));
  LUT6 #(
    .INIT(64'h113FFFFFDDFFFFFF)) 
    \badr[15]_INST_0_i_127 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [5]),
        .O(\badr[15]_INST_0_i_127_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \badr[15]_INST_0_i_128 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [10]),
        .O(\badr[15]_INST_0_i_128_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \badr[15]_INST_0_i_129 
       (.I0(\fch/ir [13]),
        .I1(stat[0]),
        .I2(ctl_fetch_inferred_i_11_n_0),
        .I3(\badr[15]_INST_0_i_162_n_0 ),
        .O(\badr[15]_INST_0_i_129_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[15]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/sreg/sr [15]),
        .O(\badr[15]_INST_0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \badr[15]_INST_0_i_130 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [15]),
        .I2(\fch/ir [12]),
        .O(\badr[15]_INST_0_i_130_n_0 ));
  LUT6 #(
    .INIT(64'h404F00FF404000F0)) 
    \badr[15]_INST_0_i_131 
       (.I0(\fch/ir [9]),
        .I1(\badr[15]_INST_0_i_163_n_0 ),
        .I2(\fch/ir [14]),
        .I3(stat[0]),
        .I4(\fch/ir [10]),
        .I5(\rgf/sreg/sr [7]),
        .O(\badr[15]_INST_0_i_131_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \badr[15]_INST_0_i_132 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [14]),
        .O(\badr[15]_INST_0_i_132_n_0 ));
  LUT6 #(
    .INIT(64'h000000000A80AA88)) 
    \badr[15]_INST_0_i_133 
       (.I0(\badr[15]_INST_0_i_164_n_0 ),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [6]),
        .I4(\badr[15]_INST_0_i_165_n_0 ),
        .I5(\badr[15]_INST_0_i_166_n_0 ),
        .O(\badr[15]_INST_0_i_133_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \badr[15]_INST_0_i_134 
       (.I0(ctl_fetch_ext_fl_i_7_n_0),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [1]),
        .I4(stat[1]),
        .I5(\badr[15]_INST_0_i_167_n_0 ),
        .O(\badr[15]_INST_0_i_134_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF5D03DFFF5D33)) 
    \badr[15]_INST_0_i_135 
       (.I0(crdy),
        .I1(\fch/ir [1]),
        .I2(\fch/ir [0]),
        .I3(\fch/ir [2]),
        .I4(\fch/ir [3]),
        .I5(fch_irq_req),
        .O(\badr[15]_INST_0_i_135_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_136 
       (.I0(\fch/ir [13]),
        .I1(stat[0]),
        .O(\badr[15]_INST_0_i_136_n_0 ));
  LUT6 #(
    .INIT(64'h1F0F1F0F1F001F0F)) 
    \badr[15]_INST_0_i_137 
       (.I0(\fch/ir [13]),
        .I1(stat[0]),
        .I2(\badr[15]_INST_0_i_168_n_0 ),
        .I3(\fch/ir [15]),
        .I4(\rgf/sreg/sr [6]),
        .I5(\fch/ir [12]),
        .O(\badr[15]_INST_0_i_137_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000080A8)) 
    \badr[15]_INST_0_i_138 
       (.I0(\sr[13]_i_9_n_0 ),
        .I1(\bdatw[13]_INST_0_i_9_n_0 ),
        .I2(\fch/ir [0]),
        .I3(\fch/ir [3]),
        .I4(\ccmd[4]_INST_0_i_18_n_0 ),
        .I5(\stat[2]_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_138_n_0 ));
  LUT6 #(
    .INIT(64'h6F2F7F3F682AFFFF)) 
    \badr[15]_INST_0_i_139 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [10]),
        .I3(\ccmd[4]_INST_0_i_10_n_0 ),
        .I4(crdy),
        .I5(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\badr[15]_INST_0_i_139_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_14 
       (.I0(\rgf/bank13/gr25 [15]),
        .I1(\rgf/bank13/abuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [15]),
        .I3(\rgf/bank13/abuso2l/gr6_bus1__0 ),
        .O(\badr[15]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2323333333233330)) 
    \badr[15]_INST_0_i_140 
       (.I0(\badr[15]_INST_0_i_169_n_0 ),
        .I1(\badr[15]_INST_0_i_170_n_0 ),
        .I2(\fch/ir [8]),
        .I3(stat[0]),
        .I4(\fch/ir [9]),
        .I5(\badr[15]_INST_0_i_149_n_0 ),
        .O(\badr[15]_INST_0_i_140_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0FB00FB)) 
    \badr[15]_INST_0_i_141 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(crdy),
        .I2(\badr[15]_INST_0_i_171_n_0 ),
        .I3(\fch/ir [11]),
        .I4(\bcmd[2]_INST_0_i_3_n_0 ),
        .I5(\fch/ir [10]),
        .O(\badr[15]_INST_0_i_141_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBBBA)) 
    \badr[15]_INST_0_i_142 
       (.I0(\iv[15]_i_12_n_0 ),
        .I1(\badr[15]_INST_0_i_172_n_0 ),
        .I2(stat[0]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [9]),
        .O(\badr[15]_INST_0_i_142_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E000E000E000)) 
    \badr[15]_INST_0_i_143 
       (.I0(crdy),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [6]),
        .O(\badr[15]_INST_0_i_143_n_0 ));
  LUT6 #(
    .INIT(64'h4F0F0F0F4F0F0FFF)) 
    \badr[15]_INST_0_i_144 
       (.I0(\fch/ir [6]),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_155_n_0 ),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [8]),
        .I5(\badr[15]_INST_0_i_173_n_0 ),
        .O(\badr[15]_INST_0_i_144_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_145 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [6]),
        .O(\badr[15]_INST_0_i_145_n_0 ));
  LUT6 #(
    .INIT(64'h0000000060000000)) 
    \badr[15]_INST_0_i_146 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [1]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [6]),
        .O(\badr[15]_INST_0_i_146_n_0 ));
  LUT5 #(
    .INIT(32'h35FFFFFF)) 
    \badr[15]_INST_0_i_147 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [9]),
        .O(\badr[15]_INST_0_i_147_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0E02F000)) 
    \badr[15]_INST_0_i_148 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [4]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [10]),
        .O(\badr[15]_INST_0_i_148_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_149 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [6]),
        .O(\badr[15]_INST_0_i_149_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[15]_INST_0_i_15 
       (.I0(\badr[15]_INST_0_i_49_n_0 ),
        .I1(\rgf/sreg/sr [1]),
        .I2(\rgf/sreg/sr [0]),
        .O(\rgf/bank13/abuso2l/gr3_bus1__0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7BBF7FFFF3)) 
    \badr[15]_INST_0_i_150 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [4]),
        .I5(\fch/ir [3]),
        .O(\badr[15]_INST_0_i_150_n_0 ));
  LUT6 #(
    .INIT(64'h113FFFFFDDFFFFFF)) 
    \badr[15]_INST_0_i_151 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [4]),
        .O(\badr[15]_INST_0_i_151_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \badr[15]_INST_0_i_152 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [9]),
        .O(\badr[15]_INST_0_i_152_n_0 ));
  LUT6 #(
    .INIT(64'hDCD4D0D0DFD7DFDF)) 
    \badr[15]_INST_0_i_153 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [6]),
        .I5(\fch/ir [4]),
        .O(\badr[15]_INST_0_i_153_n_0 ));
  LUT5 #(
    .INIT(32'h3FFF7F7F)) 
    \badr[15]_INST_0_i_154 
       (.I0(\fch/ir [0]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [6]),
        .O(\badr[15]_INST_0_i_154_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_155 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [11]),
        .O(\badr[15]_INST_0_i_155_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFDDDDFFFFFFFF)) 
    \badr[15]_INST_0_i_156 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [3]),
        .O(\badr[15]_INST_0_i_156_n_0 ));
  LUT6 #(
    .INIT(64'hF080FFA0F0DFFFFF)) 
    \badr[15]_INST_0_i_157 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [0]),
        .I5(\fch/ir [3]),
        .O(\badr[15]_INST_0_i_157_n_0 ));
  LUT6 #(
    .INIT(64'h0C0A0F073F5F0F8F)) 
    \badr[15]_INST_0_i_158 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [0]),
        .O(\badr[15]_INST_0_i_158_n_0 ));
  LUT6 #(
    .INIT(64'hFBBFFE7EFFFFFFFF)) 
    \badr[15]_INST_0_i_159 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [4]),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [8]),
        .O(\badr[15]_INST_0_i_159_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \badr[15]_INST_0_i_16 
       (.I0(\badr[15]_INST_0_i_50_n_0 ),
        .I1(\rgf/sreg/sr [1]),
        .I2(\rgf/sreg/sr [0]),
        .O(\rgf/bank13/abuso2l/gr4_bus1__0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \badr[15]_INST_0_i_160 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [6]),
        .O(\badr[15]_INST_0_i_160_n_0 ));
  LUT6 #(
    .INIT(64'h0060000000000000)) 
    \badr[15]_INST_0_i_161 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [0]),
        .I5(\fch/ir [8]),
        .O(\badr[15]_INST_0_i_161_n_0 ));
  LUT6 #(
    .INIT(64'h000000004C4CCFCC)) 
    \badr[15]_INST_0_i_162 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [15]),
        .I2(\fch/ir [14]),
        .I3(\rgf/sreg/sr [6]),
        .I4(\fch/ir [12]),
        .I5(stat[0]),
        .O(\badr[15]_INST_0_i_162_n_0 ));
  LUT4 #(
    .INIT(16'h22F3)) 
    \badr[15]_INST_0_i_163 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [8]),
        .I2(crdy),
        .I3(stat[0]),
        .O(\badr[15]_INST_0_i_163_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFDFCFCC)) 
    \badr[15]_INST_0_i_164 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [6]),
        .I5(stat[0]),
        .O(\badr[15]_INST_0_i_164_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_165 
       (.I0(\fch/ir [7]),
        .I1(stat[0]),
        .O(\badr[15]_INST_0_i_165_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \badr[15]_INST_0_i_166 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [5]),
        .I2(stat[0]),
        .I3(\fch/ir [4]),
        .I4(\fch/ir [6]),
        .I5(\fch/ir [3]),
        .O(\badr[15]_INST_0_i_166_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \badr[15]_INST_0_i_167 
       (.I0(\fch/ir [15]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [7]),
        .O(\badr[15]_INST_0_i_167_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFFCFFFEFEFEF)) 
    \badr[15]_INST_0_i_168 
       (.I0(\fch/ir [14]),
        .I1(stat[0]),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [12]),
        .I4(\rgf/sreg/sr [7]),
        .I5(\fch/ir [15]),
        .O(\badr[15]_INST_0_i_168_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDF7FF06FFFA)) 
    \badr[15]_INST_0_i_169 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [7]),
        .I2(stat[0]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [3]),
        .I5(\fch/ir [4]),
        .O(\badr[15]_INST_0_i_169_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_17 
       (.I0(\rgf/bank13/gr21 [15]),
        .I1(\rgf/bank13/abuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [15]),
        .I3(\rgf/bank13/abuso2l/gr2_bus1__0 ),
        .O(\badr[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h777777777F777777)) 
    \badr[15]_INST_0_i_170 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [10]),
        .I2(stat[0]),
        .I3(crdy),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [9]),
        .O(\badr[15]_INST_0_i_170_n_0 ));
  LUT3 #(
    .INIT(8'hEC)) 
    \badr[15]_INST_0_i_171 
       (.I0(\fch/ir [8]),
        .I1(stat[0]),
        .I2(\fch/ir [9]),
        .O(\badr[15]_INST_0_i_171_n_0 ));
  LUT5 #(
    .INIT(32'hDFCFDFFF)) 
    \badr[15]_INST_0_i_172 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [8]),
        .O(\badr[15]_INST_0_i_172_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \badr[15]_INST_0_i_173 
       (.I0(stat[0]),
        .I1(crdy),
        .O(\badr[15]_INST_0_i_173_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_18 
       (.I0(\rgf/bank02/gr24 [15]),
        .I1(\rgf/bank02/abuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [15]),
        .I3(\rgf/bank02/abuso2l/gr5_bus1__0 ),
        .O(\badr[15]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_19 
       (.I0(\rgf/bank02/gr03 [15]),
        .I1(\rgf/bank02/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [15]),
        .I3(\rgf/bank02/abuso/gr4_bus1__0 ),
        .O(\badr[15]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_2 
       (.I0(\badr[15]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_9_n_0 ),
        .I2(\badr[15]_INST_0_i_10_n_0 ),
        .I3(\badr[15]_INST_0_i_11_n_0 ),
        .I4(\badr[15]_INST_0_i_12_n_0 ),
        .I5(\badr[15]_INST_0_i_13_n_0 ),
        .O(\badr[15]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_20 
       (.I0(\rgf/bank02/gr01 [15]),
        .I1(\rgf/bank02/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [15]),
        .I3(\rgf/bank02/abuso/gr2_bus1__0 ),
        .O(\badr[15]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_21 
       (.I0(\rgf/bank02/gr07 [15]),
        .I1(\rgf/bank02/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [15]),
        .I3(\rgf/bank02/abuso/gr0_bus1__0 ),
        .O(\badr[15]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_22 
       (.I0(\rgf/bank02/gr05 [15]),
        .I1(\rgf/bank02/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [15]),
        .I3(\rgf/bank02/abuso/gr6_bus1__0 ),
        .O(\badr[15]_INST_0_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_23 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\rgf/bank02/gr20 [15]),
        .O(\badr[15]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[15]_INST_0_i_24 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [15]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [15]),
        .I4(\rgf/bank02/gr21 [15]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\badr[15]_INST_0_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \badr[15]_INST_0_i_25 
       (.I0(\badr[15]_INST_0_i_49_n_0 ),
        .I1(\rgf/sreg/sr [0]),
        .I2(\rgf/sreg/sr [1]),
        .O(\rgf/bank02/abuso2l/gr3_bus1__0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \badr[15]_INST_0_i_26 
       (.I0(\badr[15]_INST_0_i_67_n_0 ),
        .I1(\rgf/sreg/sr [0]),
        .I2(\rgf/sreg/sr [1]),
        .O(\rgf/bank02/abuso2l/gr2_bus1__0 ));
  LUT6 #(
    .INIT(64'h5454545544444444)) 
    \badr[15]_INST_0_i_27 
       (.I0(stat[2]),
        .I1(\badr[15]_INST_0_i_68_n_0 ),
        .I2(\badr[15]_INST_0_i_69_n_0 ),
        .I3(\badr[15]_INST_0_i_70_n_0 ),
        .I4(\badr[15]_INST_0_i_71_n_0 ),
        .I5(ctl_fetch_ext_fl_i_3_n_0),
        .O(\badr[15]_INST_0_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_28 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .O(\badr[15]_INST_0_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_29 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .O(\badr[15]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[15]_INST_0_i_3 
       (.I0(\badr[15]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank13/gr23 [15]),
        .I2(\rgf/bank13/abuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [15]),
        .I4(\rgf/bank13/abuso2l/gr4_bus1__0 ),
        .I5(\badr[15]_INST_0_i_17_n_0 ),
        .O(\badr[15]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_30 
       (.I0(ctl_sela_rn[0]),
        .I1(ctl_sela_rn[1]),
        .O(\badr[15]_INST_0_i_30_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[15]_INST_0_i_31 
       (.CI(\badr[11]_INST_0_i_23_n_0 ),
        .CO({\badr[15]_INST_0_i_31_n_1 ,\badr[15]_INST_0_i_31_n_2 ,\badr[15]_INST_0_i_31_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\rgf/sptr/sp [14:12]}),
        .O(\rgf/sptr/sp_dec_0 [15:12]),
        .S({\badr[15]_INST_0_i_74_n_0 ,\badr[15]_INST_0_i_75_n_0 ,\badr[15]_INST_0_i_76_n_0 ,\badr[15]_INST_0_i_77_n_0 }));
  LUT4 #(
    .INIT(16'h1000)) 
    \badr[15]_INST_0_i_32 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(\badr[15]_INST_0_i_28_n_0 ),
        .O(\rgf/abus_sel_cr [4]));
  LUT4 #(
    .INIT(16'h0800)) 
    \badr[15]_INST_0_i_33 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(\badr[15]_INST_0_i_28_n_0 ),
        .O(\rgf/abus_sel_cr [3]));
  LUT3 #(
    .INIT(8'h40)) 
    \badr[15]_INST_0_i_34 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_30_n_0 ),
        .O(\rgf/abus_sel_cr [1]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \badr[15]_INST_0_i_35 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [3]),
        .O(\rgf/bank13/abuso2l/gr7_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \badr[15]_INST_0_i_36 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [3]),
        .O(\rgf/bank13/abuso2l/gr0_bus1__0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \badr[15]_INST_0_i_37 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [1]),
        .O(\rgf/bank13/abuso/gr3_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \badr[15]_INST_0_i_38 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [1]),
        .O(\rgf/bank13/abuso/gr4_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \badr[15]_INST_0_i_39 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[1]),
        .I5(\rgf/bank_sel [1]),
        .O(\rgf/bank13/abuso/gr1_bus1__0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[15]_INST_0_i_4 
       (.I0(\badr[15]_INST_0_i_18_n_0 ),
        .I1(\badr[15]_INST_0_i_19_n_0 ),
        .I2(\badr[15]_INST_0_i_20_n_0 ),
        .I3(\badr[15]_INST_0_i_21_n_0 ),
        .I4(\badr[15]_INST_0_i_22_n_0 ),
        .I5(\badr[15]_INST_0_i_23_n_0 ),
        .O(\badr[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \badr[15]_INST_0_i_40 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [1]),
        .O(\rgf/bank13/abuso/gr2_bus1__0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \badr[15]_INST_0_i_41 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [1]),
        .O(\rgf/bank13/abuso/gr7_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \badr[15]_INST_0_i_42 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [1]),
        .O(\rgf/bank13/abuso/gr0_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \badr[15]_INST_0_i_43 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[1]),
        .I5(\rgf/bank_sel [1]),
        .O(\rgf/bank13/abuso/gr5_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \badr[15]_INST_0_i_44 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [1]),
        .O(\rgf/bank13/abuso/gr6_bus1__0 ));
  LUT6 #(
    .INIT(64'h00000000F2FFF0F0)) 
    \badr[15]_INST_0_i_45 
       (.I0(\fch/ir [9]),
        .I1(\badr[15]_INST_0_i_80_n_0 ),
        .I2(\badr[15]_INST_0_i_81_n_0 ),
        .I3(\badr[15]_INST_0_i_82_n_0 ),
        .I4(ctl_fetch_ext_fl_i_3_n_0),
        .I5(stat[2]),
        .O(ctl_sela_rn[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFA20000)) 
    \badr[15]_INST_0_i_46 
       (.I0(\badr[15]_INST_0_i_83_n_0 ),
        .I1(\badr[15]_INST_0_i_84_n_0 ),
        .I2(\badr[15]_INST_0_i_85_n_0 ),
        .I3(\badr[15]_INST_0_i_86_n_0 ),
        .I4(\bcmd[2]_INST_0_i_1_n_0 ),
        .I5(\badr[15]_INST_0_i_87_n_0 ),
        .O(ctl_sela_rn[0]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \badr[15]_INST_0_i_47 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[1]),
        .I5(\rgf/bank_sel [3]),
        .O(\rgf/bank13/abuso2l/gr5_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \badr[15]_INST_0_i_48 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [3]),
        .O(\rgf/bank13/abuso2l/gr6_bus1__0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \badr[15]_INST_0_i_49 
       (.I0(ctl_sela_rn[0]),
        .I1(ctl_sela_rn[1]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela),
        .I4(\badr[15]_INST_0_i_72_n_0 ),
        .O(\badr[15]_INST_0_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[15]_INST_0_i_5 
       (.I0(\badr[15]_INST_0_i_24_n_0 ),
        .I1(\rgf/bank02/abuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [15]),
        .I3(\rgf/bank02/abuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [15]),
        .O(\badr[15]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \badr[15]_INST_0_i_50 
       (.I0(ctl_sela_rn[0]),
        .I1(ctl_sela_rn[1]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela),
        .I4(\badr[15]_INST_0_i_72_n_0 ),
        .O(\badr[15]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \badr[15]_INST_0_i_51 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[1]),
        .I5(\rgf/bank_sel [3]),
        .O(\rgf/bank13/abuso2l/gr1_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \badr[15]_INST_0_i_52 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [3]),
        .O(\rgf/bank13/abuso2l/gr2_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \badr[15]_INST_0_i_53 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [2]),
        .O(\rgf/bank02/abuso2l/gr4_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \badr[15]_INST_0_i_54 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[1]),
        .I5(\rgf/bank_sel [2]),
        .O(\rgf/bank02/abuso2l/gr5_bus1__0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \badr[15]_INST_0_i_55 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [0]),
        .O(\rgf/bank02/abuso/gr3_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \badr[15]_INST_0_i_56 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [0]),
        .O(\rgf/bank02/abuso/gr4_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \badr[15]_INST_0_i_57 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[1]),
        .I5(\rgf/bank_sel [0]),
        .O(\rgf/bank02/abuso/gr1_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \badr[15]_INST_0_i_58 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [0]),
        .O(\rgf/bank02/abuso/gr2_bus1__0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \badr[15]_INST_0_i_59 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [0]),
        .O(\rgf/bank02/abuso/gr7_bus1__0 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[15]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/sptr/sp_dec_0 [15]),
        .I5(\rgf/sptr/sp [15]),
        .O(\badr[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \badr[15]_INST_0_i_60 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [0]),
        .O(\rgf/bank02/abuso/gr0_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \badr[15]_INST_0_i_61 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[1]),
        .I5(\rgf/bank_sel [0]),
        .O(\rgf/bank02/abuso/gr5_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \badr[15]_INST_0_i_62 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [0]),
        .O(\rgf/bank02/abuso/gr6_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \badr[15]_INST_0_i_63 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [2]),
        .O(\rgf/bank02/abuso2l/gr0_bus1__0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \badr[15]_INST_0_i_64 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [2]),
        .O(\rgf/bank02/abuso2l/gr7_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \badr[15]_INST_0_i_65 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[1]),
        .I4(ctl_sela_rn[0]),
        .I5(\rgf/bank_sel [2]),
        .O(\rgf/bank02/abuso2l/gr6_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \badr[15]_INST_0_i_66 
       (.I0(\badr[15]_INST_0_i_72_n_0 ),
        .I1(ctl_sela),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela_rn[0]),
        .I4(ctl_sela_rn[1]),
        .I5(\rgf/bank_sel [2]),
        .O(\rgf/bank02/abuso2l/gr1_bus1__0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \badr[15]_INST_0_i_67 
       (.I0(ctl_sela_rn[0]),
        .I1(ctl_sela_rn[1]),
        .I2(\badr[15]_INST_0_i_27_n_0 ),
        .I3(ctl_sela),
        .I4(\badr[15]_INST_0_i_72_n_0 ),
        .O(\badr[15]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAAAEAAAAA)) 
    \badr[15]_INST_0_i_68 
       (.I0(\ccmd[2]_INST_0_i_3_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(\ccmd[2]_INST_0_i_8_n_0 ),
        .I3(\badr[15]_INST_0_i_90_n_0 ),
        .I4(\badr[15]_INST_0_i_91_n_0 ),
        .I5(\badr[15]_INST_0_i_92_n_0 ),
        .O(\badr[15]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h7000FFFF70003000)) 
    \badr[15]_INST_0_i_69 
       (.I0(\fch/ir [14]),
        .I1(\ccmd[2]_INST_0_i_24_n_0 ),
        .I2(\fch/ir [15]),
        .I3(\fch/ir [10]),
        .I4(\fch/ir [11]),
        .I5(\badr[15]_INST_0_i_93_n_0 ),
        .O(\badr[15]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[15]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\rgf/treg/tr [15]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\rgf/ivec/iv [15]),
        .I4(\rgf/pcnt/pc [15]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\badr[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005DDD)) 
    \badr[15]_INST_0_i_70 
       (.I0(\badrx[15]_INST_0_i_3_n_0 ),
        .I1(\badr[15]_INST_0_i_94_n_0 ),
        .I2(\fch/ir [2]),
        .I3(\badr[15]_INST_0_i_95_n_0 ),
        .I4(\badr[15]_INST_0_i_96_n_0 ),
        .I5(\badr[15]_INST_0_i_97_n_0 ),
        .O(\badr[15]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAABAAAB)) 
    \badr[15]_INST_0_i_71 
       (.I0(\iv[15]_i_12_n_0 ),
        .I1(\badr[15]_INST_0_i_98_n_0 ),
        .I2(\iv[15]_i_30_n_0 ),
        .I3(\fch/ir [11]),
        .I4(\badr[15]_INST_0_i_99_n_0 ),
        .I5(\badr[15]_INST_0_i_100_n_0 ),
        .O(\badr[15]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h5455545454555455)) 
    \badr[15]_INST_0_i_72 
       (.I0(stat[2]),
        .I1(\badr[15]_INST_0_i_101_n_0 ),
        .I2(\badr[15]_INST_0_i_102_n_0 ),
        .I3(\badr[15]_INST_0_i_103_n_0 ),
        .I4(\badr[15]_INST_0_i_104_n_0 ),
        .I5(\badr[15]_INST_0_i_105_n_0 ),
        .O(\badr[15]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA2000AAAAAAAA)) 
    \badr[15]_INST_0_i_73 
       (.I0(\stat[0]_i_4_n_0 ),
        .I1(\badr[15]_INST_0_i_106_n_0 ),
        .I2(\badr[15]_INST_0_i_107_n_0 ),
        .I3(ctl_fetch_ext_fl_i_6_n_0),
        .I4(\badr[15]_INST_0_i_108_n_0 ),
        .I5(\badr[15]_INST_0_i_109_n_0 ),
        .O(ctl_sela));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_74 
       (.I0(\rgf/sptr/sp [15]),
        .O(\badr[15]_INST_0_i_74_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_75 
       (.I0(\rgf/sptr/sp [14]),
        .O(\badr[15]_INST_0_i_75_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_76 
       (.I0(\rgf/sptr/sp [13]),
        .O(\badr[15]_INST_0_i_76_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[15]_INST_0_i_77 
       (.I0(\rgf/sptr/sp [12]),
        .O(\badr[15]_INST_0_i_77_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0_i_78 
       (.I0(\rgf/sreg/sr [0]),
        .I1(\rgf/sreg/sr [1]),
        .O(\rgf/bank_sel [3]));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_79 
       (.I0(\rgf/sreg/sr [0]),
        .I1(\rgf/sreg/sr [1]),
        .O(\rgf/bank_sel [1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_8 
       (.I0(\rgf/bank13/gr27 [15]),
        .I1(\rgf/bank13/abuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [15]),
        .I3(\rgf/bank13/abuso2l/gr0_bus1__0 ),
        .O(\badr[15]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB000FFFF)) 
    \badr[15]_INST_0_i_80 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [12]),
        .I4(\fch/ir [15]),
        .O(\badr[15]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hCECCEEEECECCCECC)) 
    \badr[15]_INST_0_i_81 
       (.I0(\ccmd[2]_INST_0_i_8_n_0 ),
        .I1(\badr[15]_INST_0_i_110_n_0 ),
        .I2(\badr[15]_INST_0_i_111_n_0 ),
        .I3(\iv[15]_i_38_n_0 ),
        .I4(\badr[15]_INST_0_i_112_n_0 ),
        .I5(\bcmd[2]_INST_0_i_2_n_0 ),
        .O(\badr[15]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00FE)) 
    \badr[15]_INST_0_i_82 
       (.I0(\badr[15]_INST_0_i_113_n_0 ),
        .I1(\badr[15]_INST_0_i_114_n_0 ),
        .I2(\badr[15]_INST_0_i_115_n_0 ),
        .I3(\badr[15]_INST_0_i_116_n_0 ),
        .I4(\iv[15]_i_12_n_0 ),
        .I5(\badr[15]_INST_0_i_117_n_0 ),
        .O(\badr[15]_INST_0_i_82_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_83 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [15]),
        .O(\badr[15]_INST_0_i_83_n_0 ));
  LUT5 #(
    .INIT(32'hEABFBFEA)) 
    \badr[15]_INST_0_i_84 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [12]),
        .I2(\rgf/sreg/sr [7]),
        .I3(\fch/ir [11]),
        .I4(\rgf/sreg/sr [5]),
        .O(\badr[15]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A8A8A888A88)) 
    \badr[15]_INST_0_i_85 
       (.I0(\ccmd[2]_INST_0_i_24_n_0 ),
        .I1(\badr[15]_INST_0_i_118_n_0 ),
        .I2(\badr[15]_INST_0_i_119_n_0 ),
        .I3(\badr[15]_INST_0_i_120_n_0 ),
        .I4(\badr[15]_INST_0_i_121_n_0 ),
        .I5(\badrx[15]_INST_0_i_3_n_0 ),
        .O(\badr[15]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \badr[15]_INST_0_i_86 
       (.I0(\badr[15]_INST_0_i_93_n_0 ),
        .I1(\fch/ir [8]),
        .I2(\badr[15]_INST_0_i_80_n_0 ),
        .I3(\iv[15]_i_83_n_0 ),
        .O(\badr[15]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF02020)) 
    \badr[15]_INST_0_i_87 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(\badr[15]_INST_0_i_122_n_0 ),
        .I2(\ccmd[2]_INST_0_i_8_n_0 ),
        .I3(\iv[15]_i_40_n_0 ),
        .I4(\badr[15]_INST_0_i_123_n_0 ),
        .I5(stat[2]),
        .O(\badr[15]_INST_0_i_87_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badr[15]_INST_0_i_88 
       (.I0(\rgf/sreg/sr [1]),
        .I1(\rgf/sreg/sr [0]),
        .O(\rgf/bank_sel [2]));
  LUT2 #(
    .INIT(4'h1)) 
    \badr[15]_INST_0_i_89 
       (.I0(\rgf/sreg/sr [0]),
        .I1(\rgf/sreg/sr [1]),
        .O(\rgf/bank_sel [0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[15]_INST_0_i_9 
       (.I0(\rgf/bank13/gr03 [15]),
        .I1(\rgf/bank13/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [15]),
        .I3(\rgf/bank13/abuso/gr4_bus1__0 ),
        .O(\badr[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \badr[15]_INST_0_i_90 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [9]),
        .I3(\ccmd[4]_INST_0_i_20_n_0 ),
        .I4(\fch/ir [5]),
        .I5(\fch/ir [6]),
        .O(\badr[15]_INST_0_i_90_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \badr[15]_INST_0_i_91 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [4]),
        .O(\badr[15]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h282800000000C000)) 
    \badr[15]_INST_0_i_92 
       (.I0(\ccmd[0]_INST_0_i_14_n_0 ),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [9]),
        .O(\badr[15]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \badr[15]_INST_0_i_93 
       (.I0(\bdatw[9]_INST_0_i_12_n_0 ),
        .I1(\fch/ir [0]),
        .I2(fch_irq_req),
        .I3(ctl_fetch_ext_fl_i_6_n_0),
        .I4(\bdatw[15]_INST_0_i_45_n_0 ),
        .I5(\badr[15]_INST_0_i_124_n_0 ),
        .O(\badr[15]_INST_0_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFBBFFFFFFFAB)) 
    \badr[15]_INST_0_i_94 
       (.I0(\ccmd[4]_INST_0_i_20_n_0 ),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [4]),
        .I4(\fch/ir [5]),
        .I5(\fch/ir [6]),
        .O(\badr[15]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000022)) 
    \badr[15]_INST_0_i_95 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [6]),
        .I5(\fch/ir [4]),
        .O(\badr[15]_INST_0_i_95_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBFBBBBBBBFBBB)) 
    \badr[15]_INST_0_i_96 
       (.I0(\badr[15]_INST_0_i_125_n_0 ),
        .I1(\fch/ir [11]),
        .I2(\badr[15]_INST_0_i_126_n_0 ),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [8]),
        .I5(crdy),
        .O(\badr[15]_INST_0_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h5410514055005140)) 
    \badr[15]_INST_0_i_97 
       (.I0(\ccmd[4]_INST_0_i_18_n_0 ),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [6]),
        .O(\badr[15]_INST_0_i_97_n_0 ));
  LUT6 #(
    .INIT(64'h0200FFFF00000000)) 
    \badr[15]_INST_0_i_98 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [9]),
        .I3(crdy),
        .I4(\badr[15]_INST_0_i_127_n_0 ),
        .I5(\fch/ir [10]),
        .O(\badr[15]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABABAAAAAA)) 
    \badr[15]_INST_0_i_99 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [2]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [5]),
        .O(\badr[15]_INST_0_i_99_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[1]_INST_0 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[1]),
        .O(badr[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[1]_INST_0_i_1 
       (.I0(\badr[1]_INST_0_i_2_n_0 ),
        .I1(\badr[1]_INST_0_i_3_n_0 ),
        .I2(\badr[1]_INST_0_i_4_n_0 ),
        .I3(\badr[1]_INST_0_i_5_n_0 ),
        .I4(\badr[1]_INST_0_i_6_n_0 ),
        .I5(\badr[1]_INST_0_i_7_n_0 ),
        .O(abus_0[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_10 
       (.I0(\rgf/bank13/gr01 [1]),
        .I1(\rgf/bank13/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [1]),
        .I3(\rgf/bank13/abuso/gr2_bus1__0 ),
        .O(\badr[1]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_11 
       (.I0(\rgf/bank13/gr07 [1]),
        .I1(\rgf/bank13/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [1]),
        .I3(\rgf/bank13/abuso/gr0_bus1__0 ),
        .O(\badr[1]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_12 
       (.I0(\rgf/bank13/gr05 [1]),
        .I1(\rgf/bank13/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [1]),
        .I3(\rgf/bank13/abuso/gr6_bus1__0 ),
        .O(\badr[1]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[1]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .O(\badr[1]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_14 
       (.I0(\rgf/bank13/gr25 [1]),
        .I1(\rgf/bank13/abuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [1]),
        .I3(\rgf/bank13/abuso2l/gr6_bus1__0 ),
        .O(\badr[1]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [1]),
        .I1(\rgf/bank13/abuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [1]),
        .I3(\rgf/bank13/abuso2l/gr2_bus1__0 ),
        .O(\badr[1]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_16 
       (.I0(\rgf/bank02/gr24 [1]),
        .I1(\rgf/bank02/abuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [1]),
        .I3(\rgf/bank02/abuso2l/gr5_bus1__0 ),
        .O(\badr[1]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_17 
       (.I0(\rgf/bank02/gr03 [1]),
        .I1(\rgf/bank02/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [1]),
        .I3(\rgf/bank02/abuso/gr4_bus1__0 ),
        .O(\badr[1]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_18 
       (.I0(\rgf/bank02/gr01 [1]),
        .I1(\rgf/bank02/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [1]),
        .I3(\rgf/bank02/abuso/gr2_bus1__0 ),
        .O(\badr[1]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_19 
       (.I0(\rgf/bank02/gr07 [1]),
        .I1(\rgf/bank02/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [1]),
        .I3(\rgf/bank02/abuso/gr0_bus1__0 ),
        .O(\badr[1]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[1]_INST_0_i_2 
       (.I0(\badr[1]_INST_0_i_8_n_0 ),
        .I1(\badr[1]_INST_0_i_9_n_0 ),
        .I2(\badr[1]_INST_0_i_10_n_0 ),
        .I3(\badr[1]_INST_0_i_11_n_0 ),
        .I4(\badr[1]_INST_0_i_12_n_0 ),
        .I5(\badr[1]_INST_0_i_13_n_0 ),
        .O(\badr[1]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_20 
       (.I0(\rgf/bank02/gr05 [1]),
        .I1(\rgf/bank02/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [1]),
        .I3(\rgf/bank02/abuso/gr6_bus1__0 ),
        .O(\badr[1]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[1]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\rgf/bank02/gr20 [1]),
        .O(\badr[1]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[1]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [1]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [1]),
        .I4(\rgf/bank02/gr21 [1]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\badr[1]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[1]_INST_0_i_3 
       (.I0(\badr[1]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank13/gr23 [1]),
        .I2(\rgf/bank13/abuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [1]),
        .I4(\rgf/bank13/abuso2l/gr4_bus1__0 ),
        .I5(\badr[1]_INST_0_i_15_n_0 ),
        .O(\badr[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[1]_INST_0_i_4 
       (.I0(\badr[1]_INST_0_i_16_n_0 ),
        .I1(\badr[1]_INST_0_i_17_n_0 ),
        .I2(\badr[1]_INST_0_i_18_n_0 ),
        .I3(\badr[1]_INST_0_i_19_n_0 ),
        .I4(\badr[1]_INST_0_i_20_n_0 ),
        .I5(\badr[1]_INST_0_i_21_n_0 ),
        .O(\badr[1]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[1]_INST_0_i_5 
       (.I0(\badr[1]_INST_0_i_22_n_0 ),
        .I1(\rgf/bank02/abuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [1]),
        .I3(\rgf/bank02/abuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [1]),
        .O(\badr[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[1]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/sptr/sp_dec_0 [1]),
        .I5(\rgf/sptr/sp [1]),
        .O(\badr[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[1]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\rgf/treg/tr [1]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\rgf/ivec/iv [1]),
        .I4(\rgf/pcnt/pc [1]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\badr[1]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_8 
       (.I0(\rgf/bank13/gr27 [1]),
        .I1(\rgf/bank13/abuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [1]),
        .I3(\rgf/bank13/abuso2l/gr0_bus1__0 ),
        .O(\badr[1]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[1]_INST_0_i_9 
       (.I0(\rgf/bank13/gr03 [1]),
        .I1(\rgf/bank13/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [1]),
        .I3(\rgf/bank13/abuso/gr4_bus1__0 ),
        .O(\badr[1]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[2]_INST_0 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[2]),
        .O(badr[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[2]_INST_0_i_1 
       (.I0(\badr[2]_INST_0_i_2_n_0 ),
        .I1(\badr[2]_INST_0_i_3_n_0 ),
        .I2(\badr[2]_INST_0_i_4_n_0 ),
        .I3(\badr[2]_INST_0_i_5_n_0 ),
        .I4(\badr[2]_INST_0_i_6_n_0 ),
        .I5(\badr[2]_INST_0_i_7_n_0 ),
        .O(abus_0[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_10 
       (.I0(\rgf/bank13/gr01 [2]),
        .I1(\rgf/bank13/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [2]),
        .I3(\rgf/bank13/abuso/gr2_bus1__0 ),
        .O(\badr[2]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_11 
       (.I0(\rgf/bank13/gr07 [2]),
        .I1(\rgf/bank13/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [2]),
        .I3(\rgf/bank13/abuso/gr0_bus1__0 ),
        .O(\badr[2]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_12 
       (.I0(\rgf/bank13/gr05 [2]),
        .I1(\rgf/bank13/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [2]),
        .I3(\rgf/bank13/abuso/gr6_bus1__0 ),
        .O(\badr[2]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[2]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/sreg/sr [2]),
        .O(\badr[2]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_14 
       (.I0(\rgf/bank13/gr25 [2]),
        .I1(\rgf/bank13/abuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [2]),
        .I3(\rgf/bank13/abuso2l/gr6_bus1__0 ),
        .O(\badr[2]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [2]),
        .I1(\rgf/bank13/abuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [2]),
        .I3(\rgf/bank13/abuso2l/gr2_bus1__0 ),
        .O(\badr[2]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_16 
       (.I0(\rgf/bank02/gr24 [2]),
        .I1(\rgf/bank02/abuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [2]),
        .I3(\rgf/bank02/abuso2l/gr5_bus1__0 ),
        .O(\badr[2]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_17 
       (.I0(\rgf/bank02/gr03 [2]),
        .I1(\rgf/bank02/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [2]),
        .I3(\rgf/bank02/abuso/gr4_bus1__0 ),
        .O(\badr[2]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_18 
       (.I0(\rgf/bank02/gr01 [2]),
        .I1(\rgf/bank02/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [2]),
        .I3(\rgf/bank02/abuso/gr2_bus1__0 ),
        .O(\badr[2]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_19 
       (.I0(\rgf/bank02/gr07 [2]),
        .I1(\rgf/bank02/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [2]),
        .I3(\rgf/bank02/abuso/gr0_bus1__0 ),
        .O(\badr[2]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[2]_INST_0_i_2 
       (.I0(\badr[2]_INST_0_i_8_n_0 ),
        .I1(\badr[2]_INST_0_i_9_n_0 ),
        .I2(\badr[2]_INST_0_i_10_n_0 ),
        .I3(\badr[2]_INST_0_i_11_n_0 ),
        .I4(\badr[2]_INST_0_i_12_n_0 ),
        .I5(\badr[2]_INST_0_i_13_n_0 ),
        .O(\badr[2]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_20 
       (.I0(\rgf/bank02/gr05 [2]),
        .I1(\rgf/bank02/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [2]),
        .I3(\rgf/bank02/abuso/gr6_bus1__0 ),
        .O(\badr[2]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[2]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\rgf/bank02/gr20 [2]),
        .O(\badr[2]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[2]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [2]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [2]),
        .I4(\rgf/bank02/gr21 [2]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\badr[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[2]_INST_0_i_3 
       (.I0(\badr[2]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank13/gr23 [2]),
        .I2(\rgf/bank13/abuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [2]),
        .I4(\rgf/bank13/abuso2l/gr4_bus1__0 ),
        .I5(\badr[2]_INST_0_i_15_n_0 ),
        .O(\badr[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[2]_INST_0_i_4 
       (.I0(\badr[2]_INST_0_i_16_n_0 ),
        .I1(\badr[2]_INST_0_i_17_n_0 ),
        .I2(\badr[2]_INST_0_i_18_n_0 ),
        .I3(\badr[2]_INST_0_i_19_n_0 ),
        .I4(\badr[2]_INST_0_i_20_n_0 ),
        .I5(\badr[2]_INST_0_i_21_n_0 ),
        .O(\badr[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[2]_INST_0_i_5 
       (.I0(\badr[2]_INST_0_i_22_n_0 ),
        .I1(\rgf/bank02/abuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [2]),
        .I3(\rgf/bank02/abuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [2]),
        .O(\badr[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[2]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/sptr/sp_dec_0 [2]),
        .I5(\rgf/sptr/sp [2]),
        .O(\badr[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[2]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\rgf/treg/tr [2]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\rgf/ivec/iv [2]),
        .I4(\rgf/pcnt/pc [2]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\badr[2]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_8 
       (.I0(\rgf/bank13/gr27 [2]),
        .I1(\rgf/bank13/abuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [2]),
        .I3(\rgf/bank13/abuso2l/gr0_bus1__0 ),
        .O(\badr[2]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[2]_INST_0_i_9 
       (.I0(\rgf/bank13/gr03 [2]),
        .I1(\rgf/bank13/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [2]),
        .I3(\rgf/bank13/abuso/gr4_bus1__0 ),
        .O(\badr[2]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[3]_INST_0 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[3]),
        .O(badr[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[3]_INST_0_i_1 
       (.I0(\badr[3]_INST_0_i_2_n_0 ),
        .I1(\badr[3]_INST_0_i_3_n_0 ),
        .I2(\badr[3]_INST_0_i_4_n_0 ),
        .I3(\badr[3]_INST_0_i_5_n_0 ),
        .I4(\badr[3]_INST_0_i_6_n_0 ),
        .I5(\badr[3]_INST_0_i_7_n_0 ),
        .O(abus_0[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_10 
       (.I0(\rgf/bank13/gr01 [3]),
        .I1(\rgf/bank13/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [3]),
        .I3(\rgf/bank13/abuso/gr2_bus1__0 ),
        .O(\badr[3]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_11 
       (.I0(\rgf/bank13/gr07 [3]),
        .I1(\rgf/bank13/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [3]),
        .I3(\rgf/bank13/abuso/gr0_bus1__0 ),
        .O(\badr[3]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_12 
       (.I0(\rgf/bank13/gr05 [3]),
        .I1(\rgf/bank13/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [3]),
        .I3(\rgf/bank13/abuso/gr6_bus1__0 ),
        .O(\badr[3]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[3]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/sreg/sr [3]),
        .O(\badr[3]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_14 
       (.I0(\rgf/bank13/gr25 [3]),
        .I1(\rgf/bank13/abuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [3]),
        .I3(\rgf/bank13/abuso2l/gr6_bus1__0 ),
        .O(\badr[3]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [3]),
        .I1(\rgf/bank13/abuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [3]),
        .I3(\rgf/bank13/abuso2l/gr2_bus1__0 ),
        .O(\badr[3]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_16 
       (.I0(\rgf/bank02/gr24 [3]),
        .I1(\rgf/bank02/abuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [3]),
        .I3(\rgf/bank02/abuso2l/gr5_bus1__0 ),
        .O(\badr[3]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_17 
       (.I0(\rgf/bank02/gr03 [3]),
        .I1(\rgf/bank02/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [3]),
        .I3(\rgf/bank02/abuso/gr4_bus1__0 ),
        .O(\badr[3]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_18 
       (.I0(\rgf/bank02/gr01 [3]),
        .I1(\rgf/bank02/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [3]),
        .I3(\rgf/bank02/abuso/gr2_bus1__0 ),
        .O(\badr[3]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_19 
       (.I0(\rgf/bank02/gr07 [3]),
        .I1(\rgf/bank02/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [3]),
        .I3(\rgf/bank02/abuso/gr0_bus1__0 ),
        .O(\badr[3]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[3]_INST_0_i_2 
       (.I0(\badr[3]_INST_0_i_8_n_0 ),
        .I1(\badr[3]_INST_0_i_9_n_0 ),
        .I2(\badr[3]_INST_0_i_10_n_0 ),
        .I3(\badr[3]_INST_0_i_11_n_0 ),
        .I4(\badr[3]_INST_0_i_12_n_0 ),
        .I5(\badr[3]_INST_0_i_13_n_0 ),
        .O(\badr[3]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_20 
       (.I0(\rgf/bank02/gr05 [3]),
        .I1(\rgf/bank02/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [3]),
        .I3(\rgf/bank02/abuso/gr6_bus1__0 ),
        .O(\badr[3]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[3]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\rgf/bank02/gr20 [3]),
        .O(\badr[3]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[3]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [3]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [3]),
        .I4(\rgf/bank02/gr21 [3]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\badr[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[3]_INST_0_i_3 
       (.I0(\badr[3]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank13/gr23 [3]),
        .I2(\rgf/bank13/abuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [3]),
        .I4(\rgf/bank13/abuso2l/gr4_bus1__0 ),
        .I5(\badr[3]_INST_0_i_15_n_0 ),
        .O(\badr[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[3]_INST_0_i_4 
       (.I0(\badr[3]_INST_0_i_16_n_0 ),
        .I1(\badr[3]_INST_0_i_17_n_0 ),
        .I2(\badr[3]_INST_0_i_18_n_0 ),
        .I3(\badr[3]_INST_0_i_19_n_0 ),
        .I4(\badr[3]_INST_0_i_20_n_0 ),
        .I5(\badr[3]_INST_0_i_21_n_0 ),
        .O(\badr[3]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[3]_INST_0_i_5 
       (.I0(\badr[3]_INST_0_i_22_n_0 ),
        .I1(\rgf/bank02/abuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [3]),
        .I3(\rgf/bank02/abuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [3]),
        .O(\badr[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[3]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/sptr/sp_dec_0 [3]),
        .I5(\rgf/sptr/sp [3]),
        .O(\badr[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[3]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\rgf/treg/tr [3]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\rgf/ivec/iv [3]),
        .I4(\rgf/pcnt/pc [3]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\badr[3]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_8 
       (.I0(\rgf/bank13/gr27 [3]),
        .I1(\rgf/bank13/abuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [3]),
        .I3(\rgf/bank13/abuso2l/gr0_bus1__0 ),
        .O(\badr[3]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[3]_INST_0_i_9 
       (.I0(\rgf/bank13/gr03 [3]),
        .I1(\rgf/bank13/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [3]),
        .I3(\rgf/bank13/abuso/gr4_bus1__0 ),
        .O(\badr[3]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[4]_INST_0 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[4]),
        .O(badr[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[4]_INST_0_i_1 
       (.I0(\badr[4]_INST_0_i_2_n_0 ),
        .I1(\badr[4]_INST_0_i_3_n_0 ),
        .I2(\badr[4]_INST_0_i_4_n_0 ),
        .I3(\badr[4]_INST_0_i_5_n_0 ),
        .I4(\badr[4]_INST_0_i_6_n_0 ),
        .I5(\badr[4]_INST_0_i_7_n_0 ),
        .O(abus_0[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_10 
       (.I0(\rgf/bank13/gr01 [4]),
        .I1(\rgf/bank13/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [4]),
        .I3(\rgf/bank13/abuso/gr2_bus1__0 ),
        .O(\badr[4]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_11 
       (.I0(\rgf/bank13/gr07 [4]),
        .I1(\rgf/bank13/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [4]),
        .I3(\rgf/bank13/abuso/gr0_bus1__0 ),
        .O(\badr[4]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_12 
       (.I0(\rgf/bank13/gr05 [4]),
        .I1(\rgf/bank13/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [4]),
        .I3(\rgf/bank13/abuso/gr6_bus1__0 ),
        .O(\badr[4]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[4]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/sreg/sr [4]),
        .O(\badr[4]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_14 
       (.I0(\rgf/bank13/gr25 [4]),
        .I1(\rgf/bank13/abuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [4]),
        .I3(\rgf/bank13/abuso2l/gr6_bus1__0 ),
        .O(\badr[4]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [4]),
        .I1(\rgf/bank13/abuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [4]),
        .I3(\rgf/bank13/abuso2l/gr2_bus1__0 ),
        .O(\badr[4]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_16 
       (.I0(\rgf/bank02/gr24 [4]),
        .I1(\rgf/bank02/abuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [4]),
        .I3(\rgf/bank02/abuso2l/gr5_bus1__0 ),
        .O(\badr[4]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_17 
       (.I0(\rgf/bank02/gr03 [4]),
        .I1(\rgf/bank02/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [4]),
        .I3(\rgf/bank02/abuso/gr4_bus1__0 ),
        .O(\badr[4]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_18 
       (.I0(\rgf/bank02/gr01 [4]),
        .I1(\rgf/bank02/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [4]),
        .I3(\rgf/bank02/abuso/gr2_bus1__0 ),
        .O(\badr[4]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_19 
       (.I0(\rgf/bank02/gr07 [4]),
        .I1(\rgf/bank02/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [4]),
        .I3(\rgf/bank02/abuso/gr0_bus1__0 ),
        .O(\badr[4]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[4]_INST_0_i_2 
       (.I0(\badr[4]_INST_0_i_8_n_0 ),
        .I1(\badr[4]_INST_0_i_9_n_0 ),
        .I2(\badr[4]_INST_0_i_10_n_0 ),
        .I3(\badr[4]_INST_0_i_11_n_0 ),
        .I4(\badr[4]_INST_0_i_12_n_0 ),
        .I5(\badr[4]_INST_0_i_13_n_0 ),
        .O(\badr[4]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_20 
       (.I0(\rgf/bank02/gr05 [4]),
        .I1(\rgf/bank02/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [4]),
        .I3(\rgf/bank02/abuso/gr6_bus1__0 ),
        .O(\badr[4]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[4]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\rgf/bank02/gr20 [4]),
        .O(\badr[4]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[4]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [4]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [4]),
        .I4(\rgf/bank02/gr21 [4]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\badr[4]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[4]_INST_0_i_3 
       (.I0(\badr[4]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank13/gr23 [4]),
        .I2(\rgf/bank13/abuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [4]),
        .I4(\rgf/bank13/abuso2l/gr4_bus1__0 ),
        .I5(\badr[4]_INST_0_i_15_n_0 ),
        .O(\badr[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[4]_INST_0_i_4 
       (.I0(\badr[4]_INST_0_i_16_n_0 ),
        .I1(\badr[4]_INST_0_i_17_n_0 ),
        .I2(\badr[4]_INST_0_i_18_n_0 ),
        .I3(\badr[4]_INST_0_i_19_n_0 ),
        .I4(\badr[4]_INST_0_i_20_n_0 ),
        .I5(\badr[4]_INST_0_i_21_n_0 ),
        .O(\badr[4]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[4]_INST_0_i_5 
       (.I0(\badr[4]_INST_0_i_22_n_0 ),
        .I1(\rgf/bank02/abuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [4]),
        .I3(\rgf/bank02/abuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [4]),
        .O(\badr[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[4]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/sptr/sp_dec_0 [4]),
        .I5(\rgf/sptr/sp [4]),
        .O(\badr[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[4]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\rgf/treg/tr [4]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\rgf/ivec/iv [4]),
        .I4(\rgf/pcnt/pc [4]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\badr[4]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_8 
       (.I0(\rgf/bank13/gr27 [4]),
        .I1(\rgf/bank13/abuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [4]),
        .I3(\rgf/bank13/abuso2l/gr0_bus1__0 ),
        .O(\badr[4]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[4]_INST_0_i_9 
       (.I0(\rgf/bank13/gr03 [4]),
        .I1(\rgf/bank13/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [4]),
        .I3(\rgf/bank13/abuso/gr4_bus1__0 ),
        .O(\badr[4]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[5]_INST_0 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[5]),
        .O(badr[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[5]_INST_0_i_1 
       (.I0(\badr[5]_INST_0_i_2_n_0 ),
        .I1(\badr[5]_INST_0_i_3_n_0 ),
        .I2(\badr[5]_INST_0_i_4_n_0 ),
        .I3(\badr[5]_INST_0_i_5_n_0 ),
        .I4(\badr[5]_INST_0_i_6_n_0 ),
        .I5(\badr[5]_INST_0_i_7_n_0 ),
        .O(abus_0[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_10 
       (.I0(\rgf/bank13/gr01 [5]),
        .I1(\rgf/bank13/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [5]),
        .I3(\rgf/bank13/abuso/gr2_bus1__0 ),
        .O(\badr[5]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_11 
       (.I0(\rgf/bank13/gr07 [5]),
        .I1(\rgf/bank13/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [5]),
        .I3(\rgf/bank13/abuso/gr0_bus1__0 ),
        .O(\badr[5]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_12 
       (.I0(\rgf/bank13/gr05 [5]),
        .I1(\rgf/bank13/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [5]),
        .I3(\rgf/bank13/abuso/gr6_bus1__0 ),
        .O(\badr[5]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[5]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/sreg/sr [5]),
        .O(\badr[5]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_14 
       (.I0(\rgf/bank13/gr25 [5]),
        .I1(\rgf/bank13/abuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [5]),
        .I3(\rgf/bank13/abuso2l/gr6_bus1__0 ),
        .O(\badr[5]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [5]),
        .I1(\rgf/bank13/abuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [5]),
        .I3(\rgf/bank13/abuso2l/gr2_bus1__0 ),
        .O(\badr[5]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_16 
       (.I0(\rgf/bank02/gr24 [5]),
        .I1(\rgf/bank02/abuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [5]),
        .I3(\rgf/bank02/abuso2l/gr5_bus1__0 ),
        .O(\badr[5]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_17 
       (.I0(\rgf/bank02/gr03 [5]),
        .I1(\rgf/bank02/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [5]),
        .I3(\rgf/bank02/abuso/gr4_bus1__0 ),
        .O(\badr[5]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_18 
       (.I0(\rgf/bank02/gr01 [5]),
        .I1(\rgf/bank02/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [5]),
        .I3(\rgf/bank02/abuso/gr2_bus1__0 ),
        .O(\badr[5]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_19 
       (.I0(\rgf/bank02/gr07 [5]),
        .I1(\rgf/bank02/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [5]),
        .I3(\rgf/bank02/abuso/gr0_bus1__0 ),
        .O(\badr[5]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[5]_INST_0_i_2 
       (.I0(\badr[5]_INST_0_i_8_n_0 ),
        .I1(\badr[5]_INST_0_i_9_n_0 ),
        .I2(\badr[5]_INST_0_i_10_n_0 ),
        .I3(\badr[5]_INST_0_i_11_n_0 ),
        .I4(\badr[5]_INST_0_i_12_n_0 ),
        .I5(\badr[5]_INST_0_i_13_n_0 ),
        .O(\badr[5]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_20 
       (.I0(\rgf/bank02/gr05 [5]),
        .I1(\rgf/bank02/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [5]),
        .I3(\rgf/bank02/abuso/gr6_bus1__0 ),
        .O(\badr[5]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[5]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\rgf/bank02/gr20 [5]),
        .O(\badr[5]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[5]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [5]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [5]),
        .I4(\rgf/bank02/gr21 [5]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\badr[5]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[5]_INST_0_i_3 
       (.I0(\badr[5]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank13/gr23 [5]),
        .I2(\rgf/bank13/abuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [5]),
        .I4(\rgf/bank13/abuso2l/gr4_bus1__0 ),
        .I5(\badr[5]_INST_0_i_15_n_0 ),
        .O(\badr[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[5]_INST_0_i_4 
       (.I0(\badr[5]_INST_0_i_16_n_0 ),
        .I1(\badr[5]_INST_0_i_17_n_0 ),
        .I2(\badr[5]_INST_0_i_18_n_0 ),
        .I3(\badr[5]_INST_0_i_19_n_0 ),
        .I4(\badr[5]_INST_0_i_20_n_0 ),
        .I5(\badr[5]_INST_0_i_21_n_0 ),
        .O(\badr[5]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[5]_INST_0_i_5 
       (.I0(\badr[5]_INST_0_i_22_n_0 ),
        .I1(\rgf/bank02/abuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [5]),
        .I3(\rgf/bank02/abuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [5]),
        .O(\badr[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[5]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/sptr/sp_dec_0 [5]),
        .I5(\rgf/sptr/sp [5]),
        .O(\badr[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[5]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\rgf/treg/tr [5]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\rgf/ivec/iv [5]),
        .I4(\rgf/pcnt/pc [5]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\badr[5]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_8 
       (.I0(\rgf/bank13/gr27 [5]),
        .I1(\rgf/bank13/abuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [5]),
        .I3(\rgf/bank13/abuso2l/gr0_bus1__0 ),
        .O(\badr[5]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[5]_INST_0_i_9 
       (.I0(\rgf/bank13/gr03 [5]),
        .I1(\rgf/bank13/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [5]),
        .I3(\rgf/bank13/abuso/gr4_bus1__0 ),
        .O(\badr[5]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[6]_INST_0 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[6]),
        .O(badr[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[6]_INST_0_i_1 
       (.I0(\badr[6]_INST_0_i_2_n_0 ),
        .I1(\badr[6]_INST_0_i_3_n_0 ),
        .I2(\badr[6]_INST_0_i_4_n_0 ),
        .I3(\badr[6]_INST_0_i_5_n_0 ),
        .I4(\badr[6]_INST_0_i_6_n_0 ),
        .I5(\badr[6]_INST_0_i_7_n_0 ),
        .O(abus_0[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_10 
       (.I0(\rgf/bank13/gr01 [6]),
        .I1(\rgf/bank13/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [6]),
        .I3(\rgf/bank13/abuso/gr2_bus1__0 ),
        .O(\badr[6]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_11 
       (.I0(\rgf/bank13/gr07 [6]),
        .I1(\rgf/bank13/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [6]),
        .I3(\rgf/bank13/abuso/gr0_bus1__0 ),
        .O(\badr[6]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_12 
       (.I0(\rgf/bank13/gr05 [6]),
        .I1(\rgf/bank13/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [6]),
        .I3(\rgf/bank13/abuso/gr6_bus1__0 ),
        .O(\badr[6]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[6]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/sreg/sr [6]),
        .O(\badr[6]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_14 
       (.I0(\rgf/bank13/gr25 [6]),
        .I1(\rgf/bank13/abuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [6]),
        .I3(\rgf/bank13/abuso2l/gr6_bus1__0 ),
        .O(\badr[6]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [6]),
        .I1(\rgf/bank13/abuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [6]),
        .I3(\rgf/bank13/abuso2l/gr2_bus1__0 ),
        .O(\badr[6]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_16 
       (.I0(\rgf/bank02/gr24 [6]),
        .I1(\rgf/bank02/abuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [6]),
        .I3(\rgf/bank02/abuso2l/gr5_bus1__0 ),
        .O(\badr[6]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_17 
       (.I0(\rgf/bank02/gr03 [6]),
        .I1(\rgf/bank02/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [6]),
        .I3(\rgf/bank02/abuso/gr4_bus1__0 ),
        .O(\badr[6]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_18 
       (.I0(\rgf/bank02/gr01 [6]),
        .I1(\rgf/bank02/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [6]),
        .I3(\rgf/bank02/abuso/gr2_bus1__0 ),
        .O(\badr[6]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_19 
       (.I0(\rgf/bank02/gr07 [6]),
        .I1(\rgf/bank02/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [6]),
        .I3(\rgf/bank02/abuso/gr0_bus1__0 ),
        .O(\badr[6]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[6]_INST_0_i_2 
       (.I0(\badr[6]_INST_0_i_8_n_0 ),
        .I1(\badr[6]_INST_0_i_9_n_0 ),
        .I2(\badr[6]_INST_0_i_10_n_0 ),
        .I3(\badr[6]_INST_0_i_11_n_0 ),
        .I4(\badr[6]_INST_0_i_12_n_0 ),
        .I5(\badr[6]_INST_0_i_13_n_0 ),
        .O(\badr[6]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_20 
       (.I0(\rgf/bank02/gr05 [6]),
        .I1(\rgf/bank02/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [6]),
        .I3(\rgf/bank02/abuso/gr6_bus1__0 ),
        .O(\badr[6]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[6]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\rgf/bank02/gr20 [6]),
        .O(\badr[6]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[6]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [6]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [6]),
        .I4(\rgf/bank02/gr21 [6]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\badr[6]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[6]_INST_0_i_3 
       (.I0(\badr[6]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank13/gr23 [6]),
        .I2(\rgf/bank13/abuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [6]),
        .I4(\rgf/bank13/abuso2l/gr4_bus1__0 ),
        .I5(\badr[6]_INST_0_i_15_n_0 ),
        .O(\badr[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[6]_INST_0_i_4 
       (.I0(\badr[6]_INST_0_i_16_n_0 ),
        .I1(\badr[6]_INST_0_i_17_n_0 ),
        .I2(\badr[6]_INST_0_i_18_n_0 ),
        .I3(\badr[6]_INST_0_i_19_n_0 ),
        .I4(\badr[6]_INST_0_i_20_n_0 ),
        .I5(\badr[6]_INST_0_i_21_n_0 ),
        .O(\badr[6]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[6]_INST_0_i_5 
       (.I0(\badr[6]_INST_0_i_22_n_0 ),
        .I1(\rgf/bank02/abuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [6]),
        .I3(\rgf/bank02/abuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [6]),
        .O(\badr[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[6]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/sptr/sp_dec_0 [6]),
        .I5(\rgf/sptr/sp [6]),
        .O(\badr[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[6]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\rgf/treg/tr [6]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\rgf/ivec/iv [6]),
        .I4(\rgf/pcnt/pc [6]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\badr[6]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_8 
       (.I0(\rgf/bank13/gr27 [6]),
        .I1(\rgf/bank13/abuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [6]),
        .I3(\rgf/bank13/abuso2l/gr0_bus1__0 ),
        .O(\badr[6]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[6]_INST_0_i_9 
       (.I0(\rgf/bank13/gr03 [6]),
        .I1(\rgf/bank13/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [6]),
        .I3(\rgf/bank13/abuso/gr4_bus1__0 ),
        .O(\badr[6]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[7]_INST_0 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[7]),
        .O(badr[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[7]_INST_0_i_1 
       (.I0(\badr[7]_INST_0_i_2_n_0 ),
        .I1(\badr[7]_INST_0_i_3_n_0 ),
        .I2(\badr[7]_INST_0_i_4_n_0 ),
        .I3(\badr[7]_INST_0_i_5_n_0 ),
        .I4(\badr[7]_INST_0_i_6_n_0 ),
        .I5(\badr[7]_INST_0_i_7_n_0 ),
        .O(abus_0[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_10 
       (.I0(\rgf/bank13/gr01 [7]),
        .I1(\rgf/bank13/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [7]),
        .I3(\rgf/bank13/abuso/gr2_bus1__0 ),
        .O(\badr[7]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_11 
       (.I0(\rgf/bank13/gr07 [7]),
        .I1(\rgf/bank13/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [7]),
        .I3(\rgf/bank13/abuso/gr0_bus1__0 ),
        .O(\badr[7]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_12 
       (.I0(\rgf/bank13/gr05 [7]),
        .I1(\rgf/bank13/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [7]),
        .I3(\rgf/bank13/abuso/gr6_bus1__0 ),
        .O(\badr[7]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[7]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/sreg/sr [7]),
        .O(\badr[7]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_14 
       (.I0(\rgf/bank13/gr25 [7]),
        .I1(\rgf/bank13/abuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [7]),
        .I3(\rgf/bank13/abuso2l/gr6_bus1__0 ),
        .O(\badr[7]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [7]),
        .I1(\rgf/bank13/abuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [7]),
        .I3(\rgf/bank13/abuso2l/gr2_bus1__0 ),
        .O(\badr[7]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_16 
       (.I0(\rgf/bank02/gr24 [7]),
        .I1(\rgf/bank02/abuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [7]),
        .I3(\rgf/bank02/abuso2l/gr5_bus1__0 ),
        .O(\badr[7]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_17 
       (.I0(\rgf/bank02/gr03 [7]),
        .I1(\rgf/bank02/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [7]),
        .I3(\rgf/bank02/abuso/gr4_bus1__0 ),
        .O(\badr[7]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_18 
       (.I0(\rgf/bank02/gr01 [7]),
        .I1(\rgf/bank02/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [7]),
        .I3(\rgf/bank02/abuso/gr2_bus1__0 ),
        .O(\badr[7]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_19 
       (.I0(\rgf/bank02/gr07 [7]),
        .I1(\rgf/bank02/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [7]),
        .I3(\rgf/bank02/abuso/gr0_bus1__0 ),
        .O(\badr[7]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[7]_INST_0_i_2 
       (.I0(\badr[7]_INST_0_i_8_n_0 ),
        .I1(\badr[7]_INST_0_i_9_n_0 ),
        .I2(\badr[7]_INST_0_i_10_n_0 ),
        .I3(\badr[7]_INST_0_i_11_n_0 ),
        .I4(\badr[7]_INST_0_i_12_n_0 ),
        .I5(\badr[7]_INST_0_i_13_n_0 ),
        .O(\badr[7]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_20 
       (.I0(\rgf/bank02/gr05 [7]),
        .I1(\rgf/bank02/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [7]),
        .I3(\rgf/bank02/abuso/gr6_bus1__0 ),
        .O(\badr[7]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[7]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\rgf/bank02/gr20 [7]),
        .O(\badr[7]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[7]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [7]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [7]),
        .I4(\rgf/bank02/gr21 [7]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\badr[7]_INST_0_i_22_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \badr[7]_INST_0_i_23 
       (.CI(\sp_reg[0]_i_2_n_0 ),
        .CO({\badr[7]_INST_0_i_23_n_0 ,\badr[7]_INST_0_i_23_n_1 ,\badr[7]_INST_0_i_23_n_2 ,\badr[7]_INST_0_i_23_n_3 }),
        .CYINIT(\<const0> ),
        .DI(\rgf/sptr/sp [7:4]),
        .O(\rgf/sptr/sp_dec_0 [7:4]),
        .S({\badr[7]_INST_0_i_24_n_0 ,\badr[7]_INST_0_i_25_n_0 ,\badr[7]_INST_0_i_26_n_0 ,\badr[7]_INST_0_i_27_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[7]_INST_0_i_24 
       (.I0(\rgf/sptr/sp [7]),
        .O(\badr[7]_INST_0_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[7]_INST_0_i_25 
       (.I0(\rgf/sptr/sp [6]),
        .O(\badr[7]_INST_0_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[7]_INST_0_i_26 
       (.I0(\rgf/sptr/sp [5]),
        .O(\badr[7]_INST_0_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \badr[7]_INST_0_i_27 
       (.I0(\rgf/sptr/sp [4]),
        .O(\badr[7]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[7]_INST_0_i_3 
       (.I0(\badr[7]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank13/gr23 [7]),
        .I2(\rgf/bank13/abuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [7]),
        .I4(\rgf/bank13/abuso2l/gr4_bus1__0 ),
        .I5(\badr[7]_INST_0_i_15_n_0 ),
        .O(\badr[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[7]_INST_0_i_4 
       (.I0(\badr[7]_INST_0_i_16_n_0 ),
        .I1(\badr[7]_INST_0_i_17_n_0 ),
        .I2(\badr[7]_INST_0_i_18_n_0 ),
        .I3(\badr[7]_INST_0_i_19_n_0 ),
        .I4(\badr[7]_INST_0_i_20_n_0 ),
        .I5(\badr[7]_INST_0_i_21_n_0 ),
        .O(\badr[7]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[7]_INST_0_i_5 
       (.I0(\badr[7]_INST_0_i_22_n_0 ),
        .I1(\rgf/bank02/abuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [7]),
        .I3(\rgf/bank02/abuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [7]),
        .O(\badr[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[7]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/sptr/sp_dec_0 [7]),
        .I5(\rgf/sptr/sp [7]),
        .O(\badr[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[7]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\rgf/treg/tr [7]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\rgf/ivec/iv [7]),
        .I4(\rgf/pcnt/pc [7]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\badr[7]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_8 
       (.I0(\rgf/bank13/gr27 [7]),
        .I1(\rgf/bank13/abuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [7]),
        .I3(\rgf/bank13/abuso2l/gr0_bus1__0 ),
        .O(\badr[7]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[7]_INST_0_i_9 
       (.I0(\rgf/bank13/gr03 [7]),
        .I1(\rgf/bank13/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [7]),
        .I3(\rgf/bank13/abuso/gr4_bus1__0 ),
        .O(\badr[7]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[8]_INST_0 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[8]),
        .O(badr[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[8]_INST_0_i_1 
       (.I0(\badr[8]_INST_0_i_2_n_0 ),
        .I1(\badr[8]_INST_0_i_3_n_0 ),
        .I2(\badr[8]_INST_0_i_4_n_0 ),
        .I3(\badr[8]_INST_0_i_5_n_0 ),
        .I4(\badr[8]_INST_0_i_6_n_0 ),
        .I5(\badr[8]_INST_0_i_7_n_0 ),
        .O(abus_0[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_10 
       (.I0(\rgf/bank13/gr01 [8]),
        .I1(\rgf/bank13/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [8]),
        .I3(\rgf/bank13/abuso/gr2_bus1__0 ),
        .O(\badr[8]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_11 
       (.I0(\rgf/bank13/gr07 [8]),
        .I1(\rgf/bank13/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [8]),
        .I3(\rgf/bank13/abuso/gr0_bus1__0 ),
        .O(\badr[8]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_12 
       (.I0(\rgf/bank13/gr05 [8]),
        .I1(\rgf/bank13/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [8]),
        .I3(\rgf/bank13/abuso/gr6_bus1__0 ),
        .O(\badr[8]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[8]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/sreg/sr [8]),
        .O(\badr[8]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_14 
       (.I0(\rgf/bank13/gr25 [8]),
        .I1(\rgf/bank13/abuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [8]),
        .I3(\rgf/bank13/abuso2l/gr6_bus1__0 ),
        .O(\badr[8]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [8]),
        .I1(\rgf/bank13/abuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [8]),
        .I3(\rgf/bank13/abuso2l/gr2_bus1__0 ),
        .O(\badr[8]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_16 
       (.I0(\rgf/bank02/gr24 [8]),
        .I1(\rgf/bank02/abuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [8]),
        .I3(\rgf/bank02/abuso2l/gr5_bus1__0 ),
        .O(\badr[8]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_17 
       (.I0(\rgf/bank02/gr03 [8]),
        .I1(\rgf/bank02/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [8]),
        .I3(\rgf/bank02/abuso/gr4_bus1__0 ),
        .O(\badr[8]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_18 
       (.I0(\rgf/bank02/gr01 [8]),
        .I1(\rgf/bank02/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [8]),
        .I3(\rgf/bank02/abuso/gr2_bus1__0 ),
        .O(\badr[8]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_19 
       (.I0(\rgf/bank02/gr07 [8]),
        .I1(\rgf/bank02/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [8]),
        .I3(\rgf/bank02/abuso/gr0_bus1__0 ),
        .O(\badr[8]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[8]_INST_0_i_2 
       (.I0(\badr[8]_INST_0_i_8_n_0 ),
        .I1(\badr[8]_INST_0_i_9_n_0 ),
        .I2(\badr[8]_INST_0_i_10_n_0 ),
        .I3(\badr[8]_INST_0_i_11_n_0 ),
        .I4(\badr[8]_INST_0_i_12_n_0 ),
        .I5(\badr[8]_INST_0_i_13_n_0 ),
        .O(\badr[8]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_20 
       (.I0(\rgf/bank02/gr05 [8]),
        .I1(\rgf/bank02/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [8]),
        .I3(\rgf/bank02/abuso/gr6_bus1__0 ),
        .O(\badr[8]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[8]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\rgf/bank02/gr20 [8]),
        .O(\badr[8]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[8]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [8]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [8]),
        .I4(\rgf/bank02/gr21 [8]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\badr[8]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[8]_INST_0_i_3 
       (.I0(\badr[8]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank13/gr23 [8]),
        .I2(\rgf/bank13/abuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [8]),
        .I4(\rgf/bank13/abuso2l/gr4_bus1__0 ),
        .I5(\badr[8]_INST_0_i_15_n_0 ),
        .O(\badr[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[8]_INST_0_i_4 
       (.I0(\badr[8]_INST_0_i_16_n_0 ),
        .I1(\badr[8]_INST_0_i_17_n_0 ),
        .I2(\badr[8]_INST_0_i_18_n_0 ),
        .I3(\badr[8]_INST_0_i_19_n_0 ),
        .I4(\badr[8]_INST_0_i_20_n_0 ),
        .I5(\badr[8]_INST_0_i_21_n_0 ),
        .O(\badr[8]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[8]_INST_0_i_5 
       (.I0(\badr[8]_INST_0_i_22_n_0 ),
        .I1(\rgf/bank02/abuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [8]),
        .I3(\rgf/bank02/abuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [8]),
        .O(\badr[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[8]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/sptr/sp_dec_0 [8]),
        .I5(\rgf/sptr/sp [8]),
        .O(\badr[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[8]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\rgf/treg/tr [8]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\rgf/ivec/iv [8]),
        .I4(\rgf/pcnt/pc [8]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\badr[8]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_8 
       (.I0(\rgf/bank13/gr27 [8]),
        .I1(\rgf/bank13/abuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [8]),
        .I3(\rgf/bank13/abuso2l/gr0_bus1__0 ),
        .O(\badr[8]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[8]_INST_0_i_9 
       (.I0(\rgf/bank13/gr03 [8]),
        .I1(\rgf/bank13/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [8]),
        .I3(\rgf/bank13/abuso/gr4_bus1__0 ),
        .O(\badr[8]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \badr[9]_INST_0 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[9]),
        .O(badr[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[9]_INST_0_i_1 
       (.I0(\badr[9]_INST_0_i_2_n_0 ),
        .I1(\badr[9]_INST_0_i_3_n_0 ),
        .I2(\badr[9]_INST_0_i_4_n_0 ),
        .I3(\badr[9]_INST_0_i_5_n_0 ),
        .I4(\badr[9]_INST_0_i_6_n_0 ),
        .I5(\badr[9]_INST_0_i_7_n_0 ),
        .O(abus_0[9]));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_10 
       (.I0(\rgf/bank13/gr01 [9]),
        .I1(\rgf/bank13/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [9]),
        .I3(\rgf/bank13/abuso/gr2_bus1__0 ),
        .O(\badr[9]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_11 
       (.I0(\rgf/bank13/gr07 [9]),
        .I1(\rgf/bank13/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [9]),
        .I3(\rgf/bank13/abuso/gr0_bus1__0 ),
        .O(\badr[9]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_12 
       (.I0(\rgf/bank13/gr05 [9]),
        .I1(\rgf/bank13/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [9]),
        .I3(\rgf/bank13/abuso/gr6_bus1__0 ),
        .O(\badr[9]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \badr[9]_INST_0_i_13 
       (.I0(ctl_sela_rn[1]),
        .I1(ctl_sela_rn[0]),
        .I2(\badr[15]_INST_0_i_28_n_0 ),
        .I3(\badr[15]_INST_0_i_27_n_0 ),
        .I4(\rgf/sreg/sr [9]),
        .O(\badr[9]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_14 
       (.I0(\rgf/bank13/gr25 [9]),
        .I1(\rgf/bank13/abuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [9]),
        .I3(\rgf/bank13/abuso2l/gr6_bus1__0 ),
        .O(\badr[9]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [9]),
        .I1(\rgf/bank13/abuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [9]),
        .I3(\rgf/bank13/abuso2l/gr2_bus1__0 ),
        .O(\badr[9]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_16 
       (.I0(\rgf/bank02/gr24 [9]),
        .I1(\rgf/bank02/abuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [9]),
        .I3(\rgf/bank02/abuso2l/gr5_bus1__0 ),
        .O(\badr[9]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_17 
       (.I0(\rgf/bank02/gr03 [9]),
        .I1(\rgf/bank02/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [9]),
        .I3(\rgf/bank02/abuso/gr4_bus1__0 ),
        .O(\badr[9]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_18 
       (.I0(\rgf/bank02/gr01 [9]),
        .I1(\rgf/bank02/abuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [9]),
        .I3(\rgf/bank02/abuso/gr2_bus1__0 ),
        .O(\badr[9]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_19 
       (.I0(\rgf/bank02/gr07 [9]),
        .I1(\rgf/bank02/abuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [9]),
        .I3(\rgf/bank02/abuso/gr0_bus1__0 ),
        .O(\badr[9]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[9]_INST_0_i_2 
       (.I0(\badr[9]_INST_0_i_8_n_0 ),
        .I1(\badr[9]_INST_0_i_9_n_0 ),
        .I2(\badr[9]_INST_0_i_10_n_0 ),
        .I3(\badr[9]_INST_0_i_11_n_0 ),
        .I4(\badr[9]_INST_0_i_12_n_0 ),
        .I5(\badr[9]_INST_0_i_13_n_0 ),
        .O(\badr[9]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_20 
       (.I0(\rgf/bank02/gr05 [9]),
        .I1(\rgf/bank02/abuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [9]),
        .I3(\rgf/bank02/abuso/gr6_bus1__0 ),
        .O(\badr[9]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[9]_INST_0_i_21 
       (.I0(\rgf/bank02/abuso2l/gr0_bus1__0 ),
        .I1(\rgf/bank02/gr20 [9]),
        .O(\badr[9]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[9]_INST_0_i_22 
       (.I0(\rgf/bank02/abuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [9]),
        .I2(\rgf/bank02/abuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [9]),
        .I4(\rgf/bank02/gr21 [9]),
        .I5(\rgf/bank02/abuso2l/gr1_bus1__0 ),
        .O(\badr[9]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \badr[9]_INST_0_i_3 
       (.I0(\badr[9]_INST_0_i_14_n_0 ),
        .I1(\rgf/bank13/gr23 [9]),
        .I2(\rgf/bank13/abuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [9]),
        .I4(\rgf/bank13/abuso2l/gr4_bus1__0 ),
        .I5(\badr[9]_INST_0_i_15_n_0 ),
        .O(\badr[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \badr[9]_INST_0_i_4 
       (.I0(\badr[9]_INST_0_i_16_n_0 ),
        .I1(\badr[9]_INST_0_i_17_n_0 ),
        .I2(\badr[9]_INST_0_i_18_n_0 ),
        .I3(\badr[9]_INST_0_i_19_n_0 ),
        .I4(\badr[9]_INST_0_i_20_n_0 ),
        .I5(\badr[9]_INST_0_i_21_n_0 ),
        .O(\badr[9]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \badr[9]_INST_0_i_5 
       (.I0(\badr[9]_INST_0_i_22_n_0 ),
        .I1(\rgf/bank02/abuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [9]),
        .I3(\rgf/bank02/abuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [9]),
        .O(\badr[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC840404088000000)) 
    \badr[9]_INST_0_i_6 
       (.I0(\badr[15]_INST_0_i_27_n_0 ),
        .I1(\badr[15]_INST_0_i_28_n_0 ),
        .I2(\badr[15]_INST_0_i_29_n_0 ),
        .I3(\badr[15]_INST_0_i_30_n_0 ),
        .I4(\rgf/sptr/sp_dec_0 [9]),
        .I5(\rgf/sptr/sp [9]),
        .O(\badr[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \badr[9]_INST_0_i_7 
       (.I0(\rgf/abus_sel_cr [4]),
        .I1(\rgf/treg/tr [9]),
        .I2(\rgf/abus_sel_cr [3]),
        .I3(\rgf/ivec/iv [9]),
        .I4(\rgf/pcnt/pc [9]),
        .I5(\rgf/abus_sel_cr [1]),
        .O(\badr[9]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_8 
       (.I0(\rgf/bank13/gr27 [9]),
        .I1(\rgf/bank13/abuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [9]),
        .I3(\rgf/bank13/abuso2l/gr0_bus1__0 ),
        .O(\badr[9]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \badr[9]_INST_0_i_9 
       (.I0(\rgf/bank13/gr03 [9]),
        .I1(\rgf/bank13/abuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [9]),
        .I3(\rgf/bank13/abuso/gr4_bus1__0 ),
        .O(\badr[9]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[0]_INST_0 
       (.I0(\rgf/treg/tr [0]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .O(badrx[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[10]_INST_0 
       (.I0(\rgf/treg/tr [10]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .O(badrx[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[11]_INST_0 
       (.I0(\rgf/treg/tr [11]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .O(badrx[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[12]_INST_0 
       (.I0(\rgf/treg/tr [12]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .O(badrx[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[13]_INST_0 
       (.I0(\rgf/treg/tr [13]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .O(badrx[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[14]_INST_0 
       (.I0(\rgf/treg/tr [14]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .O(badrx[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[15]_INST_0 
       (.I0(\rgf/treg/tr [15]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .O(badrx[15]));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \badrx[15]_INST_0_i_1 
       (.I0(\badrx[15]_INST_0_i_2_n_0 ),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(\fch/ir [15]),
        .I3(\fch/ir [11]),
        .I4(\bcmd[2]_INST_0_i_2_n_0 ),
        .I5(\bcmd[2]_INST_0_i_1_n_0 ),
        .O(\badrx[15]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \badrx[15]_INST_0_i_2 
       (.I0(\fch/ir [8]),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .I2(crdy),
        .O(\badrx[15]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \badrx[15]_INST_0_i_3 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [10]),
        .O(\badrx[15]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[1]_INST_0 
       (.I0(\rgf/treg/tr [1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .O(badrx[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[2]_INST_0 
       (.I0(\rgf/treg/tr [2]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .O(badrx[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[3]_INST_0 
       (.I0(\rgf/treg/tr [3]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .O(badrx[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[4]_INST_0 
       (.I0(\rgf/treg/tr [4]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .O(badrx[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[5]_INST_0 
       (.I0(\rgf/treg/tr [5]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .O(badrx[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[6]_INST_0 
       (.I0(\rgf/treg/tr [6]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .O(badrx[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[7]_INST_0 
       (.I0(\rgf/treg/tr [7]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .O(badrx[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[8]_INST_0 
       (.I0(\rgf/treg/tr [8]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .O(badrx[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \badrx[9]_INST_0 
       (.I0(\rgf/treg/tr [9]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .O(badrx[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \bbus_o[0]_INST_0 
       (.I0(\bdatw[8]_INST_0_i_2_n_0 ),
        .I1(\ccmd[4]_INST_0_i_1_n_0 ),
        .O(bbus_o[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[10]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .O(bbus_o[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[11]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .O(bbus_o[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[12]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .O(bbus_o[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[13]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .O(bbus_o[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[14]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[14]_INST_0_i_1_n_0 ),
        .O(bbus_o[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[15]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .O(bbus_o[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[1]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(bbus_o[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[2]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bbus_o[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[3]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bbus_o[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[4]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(bbus_o[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[5]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bbus_o[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[6]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bbus_o[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[7]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bbus_o[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[8]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .O(bbus_o[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \bbus_o[9]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .O(bbus_o[9]));
  LUT6 #(
    .INIT(64'h0200020002000203)) 
    \bcmd[0]_INST_0 
       (.I0(\bcmd[0]_INST_0_i_1_n_0 ),
        .I1(\bcmd[0]_INST_0_i_2_n_0 ),
        .I2(\bcmd[0]_INST_0_i_3_n_0 ),
        .I3(\fch/ir [12]),
        .I4(\bcmd[0]_INST_0_i_4_n_0 ),
        .I5(\bcmd[0]_INST_0_i_5_n_0 ),
        .O(bcmd[0]));
  LUT6 #(
    .INIT(64'h000022220000A222)) 
    \bcmd[0]_INST_0_i_1 
       (.I0(\bcmd[0]_INST_0_i_6_n_0 ),
        .I1(stat[0]),
        .I2(\fch/ir [11]),
        .I3(\bcmd[0]_INST_0_i_7_n_0 ),
        .I4(\bcmd[0]_INST_0_i_8_n_0 ),
        .I5(\fch/ir [6]),
        .O(\bcmd[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \bcmd[0]_INST_0_i_10 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [1]),
        .I3(\fch/ir [3]),
        .O(\bcmd[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBAFAAAAABFFFAAAA)) 
    \bcmd[0]_INST_0_i_11 
       (.I0(\bcmd[1]_INST_0_i_1_n_0 ),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [9]),
        .O(\bcmd[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5555555505055455)) 
    \bcmd[0]_INST_0_i_2 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [1]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [9]),
        .O(\bcmd[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000040)) 
    \bcmd[0]_INST_0_i_3 
       (.I0(\bcmd[0]_INST_0_i_9_n_0 ),
        .I1(\bcmd[0]_INST_0_i_10_n_0 ),
        .I2(stat[0]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [4]),
        .I5(\bcmd[0]_INST_0_i_11_n_0 ),
        .O(\bcmd[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bcmd[0]_INST_0_i_4 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [11]),
        .O(\bcmd[0]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bcmd[0]_INST_0_i_5 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [13]),
        .I2(\fch/ir [4]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [6]),
        .O(\bcmd[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEBBAAAAAABBAAAAA)) 
    \bcmd[0]_INST_0_i_6 
       (.I0(stat[0]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [9]),
        .I5(\fch/ir [5]),
        .O(\bcmd[0]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bcmd[0]_INST_0_i_7 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [9]),
        .O(\bcmd[0]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bcmd[0]_INST_0_i_8 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [14]),
        .O(\bcmd[0]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bcmd[0]_INST_0_i_9 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [8]),
        .O(\bcmd[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000455555555)) 
    \bcmd[1]_INST_0 
       (.I0(\bcmd[1]_INST_0_i_1_n_0 ),
        .I1(\bcmd[1]_INST_0_i_2_n_0 ),
        .I2(\bcmd[1]_INST_0_i_3_n_0 ),
        .I3(\bcmd[1]_INST_0_i_4_n_0 ),
        .I4(\bcmd[1]_INST_0_i_5_n_0 ),
        .I5(\bcmd[1]_INST_0_i_6_n_0 ),
        .O(bcmd[1]));
  LUT3 #(
    .INIT(8'hFE)) 
    \bcmd[1]_INST_0_i_1 
       (.I0(stat[1]),
        .I1(stat[2]),
        .I2(\fch/ir [15]),
        .O(\bcmd[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400004040404)) 
    \bcmd[1]_INST_0_i_10 
       (.I0(\bcmd[1]_INST_0_i_11_n_0 ),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [3]),
        .I5(\fch/ir [8]),
        .O(\bcmd[1]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bcmd[1]_INST_0_i_11 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [11]),
        .O(\bcmd[1]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h1918)) 
    \bcmd[1]_INST_0_i_2 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [11]),
        .I2(stat[0]),
        .I3(fch_irq_req),
        .O(\bcmd[1]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \bcmd[1]_INST_0_i_3 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [8]),
        .O(\bcmd[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FFFFFFFFFFEF)) 
    \bcmd[1]_INST_0_i_4 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [0]),
        .I3(\bcmd[1]_INST_0_i_7_n_0 ),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [8]),
        .O(\bcmd[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7EFFFFFFFFFFFF7E)) 
    \bcmd[1]_INST_0_i_5 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [10]),
        .I5(\fch/ir [9]),
        .O(\bcmd[1]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEBFFFFFF)) 
    \bcmd[1]_INST_0_i_6 
       (.I0(\bcmd[1]_INST_0_i_8_n_0 ),
        .I1(stat[0]),
        .I2(\fch/ir [9]),
        .I3(\bcmd[2]_INST_0_i_2_n_0 ),
        .I4(\fch/ir [6]),
        .O(\bcmd[1]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bcmd[1]_INST_0_i_7 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [4]),
        .O(\bcmd[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFF01F)) 
    \bcmd[1]_INST_0_i_8 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(crdy),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [11]),
        .I4(\bcmd[2]_INST_0_i_3_n_0 ),
        .I5(\bcmd[1]_INST_0_i_10_n_0 ),
        .O(\bcmd[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \bcmd[1]_INST_0_i_9 
       (.I0(\fch/ir [15]),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [14]),
        .I4(\fch/ir [11]),
        .I5(\fch/ir [10]),
        .O(\bcmd[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \bcmd[2]_INST_0 
       (.I0(\bcmd[2]_INST_0_i_1_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\fch/ir [15]),
        .I4(\fch/ir [7]),
        .I5(\bcmd[2]_INST_0_i_4_n_0 ),
        .O(bcmd[2]));
  LUT3 #(
    .INIT(8'h01)) 
    \bcmd[2]_INST_0_i_1 
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(stat[2]),
        .O(\bcmd[2]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bcmd[2]_INST_0_i_2 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [13]),
        .O(\bcmd[2]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bcmd[2]_INST_0_i_3 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [9]),
        .O(\bcmd[2]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bcmd[2]_INST_0_i_4 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [11]),
        .O(\bcmd[2]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[0]_INST_0 
       (.I0(bcmd[1]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(bdatw[0]));
  LUT4 #(
    .INIT(16'h048C)) 
    \bdatw[10]_INST_0 
       (.I0(bcmd[2]),
        .I1(bcmd[1]),
        .I2(\bdatw[10]_INST_0_i_1_n_0 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(bdatw[10]));
  LUT6 #(
    .INIT(64'h0000000000005515)) 
    \bdatw[10]_INST_0_i_1 
       (.I0(\bdatw[10]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0),
        .I2(\fch/eir [10]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[10]_INST_0_i_4_n_0 ),
        .I5(\bdatw[10]_INST_0_i_5_n_0 ),
        .O(\bdatw[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2200202000000000)) 
    \bdatw[10]_INST_0_i_10 
       (.I0(\bdatw[12]_INST_0_i_27_n_0 ),
        .I1(\bdatw[12]_INST_0_i_28_n_0 ),
        .I2(\rgf/sptr/sp [2]),
        .I3(\rgf/ivec/iv [2]),
        .I4(ctl_selb_rn[0]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_11 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\rgf/treg/tr [2]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\rgf/sptr/sp_dec_0 [2]),
        .I4(\rgf/pcnt/pc [2]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[10]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[10]_INST_0_i_12 
       (.I0(\bdatw[10]_INST_0_i_26_n_0 ),
        .I1(\bdatw[10]_INST_0_i_27_n_0 ),
        .I2(\rgf/bank02/gr24 [10]),
        .I3(\rgf/bank02/bbuso2l/gr4_bus1__0 ),
        .I4(\rgf/bank02/gr25 [10]),
        .I5(\rgf/bank02/bbuso2l/gr5_bus1__0 ),
        .O(\rgf/bbus_b02 [10]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[10]_INST_0_i_13 
       (.I0(\bdatw[10]_INST_0_i_28_n_0 ),
        .I1(\bdatw[10]_INST_0_i_29_n_0 ),
        .I2(\rgf/bank13/gr27 [10]),
        .I3(\rgf/bank13/bbuso2l/gr7_bus1__0 ),
        .I4(\rgf/bank13/gr20 [10]),
        .I5(\rgf/bank13/bbuso2l/gr0_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_14 
       (.I0(\rgf/bank13/gr21 [2]),
        .I1(\rgf/bank13/bbuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [2]),
        .I3(\rgf/bank13/bbuso2l/gr2_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[10]_INST_0_i_15 
       (.I0(\bdatw[10]_INST_0_i_30_n_0 ),
        .I1(\rgf/bank13/bbuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr23 [2]),
        .I3(\rgf/bank13/bbuso2l/gr6_bus1__0 ),
        .I4(\rgf/bank13/gr26 [2]),
        .I5(\bdatw[10]_INST_0_i_31_n_0 ),
        .O(\bdatw[10]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[10]_INST_0_i_16 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[0]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\rgf/sreg/sr [2]),
        .O(\bdatw[10]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[10]_INST_0_i_17 
       (.I0(\rgf/bank13/bbuso/gr6_bus1__0 ),
        .I1(\rgf/bank13/gr06 [2]),
        .I2(\bdatw[10]_INST_0_i_32_n_0 ),
        .I3(\bdatw[10]_INST_0_i_33_n_0 ),
        .I4(\rgf/bank13/bbuso/gr7_bus1__0 ),
        .I5(\rgf/bank13/gr07 [2]),
        .O(\bdatw[10]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[10]_INST_0_i_18 
       (.I0(\rgf/bank13/bbuso/gr2_bus1__0 ),
        .I1(\rgf/bank13/gr02 [2]),
        .I2(\bdatw[10]_INST_0_i_34_n_0 ),
        .I3(\bdatw[10]_INST_0_i_35_n_0 ),
        .I4(\rgf/bank13/bbuso/gr3_bus1__0 ),
        .I5(\rgf/bank13/gr03 [2]),
        .O(\bdatw[10]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_19 
       (.I0(\rgf/bank13/gr27 [2]),
        .I1(\rgf/bank13/bbuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [2]),
        .I3(\rgf/bank13/bbuso2l/gr0_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatw[10]_INST_0_i_2 
       (.I0(\bdatw[10]_INST_0_i_6_n_0 ),
        .I1(\bdatw[10]_INST_0_i_7_n_0 ),
        .I2(\bdatw[10]_INST_0_i_8_n_0 ),
        .I3(\rgf/bbus_b02 [2]),
        .I4(\bdatw[10]_INST_0_i_10_n_0 ),
        .I5(\bdatw[10]_INST_0_i_11_n_0 ),
        .O(\bdatw[10]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_20 
       (.I0(\rgf/bank02/gr22 [2]),
        .I1(\rgf/bank02/bbuso2l/gr2_bus1__0 ),
        .I2(\rgf/bank02/gr23 [2]),
        .I3(\rgf/bank02/bbuso2l/gr3_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_21 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [2]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [2]),
        .I4(\rgf/bank02/gr21 [2]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[10]_INST_0_i_22 
       (.I0(\rgf/sreg/sr [1]),
        .I1(\rgf/sreg/sr [0]),
        .I2(\bdatw[12]_INST_0_i_54_n_0 ),
        .I3(\rgf/bank02/gr20 [2]),
        .O(\bdatw[10]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[10]_INST_0_i_23 
       (.I0(\rgf/bank02/bbuso/gr6_bus1__0 ),
        .I1(\rgf/bank02/gr06 [2]),
        .I2(\bdatw[10]_INST_0_i_36_n_0 ),
        .I3(\bdatw[10]_INST_0_i_37_n_0 ),
        .I4(\rgf/bank02/bbuso/gr7_bus1__0 ),
        .I5(\rgf/bank02/gr07 [2]),
        .O(\bdatw[10]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[10]_INST_0_i_24 
       (.I0(\rgf/bank02/bbuso/gr2_bus1__0 ),
        .I1(\rgf/bank02/gr02 [2]),
        .I2(\bdatw[10]_INST_0_i_38_n_0 ),
        .I3(\bdatw[10]_INST_0_i_39_n_0 ),
        .I4(\rgf/bank02/bbuso/gr3_bus1__0 ),
        .I5(\rgf/bank02/gr03 [2]),
        .O(\bdatw[10]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_25 
       (.I0(\rgf/bank02/gr24 [2]),
        .I1(\rgf/bank02/bbuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [2]),
        .I3(\rgf/bank02/bbuso2l/gr5_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[10]_INST_0_i_26 
       (.I0(\bdatw[10]_INST_0_i_40_n_0 ),
        .I1(\rgf/bank02/bbuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [10]),
        .I3(\rgf/bank02/bbuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [10]),
        .O(\bdatw[10]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[10]_INST_0_i_27 
       (.I0(\rgf/bank02/gr20 [10]),
        .I1(\rgf/bank02/bbuso2l/gr0_bus1__0 ),
        .I2(\bdatw[10]_INST_0_i_41_n_0 ),
        .I3(\bdatw[10]_INST_0_i_42_n_0 ),
        .I4(\bdatw[10]_INST_0_i_43_n_0 ),
        .I5(\bdatw[10]_INST_0_i_44_n_0 ),
        .O(\bdatw[10]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[10]_INST_0_i_28 
       (.I0(\bdatw[10]_INST_0_i_45_n_0 ),
        .I1(\rgf/bank13/gr23 [10]),
        .I2(\rgf/bank13/bbuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [10]),
        .I4(\rgf/bank13/bbuso2l/gr4_bus1__0 ),
        .I5(\bdatw[10]_INST_0_i_46_n_0 ),
        .O(\bdatw[10]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[10]_INST_0_i_29 
       (.I0(\rgf/sreg/sr [10]),
        .I1(\rgf/bbus_sel_cr [0]),
        .I2(\bdatw[10]_INST_0_i_47_n_0 ),
        .I3(\bdatw[10]_INST_0_i_48_n_0 ),
        .I4(\bdatw[10]_INST_0_i_49_n_0 ),
        .I5(\bdatw[10]_INST_0_i_50_n_0 ),
        .O(\bdatw[10]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h8088222280888088)) 
    \bdatw[10]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(ctl_selb_0),
        .I2(\fch/ir [9]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[14]_INST_0_i_10_n_0 ),
        .I5(\bdatw[11]_INST_0_i_12_n_0 ),
        .O(\bdatw[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_30 
       (.I0(\rgf/bank_sel [3]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr24 [2]),
        .O(\bdatw[10]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_31 
       (.I0(\rgf/bank_sel [3]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr25 [2]),
        .O(\bdatw[10]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_32 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr05 [2]),
        .O(\bdatw[10]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[10]_INST_0_i_33 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank13/gr00 [2]),
        .O(\bdatw[10]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[10]_INST_0_i_34 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank13/gr01 [2]),
        .O(\bdatw[10]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_35 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr04 [2]),
        .O(\bdatw[10]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_36 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank02/gr05 [2]),
        .O(\bdatw[10]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[10]_INST_0_i_37 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank02/gr00 [2]),
        .O(\bdatw[10]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[10]_INST_0_i_38 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank02/gr01 [2]),
        .O(\bdatw[10]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[10]_INST_0_i_39 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank02/gr04 [2]),
        .O(\bdatw[10]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[10]_INST_0_i_4 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\rgf/ivec/iv [10]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\rgf/sptr/sp [10]),
        .I4(\rgf/bbus_b02 [10]),
        .I5(\bdatw[10]_INST_0_i_13_n_0 ),
        .O(\bdatw[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_40 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [10]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [10]),
        .I4(\rgf/bank02/gr21 [10]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_41 
       (.I0(\rgf/bank02/gr05 [10]),
        .I1(\rgf/bank02/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [10]),
        .I3(\rgf/bank02/bbuso/gr6_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_42 
       (.I0(\rgf/bank02/gr07 [10]),
        .I1(\rgf/bank02/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [10]),
        .I3(\rgf/bank02/bbuso/gr0_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_43 
       (.I0(\rgf/bank02/gr01 [10]),
        .I1(\rgf/bank02/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [10]),
        .I3(\rgf/bank02/bbuso/gr2_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_44 
       (.I0(\rgf/bank02/gr03 [10]),
        .I1(\rgf/bank02/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [10]),
        .I3(\rgf/bank02/bbuso/gr4_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_45 
       (.I0(\rgf/bank13/gr25 [10]),
        .I1(\rgf/bank13/bbuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [10]),
        .I3(\rgf/bank13/bbuso2l/gr6_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_46 
       (.I0(\rgf/bank13/gr21 [10]),
        .I1(\rgf/bank13/bbuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [10]),
        .I3(\rgf/bank13/bbuso2l/gr2_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_47 
       (.I0(\rgf/bank13/gr05 [10]),
        .I1(\rgf/bank13/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [10]),
        .I3(\rgf/bank13/bbuso/gr6_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_48 
       (.I0(\rgf/bank13/gr07 [10]),
        .I1(\rgf/bank13/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [10]),
        .I3(\rgf/bank13/bbuso/gr0_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_48_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_49 
       (.I0(\rgf/bank13/gr01 [10]),
        .I1(\rgf/bank13/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [10]),
        .I3(\rgf/bank13/bbuso/gr2_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[10]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\rgf/treg/tr [10]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\rgf/sptr/sp_dec_0 [10]),
        .I4(\rgf/pcnt/pc [10]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[10]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[10]_INST_0_i_50 
       (.I0(\rgf/bank13/gr03 [10]),
        .I1(\rgf/bank13/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [10]),
        .I3(\rgf/bank13/bbuso/gr4_bus1__0 ),
        .O(\bdatw[10]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h221DEE1DFFFFFFFF)) 
    \bdatw[10]_INST_0_i_6 
       (.I0(\bcmd[0]_INST_0_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_12_n_0 ),
        .I2(\fch/ir [2]),
        .I3(ctl_selb_0),
        .I4(\fch/ir [1]),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[10]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatw[10]_INST_0_i_7 
       (.I0(ctl_selb_0),
        .I1(\fch/eir [2]),
        .I2(\bdatw[15]_INST_0_i_5_n_0 ),
        .O(\bdatw[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[10]_INST_0_i_8 
       (.I0(\bdatw[10]_INST_0_i_14_n_0 ),
        .I1(\bdatw[10]_INST_0_i_15_n_0 ),
        .I2(\bdatw[10]_INST_0_i_16_n_0 ),
        .I3(\bdatw[10]_INST_0_i_17_n_0 ),
        .I4(\bdatw[10]_INST_0_i_18_n_0 ),
        .I5(\bdatw[10]_INST_0_i_19_n_0 ),
        .O(\bdatw[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[10]_INST_0_i_9 
       (.I0(\bdatw[10]_INST_0_i_20_n_0 ),
        .I1(\bdatw[10]_INST_0_i_21_n_0 ),
        .I2(\bdatw[10]_INST_0_i_22_n_0 ),
        .I3(\bdatw[10]_INST_0_i_23_n_0 ),
        .I4(\bdatw[10]_INST_0_i_24_n_0 ),
        .I5(\bdatw[10]_INST_0_i_25_n_0 ),
        .O(\rgf/bbus_b02 [2]));
  LUT4 #(
    .INIT(16'h048C)) 
    \bdatw[11]_INST_0 
       (.I0(bcmd[2]),
        .I1(bcmd[1]),
        .I2(\bdatw[11]_INST_0_i_1_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(bdatw[11]));
  LUT6 #(
    .INIT(64'h0000000000005515)) 
    \bdatw[11]_INST_0_i_1 
       (.I0(\bdatw[11]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0),
        .I2(\fch/eir [11]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[11]_INST_0_i_4_n_0 ),
        .I5(\bdatw[11]_INST_0_i_5_n_0 ),
        .O(\bdatw[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2200202000000000)) 
    \bdatw[11]_INST_0_i_10 
       (.I0(\bdatw[12]_INST_0_i_27_n_0 ),
        .I1(\bdatw[12]_INST_0_i_28_n_0 ),
        .I2(\rgf/sptr/sp [3]),
        .I3(\rgf/ivec/iv [3]),
        .I4(ctl_selb_rn[0]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_11 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\rgf/treg/tr [3]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\rgf/sptr/sp_dec_0 [3]),
        .I4(\rgf/pcnt/pc [3]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[11]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[11]_INST_0_i_12 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [2]),
        .O(\bdatw[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[11]_INST_0_i_13 
       (.I0(\bdatw[11]_INST_0_i_28_n_0 ),
        .I1(\bdatw[11]_INST_0_i_29_n_0 ),
        .I2(\rgf/bank02/gr24 [11]),
        .I3(\rgf/bank02/bbuso2l/gr4_bus1__0 ),
        .I4(\rgf/bank02/gr25 [11]),
        .I5(\rgf/bank02/bbuso2l/gr5_bus1__0 ),
        .O(\rgf/bbus_b02 [11]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[11]_INST_0_i_14 
       (.I0(\bdatw[11]_INST_0_i_30_n_0 ),
        .I1(\bdatw[11]_INST_0_i_31_n_0 ),
        .I2(\rgf/bank13/gr27 [11]),
        .I3(\rgf/bank13/bbuso2l/gr7_bus1__0 ),
        .I4(\rgf/bank13/gr20 [11]),
        .I5(\rgf/bank13/bbuso2l/gr0_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h55555155)) 
    \bdatw[11]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_12_n_0 ),
        .I1(\fch/ir [1]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [0]),
        .I4(\fch/ir [3]),
        .O(\bdatw[11]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_16 
       (.I0(\rgf/bank13/gr21 [3]),
        .I1(\rgf/bank13/bbuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [3]),
        .I3(\rgf/bank13/bbuso2l/gr2_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[11]_INST_0_i_17 
       (.I0(\bdatw[11]_INST_0_i_32_n_0 ),
        .I1(\rgf/bank13/bbuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr23 [3]),
        .I3(\rgf/bank13/bbuso2l/gr6_bus1__0 ),
        .I4(\rgf/bank13/gr26 [3]),
        .I5(\bdatw[11]_INST_0_i_33_n_0 ),
        .O(\bdatw[11]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[11]_INST_0_i_18 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[0]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\rgf/sreg/sr [3]),
        .O(\bdatw[11]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[11]_INST_0_i_19 
       (.I0(\rgf/bank13/bbuso/gr6_bus1__0 ),
        .I1(\rgf/bank13/gr06 [3]),
        .I2(\bdatw[11]_INST_0_i_34_n_0 ),
        .I3(\bdatw[11]_INST_0_i_35_n_0 ),
        .I4(\rgf/bank13/bbuso/gr7_bus1__0 ),
        .I5(\rgf/bank13/gr07 [3]),
        .O(\bdatw[11]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatw[11]_INST_0_i_2 
       (.I0(\bdatw[11]_INST_0_i_6_n_0 ),
        .I1(\bdatw[11]_INST_0_i_7_n_0 ),
        .I2(\bdatw[11]_INST_0_i_8_n_0 ),
        .I3(\rgf/bbus_b02 [3]),
        .I4(\bdatw[11]_INST_0_i_10_n_0 ),
        .I5(\bdatw[11]_INST_0_i_11_n_0 ),
        .O(\bdatw[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[11]_INST_0_i_20 
       (.I0(\rgf/bank13/bbuso/gr2_bus1__0 ),
        .I1(\rgf/bank13/gr02 [3]),
        .I2(\bdatw[11]_INST_0_i_36_n_0 ),
        .I3(\bdatw[11]_INST_0_i_37_n_0 ),
        .I4(\rgf/bank13/bbuso/gr3_bus1__0 ),
        .I5(\rgf/bank13/gr03 [3]),
        .O(\bdatw[11]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_21 
       (.I0(\rgf/bank13/gr27 [3]),
        .I1(\rgf/bank13/bbuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [3]),
        .I3(\rgf/bank13/bbuso2l/gr0_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_22 
       (.I0(\rgf/bank02/gr22 [3]),
        .I1(\rgf/bank02/bbuso2l/gr2_bus1__0 ),
        .I2(\rgf/bank02/gr23 [3]),
        .I3(\rgf/bank02/bbuso2l/gr3_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_23 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [3]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [3]),
        .I4(\rgf/bank02/gr21 [3]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[11]_INST_0_i_24 
       (.I0(\rgf/sreg/sr [1]),
        .I1(\rgf/sreg/sr [0]),
        .I2(\bdatw[12]_INST_0_i_54_n_0 ),
        .I3(\rgf/bank02/gr20 [3]),
        .O(\bdatw[11]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[11]_INST_0_i_25 
       (.I0(\rgf/bank02/bbuso/gr6_bus1__0 ),
        .I1(\rgf/bank02/gr06 [3]),
        .I2(\bdatw[11]_INST_0_i_38_n_0 ),
        .I3(\bdatw[11]_INST_0_i_39_n_0 ),
        .I4(\rgf/bank02/bbuso/gr7_bus1__0 ),
        .I5(\rgf/bank02/gr07 [3]),
        .O(\bdatw[11]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[11]_INST_0_i_26 
       (.I0(\rgf/bank02/bbuso/gr2_bus1__0 ),
        .I1(\rgf/bank02/gr02 [3]),
        .I2(\bdatw[11]_INST_0_i_40_n_0 ),
        .I3(\bdatw[11]_INST_0_i_41_n_0 ),
        .I4(\rgf/bank02/bbuso/gr3_bus1__0 ),
        .I5(\rgf/bank02/gr03 [3]),
        .O(\bdatw[11]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_27 
       (.I0(\rgf/bank02/gr24 [3]),
        .I1(\rgf/bank02/bbuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [3]),
        .I3(\rgf/bank02/bbuso2l/gr5_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[11]_INST_0_i_28 
       (.I0(\bdatw[11]_INST_0_i_42_n_0 ),
        .I1(\rgf/bank02/bbuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [11]),
        .I3(\rgf/bank02/bbuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [11]),
        .O(\bdatw[11]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[11]_INST_0_i_29 
       (.I0(\rgf/bank02/gr20 [11]),
        .I1(\rgf/bank02/bbuso2l/gr0_bus1__0 ),
        .I2(\bdatw[11]_INST_0_i_43_n_0 ),
        .I3(\bdatw[11]_INST_0_i_44_n_0 ),
        .I4(\bdatw[11]_INST_0_i_45_n_0 ),
        .I5(\bdatw[11]_INST_0_i_46_n_0 ),
        .O(\bdatw[11]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h838C8C8C00000000)) 
    \bdatw[11]_INST_0_i_3 
       (.I0(\fch/ir [10]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_13_n_0 ),
        .I4(\bdatw[11]_INST_0_i_12_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[11]_INST_0_i_30 
       (.I0(\bdatw[11]_INST_0_i_47_n_0 ),
        .I1(\rgf/bank13/gr23 [11]),
        .I2(\rgf/bank13/bbuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [11]),
        .I4(\rgf/bank13/bbuso2l/gr4_bus1__0 ),
        .I5(\bdatw[11]_INST_0_i_48_n_0 ),
        .O(\bdatw[11]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[11]_INST_0_i_31 
       (.I0(\rgf/sreg/sr [11]),
        .I1(\rgf/bbus_sel_cr [0]),
        .I2(\bdatw[11]_INST_0_i_49_n_0 ),
        .I3(\bdatw[11]_INST_0_i_50_n_0 ),
        .I4(\bdatw[11]_INST_0_i_51_n_0 ),
        .I5(\bdatw[11]_INST_0_i_52_n_0 ),
        .O(\bdatw[11]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_32 
       (.I0(\rgf/bank_sel [3]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr24 [3]),
        .O(\bdatw[11]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_33 
       (.I0(\rgf/bank_sel [3]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr25 [3]),
        .O(\bdatw[11]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_34 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr05 [3]),
        .O(\bdatw[11]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[11]_INST_0_i_35 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank13/gr00 [3]),
        .O(\bdatw[11]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[11]_INST_0_i_36 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank13/gr01 [3]),
        .O(\bdatw[11]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_37 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr04 [3]),
        .O(\bdatw[11]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_38 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank02/gr05 [3]),
        .O(\bdatw[11]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[11]_INST_0_i_39 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank02/gr00 [3]),
        .O(\bdatw[11]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[11]_INST_0_i_4 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\rgf/ivec/iv [11]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\rgf/sptr/sp [11]),
        .I4(\rgf/bbus_b02 [11]),
        .I5(\bdatw[11]_INST_0_i_14_n_0 ),
        .O(\bdatw[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[11]_INST_0_i_40 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank02/gr01 [3]),
        .O(\bdatw[11]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[11]_INST_0_i_41 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank02/gr04 [3]),
        .O(\bdatw[11]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_42 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [11]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [11]),
        .I4(\rgf/bank02/gr21 [11]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_43 
       (.I0(\rgf/bank02/gr05 [11]),
        .I1(\rgf/bank02/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [11]),
        .I3(\rgf/bank02/bbuso/gr6_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_44 
       (.I0(\rgf/bank02/gr07 [11]),
        .I1(\rgf/bank02/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [11]),
        .I3(\rgf/bank02/bbuso/gr0_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_45 
       (.I0(\rgf/bank02/gr01 [11]),
        .I1(\rgf/bank02/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [11]),
        .I3(\rgf/bank02/bbuso/gr2_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_46 
       (.I0(\rgf/bank02/gr03 [11]),
        .I1(\rgf/bank02/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [11]),
        .I3(\rgf/bank02/bbuso/gr4_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_47 
       (.I0(\rgf/bank13/gr25 [11]),
        .I1(\rgf/bank13/bbuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [11]),
        .I3(\rgf/bank13/bbuso2l/gr6_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_48 
       (.I0(\rgf/bank13/gr21 [11]),
        .I1(\rgf/bank13/bbuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [11]),
        .I3(\rgf/bank13/bbuso2l/gr2_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_48_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_49 
       (.I0(\rgf/bank13/gr05 [11]),
        .I1(\rgf/bank13/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [11]),
        .I3(\rgf/bank13/bbuso/gr6_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[11]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\rgf/treg/tr [11]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\rgf/sptr/sp_dec_0 [11]),
        .I4(\rgf/pcnt/pc [11]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[11]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_50 
       (.I0(\rgf/bank13/gr07 [11]),
        .I1(\rgf/bank13/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [11]),
        .I3(\rgf/bank13/bbuso/gr0_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_51 
       (.I0(\rgf/bank13/gr01 [11]),
        .I1(\rgf/bank13/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [11]),
        .I3(\rgf/bank13/bbuso/gr2_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[11]_INST_0_i_52 
       (.I0(\rgf/bank13/gr03 [11]),
        .I1(\rgf/bank13/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [11]),
        .I3(\rgf/bank13/bbuso/gr4_bus1__0 ),
        .O(\bdatw[11]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h00F20FF2FFFFFFFF)) 
    \bdatw[11]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_12_n_0 ),
        .I1(\fch/ir [3]),
        .I2(\bdatw[11]_INST_0_i_15_n_0 ),
        .I3(ctl_selb_0),
        .I4(\fch/ir [2]),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[11]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatw[11]_INST_0_i_7 
       (.I0(ctl_selb_0),
        .I1(\fch/eir [3]),
        .I2(\bdatw[15]_INST_0_i_5_n_0 ),
        .O(\bdatw[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[11]_INST_0_i_8 
       (.I0(\bdatw[11]_INST_0_i_16_n_0 ),
        .I1(\bdatw[11]_INST_0_i_17_n_0 ),
        .I2(\bdatw[11]_INST_0_i_18_n_0 ),
        .I3(\bdatw[11]_INST_0_i_19_n_0 ),
        .I4(\bdatw[11]_INST_0_i_20_n_0 ),
        .I5(\bdatw[11]_INST_0_i_21_n_0 ),
        .O(\bdatw[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[11]_INST_0_i_9 
       (.I0(\bdatw[11]_INST_0_i_22_n_0 ),
        .I1(\bdatw[11]_INST_0_i_23_n_0 ),
        .I2(\bdatw[11]_INST_0_i_24_n_0 ),
        .I3(\bdatw[11]_INST_0_i_25_n_0 ),
        .I4(\bdatw[11]_INST_0_i_26_n_0 ),
        .I5(\bdatw[11]_INST_0_i_27_n_0 ),
        .O(\rgf/bbus_b02 [3]));
  LUT4 #(
    .INIT(16'h048C)) 
    \bdatw[12]_INST_0 
       (.I0(bcmd[2]),
        .I1(bcmd[1]),
        .I2(\bdatw[12]_INST_0_i_1_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(bdatw[12]));
  LUT6 #(
    .INIT(64'h000000000000AA2A)) 
    \bdatw[12]_INST_0_i_1 
       (.I0(\bdatw[12]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0),
        .I2(\fch/eir [12]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[12]_INST_0_i_4_n_0 ),
        .I5(\bdatw[12]_INST_0_i_5_n_0 ),
        .O(\bdatw[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2200202000000000)) 
    \bdatw[12]_INST_0_i_10 
       (.I0(\bdatw[12]_INST_0_i_27_n_0 ),
        .I1(\bdatw[12]_INST_0_i_28_n_0 ),
        .I2(\rgf/sptr/sp [4]),
        .I3(\rgf/ivec/iv [4]),
        .I4(ctl_selb_rn[0]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAFBFFFFFFFF)) 
    \bdatw[12]_INST_0_i_100 
       (.I0(stat[0]),
        .I1(\bdatw[15]_INST_0_i_65_n_0 ),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [11]),
        .I4(\bdatw[12]_INST_0_i_107_n_0 ),
        .I5(\bdatw[15]_INST_0_i_31_n_0 ),
        .O(\bdatw[12]_INST_0_i_100_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bdatw[12]_INST_0_i_101 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [9]),
        .O(\bdatw[12]_INST_0_i_101_n_0 ));
  LUT5 #(
    .INIT(32'hFF2AFFFF)) 
    \bdatw[12]_INST_0_i_102 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [10]),
        .O(\bdatw[12]_INST_0_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h1000001010100010)) 
    \bdatw[12]_INST_0_i_103 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [6]),
        .O(\bdatw[12]_INST_0_i_103_n_0 ));
  LUT4 #(
    .INIT(16'hF4FF)) 
    \bdatw[12]_INST_0_i_104 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [9]),
        .O(\bdatw[12]_INST_0_i_104_n_0 ));
  LUT3 #(
    .INIT(8'h59)) 
    \bdatw[12]_INST_0_i_105 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [5]),
        .O(\bdatw[12]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h00007500FFFFFFFF)) 
    \bdatw[12]_INST_0_i_106 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [10]),
        .I5(\fch/ir [11]),
        .O(\bdatw[12]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hA800A800A8000000)) 
    \bdatw[12]_INST_0_i_107 
       (.I0(\fch/ir [6]),
        .I1(crdy),
        .I2(\bcmd[1]_INST_0_i_9_n_0 ),
        .I3(\fch/ir [10]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [9]),
        .O(\bdatw[12]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_11 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\rgf/treg/tr [4]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\rgf/sptr/sp_dec_0 [4]),
        .I4(\rgf/pcnt/pc [4]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[12]_INST_0_i_12 
       (.I0(\bdatw[12]_INST_0_i_31_n_0 ),
        .I1(\bdatw[12]_INST_0_i_32_n_0 ),
        .I2(\rgf/bank02/gr24 [12]),
        .I3(\rgf/bank02/bbuso2l/gr4_bus1__0 ),
        .I4(\rgf/bank02/gr25 [12]),
        .I5(\rgf/bank02/bbuso2l/gr5_bus1__0 ),
        .O(\rgf/bbus_b02 [12]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[12]_INST_0_i_13 
       (.I0(\bdatw[12]_INST_0_i_33_n_0 ),
        .I1(\bdatw[12]_INST_0_i_34_n_0 ),
        .I2(\rgf/bank13/gr27 [12]),
        .I3(\rgf/bank13/bbuso2l/gr7_bus1__0 ),
        .I4(\rgf/bank13/gr20 [12]),
        .I5(\rgf/bank13/bbuso2l/gr0_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \bdatw[12]_INST_0_i_14 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [1]),
        .I3(\fch/ir [2]),
        .O(\bdatw[12]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [4]),
        .I1(\rgf/bank13/bbuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [4]),
        .I3(\rgf/bank13/bbuso2l/gr2_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[12]_INST_0_i_16 
       (.I0(\bdatw[12]_INST_0_i_37_n_0 ),
        .I1(\rgf/bank13/bbuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr23 [4]),
        .I3(\rgf/bank13/bbuso2l/gr6_bus1__0 ),
        .I4(\rgf/bank13/gr26 [4]),
        .I5(\bdatw[12]_INST_0_i_40_n_0 ),
        .O(\bdatw[12]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[12]_INST_0_i_17 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[0]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\rgf/sreg/sr [4]),
        .O(\bdatw[12]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[12]_INST_0_i_18 
       (.I0(\rgf/bank13/bbuso/gr6_bus1__0 ),
        .I1(\rgf/bank13/gr06 [4]),
        .I2(\bdatw[12]_INST_0_i_42_n_0 ),
        .I3(\bdatw[12]_INST_0_i_43_n_0 ),
        .I4(\rgf/bank13/bbuso/gr7_bus1__0 ),
        .I5(\rgf/bank13/gr07 [4]),
        .O(\bdatw[12]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[12]_INST_0_i_19 
       (.I0(\rgf/bank13/bbuso/gr2_bus1__0 ),
        .I1(\rgf/bank13/gr02 [4]),
        .I2(\bdatw[12]_INST_0_i_46_n_0 ),
        .I3(\bdatw[12]_INST_0_i_47_n_0 ),
        .I4(\rgf/bank13/bbuso/gr3_bus1__0 ),
        .I5(\rgf/bank13/gr03 [4]),
        .O(\bdatw[12]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatw[12]_INST_0_i_2 
       (.I0(\bdatw[12]_INST_0_i_6_n_0 ),
        .I1(\bdatw[12]_INST_0_i_7_n_0 ),
        .I2(\bdatw[12]_INST_0_i_8_n_0 ),
        .I3(\rgf/bbus_b02 [4]),
        .I4(\bdatw[12]_INST_0_i_10_n_0 ),
        .I5(\bdatw[12]_INST_0_i_11_n_0 ),
        .O(\bdatw[12]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_20 
       (.I0(\rgf/bank13/gr27 [4]),
        .I1(\rgf/bank13/bbuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [4]),
        .I3(\rgf/bank13/bbuso2l/gr0_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_21 
       (.I0(\rgf/bank02/gr22 [4]),
        .I1(\rgf/bank02/bbuso2l/gr2_bus1__0 ),
        .I2(\rgf/bank02/gr23 [4]),
        .I3(\rgf/bank02/bbuso2l/gr3_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_22 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [4]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [4]),
        .I4(\rgf/bank02/gr21 [4]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[12]_INST_0_i_23 
       (.I0(\rgf/sreg/sr [1]),
        .I1(\rgf/sreg/sr [0]),
        .I2(\bdatw[12]_INST_0_i_54_n_0 ),
        .I3(\rgf/bank02/gr20 [4]),
        .O(\bdatw[12]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[12]_INST_0_i_24 
       (.I0(\rgf/bank02/bbuso/gr6_bus1__0 ),
        .I1(\rgf/bank02/gr06 [4]),
        .I2(\bdatw[12]_INST_0_i_56_n_0 ),
        .I3(\bdatw[12]_INST_0_i_57_n_0 ),
        .I4(\rgf/bank02/bbuso/gr7_bus1__0 ),
        .I5(\rgf/bank02/gr07 [4]),
        .O(\bdatw[12]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[12]_INST_0_i_25 
       (.I0(\rgf/bank02/bbuso/gr2_bus1__0 ),
        .I1(\rgf/bank02/gr02 [4]),
        .I2(\bdatw[12]_INST_0_i_60_n_0 ),
        .I3(\bdatw[12]_INST_0_i_61_n_0 ),
        .I4(\rgf/bank02/bbuso/gr3_bus1__0 ),
        .I5(\rgf/bank02/gr03 [4]),
        .O(\bdatw[12]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_26 
       (.I0(\rgf/bank02/gr24 [4]),
        .I1(\rgf/bank02/bbuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [4]),
        .I3(\rgf/bank02/bbuso2l/gr5_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatw[12]_INST_0_i_27 
       (.I0(\bdatw[15]_INST_0_i_12_n_0 ),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(ctl_selb_0),
        .O(\bdatw[12]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444545555)) 
    \bdatw[12]_INST_0_i_28 
       (.I0(stat[2]),
        .I1(\bdatw[12]_INST_0_i_63_n_0 ),
        .I2(\fch/ir [2]),
        .I3(\bdatw[12]_INST_0_i_64_n_0 ),
        .I4(\bdatw[12]_INST_0_i_65_n_0 ),
        .I5(\bdatw[12]_INST_0_i_66_n_0 ),
        .O(\bdatw[12]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAEEEAEA)) 
    \bdatw[12]_INST_0_i_29 
       (.I0(\bdatw[12]_INST_0_i_67_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(\bdatw[12]_INST_0_i_68_n_0 ),
        .I3(\bdatw[12]_INST_0_i_64_n_0 ),
        .I4(\fch/ir [0]),
        .I5(\bdatw[12]_INST_0_i_69_n_0 ),
        .O(ctl_selb_rn[0]));
  LUT6 #(
    .INIT(64'hAAAAACAAFFFFFFFF)) 
    \bdatw[12]_INST_0_i_3 
       (.I0(\bdatw[14]_INST_0_i_9_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[14]_INST_0_i_10_n_0 ),
        .I3(\fch/ir [2]),
        .I4(\fch/ir [1]),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF8A)) 
    \bdatw[12]_INST_0_i_30 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(\bdatw[12]_INST_0_i_70_n_0 ),
        .I2(\bdatw[12]_INST_0_i_71_n_0 ),
        .I3(stat[0]),
        .I4(\bdatw[12]_INST_0_i_72_n_0 ),
        .I5(\bcmd[1]_INST_0_i_1_n_0 ),
        .O(ctl_selb_rn[1]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[12]_INST_0_i_31 
       (.I0(\bdatw[12]_INST_0_i_73_n_0 ),
        .I1(\rgf/bank02/bbuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [12]),
        .I3(\rgf/bank02/bbuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [12]),
        .O(\bdatw[12]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[12]_INST_0_i_32 
       (.I0(\rgf/bank02/gr20 [12]),
        .I1(\rgf/bank02/bbuso2l/gr0_bus1__0 ),
        .I2(\bdatw[12]_INST_0_i_74_n_0 ),
        .I3(\bdatw[12]_INST_0_i_75_n_0 ),
        .I4(\bdatw[12]_INST_0_i_76_n_0 ),
        .I5(\bdatw[12]_INST_0_i_77_n_0 ),
        .O(\bdatw[12]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[12]_INST_0_i_33 
       (.I0(\bdatw[12]_INST_0_i_78_n_0 ),
        .I1(\rgf/bank13/gr23 [12]),
        .I2(\rgf/bank13/bbuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [12]),
        .I4(\rgf/bank13/bbuso2l/gr4_bus1__0 ),
        .I5(\bdatw[12]_INST_0_i_79_n_0 ),
        .O(\bdatw[12]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[12]_INST_0_i_34 
       (.I0(\rgf/sreg/sr [12]),
        .I1(\rgf/bbus_sel_cr [0]),
        .I2(\bdatw[12]_INST_0_i_80_n_0 ),
        .I3(\bdatw[12]_INST_0_i_81_n_0 ),
        .I4(\bdatw[12]_INST_0_i_82_n_0 ),
        .I5(\bdatw[12]_INST_0_i_83_n_0 ),
        .O(\bdatw[12]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_35 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(\rgf/bank_sel [3]),
        .O(\rgf/bank13/bbuso2l/gr1_bus1__0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_36 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(\rgf/bank_sel [3]),
        .O(\rgf/bank13/bbuso2l/gr2_bus1__0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_37 
       (.I0(\rgf/bank_sel [3]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr24 [4]),
        .O(\bdatw[12]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_38 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_91_n_0 ),
        .I5(\rgf/bank_sel [3]),
        .O(\rgf/bank13/bbuso2l/gr3_bus1__0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_39 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(\rgf/bank_sel [3]),
        .O(\rgf/bank13/bbuso2l/gr6_bus1__0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[12]_INST_0_i_4 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\rgf/ivec/iv [12]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\rgf/sptr/sp [12]),
        .I4(\rgf/bbus_b02 [12]),
        .I5(\bdatw[12]_INST_0_i_13_n_0 ),
        .O(\bdatw[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_40 
       (.I0(\rgf/bank_sel [3]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr25 [4]),
        .O(\bdatw[12]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_41 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(\rgf/bank_sel [1]),
        .O(\rgf/bank13/bbuso/gr6_bus1__0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_42 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr05 [4]),
        .O(\bdatw[12]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_43 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank13/gr00 [4]),
        .O(\bdatw[12]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_44 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_91_n_0 ),
        .I5(\rgf/bank_sel [1]),
        .O(\rgf/bank13/bbuso/gr7_bus1__0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_45 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(\rgf/bank_sel [1]),
        .O(\rgf/bank13/bbuso/gr2_bus1__0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_46 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank13/gr01 [4]),
        .O(\bdatw[12]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_47 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr04 [4]),
        .O(\bdatw[12]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_48 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_91_n_0 ),
        .I5(\rgf/bank_sel [1]),
        .O(\rgf/bank13/bbuso/gr3_bus1__0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_49 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(\rgf/bank_sel [2]),
        .O(\rgf/bank02/bbuso2l/gr2_bus1__0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\rgf/treg/tr [12]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\rgf/sptr/sp_dec_0 [12]),
        .I4(\rgf/pcnt/pc [12]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_50 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_91_n_0 ),
        .I5(\rgf/bank_sel [2]),
        .O(\rgf/bank02/bbuso2l/gr3_bus1__0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_51 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_91_n_0 ),
        .I5(\rgf/bank_sel [2]),
        .O(\rgf/bank02/bbuso2l/gr7_bus1__0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_52 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(\rgf/bank_sel [2]),
        .O(\rgf/bank02/bbuso2l/gr6_bus1__0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_53 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(\rgf/bank_sel [2]),
        .O(\rgf/bank02/bbuso2l/gr1_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \bdatw[12]_INST_0_i_54 
       (.I0(ctl_selb_rn[0]),
        .I1(ctl_selb_rn[1]),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_14_n_0 ),
        .I5(ctl_selb_0),
        .O(\bdatw[12]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_55 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(\rgf/bank_sel [0]),
        .O(\rgf/bank02/bbuso/gr6_bus1__0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_56 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank02/gr05 [4]),
        .O(\bdatw[12]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_57 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank02/gr00 [4]),
        .O(\bdatw[12]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_58 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_91_n_0 ),
        .I5(\rgf/bank_sel [0]),
        .O(\rgf/bank02/bbuso/gr7_bus1__0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_59 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[12]_INST_0_i_84_n_0 ),
        .I5(\rgf/bank_sel [0]),
        .O(\rgf/bank02/bbuso/gr2_bus1__0 ));
  LUT6 #(
    .INIT(64'hCC1BEE1BFFFFFFFF)) 
    \bdatw[12]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_12_n_0 ),
        .I1(\bdatw[12]_INST_0_i_14_n_0 ),
        .I2(\fch/ir [4]),
        .I3(ctl_selb_0),
        .I4(\fch/ir [3]),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[12]_INST_0_i_60 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank02/gr01 [4]),
        .O(\bdatw[12]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[12]_INST_0_i_61 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank02/gr04 [4]),
        .O(\bdatw[12]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[12]_INST_0_i_62 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_91_n_0 ),
        .I5(\rgf/bank_sel [0]),
        .O(\rgf/bank02/bbuso/gr3_bus1__0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \bdatw[12]_INST_0_i_63 
       (.I0(\bdatw[12]_INST_0_i_86_n_0 ),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [2]),
        .I3(stat[1]),
        .I4(stat[0]),
        .I5(\fch/ir [15]),
        .O(\bdatw[12]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h08888888AAAAAAAA)) 
    \bdatw[12]_INST_0_i_64 
       (.I0(\bdatw[12]_INST_0_i_87_n_0 ),
        .I1(\bdatw[12]_INST_0_i_88_n_0 ),
        .I2(\bdatw[12]_INST_0_i_89_n_0 ),
        .I3(\fch/ir [8]),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .I5(\fch/ir [6]),
        .O(\bdatw[12]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h11515555FFFFFFFF)) 
    \bdatw[12]_INST_0_i_65 
       (.I0(\bdatw[12]_INST_0_i_90_n_0 ),
        .I1(\ccmd[4]_INST_0_i_11_n_0 ),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [2]),
        .I5(\fch/ir [11]),
        .O(\bdatw[12]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \bdatw[12]_INST_0_i_66 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [12]),
        .I2(stat[0]),
        .I3(\fch/ir [13]),
        .I4(stat[1]),
        .I5(\fch/ir [15]),
        .O(\bdatw[12]_INST_0_i_66_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \bdatw[12]_INST_0_i_67 
       (.I0(stat[0]),
        .I1(\bdatw[12]_INST_0_i_91_n_0 ),
        .I2(\iv[15]_i_38_n_0 ),
        .O(\bdatw[12]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0D0D0FFD0D0)) 
    \bdatw[12]_INST_0_i_68 
       (.I0(\bdatw[12]_INST_0_i_92_n_0 ),
        .I1(\bdatw[12]_INST_0_i_93_n_0 ),
        .I2(\fch/ir [11]),
        .I3(\bdatw[12]_INST_0_i_94_n_0 ),
        .I4(\bdatw[12]_INST_0_i_95_n_0 ),
        .I5(\ccmd[4]_INST_0_i_20_n_0 ),
        .O(\bdatw[12]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAABABABABABABABA)) 
    \bdatw[12]_INST_0_i_69 
       (.I0(\bcmd[1]_INST_0_i_1_n_0 ),
        .I1(\bdatw[12]_INST_0_i_96_n_0 ),
        .I2(stat[0]),
        .I3(\fch/ir [10]),
        .I4(\ccmd[3]_INST_0_i_8_n_0 ),
        .I5(\bdatw[12]_INST_0_i_97_n_0 ),
        .O(\bdatw[12]_INST_0_i_69_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatw[12]_INST_0_i_7 
       (.I0(ctl_selb_0),
        .I1(\fch/eir [4]),
        .I2(\bdatw[15]_INST_0_i_5_n_0 ),
        .O(\bdatw[12]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h80FF0000)) 
    \bdatw[12]_INST_0_i_70 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [6]),
        .I2(\bdatw[12]_INST_0_i_89_n_0 ),
        .I3(\bdatw[12]_INST_0_i_87_n_0 ),
        .I4(\fch/ir [1]),
        .O(\bdatw[12]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA800A8A8)) 
    \bdatw[12]_INST_0_i_71 
       (.I0(\fch/ir [10]),
        .I1(\ccmd[2]_INST_0_i_14_n_0 ),
        .I2(\ccmd[4]_INST_0_i_10_n_0 ),
        .I3(\bdatw[12]_INST_0_i_98_n_0 ),
        .I4(\fch/ir [1]),
        .I5(\bdatw[12]_INST_0_i_99_n_0 ),
        .O(\bdatw[12]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h7F0000007F007F00)) 
    \bdatw[12]_INST_0_i_72 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [1]),
        .I2(\bdatw[12]_INST_0_i_86_n_0 ),
        .I3(stat[0]),
        .I4(\bdatw[15]_INST_0_i_47_n_0 ),
        .I5(\iv[15]_i_38_n_0 ),
        .O(\bdatw[12]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[12]_INST_0_i_73 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [12]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [12]),
        .I4(\rgf/bank02/gr21 [12]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_73_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_74 
       (.I0(\rgf/bank02/gr05 [12]),
        .I1(\rgf/bank02/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [12]),
        .I3(\rgf/bank02/bbuso/gr6_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_74_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_75 
       (.I0(\rgf/bank02/gr07 [12]),
        .I1(\rgf/bank02/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [12]),
        .I3(\rgf/bank02/bbuso/gr0_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_75_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_76 
       (.I0(\rgf/bank02/gr01 [12]),
        .I1(\rgf/bank02/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [12]),
        .I3(\rgf/bank02/bbuso/gr2_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_76_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_77 
       (.I0(\rgf/bank02/gr03 [12]),
        .I1(\rgf/bank02/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [12]),
        .I3(\rgf/bank02/bbuso/gr4_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_77_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_78 
       (.I0(\rgf/bank13/gr25 [12]),
        .I1(\rgf/bank13/bbuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [12]),
        .I3(\rgf/bank13/bbuso2l/gr6_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_79 
       (.I0(\rgf/bank13/gr21 [12]),
        .I1(\rgf/bank13/bbuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [12]),
        .I3(\rgf/bank13/bbuso2l/gr2_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[12]_INST_0_i_8 
       (.I0(\bdatw[12]_INST_0_i_15_n_0 ),
        .I1(\bdatw[12]_INST_0_i_16_n_0 ),
        .I2(\bdatw[12]_INST_0_i_17_n_0 ),
        .I3(\bdatw[12]_INST_0_i_18_n_0 ),
        .I4(\bdatw[12]_INST_0_i_19_n_0 ),
        .I5(\bdatw[12]_INST_0_i_20_n_0 ),
        .O(\bdatw[12]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_80 
       (.I0(\rgf/bank13/gr05 [12]),
        .I1(\rgf/bank13/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [12]),
        .I3(\rgf/bank13/bbuso/gr6_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_80_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_81 
       (.I0(\rgf/bank13/gr07 [12]),
        .I1(\rgf/bank13/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [12]),
        .I3(\rgf/bank13/bbuso/gr0_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_81_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_82 
       (.I0(\rgf/bank13/gr01 [12]),
        .I1(\rgf/bank13/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [12]),
        .I3(\rgf/bank13/bbuso/gr2_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[12]_INST_0_i_83 
       (.I0(\rgf/bank13/gr03 [12]),
        .I1(\rgf/bank13/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [12]),
        .I3(\rgf/bank13/bbuso/gr4_bus1__0 ),
        .O(\bdatw[12]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'h5400540054005454)) 
    \bdatw[12]_INST_0_i_84 
       (.I0(\bdatw[15]_INST_0_i_107_n_0 ),
        .I1(stat[0]),
        .I2(\bdatw[15]_INST_0_i_108_n_0 ),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(\bdatw[15]_INST_0_i_109_n_0 ),
        .I5(\bdatw[12]_INST_0_i_67_n_0 ),
        .O(\bdatw[12]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAFFFFAFAF)) 
    \bdatw[12]_INST_0_i_85 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_33_n_0 ),
        .I2(\bdatw[15]_INST_0_i_32_n_0 ),
        .I3(\bdatw[12]_INST_0_i_100_n_0 ),
        .I4(\bcmd[1]_INST_0_i_1_n_0 ),
        .I5(\bcmd[2]_INST_0_i_2_n_0 ),
        .O(\bdatw[12]_INST_0_i_85_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \bdatw[12]_INST_0_i_86 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [12]),
        .I4(\ccmd[3]_INST_0_i_5_n_0 ),
        .O(\bdatw[12]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFAAAAEFFBAAAA)) 
    \bdatw[12]_INST_0_i_87 
       (.I0(\bdatw[15]_INST_0_i_46_n_0 ),
        .I1(\bdatw[12]_INST_0_i_101_n_0 ),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [10]),
        .I4(\bdatw[12]_INST_0_i_102_n_0 ),
        .I5(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\bdatw[12]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFBFFFBFB)) 
    \bdatw[12]_INST_0_i_88 
       (.I0(\ccmd[4]_INST_0_i_20_n_0 ),
        .I1(\fch/ir [9]),
        .I2(\bcmd[1]_INST_0_i_11_n_0 ),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [4]),
        .I5(\fch/ir [3]),
        .O(\bdatw[12]_INST_0_i_88_n_0 ));
  LUT5 #(
    .INIT(32'h000000A8)) 
    \bdatw[12]_INST_0_i_89 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [9]),
        .I3(crdy),
        .I4(\fch/ir [11]),
        .O(\bdatw[12]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[12]_INST_0_i_9 
       (.I0(\bdatw[12]_INST_0_i_21_n_0 ),
        .I1(\bdatw[12]_INST_0_i_22_n_0 ),
        .I2(\bdatw[12]_INST_0_i_23_n_0 ),
        .I3(\bdatw[12]_INST_0_i_24_n_0 ),
        .I4(\bdatw[12]_INST_0_i_25_n_0 ),
        .I5(\bdatw[12]_INST_0_i_26_n_0 ),
        .O(\rgf/bbus_b02 [4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFCA000000)) 
    \bdatw[12]_INST_0_i_90 
       (.I0(\ccmd[4]_INST_0_i_10_n_0 ),
        .I1(crdy),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [2]),
        .I4(\bcmd[0]_INST_0_i_7_n_0 ),
        .I5(\bdatw[12]_INST_0_i_103_n_0 ),
        .O(\bdatw[12]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hCF0DFFCFFFFDFFFF)) 
    \bdatw[12]_INST_0_i_91 
       (.I0(fch_irq_req),
        .I1(\fch/ir [1]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [0]),
        .I5(crdy),
        .O(\bdatw[12]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFEFEFEFFFEF)) 
    \bdatw[12]_INST_0_i_92 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [0]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [6]),
        .O(\bdatw[12]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hCA00FFFF00000000)) 
    \bdatw[12]_INST_0_i_93 
       (.I0(\ccmd[4]_INST_0_i_10_n_0 ),
        .I1(crdy),
        .I2(\fch/ir [8]),
        .I3(\bcmd[0]_INST_0_i_7_n_0 ),
        .I4(\bdatw[12]_INST_0_i_104_n_0 ),
        .I5(\fch/ir [0]),
        .O(\bdatw[12]_INST_0_i_93_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \bdatw[12]_INST_0_i_94 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [3]),
        .O(\bdatw[12]_INST_0_i_94_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[12]_INST_0_i_95 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [10]),
        .O(\bdatw[12]_INST_0_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \bdatw[12]_INST_0_i_96 
       (.I0(\ccmd[4]_INST_0_i_19_n_0 ),
        .I1(\bcmd[1]_INST_0_i_7_n_0 ),
        .I2(ctl_fetch_ext_fl_i_7_n_0),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [7]),
        .I5(\bdatw[15]_INST_0_i_47_n_0 ),
        .O(\bdatw[12]_INST_0_i_96_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \bdatw[12]_INST_0_i_97 
       (.I0(\fch/ir [0]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [6]),
        .O(\bdatw[12]_INST_0_i_97_n_0 ));
  LUT6 #(
    .INIT(64'h1DCCDDCCDDCCDDCC)) 
    \bdatw[12]_INST_0_i_98 
       (.I0(crdy),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [7]),
        .I5(\bdatw[12]_INST_0_i_105_n_0 ),
        .O(\bdatw[12]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hABBBBBABABABBBAB)) 
    \bdatw[12]_INST_0_i_99 
       (.I0(\bdatw[12]_INST_0_i_106_n_0 ),
        .I1(\ccmd[4]_INST_0_i_18_n_0 ),
        .I2(\fch/ir [1]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [6]),
        .O(\bdatw[12]_INST_0_i_99_n_0 ));
  LUT4 #(
    .INIT(16'h048C)) 
    \bdatw[13]_INST_0 
       (.I0(bcmd[2]),
        .I1(bcmd[1]),
        .I2(\bdatw[13]_INST_0_i_1_n_0 ),
        .I3(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(bdatw[13]));
  LUT6 #(
    .INIT(64'h0000000000005515)) 
    \bdatw[13]_INST_0_i_1 
       (.I0(\bdatw[13]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0),
        .I2(\fch/eir [13]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[13]_INST_0_i_4_n_0 ),
        .I5(\bdatw[13]_INST_0_i_5_n_0 ),
        .O(\bdatw[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_10 
       (.I0(\bdatw[13]_INST_0_i_15_n_0 ),
        .I1(\bdatw[13]_INST_0_i_16_n_0 ),
        .I2(\rgf/bank02/gr24 [13]),
        .I3(\rgf/bank02/bbuso2l/gr4_bus1__0 ),
        .I4(\rgf/bank02/gr25 [13]),
        .I5(\rgf/bank02/bbuso2l/gr5_bus1__0 ),
        .O(\rgf/bbus_b02 [13]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_11 
       (.I0(\bdatw[13]_INST_0_i_17_n_0 ),
        .I1(\bdatw[13]_INST_0_i_18_n_0 ),
        .I2(\rgf/bank13/gr27 [13]),
        .I3(\rgf/bank13/bbuso2l/gr7_bus1__0 ),
        .I4(\rgf/bank13/gr20 [13]),
        .I5(\rgf/bank13/bbuso2l/gr0_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \bdatw[13]_INST_0_i_12 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [1]),
        .I2(\fch/ir [0]),
        .I3(\fch/ir [3]),
        .I4(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_13 
       (.I0(\bdatw[13]_INST_0_i_19_n_0 ),
        .I1(\bdatw[13]_INST_0_i_20_n_0 ),
        .I2(\rgf/bank02/gr24 [5]),
        .I3(\rgf/bank02/bbuso2l/gr4_bus1__0 ),
        .I4(\rgf/bank02/gr25 [5]),
        .I5(\rgf/bank02/bbuso2l/gr5_bus1__0 ),
        .O(\rgf/bbus_b02 [5]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[13]_INST_0_i_14 
       (.I0(\bdatw[13]_INST_0_i_21_n_0 ),
        .I1(\bdatw[13]_INST_0_i_22_n_0 ),
        .I2(\rgf/bank13/gr27 [5]),
        .I3(\rgf/bank13/bbuso2l/gr7_bus1__0 ),
        .I4(\rgf/bank13/gr20 [5]),
        .I5(\rgf/bank13/bbuso2l/gr0_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[13]_INST_0_i_15 
       (.I0(\bdatw[13]_INST_0_i_23_n_0 ),
        .I1(\rgf/bank02/bbuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [13]),
        .I3(\rgf/bank02/bbuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [13]),
        .O(\bdatw[13]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_16 
       (.I0(\rgf/bank02/gr20 [13]),
        .I1(\rgf/bank02/bbuso2l/gr0_bus1__0 ),
        .I2(\bdatw[13]_INST_0_i_24_n_0 ),
        .I3(\bdatw[13]_INST_0_i_25_n_0 ),
        .I4(\bdatw[13]_INST_0_i_26_n_0 ),
        .I5(\bdatw[13]_INST_0_i_27_n_0 ),
        .O(\bdatw[13]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[13]_INST_0_i_17 
       (.I0(\bdatw[13]_INST_0_i_28_n_0 ),
        .I1(\rgf/bank13/gr23 [13]),
        .I2(\rgf/bank13/bbuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [13]),
        .I4(\rgf/bank13/bbuso2l/gr4_bus1__0 ),
        .I5(\bdatw[13]_INST_0_i_29_n_0 ),
        .O(\bdatw[13]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_18 
       (.I0(\rgf/sreg/sr [13]),
        .I1(\rgf/bbus_sel_cr [0]),
        .I2(\bdatw[13]_INST_0_i_30_n_0 ),
        .I3(\bdatw[13]_INST_0_i_31_n_0 ),
        .I4(\bdatw[13]_INST_0_i_32_n_0 ),
        .I5(\bdatw[13]_INST_0_i_33_n_0 ),
        .O(\bdatw[13]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[13]_INST_0_i_19 
       (.I0(\bdatw[13]_INST_0_i_34_n_0 ),
        .I1(\rgf/bank02/bbuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [5]),
        .I3(\rgf/bank02/bbuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [5]),
        .O(\bdatw[13]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AA2A)) 
    \bdatw[13]_INST_0_i_2 
       (.I0(\bdatw[13]_INST_0_i_6_n_0 ),
        .I1(ctl_selb_0),
        .I2(\fch/eir [5]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[13]_INST_0_i_7_n_0 ),
        .I5(\bdatw[13]_INST_0_i_8_n_0 ),
        .O(\bdatw[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_20 
       (.I0(\rgf/bank02/gr20 [5]),
        .I1(\rgf/bank02/bbuso2l/gr0_bus1__0 ),
        .I2(\bdatw[13]_INST_0_i_35_n_0 ),
        .I3(\bdatw[13]_INST_0_i_36_n_0 ),
        .I4(\bdatw[13]_INST_0_i_37_n_0 ),
        .I5(\bdatw[13]_INST_0_i_38_n_0 ),
        .O(\bdatw[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[13]_INST_0_i_21 
       (.I0(\bdatw[13]_INST_0_i_39_n_0 ),
        .I1(\rgf/bank13/gr23 [5]),
        .I2(\rgf/bank13/bbuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [5]),
        .I4(\rgf/bank13/bbuso2l/gr4_bus1__0 ),
        .I5(\bdatw[13]_INST_0_i_40_n_0 ),
        .O(\bdatw[13]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[13]_INST_0_i_22 
       (.I0(\rgf/sreg/sr [5]),
        .I1(\rgf/bbus_sel_cr [0]),
        .I2(\bdatw[13]_INST_0_i_41_n_0 ),
        .I3(\bdatw[13]_INST_0_i_42_n_0 ),
        .I4(\bdatw[13]_INST_0_i_43_n_0 ),
        .I5(\bdatw[13]_INST_0_i_44_n_0 ),
        .O(\bdatw[13]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_23 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [13]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [13]),
        .I4(\rgf/bank02/gr21 [13]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_24 
       (.I0(\rgf/bank02/gr05 [13]),
        .I1(\rgf/bank02/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [13]),
        .I3(\rgf/bank02/bbuso/gr6_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_25 
       (.I0(\rgf/bank02/gr07 [13]),
        .I1(\rgf/bank02/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [13]),
        .I3(\rgf/bank02/bbuso/gr0_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_26 
       (.I0(\rgf/bank02/gr01 [13]),
        .I1(\rgf/bank02/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [13]),
        .I3(\rgf/bank02/bbuso/gr2_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_27 
       (.I0(\rgf/bank02/gr03 [13]),
        .I1(\rgf/bank02/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [13]),
        .I3(\rgf/bank02/bbuso/gr4_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_28 
       (.I0(\rgf/bank13/gr25 [13]),
        .I1(\rgf/bank13/bbuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [13]),
        .I3(\rgf/bank13/bbuso2l/gr6_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_29 
       (.I0(\rgf/bank13/gr21 [13]),
        .I1(\rgf/bank13/bbuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [13]),
        .I3(\rgf/bank13/bbuso2l/gr2_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h88883CCC00000000)) 
    \bdatw[13]_INST_0_i_3 
       (.I0(\fch/ir [10]),
        .I1(ctl_selb_0),
        .I2(\bdatw[13]_INST_0_i_9_n_0 ),
        .I3(\bdatw[15]_INST_0_i_13_n_0 ),
        .I4(\bdatw[15]_INST_0_i_12_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[13]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_30 
       (.I0(\rgf/bank13/gr05 [13]),
        .I1(\rgf/bank13/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [13]),
        .I3(\rgf/bank13/bbuso/gr6_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_31 
       (.I0(\rgf/bank13/gr07 [13]),
        .I1(\rgf/bank13/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [13]),
        .I3(\rgf/bank13/bbuso/gr0_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_32 
       (.I0(\rgf/bank13/gr01 [13]),
        .I1(\rgf/bank13/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [13]),
        .I3(\rgf/bank13/bbuso/gr2_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_33 
       (.I0(\rgf/bank13/gr03 [13]),
        .I1(\rgf/bank13/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [13]),
        .I3(\rgf/bank13/bbuso/gr4_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_34 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [5]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [5]),
        .I4(\rgf/bank02/gr21 [5]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_35 
       (.I0(\rgf/bank02/gr05 [5]),
        .I1(\rgf/bank02/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [5]),
        .I3(\rgf/bank02/bbuso/gr6_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_36 
       (.I0(\rgf/bank02/gr07 [5]),
        .I1(\rgf/bank02/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [5]),
        .I3(\rgf/bank02/bbuso/gr0_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_37 
       (.I0(\rgf/bank02/gr01 [5]),
        .I1(\rgf/bank02/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [5]),
        .I3(\rgf/bank02/bbuso/gr2_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_38 
       (.I0(\rgf/bank02/gr03 [5]),
        .I1(\rgf/bank02/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [5]),
        .I3(\rgf/bank02/bbuso/gr4_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_39 
       (.I0(\rgf/bank13/gr25 [5]),
        .I1(\rgf/bank13/bbuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [5]),
        .I3(\rgf/bank13/bbuso2l/gr6_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[13]_INST_0_i_4 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\rgf/ivec/iv [13]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\rgf/sptr/sp [13]),
        .I4(\rgf/bbus_b02 [13]),
        .I5(\bdatw[13]_INST_0_i_11_n_0 ),
        .O(\bdatw[13]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_40 
       (.I0(\rgf/bank13/gr21 [5]),
        .I1(\rgf/bank13/bbuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [5]),
        .I3(\rgf/bank13/bbuso2l/gr2_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_41 
       (.I0(\rgf/bank13/gr05 [5]),
        .I1(\rgf/bank13/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [5]),
        .I3(\rgf/bank13/bbuso/gr6_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_42 
       (.I0(\rgf/bank13/gr07 [5]),
        .I1(\rgf/bank13/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [5]),
        .I3(\rgf/bank13/bbuso/gr0_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_43 
       (.I0(\rgf/bank13/gr01 [5]),
        .I1(\rgf/bank13/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [5]),
        .I3(\rgf/bank13/bbuso/gr2_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[13]_INST_0_i_44 
       (.I0(\rgf/bank13/gr03 [5]),
        .I1(\rgf/bank13/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [5]),
        .I3(\rgf/bank13/bbuso/gr4_bus1__0 ),
        .O(\bdatw[13]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\rgf/treg/tr [13]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\rgf/sptr/sp_dec_0 [13]),
        .I4(\rgf/pcnt/pc [13]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAA15FA15FFFFFFFF)) 
    \bdatw[13]_INST_0_i_6 
       (.I0(\bdatw[13]_INST_0_i_12_n_0 ),
        .I1(\fch/ir [5]),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(ctl_selb_0),
        .I4(\fch/ir [4]),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[13]_INST_0_i_7 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\rgf/ivec/iv [5]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\rgf/sptr/sp [5]),
        .I4(\rgf/bbus_b02 [5]),
        .I5(\bdatw[13]_INST_0_i_14_n_0 ),
        .O(\bdatw[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[13]_INST_0_i_8 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\rgf/treg/tr [5]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\rgf/sptr/sp_dec_0 [5]),
        .I4(\rgf/pcnt/pc [5]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[13]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatw[13]_INST_0_i_9 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [1]),
        .O(\bdatw[13]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h048C)) 
    \bdatw[14]_INST_0 
       (.I0(bcmd[2]),
        .I1(bcmd[1]),
        .I2(\bdatw[14]_INST_0_i_1_n_0 ),
        .I3(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(bdatw[14]));
  LUT6 #(
    .INIT(64'h000000000000AA2A)) 
    \bdatw[14]_INST_0_i_1 
       (.I0(\bdatw[14]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0),
        .I2(\fch/eir [14]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[14]_INST_0_i_4_n_0 ),
        .I5(\bdatw[14]_INST_0_i_5_n_0 ),
        .O(\bdatw[14]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \bdatw[14]_INST_0_i_10 
       (.I0(\bdatw[15]_INST_0_i_12_n_0 ),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [3]),
        .O(\bdatw[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_11 
       (.I0(\bdatw[14]_INST_0_i_16_n_0 ),
        .I1(\bdatw[14]_INST_0_i_17_n_0 ),
        .I2(\rgf/bank02/gr24 [14]),
        .I3(\rgf/bank02/bbuso2l/gr4_bus1__0 ),
        .I4(\rgf/bank02/gr25 [14]),
        .I5(\rgf/bank02/bbuso2l/gr5_bus1__0 ),
        .O(\rgf/bbus_b02 [14]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_12 
       (.I0(\bdatw[14]_INST_0_i_18_n_0 ),
        .I1(\bdatw[14]_INST_0_i_19_n_0 ),
        .I2(\rgf/bank13/gr27 [14]),
        .I3(\rgf/bank13/bbuso2l/gr7_bus1__0 ),
        .I4(\rgf/bank13/gr20 [14]),
        .I5(\rgf/bank13/bbuso2l/gr0_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h55555515)) 
    \bdatw[14]_INST_0_i_13 
       (.I0(\bdatw[15]_INST_0_i_12_n_0 ),
        .I1(\fch/ir [1]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [0]),
        .I4(\fch/ir [3]),
        .O(\bdatw[14]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_14 
       (.I0(\bdatw[14]_INST_0_i_20_n_0 ),
        .I1(\bdatw[14]_INST_0_i_21_n_0 ),
        .I2(\rgf/bank02/gr24 [6]),
        .I3(\rgf/bank02/bbuso2l/gr4_bus1__0 ),
        .I4(\rgf/bank02/gr25 [6]),
        .I5(\rgf/bank02/bbuso2l/gr5_bus1__0 ),
        .O(\rgf/bbus_b02 [6]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[14]_INST_0_i_15 
       (.I0(\bdatw[14]_INST_0_i_22_n_0 ),
        .I1(\bdatw[14]_INST_0_i_23_n_0 ),
        .I2(\rgf/bank13/gr27 [6]),
        .I3(\rgf/bank13/bbuso2l/gr7_bus1__0 ),
        .I4(\rgf/bank13/gr20 [6]),
        .I5(\rgf/bank13/bbuso2l/gr0_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[14]_INST_0_i_16 
       (.I0(\bdatw[14]_INST_0_i_24_n_0 ),
        .I1(\rgf/bank02/bbuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [14]),
        .I3(\rgf/bank02/bbuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [14]),
        .O(\bdatw[14]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_17 
       (.I0(\rgf/bank02/gr20 [14]),
        .I1(\rgf/bank02/bbuso2l/gr0_bus1__0 ),
        .I2(\bdatw[14]_INST_0_i_25_n_0 ),
        .I3(\bdatw[14]_INST_0_i_26_n_0 ),
        .I4(\bdatw[14]_INST_0_i_27_n_0 ),
        .I5(\bdatw[14]_INST_0_i_28_n_0 ),
        .O(\bdatw[14]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[14]_INST_0_i_18 
       (.I0(\bdatw[14]_INST_0_i_29_n_0 ),
        .I1(\rgf/bank13/gr23 [14]),
        .I2(\rgf/bank13/bbuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [14]),
        .I4(\rgf/bank13/bbuso2l/gr4_bus1__0 ),
        .I5(\bdatw[14]_INST_0_i_30_n_0 ),
        .O(\bdatw[14]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_19 
       (.I0(\rgf/sreg/sr [14]),
        .I1(\rgf/bbus_sel_cr [0]),
        .I2(\bdatw[14]_INST_0_i_31_n_0 ),
        .I3(\bdatw[14]_INST_0_i_32_n_0 ),
        .I4(\bdatw[14]_INST_0_i_33_n_0 ),
        .I5(\bdatw[14]_INST_0_i_34_n_0 ),
        .O(\bdatw[14]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AA2A)) 
    \bdatw[14]_INST_0_i_2 
       (.I0(\bdatw[14]_INST_0_i_6_n_0 ),
        .I1(ctl_selb_0),
        .I2(\fch/eir [6]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[14]_INST_0_i_7_n_0 ),
        .I5(\bdatw[14]_INST_0_i_8_n_0 ),
        .O(\bdatw[14]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[14]_INST_0_i_20 
       (.I0(\bdatw[14]_INST_0_i_35_n_0 ),
        .I1(\rgf/bank02/bbuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [6]),
        .I3(\rgf/bank02/bbuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [6]),
        .O(\bdatw[14]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_21 
       (.I0(\rgf/bank02/gr20 [6]),
        .I1(\rgf/bank02/bbuso2l/gr0_bus1__0 ),
        .I2(\bdatw[14]_INST_0_i_36_n_0 ),
        .I3(\bdatw[14]_INST_0_i_37_n_0 ),
        .I4(\bdatw[14]_INST_0_i_38_n_0 ),
        .I5(\bdatw[14]_INST_0_i_39_n_0 ),
        .O(\bdatw[14]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[14]_INST_0_i_22 
       (.I0(\bdatw[14]_INST_0_i_40_n_0 ),
        .I1(\rgf/bank13/gr23 [6]),
        .I2(\rgf/bank13/bbuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [6]),
        .I4(\rgf/bank13/bbuso2l/gr4_bus1__0 ),
        .I5(\bdatw[14]_INST_0_i_41_n_0 ),
        .O(\bdatw[14]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[14]_INST_0_i_23 
       (.I0(\rgf/sreg/sr [6]),
        .I1(\rgf/bbus_sel_cr [0]),
        .I2(\bdatw[14]_INST_0_i_42_n_0 ),
        .I3(\bdatw[14]_INST_0_i_43_n_0 ),
        .I4(\bdatw[14]_INST_0_i_44_n_0 ),
        .I5(\bdatw[14]_INST_0_i_45_n_0 ),
        .O(\bdatw[14]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_24 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [14]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [14]),
        .I4(\rgf/bank02/gr21 [14]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_25 
       (.I0(\rgf/bank02/gr05 [14]),
        .I1(\rgf/bank02/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [14]),
        .I3(\rgf/bank02/bbuso/gr6_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_26 
       (.I0(\rgf/bank02/gr07 [14]),
        .I1(\rgf/bank02/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [14]),
        .I3(\rgf/bank02/bbuso/gr0_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_27 
       (.I0(\rgf/bank02/gr01 [14]),
        .I1(\rgf/bank02/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [14]),
        .I3(\rgf/bank02/bbuso/gr2_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_28 
       (.I0(\rgf/bank02/gr03 [14]),
        .I1(\rgf/bank02/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [14]),
        .I3(\rgf/bank02/bbuso/gr4_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_29 
       (.I0(\rgf/bank13/gr25 [14]),
        .I1(\rgf/bank13/bbuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [14]),
        .I3(\rgf/bank13/bbuso2l/gr6_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hACAAAAAAFFFFFFFF)) 
    \bdatw[14]_INST_0_i_3 
       (.I0(\bdatw[14]_INST_0_i_9_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[14]_INST_0_i_10_n_0 ),
        .I3(\fch/ir [1]),
        .I4(\fch/ir [2]),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[14]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_30 
       (.I0(\rgf/bank13/gr21 [14]),
        .I1(\rgf/bank13/bbuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [14]),
        .I3(\rgf/bank13/bbuso2l/gr2_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_31 
       (.I0(\rgf/bank13/gr05 [14]),
        .I1(\rgf/bank13/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [14]),
        .I3(\rgf/bank13/bbuso/gr6_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_32 
       (.I0(\rgf/bank13/gr07 [14]),
        .I1(\rgf/bank13/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [14]),
        .I3(\rgf/bank13/bbuso/gr0_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_33 
       (.I0(\rgf/bank13/gr01 [14]),
        .I1(\rgf/bank13/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [14]),
        .I3(\rgf/bank13/bbuso/gr2_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_34 
       (.I0(\rgf/bank13/gr03 [14]),
        .I1(\rgf/bank13/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [14]),
        .I3(\rgf/bank13/bbuso/gr4_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_35 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [6]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [6]),
        .I4(\rgf/bank02/gr21 [6]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_36 
       (.I0(\rgf/bank02/gr05 [6]),
        .I1(\rgf/bank02/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [6]),
        .I3(\rgf/bank02/bbuso/gr6_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_37 
       (.I0(\rgf/bank02/gr07 [6]),
        .I1(\rgf/bank02/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [6]),
        .I3(\rgf/bank02/bbuso/gr0_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_38 
       (.I0(\rgf/bank02/gr01 [6]),
        .I1(\rgf/bank02/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [6]),
        .I3(\rgf/bank02/bbuso/gr2_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_39 
       (.I0(\rgf/bank02/gr03 [6]),
        .I1(\rgf/bank02/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [6]),
        .I3(\rgf/bank02/bbuso/gr4_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[14]_INST_0_i_4 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\rgf/ivec/iv [14]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\rgf/sptr/sp [14]),
        .I4(\rgf/bbus_b02 [14]),
        .I5(\bdatw[14]_INST_0_i_12_n_0 ),
        .O(\bdatw[14]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_40 
       (.I0(\rgf/bank13/gr25 [6]),
        .I1(\rgf/bank13/bbuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [6]),
        .I3(\rgf/bank13/bbuso2l/gr6_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_41 
       (.I0(\rgf/bank13/gr21 [6]),
        .I1(\rgf/bank13/bbuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [6]),
        .I3(\rgf/bank13/bbuso2l/gr2_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_42 
       (.I0(\rgf/bank13/gr05 [6]),
        .I1(\rgf/bank13/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [6]),
        .I3(\rgf/bank13/bbuso/gr6_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_43 
       (.I0(\rgf/bank13/gr07 [6]),
        .I1(\rgf/bank13/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [6]),
        .I3(\rgf/bank13/bbuso/gr0_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_44 
       (.I0(\rgf/bank13/gr01 [6]),
        .I1(\rgf/bank13/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [6]),
        .I3(\rgf/bank13/bbuso/gr2_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[14]_INST_0_i_45 
       (.I0(\rgf/bank13/gr03 [6]),
        .I1(\rgf/bank13/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [6]),
        .I3(\rgf/bank13/bbuso/gr4_bus1__0 ),
        .O(\bdatw[14]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\rgf/treg/tr [14]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\rgf/sptr/sp_dec_0 [14]),
        .I4(\rgf/pcnt/pc [14]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h05F20FF2FFFFFFFF)) 
    \bdatw[14]_INST_0_i_6 
       (.I0(\bdatw[15]_INST_0_i_12_n_0 ),
        .I1(\fch/ir [6]),
        .I2(\bdatw[14]_INST_0_i_13_n_0 ),
        .I3(ctl_selb_0),
        .I4(\fch/ir [5]),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[14]_INST_0_i_7 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\rgf/ivec/iv [6]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\rgf/sptr/sp [6]),
        .I4(\rgf/bbus_b02 [6]),
        .I5(\bdatw[14]_INST_0_i_15_n_0 ),
        .O(\bdatw[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[14]_INST_0_i_8 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\rgf/treg/tr [6]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\rgf/sptr/sp_dec_0 [6]),
        .I4(\rgf/pcnt/pc [6]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[14]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \bdatw[14]_INST_0_i_9 
       (.I0(\fch/ir [10]),
        .I1(\bdatw[15]_INST_0_i_12_n_0 ),
        .I2(ctl_selb_0),
        .O(\bdatw[14]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h048C)) 
    \bdatw[15]_INST_0 
       (.I0(bcmd[2]),
        .I1(bcmd[1]),
        .I2(\bdatw[15]_INST_0_i_1_n_0 ),
        .I3(\bdatw[15]_INST_0_i_2_n_0 ),
        .O(bdatw[15]));
  LUT6 #(
    .INIT(64'h000000000000AA2A)) 
    \bdatw[15]_INST_0_i_1 
       (.I0(\bdatw[15]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0),
        .I2(\fch/eir [15]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[15]_INST_0_i_6_n_0 ),
        .I5(\bdatw[15]_INST_0_i_7_n_0 ),
        .O(\bdatw[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h880088CCC0CCC000)) 
    \bdatw[15]_INST_0_i_10 
       (.I0(\fch/ir [6]),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\fch/ir [7]),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_29_n_0 ),
        .I5(ctl_selb_0),
        .O(\bdatw[15]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_100 
       (.I0(\rgf/bank13/gr07 [7]),
        .I1(\rgf/bank13/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [7]),
        .I3(\rgf/bank13/bbuso/gr0_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_100_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_101 
       (.I0(\rgf/bank13/gr01 [7]),
        .I1(\rgf/bank13/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [7]),
        .I3(\rgf/bank13/bbuso/gr2_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_101_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_102 
       (.I0(\rgf/bank13/gr03 [7]),
        .I1(\rgf/bank13/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [7]),
        .I3(\rgf/bank13/bbuso/gr4_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_103 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(\rgf/bank_sel [0]),
        .O(\rgf/bank02/bbuso/gr5_bus1__0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_104 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_81_n_0 ),
        .I5(\rgf/bank_sel [0]),
        .O(\rgf/bank02/bbuso/gr0_bus1__0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_105 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(\rgf/bank_sel [0]),
        .O(\rgf/bank02/bbuso/gr1_bus1__0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_106 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_81_n_0 ),
        .I5(\rgf/bank_sel [0]),
        .O(\rgf/bank02/bbuso/gr4_bus1__0 ));
  LUT6 #(
    .INIT(64'hAAAAFBAAFBAAFBAA)) 
    \bdatw[15]_INST_0_i_107 
       (.I0(\bcmd[1]_INST_0_i_1_n_0 ),
        .I1(\iv[15]_i_38_n_0 ),
        .I2(\bdatw[15]_INST_0_i_47_n_0 ),
        .I3(stat[0]),
        .I4(\bdatw[12]_INST_0_i_86_n_0 ),
        .I5(\bdatw[15]_INST_0_i_115_n_0 ),
        .O(\bdatw[15]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A88AAAA)) 
    \bdatw[15]_INST_0_i_108 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_116_n_0 ),
        .I2(\bdatw[12]_INST_0_i_87_n_0 ),
        .I3(\fch/ir [1]),
        .I4(\bdatw[15]_INST_0_i_117_n_0 ),
        .I5(\bdatw[12]_INST_0_i_99_n_0 ),
        .O(\bdatw[15]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAA8A8A8A8)) 
    \bdatw[15]_INST_0_i_109 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(\bdatw[15]_INST_0_i_118_n_0 ),
        .I2(\bdatw[15]_INST_0_i_119_n_0 ),
        .I3(\bdatw[15]_INST_0_i_120_n_0 ),
        .I4(\bdatw[12]_INST_0_i_87_n_0 ),
        .I5(\fch/ir [0]),
        .O(\bdatw[15]_INST_0_i_109_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[15]_INST_0_i_11 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [2]),
        .O(\bdatw[15]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_110 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(\rgf/bank_sel [3]),
        .O(\rgf/bank13/bbuso2l/gr5_bus1__0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_111 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(\rgf/bank_sel [1]),
        .O(\rgf/bank13/bbuso/gr5_bus1__0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_112 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_81_n_0 ),
        .I5(\rgf/bank_sel [1]),
        .O(\rgf/bank13/bbuso/gr0_bus1__0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_113 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(\rgf/bank_sel [1]),
        .O(\rgf/bank13/bbuso/gr1_bus1__0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_114 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_81_n_0 ),
        .I5(\rgf/bank_sel [1]),
        .O(\rgf/bank13/bbuso/gr4_bus1__0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[15]_INST_0_i_115 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [6]),
        .O(\bdatw[15]_INST_0_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \bdatw[15]_INST_0_i_116 
       (.I0(\fch/ir [11]),
        .I1(crdy),
        .I2(\bdatw[15]_INST_0_i_64_n_0 ),
        .I3(\fch/ir [1]),
        .I4(\fch/ir [6]),
        .I5(\fch/ir [8]),
        .O(\bdatw[15]_INST_0_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDD5DDDD)) 
    \bdatw[15]_INST_0_i_117 
       (.I0(\fch/ir [1]),
        .I1(\bdatw[15]_INST_0_i_121_n_0 ),
        .I2(\bdatw[12]_INST_0_i_101_n_0 ),
        .I3(\ccmd[4]_INST_0_i_20_n_0 ),
        .I4(\bdatw[12]_INST_0_i_105_n_0 ),
        .I5(\bdatw[15]_INST_0_i_122_n_0 ),
        .O(\bdatw[15]_INST_0_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \bdatw[15]_INST_0_i_118 
       (.I0(\fch/ir [11]),
        .I1(\bdatw[15]_INST_0_i_123_n_0 ),
        .I2(\bcmd[0]_INST_0_i_7_n_0 ),
        .I3(\bdatw[12]_INST_0_i_104_n_0 ),
        .I4(\fch/ir [0]),
        .I5(\bdatw[12]_INST_0_i_92_n_0 ),
        .O(\bdatw[15]_INST_0_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \bdatw[15]_INST_0_i_119 
       (.I0(\ccmd[4]_INST_0_i_20_n_0 ),
        .I1(\bdatw[12]_INST_0_i_95_n_0 ),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [4]),
        .I5(\fch/ir [6]),
        .O(\bdatw[15]_INST_0_i_119_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCFDFFCCCCDDDD)) 
    \bdatw[15]_INST_0_i_12 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(\bcmd[1]_INST_0_i_1_n_0 ),
        .I2(\bdatw[15]_INST_0_i_30_n_0 ),
        .I3(\bdatw[15]_INST_0_i_31_n_0 ),
        .I4(\bdatw[15]_INST_0_i_32_n_0 ),
        .I5(\bdatw[15]_INST_0_i_33_n_0 ),
        .O(\bdatw[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA800080008000)) 
    \bdatw[15]_INST_0_i_120 
       (.I0(\fch/ir [6]),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .I2(\fch/ir [8]),
        .I3(\bdatw[12]_INST_0_i_89_n_0 ),
        .I4(\bdatw[15]_INST_0_i_124_n_0 ),
        .I5(\bdatw[12]_INST_0_i_105_n_0 ),
        .O(\bdatw[15]_INST_0_i_120_n_0 ));
  LUT3 #(
    .INIT(8'hCE)) 
    \bdatw[15]_INST_0_i_121 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [9]),
        .I2(crdy),
        .O(\bdatw[15]_INST_0_i_121_n_0 ));
  LUT5 #(
    .INIT(32'h57555555)) 
    \bdatw[15]_INST_0_i_122 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [6]),
        .O(\bdatw[15]_INST_0_i_122_n_0 ));
  LUT5 #(
    .INIT(32'h0FFF8F8F)) 
    \bdatw[15]_INST_0_i_123 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [0]),
        .I3(crdy),
        .I4(\fch/ir [8]),
        .O(\bdatw[15]_INST_0_i_123_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \bdatw[15]_INST_0_i_124 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [7]),
        .O(\bdatw[15]_INST_0_i_124_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatw[15]_INST_0_i_13 
       (.I0(\fch/ir [0]),
        .I1(\fch/ir [3]),
        .O(\bdatw[15]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA82AA8200)) 
    \bdatw[15]_INST_0_i_14 
       (.I0(\bcmd[2]_INST_0_i_1_n_0 ),
        .I1(\fch/ir [11]),
        .I2(ctl_fetch_inferred_i_11_n_0),
        .I3(\bdatw[15]_INST_0_i_34_n_0 ),
        .I4(\bdatw[15]_INST_0_i_35_n_0 ),
        .I5(\bdatw[15]_INST_0_i_36_n_0 ),
        .O(\bdatw[15]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABAFFFF)) 
    \bdatw[15]_INST_0_i_15 
       (.I0(\bdatw[15]_INST_0_i_37_n_0 ),
        .I1(\bdatw[15]_INST_0_i_38_n_0 ),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [14]),
        .I4(\fch/ir [12]),
        .I5(\bdatw[15]_INST_0_i_39_n_0 ),
        .O(\bdatw[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA2A2222)) 
    \bdatw[15]_INST_0_i_16 
       (.I0(\bdatw[15]_INST_0_i_40_n_0 ),
        .I1(\bdatw[15]_INST_0_i_41_n_0 ),
        .I2(\bdatw[15]_INST_0_i_42_n_0 ),
        .I3(\bdatw[15]_INST_0_i_43_n_0 ),
        .I4(\bdatw[15]_INST_0_i_44_n_0 ),
        .I5(\bcmd[0]_INST_0_i_8_n_0 ),
        .O(\bdatw[15]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    \bdatw[15]_INST_0_i_17 
       (.I0(\bdatw[15]_INST_0_i_45_n_0 ),
        .I1(\bdatw[15]_INST_0_i_46_n_0 ),
        .I2(\bcmd[0]_INST_0_i_5_n_0 ),
        .I3(\bdatw[15]_INST_0_i_47_n_0 ),
        .I4(\bdatw[15]_INST_0_i_48_n_0 ),
        .I5(\stat[0]_i_4_n_0 ),
        .O(\bdatw[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBAAABABB)) 
    \bdatw[15]_INST_0_i_18 
       (.I0(\fch/ir [15]),
        .I1(\bdatw[15]_INST_0_i_49_n_0 ),
        .I2(\bdatw[15]_INST_0_i_47_n_0 ),
        .I3(\stat[0]_i_4_n_0 ),
        .I4(\bdatw[9]_INST_0_i_15_n_0 ),
        .I5(\fch/ir [6]),
        .O(\bdatw[15]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAA80AAAAAAAA)) 
    \bdatw[15]_INST_0_i_19 
       (.I0(stat[0]),
        .I1(stat[2]),
        .I2(stat[1]),
        .I3(\fch/ir [14]),
        .I4(\fch/ir [13]),
        .I5(\bdatw[15]_INST_0_i_50_n_0 ),
        .O(\bdatw[15]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011011111)) 
    \bdatw[15]_INST_0_i_2 
       (.I0(\bdatw[15]_INST_0_i_8_n_0 ),
        .I1(\bdatw[15]_INST_0_i_9_n_0 ),
        .I2(\fch/eir [7]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(ctl_selb_0),
        .I5(\bdatw[15]_INST_0_i_10_n_0 ),
        .O(\bdatw[15]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[15]_INST_0_i_20 
       (.I0(\bdatw[12]_INST_0_i_27_n_0 ),
        .I1(\bdatw[12]_INST_0_i_28_n_0 ),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .O(\rgf/bbus_sel_cr [3]));
  LUT4 #(
    .INIT(16'h0200)) 
    \bdatw[15]_INST_0_i_21 
       (.I0(\bdatw[12]_INST_0_i_27_n_0 ),
        .I1(\bdatw[12]_INST_0_i_28_n_0 ),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .O(\rgf/bbus_sel_cr [2]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_22 
       (.I0(\bdatw[15]_INST_0_i_51_n_0 ),
        .I1(\bdatw[15]_INST_0_i_52_n_0 ),
        .I2(\rgf/bank02/gr24 [15]),
        .I3(\rgf/bank02/bbuso2l/gr4_bus1__0 ),
        .I4(\rgf/bank02/gr25 [15]),
        .I5(\rgf/bank02/bbuso2l/gr5_bus1__0 ),
        .O(\rgf/bbus_b02 [15]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_23 
       (.I0(\bdatw[15]_INST_0_i_55_n_0 ),
        .I1(\bdatw[15]_INST_0_i_56_n_0 ),
        .I2(\rgf/bank13/gr27 [15]),
        .I3(\rgf/bank13/bbuso2l/gr7_bus1__0 ),
        .I4(\rgf/bank13/gr20 [15]),
        .I5(\rgf/bank13/bbuso2l/gr0_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \bdatw[15]_INST_0_i_24 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[1]),
        .I2(ctl_selb_rn[0]),
        .I3(\bdatw[12]_INST_0_i_27_n_0 ),
        .O(\rgf/bbus_sel_cr [4]));
  LUT4 #(
    .INIT(16'h0800)) 
    \bdatw[15]_INST_0_i_25 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_rn[0]),
        .I2(ctl_selb_rn[1]),
        .I3(\bdatw[12]_INST_0_i_27_n_0 ),
        .O(\rgf/bbus_sel_cr [5]));
  LUT4 #(
    .INIT(16'h0400)) 
    \bdatw[15]_INST_0_i_26 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(\bdatw[12]_INST_0_i_27_n_0 ),
        .I2(ctl_selb_rn[1]),
        .I3(ctl_selb_rn[0]),
        .O(\rgf/bbus_sel_cr [1]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_27 
       (.I0(\bdatw[15]_INST_0_i_59_n_0 ),
        .I1(\bdatw[15]_INST_0_i_60_n_0 ),
        .I2(\rgf/bank02/gr24 [7]),
        .I3(\rgf/bank02/bbuso2l/gr4_bus1__0 ),
        .I4(\rgf/bank02/gr25 [7]),
        .I5(\rgf/bank02/bbuso2l/gr5_bus1__0 ),
        .O(\rgf/bbus_b02 [7]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[15]_INST_0_i_28 
       (.I0(\bdatw[15]_INST_0_i_61_n_0 ),
        .I1(\bdatw[15]_INST_0_i_62_n_0 ),
        .I2(\rgf/bank13/gr27 [7]),
        .I3(\rgf/bank13/bbuso2l/gr7_bus1__0 ),
        .I4(\rgf/bank13/gr20 [7]),
        .I5(\rgf/bank13/bbuso2l/gr0_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \bdatw[15]_INST_0_i_29 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [1]),
        .O(\bdatw[15]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h77C37733FFFFFFFF)) 
    \bdatw[15]_INST_0_i_3 
       (.I0(\fch/ir [10]),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_11_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_13_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0E000E0F)) 
    \bdatw[15]_INST_0_i_30 
       (.I0(\bdatw[15]_INST_0_i_63_n_0 ),
        .I1(\bdatw[15]_INST_0_i_64_n_0 ),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [8]),
        .I4(\bdatw[15]_INST_0_i_65_n_0 ),
        .I5(stat[0]),
        .O(\bdatw[15]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEFEEEEEF)) 
    \bdatw[15]_INST_0_i_31 
       (.I0(\bdatw[15]_INST_0_i_66_n_0 ),
        .I1(\bdatw[15]_INST_0_i_67_n_0 ),
        .I2(\ccmd[4]_INST_0_i_20_n_0 ),
        .I3(\fch/ir [10]),
        .I4(\fch/ir [9]),
        .I5(\bdatw[15]_INST_0_i_68_n_0 ),
        .O(\bdatw[15]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h8A8A8A88)) 
    \bdatw[15]_INST_0_i_32 
       (.I0(\iv[15]_i_38_n_0 ),
        .I1(\bdatw[15]_INST_0_i_69_n_0 ),
        .I2(\bdatw[15]_INST_0_i_47_n_0 ),
        .I3(crdy),
        .I4(stat[0]),
        .O(\bdatw[15]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \bdatw[15]_INST_0_i_33 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [9]),
        .O(\bdatw[15]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h3373)) 
    \bdatw[15]_INST_0_i_34 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [13]),
        .I2(\rgf/sreg/sr [6]),
        .I3(\fch/ir [12]),
        .O(\bdatw[15]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h4105FFFF41054105)) 
    \bdatw[15]_INST_0_i_35 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [11]),
        .I3(\rgf/sreg/sr [7]),
        .I4(\bdatw[15]_INST_0_i_70_n_0 ),
        .I5(\bdatw[15]_INST_0_i_71_n_0 ),
        .O(\bdatw[15]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \bdatw[15]_INST_0_i_36 
       (.I0(\fch/ir [15]),
        .I1(\fch/ir [13]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [12]),
        .O(\bdatw[15]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h1455140041004155)) 
    \bdatw[15]_INST_0_i_37 
       (.I0(\fch/ir [13]),
        .I1(\rgf/sreg/sr [7]),
        .I2(\rgf/sreg/sr [5]),
        .I3(\fch/ir [14]),
        .I4(\rgf/sreg/sr [4]),
        .I5(\fch/ir [11]),
        .O(\bdatw[15]_INST_0_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bdatw[15]_INST_0_i_38 
       (.I0(\fch/ir [11]),
        .I1(\rgf/sreg/sr [7]),
        .O(\bdatw[15]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000D00)) 
    \bdatw[15]_INST_0_i_39 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(\bcmd[0]_INST_0_i_7_n_0 ),
        .I2(\bcmd[0]_INST_0_i_8_n_0 ),
        .I3(crdy),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [6]),
        .O(\bdatw[15]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF0E)) 
    \bdatw[15]_INST_0_i_4 
       (.I0(\bdatw[15]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_16_n_0 ),
        .I2(\bdatw[15]_INST_0_i_17_n_0 ),
        .I3(stat[0]),
        .I4(\bdatw[15]_INST_0_i_18_n_0 ),
        .I5(\bdatw[15]_INST_0_i_19_n_0 ),
        .O(ctl_selb_0));
  LUT6 #(
    .INIT(64'hABABABFFAAAAAAAA)) 
    \bdatw[15]_INST_0_i_40 
       (.I0(\fch/ir [11]),
        .I1(\bdatw[15]_INST_0_i_72_n_0 ),
        .I2(\bdatw[15]_INST_0_i_73_n_0 ),
        .I3(\bdatw[15]_INST_0_i_74_n_0 ),
        .I4(\ccmd[2]_INST_0_i_20_n_0 ),
        .I5(\fch/ir [6]),
        .O(\bdatw[15]_INST_0_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hAA28AAA8)) 
    \bdatw[15]_INST_0_i_41 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [10]),
        .I4(\fch/ir [7]),
        .O(\bdatw[15]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBCFF00FFBCFF)) 
    \bdatw[15]_INST_0_i_42 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [6]),
        .I4(\ccmd[4]_INST_0_i_20_n_0 ),
        .I5(\fch/ir [10]),
        .O(\bdatw[15]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h00000040FFFFFFFF)) 
    \bdatw[15]_INST_0_i_43 
       (.I0(\ccmd[2]_INST_0_i_20_n_0 ),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [4]),
        .I4(\fch/ir [6]),
        .I5(\fch/ir [9]),
        .O(\bdatw[15]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFBBBBFAAAFFFF)) 
    \bdatw[15]_INST_0_i_44 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [6]),
        .I2(crdy),
        .I3(\fch/ir [10]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [7]),
        .O(\bdatw[15]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bdatw[15]_INST_0_i_45 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [7]),
        .O(\bdatw[15]_INST_0_i_45_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_46 
       (.I0(\fch/ir [11]),
        .I1(crdy),
        .O(\bdatw[15]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hD4FF)) 
    \bdatw[15]_INST_0_i_47 
       (.I0(\fch/ir [0]),
        .I1(\fch/ir [1]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [2]),
        .O(\bdatw[15]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h4554455400554411)) 
    \bdatw[15]_INST_0_i_48 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [13]),
        .I2(\rgf/sreg/sr [5]),
        .I3(\fch/ir [11]),
        .I4(\rgf/sreg/sr [6]),
        .I5(\fch/ir [14]),
        .O(\bdatw[15]_INST_0_i_48_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_49 
       (.I0(\fch/ir [7]),
        .I1(stat[0]),
        .O(\bdatw[15]_INST_0_i_49_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bdatw[15]_INST_0_i_5 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FF000000001010)) 
    \bdatw[15]_INST_0_i_50 
       (.I0(tout__1_carry_i_17_n_0),
        .I1(\fch/ir [7]),
        .I2(\ccmd[2]_INST_0_i_11_n_0 ),
        .I3(\bdatw[15]_INST_0_i_33_n_0 ),
        .I4(\fch/ir [13]),
        .I5(\fch/ir [12]),
        .O(\bdatw[15]_INST_0_i_50_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[15]_INST_0_i_51 
       (.I0(\bdatw[15]_INST_0_i_75_n_0 ),
        .I1(\rgf/bank02/bbuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [15]),
        .I3(\rgf/bank02/bbuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [15]),
        .O(\bdatw[15]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_52 
       (.I0(\rgf/bank02/gr20 [15]),
        .I1(\rgf/bank02/bbuso2l/gr0_bus1__0 ),
        .I2(\bdatw[15]_INST_0_i_77_n_0 ),
        .I3(\bdatw[15]_INST_0_i_78_n_0 ),
        .I4(\bdatw[15]_INST_0_i_79_n_0 ),
        .I5(\bdatw[15]_INST_0_i_80_n_0 ),
        .O(\bdatw[15]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_53 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_81_n_0 ),
        .I5(\rgf/bank_sel [2]),
        .O(\rgf/bank02/bbuso2l/gr4_bus1__0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_54 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_82_n_0 ),
        .I5(\rgf/bank_sel [2]),
        .O(\rgf/bank02/bbuso2l/gr5_bus1__0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[15]_INST_0_i_55 
       (.I0(\bdatw[15]_INST_0_i_83_n_0 ),
        .I1(\rgf/bank13/gr23 [15]),
        .I2(\rgf/bank13/bbuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [15]),
        .I4(\rgf/bank13/bbuso2l/gr4_bus1__0 ),
        .I5(\bdatw[15]_INST_0_i_85_n_0 ),
        .O(\bdatw[15]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_56 
       (.I0(\rgf/sreg/sr [15]),
        .I1(\rgf/bbus_sel_cr [0]),
        .I2(\bdatw[15]_INST_0_i_87_n_0 ),
        .I3(\bdatw[15]_INST_0_i_88_n_0 ),
        .I4(\bdatw[15]_INST_0_i_89_n_0 ),
        .I5(\bdatw[15]_INST_0_i_90_n_0 ),
        .O(\bdatw[15]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_57 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_91_n_0 ),
        .I5(\rgf/bank_sel [3]),
        .O(\rgf/bank13/bbuso2l/gr7_bus1__0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \bdatw[15]_INST_0_i_58 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[15]_INST_0_i_12_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\bdatw[15]_INST_0_i_81_n_0 ),
        .I5(\rgf/bank_sel [3]),
        .O(\rgf/bank13/bbuso2l/gr0_bus1__0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[15]_INST_0_i_59 
       (.I0(\bdatw[15]_INST_0_i_92_n_0 ),
        .I1(\rgf/bank02/bbuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [7]),
        .I3(\rgf/bank02/bbuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [7]),
        .O(\bdatw[15]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[15]_INST_0_i_6 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\rgf/ivec/iv [15]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\rgf/sptr/sp [15]),
        .I4(\rgf/bbus_b02 [15]),
        .I5(\bdatw[15]_INST_0_i_23_n_0 ),
        .O(\bdatw[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_60 
       (.I0(\rgf/bank02/gr20 [7]),
        .I1(\rgf/bank02/bbuso2l/gr0_bus1__0 ),
        .I2(\bdatw[15]_INST_0_i_93_n_0 ),
        .I3(\bdatw[15]_INST_0_i_94_n_0 ),
        .I4(\bdatw[15]_INST_0_i_95_n_0 ),
        .I5(\bdatw[15]_INST_0_i_96_n_0 ),
        .O(\bdatw[15]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[15]_INST_0_i_61 
       (.I0(\bdatw[15]_INST_0_i_97_n_0 ),
        .I1(\rgf/bank13/gr23 [7]),
        .I2(\rgf/bank13/bbuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [7]),
        .I4(\rgf/bank13/bbuso2l/gr4_bus1__0 ),
        .I5(\bdatw[15]_INST_0_i_98_n_0 ),
        .O(\bdatw[15]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[15]_INST_0_i_62 
       (.I0(\rgf/sreg/sr [7]),
        .I1(\rgf/bbus_sel_cr [0]),
        .I2(\bdatw[15]_INST_0_i_99_n_0 ),
        .I3(\bdatw[15]_INST_0_i_100_n_0 ),
        .I4(\bdatw[15]_INST_0_i_101_n_0 ),
        .I5(\bdatw[15]_INST_0_i_102_n_0 ),
        .O(\bdatw[15]_INST_0_i_62_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \bdatw[15]_INST_0_i_63 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(crdy),
        .I2(\fch/ir [6]),
        .O(\bdatw[15]_INST_0_i_63_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \bdatw[15]_INST_0_i_64 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [10]),
        .O(\bdatw[15]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'h4400444C)) 
    \bdatw[15]_INST_0_i_65 
       (.I0(\fch/ir [9]),
        .I1(crdy),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [10]),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\bdatw[15]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'h3FB333B3)) 
    \bdatw[15]_INST_0_i_66 
       (.I0(crdy),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [6]),
        .O(\bdatw[15]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h0000070007000700)) 
    \bdatw[15]_INST_0_i_67 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [9]),
        .I5(\fch/ir [10]),
        .O(\bdatw[15]_INST_0_i_67_n_0 ));
  LUT5 #(
    .INIT(32'h8828A002)) 
    \bdatw[15]_INST_0_i_68 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [4]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [6]),
        .O(\bdatw[15]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h0000203000002020)) 
    \bdatw[15]_INST_0_i_69 
       (.I0(stat[0]),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [0]),
        .I3(\fch/ir [2]),
        .I4(\fch/ir [1]),
        .I5(fch_irq_req),
        .O(\bdatw[15]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_7 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\rgf/treg/tr [15]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\rgf/sptr/sp_dec_0 [15]),
        .I4(\rgf/pcnt/pc [15]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \bdatw[15]_INST_0_i_70 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [14]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [9]),
        .O(\bdatw[15]_INST_0_i_70_n_0 ));
  LUT5 #(
    .INIT(32'h00000600)) 
    \bdatw[15]_INST_0_i_71 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [15]),
        .I3(\fch/ir [12]),
        .I4(\fch/ir [6]),
        .O(\bdatw[15]_INST_0_i_71_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \bdatw[15]_INST_0_i_72 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [8]),
        .I2(crdy),
        .O(\bdatw[15]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBFFF)) 
    \bdatw[15]_INST_0_i_73 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [12]),
        .I4(\fch/ir [15]),
        .I5(\fch/ir [10]),
        .O(\bdatw[15]_INST_0_i_73_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[15]_INST_0_i_74 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [9]),
        .O(\bdatw[15]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_75 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [15]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [15]),
        .I4(\rgf/bank02/gr21 [15]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_75_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \bdatw[15]_INST_0_i_76 
       (.I0(\bdatw[12]_INST_0_i_54_n_0 ),
        .I1(\rgf/sreg/sr [0]),
        .I2(\rgf/sreg/sr [1]),
        .O(\rgf/bank02/bbuso2l/gr0_bus1__0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_77 
       (.I0(\rgf/bank02/gr05 [15]),
        .I1(\rgf/bank02/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [15]),
        .I3(\rgf/bank02/bbuso/gr6_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_77_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_78 
       (.I0(\rgf/bank02/gr07 [15]),
        .I1(\rgf/bank02/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [15]),
        .I3(\rgf/bank02/bbuso/gr0_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_79 
       (.I0(\rgf/bank02/gr01 [15]),
        .I1(\rgf/bank02/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [15]),
        .I3(\rgf/bank02/bbuso/gr2_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[15]_INST_0_i_8 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\rgf/ivec/iv [7]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\rgf/sptr/sp [7]),
        .I4(\rgf/bbus_b02 [7]),
        .I5(\bdatw[15]_INST_0_i_28_n_0 ),
        .O(\bdatw[15]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_80 
       (.I0(\rgf/bank02/gr03 [15]),
        .I1(\rgf/bank02/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [15]),
        .I3(\rgf/bank02/bbuso/gr4_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hAB00AB00AB00ABAB)) 
    \bdatw[15]_INST_0_i_81 
       (.I0(\bdatw[15]_INST_0_i_107_n_0 ),
        .I1(stat[0]),
        .I2(\bdatw[15]_INST_0_i_108_n_0 ),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(\bdatw[15]_INST_0_i_109_n_0 ),
        .I5(\bdatw[12]_INST_0_i_67_n_0 ),
        .O(\bdatw[15]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h5400540054005454)) 
    \bdatw[15]_INST_0_i_82 
       (.I0(\bdatw[12]_INST_0_i_69_n_0 ),
        .I1(\bdatw[15]_INST_0_i_109_n_0 ),
        .I2(\bdatw[12]_INST_0_i_67_n_0 ),
        .I3(\bdatw[15]_INST_0_i_107_n_0 ),
        .I4(stat[0]),
        .I5(\bdatw[15]_INST_0_i_108_n_0 ),
        .O(\bdatw[15]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_83 
       (.I0(\rgf/bank13/gr25 [15]),
        .I1(\rgf/bank13/bbuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [15]),
        .I3(\rgf/bank13/bbuso2l/gr6_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[15]_INST_0_i_84 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(ctl_selb_0),
        .I2(\bdatw[15]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_12_n_0 ),
        .I4(\bdatw[15]_INST_0_i_81_n_0 ),
        .I5(\rgf/bank_sel [3]),
        .O(\rgf/bank13/bbuso2l/gr4_bus1__0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_85 
       (.I0(\rgf/bank13/gr21 [15]),
        .I1(\rgf/bank13/bbuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [15]),
        .I3(\rgf/bank13/bbuso2l/gr2_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \bdatw[15]_INST_0_i_86 
       (.I0(\bdatw[12]_INST_0_i_28_n_0 ),
        .I1(\bdatw[12]_INST_0_i_27_n_0 ),
        .I2(ctl_selb_rn[0]),
        .I3(ctl_selb_rn[1]),
        .O(\rgf/bbus_sel_cr [0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_87 
       (.I0(\rgf/bank13/gr05 [15]),
        .I1(\rgf/bank13/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [15]),
        .I3(\rgf/bank13/bbuso/gr6_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_87_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_88 
       (.I0(\rgf/bank13/gr07 [15]),
        .I1(\rgf/bank13/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [15]),
        .I3(\rgf/bank13/bbuso/gr0_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_89 
       (.I0(\rgf/bank13/gr01 [15]),
        .I1(\rgf/bank13/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [15]),
        .I3(\rgf/bank13/bbuso/gr2_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_9 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\rgf/treg/tr [7]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\rgf/sptr/sp_dec_0 [7]),
        .I4(\rgf/pcnt/pc [7]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[15]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_90 
       (.I0(\rgf/bank13/gr03 [15]),
        .I1(\rgf/bank13/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [15]),
        .I3(\rgf/bank13/bbuso/gr4_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h0054005400540000)) 
    \bdatw[15]_INST_0_i_91 
       (.I0(\bdatw[15]_INST_0_i_107_n_0 ),
        .I1(stat[0]),
        .I2(\bdatw[15]_INST_0_i_108_n_0 ),
        .I3(\bdatw[12]_INST_0_i_69_n_0 ),
        .I4(\bdatw[15]_INST_0_i_109_n_0 ),
        .I5(\bdatw[12]_INST_0_i_67_n_0 ),
        .O(\bdatw[15]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[15]_INST_0_i_92 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [7]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [7]),
        .I4(\rgf/bank02/gr21 [7]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_92_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_93 
       (.I0(\rgf/bank02/gr05 [7]),
        .I1(\rgf/bank02/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [7]),
        .I3(\rgf/bank02/bbuso/gr6_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_93_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_94 
       (.I0(\rgf/bank02/gr07 [7]),
        .I1(\rgf/bank02/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [7]),
        .I3(\rgf/bank02/bbuso/gr0_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_94_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_95 
       (.I0(\rgf/bank02/gr01 [7]),
        .I1(\rgf/bank02/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [7]),
        .I3(\rgf/bank02/bbuso/gr2_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_95_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_96 
       (.I0(\rgf/bank02/gr03 [7]),
        .I1(\rgf/bank02/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [7]),
        .I3(\rgf/bank02/bbuso/gr4_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_96_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_97 
       (.I0(\rgf/bank13/gr25 [7]),
        .I1(\rgf/bank13/bbuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [7]),
        .I3(\rgf/bank13/bbuso2l/gr6_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_97_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_98 
       (.I0(\rgf/bank13/gr21 [7]),
        .I1(\rgf/bank13/bbuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [7]),
        .I3(\rgf/bank13/bbuso2l/gr2_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_98_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[15]_INST_0_i_99 
       (.I0(\rgf/bank13/gr05 [7]),
        .I1(\rgf/bank13/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [7]),
        .I3(\rgf/bank13/bbuso/gr6_bus1__0 ),
        .O(\bdatw[15]_INST_0_i_99_n_0 ));
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
    .INIT(16'h8C04)) 
    \bdatw[8]_INST_0 
       (.I0(bcmd[2]),
        .I1(bcmd[1]),
        .I2(\bdatw[8]_INST_0_i_1_n_0 ),
        .I3(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(bdatw[8]));
  LUT6 #(
    .INIT(64'h0000000000005515)) 
    \bdatw[8]_INST_0_i_1 
       (.I0(\bdatw[8]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0),
        .I2(\fch/eir [8]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[8]_INST_0_i_4_n_0 ),
        .I5(\bdatw[8]_INST_0_i_5_n_0 ),
        .O(\bdatw[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_10 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\rgf/treg/tr [0]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\rgf/sptr/sp [0]),
        .I4(\rgf/pcnt/pc [0]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFFFFFFFFFFBF)) 
    \bdatw[8]_INST_0_i_11 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[8]_INST_0_i_27_n_0 ),
        .I3(\fch/ir [2]),
        .I4(\fch/ir [0]),
        .I5(\bdatw[15]_INST_0_i_12_n_0 ),
        .O(\bdatw[8]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[8]_INST_0_i_12 
       (.I0(\bdatw[8]_INST_0_i_28_n_0 ),
        .I1(\bdatw[8]_INST_0_i_29_n_0 ),
        .I2(\rgf/bank02/gr24 [8]),
        .I3(\rgf/bank02/bbuso2l/gr4_bus1__0 ),
        .I4(\rgf/bank02/gr25 [8]),
        .I5(\rgf/bank02/bbuso2l/gr5_bus1__0 ),
        .O(\rgf/bbus_b02 [8]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[8]_INST_0_i_13 
       (.I0(\bdatw[8]_INST_0_i_30_n_0 ),
        .I1(\bdatw[8]_INST_0_i_31_n_0 ),
        .I2(\rgf/bank13/gr27 [8]),
        .I3(\rgf/bank13/bbuso2l/gr7_bus1__0 ),
        .I4(\rgf/bank13/gr20 [8]),
        .I5(\rgf/bank13/bbuso2l/gr0_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \bdatw[8]_INST_0_i_14 
       (.I0(\bdatw[15]_INST_0_i_12_n_0 ),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [1]),
        .O(\bdatw[8]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_15 
       (.I0(\rgf/bank13/gr21 [0]),
        .I1(\rgf/bank13/bbuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [0]),
        .I3(\rgf/bank13/bbuso2l/gr2_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[8]_INST_0_i_16 
       (.I0(\bdatw[8]_INST_0_i_32_n_0 ),
        .I1(\rgf/bank13/bbuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr23 [0]),
        .I3(\rgf/bank13/bbuso2l/gr6_bus1__0 ),
        .I4(\rgf/bank13/gr26 [0]),
        .I5(\bdatw[8]_INST_0_i_33_n_0 ),
        .O(\bdatw[8]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[8]_INST_0_i_17 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[0]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\rgf/sreg/sr [0]),
        .O(\bdatw[8]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[8]_INST_0_i_18 
       (.I0(\rgf/bank13/bbuso/gr6_bus1__0 ),
        .I1(\rgf/bank13/gr06 [0]),
        .I2(\bdatw[8]_INST_0_i_34_n_0 ),
        .I3(\bdatw[8]_INST_0_i_35_n_0 ),
        .I4(\rgf/bank13/bbuso/gr7_bus1__0 ),
        .I5(\rgf/bank13/gr07 [0]),
        .O(\bdatw[8]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[8]_INST_0_i_19 
       (.I0(\rgf/bank13/bbuso/gr2_bus1__0 ),
        .I1(\rgf/bank13/gr02 [0]),
        .I2(\bdatw[8]_INST_0_i_36_n_0 ),
        .I3(\bdatw[8]_INST_0_i_37_n_0 ),
        .I4(\rgf/bank13/bbuso/gr3_bus1__0 ),
        .I5(\rgf/bank13/gr03 [0]),
        .O(\bdatw[8]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bdatw[8]_INST_0_i_2 
       (.I0(\bdatw[8]_INST_0_i_6_n_0 ),
        .I1(\bdatw[8]_INST_0_i_7_n_0 ),
        .I2(\rgf/bbus_b02 [0]),
        .I3(\bdatw[8]_INST_0_i_9_n_0 ),
        .I4(\bdatw[8]_INST_0_i_10_n_0 ),
        .I5(\bdatw[8]_INST_0_i_11_n_0 ),
        .O(\bdatw[8]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_20 
       (.I0(\rgf/bank13/gr27 [0]),
        .I1(\rgf/bank13/bbuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [0]),
        .I3(\rgf/bank13/bbuso2l/gr0_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_21 
       (.I0(\rgf/bank02/gr22 [0]),
        .I1(\rgf/bank02/bbuso2l/gr2_bus1__0 ),
        .I2(\rgf/bank02/gr23 [0]),
        .I3(\rgf/bank02/bbuso2l/gr3_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_22 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [0]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [0]),
        .I4(\rgf/bank02/gr21 [0]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[8]_INST_0_i_23 
       (.I0(\rgf/sreg/sr [1]),
        .I1(\rgf/sreg/sr [0]),
        .I2(\bdatw[12]_INST_0_i_54_n_0 ),
        .I3(\rgf/bank02/gr20 [0]),
        .O(\bdatw[8]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[8]_INST_0_i_24 
       (.I0(\rgf/bank02/bbuso/gr6_bus1__0 ),
        .I1(\rgf/bank02/gr06 [0]),
        .I2(\bdatw[8]_INST_0_i_38_n_0 ),
        .I3(\bdatw[8]_INST_0_i_39_n_0 ),
        .I4(\rgf/bank02/bbuso/gr7_bus1__0 ),
        .I5(\rgf/bank02/gr07 [0]),
        .O(\bdatw[8]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[8]_INST_0_i_25 
       (.I0(\rgf/bank02/bbuso/gr2_bus1__0 ),
        .I1(\rgf/bank02/gr02 [0]),
        .I2(\bdatw[8]_INST_0_i_40_n_0 ),
        .I3(\bdatw[8]_INST_0_i_41_n_0 ),
        .I4(\rgf/bank02/bbuso/gr3_bus1__0 ),
        .I5(\rgf/bank02/gr03 [0]),
        .O(\bdatw[8]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_26 
       (.I0(\rgf/bank02/gr24 [0]),
        .I1(\rgf/bank02/bbuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [0]),
        .I3(\rgf/bank02/bbuso2l/gr5_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bdatw[8]_INST_0_i_27 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [1]),
        .O(\bdatw[8]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[8]_INST_0_i_28 
       (.I0(\bdatw[8]_INST_0_i_42_n_0 ),
        .I1(\rgf/bank02/bbuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [8]),
        .I3(\rgf/bank02/bbuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [8]),
        .O(\bdatw[8]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[8]_INST_0_i_29 
       (.I0(\rgf/bank02/gr20 [8]),
        .I1(\rgf/bank02/bbuso2l/gr0_bus1__0 ),
        .I2(\bdatw[8]_INST_0_i_43_n_0 ),
        .I3(\bdatw[8]_INST_0_i_44_n_0 ),
        .I4(\bdatw[8]_INST_0_i_45_n_0 ),
        .I5(\bdatw[8]_INST_0_i_46_n_0 ),
        .O(\bdatw[8]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B00F00000000)) 
    \bdatw[8]_INST_0_i_3 
       (.I0(\fch/ir [7]),
        .I1(\bdatw[15]_INST_0_i_12_n_0 ),
        .I2(ctl_selb_0),
        .I3(\bdatw[14]_INST_0_i_10_n_0 ),
        .I4(\bdatw[9]_INST_0_i_12_n_0 ),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[8]_INST_0_i_30 
       (.I0(\bdatw[8]_INST_0_i_47_n_0 ),
        .I1(\rgf/bank13/gr23 [8]),
        .I2(\rgf/bank13/bbuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [8]),
        .I4(\rgf/bank13/bbuso2l/gr4_bus1__0 ),
        .I5(\bdatw[8]_INST_0_i_48_n_0 ),
        .O(\bdatw[8]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[8]_INST_0_i_31 
       (.I0(\rgf/sreg/sr [8]),
        .I1(\rgf/bbus_sel_cr [0]),
        .I2(\bdatw[8]_INST_0_i_49_n_0 ),
        .I3(\bdatw[8]_INST_0_i_50_n_0 ),
        .I4(\bdatw[8]_INST_0_i_51_n_0 ),
        .I5(\bdatw[8]_INST_0_i_52_n_0 ),
        .O(\bdatw[8]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_32 
       (.I0(\rgf/bank_sel [3]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr24 [0]),
        .O(\bdatw[8]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_33 
       (.I0(\rgf/bank_sel [3]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr25 [0]),
        .O(\bdatw[8]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_34 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr05 [0]),
        .O(\bdatw[8]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[8]_INST_0_i_35 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank13/gr00 [0]),
        .O(\bdatw[8]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[8]_INST_0_i_36 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank13/gr01 [0]),
        .O(\bdatw[8]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_37 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr04 [0]),
        .O(\bdatw[8]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_38 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank02/gr05 [0]),
        .O(\bdatw[8]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[8]_INST_0_i_39 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank02/gr00 [0]),
        .O(\bdatw[8]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[8]_INST_0_i_4 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\rgf/ivec/iv [8]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\rgf/sptr/sp [8]),
        .I4(\rgf/bbus_b02 [8]),
        .I5(\bdatw[8]_INST_0_i_13_n_0 ),
        .O(\bdatw[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[8]_INST_0_i_40 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank02/gr01 [0]),
        .O(\bdatw[8]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[8]_INST_0_i_41 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank02/gr04 [0]),
        .O(\bdatw[8]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_42 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [8]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [8]),
        .I4(\rgf/bank02/gr21 [8]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_43 
       (.I0(\rgf/bank02/gr05 [8]),
        .I1(\rgf/bank02/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [8]),
        .I3(\rgf/bank02/bbuso/gr6_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_44 
       (.I0(\rgf/bank02/gr07 [8]),
        .I1(\rgf/bank02/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [8]),
        .I3(\rgf/bank02/bbuso/gr0_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_45 
       (.I0(\rgf/bank02/gr01 [8]),
        .I1(\rgf/bank02/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [8]),
        .I3(\rgf/bank02/bbuso/gr2_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_46 
       (.I0(\rgf/bank02/gr03 [8]),
        .I1(\rgf/bank02/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [8]),
        .I3(\rgf/bank02/bbuso/gr4_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_47 
       (.I0(\rgf/bank13/gr25 [8]),
        .I1(\rgf/bank13/bbuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [8]),
        .I3(\rgf/bank13/bbuso2l/gr6_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_48 
       (.I0(\rgf/bank13/gr21 [8]),
        .I1(\rgf/bank13/bbuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [8]),
        .I3(\rgf/bank13/bbuso2l/gr2_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_48_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_49 
       (.I0(\rgf/bank13/gr05 [8]),
        .I1(\rgf/bank13/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [8]),
        .I3(\rgf/bank13/bbuso/gr6_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[8]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\rgf/treg/tr [8]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\rgf/sptr/sp_dec_0 [8]),
        .I4(\rgf/pcnt/pc [8]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[8]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_50 
       (.I0(\rgf/bank13/gr07 [8]),
        .I1(\rgf/bank13/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [8]),
        .I3(\rgf/bank13/bbuso/gr0_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_51 
       (.I0(\rgf/bank13/gr01 [8]),
        .I1(\rgf/bank13/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [8]),
        .I3(\rgf/bank13/bbuso/gr2_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[8]_INST_0_i_52 
       (.I0(\rgf/bank13/gr03 [8]),
        .I1(\rgf/bank13/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [8]),
        .I3(\rgf/bank13/bbuso/gr4_bus1__0 ),
        .O(\bdatw[8]_INST_0_i_52_n_0 ));
  LUT5 #(
    .INIT(32'h08AA0808)) 
    \bdatw[8]_INST_0_i_6 
       (.I0(ctl_selb_0),
        .I1(\bdatw[15]_INST_0_i_14_n_0 ),
        .I2(\bdatw[8]_INST_0_i_14_n_0 ),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\fch/eir [0]),
        .O(\bdatw[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[8]_INST_0_i_7 
       (.I0(\bdatw[8]_INST_0_i_15_n_0 ),
        .I1(\bdatw[8]_INST_0_i_16_n_0 ),
        .I2(\bdatw[8]_INST_0_i_17_n_0 ),
        .I3(\bdatw[8]_INST_0_i_18_n_0 ),
        .I4(\bdatw[8]_INST_0_i_19_n_0 ),
        .I5(\bdatw[8]_INST_0_i_20_n_0 ),
        .O(\bdatw[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[8]_INST_0_i_8 
       (.I0(\bdatw[8]_INST_0_i_21_n_0 ),
        .I1(\bdatw[8]_INST_0_i_22_n_0 ),
        .I2(\bdatw[8]_INST_0_i_23_n_0 ),
        .I3(\bdatw[8]_INST_0_i_24_n_0 ),
        .I4(\bdatw[8]_INST_0_i_25_n_0 ),
        .I5(\bdatw[8]_INST_0_i_26_n_0 ),
        .O(\rgf/bbus_b02 [0]));
  LUT6 #(
    .INIT(64'h2200202000000000)) 
    \bdatw[8]_INST_0_i_9 
       (.I0(\bdatw[12]_INST_0_i_27_n_0 ),
        .I1(\bdatw[12]_INST_0_i_28_n_0 ),
        .I2(\rgf/sptr/sp [0]),
        .I3(\rgf/ivec/iv [0]),
        .I4(ctl_selb_rn[0]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[8]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h048C)) 
    \bdatw[9]_INST_0 
       (.I0(bcmd[2]),
        .I1(bcmd[1]),
        .I2(\bdatw[9]_INST_0_i_1_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(bdatw[9]));
  LUT6 #(
    .INIT(64'h0000000000005515)) 
    \bdatw[9]_INST_0_i_1 
       (.I0(\bdatw[9]_INST_0_i_3_n_0 ),
        .I1(ctl_selb_0),
        .I2(\fch/eir [9]),
        .I3(\bdatw[15]_INST_0_i_5_n_0 ),
        .I4(\bdatw[9]_INST_0_i_4_n_0 ),
        .I5(\bdatw[9]_INST_0_i_5_n_0 ),
        .O(\bdatw[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2200202000000000)) 
    \bdatw[9]_INST_0_i_10 
       (.I0(\bdatw[12]_INST_0_i_27_n_0 ),
        .I1(\bdatw[12]_INST_0_i_28_n_0 ),
        .I2(\rgf/sptr/sp [1]),
        .I3(\rgf/ivec/iv [1]),
        .I4(ctl_selb_rn[0]),
        .I5(ctl_selb_rn[1]),
        .O(\bdatw[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_11 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\rgf/treg/tr [1]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\rgf/sptr/sp_dec_0 [1]),
        .I4(\rgf/pcnt/pc [1]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[9]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bdatw[9]_INST_0_i_12 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [2]),
        .O(\bdatw[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[9]_INST_0_i_13 
       (.I0(\bdatw[9]_INST_0_i_28_n_0 ),
        .I1(\bdatw[9]_INST_0_i_29_n_0 ),
        .I2(\rgf/bank02/gr24 [9]),
        .I3(\rgf/bank02/bbuso2l/gr4_bus1__0 ),
        .I4(\rgf/bank02/gr25 [9]),
        .I5(\rgf/bank02/bbuso2l/gr5_bus1__0 ),
        .O(\rgf/bbus_b02 [9]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatw[9]_INST_0_i_14 
       (.I0(\bdatw[9]_INST_0_i_30_n_0 ),
        .I1(\bdatw[9]_INST_0_i_31_n_0 ),
        .I2(\rgf/bank13/gr27 [9]),
        .I3(\rgf/bank13/bbuso2l/gr7_bus1__0 ),
        .I4(\rgf/bank13/gr20 [9]),
        .I5(\rgf/bank13/bbuso2l/gr0_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \bdatw[9]_INST_0_i_15 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [1]),
        .O(\bdatw[9]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_16 
       (.I0(\rgf/bank13/gr21 [1]),
        .I1(\rgf/bank13/bbuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [1]),
        .I3(\rgf/bank13/bbuso2l/gr2_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[9]_INST_0_i_17 
       (.I0(\bdatw[9]_INST_0_i_32_n_0 ),
        .I1(\rgf/bank13/bbuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr23 [1]),
        .I3(\rgf/bank13/bbuso2l/gr6_bus1__0 ),
        .I4(\rgf/bank13/gr26 [1]),
        .I5(\bdatw[9]_INST_0_i_33_n_0 ),
        .O(\bdatw[9]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bdatw[9]_INST_0_i_18 
       (.I0(ctl_selb_rn[1]),
        .I1(ctl_selb_rn[0]),
        .I2(\bdatw[12]_INST_0_i_27_n_0 ),
        .I3(\bdatw[12]_INST_0_i_28_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .O(\bdatw[9]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[9]_INST_0_i_19 
       (.I0(\rgf/bank13/bbuso/gr6_bus1__0 ),
        .I1(\rgf/bank13/gr06 [1]),
        .I2(\bdatw[9]_INST_0_i_34_n_0 ),
        .I3(\bdatw[9]_INST_0_i_35_n_0 ),
        .I4(\rgf/bank13/bbuso/gr7_bus1__0 ),
        .I5(\rgf/bank13/gr07 [1]),
        .O(\bdatw[9]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatw[9]_INST_0_i_2 
       (.I0(\bdatw[9]_INST_0_i_6_n_0 ),
        .I1(\bdatw[9]_INST_0_i_7_n_0 ),
        .I2(\bdatw[9]_INST_0_i_8_n_0 ),
        .I3(\rgf/bbus_b02 [1]),
        .I4(\bdatw[9]_INST_0_i_10_n_0 ),
        .I5(\bdatw[9]_INST_0_i_11_n_0 ),
        .O(\bdatw[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[9]_INST_0_i_20 
       (.I0(\rgf/bank13/bbuso/gr2_bus1__0 ),
        .I1(\rgf/bank13/gr02 [1]),
        .I2(\bdatw[9]_INST_0_i_36_n_0 ),
        .I3(\bdatw[9]_INST_0_i_37_n_0 ),
        .I4(\rgf/bank13/bbuso/gr3_bus1__0 ),
        .I5(\rgf/bank13/gr03 [1]),
        .O(\bdatw[9]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_21 
       (.I0(\rgf/bank13/gr27 [1]),
        .I1(\rgf/bank13/bbuso2l/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr20 [1]),
        .I3(\rgf/bank13/bbuso2l/gr0_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_22 
       (.I0(\rgf/bank02/gr22 [1]),
        .I1(\rgf/bank02/bbuso2l/gr2_bus1__0 ),
        .I2(\rgf/bank02/gr23 [1]),
        .I3(\rgf/bank02/bbuso2l/gr3_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_23 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [1]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [1]),
        .I4(\rgf/bank02/gr21 [1]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \bdatw[9]_INST_0_i_24 
       (.I0(\rgf/sreg/sr [1]),
        .I1(\rgf/sreg/sr [0]),
        .I2(\bdatw[12]_INST_0_i_54_n_0 ),
        .I3(\rgf/bank02/gr20 [1]),
        .O(\bdatw[9]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[9]_INST_0_i_25 
       (.I0(\rgf/bank02/bbuso/gr6_bus1__0 ),
        .I1(\rgf/bank02/gr06 [1]),
        .I2(\bdatw[9]_INST_0_i_38_n_0 ),
        .I3(\bdatw[9]_INST_0_i_39_n_0 ),
        .I4(\rgf/bank02/bbuso/gr7_bus1__0 ),
        .I5(\rgf/bank02/gr07 [1]),
        .O(\bdatw[9]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \bdatw[9]_INST_0_i_26 
       (.I0(\rgf/bank02/bbuso/gr2_bus1__0 ),
        .I1(\rgf/bank02/gr02 [1]),
        .I2(\bdatw[9]_INST_0_i_40_n_0 ),
        .I3(\bdatw[9]_INST_0_i_41_n_0 ),
        .I4(\rgf/bank02/bbuso/gr3_bus1__0 ),
        .I5(\rgf/bank02/gr03 [1]),
        .O(\bdatw[9]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_27 
       (.I0(\rgf/bank02/gr24 [1]),
        .I1(\rgf/bank02/bbuso2l/gr4_bus1__0 ),
        .I2(\rgf/bank02/gr25 [1]),
        .I3(\rgf/bank02/bbuso2l/gr5_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bdatw[9]_INST_0_i_28 
       (.I0(\bdatw[9]_INST_0_i_42_n_0 ),
        .I1(\rgf/bank02/bbuso2l/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr23 [9]),
        .I3(\rgf/bank02/bbuso2l/gr2_bus1__0 ),
        .I4(\rgf/bank02/gr22 [9]),
        .O(\bdatw[9]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[9]_INST_0_i_29 
       (.I0(\rgf/bank02/gr20 [9]),
        .I1(\rgf/bank02/bbuso2l/gr0_bus1__0 ),
        .I2(\bdatw[9]_INST_0_i_43_n_0 ),
        .I3(\bdatw[9]_INST_0_i_44_n_0 ),
        .I4(\bdatw[9]_INST_0_i_45_n_0 ),
        .I5(\bdatw[9]_INST_0_i_46_n_0 ),
        .O(\bdatw[9]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAA8A002022020020)) 
    \bdatw[9]_INST_0_i_3 
       (.I0(\bdatw[15]_INST_0_i_14_n_0 ),
        .I1(\bdatw[15]_INST_0_i_12_n_0 ),
        .I2(\bdatw[15]_INST_0_i_13_n_0 ),
        .I3(\bdatw[9]_INST_0_i_12_n_0 ),
        .I4(ctl_selb_0),
        .I5(\fch/ir [8]),
        .O(\bdatw[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatw[9]_INST_0_i_30 
       (.I0(\bdatw[9]_INST_0_i_47_n_0 ),
        .I1(\rgf/bank13/gr23 [9]),
        .I2(\rgf/bank13/bbuso2l/gr3_bus1__0 ),
        .I3(\rgf/bank13/gr24 [9]),
        .I4(\rgf/bank13/bbuso2l/gr4_bus1__0 ),
        .I5(\bdatw[9]_INST_0_i_48_n_0 ),
        .O(\bdatw[9]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bdatw[9]_INST_0_i_31 
       (.I0(\rgf/sreg/sr [9]),
        .I1(\rgf/bbus_sel_cr [0]),
        .I2(\bdatw[9]_INST_0_i_49_n_0 ),
        .I3(\bdatw[9]_INST_0_i_50_n_0 ),
        .I4(\bdatw[9]_INST_0_i_51_n_0 ),
        .I5(\bdatw[9]_INST_0_i_52_n_0 ),
        .O(\bdatw[9]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_32 
       (.I0(\rgf/bank_sel [3]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr24 [1]),
        .O(\bdatw[9]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_33 
       (.I0(\rgf/bank_sel [3]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr25 [1]),
        .O(\bdatw[9]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_34 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr05 [1]),
        .O(\bdatw[9]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[9]_INST_0_i_35 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank13/gr00 [1]),
        .O(\bdatw[9]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[9]_INST_0_i_36 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank13/gr01 [1]),
        .O(\bdatw[9]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_37 
       (.I0(\rgf/bank_sel [1]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank13/gr04 [1]),
        .O(\bdatw[9]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_38 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank02/gr05 [1]),
        .O(\bdatw[9]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[9]_INST_0_i_39 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank02/gr00 [1]),
        .O(\bdatw[9]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatw[9]_INST_0_i_4 
       (.I0(\rgf/bbus_sel_cr [3]),
        .I1(\rgf/ivec/iv [9]),
        .I2(\rgf/bbus_sel_cr [2]),
        .I3(\rgf/sptr/sp [9]),
        .I4(\rgf/bbus_b02 [9]),
        .I5(\bdatw[9]_INST_0_i_14_n_0 ),
        .O(\bdatw[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bdatw[9]_INST_0_i_40 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_82_n_0 ),
        .I2(\bdatw[12]_INST_0_i_28_n_0 ),
        .I3(\bdatw[12]_INST_0_i_85_n_0 ),
        .I4(ctl_selb_0),
        .I5(\rgf/bank02/gr01 [1]),
        .O(\bdatw[9]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bdatw[9]_INST_0_i_41 
       (.I0(\rgf/bank_sel [0]),
        .I1(\bdatw[15]_INST_0_i_81_n_0 ),
        .I2(\bdatw[12]_INST_0_i_85_n_0 ),
        .I3(ctl_selb_0),
        .I4(\bdatw[12]_INST_0_i_28_n_0 ),
        .I5(\rgf/bank02/gr04 [1]),
        .O(\bdatw[9]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_42 
       (.I0(\rgf/bank02/bbuso2l/gr7_bus1__0 ),
        .I1(\rgf/bank02/gr27 [9]),
        .I2(\rgf/bank02/bbuso2l/gr6_bus1__0 ),
        .I3(\rgf/bank02/gr26 [9]),
        .I4(\rgf/bank02/gr21 [9]),
        .I5(\rgf/bank02/bbuso2l/gr1_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_43 
       (.I0(\rgf/bank02/gr05 [9]),
        .I1(\rgf/bank02/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank02/gr06 [9]),
        .I3(\rgf/bank02/bbuso/gr6_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_44 
       (.I0(\rgf/bank02/gr07 [9]),
        .I1(\rgf/bank02/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank02/gr00 [9]),
        .I3(\rgf/bank02/bbuso/gr0_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_45 
       (.I0(\rgf/bank02/gr01 [9]),
        .I1(\rgf/bank02/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank02/gr02 [9]),
        .I3(\rgf/bank02/bbuso/gr2_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_46 
       (.I0(\rgf/bank02/gr03 [9]),
        .I1(\rgf/bank02/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank02/gr04 [9]),
        .I3(\rgf/bank02/bbuso/gr4_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_47 
       (.I0(\rgf/bank13/gr25 [9]),
        .I1(\rgf/bank13/bbuso2l/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr26 [9]),
        .I3(\rgf/bank13/bbuso2l/gr6_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_48 
       (.I0(\rgf/bank13/gr21 [9]),
        .I1(\rgf/bank13/bbuso2l/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr22 [9]),
        .I3(\rgf/bank13/bbuso2l/gr2_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_48_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_49 
       (.I0(\rgf/bank13/gr05 [9]),
        .I1(\rgf/bank13/bbuso/gr5_bus1__0 ),
        .I2(\rgf/bank13/gr06 [9]),
        .I3(\rgf/bank13/bbuso/gr6_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatw[9]_INST_0_i_5 
       (.I0(\rgf/bbus_sel_cr [4]),
        .I1(\rgf/treg/tr [9]),
        .I2(\rgf/bbus_sel_cr [5]),
        .I3(\rgf/sptr/sp_dec_0 [9]),
        .I4(\rgf/pcnt/pc [9]),
        .I5(\rgf/bbus_sel_cr [1]),
        .O(\bdatw[9]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_50 
       (.I0(\rgf/bank13/gr07 [9]),
        .I1(\rgf/bank13/bbuso/gr7_bus1__0 ),
        .I2(\rgf/bank13/gr00 [9]),
        .I3(\rgf/bank13/bbuso/gr0_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_51 
       (.I0(\rgf/bank13/gr01 [9]),
        .I1(\rgf/bank13/bbuso/gr1_bus1__0 ),
        .I2(\rgf/bank13/gr02 [9]),
        .I3(\rgf/bank13/bbuso/gr2_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatw[9]_INST_0_i_52 
       (.I0(\rgf/bank13/gr03 [9]),
        .I1(\rgf/bank13/bbuso/gr3_bus1__0 ),
        .I2(\rgf/bank13/gr04 [9]),
        .I3(\rgf/bank13/bbuso/gr4_bus1__0 ),
        .O(\bdatw[9]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h221DEE1DFFFFFFFF)) 
    \bdatw[9]_INST_0_i_6 
       (.I0(\bdatw[9]_INST_0_i_15_n_0 ),
        .I1(\bdatw[15]_INST_0_i_12_n_0 ),
        .I2(\fch/ir [1]),
        .I3(ctl_selb_0),
        .I4(\fch/ir [0]),
        .I5(\bdatw[15]_INST_0_i_14_n_0 ),
        .O(\bdatw[9]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatw[9]_INST_0_i_7 
       (.I0(ctl_selb_0),
        .I1(\fch/eir [1]),
        .I2(\bdatw[15]_INST_0_i_5_n_0 ),
        .O(\bdatw[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[9]_INST_0_i_8 
       (.I0(\bdatw[9]_INST_0_i_16_n_0 ),
        .I1(\bdatw[9]_INST_0_i_17_n_0 ),
        .I2(\bdatw[9]_INST_0_i_18_n_0 ),
        .I3(\bdatw[9]_INST_0_i_19_n_0 ),
        .I4(\bdatw[9]_INST_0_i_20_n_0 ),
        .I5(\bdatw[9]_INST_0_i_21_n_0 ),
        .O(\bdatw[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bdatw[9]_INST_0_i_9 
       (.I0(\bdatw[9]_INST_0_i_22_n_0 ),
        .I1(\bdatw[9]_INST_0_i_23_n_0 ),
        .I2(\bdatw[9]_INST_0_i_24_n_0 ),
        .I3(\bdatw[9]_INST_0_i_25_n_0 ),
        .I4(\bdatw[9]_INST_0_i_26_n_0 ),
        .I5(\bdatw[9]_INST_0_i_27_n_0 ),
        .O(\rgf/bbus_b02 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[0]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\ccmd[0]_INST_0_i_1_n_0 ),
        .O(ccmd[0]));
  LUT6 #(
    .INIT(64'h00AEFFAEFFAEFFAE)) 
    \ccmd[0]_INST_0_i_1 
       (.I0(\ccmd[0]_INST_0_i_2_n_0 ),
        .I1(\ccmd[0]_INST_0_i_3_n_0 ),
        .I2(\ccmd[0]_INST_0_i_4_n_0 ),
        .I3(\ccmd[0]_INST_0_i_5_n_0 ),
        .I4(\ccmd[0]_INST_0_i_6_n_0 ),
        .I5(\ccmd[0]_INST_0_i_7_n_0 ),
        .O(\ccmd[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF3FFF3F50105F1F)) 
    \ccmd[0]_INST_0_i_10 
       (.I0(\ccmd[0]_INST_0_i_20_n_0 ),
        .I1(\ccmd[0]_INST_0_i_21_n_0 ),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [9]),
        .I4(\ccmd[0]_INST_0_i_22_n_0 ),
        .I5(stat[1]),
        .O(\ccmd[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD5FFD5D5)) 
    \ccmd[0]_INST_0_i_11 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [11]),
        .I5(\ccmd[4]_INST_0_i_10_n_0 ),
        .O(\ccmd[0]_INST_0_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \ccmd[0]_INST_0_i_12 
       (.I0(stat[1]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [13]),
        .O(\ccmd[0]_INST_0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \ccmd[0]_INST_0_i_13 
       (.I0(\fch/ir [0]),
        .I1(\fch/ir [1]),
        .I2(\fch/ir [3]),
        .O(\ccmd[0]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[0]_INST_0_i_14 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [6]),
        .O(\ccmd[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h3FFFAAFFFFFFFFAA)) 
    \ccmd[0]_INST_0_i_15 
       (.I0(\ccmd[0]_INST_0_i_23_n_0 ),
        .I1(\ccmd[0]_INST_0_i_24_n_0 ),
        .I2(\ccmd[0]_INST_0_i_25_n_0 ),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [9]),
        .I5(\fch/ir [8]),
        .O(\ccmd[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ccmd[0]_INST_0_i_16 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [7]),
        .I3(\ccmd[2]_INST_0_i_14_n_0 ),
        .I4(\fch/ir [13]),
        .I5(\fch/ir [14]),
        .O(\ccmd[0]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[0]_INST_0_i_17 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [1]),
        .O(\ccmd[0]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[0]_INST_0_i_18 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [11]),
        .O(\ccmd[0]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[0]_INST_0_i_19 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [6]),
        .O(\ccmd[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFEF0000)) 
    \ccmd[0]_INST_0_i_2 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [5]),
        .I2(\ccmd[2]_INST_0_i_11_n_0 ),
        .I3(\ccmd[0]_INST_0_i_8_n_0 ),
        .I4(\ccmd[0]_INST_0_i_4_n_0 ),
        .I5(\ccmd[0]_INST_0_i_9_n_0 ),
        .O(\ccmd[0]_INST_0_i_2_n_0 ));
  MUXF7 \ccmd[0]_INST_0_i_20 
       (.I0(\ccmd[0]_INST_0_i_26_n_0 ),
        .I1(\ccmd[0]_INST_0_i_27_n_0 ),
        .O(\ccmd[0]_INST_0_i_20_n_0 ),
        .S(\fch/ir [6]));
  LUT5 #(
    .INIT(32'h91500080)) 
    \ccmd[0]_INST_0_i_21 
       (.I0(stat[1]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [11]),
        .O(\ccmd[0]_INST_0_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hC7)) 
    \ccmd[0]_INST_0_i_22 
       (.I0(\fch/ir [12]),
        .I1(\rgf/sreg/sr [7]),
        .I2(\fch/ir [11]),
        .O(\ccmd[0]_INST_0_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[0]_INST_0_i_23 
       (.I0(\fch/ir [7]),
        .I1(crdy),
        .O(\ccmd[0]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[0]_INST_0_i_24 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [5]),
        .O(\ccmd[0]_INST_0_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[0]_INST_0_i_25 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [4]),
        .O(\ccmd[0]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00002E222E222E22)) 
    \ccmd[0]_INST_0_i_26 
       (.I0(\ccmd[0]_INST_0_i_28_n_0 ),
        .I1(\ccmd[0]_INST_0_i_29_n_0 ),
        .I2(\bcmd[1]_INST_0_i_11_n_0 ),
        .I3(\ccmd[0]_INST_0_i_25_n_0 ),
        .I4(\ccmd[0]_INST_0_i_24_n_0 ),
        .I5(\stat[2]_i_14_n_0 ),
        .O(\ccmd[0]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hABAAAABA)) 
    \ccmd[0]_INST_0_i_27 
       (.I0(\ccmd[0]_INST_0_i_30_n_0 ),
        .I1(\ccmd[0]_INST_0_i_31_n_0 ),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [3]),
        .O(\ccmd[0]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h5575557500300000)) 
    \ccmd[0]_INST_0_i_28 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [11]),
        .I5(crdy),
        .O(\ccmd[0]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hA0A2A0A2AAAAA0A2)) 
    \ccmd[0]_INST_0_i_29 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [9]),
        .I3(crdy),
        .I4(\fch/ir [10]),
        .I5(\fch/ir [11]),
        .O(\ccmd[0]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFAAFFFFFFFE)) 
    \ccmd[0]_INST_0_i_3 
       (.I0(\ccmd[0]_INST_0_i_10_n_0 ),
        .I1(stat[1]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [15]),
        .I4(\fch/ir [11]),
        .I5(\fch/ir [12]),
        .O(\ccmd[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4044505000400050)) 
    \ccmd[0]_INST_0_i_30 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [10]),
        .I5(crdy),
        .O(\ccmd[0]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \ccmd[0]_INST_0_i_31 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [4]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [10]),
        .O(\ccmd[0]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00000004FFFFFFFF)) 
    \ccmd[0]_INST_0_i_4 
       (.I0(\fch/ir [12]),
        .I1(\rgf/sreg/sr [6]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [15]),
        .I4(stat[1]),
        .I5(\fch/ir [13]),
        .O(\ccmd[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0B0B000B0B0)) 
    \ccmd[0]_INST_0_i_5 
       (.I0(\ccmd[0]_INST_0_i_11_n_0 ),
        .I1(\ccmd[0]_INST_0_i_12_n_0 ),
        .I2(stat[0]),
        .I3(\fch/ir [2]),
        .I4(stat[1]),
        .I5(\fch/ir [7]),
        .O(\ccmd[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h003300F300330022)) 
    \ccmd[0]_INST_0_i_6 
       (.I0(\fch/ir [7]),
        .I1(stat[1]),
        .I2(\ccmd[0]_INST_0_i_13_n_0 ),
        .I3(\fch/ir [15]),
        .I4(\fch/ir [10]),
        .I5(\ccmd[0]_INST_0_i_14_n_0 ),
        .O(\ccmd[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h444400004444000F)) 
    \ccmd[0]_INST_0_i_7 
       (.I0(\ccmd[0]_INST_0_i_15_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(\ccmd[0]_INST_0_i_16_n_0 ),
        .I3(\ccmd[0]_INST_0_i_17_n_0 ),
        .I4(\fch/ir [10]),
        .I5(\ccmd[0]_INST_0_i_18_n_0 ),
        .O(\ccmd[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFF)) 
    \ccmd[0]_INST_0_i_8 
       (.I0(\ccmd[0]_INST_0_i_19_n_0 ),
        .I1(\stat[2]_i_6_n_0 ),
        .I2(\bdatw[8]_INST_0_i_27_n_0 ),
        .I3(\fch/ir [12]),
        .I4(\fch/ir [0]),
        .I5(stat[1]),
        .O(\ccmd[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4550554040554055)) 
    \ccmd[0]_INST_0_i_9 
       (.I0(stat[1]),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [15]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [14]),
        .I5(ctl_fetch_inferred_i_11_n_0),
        .O(\ccmd[0]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[1]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .O(ccmd[1]));
  LUT5 #(
    .INIT(32'hFFFF550C)) 
    \ccmd[1]_INST_0_i_1 
       (.I0(\ccmd[1]_INST_0_i_2_n_0 ),
        .I1(\ccmd[1]_INST_0_i_3_n_0 ),
        .I2(\ccmd[1]_INST_0_i_4_n_0 ),
        .I3(\ccmd[1]_INST_0_i_5_n_0 ),
        .I4(stat[1]),
        .O(\ccmd[1]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ccmd[1]_INST_0_i_10 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [1]),
        .O(\ccmd[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \ccmd[1]_INST_0_i_11 
       (.I0(\stat[2]_i_6_n_0 ),
        .I1(\fch/ir [7]),
        .I2(stat[0]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [6]),
        .I5(\ccmd[1]_INST_0_i_18_n_0 ),
        .O(\ccmd[1]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ccmd[1]_INST_0_i_12 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [4]),
        .I3(\fch/ir [8]),
        .O(\ccmd[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011700070)) 
    \ccmd[1]_INST_0_i_13 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [8]),
        .I2(crdy),
        .I3(stat[0]),
        .I4(\fch/ir [10]),
        .I5(\ccmd[1]_INST_0_i_19_n_0 ),
        .O(\ccmd[1]_INST_0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \ccmd[1]_INST_0_i_14 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [8]),
        .O(\ccmd[1]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080CC00C0)) 
    \ccmd[1]_INST_0_i_15 
       (.I0(\ccmd[2]_INST_0_i_10_n_0 ),
        .I1(\ccmd[1]_INST_0_i_20_n_0 ),
        .I2(\fch/ir [4]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [6]),
        .I5(\ccmd[1]_INST_0_i_21_n_0 ),
        .O(\ccmd[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hABABAAABAAAAAAAB)) 
    \ccmd[1]_INST_0_i_16 
       (.I0(\ccmd[1]_INST_0_i_22_n_0 ),
        .I1(stat[0]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [10]),
        .I5(\bdatw[15]_INST_0_i_74_n_0 ),
        .O(\ccmd[1]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \ccmd[1]_INST_0_i_17 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [8]),
        .O(\ccmd[1]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[1]_INST_0_i_18 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [11]),
        .O(\ccmd[1]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h4403C7C3)) 
    \ccmd[1]_INST_0_i_19 
       (.I0(crdy),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [6]),
        .I3(stat[0]),
        .I4(\fch/ir [10]),
        .O(\ccmd[1]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0040444400400040)) 
    \ccmd[1]_INST_0_i_2 
       (.I0(stat[2]),
        .I1(\fch/ir [14]),
        .I2(\ccmd[2]_INST_0_i_16_n_0 ),
        .I3(\fch/ir [13]),
        .I4(\ccmd[1]_INST_0_i_6_n_0 ),
        .I5(\ccmd[1]_INST_0_i_7_n_0 ),
        .O(\ccmd[1]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \ccmd[1]_INST_0_i_20 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [8]),
        .O(\ccmd[1]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF004F)) 
    \ccmd[1]_INST_0_i_21 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [5]),
        .I4(stat[0]),
        .O(\ccmd[1]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h8080888880808000)) 
    \ccmd[1]_INST_0_i_22 
       (.I0(\fch/ir [10]),
        .I1(\iv[15]_i_72_n_0 ),
        .I2(crdy),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [7]),
        .I5(stat[0]),
        .O(\ccmd[1]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h7F575F557F777F77)) 
    \ccmd[1]_INST_0_i_3 
       (.I0(\ccmd[1]_INST_0_i_8_n_0 ),
        .I1(\ccmd[1]_INST_0_i_9_n_0 ),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [14]),
        .I4(\fch/ir [11]),
        .I5(\fch/ir [15]),
        .O(\ccmd[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000EC000000000)) 
    \ccmd[1]_INST_0_i_4 
       (.I0(\ccmd[1]_INST_0_i_10_n_0 ),
        .I1(\bdatw[9]_INST_0_i_15_n_0 ),
        .I2(stat[2]),
        .I3(\fch/ir [2]),
        .I4(\ccmd[1]_INST_0_i_11_n_0 ),
        .I5(\ccmd[1]_INST_0_i_12_n_0 ),
        .O(\ccmd[1]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hA8AA)) 
    \ccmd[1]_INST_0_i_5 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [13]),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [15]),
        .O(\ccmd[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDFFFDFDF)) 
    \ccmd[1]_INST_0_i_6 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [15]),
        .I2(\ccmd[1]_INST_0_i_13_n_0 ),
        .I3(\ccmd[1]_INST_0_i_14_n_0 ),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .I5(\fch/ir [11]),
        .O(\ccmd[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEFFFFFFFFF)) 
    \ccmd[1]_INST_0_i_7 
       (.I0(\ccmd[1]_INST_0_i_15_n_0 ),
        .I1(\ccmd[1]_INST_0_i_16_n_0 ),
        .I2(\fch/ir [10]),
        .I3(stat[0]),
        .I4(\ccmd[1]_INST_0_i_17_n_0 ),
        .I5(\fch/ir [11]),
        .O(\ccmd[1]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[1]_INST_0_i_8 
       (.I0(stat[0]),
        .I1(stat[2]),
        .O(\ccmd[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0020002000200000)) 
    \ccmd[1]_INST_0_i_9 
       (.I0(\ccmd[2]_INST_0_i_27_n_0 ),
        .I1(\ccmd[1]_INST_0_i_18_n_0 ),
        .I2(crdy),
        .I3(\ccmd[2]_INST_0_i_14_n_0 ),
        .I4(\fch/ir [15]),
        .I5(\ccmd[1]_INST_0_i_10_n_0 ),
        .O(\ccmd[1]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \ccmd[2]_INST_0 
       (.I0(\ccmd[2]_INST_0_i_1_n_0 ),
        .I1(\ccmd[2]_INST_0_i_2_n_0 ),
        .I2(\ccmd[4]_INST_0_i_1_n_0 ),
        .O(ccmd[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[2]_INST_0_i_1 
       (.I0(stat[2]),
        .I1(\ccmd[2]_INST_0_i_3_n_0 ),
        .O(\ccmd[2]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ccmd[2]_INST_0_i_10 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [3]),
        .O(\ccmd[2]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ccmd[2]_INST_0_i_11 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [8]),
        .O(\ccmd[2]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ccmd[2]_INST_0_i_12 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [14]),
        .O(\ccmd[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFE00000000)) 
    \ccmd[2]_INST_0_i_13 
       (.I0(\ccmd[2]_INST_0_i_22_n_0 ),
        .I1(\ccmd[2]_INST_0_i_23_n_0 ),
        .I2(\bdatw[15]_INST_0_i_47_n_0 ),
        .I3(\ccmd[2]_INST_0_i_24_n_0 ),
        .I4(\ccmd[2]_INST_0_i_16_n_0 ),
        .I5(\ccmd[2]_INST_0_i_25_n_0 ),
        .O(\ccmd[2]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[2]_INST_0_i_14 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [9]),
        .O(\ccmd[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \ccmd[2]_INST_0_i_15 
       (.I0(\ccmd[2]_INST_0_i_7_n_0 ),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [10]),
        .I3(\ccmd[4]_INST_0_i_19_n_0 ),
        .I4(\ccmd[2]_INST_0_i_26_n_0 ),
        .I5(\ccmd[2]_INST_0_i_27_n_0 ),
        .O(\ccmd[2]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[2]_INST_0_i_16 
       (.I0(\fch/ir [15]),
        .I1(stat[0]),
        .O(\ccmd[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \ccmd[2]_INST_0_i_17 
       (.I0(\ccmd[2]_INST_0_i_28_n_0 ),
        .I1(ctl_fetch_ext_fl_i_6_n_0),
        .I2(\ccmd[2]_INST_0_i_29_n_0 ),
        .I3(\bdatw[9]_INST_0_i_12_n_0 ),
        .I4(\fch/ir [0]),
        .I5(\bdatw[15]_INST_0_i_45_n_0 ),
        .O(\ccmd[2]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ccmd[2]_INST_0_i_18 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [7]),
        .O(\ccmd[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002900)) 
    \ccmd[2]_INST_0_i_19 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [4]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [6]),
        .I5(stat[1]),
        .O(\ccmd[2]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCDDDDCCFCDDDD)) 
    \ccmd[2]_INST_0_i_2 
       (.I0(\ccmd[2]_INST_0_i_4_n_0 ),
        .I1(\ccmd[2]_INST_0_i_5_n_0 ),
        .I2(\ccmd[2]_INST_0_i_6_n_0 ),
        .I3(\fch/ir [15]),
        .I4(\fch/ir [11]),
        .I5(\ccmd[2]_INST_0_i_7_n_0 ),
        .O(\ccmd[2]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[2]_INST_0_i_20 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [10]),
        .O(\ccmd[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C57)) 
    \ccmd[2]_INST_0_i_21 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [8]),
        .I5(stat[1]),
        .O(\ccmd[2]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ccmd[2]_INST_0_i_22 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [7]),
        .O(\ccmd[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDDDF)) 
    \ccmd[2]_INST_0_i_23 
       (.I0(\ccmd[2]_INST_0_i_30_n_0 ),
        .I1(\fch/ir [12]),
        .I2(crdy),
        .I3(stat[0]),
        .I4(\fch/ir [13]),
        .I5(\fch/ir [15]),
        .O(\ccmd[2]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[2]_INST_0_i_24 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [12]),
        .O(\ccmd[2]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF3EBFFFFF3AF)) 
    \ccmd[2]_INST_0_i_25 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [10]),
        .I4(\ccmd[2]_INST_0_i_31_n_0 ),
        .I5(\fch/ir [6]),
        .O(\ccmd[2]_INST_0_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \ccmd[2]_INST_0_i_26 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [0]),
        .O(\ccmd[2]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \ccmd[2]_INST_0_i_27 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [10]),
        .I4(\fch/ir [4]),
        .I5(\fch/ir [5]),
        .O(\ccmd[2]_INST_0_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \ccmd[2]_INST_0_i_28 
       (.I0(stat[0]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [4]),
        .O(\ccmd[2]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \ccmd[2]_INST_0_i_29 
       (.I0(stat[1]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [6]),
        .I4(stat[2]),
        .O(\ccmd[2]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \ccmd[2]_INST_0_i_3 
       (.I0(\ccmd[2]_INST_0_i_8_n_0 ),
        .I1(\ccmd[2]_INST_0_i_9_n_0 ),
        .I2(\ccmd[2]_INST_0_i_10_n_0 ),
        .I3(\fch/ir [12]),
        .I4(\ccmd[2]_INST_0_i_11_n_0 ),
        .I5(\bcmd[0]_INST_0_i_5_n_0 ),
        .O(\ccmd[2]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ccmd[2]_INST_0_i_30 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [8]),
        .O(\ccmd[2]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \ccmd[2]_INST_0_i_31 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [15]),
        .I2(\fch/ir [13]),
        .I3(stat[0]),
        .I4(crdy),
        .I5(\fch/ir [9]),
        .O(\ccmd[2]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EEEEFFFFEEEE)) 
    \ccmd[2]_INST_0_i_4 
       (.I0(\ccmd[2]_INST_0_i_12_n_0 ),
        .I1(\ccmd[2]_INST_0_i_13_n_0 ),
        .I2(\ccmd[2]_INST_0_i_14_n_0 ),
        .I3(\fch/ir [15]),
        .I4(stat[1]),
        .I5(\ccmd[2]_INST_0_i_15_n_0 ),
        .O(\ccmd[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00888008)) 
    \ccmd[2]_INST_0_i_5 
       (.I0(\stat[0]_i_4_n_0 ),
        .I1(\ccmd[2]_INST_0_i_16_n_0 ),
        .I2(\fch/ir [12]),
        .I3(\fch/ir [13]),
        .I4(\fch/ir [14]),
        .I5(\ccmd[2]_INST_0_i_17_n_0 ),
        .O(\ccmd[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF0E)) 
    \ccmd[2]_INST_0_i_6 
       (.I0(crdy),
        .I1(stat[1]),
        .I2(\ccmd[2]_INST_0_i_18_n_0 ),
        .I3(\ccmd[2]_INST_0_i_19_n_0 ),
        .I4(\ccmd[2]_INST_0_i_20_n_0 ),
        .I5(\ccmd[2]_INST_0_i_21_n_0 ),
        .O(\ccmd[2]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \ccmd[2]_INST_0_i_7 
       (.I0(\fch/ir [13]),
        .I1(stat[0]),
        .I2(\fch/ir [12]),
        .I3(\fch/ir [14]),
        .O(\ccmd[2]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \ccmd[2]_INST_0_i_8 
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(\fch/ir [15]),
        .O(\ccmd[2]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \ccmd[2]_INST_0_i_9 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [1]),
        .I2(\fch/ir [0]),
        .O(\ccmd[2]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[3]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .O(ccmd[3]));
  MUXF7 \ccmd[3]_INST_0_i_1 
       (.I0(\ccmd[3]_INST_0_i_2_n_0 ),
        .I1(\ccmd[3]_INST_0_i_3_n_0 ),
        .O(\ccmd[3]_INST_0_i_1_n_0 ),
        .S(\fch/ir [15]));
  LUT6 #(
    .INIT(64'h0000000100010000)) 
    \ccmd[3]_INST_0_i_10 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [9]),
        .I2(stat[0]),
        .I3(stat[1]),
        .I4(\fch/ir [10]),
        .I5(\fch/ir [8]),
        .O(\ccmd[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ccmd[3]_INST_0_i_11 
       (.I0(\ccmd[4]_INST_0_i_10_n_0 ),
        .I1(stat[0]),
        .I2(\fch/ir [8]),
        .I3(stat[1]),
        .I4(\fch/ir [9]),
        .I5(\fch/ir [10]),
        .O(\ccmd[3]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ccmd[3]_INST_0_i_12 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [12]),
        .O(\ccmd[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBDFF)) 
    \ccmd[3]_INST_0_i_13 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [9]),
        .I2(\ccmd[4]_INST_0_i_10_n_0 ),
        .I3(crdy),
        .I4(stat[1]),
        .I5(\ccmd[2]_INST_0_i_7_n_0 ),
        .O(\ccmd[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFF89FFEFFFFF)) 
    \ccmd[3]_INST_0_i_14 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [3]),
        .I2(\ccmd[3]_INST_0_i_17_n_0 ),
        .I3(\ccmd[3]_INST_0_i_18_n_0 ),
        .I4(\fch/ir [0]),
        .I5(\fch/ir [2]),
        .O(\ccmd[3]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ccmd[3]_INST_0_i_15 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [12]),
        .O(\ccmd[3]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00004641)) 
    \ccmd[3]_INST_0_i_16 
       (.I0(stat[0]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [4]),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [5]),
        .O(\ccmd[3]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[3]_INST_0_i_17 
       (.I0(stat[1]),
        .I1(stat[0]),
        .O(\ccmd[3]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ccmd[3]_INST_0_i_18 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [13]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [8]),
        .O(\ccmd[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A2A200)) 
    \ccmd[3]_INST_0_i_2 
       (.I0(\ccmd[3]_INST_0_i_4_n_0 ),
        .I1(\ccmd[3]_INST_0_i_5_n_0 ),
        .I2(\ccmd[3]_INST_0_i_6_n_0 ),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [10]),
        .I5(\ccmd[3]_INST_0_i_7_n_0 ),
        .O(\ccmd[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFDFDFFFDFDFD)) 
    \ccmd[3]_INST_0_i_3 
       (.I0(\fch/ir [14]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [13]),
        .I5(\fch/ir [12]),
        .O(\ccmd[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555FF7F55555555)) 
    \ccmd[3]_INST_0_i_4 
       (.I0(\ccmd[3]_INST_0_i_8_n_0 ),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [7]),
        .I3(\ccmd[3]_INST_0_i_9_n_0 ),
        .I4(\ccmd[3]_INST_0_i_10_n_0 ),
        .I5(\ccmd[3]_INST_0_i_11_n_0 ),
        .O(\ccmd[3]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \ccmd[3]_INST_0_i_5 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [10]),
        .O(\ccmd[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD1FFFFFFFFFF)) 
    \ccmd[3]_INST_0_i_6 
       (.I0(crdy),
        .I1(stat[1]),
        .I2(stat[0]),
        .I3(\ccmd[3]_INST_0_i_12_n_0 ),
        .I4(\fch/ir [11]),
        .I5(\fch/ir [13]),
        .O(\ccmd[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEE0EEE0E0)) 
    \ccmd[3]_INST_0_i_7 
       (.I0(\ccmd[3]_INST_0_i_13_n_0 ),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .I2(\ccmd[3]_INST_0_i_14_n_0 ),
        .I3(crdy),
        .I4(ctl_fetch_ext_fl_i_3_n_0),
        .I5(\ccmd[3]_INST_0_i_15_n_0 ),
        .O(\ccmd[3]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \ccmd[3]_INST_0_i_8 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [13]),
        .O(\ccmd[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFB3B3F3FFBFBF)) 
    \ccmd[3]_INST_0_i_9 
       (.I0(stat[0]),
        .I1(\fch/ir [10]),
        .I2(stat[1]),
        .I3(\ccmd[3]_INST_0_i_16_n_0 ),
        .I4(\fch/ir [9]),
        .I5(crdy),
        .O(\ccmd[3]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .O(ccmd[4]));
  LUT6 #(
    .INIT(64'h000000000000FE0E)) 
    \ccmd[4]_INST_0_i_1 
       (.I0(\ccmd[4]_INST_0_i_3_n_0 ),
        .I1(\ccmd[4]_INST_0_i_4_n_0 ),
        .I2(\fch/ir [11]),
        .I3(\ccmd[4]_INST_0_i_5_n_0 ),
        .I4(\fch/ir [15]),
        .I5(stat[2]),
        .O(\ccmd[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[4]_INST_0_i_10 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [6]),
        .O(\ccmd[4]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0_i_11 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [10]),
        .O(\ccmd[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00000000E8FF)) 
    \ccmd[4]_INST_0_i_12 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [8]),
        .I3(crdy),
        .I4(stat[1]),
        .I5(stat[0]),
        .O(\ccmd[4]_INST_0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \ccmd[4]_INST_0_i_13 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [10]),
        .O(\ccmd[4]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ccmd[4]_INST_0_i_14 
       (.I0(\fch/ir [11]),
        .I1(stat[1]),
        .O(\ccmd[4]_INST_0_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \ccmd[4]_INST_0_i_15 
       (.I0(\fch/ir [11]),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .I2(crdy),
        .O(\ccmd[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000EFFF000000)) 
    \ccmd[4]_INST_0_i_16 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [8]),
        .I2(\ccmd[4]_INST_0_i_10_n_0 ),
        .I3(stat[0]),
        .I4(stat[1]),
        .I5(\fch/ir [9]),
        .O(\ccmd[4]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h02000000FFFFFFFF)) 
    \ccmd[4]_INST_0_i_17 
       (.I0(\fch/ir [10]),
        .I1(stat[1]),
        .I2(\ccmd[4]_INST_0_i_20_n_0 ),
        .I3(\fch/ir [6]),
        .I4(\stat[0]_i_14_n_0 ),
        .I5(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\ccmd[4]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ccmd[4]_INST_0_i_18 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [10]),
        .O(\ccmd[4]_INST_0_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \ccmd[4]_INST_0_i_19 
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [13]),
        .O(\ccmd[4]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFEFFFFFFF)) 
    \ccmd[4]_INST_0_i_2 
       (.I0(\ccmd[4]_INST_0_i_6_n_0 ),
        .I1(stat[2]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [13]),
        .I4(\fch/ir [12]),
        .I5(\fch/ir [15]),
        .O(\ccmd[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ccmd[4]_INST_0_i_20 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [8]),
        .O(\ccmd[4]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0200022222222222)) 
    \ccmd[4]_INST_0_i_3 
       (.I0(\ccmd[4]_INST_0_i_7_n_0 ),
        .I1(\ccmd[4]_INST_0_i_8_n_0 ),
        .I2(stat[0]),
        .I3(\bdatw[8]_INST_0_i_27_n_0 ),
        .I4(\fch/ir [0]),
        .I5(stat[1]),
        .O(\ccmd[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045550000)) 
    \ccmd[4]_INST_0_i_4 
       (.I0(\ccmd[4]_INST_0_i_9_n_0 ),
        .I1(\ccmd[4]_INST_0_i_10_n_0 ),
        .I2(\ccmd[4]_INST_0_i_11_n_0 ),
        .I3(ctl_fetch_ext_fl_i_3_n_0),
        .I4(\bcmd[2]_INST_0_i_2_n_0 ),
        .I5(\ccmd[4]_INST_0_i_12_n_0 ),
        .O(\ccmd[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0800888808000080)) 
    \ccmd[4]_INST_0_i_5 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(\ccmd[4]_INST_0_i_13_n_0 ),
        .I2(stat[0]),
        .I3(\fch/ir [7]),
        .I4(stat[1]),
        .I5(crdy),
        .O(\ccmd[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FBBBBFFFFBBBB)) 
    \ccmd[4]_INST_0_i_6 
       (.I0(stat[0]),
        .I1(\ccmd[4]_INST_0_i_14_n_0 ),
        .I2(\ccmd[4]_INST_0_i_15_n_0 ),
        .I3(\ccmd[4]_INST_0_i_16_n_0 ),
        .I4(\fch/ir [12]),
        .I5(\ccmd[4]_INST_0_i_17_n_0 ),
        .O(\ccmd[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001010001)) 
    \ccmd[4]_INST_0_i_7 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [4]),
        .I2(\ccmd[4]_INST_0_i_18_n_0 ),
        .I3(ctl_fetch_ext_fl_i_3_n_0),
        .I4(crdy),
        .I5(\ccmd[4]_INST_0_i_19_n_0 ),
        .O(\ccmd[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8FFFF)) 
    \ccmd[4]_INST_0_i_8 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [2]),
        .I5(\fch/ir [6]),
        .O(\ccmd[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAFF083CAAFF)) 
    \ccmd[4]_INST_0_i_9 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(stat[1]),
        .I2(\fch/ir [7]),
        .I3(crdy),
        .I4(\bcmd[0]_INST_0_i_7_n_0 ),
        .I5(\fch/ir [8]),
        .O(\ccmd[4]_INST_0_i_9_n_0 ));
  FDRE \ctl/stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ctl/stat_nx [0]),
        .Q(stat[0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \ctl/stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ctl/stat_nx [1]),
        .Q(stat[1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \ctl/stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ctl/stat_nx [2]),
        .Q(stat[2]),
        .R(\rgf/pcnt/p_0_in ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    ctl_fetch_ext_fl_i_1
       (.I0(ctl_fetch_ext_fl_i_2_n_0),
        .I1(ctl_fetch_ext_fl_i_3_n_0),
        .I2(ctl_fetch_ext_fl_i_4_n_0),
        .I3(ctl_fetch_ext_fl_i_5_n_0),
        .I4(\fch/ir [2]),
        .I5(\fch/ir [0]),
        .O(ctl_fetch_ext));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    ctl_fetch_ext_fl_i_2
       (.I0(ctl_fetch_ext_fl_i_6_n_0),
        .I1(ctl_fetch_ext_fl_i_7_n_0),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [5]),
        .I5(\fch/ir [8]),
        .O(ctl_fetch_ext_fl_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_ext_fl_i_3
       (.I0(stat[0]),
        .I1(stat[1]),
        .O(ctl_fetch_ext_fl_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ctl_fetch_ext_fl_i_4
       (.I0(stat[2]),
        .I1(\fch/ir [1]),
        .O(ctl_fetch_ext_fl_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ctl_fetch_ext_fl_i_5
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [4]),
        .O(ctl_fetch_ext_fl_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    ctl_fetch_ext_fl_i_6
       (.I0(\fch/ir [15]),
        .I1(\fch/ir [13]),
        .I2(\fch/ir [12]),
        .I3(\fch/ir [14]),
        .O(ctl_fetch_ext_fl_i_6_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ctl_fetch_ext_fl_i_7
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [9]),
        .O(ctl_fetch_ext_fl_i_7_n_0));
  LUT6 #(
    .INIT(64'hEEE0EEEEEEEEEEEE)) 
    ctl_fetch_inferred_i_1
       (.I0(ctl_fetch_inferred_i_2_n_0),
        .I1(ctl_fetch_inferred_i_3_n_0),
        .I2(brdy),
        .I3(ctl_fetch_inferred_i_4_n_0),
        .I4(\bcmd[2]_INST_0_i_2_n_0 ),
        .I5(ctl_fetch_inferred_i_5_n_0),
        .O(ctl_fetch));
  LUT6 #(
    .INIT(64'h00000000FAFA8808)) 
    ctl_fetch_inferred_i_10
       (.I0(crdy),
        .I1(stat[0]),
        .I2(\bcmd[1]_INST_0_i_9_n_0 ),
        .I3(\rgf/sreg/sr [10]),
        .I4(\fch/ir [8]),
        .I5(ctl_fetch_inferred_i_26_n_0),
        .O(ctl_fetch_inferred_i_10_n_0));
  LUT5 #(
    .INIT(32'h5FA0CFCF)) 
    ctl_fetch_inferred_i_11
       (.I0(\rgf/sreg/sr [7]),
        .I1(\rgf/sreg/sr [4]),
        .I2(\fch/ir [12]),
        .I3(\rgf/sreg/sr [5]),
        .I4(\fch/ir [14]),
        .O(ctl_fetch_inferred_i_11_n_0));
  LUT6 #(
    .INIT(64'hE0EFFFFF00000000)) 
    ctl_fetch_inferred_i_12
       (.I0(\bcmd[2]_INST_0_i_3_n_0 ),
        .I1(ctl_fetch_inferred_i_27_n_0),
        .I2(\fch/ir [14]),
        .I3(\rgf/sreg/sr [7]),
        .I4(\fch/ir [12]),
        .I5(ctl_fetch_inferred_i_28_n_0),
        .O(ctl_fetch_inferred_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF540000)) 
    ctl_fetch_inferred_i_13
       (.I0(ctl_fetch_inferred_i_29_n_0),
        .I1(ctl_fetch_inferred_i_30_n_0),
        .I2(\bdatw[9]_INST_0_i_12_n_0 ),
        .I3(\fch/ir [9]),
        .I4(ctl_fetch_inferred_i_31_n_0),
        .I5(\fch/ir [11]),
        .O(ctl_fetch_inferred_i_13_n_0));
  LUT6 #(
    .INIT(64'h0222222202220000)) 
    ctl_fetch_inferred_i_14
       (.I0(ctl_fetch_inferred_i_32_n_0),
        .I1(ctl_fetch_inferred_i_33_n_0),
        .I2(\fch/ir [9]),
        .I3(stat[0]),
        .I4(\fch/ir [6]),
        .I5(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(ctl_fetch_inferred_i_14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctl_fetch_inferred_i_15
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [6]),
        .O(ctl_fetch_inferred_i_15_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ctl_fetch_inferred_i_16
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [3]),
        .O(ctl_fetch_inferred_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBB1)) 
    ctl_fetch_inferred_i_17
       (.I0(\bcmd[0]_INST_0_i_8_n_0 ),
        .I1(\fch/ir [12]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(\fch/ir [15]),
        .I5(stat[2]),
        .O(ctl_fetch_inferred_i_17_n_0));
  LUT6 #(
    .INIT(64'h8080888880888088)) 
    ctl_fetch_inferred_i_18
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [13]),
        .I2(stat[1]),
        .I3(\fch/ir [10]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [9]),
        .O(ctl_fetch_inferred_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080008000800000)) 
    ctl_fetch_inferred_i_19
       (.I0(ctl_fetch_inferred_i_34_n_0),
        .I1(ctl_fetch_inferred_i_35_n_0),
        .I2(ctl_fetch_inferred_i_36_n_0),
        .I3(ctl_fetch_inferred_i_37_n_0),
        .I4(stat[1]),
        .I5(ctl_fetch_inferred_i_38_n_0),
        .O(ctl_fetch_inferred_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAEAAAA)) 
    ctl_fetch_inferred_i_2
       (.I0(ctl_fetch_inferred_i_6_n_0),
        .I1(ctl_fetch_inferred_i_7_n_0),
        .I2(ctl_fetch_inferred_i_8_n_0),
        .I3(\bcmd[0]_INST_0_i_8_n_0 ),
        .I4(crdy),
        .I5(ctl_fetch_inferred_i_9_n_0),
        .O(ctl_fetch_inferred_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000001F1FFF1F)) 
    ctl_fetch_inferred_i_20
       (.I0(\rgf/sreg/sr [11]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [8]),
        .I3(stat[0]),
        .I4(\rgf/sreg/sr [10]),
        .I5(ctl_fetch_inferred_i_39_n_0),
        .O(ctl_fetch_inferred_i_20_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    ctl_fetch_inferred_i_21
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [10]),
        .O(ctl_fetch_inferred_i_21_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEFEEE)) 
    ctl_fetch_inferred_i_22
       (.I0(ctl_fetch_inferred_i_40_n_0),
        .I1(ctl_fetch_inferred_i_41_n_0),
        .I2(stat[0]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [8]),
        .I5(ctl_fetch_inferred_i_42_n_0),
        .O(ctl_fetch_inferred_i_22_n_0));
  LUT6 #(
    .INIT(64'hFFBBFEFEFFFFFFFE)) 
    ctl_fetch_inferred_i_23
       (.I0(ctl_fetch_inferred_i_43_n_0),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [4]),
        .I3(stat[0]),
        .I4(\fch/ir [5]),
        .I5(\fch/ir [3]),
        .O(ctl_fetch_inferred_i_23_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ctl_fetch_inferred_i_24
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [10]),
        .O(ctl_fetch_inferred_i_24_n_0));
  LUT6 #(
    .INIT(64'h0000090000000000)) 
    ctl_fetch_inferred_i_25
       (.I0(\rgf/sreg/sr [7]),
        .I1(\rgf/sreg/sr [5]),
        .I2(\fch/ir [13]),
        .I3(\rgf/sreg/sr [4]),
        .I4(\fch/ir [14]),
        .I5(\bcmd[2]_INST_0_i_1_n_0 ),
        .O(ctl_fetch_inferred_i_25_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    ctl_fetch_inferred_i_26
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [13]),
        .I2(\fch/ir [10]),
        .O(ctl_fetch_inferred_i_26_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_inferred_i_27
       (.I0(crdy),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(ctl_fetch_inferred_i_27_n_0));
  LUT3 #(
    .INIT(8'hB0)) 
    ctl_fetch_inferred_i_28
       (.I0(\fch/ir [12]),
        .I1(\rgf/sreg/sr [6]),
        .I2(\fch/ir [13]),
        .O(ctl_fetch_inferred_i_28_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080808)) 
    ctl_fetch_inferred_i_29
       (.I0(\fch/ir [0]),
        .I1(crdy),
        .I2(ctl_fetch_inferred_i_38_n_0),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [1]),
        .I5(tout__1_carry_i_17_n_0),
        .O(ctl_fetch_inferred_i_29_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAA)) 
    ctl_fetch_inferred_i_3
       (.I0(ctl_fetch_inferred_i_10_n_0),
        .I1(ctl_fetch_inferred_i_11_n_0),
        .I2(\fch/ir [13]),
        .I3(\bcmd[2]_INST_0_i_1_n_0 ),
        .I4(ctl_fetch_inferred_i_12_n_0),
        .I5(ctl_fetch_inferred_i_13_n_0),
        .O(ctl_fetch_inferred_i_3_n_0));
  LUT6 #(
    .INIT(64'h2000AA20AAAAAAAA)) 
    ctl_fetch_inferred_i_30
       (.I0(ctl_fetch_inferred_i_44_n_0),
        .I1(irq_lev[0]),
        .I2(\rgf/sreg/sr [2]),
        .I3(\rgf/sreg/sr [3]),
        .I4(irq_lev[1]),
        .I5(irq),
        .O(ctl_fetch_inferred_i_30_n_0));
  LUT6 #(
    .INIT(64'h000000000001C0C1)) 
    ctl_fetch_inferred_i_31
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [13]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [12]),
        .I4(stat[0]),
        .I5(ctl_fetch_inferred_i_45_n_0),
        .O(ctl_fetch_inferred_i_31_n_0));
  LUT6 #(
    .INIT(64'hE4646464AAAAAAAA)) 
    ctl_fetch_inferred_i_32
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [5]),
        .I5(\fch/ir [11]),
        .O(ctl_fetch_inferred_i_32_n_0));
  LUT6 #(
    .INIT(64'hAAAAFFFFFFFFA8FF)) 
    ctl_fetch_inferred_i_33
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [9]),
        .O(ctl_fetch_inferred_i_33_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    ctl_fetch_inferred_i_34
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [13]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [12]),
        .O(ctl_fetch_inferred_i_34_n_0));
  LUT6 #(
    .INIT(64'h0000000000000070)) 
    ctl_fetch_inferred_i_35
       (.I0(\fch/ir [2]),
        .I1(stat[2]),
        .I2(ctl_fetch_inferred_i_46_n_0),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [15]),
        .I5(\ccmd[0]_INST_0_i_17_n_0 ),
        .O(ctl_fetch_inferred_i_35_n_0));
  LUT5 #(
    .INIT(32'h00FC37D4)) 
    ctl_fetch_inferred_i_36
       (.I0(stat[1]),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [1]),
        .I3(\fch/ir [0]),
        .I4(\fch/ir [3]),
        .O(ctl_fetch_inferred_i_36_n_0));
  LUT6 #(
    .INIT(64'hFFEEFFEEEAEAEAAA)) 
    ctl_fetch_inferred_i_37
       (.I0(\bcmd[1]_INST_0_i_7_n_0 ),
        .I1(stat[1]),
        .I2(stat[0]),
        .I3(\fch/ir [1]),
        .I4(\fch/ir [3]),
        .I5(stat[2]),
        .O(ctl_fetch_inferred_i_37_n_0));
  LUT4 #(
    .INIT(16'h4777)) 
    ctl_fetch_inferred_i_38
       (.I0(\fch/ir [3]),
        .I1(\rgf/sreg/sr [10]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [1]),
        .O(ctl_fetch_inferred_i_38_n_0));
  LUT5 #(
    .INIT(32'h1011FFFF)) 
    ctl_fetch_inferred_i_39
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [7]),
        .I3(\rgf/sreg/sr [11]),
        .I4(\fch/ir [10]),
        .O(ctl_fetch_inferred_i_39_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ctl_fetch_inferred_i_4
       (.I0(\fch/ir [15]),
        .I1(stat[2]),
        .O(ctl_fetch_inferred_i_4_n_0));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFFFE)) 
    ctl_fetch_inferred_i_40
       (.I0(ctl_fetch_inferred_i_47_n_0),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(\ccmd[2]_INST_0_i_24_n_0 ),
        .I4(\rgf/sreg/sr [7]),
        .I5(\fch/ir [14]),
        .O(ctl_fetch_inferred_i_40_n_0));
  LUT5 #(
    .INIT(32'h00100F10)) 
    ctl_fetch_inferred_i_41
       (.I0(\fch/ir [14]),
        .I1(\rgf/sreg/sr [4]),
        .I2(\fch/ir [12]),
        .I3(\fch/ir [13]),
        .I4(\rgf/sreg/sr [6]),
        .O(ctl_fetch_inferred_i_41_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF232F0000)) 
    ctl_fetch_inferred_i_42
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [7]),
        .I4(\bcmd[2]_INST_0_i_2_n_0 ),
        .I5(ctl_fetch_inferred_i_48_n_0),
        .O(ctl_fetch_inferred_i_42_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    ctl_fetch_inferred_i_43
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [7]),
        .O(ctl_fetch_inferred_i_43_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ctl_fetch_inferred_i_44
       (.I0(\fch/ir [0]),
        .I1(\fch/ir [3]),
        .O(ctl_fetch_inferred_i_44_n_0));
  LUT5 #(
    .INIT(32'hDFDFFFFC)) 
    ctl_fetch_inferred_i_45
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [10]),
        .O(ctl_fetch_inferred_i_45_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ctl_fetch_inferred_i_46
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [10]),
        .O(ctl_fetch_inferred_i_46_n_0));
  LUT6 #(
    .INIT(64'h0404FF04FF04FF04)) 
    ctl_fetch_inferred_i_47
       (.I0(\rgf/sreg/sr [5]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [12]),
        .I3(stat[0]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [10]),
        .O(ctl_fetch_inferred_i_47_n_0));
  LUT6 #(
    .INIT(64'h0909090900000900)) 
    ctl_fetch_inferred_i_48
       (.I0(\rgf/sreg/sr [7]),
        .I1(\rgf/sreg/sr [5]),
        .I2(\fch/ir [13]),
        .I3(\rgf/sreg/sr [4]),
        .I4(\fch/ir [14]),
        .I5(\fch/ir [12]),
        .O(ctl_fetch_inferred_i_48_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAEAAAAAAA)) 
    ctl_fetch_inferred_i_5
       (.I0(ctl_fetch_inferred_i_14_n_0),
        .I1(ctl_fetch_inferred_i_15_n_0),
        .I2(ctl_fetch_inferred_i_16_n_0),
        .I3(\ccmd[4]_INST_0_i_14_n_0 ),
        .I4(\fch/ir [10]),
        .I5(\bcmd[2]_INST_0_i_3_n_0 ),
        .O(ctl_fetch_inferred_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000000EAEEEAEA)) 
    ctl_fetch_inferred_i_6
       (.I0(ctl_fetch_inferred_i_17_n_0),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .I2(ctl_fetch_inferred_i_18_n_0),
        .I3(\stat[2]_i_14_n_0 ),
        .I4(stat[0]),
        .I5(ctl_fetch_inferred_i_19_n_0),
        .O(ctl_fetch_inferred_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAFEEE)) 
    ctl_fetch_inferred_i_7
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [10]),
        .I5(ctl_fetch_inferred_i_20_n_0),
        .O(ctl_fetch_inferred_i_7_n_0));
  LUT6 #(
    .INIT(64'h00000000808BB0BB)) 
    ctl_fetch_inferred_i_8
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [10]),
        .I2(stat[0]),
        .I3(stat[1]),
        .I4(\fch/ir [12]),
        .I5(ctl_fetch_inferred_i_21_n_0),
        .O(ctl_fetch_inferred_i_8_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAE0000)) 
    ctl_fetch_inferred_i_9
       (.I0(ctl_fetch_inferred_i_22_n_0),
        .I1(ctl_fetch_inferred_i_23_n_0),
        .I2(ctl_fetch_inferred_i_24_n_0),
        .I3(\bcmd[0]_INST_0_i_8_n_0 ),
        .I4(\fch/ir [11]),
        .I5(ctl_fetch_inferred_i_25_n_0),
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
        .O(eir_fl0));
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
        .Q(ctl_fetch_ext_fl),
        .R(\<const0> ));
  FDRE \fch/ctl_fetch_fl_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(ctl_fetch),
        .Q(ctl_fetch_fl),
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
        .R(eir_fl0));
  FDRE \fch/eir_fl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[2]_i_1_n_0 ),
        .Q(\fch/eir_fl_reg_n_0_[2] ),
        .R(eir_fl0));
  FDRE \fch/eir_fl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[3]_i_1_n_0 ),
        .Q(\fch/eir_fl_reg_n_0_[3] ),
        .R(eir_fl0));
  FDRE \fch/eir_fl_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[4]_i_1_n_0 ),
        .Q(\fch/eir_fl_reg_n_0_[4] ),
        .R(eir_fl0));
  FDRE \fch/eir_fl_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[5]_i_1_n_0 ),
        .Q(\fch/eir_fl_reg_n_0_[5] ),
        .R(eir_fl0));
  FDRE \fch/eir_fl_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\eir_fl[6]_i_2_n_0 ),
        .Q(\fch/eir_fl_reg_n_0_[6] ),
        .R(eir_fl0));
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
       (.I0(rst_n_fl),
        .I1(\fch/eir_fl_reg_n_0_[15] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[15]),
        .O(\fch/eir [15]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_10 
       (.I0(rst_n_fl),
        .I1(\fch/eir_fl_reg_n_0_[6] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[6]),
        .O(\fch/eir [6]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_11 
       (.I0(rst_n_fl),
        .I1(\fch/eir_fl_reg_n_0_[5] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[5]),
        .O(\fch/eir [5]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_12 
       (.I0(rst_n_fl),
        .I1(\fch/eir_fl_reg_n_0_[4] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[4]),
        .O(\fch/eir [4]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_13 
       (.I0(rst_n_fl),
        .I1(\fch/eir_fl_reg_n_0_[3] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[3]),
        .O(\fch/eir [3]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_14 
       (.I0(rst_n_fl),
        .I1(\fch/eir_fl_reg_n_0_[2] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[2]),
        .O(\fch/eir [2]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_15 
       (.I0(rst_n_fl),
        .I1(\fch/eir_fl_reg_n_0_[1] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[1]),
        .O(\fch/eir [1]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_16 
       (.I0(rst_n_fl),
        .I1(\fch/eir_fl_reg_n_0_[0] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[0]),
        .O(\fch/eir [0]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_2 
       (.I0(rst_n_fl),
        .I1(\fch/eir_fl_reg_n_0_[14] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[14]),
        .O(\fch/eir [14]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_3 
       (.I0(rst_n_fl),
        .I1(\fch/eir_fl_reg_n_0_[13] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[13]),
        .O(\fch/eir [13]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_4 
       (.I0(rst_n_fl),
        .I1(\fch/eir_fl_reg_n_0_[12] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[12]),
        .O(\fch/eir [12]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_5 
       (.I0(rst_n_fl),
        .I1(\fch/eir_fl_reg_n_0_[11] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[11]),
        .O(\fch/eir [11]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_6 
       (.I0(rst_n_fl),
        .I1(\fch/eir_fl_reg_n_0_[10] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[10]),
        .O(\fch/eir [10]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_7 
       (.I0(rst_n_fl),
        .I1(\fch/eir_fl_reg_n_0_[9] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[9]),
        .O(\fch/eir [9]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_8 
       (.I0(rst_n_fl),
        .I1(\fch/eir_fl_reg_n_0_[8] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[8]),
        .O(\fch/eir [8]));
  LUT4 #(
    .INIT(16'hA808)) 
    \fch/eir_inferred_i_9 
       (.I0(rst_n_fl),
        .I1(\fch/eir_fl_reg_n_0_[7] ),
        .I2(ctl_fetch_ext_fl),
        .I3(fdat[7]),
        .O(\fch/eir [7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \fch/fch_irq_lev[0]_i_1 
       (.I0(irq_lev[0]),
        .I1(\fch/fch_irq_lev0 ),
        .I2(fch_irq_lev[0]),
        .O(\fch/fch_irq_lev[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \fch/fch_irq_lev[1]_i_1 
       (.I0(irq_lev[1]),
        .I1(\fch/fch_irq_lev0 ),
        .I2(fch_irq_lev[1]),
        .O(\fch/fch_irq_lev[1]_i_1_n_0 ));
  FDRE \fch/fch_irq_lev_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/fch_irq_lev[0]_i_1_n_0 ),
        .Q(fch_irq_lev[0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/fch_irq_lev_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/fch_irq_lev[1]_i_1_n_0 ),
        .Q(fch_irq_lev[1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/fch_irq_req_fl_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(fch_irq_req),
        .Q(fch_irq_req_fl),
        .R(\<const0> ));
  FDRE \fch/ir_fl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [0]),
        .Q(ir_fl[0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/ir_fl_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [10]),
        .Q(ir_fl[10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/ir_fl_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [11]),
        .Q(ir_fl[11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/ir_fl_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [12]),
        .Q(ir_fl[12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/ir_fl_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [13]),
        .Q(ir_fl[13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/ir_fl_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [14]),
        .Q(ir_fl[14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/ir_fl_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [15]),
        .Q(ir_fl[15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/ir_fl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [1]),
        .Q(ir_fl[1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/ir_fl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [2]),
        .Q(ir_fl[2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/ir_fl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [3]),
        .Q(ir_fl[3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/ir_fl_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [4]),
        .Q(ir_fl[4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/ir_fl_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [5]),
        .Q(ir_fl[5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/ir_fl_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [6]),
        .Q(ir_fl[6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/ir_fl_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [7]),
        .Q(ir_fl[7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/ir_fl_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [8]),
        .Q(ir_fl[8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \fch/ir_fl_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fch/ir [9]),
        .Q(ir_fl[9]),
        .R(\rgf/pcnt/p_0_in ));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_1 
       (.I0(rst_n_fl),
        .I1(ir_fl[15]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[15]),
        .O(\fch/ir [15]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_10 
       (.I0(rst_n_fl),
        .I1(ir_fl[6]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[6]),
        .O(\fch/ir [6]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_11 
       (.I0(rst_n_fl),
        .I1(ir_fl[5]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[5]),
        .O(\fch/ir [5]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_12 
       (.I0(rst_n_fl),
        .I1(ir_fl[4]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[4]),
        .O(\fch/ir [4]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_13 
       (.I0(rst_n_fl),
        .I1(ir_fl[3]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[3]),
        .O(\fch/ir [3]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_14 
       (.I0(rst_n_fl),
        .I1(ir_fl[2]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[2]),
        .O(\fch/ir [2]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_15 
       (.I0(rst_n_fl),
        .I1(ir_fl[1]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[1]),
        .O(\fch/ir [1]));
  LUT5 #(
    .INIT(32'hA8A8A808)) 
    \fch/ir_inferred_i_16 
       (.I0(rst_n_fl),
        .I1(ir_fl[0]),
        .I2(ctl_fetch_fl),
        .I3(fdat[0]),
        .I4(fch_irq_req_fl),
        .O(\fch/ir [0]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_2 
       (.I0(rst_n_fl),
        .I1(ir_fl[14]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[14]),
        .O(\fch/ir [14]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_3 
       (.I0(rst_n_fl),
        .I1(ir_fl[13]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[13]),
        .O(\fch/ir [13]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_4 
       (.I0(rst_n_fl),
        .I1(ir_fl[12]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[12]),
        .O(\fch/ir [12]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_5 
       (.I0(rst_n_fl),
        .I1(ir_fl[11]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[11]),
        .O(\fch/ir [11]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_6 
       (.I0(rst_n_fl),
        .I1(ir_fl[10]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[10]),
        .O(\fch/ir [10]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_7 
       (.I0(rst_n_fl),
        .I1(ir_fl[9]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[9]),
        .O(\fch/ir [9]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_8 
       (.I0(rst_n_fl),
        .I1(ir_fl[8]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[8]),
        .O(\fch/ir [8]));
  LUT5 #(
    .INIT(32'h08A80808)) 
    \fch/ir_inferred_i_9 
       (.I0(rst_n_fl),
        .I1(ir_fl[7]),
        .I2(ctl_fetch_fl),
        .I3(fch_irq_req_fl),
        .I4(fdat[7]),
        .O(\fch/ir [7]));
  FDRE \fch/rst_n_fl_reg 
       (.C(clk),
        .CE(\<const1> ),
        .D(rst_n),
        .Q(rst_n_fl),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fch_irq_lev[1]_i_2 
       (.I0(ctl_fetch_ext_fl_i_2_n_0),
        .I1(fch_irq_req),
        .I2(\fch/ir [4]),
        .I3(\fch/ir [2]),
        .I4(\fch_irq_lev[1]_i_3_n_0 ),
        .I5(\bcmd[2]_INST_0_i_1_n_0 ),
        .O(\fch/fch_irq_lev0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \fch_irq_lev[1]_i_3 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [3]),
        .I2(brdy),
        .I3(\fch/ir [0]),
        .O(\fch_irq_lev[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h2020A220)) 
    fch_irq_req_fl_i_1
       (.I0(irq),
        .I1(irq_lev[1]),
        .I2(\rgf/sreg/sr [3]),
        .I3(\rgf/sreg/sr [2]),
        .I4(irq_lev[0]),
        .O(fch_irq_req));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\rgf/sreg/sr [0]),
        .I5(\rgf/sreg/sr [1]),
        .O(\grn[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__0 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \grn[15]_i_1__1 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \grn[15]_i_1__10 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__10_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__11 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [0]),
        .I5(\rgf/sreg/sr [1]),
        .O(\grn[15]_i_1__11_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__12 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__12_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \grn[15]_i_1__13 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \grn[15]_i_1__14 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__14_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__15 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\rgf/sreg/sr [0]),
        .I5(\rgf/sreg/sr [1]),
        .O(\grn[15]_i_1__15_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__16 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__16_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \grn[15]_i_1__17 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grn[15]_i_1__18 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__18_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__19 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [0]),
        .I5(\rgf/sreg/sr [1]),
        .O(\grn[15]_i_1__19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \grn[15]_i_1__2 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2__0_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__20 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__20_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \grn[15]_i_1__21 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grn[15]_i_1__22 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__22_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__23 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\rgf/sreg/sr [0]),
        .I5(\rgf/sreg/sr [1]),
        .O(\grn[15]_i_1__23_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__24 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__24_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \grn[15]_i_1__25 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grn[15]_i_1__26 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__26_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__27 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [0]),
        .I5(\rgf/sreg/sr [1]),
        .O(\grn[15]_i_1__27_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \grn[15]_i_1__28 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__28_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \grn[15]_i_1__29 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__29_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__3 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [0]),
        .I5(\rgf/sreg/sr [1]),
        .O(\grn[15]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \grn[15]_i_1__30 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__30_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__4 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \grn[15]_i_1__5 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \grn[15]_i_1__6 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__7 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\rgf/sreg/sr [0]),
        .I5(\rgf/sreg/sr [1]),
        .O(\grn[15]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \grn[15]_i_1__8 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \grn[15]_i_1__9 
       (.I0(\iv[15]_i_4_n_0 ),
        .I1(ctl_selc),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .I4(\rgf/sreg/sr [1]),
        .I5(\rgf/sreg/sr [0]),
        .O(\grn[15]_i_1__9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \grn[15]_i_2 
       (.I0(ctl_selc_rn[0]),
        .I1(ctl_selc_rn[2]),
        .O(\grn[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \grn[15]_i_2__0 
       (.I0(ctl_selc_rn[0]),
        .I1(ctl_selc_rn[2]),
        .O(\grn[15]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[0]_i_1 
       (.I0(\iv[0]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\alu/art/add/tout__1_carry_n_7 ),
        .I3(\iv[0]_i_3_n_0 ),
        .I4(\iv[0]_i_4_n_0 ),
        .O(cbus[0]));
  LUT3 #(
    .INIT(8'h35)) 
    \iv[0]_i_10 
       (.I0(abus_0[8]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .O(\iv[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \iv[0]_i_11 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(tout__1_carry_i_10_n_0),
        .I2(abus_0[0]),
        .O(\iv[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h7A800000)) 
    \iv[0]_i_12 
       (.I0(abus_0[0]),
        .I1(tout__1_carry_i_10_n_0),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(tout__1_carry_i_9_n_0),
        .I4(\iv[14]_i_12_n_0 ),
        .O(\iv[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[0]_i_13 
       (.I0(abus_0[7]),
        .I1(abus_0[6]),
        .I2(abus_0[5]),
        .I3(abus_0[4]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[0]_i_14 
       (.I0(abus_0[3]),
        .I1(abus_0[2]),
        .I2(abus_0[1]),
        .I3(abus_0[0]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4F405F5F4F405050)) 
    \iv[0]_i_15 
       (.I0(\iv[0]_i_17_n_0 ),
        .I1(\iv[13]_i_28_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[13]_i_25_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[13]_i_26_n_0 ),
        .O(\iv[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[0]_i_16 
       (.I0(\iv[2]_i_22_n_0 ),
        .I1(\iv[10]_i_27_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[2]_i_24_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[13]_i_27_n_0 ),
        .O(\iv[0]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h99C000C0)) 
    \iv[0]_i_17 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[5]),
        .I3(\bdatw[8]_INST_0_i_2_n_0 ),
        .I4(abus_0[4]),
        .O(\iv[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8A88AAAA8A888A88)) 
    \iv[0]_i_2 
       (.I0(\iv[14]_i_3_n_0 ),
        .I1(\iv[0]_i_5_n_0 ),
        .I2(\iv[0]_i_6_n_0 ),
        .I3(\iv[0]_i_7_n_0 ),
        .I4(\iv[0]_i_8_n_0 ),
        .I5(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF8F8888F8888888)) 
    \iv[0]_i_3 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(cbus_i[0]),
        .I2(\iv[7]_i_10_n_0 ),
        .I3(bdatr[8]),
        .I4(\mem/read_cyc [2]),
        .I5(bdatr[0]),
        .O(\iv[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFABFFFFFFAB0000)) 
    \iv[0]_i_4 
       (.I0(\iv[0]_i_9_n_0 ),
        .I1(\iv[6]_i_10_n_0 ),
        .I2(\iv[0]_i_10_n_0 ),
        .I3(\iv[0]_i_11_n_0 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\iv[0]_i_12_n_0 ),
        .O(\iv[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h11110010)) 
    \iv[0]_i_5 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\rgf/sreg/sr [6]),
        .I3(\iv[14]_i_8_n_0 ),
        .I4(\iv[14]_i_24_n_0 ),
        .O(\iv[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4540FFFF)) 
    \iv[0]_i_6 
       (.I0(\iv[7]_i_6_n_0 ),
        .I1(\iv[8]_i_18_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[8]_i_17_n_0 ),
        .I4(\iv[14]_i_25_n_0 ),
        .I5(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3B7F)) 
    \iv[0]_i_7 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[7]_i_6_n_0 ),
        .I2(\iv[0]_i_13_n_0 ),
        .I3(\iv[0]_i_14_n_0 ),
        .O(\iv[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFCCC74777444)) 
    \iv[0]_i_8 
       (.I0(abus_0[0]),
        .I1(\iv[14]_i_8_n_0 ),
        .I2(\iv[0]_i_15_n_0 ),
        .I3(\iv[2]_i_9_n_0 ),
        .I4(\iv[0]_i_16_n_0 ),
        .I5(\iv[14]_i_25_n_0 ),
        .O(\iv[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \iv[0]_i_9 
       (.I0(abus_0[0]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(\iv[12]_i_19_n_0 ),
        .O(\iv[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[10]_i_1 
       (.I0(\iv[10]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\alu/art/add/tout__1_carry__1_n_5 ),
        .I3(\iv[10]_i_3_n_0 ),
        .I4(\iv[10]_i_4_n_0 ),
        .O(cbus[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[10]_i_10 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(\iv[10]_i_24_n_0 ),
        .O(\iv[10]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \iv[10]_i_11 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(tout__1_carry_i_10_n_0),
        .I2(abus_0[10]),
        .O(\iv[10]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[10]_i_12 
       (.I0(abus_0[2]),
        .I1(tout__1_carry_i_10_n_0),
        .O(\iv[10]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h80802888)) 
    \iv[10]_i_13 
       (.I0(\iv[14]_i_12_n_0 ),
        .I1(tout__1_carry_i_9_n_0),
        .I2(abus_0[10]),
        .I3(tout__1_carry_i_10_n_0),
        .I4(\bdatw[10]_INST_0_i_1_n_0 ),
        .O(\iv[10]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[10]_i_14 
       (.I0(abus_0[13]),
        .I1(abus_0[12]),
        .I2(abus_0[11]),
        .I3(abus_0[10]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[10]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[10]_i_15 
       (.I0(\iv[2]_i_21_n_0 ),
        .I1(\iv[14]_i_39_n_0 ),
        .O(\iv[10]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[10]_i_16 
       (.I0(abus_0[15]),
        .I1(\iv[2]_i_23_n_0 ),
        .O(\iv[10]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h01000101)) 
    \iv[10]_i_17 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\iv[14]_i_24_n_0 ),
        .I3(\iv[14]_i_8_n_0 ),
        .I4(abus_0[9]),
        .O(\iv[10]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[10]_i_18 
       (.I0(tout__1_carry_i_10_n_0),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[10]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[10]_i_19 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\iv[2]_i_9_n_0 ),
        .O(\iv[10]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA8AAAAAAAA)) 
    \iv[10]_i_2 
       (.I0(\iv[14]_i_3_n_0 ),
        .I1(\iv[10]_i_5_n_0 ),
        .I2(\iv[10]_i_6_n_0 ),
        .I3(\iv[10]_i_7_n_0 ),
        .I4(\iv[10]_i_8_n_0 ),
        .I5(\iv[10]_i_9_n_0 ),
        .O(\iv[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFAFCFA0C)) 
    \iv[10]_i_20 
       (.I0(\iv[10]_i_25_n_0 ),
        .I1(\iv[13]_i_29_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[2]_i_21_n_0 ),
        .I4(\iv[14]_i_39_n_0 ),
        .O(\iv[10]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hD0DFC0C0D0DFCFCF)) 
    \iv[10]_i_21 
       (.I0(\iv[13]_i_27_n_0 ),
        .I1(\iv[10]_i_26_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[10]_i_27_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[10]_i_28_n_0 ),
        .O(\iv[10]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFCFA0AFC0C0)) 
    \iv[10]_i_22 
       (.I0(\iv[14]_i_41_n_0 ),
        .I1(\iv[14]_i_42_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[10]_i_29_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[10]_i_30_n_0 ),
        .O(\iv[10]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \iv[10]_i_23 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[14]_i_8_n_0 ),
        .I2(\iv[2]_i_10_n_0 ),
        .O(\iv[10]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[10]_i_24 
       (.I0(abus_0[10]),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .O(\iv[10]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[10]_i_25 
       (.I0(abus_0[13]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[12]),
        .O(\iv[10]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h99C000C0)) 
    \iv[10]_i_26 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[15]),
        .I3(\bdatw[8]_INST_0_i_2_n_0 ),
        .I4(abus_0[14]),
        .O(\iv[10]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[10]_i_27 
       (.I0(\rgf/sreg/sr [6]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[0]),
        .O(\iv[10]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[10]_i_28 
       (.I0(abus_0[1]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[2]),
        .O(\iv[10]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[10]_i_29 
       (.I0(abus_0[7]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[8]),
        .O(\iv[10]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \iv[10]_i_3 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(cbus_i[10]),
        .I2(\mem/read_cyc [1]),
        .I3(\mem/read_cyc [2]),
        .I4(bdatr[10]),
        .O(\iv[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h99C000C0)) 
    \iv[10]_i_30 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[10]),
        .I3(\bdatw[8]_INST_0_i_2_n_0 ),
        .I4(abus_0[9]),
        .O(\iv[10]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    \iv[10]_i_4 
       (.I0(\iv[10]_i_10_n_0 ),
        .I1(\iv[10]_i_11_n_0 ),
        .I2(\iv[14]_i_20_n_0 ),
        .I3(\iv[10]_i_12_n_0 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\iv[10]_i_13_n_0 ),
        .O(\iv[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \iv[10]_i_5 
       (.I0(\iv[14]_i_15_n_0 ),
        .I1(\iv[14]_i_31_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[14]_i_28_n_0 ),
        .O(\iv[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hCDEFCCCC)) 
    \iv[10]_i_6 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[14]_i_29_n_0 ),
        .I2(\iv[10]_i_14_n_0 ),
        .I3(\iv[14]_i_30_n_0 ),
        .I4(\iv[14]_i_32_n_0 ),
        .O(\iv[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2030203000102030)) 
    \iv[10]_i_7 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[2]_i_9_n_0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\iv[10]_i_14_n_0 ),
        .I4(\iv[10]_i_15_n_0 ),
        .I5(\iv[10]_i_16_n_0 ),
        .O(\iv[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEEEAEEEAEEEA)) 
    \iv[10]_i_8 
       (.I0(\iv[10]_i_17_n_0 ),
        .I1(\iv[10]_i_18_n_0 ),
        .I2(\iv[10]_i_19_n_0 ),
        .I3(\iv[10]_i_20_n_0 ),
        .I4(\iv[2]_i_11_n_0 ),
        .I5(\iv[10]_i_21_n_0 ),
        .O(\iv[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h47444747FFFFFFFF)) 
    \iv[10]_i_9 
       (.I0(\iv[10]_i_22_n_0 ),
        .I1(\iv[7]_i_6_n_0 ),
        .I2(\iv[10]_i_23_n_0 ),
        .I3(\iv[14]_i_8_n_0 ),
        .I4(\iv[10]_i_21_n_0 ),
        .I5(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[10]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[11]_i_1 
       (.I0(\iv[11]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\alu/art/add/tout__1_carry__1_n_4 ),
        .I3(\iv[11]_i_3_n_0 ),
        .I4(\iv[11]_i_4_n_0 ),
        .O(cbus[11]));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[11]_i_10 
       (.I0(abus_0[3]),
        .I1(tout__1_carry_i_10_n_0),
        .O(\iv[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[11]_i_11 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(\iv[3]_i_9_n_0 ),
        .O(\iv[11]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h882A0080)) 
    \iv[11]_i_12 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(abus_0[11]),
        .I2(tout__1_carry_i_10_n_0),
        .I3(\bdatw[11]_INST_0_i_1_n_0 ),
        .I4(tout__1_carry_i_9_n_0),
        .O(\iv[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5554445455555555)) 
    \iv[11]_i_13 
       (.I0(\iv[12]_i_12_n_0 ),
        .I1(\iv[2]_i_8_n_0 ),
        .I2(\iv[11]_i_23_n_0 ),
        .I3(\iv[2]_i_21_n_0 ),
        .I4(\iv[13]_i_36_n_0 ),
        .I5(\iv[11]_i_24_n_0 ),
        .O(\iv[11]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \iv[11]_i_14 
       (.I0(\sr[7]_i_17_n_0 ),
        .I1(\iv[2]_i_8_n_0 ),
        .I2(\iv[7]_i_6_n_0 ),
        .O(\iv[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[11]_i_15 
       (.I0(\iv[13]_i_34_n_0 ),
        .I1(\iv[13]_i_35_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[13]_i_36_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[11]_i_23_n_0 ),
        .O(\iv[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[11]_i_16 
       (.I0(\iv[13]_i_30_n_0 ),
        .I1(\iv[13]_i_31_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[13]_i_32_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[13]_i_33_n_0 ),
        .O(\iv[11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0305FFFF03050305)) 
    \iv[11]_i_17 
       (.I0(abus_0[14]),
        .I1(abus_0[13]),
        .I2(\iv[2]_i_23_n_0 ),
        .I3(\bdatw[8]_INST_0_i_2_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[13]_i_24_n_0 ),
        .O(\iv[11]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF3F5F0F0F3F5)) 
    \iv[11]_i_18 
       (.I0(abus_0[3]),
        .I1(abus_0[2]),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\bdatw[8]_INST_0_i_2_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[13]_i_23_n_0 ),
        .O(\iv[11]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFB8FFB8FFB8)) 
    \iv[11]_i_19 
       (.I0(\iv[13]_i_36_n_0 ),
        .I1(\iv[2]_i_21_n_0 ),
        .I2(\iv[11]_i_23_n_0 ),
        .I3(\iv[2]_i_8_n_0 ),
        .I4(abus_0[15]),
        .I5(\iv[11]_i_25_n_0 ),
        .O(\iv[11]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF200F2000000F200)) 
    \iv[11]_i_2 
       (.I0(\iv[11]_i_5_n_0 ),
        .I1(\iv[11]_i_6_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[14]_i_3_n_0 ),
        .I4(\iv[11]_i_7_n_0 ),
        .I5(\iv[11]_i_8_n_0 ),
        .O(\iv[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55335533FFFF0F00)) 
    \iv[11]_i_20 
       (.I0(\iv[13]_i_22_n_0 ),
        .I1(\iv[13]_i_25_n_0 ),
        .I2(\iv[13]_i_26_n_0 ),
        .I3(\iv[2]_i_21_n_0 ),
        .I4(\iv[11]_i_26_n_0 ),
        .I5(\iv[2]_i_8_n_0 ),
        .O(\iv[11]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFB8FFFF)) 
    \iv[11]_i_21 
       (.I0(\iv[13]_i_23_n_0 ),
        .I1(\iv[2]_i_21_n_0 ),
        .I2(\iv[13]_i_28_n_0 ),
        .I3(\iv[2]_i_8_n_0 ),
        .I4(\iv[14]_i_8_n_0 ),
        .O(\iv[11]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \iv[11]_i_22 
       (.I0(stat[2]),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(\iv[14]_i_12_n_0 ),
        .O(\iv[11]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[11]_i_23 
       (.I0(abus_0[12]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[11]),
        .O(\iv[11]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h88A8888822022222)) 
    \iv[11]_i_24 
       (.I0(tout__1_carry_i_9_n_0),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\bdatw[9]_INST_0_i_2_n_0 ),
        .I3(\bdatw[8]_INST_0_i_2_n_0 ),
        .I4(\bdatw[10]_INST_0_i_2_n_0 ),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[11]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[11]_i_25 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[11]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h99C000C0)) 
    \iv[11]_i_26 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[11]),
        .I3(\bdatw[8]_INST_0_i_2_n_0 ),
        .I4(abus_0[10]),
        .O(\iv[11]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[11]_i_3 
       (.I0(\mem/read_cyc [1]),
        .I1(\mem/read_cyc [2]),
        .I2(bdatr[11]),
        .I3(\ccmd[4]_INST_0_i_1_n_0 ),
        .I4(cbus_i[11]),
        .O(\iv[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEA0000)) 
    \iv[11]_i_4 
       (.I0(\iv[11]_i_9_n_0 ),
        .I1(\iv[14]_i_20_n_0 ),
        .I2(\iv[11]_i_10_n_0 ),
        .I3(\iv[11]_i_11_n_0 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\iv[11]_i_12_n_0 ),
        .O(\iv[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h5D)) 
    \iv[11]_i_5 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(abus_0[10]),
        .I2(\iv[14]_i_8_n_0 ),
        .O(\iv[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2022202200002022)) 
    \iv[11]_i_6 
       (.I0(\iv[11]_i_13_n_0 ),
        .I1(\iv[11]_i_14_n_0 ),
        .I2(\iv[11]_i_15_n_0 ),
        .I3(\iv[14]_i_32_n_0 ),
        .I4(\iv[14]_i_15_n_0 ),
        .I5(\iv[11]_i_16_n_0 ),
        .O(\iv[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFDFCFC)) 
    \iv[11]_i_7 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[7]_i_6_n_0 ),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(\iv[11]_i_17_n_0 ),
        .I4(\iv[11]_i_18_n_0 ),
        .O(\iv[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0F003737FFF03737)) 
    \iv[11]_i_8 
       (.I0(\iv[11]_i_19_n_0 ),
        .I1(tout__1_carry_i_10_n_0),
        .I2(\iv[2]_i_9_n_0 ),
        .I3(\iv[11]_i_20_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\iv[11]_i_21_n_0 ),
        .O(\iv[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \iv[11]_i_9 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(tout__1_carry_i_10_n_0),
        .I2(abus_0[11]),
        .O(\iv[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF75)) 
    \iv[12]_i_1 
       (.I0(\iv[12]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\alu/art/add/tout__1_carry__2_n_7 ),
        .I3(\iv[12]_i_3_n_0 ),
        .I4(\iv[12]_i_4_n_0 ),
        .O(cbus[12]));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[12]_i_10 
       (.I0(abus_0[4]),
        .I1(tout__1_carry_i_10_n_0),
        .O(\iv[12]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h82088808)) 
    \iv[12]_i_11 
       (.I0(\iv[14]_i_12_n_0 ),
        .I1(tout__1_carry_i_9_n_0),
        .I2(\bdatw[12]_INST_0_i_1_n_0 ),
        .I3(abus_0[12]),
        .I4(tout__1_carry_i_10_n_0),
        .O(\iv[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \iv[12]_i_12 
       (.I0(tout__1_carry_i_10_n_0),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .I5(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[12]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4700)) 
    \iv[12]_i_13 
       (.I0(\iv[7]_i_18_n_0 ),
        .I1(\iv[2]_i_8_n_0 ),
        .I2(\iv[8]_i_16_n_0 ),
        .I3(\iv[14]_i_15_n_0 ),
        .I4(\iv[11]_i_14_n_0 ),
        .O(\iv[12]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFD5D)) 
    \iv[12]_i_14 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[14]_i_40_n_0 ),
        .I2(\iv[2]_i_21_n_0 ),
        .I3(\iv[12]_i_20_n_0 ),
        .O(\iv[12]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[12]_i_15 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[8]_i_18_n_0 ),
        .O(\iv[12]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \iv[12]_i_16 
       (.I0(\iv[2]_i_9_n_0 ),
        .I1(\iv[8]_i_18_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .O(\iv[12]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h3B)) 
    \iv[12]_i_17 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[4]_i_14_n_0 ),
        .I2(\iv[8]_i_21_n_0 ),
        .O(\iv[12]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hCAC0CFC5)) 
    \iv[12]_i_18 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[4]_i_16_n_0 ),
        .I2(\iv[2]_i_9_n_0 ),
        .I3(\iv[8]_i_20_n_0 ),
        .I4(\sr[6]_i_6_n_0 ),
        .O(\iv[12]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \iv[12]_i_19 
       (.I0(tout__1_carry_i_9_n_0),
        .I1(tout__1_carry_i_10_n_0),
        .I2(\iv[14]_i_12_n_0 ),
        .O(\iv[12]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0DFF)) 
    \iv[12]_i_2 
       (.I0(\iv[12]_i_5_n_0 ),
        .I1(\iv[12]_i_6_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[14]_i_3_n_0 ),
        .I4(\iv[12]_i_7_n_0 ),
        .O(\iv[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[12]_i_20 
       (.I0(abus_0[2]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[1]),
        .O(\iv[12]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \iv[12]_i_3 
       (.I0(\mem/read_cyc [1]),
        .I1(\mem/read_cyc [2]),
        .I2(bdatr[12]),
        .I3(\ccmd[4]_INST_0_i_1_n_0 ),
        .I4(cbus_i[12]),
        .O(\iv[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    \iv[12]_i_4 
       (.I0(\iv[12]_i_8_n_0 ),
        .I1(\iv[12]_i_9_n_0 ),
        .I2(\iv[14]_i_20_n_0 ),
        .I3(\iv[12]_i_10_n_0 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\iv[12]_i_11_n_0 ),
        .O(\iv[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h5D)) 
    \iv[12]_i_5 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(abus_0[11]),
        .I2(\iv[14]_i_8_n_0 ),
        .O(\iv[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111111010101010)) 
    \iv[12]_i_6 
       (.I0(\iv[12]_i_12_n_0 ),
        .I1(\iv[12]_i_13_n_0 ),
        .I2(\iv[2]_i_9_n_0 ),
        .I3(tout__1_carry_i_9_n_0),
        .I4(\iv[12]_i_14_n_0 ),
        .I5(\iv[12]_i_15_n_0 ),
        .O(\iv[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h202C2020E0ECECEC)) 
    \iv[12]_i_7 
       (.I0(\iv[12]_i_16_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .I3(\iv[12]_i_17_n_0 ),
        .I4(\iv[14]_i_15_n_0 ),
        .I5(\iv[12]_i_18_n_0 ),
        .O(\iv[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h08C8)) 
    \iv[12]_i_8 
       (.I0(abus_0[12]),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\iv[12]_i_19_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \iv[12]_i_9 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(tout__1_carry_i_10_n_0),
        .I2(abus_0[12]),
        .O(\iv[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[13]_i_1 
       (.I0(\iv[13]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\alu/art/add/tout__1_carry__2_n_6 ),
        .I3(\iv[13]_i_4_n_0 ),
        .I4(\iv[13]_i_5_n_0 ),
        .O(cbus[13]));
  LUT4 #(
    .INIT(16'h08C8)) 
    \iv[13]_i_10 
       (.I0(abus_0[13]),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .I3(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(\iv[13]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \iv[13]_i_11 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(tout__1_carry_i_10_n_0),
        .I2(abus_0[13]),
        .O(\iv[13]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[13]_i_12 
       (.I0(abus_0[5]),
        .I1(tout__1_carry_i_10_n_0),
        .O(\iv[13]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h80802888)) 
    \iv[13]_i_13 
       (.I0(\iv[14]_i_12_n_0 ),
        .I1(tout__1_carry_i_9_n_0),
        .I2(abus_0[13]),
        .I3(tout__1_carry_i_10_n_0),
        .I4(\bdatw[13]_INST_0_i_1_n_0 ),
        .O(\iv[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0BFB0A0A0BFBFAFA)) 
    \iv[13]_i_14 
       (.I0(\iv[13]_i_21_n_0 ),
        .I1(\iv[13]_i_22_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[13]_i_23_n_0 ),
        .I4(\iv[2]_i_23_n_0 ),
        .I5(\iv[13]_i_24_n_0 ),
        .O(\iv[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[13]_i_15 
       (.I0(\iv[13]_i_25_n_0 ),
        .I1(\iv[13]_i_26_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[2]_i_24_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[13]_i_27_n_0 ),
        .O(\iv[13]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h004F0044FF4F0044)) 
    \iv[13]_i_16 
       (.I0(\iv[13]_i_28_n_0 ),
        .I1(\iv[2]_i_21_n_0 ),
        .I2(\iv[13]_i_22_n_0 ),
        .I3(\iv[2]_i_8_n_0 ),
        .I4(\iv[2]_i_23_n_0 ),
        .I5(\iv[13]_i_23_n_0 ),
        .O(\iv[13]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F5F3FFFFF5F3)) 
    \iv[13]_i_17 
       (.I0(abus_0[14]),
        .I1(abus_0[13]),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\bdatw[8]_INST_0_i_2_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(abus_0[15]),
        .O(\iv[13]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \iv[13]_i_18 
       (.I0(\iv[13]_i_29_n_0 ),
        .I1(\iv[13]_i_30_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[13]_i_31_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[13]_i_32_n_0 ),
        .O(\iv[13]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[13]_i_19 
       (.I0(\iv[13]_i_33_n_0 ),
        .I1(\iv[13]_i_34_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[13]_i_35_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[13]_i_36_n_0 ),
        .O(\iv[13]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hE000E0E0E000E000)) 
    \iv[13]_i_2 
       (.I0(\iv[13]_i_6_n_0 ),
        .I1(\iv[13]_i_7_n_0 ),
        .I2(\iv[14]_i_3_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\iv[13]_i_8_n_0 ),
        .I5(\iv[13]_i_9_n_0 ),
        .O(\iv[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB01)) 
    \iv[13]_i_20 
       (.I0(\iv[2]_i_21_n_0 ),
        .I1(\iv[13]_i_36_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(abus_0[15]),
        .O(\iv[13]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h66300030)) 
    \iv[13]_i_21 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[3]),
        .I3(\bdatw[8]_INST_0_i_2_n_0 ),
        .I4(abus_0[2]),
        .O(\iv[13]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_22 
       (.I0(abus_0[4]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[5]),
        .O(\iv[13]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_23 
       (.I0(abus_0[0]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[1]),
        .O(\iv[13]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_24 
       (.I0(abus_0[15]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(\rgf/sreg/sr [6]),
        .O(\iv[13]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_25 
       (.I0(abus_0[6]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[7]),
        .O(\iv[13]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_26 
       (.I0(abus_0[8]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[9]),
        .O(\iv[13]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_27 
       (.I0(abus_0[12]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[13]),
        .O(\iv[13]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_28 
       (.I0(abus_0[2]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[3]),
        .O(\iv[13]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_29 
       (.I0(abus_0[11]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[10]),
        .O(\iv[13]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \iv[13]_i_3 
       (.I0(tout__1_carry_i_11_n_0),
        .I1(tout__1_carry_i_10_n_0),
        .I2(tout__1_carry_i_8_n_0),
        .O(\iv[13]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_30 
       (.I0(abus_0[9]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[8]),
        .O(\iv[13]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_31 
       (.I0(abus_0[7]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[6]),
        .O(\iv[13]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_32 
       (.I0(abus_0[5]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[4]),
        .O(\iv[13]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_33 
       (.I0(abus_0[3]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[2]),
        .O(\iv[13]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_34 
       (.I0(abus_0[1]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[0]),
        .O(\iv[13]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_35 
       (.I0(\rgf/sreg/sr [6]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[15]),
        .O(\iv[13]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[13]_i_36 
       (.I0(abus_0[14]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[13]),
        .O(\iv[13]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \iv[13]_i_4 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(cbus_i[13]),
        .I2(\mem/read_cyc [1]),
        .I3(\mem/read_cyc [2]),
        .I4(bdatr[13]),
        .O(\iv[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    \iv[13]_i_5 
       (.I0(\iv[13]_i_10_n_0 ),
        .I1(\iv[13]_i_11_n_0 ),
        .I2(\iv[14]_i_20_n_0 ),
        .I3(\iv[13]_i_12_n_0 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\iv[13]_i_13_n_0 ),
        .O(\iv[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000F0330000AA33)) 
    \iv[13]_i_6 
       (.I0(\iv[13]_i_14_n_0 ),
        .I1(\iv[13]_i_15_n_0 ),
        .I2(\iv[13]_i_16_n_0 ),
        .I3(\iv[2]_i_9_n_0 ),
        .I4(tout__1_carry_i_10_n_0),
        .I5(tout__1_carry_i_9_n_0),
        .O(\iv[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0303F0F0F0F0F)) 
    \iv[13]_i_7 
       (.I0(\iv[13]_i_16_n_0 ),
        .I1(\iv[13]_i_15_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[13]_i_17_n_0 ),
        .I4(\iv[2]_i_9_n_0 ),
        .I5(tout__1_carry_i_10_n_0),
        .O(\iv[13]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \iv[13]_i_8 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\iv[14]_i_8_n_0 ),
        .I2(abus_0[12]),
        .O(\iv[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0FA300A3)) 
    \iv[13]_i_9 
       (.I0(\iv[13]_i_18_n_0 ),
        .I1(\iv[13]_i_19_n_0 ),
        .I2(\iv[2]_i_9_n_0 ),
        .I3(tout__1_carry_i_9_n_0),
        .I4(\iv[13]_i_20_n_0 ),
        .I5(\iv[14]_i_29_n_0 ),
        .O(\iv[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF40)) 
    \iv[14]_i_1 
       (.I0(\iv[14]_i_2_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\iv[14]_i_4_n_0 ),
        .I3(\iv[14]_i_5_n_0 ),
        .I4(\iv[14]_i_6_n_0 ),
        .O(cbus[14]));
  LUT5 #(
    .INIT(32'hCDEFCCCC)) 
    \iv[14]_i_10 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[14]_i_29_n_0 ),
        .I2(\iv[14]_i_30_n_0 ),
        .I3(\iv[14]_i_31_n_0 ),
        .I4(\iv[14]_i_32_n_0 ),
        .O(\iv[14]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[14]_i_11 
       (.I0(\iv[14]_i_12_n_0 ),
        .I1(tout__1_carry_i_9_n_0),
        .O(\iv[14]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \iv[14]_i_12 
       (.I0(\ccmd[2]_INST_0_i_1_n_0 ),
        .I1(\ccmd[2]_INST_0_i_2_n_0 ),
        .I2(\ccmd[4]_INST_0_i_1_n_0 ),
        .O(\iv[14]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \iv[14]_i_13 
       (.I0(\iv[14]_i_33_n_0 ),
        .I1(\iv[7]_i_6_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .O(\iv[14]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hBB888B8B)) 
    \iv[14]_i_14 
       (.I0(\iv[14]_i_34_n_0 ),
        .I1(\iv[2]_i_9_n_0 ),
        .I2(\iv[14]_i_35_n_0 ),
        .I3(\iv[14]_i_36_n_0 ),
        .I4(\iv[2]_i_8_n_0 ),
        .O(\iv[14]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_15 
       (.I0(tout__1_carry_i_9_n_0),
        .I1(\iv[7]_i_6_n_0 ),
        .O(\iv[14]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h000000D8)) 
    \iv[14]_i_16 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[2]_i_7_n_0 ),
        .I2(\iv[14]_i_37_n_0 ),
        .I3(\iv[7]_i_6_n_0 ),
        .I4(\iv[14]_i_8_n_0 ),
        .O(\iv[14]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[14]_i_17 
       (.I0(\mem/read_cyc [1]),
        .I1(\mem/read_cyc [2]),
        .O(\iv[14]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h08C8)) 
    \iv[14]_i_18 
       (.I0(abus_0[14]),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .I3(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \iv[14]_i_19 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(tout__1_carry_i_10_n_0),
        .I2(abus_0[14]),
        .O(\iv[14]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h4044404440445555)) 
    \iv[14]_i_2 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(abus_0[13]),
        .I4(\iv[14]_i_9_n_0 ),
        .I5(\iv[14]_i_10_n_0 ),
        .O(\iv[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \iv[14]_i_20 
       (.I0(\iv[6]_i_10_n_0 ),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .O(\iv[14]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_21 
       (.I0(abus_0[6]),
        .I1(tout__1_carry_i_10_n_0),
        .O(\iv[14]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \iv[14]_i_22 
       (.I0(stat[2]),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(\ccmd[4]_INST_0_i_1_n_0 ),
        .O(\iv[14]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hC0700080)) 
    \iv[14]_i_23 
       (.I0(tout__1_carry_i_10_n_0),
        .I1(abus_0[14]),
        .I2(\iv[14]_i_12_n_0 ),
        .I3(\bdatw[14]_INST_0_i_1_n_0 ),
        .I4(tout__1_carry_i_9_n_0),
        .O(\iv[14]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \iv[14]_i_24 
       (.I0(tout__1_carry_i_13_n_0),
        .I1(abus_0[15]),
        .I2(tout__1_carry_i_9_n_0),
        .O(\iv[14]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \iv[14]_i_25 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(\bdatw[9]_INST_0_i_2_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h0EFE00FE)) 
    \iv[14]_i_26 
       (.I0(\iv[2]_i_21_n_0 ),
        .I1(\iv[14]_i_39_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(abus_0[15]),
        .I4(\iv[2]_i_23_n_0 ),
        .O(\iv[14]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[14]_i_27 
       (.I0(abus_0[12]),
        .I1(abus_0[11]),
        .I2(abus_0[10]),
        .I3(abus_0[9]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[14]_i_28 
       (.I0(abus_0[8]),
        .I1(abus_0[7]),
        .I2(abus_0[6]),
        .I3(abus_0[5]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \iv[14]_i_29 
       (.I0(\iv[12]_i_12_n_0 ),
        .I1(\iv[7]_i_6_n_0 ),
        .I2(\sr[7]_i_17_n_0 ),
        .O(\iv[14]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0100)) 
    \iv[14]_i_3 
       (.I0(stat[2]),
        .I1(\ccmd[3]_INST_0_i_1_n_0 ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(\iv[14]_i_12_n_0 ),
        .I4(\sr[5]_i_3_n_0 ),
        .O(\iv[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[14]_i_30 
       (.I0(\iv[14]_i_39_n_0 ),
        .I1(\iv[2]_i_23_n_0 ),
        .I2(\iv[14]_i_40_n_0 ),
        .O(\iv[14]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F555500FF3333)) 
    \iv[14]_i_31 
       (.I0(abus_0[4]),
        .I1(abus_0[3]),
        .I2(abus_0[2]),
        .I3(abus_0[1]),
        .I4(\iv[2]_i_23_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_32 
       (.I0(tout__1_carry_i_9_n_0),
        .I1(\iv[2]_i_9_n_0 ),
        .O(\iv[14]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \iv[14]_i_33 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[14]_i_39_n_0 ),
        .I2(\iv[2]_i_21_n_0 ),
        .O(\iv[14]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h00B8FFB8)) 
    \iv[14]_i_34 
       (.I0(\iv[14]_i_41_n_0 ),
        .I1(\iv[2]_i_21_n_0 ),
        .I2(\iv[14]_i_42_n_0 ),
        .I3(\iv[2]_i_8_n_0 ),
        .I4(\iv[2]_i_10_n_0 ),
        .O(\iv[14]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[14]_i_35 
       (.I0(abus_0[14]),
        .I1(abus_0[13]),
        .I2(abus_0[12]),
        .I3(abus_0[11]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[14]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hCA00FFFFCA00CA00)) 
    \iv[14]_i_36 
       (.I0(abus_0[8]),
        .I1(abus_0[7]),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(\iv[2]_i_21_n_0 ),
        .I4(\iv[14]_i_43_n_0 ),
        .I5(\iv[2]_i_23_n_0 ),
        .O(\iv[14]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[14]_i_37 
       (.I0(\iv[14]_i_41_n_0 ),
        .I1(\iv[2]_i_21_n_0 ),
        .I2(\iv[14]_i_42_n_0 ),
        .O(\iv[14]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[14]_i_38 
       (.I0(\iv[14]_i_12_n_0 ),
        .I1(tout__1_carry_i_9_n_0),
        .O(\iv[14]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \iv[14]_i_39 
       (.I0(abus_0[14]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[15]),
        .O(\iv[14]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE2E222F2)) 
    \iv[14]_i_4 
       (.I0(\iv[14]_i_13_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\iv[14]_i_14_n_0 ),
        .I3(\iv[14]_i_15_n_0 ),
        .I4(tout__1_carry_i_10_n_0),
        .I5(\iv[14]_i_16_n_0 ),
        .O(\iv[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[14]_i_40 
       (.I0(abus_0[0]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(\rgf/sreg/sr [6]),
        .O(\iv[14]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[14]_i_41 
       (.I0(abus_0[3]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[4]),
        .O(\iv[14]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[14]_i_42 
       (.I0(abus_0[5]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[6]),
        .O(\iv[14]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[14]_i_43 
       (.I0(abus_0[9]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[10]),
        .O(\iv[14]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \iv[14]_i_5 
       (.I0(\iv[13]_i_3_n_0 ),
        .I1(\alu/art/add/tout__1_carry__2_n_5 ),
        .I2(bdatr[14]),
        .I3(\iv[14]_i_17_n_0 ),
        .I4(cbus_i[14]),
        .I5(\ccmd[4]_INST_0_i_1_n_0 ),
        .O(\iv[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    \iv[14]_i_6 
       (.I0(\iv[14]_i_18_n_0 ),
        .I1(\iv[14]_i_19_n_0 ),
        .I2(\iv[14]_i_20_n_0 ),
        .I3(\iv[14]_i_21_n_0 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\iv[14]_i_23_n_0 ),
        .O(\iv[14]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \iv[14]_i_7 
       (.I0(\iv[14]_i_24_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\iv[14]_i_25_n_0 ),
        .O(\iv[14]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[14]_i_8 
       (.I0(tout__1_carry_i_10_n_0),
        .I1(tout__1_carry_i_9_n_0),
        .O(\iv[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000303F55550000)) 
    \iv[14]_i_9 
       (.I0(\iv[14]_i_26_n_0 ),
        .I1(\iv[14]_i_27_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[14]_i_28_n_0 ),
        .I4(tout__1_carry_i_9_n_0),
        .I5(\iv[2]_i_9_n_0 ),
        .O(\iv[14]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \iv[15]_i_1 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .O(\rgf/cbus_sel_cr [3]));
  LUT6 #(
    .INIT(64'hCECECCCCCECFCFCF)) 
    \iv[15]_i_10 
       (.I0(\iv[15]_i_26_n_0 ),
        .I1(\iv[15]_i_27_n_0 ),
        .I2(stat[1]),
        .I3(\fch/ir [13]),
        .I4(\fch/ir [14]),
        .I5(\iv[15]_i_28_n_0 ),
        .O(\iv[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[15]_i_100 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [0]),
        .O(\iv[15]_i_100_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \iv[15]_i_101 
       (.I0(\fch/ir [10]),
        .I1(crdy),
        .O(\iv[15]_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAA0AAAAAA)) 
    \iv[15]_i_102 
       (.I0(\badr[15]_INST_0_i_119_n_0 ),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [3]),
        .I4(\iv[15]_i_120_n_0 ),
        .I5(\fch/ir [8]),
        .O(\iv[15]_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h05FF0FFF15FFFFFF)) 
    \iv[15]_i_103 
       (.I0(\iv[15]_i_121_n_0 ),
        .I1(\iv[15]_i_122_n_0 ),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [0]),
        .I5(\badr[15]_INST_0_i_124_n_0 ),
        .O(\iv[15]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F0F0FFF4F0F0F)) 
    \iv[15]_i_104 
       (.I0(\iv[15]_i_71_n_0 ),
        .I1(\iv[15]_i_123_n_0 ),
        .I2(\fch/ir [11]),
        .I3(\iv[15]_i_35_n_0 ),
        .I4(\fch/ir [3]),
        .I5(\fch/ir [10]),
        .O(\iv[15]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBFBBAAAAAAAA)) 
    \iv[15]_i_105 
       (.I0(\fch/ir [11]),
        .I1(\iv[15]_i_124_n_0 ),
        .I2(\ccmd[2]_INST_0_i_14_n_0 ),
        .I3(\fch/ir [2]),
        .I4(\fch/ir [7]),
        .I5(\iv[15]_i_73_n_0 ),
        .O(\iv[15]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8FFFFA8AAFCFF)) 
    \iv[15]_i_106 
       (.I0(\stat[0]_i_21_n_0 ),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [2]),
        .I4(\fch/ir [5]),
        .I5(\fch/ir [7]),
        .O(\iv[15]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \iv[15]_i_107 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [2]),
        .I2(\badrx[15]_INST_0_i_3_n_0 ),
        .I3(ctl_fetch_inferred_i_16_n_0),
        .I4(brdy),
        .I5(ctl_fetch_inferred_i_15_n_0),
        .O(\iv[15]_i_107_n_0 ));
  LUT6 #(
    .INIT(64'hA000880000008800)) 
    \iv[15]_i_108 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [5]),
        .I3(\bcmd[0]_INST_0_i_7_n_0 ),
        .I4(\fch/ir [7]),
        .I5(crdy),
        .O(\iv[15]_i_108_n_0 ));
  LUT5 #(
    .INIT(32'hFDCCFFCF)) 
    \iv[15]_i_109 
       (.I0(crdy),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [5]),
        .O(\iv[15]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800000000)) 
    \iv[15]_i_11 
       (.I0(ctl_fetch_ext_fl_i_2_n_0),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [4]),
        .I3(crdy),
        .I4(ctl_fetch_ext_fl_i_3_n_0),
        .I5(\ccmd[2]_INST_0_i_26_n_0 ),
        .O(\iv[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FFFF4C44)) 
    \iv[15]_i_110 
       (.I0(\iv[15]_i_125_n_0 ),
        .I1(\fch/ir [5]),
        .I2(\ccmd[1]_INST_0_i_17_n_0 ),
        .I3(\iv[15]_i_73_n_0 ),
        .I4(\iv[15]_i_126_n_0 ),
        .I5(\fch/ir [11]),
        .O(\iv[15]_i_110_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_111 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [6]),
        .O(\iv[15]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'hFF5F30FFFF7FFFFF)) 
    \iv[15]_i_112 
       (.I0(\fch/ir [6]),
        .I1(crdy),
        .I2(\fch/ir [7]),
        .I3(stat[0]),
        .I4(\fch/ir [8]),
        .I5(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\iv[15]_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h2A00FF00FFFFFF00)) 
    \iv[15]_i_113 
       (.I0(\bcmd[1]_INST_0_i_7_n_0 ),
        .I1(brdy),
        .I2(ctl_fetch_inferred_i_15_n_0),
        .I3(\fch/ir [7]),
        .I4(stat[0]),
        .I5(\fch/ir [3]),
        .O(\iv[15]_i_113_n_0 ));
  LUT4 #(
    .INIT(16'hFF7E)) 
    \iv[15]_i_114 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [3]),
        .O(\iv[15]_i_114_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \iv[15]_i_115 
       (.I0(\rgf/sreg/sr [5]),
        .I1(\fch/ir [11]),
        .I2(\rgf/sreg/sr [7]),
        .I3(\fch/ir [12]),
        .O(\iv[15]_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EE0EE00E)) 
    \iv[15]_i_116 
       (.I0(\iv[15]_i_127_n_0 ),
        .I1(\iv[15]_i_128_n_0 ),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [12]),
        .I4(\rgf/sreg/sr [4]),
        .I5(\fch/ir [14]),
        .O(\iv[15]_i_116_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEADFFFFFFFFF)) 
    \iv[15]_i_117 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [0]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [1]),
        .I4(\iv[15]_i_129_n_0 ),
        .I5(stat[0]),
        .O(\iv[15]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h3FFAFFFAFFFFFFFF)) 
    \iv[15]_i_118 
       (.I0(\fch/ir [4]),
        .I1(brdy),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [5]),
        .I4(\fch/ir [0]),
        .I5(\fch/ir [3]),
        .O(\iv[15]_i_118_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \iv[15]_i_119 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [0]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [3]),
        .O(\iv[15]_i_119_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \iv[15]_i_12 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [13]),
        .I2(\fch/ir [12]),
        .I3(\fch/ir [15]),
        .O(\iv[15]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \iv[15]_i_120 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [10]),
        .I2(crdy),
        .O(\iv[15]_i_120_n_0 ));
  LUT5 #(
    .INIT(32'h10000001)) 
    \iv[15]_i_121 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [4]),
        .O(\iv[15]_i_121_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_122 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [5]),
        .O(\iv[15]_i_122_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \iv[15]_i_123 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [7]),
        .O(\iv[15]_i_123_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \iv[15]_i_124 
       (.I0(brdy),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [5]),
        .O(\iv[15]_i_124_n_0 ));
  LUT5 #(
    .INIT(32'hFFBBFBBB)) 
    \iv[15]_i_125 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [8]),
        .O(\iv[15]_i_125_n_0 ));
  LUT6 #(
    .INIT(64'h8000008000000080)) 
    \iv[15]_i_126 
       (.I0(crdy),
        .I1(\bcmd[0]_INST_0_i_7_n_0 ),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [6]),
        .O(\iv[15]_i_126_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFBFFFFFFFFFF)) 
    \iv[15]_i_127 
       (.I0(\fch/ir [9]),
        .I1(crdy),
        .I2(\fch/ir [0]),
        .I3(\fch/ir [1]),
        .I4(\fch/ir [3]),
        .I5(\fch/ir [2]),
        .O(\iv[15]_i_127_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \iv[15]_i_128 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [12]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [7]),
        .I5(tout__1_carry_i_17_n_0),
        .O(\iv[15]_i_128_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[15]_i_129 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [12]),
        .O(\iv[15]_i_129_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88888F88)) 
    \iv[15]_i_13 
       (.I0(\iv[15]_i_29_n_0 ),
        .I1(\iv[15]_i_30_n_0 ),
        .I2(\fch/ir [11]),
        .I3(\iv[15]_i_31_n_0 ),
        .I4(\iv[15]_i_32_n_0 ),
        .I5(\iv[15]_i_33_n_0 ),
        .O(\iv[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBA8AFFFFFFFF)) 
    \iv[15]_i_14 
       (.I0(\iv[15]_i_34_n_0 ),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(\iv[15]_i_35_n_0 ),
        .I3(\iv[15]_i_36_n_0 ),
        .I4(stat[1]),
        .I5(\fch/ir [11]),
        .O(\iv[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF800F800F800)) 
    \iv[15]_i_15 
       (.I0(\iv[15]_i_37_n_0 ),
        .I1(\iv[15]_i_38_n_0 ),
        .I2(\iv[15]_i_39_n_0 ),
        .I3(\iv[15]_i_40_n_0 ),
        .I4(\iv[15]_i_41_n_0 ),
        .I5(\iv[15]_i_42_n_0 ),
        .O(\iv[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFEA)) 
    \iv[15]_i_16 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [4]),
        .I2(\iv[15]_i_30_n_0 ),
        .I3(\iv[15]_i_43_n_0 ),
        .I4(\iv[15]_i_44_n_0 ),
        .I5(\iv[15]_i_45_n_0 ),
        .O(\iv[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAAFF3FFFAA003F00)) 
    \iv[15]_i_17 
       (.I0(\iv[15]_i_46_n_0 ),
        .I1(\fch/ir [4]),
        .I2(\iv[15]_i_35_n_0 ),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [10]),
        .I5(\iv[15]_i_47_n_0 ),
        .O(\iv[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h4544555545444544)) 
    \iv[15]_i_18 
       (.I0(\ccmd[2]_INST_0_i_1_n_0 ),
        .I1(\iv[15]_i_48_n_0 ),
        .I2(\iv[15]_i_49_n_0 ),
        .I3(\ccmd[2]_INST_0_i_8_n_0 ),
        .I4(\iv[15]_i_50_n_0 ),
        .I5(ctl_fetch_ext_fl_i_3_n_0),
        .O(ctl_selc_rn[0]));
  LUT6 #(
    .INIT(64'hEEEEFEEEEEEEEEEE)) 
    \iv[15]_i_19 
       (.I0(\iv[15]_i_51_n_0 ),
        .I1(\iv[15]_i_52_n_0 ),
        .I2(\iv[15]_i_41_n_0 ),
        .I3(\fch/ir [10]),
        .I4(stat[1]),
        .I5(\ccmd[1]_INST_0_i_8_n_0 ),
        .O(ctl_selc_rn[2]));
  LUT6 #(
    .INIT(64'hFFFFAAEAAAEAAAEA)) 
    \iv[15]_i_2 
       (.I0(alu_sr_flag),
        .I1(bdatr[15]),
        .I2(\mem/read_cyc [2]),
        .I3(\mem/read_cyc [1]),
        .I4(cbus_i[15]),
        .I5(\ccmd[4]_INST_0_i_1_n_0 ),
        .O(cbus[15]));
  LUT6 #(
    .INIT(64'hFFFF1055FFFFFFFF)) 
    \iv[15]_i_20 
       (.I0(\iv[15]_i_53_n_0 ),
        .I1(\iv[15]_i_54_n_0 ),
        .I2(\iv[15]_i_55_n_0 ),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [15]),
        .I5(\fch/ir [14]),
        .O(\iv[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55450000)) 
    \iv[15]_i_21 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [2]),
        .I2(stat[0]),
        .I3(brdy),
        .I4(\iv[15]_i_56_n_0 ),
        .I5(\iv[15]_i_57_n_0 ),
        .O(\iv[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000DDDDDDDDDDDDD)) 
    \iv[15]_i_22 
       (.I0(\iv[15]_i_58_n_0 ),
        .I1(\bdatw[15]_INST_0_i_13_n_0 ),
        .I2(\ccmd[3]_INST_0_i_5_n_0 ),
        .I3(\iv[15]_i_30_n_0 ),
        .I4(\fch/ir [14]),
        .I5(\fch/ir [12]),
        .O(\iv[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF777F)) 
    \iv[15]_i_23 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [8]),
        .I3(brdy),
        .I4(\fch/ir [9]),
        .I5(\fch/ir [15]),
        .O(\iv[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h1101000000000000)) 
    \iv[15]_i_24 
       (.I0(\bcmd[0]_INST_0_i_8_n_0 ),
        .I1(stat[0]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [12]),
        .I5(\fch/ir [11]),
        .O(\iv[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h2F28FF282F282F28)) 
    \iv[15]_i_25 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [1]),
        .I3(\fch/ir [0]),
        .I4(stat[0]),
        .I5(brdy),
        .O(\iv[15]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h10110000)) 
    \iv[15]_i_26 
       (.I0(stat[0]),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [15]),
        .O(\iv[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020202)) 
    \iv[15]_i_27 
       (.I0(\fch/ir [15]),
        .I1(\fch/ir [14]),
        .I2(stat[0]),
        .I3(\fch/ir [13]),
        .I4(\fch/ir [11]),
        .I5(stat[1]),
        .O(\iv[15]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \iv[15]_i_28 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [12]),
        .I2(stat[0]),
        .I3(\fch/ir [15]),
        .O(\iv[15]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_29 
       (.I0(stat[0]),
        .I1(stat[1]),
        .O(\iv[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000500C5)) 
    \iv[15]_i_3 
       (.I0(\iv[15]_i_7_n_0 ),
        .I1(\iv[15]_i_8_n_0 ),
        .I2(stat[1]),
        .I3(stat[2]),
        .I4(\iv[15]_i_9_n_0 ),
        .I5(\ccmd[2]_INST_0_i_17_n_0 ),
        .O(ctl_selc));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_30 
       (.I0(crdy),
        .I1(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\iv[15]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_31 
       (.I0(\fch/ir [10]),
        .I1(stat[1]),
        .O(\iv[15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4FD00FD)) 
    \iv[15]_i_32 
       (.I0(crdy),
        .I1(\fch/ir [7]),
        .I2(\ccmd[2]_INST_0_i_14_n_0 ),
        .I3(stat[0]),
        .I4(\stat[0]_i_21_n_0 ),
        .I5(\iv[15]_i_59_n_0 ),
        .O(\iv[15]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hCB00000000000000)) 
    \iv[15]_i_33 
       (.I0(\iv[15]_i_60_n_0 ),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [8]),
        .I3(\stat[0]_i_14_n_0 ),
        .I4(stat[1]),
        .I5(\stat[2]_i_14_n_0 ),
        .O(\iv[15]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FEEEEFFFFEEEE)) 
    \iv[15]_i_34 
       (.I0(\ccmd[2]_INST_0_i_20_n_0 ),
        .I1(\iv[15]_i_61_n_0 ),
        .I2(\iv[15]_i_62_n_0 ),
        .I3(\iv[15]_i_63_n_0 ),
        .I4(stat[0]),
        .I5(\iv[15]_i_64_n_0 ),
        .O(\iv[15]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h37)) 
    \iv[15]_i_35 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [7]),
        .O(\iv[15]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h5F55FFFFAA1BAA00)) 
    \iv[15]_i_36 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [6]),
        .I2(crdy),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [8]),
        .I5(stat[0]),
        .O(\iv[15]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h0028)) 
    \iv[15]_i_37 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [3]),
        .I2(\fch/ir [1]),
        .I3(\fch/ir [0]),
        .O(\iv[15]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \iv[15]_i_38 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [11]),
        .I3(\ccmd[4]_INST_0_i_18_n_0 ),
        .I4(\bcmd[1]_INST_0_i_7_n_0 ),
        .I5(\ccmd[4]_INST_0_i_19_n_0 ),
        .O(\iv[15]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF800F8)) 
    \iv[15]_i_39 
       (.I0(\fch/ir [1]),
        .I1(\ccmd[3]_INST_0_i_5_n_0 ),
        .I2(\iv[15]_i_30_n_0 ),
        .I3(\fch/ir [11]),
        .I4(\iv[15]_i_65_n_0 ),
        .I5(\ccmd[2]_INST_0_i_7_n_0 ),
        .O(\iv[15]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h5455545454555455)) 
    \iv[15]_i_4 
       (.I0(stat[2]),
        .I1(\iv[15]_i_10_n_0 ),
        .I2(\iv[15]_i_11_n_0 ),
        .I3(\iv[15]_i_12_n_0 ),
        .I4(\iv[15]_i_13_n_0 ),
        .I5(\iv[15]_i_14_n_0 ),
        .O(\iv[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_40 
       (.I0(stat[1]),
        .I1(\fch/ir [15]),
        .O(\iv[15]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h22AA8AAA)) 
    \iv[15]_i_41 
       (.I0(\fch/ir [15]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [13]),
        .I4(\fch/ir [12]),
        .O(\iv[15]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \iv[15]_i_42 
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(\fch/ir [9]),
        .O(\iv[15]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C0000FF550000)) 
    \iv[15]_i_43 
       (.I0(\iv[15]_i_66_n_0 ),
        .I1(\iv[15]_i_67_n_0 ),
        .I2(\ccmd[2]_INST_0_i_14_n_0 ),
        .I3(\iv[15]_i_68_n_0 ),
        .I4(\fch/ir [10]),
        .I5(crdy),
        .O(\iv[15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00D0FFFFFFFF)) 
    \iv[15]_i_44 
       (.I0(\fch/ir [4]),
        .I1(\stat[0]_i_21_n_0 ),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [10]),
        .I4(stat[1]),
        .I5(stat[0]),
        .O(\iv[15]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDDDD0DD)) 
    \iv[15]_i_45 
       (.I0(\iv[15]_i_69_n_0 ),
        .I1(\ccmd[0]_INST_0_i_23_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\fch/ir [1]),
        .I4(\iv[15]_i_70_n_0 ),
        .I5(\bcmd[1]_INST_0_i_11_n_0 ),
        .O(\iv[15]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDFDFDF00DFDF)) 
    \iv[15]_i_46 
       (.I0(\fch/ir [4]),
        .I1(\iv[15]_i_71_n_0 ),
        .I2(\bdatw[15]_INST_0_i_74_n_0 ),
        .I3(\iv[15]_i_61_n_0 ),
        .I4(\fch/ir [1]),
        .I5(\bcmd[2]_INST_0_i_3_n_0 ),
        .O(\iv[15]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0F00FFFF7FFFFFFF)) 
    \iv[15]_i_47 
       (.I0(\iv[15]_i_72_n_0 ),
        .I1(\iv[15]_i_73_n_0 ),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [4]),
        .I5(\iv[15]_i_74_n_0 ),
        .O(\iv[15]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABAFFBA)) 
    \iv[15]_i_48 
       (.I0(stat[0]),
        .I1(\iv[15]_i_75_n_0 ),
        .I2(\badr[15]_INST_0_i_107_n_0 ),
        .I3(\bcmd[2]_INST_0_i_2_n_0 ),
        .I4(\iv[15]_i_76_n_0 ),
        .I5(\iv[15]_i_77_n_0 ),
        .O(\iv[15]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h1010101010101011)) 
    \iv[15]_i_49 
       (.I0(\iv[15]_i_78_n_0 ),
        .I1(stat[2]),
        .I2(\iv[15]_i_79_n_0 ),
        .I3(\iv[15]_i_80_n_0 ),
        .I4(\fch/ir [11]),
        .I5(\iv[15]_i_81_n_0 ),
        .O(\iv[15]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h4544454545444544)) 
    \iv[15]_i_5 
       (.I0(stat[2]),
        .I1(\iv[15]_i_15_n_0 ),
        .I2(\iv[15]_i_12_n_0 ),
        .I3(\iv[15]_i_16_n_0 ),
        .I4(\iv[15]_i_17_n_0 ),
        .I5(ctl_fetch_ext_fl_i_3_n_0),
        .O(\iv[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FDFDFD)) 
    \iv[15]_i_50 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [15]),
        .I2(\iv[15]_i_82_n_0 ),
        .I3(\iv[15]_i_41_n_0 ),
        .I4(\fch/ir [8]),
        .I5(\iv[15]_i_83_n_0 ),
        .O(\iv[15]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h00000080000A008A)) 
    \iv[15]_i_51 
       (.I0(\iv[15]_i_84_n_0 ),
        .I1(\iv[15]_i_85_n_0 ),
        .I2(stat[0]),
        .I3(stat[1]),
        .I4(\iv[15]_i_86_n_0 ),
        .I5(\iv[15]_i_87_n_0 ),
        .O(\iv[15]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F8F800000000)) 
    \iv[15]_i_52 
       (.I0(\fch/ir [2]),
        .I1(\ccmd[3]_INST_0_i_5_n_0 ),
        .I2(\iv[15]_i_30_n_0 ),
        .I3(\iv[15]_i_88_n_0 ),
        .I4(\fch/ir [11]),
        .I5(\iv[15]_i_89_n_0 ),
        .O(\iv[15]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEAEEEEAAEA)) 
    \iv[15]_i_53 
       (.I0(\iv[15]_i_90_n_0 ),
        .I1(crdy),
        .I2(\bcmd[0]_INST_0_i_7_n_0 ),
        .I3(\bcmd[0]_INST_0_i_9_n_0 ),
        .I4(stat[0]),
        .I5(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\iv[15]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0001A70F0001250F)) 
    \iv[15]_i_54 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [7]),
        .I2(stat[0]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [9]),
        .I5(crdy),
        .O(\iv[15]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDD8DDDDD)) 
    \iv[15]_i_55 
       (.I0(\fch/ir [10]),
        .I1(\iv[15]_i_91_n_0 ),
        .I2(stat[0]),
        .I3(\fch/ir [6]),
        .I4(brdy),
        .I5(\iv[15]_i_92_n_0 ),
        .O(\iv[15]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h3333333357555555)) 
    \iv[15]_i_56 
       (.I0(\iv[15]_i_93_n_0 ),
        .I1(stat[0]),
        .I2(\fch/ir [14]),
        .I3(\rgf/sreg/sr [4]),
        .I4(\fch/ir [11]),
        .I5(\fch/ir [15]),
        .O(\iv[15]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h0000440F)) 
    \iv[15]_i_57 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [15]),
        .I2(\iv[15]_i_94_n_0 ),
        .I3(\fch/ir [12]),
        .I4(stat[0]),
        .O(\iv[15]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \iv[15]_i_58 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [9]),
        .I2(\ccmd[3]_INST_0_i_15_n_0 ),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [10]),
        .O(\iv[15]_i_58_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \iv[15]_i_59 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [6]),
        .I3(stat[0]),
        .I4(\fch/ir [9]),
        .O(\iv[15]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_6 
       (.I0(ctl_selc_rn[0]),
        .I1(ctl_selc_rn[2]),
        .O(\iv[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_60 
       (.I0(brdy),
        .I1(\fch/ir [6]),
        .O(\iv[15]_i_60_n_0 ));
  LUT5 #(
    .INIT(32'hF3F3FF7E)) 
    \iv[15]_i_61 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [6]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [7]),
        .O(\iv[15]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[15]_i_62 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [6]),
        .O(\iv[15]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \iv[15]_i_63 
       (.I0(\fch/ir [8]),
        .I1(brdy),
        .O(\iv[15]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h00008000FFFFFFFF)) 
    \iv[15]_i_64 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [4]),
        .I5(\fch/ir [10]),
        .O(\iv[15]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hA080A00000800000)) 
    \iv[15]_i_65 
       (.I0(\bcmd[0]_INST_0_i_7_n_0 ),
        .I1(\iv[15]_i_95_n_0 ),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [8]),
        .I4(brdy),
        .I5(\fch/ir [1]),
        .O(\iv[15]_i_65_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \iv[15]_i_66 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [1]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [7]),
        .O(\iv[15]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \iv[15]_i_67 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [7]),
        .O(\iv[15]_i_67_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \iv[15]_i_68 
       (.I0(\fch/ir [4]),
        .I1(brdy),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [9]),
        .O(\iv[15]_i_68_n_0 ));
  LUT5 #(
    .INIT(32'h44044000)) 
    \iv[15]_i_69 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [4]),
        .I4(\fch/ir [1]),
        .O(\iv[15]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDDDDDD5)) 
    \iv[15]_i_7 
       (.I0(\ccmd[2]_INST_0_i_24_n_0 ),
        .I1(\iv[15]_i_20_n_0 ),
        .I2(\bdatw[15]_INST_0_i_38_n_0 ),
        .I3(\fch/ir [14]),
        .I4(stat[0]),
        .I5(\iv[15]_i_21_n_0 ),
        .O(\iv[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \iv[15]_i_70 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [6]),
        .I2(brdy),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [7]),
        .O(\iv[15]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_71 
       (.I0(\fch/ir [8]),
        .I1(crdy),
        .O(\iv[15]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_72 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [9]),
        .O(\iv[15]_i_72_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_73 
       (.I0(\fch/ir [10]),
        .I1(crdy),
        .O(\iv[15]_i_73_n_0 ));
  LUT5 #(
    .INIT(32'h08000008)) 
    \iv[15]_i_74 
       (.I0(crdy),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [7]),
        .O(\iv[15]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF3B)) 
    \iv[15]_i_75 
       (.I0(\fch/ir [1]),
        .I1(\fch/ir [0]),
        .I2(brdy),
        .I3(\fch/ir [3]),
        .I4(\fch/ir [2]),
        .I5(\ccmd[4]_INST_0_i_19_n_0 ),
        .O(\iv[15]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hFF5CFF5FFFFFFFFF)) 
    \iv[15]_i_76 
       (.I0(\iv[15]_i_96_n_0 ),
        .I1(\iv[15]_i_97_n_0 ),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [10]),
        .O(\iv[15]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5700FFFFFFFF)) 
    \iv[15]_i_77 
       (.I0(\iv[15]_i_38_n_0 ),
        .I1(\iv[15]_i_37_n_0 ),
        .I2(\bdatw[9]_INST_0_i_15_n_0 ),
        .I3(stat[0]),
        .I4(\fch/ir [15]),
        .I5(stat[1]),
        .O(\iv[15]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h020C020800000000)) 
    \iv[15]_i_78 
       (.I0(\fch/ir [2]),
        .I1(\fch/ir [1]),
        .I2(\fch/ir [0]),
        .I3(\fch/ir [3]),
        .I4(brdy),
        .I5(\iv[15]_i_38_n_0 ),
        .O(\iv[15]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBBBBBFBBBFBB)) 
    \iv[15]_i_79 
       (.I0(\iv[15]_i_98_n_0 ),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [11]),
        .I4(\stat[0]_i_21_n_0 ),
        .I5(\fch/ir [3]),
        .O(\iv[15]_i_79_n_0 ));
  LUT5 #(
    .INIT(32'h01FF0101)) 
    \iv[15]_i_8 
       (.I0(\iv[15]_i_22_n_0 ),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [15]),
        .I3(\iv[15]_i_23_n_0 ),
        .I4(\iv[15]_i_24_n_0 ),
        .O(\iv[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4040444040404040)) 
    \iv[15]_i_80 
       (.I0(crdy),
        .I1(\fch/ir [10]),
        .I2(\iv[15]_i_99_n_0 ),
        .I3(\fch/ir [0]),
        .I4(\fch/ir [8]),
        .I5(\bdatw[15]_INST_0_i_74_n_0 ),
        .O(\iv[15]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF11001F001100)) 
    \iv[15]_i_81 
       (.I0(\ccmd[2]_INST_0_i_14_n_0 ),
        .I1(\iv[15]_i_100_n_0 ),
        .I2(\stat[0]_i_21_n_0 ),
        .I3(\iv[15]_i_101_n_0 ),
        .I4(\fch/ir [3]),
        .I5(\iv[15]_i_30_n_0 ),
        .O(\iv[15]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8AAA8AAAAA)) 
    \iv[15]_i_82 
       (.I0(\badr[15]_INST_0_i_84_n_0 ),
        .I1(\iv[15]_i_102_n_0 ),
        .I2(\ccmd[2]_INST_0_i_24_n_0 ),
        .I3(\iv[15]_i_103_n_0 ),
        .I4(\badrx[15]_INST_0_i_3_n_0 ),
        .I5(\iv[15]_i_104_n_0 ),
        .O(\iv[15]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBAE0000)) 
    \iv[15]_i_83 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [12]),
        .I2(\rgf/sreg/sr [4]),
        .I3(\fch/ir [11]),
        .I4(\stat[2]_i_6_n_0 ),
        .I5(\stat[0]_i_9_n_0 ),
        .O(\iv[15]_i_83_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \iv[15]_i_84 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [12]),
        .I3(stat[2]),
        .I4(\fch/ir [15]),
        .O(\iv[15]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAEEEEAAEAAAEA)) 
    \iv[15]_i_85 
       (.I0(\iv[15]_i_105_n_0 ),
        .I1(crdy),
        .I2(\fch/ir [10]),
        .I3(\iv[15]_i_106_n_0 ),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .I5(\fch/ir [5]),
        .O(\iv[15]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FB00)) 
    \iv[15]_i_86 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [5]),
        .I2(\stat[0]_i_21_n_0 ),
        .I3(\fch/ir [11]),
        .I4(\iv[15]_i_107_n_0 ),
        .I5(\iv[15]_i_108_n_0 ),
        .O(\iv[15]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFAA8A)) 
    \iv[15]_i_87 
       (.I0(\iv[15]_i_109_n_0 ),
        .I1(\iv[15]_i_61_n_0 ),
        .I2(\fch/ir [2]),
        .I3(\bcmd[2]_INST_0_i_3_n_0 ),
        .I4(\bcmd[1]_INST_0_i_11_n_0 ),
        .I5(\iv[15]_i_110_n_0 ),
        .O(\iv[15]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h8A00800080008000)) 
    \iv[15]_i_88 
       (.I0(\bcmd[0]_INST_0_i_7_n_0 ),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [7]),
        .I4(brdy),
        .I5(\iv[15]_i_111_n_0 ),
        .O(\iv[15]_i_88_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \iv[15]_i_89 
       (.I0(\bcmd[2]_INST_0_i_2_n_0 ),
        .I1(stat[1]),
        .I2(stat[0]),
        .I3(\fch/ir [15]),
        .I4(stat[2]),
        .O(\iv[15]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFD500FFFFD5)) 
    \iv[15]_i_9 
       (.I0(\iv[15]_i_25_n_0 ),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [0]),
        .I3(\fch/ir [13]),
        .I4(\fch/ir [14]),
        .I5(stat[0]),
        .O(\iv[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0040004000404444)) 
    \iv[15]_i_90 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [10]),
        .I2(stat[0]),
        .I3(\stat[0]_i_21_n_0 ),
        .I4(\fch/ir [9]),
        .I5(\iv[15]_i_112_n_0 ),
        .O(\iv[15]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8888AAAA88888)) 
    \iv[15]_i_91 
       (.I0(\iv[15]_i_113_n_0 ),
        .I1(stat[0]),
        .I2(\fch/ir [4]),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [5]),
        .I5(\fch/ir [3]),
        .O(\iv[15]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAEAEAAAAAAAA)) 
    \iv[15]_i_92 
       (.I0(\bcmd[2]_INST_0_i_3_n_0 ),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [3]),
        .I4(stat[0]),
        .I5(\iv[15]_i_114_n_0 ),
        .O(\iv[15]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hFFEA0000FFEAFFEA)) 
    \iv[15]_i_93 
       (.I0(stat[0]),
        .I1(\fch/ir [14]),
        .I2(\iv[15]_i_115_n_0 ),
        .I3(\iv[15]_i_116_n_0 ),
        .I4(\iv[15]_i_117_n_0 ),
        .I5(\badr[15]_INST_0_i_107_n_0 ),
        .O(\iv[15]_i_93_n_0 ));
  LUT5 #(
    .INIT(32'h00CCFF3D)) 
    \iv[15]_i_94 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [11]),
        .I2(\rgf/sreg/sr [6]),
        .I3(\fch/ir [14]),
        .I4(\fch/ir [15]),
        .O(\iv[15]_i_94_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[15]_i_95 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [6]),
        .O(\iv[15]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h8B88000088880000)) 
    \iv[15]_i_96 
       (.I0(\fch/ir [0]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [6]),
        .I3(brdy),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [3]),
        .O(\iv[15]_i_96_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[15]_i_97 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [0]),
        .O(\iv[15]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EEE0F0F)) 
    \iv[15]_i_98 
       (.I0(\iv[15]_i_118_n_0 ),
        .I1(\bcmd[2]_INST_0_i_3_n_0 ),
        .I2(\iv[15]_i_119_n_0 ),
        .I3(crdy),
        .I4(\fch/ir [7]),
        .I5(\bcmd[1]_INST_0_i_11_n_0 ),
        .O(\iv[15]_i_98_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \iv[15]_i_99 
       (.I0(\fch/ir [3]),
        .I1(brdy),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [9]),
        .O(\iv[15]_i_99_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[1]_i_1 
       (.I0(\iv[1]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\alu/art/add/tout__1_carry_n_6 ),
        .I3(\iv[1]_i_3_n_0 ),
        .I4(\iv[1]_i_4_n_0 ),
        .O(cbus[1]));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[1]_i_10 
       (.I0(abus_0[9]),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .O(\iv[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF8448844F844F8F4)) 
    \iv[1]_i_11 
       (.I0(tout__1_carry_i_10_n_0),
        .I1(\iv[14]_i_38_n_0 ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(abus_0[1]),
        .I4(\iv[12]_i_19_n_0 ),
        .I5(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\iv[1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h80288088)) 
    \iv[1]_i_12 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(tout__1_carry_i_9_n_0),
        .I2(abus_0[1]),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .I4(tout__1_carry_i_10_n_0),
        .O(\iv[1]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h01000101)) 
    \iv[1]_i_13 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\iv[14]_i_24_n_0 ),
        .I3(\iv[14]_i_8_n_0 ),
        .I4(abus_0[0]),
        .O(\iv[1]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFF550F33)) 
    \iv[1]_i_14 
       (.I0(abus_0[14]),
        .I1(abus_0[13]),
        .I2(abus_0[15]),
        .I3(\iv[2]_i_21_n_0 ),
        .I4(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAE00AE000000AE00)) 
    \iv[1]_i_2 
       (.I0(\iv[1]_i_5_n_0 ),
        .I1(\iv[1]_i_6_n_0 ),
        .I2(\iv[1]_i_7_n_0 ),
        .I3(\iv[14]_i_3_n_0 ),
        .I4(\iv[1]_i_8_n_0 ),
        .I5(\iv[1]_i_9_n_0 ),
        .O(\iv[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF8F8888F8888888)) 
    \iv[1]_i_3 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(cbus_i[1]),
        .I2(\iv[7]_i_10_n_0 ),
        .I3(bdatr[9]),
        .I4(\mem/read_cyc [2]),
        .I5(bdatr[1]),
        .O(\iv[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF100)) 
    \iv[1]_i_4 
       (.I0(\iv[1]_i_10_n_0 ),
        .I1(\iv[6]_i_10_n_0 ),
        .I2(\iv[1]_i_11_n_0 ),
        .I3(\iv[14]_i_22_n_0 ),
        .I4(\iv[1]_i_12_n_0 ),
        .O(\iv[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAABABAB)) 
    \iv[1]_i_5 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\iv[2]_i_9_n_0 ),
        .I2(\iv[1]_i_13_n_0 ),
        .I3(\iv[14]_i_28_n_0 ),
        .I4(\iv[2]_i_8_n_0 ),
        .I5(\iv[14]_i_31_n_0 ),
        .O(\iv[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1013)) 
    \iv[1]_i_6 
       (.I0(\iv[9]_i_15_n_0 ),
        .I1(\iv[7]_i_6_n_0 ),
        .I2(tout__1_carry_i_9_n_0),
        .I3(\iv[9]_i_13_n_0 ),
        .I4(\iv[12]_i_12_n_0 ),
        .O(\iv[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFEFCFCCCCCCCC)) 
    \iv[1]_i_7 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[1]_i_13_n_0 ),
        .I2(\iv[2]_i_9_n_0 ),
        .I3(\iv[1]_i_14_n_0 ),
        .I4(\iv[14]_i_27_n_0 ),
        .I5(tout__1_carry_i_10_n_0),
        .O(\iv[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F7F4F4F4F7F4)) 
    \iv[1]_i_8 
       (.I0(\iv[10]_i_22_n_0 ),
        .I1(\iv[2]_i_9_n_0 ),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(\iv[9]_i_18_n_0 ),
        .I4(\iv[2]_i_8_n_0 ),
        .I5(\iv[14]_i_35_n_0 ),
        .O(\iv[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h4000FFFF)) 
    \iv[1]_i_9 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(\iv[9]_i_17_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F002000)) 
    \iv[2]_i_1 
       (.I0(\iv[2]_i_2_n_0 ),
        .I1(\iv[2]_i_3_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[14]_i_3_n_0 ),
        .I4(\iv[2]_i_4_n_0 ),
        .I5(\iv[2]_i_5_n_0 ),
        .O(cbus[2]));
  LUT6 #(
    .INIT(64'h5533FF0FFF33550F)) 
    \iv[2]_i_10 
       (.I0(abus_0[1]),
        .I1(abus_0[2]),
        .I2(abus_0[0]),
        .I3(\bdatw[8]_INST_0_i_2_n_0 ),
        .I4(\bdatw[9]_INST_0_i_2_n_0 ),
        .I5(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[2]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[2]_i_11 
       (.I0(\iv[7]_i_6_n_0 ),
        .I1(\iv[14]_i_8_n_0 ),
        .O(\iv[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h35FF000035FF35FF)) 
    \iv[2]_i_12 
       (.I0(abus_0[9]),
        .I1(abus_0[8]),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(\iv[2]_i_21_n_0 ),
        .I4(\iv[2]_i_24_n_0 ),
        .I5(\iv[2]_i_23_n_0 ),
        .O(\iv[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[2]_i_13 
       (.I0(abus_0[7]),
        .I1(abus_0[6]),
        .I2(abus_0[5]),
        .I3(abus_0[4]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[2]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hCDEFCCCC)) 
    \iv[2]_i_14 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[12]_i_12_n_0 ),
        .I2(\iv[10]_i_14_n_0 ),
        .I3(\iv[14]_i_30_n_0 ),
        .I4(\iv[14]_i_15_n_0 ),
        .O(\iv[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB1B0000)) 
    \iv[2]_i_15 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[10]_i_14_n_0 ),
        .I2(\iv[10]_i_15_n_0 ),
        .I3(\iv[10]_i_16_n_0 ),
        .I4(tout__1_carry_i_9_n_0),
        .I5(\iv[7]_i_6_n_0 ),
        .O(\iv[2]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h084C)) 
    \iv[2]_i_16 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[2]_i_9_n_0 ),
        .I2(\iv[10]_i_15_n_0 ),
        .I3(\iv[10]_i_14_n_0 ),
        .O(\iv[2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \iv[2]_i_17 
       (.I0(\iv[7]_i_6_n_0 ),
        .I1(\iv[7]_i_15_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[2]_i_25_n_0 ),
        .O(\iv[2]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \iv[2]_i_18 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\iv[14]_i_8_n_0 ),
        .I2(abus_0[1]),
        .O(\iv[2]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF100)) 
    \iv[2]_i_19 
       (.I0(\iv[10]_i_24_n_0 ),
        .I1(\iv[6]_i_10_n_0 ),
        .I2(\iv[2]_i_26_n_0 ),
        .I3(\iv[14]_i_22_n_0 ),
        .I4(\iv[2]_i_27_n_0 ),
        .O(\iv[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000FFFACFFAC)) 
    \iv[2]_i_2 
       (.I0(\iv[2]_i_6_n_0 ),
        .I1(\iv[2]_i_7_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[2]_i_9_n_0 ),
        .I4(\iv[2]_i_10_n_0 ),
        .I5(\iv[14]_i_8_n_0 ),
        .O(\iv[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEF002000)) 
    \iv[2]_i_20 
       (.I0(bdatr[10]),
        .I1(\mem/read_cyc [0]),
        .I2(\mem/read_cyc [1]),
        .I3(\mem/read_cyc [2]),
        .I4(bdatr[2]),
        .O(\iv[2]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h59)) 
    \iv[2]_i_21 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[2]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[2]_i_22 
       (.I0(abus_0[14]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[15]),
        .O(\iv[2]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \iv[2]_i_23 
       (.I0(\bdatw[9]_INST_0_i_2_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[2]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[2]_i_24 
       (.I0(abus_0[10]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[11]),
        .O(\iv[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[2]_i_25 
       (.I0(abus_0[9]),
        .I1(abus_0[8]),
        .I2(abus_0[7]),
        .I3(abus_0[6]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[2]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF8448844F844F8F4)) 
    \iv[2]_i_26 
       (.I0(tout__1_carry_i_10_n_0),
        .I1(\iv[14]_i_38_n_0 ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(abus_0[2]),
        .I4(\iv[12]_i_19_n_0 ),
        .I5(\bdatw[10]_INST_0_i_2_n_0 ),
        .O(\iv[2]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h882A0080)) 
    \iv[2]_i_27 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(abus_0[2]),
        .I2(tout__1_carry_i_10_n_0),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(tout__1_carry_i_9_n_0),
        .O(\iv[2]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hA820)) 
    \iv[2]_i_3 
       (.I0(\iv[2]_i_11_n_0 ),
        .I1(\iv[2]_i_8_n_0 ),
        .I2(\iv[2]_i_12_n_0 ),
        .I3(\iv[2]_i_13_n_0 ),
        .O(\iv[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFEE0E)) 
    \iv[2]_i_4 
       (.I0(\iv[2]_i_14_n_0 ),
        .I1(\iv[2]_i_15_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .I3(\iv[2]_i_16_n_0 ),
        .I4(\iv[2]_i_17_n_0 ),
        .I5(\iv[2]_i_18_n_0 ),
        .O(\iv[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFEAFFFFFFEA)) 
    \iv[2]_i_5 
       (.I0(\iv[2]_i_19_n_0 ),
        .I1(\ccmd[4]_INST_0_i_1_n_0 ),
        .I2(cbus_i[2]),
        .I3(\iv[2]_i_20_n_0 ),
        .I4(\alu/art/add/tout__1_carry_n_5 ),
        .I5(\iv[13]_i_3_n_0 ),
        .O(\iv[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCA00FFFFCA00CA00)) 
    \iv[2]_i_6 
       (.I0(abus_0[13]),
        .I1(abus_0[12]),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(\iv[2]_i_21_n_0 ),
        .I4(\iv[2]_i_22_n_0 ),
        .I5(\iv[2]_i_23_n_0 ),
        .O(\iv[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \iv[2]_i_7 
       (.I0(abus_0[2]),
        .I1(abus_0[1]),
        .I2(abus_0[0]),
        .I3(\rgf/sreg/sr [6]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h55A6)) 
    \iv[2]_i_8 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h5555A6AA)) 
    \iv[2]_i_9 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(\bdatw[9]_INST_0_i_2_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[3]_i_1 
       (.I0(\iv[3]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\alu/art/add/tout__1_carry_n_4 ),
        .I3(\iv[3]_i_3_n_0 ),
        .I4(\iv[3]_i_4_n_0 ),
        .O(cbus[3]));
  LUT6 #(
    .INIT(64'hF8448844F844F8F4)) 
    \iv[3]_i_10 
       (.I0(tout__1_carry_i_10_n_0),
        .I1(\iv[14]_i_38_n_0 ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(abus_0[3]),
        .I4(\iv[12]_i_19_n_0 ),
        .I5(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h8A222000)) 
    \iv[3]_i_11 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .I3(abus_0[3]),
        .I4(tout__1_carry_i_9_n_0),
        .O(\iv[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[3]_i_12 
       (.I0(abus_0[2]),
        .I1(\iv[14]_i_8_n_0 ),
        .O(\iv[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[3]_i_13 
       (.I0(\iv[9]_i_21_n_0 ),
        .I1(\iv[5]_i_14_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[5]_i_15_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[6]_i_16_n_0 ),
        .O(\iv[3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h5D5DFF5D)) 
    \iv[3]_i_14 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[13]_i_24_n_0 ),
        .I2(\iv[2]_i_21_n_0 ),
        .I3(\iv[3]_i_16_n_0 ),
        .I4(\iv[2]_i_23_n_0 ),
        .O(\iv[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAA33AA330F000FFF)) 
    \iv[3]_i_15 
       (.I0(\iv[14]_i_42_n_0 ),
        .I1(\iv[10]_i_29_n_0 ),
        .I2(\iv[14]_i_43_n_0 ),
        .I3(\iv[2]_i_21_n_0 ),
        .I4(\iv[7]_i_22_n_0 ),
        .I5(\iv[2]_i_8_n_0 ),
        .O(\iv[3]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[3]_i_16 
       (.I0(abus_0[13]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[14]),
        .O(\iv[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF0D0000)) 
    \iv[3]_i_2 
       (.I0(\iv[3]_i_5_n_0 ),
        .I1(\iv[3]_i_6_n_0 ),
        .I2(\iv[3]_i_7_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\iv[14]_i_3_n_0 ),
        .I5(\iv[3]_i_8_n_0 ),
        .O(\iv[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF8F8888F8888888)) 
    \iv[3]_i_3 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(cbus_i[3]),
        .I2(\iv[7]_i_10_n_0 ),
        .I3(bdatr[11]),
        .I4(\mem/read_cyc [2]),
        .I5(bdatr[3]),
        .O(\iv[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF100)) 
    \iv[3]_i_4 
       (.I0(\iv[3]_i_9_n_0 ),
        .I1(\iv[6]_i_10_n_0 ),
        .I2(\iv[3]_i_10_n_0 ),
        .I3(\iv[14]_i_22_n_0 ),
        .I4(\iv[3]_i_11_n_0 ),
        .O(\iv[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h45405555)) 
    \iv[3]_i_5 
       (.I0(\iv[12]_i_12_n_0 ),
        .I1(\iv[7]_i_18_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[8]_i_16_n_0 ),
        .I4(\iv[7]_i_6_n_0 ),
        .O(\iv[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0088000A00DD005F)) 
    \iv[3]_i_6 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(abus_0[15]),
        .I2(\iv[7]_i_14_n_0 ),
        .I3(\iv[7]_i_6_n_0 ),
        .I4(tout__1_carry_i_9_n_0),
        .I5(\iv[7]_i_17_n_0 ),
        .O(\iv[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4444444F44444)) 
    \iv[3]_i_7 
       (.I0(\iv[3]_i_12_n_0 ),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(\iv[3]_i_13_n_0 ),
        .I3(\iv[2]_i_9_n_0 ),
        .I4(tout__1_carry_i_10_n_0),
        .I5(\iv[11]_i_19_n_0 ),
        .O(\iv[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFC00FC000800F800)) 
    \iv[3]_i_8 
       (.I0(\iv[3]_i_14_n_0 ),
        .I1(\iv[11]_i_18_n_0 ),
        .I2(\iv[2]_i_9_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\iv[3]_i_15_n_0 ),
        .I5(\iv[14]_i_8_n_0 ),
        .O(\iv[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[3]_i_9 
       (.I0(abus_0[11]),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .O(\iv[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFBAFFFF)) 
    \iv[4]_i_1 
       (.I0(\iv[4]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\alu/art/add/tout__1_carry__0_n_7 ),
        .I3(\iv[4]_i_3_n_0 ),
        .I4(\iv[4]_i_4_n_0 ),
        .O(cbus[4]));
  LUT5 #(
    .INIT(32'h80802888)) 
    \iv[4]_i_10 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(tout__1_carry_i_9_n_0),
        .I2(abus_0[4]),
        .I3(tout__1_carry_i_10_n_0),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[4]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[4]_i_11 
       (.I0(\iv[14]_i_25_n_0 ),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0100011100000000)) 
    \iv[4]_i_12 
       (.I0(\iv[7]_i_6_n_0 ),
        .I1(tout__1_carry_i_9_n_0),
        .I2(\iv[12]_i_20_n_0 ),
        .I3(\iv[2]_i_21_n_0 ),
        .I4(\iv[14]_i_40_n_0 ),
        .I5(\iv[2]_i_8_n_0 ),
        .O(\iv[4]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFF470047)) 
    \iv[4]_i_13 
       (.I0(\iv[10]_i_25_n_0 ),
        .I1(\iv[2]_i_23_n_0 ),
        .I2(\iv[14]_i_39_n_0 ),
        .I3(\iv[2]_i_8_n_0 ),
        .I4(\iv[14]_i_24_n_0 ),
        .O(\iv[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF0F3FFF3F0F5FFF5)) 
    \iv[4]_i_14 
       (.I0(abus_0[2]),
        .I1(abus_0[1]),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[2]_i_23_n_0 ),
        .I4(\iv[14]_i_41_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[4]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[4]_i_15 
       (.I0(\iv[2]_i_9_n_0 ),
        .I1(\iv[14]_i_8_n_0 ),
        .O(\iv[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FF444F4F)) 
    \iv[4]_i_16 
       (.I0(\iv[4]_i_18_n_0 ),
        .I1(\iv[11]_i_25_n_0 ),
        .I2(\iv[10]_i_28_n_0 ),
        .I3(\iv[14]_i_41_n_0 ),
        .I4(\iv[2]_i_23_n_0 ),
        .I5(\iv[2]_i_8_n_0 ),
        .O(\iv[4]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0232)) 
    \iv[4]_i_17 
       (.I0(abus_0[12]),
        .I1(\iv[6]_i_10_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[4]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[4]_i_18 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(abus_0[0]),
        .O(\iv[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hF0F02020F0002020)) 
    \iv[4]_i_2 
       (.I0(\iv[4]_i_5_n_0 ),
        .I1(\iv[4]_i_6_n_0 ),
        .I2(\iv[14]_i_3_n_0 ),
        .I3(\iv[4]_i_7_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\iv[4]_i_8_n_0 ),
        .O(\iv[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE040E040E040)) 
    \iv[4]_i_3 
       (.I0(\iv[7]_i_10_n_0 ),
        .I1(bdatr[4]),
        .I2(\mem/read_cyc [2]),
        .I3(bdatr[12]),
        .I4(\ccmd[4]_INST_0_i_1_n_0 ),
        .I5(cbus_i[4]),
        .O(\iv[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \iv[4]_i_4 
       (.I0(\iv[4]_i_9_n_0 ),
        .I1(\iv[14]_i_22_n_0 ),
        .I2(\iv[4]_i_10_n_0 ),
        .O(\iv[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h5D)) 
    \iv[4]_i_5 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(abus_0[3]),
        .I2(\iv[14]_i_8_n_0 ),
        .O(\iv[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000F2F2F200F2)) 
    \iv[4]_i_6 
       (.I0(\iv[4]_i_11_n_0 ),
        .I1(\iv[4]_i_12_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .I3(\iv[4]_i_13_n_0 ),
        .I4(\iv[7]_i_6_n_0 ),
        .I5(\iv[13]_i_18_n_0 ),
        .O(\iv[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000002F)) 
    \iv[4]_i_7 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[8]_i_21_n_0 ),
        .I2(\iv[4]_i_14_n_0 ),
        .I3(\iv[2]_i_9_n_0 ),
        .I4(\iv[14]_i_8_n_0 ),
        .O(\iv[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
    \iv[4]_i_8 
       (.I0(\iv[4]_i_15_n_0 ),
        .I1(\iv[4]_i_16_n_0 ),
        .I2(\iv[9]_i_19_n_0 ),
        .I3(\iv[2]_i_8_n_0 ),
        .I4(\iv[8]_i_22_n_0 ),
        .I5(\iv[2]_i_11_n_0 ),
        .O(\iv[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00030B0B0F0F000B)) 
    \iv[4]_i_9 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\iv[4]_i_17_n_0 ),
        .I3(\iv[14]_i_38_n_0 ),
        .I4(tout__1_carry_i_10_n_0),
        .I5(abus_0[4]),
        .O(\iv[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[5]_i_1 
       (.I0(\iv[5]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\alu/art/add/tout__1_carry__0_n_6 ),
        .I3(\iv[5]_i_3_n_0 ),
        .I4(\iv[5]_i_4_n_0 ),
        .O(cbus[5]));
  LUT6 #(
    .INIT(64'hF8448844F844F8F4)) 
    \iv[5]_i_10 
       (.I0(tout__1_carry_i_10_n_0),
        .I1(\iv[14]_i_38_n_0 ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(abus_0[5]),
        .I4(\iv[12]_i_19_n_0 ),
        .I5(\bdatw[13]_INST_0_i_2_n_0 ),
        .O(\iv[5]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h8A222000)) 
    \iv[5]_i_11 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .I3(abus_0[5]),
        .I4(tout__1_carry_i_9_n_0),
        .O(\iv[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[5]_i_12 
       (.I0(\iv[11]_i_23_n_0 ),
        .I1(\iv[9]_i_21_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[5]_i_14_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[5]_i_15_n_0 ),
        .O(\iv[5]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[5]_i_13 
       (.I0(abus_0[4]),
        .I1(\iv[14]_i_8_n_0 ),
        .O(\iv[5]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_14 
       (.I0(abus_0[8]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[7]),
        .O(\iv[5]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[5]_i_15 
       (.I0(abus_0[6]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[5]),
        .O(\iv[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF0F02020F0002020)) 
    \iv[5]_i_2 
       (.I0(\iv[5]_i_5_n_0 ),
        .I1(\iv[5]_i_6_n_0 ),
        .I2(\iv[14]_i_3_n_0 ),
        .I3(\iv[5]_i_7_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\iv[5]_i_8_n_0 ),
        .O(\iv[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC808C808C808)) 
    \iv[5]_i_3 
       (.I0(bdatr[5]),
        .I1(\mem/read_cyc [2]),
        .I2(\iv[7]_i_10_n_0 ),
        .I3(bdatr[13]),
        .I4(\ccmd[4]_INST_0_i_1_n_0 ),
        .I5(cbus_i[5]),
        .O(\iv[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF100)) 
    \iv[5]_i_4 
       (.I0(\iv[5]_i_9_n_0 ),
        .I1(\iv[6]_i_10_n_0 ),
        .I2(\iv[5]_i_10_n_0 ),
        .I3(\iv[14]_i_22_n_0 ),
        .I4(\iv[5]_i_11_n_0 ),
        .O(\iv[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0553333)) 
    \iv[5]_i_5 
       (.I0(\iv[13]_i_19_n_0 ),
        .I1(\iv[5]_i_12_n_0 ),
        .I2(\iv[13]_i_20_n_0 ),
        .I3(tout__1_carry_i_9_n_0),
        .I4(\iv[2]_i_9_n_0 ),
        .I5(\iv[12]_i_12_n_0 ),
        .O(\iv[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB080B080)) 
    \iv[5]_i_6 
       (.I0(\iv[13]_i_17_n_0 ),
        .I1(\iv[2]_i_9_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .I3(\iv[5]_i_12_n_0 ),
        .I4(\iv[5]_i_13_n_0 ),
        .I5(\iv[14]_i_7_n_0 ),
        .O(\iv[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000074)) 
    \iv[5]_i_7 
       (.I0(\iv[9]_i_18_n_0 ),
        .I1(\iv[2]_i_8_n_0 ),
        .I2(\iv[9]_i_20_n_0 ),
        .I3(\iv[2]_i_9_n_0 ),
        .I4(\iv[14]_i_8_n_0 ),
        .O(\iv[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h3838080808380838)) 
    \iv[5]_i_8 
       (.I0(\iv[13]_i_16_n_0 ),
        .I1(\iv[14]_i_8_n_0 ),
        .I2(\iv[2]_i_9_n_0 ),
        .I3(\iv[14]_i_35_n_0 ),
        .I4(\iv[14]_i_36_n_0 ),
        .I5(\iv[2]_i_8_n_0 ),
        .O(\iv[5]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[5]_i_9 
       (.I0(abus_0[13]),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .O(\iv[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[6]_i_1 
       (.I0(\iv[6]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\alu/art/add/tout__1_carry__0_n_5 ),
        .I3(\iv[6]_i_3_n_0 ),
        .I4(\iv[6]_i_4_n_0 ),
        .O(cbus[6]));
  LUT3 #(
    .INIT(8'h4F)) 
    \iv[6]_i_10 
       (.I0(\ccmd[2]_INST_0_i_1_n_0 ),
        .I1(\ccmd[2]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_9_n_0),
        .O(\iv[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF8448844F844F8F4)) 
    \iv[6]_i_11 
       (.I0(tout__1_carry_i_10_n_0),
        .I1(\iv[14]_i_38_n_0 ),
        .I2(\iv[14]_i_11_n_0 ),
        .I3(abus_0[6]),
        .I4(\iv[12]_i_19_n_0 ),
        .I5(\bdatw[14]_INST_0_i_2_n_0 ),
        .O(\iv[6]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h9020B000)) 
    \iv[6]_i_12 
       (.I0(abus_0[6]),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(\iv[11]_i_22_n_0 ),
        .I3(tout__1_carry_i_9_n_0),
        .I4(tout__1_carry_i_10_n_0),
        .O(\iv[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[6]_i_13 
       (.I0(\iv[10]_i_25_n_0 ),
        .I1(\iv[13]_i_29_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[13]_i_30_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[13]_i_31_n_0 ),
        .O(\iv[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[6]_i_14 
       (.I0(\iv[14]_i_39_n_0 ),
        .I1(\iv[14]_i_40_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[12]_i_20_n_0 ),
        .I4(\iv[2]_i_23_n_0 ),
        .I5(\iv[6]_i_16_n_0 ),
        .O(\iv[6]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[6]_i_15 
       (.I0(abus_0[5]),
        .I1(\iv[14]_i_8_n_0 ),
        .O(\iv[6]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[6]_i_16 
       (.I0(abus_0[4]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[3]),
        .O(\iv[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF0F02020F0002020)) 
    \iv[6]_i_2 
       (.I0(\iv[6]_i_5_n_0 ),
        .I1(\iv[6]_i_6_n_0 ),
        .I2(\iv[14]_i_3_n_0 ),
        .I3(\iv[6]_i_7_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\iv[6]_i_8_n_0 ),
        .O(\iv[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF88F8888888F888)) 
    \iv[6]_i_3 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(cbus_i[6]),
        .I2(bdatr[6]),
        .I3(\mem/read_cyc [2]),
        .I4(\iv[7]_i_10_n_0 ),
        .I5(bdatr[14]),
        .O(\iv[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF100)) 
    \iv[6]_i_4 
       (.I0(\iv[6]_i_9_n_0 ),
        .I1(\iv[6]_i_10_n_0 ),
        .I2(\iv[6]_i_11_n_0 ),
        .I3(\iv[14]_i_22_n_0 ),
        .I4(\iv[6]_i_12_n_0 ),
        .O(\iv[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF350535F5)) 
    \iv[6]_i_5 
       (.I0(\iv[6]_i_13_n_0 ),
        .I1(\iv[14]_i_26_n_0 ),
        .I2(\iv[2]_i_9_n_0 ),
        .I3(tout__1_carry_i_9_n_0),
        .I4(\iv[6]_i_14_n_0 ),
        .I5(\iv[12]_i_12_n_0 ),
        .O(\iv[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF4FF4444F4444444)) 
    \iv[6]_i_6 
       (.I0(\iv[6]_i_15_n_0 ),
        .I1(\iv[14]_i_7_n_0 ),
        .I2(\iv[14]_i_33_n_0 ),
        .I3(\iv[2]_i_9_n_0 ),
        .I4(tout__1_carry_i_10_n_0),
        .I5(\iv[6]_i_13_n_0 ),
        .O(\iv[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000002E)) 
    \iv[6]_i_7 
       (.I0(\iv[2]_i_6_n_0 ),
        .I1(\iv[2]_i_8_n_0 ),
        .I2(\iv[2]_i_12_n_0 ),
        .I3(\iv[7]_i_6_n_0 ),
        .I4(\iv[14]_i_8_n_0 ),
        .O(\iv[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0202330032323300)) 
    \iv[6]_i_8 
       (.I0(\iv[2]_i_7_n_0 ),
        .I1(\iv[2]_i_9_n_0 ),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(\iv[14]_i_37_n_0 ),
        .I4(\iv[2]_i_8_n_0 ),
        .I5(\iv[2]_i_10_n_0 ),
        .O(\iv[6]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \iv[6]_i_9 
       (.I0(abus_0[14]),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .O(\iv[6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[7]_i_1 
       (.I0(\iv[7]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\alu/art/add/tout__1_carry__0_n_4 ),
        .I3(\iv[7]_i_3_n_0 ),
        .I4(\iv[7]_i_4_n_0 ),
        .O(cbus[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[7]_i_10 
       (.I0(\mem/read_cyc [1]),
        .I1(\mem/read_cyc [0]),
        .O(\iv[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0700000377337733)) 
    \iv[7]_i_11 
       (.I0(\bdatw[15]_INST_0_i_2_n_0 ),
        .I1(\iv[7]_i_21_n_0 ),
        .I2(\iv[14]_i_12_n_0 ),
        .I3(tout__1_carry_i_10_n_0),
        .I4(abus_0[7]),
        .I5(\iv[6]_i_10_n_0 ),
        .O(\iv[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h880C)) 
    \iv[7]_i_12 
       (.I0(abus_0[7]),
        .I1(\iv[14]_i_11_n_0 ),
        .I2(\bdatw[15]_INST_0_i_2_n_0 ),
        .I3(\iv[12]_i_19_n_0 ),
        .O(\iv[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hC0700080)) 
    \iv[7]_i_13 
       (.I0(tout__1_carry_i_10_n_0),
        .I1(abus_0[7]),
        .I2(\iv[14]_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_2_n_0 ),
        .I4(tout__1_carry_i_9_n_0),
        .O(\iv[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h330033FF0F550F55)) 
    \iv[7]_i_14 
       (.I0(abus_0[15]),
        .I1(abus_0[1]),
        .I2(abus_0[0]),
        .I3(\iv[2]_i_21_n_0 ),
        .I4(\rgf/sreg/sr [6]),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[7]_i_15 
       (.I0(abus_0[5]),
        .I1(abus_0[4]),
        .I2(abus_0[3]),
        .I3(abus_0[2]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFF00DF00FF00FF00)) 
    \iv[7]_i_16 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(\bdatw[9]_INST_0_i_2_n_0 ),
        .I3(tout__1_carry_i_10_n_0),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .I5(abus_0[15]),
        .O(\iv[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[7]_i_17 
       (.I0(abus_0[14]),
        .I1(abus_0[13]),
        .I2(abus_0[12]),
        .I3(abus_0[11]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[7]_i_18 
       (.I0(abus_0[10]),
        .I1(abus_0[9]),
        .I2(abus_0[8]),
        .I3(abus_0[7]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iv[7]_i_19 
       (.I0(\iv[13]_i_23_n_0 ),
        .I1(\iv[13]_i_28_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[13]_i_22_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[13]_i_25_n_0 ),
        .O(\iv[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00AE)) 
    \iv[7]_i_2 
       (.I0(\iv[7]_i_5_n_0 ),
        .I1(\iv[7]_i_6_n_0 ),
        .I2(\iv[7]_i_7_n_0 ),
        .I3(\iv[7]_i_8_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\iv[7]_i_9_n_0 ),
        .O(\iv[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0CFC0)) 
    \iv[7]_i_20 
       (.I0(\iv[14]_i_43_n_0 ),
        .I1(\iv[7]_i_22_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[7]_i_23_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[13]_i_24_n_0 ),
        .O(\iv[7]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \iv[7]_i_21 
       (.I0(tout__1_carry_i_9_n_0),
        .I1(abus_0[15]),
        .I2(tout__1_carry_i_13_n_0),
        .O(\iv[7]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[7]_i_22 
       (.I0(abus_0[11]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[12]),
        .O(\iv[7]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00303505)) 
    \iv[7]_i_23 
       (.I0(abus_0[14]),
        .I1(abus_0[13]),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\bdatw[9]_INST_0_i_2_n_0 ),
        .O(\iv[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFF88F8888888F888)) 
    \iv[7]_i_3 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(cbus_i[7]),
        .I2(bdatr[7]),
        .I3(\mem/read_cyc [2]),
        .I4(\iv[7]_i_10_n_0 ),
        .I5(bdatr[15]),
        .O(\iv[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \iv[7]_i_4 
       (.I0(\iv[7]_i_11_n_0 ),
        .I1(\iv[7]_i_12_n_0 ),
        .I2(\iv[14]_i_22_n_0 ),
        .I3(\iv[7]_i_13_n_0 ),
        .O(\iv[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF02A2)) 
    \iv[7]_i_5 
       (.I0(\iv[14]_i_15_n_0 ),
        .I1(\iv[7]_i_14_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[7]_i_15_n_0 ),
        .I4(\iv[14]_i_29_n_0 ),
        .I5(\iv[7]_i_16_n_0 ),
        .O(\iv[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAEAA5155)) 
    \iv[7]_i_6 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(\bdatw[10]_INST_0_i_2_n_0 ),
        .I4(\bdatw[11]_INST_0_i_2_n_0 ),
        .O(\iv[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[7]_i_7 
       (.I0(\iv[7]_i_17_n_0 ),
        .I1(\iv[2]_i_8_n_0 ),
        .I2(\iv[7]_i_18_n_0 ),
        .O(\iv[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \iv[7]_i_8 
       (.I0(\iv[14]_i_7_n_0 ),
        .I1(\iv[14]_i_8_n_0 ),
        .I2(abus_0[6]),
        .O(\iv[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B080FFFFFFFF)) 
    \iv[7]_i_9 
       (.I0(\iv[7]_i_19_n_0 ),
        .I1(\iv[7]_i_6_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[14]_i_8_n_0 ),
        .I4(\iv[7]_i_20_n_0 ),
        .I5(\iv[14]_i_3_n_0 ),
        .O(\iv[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8F88)) 
    \iv[8]_i_1 
       (.I0(\iv[14]_i_3_n_0 ),
        .I1(\iv[8]_i_2_n_0 ),
        .I2(\iv[13]_i_3_n_0 ),
        .I3(\alu/art/add/tout__1_carry__1_n_7 ),
        .I4(\iv[8]_i_3_n_0 ),
        .I5(\iv[8]_i_4_n_0 ),
        .O(cbus[8]));
  LUT5 #(
    .INIT(32'hFFFF001B)) 
    \iv[8]_i_10 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\iv[8]_i_21_n_0 ),
        .I2(\iv[8]_i_22_n_0 ),
        .I3(\iv[14]_i_8_n_0 ),
        .I4(\iv[8]_i_23_n_0 ),
        .O(\iv[8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[8]_i_11 
       (.I0(\iv[0]_i_10_n_0 ),
        .I1(\iv[14]_i_11_n_0 ),
        .O(\iv[8]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \iv[8]_i_12 
       (.I0(abus_0[0]),
        .I1(tout__1_carry_i_10_n_0),
        .O(\iv[8]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \iv[8]_i_13 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(tout__1_carry_i_10_n_0),
        .I2(abus_0[8]),
        .O(\iv[8]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h882A0080)) 
    \iv[8]_i_14 
       (.I0(\iv[11]_i_22_n_0 ),
        .I1(abus_0[8]),
        .I2(tout__1_carry_i_10_n_0),
        .I3(\bdatw[8]_INST_0_i_1_n_0 ),
        .I4(tout__1_carry_i_9_n_0),
        .O(\iv[8]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \iv[8]_i_15 
       (.I0(\iv[12]_i_20_n_0 ),
        .I1(\iv[2]_i_21_n_0 ),
        .I2(\iv[14]_i_40_n_0 ),
        .O(\iv[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[8]_i_16 
       (.I0(abus_0[6]),
        .I1(abus_0[5]),
        .I2(abus_0[4]),
        .I3(abus_0[3]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h55550F0F333300FF)) 
    \iv[8]_i_17 
       (.I0(abus_0[11]),
        .I1(abus_0[10]),
        .I2(abus_0[9]),
        .I3(abus_0[8]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[8]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h53FF5300)) 
    \iv[8]_i_18 
       (.I0(abus_0[13]),
        .I1(abus_0[12]),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(\iv[2]_i_23_n_0 ),
        .I4(\iv[14]_i_39_n_0 ),
        .O(\iv[8]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h00FF3535)) 
    \iv[8]_i_19 
       (.I0(abus_0[2]),
        .I1(abus_0[1]),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(\iv[14]_i_41_n_0 ),
        .I4(\iv[2]_i_23_n_0 ),
        .O(\iv[8]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h5554FFFF55545554)) 
    \iv[8]_i_2 
       (.I0(\iv[8]_i_5_n_0 ),
        .I1(\iv[8]_i_6_n_0 ),
        .I2(\iv[8]_i_7_n_0 ),
        .I3(\iv[8]_i_8_n_0 ),
        .I4(\iv[8]_i_9_n_0 ),
        .I5(\iv[8]_i_10_n_0 ),
        .O(\iv[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCF0AA)) 
    \iv[8]_i_20 
       (.I0(abus_0[8]),
        .I1(abus_0[7]),
        .I2(\iv[14]_i_42_n_0 ),
        .I3(\iv[2]_i_21_n_0 ),
        .I4(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[8]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h330033FF550F550F)) 
    \iv[8]_i_21 
       (.I0(abus_0[15]),
        .I1(abus_0[14]),
        .I2(abus_0[0]),
        .I3(\iv[2]_i_21_n_0 ),
        .I4(\rgf/sreg/sr [6]),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[8]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[8]_i_22 
       (.I0(abus_0[13]),
        .I1(abus_0[12]),
        .I2(abus_0[11]),
        .I3(abus_0[10]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[8]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \iv[8]_i_23 
       (.I0(\bdatw[10]_INST_0_i_2_n_0 ),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(\bdatw[9]_INST_0_i_2_n_0 ),
        .I3(abus_0[0]),
        .I4(\iv[14]_i_8_n_0 ),
        .I5(\iv[7]_i_6_n_0 ),
        .O(\iv[8]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \iv[8]_i_3 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(cbus_i[8]),
        .I2(\mem/read_cyc [1]),
        .I3(\mem/read_cyc [2]),
        .I4(bdatr[8]),
        .O(\iv[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD50000)) 
    \iv[8]_i_4 
       (.I0(\iv[8]_i_11_n_0 ),
        .I1(\iv[14]_i_20_n_0 ),
        .I2(\iv[8]_i_12_n_0 ),
        .I3(\iv[8]_i_13_n_0 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\iv[8]_i_14_n_0 ),
        .O(\iv[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \iv[8]_i_5 
       (.I0(\bdatw[12]_INST_0_i_2_n_0 ),
        .I1(abus_0[7]),
        .I2(\iv[14]_i_8_n_0 ),
        .I3(\iv[14]_i_7_n_0 ),
        .O(\iv[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[8]_i_6 
       (.I0(\iv[14]_i_29_n_0 ),
        .I1(tout__1_carry_i_10_n_0),
        .O(\iv[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00011101)) 
    \iv[8]_i_7 
       (.I0(\iv[7]_i_6_n_0 ),
        .I1(\iv[14]_i_8_n_0 ),
        .I2(\iv[8]_i_15_n_0 ),
        .I3(\iv[2]_i_8_n_0 ),
        .I4(\iv[8]_i_16_n_0 ),
        .O(\iv[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \iv[8]_i_8 
       (.I0(\iv[7]_i_6_n_0 ),
        .I1(\iv[8]_i_17_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[8]_i_18_n_0 ),
        .O(\iv[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8B00FFFF)) 
    \iv[8]_i_9 
       (.I0(\iv[8]_i_19_n_0 ),
        .I1(\iv[2]_i_8_n_0 ),
        .I2(\iv[8]_i_20_n_0 ),
        .I3(\bdatw[11]_INST_0_i_2_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\iv[8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \iv[9]_i_1 
       (.I0(\iv[9]_i_2_n_0 ),
        .I1(\iv[13]_i_3_n_0 ),
        .I2(\alu/art/add/tout__1_carry__1_n_6 ),
        .I3(\iv[9]_i_3_n_0 ),
        .I4(\iv[9]_i_4_n_0 ),
        .O(cbus[9]));
  LUT3 #(
    .INIT(8'h82)) 
    \iv[9]_i_10 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(tout__1_carry_i_10_n_0),
        .I2(abus_0[9]),
        .O(\iv[9]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iv[9]_i_11 
       (.I0(abus_0[1]),
        .I1(tout__1_carry_i_10_n_0),
        .O(\iv[9]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h80802888)) 
    \iv[9]_i_12 
       (.I0(\iv[14]_i_12_n_0 ),
        .I1(tout__1_carry_i_9_n_0),
        .I2(abus_0[9]),
        .I3(tout__1_carry_i_10_n_0),
        .I4(\bdatw[9]_INST_0_i_1_n_0 ),
        .O(\iv[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[9]_i_13 
       (.I0(\iv[11]_i_23_n_0 ),
        .I1(\iv[9]_i_21_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[13]_i_35_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[13]_i_36_n_0 ),
        .O(\iv[9]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[9]_i_14 
       (.I0(\iv[13]_i_33_n_0 ),
        .I1(\iv[13]_i_34_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[13]_i_31_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[13]_i_32_n_0 ),
        .O(\iv[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h55CCFFF055CC00F0)) 
    \iv[9]_i_15 
       (.I0(abus_0[15]),
        .I1(\iv[11]_i_23_n_0 ),
        .I2(\iv[9]_i_21_n_0 ),
        .I3(\iv[2]_i_8_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[13]_i_36_n_0 ),
        .O(\iv[9]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \iv[9]_i_16 
       (.I0(\iv[11]_i_23_n_0 ),
        .I1(\iv[9]_i_21_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[9]_i_22_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[13]_i_36_n_0 ),
        .O(\iv[9]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[9]_i_17 
       (.I0(\iv[2]_i_23_n_0 ),
        .I1(\iv[13]_i_23_n_0 ),
        .O(\iv[9]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h03CF444403CF7777)) 
    \iv[9]_i_18 
       (.I0(abus_0[15]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[1]),
        .I3(abus_0[0]),
        .I4(\iv[2]_i_23_n_0 ),
        .I5(\rgf/sreg/sr [6]),
        .O(\iv[9]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \iv[9]_i_19 
       (.I0(abus_0[9]),
        .I1(abus_0[8]),
        .I2(abus_0[7]),
        .I3(abus_0[6]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\iv[9]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0202000F02020)) 
    \iv[9]_i_2 
       (.I0(\iv[9]_i_5_n_0 ),
        .I1(\iv[9]_i_6_n_0 ),
        .I2(\iv[14]_i_3_n_0 ),
        .I3(\iv[9]_i_7_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\iv[9]_i_8_n_0 ),
        .O(\iv[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCA00FFFFCA00CA00)) 
    \iv[9]_i_20 
       (.I0(abus_0[3]),
        .I1(abus_0[2]),
        .I2(\bdatw[8]_INST_0_i_2_n_0 ),
        .I3(\iv[2]_i_21_n_0 ),
        .I4(\iv[13]_i_22_n_0 ),
        .I5(\iv[2]_i_23_n_0 ),
        .O(\iv[9]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \iv[9]_i_21 
       (.I0(abus_0[10]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(abus_0[9]),
        .O(\iv[9]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iv[9]_i_22 
       (.I0(\bdatw[8]_INST_0_i_2_n_0 ),
        .I1(abus_0[15]),
        .O(\iv[9]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \iv[9]_i_3 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(cbus_i[9]),
        .I2(\mem/read_cyc [1]),
        .I3(\mem/read_cyc [2]),
        .I4(bdatr[9]),
        .O(\iv[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    \iv[9]_i_4 
       (.I0(\iv[9]_i_9_n_0 ),
        .I1(\iv[9]_i_10_n_0 ),
        .I2(\iv[14]_i_20_n_0 ),
        .I3(\iv[9]_i_11_n_0 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\iv[9]_i_12_n_0 ),
        .O(\iv[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00350F35)) 
    \iv[9]_i_5 
       (.I0(\iv[9]_i_13_n_0 ),
        .I1(\iv[9]_i_14_n_0 ),
        .I2(\iv[2]_i_9_n_0 ),
        .I3(tout__1_carry_i_9_n_0),
        .I4(\iv[9]_i_15_n_0 ),
        .I5(\iv[14]_i_29_n_0 ),
        .O(\iv[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD0FFD0D0D0D0)) 
    \iv[9]_i_6 
       (.I0(abus_0[8]),
        .I1(\iv[14]_i_8_n_0 ),
        .I2(\iv[14]_i_7_n_0 ),
        .I3(\iv[7]_i_6_n_0 ),
        .I4(\iv[9]_i_16_n_0 ),
        .I5(tout__1_carry_i_10_n_0),
        .O(\iv[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFAEEEBFEEAE)) 
    \iv[9]_i_7 
       (.I0(\iv[7]_i_6_n_0 ),
        .I1(\iv[14]_i_8_n_0 ),
        .I2(\iv[9]_i_17_n_0 ),
        .I3(\iv[2]_i_8_n_0 ),
        .I4(\iv[9]_i_18_n_0 ),
        .I5(\iv[14]_i_35_n_0 ),
        .O(\iv[9]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hA202)) 
    \iv[9]_i_8 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\iv[9]_i_19_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[9]_i_20_n_0 ),
        .O(\iv[9]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iv[9]_i_9 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(\iv[1]_i_10_n_0 ),
        .O(\iv[9]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \mem/bctl/read_cyc[1]_i_1 
       (.I0(bcmd[2]),
        .I1(brdy),
        .I2(\mem/read_cyc [1]),
        .O(\mem/bctl/read_cyc[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \mem/bctl/read_cyc[2]_i_1 
       (.I0(bcmd[0]),
        .I1(brdy),
        .I2(\mem/read_cyc [2]),
        .O(\mem/bctl/read_cyc[2]_i_1_n_0 ));
  FDRE \mem/bctl/read_cyc_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\read_cyc[0]_i_1_n_0 ),
        .Q(\mem/read_cyc [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \mem/bctl/read_cyc_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mem/bctl/read_cyc[1]_i_1_n_0 ),
        .Q(\mem/read_cyc [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \mem/bctl/read_cyc_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\mem/bctl/read_cyc[2]_i_1_n_0 ),
        .Q(\mem/read_cyc [2]),
        .R(\rgf/pcnt/p_0_in ));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[0]_i_1 
       (.I0(ctl_fetch),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr__0 [1]),
        .I3(\rgf/pcnt/pc [0]),
        .I4(fch_pc[0]),
        .I5(cbus[0]),
        .O(\rgf/pcnt/p_1_in [0]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[10]_i_1 
       (.I0(ctl_fetch),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr__0 [1]),
        .I3(\rgf/pcnt/pc [10]),
        .I4(fch_pc[10]),
        .I5(cbus[10]),
        .O(\rgf/pcnt/p_1_in [10]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[11]_i_1 
       (.I0(ctl_fetch),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr__0 [1]),
        .I3(\rgf/pcnt/pc [11]),
        .I4(fch_pc[11]),
        .I5(cbus[11]),
        .O(\rgf/pcnt/p_1_in [11]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[12]_i_1 
       (.I0(ctl_fetch),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr__0 [1]),
        .I3(\rgf/pcnt/pc [12]),
        .I4(fch_pc[12]),
        .I5(cbus[12]),
        .O(\rgf/pcnt/p_1_in [12]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[13]_i_1 
       (.I0(ctl_fetch),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr__0 [1]),
        .I3(\rgf/pcnt/pc [13]),
        .I4(fch_pc[13]),
        .I5(cbus[13]),
        .O(\rgf/pcnt/p_1_in [13]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[14]_i_1 
       (.I0(ctl_fetch),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr__0 [1]),
        .I3(\rgf/pcnt/pc [14]),
        .I4(fch_pc[14]),
        .I5(cbus[14]),
        .O(\rgf/pcnt/p_1_in [14]));
  LUT1 #(
    .INIT(2'h1)) 
    \pc[15]_i_1 
       (.I0(rst_n),
        .O(\rgf/pcnt/p_0_in ));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[15]_i_2 
       (.I0(ctl_fetch),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr__0 [1]),
        .I3(\rgf/pcnt/pc [15]),
        .I4(fch_pc[15]),
        .I5(cbus[15]),
        .O(\rgf/pcnt/p_1_in [15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \pc[15]_i_3 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\iv[15]_i_6_n_0 ),
        .O(\rgf/cbus_sel_cr__0 [1]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[1]_i_1 
       (.I0(ctl_fetch),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr__0 [1]),
        .I3(\rgf/pcnt/pc [1]),
        .I4(fch_pc[1]),
        .I5(cbus[1]),
        .O(\rgf/pcnt/p_1_in [1]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[2]_i_1 
       (.I0(ctl_fetch),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr__0 [1]),
        .I3(\rgf/pcnt/pc [2]),
        .I4(fch_pc[2]),
        .I5(cbus[2]),
        .O(\rgf/pcnt/p_1_in [2]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[3]_i_1 
       (.I0(ctl_fetch),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr__0 [1]),
        .I3(\rgf/pcnt/pc [3]),
        .I4(fch_pc[3]),
        .I5(cbus[3]),
        .O(\rgf/pcnt/p_1_in [3]));
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
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[4]_i_1 
       (.I0(ctl_fetch),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr__0 [1]),
        .I3(\rgf/pcnt/pc [4]),
        .I4(fch_pc[4]),
        .I5(cbus[4]),
        .O(\rgf/pcnt/p_1_in [4]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[5]_i_1 
       (.I0(ctl_fetch),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr__0 [1]),
        .I3(\rgf/pcnt/pc [5]),
        .I4(fch_pc[5]),
        .I5(cbus[5]),
        .O(\rgf/pcnt/p_1_in [5]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[6]_i_1 
       (.I0(ctl_fetch),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr__0 [1]),
        .I3(\rgf/pcnt/pc [6]),
        .I4(fch_pc[6]),
        .I5(cbus[6]),
        .O(\rgf/pcnt/p_1_in [6]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[7]_i_1 
       (.I0(ctl_fetch),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr__0 [1]),
        .I3(\rgf/pcnt/pc [7]),
        .I4(fch_pc[7]),
        .I5(cbus[7]),
        .O(\rgf/pcnt/p_1_in [7]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[8]_i_1 
       (.I0(ctl_fetch),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr__0 [1]),
        .I3(\rgf/pcnt/pc [8]),
        .I4(fch_pc[8]),
        .I5(cbus[8]),
        .O(\rgf/pcnt/p_1_in [8]));
  LUT6 #(
    .INIT(64'hFFFEF1F00F0E0100)) 
    \pc[9]_i_1 
       (.I0(ctl_fetch),
        .I1(ctl_fetch_ext),
        .I2(\rgf/cbus_sel_cr__0 [1]),
        .I3(\rgf/pcnt/pc [9]),
        .I4(fch_pc[9]),
        .I5(cbus[9]),
        .O(\rgf/pcnt/p_1_in [9]));
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
  LUT6 #(
    .INIT(64'hFB00FFFFFB000000)) 
    \read_cyc[0]_i_1 
       (.I0(bcmd[1]),
        .I1(\badrx[15]_INST_0_i_1_n_0 ),
        .I2(bcmd[0]),
        .I3(abus_0[0]),
        .I4(brdy),
        .I5(\mem/read_cyc [0]),
        .O(\read_cyc[0]_i_1_n_0 ));
  FDRE \rgf/bank02/grn00/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__14_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank02/gr00 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn00/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__14_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank02/gr00 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn00/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__14_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank02/gr00 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn00/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__14_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank02/gr00 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn00/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__14_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank02/gr00 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn00/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__14_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank02/gr00 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn00/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__14_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank02/gr00 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn00/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__14_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank02/gr00 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn00/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__14_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank02/gr00 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn00/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__14_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank02/gr00 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn00/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__14_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank02/gr00 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn00/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__14_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank02/gr00 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn00/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__14_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank02/gr00 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn00/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__14_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank02/gr00 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn00/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__14_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank02/gr00 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn00/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__14_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank02/gr00 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn01/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__10_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank02/gr01 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn01/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__10_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank02/gr01 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn01/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__10_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank02/gr01 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn01/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__10_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank02/gr01 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn01/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__10_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank02/gr01 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn01/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__10_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank02/gr01 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn01/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__10_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank02/gr01 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn01/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__10_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank02/gr01 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn01/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__10_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank02/gr01 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn01/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__10_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank02/gr01 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn01/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__10_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank02/gr01 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn01/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__10_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank02/gr01 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn01/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__10_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank02/gr01 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn01/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__10_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank02/gr01 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn01/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__10_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank02/gr01 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn01/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__10_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank02/gr01 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn02/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__30_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank02/gr02 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn02/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__30_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank02/gr02 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn02/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__30_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank02/gr02 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn02/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__30_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank02/gr02 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn02/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__30_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank02/gr02 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn02/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__30_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank02/gr02 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn02/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__30_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank02/gr02 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn02/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__30_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank02/gr02 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn02/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__30_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank02/gr02 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn02/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__30_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank02/gr02 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn02/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__30_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank02/gr02 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn02/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__30_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank02/gr02 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn02/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__30_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank02/gr02 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn02/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__30_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank02/gr02 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn02/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__30_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank02/gr02 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn02/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__30_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank02/gr02 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn03/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__26_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank02/gr03 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn03/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__26_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank02/gr03 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn03/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__26_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank02/gr03 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn03/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__26_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank02/gr03 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn03/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__26_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank02/gr03 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn03/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__26_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank02/gr03 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn03/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__26_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank02/gr03 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn03/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__26_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank02/gr03 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn03/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__26_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank02/gr03 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn03/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__26_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank02/gr03 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn03/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__26_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank02/gr03 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn03/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__26_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank02/gr03 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn03/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__26_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank02/gr03 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn03/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__26_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank02/gr03 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn03/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__26_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank02/gr03 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn03/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__26_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank02/gr03 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn04/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank02/gr04 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn04/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank02/gr04 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn04/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank02/gr04 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn04/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank02/gr04 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn04/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank02/gr04 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn04/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank02/gr04 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn04/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank02/gr04 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn04/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank02/gr04 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn04/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank02/gr04 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn04/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank02/gr04 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn04/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank02/gr04 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn04/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank02/gr04 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn04/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank02/gr04 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn04/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank02/gr04 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn04/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank02/gr04 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn04/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__6_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank02/gr04 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn05/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank02/gr05 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn05/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank02/gr05 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn05/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank02/gr05 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn05/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank02/gr05 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn05/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank02/gr05 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn05/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank02/gr05 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn05/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank02/gr05 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn05/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank02/gr05 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn05/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank02/gr05 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn05/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank02/gr05 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn05/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank02/gr05 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn05/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank02/gr05 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn05/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank02/gr05 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn05/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank02/gr05 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn05/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank02/gr05 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn05/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__2_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank02/gr05 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn06/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__22_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank02/gr06 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn06/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__22_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank02/gr06 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn06/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__22_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank02/gr06 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn06/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__22_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank02/gr06 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn06/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__22_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank02/gr06 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn06/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__22_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank02/gr06 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn06/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__22_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank02/gr06 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn06/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__22_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank02/gr06 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn06/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__22_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank02/gr06 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn06/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__22_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank02/gr06 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn06/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__22_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank02/gr06 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn06/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__22_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank02/gr06 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn06/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__22_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank02/gr06 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn06/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__22_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank02/gr06 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn06/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__22_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank02/gr06 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn06/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__22_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank02/gr06 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn07/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__18_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank02/gr07 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn07/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__18_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank02/gr07 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn07/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__18_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank02/gr07 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn07/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__18_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank02/gr07 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn07/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__18_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank02/gr07 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn07/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__18_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank02/gr07 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn07/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__18_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank02/gr07 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn07/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__18_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank02/gr07 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn07/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__18_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank02/gr07 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn07/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__18_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank02/gr07 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn07/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__18_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank02/gr07 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn07/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__18_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank02/gr07 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn07/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__18_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank02/gr07 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn07/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__18_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank02/gr07 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn07/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__18_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank02/gr07 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn07/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__18_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank02/gr07 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn20/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__11_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank02/gr20 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn20/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__11_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank02/gr20 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn20/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__11_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank02/gr20 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn20/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__11_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank02/gr20 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn20/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__11_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank02/gr20 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn20/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__11_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank02/gr20 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn20/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__11_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank02/gr20 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn20/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__11_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank02/gr20 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn20/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__11_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank02/gr20 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn20/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__11_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank02/gr20 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn20/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__11_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank02/gr20 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn20/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__11_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank02/gr20 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn20/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__11_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank02/gr20 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn20/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__11_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank02/gr20 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn20/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__11_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank02/gr20 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn20/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__11_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank02/gr20 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn21/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__7_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank02/gr21 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn21/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__7_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank02/gr21 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn21/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__7_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank02/gr21 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn21/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__7_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank02/gr21 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn21/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__7_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank02/gr21 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn21/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__7_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank02/gr21 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn21/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__7_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank02/gr21 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn21/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__7_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank02/gr21 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn21/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__7_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank02/gr21 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn21/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__7_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank02/gr21 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn21/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__7_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank02/gr21 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn21/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__7_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank02/gr21 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn21/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__7_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank02/gr21 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn21/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__7_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank02/gr21 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn21/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__7_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank02/gr21 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn21/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__7_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank02/gr21 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn22/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__27_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank02/gr22 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn22/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__27_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank02/gr22 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn22/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__27_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank02/gr22 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn22/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__27_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank02/gr22 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn22/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__27_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank02/gr22 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn22/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__27_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank02/gr22 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn22/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__27_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank02/gr22 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn22/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__27_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank02/gr22 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn22/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__27_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank02/gr22 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn22/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__27_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank02/gr22 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn22/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__27_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank02/gr22 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn22/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__27_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank02/gr22 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn22/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__27_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank02/gr22 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn22/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__27_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank02/gr22 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn22/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__27_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank02/gr22 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn22/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__27_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank02/gr22 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn23/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__23_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank02/gr23 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn23/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__23_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank02/gr23 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn23/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__23_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank02/gr23 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn23/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__23_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank02/gr23 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn23/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__23_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank02/gr23 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn23/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__23_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank02/gr23 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn23/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__23_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank02/gr23 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn23/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__23_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank02/gr23 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn23/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__23_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank02/gr23 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn23/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__23_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank02/gr23 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn23/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__23_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank02/gr23 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn23/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__23_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank02/gr23 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn23/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__23_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank02/gr23 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn23/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__23_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank02/gr23 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn23/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__23_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank02/gr23 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn23/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__23_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank02/gr23 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn24/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank02/gr24 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn24/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank02/gr24 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn24/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank02/gr24 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn24/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank02/gr24 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn24/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank02/gr24 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn24/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank02/gr24 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn24/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank02/gr24 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn24/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank02/gr24 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn24/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank02/gr24 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn24/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank02/gr24 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn24/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank02/gr24 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn24/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank02/gr24 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn24/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank02/gr24 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn24/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank02/gr24 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn24/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank02/gr24 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn24/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__3_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank02/gr24 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn25/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank02/gr25 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn25/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank02/gr25 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn25/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank02/gr25 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn25/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank02/gr25 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn25/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank02/gr25 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn25/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank02/gr25 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn25/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank02/gr25 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn25/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank02/gr25 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn25/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank02/gr25 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn25/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank02/gr25 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn25/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank02/gr25 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn25/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank02/gr25 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn25/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank02/gr25 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn25/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank02/gr25 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn25/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank02/gr25 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn25/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank02/gr25 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn26/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__19_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank02/gr26 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn26/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__19_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank02/gr26 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn26/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__19_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank02/gr26 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn26/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__19_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank02/gr26 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn26/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__19_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank02/gr26 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn26/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__19_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank02/gr26 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn26/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__19_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank02/gr26 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn26/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__19_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank02/gr26 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn26/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__19_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank02/gr26 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn26/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__19_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank02/gr26 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn26/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__19_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank02/gr26 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn26/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__19_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank02/gr26 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn26/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__19_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank02/gr26 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn26/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__19_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank02/gr26 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn26/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__19_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank02/gr26 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn26/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__19_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank02/gr26 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn27/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__15_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank02/gr27 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn27/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__15_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank02/gr27 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn27/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__15_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank02/gr27 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn27/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__15_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank02/gr27 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn27/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__15_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank02/gr27 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn27/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__15_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank02/gr27 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn27/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__15_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank02/gr27 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn27/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__15_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank02/gr27 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn27/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__15_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank02/gr27 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn27/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__15_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank02/gr27 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn27/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__15_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank02/gr27 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn27/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__15_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank02/gr27 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn27/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__15_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank02/gr27 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn27/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__15_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank02/gr27 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn27/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__15_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank02/gr27 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank02/grn27/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__15_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank02/gr27 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn00/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__12_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank13/gr00 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn00/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__12_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank13/gr00 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn00/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__12_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank13/gr00 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn00/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__12_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank13/gr00 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn00/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__12_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank13/gr00 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn00/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__12_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank13/gr00 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn00/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__12_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank13/gr00 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn00/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__12_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank13/gr00 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn00/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__12_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank13/gr00 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn00/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__12_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank13/gr00 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn00/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__12_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank13/gr00 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn00/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__12_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank13/gr00 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn00/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__12_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank13/gr00 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn00/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__12_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank13/gr00 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn00/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__12_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank13/gr00 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn00/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__12_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank13/gr00 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn01/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__8_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank13/gr01 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn01/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__8_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank13/gr01 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn01/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__8_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank13/gr01 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn01/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__8_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank13/gr01 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn01/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__8_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank13/gr01 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn01/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__8_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank13/gr01 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn01/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__8_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank13/gr01 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn01/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__8_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank13/gr01 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn01/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__8_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank13/gr01 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn01/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__8_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank13/gr01 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn01/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__8_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank13/gr01 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn01/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__8_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank13/gr01 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn01/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__8_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank13/gr01 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn01/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__8_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank13/gr01 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn01/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__8_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank13/gr01 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn01/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__8_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank13/gr01 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn02/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__28_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank13/gr02 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn02/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__28_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank13/gr02 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn02/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__28_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank13/gr02 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn02/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__28_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank13/gr02 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn02/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__28_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank13/gr02 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn02/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__28_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank13/gr02 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn02/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__28_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank13/gr02 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn02/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__28_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank13/gr02 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn02/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__28_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank13/gr02 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn02/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__28_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank13/gr02 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn02/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__28_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank13/gr02 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn02/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__28_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank13/gr02 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn02/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__28_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank13/gr02 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn02/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__28_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank13/gr02 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn02/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__28_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank13/gr02 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn02/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__28_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank13/gr02 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn03/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__24_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank13/gr03 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn03/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__24_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank13/gr03 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn03/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__24_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank13/gr03 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn03/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__24_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank13/gr03 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn03/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__24_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank13/gr03 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn03/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__24_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank13/gr03 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn03/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__24_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank13/gr03 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn03/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__24_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank13/gr03 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn03/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__24_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank13/gr03 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn03/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__24_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank13/gr03 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn03/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__24_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank13/gr03 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn03/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__24_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank13/gr03 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn03/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__24_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank13/gr03 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn03/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__24_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank13/gr03 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn03/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__24_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank13/gr03 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn03/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__24_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank13/gr03 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn04/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank13/gr04 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn04/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank13/gr04 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn04/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank13/gr04 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn04/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank13/gr04 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn04/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank13/gr04 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn04/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank13/gr04 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn04/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank13/gr04 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn04/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank13/gr04 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn04/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank13/gr04 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn04/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank13/gr04 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn04/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank13/gr04 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn04/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank13/gr04 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn04/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank13/gr04 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn04/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank13/gr04 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn04/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank13/gr04 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn04/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__4_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank13/gr04 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn05/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank13/gr05 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn05/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank13/gr05 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn05/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank13/gr05 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn05/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank13/gr05 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn05/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank13/gr05 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn05/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank13/gr05 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn05/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank13/gr05 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn05/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank13/gr05 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn05/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank13/gr05 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn05/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank13/gr05 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn05/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank13/gr05 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn05/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank13/gr05 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn05/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank13/gr05 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn05/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank13/gr05 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn05/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank13/gr05 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn05/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__0_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank13/gr05 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn06/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__20_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank13/gr06 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn06/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__20_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank13/gr06 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn06/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__20_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank13/gr06 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn06/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__20_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank13/gr06 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn06/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__20_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank13/gr06 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn06/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__20_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank13/gr06 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn06/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__20_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank13/gr06 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn06/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__20_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank13/gr06 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn06/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__20_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank13/gr06 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn06/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__20_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank13/gr06 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn06/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__20_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank13/gr06 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn06/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__20_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank13/gr06 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn06/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__20_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank13/gr06 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn06/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__20_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank13/gr06 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn06/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__20_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank13/gr06 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn06/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__20_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank13/gr06 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn07/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__16_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank13/gr07 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn07/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__16_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank13/gr07 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn07/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__16_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank13/gr07 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn07/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__16_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank13/gr07 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn07/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__16_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank13/gr07 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn07/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__16_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank13/gr07 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn07/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__16_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank13/gr07 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn07/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__16_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank13/gr07 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn07/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__16_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank13/gr07 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn07/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__16_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank13/gr07 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn07/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__16_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank13/gr07 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn07/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__16_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank13/gr07 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn07/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__16_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank13/gr07 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn07/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__16_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank13/gr07 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn07/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__16_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank13/gr07 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn07/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__16_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank13/gr07 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn20/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__13_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank13/gr20 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn20/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__13_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank13/gr20 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn20/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__13_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank13/gr20 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn20/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__13_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank13/gr20 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn20/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__13_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank13/gr20 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn20/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__13_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank13/gr20 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn20/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__13_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank13/gr20 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn20/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__13_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank13/gr20 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn20/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__13_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank13/gr20 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn20/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__13_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank13/gr20 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn20/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__13_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank13/gr20 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn20/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__13_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank13/gr20 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn20/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__13_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank13/gr20 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn20/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__13_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank13/gr20 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn20/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__13_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank13/gr20 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn20/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__13_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank13/gr20 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn21/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__9_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank13/gr21 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn21/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__9_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank13/gr21 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn21/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__9_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank13/gr21 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn21/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__9_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank13/gr21 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn21/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__9_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank13/gr21 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn21/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__9_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank13/gr21 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn21/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__9_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank13/gr21 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn21/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__9_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank13/gr21 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn21/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__9_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank13/gr21 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn21/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__9_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank13/gr21 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn21/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__9_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank13/gr21 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn21/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__9_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank13/gr21 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn21/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__9_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank13/gr21 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn21/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__9_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank13/gr21 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn21/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__9_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank13/gr21 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn21/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__9_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank13/gr21 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn22/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__29_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank13/gr22 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn22/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__29_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank13/gr22 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn22/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__29_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank13/gr22 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn22/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__29_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank13/gr22 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn22/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__29_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank13/gr22 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn22/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__29_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank13/gr22 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn22/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__29_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank13/gr22 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn22/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__29_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank13/gr22 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn22/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__29_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank13/gr22 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn22/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__29_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank13/gr22 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn22/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__29_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank13/gr22 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn22/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__29_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank13/gr22 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn22/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__29_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank13/gr22 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn22/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__29_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank13/gr22 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn22/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__29_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank13/gr22 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn22/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__29_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank13/gr22 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn23/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__25_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank13/gr23 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn23/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__25_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank13/gr23 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn23/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__25_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank13/gr23 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn23/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__25_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank13/gr23 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn23/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__25_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank13/gr23 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn23/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__25_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank13/gr23 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn23/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__25_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank13/gr23 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn23/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__25_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank13/gr23 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn23/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__25_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank13/gr23 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn23/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__25_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank13/gr23 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn23/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__25_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank13/gr23 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn23/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__25_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank13/gr23 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn23/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__25_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank13/gr23 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn23/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__25_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank13/gr23 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn23/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__25_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank13/gr23 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn23/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__25_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank13/gr23 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn24/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__5_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank13/gr24 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn24/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__5_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank13/gr24 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn24/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__5_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank13/gr24 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn24/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__5_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank13/gr24 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn24/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__5_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank13/gr24 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn24/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__5_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank13/gr24 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn24/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__5_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank13/gr24 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn24/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__5_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank13/gr24 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn24/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__5_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank13/gr24 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn24/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__5_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank13/gr24 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn24/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__5_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank13/gr24 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn24/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__5_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank13/gr24 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn24/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__5_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank13/gr24 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn24/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__5_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank13/gr24 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn24/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__5_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank13/gr24 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn24/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__5_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank13/gr24 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn25/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank13/gr25 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn25/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank13/gr25 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn25/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank13/gr25 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn25/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank13/gr25 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn25/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank13/gr25 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn25/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank13/gr25 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn25/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank13/gr25 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn25/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank13/gr25 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn25/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank13/gr25 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn25/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank13/gr25 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn25/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank13/gr25 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn25/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank13/gr25 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn25/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank13/gr25 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn25/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank13/gr25 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn25/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank13/gr25 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn25/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__1_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank13/gr25 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn26/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__21_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank13/gr26 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn26/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__21_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank13/gr26 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn26/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__21_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank13/gr26 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn26/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__21_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank13/gr26 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn26/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__21_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank13/gr26 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn26/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__21_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank13/gr26 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn26/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__21_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank13/gr26 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn26/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__21_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank13/gr26 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn26/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__21_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank13/gr26 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn26/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__21_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank13/gr26 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn26/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__21_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank13/gr26 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn26/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__21_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank13/gr26 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn26/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__21_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank13/gr26 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn26/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__21_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank13/gr26 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn26/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__21_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank13/gr26 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn26/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__21_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank13/gr26 [9]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn27/grn_reg[0] 
       (.C(clk),
        .CE(\grn[15]_i_1__17_n_0 ),
        .D(cbus[0]),
        .Q(\rgf/bank13/gr27 [0]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn27/grn_reg[10] 
       (.C(clk),
        .CE(\grn[15]_i_1__17_n_0 ),
        .D(cbus[10]),
        .Q(\rgf/bank13/gr27 [10]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn27/grn_reg[11] 
       (.C(clk),
        .CE(\grn[15]_i_1__17_n_0 ),
        .D(cbus[11]),
        .Q(\rgf/bank13/gr27 [11]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn27/grn_reg[12] 
       (.C(clk),
        .CE(\grn[15]_i_1__17_n_0 ),
        .D(cbus[12]),
        .Q(\rgf/bank13/gr27 [12]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn27/grn_reg[13] 
       (.C(clk),
        .CE(\grn[15]_i_1__17_n_0 ),
        .D(cbus[13]),
        .Q(\rgf/bank13/gr27 [13]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn27/grn_reg[14] 
       (.C(clk),
        .CE(\grn[15]_i_1__17_n_0 ),
        .D(cbus[14]),
        .Q(\rgf/bank13/gr27 [14]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn27/grn_reg[15] 
       (.C(clk),
        .CE(\grn[15]_i_1__17_n_0 ),
        .D(cbus[15]),
        .Q(\rgf/bank13/gr27 [15]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn27/grn_reg[1] 
       (.C(clk),
        .CE(\grn[15]_i_1__17_n_0 ),
        .D(cbus[1]),
        .Q(\rgf/bank13/gr27 [1]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn27/grn_reg[2] 
       (.C(clk),
        .CE(\grn[15]_i_1__17_n_0 ),
        .D(cbus[2]),
        .Q(\rgf/bank13/gr27 [2]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn27/grn_reg[3] 
       (.C(clk),
        .CE(\grn[15]_i_1__17_n_0 ),
        .D(cbus[3]),
        .Q(\rgf/bank13/gr27 [3]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn27/grn_reg[4] 
       (.C(clk),
        .CE(\grn[15]_i_1__17_n_0 ),
        .D(cbus[4]),
        .Q(\rgf/bank13/gr27 [4]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn27/grn_reg[5] 
       (.C(clk),
        .CE(\grn[15]_i_1__17_n_0 ),
        .D(cbus[5]),
        .Q(\rgf/bank13/gr27 [5]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn27/grn_reg[6] 
       (.C(clk),
        .CE(\grn[15]_i_1__17_n_0 ),
        .D(cbus[6]),
        .Q(\rgf/bank13/gr27 [6]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn27/grn_reg[7] 
       (.C(clk),
        .CE(\grn[15]_i_1__17_n_0 ),
        .D(cbus[7]),
        .Q(\rgf/bank13/gr27 [7]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn27/grn_reg[8] 
       (.C(clk),
        .CE(\grn[15]_i_1__17_n_0 ),
        .D(cbus[8]),
        .Q(\rgf/bank13/gr27 [8]),
        .R(\rgf/pcnt/p_0_in ));
  FDRE \rgf/bank13/grn27/grn_reg[9] 
       (.C(clk),
        .CE(\grn[15]_i_1__17_n_0 ),
        .D(cbus[9]),
        .Q(\rgf/bank13/gr27 [9]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[0] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [3]),
        .D(cbus[0]),
        .Q(\rgf/ivec/iv [0]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[10] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [3]),
        .D(cbus[10]),
        .Q(\rgf/ivec/iv [10]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[11] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [3]),
        .D(cbus[11]),
        .Q(\rgf/ivec/iv [11]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[12] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [3]),
        .D(cbus[12]),
        .Q(\rgf/ivec/iv [12]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[13] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [3]),
        .D(cbus[13]),
        .Q(\rgf/ivec/iv [13]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[14] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [3]),
        .D(cbus[14]),
        .Q(\rgf/ivec/iv [14]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[15] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [3]),
        .D(cbus[15]),
        .Q(\rgf/ivec/iv [15]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[1] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [3]),
        .D(cbus[1]),
        .Q(\rgf/ivec/iv [1]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[2] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [3]),
        .D(cbus[2]),
        .Q(\rgf/ivec/iv [2]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[3] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [3]),
        .D(cbus[3]),
        .Q(\rgf/ivec/iv [3]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[4] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [3]),
        .D(cbus[4]),
        .Q(\rgf/ivec/iv [4]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[5] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [3]),
        .D(cbus[5]),
        .Q(\rgf/ivec/iv [5]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[6] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [3]),
        .D(cbus[6]),
        .Q(\rgf/ivec/iv [6]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[7] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [3]),
        .D(cbus[7]),
        .Q(\rgf/ivec/iv [7]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[8] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [3]),
        .D(cbus[8]),
        .Q(\rgf/ivec/iv [8]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/ivec/iv_reg[9] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [3]),
        .D(cbus[9]),
        .Q(\rgf/ivec/iv [9]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/pcnt/p_1_in [0]),
        .Q(\rgf/pcnt/pc [0]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/pcnt/p_1_in [10]),
        .Q(\rgf/pcnt/pc [10]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/pcnt/p_1_in [11]),
        .Q(\rgf/pcnt/pc [11]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/pcnt/p_1_in [12]),
        .Q(\rgf/pcnt/pc [12]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/pcnt/p_1_in [13]),
        .Q(\rgf/pcnt/pc [13]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/pcnt/p_1_in [14]),
        .Q(\rgf/pcnt/pc [14]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/pcnt/p_1_in [15]),
        .Q(\rgf/pcnt/pc [15]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/pcnt/p_1_in [1]),
        .Q(\rgf/pcnt/pc [1]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/pcnt/p_1_in [2]),
        .Q(\rgf/pcnt/pc [2]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/pcnt/p_1_in [3]),
        .Q(\rgf/pcnt/pc [3]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/pcnt/p_1_in [4]),
        .Q(\rgf/pcnt/pc [4]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/pcnt/p_1_in [5]),
        .Q(\rgf/pcnt/pc [5]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/pcnt/p_1_in [6]),
        .Q(\rgf/pcnt/pc [6]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/pcnt/p_1_in [7]),
        .Q(\rgf/pcnt/pc [7]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/pcnt/p_1_in [8]),
        .Q(\rgf/pcnt/pc [8]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/pcnt/pc_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/pcnt/p_1_in [9]),
        .Q(\rgf/pcnt/pc [9]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp[0]_i_1_n_0 ),
        .Q(\rgf/sptr/sp [0]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp[10]_i_1_n_0 ),
        .Q(\rgf/sptr/sp [10]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp[11]_i_1_n_0 ),
        .Q(\rgf/sptr/sp [11]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp[12]_i_1_n_0 ),
        .Q(\rgf/sptr/sp [12]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp[13]_i_1_n_0 ),
        .Q(\rgf/sptr/sp [13]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp[14]_i_1_n_0 ),
        .Q(\rgf/sptr/sp [14]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp[15]_i_1_n_0 ),
        .Q(\rgf/sptr/sp [15]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp[1]_i_1_n_0 ),
        .Q(\rgf/sptr/sp [1]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp[2]_i_1_n_0 ),
        .Q(\rgf/sptr/sp [2]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp[3]_i_1_n_0 ),
        .Q(\rgf/sptr/sp [3]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp[4]_i_1_n_0 ),
        .Q(\rgf/sptr/sp [4]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp[5]_i_1_n_0 ),
        .Q(\rgf/sptr/sp [5]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp[6]_i_1_n_0 ),
        .Q(\rgf/sptr/sp [6]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp[7]_i_1_n_0 ),
        .Q(\rgf/sptr/sp [7]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp[8]_i_1_n_0 ),
        .Q(\rgf/sptr/sp [8]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sptr/sp_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sp[9]_i_1_n_0 ),
        .Q(\rgf/sptr/sp [9]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/p_0_in [0]),
        .Q(\rgf/sreg/sr [0]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/p_0_in [10]),
        .Q(\rgf/sreg/sr [10]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/p_0_in [11]),
        .Q(\rgf/sreg/sr [11]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/p_0_in [12]),
        .Q(\rgf/sreg/sr [12]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/p_0_in [13]),
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
        .D(\rgf/sreg/p_0_in [1]),
        .Q(\rgf/sreg/sr [1]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/p_0_in [2]),
        .Q(\rgf/sreg/sr [2]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/p_0_in [3]),
        .Q(\rgf/sreg/sr [3]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/p_0_in [4]),
        .Q(\rgf/sreg/sr [4]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/p_0_in [5]),
        .Q(\rgf/sreg/sr [5]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/p_0_in [6]),
        .Q(\rgf/sreg/sr [6]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/sreg/sr_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rgf/sreg/p_0_in [7]),
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
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/treg/tr_reg[0] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [4]),
        .D(cbus[0]),
        .Q(\rgf/treg/tr [0]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/treg/tr_reg[10] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [4]),
        .D(cbus[10]),
        .Q(\rgf/treg/tr [10]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/treg/tr_reg[11] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [4]),
        .D(cbus[11]),
        .Q(\rgf/treg/tr [11]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/treg/tr_reg[12] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [4]),
        .D(cbus[12]),
        .Q(\rgf/treg/tr [12]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/treg/tr_reg[13] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [4]),
        .D(cbus[13]),
        .Q(\rgf/treg/tr [13]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/treg/tr_reg[14] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [4]),
        .D(cbus[14]),
        .Q(\rgf/treg/tr [14]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/treg/tr_reg[15] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [4]),
        .D(cbus[15]),
        .Q(\rgf/treg/tr [15]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/treg/tr_reg[1] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [4]),
        .D(cbus[1]),
        .Q(\rgf/treg/tr [1]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/treg/tr_reg[2] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [4]),
        .D(cbus[2]),
        .Q(\rgf/treg/tr [2]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/treg/tr_reg[3] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [4]),
        .D(cbus[3]),
        .Q(\rgf/treg/tr [3]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/treg/tr_reg[4] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [4]),
        .D(cbus[4]),
        .Q(\rgf/treg/tr [4]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/treg/tr_reg[5] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [4]),
        .D(cbus[5]),
        .Q(\rgf/treg/tr [5]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/treg/tr_reg[6] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [4]),
        .D(cbus[6]),
        .Q(\rgf/treg/tr [6]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/treg/tr_reg[7] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [4]),
        .D(cbus[7]),
        .Q(\rgf/treg/tr [7]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/treg/tr_reg[8] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [4]),
        .D(cbus[8]),
        .Q(\rgf/treg/tr [8]),
        .R(\rgf/pcnt/p_0_in ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \rgf/treg/tr_reg[9] 
       (.C(clk),
        .CE(\rgf/cbus_sel_cr [4]),
        .D(cbus[9]),
        .Q(\rgf/treg/tr [9]),
        .R(\rgf/pcnt/p_0_in ));
  LUT5 #(
    .INIT(32'hFEBA5410)) 
    \sp[0]_i_1 
       (.I0(\rgf/cbus_sel_cr__0 [2]),
        .I1(ctl_sp_inc),
        .I2(\rgf/sptr/sp [0]),
        .I3(\sp_reg[0]_i_2_n_7 ),
        .I4(cbus[0]),
        .O(\sp[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[0]_i_3 
       (.I0(\rgf/sptr/sp [3]),
        .O(\sp[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[0]_i_4 
       (.I0(\rgf/sptr/sp [2]),
        .O(\sp[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[0]_i_5 
       (.I0(\rgf/sptr/sp [1]),
        .O(\sp[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[10]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr__0 [2]),
        .I2(\sp_reg[11]_i_2_n_5 ),
        .I3(cbus[10]),
        .I4(\sp[10]_i_2_n_0 ),
        .O(\sp[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[10]_i_2 
       (.I0(\rgf/cbus_sel_cr__0 [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(\rgf/sptr/sp_dec_0 [10]),
        .I4(\rgf/sptr/sp [10]),
        .O(\sp[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[11]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr__0 [2]),
        .I2(\sp_reg[11]_i_2_n_4 ),
        .I3(cbus[11]),
        .I4(\sp[11]_i_3_n_0 ),
        .O(\sp[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[11]_i_3 
       (.I0(\rgf/cbus_sel_cr__0 [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(\rgf/sptr/sp_dec_0 [11]),
        .I4(\rgf/sptr/sp [11]),
        .O(\sp[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[12]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr__0 [2]),
        .I2(\sp_reg[15]_i_4_n_7 ),
        .I3(cbus[12]),
        .I4(\sp[12]_i_2_n_0 ),
        .O(\sp[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[12]_i_2 
       (.I0(\rgf/cbus_sel_cr__0 [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(\rgf/sptr/sp_dec_0 [12]),
        .I4(\rgf/sptr/sp [12]),
        .O(\sp[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[13]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr__0 [2]),
        .I2(\sp_reg[15]_i_4_n_6 ),
        .I3(cbus[13]),
        .I4(\sp[13]_i_2_n_0 ),
        .O(\sp[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[13]_i_2 
       (.I0(\rgf/cbus_sel_cr__0 [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(\rgf/sptr/sp_dec_0 [13]),
        .I4(\rgf/sptr/sp [13]),
        .O(\sp[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[14]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr__0 [2]),
        .I2(\sp_reg[15]_i_4_n_5 ),
        .I3(cbus[14]),
        .I4(\sp[14]_i_2_n_0 ),
        .O(\sp[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[14]_i_2 
       (.I0(\rgf/cbus_sel_cr__0 [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(\rgf/sptr/sp_dec_0 [14]),
        .I4(\rgf/sptr/sp [14]),
        .O(\sp[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[15]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr__0 [2]),
        .I2(\sp_reg[15]_i_4_n_4 ),
        .I3(cbus[15]),
        .I4(\sp[15]_i_5_n_0 ),
        .O(\sp[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFDFFFF7FFDBFFE)) 
    \sp[15]_i_10 
       (.I0(\fch/ir [5]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [8]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [6]),
        .I5(\fch/ir [2]),
        .O(\sp[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \sp[15]_i_11 
       (.I0(fch_irq_req),
        .I1(stat[0]),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [12]),
        .O(\sp[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBDAEBDBF)) 
    \sp[15]_i_12 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [7]),
        .I4(\fch/ir [0]),
        .I5(\sp[15]_i_16_n_0 ),
        .O(\sp[15]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \sp[15]_i_13 
       (.I0(stat[0]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [12]),
        .O(\sp[15]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \sp[15]_i_14 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [14]),
        .I2(\fch/ir [12]),
        .O(\sp[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFFFFEFFAFFFFE)) 
    \sp[15]_i_15 
       (.I0(\bcmd[1]_INST_0_i_3_n_0 ),
        .I1(\fch/ir [1]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [4]),
        .I4(\fch/ir [8]),
        .I5(\fch/ir [6]),
        .O(\sp[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFDFFFFFFFFFDF)) 
    \sp[15]_i_16 
       (.I0(brdy),
        .I1(stat[2]),
        .I2(\sp[15]_i_17_n_0 ),
        .I3(\fch/ir [10]),
        .I4(\fch/ir [6]),
        .I5(\fch/ir [9]),
        .O(\sp[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sp[15]_i_17 
       (.I0(\fch/ir [15]),
        .I1(stat[1]),
        .O(\sp[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000003007)) 
    \sp[15]_i_2 
       (.I0(\bcmd[0]_INST_0_i_10_n_0 ),
        .I1(stat[0]),
        .I2(\fch/ir [11]),
        .I3(\fch/ir [12]),
        .I4(\sp[15]_i_6_n_0 ),
        .I5(\sp[15]_i_7_n_0 ),
        .O(ctl_sp_inc));
  LUT4 #(
    .INIT(16'h2000)) 
    \sp[15]_i_3 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .O(\rgf/cbus_sel_cr__0 [2]));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[15]_i_5 
       (.I0(\rgf/cbus_sel_cr__0 [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(\rgf/sptr/sp_dec_0 [15]),
        .I4(\rgf/sptr/sp [15]),
        .O(\sp[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \sp[15]_i_6 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [6]),
        .O(\sp[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAFFB)) 
    \sp[15]_i_7 
       (.I0(\bcmd[1]_INST_0_i_5_n_0 ),
        .I1(\fch/ir [1]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [5]),
        .I4(\sp[15]_i_9_n_0 ),
        .I5(\sp[15]_i_10_n_0 ),
        .O(\sp[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000003202)) 
    \sp[15]_i_8 
       (.I0(\sp[15]_i_11_n_0 ),
        .I1(\sp[15]_i_12_n_0 ),
        .I2(\fch/ir [10]),
        .I3(\sp[15]_i_13_n_0 ),
        .I4(\sp[15]_i_14_n_0 ),
        .I5(\sp[15]_i_15_n_0 ),
        .O(ctl_sp_dec));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \sp[15]_i_9 
       (.I0(stat[1]),
        .I1(\fch/ir [15]),
        .I2(stat[2]),
        .I3(brdy),
        .O(\sp[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[1]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr__0 [2]),
        .I2(\sp_reg[3]_i_2_n_6 ),
        .I3(cbus[1]),
        .I4(\sp[1]_i_2_n_0 ),
        .O(\sp[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[1]_i_2 
       (.I0(\rgf/cbus_sel_cr__0 [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(\rgf/sptr/sp_dec_0 [1]),
        .I4(\rgf/sptr/sp [1]),
        .O(\sp[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[2]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr__0 [2]),
        .I2(\sp_reg[3]_i_2_n_5 ),
        .I3(cbus[2]),
        .I4(\sp[2]_i_2_n_0 ),
        .O(\sp[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[2]_i_2 
       (.I0(\rgf/cbus_sel_cr__0 [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(\rgf/sptr/sp_dec_0 [2]),
        .I4(\rgf/sptr/sp [2]),
        .O(\sp[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[3]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr__0 [2]),
        .I2(\sp_reg[3]_i_2_n_4 ),
        .I3(cbus[3]),
        .I4(\sp[3]_i_3_n_0 ),
        .O(\sp[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[3]_i_3 
       (.I0(\rgf/cbus_sel_cr__0 [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(\rgf/sptr/sp_dec_0 [3]),
        .I4(\rgf/sptr/sp [3]),
        .O(\sp[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sp[3]_i_4 
       (.I0(\rgf/sptr/sp [1]),
        .O(\sp[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[4]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr__0 [2]),
        .I2(\sp_reg[7]_i_2_n_7 ),
        .I3(cbus[4]),
        .I4(\sp[4]_i_2_n_0 ),
        .O(\sp[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[4]_i_2 
       (.I0(\rgf/cbus_sel_cr__0 [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(\rgf/sptr/sp_dec_0 [4]),
        .I4(\rgf/sptr/sp [4]),
        .O(\sp[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[5]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr__0 [2]),
        .I2(\sp_reg[7]_i_2_n_6 ),
        .I3(cbus[5]),
        .I4(\sp[5]_i_2_n_0 ),
        .O(\sp[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[5]_i_2 
       (.I0(\rgf/cbus_sel_cr__0 [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(\rgf/sptr/sp_dec_0 [5]),
        .I4(\rgf/sptr/sp [5]),
        .O(\sp[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[6]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr__0 [2]),
        .I2(\sp_reg[7]_i_2_n_5 ),
        .I3(cbus[6]),
        .I4(\sp[6]_i_2_n_0 ),
        .O(\sp[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[6]_i_2 
       (.I0(\rgf/cbus_sel_cr__0 [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(\rgf/sptr/sp_dec_0 [6]),
        .I4(\rgf/sptr/sp [6]),
        .O(\sp[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[7]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr__0 [2]),
        .I2(\sp_reg[7]_i_2_n_4 ),
        .I3(cbus[7]),
        .I4(\sp[7]_i_3_n_0 ),
        .O(\sp[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[7]_i_3 
       (.I0(\rgf/cbus_sel_cr__0 [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(\rgf/sptr/sp_dec_0 [7]),
        .I4(\rgf/sptr/sp [7]),
        .O(\sp[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[8]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr__0 [2]),
        .I2(\sp_reg[11]_i_2_n_7 ),
        .I3(cbus[8]),
        .I4(\sp[8]_i_2_n_0 ),
        .O(\sp[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[8]_i_2 
       (.I0(\rgf/cbus_sel_cr__0 [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(\rgf/sptr/sp_dec_0 [8]),
        .I4(\rgf/sptr/sp [8]),
        .O(\sp[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEC20)) 
    \sp[9]_i_1 
       (.I0(ctl_sp_inc),
        .I1(\rgf/cbus_sel_cr__0 [2]),
        .I2(\sp_reg[11]_i_2_n_6 ),
        .I3(cbus[9]),
        .I4(\sp[9]_i_2_n_0 ),
        .O(\sp[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \sp[9]_i_2 
       (.I0(\rgf/cbus_sel_cr__0 [2]),
        .I1(ctl_sp_inc),
        .I2(ctl_sp_dec),
        .I3(\rgf/sptr/sp_dec_0 [9]),
        .I4(\rgf/sptr/sp [9]),
        .O(\sp[9]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sp_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\sp_reg[0]_i_2_n_0 ,\sp_reg[0]_i_2_n_1 ,\sp_reg[0]_i_2_n_2 ,\sp_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\rgf/sptr/sp [3:1],\<const0> }),
        .O({\rgf/sptr/sp_dec_0 [3:1],\sp_reg[0]_i_2_n_7 }),
        .S({\sp[0]_i_3_n_0 ,\sp[0]_i_4_n_0 ,\sp[0]_i_5_n_0 ,\rgf/sptr/sp [0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sp_reg[11]_i_2 
       (.CI(\sp_reg[7]_i_2_n_0 ),
        .CO({\sp_reg[11]_i_2_n_0 ,\sp_reg[11]_i_2_n_1 ,\sp_reg[11]_i_2_n_2 ,\sp_reg[11]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sp_reg[11]_i_2_n_4 ,\sp_reg[11]_i_2_n_5 ,\sp_reg[11]_i_2_n_6 ,\sp_reg[11]_i_2_n_7 }),
        .S(\rgf/sptr/sp [11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sp_reg[15]_i_4 
       (.CI(\sp_reg[11]_i_2_n_0 ),
        .CO({\sp_reg[15]_i_4_n_1 ,\sp_reg[15]_i_4_n_2 ,\sp_reg[15]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sp_reg[15]_i_4_n_4 ,\sp_reg[15]_i_4_n_5 ,\sp_reg[15]_i_4_n_6 ,\sp_reg[15]_i_4_n_7 }),
        .S(\rgf/sptr/sp [15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sp_reg[3]_i_2 
       (.CI(\<const0> ),
        .CO({\sp_reg[3]_i_2_n_0 ,\sp_reg[3]_i_2_n_1 ,\sp_reg[3]_i_2_n_2 ,\sp_reg[3]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\rgf/sptr/sp [1],\<const0> }),
        .O({\sp_reg[3]_i_2_n_4 ,\sp_reg[3]_i_2_n_5 ,\sp_reg[3]_i_2_n_6 ,\NLW_sp_reg[3]_i_2_O_UNCONNECTED [0]}),
        .S({\rgf/sptr/sp [3:2],\sp[3]_i_4_n_0 ,\rgf/sptr/sp [0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sp_reg[7]_i_2 
       (.CI(\sp_reg[3]_i_2_n_0 ),
        .CO({\sp_reg[7]_i_2_n_0 ,\sp_reg[7]_i_2_n_1 ,\sp_reg[7]_i_2_n_2 ,\sp_reg[7]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sp_reg[7]_i_2_n_4 ,\sp_reg[7]_i_2_n_5 ,\sp_reg[7]_i_2_n_6 ,\sp_reg[7]_i_2_n_7 }),
        .S(\rgf/sptr/sp [7:4]));
  LUT5 #(
    .INIT(32'hE444A000)) 
    \sr[0]_i_1 
       (.I0(\rgf/cbus_sel_cr__0 [0]),
        .I1(rst_n),
        .I2(\sr[11]_i_2_n_0 ),
        .I3(cbus[0]),
        .I4(\rgf/sreg/sr [0]),
        .O(\rgf/sreg/p_0_in [0]));
  LUT5 #(
    .INIT(32'hE444A000)) 
    \sr[10]_i_1 
       (.I0(\rgf/cbus_sel_cr__0 [0]),
        .I1(rst_n),
        .I2(\sr[11]_i_2_n_0 ),
        .I3(cbus[10]),
        .I4(\rgf/sreg/sr [10]),
        .O(\rgf/sreg/p_0_in [10]));
  LUT5 #(
    .INIT(32'hE444A000)) 
    \sr[11]_i_1 
       (.I0(\rgf/cbus_sel_cr__0 [0]),
        .I1(rst_n),
        .I2(\sr[11]_i_2_n_0 ),
        .I3(cbus[11]),
        .I4(\rgf/sreg/sr [11]),
        .O(\rgf/sreg/p_0_in [11]));
  LUT3 #(
    .INIT(8'hE0)) 
    \sr[11]_i_2 
       (.I0(\rgf/cbus_sel_cr__0 [5]),
        .I1(\rgf/cbus_sel_cr__0 [0]),
        .I2(rst_n),
        .O(\sr[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \sr[12]_i_1 
       (.I0(\rgf/cbus_sel_cr__0 [0]),
        .I1(rst_n),
        .I2(\rgf/sreg/sr [12]),
        .I3(cpuid[0]),
        .I4(\sr[13]_i_3_n_0 ),
        .O(\rgf/sreg/p_0_in [12]));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \sr[13]_i_1 
       (.I0(\rgf/cbus_sel_cr__0 [0]),
        .I1(rst_n),
        .I2(\rgf/sreg/sr [13]),
        .I3(cpuid[1]),
        .I4(\sr[13]_i_3_n_0 ),
        .O(\rgf/sreg/p_0_in [13]));
  LUT6 #(
    .INIT(64'h00000000EA2A2A2A)) 
    \sr[13]_i_10 
       (.I0(\sr[13]_i_11_n_0 ),
        .I1(\ccmd[2]_INST_0_i_20_n_0 ),
        .I2(\bcmd[2]_INST_0_i_3_n_0 ),
        .I3(\fch/ir [11]),
        .I4(\bdatw[15]_INST_0_i_64_n_0 ),
        .I5(\badr[15]_INST_0_i_130_n_0 ),
        .O(\sr[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088980010)) 
    \sr[13]_i_11 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [6]),
        .I3(ctl_fetch_inferred_i_27_n_0),
        .I4(\fch/ir [10]),
        .I5(\sr[13]_i_12_n_0 ),
        .O(\sr[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0BFFFFFFFFFC0)) 
    \sr[13]_i_12 
       (.I0(\fch/ir [3]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [9]),
        .I3(\fch/ir [4]),
        .I4(\fch/ir [7]),
        .I5(\fch/ir [6]),
        .O(\sr[13]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \sr[13]_i_2 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\grn[15]_i_2_n_0 ),
        .O(\rgf/cbus_sel_cr__0 [0]));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \sr[13]_i_3 
       (.I0(\rgf/cbus_sel_cr__0 [5]),
        .I1(\rgf/cbus_sel_cr__0 [0]),
        .I2(ctl_sr_upd),
        .I3(ctl_sr_ldie),
        .I4(rst_n),
        .O(\sr[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \sr[13]_i_4 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .O(\rgf/cbus_sel_cr__0 [5]));
  LUT6 #(
    .INIT(64'h0002000200020000)) 
    \sr[13]_i_5 
       (.I0(\sr[13]_i_7_n_0 ),
        .I1(stat[1]),
        .I2(stat[0]),
        .I3(stat[2]),
        .I4(\fch/ir [14]),
        .I5(\fch/ir [15]),
        .O(ctl_sr_upd));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \sr[13]_i_6 
       (.I0(\sr[13]_i_8_n_0 ),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [8]),
        .I3(\fch_irq_lev[1]_i_3_n_0 ),
        .I4(\sr[13]_i_9_n_0 ),
        .I5(\bcmd[0]_INST_0_i_4_n_0 ),
        .O(ctl_sr_ldie));
  LUT6 #(
    .INIT(64'hFFFFFFFF383F0000)) 
    \sr[13]_i_7 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [12]),
        .I2(\fch/ir [13]),
        .I3(\fch/ir [14]),
        .I4(\fch/ir [15]),
        .I5(\sr[13]_i_10_n_0 ),
        .O(\sr[13]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[13]_i_8 
       (.I0(stat[2]),
        .I1(stat[1]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [7]),
        .O(\sr[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \sr[13]_i_9 
       (.I0(\fch/ir [4]),
        .I1(stat[0]),
        .I2(\fch/ir [14]),
        .I3(\fch/ir [12]),
        .I4(\fch/ir [13]),
        .I5(\fch/ir [15]),
        .O(\sr[13]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sr[15]_i_1 
       (.I0(\rgf/cbus_sel_cr__0 [0]),
        .I1(rst_n),
        .O(\sr[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE444A000)) 
    \sr[1]_i_1 
       (.I0(\rgf/cbus_sel_cr__0 [0]),
        .I1(rst_n),
        .I2(\sr[11]_i_2_n_0 ),
        .I3(cbus[1]),
        .I4(\rgf/sreg/sr [1]),
        .O(\rgf/sreg/p_0_in [1]));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \sr[2]_i_1 
       (.I0(\sr[11]_i_2_n_0 ),
        .I1(\rgf/cbus_sel_cr__0 [0]),
        .I2(\sr[2]_i_2_n_0 ),
        .I3(cbus[2]),
        .I4(\rgf/sreg/sr [2]),
        .I5(\sr[3]_i_3_n_0 ),
        .O(\rgf/sreg/p_0_in [2]));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \sr[2]_i_2 
       (.I0(ctl_sr_upd),
        .I1(ctl_sr_ldie),
        .I2(\rgf/cbus_sel_cr__0 [5]),
        .I3(\rgf/cbus_sel_cr__0 [0]),
        .I4(rst_n),
        .I5(fch_irq_lev[0]),
        .O(\sr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8F0F8F0F8F0)) 
    \sr[3]_i_1 
       (.I0(\sr[11]_i_2_n_0 ),
        .I1(\rgf/cbus_sel_cr__0 [0]),
        .I2(\sr[3]_i_2_n_0 ),
        .I3(cbus[3]),
        .I4(\rgf/sreg/sr [3]),
        .I5(\sr[3]_i_3_n_0 ),
        .O(\rgf/sreg/p_0_in [3]));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \sr[3]_i_2 
       (.I0(ctl_sr_upd),
        .I1(ctl_sr_ldie),
        .I2(\rgf/cbus_sel_cr__0 [5]),
        .I3(\rgf/cbus_sel_cr__0 [0]),
        .I4(rst_n),
        .I5(fch_irq_lev[1]),
        .O(\sr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FB00F0000B0000)) 
    \sr[3]_i_3 
       (.I0(ctl_sr_upd),
        .I1(ctl_sr_ldie),
        .I2(\rgf/cbus_sel_cr__0 [5]),
        .I3(\rgf/cbus_sel_cr__0 [0]),
        .I4(rst_n),
        .I5(\sr[11]_i_2_n_0 ),
        .O(\sr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAEEEA)) 
    \sr[4]_i_1 
       (.I0(\sr[4]_i_2_n_0 ),
        .I1(\sr[7]_i_3_n_0 ),
        .I2(\sr[4]_i_3_n_0 ),
        .I3(\sr[4]_i_4_n_0 ),
        .I4(\sr[4]_i_5_n_0 ),
        .I5(\sr[4]_i_6_n_0 ),
        .O(\rgf/sreg/p_0_in [4]));
  LUT3 #(
    .INIT(8'h02)) 
    \sr[4]_i_10 
       (.I0(\iv[4]_i_4_n_0 ),
        .I1(\iv[3]_i_4_n_0 ),
        .I2(\iv[2]_i_19_n_0 ),
        .O(\sr[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sr[4]_i_11 
       (.I0(\sr[7]_i_7_n_0 ),
        .I1(\iv[6]_i_4_n_0 ),
        .I2(\iv[5]_i_4_n_0 ),
        .I3(\iv[0]_i_4_n_0 ),
        .I4(\sr[4]_i_18_n_0 ),
        .I5(\iv[9]_i_4_n_0 ),
        .O(\sr[4]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_12 
       (.I0(\iv[0]_i_2_n_0 ),
        .I1(\sr[7]_i_6_n_0 ),
        .I2(\iv[9]_i_2_n_0 ),
        .I3(\iv[1]_i_2_n_0 ),
        .O(\sr[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F20FFFF)) 
    \sr[4]_i_13 
       (.I0(\iv[2]_i_2_n_0 ),
        .I1(\iv[2]_i_3_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .I3(\iv[2]_i_4_n_0 ),
        .I4(\iv[14]_i_3_n_0 ),
        .I5(\iv[8]_i_2_n_0 ),
        .O(\sr[4]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_14 
       (.I0(\iv[5]_i_2_n_0 ),
        .I1(\iv[6]_i_2_n_0 ),
        .I2(\iv[4]_i_2_n_0 ),
        .I3(\iv[7]_i_2_n_0 ),
        .O(\sr[4]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sr[4]_i_15 
       (.I0(\sr[5]_i_3_n_0 ),
        .I1(\iv[14]_i_22_n_0 ),
        .I2(\iv[6]_i_10_n_0 ),
        .O(\sr[4]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \sr[4]_i_16 
       (.I0(\sr[5]_i_3_n_0 ),
        .I1(\iv[14]_i_22_n_0 ),
        .I2(tout__1_carry_i_10_n_0),
        .I3(\iv[14]_i_11_n_0 ),
        .O(\sr[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sr[4]_i_17 
       (.I0(\sr[4]_i_19_n_0 ),
        .I1(\alu/art/add/tout__1_carry__0_n_4 ),
        .I2(\alu/art/p_0_in ),
        .I3(\alu/art/add/tout__1_carry__1_n_6 ),
        .I4(\alu/art/add/tout__1_carry_n_5 ),
        .I5(\sr[4]_i_20_n_0 ),
        .O(\sr[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44007575)) 
    \sr[4]_i_18 
       (.I0(\iv[14]_i_22_n_0 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .I2(\ccmd[2]_INST_0_i_2_n_0 ),
        .I3(tout__1_carry_i_13_n_0),
        .I4(\iv[11]_i_22_n_0 ),
        .I5(\iv[1]_i_4_n_0 ),
        .O(\sr[4]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_19 
       (.I0(\alu/art/add/tout__1_carry__0_n_7 ),
        .I1(\alu/art/add/tout__1_carry__2_n_7 ),
        .I2(\alu/art/add/tout__1_carry__2_n_6 ),
        .I3(\alu/art/add/tout__1_carry__1_n_5 ),
        .O(\sr[4]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[4]_i_2 
       (.I0(\sr[7]_i_2_n_0 ),
        .I1(\rgf/sreg/sr [4]),
        .O(\sr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sr[4]_i_20 
       (.I0(\alu/art/add/tout__1_carry_n_7 ),
        .I1(\alu/art/add/tout__1_carry__0_n_5 ),
        .I2(\alu/art/add/tout__1_carry__1_n_4 ),
        .I3(\alu/art/add/tout__1_carry__2_n_5 ),
        .I4(\sr[4]_i_21_n_0 ),
        .O(\sr[4]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_21 
       (.I0(\alu/art/add/tout__1_carry__1_n_7 ),
        .I1(\alu/art/add/tout__1_carry__0_n_6 ),
        .I2(\alu/art/add/tout__1_carry_n_6 ),
        .I3(\alu/art/add/tout__1_carry_n_4 ),
        .O(\sr[4]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \sr[4]_i_3 
       (.I0(\sr[4]_i_7_n_0 ),
        .I1(\sr[4]_i_8_n_0 ),
        .I2(\sr[4]_i_9_n_0 ),
        .I3(\sr[4]_i_10_n_0 ),
        .I4(\sr[4]_i_11_n_0 ),
        .O(\sr[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h22220222)) 
    \sr[4]_i_4 
       (.I0(\iv[12]_i_2_n_0 ),
        .I1(\iv[13]_i_2_n_0 ),
        .I2(\iv[14]_i_4_n_0 ),
        .I3(\iv[14]_i_3_n_0 ),
        .I4(\iv[14]_i_2_n_0 ),
        .O(\sr[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sr[4]_i_5 
       (.I0(\iv[10]_i_2_n_0 ),
        .I1(\iv[3]_i_2_n_0 ),
        .I2(\iv[11]_i_2_n_0 ),
        .I3(\sr[4]_i_12_n_0 ),
        .I4(\sr[4]_i_13_n_0 ),
        .I5(\sr[4]_i_14_n_0 ),
        .O(\sr[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[4]_i_6 
       (.I0(\sr[7]_i_5_n_0 ),
        .I1(cbus[4]),
        .O(\sr[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF0E)) 
    \sr[4]_i_7 
       (.I0(tout__1_carry_i_13_n_0),
        .I1(\sr[4]_i_15_n_0 ),
        .I2(\sr[4]_i_16_n_0 ),
        .I3(\rgf/sreg/sr [4]),
        .I4(\sr[4]_i_17_n_0 ),
        .I5(\iv[13]_i_3_n_0 ),
        .O(\sr[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sr[4]_i_8 
       (.I0(\iv[12]_i_4_n_0 ),
        .I1(\iv[14]_i_6_n_0 ),
        .I2(\iv[8]_i_4_n_0 ),
        .O(\sr[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sr[4]_i_9 
       (.I0(\iv[7]_i_4_n_0 ),
        .I1(\iv[11]_i_4_n_0 ),
        .I2(\iv[10]_i_4_n_0 ),
        .I3(\iv[13]_i_5_n_0 ),
        .O(\sr[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \sr[5]_i_1 
       (.I0(\sr[7]_i_2_n_0 ),
        .I1(\rgf/sreg/sr [5]),
        .I2(\sr[5]_i_2_n_0 ),
        .I3(cbus[5]),
        .I4(\sr[7]_i_5_n_0 ),
        .O(\rgf/sreg/p_0_in [5]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00002800)) 
    \sr[5]_i_2 
       (.I0(\sr[7]_i_3_n_0 ),
        .I1(\sr[6]_i_3_n_0 ),
        .I2(\sr[7]_i_6_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\sr[5]_i_3_n_0 ),
        .I5(\sr[5]_i_4_n_0 ),
        .O(\sr[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sr[5]_i_3 
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\ccmd[4]_INST_0_i_2_n_0 ),
        .O(\sr[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00060900)) 
    \sr[5]_i_4 
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(\iv[13]_i_3_n_0 ),
        .I3(\alu/art/p_0_in ),
        .I4(abus_0[15]),
        .O(\sr[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \sr[6]_i_1 
       (.I0(\sr[7]_i_2_n_0 ),
        .I1(\rgf/sreg/sr [6]),
        .I2(\sr[6]_i_2_n_0 ),
        .I3(cbus[6]),
        .I4(\sr[7]_i_5_n_0 ),
        .O(\rgf/sreg/p_0_in [6]));
  LUT4 #(
    .INIT(16'h0F88)) 
    \sr[6]_i_10 
       (.I0(abus_0[0]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(\iv[12]_i_20_n_0 ),
        .I3(\iv[2]_i_21_n_0 ),
        .O(\sr[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077007747)) 
    \sr[6]_i_11 
       (.I0(abus_0[15]),
        .I1(\bdatw[8]_INST_0_i_2_n_0 ),
        .I2(\rgf/sreg/sr [6]),
        .I3(\iv[7]_i_21_n_0 ),
        .I4(tout__1_carry_i_9_n_0),
        .I5(\iv[2]_i_21_n_0 ),
        .O(\sr[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0808000F0)) 
    \sr[6]_i_2 
       (.I0(tout__1_carry_i_11_n_0),
        .I1(tout__1_carry_i_10_n_0),
        .I2(\sr[7]_i_3_n_0 ),
        .I3(tout__1_carry_i_8_n_0),
        .I4(\alu/art/add/tout ),
        .I5(\sr[6]_i_3_n_0 ),
        .O(\sr[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \sr[6]_i_3 
       (.I0(\sr[6]_i_4_n_0 ),
        .I1(\iv[14]_i_3_n_0 ),
        .I2(\sr[6]_i_5_n_0 ),
        .O(\sr[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFF2FFFFFF00FF)) 
    \sr[6]_i_4 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(\sr[6]_i_6_n_0 ),
        .I2(\sr[6]_i_7_n_0 ),
        .I3(\bdatw[12]_INST_0_i_2_n_0 ),
        .I4(\sr[6]_i_8_n_0 ),
        .I5(\iv[7]_i_6_n_0 ),
        .O(\sr[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC0008888CC0C8888)) 
    \sr[6]_i_5 
       (.I0(\iv[7]_i_7_n_0 ),
        .I1(\sr[6]_i_9_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[8]_i_16_n_0 ),
        .I4(\iv[7]_i_6_n_0 ),
        .I5(\sr[6]_i_10_n_0 ),
        .O(\sr[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \sr[6]_i_6 
       (.I0(abus_0[12]),
        .I1(abus_0[11]),
        .I2(abus_0[10]),
        .I3(abus_0[9]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\sr[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555044)) 
    \sr[6]_i_7 
       (.I0(\iv[2]_i_8_n_0 ),
        .I1(abus_0[14]),
        .I2(abus_0[13]),
        .I3(\bdatw[8]_INST_0_i_2_n_0 ),
        .I4(\iv[2]_i_23_n_0 ),
        .I5(\sr[6]_i_11_n_0 ),
        .O(\sr[6]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \sr[6]_i_8 
       (.I0(\iv[8]_i_19_n_0 ),
        .I1(\iv[2]_i_8_n_0 ),
        .I2(\iv[8]_i_20_n_0 ),
        .O(\sr[6]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \sr[6]_i_9 
       (.I0(abus_0[15]),
        .I1(\iv[14]_i_25_n_0 ),
        .I2(\bdatw[12]_INST_0_i_2_n_0 ),
        .O(\sr[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[7]_i_1 
       (.I0(\sr[7]_i_2_n_0 ),
        .I1(\rgf/sreg/sr [7]),
        .I2(\sr[7]_i_3_n_0 ),
        .I3(alu_sr_flag),
        .I4(cbus[7]),
        .I5(\sr[7]_i_5_n_0 ),
        .O(\rgf/sreg/p_0_in [7]));
  LUT5 #(
    .INIT(32'h2202FFFF)) 
    \sr[7]_i_10 
       (.I0(tout__1_carry_i_10_n_0),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(abus_0[15]),
        .I3(\iv[14]_i_25_n_0 ),
        .I4(\iv[14]_i_3_n_0 ),
        .O(\sr[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \sr[7]_i_11 
       (.I0(\bdatw[11]_INST_0_i_2_n_0 ),
        .I1(\iv[2]_i_13_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\sr[7]_i_18_n_0 ),
        .O(\sr[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h002E)) 
    \sr[7]_i_12 
       (.I0(\iv[2]_i_6_n_0 ),
        .I1(\iv[2]_i_8_n_0 ),
        .I2(\iv[2]_i_12_n_0 ),
        .I3(\iv[2]_i_9_n_0 ),
        .O(\sr[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \sr[7]_i_13 
       (.I0(\iv[14]_i_38_n_0 ),
        .I1(tout__1_carry_i_10_n_0),
        .I2(abus_0[15]),
        .O(\sr[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h50507077)) 
    \sr[7]_i_14 
       (.I0(\iv[14]_i_11_n_0 ),
        .I1(abus_0[15]),
        .I2(\iv[6]_i_10_n_0 ),
        .I3(abus_0[7]),
        .I4(tout__1_carry_i_10_n_0),
        .O(\sr[7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hC0700080)) 
    \sr[7]_i_15 
       (.I0(tout__1_carry_i_10_n_0),
        .I1(abus_0[15]),
        .I2(\iv[14]_i_12_n_0 ),
        .I3(\bdatw[15]_INST_0_i_1_n_0 ),
        .I4(tout__1_carry_i_9_n_0),
        .O(\sr[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sr[7]_i_16 
       (.I0(\iv[13]_i_32_n_0 ),
        .I1(\iv[13]_i_33_n_0 ),
        .I2(\iv[2]_i_8_n_0 ),
        .I3(\iv[13]_i_34_n_0 ),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\iv[13]_i_35_n_0 ),
        .O(\sr[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sr[7]_i_17 
       (.I0(tout__1_carry_i_9_n_0),
        .I1(abus_0[15]),
        .O(\sr[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00FF33330F0F5555)) 
    \sr[7]_i_18 
       (.I0(abus_0[3]),
        .I1(abus_0[2]),
        .I2(abus_0[1]),
        .I3(abus_0[0]),
        .I4(\iv[2]_i_21_n_0 ),
        .I5(\bdatw[8]_INST_0_i_2_n_0 ),
        .O(\sr[7]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \sr[7]_i_2 
       (.I0(\rgf/cbus_sel_cr__0 [5]),
        .I1(\rgf/cbus_sel_cr__0 [0]),
        .I2(rst_n),
        .I3(ctl_sr_upd),
        .O(\sr[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \sr[7]_i_3 
       (.I0(\rgf/cbus_sel_cr__0 [5]),
        .I1(\rgf/cbus_sel_cr__0 [0]),
        .I2(rst_n),
        .I3(ctl_sr_upd),
        .O(\sr[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \sr[7]_i_4 
       (.I0(\sr[7]_i_6_n_0 ),
        .I1(\sr[7]_i_7_n_0 ),
        .I2(\alu/art/p_0_in ),
        .I3(\iv[13]_i_3_n_0 ),
        .O(alu_sr_flag));
  LUT3 #(
    .INIT(8'hE0)) 
    \sr[7]_i_5 
       (.I0(\rgf/cbus_sel_cr__0 [5]),
        .I1(\rgf/cbus_sel_cr__0 [0]),
        .I2(rst_n),
        .O(\sr[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F02020F000202)) 
    \sr[7]_i_6 
       (.I0(\sr[7]_i_8_n_0 ),
        .I1(\sr[7]_i_9_n_0 ),
        .I2(\sr[7]_i_10_n_0 ),
        .I3(\sr[7]_i_11_n_0 ),
        .I4(\bdatw[12]_INST_0_i_2_n_0 ),
        .I5(\sr[7]_i_12_n_0 ),
        .O(\sr[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0F7FFFFF0F70000)) 
    \sr[7]_i_7 
       (.I0(tout__1_carry_i_10_n_0),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(\sr[7]_i_13_n_0 ),
        .I3(\sr[7]_i_14_n_0 ),
        .I4(\iv[14]_i_22_n_0 ),
        .I5(\sr[7]_i_15_n_0 ),
        .O(\sr[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h2F)) 
    \sr[7]_i_8 
       (.I0(abus_0[14]),
        .I1(\iv[14]_i_8_n_0 ),
        .I2(\iv[14]_i_7_n_0 ),
        .O(\sr[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000DD0D)) 
    \sr[7]_i_9 
       (.I0(\iv[14]_i_15_n_0 ),
        .I1(\iv[6]_i_13_n_0 ),
        .I2(\iv[14]_i_32_n_0 ),
        .I3(\sr[7]_i_16_n_0 ),
        .I4(\sr[7]_i_17_n_0 ),
        .I5(\iv[12]_i_12_n_0 ),
        .O(\sr[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AABA)) 
    \stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(\stat[0]_i_3_n_0 ),
        .I2(\stat[0]_i_4_n_0 ),
        .I3(\stat[0]_i_5_n_0 ),
        .I4(\stat[0]_i_6_n_0 ),
        .I5(\fch/ir [15]),
        .O(\ctl/stat_nx [0]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \stat[0]_i_10 
       (.I0(\fch/ir [10]),
        .I1(\fch/ir [9]),
        .I2(brdy),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [11]),
        .I5(\stat[0]_i_18_n_0 ),
        .O(\stat[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8C8B000088880000)) 
    \stat[0]_i_11 
       (.I0(\stat[0]_i_19_n_0 ),
        .I1(\fch/ir [11]),
        .I2(crdy),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [7]),
        .I5(\bcmd[0]_INST_0_i_7_n_0 ),
        .O(\stat[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAA2A2AAAAA2A2)) 
    \stat[0]_i_12 
       (.I0(stat[0]),
        .I1(\stat[2]_i_13_n_0 ),
        .I2(\fch/ir [8]),
        .I3(\badrx[15]_INST_0_i_3_n_0 ),
        .I4(brdy),
        .I5(\ccmd[0]_INST_0_i_24_n_0 ),
        .O(\stat[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA0AAA0B0AAAAAABB)) 
    \stat[0]_i_13 
       (.I0(\stat[0]_i_20_n_0 ),
        .I1(ctl_fetch_inferred_i_27_n_0),
        .I2(\fch/ir [10]),
        .I3(\stat[0]_i_21_n_0 ),
        .I4(\fch/ir [11]),
        .I5(\stat[0]_i_22_n_0 ),
        .O(\stat[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[0]_i_14 
       (.I0(\fch/ir [9]),
        .I1(stat[0]),
        .O(\stat[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFF00000FFFAFFFE)) 
    \stat[0]_i_15 
       (.I0(brdy),
        .I1(stat[1]),
        .I2(\fch/ir [2]),
        .I3(\ccmd[0]_INST_0_i_18_n_0 ),
        .I4(\fch/ir [1]),
        .I5(stat[0]),
        .O(\stat[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[0]_i_16 
       (.I0(brdy),
        .I1(stat[2]),
        .O(\stat[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8888888)) 
    \stat[0]_i_17 
       (.I0(\ccmd[1]_INST_0_i_8_n_0 ),
        .I1(\ccmd[4]_INST_0_i_14_n_0 ),
        .I2(\stat[0]_i_23_n_0 ),
        .I3(\stat[0]_i_24_n_0 ),
        .I4(\stat[0]_i_25_n_0 ),
        .I5(\stat[0]_i_26_n_0 ),
        .O(\stat[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h040000000400FFFF)) 
    \stat[0]_i_18 
       (.I0(brdy),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [6]),
        .I3(\badrx[15]_INST_0_i_3_n_0 ),
        .I4(\bcmd[1]_INST_0_i_9_n_0 ),
        .I5(crdy),
        .O(\stat[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00C0000000000040)) 
    \stat[0]_i_19 
       (.I0(\fch/ir [4]),
        .I1(\badrx[15]_INST_0_i_3_n_0 ),
        .I2(\fch/ir [3]),
        .I3(brdy),
        .I4(\fch/ir [5]),
        .I5(\fch/ir [6]),
        .O(\stat[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F000202)) 
    \stat[0]_i_2 
       (.I0(\stat[0]_i_7_n_0 ),
        .I1(\stat[0]_i_8_n_0 ),
        .I2(\fch/ir [14]),
        .I3(\bcmd[2]_INST_0_i_1_n_0 ),
        .I4(\fch/ir [13]),
        .I5(\stat[0]_i_9_n_0 ),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF75000000)) 
    \stat[0]_i_20 
       (.I0(\stat[0]_i_27_n_0 ),
        .I1(\fch/ir [9]),
        .I2(crdy),
        .I3(\fch/ir [8]),
        .I4(\fch/ir [11]),
        .I5(\stat[0]_i_28_n_0 ),
        .O(\stat[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \stat[0]_i_21 
       (.I0(\fch/ir [9]),
        .I1(\fch/ir [8]),
        .I2(\fch/ir [6]),
        .I3(brdy),
        .O(\stat[0]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFBBFBBB)) 
    \stat[0]_i_22 
       (.I0(\bcmd[1]_INST_0_i_9_n_0 ),
        .I1(crdy),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [9]),
        .I4(\fch/ir [8]),
        .O(\stat[0]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00AAD5AA)) 
    \stat[0]_i_23 
       (.I0(\fch/ir [1]),
        .I1(\rgf/sreg/sr [10]),
        .I2(crdy),
        .I3(\fch/ir [2]),
        .I4(stat[0]),
        .O(\stat[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F7F0F00)) 
    \stat[0]_i_24 
       (.I0(\fch/ir [0]),
        .I1(\rgf/sreg/sr [10]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [1]),
        .I4(crdy),
        .I5(\sr[13]_i_8_n_0 ),
        .O(\stat[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \stat[0]_i_25 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [10]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [5]),
        .I5(\fch/ir [4]),
        .O(\stat[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00000000ABFFABFE)) 
    \stat[0]_i_26 
       (.I0(stat[2]),
        .I1(\fch/ir [2]),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(fch_irq_req),
        .I5(\stat[0]_i_29_n_0 ),
        .O(\stat[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFF7FFF77FF77)) 
    \stat[0]_i_27 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [9]),
        .I2(brdy),
        .I3(\bcmd[1]_INST_0_i_7_n_0 ),
        .I4(ctl_fetch_inferred_i_15_n_0),
        .I5(\fch/ir [3]),
        .O(\stat[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h10101100FFFFFFFF)) 
    \stat[0]_i_28 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [9]),
        .I2(\fch/ir [7]),
        .I3(crdy),
        .I4(\fch/ir [11]),
        .I5(\fch/ir [10]),
        .O(\stat[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    \stat[0]_i_29 
       (.I0(\stat[0]_i_30_n_0 ),
        .I1(\fch/ir [4]),
        .I2(\fch/ir [0]),
        .I3(\fch/ir [3]),
        .I4(\rgf/sreg/sr [10]),
        .I5(\stat[0]_i_31_n_0 ),
        .O(\stat[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h32333332FFFFFFFF)) 
    \stat[0]_i_3 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [12]),
        .I2(stat[0]),
        .I3(\rgf/sreg/sr [5]),
        .I4(\fch/ir [11]),
        .I5(\fch/ir [14]),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA02AAAAAAAAAAAA)) 
    \stat[0]_i_30 
       (.I0(\stat[0]_i_32_n_0 ),
        .I1(stat[1]),
        .I2(crdy),
        .I3(stat[2]),
        .I4(\fch/ir [2]),
        .I5(\ccmd[2]_INST_0_i_26_n_0 ),
        .O(\stat[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \stat[0]_i_31 
       (.I0(\fch/ir [8]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [7]),
        .I3(\fch/ir [6]),
        .I4(\ccmd[4]_INST_0_i_18_n_0 ),
        .I5(\fch/ir [11]),
        .O(\stat[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFDFDFDFD)) 
    \stat[0]_i_32 
       (.I0(\fch/ir [0]),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [3]),
        .I3(\fch/ir [1]),
        .I4(stat[1]),
        .I5(stat[2]),
        .O(\stat[0]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[0]_i_4 
       (.I0(stat[1]),
        .I1(stat[2]),
        .O(\stat[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0200AAAA02AAAAAA)) 
    \stat[0]_i_5 
       (.I0(\stat[2]_i_16_n_0 ),
        .I1(\stat[0]_i_10_n_0 ),
        .I2(\stat[0]_i_11_n_0 ),
        .I3(\stat[0]_i_12_n_0 ),
        .I4(\fch/ir [13]),
        .I5(\stat[0]_i_13_n_0 ),
        .O(\stat[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000800000)) 
    \stat[0]_i_6 
       (.I0(\fch/ir [10]),
        .I1(\bcmd[2]_INST_0_i_2_n_0 ),
        .I2(\stat[0]_i_14_n_0 ),
        .I3(\fch/ir [7]),
        .I4(\rgf/sreg/sr [11]),
        .I5(\fch/ir [11]),
        .O(\stat[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hABBBABBBBBBBABAB)) 
    \stat[0]_i_7 
       (.I0(\stat[0]_i_15_n_0 ),
        .I1(\ccmd[1]_INST_0_i_8_n_0 ),
        .I2(\stat[0]_i_16_n_0 ),
        .I3(\fch/ir [0]),
        .I4(\rgf/ivec/iv [0]),
        .I5(\fch/ir [1]),
        .O(\stat[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00F0F0B0FFFFFFBF)) 
    \stat[0]_i_8 
       (.I0(stat[1]),
        .I1(\ccmd[1]_INST_0_i_8_n_0 ),
        .I2(\fch/ir [12]),
        .I3(\rgf/sreg/sr [4]),
        .I4(\fch/ir [11]),
        .I5(\stat[0]_i_17_n_0 ),
        .O(\stat[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0A22A088)) 
    \stat[0]_i_9 
       (.I0(\fch/ir [13]),
        .I1(\rgf/sreg/sr [6]),
        .I2(\rgf/sreg/sr [7]),
        .I3(\fch/ir [12]),
        .I4(\fch/ir [11]),
        .O(\stat[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000DD000F00DD)) 
    \stat[1]_i_1 
       (.I0(\stat[1]_i_2_n_0 ),
        .I1(\stat_reg[2]_i_5_n_0 ),
        .I2(\stat[1]_i_3_n_0 ),
        .I3(\fch/ir [15]),
        .I4(\fch/ir [14]),
        .I5(stat[2]),
        .O(\ctl/stat_nx [1]));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[1]_i_10 
       (.I0(\fch/ir [0]),
        .I1(\fch/ir [3]),
        .O(\stat[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000F2F2F2F2F)) 
    \stat[1]_i_11 
       (.I0(\ccmd[3]_INST_0_i_17_n_0 ),
        .I1(crdy),
        .I2(\stat[1]_i_15_n_0 ),
        .I3(\rgf/sreg/sr [10]),
        .I4(\fch/ir [9]),
        .I5(\bcmd[1]_INST_0_i_9_n_0 ),
        .O(\stat[1]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \stat[1]_i_12 
       (.I0(\fch/ir [11]),
        .I1(\fch/ir [10]),
        .I2(\fch/ir [7]),
        .O(\stat[1]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \stat[1]_i_13 
       (.I0(\fch/ir [9]),
        .I1(stat[1]),
        .O(\stat[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF050005C0)) 
    \stat[1]_i_14 
       (.I0(\stat[1]_i_16_n_0 ),
        .I1(\ccmd[2]_INST_0_i_30_n_0 ),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(brdy),
        .I5(\stat[2]_i_15_n_0 ),
        .O(\stat[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF3FFFAFFFFFFF)) 
    \stat[1]_i_15 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [10]),
        .I2(\stat[1]_i_17_n_0 ),
        .I3(\stat[1]_i_18_n_0 ),
        .I4(\fch/ir [9]),
        .I5(stat[0]),
        .O(\stat[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7777FFFFFF0F)) 
    \stat[1]_i_16 
       (.I0(crdy),
        .I1(\rgf/sreg/sr [10]),
        .I2(brdy),
        .I3(\fch/ir [6]),
        .I4(\fch/ir [9]),
        .I5(\fch/ir [8]),
        .O(\stat[1]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[1]_i_17 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [8]),
        .O(\stat[1]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[1]_i_18 
       (.I0(crdy),
        .I1(stat[1]),
        .O(\stat[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFFFBF)) 
    \stat[1]_i_2 
       (.I0(\stat[1]_i_4_n_0 ),
        .I1(\stat[1]_i_5_n_0 ),
        .I2(stat[0]),
        .I3(\fch/ir [11]),
        .I4(stat[1]),
        .I5(\stat[1]_i_6_n_0 ),
        .O(\stat[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00FE)) 
    \stat[1]_i_3 
       (.I0(stat[1]),
        .I1(\stat[1]_i_7_n_0 ),
        .I2(\stat[2]_i_16_n_0 ),
        .I3(\stat[1]_i_8_n_0 ),
        .O(\stat[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5F115511)) 
    \stat[1]_i_4 
       (.I0(\stat[1]_i_9_n_0 ),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [1]),
        .I3(stat[1]),
        .I4(\stat[1]_i_10_n_0 ),
        .I5(\stat[2]_i_2_n_0 ),
        .O(\stat[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h030003003FBC0C8C)) 
    \stat[1]_i_5 
       (.I0(\rgf/sreg/sr [10]),
        .I1(\fch/ir [2]),
        .I2(\fch/ir [1]),
        .I3(\fch/ir [0]),
        .I4(brdy),
        .I5(stat[2]),
        .O(\stat[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111111101100000)) 
    \stat[1]_i_6 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(\fch/ir [2]),
        .I3(\fch/ir [0]),
        .I4(stat[1]),
        .I5(\fch/ir [11]),
        .O(\stat[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00FF00F6)) 
    \stat[1]_i_7 
       (.I0(\fch/ir [11]),
        .I1(\rgf/sreg/sr [5]),
        .I2(stat[0]),
        .I3(\fch/ir [12]),
        .I4(\fch/ir [13]),
        .O(\stat[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h44004F0044004400)) 
    \stat[1]_i_8 
       (.I0(\fch/ir [11]),
        .I1(\stat[1]_i_11_n_0 ),
        .I2(\stat[1]_i_12_n_0 ),
        .I3(\ccmd[2]_INST_0_i_24_n_0 ),
        .I4(\stat[1]_i_13_n_0 ),
        .I5(\stat[1]_i_14_n_0 ),
        .O(\stat[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h02000202AAAAAAAA)) 
    \stat[1]_i_9 
       (.I0(\badr[15]_INST_0_i_107_n_0 ),
        .I1(\fch/ir [1]),
        .I2(\fch/ir [0]),
        .I3(stat[1]),
        .I4(\rgf/sreg/sr [10]),
        .I5(\fch/ir [3]),
        .O(\stat[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF510000)) 
    \stat[2]_i_1 
       (.I0(\stat[2]_i_2_n_0 ),
        .I1(\stat[2]_i_3_n_0 ),
        .I2(\stat[2]_i_4_n_0 ),
        .I3(\stat_reg[2]_i_5_n_0 ),
        .I4(\stat[2]_i_6_n_0 ),
        .I5(\stat[2]_i_7_n_0 ),
        .O(\ctl/stat_nx [2]));
  LUT5 #(
    .INIT(32'hEFFF0000)) 
    \stat[2]_i_10 
       (.I0(\fch/ir [13]),
        .I1(stat[0]),
        .I2(\fch/ir [11]),
        .I3(\rgf/sreg/sr [4]),
        .I4(\fch/ir [12]),
        .O(\stat[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \stat[2]_i_11 
       (.I0(\rgf/sreg/sr [6]),
        .I1(\fch/ir [13]),
        .I2(stat[0]),
        .I3(stat[2]),
        .I4(\fch/ir [11]),
        .I5(stat[1]),
        .O(\stat[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4400000400440004)) 
    \stat[2]_i_12 
       (.I0(stat[2]),
        .I1(ctl_fetch_ext_fl_i_3_n_0),
        .I2(\rgf/sreg/sr [4]),
        .I3(\fch/ir [11]),
        .I4(\fch/ir [13]),
        .I5(\rgf/sreg/sr [7]),
        .O(\stat[2]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \stat[2]_i_13 
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [11]),
        .O(\stat[2]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \stat[2]_i_14 
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [10]),
        .O(\stat[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000001)) 
    \stat[2]_i_15 
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [6]),
        .I3(\fch/ir [3]),
        .I4(stat[0]),
        .I5(\bcmd[2]_INST_0_i_3_n_0 ),
        .O(\stat[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF96FF14)) 
    \stat[2]_i_16 
       (.I0(\rgf/sreg/sr [7]),
        .I1(\fch/ir [11]),
        .I2(\rgf/sreg/sr [5]),
        .I3(stat[0]),
        .I4(\fch/ir [12]),
        .I5(\fch/ir [13]),
        .O(\stat[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDDFFCCCC0CCC)) 
    \stat[2]_i_2 
       (.I0(\rgf/sreg/sr [6]),
        .I1(\fch/ir [12]),
        .I2(\rgf/sreg/sr [4]),
        .I3(\fch/ir [11]),
        .I4(stat[0]),
        .I5(\fch/ir [13]),
        .O(\stat[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \stat[2]_i_3 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\fch/ir [11]),
        .O(\stat[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002220)) 
    \stat[2]_i_4 
       (.I0(\stat[2]_i_8_n_0 ),
        .I1(\bcmd[0]_INST_0_i_4_n_0 ),
        .I2(\fch/ir [0]),
        .I3(stat[0]),
        .I4(ctl_fetch_ext_fl_i_5_n_0),
        .I5(\stat[2]_i_9_n_0 ),
        .O(\stat[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \stat[2]_i_6 
       (.I0(\fch/ir [14]),
        .I1(\fch/ir [15]),
        .O(\stat[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000080FF)) 
    \stat[2]_i_7 
       (.I0(\stat[2]_i_13_n_0 ),
        .I1(\stat[2]_i_14_n_0 ),
        .I2(\stat[2]_i_15_n_0 ),
        .I3(\stat[2]_i_16_n_0 ),
        .I4(\stat[0]_i_3_n_0 ),
        .I5(\bcmd[1]_INST_0_i_1_n_0 ),
        .O(\stat[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h004000F0000CF000)) 
    \stat[2]_i_8 
       (.I0(stat[0]),
        .I1(brdy),
        .I2(\fch/ir [0]),
        .I3(stat[2]),
        .I4(\fch/ir [1]),
        .I5(stat[1]),
        .O(\stat[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stat[2]_i_9 
       (.I0(\fch/ir [6]),
        .I1(\fch/ir [7]),
        .I2(\fch/ir [5]),
        .I3(\fch/ir [8]),
        .O(\stat[2]_i_9_n_0 ));
  MUXF7 \stat_reg[2]_i_5 
       (.I0(\stat[2]_i_11_n_0 ),
        .I1(\stat[2]_i_12_n_0 ),
        .O(\stat_reg[2]_i_5_n_0 ),
        .S(\stat[2]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__0_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(abus_0[6]),
        .O(tout__1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__0_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(abus_0[5]),
        .O(tout__1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__0_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(abus_0[4]),
        .O(tout__1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__0_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(abus_0[3]),
        .O(tout__1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__0_i_5
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(abus_0[7]),
        .I3(tout__1_carry__0_i_1_n_0),
        .O(tout__1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__0_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[14]_INST_0_i_2_n_0 ),
        .I2(abus_0[6]),
        .I3(tout__1_carry__0_i_2_n_0),
        .O(tout__1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__0_i_7
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_2_n_0 ),
        .I2(abus_0[5]),
        .I3(tout__1_carry__0_i_3_n_0),
        .O(tout__1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__0_i_8
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[12]_INST_0_i_2_n_0 ),
        .I2(abus_0[4]),
        .I3(tout__1_carry__0_i_4_n_0),
        .O(tout__1_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__1_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .I2(abus_0[10]),
        .O(tout__1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__1_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .I2(abus_0[9]),
        .O(tout__1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__1_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .I2(abus_0[8]),
        .O(tout__1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__1_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_2_n_0 ),
        .I2(abus_0[7]),
        .O(tout__1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__1_i_5
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .I2(abus_0[11]),
        .I3(tout__1_carry__1_i_1_n_0),
        .O(tout__1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__1_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_1_n_0 ),
        .I2(abus_0[10]),
        .I3(tout__1_carry__1_i_2_n_0),
        .O(tout__1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__1_i_7
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[9]_INST_0_i_1_n_0 ),
        .I2(abus_0[9]),
        .I3(tout__1_carry__1_i_3_n_0),
        .O(tout__1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__1_i_8
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[8]_INST_0_i_1_n_0 ),
        .I2(abus_0[8]),
        .I3(tout__1_carry__1_i_4_n_0),
        .O(tout__1_carry__1_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tout__1_carry__2_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .O(tout__1_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__2_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .I2(abus_0[13]),
        .O(tout__1_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__2_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .I2(abus_0[12]),
        .O(tout__1_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry__2_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[11]_INST_0_i_1_n_0 ),
        .I2(abus_0[11]),
        .O(tout__1_carry__2_i_4_n_0));
  LUT5 #(
    .INIT(32'hC33C9696)) 
    tout__1_carry__2_i_5
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .I3(\bdatw[14]_INST_0_i_1_n_0 ),
        .I4(abus_0[14]),
        .O(tout__1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__2_i_6
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[14]_INST_0_i_1_n_0 ),
        .I2(tout__1_carry__2_i_2_n_0),
        .I3(abus_0[14]),
        .O(tout__1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__2_i_7
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[13]_INST_0_i_1_n_0 ),
        .I2(abus_0[13]),
        .I3(tout__1_carry__2_i_3_n_0),
        .O(tout__1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry__2_i_8
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[12]_INST_0_i_1_n_0 ),
        .I2(abus_0[12]),
        .I3(tout__1_carry__2_i_4_n_0),
        .O(tout__1_carry__2_i_8_n_0));
  LUT3 #(
    .INIT(8'h6F)) 
    tout__1_carry__3_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .O(tout__1_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tout__1_carry__3_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .O(tout__1_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'hF6)) 
    tout__1_carry__3_i_3
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[15]_INST_0_i_1_n_0 ),
        .I2(abus_0[15]),
        .O(tout__1_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry_i_1
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(abus_0[2]),
        .O(tout__1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000055551101)) 
    tout__1_carry_i_10
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(tout__1_carry_i_14_n_0),
        .I2(\ccmd[0]_INST_0_i_3_n_0 ),
        .I3(\ccmd[0]_INST_0_i_4_n_0 ),
        .I4(tout__1_carry_i_15_n_0),
        .I5(stat[2]),
        .O(tout__1_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    tout__1_carry_i_11
       (.I0(\sr[5]_i_3_n_0 ),
        .I1(\iv[14]_i_22_n_0 ),
        .I2(\iv[14]_i_12_n_0 ),
        .O(tout__1_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tout__1_carry_i_12
       (.I0(\bdatw[8]_INST_0_i_2_n_0 ),
        .I1(tout__1_carry_i_8_n_0),
        .O(tout__1_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hBFFFBFFFBFFFBFAA)) 
    tout__1_carry_i_13
       (.I0(stat[2]),
        .I1(\ccmd[0]_INST_0_i_7_n_0 ),
        .I2(\ccmd[0]_INST_0_i_6_n_0 ),
        .I3(\ccmd[0]_INST_0_i_5_n_0 ),
        .I4(tout__1_carry_i_16_n_0),
        .I5(\ccmd[0]_INST_0_i_2_n_0 ),
        .O(tout__1_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hBABABABABAAABABA)) 
    tout__1_carry_i_14
       (.I0(\ccmd[0]_INST_0_i_5_n_0 ),
        .I1(\ccmd[0]_INST_0_i_9_n_0 ),
        .I2(\ccmd[0]_INST_0_i_4_n_0 ),
        .I3(\ccmd[0]_INST_0_i_8_n_0 ),
        .I4(\ccmd[2]_INST_0_i_11_n_0 ),
        .I5(tout__1_carry_i_17_n_0),
        .O(tout__1_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'hAAEA000000000000)) 
    tout__1_carry_i_15
       (.I0(tout__1_carry_i_18_n_0),
        .I1(\fch/ir [10]),
        .I2(\bcmd[2]_INST_0_i_2_n_0 ),
        .I3(\ccmd[0]_INST_0_i_15_n_0 ),
        .I4(\ccmd[0]_INST_0_i_6_n_0 ),
        .I5(\ccmd[0]_INST_0_i_5_n_0 ),
        .O(tout__1_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFF5F4)) 
    tout__1_carry_i_16
       (.I0(\fch/ir [12]),
        .I1(\fch/ir [11]),
        .I2(\fch/ir [15]),
        .I3(tout__1_carry_i_19_n_0),
        .I4(\ccmd[0]_INST_0_i_10_n_0 ),
        .I5(\ccmd[0]_INST_0_i_4_n_0 ),
        .O(tout__1_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tout__1_carry_i_17
       (.I0(\fch/ir [4]),
        .I1(\fch/ir [5]),
        .O(tout__1_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    tout__1_carry_i_18
       (.I0(\ccmd[0]_INST_0_i_18_n_0 ),
        .I1(\fch/ir [10]),
        .I2(\ccmd[0]_INST_0_i_17_n_0 ),
        .I3(tout__1_carry_i_20_n_0),
        .I4(\ccmd[2]_INST_0_i_14_n_0 ),
        .I5(tout__1_carry_i_21_n_0),
        .O(tout__1_carry_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tout__1_carry_i_19
       (.I0(\fch/ir [14]),
        .I1(stat[1]),
        .O(tout__1_carry_i_19_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    tout__1_carry_i_2
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[9]_INST_0_i_2_n_0 ),
        .I2(abus_0[1]),
        .O(tout__1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tout__1_carry_i_20
       (.I0(\fch/ir [13]),
        .I1(\fch/ir [14]),
        .O(tout__1_carry_i_20_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    tout__1_carry_i_21
       (.I0(\fch/ir [7]),
        .I1(\fch/ir [5]),
        .I2(\fch/ir [4]),
        .O(tout__1_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'hFFFFA03FA03F0000)) 
    tout__1_carry_i_3
       (.I0(tout__1_carry_i_9_n_0),
        .I1(tout__1_carry_i_10_n_0),
        .I2(tout__1_carry_i_11_n_0),
        .I3(\rgf/sreg/sr [6]),
        .I4(tout__1_carry_i_12_n_0),
        .I5(abus_0[0]),
        .O(tout__1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry_i_4
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[11]_INST_0_i_2_n_0 ),
        .I2(abus_0[3]),
        .I3(tout__1_carry_i_1_n_0),
        .O(tout__1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tout__1_carry_i_5
       (.I0(tout__1_carry_i_8_n_0),
        .I1(\bdatw[10]_INST_0_i_2_n_0 ),
        .I2(abus_0[2]),
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
  LUT6 #(
    .INIT(64'hA03F5FC05FC0A03F)) 
    tout__1_carry_i_7
       (.I0(tout__1_carry_i_9_n_0),
        .I1(tout__1_carry_i_10_n_0),
        .I2(tout__1_carry_i_11_n_0),
        .I3(\rgf/sreg/sr [6]),
        .I4(abus_0[0]),
        .I5(tout__1_carry_i_12_n_0),
        .O(tout__1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hEEFEEEFEEEFFFFFF)) 
    tout__1_carry_i_8
       (.I0(\sr[5]_i_3_n_0 ),
        .I1(\iv[14]_i_22_n_0 ),
        .I2(\iv[6]_i_10_n_0 ),
        .I3(\iv[14]_i_11_n_0 ),
        .I4(\ccmd[4]_INST_0_i_1_n_0 ),
        .I5(tout__1_carry_i_13_n_0),
        .O(tout__1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tout__1_carry_i_9
       (.I0(\ccmd[4]_INST_0_i_1_n_0 ),
        .I1(\ccmd[1]_INST_0_i_1_n_0 ),
        .O(tout__1_carry_i_9_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \tr[15]_i_1 
       (.I0(ctl_selc),
        .I1(\iv[15]_i_4_n_0 ),
        .I2(\iv[15]_i_5_n_0 ),
        .I3(\tr[15]_i_2_n_0 ),
        .O(\rgf/cbus_sel_cr [4]));
  LUT2 #(
    .INIT(4'h2)) 
    \tr[15]_i_2 
       (.I0(ctl_selc_rn[2]),
        .I1(ctl_selc_rn[0]),
        .O(\tr[15]_i_2_n_0 ));
endmodule
