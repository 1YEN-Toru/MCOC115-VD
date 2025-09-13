
(* STRUCTURAL_NETLIST = "yes" *)
module sndg1pb
   (clk,
    rst_n,
    simumd,
    brdy,
    bcmdr,
    bcmdw,
    bcs_sndg_n,
    clk_mhz,
    badr,
    bdatw,
    sndg_pwm,
    sndg_sger,
    bdatr);
//
// Sound Generator unit
//		(c) 2025	1YEN Toru
//
//
//	2025/09/13	ver.1.00
//		1 channel, passive buzzer sound
//
  input clk;
  input rst_n;
  input simumd;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bcs_sndg_n;
  input [7:0]clk_mhz;
  input [3:0]badr;
  input [15:0]bdatw;
  output sndg_pwm;
  output sndg_sger;
  output [15:0]bdatr;

  wire [0:0]adr_rd;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_sndg_n;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire brdy;
  wire clear;
  wire clk;
  wire [7:0]clk_mhz;
  wire drv_rd;
  wire [4:3]\fsm/p_0_in ;
  wire [0:0]\fsm/stat_nx ;
  wire [11:11]mem_rd;
  wire [15:2]p_1_in;
  wire [0:0]ptr_rd0;
  wire rst_n;
  wire [3:0]sctl_mscl;
  wire sctl_n_12;
  wire sctl_n_13;
  wire sctl_n_38;
  wire sctl_n_39;
  wire sctl_n_4;
  wire sctl_n_40;
  wire sctl_n_41;
  wire sctl_n_42;
  wire sctl_n_43;
  wire sctl_n_44;
  wire sctl_n_45;
  wire sctl_n_47;
  wire sctl_n_48;
  wire sctl_n_49;
  wire sctl_n_50;
  wire sctl_n_51;
  wire sctl_n_52;
  wire [3:0]sctl_octv;
  wire simumd;
  wire sndg_pwm;
  wire sndg_sger;
  wire [15:8]sndgfifo;
  wire [5:0]sndgt128;
  wire [15:8]snff_dat_rd;
  wire snff_empt;
  wire snff_empt_adv;
  wire snff_full;
  wire snff_n_10;
  wire snff_n_11;
  wire snff_n_12;
  wire snff_n_13;
  wire snff_n_14;
  wire snff_n_15;
  wire snff_n_16;
  wire snff_n_17;
  wire snff_n_18;
  wire snff_n_20;
  wire snff_n_30;
  wire snff_n_31;
  wire snff_n_32;
  wire snff_n_33;
  wire snff_n_34;
  wire snff_n_35;
  wire snff_n_36;
  wire snff_n_37;
  wire snff_n_4;
  wire snff_n_46;
  wire snff_n_47;
  wire snff_n_48;
  wire snff_n_49;
  wire snff_n_5;
  wire snff_n_50;
  wire snff_n_51;
  wire snff_n_6;
  wire snff_n_7;
  wire snff_n_8;
  wire snff_n_9;
  wire [15:0]stab_ratef;
  wire tlen_clr_enb_r;
  wire [0:0]tlen_cnt128;
  wire tlen_n_10;
  wire tlen_n_11;
  wire tlen_n_12;
  wire tlen_n_13;
  wire tlen_n_14;
  wire tlen_n_15;
  wire tlen_n_18;
  wire tlen_n_2;
  wire tlen_n_3;
  wire tlen_n_4;
  wire tlen_n_5;
  wire tlen_n_6;
  wire tlen_n_7;
  wire tlen_n_8;
  wire tlen_n_9;
  wire tlen_ovfus0;
  wire tscl_pwm;

  sndg_ctrl sctl
       (.CO(tlen_ovfus0),
        .D(sctl_n_45),
        .E(sctl_n_12),
        .O({tlen_n_2,tlen_n_3,tlen_n_4}),
        .Q(sndgt128),
        .S({sctl_n_48,sctl_n_49}),
        .SR(clear),
        .badr(badr),
        .bcmdr(bcmdr),
        .bcmdw(bcmdw),
        .bcs_sndg_n(bcs_sndg_n),
        .bdatr(bdatr),
        .bdatw(bdatw),
        .brdy(brdy),
        .brdy_0(sctl_n_4),
        .clk(clk),
        .empty_rd_reg(sctl_n_52),
        .p_0_in(\fsm/p_0_in ),
        .rst_n(rst_n),
        .sndg_pwm(sndg_pwm),
        .sndg_sger(sndg_sger),
        .\sndgctl_reg[0]_0 (sctl_n_47),
        .\sndgfifo_reg[15]_0 ({sndgfifo,sctl_n_38,sctl_n_39,sctl_n_40,sctl_n_41,sctl_n_42,sctl_n_43,sctl_n_44}),
        .\sndgfifo_reg[15]_1 ({snff_dat_rd,snff_n_30,snff_n_31,snff_n_32,snff_n_33,snff_n_34,snff_n_35,snff_n_36,snff_n_37}),
        .\sndgt128_reg[15]_0 ({sctl_n_50,sctl_n_51}),
        .snff_empt(snff_empt),
        .snff_empt_adv(snff_empt_adv),
        .snff_full(snff_full),
        .\stat_reg[0] (tlen_n_13),
        .\stat_reg[0]_0 (tlen_n_12),
        .\stat_reg[1] (\fsm/stat_nx ),
        .\stat_reg[1]_0 (sctl_n_13),
        .\stat_reg[1]_1 (tlen_n_18),
        .tlen_clr_enb_r(tlen_clr_enb_r),
        .\tlen_cnt128_reg[0] (tlen_cnt128),
        .\tlen_cntus_reg[15] (tlen_n_14),
        .tlen_ovfus0_carry__0({tlen_n_5,tlen_n_6,tlen_n_7,tlen_n_8}),
        .tlen_ovfus0_carry__0_0({tlen_n_9,tlen_n_10,tlen_n_11}),
        .tscl_pwm(tscl_pwm));
  sndg_fifo16s32 snff
       (.D(ptr_rd0),
        .Q(adr_rd),
        .S({snff_n_5,snff_n_6,snff_n_7}),
        .SR(clear),
        .badr(badr),
        .bdatw(bdatw),
        .clk(clk),
        .drv_rd(drv_rd),
        .drv_rd_reg(snff_n_20),
        .drv_rd_reg_0({snff_dat_rd,snff_n_30,snff_n_31,snff_n_32,snff_n_33,snff_n_34,snff_n_35,snff_n_36,snff_n_37}),
        .drv_rd_reg_1(snff_n_46),
        .drv_rd_reg_2(snff_n_47),
        .drv_rd_reg_3(snff_n_48),
        .drv_rd_reg_4(snff_n_49),
        .drv_rd_reg_5(snff_n_50),
        .drv_rd_reg_6(snff_n_51),
        .drv_rd_reg_7(\fsm/stat_nx ),
        .empty_rd_adv_i_3(tlen_n_13),
        .empty_rd_adv_i_3_0(tlen_n_12),
        .empty_rd_adv_i_3_1(sctl_n_47),
        .empty_rd_adv_reg(tlen_n_15),
        .\mem_rd_reg[11] (mem_rd),
        .p_0_in(\fsm/p_0_in ),
        .p_1_in(p_1_in),
        .\ptr_wr_reg[2] (sctl_n_4),
        .sctl_mscl(sctl_mscl),
        .sctl_octv(sctl_octv),
        .\sndgfifo_reg[11] ({snff_n_12,snff_n_13,snff_n_14,snff_n_15}),
        .snff_empt(snff_empt),
        .snff_empt_adv(snff_empt_adv),
        .snff_full(snff_full),
        .stab_ratef(stab_ratef),
        .\tscl_cntus_reg[15] ({snff_n_16,snff_n_17,snff_n_18}),
        .\tscl_cntus_reg[8] ({snff_n_8,snff_n_9,snff_n_10}),
        .tscl_ovfus0_carry_i_15(snff_n_11),
        .tscl_ovfus0_carry_i_35({sndgfifo,sctl_n_38,sctl_n_39,sctl_n_40,sctl_n_41,sctl_n_42,sctl_n_43,sctl_n_44}),
        .tscl_pwm_i_5(snff_n_4));
  sndg_sclfrq stab
       (.drv_rd(drv_rd),
        .p_0_in(\fsm/p_0_in [3]),
        .sctl_mscl(sctl_mscl),
        .sctl_octv(sctl_octv),
        .stab_ratef(stab_ratef),
        .tscl_pwm_i_5(sndgfifo[11]),
        .tscl_pwm_i_5_0(mem_rd));
  sndg_tmlen tlen
       (.CO(tlen_ovfus0),
        .D(ptr_rd0),
        .E(sctl_n_12),
        .O({tlen_n_2,tlen_n_3,tlen_n_4}),
        .Q(adr_rd),
        .S({sctl_n_48,sctl_n_49}),
        .clk(clk),
        .clk_mhz(clk_mhz),
        .p_0_in(\fsm/p_0_in [4]),
        .\ptr_rd_reg[0] (tlen_n_15),
        .\ptr_rd_reg[0]_0 (sctl_n_47),
        .rst_n(rst_n),
        .simumd(simumd),
        .simumd_0(tlen_n_13),
        .simumd_1(tlen_n_14),
        .tlen_clr_enb_r(tlen_clr_enb_r),
        .tlen_clr_enb_r_reg_0(snff_n_20),
        .\tlen_cnt128_reg[0]_0 (tlen_cnt128),
        .\tlen_cnt128_reg[0]_1 (sctl_n_45),
        .\tlen_cnt128_reg[1]_0 (snff_n_51),
        .\tlen_cnt128_reg[2]_0 (snff_n_50),
        .\tlen_cnt128_reg[3]_0 (snff_n_49),
        .\tlen_cnt128_reg[4]_0 (tlen_n_12),
        .\tlen_cnt128_reg[4]_1 (snff_n_48),
        .\tlen_cnt128_reg[5]_0 (snff_n_47),
        .\tlen_cnt128_reg[6]_0 (tlen_n_18),
        .\tlen_cnt128_reg[6]_1 (snff_n_46),
        .\tlen_cntbcd_reg[0]_0 (sctl_n_13),
        .\tlen_cntus_reg[12]_0 ({tlen_n_5,tlen_n_6,tlen_n_7,tlen_n_8}),
        .\tlen_cntus_reg[15]_0 ({tlen_n_9,tlen_n_10,tlen_n_11}),
        .\tlen_cntus_reg[15]_1 ({sctl_n_50,sctl_n_51}),
        .tlen_ovfus0_carry_0(sndgt128));
  sndg_tmscl tscl
       (.S({snff_n_5,snff_n_6,snff_n_7}),
        .clk(clk),
        .clk_mhz(clk_mhz),
        .simumd(simumd),
        .stab_ratef(stab_ratef),
        .\tscl_cntus_reg[0]_0 ({snff_n_12,snff_n_13,snff_n_14,snff_n_15}),
        .\tscl_cntus_reg[15]_0 (p_1_in),
        .tscl_pwm(tscl_pwm),
        .tscl_pwm0_carry__0_0({snff_n_8,snff_n_9,snff_n_10}),
        .tscl_pwm_reg_0({snff_n_16,snff_n_17,snff_n_18}),
        .tscl_pwm_reg_1(sctl_n_52),
        .tscl_pwm_reg_2(snff_n_4),
        .tscl_pwm_reg_3(snff_n_11));
endmodule

module sndg_ctrl
   (p_0_in,
    \stat_reg[1] ,
    sndg_sger,
    brdy_0,
    sndg_pwm,
    Q,
    E,
    \stat_reg[1]_0 ,
    bdatr,
    \sndgfifo_reg[15]_0 ,
    D,
    SR,
    \sndgctl_reg[0]_0 ,
    S,
    \sndgt128_reg[15]_0 ,
    empty_rd_reg,
    clk,
    snff_empt_adv,
    bdatw,
    badr,
    brdy,
    bcs_sndg_n,
    bcmdw,
    tscl_pwm,
    tlen_clr_enb_r,
    rst_n,
    \tlen_cntus_reg[15] ,
    CO,
    \stat_reg[0] ,
    \stat_reg[0]_0 ,
    snff_empt,
    \stat_reg[1]_1 ,
    \tlen_cnt128_reg[0] ,
    \sndgfifo_reg[15]_1 ,
    O,
    tlen_ovfus0_carry__0,
    tlen_ovfus0_carry__0_0,
    snff_full,
    bcmdr);
  output [1:0]p_0_in;
  output [0:0]\stat_reg[1] ;
  output sndg_sger;
  output brdy_0;
  output sndg_pwm;
  output [5:0]Q;
  output [0:0]E;
  output \stat_reg[1]_0 ;
  output [15:0]bdatr;
  output [14:0]\sndgfifo_reg[15]_0 ;
  output [0:0]D;
  output [0:0]SR;
  output \sndgctl_reg[0]_0 ;
  output [1:0]S;
  output [1:0]\sndgt128_reg[15]_0 ;
  output empty_rd_reg;
  input clk;
  input snff_empt_adv;
  input [15:0]bdatw;
  input [3:0]badr;
  input brdy;
  input bcs_sndg_n;
  input bcmdw;
  input tscl_pwm;
  input tlen_clr_enb_r;
  input rst_n;
  input \tlen_cntus_reg[15] ;
  input [0:0]CO;
  input \stat_reg[0] ;
  input \stat_reg[0]_0 ;
  input snff_empt;
  input \stat_reg[1]_1 ;
  input [0:0]\tlen_cnt128_reg[0] ;
  input [15:0]\sndgfifo_reg[15]_1 ;
  input [2:0]O;
  input [3:0]tlen_ovfus0_carry__0;
  input [2:0]tlen_ovfus0_carry__0_0;
  input snff_full;
  input bcmdr;

  wire \<const1> ;
  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]O;
  wire [5:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_sndg_n;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire brdy;
  wire brdy_0;
  wire clk;
  wire empty_rd_reg;
  wire fsm_n_1;
  wire [1:0]p_0_in;
  wire p_0_in_0;
  wire rd_sndgctl;
  wire rd_sndgctl_i_1_n_0;
  wire rd_sndgctl_i_2_n_0;
  wire rd_sndgfifo;
  wire rd_sndgfifo_i_1_n_0;
  wire rd_sndgfifo_i_2_n_0;
  wire rd_sndgt128;
  wire rd_sndgt128_i_1_n_0;
  wire rd_sndgt128_i_2_n_0;
  wire rst_n;
  wire sctl_sgee;
  wire sndg_pwm;
  wire sndg_pwm_INST_0_i_1_n_0;
  wire sndg_pwm_INST_0_i_2_n_0;
  wire sndg_pwm_INST_0_i_3_n_0;
  wire sndg_pwm_INST_0_i_4_n_0;
  wire sndg_sger;
  wire \sndgctl[0]_i_1_n_0 ;
  wire \sndgctl[2]_i_1_n_0 ;
  wire \sndgctl[2]_i_2_n_0 ;
  wire \sndgctl[7]_i_2_n_0 ;
  wire \sndgctl_reg[0]_0 ;
  wire \sndgctl_reg_n_0_[0] ;
  wire [14:0]\sndgfifo_reg[15]_0 ;
  wire [15:0]\sndgfifo_reg[15]_1 ;
  wire \sndgfifo_reg_n_0_[0] ;
  wire [15:6]sndgt128;
  wire [1:0]\sndgt128_reg[15]_0 ;
  wire snff_empt;
  wire snff_empt_adv;
  wire snff_full;
  wire \stat_reg[0] ;
  wire \stat_reg[0]_0 ;
  wire [0:0]\stat_reg[1] ;
  wire \stat_reg[1]_0 ;
  wire \stat_reg[1]_1 ;
  wire tlen_clr_enb_r;
  wire [0:0]\tlen_cnt128_reg[0] ;
  wire \tlen_cntus_reg[15] ;
  wire [3:0]tlen_ovfus0_carry__0;
  wire [2:0]tlen_ovfus0_carry__0_0;
  wire tscl_pwm;
  wire wr_sndgt128;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \bdatr[0]_INST_0 
       (.I0(\sndgctl_reg_n_0_[0] ),
        .I1(rd_sndgctl),
        .I2(Q[0]),
        .I3(rd_sndgt128),
        .I4(\sndgfifo_reg_n_0_[0] ),
        .I5(rd_sndgfifo),
        .O(bdatr[0]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    \bdatr[10]_INST_0 
       (.I0(rd_sndgfifo),
        .I1(\sndgfifo_reg[15]_0 [9]),
        .I2(rd_sndgt128),
        .I3(sndgt128[10]),
        .I4(rd_sndgctl),
        .O(bdatr[10]));
  LUT5 #(
    .INIT(32'h55400040)) 
    \bdatr[11]_INST_0 
       (.I0(rd_sndgctl),
        .I1(rd_sndgfifo),
        .I2(\sndgfifo_reg[15]_0 [10]),
        .I3(rd_sndgt128),
        .I4(sndgt128[11]),
        .O(bdatr[11]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    \bdatr[12]_INST_0 
       (.I0(rd_sndgfifo),
        .I1(\sndgfifo_reg[15]_0 [11]),
        .I2(rd_sndgt128),
        .I3(sndgt128[12]),
        .I4(rd_sndgctl),
        .O(bdatr[12]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    \bdatr[13]_INST_0 
       (.I0(rd_sndgfifo),
        .I1(\sndgfifo_reg[15]_0 [12]),
        .I2(rd_sndgt128),
        .I3(sndgt128[13]),
        .I4(rd_sndgctl),
        .O(bdatr[13]));
  LUT5 #(
    .INIT(32'h55400040)) 
    \bdatr[14]_INST_0 
       (.I0(rd_sndgctl),
        .I1(rd_sndgfifo),
        .I2(\sndgfifo_reg[15]_0 [13]),
        .I3(rd_sndgt128),
        .I4(sndgt128[14]),
        .O(bdatr[14]));
  LUT5 #(
    .INIT(32'h55400040)) 
    \bdatr[15]_INST_0 
       (.I0(rd_sndgctl),
        .I1(rd_sndgfifo),
        .I2(\sndgfifo_reg[15]_0 [14]),
        .I3(rd_sndgt128),
        .I4(sndgt128[15]),
        .O(bdatr[15]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \bdatr[2]_INST_0 
       (.I0(sctl_sgee),
        .I1(rd_sndgctl),
        .I2(Q[2]),
        .I3(rd_sndgt128),
        .I4(rd_sndgfifo),
        .I5(\sndgfifo_reg[15]_0 [1]),
        .O(bdatr[2]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \bdatr[3]_INST_0 
       (.I0(snff_empt_adv),
        .I1(rd_sndgctl),
        .I2(Q[3]),
        .I3(rd_sndgt128),
        .I4(rd_sndgfifo),
        .I5(\sndgfifo_reg[15]_0 [2]),
        .O(bdatr[3]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \bdatr[4]_INST_0 
       (.I0(snff_empt),
        .I1(rd_sndgctl),
        .I2(Q[4]),
        .I3(rd_sndgt128),
        .I4(rd_sndgfifo),
        .I5(\sndgfifo_reg[15]_0 [3]),
        .O(bdatr[4]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \bdatr[5]_INST_0 
       (.I0(snff_full),
        .I1(rd_sndgctl),
        .I2(Q[5]),
        .I3(rd_sndgt128),
        .I4(rd_sndgfifo),
        .I5(\sndgfifo_reg[15]_0 [4]),
        .O(bdatr[5]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    \bdatr[6]_INST_0 
       (.I0(\sndgfifo_reg[15]_0 [5]),
        .I1(rd_sndgfifo),
        .I2(rd_sndgt128),
        .I3(sndgt128[6]),
        .I4(rd_sndgctl),
        .O(bdatr[6]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \bdatr[7]_INST_0 
       (.I0(p_0_in_0),
        .I1(rd_sndgctl),
        .I2(sndgt128[7]),
        .I3(rd_sndgt128),
        .I4(rd_sndgfifo),
        .I5(\sndgfifo_reg[15]_0 [6]),
        .O(bdatr[7]));
  LUT5 #(
    .INIT(32'h55400040)) 
    \bdatr[8]_INST_0 
       (.I0(rd_sndgctl),
        .I1(rd_sndgfifo),
        .I2(\sndgfifo_reg[15]_0 [7]),
        .I3(rd_sndgt128),
        .I4(sndgt128[8]),
        .O(bdatr[8]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    \bdatr[9]_INST_0 
       (.I0(rd_sndgfifo),
        .I1(\sndgfifo_reg[15]_0 [8]),
        .I2(rd_sndgt128),
        .I3(sndgt128[9]),
        .I4(rd_sndgctl),
        .O(bdatr[9]));
  LUT2 #(
    .INIT(4'hB)) 
    empty_rd_i_1
       (.I0(p_0_in_0),
        .I1(rst_n),
        .O(SR));
  sndg_fsm fsm
       (.CO(CO),
        .D(D),
        .E(p_0_in[0]),
        .Q(\sndgctl_reg_n_0_[0] ),
        .SR(fsm_n_1),
        .bdatr(bdatr[1]),
        .\bdatr[1] (Q[1]),
        .\bdatr[1]_0 ({\sndgfifo_reg[15]_0 [0],\sndgfifo_reg_n_0_[0] }),
        .clk(clk),
        .empty_rd_reg(empty_rd_reg),
        .rd_sndgctl(rd_sndgctl),
        .rd_sndgfifo(rd_sndgfifo),
        .rd_sndgt128(rd_sndgt128),
        .rst_n(rst_n),
        .rst_n_0(E),
        .\sndgctl_reg[0] (\sndgctl_reg[0]_0 ),
        .snff_empt(snff_empt),
        .\stat_reg[0]_0 (\stat_reg[0] ),
        .\stat_reg[0]_1 (\stat_reg[0]_0 ),
        .\stat_reg[1]_0 (p_0_in[1]),
        .\stat_reg[1]_1 (\stat_reg[1] ),
        .\stat_reg[1]_2 (\stat_reg[1]_0 ),
        .\stat_reg[1]_3 (\stat_reg[1]_1 ),
        .\tlen_cnt128_reg[0] (\tlen_cnt128_reg[0] ),
        .\tlen_cnt128_reg[0]_0 (\sndgfifo_reg[15]_1 [0]),
        .\tlen_cntus_reg[15] (\tlen_cntus_reg[15] ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    rd_sndgctl_i_1
       (.I0(bcmdr),
        .I1(bcs_sndg_n),
        .I2(rd_sndgctl_i_2_n_0),
        .I3(brdy),
        .I4(rd_sndgctl),
        .O(rd_sndgctl_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rd_sndgctl_i_2
       (.I0(badr[2]),
        .I1(badr[0]),
        .I2(badr[3]),
        .I3(badr[1]),
        .O(rd_sndgctl_i_2_n_0));
  FDRE rd_sndgctl_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rd_sndgctl_i_1_n_0),
        .Q(rd_sndgctl),
        .R(fsm_n_1));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    rd_sndgfifo_i_1
       (.I0(rd_sndgfifo_i_2_n_0),
        .I1(bcmdr),
        .I2(bcs_sndg_n),
        .I3(brdy),
        .I4(rd_sndgfifo),
        .O(rd_sndgfifo_i_1_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    rd_sndgfifo_i_2
       (.I0(badr[3]),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[1]),
        .O(rd_sndgfifo_i_2_n_0));
  FDRE rd_sndgfifo_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rd_sndgfifo_i_1_n_0),
        .Q(rd_sndgfifo),
        .R(fsm_n_1));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    rd_sndgt128_i_1
       (.I0(rd_sndgt128_i_2_n_0),
        .I1(bcmdr),
        .I2(bcs_sndg_n),
        .I3(brdy),
        .I4(rd_sndgt128),
        .O(rd_sndgt128_i_1_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    rd_sndgt128_i_2
       (.I0(badr[2]),
        .I1(badr[0]),
        .I2(badr[3]),
        .I3(badr[1]),
        .O(rd_sndgt128_i_2_n_0));
  FDRE rd_sndgt128_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rd_sndgt128_i_1_n_0),
        .Q(rd_sndgt128),
        .R(fsm_n_1));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    sndg_pwm_INST_0
       (.I0(sndg_pwm_INST_0_i_1_n_0),
        .I1(sndg_pwm_INST_0_i_2_n_0),
        .I2(sndg_pwm_INST_0_i_3_n_0),
        .I3(sndg_pwm_INST_0_i_4_n_0),
        .I4(tscl_pwm),
        .I5(tlen_clr_enb_r),
        .O(sndg_pwm));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sndg_pwm_INST_0_i_1
       (.I0(sndgt128[7]),
        .I1(sndgt128[6]),
        .I2(sndgt128[10]),
        .I3(Q[3]),
        .O(sndg_pwm_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sndg_pwm_INST_0_i_2
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(sndgt128[13]),
        .I3(Q[2]),
        .O(sndg_pwm_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sndg_pwm_INST_0_i_3
       (.I0(sndgt128[15]),
        .I1(Q[0]),
        .I2(sndgt128[12]),
        .I3(Q[5]),
        .O(sndg_pwm_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sndg_pwm_INST_0_i_4
       (.I0(sndgt128[11]),
        .I1(sndgt128[8]),
        .I2(sndgt128[14]),
        .I3(sndgt128[9]),
        .O(sndg_pwm_INST_0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sndg_sger_INST_0
       (.I0(sctl_sgee),
        .I1(snff_empt_adv),
        .O(sndg_sger));
  LUT3 #(
    .INIT(8'hB8)) 
    \sndgctl[0]_i_1 
       (.I0(\sndgctl_reg_n_0_[0] ),
        .I1(\sndgctl[2]_i_2_n_0 ),
        .I2(bdatw[0]),
        .O(\sndgctl[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sndgctl[2]_i_1 
       (.I0(sctl_sgee),
        .I1(\sndgctl[2]_i_2_n_0 ),
        .I2(bdatw[2]),
        .O(\sndgctl[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sndgctl[2]_i_2 
       (.I0(brdy_0),
        .I1(badr[1]),
        .I2(badr[3]),
        .I3(badr[0]),
        .I4(badr[2]),
        .O(\sndgctl[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \sndgctl[7]_i_2 
       (.I0(bdatw[7]),
        .I1(badr[2]),
        .I2(badr[0]),
        .I3(badr[3]),
        .I4(badr[1]),
        .I5(brdy_0),
        .O(\sndgctl[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \sndgctl[7]_i_3 
       (.I0(brdy),
        .I1(bcs_sndg_n),
        .I2(bcmdw),
        .O(brdy_0));
  FDRE \sndgctl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sndgctl[0]_i_1_n_0 ),
        .Q(\sndgctl_reg_n_0_[0] ),
        .R(fsm_n_1));
  FDRE \sndgctl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sndgctl[2]_i_1_n_0 ),
        .Q(sctl_sgee),
        .R(fsm_n_1));
  FDRE \sndgctl_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sndgctl[7]_i_2_n_0 ),
        .Q(p_0_in_0),
        .R(fsm_n_1));
  FDRE \sndgfifo_reg[0] 
       (.C(clk),
        .CE(p_0_in[0]),
        .D(\sndgfifo_reg[15]_1 [0]),
        .Q(\sndgfifo_reg_n_0_[0] ),
        .R(fsm_n_1));
  FDRE \sndgfifo_reg[10] 
       (.C(clk),
        .CE(p_0_in[0]),
        .D(\sndgfifo_reg[15]_1 [10]),
        .Q(\sndgfifo_reg[15]_0 [9]),
        .R(fsm_n_1));
  FDRE \sndgfifo_reg[11] 
       (.C(clk),
        .CE(p_0_in[0]),
        .D(\sndgfifo_reg[15]_1 [11]),
        .Q(\sndgfifo_reg[15]_0 [10]),
        .R(fsm_n_1));
  FDRE \sndgfifo_reg[12] 
       (.C(clk),
        .CE(p_0_in[0]),
        .D(\sndgfifo_reg[15]_1 [12]),
        .Q(\sndgfifo_reg[15]_0 [11]),
        .R(fsm_n_1));
  FDRE \sndgfifo_reg[13] 
       (.C(clk),
        .CE(p_0_in[0]),
        .D(\sndgfifo_reg[15]_1 [13]),
        .Q(\sndgfifo_reg[15]_0 [12]),
        .R(fsm_n_1));
  FDRE \sndgfifo_reg[14] 
       (.C(clk),
        .CE(p_0_in[0]),
        .D(\sndgfifo_reg[15]_1 [14]),
        .Q(\sndgfifo_reg[15]_0 [13]),
        .R(fsm_n_1));
  FDRE \sndgfifo_reg[15] 
       (.C(clk),
        .CE(p_0_in[0]),
        .D(\sndgfifo_reg[15]_1 [15]),
        .Q(\sndgfifo_reg[15]_0 [14]),
        .R(fsm_n_1));
  FDRE \sndgfifo_reg[1] 
       (.C(clk),
        .CE(p_0_in[0]),
        .D(\sndgfifo_reg[15]_1 [1]),
        .Q(\sndgfifo_reg[15]_0 [0]),
        .R(fsm_n_1));
  FDRE \sndgfifo_reg[2] 
       (.C(clk),
        .CE(p_0_in[0]),
        .D(\sndgfifo_reg[15]_1 [2]),
        .Q(\sndgfifo_reg[15]_0 [1]),
        .R(fsm_n_1));
  FDRE \sndgfifo_reg[3] 
       (.C(clk),
        .CE(p_0_in[0]),
        .D(\sndgfifo_reg[15]_1 [3]),
        .Q(\sndgfifo_reg[15]_0 [2]),
        .R(fsm_n_1));
  FDRE \sndgfifo_reg[4] 
       (.C(clk),
        .CE(p_0_in[0]),
        .D(\sndgfifo_reg[15]_1 [4]),
        .Q(\sndgfifo_reg[15]_0 [3]),
        .R(fsm_n_1));
  FDRE \sndgfifo_reg[5] 
       (.C(clk),
        .CE(p_0_in[0]),
        .D(\sndgfifo_reg[15]_1 [5]),
        .Q(\sndgfifo_reg[15]_0 [4]),
        .R(fsm_n_1));
  FDRE \sndgfifo_reg[6] 
       (.C(clk),
        .CE(p_0_in[0]),
        .D(\sndgfifo_reg[15]_1 [6]),
        .Q(\sndgfifo_reg[15]_0 [5]),
        .R(fsm_n_1));
  FDRE \sndgfifo_reg[7] 
       (.C(clk),
        .CE(p_0_in[0]),
        .D(\sndgfifo_reg[15]_1 [7]),
        .Q(\sndgfifo_reg[15]_0 [6]),
        .R(fsm_n_1));
  FDRE \sndgfifo_reg[8] 
       (.C(clk),
        .CE(p_0_in[0]),
        .D(\sndgfifo_reg[15]_1 [8]),
        .Q(\sndgfifo_reg[15]_0 [7]),
        .R(fsm_n_1));
  FDRE \sndgfifo_reg[9] 
       (.C(clk),
        .CE(p_0_in[0]),
        .D(\sndgfifo_reg[15]_1 [9]),
        .Q(\sndgfifo_reg[15]_0 [8]),
        .R(fsm_n_1));
  LUT5 #(
    .INIT(32'h00000100)) 
    \sndgt128[15]_i_1 
       (.I0(badr[1]),
        .I1(badr[3]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(brdy_0),
        .O(wr_sndgt128));
  FDRE \sndgt128_reg[0] 
       (.C(clk),
        .CE(wr_sndgt128),
        .D(bdatw[0]),
        .Q(Q[0]),
        .R(fsm_n_1));
  FDRE \sndgt128_reg[10] 
       (.C(clk),
        .CE(wr_sndgt128),
        .D(bdatw[10]),
        .Q(sndgt128[10]),
        .R(fsm_n_1));
  FDRE \sndgt128_reg[11] 
       (.C(clk),
        .CE(wr_sndgt128),
        .D(bdatw[11]),
        .Q(sndgt128[11]),
        .R(fsm_n_1));
  FDRE \sndgt128_reg[12] 
       (.C(clk),
        .CE(wr_sndgt128),
        .D(bdatw[12]),
        .Q(sndgt128[12]),
        .R(fsm_n_1));
  FDRE \sndgt128_reg[13] 
       (.C(clk),
        .CE(wr_sndgt128),
        .D(bdatw[13]),
        .Q(sndgt128[13]),
        .R(fsm_n_1));
  FDRE \sndgt128_reg[14] 
       (.C(clk),
        .CE(wr_sndgt128),
        .D(bdatw[14]),
        .Q(sndgt128[14]),
        .R(fsm_n_1));
  FDRE \sndgt128_reg[15] 
       (.C(clk),
        .CE(wr_sndgt128),
        .D(bdatw[15]),
        .Q(sndgt128[15]),
        .R(fsm_n_1));
  FDRE \sndgt128_reg[1] 
       (.C(clk),
        .CE(wr_sndgt128),
        .D(bdatw[1]),
        .Q(Q[1]),
        .R(fsm_n_1));
  FDRE \sndgt128_reg[2] 
       (.C(clk),
        .CE(wr_sndgt128),
        .D(bdatw[2]),
        .Q(Q[2]),
        .R(fsm_n_1));
  FDRE \sndgt128_reg[3] 
       (.C(clk),
        .CE(wr_sndgt128),
        .D(bdatw[3]),
        .Q(Q[3]),
        .R(fsm_n_1));
  FDRE \sndgt128_reg[4] 
       (.C(clk),
        .CE(wr_sndgt128),
        .D(bdatw[4]),
        .Q(Q[4]),
        .R(fsm_n_1));
  FDRE \sndgt128_reg[5] 
       (.C(clk),
        .CE(wr_sndgt128),
        .D(bdatw[5]),
        .Q(Q[5]),
        .R(fsm_n_1));
  FDRE \sndgt128_reg[6] 
       (.C(clk),
        .CE(wr_sndgt128),
        .D(bdatw[6]),
        .Q(sndgt128[6]),
        .R(fsm_n_1));
  FDRE \sndgt128_reg[7] 
       (.C(clk),
        .CE(wr_sndgt128),
        .D(bdatw[7]),
        .Q(sndgt128[7]),
        .R(fsm_n_1));
  FDRE \sndgt128_reg[8] 
       (.C(clk),
        .CE(wr_sndgt128),
        .D(bdatw[8]),
        .Q(sndgt128[8]),
        .R(fsm_n_1));
  FDRE \sndgt128_reg[9] 
       (.C(clk),
        .CE(wr_sndgt128),
        .D(bdatw[9]),
        .Q(sndgt128[9]),
        .R(fsm_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    tlen_ovfus0_carry__0_i_1
       (.I0(sndgt128[15]),
        .I1(tlen_ovfus0_carry__0_0[2]),
        .O(\sndgt128_reg[15]_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tlen_ovfus0_carry__0_i_2
       (.I0(sndgt128[14]),
        .I1(tlen_ovfus0_carry__0_0[1]),
        .I2(tlen_ovfus0_carry__0[3]),
        .I3(sndgt128[12]),
        .I4(tlen_ovfus0_carry__0_0[0]),
        .I5(sndgt128[13]),
        .O(\sndgt128_reg[15]_0 [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tlen_ovfus0_carry_i_1
       (.I0(sndgt128[11]),
        .I1(tlen_ovfus0_carry__0[2]),
        .I2(tlen_ovfus0_carry__0[0]),
        .I3(sndgt128[9]),
        .I4(tlen_ovfus0_carry__0[1]),
        .I5(sndgt128[10]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tlen_ovfus0_carry_i_2
       (.I0(sndgt128[8]),
        .I1(O[2]),
        .I2(O[0]),
        .I3(sndgt128[6]),
        .I4(O[1]),
        .I5(sndgt128[7]),
        .O(S[0]));
endmodule

module sndg_fifo16s32
   (snff_empt,
    snff_empt_adv,
    snff_full,
    drv_rd,
    tscl_pwm_i_5,
    S,
    \tscl_cntus_reg[8] ,
    tscl_ovfus0_carry_i_15,
    \sndgfifo_reg[11] ,
    \tscl_cntus_reg[15] ,
    Q,
    drv_rd_reg,
    \mem_rd_reg[11] ,
    drv_rd_reg_0,
    sctl_mscl,
    sctl_octv,
    drv_rd_reg_1,
    drv_rd_reg_2,
    drv_rd_reg_3,
    drv_rd_reg_4,
    drv_rd_reg_5,
    drv_rd_reg_6,
    SR,
    clk,
    drv_rd_reg_7,
    stab_ratef,
    p_1_in,
    badr,
    \ptr_wr_reg[2] ,
    D,
    empty_rd_adv_reg,
    p_0_in,
    empty_rd_adv_i_3,
    empty_rd_adv_i_3_0,
    empty_rd_adv_i_3_1,
    tscl_ovfus0_carry_i_35,
    bdatw);
  output snff_empt;
  output snff_empt_adv;
  output snff_full;
  output drv_rd;
  output tscl_pwm_i_5;
  output [2:0]S;
  output [2:0]\tscl_cntus_reg[8] ;
  output tscl_ovfus0_carry_i_15;
  output [3:0]\sndgfifo_reg[11] ;
  output [2:0]\tscl_cntus_reg[15] ;
  output [0:0]Q;
  output drv_rd_reg;
  output [0:0]\mem_rd_reg[11] ;
  output [15:0]drv_rd_reg_0;
  output [3:0]sctl_mscl;
  output [3:0]sctl_octv;
  output drv_rd_reg_1;
  output drv_rd_reg_2;
  output drv_rd_reg_3;
  output drv_rd_reg_4;
  output drv_rd_reg_5;
  output drv_rd_reg_6;
  input [0:0]SR;
  input clk;
  input [0:0]drv_rd_reg_7;
  input [15:0]stab_ratef;
  input [13:0]p_1_in;
  input [3:0]badr;
  input \ptr_wr_reg[2] ;
  input [0:0]D;
  input empty_rd_adv_reg;
  input [1:0]p_0_in;
  input empty_rd_adv_i_3;
  input empty_rd_adv_i_3_0;
  input empty_rd_adv_i_3_1;
  input [14:0]tscl_ovfus0_carry_i_35;
  input [15:0]bdatw;

  wire [0:0]D;
  wire [0:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire [4:1]adr_rd;
  wire [4:0]adr_wr;
  wire [3:0]badr;
  wire [15:0]bdatw;
  wire clk;
  wire drv_rd;
  wire drv_rd_reg;
  wire [15:0]drv_rd_reg_0;
  wire drv_rd_reg_1;
  wire drv_rd_reg_2;
  wire drv_rd_reg_3;
  wire drv_rd_reg_4;
  wire drv_rd_reg_5;
  wire drv_rd_reg_6;
  wire [0:0]drv_rd_reg_7;
  wire empty_rd_adv_i_3;
  wire empty_rd_adv_i_3_0;
  wire empty_rd_adv_i_3_1;
  wire empty_rd_adv_reg;
  wire fwrc_n_6;
  wire fwrc_n_7;
  wire [0:0]\mem_rd_reg[11] ;
  wire [1:0]p_0_in;
  wire [13:0]p_1_in;
  wire \ptr_wr_reg[2] ;
  wire [3:0]sctl_mscl;
  wire [3:0]sctl_octv;
  wire [3:0]\sndgfifo_reg[11] ;
  wire snff_empt;
  wire snff_empt_adv;
  wire snff_full;
  wire [15:0]stab_ratef;
  wire [2:0]\tscl_cntus_reg[15] ;
  wire [2:0]\tscl_cntus_reg[8] ;
  wire tscl_ovfus0_carry_i_15;
  wire [14:0]tscl_ovfus0_carry_i_35;
  wire tscl_pwm_i_5;

  sndg_fifo16s32_frdc frdc
       (.D(D),
        .Q(adr_wr),
        .SR(SR),
        .clk(clk),
        .empty_rd_adv_reg_0(fwrc_n_7),
        .empty_rd_adv_reg_1(empty_rd_adv_reg),
        .\ptr_rd_reg[3]_0 (drv_rd_reg_7),
        .\ptr_rd_reg[4]_0 ({adr_rd,Q}),
        .snff_empt(snff_empt),
        .snff_empt_adv(snff_empt_adv));
  sndg_fifo16s32_fwrc fwrc
       (.Q(adr_wr),
        .SR(SR),
        .badr(badr),
        .badr_1_sp_1(fwrc_n_6),
        .clk(clk),
        .empty_rd_adv_i_3_0(empty_rd_adv_i_3),
        .empty_rd_adv_i_3_1(empty_rd_adv_i_3_0),
        .empty_rd_adv_i_3_2(empty_rd_adv_i_3_1),
        .empty_rd_adv_reg(empty_rd_adv_reg),
        .full_wr_reg_0({adr_rd,Q}),
        .p_0_in(p_0_in[1]),
        .\ptr_rd_reg[1] (fwrc_n_7),
        .\ptr_wr_reg[2]_0 (\ptr_wr_reg[2] ),
        .snff_full(snff_full));
  sndg_fifo16s32_lram lram
       (.I6(fwrc_n_6),
        .Q(adr_wr),
        .S(S),
        .bdatw(bdatw),
        .clk(clk),
        .drv_rd_reg_0(drv_rd),
        .drv_rd_reg_1(drv_rd_reg),
        .drv_rd_reg_2(drv_rd_reg_0),
        .drv_rd_reg_3(drv_rd_reg_1),
        .drv_rd_reg_4(drv_rd_reg_2),
        .drv_rd_reg_5(drv_rd_reg_3),
        .drv_rd_reg_6(drv_rd_reg_4),
        .drv_rd_reg_7(drv_rd_reg_5),
        .drv_rd_reg_8(drv_rd_reg_6),
        .drv_rd_reg_9(drv_rd_reg_7),
        .\mem_rd_reg[11]_0 (\mem_rd_reg[11] ),
        .\mem_rd_reg[13]_0 ({adr_rd,Q}),
        .p_0_in(p_0_in[0]),
        .p_1_in(p_1_in),
        .sctl_mscl(sctl_mscl),
        .sctl_octv(sctl_octv),
        .\sndgfifo_reg[11] (\sndgfifo_reg[11] ),
        .stab_ratef(stab_ratef),
        .\tscl_cntus_reg[15] (\tscl_cntus_reg[15] ),
        .\tscl_cntus_reg[8] (\tscl_cntus_reg[8] ),
        .tscl_ovfus0_carry_i_15(tscl_ovfus0_carry_i_15),
        .tscl_ovfus0_carry_i_35(tscl_ovfus0_carry_i_35),
        .tscl_pwm_i_5_0(tscl_pwm_i_5));
endmodule

module sndg_fifo16s32_frdc
   (snff_empt,
    snff_empt_adv,
    \ptr_rd_reg[4]_0 ,
    SR,
    clk,
    empty_rd_adv_reg_0,
    Q,
    \ptr_rd_reg[3]_0 ,
    empty_rd_adv_reg_1,
    D);
  output snff_empt;
  output snff_empt_adv;
  output [4:0]\ptr_rd_reg[4]_0 ;
  input [0:0]SR;
  input clk;
  input empty_rd_adv_reg_0;
  input [4:0]Q;
  input [0:0]\ptr_rd_reg[3]_0 ;
  input empty_rd_adv_reg_1;
  input [0:0]D;

  wire \<const1> ;
  wire [0:0]D;
  wire [4:0]Q;
  wire [0:0]SR;
  wire clk;
  wire empty_rd_adv_i_1_n_0;
  wire empty_rd_adv_i_2_n_0;
  wire empty_rd_adv_i_4_n_0;
  wire empty_rd_adv_reg_0;
  wire empty_rd_adv_reg_1;
  wire empty_rd_i_2_n_0;
  wire empty_rd_i_3_n_0;
  wire empty_rd_i_4_n_0;
  wire empty_rd_i_5_n_0;
  wire [4:2]ptr_rd0;
  wire \ptr_rd[1]_i_1_n_0 ;
  wire [0:0]\ptr_rd_reg[3]_0 ;
  wire [4:0]\ptr_rd_reg[4]_0 ;
  wire snff_empt;
  wire snff_empt_adv;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h20F200200F00F20F)) 
    empty_rd_adv_i_1
       (.I0(empty_rd_adv_i_2_n_0),
        .I1(empty_rd_i_3_n_0),
        .I2(empty_rd_adv_reg_0),
        .I3(Q[3]),
        .I4(ptr_rd0[3]),
        .I5(empty_rd_adv_i_4_n_0),
        .O(empty_rd_adv_i_1_n_0));
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    empty_rd_adv_i_2
       (.I0(Q[2]),
        .I1(\ptr_rd_reg[4]_0 [1]),
        .I2(\ptr_rd_reg[3]_0 ),
        .I3(\ptr_rd_reg[4]_0 [0]),
        .I4(\ptr_rd_reg[4]_0 [2]),
        .O(empty_rd_adv_i_2_n_0));
  LUT6 #(
    .INIT(64'h59555555A6AAAAAA)) 
    empty_rd_adv_i_4
       (.I0(Q[4]),
        .I1(\ptr_rd_reg[4]_0 [1]),
        .I2(empty_rd_adv_reg_1),
        .I3(\ptr_rd_reg[4]_0 [2]),
        .I4(\ptr_rd_reg[4]_0 [3]),
        .I5(\ptr_rd_reg[4]_0 [4]),
        .O(empty_rd_adv_i_4_n_0));
  FDSE empty_rd_adv_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(empty_rd_adv_i_1_n_0),
        .Q(snff_empt_adv),
        .S(SR));
  LUT6 #(
    .INIT(64'h0000090009000000)) 
    empty_rd_i_2
       (.I0(ptr_rd0[2]),
        .I1(Q[2]),
        .I2(empty_rd_i_3_n_0),
        .I3(empty_rd_i_4_n_0),
        .I4(empty_rd_i_5_n_0),
        .I5(Q[4]),
        .O(empty_rd_i_2_n_0));
  LUT5 #(
    .INIT(32'h9FF9E77E)) 
    empty_rd_i_3
       (.I0(\ptr_rd_reg[4]_0 [0]),
        .I1(\ptr_rd_reg[3]_0 ),
        .I2(\ptr_rd_reg[4]_0 [1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(empty_rd_i_3_n_0));
  LUT6 #(
    .INIT(64'h6AAAAAAA95555555)) 
    empty_rd_i_4
       (.I0(Q[3]),
        .I1(\ptr_rd_reg[4]_0 [2]),
        .I2(\ptr_rd_reg[4]_0 [0]),
        .I3(\ptr_rd_reg[3]_0 ),
        .I4(\ptr_rd_reg[4]_0 [1]),
        .I5(\ptr_rd_reg[4]_0 [3]),
        .O(empty_rd_i_4_n_0));
  LUT6 #(
    .INIT(64'h9555555555555555)) 
    empty_rd_i_5
       (.I0(\ptr_rd_reg[4]_0 [4]),
        .I1(\ptr_rd_reg[4]_0 [3]),
        .I2(\ptr_rd_reg[4]_0 [2]),
        .I3(\ptr_rd_reg[4]_0 [0]),
        .I4(\ptr_rd_reg[3]_0 ),
        .I5(\ptr_rd_reg[4]_0 [1]),
        .O(empty_rd_i_5_n_0));
  FDSE empty_rd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(empty_rd_i_2_n_0),
        .Q(snff_empt),
        .S(SR));
  LUT3 #(
    .INIT(8'h6A)) 
    \ptr_rd[1]_i_1 
       (.I0(\ptr_rd_reg[4]_0 [1]),
        .I1(\ptr_rd_reg[3]_0 ),
        .I2(\ptr_rd_reg[4]_0 [0]),
        .O(\ptr_rd[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \ptr_rd[2]_i_1 
       (.I0(\ptr_rd_reg[4]_0 [2]),
        .I1(\ptr_rd_reg[4]_0 [0]),
        .I2(\ptr_rd_reg[3]_0 ),
        .I3(\ptr_rd_reg[4]_0 [1]),
        .O(ptr_rd0[2]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \ptr_rd[3]_i_1 
       (.I0(\ptr_rd_reg[4]_0 [3]),
        .I1(\ptr_rd_reg[4]_0 [1]),
        .I2(\ptr_rd_reg[3]_0 ),
        .I3(\ptr_rd_reg[4]_0 [0]),
        .I4(\ptr_rd_reg[4]_0 [2]),
        .O(ptr_rd0[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ptr_rd[4]_i_1 
       (.I0(\ptr_rd_reg[4]_0 [1]),
        .I1(\ptr_rd_reg[3]_0 ),
        .I2(\ptr_rd_reg[4]_0 [0]),
        .I3(\ptr_rd_reg[4]_0 [2]),
        .I4(\ptr_rd_reg[4]_0 [3]),
        .I5(\ptr_rd_reg[4]_0 [4]),
        .O(ptr_rd0[4]));
  FDRE \ptr_rd_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D),
        .Q(\ptr_rd_reg[4]_0 [0]),
        .R(SR));
  FDRE \ptr_rd_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\ptr_rd[1]_i_1_n_0 ),
        .Q(\ptr_rd_reg[4]_0 [1]),
        .R(SR));
  FDRE \ptr_rd_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ptr_rd0[2]),
        .Q(\ptr_rd_reg[4]_0 [2]),
        .R(SR));
  FDRE \ptr_rd_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ptr_rd0[3]),
        .Q(\ptr_rd_reg[4]_0 [3]),
        .R(SR));
  FDRE \ptr_rd_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ptr_rd0[4]),
        .Q(\ptr_rd_reg[4]_0 [4]),
        .R(SR));
endmodule

module sndg_fifo16s32_fwrc
   (snff_full,
    Q,
    .badr_1_sp_1(badr_1_sn_1),
    \ptr_rd_reg[1] ,
    SR,
    clk,
    full_wr_reg_0,
    badr,
    \ptr_wr_reg[2]_0 ,
    empty_rd_adv_reg,
    p_0_in,
    empty_rd_adv_i_3_0,
    empty_rd_adv_i_3_1,
    empty_rd_adv_i_3_2);
  output snff_full;
  output [4:0]Q;
  output \ptr_rd_reg[1] ;
  input [0:0]SR;
  input clk;
  input [4:0]full_wr_reg_0;
  input [3:0]badr;
  input \ptr_wr_reg[2]_0 ;
  input empty_rd_adv_reg;
  input [0:0]p_0_in;
  input empty_rd_adv_i_3_0;
  input empty_rd_adv_i_3_1;
  input empty_rd_adv_i_3_2;
  output badr_1_sn_1;

  wire \<const1> ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire badr_1_sn_1;
  wire clk;
  wire empty_rd_adv_i_3_0;
  wire empty_rd_adv_i_3_1;
  wire empty_rd_adv_i_3_2;
  wire empty_rd_adv_i_6_n_0;
  wire empty_rd_adv_reg;
  wire full_wr0;
  wire full_wr_i_2_n_0;
  wire full_wr_i_3_n_0;
  wire full_wr_i_4_n_0;
  wire full_wr_i_5_n_0;
  wire full_wr_i_6_n_0;
  wire [4:0]full_wr_reg_0;
  wire [0:0]p_0_in;
  wire \ptr_rd_reg[1] ;
  wire [4:0]ptr_wr0;
  wire \ptr_wr_reg[2]_0 ;
  wire snff_full;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h099BBBBF00044DDF)) 
    empty_rd_adv_i_3
       (.I0(empty_rd_adv_reg),
        .I1(full_wr_reg_0[1]),
        .I2(Q[1]),
        .I3(empty_rd_adv_i_6_n_0),
        .I4(Q[2]),
        .I5(full_wr_reg_0[2]),
        .O(\ptr_rd_reg[1] ));
  LUT6 #(
    .INIT(64'hAAAABBFBFFFFEEAE)) 
    empty_rd_adv_i_6
       (.I0(Q[0]),
        .I1(p_0_in),
        .I2(empty_rd_adv_i_3_0),
        .I3(empty_rd_adv_i_3_1),
        .I4(empty_rd_adv_i_3_2),
        .I5(full_wr_reg_0[0]),
        .O(empty_rd_adv_i_6_n_0));
  LUT4 #(
    .INIT(16'h0096)) 
    full_wr_i_1
       (.I0(full_wr_i_2_n_0),
        .I1(full_wr_i_3_n_0),
        .I2(full_wr_reg_0[4]),
        .I3(full_wr_i_4_n_0),
        .O(full_wr0));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    full_wr_i_2
       (.I0(full_wr_reg_0[2]),
        .I1(ptr_wr0[2]),
        .I2(full_wr_i_5_n_0),
        .I3(ptr_wr0[3]),
        .I4(full_wr_reg_0[3]),
        .O(full_wr_i_2_n_0));
  LUT6 #(
    .INIT(64'h9555555555555555)) 
    full_wr_i_3
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(badr_1_sn_1),
        .I5(Q[2]),
        .O(full_wr_i_3_n_0));
  LUT6 #(
    .INIT(64'hEBFEFFBFFFBFEBFE)) 
    full_wr_i_4
       (.I0(full_wr_i_6_n_0),
        .I1(ptr_wr0[2]),
        .I2(full_wr_i_5_n_0),
        .I3(full_wr_reg_0[2]),
        .I4(ptr_wr0[3]),
        .I5(full_wr_reg_0[3]),
        .O(full_wr_i_4_n_0));
  LUT5 #(
    .INIT(32'h607E78FF)) 
    full_wr_i_5
       (.I0(Q[0]),
        .I1(badr_1_sn_1),
        .I2(Q[1]),
        .I3(full_wr_reg_0[1]),
        .I4(full_wr_reg_0[0]),
        .O(full_wr_i_5_n_0));
  LUT5 #(
    .INIT(32'h9FF6F99F)) 
    full_wr_i_6
       (.I0(full_wr_reg_0[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(badr_1_sn_1),
        .I4(full_wr_reg_0[0]),
        .O(full_wr_i_6_n_0));
  FDRE full_wr_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(full_wr0),
        .Q(snff_full),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    mem_reg_0_31_0_5_i_1
       (.I0(badr[1]),
        .I1(badr[2]),
        .I2(badr[0]),
        .I3(badr[3]),
        .I4(\ptr_wr_reg[2]_0 ),
        .I5(snff_full),
        .O(badr_1_sn_1));
  LUT2 #(
    .INIT(4'h6)) 
    \ptr_wr[0]_i_1 
       (.I0(Q[0]),
        .I1(badr_1_sn_1),
        .O(ptr_wr0[0]));
  LUT3 #(
    .INIT(8'h6A)) 
    \ptr_wr[1]_i_1 
       (.I0(Q[1]),
        .I1(badr_1_sn_1),
        .I2(Q[0]),
        .O(ptr_wr0[1]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \ptr_wr[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(badr_1_sn_1),
        .O(ptr_wr0[2]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \ptr_wr[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(badr_1_sn_1),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(ptr_wr0[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ptr_wr[4]_i_1 
       (.I0(Q[2]),
        .I1(badr_1_sn_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(ptr_wr0[4]));
  FDRE \ptr_wr_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ptr_wr0[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \ptr_wr_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ptr_wr0[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \ptr_wr_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ptr_wr0[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \ptr_wr_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ptr_wr0[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \ptr_wr_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ptr_wr0[4]),
        .Q(Q[4]),
        .R(SR));
endmodule

module sndg_fifo16s32_lram
   (drv_rd_reg_0,
    tscl_pwm_i_5_0,
    S,
    \tscl_cntus_reg[8] ,
    tscl_ovfus0_carry_i_15,
    \sndgfifo_reg[11] ,
    \tscl_cntus_reg[15] ,
    drv_rd_reg_1,
    drv_rd_reg_2,
    sctl_mscl,
    sctl_octv,
    \mem_rd_reg[11]_0 ,
    drv_rd_reg_3,
    drv_rd_reg_4,
    drv_rd_reg_5,
    drv_rd_reg_6,
    drv_rd_reg_7,
    drv_rd_reg_8,
    drv_rd_reg_9,
    clk,
    stab_ratef,
    p_1_in,
    p_0_in,
    tscl_ovfus0_carry_i_35,
    I6,
    bdatw,
    \mem_rd_reg[13]_0 ,
    Q);
  output drv_rd_reg_0;
  output tscl_pwm_i_5_0;
  output [2:0]S;
  output [2:0]\tscl_cntus_reg[8] ;
  output tscl_ovfus0_carry_i_15;
  output [3:0]\sndgfifo_reg[11] ;
  output [2:0]\tscl_cntus_reg[15] ;
  output drv_rd_reg_1;
  output [15:0]drv_rd_reg_2;
  output [3:0]sctl_mscl;
  output [3:0]sctl_octv;
  output [0:0]\mem_rd_reg[11]_0 ;
  output drv_rd_reg_3;
  output drv_rd_reg_4;
  output drv_rd_reg_5;
  output drv_rd_reg_6;
  output drv_rd_reg_7;
  output drv_rd_reg_8;
  input [0:0]drv_rd_reg_9;
  input clk;
  input [15:0]stab_ratef;
  input [13:0]p_1_in;
  input [0:0]p_0_in;
  input [14:0]tscl_ovfus0_carry_i_35;
  input I6;
  input [15:0]bdatw;
  input [4:0]\mem_rd_reg[13]_0 ;
  input [4:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire I6;
  wire [4:0]Q;
  wire [2:0]S;
  wire [15:0]bdatw;
  wire clk;
  wire drv_rd_reg_0;
  wire drv_rd_reg_1;
  wire [15:0]drv_rd_reg_2;
  wire drv_rd_reg_3;
  wire drv_rd_reg_4;
  wire drv_rd_reg_5;
  wire drv_rd_reg_6;
  wire drv_rd_reg_7;
  wire drv_rd_reg_8;
  wire [0:0]drv_rd_reg_9;
  wire [15:0]mem_rd;
  wire [15:0]mem_rd0;
  wire [0:0]\mem_rd_reg[11]_0 ;
  wire [4:0]\mem_rd_reg[13]_0 ;
  wire [0:0]p_0_in;
  wire [13:0]p_1_in;
  wire [3:0]sctl_mscl;
  wire [3:0]sctl_octv;
  wire [3:0]\sndgfifo_reg[11] ;
  wire [15:0]stab_ratef;
  wire [2:0]\tscl_cntus_reg[15] ;
  wire [2:0]\tscl_cntus_reg[8] ;
  wire tscl_ovfus0_carry_i_15;
  wire [14:0]tscl_ovfus0_carry_i_35;
  wire tscl_pwm_i_5_0;
  wire tscl_pwm_i_5_n_0;
  wire tscl_pwm_i_6_n_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE drv_rd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(drv_rd_reg_9),
        .Q(drv_rd_reg_0),
        .R(\<const0> ));
  FDRE \mem_rd_reg[0] 
       (.C(clk),
        .CE(drv_rd_reg_9),
        .D(mem_rd0[0]),
        .Q(mem_rd[0]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[10] 
       (.C(clk),
        .CE(drv_rd_reg_9),
        .D(mem_rd0[10]),
        .Q(mem_rd[10]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[11] 
       (.C(clk),
        .CE(drv_rd_reg_9),
        .D(mem_rd0[11]),
        .Q(\mem_rd_reg[11]_0 ),
        .R(\<const0> ));
  FDRE \mem_rd_reg[12] 
       (.C(clk),
        .CE(drv_rd_reg_9),
        .D(mem_rd0[12]),
        .Q(mem_rd[12]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[13] 
       (.C(clk),
        .CE(drv_rd_reg_9),
        .D(mem_rd0[13]),
        .Q(mem_rd[13]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[14] 
       (.C(clk),
        .CE(drv_rd_reg_9),
        .D(mem_rd0[14]),
        .Q(mem_rd[14]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[15] 
       (.C(clk),
        .CE(drv_rd_reg_9),
        .D(mem_rd0[15]),
        .Q(mem_rd[15]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[1] 
       (.C(clk),
        .CE(drv_rd_reg_9),
        .D(mem_rd0[1]),
        .Q(mem_rd[1]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[2] 
       (.C(clk),
        .CE(drv_rd_reg_9),
        .D(mem_rd0[2]),
        .Q(mem_rd[2]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[3] 
       (.C(clk),
        .CE(drv_rd_reg_9),
        .D(mem_rd0[3]),
        .Q(mem_rd[3]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[4] 
       (.C(clk),
        .CE(drv_rd_reg_9),
        .D(mem_rd0[4]),
        .Q(mem_rd[4]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[5] 
       (.C(clk),
        .CE(drv_rd_reg_9),
        .D(mem_rd0[5]),
        .Q(mem_rd[5]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[6] 
       (.C(clk),
        .CE(drv_rd_reg_9),
        .D(mem_rd0[6]),
        .Q(mem_rd[6]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[7] 
       (.C(clk),
        .CE(drv_rd_reg_9),
        .D(mem_rd0[7]),
        .Q(mem_rd[7]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[8] 
       (.C(clk),
        .CE(drv_rd_reg_9),
        .D(mem_rd0[8]),
        .Q(mem_rd[8]),
        .R(\<const0> ));
  FDRE \mem_rd_reg[9] 
       (.C(clk),
        .CE(drv_rd_reg_9),
        .D(mem_rd0[9]),
        .Q(mem_rd[9]),
        .R(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "sndg1pb/snff/lram/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M mem_reg_0_31_0_5
       (.ADDRA(\mem_rd_reg[13]_0 ),
        .ADDRB(\mem_rd_reg[13]_0 ),
        .ADDRC(\mem_rd_reg[13]_0 ),
        .ADDRD(Q),
        .DIA(bdatw[1:0]),
        .DIB(bdatw[3:2]),
        .DIC(bdatw[5:4]),
        .DID({\<const0> ,\<const0> }),
        .DOA(mem_rd0[1:0]),
        .DOB(mem_rd0[3:2]),
        .DOC(mem_rd0[5:4]),
        .WCLK(clk),
        .WE(I6));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "sndg1pb/snff/lram/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "15" *) 
  RAM32M mem_reg_0_31_12_15
       (.ADDRA(\mem_rd_reg[13]_0 ),
        .ADDRB(\mem_rd_reg[13]_0 ),
        .ADDRC(\mem_rd_reg[13]_0 ),
        .ADDRD(Q),
        .DIA(bdatw[13:12]),
        .DIB(bdatw[15:14]),
        .DIC({\<const0> ,\<const0> }),
        .DID({\<const0> ,\<const0> }),
        .DOA(mem_rd0[13:12]),
        .DOB(mem_rd0[15:14]),
        .WCLK(clk),
        .WE(I6));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "sndg1pb/snff/lram/mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M mem_reg_0_31_6_11
       (.ADDRA(\mem_rd_reg[13]_0 ),
        .ADDRB(\mem_rd_reg[13]_0 ),
        .ADDRC(\mem_rd_reg[13]_0 ),
        .ADDRD(Q),
        .DIA(bdatw[7:6]),
        .DIB(bdatw[9:8]),
        .DIC(bdatw[11:10]),
        .DID({\<const0> ,\<const0> }),
        .DOA(mem_rd0[7:6]),
        .DOB(mem_rd0[9:8]),
        .DOC(mem_rd0[11:10]),
        .WCLK(clk),
        .WE(I6));
  LUT2 #(
    .INIT(4'h8)) 
    \sndgfifo[0]_i_1 
       (.I0(mem_rd[0]),
        .I1(drv_rd_reg_0),
        .O(drv_rd_reg_2[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \sndgfifo[10]_i_1 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[10]),
        .O(drv_rd_reg_2[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \sndgfifo[11]_i_1 
       (.I0(drv_rd_reg_0),
        .I1(\mem_rd_reg[11]_0 ),
        .O(drv_rd_reg_2[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \sndgfifo[12]_i_1 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[12]),
        .O(drv_rd_reg_2[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \sndgfifo[13]_i_1 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[13]),
        .O(drv_rd_reg_2[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \sndgfifo[14]_i_1 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[14]),
        .O(drv_rd_reg_2[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \sndgfifo[15]_i_1 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[15]),
        .O(drv_rd_reg_2[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \sndgfifo[1]_i_1 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[1]),
        .O(drv_rd_reg_2[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \sndgfifo[2]_i_1 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[2]),
        .O(drv_rd_reg_2[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \sndgfifo[3]_i_1 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[3]),
        .O(drv_rd_reg_2[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \sndgfifo[4]_i_1 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[4]),
        .O(drv_rd_reg_2[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \sndgfifo[5]_i_1 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[5]),
        .O(drv_rd_reg_2[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \sndgfifo[6]_i_1 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[6]),
        .O(drv_rd_reg_2[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \sndgfifo[7]_i_1 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[7]),
        .O(drv_rd_reg_2[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \sndgfifo[8]_i_1 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[8]),
        .O(drv_rd_reg_2[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \sndgfifo[9]_i_1 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[9]),
        .O(drv_rd_reg_2[9]));
  LUT4 #(
    .INIT(16'h707F)) 
    tlen_clr_enb_r_i_2
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[7]),
        .I2(p_0_in),
        .I3(tscl_ovfus0_carry_i_35[6]),
        .O(drv_rd_reg_1));
  LUT4 #(
    .INIT(16'h8F80)) 
    \tlen_cnt128[1]_i_2 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[1]),
        .I2(p_0_in),
        .I3(tscl_ovfus0_carry_i_35[0]),
        .O(drv_rd_reg_8));
  LUT4 #(
    .INIT(16'h8F80)) 
    \tlen_cnt128[2]_i_2 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[2]),
        .I2(p_0_in),
        .I3(tscl_ovfus0_carry_i_35[1]),
        .O(drv_rd_reg_7));
  LUT4 #(
    .INIT(16'h8F80)) 
    \tlen_cnt128[3]_i_3 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[3]),
        .I2(p_0_in),
        .I3(tscl_ovfus0_carry_i_35[2]),
        .O(drv_rd_reg_6));
  LUT4 #(
    .INIT(16'h8F80)) 
    \tlen_cnt128[4]_i_2 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[4]),
        .I2(p_0_in),
        .I3(tscl_ovfus0_carry_i_35[3]),
        .O(drv_rd_reg_5));
  LUT4 #(
    .INIT(16'h8F80)) 
    \tlen_cnt128[5]_i_3 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[5]),
        .I2(p_0_in),
        .I3(tscl_ovfus0_carry_i_35[4]),
        .O(drv_rd_reg_4));
  LUT4 #(
    .INIT(16'h8F80)) 
    \tlen_cnt128[6]_i_2 
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[6]),
        .I2(p_0_in),
        .I3(tscl_ovfus0_carry_i_35[5]),
        .O(drv_rd_reg_3));
  LUT4 #(
    .INIT(16'h9009)) 
    tscl_ovfus0_carry__0_i_5
       (.I0(stab_ratef[15]),
        .I1(p_1_in[13]),
        .I2(stab_ratef[14]),
        .I3(p_1_in[12]),
        .O(\sndgfifo_reg[11] [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    tscl_ovfus0_carry__0_i_6
       (.I0(stab_ratef[13]),
        .I1(p_1_in[11]),
        .I2(stab_ratef[12]),
        .I3(p_1_in[10]),
        .O(\sndgfifo_reg[11] [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    tscl_ovfus0_carry__0_i_7
       (.I0(stab_ratef[11]),
        .I1(p_1_in[9]),
        .I2(stab_ratef[10]),
        .I3(p_1_in[8]),
        .O(\sndgfifo_reg[11] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    tscl_ovfus0_carry__0_i_8
       (.I0(stab_ratef[9]),
        .I1(p_1_in[7]),
        .I2(stab_ratef[8]),
        .I3(p_1_in[6]),
        .O(\sndgfifo_reg[11] [0]));
  LUT4 #(
    .INIT(16'h8F80)) 
    tscl_ovfus0_carry_i_20
       (.I0(drv_rd_reg_0),
        .I1(\mem_rd_reg[11]_0 ),
        .I2(p_0_in),
        .I3(tscl_ovfus0_carry_i_35[10]),
        .O(sctl_octv[3]));
  LUT4 #(
    .INIT(16'h8F80)) 
    tscl_ovfus0_carry_i_22
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[8]),
        .I2(p_0_in),
        .I3(tscl_ovfus0_carry_i_35[7]),
        .O(sctl_octv[0]));
  LUT4 #(
    .INIT(16'h8F80)) 
    tscl_ovfus0_carry_i_26
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[9]),
        .I2(p_0_in),
        .I3(tscl_ovfus0_carry_i_35[8]),
        .O(sctl_octv[1]));
  LUT4 #(
    .INIT(16'h8F80)) 
    tscl_ovfus0_carry_i_33
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[10]),
        .I2(p_0_in),
        .I3(tscl_ovfus0_carry_i_35[9]),
        .O(sctl_octv[2]));
  LUT4 #(
    .INIT(16'h8F80)) 
    tscl_ovfus0_carry_i_43
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[13]),
        .I2(p_0_in),
        .I3(tscl_ovfus0_carry_i_35[12]),
        .O(sctl_mscl[1]));
  LUT4 #(
    .INIT(16'h8F80)) 
    tscl_ovfus0_carry_i_44
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[12]),
        .I2(p_0_in),
        .I3(tscl_ovfus0_carry_i_35[11]),
        .O(sctl_mscl[0]));
  LUT4 #(
    .INIT(16'h8F80)) 
    tscl_ovfus0_carry_i_45
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[14]),
        .I2(p_0_in),
        .I3(tscl_ovfus0_carry_i_35[13]),
        .O(sctl_mscl[2]));
  LUT4 #(
    .INIT(16'h8F80)) 
    tscl_ovfus0_carry_i_46
       (.I0(drv_rd_reg_0),
        .I1(mem_rd[15]),
        .I2(p_0_in),
        .I3(tscl_ovfus0_carry_i_35[14]),
        .O(sctl_mscl[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    tscl_ovfus0_carry_i_5
       (.I0(stab_ratef[7]),
        .I1(p_1_in[5]),
        .I2(stab_ratef[6]),
        .I3(p_1_in[4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    tscl_ovfus0_carry_i_6
       (.I0(stab_ratef[5]),
        .I1(p_1_in[3]),
        .I2(stab_ratef[4]),
        .I3(p_1_in[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    tscl_ovfus0_carry_i_7
       (.I0(stab_ratef[3]),
        .I1(p_1_in[1]),
        .I2(stab_ratef[2]),
        .I3(p_1_in[0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    tscl_pwm0_carry__0_i_6
       (.I0(stab_ratef[14]),
        .I1(p_1_in[11]),
        .I2(stab_ratef[13]),
        .I3(p_1_in[10]),
        .O(\tscl_cntus_reg[15] [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    tscl_pwm0_carry__0_i_7
       (.I0(stab_ratef[12]),
        .I1(p_1_in[9]),
        .I2(stab_ratef[11]),
        .I3(p_1_in[8]),
        .O(\tscl_cntus_reg[15] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    tscl_pwm0_carry__0_i_8
       (.I0(stab_ratef[10]),
        .I1(p_1_in[7]),
        .I2(stab_ratef[9]),
        .I3(p_1_in[6]),
        .O(\tscl_cntus_reg[15] [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    tscl_pwm0_carry_i_5
       (.I0(stab_ratef[8]),
        .I1(p_1_in[5]),
        .I2(stab_ratef[7]),
        .I3(p_1_in[4]),
        .O(\tscl_cntus_reg[8] [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    tscl_pwm0_carry_i_6
       (.I0(stab_ratef[6]),
        .I1(p_1_in[3]),
        .I2(stab_ratef[5]),
        .I3(p_1_in[2]),
        .O(\tscl_cntus_reg[8] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    tscl_pwm0_carry_i_7
       (.I0(stab_ratef[4]),
        .I1(p_1_in[1]),
        .I2(stab_ratef[3]),
        .I3(p_1_in[0]),
        .O(\tscl_cntus_reg[8] [0]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    tscl_pwm_i_2
       (.I0(stab_ratef[13]),
        .I1(stab_ratef[14]),
        .I2(stab_ratef[8]),
        .I3(stab_ratef[12]),
        .I4(tscl_pwm_i_5_n_0),
        .O(tscl_pwm_i_5_0));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    tscl_pwm_i_3
       (.I0(tscl_pwm_i_6_n_0),
        .I1(stab_ratef[7]),
        .I2(stab_ratef[4]),
        .I3(stab_ratef[2]),
        .I4(stab_ratef[3]),
        .O(tscl_ovfus0_carry_i_15));
  LUT4 #(
    .INIT(16'hFFFD)) 
    tscl_pwm_i_5
       (.I0(stab_ratef[0]),
        .I1(stab_ratef[15]),
        .I2(stab_ratef[11]),
        .I3(stab_ratef[6]),
        .O(tscl_pwm_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tscl_pwm_i_6
       (.I0(stab_ratef[10]),
        .I1(stab_ratef[9]),
        .I2(stab_ratef[5]),
        .I3(stab_ratef[1]),
        .O(tscl_pwm_i_6_n_0));
endmodule

module sndg_fsm
   (\stat_reg[1]_0 ,
    SR,
    E,
    \stat_reg[1]_1 ,
    rst_n_0,
    \stat_reg[1]_2 ,
    bdatr,
    D,
    \sndgctl_reg[0] ,
    empty_rd_reg,
    clk,
    rst_n,
    \tlen_cntus_reg[15] ,
    CO,
    \stat_reg[0]_0 ,
    \stat_reg[0]_1 ,
    snff_empt,
    Q,
    \bdatr[1] ,
    rd_sndgt128,
    rd_sndgfifo,
    \bdatr[1]_0 ,
    rd_sndgctl,
    \stat_reg[1]_3 ,
    \tlen_cnt128_reg[0] ,
    \tlen_cnt128_reg[0]_0 );
  output \stat_reg[1]_0 ;
  output [0:0]SR;
  output [0:0]E;
  output [0:0]\stat_reg[1]_1 ;
  output [0:0]rst_n_0;
  output \stat_reg[1]_2 ;
  output [0:0]bdatr;
  output [0:0]D;
  output \sndgctl_reg[0] ;
  output empty_rd_reg;
  input clk;
  input rst_n;
  input \tlen_cntus_reg[15] ;
  input [0:0]CO;
  input \stat_reg[0]_0 ;
  input \stat_reg[0]_1 ;
  input snff_empt;
  input [0:0]Q;
  input [0:0]\bdatr[1] ;
  input rd_sndgt128;
  input rd_sndgfifo;
  input [1:0]\bdatr[1]_0 ;
  input rd_sndgctl;
  input \stat_reg[1]_3 ;
  input [0:0]\tlen_cnt128_reg[0] ;
  input [0:0]\tlen_cnt128_reg[0]_0 ;

  wire \<const1> ;
  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]bdatr;
  wire [0:0]\bdatr[1] ;
  wire [1:0]\bdatr[1]_0 ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire clk;
  wire empty_rd_reg;
  wire rd_sndgctl;
  wire rd_sndgfifo;
  wire rd_sndgt128;
  wire rst_n;
  wire [0:0]rst_n_0;
  wire \sndgctl_reg[0] ;
  wire snff_empt;
  wire [1:1]stat_nx;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire \stat_reg[1]_0 ;
  wire [0:0]\stat_reg[1]_1 ;
  wire \stat_reg[1]_2 ;
  wire \stat_reg[1]_3 ;
  wire [0:0]\tlen_cnt128_reg[0] ;
  wire [0:0]\tlen_cnt128_reg[0]_0 ;
  wire \tlen_cntus_reg[15] ;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h55555555CFC0C0C0)) 
    \bdatr[1]_INST_0 
       (.I0(\bdatr[1]_INST_0_i_1_n_0 ),
        .I1(\bdatr[1] ),
        .I2(rd_sndgt128),
        .I3(rd_sndgfifo),
        .I4(\bdatr[1]_0 [1]),
        .I5(rd_sndgctl),
        .O(bdatr));
  LUT5 #(
    .INIT(32'hEF33CF33)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(\stat_reg[1]_3 ),
        .I1(E),
        .I2(Q),
        .I3(\stat_reg[1]_0 ),
        .I4(snff_empt),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000005D00000000)) 
    drv_rd_i_1
       (.I0(\stat_reg[1]_0 ),
        .I1(\stat_reg[0]_0 ),
        .I2(\stat_reg[0]_1 ),
        .I3(snff_empt),
        .I4(E),
        .I5(Q),
        .O(\stat_reg[1]_1 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \ptr_rd[0]_i_2 
       (.I0(Q),
        .I1(E),
        .I2(snff_empt),
        .O(\sndgctl_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \sndgctl[7]_i_1 
       (.I0(rst_n),
        .O(SR));
  LUT4 #(
    .INIT(16'h0A4A)) 
    \stat[1]_i_1 
       (.I0(E),
        .I1(Q),
        .I2(\stat_reg[1]_0 ),
        .I3(\stat_reg[1]_3 ),
        .O(stat_nx));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\stat_reg[1]_1 ),
        .Q(E),
        .R(SR));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx),
        .Q(\stat_reg[1]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'hF704F7F7F7040404)) 
    \tlen_cnt128[0]_i_1 
       (.I0(\tlen_cnt128_reg[0] ),
        .I1(rst_n),
        .I2(\stat_reg[1]_2 ),
        .I3(\tlen_cnt128_reg[0]_0 ),
        .I4(E),
        .I5(\bdatr[1]_0 [0]),
        .O(D));
  LUT4 #(
    .INIT(16'hF4FF)) 
    \tlen_cnt128[7]_i_1 
       (.I0(\tlen_cntus_reg[15] ),
        .I1(CO),
        .I2(\stat_reg[1]_2 ),
        .I3(rst_n),
        .O(rst_n_0));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \tlen_cntbcd[7]_i_3 
       (.I0(\stat_reg[1]_3 ),
        .I1(\stat_reg[1]_0 ),
        .I2(Q),
        .I3(E),
        .O(\stat_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hCCBFCC3FFFFFFFFF)) 
    \tscl_cntbcd[7]_i_3 
       (.I0(snff_empt),
        .I1(\stat_reg[1]_0 ),
        .I2(Q),
        .I3(E),
        .I4(\stat_reg[1]_3 ),
        .I5(rst_n),
        .O(empty_rd_reg));
endmodule

module sndg_sclfrq
   (stab_ratef,
    sctl_octv,
    sctl_mscl,
    tscl_pwm_i_5,
    p_0_in,
    tscl_pwm_i_5_0,
    drv_rd);
  output [15:0]stab_ratef;
  input [3:0]sctl_octv;
  input [3:0]sctl_mscl;
  input [0:0]tscl_pwm_i_5;
  input [0:0]p_0_in;
  input [0:0]tscl_pwm_i_5_0;
  input drv_rd;

  wire drv_rd;
  wire [0:0]p_0_in;
  wire [3:0]sctl_mscl;
  wire [3:0]sctl_octv;
  wire [15:0]stab_ratef;
  wire tscl_ovfus0_carry__0_i_19_n_0;
  wire tscl_ovfus0_carry__0_i_20_n_0;
  wire tscl_ovfus0_carry__0_i_21_n_0;
  wire tscl_ovfus0_carry__0_i_22_n_0;
  wire tscl_ovfus0_carry__0_i_23_n_0;
  wire tscl_ovfus0_carry_i_19_n_0;
  wire tscl_ovfus0_carry_i_21_n_0;
  wire tscl_ovfus0_carry_i_23_n_0;
  wire tscl_ovfus0_carry_i_24_n_0;
  wire tscl_ovfus0_carry_i_25_n_0;
  wire tscl_ovfus0_carry_i_27_n_0;
  wire tscl_ovfus0_carry_i_28_n_0;
  wire tscl_ovfus0_carry_i_29_n_0;
  wire tscl_ovfus0_carry_i_30_n_0;
  wire tscl_ovfus0_carry_i_31_n_0;
  wire tscl_ovfus0_carry_i_32_n_0;
  wire tscl_ovfus0_carry_i_34_n_0;
  wire tscl_ovfus0_carry_i_35_n_0;
  wire tscl_ovfus0_carry_i_36_n_0;
  wire tscl_ovfus0_carry_i_37_n_0;
  wire tscl_ovfus0_carry_i_38_n_0;
  wire tscl_ovfus0_carry_i_39_n_0;
  wire tscl_ovfus0_carry_i_40_n_0;
  wire tscl_ovfus0_carry_i_41_n_0;
  wire tscl_ovfus0_carry_i_42_n_0;
  wire tscl_ovfus0_carry_i_47_n_0;
  wire tscl_ovfus0_carry_i_48_n_0;
  wire tscl_ovfus0_carry_i_49_n_0;
  wire tscl_ovfus0_carry_i_50_n_0;
  wire [0:0]tscl_pwm_i_5;
  wire [0:0]tscl_pwm_i_5_0;

  LUT6 #(
    .INIT(64'h0004440444044404)) 
    tscl_ovfus0_carry__0_i_10
       (.I0(sctl_octv[0]),
        .I1(tscl_ovfus0_carry_i_19_n_0),
        .I2(tscl_pwm_i_5),
        .I3(p_0_in),
        .I4(tscl_pwm_i_5_0),
        .I5(drv_rd),
        .O(stab_ratef[15]));
  LUT4 #(
    .INIT(16'h00E2)) 
    tscl_ovfus0_carry__0_i_11
       (.I0(tscl_ovfus0_carry_i_24_n_0),
        .I1(sctl_octv[0]),
        .I2(tscl_ovfus0_carry_i_19_n_0),
        .I3(sctl_octv[3]),
        .O(stab_ratef[14]));
  LUT4 #(
    .INIT(16'h00E2)) 
    tscl_ovfus0_carry__0_i_12
       (.I0(tscl_ovfus0_carry__0_i_19_n_0),
        .I1(sctl_octv[0]),
        .I2(tscl_ovfus0_carry_i_24_n_0),
        .I3(sctl_octv[3]),
        .O(stab_ratef[13]));
  LUT4 #(
    .INIT(16'h00E2)) 
    tscl_ovfus0_carry__0_i_14
       (.I0(tscl_ovfus0_carry__0_i_20_n_0),
        .I1(sctl_octv[0]),
        .I2(tscl_ovfus0_carry__0_i_19_n_0),
        .I3(sctl_octv[3]),
        .O(stab_ratef[12]));
  LUT4 #(
    .INIT(16'h00E2)) 
    tscl_ovfus0_carry__0_i_15
       (.I0(tscl_ovfus0_carry__0_i_21_n_0),
        .I1(sctl_octv[0]),
        .I2(tscl_ovfus0_carry__0_i_20_n_0),
        .I3(sctl_octv[3]),
        .O(stab_ratef[11]));
  LUT4 #(
    .INIT(16'h00E2)) 
    tscl_ovfus0_carry__0_i_16
       (.I0(tscl_ovfus0_carry__0_i_22_n_0),
        .I1(sctl_octv[0]),
        .I2(tscl_ovfus0_carry__0_i_21_n_0),
        .I3(sctl_octv[3]),
        .O(stab_ratef[10]));
  LUT4 #(
    .INIT(16'h00E2)) 
    tscl_ovfus0_carry__0_i_17
       (.I0(tscl_ovfus0_carry__0_i_23_n_0),
        .I1(sctl_octv[0]),
        .I2(tscl_ovfus0_carry__0_i_22_n_0),
        .I3(sctl_octv[3]),
        .O(stab_ratef[9]));
  LUT4 #(
    .INIT(16'h00E2)) 
    tscl_ovfus0_carry__0_i_18
       (.I0(tscl_ovfus0_carry_i_21_n_0),
        .I1(sctl_octv[0]),
        .I2(tscl_ovfus0_carry__0_i_23_n_0),
        .I3(sctl_octv[3]),
        .O(stab_ratef[8]));
  LUT6 #(
    .INIT(64'h000000003A3B3B68)) 
    tscl_ovfus0_carry__0_i_19
       (.I0(sctl_octv[1]),
        .I1(sctl_mscl[3]),
        .I2(sctl_mscl[2]),
        .I3(sctl_mscl[0]),
        .I4(sctl_mscl[1]),
        .I5(sctl_octv[2]),
        .O(tscl_ovfus0_carry__0_i_19_n_0));
  LUT6 #(
    .INIT(64'h0000000001321E64)) 
    tscl_ovfus0_carry__0_i_20
       (.I0(sctl_octv[1]),
        .I1(sctl_mscl[3]),
        .I2(sctl_mscl[0]),
        .I3(sctl_mscl[2]),
        .I4(sctl_mscl[1]),
        .I5(sctl_octv[2]),
        .O(tscl_ovfus0_carry__0_i_20_n_0));
  LUT6 #(
    .INIT(64'h0003776544554760)) 
    tscl_ovfus0_carry__0_i_21
       (.I0(sctl_octv[1]),
        .I1(sctl_octv[2]),
        .I2(sctl_mscl[1]),
        .I3(sctl_mscl[0]),
        .I4(sctl_mscl[3]),
        .I5(sctl_mscl[2]),
        .O(tscl_ovfus0_carry__0_i_21_n_0));
  LUT6 #(
    .INIT(64'h0013071303752440)) 
    tscl_ovfus0_carry__0_i_22
       (.I0(sctl_octv[1]),
        .I1(sctl_octv[2]),
        .I2(sctl_mscl[1]),
        .I3(sctl_mscl[2]),
        .I4(sctl_mscl[0]),
        .I5(sctl_mscl[3]),
        .O(tscl_ovfus0_carry__0_i_22_n_0));
  LUT6 #(
    .INIT(64'h009907BBEE8FDAC0)) 
    tscl_ovfus0_carry__0_i_23
       (.I0(sctl_octv[1]),
        .I1(sctl_octv[2]),
        .I2(sctl_mscl[1]),
        .I3(sctl_mscl[2]),
        .I4(sctl_mscl[0]),
        .I5(sctl_mscl[3]),
        .O(tscl_ovfus0_carry__0_i_23_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    tscl_ovfus0_carry_i_10
       (.I0(tscl_ovfus0_carry_i_19_n_0),
        .I1(sctl_octv[3]),
        .I2(tscl_ovfus0_carry_i_21_n_0),
        .I3(sctl_octv[0]),
        .I4(tscl_ovfus0_carry_i_23_n_0),
        .O(stab_ratef[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    tscl_ovfus0_carry_i_11
       (.I0(tscl_ovfus0_carry_i_24_n_0),
        .I1(sctl_octv[3]),
        .I2(tscl_ovfus0_carry_i_23_n_0),
        .I3(sctl_octv[0]),
        .I4(tscl_ovfus0_carry_i_25_n_0),
        .O(stab_ratef[6]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    tscl_ovfus0_carry_i_12
       (.I0(sctl_octv[1]),
        .I1(tscl_ovfus0_carry_i_27_n_0),
        .I2(sctl_octv[3]),
        .I3(tscl_ovfus0_carry_i_25_n_0),
        .I4(sctl_octv[0]),
        .I5(tscl_ovfus0_carry_i_28_n_0),
        .O(stab_ratef[5]));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    tscl_ovfus0_carry_i_14
       (.I0(tscl_ovfus0_carry_i_29_n_0),
        .I1(sctl_octv[3]),
        .I2(tscl_ovfus0_carry_i_30_n_0),
        .I3(sctl_octv[0]),
        .I4(tscl_ovfus0_carry_i_31_n_0),
        .O(stab_ratef[4]));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    tscl_ovfus0_carry_i_15
       (.I0(sctl_octv[1]),
        .I1(tscl_ovfus0_carry_i_32_n_0),
        .I2(sctl_octv[2]),
        .I3(sctl_octv[0]),
        .I4(sctl_octv[3]),
        .I5(tscl_ovfus0_carry_i_34_n_0),
        .O(stab_ratef[3]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    tscl_ovfus0_carry_i_16
       (.I0(sctl_octv[1]),
        .I1(tscl_ovfus0_carry_i_35_n_0),
        .I2(sctl_octv[2]),
        .I3(sctl_octv[0]),
        .I4(sctl_octv[3]),
        .I5(tscl_ovfus0_carry_i_36_n_0),
        .O(stab_ratef[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    tscl_ovfus0_carry_i_17
       (.I0(tscl_ovfus0_carry_i_37_n_0),
        .I1(sctl_octv[3]),
        .I2(tscl_ovfus0_carry_i_38_n_0),
        .I3(sctl_octv[0]),
        .I4(tscl_ovfus0_carry_i_39_n_0),
        .O(stab_ratef[1]));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    tscl_ovfus0_carry_i_18
       (.I0(tscl_ovfus0_carry_i_40_n_0),
        .I1(sctl_octv[3]),
        .I2(tscl_ovfus0_carry_i_41_n_0),
        .I3(sctl_octv[0]),
        .I4(tscl_ovfus0_carry_i_42_n_0),
        .O(stab_ratef[0]));
  LUT6 #(
    .INIT(64'h0000000000555554)) 
    tscl_ovfus0_carry_i_19
       (.I0(sctl_octv[2]),
        .I1(sctl_mscl[1]),
        .I2(sctl_mscl[0]),
        .I3(sctl_mscl[2]),
        .I4(sctl_mscl[3]),
        .I5(sctl_octv[1]),
        .O(tscl_ovfus0_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h000E07482627EA90)) 
    tscl_ovfus0_carry_i_21
       (.I0(sctl_octv[1]),
        .I1(sctl_octv[2]),
        .I2(sctl_mscl[1]),
        .I3(sctl_mscl[0]),
        .I4(sctl_mscl[3]),
        .I5(sctl_mscl[2]),
        .O(tscl_ovfus0_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'h00DD0FB5221F6680)) 
    tscl_ovfus0_carry_i_23
       (.I0(sctl_octv[1]),
        .I1(sctl_octv[2]),
        .I2(sctl_mscl[1]),
        .I3(sctl_mscl[3]),
        .I4(sctl_mscl[0]),
        .I5(sctl_mscl[2]),
        .O(tscl_ovfus0_carry_i_23_n_0));
  LUT6 #(
    .INIT(64'h0000000000110504)) 
    tscl_ovfus0_carry_i_24
       (.I0(sctl_octv[2]),
        .I1(sctl_mscl[1]),
        .I2(sctl_mscl[3]),
        .I3(sctl_mscl[0]),
        .I4(sctl_mscl[2]),
        .I5(sctl_octv[1]),
        .O(tscl_ovfus0_carry_i_24_n_0));
  LUT6 #(
    .INIT(64'h000C4D4F1E91D530)) 
    tscl_ovfus0_carry_i_25
       (.I0(sctl_octv[1]),
        .I1(sctl_octv[2]),
        .I2(sctl_mscl[1]),
        .I3(sctl_mscl[0]),
        .I4(sctl_mscl[2]),
        .I5(sctl_mscl[3]),
        .O(tscl_ovfus0_carry_i_25_n_0));
  LUT5 #(
    .INIT(32'h00004558)) 
    tscl_ovfus0_carry_i_27
       (.I0(sctl_mscl[3]),
        .I1(sctl_mscl[2]),
        .I2(sctl_mscl[0]),
        .I3(sctl_mscl[1]),
        .I4(sctl_octv[2]),
        .O(tscl_ovfus0_carry_i_27_n_0));
  LUT6 #(
    .INIT(64'h000E45CDBA7B2F10)) 
    tscl_ovfus0_carry_i_28
       (.I0(sctl_octv[1]),
        .I1(sctl_octv[2]),
        .I2(sctl_mscl[1]),
        .I3(sctl_mscl[0]),
        .I4(sctl_mscl[2]),
        .I5(sctl_mscl[3]),
        .O(tscl_ovfus0_carry_i_28_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBEBBEB)) 
    tscl_ovfus0_carry_i_29
       (.I0(sctl_octv[2]),
        .I1(sctl_mscl[1]),
        .I2(sctl_mscl[0]),
        .I3(sctl_mscl[3]),
        .I4(sctl_mscl[2]),
        .I5(sctl_octv[1]),
        .O(tscl_ovfus0_carry_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFEBA7B47CD2F1F)) 
    tscl_ovfus0_carry_i_30
       (.I0(sctl_octv[1]),
        .I1(sctl_octv[2]),
        .I2(sctl_mscl[1]),
        .I3(sctl_mscl[0]),
        .I4(sctl_mscl[3]),
        .I5(sctl_mscl[2]),
        .O(tscl_ovfus0_carry_i_30_n_0));
  LUT6 #(
    .INIT(64'hFF2DF8329BBA8F7F)) 
    tscl_ovfus0_carry_i_31
       (.I0(sctl_octv[1]),
        .I1(sctl_octv[2]),
        .I2(sctl_mscl[1]),
        .I3(sctl_mscl[3]),
        .I4(sctl_mscl[0]),
        .I5(sctl_mscl[2]),
        .O(tscl_ovfus0_carry_i_31_n_0));
  LUT4 #(
    .INIT(16'hF1DD)) 
    tscl_ovfus0_carry_i_32
       (.I0(sctl_mscl[1]),
        .I1(sctl_mscl[3]),
        .I2(sctl_mscl[2]),
        .I3(sctl_mscl[0]),
        .O(tscl_ovfus0_carry_i_32_n_0));
  MUXF7 tscl_ovfus0_carry_i_34
       (.I0(tscl_ovfus0_carry_i_47_n_0),
        .I1(tscl_ovfus0_carry_i_48_n_0),
        .O(tscl_ovfus0_carry_i_34_n_0),
        .S(sctl_octv[0]));
  LUT4 #(
    .INIT(16'h3770)) 
    tscl_ovfus0_carry_i_35
       (.I0(sctl_mscl[1]),
        .I1(sctl_mscl[2]),
        .I2(sctl_mscl[0]),
        .I3(sctl_mscl[3]),
        .O(tscl_ovfus0_carry_i_35_n_0));
  MUXF7 tscl_ovfus0_carry_i_36
       (.I0(tscl_ovfus0_carry_i_49_n_0),
        .I1(tscl_ovfus0_carry_i_50_n_0),
        .O(tscl_ovfus0_carry_i_36_n_0),
        .S(sctl_octv[0]));
  LUT6 #(
    .INIT(64'h0000000005151140)) 
    tscl_ovfus0_carry_i_37
       (.I0(sctl_octv[2]),
        .I1(sctl_mscl[1]),
        .I2(sctl_mscl[2]),
        .I3(sctl_mscl[0]),
        .I4(sctl_mscl[3]),
        .I5(sctl_octv[1]),
        .O(tscl_ovfus0_carry_i_37_n_0));
  LUT6 #(
    .INIT(64'h0003DBAC211AFDB0)) 
    tscl_ovfus0_carry_i_38
       (.I0(sctl_octv[1]),
        .I1(sctl_octv[2]),
        .I2(sctl_mscl[1]),
        .I3(sctl_mscl[0]),
        .I4(sctl_mscl[3]),
        .I5(sctl_mscl[2]),
        .O(tscl_ovfus0_carry_i_38_n_0));
  LUT6 #(
    .INIT(64'h002227387A5D9088)) 
    tscl_ovfus0_carry_i_39
       (.I0(sctl_octv[1]),
        .I1(sctl_mscl[1]),
        .I2(sctl_octv[2]),
        .I3(sctl_mscl[0]),
        .I4(sctl_mscl[2]),
        .I5(sctl_mscl[3]),
        .O(tscl_ovfus0_carry_i_39_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEAFFFBF)) 
    tscl_ovfus0_carry_i_40
       (.I0(sctl_octv[2]),
        .I1(sctl_mscl[1]),
        .I2(sctl_mscl[3]),
        .I3(sctl_mscl[2]),
        .I4(sctl_mscl[0]),
        .I5(sctl_octv[1]),
        .O(tscl_ovfus0_carry_i_40_n_0));
  LUT6 #(
    .INIT(64'hF5F9F28864E62A5F)) 
    tscl_ovfus0_carry_i_41
       (.I0(sctl_octv[1]),
        .I1(sctl_octv[2]),
        .I2(sctl_mscl[2]),
        .I3(sctl_mscl[1]),
        .I4(sctl_mscl[0]),
        .I5(sctl_mscl[3]),
        .O(tscl_ovfus0_carry_i_41_n_0));
  LUT6 #(
    .INIT(64'hFF62F65072E2652F)) 
    tscl_ovfus0_carry_i_42
       (.I0(sctl_octv[1]),
        .I1(sctl_octv[2]),
        .I2(sctl_mscl[1]),
        .I3(sctl_mscl[3]),
        .I4(sctl_mscl[0]),
        .I5(sctl_mscl[2]),
        .O(tscl_ovfus0_carry_i_42_n_0));
  LUT6 #(
    .INIT(64'hFFFD8F9A75E64E7F)) 
    tscl_ovfus0_carry_i_47
       (.I0(sctl_octv[1]),
        .I1(sctl_octv[2]),
        .I2(sctl_mscl[1]),
        .I3(sctl_mscl[0]),
        .I4(sctl_mscl[2]),
        .I5(sctl_mscl[3]),
        .O(tscl_ovfus0_carry_i_47_n_0));
  LUT6 #(
    .INIT(64'hFF2DF87299BA8F7F)) 
    tscl_ovfus0_carry_i_48
       (.I0(sctl_octv[1]),
        .I1(sctl_octv[2]),
        .I2(sctl_mscl[1]),
        .I3(sctl_mscl[3]),
        .I4(sctl_mscl[0]),
        .I5(sctl_mscl[2]),
        .O(tscl_ovfus0_carry_i_48_n_0));
  LUT6 #(
    .INIT(64'h0001DBFC231E7DB0)) 
    tscl_ovfus0_carry_i_49
       (.I0(sctl_octv[1]),
        .I1(sctl_octv[2]),
        .I2(sctl_mscl[1]),
        .I3(sctl_mscl[0]),
        .I4(sctl_mscl[3]),
        .I5(sctl_mscl[2]),
        .O(tscl_ovfus0_carry_i_49_n_0));
  LUT6 #(
    .INIT(64'h000D8D9E75B64E70)) 
    tscl_ovfus0_carry_i_50
       (.I0(sctl_octv[1]),
        .I1(sctl_octv[2]),
        .I2(sctl_mscl[1]),
        .I3(sctl_mscl[0]),
        .I4(sctl_mscl[2]),
        .I5(sctl_mscl[3]),
        .O(tscl_ovfus0_carry_i_50_n_0));
endmodule

module sndg_tmlen
   (CO,
    tlen_clr_enb_r,
    O,
    \tlen_cntus_reg[12]_0 ,
    \tlen_cntus_reg[15]_0 ,
    \tlen_cnt128_reg[4]_0 ,
    simumd_0,
    simumd_1,
    \ptr_rd_reg[0] ,
    D,
    \tlen_cnt128_reg[0]_0 ,
    \tlen_cnt128_reg[6]_0 ,
    S,
    \tlen_cntus_reg[15]_1 ,
    clk,
    tlen_clr_enb_r_reg_0,
    rst_n,
    \tlen_cntbcd_reg[0]_0 ,
    Q,
    \ptr_rd_reg[0]_0 ,
    p_0_in,
    \tlen_cnt128_reg[1]_0 ,
    \tlen_cnt128_reg[2]_0 ,
    \tlen_cnt128_reg[3]_0 ,
    \tlen_cnt128_reg[4]_1 ,
    \tlen_cnt128_reg[5]_0 ,
    \tlen_cnt128_reg[6]_1 ,
    simumd,
    clk_mhz,
    tlen_ovfus0_carry_0,
    E,
    \tlen_cnt128_reg[0]_1 );
  output [0:0]CO;
  output tlen_clr_enb_r;
  output [2:0]O;
  output [3:0]\tlen_cntus_reg[12]_0 ;
  output [2:0]\tlen_cntus_reg[15]_0 ;
  output \tlen_cnt128_reg[4]_0 ;
  output simumd_0;
  output simumd_1;
  output \ptr_rd_reg[0] ;
  output [0:0]D;
  output [0:0]\tlen_cnt128_reg[0]_0 ;
  output \tlen_cnt128_reg[6]_0 ;
  input [1:0]S;
  input [1:0]\tlen_cntus_reg[15]_1 ;
  input clk;
  input tlen_clr_enb_r_reg_0;
  input rst_n;
  input \tlen_cntbcd_reg[0]_0 ;
  input [0:0]Q;
  input \ptr_rd_reg[0]_0 ;
  input [0:0]p_0_in;
  input \tlen_cnt128_reg[1]_0 ;
  input \tlen_cnt128_reg[2]_0 ;
  input \tlen_cnt128_reg[3]_0 ;
  input \tlen_cnt128_reg[4]_1 ;
  input \tlen_cnt128_reg[5]_0 ;
  input \tlen_cnt128_reg[6]_1 ;
  input simumd;
  input [7:0]clk_mhz;
  input [5:0]tlen_ovfus0_carry_0;
  input [0:0]E;
  input [0:0]\tlen_cnt128_reg[0]_1 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]O;
  wire [0:0]Q;
  wire [1:0]S;
  wire clk;
  wire [7:0]clk_mhz;
  wire drv_rd_i_4_n_0;
  wire drv_rd_i_5_n_0;
  wire drv_rd_i_6_n_0;
  wire drv_rd_i_7_n_0;
  wire drv_rd_i_8_n_0;
  wire drv_rd_i_9_n_0;
  wire [0:0]p_0_in;
  wire [3:0]p_0_in_0;
  wire \ptr_rd[0]_i_3_n_0 ;
  wire \ptr_rd_reg[0] ;
  wire \ptr_rd_reg[0]_0 ;
  wire rst_n;
  wire simumd;
  wire simumd_0;
  wire simumd_1;
  wire tlen_clr_enb_r;
  wire tlen_clr_enb_r_i_1_n_0;
  wire tlen_clr_enb_r_i_3_n_0;
  wire tlen_clr_enb_r_reg_0;
  wire [7:1]tlen_cnt128;
  wire \tlen_cnt128[1]_i_1_n_0 ;
  wire \tlen_cnt128[2]_i_1_n_0 ;
  wire \tlen_cnt128[3]_i_1_n_0 ;
  wire \tlen_cnt128[3]_i_2_n_0 ;
  wire \tlen_cnt128[4]_i_1_n_0 ;
  wire \tlen_cnt128[5]_i_1_n_0 ;
  wire \tlen_cnt128[5]_i_2_n_0 ;
  wire \tlen_cnt128[6]_i_1_n_0 ;
  wire \tlen_cnt128[7]_i_2_n_0 ;
  wire \tlen_cnt128[7]_i_3_n_0 ;
  wire [0:0]\tlen_cnt128_reg[0]_0 ;
  wire [0:0]\tlen_cnt128_reg[0]_1 ;
  wire \tlen_cnt128_reg[1]_0 ;
  wire \tlen_cnt128_reg[2]_0 ;
  wire \tlen_cnt128_reg[3]_0 ;
  wire \tlen_cnt128_reg[4]_0 ;
  wire \tlen_cnt128_reg[4]_1 ;
  wire \tlen_cnt128_reg[5]_0 ;
  wire \tlen_cnt128_reg[6]_0 ;
  wire \tlen_cnt128_reg[6]_1 ;
  wire \tlen_cntbcd[0]_i_1_n_0 ;
  wire \tlen_cntbcd[1]_i_1_n_0 ;
  wire \tlen_cntbcd[2]_i_1_n_0 ;
  wire \tlen_cntbcd[3]_i_1_n_0 ;
  wire \tlen_cntbcd[4]_i_1_n_0 ;
  wire \tlen_cntbcd[5]_i_1_n_0 ;
  wire \tlen_cntbcd[6]_i_1_n_0 ;
  wire \tlen_cntbcd[7]_i_1_n_0 ;
  wire \tlen_cntbcd[7]_i_2_n_0 ;
  wire \tlen_cntbcd[7]_i_5_n_0 ;
  wire \tlen_cntbcd[7]_i_6_n_0 ;
  wire \tlen_cntbcd[7]_i_7_n_0 ;
  wire \tlen_cntbcd[7]_i_8_n_0 ;
  wire \tlen_cntbcd_reg[0]_0 ;
  wire \tlen_cntbcd_reg_n_0_[0] ;
  wire \tlen_cntbcd_reg_n_0_[1] ;
  wire \tlen_cntbcd_reg_n_0_[2] ;
  wire \tlen_cntbcd_reg_n_0_[3] ;
  wire \tlen_cntus[0]_i_3_n_0 ;
  wire [15:0]tlen_cntus_reg;
  wire \tlen_cntus_reg[0]_i_2_n_0 ;
  wire \tlen_cntus_reg[0]_i_2_n_1 ;
  wire \tlen_cntus_reg[0]_i_2_n_2 ;
  wire \tlen_cntus_reg[0]_i_2_n_3 ;
  wire \tlen_cntus_reg[0]_i_2_n_4 ;
  wire \tlen_cntus_reg[0]_i_2_n_5 ;
  wire \tlen_cntus_reg[0]_i_2_n_6 ;
  wire \tlen_cntus_reg[0]_i_2_n_7 ;
  wire [3:0]\tlen_cntus_reg[12]_0 ;
  wire \tlen_cntus_reg[12]_i_1_n_1 ;
  wire \tlen_cntus_reg[12]_i_1_n_2 ;
  wire \tlen_cntus_reg[12]_i_1_n_3 ;
  wire \tlen_cntus_reg[12]_i_1_n_4 ;
  wire \tlen_cntus_reg[12]_i_1_n_5 ;
  wire \tlen_cntus_reg[12]_i_1_n_6 ;
  wire \tlen_cntus_reg[12]_i_1_n_7 ;
  wire [2:0]\tlen_cntus_reg[15]_0 ;
  wire [1:0]\tlen_cntus_reg[15]_1 ;
  wire \tlen_cntus_reg[4]_i_1_n_0 ;
  wire \tlen_cntus_reg[4]_i_1_n_1 ;
  wire \tlen_cntus_reg[4]_i_1_n_2 ;
  wire \tlen_cntus_reg[4]_i_1_n_3 ;
  wire \tlen_cntus_reg[4]_i_1_n_4 ;
  wire \tlen_cntus_reg[4]_i_1_n_5 ;
  wire \tlen_cntus_reg[4]_i_1_n_6 ;
  wire \tlen_cntus_reg[4]_i_1_n_7 ;
  wire \tlen_cntus_reg[8]_i_1_n_0 ;
  wire \tlen_cntus_reg[8]_i_1_n_1 ;
  wire \tlen_cntus_reg[8]_i_1_n_2 ;
  wire \tlen_cntus_reg[8]_i_1_n_3 ;
  wire \tlen_cntus_reg[8]_i_1_n_4 ;
  wire \tlen_cntus_reg[8]_i_1_n_5 ;
  wire \tlen_cntus_reg[8]_i_1_n_6 ;
  wire \tlen_cntus_reg[8]_i_1_n_7 ;
  wire tlen_ovfbcd;
  wire [5:0]tlen_ovfus0_carry_0;
  wire tlen_ovfus0_carry__0_i_3_n_2;
  wire tlen_ovfus0_carry__0_i_3_n_3;
  wire tlen_ovfus0_carry__0_n_3;
  wire tlen_ovfus0_carry_i_3_n_0;
  wire tlen_ovfus0_carry_i_4_n_0;
  wire tlen_ovfus0_carry_i_5_n_0;
  wire tlen_ovfus0_carry_i_5_n_1;
  wire tlen_ovfus0_carry_i_5_n_2;
  wire tlen_ovfus0_carry_i_5_n_3;
  wire tlen_ovfus0_carry_i_6_n_0;
  wire tlen_ovfus0_carry_i_6_n_1;
  wire tlen_ovfus0_carry_i_6_n_2;
  wire tlen_ovfus0_carry_i_6_n_3;
  wire tlen_ovfus0_carry_i_6_n_7;
  wire tlen_ovfus0_carry_i_7_n_0;
  wire tlen_ovfus0_carry_i_7_n_1;
  wire tlen_ovfus0_carry_i_7_n_2;
  wire tlen_ovfus0_carry_i_7_n_3;
  wire tlen_ovfus0_carry_i_7_n_4;
  wire tlen_ovfus0_carry_i_7_n_5;
  wire tlen_ovfus0_carry_i_7_n_6;
  wire tlen_ovfus0_carry_i_7_n_7;
  wire tlen_ovfus0_carry_n_0;
  wire tlen_ovfus0_carry_n_1;
  wire tlen_ovfus0_carry_n_2;
  wire tlen_ovfus0_carry_n_3;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bdatr[1]_INST_0_i_2 
       (.I0(simumd_0),
        .I1(tlen_cnt128[6]),
        .I2(tlen_cnt128[7]),
        .I3(tlen_cnt128[5]),
        .I4(tlen_cnt128[4]),
        .I5(\tlen_cnt128[5]_i_2_n_0 ),
        .O(\tlen_cnt128_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000020)) 
    drv_rd_i_2
       (.I0(CO),
        .I1(drv_rd_i_4_n_0),
        .I2(drv_rd_i_5_n_0),
        .I3(drv_rd_i_6_n_0),
        .I4(drv_rd_i_7_n_0),
        .I5(simumd),
        .O(simumd_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    drv_rd_i_3
       (.I0(\tlen_cnt128[5]_i_2_n_0 ),
        .I1(tlen_cnt128[4]),
        .I2(tlen_cnt128[5]),
        .I3(tlen_cnt128[7]),
        .I4(tlen_cnt128[6]),
        .O(\tlen_cnt128_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h66666666966A6666)) 
    drv_rd_i_4
       (.I0(clk_mhz[7]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(\tlen_cntbcd[7]_i_6_n_0 ),
        .O(drv_rd_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000A4AA5B55)) 
    drv_rd_i_5
       (.I0(p_0_in_0[1]),
        .I1(drv_rd_i_8_n_0),
        .I2(\tlen_cntbcd[7]_i_6_n_0 ),
        .I3(p_0_in_0[0]),
        .I4(clk_mhz[5]),
        .I5(\tlen_cntbcd[7]_i_7_n_0 ),
        .O(drv_rd_i_5_n_0));
  LUT5 #(
    .INIT(32'h55AA956A)) 
    drv_rd_i_6
       (.I0(clk_mhz[6]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[2]),
        .I4(\tlen_cntbcd[7]_i_6_n_0 ),
        .O(drv_rd_i_6_n_0));
  LUT6 #(
    .INIT(64'hF6FFFFF6FFF6F6FF)) 
    drv_rd_i_7
       (.I0(\tlen_cntbcd[2]_i_1_n_0 ),
        .I1(clk_mhz[2]),
        .I2(drv_rd_i_9_n_0),
        .I3(clk_mhz[4]),
        .I4(\tlen_cntbcd[7]_i_6_n_0 ),
        .I5(p_0_in_0[0]),
        .O(drv_rd_i_7_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    drv_rd_i_8
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .O(drv_rd_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFAE55FFAAFBFF55)) 
    drv_rd_i_9
       (.I0(clk_mhz[0]),
        .I1(\tlen_cntbcd_reg_n_0_[3] ),
        .I2(\tlen_cntbcd_reg_n_0_[2] ),
        .I3(\tlen_cntbcd_reg_n_0_[1] ),
        .I4(\tlen_cntbcd_reg_n_0_[0] ),
        .I5(clk_mhz[1]),
        .O(drv_rd_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFDFFFFDDDDDDDD)) 
    empty_rd_adv_i_5
       (.I0(Q),
        .I1(\ptr_rd_reg[0]_0 ),
        .I2(\tlen_cnt128[5]_i_2_n_0 ),
        .I3(\ptr_rd[0]_i_3_n_0 ),
        .I4(simumd_0),
        .I5(p_0_in),
        .O(\ptr_rd_reg[0] ));
  LUT6 #(
    .INIT(64'hAAA9AAAA99999999)) 
    \ptr_rd[0]_i_1 
       (.I0(Q),
        .I1(\ptr_rd_reg[0]_0 ),
        .I2(\tlen_cnt128[5]_i_2_n_0 ),
        .I3(\ptr_rd[0]_i_3_n_0 ),
        .I4(simumd_0),
        .I5(p_0_in),
        .O(D));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ptr_rd[0]_i_3 
       (.I0(tlen_cnt128[6]),
        .I1(tlen_cnt128[7]),
        .I2(tlen_cnt128[5]),
        .I3(tlen_cnt128[4]),
        .O(\ptr_rd[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAF8F008000000000)) 
    tlen_clr_enb_r_i_1
       (.I0(\tlen_cnt128_reg[4]_0 ),
        .I1(tlen_clr_enb_r_reg_0),
        .I2(simumd_0),
        .I3(tlen_clr_enb_r_i_3_n_0),
        .I4(tlen_clr_enb_r),
        .I5(rst_n),
        .O(tlen_clr_enb_r_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    tlen_clr_enb_r_i_3
       (.I0(\ptr_rd[0]_i_3_n_0 ),
        .I1(tlen_cnt128[1]),
        .I2(\tlen_cnt128_reg[0]_0 ),
        .I3(tlen_cnt128[2]),
        .I4(tlen_cnt128[3]),
        .O(tlen_clr_enb_r_i_3_n_0));
  FDRE tlen_clr_enb_r_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(tlen_clr_enb_r_i_1_n_0),
        .Q(tlen_clr_enb_r),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hFF9F0090)) 
    \tlen_cnt128[1]_i_1 
       (.I0(\tlen_cnt128_reg[0]_0 ),
        .I1(tlen_cnt128[1]),
        .I2(rst_n),
        .I3(\tlen_cntbcd_reg[0]_0 ),
        .I4(\tlen_cnt128_reg[1]_0 ),
        .O(\tlen_cnt128[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA9FF0000A900)) 
    \tlen_cnt128[2]_i_1 
       (.I0(tlen_cnt128[2]),
        .I1(tlen_cnt128[1]),
        .I2(\tlen_cnt128_reg[0]_0 ),
        .I3(rst_n),
        .I4(\tlen_cntbcd_reg[0]_0 ),
        .I5(\tlen_cnt128_reg[2]_0 ),
        .O(\tlen_cnt128[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF9AFF00009A00)) 
    \tlen_cnt128[3]_i_1 
       (.I0(tlen_cnt128[3]),
        .I1(tlen_cnt128[2]),
        .I2(\tlen_cnt128[3]_i_2_n_0 ),
        .I3(rst_n),
        .I4(\tlen_cntbcd_reg[0]_0 ),
        .I5(\tlen_cnt128_reg[3]_0 ),
        .O(\tlen_cnt128[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tlen_cnt128[3]_i_2 
       (.I0(\tlen_cnt128_reg[0]_0 ),
        .I1(tlen_cnt128[1]),
        .O(\tlen_cnt128[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF9F0090)) 
    \tlen_cnt128[4]_i_1 
       (.I0(tlen_cnt128[4]),
        .I1(\tlen_cnt128[5]_i_2_n_0 ),
        .I2(rst_n),
        .I3(\tlen_cntbcd_reg[0]_0 ),
        .I4(\tlen_cnt128_reg[4]_1 ),
        .O(\tlen_cnt128[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA9FF0000A900)) 
    \tlen_cnt128[5]_i_1 
       (.I0(tlen_cnt128[5]),
        .I1(\tlen_cnt128[5]_i_2_n_0 ),
        .I2(tlen_cnt128[4]),
        .I3(rst_n),
        .I4(\tlen_cntbcd_reg[0]_0 ),
        .I5(\tlen_cnt128_reg[5]_0 ),
        .O(\tlen_cnt128[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tlen_cnt128[5]_i_2 
       (.I0(tlen_cnt128[3]),
        .I1(tlen_cnt128[2]),
        .I2(tlen_cnt128[1]),
        .I3(\tlen_cnt128_reg[0]_0 ),
        .O(\tlen_cnt128[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF6F0060)) 
    \tlen_cnt128[6]_i_1 
       (.I0(tlen_cnt128[6]),
        .I1(\tlen_cnt128[7]_i_3_n_0 ),
        .I2(rst_n),
        .I3(\tlen_cntbcd_reg[0]_0 ),
        .I4(\tlen_cnt128_reg[6]_1 ),
        .O(\tlen_cnt128[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040040)) 
    \tlen_cnt128[7]_i_2 
       (.I0(\tlen_cntbcd_reg[0]_0 ),
        .I1(rst_n),
        .I2(\tlen_cnt128[7]_i_3_n_0 ),
        .I3(tlen_cnt128[6]),
        .I4(tlen_cnt128[7]),
        .O(\tlen_cnt128[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tlen_cnt128[7]_i_3 
       (.I0(tlen_cnt128[3]),
        .I1(tlen_cnt128[2]),
        .I2(tlen_cnt128[1]),
        .I3(\tlen_cnt128_reg[0]_0 ),
        .I4(tlen_cnt128[4]),
        .I5(tlen_cnt128[5]),
        .O(\tlen_cnt128[7]_i_3_n_0 ));
  FDRE \tlen_cnt128_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\tlen_cnt128_reg[0]_1 ),
        .Q(\tlen_cnt128_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \tlen_cnt128_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\tlen_cnt128[1]_i_1_n_0 ),
        .Q(tlen_cnt128[1]),
        .R(\<const0> ));
  FDRE \tlen_cnt128_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\tlen_cnt128[2]_i_1_n_0 ),
        .Q(tlen_cnt128[2]),
        .R(\<const0> ));
  FDRE \tlen_cnt128_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\tlen_cnt128[3]_i_1_n_0 ),
        .Q(tlen_cnt128[3]),
        .R(\<const0> ));
  FDRE \tlen_cnt128_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\tlen_cnt128[4]_i_1_n_0 ),
        .Q(tlen_cnt128[4]),
        .R(\<const0> ));
  FDRE \tlen_cnt128_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\tlen_cnt128[5]_i_1_n_0 ),
        .Q(tlen_cnt128[5]),
        .R(\<const0> ));
  FDRE \tlen_cnt128_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\tlen_cnt128[6]_i_1_n_0 ),
        .Q(tlen_cnt128[6]),
        .R(\<const0> ));
  FDRE \tlen_cnt128_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\tlen_cnt128[7]_i_2_n_0 ),
        .Q(tlen_cnt128[7]),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \tlen_cntbcd[0]_i_1 
       (.I0(\tlen_cntbcd_reg_n_0_[0] ),
        .O(\tlen_cntbcd[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0DF0)) 
    \tlen_cntbcd[1]_i_1 
       (.I0(\tlen_cntbcd_reg_n_0_[3] ),
        .I1(\tlen_cntbcd_reg_n_0_[2] ),
        .I2(\tlen_cntbcd_reg_n_0_[1] ),
        .I3(\tlen_cntbcd_reg_n_0_[0] ),
        .O(\tlen_cntbcd[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \tlen_cntbcd[2]_i_1 
       (.I0(\tlen_cntbcd_reg_n_0_[2] ),
        .I1(\tlen_cntbcd_reg_n_0_[1] ),
        .I2(\tlen_cntbcd_reg_n_0_[0] ),
        .O(\tlen_cntbcd[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F80)) 
    \tlen_cntbcd[3]_i_1 
       (.I0(\tlen_cntbcd_reg_n_0_[2] ),
        .I1(\tlen_cntbcd_reg_n_0_[1] ),
        .I2(\tlen_cntbcd_reg_n_0_[0] ),
        .I3(\tlen_cntbcd_reg_n_0_[3] ),
        .O(\tlen_cntbcd[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA6AAAA)) 
    \tlen_cntbcd[4]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(\tlen_cntbcd_reg_n_0_[3] ),
        .I2(\tlen_cntbcd_reg_n_0_[1] ),
        .I3(\tlen_cntbcd_reg_n_0_[2] ),
        .I4(\tlen_cntbcd_reg_n_0_[0] ),
        .O(\tlen_cntbcd[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFF0200FFFF0000)) 
    \tlen_cntbcd[5]_i_1 
       (.I0(\tlen_cntbcd_reg_n_0_[3] ),
        .I1(\tlen_cntbcd_reg_n_0_[1] ),
        .I2(\tlen_cntbcd_reg_n_0_[2] ),
        .I3(\tlen_cntbcd_reg_n_0_[0] ),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\tlen_cntbcd[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9CCC)) 
    \tlen_cntbcd[6]_i_1 
       (.I0(\tlen_cntbcd[7]_i_6_n_0 ),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .O(\tlen_cntbcd[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \tlen_cntbcd[7]_i_1 
       (.I0(\tlen_cntbcd_reg[0]_0 ),
        .I1(rst_n),
        .I2(simumd_1),
        .I3(\tlen_cntbcd[7]_i_5_n_0 ),
        .O(\tlen_cntbcd[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \tlen_cntbcd[7]_i_2 
       (.I0(\tlen_cntbcd[7]_i_6_n_0 ),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[3]),
        .O(\tlen_cntbcd[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555545555)) 
    \tlen_cntbcd[7]_i_4 
       (.I0(simumd),
        .I1(drv_rd_i_7_n_0),
        .I2(drv_rd_i_6_n_0),
        .I3(\tlen_cntbcd[7]_i_7_n_0 ),
        .I4(\tlen_cntbcd[7]_i_8_n_0 ),
        .I5(drv_rd_i_4_n_0),
        .O(simumd_1));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \tlen_cntbcd[7]_i_5 
       (.I0(p_0_in_0[0]),
        .I1(\tlen_cntbcd[7]_i_6_n_0 ),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .O(\tlen_cntbcd[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \tlen_cntbcd[7]_i_6 
       (.I0(\tlen_cntbcd_reg_n_0_[0] ),
        .I1(\tlen_cntbcd_reg_n_0_[2] ),
        .I2(\tlen_cntbcd_reg_n_0_[1] ),
        .I3(\tlen_cntbcd_reg_n_0_[3] ),
        .O(\tlen_cntbcd[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h966666A6)) 
    \tlen_cntbcd[7]_i_7 
       (.I0(clk_mhz[3]),
        .I1(\tlen_cntbcd_reg_n_0_[3] ),
        .I2(\tlen_cntbcd_reg_n_0_[0] ),
        .I3(\tlen_cntbcd_reg_n_0_[1] ),
        .I4(\tlen_cntbcd_reg_n_0_[2] ),
        .O(\tlen_cntbcd[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA6A6A6A659595559)) 
    \tlen_cntbcd[7]_i_8 
       (.I0(clk_mhz[5]),
        .I1(p_0_in_0[0]),
        .I2(\tlen_cntbcd[7]_i_6_n_0 ),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(\tlen_cntbcd[7]_i_8_n_0 ));
  FDRE \tlen_cntbcd_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tlen_cntbcd[0]_i_1_n_0 ),
        .Q(\tlen_cntbcd_reg_n_0_[0] ),
        .R(\tlen_cntbcd[7]_i_1_n_0 ));
  FDRE \tlen_cntbcd_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tlen_cntbcd[1]_i_1_n_0 ),
        .Q(\tlen_cntbcd_reg_n_0_[1] ),
        .R(\tlen_cntbcd[7]_i_1_n_0 ));
  FDRE \tlen_cntbcd_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tlen_cntbcd[2]_i_1_n_0 ),
        .Q(\tlen_cntbcd_reg_n_0_[2] ),
        .R(\tlen_cntbcd[7]_i_1_n_0 ));
  FDRE \tlen_cntbcd_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tlen_cntbcd[3]_i_1_n_0 ),
        .Q(\tlen_cntbcd_reg_n_0_[3] ),
        .R(\tlen_cntbcd[7]_i_1_n_0 ));
  FDRE \tlen_cntbcd_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tlen_cntbcd[4]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(\tlen_cntbcd[7]_i_1_n_0 ));
  FDRE \tlen_cntbcd_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tlen_cntbcd[5]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(\tlen_cntbcd[7]_i_1_n_0 ));
  FDRE \tlen_cntbcd_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tlen_cntbcd[6]_i_1_n_0 ),
        .Q(p_0_in_0[2]),
        .R(\tlen_cntbcd[7]_i_1_n_0 ));
  FDRE \tlen_cntbcd_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\tlen_cntbcd[7]_i_2_n_0 ),
        .Q(p_0_in_0[3]),
        .R(\tlen_cntbcd[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tlen_cntus[0]_i_1 
       (.I0(simumd_1),
        .O(tlen_ovfbcd));
  LUT1 #(
    .INIT(2'h1)) 
    \tlen_cntus[0]_i_3 
       (.I0(tlen_cntus_reg[0]),
        .O(\tlen_cntus[0]_i_3_n_0 ));
  FDRE \tlen_cntus_reg[0] 
       (.C(clk),
        .CE(tlen_ovfbcd),
        .D(\tlen_cntus_reg[0]_i_2_n_7 ),
        .Q(tlen_cntus_reg[0]),
        .R(E));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tlen_cntus_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\tlen_cntus_reg[0]_i_2_n_0 ,\tlen_cntus_reg[0]_i_2_n_1 ,\tlen_cntus_reg[0]_i_2_n_2 ,\tlen_cntus_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\tlen_cntus_reg[0]_i_2_n_4 ,\tlen_cntus_reg[0]_i_2_n_5 ,\tlen_cntus_reg[0]_i_2_n_6 ,\tlen_cntus_reg[0]_i_2_n_7 }),
        .S({tlen_cntus_reg[3:1],\tlen_cntus[0]_i_3_n_0 }));
  FDRE \tlen_cntus_reg[10] 
       (.C(clk),
        .CE(tlen_ovfbcd),
        .D(\tlen_cntus_reg[8]_i_1_n_5 ),
        .Q(tlen_cntus_reg[10]),
        .R(E));
  FDRE \tlen_cntus_reg[11] 
       (.C(clk),
        .CE(tlen_ovfbcd),
        .D(\tlen_cntus_reg[8]_i_1_n_4 ),
        .Q(tlen_cntus_reg[11]),
        .R(E));
  FDRE \tlen_cntus_reg[12] 
       (.C(clk),
        .CE(tlen_ovfbcd),
        .D(\tlen_cntus_reg[12]_i_1_n_7 ),
        .Q(tlen_cntus_reg[12]),
        .R(E));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tlen_cntus_reg[12]_i_1 
       (.CI(\tlen_cntus_reg[8]_i_1_n_0 ),
        .CO({\tlen_cntus_reg[12]_i_1_n_1 ,\tlen_cntus_reg[12]_i_1_n_2 ,\tlen_cntus_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tlen_cntus_reg[12]_i_1_n_4 ,\tlen_cntus_reg[12]_i_1_n_5 ,\tlen_cntus_reg[12]_i_1_n_6 ,\tlen_cntus_reg[12]_i_1_n_7 }),
        .S(tlen_cntus_reg[15:12]));
  FDRE \tlen_cntus_reg[13] 
       (.C(clk),
        .CE(tlen_ovfbcd),
        .D(\tlen_cntus_reg[12]_i_1_n_6 ),
        .Q(tlen_cntus_reg[13]),
        .R(E));
  FDRE \tlen_cntus_reg[14] 
       (.C(clk),
        .CE(tlen_ovfbcd),
        .D(\tlen_cntus_reg[12]_i_1_n_5 ),
        .Q(tlen_cntus_reg[14]),
        .R(E));
  FDRE \tlen_cntus_reg[15] 
       (.C(clk),
        .CE(tlen_ovfbcd),
        .D(\tlen_cntus_reg[12]_i_1_n_4 ),
        .Q(tlen_cntus_reg[15]),
        .R(E));
  FDRE \tlen_cntus_reg[1] 
       (.C(clk),
        .CE(tlen_ovfbcd),
        .D(\tlen_cntus_reg[0]_i_2_n_6 ),
        .Q(tlen_cntus_reg[1]),
        .R(E));
  FDRE \tlen_cntus_reg[2] 
       (.C(clk),
        .CE(tlen_ovfbcd),
        .D(\tlen_cntus_reg[0]_i_2_n_5 ),
        .Q(tlen_cntus_reg[2]),
        .R(E));
  FDRE \tlen_cntus_reg[3] 
       (.C(clk),
        .CE(tlen_ovfbcd),
        .D(\tlen_cntus_reg[0]_i_2_n_4 ),
        .Q(tlen_cntus_reg[3]),
        .R(E));
  FDRE \tlen_cntus_reg[4] 
       (.C(clk),
        .CE(tlen_ovfbcd),
        .D(\tlen_cntus_reg[4]_i_1_n_7 ),
        .Q(tlen_cntus_reg[4]),
        .R(E));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tlen_cntus_reg[4]_i_1 
       (.CI(\tlen_cntus_reg[0]_i_2_n_0 ),
        .CO({\tlen_cntus_reg[4]_i_1_n_0 ,\tlen_cntus_reg[4]_i_1_n_1 ,\tlen_cntus_reg[4]_i_1_n_2 ,\tlen_cntus_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tlen_cntus_reg[4]_i_1_n_4 ,\tlen_cntus_reg[4]_i_1_n_5 ,\tlen_cntus_reg[4]_i_1_n_6 ,\tlen_cntus_reg[4]_i_1_n_7 }),
        .S(tlen_cntus_reg[7:4]));
  FDRE \tlen_cntus_reg[5] 
       (.C(clk),
        .CE(tlen_ovfbcd),
        .D(\tlen_cntus_reg[4]_i_1_n_6 ),
        .Q(tlen_cntus_reg[5]),
        .R(E));
  FDRE \tlen_cntus_reg[6] 
       (.C(clk),
        .CE(tlen_ovfbcd),
        .D(\tlen_cntus_reg[4]_i_1_n_5 ),
        .Q(tlen_cntus_reg[6]),
        .R(E));
  FDRE \tlen_cntus_reg[7] 
       (.C(clk),
        .CE(tlen_ovfbcd),
        .D(\tlen_cntus_reg[4]_i_1_n_4 ),
        .Q(tlen_cntus_reg[7]),
        .R(E));
  FDRE \tlen_cntus_reg[8] 
       (.C(clk),
        .CE(tlen_ovfbcd),
        .D(\tlen_cntus_reg[8]_i_1_n_7 ),
        .Q(tlen_cntus_reg[8]),
        .R(E));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tlen_cntus_reg[8]_i_1 
       (.CI(\tlen_cntus_reg[4]_i_1_n_0 ),
        .CO({\tlen_cntus_reg[8]_i_1_n_0 ,\tlen_cntus_reg[8]_i_1_n_1 ,\tlen_cntus_reg[8]_i_1_n_2 ,\tlen_cntus_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tlen_cntus_reg[8]_i_1_n_4 ,\tlen_cntus_reg[8]_i_1_n_5 ,\tlen_cntus_reg[8]_i_1_n_6 ,\tlen_cntus_reg[8]_i_1_n_7 }),
        .S(tlen_cntus_reg[11:8]));
  FDRE \tlen_cntus_reg[9] 
       (.C(clk),
        .CE(tlen_ovfbcd),
        .D(\tlen_cntus_reg[8]_i_1_n_6 ),
        .Q(tlen_cntus_reg[9]),
        .R(E));
  CARRY4 tlen_ovfus0_carry
       (.CI(\<const0> ),
        .CO({tlen_ovfus0_carry_n_0,tlen_ovfus0_carry_n_1,tlen_ovfus0_carry_n_2,tlen_ovfus0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({S,tlen_ovfus0_carry_i_3_n_0,tlen_ovfus0_carry_i_4_n_0}));
  CARRY4 tlen_ovfus0_carry__0
       (.CI(tlen_ovfus0_carry_n_0),
        .CO({CO,tlen_ovfus0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,\tlen_cntus_reg[15]_1 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tlen_ovfus0_carry__0_i_3
       (.CI(tlen_ovfus0_carry_i_5_n_0),
        .CO({tlen_ovfus0_carry__0_i_3_n_2,tlen_ovfus0_carry__0_i_3_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\tlen_cntus_reg[15]_0 ),
        .S({\<const0> ,tlen_cntus_reg[15:13]}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tlen_ovfus0_carry_i_3
       (.I0(tlen_ovfus0_carry_i_7_n_4),
        .I1(tlen_ovfus0_carry_0[4]),
        .I2(tlen_ovfus0_carry_i_7_n_5),
        .I3(tlen_ovfus0_carry_0[3]),
        .I4(tlen_ovfus0_carry_0[5]),
        .I5(tlen_ovfus0_carry_i_6_n_7),
        .O(tlen_ovfus0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    tlen_ovfus0_carry_i_4
       (.I0(tlen_ovfus0_carry_i_7_n_7),
        .I1(tlen_ovfus0_carry_0[1]),
        .I2(tlen_ovfus0_carry_0[0]),
        .I3(tlen_cntus_reg[0]),
        .I4(tlen_ovfus0_carry_0[2]),
        .I5(tlen_ovfus0_carry_i_7_n_6),
        .O(tlen_ovfus0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tlen_ovfus0_carry_i_5
       (.CI(tlen_ovfus0_carry_i_6_n_0),
        .CO({tlen_ovfus0_carry_i_5_n_0,tlen_ovfus0_carry_i_5_n_1,tlen_ovfus0_carry_i_5_n_2,tlen_ovfus0_carry_i_5_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\tlen_cntus_reg[12]_0 ),
        .S(tlen_cntus_reg[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tlen_ovfus0_carry_i_6
       (.CI(tlen_ovfus0_carry_i_7_n_0),
        .CO({tlen_ovfus0_carry_i_6_n_0,tlen_ovfus0_carry_i_6_n_1,tlen_ovfus0_carry_i_6_n_2,tlen_ovfus0_carry_i_6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({O,tlen_ovfus0_carry_i_6_n_7}),
        .S(tlen_cntus_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tlen_ovfus0_carry_i_7
       (.CI(\<const0> ),
        .CO({tlen_ovfus0_carry_i_7_n_0,tlen_ovfus0_carry_i_7_n_1,tlen_ovfus0_carry_i_7_n_2,tlen_ovfus0_carry_i_7_n_3}),
        .CYINIT(tlen_cntus_reg[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({tlen_ovfus0_carry_i_7_n_4,tlen_ovfus0_carry_i_7_n_5,tlen_ovfus0_carry_i_7_n_6,tlen_ovfus0_carry_i_7_n_7}),
        .S(tlen_cntus_reg[4:1]));
endmodule

module sndg_tmscl
   (tscl_pwm,
    \tscl_cntus_reg[15]_0 ,
    S,
    \tscl_cntus_reg[0]_0 ,
    tscl_pwm0_carry__0_0,
    tscl_pwm_reg_0,
    clk,
    stab_ratef,
    tscl_pwm_reg_1,
    simumd,
    clk_mhz,
    tscl_pwm_reg_2,
    tscl_pwm_reg_3);
  output tscl_pwm;
  output [13:0]\tscl_cntus_reg[15]_0 ;
  input [2:0]S;
  input [3:0]\tscl_cntus_reg[0]_0 ;
  input [2:0]tscl_pwm0_carry__0_0;
  input [2:0]tscl_pwm_reg_0;
  input clk;
  input [15:0]stab_ratef;
  input tscl_pwm_reg_1;
  input simumd;
  input [7:0]clk_mhz;
  input tscl_pwm_reg_2;
  input tscl_pwm_reg_3;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]S;
  wire clk;
  wire [7:0]clk_mhz;
  wire [7:0]data0;
  wire [3:0]p_0_in;
  wire [1:0]p_1_in;
  wire p_2_in;
  wire simumd;
  wire [15:0]stab_ratef;
  wire \tscl_cntbcd[7]_i_1_n_0 ;
  wire \tscl_cntbcd[7]_i_4_n_0 ;
  wire \tscl_cntbcd[7]_i_5_n_0 ;
  wire \tscl_cntbcd_reg_n_0_[0] ;
  wire \tscl_cntbcd_reg_n_0_[1] ;
  wire \tscl_cntbcd_reg_n_0_[2] ;
  wire \tscl_cntbcd_reg_n_0_[3] ;
  wire tscl_cntus0;
  wire \tscl_cntus[0]_i_4_n_0 ;
  wire \tscl_cntus[0]_i_5_n_0 ;
  wire \tscl_cntus[0]_i_6_n_0 ;
  wire \tscl_cntus[0]_i_8_n_0 ;
  wire \tscl_cntus[0]_i_9_n_0 ;
  wire [15:0]tscl_cntus_reg;
  wire [3:0]\tscl_cntus_reg[0]_0 ;
  wire \tscl_cntus_reg[0]_i_3_n_0 ;
  wire \tscl_cntus_reg[0]_i_3_n_1 ;
  wire \tscl_cntus_reg[0]_i_3_n_2 ;
  wire \tscl_cntus_reg[0]_i_3_n_3 ;
  wire \tscl_cntus_reg[0]_i_3_n_4 ;
  wire \tscl_cntus_reg[0]_i_3_n_5 ;
  wire \tscl_cntus_reg[0]_i_3_n_6 ;
  wire \tscl_cntus_reg[0]_i_3_n_7 ;
  wire \tscl_cntus_reg[12]_i_1_n_1 ;
  wire \tscl_cntus_reg[12]_i_1_n_2 ;
  wire \tscl_cntus_reg[12]_i_1_n_3 ;
  wire \tscl_cntus_reg[12]_i_1_n_4 ;
  wire \tscl_cntus_reg[12]_i_1_n_5 ;
  wire \tscl_cntus_reg[12]_i_1_n_6 ;
  wire \tscl_cntus_reg[12]_i_1_n_7 ;
  wire [13:0]\tscl_cntus_reg[15]_0 ;
  wire \tscl_cntus_reg[4]_i_1_n_0 ;
  wire \tscl_cntus_reg[4]_i_1_n_1 ;
  wire \tscl_cntus_reg[4]_i_1_n_2 ;
  wire \tscl_cntus_reg[4]_i_1_n_3 ;
  wire \tscl_cntus_reg[4]_i_1_n_4 ;
  wire \tscl_cntus_reg[4]_i_1_n_5 ;
  wire \tscl_cntus_reg[4]_i_1_n_6 ;
  wire \tscl_cntus_reg[4]_i_1_n_7 ;
  wire \tscl_cntus_reg[8]_i_1_n_0 ;
  wire \tscl_cntus_reg[8]_i_1_n_1 ;
  wire \tscl_cntus_reg[8]_i_1_n_2 ;
  wire \tscl_cntus_reg[8]_i_1_n_3 ;
  wire \tscl_cntus_reg[8]_i_1_n_4 ;
  wire \tscl_cntus_reg[8]_i_1_n_5 ;
  wire \tscl_cntus_reg[8]_i_1_n_6 ;
  wire \tscl_cntus_reg[8]_i_1_n_7 ;
  wire tscl_ovfus0;
  wire tscl_ovfus0_carry__0_i_13_n_0;
  wire tscl_ovfus0_carry__0_i_13_n_1;
  wire tscl_ovfus0_carry__0_i_13_n_2;
  wire tscl_ovfus0_carry__0_i_13_n_3;
  wire tscl_ovfus0_carry__0_i_1_n_0;
  wire tscl_ovfus0_carry__0_i_2_n_0;
  wire tscl_ovfus0_carry__0_i_3_n_0;
  wire tscl_ovfus0_carry__0_i_4_n_0;
  wire tscl_ovfus0_carry__0_i_9_n_2;
  wire tscl_ovfus0_carry__0_i_9_n_3;
  wire tscl_ovfus0_carry__0_n_1;
  wire tscl_ovfus0_carry__0_n_2;
  wire tscl_ovfus0_carry__0_n_3;
  wire tscl_ovfus0_carry_i_13_n_0;
  wire tscl_ovfus0_carry_i_13_n_1;
  wire tscl_ovfus0_carry_i_13_n_2;
  wire tscl_ovfus0_carry_i_13_n_3;
  wire tscl_ovfus0_carry_i_1_n_0;
  wire tscl_ovfus0_carry_i_2_n_0;
  wire tscl_ovfus0_carry_i_3_n_0;
  wire tscl_ovfus0_carry_i_4_n_0;
  wire tscl_ovfus0_carry_i_8_n_0;
  wire tscl_ovfus0_carry_i_9_n_0;
  wire tscl_ovfus0_carry_i_9_n_1;
  wire tscl_ovfus0_carry_i_9_n_2;
  wire tscl_ovfus0_carry_i_9_n_3;
  wire tscl_ovfus0_carry_n_0;
  wire tscl_ovfus0_carry_n_1;
  wire tscl_ovfus0_carry_n_2;
  wire tscl_ovfus0_carry_n_3;
  wire tscl_pwm;
  wire [2:0]tscl_pwm0_carry__0_0;
  wire tscl_pwm0_carry__0_i_1_n_0;
  wire tscl_pwm0_carry__0_i_2_n_0;
  wire tscl_pwm0_carry__0_i_3_n_0;
  wire tscl_pwm0_carry__0_i_4_n_0;
  wire tscl_pwm0_carry__0_i_5_n_0;
  wire tscl_pwm0_carry__0_n_0;
  wire tscl_pwm0_carry__0_n_1;
  wire tscl_pwm0_carry__0_n_2;
  wire tscl_pwm0_carry__0_n_3;
  wire tscl_pwm0_carry_i_1_n_0;
  wire tscl_pwm0_carry_i_2_n_0;
  wire tscl_pwm0_carry_i_3_n_0;
  wire tscl_pwm0_carry_i_4_n_0;
  wire tscl_pwm0_carry_i_8_n_0;
  wire tscl_pwm0_carry_n_0;
  wire tscl_pwm0_carry_n_1;
  wire tscl_pwm0_carry_n_2;
  wire tscl_pwm0_carry_n_3;
  wire tscl_pwm_i_1_n_0;
  wire tscl_pwm_i_4_n_0;
  wire tscl_pwm_i_7_n_0;
  wire [2:0]tscl_pwm_reg_0;
  wire tscl_pwm_reg_1;
  wire tscl_pwm_reg_2;
  wire tscl_pwm_reg_3;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \tscl_cntbcd[0]_i_1 
       (.I0(\tscl_cntbcd_reg_n_0_[0] ),
        .O(data0[0]));
  LUT4 #(
    .INIT(16'h338C)) 
    \tscl_cntbcd[1]_i_1 
       (.I0(\tscl_cntbcd_reg_n_0_[2] ),
        .I1(\tscl_cntbcd_reg_n_0_[0] ),
        .I2(\tscl_cntbcd_reg_n_0_[3] ),
        .I3(\tscl_cntbcd_reg_n_0_[1] ),
        .O(data0[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \tscl_cntbcd[2]_i_1 
       (.I0(\tscl_cntbcd_reg_n_0_[2] ),
        .I1(\tscl_cntbcd_reg_n_0_[1] ),
        .I2(\tscl_cntbcd_reg_n_0_[0] ),
        .O(data0[2]));
  LUT4 #(
    .INIT(16'h78B0)) 
    \tscl_cntbcd[3]_i_1 
       (.I0(\tscl_cntbcd_reg_n_0_[2] ),
        .I1(\tscl_cntbcd_reg_n_0_[0] ),
        .I2(\tscl_cntbcd_reg_n_0_[3] ),
        .I3(\tscl_cntbcd_reg_n_0_[1] ),
        .O(data0[3]));
  LUT5 #(
    .INIT(32'hAAAA9AAA)) 
    \tscl_cntbcd[4]_i_1 
       (.I0(p_0_in[0]),
        .I1(\tscl_cntbcd_reg_n_0_[2] ),
        .I2(\tscl_cntbcd_reg_n_0_[0] ),
        .I3(\tscl_cntbcd_reg_n_0_[3] ),
        .I4(\tscl_cntbcd_reg_n_0_[1] ),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'hAAAA9AAAAAAAAAAA)) 
    \tscl_cntbcd[5]_i_1 
       (.I0(p_0_in[1]),
        .I1(\tscl_cntbcd_reg_n_0_[1] ),
        .I2(\tscl_cntbcd_reg_n_0_[3] ),
        .I3(\tscl_cntbcd_reg_n_0_[0] ),
        .I4(\tscl_cntbcd_reg_n_0_[2] ),
        .I5(p_0_in[0]),
        .O(data0[5]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \tscl_cntbcd[6]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\tscl_cntbcd[7]_i_5_n_0 ),
        .O(data0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAEAA)) 
    \tscl_cntbcd[7]_i_1 
       (.I0(tscl_pwm_reg_1),
        .I1(\tscl_cntbcd[7]_i_4_n_0 ),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .I4(p_0_in[1]),
        .I5(p_2_in),
        .O(\tscl_cntbcd[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \tscl_cntbcd[7]_i_2 
       (.I0(p_0_in[3]),
        .I1(\tscl_cntbcd[7]_i_5_n_0 ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .O(data0[7]));
  LUT5 #(
    .INIT(32'h00002000)) 
    \tscl_cntbcd[7]_i_4 
       (.I0(p_0_in[0]),
        .I1(\tscl_cntbcd_reg_n_0_[2] ),
        .I2(\tscl_cntbcd_reg_n_0_[0] ),
        .I3(\tscl_cntbcd_reg_n_0_[3] ),
        .I4(\tscl_cntbcd_reg_n_0_[1] ),
        .O(\tscl_cntbcd[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \tscl_cntbcd[7]_i_5 
       (.I0(\tscl_cntbcd_reg_n_0_[1] ),
        .I1(\tscl_cntbcd_reg_n_0_[3] ),
        .I2(\tscl_cntbcd_reg_n_0_[0] ),
        .I3(\tscl_cntbcd_reg_n_0_[2] ),
        .O(\tscl_cntbcd[7]_i_5_n_0 ));
  FDRE \tscl_cntbcd_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[0]),
        .Q(\tscl_cntbcd_reg_n_0_[0] ),
        .R(\tscl_cntbcd[7]_i_1_n_0 ));
  FDRE \tscl_cntbcd_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[1]),
        .Q(\tscl_cntbcd_reg_n_0_[1] ),
        .R(\tscl_cntbcd[7]_i_1_n_0 ));
  FDRE \tscl_cntbcd_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[2]),
        .Q(\tscl_cntbcd_reg_n_0_[2] ),
        .R(\tscl_cntbcd[7]_i_1_n_0 ));
  FDRE \tscl_cntbcd_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[3]),
        .Q(\tscl_cntbcd_reg_n_0_[3] ),
        .R(\tscl_cntbcd[7]_i_1_n_0 ));
  FDRE \tscl_cntbcd_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[4]),
        .Q(p_0_in[0]),
        .R(\tscl_cntbcd[7]_i_1_n_0 ));
  FDRE \tscl_cntbcd_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[5]),
        .Q(p_0_in[1]),
        .R(\tscl_cntbcd[7]_i_1_n_0 ));
  FDRE \tscl_cntbcd_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[6]),
        .Q(p_0_in[2]),
        .R(\tscl_cntbcd[7]_i_1_n_0 ));
  FDRE \tscl_cntbcd_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[7]),
        .Q(p_0_in[3]),
        .R(\tscl_cntbcd[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \tscl_cntus[0]_i_1 
       (.I0(tscl_pwm_reg_1),
        .I1(p_2_in),
        .I2(tscl_ovfus0),
        .O(tscl_cntus0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABABAA)) 
    \tscl_cntus[0]_i_2 
       (.I0(simumd),
        .I1(\tscl_cntus[0]_i_4_n_0 ),
        .I2(\tscl_cntus[0]_i_5_n_0 ),
        .I3(\tscl_cntbcd_reg_n_0_[0] ),
        .I4(clk_mhz[0]),
        .I5(\tscl_cntus[0]_i_6_n_0 ),
        .O(p_2_in));
  LUT6 #(
    .INIT(64'hF66F6F6F9FFCF6F6)) 
    \tscl_cntus[0]_i_4 
       (.I0(p_0_in[3]),
        .I1(clk_mhz[7]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(\tscl_cntbcd[7]_i_4_n_0 ),
        .I5(clk_mhz[6]),
        .O(\tscl_cntus[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFC3F3FCFCFF9F3FC)) 
    \tscl_cntus[0]_i_5 
       (.I0(\tscl_cntbcd_reg_n_0_[3] ),
        .I1(clk_mhz[1]),
        .I2(\tscl_cntbcd_reg_n_0_[2] ),
        .I3(\tscl_cntbcd_reg_n_0_[1] ),
        .I4(\tscl_cntbcd_reg_n_0_[0] ),
        .I5(clk_mhz[2]),
        .O(\tscl_cntus[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF874F78B0)) 
    \tscl_cntus[0]_i_6 
       (.I0(\tscl_cntbcd_reg_n_0_[2] ),
        .I1(\tscl_cntbcd_reg_n_0_[0] ),
        .I2(\tscl_cntbcd_reg_n_0_[3] ),
        .I3(\tscl_cntbcd_reg_n_0_[1] ),
        .I4(clk_mhz[3]),
        .I5(\tscl_cntus[0]_i_8_n_0 ),
        .O(\tscl_cntus[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tscl_cntus[0]_i_7 
       (.I0(tscl_cntus_reg[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFF7878FFD2FFFF78)) 
    \tscl_cntus[0]_i_8 
       (.I0(\tscl_cntus[0]_i_9_n_0 ),
        .I1(p_0_in[1]),
        .I2(clk_mhz[5]),
        .I3(p_0_in[0]),
        .I4(\tscl_cntbcd[7]_i_5_n_0 ),
        .I5(clk_mhz[4]),
        .O(\tscl_cntus[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \tscl_cntus[0]_i_9 
       (.I0(\tscl_cntbcd[7]_i_5_n_0 ),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .I4(p_0_in[1]),
        .O(\tscl_cntus[0]_i_9_n_0 ));
  FDRE \tscl_cntus_reg[0] 
       (.C(clk),
        .CE(p_2_in),
        .D(\tscl_cntus_reg[0]_i_3_n_7 ),
        .Q(tscl_cntus_reg[0]),
        .R(tscl_cntus0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tscl_cntus_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({\tscl_cntus_reg[0]_i_3_n_0 ,\tscl_cntus_reg[0]_i_3_n_1 ,\tscl_cntus_reg[0]_i_3_n_2 ,\tscl_cntus_reg[0]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\tscl_cntus_reg[0]_i_3_n_4 ,\tscl_cntus_reg[0]_i_3_n_5 ,\tscl_cntus_reg[0]_i_3_n_6 ,\tscl_cntus_reg[0]_i_3_n_7 }),
        .S({tscl_cntus_reg[3:1],p_1_in[0]}));
  FDRE \tscl_cntus_reg[10] 
       (.C(clk),
        .CE(p_2_in),
        .D(\tscl_cntus_reg[8]_i_1_n_5 ),
        .Q(tscl_cntus_reg[10]),
        .R(tscl_cntus0));
  FDRE \tscl_cntus_reg[11] 
       (.C(clk),
        .CE(p_2_in),
        .D(\tscl_cntus_reg[8]_i_1_n_4 ),
        .Q(tscl_cntus_reg[11]),
        .R(tscl_cntus0));
  FDRE \tscl_cntus_reg[12] 
       (.C(clk),
        .CE(p_2_in),
        .D(\tscl_cntus_reg[12]_i_1_n_7 ),
        .Q(tscl_cntus_reg[12]),
        .R(tscl_cntus0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tscl_cntus_reg[12]_i_1 
       (.CI(\tscl_cntus_reg[8]_i_1_n_0 ),
        .CO({\tscl_cntus_reg[12]_i_1_n_1 ,\tscl_cntus_reg[12]_i_1_n_2 ,\tscl_cntus_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tscl_cntus_reg[12]_i_1_n_4 ,\tscl_cntus_reg[12]_i_1_n_5 ,\tscl_cntus_reg[12]_i_1_n_6 ,\tscl_cntus_reg[12]_i_1_n_7 }),
        .S(tscl_cntus_reg[15:12]));
  FDRE \tscl_cntus_reg[13] 
       (.C(clk),
        .CE(p_2_in),
        .D(\tscl_cntus_reg[12]_i_1_n_6 ),
        .Q(tscl_cntus_reg[13]),
        .R(tscl_cntus0));
  FDRE \tscl_cntus_reg[14] 
       (.C(clk),
        .CE(p_2_in),
        .D(\tscl_cntus_reg[12]_i_1_n_5 ),
        .Q(tscl_cntus_reg[14]),
        .R(tscl_cntus0));
  FDRE \tscl_cntus_reg[15] 
       (.C(clk),
        .CE(p_2_in),
        .D(\tscl_cntus_reg[12]_i_1_n_4 ),
        .Q(tscl_cntus_reg[15]),
        .R(tscl_cntus0));
  FDRE \tscl_cntus_reg[1] 
       (.C(clk),
        .CE(p_2_in),
        .D(\tscl_cntus_reg[0]_i_3_n_6 ),
        .Q(tscl_cntus_reg[1]),
        .R(tscl_cntus0));
  FDRE \tscl_cntus_reg[2] 
       (.C(clk),
        .CE(p_2_in),
        .D(\tscl_cntus_reg[0]_i_3_n_5 ),
        .Q(tscl_cntus_reg[2]),
        .R(tscl_cntus0));
  FDRE \tscl_cntus_reg[3] 
       (.C(clk),
        .CE(p_2_in),
        .D(\tscl_cntus_reg[0]_i_3_n_4 ),
        .Q(tscl_cntus_reg[3]),
        .R(tscl_cntus0));
  FDRE \tscl_cntus_reg[4] 
       (.C(clk),
        .CE(p_2_in),
        .D(\tscl_cntus_reg[4]_i_1_n_7 ),
        .Q(tscl_cntus_reg[4]),
        .R(tscl_cntus0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tscl_cntus_reg[4]_i_1 
       (.CI(\tscl_cntus_reg[0]_i_3_n_0 ),
        .CO({\tscl_cntus_reg[4]_i_1_n_0 ,\tscl_cntus_reg[4]_i_1_n_1 ,\tscl_cntus_reg[4]_i_1_n_2 ,\tscl_cntus_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tscl_cntus_reg[4]_i_1_n_4 ,\tscl_cntus_reg[4]_i_1_n_5 ,\tscl_cntus_reg[4]_i_1_n_6 ,\tscl_cntus_reg[4]_i_1_n_7 }),
        .S(tscl_cntus_reg[7:4]));
  FDRE \tscl_cntus_reg[5] 
       (.C(clk),
        .CE(p_2_in),
        .D(\tscl_cntus_reg[4]_i_1_n_6 ),
        .Q(tscl_cntus_reg[5]),
        .R(tscl_cntus0));
  FDRE \tscl_cntus_reg[6] 
       (.C(clk),
        .CE(p_2_in),
        .D(\tscl_cntus_reg[4]_i_1_n_5 ),
        .Q(tscl_cntus_reg[6]),
        .R(tscl_cntus0));
  FDRE \tscl_cntus_reg[7] 
       (.C(clk),
        .CE(p_2_in),
        .D(\tscl_cntus_reg[4]_i_1_n_4 ),
        .Q(tscl_cntus_reg[7]),
        .R(tscl_cntus0));
  FDRE \tscl_cntus_reg[8] 
       (.C(clk),
        .CE(p_2_in),
        .D(\tscl_cntus_reg[8]_i_1_n_7 ),
        .Q(tscl_cntus_reg[8]),
        .R(tscl_cntus0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tscl_cntus_reg[8]_i_1 
       (.CI(\tscl_cntus_reg[4]_i_1_n_0 ),
        .CO({\tscl_cntus_reg[8]_i_1_n_0 ,\tscl_cntus_reg[8]_i_1_n_1 ,\tscl_cntus_reg[8]_i_1_n_2 ,\tscl_cntus_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tscl_cntus_reg[8]_i_1_n_4 ,\tscl_cntus_reg[8]_i_1_n_5 ,\tscl_cntus_reg[8]_i_1_n_6 ,\tscl_cntus_reg[8]_i_1_n_7 }),
        .S(tscl_cntus_reg[11:8]));
  FDRE \tscl_cntus_reg[9] 
       (.C(clk),
        .CE(p_2_in),
        .D(\tscl_cntus_reg[8]_i_1_n_6 ),
        .Q(tscl_cntus_reg[9]),
        .R(tscl_cntus0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 tscl_ovfus0_carry
       (.CI(\<const0> ),
        .CO({tscl_ovfus0_carry_n_0,tscl_ovfus0_carry_n_1,tscl_ovfus0_carry_n_2,tscl_ovfus0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({tscl_ovfus0_carry_i_1_n_0,tscl_ovfus0_carry_i_2_n_0,tscl_ovfus0_carry_i_3_n_0,tscl_ovfus0_carry_i_4_n_0}),
        .S({S,tscl_ovfus0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 tscl_ovfus0_carry__0
       (.CI(tscl_ovfus0_carry_n_0),
        .CO({tscl_ovfus0,tscl_ovfus0_carry__0_n_1,tscl_ovfus0_carry__0_n_2,tscl_ovfus0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({tscl_ovfus0_carry__0_i_1_n_0,tscl_ovfus0_carry__0_i_2_n_0,tscl_ovfus0_carry__0_i_3_n_0,tscl_ovfus0_carry__0_i_4_n_0}),
        .S(\tscl_cntus_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    tscl_ovfus0_carry__0_i_1
       (.I0(\tscl_cntus_reg[15]_0 [13]),
        .I1(stab_ratef[15]),
        .I2(\tscl_cntus_reg[15]_0 [12]),
        .I3(stab_ratef[14]),
        .O(tscl_ovfus0_carry__0_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tscl_ovfus0_carry__0_i_13
       (.CI(tscl_ovfus0_carry_i_9_n_0),
        .CO({tscl_ovfus0_carry__0_i_13_n_0,tscl_ovfus0_carry__0_i_13_n_1,tscl_ovfus0_carry__0_i_13_n_2,tscl_ovfus0_carry__0_i_13_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\tscl_cntus_reg[15]_0 [10:7]),
        .S(tscl_cntus_reg[12:9]));
  LUT4 #(
    .INIT(16'h22B2)) 
    tscl_ovfus0_carry__0_i_2
       (.I0(\tscl_cntus_reg[15]_0 [11]),
        .I1(stab_ratef[13]),
        .I2(\tscl_cntus_reg[15]_0 [10]),
        .I3(stab_ratef[12]),
        .O(tscl_ovfus0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tscl_ovfus0_carry__0_i_3
       (.I0(\tscl_cntus_reg[15]_0 [9]),
        .I1(stab_ratef[11]),
        .I2(\tscl_cntus_reg[15]_0 [8]),
        .I3(stab_ratef[10]),
        .O(tscl_ovfus0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tscl_ovfus0_carry__0_i_4
       (.I0(\tscl_cntus_reg[15]_0 [7]),
        .I1(stab_ratef[9]),
        .I2(\tscl_cntus_reg[15]_0 [6]),
        .I3(stab_ratef[8]),
        .O(tscl_ovfus0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tscl_ovfus0_carry__0_i_9
       (.CI(tscl_ovfus0_carry__0_i_13_n_0),
        .CO({tscl_ovfus0_carry__0_i_9_n_2,tscl_ovfus0_carry__0_i_9_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\tscl_cntus_reg[15]_0 [13:11]),
        .S({\<const0> ,tscl_cntus_reg[15:13]}));
  LUT4 #(
    .INIT(16'h22B2)) 
    tscl_ovfus0_carry_i_1
       (.I0(\tscl_cntus_reg[15]_0 [5]),
        .I1(stab_ratef[7]),
        .I2(\tscl_cntus_reg[15]_0 [4]),
        .I3(stab_ratef[6]),
        .O(tscl_ovfus0_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tscl_ovfus0_carry_i_13
       (.CI(\<const0> ),
        .CO({tscl_ovfus0_carry_i_13_n_0,tscl_ovfus0_carry_i_13_n_1,tscl_ovfus0_carry_i_13_n_2,tscl_ovfus0_carry_i_13_n_3}),
        .CYINIT(tscl_cntus_reg[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\tscl_cntus_reg[15]_0 [2:0],p_1_in[1]}),
        .S(tscl_cntus_reg[4:1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    tscl_ovfus0_carry_i_2
       (.I0(\tscl_cntus_reg[15]_0 [3]),
        .I1(stab_ratef[5]),
        .I2(\tscl_cntus_reg[15]_0 [2]),
        .I3(stab_ratef[4]),
        .O(tscl_ovfus0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tscl_ovfus0_carry_i_3
       (.I0(\tscl_cntus_reg[15]_0 [1]),
        .I1(stab_ratef[3]),
        .I2(\tscl_cntus_reg[15]_0 [0]),
        .I3(stab_ratef[2]),
        .O(tscl_ovfus0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h222B)) 
    tscl_ovfus0_carry_i_4
       (.I0(p_1_in[1]),
        .I1(stab_ratef[1]),
        .I2(stab_ratef[0]),
        .I3(tscl_cntus_reg[0]),
        .O(tscl_ovfus0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    tscl_ovfus0_carry_i_8
       (.I0(tscl_cntus_reg[0]),
        .I1(stab_ratef[0]),
        .I2(stab_ratef[1]),
        .I3(p_1_in[1]),
        .O(tscl_ovfus0_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tscl_ovfus0_carry_i_9
       (.CI(tscl_ovfus0_carry_i_13_n_0),
        .CO({tscl_ovfus0_carry_i_9_n_0,tscl_ovfus0_carry_i_9_n_1,tscl_ovfus0_carry_i_9_n_2,tscl_ovfus0_carry_i_9_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\tscl_cntus_reg[15]_0 [6:3]),
        .S(tscl_cntus_reg[8:5]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 tscl_pwm0_carry
       (.CI(\<const0> ),
        .CO({tscl_pwm0_carry_n_0,tscl_pwm0_carry_n_1,tscl_pwm0_carry_n_2,tscl_pwm0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({tscl_pwm0_carry_i_1_n_0,tscl_pwm0_carry_i_2_n_0,tscl_pwm0_carry_i_3_n_0,tscl_pwm0_carry_i_4_n_0}),
        .S({tscl_pwm0_carry__0_0,tscl_pwm0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 tscl_pwm0_carry__0
       (.CI(tscl_pwm0_carry_n_0),
        .CO({tscl_pwm0_carry__0_n_0,tscl_pwm0_carry__0_n_1,tscl_pwm0_carry__0_n_2,tscl_pwm0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({tscl_pwm0_carry__0_i_1_n_0,tscl_pwm0_carry__0_i_2_n_0,tscl_pwm0_carry__0_i_3_n_0,tscl_pwm0_carry__0_i_4_n_0}),
        .S({tscl_pwm0_carry__0_i_5_n_0,tscl_pwm_reg_0}));
  LUT3 #(
    .INIT(8'hBA)) 
    tscl_pwm0_carry__0_i_1
       (.I0(\tscl_cntus_reg[15]_0 [13]),
        .I1(stab_ratef[15]),
        .I2(\tscl_cntus_reg[15]_0 [12]),
        .O(tscl_pwm0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tscl_pwm0_carry__0_i_2
       (.I0(\tscl_cntus_reg[15]_0 [11]),
        .I1(stab_ratef[14]),
        .I2(\tscl_cntus_reg[15]_0 [10]),
        .I3(stab_ratef[13]),
        .O(tscl_pwm0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tscl_pwm0_carry__0_i_3
       (.I0(\tscl_cntus_reg[15]_0 [9]),
        .I1(stab_ratef[12]),
        .I2(\tscl_cntus_reg[15]_0 [8]),
        .I3(stab_ratef[11]),
        .O(tscl_pwm0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tscl_pwm0_carry__0_i_4
       (.I0(\tscl_cntus_reg[15]_0 [7]),
        .I1(stab_ratef[10]),
        .I2(\tscl_cntus_reg[15]_0 [6]),
        .I3(stab_ratef[9]),
        .O(tscl_pwm0_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    tscl_pwm0_carry__0_i_5
       (.I0(\tscl_cntus_reg[15]_0 [13]),
        .I1(stab_ratef[15]),
        .I2(\tscl_cntus_reg[15]_0 [12]),
        .O(tscl_pwm0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tscl_pwm0_carry_i_1
       (.I0(\tscl_cntus_reg[15]_0 [5]),
        .I1(stab_ratef[8]),
        .I2(\tscl_cntus_reg[15]_0 [4]),
        .I3(stab_ratef[7]),
        .O(tscl_pwm0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tscl_pwm0_carry_i_2
       (.I0(\tscl_cntus_reg[15]_0 [3]),
        .I1(stab_ratef[6]),
        .I2(\tscl_cntus_reg[15]_0 [2]),
        .I3(stab_ratef[5]),
        .O(tscl_pwm0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tscl_pwm0_carry_i_3
       (.I0(\tscl_cntus_reg[15]_0 [1]),
        .I1(stab_ratef[4]),
        .I2(\tscl_cntus_reg[15]_0 [0]),
        .I3(stab_ratef[3]),
        .O(tscl_pwm0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h222B)) 
    tscl_pwm0_carry_i_4
       (.I0(p_1_in[1]),
        .I1(stab_ratef[2]),
        .I2(stab_ratef[1]),
        .I3(tscl_cntus_reg[0]),
        .O(tscl_pwm0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    tscl_pwm0_carry_i_8
       (.I0(tscl_cntus_reg[0]),
        .I1(stab_ratef[1]),
        .I2(stab_ratef[2]),
        .I3(p_1_in[1]),
        .O(tscl_pwm0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h000000000000EEE2)) 
    tscl_pwm_i_1
       (.I0(tscl_pwm),
        .I1(tscl_pwm0_carry__0_n_0),
        .I2(tscl_pwm_reg_2),
        .I3(tscl_pwm_reg_3),
        .I4(tscl_pwm_i_4_n_0),
        .I5(tscl_pwm_reg_1),
        .O(tscl_pwm_i_1_n_0));
  LUT4 #(
    .INIT(16'hAA08)) 
    tscl_pwm_i_4
       (.I0(tscl_ovfus0),
        .I1(tscl_pwm_i_7_n_0),
        .I2(\tscl_cntus[0]_i_4_n_0 ),
        .I3(simumd),
        .O(tscl_pwm_i_4_n_0));
  LUT6 #(
    .INIT(64'h0014000000000014)) 
    tscl_pwm_i_7
       (.I0(\tscl_cntus[0]_i_5_n_0 ),
        .I1(\tscl_cntbcd_reg_n_0_[0] ),
        .I2(clk_mhz[0]),
        .I3(\tscl_cntus[0]_i_8_n_0 ),
        .I4(clk_mhz[3]),
        .I5(data0[3]),
        .O(tscl_pwm_i_7_n_0));
  FDRE tscl_pwm_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(tscl_pwm_i_1_n_0),
        .Q(tscl_pwm),
        .R(\<const0> ));
endmodule
