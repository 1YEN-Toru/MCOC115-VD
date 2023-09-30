
(* STRUCTURAL_NETLIST = "yes" *)
module tim162
   (clk,
    rst_n,
    brdy,
    bcmdr,
    bcmdw,
    bcs_timr_n,
    badr,
    bdatw,
    timr_pwma,
    timr_pwmb,
    timr_ovfr,
    timr_cmar,
    timr_cmbr,
    bdatr);
//
//	16 bit timer unit
//		(c) 2021	1YEN Toru
//
//
//	2021/05/01	ver.1.00
//		general purpose 16 bits timer
//		with 2 pwm outputs
//
  input clk;
  input rst_n;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bcs_timr_n;
  input [3:0]badr;
  input [15:0]bdatw;
  output timr_pwma;
  output timr_pwmb;
  output timr_ovfr;
  output timr_cmar;
  output timr_cmbr;
  output [15:0]bdatr;

  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_timr_n;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire p_1_in;
  wire [0:0]p_2_in;
  wire [15:0]psc_reg;
  wire rcma_n_0;
  wire rcma_n_1;
  wire rcma_n_12;
  wire rcma_n_13;
  wire rcma_n_14;
  wire rcmb_n_0;
  wire rcmb_n_1;
  wire rcmb_n_10;
  wire rcmb_n_11;
  wire rcmb_n_12;
  wire rcmb_n_13;
  wire rcmb_n_14;
  wire rcmb_n_15;
  wire rcmb_n_16;
  wire rcmb_n_17;
  wire rcmb_n_18;
  wire rcmb_n_19;
  wire rcmb_n_2;
  wire rcmb_n_20;
  wire rcmb_n_21;
  wire rcmb_n_22;
  wire rcmb_n_23;
  wire rcmb_n_24;
  wire rcmb_n_25;
  wire rcmb_n_26;
  wire rcmb_n_27;
  wire rcmb_n_3;
  wire rcmb_n_4;
  wire rcmb_n_5;
  wire rcmb_n_6;
  wire rcmb_n_7;
  wire rcmb_n_8;
  wire rcmb_n_9;
  wire rcnt_n_30;
  wire rcnt_n_31;
  wire rcnt_n_35;
  wire rcnt_n_36;
  wire rcnt_n_37;
  wire rcnt_n_38;
  wire rcnt_n_39;
  wire rcnt_n_40;
  wire rcnt_n_41;
  wire rcnt_n_42;
  wire rcnt_n_43;
  wire rcnt_n_44;
  wire rcnt_up;
  wire rctl_cnte;
  wire rctl_n_10;
  wire rctl_n_7;
  wire rctl_n_8;
  wire rctl_n_9;
  wire rflg_cma;
  wire rflg_cmae;
  wire rflg_cmaf;
  wire rflg_cmb;
  wire rflg_cmbe;
  wire rflg_cmbf;
  wire rflg_ovfe;
  wire rflg_ovff;
  wire rflg_top;
  wire rprd_n_0;
  wire rprd_n_17;
  wire rprd_n_18;
  wire rpsc_n_0;
  wire rpsc_n_17;
  wire rst_n;
  wire [8:0]timcmx;
  wire [15:0]timcmx2;
  wire [15:0]timcnt;
  wire [7:4]timctl;
  wire [15:1]timnxt;
  wire [15:0]timprd;
  wire [15:0]timpsc;
  wire timr_cmar;
  wire timr_cmbr;
  wire timr_ovfr;
  wire timr_pwma;
  wire timr_pwma1;
  wire timr_pwma1_out;
  wire timr_pwmb;
  wire timr_pwmb0_out;
  wire wr_timflg;

  timr_cmx rcma
       (.CO(rflg_top),
        .E(p_1_in),
        .Q(timcmx),
        .S(rcma_n_12),
        .SR(timr_pwma1),
        .badr(badr),
        .bdatw(bdatw),
        .bdatw_6_sp_1(rcma_n_0),
        .clk(clk),
        .rflg_cmaf(rflg_cmaf),
        .rflg_cmaf_reg(rctl_n_10),
        .rst_n(rst_n),
        .\timcmx2_reg[0]_0 (rcnt_n_31),
        .\timcmx2_reg[15]_0 (timcmx2),
        .\timcmx_reg[15]_0 ({rcma_n_13,rcma_n_14}),
        .\timcmx_reg[5]_0 (rcma_n_1),
        .timnxt(timnxt[15:9]),
        .timr_pwma1_out(timr_pwma1_out),
        .wr_timflg(wr_timflg));
  timr_cmx_0 rcmb
       (.CO(rflg_top),
        .E(p_1_in),
        .Q({rcmb_n_2,rcmb_n_3,rcmb_n_4,rcmb_n_5,rcmb_n_6,rcmb_n_7}),
        .S({rcmb_n_8,rcmb_n_9}),
        .SR(timr_pwma1),
        .badr(badr),
        .bdatw(bdatw),
        .bdatw_5_sp_1(rcmb_n_0),
        .clk(clk),
        .rflg_cmb_carry(timcnt[0]),
        .rflg_cmbf(rflg_cmbf),
        .rflg_cmbf_reg(rctl_n_10),
        .\timcmx2_reg[0]_0 (rcnt_n_31),
        .\timcmx2_reg[15]_0 ({rcmb_n_12,rcmb_n_13,rcmb_n_14,rcmb_n_15,rcmb_n_16,rcmb_n_17,rcmb_n_18,rcmb_n_19,rcmb_n_20,rcmb_n_21,rcmb_n_22,rcmb_n_23,rcmb_n_24,rcmb_n_25,rcmb_n_26,rcmb_n_27}),
        .\timcmx_reg[15]_0 ({rcmb_n_10,rcmb_n_11}),
        .\timcmx_reg[5]_0 (rcmb_n_1),
        .timnxt({timnxt[15:9],timnxt[2:1]}),
        .timr_pwmb0_out(timr_pwmb0_out),
        .wr_timflg(wr_timflg));
  timr_cnt rcnt
       (.CO(rcnt_up),
        .D(p_2_in),
        .E(p_1_in),
        .Q(timcnt),
        .S(rpsc_n_0),
        .SR(timr_pwma1),
        .badr(badr),
        .badr_3_sp_1(rcnt_n_30),
        .bcmdw(bcmdw),
        .bcs_timr_n(bcs_timr_n),
        .bdatw(bdatw[15:1]),
        .brdy(brdy),
        .brdy_0(rcnt_n_31),
        .clk(clk),
        .\psc_reg[0]_0 (rctl_n_9),
        .\psc_reg[15]_0 ({psc_reg[15],psc_reg[2:0]}),
        .rcnt_ovfl0_carry__0_0(rprd_n_0),
        .rcnt_ovfl0_carry__0_1(timprd[14:0]),
        .rcnt_up_carry__0_0(timpsc[14:3]),
        .rflg_cma_carry(timcmx),
        .rflg_cmb_carry({rcmb_n_2,rcmb_n_3,rcmb_n_4,rcmb_n_5,rcmb_n_6,rcmb_n_7}),
        .\timcmx_reg[15] (rpsc_n_17),
        .\timcmx_reg[15]_0 (rprd_n_18),
        .\timcmx_reg[15]_1 (rctl_cnte),
        .\timcmx_reg[6] ({rcnt_n_43,rcnt_n_44}),
        .\timcmx_reg[8] ({rcnt_n_40,rcnt_n_41,rcnt_n_42}),
        .\timcnt_reg[11]_0 ({rcnt_n_35,rcnt_n_36,rcnt_n_37,rcnt_n_38}),
        .\timcnt_reg[14]_0 (rcnt_n_39),
        .\timcnt_reg[15]_0 ({timnxt[15:9],timnxt[2:1]}),
        .\timcnt_reg[15]_1 (rctl_n_8),
        .\timcnt_reg[1]_0 (rflg_top),
        .timr_pwma1_out(timr_pwma1_out),
        .timr_pwma_reg(rflg_cma),
        .timr_pwmb0_out(timr_pwmb0_out),
        .timr_pwmb_reg(rflg_cmb));
  timr_rctl rctl
       (.CO(rcnt_up),
        .E(rctl_n_7),
        .Q({timctl,rctl_cnte}),
        .SR(timr_pwma1),
        .badr(badr),
        .bdatw({bdatw[7:4],bdatw[0]}),
        .clk(clk),
        .rst_n(rst_n),
        .\timcnt_reg[15] (rcnt_n_30),
        .\timctl_reg[0]_0 (rctl_n_8),
        .\timctl_reg[0]_1 (rctl_n_9),
        .\timctl_reg[0]_2 (rctl_n_10),
        .\timctl_reg[0]_3 (rcnt_n_31),
        .timr_pwma(timr_pwma),
        .timr_pwma1_out(timr_pwma1_out),
        .timr_pwma_reg_0(rcma_n_1),
        .timr_pwmb(timr_pwmb),
        .timr_pwmb0_out(timr_pwmb0_out),
        .timr_pwmb_reg_0(rcmb_n_1));
  timr_rflg rflg
       (.CO(rcnt_up),
        .D(p_2_in),
        .Q(timcnt[0]),
        .S({rprd_n_17,rcnt_n_39}),
        .badr(badr),
        .bdatw({bdatw[7],bdatw[3:0]}),
        .clk(clk),
        .rflg_cma_carry__0_0({rcma_n_12,rcnt_n_40,rcnt_n_41,rcnt_n_42}),
        .rflg_cmae(rflg_cmae),
        .rflg_cmaf(rflg_cmaf),
        .rflg_cmaf_reg_0(rcma_n_0),
        .rflg_cmb_carry__0_0({rcmb_n_8,rcnt_n_43,rcnt_n_44,rcmb_n_9}),
        .rflg_cmbe(rflg_cmbe),
        .rflg_cmbf(rflg_cmbf),
        .rflg_cmbf_reg_0(rcmb_n_0),
        .rflg_ovfe(rflg_ovfe),
        .rflg_ovff(rflg_ovff),
        .rflg_ovff_reg_0(rctl_n_10),
        .rflg_top_carry__0_0({rcnt_n_35,rcnt_n_36,rcnt_n_37,rcnt_n_38}),
        .rst_n(rst_n),
        .\timcmx_reg[15] (rflg_cma),
        .\timcmx_reg[15]_0 (rflg_cmb),
        .\timcnt_reg[0] (rcnt_n_30),
        .\timflg_reg[3]_0 (rcnt_n_31),
        .\timprd_reg[15] (rflg_top),
        .timr_cmar(timr_cmar),
        .timr_cmbr(timr_cmbr),
        .timr_ovfr(timr_ovfr),
        .timr_pwma_i_3({rcma_n_13,rcma_n_14}),
        .timr_pwmb_i_3({rcmb_n_10,rcmb_n_11}),
        .wr_timflg(wr_timflg));
  timr_prd rprd
       (.Q(timprd),
        .S(rprd_n_17),
        .SR(timr_pwma1),
        .badr(badr),
        .bdatw(bdatw),
        .clk(clk),
        .rcnt_ovfl0_carry__0({timnxt[15],timnxt[2:1]}),
        .rflg_top_carry__0({timcnt[15],timcnt[0]}),
        .\timprd_reg[0]_0 (rprd_n_0),
        .\timprd_reg[0]_1 (rcnt_n_31),
        .\timprd_reg[15]_0 (rprd_n_18));
  timr_psc rpsc
       (.E(rctl_n_7),
        .Q(timpsc),
        .S(rpsc_n_0),
        .SR(timr_pwma1),
        .bdatw(bdatw),
        .clk(clk),
        .rcnt_up_carry__0({psc_reg[15],psc_reg[2:0]}),
        .\timpsc_reg[15]_0 (rpsc_n_17));
  timr_tctl tctl
       (.Q(timcnt),
        .SR(timr_pwma1),
        .badr(badr),
        .bcmdr(bcmdr),
        .bcs_timr_n(bcs_timr_n),
        .bdatr(bdatr),
        .\bdatr[15] (timpsc),
        .\bdatr[15]_0 (timprd),
        .\bdatr[15]_1 (timcmx2),
        .\bdatr[15]_2 ({rcmb_n_12,rcmb_n_13,rcmb_n_14,rcmb_n_15,rcmb_n_16,rcmb_n_17,rcmb_n_18,rcmb_n_19,rcmb_n_20,rcmb_n_21,rcmb_n_22,rcmb_n_23,rcmb_n_24,rcmb_n_25,rcmb_n_26,rcmb_n_27}),
        .\bdatr[7] ({timctl,rctl_cnte}),
        .brdy(brdy),
        .clk(clk),
        .rflg_cmae(rflg_cmae),
        .rflg_cmaf(rflg_cmaf),
        .rflg_cmbe(rflg_cmbe),
        .rflg_cmbf(rflg_cmbf),
        .rflg_ovfe(rflg_ovfe),
        .rflg_ovff(rflg_ovff));
endmodule

module timr_cmx
   (.bdatw_6_sp_1(bdatw_6_sn_1),
    \timcmx_reg[5]_0 ,
    Q,
    SR,
    S,
    \timcmx_reg[15]_0 ,
    \timcmx2_reg[15]_0 ,
    wr_timflg,
    bdatw,
    timr_pwma1_out,
    rflg_cmaf,
    rflg_cmaf_reg,
    badr,
    \timcmx2_reg[0]_0 ,
    CO,
    rst_n,
    timnxt,
    clk,
    E);
  output \timcmx_reg[5]_0 ;
  output [8:0]Q;
  output [0:0]SR;
  output [0:0]S;
  output [1:0]\timcmx_reg[15]_0 ;
  output [15:0]\timcmx2_reg[15]_0 ;
  input wr_timflg;
  input [15:0]bdatw;
  input timr_pwma1_out;
  input rflg_cmaf;
  input rflg_cmaf_reg;
  input [3:0]badr;
  input \timcmx2_reg[0]_0 ;
  input [0:0]CO;
  input rst_n;
  input [6:0]timnxt;
  input clk;
  input [0:0]E;
  output bdatw_6_sn_1;

  wire [0:0]CO;
  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [3:0]badr;
  wire [15:0]bdatw;
  wire bdatw_6_sn_1;
  wire clk;
  wire rflg_cmaf;
  wire rflg_cmaf_reg;
  wire rst_n;
  wire [15:9]timcmx;
  wire \timcmx2_reg[0]_0 ;
  wire [15:0]\timcmx2_reg[15]_0 ;
  wire [1:0]\timcmx_reg[15]_0 ;
  wire \timcmx_reg[5]_0 ;
  wire [6:0]timnxt;
  wire timr_pwma1_out;
  wire timr_pwma_i_4_n_0;
  wire timr_pwma_i_5_n_0;
  wire timr_pwma_i_6_n_0;
  wire timr_pwma_i_7_n_0;
  wire wr_timcma;
  wire wr_timflg;

  LUT2 #(
    .INIT(4'h9)) 
    rflg_cma_carry__0_i_1
       (.I0(timcmx[15]),
        .I1(timnxt[6]),
        .O(\timcmx_reg[15]_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rflg_cma_carry__0_i_2
       (.I0(timcmx[14]),
        .I1(timnxt[5]),
        .I2(timnxt[4]),
        .I3(timcmx[13]),
        .I4(timnxt[3]),
        .I5(timcmx[12]),
        .O(\timcmx_reg[15]_0 [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rflg_cma_carry_i_1
       (.I0(timcmx[11]),
        .I1(timnxt[2]),
        .I2(timnxt[1]),
        .I3(timcmx[10]),
        .I4(timnxt[0]),
        .I5(timcmx[9]),
        .O(S));
  LUT6 #(
    .INIT(64'h0000000077770700)) 
    rflg_cmaf_i_1
       (.I0(wr_timflg),
        .I1(bdatw[6]),
        .I2(\timcmx_reg[5]_0 ),
        .I3(timr_pwma1_out),
        .I4(rflg_cmaf),
        .I5(rflg_cmaf_reg),
        .O(bdatw_6_sn_1));
  LUT5 #(
    .INIT(32'h00000400)) 
    \timcmx2[15]_i_1__0 
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(\timcmx2_reg[0]_0 ),
        .O(wr_timcma));
  FDRE \timcmx2_reg[0] 
       (.C(clk),
        .CE(wr_timcma),
        .D(bdatw[0]),
        .Q(\timcmx2_reg[15]_0 [0]),
        .R(SR));
  FDRE \timcmx2_reg[10] 
       (.C(clk),
        .CE(wr_timcma),
        .D(bdatw[10]),
        .Q(\timcmx2_reg[15]_0 [10]),
        .R(SR));
  FDRE \timcmx2_reg[11] 
       (.C(clk),
        .CE(wr_timcma),
        .D(bdatw[11]),
        .Q(\timcmx2_reg[15]_0 [11]),
        .R(SR));
  FDRE \timcmx2_reg[12] 
       (.C(clk),
        .CE(wr_timcma),
        .D(bdatw[12]),
        .Q(\timcmx2_reg[15]_0 [12]),
        .R(SR));
  FDRE \timcmx2_reg[13] 
       (.C(clk),
        .CE(wr_timcma),
        .D(bdatw[13]),
        .Q(\timcmx2_reg[15]_0 [13]),
        .R(SR));
  FDRE \timcmx2_reg[14] 
       (.C(clk),
        .CE(wr_timcma),
        .D(bdatw[14]),
        .Q(\timcmx2_reg[15]_0 [14]),
        .R(SR));
  FDRE \timcmx2_reg[15] 
       (.C(clk),
        .CE(wr_timcma),
        .D(bdatw[15]),
        .Q(\timcmx2_reg[15]_0 [15]),
        .R(SR));
  FDRE \timcmx2_reg[1] 
       (.C(clk),
        .CE(wr_timcma),
        .D(bdatw[1]),
        .Q(\timcmx2_reg[15]_0 [1]),
        .R(SR));
  FDRE \timcmx2_reg[2] 
       (.C(clk),
        .CE(wr_timcma),
        .D(bdatw[2]),
        .Q(\timcmx2_reg[15]_0 [2]),
        .R(SR));
  FDRE \timcmx2_reg[3] 
       (.C(clk),
        .CE(wr_timcma),
        .D(bdatw[3]),
        .Q(\timcmx2_reg[15]_0 [3]),
        .R(SR));
  FDRE \timcmx2_reg[4] 
       (.C(clk),
        .CE(wr_timcma),
        .D(bdatw[4]),
        .Q(\timcmx2_reg[15]_0 [4]),
        .R(SR));
  FDRE \timcmx2_reg[5] 
       (.C(clk),
        .CE(wr_timcma),
        .D(bdatw[5]),
        .Q(\timcmx2_reg[15]_0 [5]),
        .R(SR));
  FDRE \timcmx2_reg[6] 
       (.C(clk),
        .CE(wr_timcma),
        .D(bdatw[6]),
        .Q(\timcmx2_reg[15]_0 [6]),
        .R(SR));
  FDRE \timcmx2_reg[7] 
       (.C(clk),
        .CE(wr_timcma),
        .D(bdatw[7]),
        .Q(\timcmx2_reg[15]_0 [7]),
        .R(SR));
  FDRE \timcmx2_reg[8] 
       (.C(clk),
        .CE(wr_timcma),
        .D(bdatw[8]),
        .Q(\timcmx2_reg[15]_0 [8]),
        .R(SR));
  FDRE \timcmx2_reg[9] 
       (.C(clk),
        .CE(wr_timcma),
        .D(bdatw[9]),
        .Q(\timcmx2_reg[15]_0 [9]),
        .R(SR));
  FDRE \timcmx_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \timcmx_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [10]),
        .Q(timcmx[10]),
        .R(SR));
  FDRE \timcmx_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [11]),
        .Q(timcmx[11]),
        .R(SR));
  FDRE \timcmx_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [12]),
        .Q(timcmx[12]),
        .R(SR));
  FDRE \timcmx_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [13]),
        .Q(timcmx[13]),
        .R(SR));
  FDRE \timcmx_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [14]),
        .Q(timcmx[14]),
        .R(SR));
  FDRE \timcmx_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [15]),
        .Q(timcmx[15]),
        .R(SR));
  FDRE \timcmx_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \timcmx_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \timcmx_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \timcmx_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \timcmx_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \timcmx_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \timcmx_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \timcmx_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \timcmx_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [9]),
        .Q(timcmx[9]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \timctl[7]_i_1 
       (.I0(rst_n),
        .O(SR));
  LUT3 #(
    .INIT(8'h8A)) 
    timr_pwma_i_2
       (.I0(CO),
        .I1(timr_pwma_i_4_n_0),
        .I2(timr_pwma_i_5_n_0),
        .O(\timcmx_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    timr_pwma_i_4
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[7]),
        .I4(timr_pwma_i_6_n_0),
        .O(timr_pwma_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    timr_pwma_i_5
       (.I0(timcmx[9]),
        .I1(timcmx[10]),
        .I2(Q[8]),
        .I3(timcmx[11]),
        .I4(timr_pwma_i_7_n_0),
        .O(timr_pwma_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    timr_pwma_i_6
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(timr_pwma_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    timr_pwma_i_7
       (.I0(timcmx[15]),
        .I1(timcmx[12]),
        .I2(timcmx[14]),
        .I3(timcmx[13]),
        .O(timr_pwma_i_7_n_0));
endmodule

(* ORIG_REF_NAME = "timr_cmx" *) 
module timr_cmx_0
   (.bdatw_5_sp_1(bdatw_5_sn_1),
    \timcmx_reg[5]_0 ,
    Q,
    S,
    \timcmx_reg[15]_0 ,
    \timcmx2_reg[15]_0 ,
    wr_timflg,
    bdatw,
    timr_pwmb0_out,
    rflg_cmbf,
    rflg_cmbf_reg,
    badr,
    \timcmx2_reg[0]_0 ,
    CO,
    rflg_cmb_carry,
    timnxt,
    SR,
    clk,
    E);
  output \timcmx_reg[5]_0 ;
  output [5:0]Q;
  output [1:0]S;
  output [1:0]\timcmx_reg[15]_0 ;
  output [15:0]\timcmx2_reg[15]_0 ;
  input wr_timflg;
  input [15:0]bdatw;
  input timr_pwmb0_out;
  input rflg_cmbf;
  input rflg_cmbf_reg;
  input [3:0]badr;
  input \timcmx2_reg[0]_0 ;
  input [0:0]CO;
  input [0:0]rflg_cmb_carry;
  input [8:0]timnxt;
  input [0:0]SR;
  input clk;
  input [0:0]E;
  output bdatw_5_sn_1;

  wire [0:0]CO;
  wire [0:0]E;
  wire [5:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire [3:0]badr;
  wire [15:0]bdatw;
  wire bdatw_5_sn_1;
  wire clk;
  wire [0:0]rflg_cmb_carry;
  wire rflg_cmbf;
  wire rflg_cmbf_reg;
  wire \timcmx2_reg[0]_0 ;
  wire [15:0]\timcmx2_reg[15]_0 ;
  wire [1:0]\timcmx_reg[15]_0 ;
  wire \timcmx_reg[5]_0 ;
  wire \timcmx_reg_n_0_[0] ;
  wire \timcmx_reg_n_0_[10] ;
  wire \timcmx_reg_n_0_[11] ;
  wire \timcmx_reg_n_0_[12] ;
  wire \timcmx_reg_n_0_[13] ;
  wire \timcmx_reg_n_0_[14] ;
  wire \timcmx_reg_n_0_[15] ;
  wire \timcmx_reg_n_0_[1] ;
  wire \timcmx_reg_n_0_[2] ;
  wire \timcmx_reg_n_0_[9] ;
  wire [8:0]timnxt;
  wire timr_pwmb0_out;
  wire timr_pwmb_i_4_n_0;
  wire timr_pwmb_i_5_n_0;
  wire timr_pwmb_i_6_n_0;
  wire timr_pwmb_i_7_n_0;
  wire wr_timcmb;
  wire wr_timflg;

  LUT2 #(
    .INIT(4'h9)) 
    rflg_cmb_carry__0_i_1
       (.I0(\timcmx_reg_n_0_[15] ),
        .I1(timnxt[8]),
        .O(\timcmx_reg[15]_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rflg_cmb_carry__0_i_2
       (.I0(\timcmx_reg_n_0_[14] ),
        .I1(timnxt[7]),
        .I2(timnxt[5]),
        .I3(\timcmx_reg_n_0_[12] ),
        .I4(timnxt[6]),
        .I5(\timcmx_reg_n_0_[13] ),
        .O(\timcmx_reg[15]_0 [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rflg_cmb_carry_i_1
       (.I0(\timcmx_reg_n_0_[11] ),
        .I1(timnxt[4]),
        .I2(timnxt[2]),
        .I3(\timcmx_reg_n_0_[9] ),
        .I4(timnxt[3]),
        .I5(\timcmx_reg_n_0_[10] ),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    rflg_cmb_carry_i_4
       (.I0(\timcmx_reg_n_0_[0] ),
        .I1(rflg_cmb_carry),
        .I2(timnxt[1]),
        .I3(\timcmx_reg_n_0_[2] ),
        .I4(timnxt[0]),
        .I5(\timcmx_reg_n_0_[1] ),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h0000000077770700)) 
    rflg_cmbf_i_1
       (.I0(wr_timflg),
        .I1(bdatw[5]),
        .I2(\timcmx_reg[5]_0 ),
        .I3(timr_pwmb0_out),
        .I4(rflg_cmbf),
        .I5(rflg_cmbf_reg),
        .O(bdatw_5_sn_1));
  LUT5 #(
    .INIT(32'h00000200)) 
    \timcmx2[15]_i_1 
       (.I0(badr[2]),
        .I1(badr[0]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(\timcmx2_reg[0]_0 ),
        .O(wr_timcmb));
  FDRE \timcmx2_reg[0] 
       (.C(clk),
        .CE(wr_timcmb),
        .D(bdatw[0]),
        .Q(\timcmx2_reg[15]_0 [0]),
        .R(SR));
  FDRE \timcmx2_reg[10] 
       (.C(clk),
        .CE(wr_timcmb),
        .D(bdatw[10]),
        .Q(\timcmx2_reg[15]_0 [10]),
        .R(SR));
  FDRE \timcmx2_reg[11] 
       (.C(clk),
        .CE(wr_timcmb),
        .D(bdatw[11]),
        .Q(\timcmx2_reg[15]_0 [11]),
        .R(SR));
  FDRE \timcmx2_reg[12] 
       (.C(clk),
        .CE(wr_timcmb),
        .D(bdatw[12]),
        .Q(\timcmx2_reg[15]_0 [12]),
        .R(SR));
  FDRE \timcmx2_reg[13] 
       (.C(clk),
        .CE(wr_timcmb),
        .D(bdatw[13]),
        .Q(\timcmx2_reg[15]_0 [13]),
        .R(SR));
  FDRE \timcmx2_reg[14] 
       (.C(clk),
        .CE(wr_timcmb),
        .D(bdatw[14]),
        .Q(\timcmx2_reg[15]_0 [14]),
        .R(SR));
  FDRE \timcmx2_reg[15] 
       (.C(clk),
        .CE(wr_timcmb),
        .D(bdatw[15]),
        .Q(\timcmx2_reg[15]_0 [15]),
        .R(SR));
  FDRE \timcmx2_reg[1] 
       (.C(clk),
        .CE(wr_timcmb),
        .D(bdatw[1]),
        .Q(\timcmx2_reg[15]_0 [1]),
        .R(SR));
  FDRE \timcmx2_reg[2] 
       (.C(clk),
        .CE(wr_timcmb),
        .D(bdatw[2]),
        .Q(\timcmx2_reg[15]_0 [2]),
        .R(SR));
  FDRE \timcmx2_reg[3] 
       (.C(clk),
        .CE(wr_timcmb),
        .D(bdatw[3]),
        .Q(\timcmx2_reg[15]_0 [3]),
        .R(SR));
  FDRE \timcmx2_reg[4] 
       (.C(clk),
        .CE(wr_timcmb),
        .D(bdatw[4]),
        .Q(\timcmx2_reg[15]_0 [4]),
        .R(SR));
  FDRE \timcmx2_reg[5] 
       (.C(clk),
        .CE(wr_timcmb),
        .D(bdatw[5]),
        .Q(\timcmx2_reg[15]_0 [5]),
        .R(SR));
  FDRE \timcmx2_reg[6] 
       (.C(clk),
        .CE(wr_timcmb),
        .D(bdatw[6]),
        .Q(\timcmx2_reg[15]_0 [6]),
        .R(SR));
  FDRE \timcmx2_reg[7] 
       (.C(clk),
        .CE(wr_timcmb),
        .D(bdatw[7]),
        .Q(\timcmx2_reg[15]_0 [7]),
        .R(SR));
  FDRE \timcmx2_reg[8] 
       (.C(clk),
        .CE(wr_timcmb),
        .D(bdatw[8]),
        .Q(\timcmx2_reg[15]_0 [8]),
        .R(SR));
  FDRE \timcmx2_reg[9] 
       (.C(clk),
        .CE(wr_timcmb),
        .D(bdatw[9]),
        .Q(\timcmx2_reg[15]_0 [9]),
        .R(SR));
  FDRE \timcmx_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [0]),
        .Q(\timcmx_reg_n_0_[0] ),
        .R(SR));
  FDRE \timcmx_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [10]),
        .Q(\timcmx_reg_n_0_[10] ),
        .R(SR));
  FDRE \timcmx_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [11]),
        .Q(\timcmx_reg_n_0_[11] ),
        .R(SR));
  FDRE \timcmx_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [12]),
        .Q(\timcmx_reg_n_0_[12] ),
        .R(SR));
  FDRE \timcmx_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [13]),
        .Q(\timcmx_reg_n_0_[13] ),
        .R(SR));
  FDRE \timcmx_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [14]),
        .Q(\timcmx_reg_n_0_[14] ),
        .R(SR));
  FDRE \timcmx_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [15]),
        .Q(\timcmx_reg_n_0_[15] ),
        .R(SR));
  FDRE \timcmx_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [1]),
        .Q(\timcmx_reg_n_0_[1] ),
        .R(SR));
  FDRE \timcmx_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [2]),
        .Q(\timcmx_reg_n_0_[2] ),
        .R(SR));
  FDRE \timcmx_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [3]),
        .Q(Q[0]),
        .R(SR));
  FDRE \timcmx_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [4]),
        .Q(Q[1]),
        .R(SR));
  FDRE \timcmx_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [5]),
        .Q(Q[2]),
        .R(SR));
  FDRE \timcmx_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [6]),
        .Q(Q[3]),
        .R(SR));
  FDRE \timcmx_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [7]),
        .Q(Q[4]),
        .R(SR));
  FDRE \timcmx_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [8]),
        .Q(Q[5]),
        .R(SR));
  FDRE \timcmx_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\timcmx2_reg[15]_0 [9]),
        .Q(\timcmx_reg_n_0_[9] ),
        .R(SR));
  LUT3 #(
    .INIT(8'h8A)) 
    timr_pwmb_i_2
       (.I0(CO),
        .I1(timr_pwmb_i_4_n_0),
        .I2(timr_pwmb_i_5_n_0),
        .O(\timcmx_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    timr_pwmb_i_4
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(timr_pwmb_i_6_n_0),
        .O(timr_pwmb_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    timr_pwmb_i_5
       (.I0(\timcmx_reg_n_0_[9] ),
        .I1(\timcmx_reg_n_0_[10] ),
        .I2(Q[5]),
        .I3(\timcmx_reg_n_0_[11] ),
        .I4(timr_pwmb_i_7_n_0),
        .O(timr_pwmb_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    timr_pwmb_i_6
       (.I0(Q[0]),
        .I1(\timcmx_reg_n_0_[0] ),
        .I2(\timcmx_reg_n_0_[2] ),
        .I3(\timcmx_reg_n_0_[1] ),
        .O(timr_pwmb_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    timr_pwmb_i_7
       (.I0(\timcmx_reg_n_0_[15] ),
        .I1(\timcmx_reg_n_0_[12] ),
        .I2(\timcmx_reg_n_0_[14] ),
        .I3(\timcmx_reg_n_0_[13] ),
        .O(timr_pwmb_i_7_n_0));
endmodule

module timr_cnt
   (\psc_reg[15]_0 ,
    CO,
    \timcnt_reg[15]_0 ,
    Q,
    .badr_3_sp_1(badr_3_sn_1),
    brdy_0,
    timr_pwma1_out,
    timr_pwmb0_out,
    E,
    \timcnt_reg[11]_0 ,
    \timcnt_reg[14]_0 ,
    \timcmx_reg[8] ,
    \timcmx_reg[6] ,
    \psc_reg[0]_0 ,
    clk,
    S,
    \timcmx_reg[15] ,
    rcnt_ovfl0_carry__0_0,
    \timcmx_reg[15]_0 ,
    D,
    bdatw,
    \timcnt_reg[1]_0 ,
    badr,
    brdy,
    bcs_timr_n,
    bcmdw,
    timr_pwma_reg,
    timr_pwmb_reg,
    \timcmx_reg[15]_1 ,
    rcnt_ovfl0_carry__0_1,
    rflg_cma_carry,
    rflg_cmb_carry,
    rcnt_up_carry__0_0,
    SR,
    \timcnt_reg[15]_1 );
  output [3:0]\psc_reg[15]_0 ;
  output [0:0]CO;
  output [8:0]\timcnt_reg[15]_0 ;
  output [15:0]Q;
  output brdy_0;
  output timr_pwma1_out;
  output timr_pwmb0_out;
  output [0:0]E;
  output [3:0]\timcnt_reg[11]_0 ;
  output [0:0]\timcnt_reg[14]_0 ;
  output [2:0]\timcmx_reg[8] ;
  output [1:0]\timcmx_reg[6] ;
  input \psc_reg[0]_0 ;
  input clk;
  input [0:0]S;
  input [0:0]\timcmx_reg[15] ;
  input [0:0]rcnt_ovfl0_carry__0_0;
  input [0:0]\timcmx_reg[15]_0 ;
  input [0:0]D;
  input [14:0]bdatw;
  input [0:0]\timcnt_reg[1]_0 ;
  input [3:0]badr;
  input brdy;
  input bcs_timr_n;
  input bcmdw;
  input [0:0]timr_pwma_reg;
  input [0:0]timr_pwmb_reg;
  input [0:0]\timcmx_reg[15]_1 ;
  input [14:0]rcnt_ovfl0_carry__0_1;
  input [8:0]rflg_cma_carry;
  input [5:0]rflg_cmb_carry;
  input [11:0]rcnt_up_carry__0_0;
  input [0:0]SR;
  input [0:0]\timcnt_reg[15]_1 ;
  output badr_3_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire [15:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [3:0]badr;
  wire badr_3_sn_1;
  wire bcmdw;
  wire bcs_timr_n;
  wire [14:0]bdatw;
  wire brdy;
  wire brdy_0;
  wire clk;
  wire [15:1]p_2_in;
  wire \psc[0]_i_3_n_0 ;
  wire [14:3]psc_reg;
  wire \psc_reg[0]_0 ;
  wire \psc_reg[0]_i_2_n_0 ;
  wire \psc_reg[0]_i_2_n_1 ;
  wire \psc_reg[0]_i_2_n_2 ;
  wire \psc_reg[0]_i_2_n_3 ;
  wire \psc_reg[0]_i_2_n_4 ;
  wire \psc_reg[0]_i_2_n_5 ;
  wire \psc_reg[0]_i_2_n_6 ;
  wire \psc_reg[0]_i_2_n_7 ;
  wire \psc_reg[12]_i_1_n_1 ;
  wire \psc_reg[12]_i_1_n_2 ;
  wire \psc_reg[12]_i_1_n_3 ;
  wire \psc_reg[12]_i_1_n_4 ;
  wire \psc_reg[12]_i_1_n_5 ;
  wire \psc_reg[12]_i_1_n_6 ;
  wire \psc_reg[12]_i_1_n_7 ;
  wire [3:0]\psc_reg[15]_0 ;
  wire \psc_reg[4]_i_1_n_0 ;
  wire \psc_reg[4]_i_1_n_1 ;
  wire \psc_reg[4]_i_1_n_2 ;
  wire \psc_reg[4]_i_1_n_3 ;
  wire \psc_reg[4]_i_1_n_4 ;
  wire \psc_reg[4]_i_1_n_5 ;
  wire \psc_reg[4]_i_1_n_6 ;
  wire \psc_reg[4]_i_1_n_7 ;
  wire \psc_reg[8]_i_1_n_0 ;
  wire \psc_reg[8]_i_1_n_1 ;
  wire \psc_reg[8]_i_1_n_2 ;
  wire \psc_reg[8]_i_1_n_3 ;
  wire \psc_reg[8]_i_1_n_4 ;
  wire \psc_reg[8]_i_1_n_5 ;
  wire \psc_reg[8]_i_1_n_6 ;
  wire \psc_reg[8]_i_1_n_7 ;
  wire rcnt_ovfl0;
  wire [0:0]rcnt_ovfl0_carry__0_0;
  wire [14:0]rcnt_ovfl0_carry__0_1;
  wire rcnt_ovfl0_carry__0_i_2_n_0;
  wire rcnt_ovfl0_carry__0_n_3;
  wire rcnt_ovfl0_carry_i_1_n_0;
  wire rcnt_ovfl0_carry_i_2_n_0;
  wire rcnt_ovfl0_carry_i_3_n_0;
  wire rcnt_ovfl0_carry_n_0;
  wire rcnt_ovfl0_carry_n_1;
  wire rcnt_ovfl0_carry_n_2;
  wire rcnt_ovfl0_carry_n_3;
  wire [11:0]rcnt_up_carry__0_0;
  wire rcnt_up_carry__0_i_2_n_0;
  wire rcnt_up_carry__0_n_3;
  wire rcnt_up_carry_i_1_n_0;
  wire rcnt_up_carry_i_2_n_0;
  wire rcnt_up_carry_i_3_n_0;
  wire rcnt_up_carry_n_0;
  wire rcnt_up_carry_n_1;
  wire rcnt_up_carry_n_2;
  wire rcnt_up_carry_n_3;
  wire [8:0]rflg_cma_carry;
  wire [5:0]rflg_cmb_carry;
  wire [0:0]\timcmx_reg[15] ;
  wire [0:0]\timcmx_reg[15]_0 ;
  wire [0:0]\timcmx_reg[15]_1 ;
  wire [1:0]\timcmx_reg[6] ;
  wire [2:0]\timcmx_reg[8] ;
  wire [3:0]\timcnt_reg[11]_0 ;
  wire \timcnt_reg[12]_i_2_n_0 ;
  wire \timcnt_reg[12]_i_2_n_1 ;
  wire \timcnt_reg[12]_i_2_n_2 ;
  wire \timcnt_reg[12]_i_2_n_3 ;
  wire [0:0]\timcnt_reg[14]_0 ;
  wire [8:0]\timcnt_reg[15]_0 ;
  wire [0:0]\timcnt_reg[15]_1 ;
  wire \timcnt_reg[15]_i_4_n_2 ;
  wire \timcnt_reg[15]_i_4_n_3 ;
  wire [0:0]\timcnt_reg[1]_0 ;
  wire \timcnt_reg[4]_i_2_n_0 ;
  wire \timcnt_reg[4]_i_2_n_1 ;
  wire \timcnt_reg[4]_i_2_n_2 ;
  wire \timcnt_reg[4]_i_2_n_3 ;
  wire \timcnt_reg[8]_i_2_n_0 ;
  wire \timcnt_reg[8]_i_2_n_1 ;
  wire \timcnt_reg[8]_i_2_n_2 ;
  wire \timcnt_reg[8]_i_2_n_3 ;
  wire [8:3]timnxt;
  wire timr_pwma1_out;
  wire [0:0]timr_pwma_reg;
  wire timr_pwmb0_out;
  wire [0:0]timr_pwmb_reg;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \psc[0]_i_3 
       (.I0(\psc_reg[15]_0 [0]),
        .O(\psc[0]_i_3_n_0 ));
  FDRE \psc_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_reg[0]_i_2_n_7 ),
        .Q(\psc_reg[15]_0 [0]),
        .R(\psc_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \psc_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\psc_reg[0]_i_2_n_0 ,\psc_reg[0]_i_2_n_1 ,\psc_reg[0]_i_2_n_2 ,\psc_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\psc_reg[0]_i_2_n_4 ,\psc_reg[0]_i_2_n_5 ,\psc_reg[0]_i_2_n_6 ,\psc_reg[0]_i_2_n_7 }),
        .S({psc_reg[3],\psc_reg[15]_0 [2:1],\psc[0]_i_3_n_0 }));
  FDRE \psc_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_reg[8]_i_1_n_5 ),
        .Q(psc_reg[10]),
        .R(\psc_reg[0]_0 ));
  FDRE \psc_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_reg[8]_i_1_n_4 ),
        .Q(psc_reg[11]),
        .R(\psc_reg[0]_0 ));
  FDRE \psc_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_reg[12]_i_1_n_7 ),
        .Q(psc_reg[12]),
        .R(\psc_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \psc_reg[12]_i_1 
       (.CI(\psc_reg[8]_i_1_n_0 ),
        .CO({\psc_reg[12]_i_1_n_1 ,\psc_reg[12]_i_1_n_2 ,\psc_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\psc_reg[12]_i_1_n_4 ,\psc_reg[12]_i_1_n_5 ,\psc_reg[12]_i_1_n_6 ,\psc_reg[12]_i_1_n_7 }),
        .S({\psc_reg[15]_0 [3],psc_reg[14:12]}));
  FDRE \psc_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_reg[12]_i_1_n_6 ),
        .Q(psc_reg[13]),
        .R(\psc_reg[0]_0 ));
  FDRE \psc_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_reg[12]_i_1_n_5 ),
        .Q(psc_reg[14]),
        .R(\psc_reg[0]_0 ));
  FDRE \psc_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_reg[12]_i_1_n_4 ),
        .Q(\psc_reg[15]_0 [3]),
        .R(\psc_reg[0]_0 ));
  FDRE \psc_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_reg[0]_i_2_n_6 ),
        .Q(\psc_reg[15]_0 [1]),
        .R(\psc_reg[0]_0 ));
  FDRE \psc_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_reg[0]_i_2_n_5 ),
        .Q(\psc_reg[15]_0 [2]),
        .R(\psc_reg[0]_0 ));
  FDRE \psc_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_reg[0]_i_2_n_4 ),
        .Q(psc_reg[3]),
        .R(\psc_reg[0]_0 ));
  FDRE \psc_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_reg[4]_i_1_n_7 ),
        .Q(psc_reg[4]),
        .R(\psc_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \psc_reg[4]_i_1 
       (.CI(\psc_reg[0]_i_2_n_0 ),
        .CO({\psc_reg[4]_i_1_n_0 ,\psc_reg[4]_i_1_n_1 ,\psc_reg[4]_i_1_n_2 ,\psc_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\psc_reg[4]_i_1_n_4 ,\psc_reg[4]_i_1_n_5 ,\psc_reg[4]_i_1_n_6 ,\psc_reg[4]_i_1_n_7 }),
        .S(psc_reg[7:4]));
  FDRE \psc_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_reg[4]_i_1_n_6 ),
        .Q(psc_reg[5]),
        .R(\psc_reg[0]_0 ));
  FDRE \psc_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_reg[4]_i_1_n_5 ),
        .Q(psc_reg[6]),
        .R(\psc_reg[0]_0 ));
  FDRE \psc_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_reg[4]_i_1_n_4 ),
        .Q(psc_reg[7]),
        .R(\psc_reg[0]_0 ));
  FDRE \psc_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_reg[8]_i_1_n_7 ),
        .Q(psc_reg[8]),
        .R(\psc_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \psc_reg[8]_i_1 
       (.CI(\psc_reg[4]_i_1_n_0 ),
        .CO({\psc_reg[8]_i_1_n_0 ,\psc_reg[8]_i_1_n_1 ,\psc_reg[8]_i_1_n_2 ,\psc_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\psc_reg[8]_i_1_n_4 ,\psc_reg[8]_i_1_n_5 ,\psc_reg[8]_i_1_n_6 ,\psc_reg[8]_i_1_n_7 }),
        .S(psc_reg[11:8]));
  FDRE \psc_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\psc_reg[8]_i_1_n_6 ),
        .Q(psc_reg[9]),
        .R(\psc_reg[0]_0 ));
  CARRY4 rcnt_ovfl0_carry
       (.CI(\<const0> ),
        .CO({rcnt_ovfl0_carry_n_0,rcnt_ovfl0_carry_n_1,rcnt_ovfl0_carry_n_2,rcnt_ovfl0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({rcnt_ovfl0_carry_i_1_n_0,rcnt_ovfl0_carry_i_2_n_0,rcnt_ovfl0_carry_i_3_n_0,rcnt_ovfl0_carry__0_0}));
  CARRY4 rcnt_ovfl0_carry__0
       (.CI(rcnt_ovfl0_carry_n_0),
        .CO({rcnt_ovfl0,rcnt_ovfl0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,\timcmx_reg[15]_0 ,rcnt_ovfl0_carry__0_i_2_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rcnt_ovfl0_carry__0_i_2
       (.I0(\timcnt_reg[15]_0 [7]),
        .I1(rcnt_ovfl0_carry__0_1[14]),
        .I2(\timcnt_reg[15]_0 [5]),
        .I3(rcnt_ovfl0_carry__0_1[12]),
        .I4(rcnt_ovfl0_carry__0_1[13]),
        .I5(\timcnt_reg[15]_0 [6]),
        .O(rcnt_ovfl0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rcnt_ovfl0_carry_i_1
       (.I0(\timcnt_reg[15]_0 [4]),
        .I1(rcnt_ovfl0_carry__0_1[11]),
        .I2(\timcnt_reg[15]_0 [3]),
        .I3(rcnt_ovfl0_carry__0_1[10]),
        .I4(rcnt_ovfl0_carry__0_1[9]),
        .I5(\timcnt_reg[15]_0 [2]),
        .O(rcnt_ovfl0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rcnt_ovfl0_carry_i_2
       (.I0(timnxt[8]),
        .I1(rcnt_ovfl0_carry__0_1[8]),
        .I2(timnxt[7]),
        .I3(rcnt_ovfl0_carry__0_1[7]),
        .I4(rcnt_ovfl0_carry__0_1[6]),
        .I5(timnxt[6]),
        .O(rcnt_ovfl0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rcnt_ovfl0_carry_i_3
       (.I0(timnxt[5]),
        .I1(rcnt_ovfl0_carry__0_1[5]),
        .I2(timnxt[4]),
        .I3(rcnt_ovfl0_carry__0_1[4]),
        .I4(rcnt_ovfl0_carry__0_1[3]),
        .I5(timnxt[3]),
        .O(rcnt_ovfl0_carry_i_3_n_0));
  CARRY4 rcnt_up_carry
       (.CI(\<const0> ),
        .CO({rcnt_up_carry_n_0,rcnt_up_carry_n_1,rcnt_up_carry_n_2,rcnt_up_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({rcnt_up_carry_i_1_n_0,rcnt_up_carry_i_2_n_0,rcnt_up_carry_i_3_n_0,S}));
  CARRY4 rcnt_up_carry__0
       (.CI(rcnt_up_carry_n_0),
        .CO({CO,rcnt_up_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,\timcmx_reg[15] ,rcnt_up_carry__0_i_2_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rcnt_up_carry__0_i_2
       (.I0(psc_reg[14]),
        .I1(rcnt_up_carry__0_0[11]),
        .I2(psc_reg[12]),
        .I3(rcnt_up_carry__0_0[9]),
        .I4(rcnt_up_carry__0_0[10]),
        .I5(psc_reg[13]),
        .O(rcnt_up_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rcnt_up_carry_i_1
       (.I0(psc_reg[11]),
        .I1(rcnt_up_carry__0_0[8]),
        .I2(psc_reg[9]),
        .I3(rcnt_up_carry__0_0[6]),
        .I4(rcnt_up_carry__0_0[7]),
        .I5(psc_reg[10]),
        .O(rcnt_up_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rcnt_up_carry_i_2
       (.I0(psc_reg[8]),
        .I1(rcnt_up_carry__0_0[5]),
        .I2(psc_reg[6]),
        .I3(rcnt_up_carry__0_0[3]),
        .I4(rcnt_up_carry__0_0[4]),
        .I5(psc_reg[7]),
        .O(rcnt_up_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rcnt_up_carry_i_3
       (.I0(psc_reg[5]),
        .I1(rcnt_up_carry__0_0[2]),
        .I2(psc_reg[3]),
        .I3(rcnt_up_carry__0_0[0]),
        .I4(rcnt_up_carry__0_0[1]),
        .I5(psc_reg[4]),
        .O(rcnt_up_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rflg_cma_carry_i_2
       (.I0(timnxt[8]),
        .I1(rflg_cma_carry[8]),
        .I2(timnxt[6]),
        .I3(rflg_cma_carry[6]),
        .I4(rflg_cma_carry[7]),
        .I5(timnxt[7]),
        .O(\timcmx_reg[8] [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rflg_cma_carry_i_3
       (.I0(timnxt[4]),
        .I1(rflg_cma_carry[4]),
        .I2(timnxt[3]),
        .I3(rflg_cma_carry[3]),
        .I4(rflg_cma_carry[5]),
        .I5(timnxt[5]),
        .O(\timcmx_reg[8] [1]));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    rflg_cma_carry_i_4
       (.I0(\timcnt_reg[15]_0 [0]),
        .I1(rflg_cma_carry[1]),
        .I2(Q[0]),
        .I3(rflg_cma_carry[0]),
        .I4(rflg_cma_carry[2]),
        .I5(\timcnt_reg[15]_0 [1]),
        .O(\timcmx_reg[8] [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rflg_cmb_carry_i_2
       (.I0(timnxt[6]),
        .I1(rflg_cmb_carry[3]),
        .I2(timnxt[7]),
        .I3(rflg_cmb_carry[4]),
        .I4(rflg_cmb_carry[5]),
        .I5(timnxt[8]),
        .O(\timcmx_reg[6] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rflg_cmb_carry_i_3
       (.I0(timnxt[5]),
        .I1(rflg_cmb_carry[2]),
        .I2(timnxt[3]),
        .I3(rflg_cmb_carry[0]),
        .I4(rflg_cmb_carry[1]),
        .I5(timnxt[4]),
        .O(\timcmx_reg[6] [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rflg_top_carry__0_i_2
       (.I0(Q[14]),
        .I1(rcnt_ovfl0_carry__0_1[14]),
        .I2(Q[13]),
        .I3(rcnt_ovfl0_carry__0_1[13]),
        .I4(rcnt_ovfl0_carry__0_1[12]),
        .I5(Q[12]),
        .O(\timcnt_reg[14]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rflg_top_carry_i_1
       (.I0(Q[11]),
        .I1(rcnt_ovfl0_carry__0_1[11]),
        .I2(Q[9]),
        .I3(rcnt_ovfl0_carry__0_1[9]),
        .I4(rcnt_ovfl0_carry__0_1[10]),
        .I5(Q[10]),
        .O(\timcnt_reg[11]_0 [3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rflg_top_carry_i_2
       (.I0(Q[8]),
        .I1(rcnt_ovfl0_carry__0_1[8]),
        .I2(Q[7]),
        .I3(rcnt_ovfl0_carry__0_1[7]),
        .I4(rcnt_ovfl0_carry__0_1[6]),
        .I5(Q[6]),
        .O(\timcnt_reg[11]_0 [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rflg_top_carry_i_3
       (.I0(Q[5]),
        .I1(rcnt_ovfl0_carry__0_1[5]),
        .I2(Q[4]),
        .I3(rcnt_ovfl0_carry__0_1[4]),
        .I4(rcnt_ovfl0_carry__0_1[3]),
        .I5(Q[3]),
        .O(\timcnt_reg[11]_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rflg_top_carry_i_4
       (.I0(Q[1]),
        .I1(rcnt_ovfl0_carry__0_1[1]),
        .I2(Q[2]),
        .I3(rcnt_ovfl0_carry__0_1[2]),
        .I4(rcnt_ovfl0_carry__0_1[0]),
        .I5(Q[0]),
        .O(\timcnt_reg[11]_0 [0]));
  LUT3 #(
    .INIT(8'hD5)) 
    \timcmx[15]_i_1 
       (.I0(\timcmx_reg[15]_1 ),
        .I1(rcnt_ovfl0),
        .I2(CO),
        .O(E));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timcnt[10]_i_1 
       (.I0(bdatw[9]),
        .I1(badr_3_sn_1),
        .I2(\timcnt_reg[15]_0 [3]),
        .I3(\timcnt_reg[1]_0 ),
        .O(p_2_in[10]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timcnt[11]_i_1 
       (.I0(bdatw[10]),
        .I1(badr_3_sn_1),
        .I2(\timcnt_reg[15]_0 [4]),
        .I3(\timcnt_reg[1]_0 ),
        .O(p_2_in[11]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timcnt[12]_i_1 
       (.I0(bdatw[11]),
        .I1(badr_3_sn_1),
        .I2(\timcnt_reg[15]_0 [5]),
        .I3(\timcnt_reg[1]_0 ),
        .O(p_2_in[12]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timcnt[13]_i_1 
       (.I0(bdatw[12]),
        .I1(badr_3_sn_1),
        .I2(\timcnt_reg[15]_0 [6]),
        .I3(\timcnt_reg[1]_0 ),
        .O(p_2_in[13]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timcnt[14]_i_1 
       (.I0(bdatw[13]),
        .I1(badr_3_sn_1),
        .I2(\timcnt_reg[15]_0 [7]),
        .I3(\timcnt_reg[1]_0 ),
        .O(p_2_in[14]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timcnt[15]_i_2 
       (.I0(bdatw[14]),
        .I1(badr_3_sn_1),
        .I2(\timcnt_reg[15]_0 [8]),
        .I3(\timcnt_reg[1]_0 ),
        .O(p_2_in[15]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \timcnt[15]_i_3 
       (.I0(badr[3]),
        .I1(badr[2]),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(brdy_0),
        .O(badr_3_sn_1));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timcnt[1]_i_1 
       (.I0(bdatw[0]),
        .I1(badr_3_sn_1),
        .I2(\timcnt_reg[15]_0 [0]),
        .I3(\timcnt_reg[1]_0 ),
        .O(p_2_in[1]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timcnt[2]_i_1 
       (.I0(bdatw[1]),
        .I1(badr_3_sn_1),
        .I2(\timcnt_reg[15]_0 [1]),
        .I3(\timcnt_reg[1]_0 ),
        .O(p_2_in[2]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timcnt[3]_i_1 
       (.I0(bdatw[2]),
        .I1(badr_3_sn_1),
        .I2(timnxt[3]),
        .I3(\timcnt_reg[1]_0 ),
        .O(p_2_in[3]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timcnt[4]_i_1 
       (.I0(bdatw[3]),
        .I1(badr_3_sn_1),
        .I2(timnxt[4]),
        .I3(\timcnt_reg[1]_0 ),
        .O(p_2_in[4]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timcnt[5]_i_1 
       (.I0(bdatw[4]),
        .I1(badr_3_sn_1),
        .I2(timnxt[5]),
        .I3(\timcnt_reg[1]_0 ),
        .O(p_2_in[5]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timcnt[6]_i_1 
       (.I0(bdatw[5]),
        .I1(badr_3_sn_1),
        .I2(timnxt[6]),
        .I3(\timcnt_reg[1]_0 ),
        .O(p_2_in[6]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timcnt[7]_i_1 
       (.I0(bdatw[6]),
        .I1(badr_3_sn_1),
        .I2(timnxt[7]),
        .I3(\timcnt_reg[1]_0 ),
        .O(p_2_in[7]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timcnt[8]_i_1 
       (.I0(bdatw[7]),
        .I1(badr_3_sn_1),
        .I2(timnxt[8]),
        .I3(\timcnt_reg[1]_0 ),
        .O(p_2_in[8]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timcnt[9]_i_1 
       (.I0(bdatw[8]),
        .I1(badr_3_sn_1),
        .I2(\timcnt_reg[15]_0 [2]),
        .I3(\timcnt_reg[1]_0 ),
        .O(p_2_in[9]));
  FDRE \timcnt_reg[0] 
       (.C(clk),
        .CE(\timcnt_reg[15]_1 ),
        .D(D),
        .Q(Q[0]),
        .R(SR));
  FDRE \timcnt_reg[10] 
       (.C(clk),
        .CE(\timcnt_reg[15]_1 ),
        .D(p_2_in[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \timcnt_reg[11] 
       (.C(clk),
        .CE(\timcnt_reg[15]_1 ),
        .D(p_2_in[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \timcnt_reg[12] 
       (.C(clk),
        .CE(\timcnt_reg[15]_1 ),
        .D(p_2_in[12]),
        .Q(Q[12]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timcnt_reg[12]_i_2 
       (.CI(\timcnt_reg[8]_i_2_n_0 ),
        .CO({\timcnt_reg[12]_i_2_n_0 ,\timcnt_reg[12]_i_2_n_1 ,\timcnt_reg[12]_i_2_n_2 ,\timcnt_reg[12]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\timcnt_reg[15]_0 [5:2]),
        .S(Q[12:9]));
  FDRE \timcnt_reg[13] 
       (.C(clk),
        .CE(\timcnt_reg[15]_1 ),
        .D(p_2_in[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \timcnt_reg[14] 
       (.C(clk),
        .CE(\timcnt_reg[15]_1 ),
        .D(p_2_in[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \timcnt_reg[15] 
       (.C(clk),
        .CE(\timcnt_reg[15]_1 ),
        .D(p_2_in[15]),
        .Q(Q[15]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timcnt_reg[15]_i_4 
       (.CI(\timcnt_reg[12]_i_2_n_0 ),
        .CO({\timcnt_reg[15]_i_4_n_2 ,\timcnt_reg[15]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\timcnt_reg[15]_0 [8:6]),
        .S({\<const0> ,Q[15:13]}));
  FDRE \timcnt_reg[1] 
       (.C(clk),
        .CE(\timcnt_reg[15]_1 ),
        .D(p_2_in[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \timcnt_reg[2] 
       (.C(clk),
        .CE(\timcnt_reg[15]_1 ),
        .D(p_2_in[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \timcnt_reg[3] 
       (.C(clk),
        .CE(\timcnt_reg[15]_1 ),
        .D(p_2_in[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \timcnt_reg[4] 
       (.C(clk),
        .CE(\timcnt_reg[15]_1 ),
        .D(p_2_in[4]),
        .Q(Q[4]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timcnt_reg[4]_i_2 
       (.CI(\<const0> ),
        .CO({\timcnt_reg[4]_i_2_n_0 ,\timcnt_reg[4]_i_2_n_1 ,\timcnt_reg[4]_i_2_n_2 ,\timcnt_reg[4]_i_2_n_3 }),
        .CYINIT(Q[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({timnxt[4:3],\timcnt_reg[15]_0 [1:0]}),
        .S(Q[4:1]));
  FDRE \timcnt_reg[5] 
       (.C(clk),
        .CE(\timcnt_reg[15]_1 ),
        .D(p_2_in[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \timcnt_reg[6] 
       (.C(clk),
        .CE(\timcnt_reg[15]_1 ),
        .D(p_2_in[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \timcnt_reg[7] 
       (.C(clk),
        .CE(\timcnt_reg[15]_1 ),
        .D(p_2_in[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \timcnt_reg[8] 
       (.C(clk),
        .CE(\timcnt_reg[15]_1 ),
        .D(p_2_in[8]),
        .Q(Q[8]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timcnt_reg[8]_i_2 
       (.CI(\timcnt_reg[4]_i_2_n_0 ),
        .CO({\timcnt_reg[8]_i_2_n_0 ,\timcnt_reg[8]_i_2_n_1 ,\timcnt_reg[8]_i_2_n_2 ,\timcnt_reg[8]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(timnxt[8:5]),
        .S(Q[8:5]));
  FDRE \timcnt_reg[9] 
       (.C(clk),
        .CE(\timcnt_reg[15]_1 ),
        .D(p_2_in[9]),
        .Q(Q[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'hDF)) 
    \timctl[7]_i_3 
       (.I0(brdy),
        .I1(bcs_timr_n),
        .I2(bcmdw),
        .O(brdy_0));
  LUT3 #(
    .INIT(8'hA8)) 
    timr_pwma_i_3
       (.I0(CO),
        .I1(\timcnt_reg[1]_0 ),
        .I2(timr_pwma_reg),
        .O(timr_pwma1_out));
  LUT3 #(
    .INIT(8'hA8)) 
    timr_pwmb_i_3
       (.I0(CO),
        .I1(timr_pwmb_reg),
        .I2(\timcnt_reg[1]_0 ),
        .O(timr_pwmb0_out));
endmodule

module timr_prd
   (\timprd_reg[0]_0 ,
    Q,
    S,
    \timprd_reg[15]_0 ,
    badr,
    \timprd_reg[0]_1 ,
    rflg_top_carry__0,
    rcnt_ovfl0_carry__0,
    SR,
    bdatw,
    clk);
  output [0:0]\timprd_reg[0]_0 ;
  output [15:0]Q;
  output [0:0]S;
  output [0:0]\timprd_reg[15]_0 ;
  input [3:0]badr;
  input \timprd_reg[0]_1 ;
  input [1:0]rflg_top_carry__0;
  input [2:0]rcnt_ovfl0_carry__0;
  input [0:0]SR;
  input [15:0]bdatw;
  input clk;

  wire [15:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [3:0]badr;
  wire [15:0]bdatw;
  wire clk;
  wire [2:0]rcnt_ovfl0_carry__0;
  wire [1:0]rflg_top_carry__0;
  wire [0:0]\timprd_reg[0]_0 ;
  wire \timprd_reg[0]_1 ;
  wire [0:0]\timprd_reg[15]_0 ;
  wire wr_timprd;

  LUT2 #(
    .INIT(4'h9)) 
    rcnt_ovfl0_carry__0_i_1
       (.I0(Q[15]),
        .I1(rcnt_ovfl0_carry__0[2]),
        .O(\timprd_reg[15]_0 ));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    rcnt_ovfl0_carry_i_4
       (.I0(Q[0]),
        .I1(rflg_top_carry__0[0]),
        .I2(rcnt_ovfl0_carry__0[1]),
        .I3(Q[2]),
        .I4(rcnt_ovfl0_carry__0[0]),
        .I5(Q[1]),
        .O(\timprd_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    rflg_top_carry__0_i_1
       (.I0(Q[15]),
        .I1(rflg_top_carry__0[1]),
        .O(S));
  LUT5 #(
    .INIT(32'h00000004)) 
    \timprd[15]_i_1 
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(\timprd_reg[0]_1 ),
        .O(wr_timprd));
  FDRE \timprd_reg[0] 
       (.C(clk),
        .CE(wr_timprd),
        .D(bdatw[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \timprd_reg[10] 
       (.C(clk),
        .CE(wr_timprd),
        .D(bdatw[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \timprd_reg[11] 
       (.C(clk),
        .CE(wr_timprd),
        .D(bdatw[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \timprd_reg[12] 
       (.C(clk),
        .CE(wr_timprd),
        .D(bdatw[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \timprd_reg[13] 
       (.C(clk),
        .CE(wr_timprd),
        .D(bdatw[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \timprd_reg[14] 
       (.C(clk),
        .CE(wr_timprd),
        .D(bdatw[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \timprd_reg[15] 
       (.C(clk),
        .CE(wr_timprd),
        .D(bdatw[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \timprd_reg[1] 
       (.C(clk),
        .CE(wr_timprd),
        .D(bdatw[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \timprd_reg[2] 
       (.C(clk),
        .CE(wr_timprd),
        .D(bdatw[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \timprd_reg[3] 
       (.C(clk),
        .CE(wr_timprd),
        .D(bdatw[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \timprd_reg[4] 
       (.C(clk),
        .CE(wr_timprd),
        .D(bdatw[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \timprd_reg[5] 
       (.C(clk),
        .CE(wr_timprd),
        .D(bdatw[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \timprd_reg[6] 
       (.C(clk),
        .CE(wr_timprd),
        .D(bdatw[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \timprd_reg[7] 
       (.C(clk),
        .CE(wr_timprd),
        .D(bdatw[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \timprd_reg[8] 
       (.C(clk),
        .CE(wr_timprd),
        .D(bdatw[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \timprd_reg[9] 
       (.C(clk),
        .CE(wr_timprd),
        .D(bdatw[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

module timr_psc
   (S,
    Q,
    \timpsc_reg[15]_0 ,
    rcnt_up_carry__0,
    SR,
    E,
    bdatw,
    clk);
  output [0:0]S;
  output [15:0]Q;
  output [0:0]\timpsc_reg[15]_0 ;
  input [3:0]rcnt_up_carry__0;
  input [0:0]SR;
  input [0:0]E;
  input [15:0]bdatw;
  input clk;

  wire [0:0]E;
  wire [15:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [15:0]bdatw;
  wire clk;
  wire [3:0]rcnt_up_carry__0;
  wire [0:0]\timpsc_reg[15]_0 ;

  LUT2 #(
    .INIT(4'h9)) 
    rcnt_up_carry__0_i_1
       (.I0(Q[15]),
        .I1(rcnt_up_carry__0[3]),
        .O(\timpsc_reg[15]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rcnt_up_carry_i_4
       (.I0(Q[0]),
        .I1(rcnt_up_carry__0[0]),
        .I2(rcnt_up_carry__0[2]),
        .I3(Q[2]),
        .I4(rcnt_up_carry__0[1]),
        .I5(Q[1]),
        .O(S));
  FDRE \timpsc_reg[0] 
       (.C(clk),
        .CE(E),
        .D(bdatw[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \timpsc_reg[10] 
       (.C(clk),
        .CE(E),
        .D(bdatw[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \timpsc_reg[11] 
       (.C(clk),
        .CE(E),
        .D(bdatw[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \timpsc_reg[12] 
       (.C(clk),
        .CE(E),
        .D(bdatw[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \timpsc_reg[13] 
       (.C(clk),
        .CE(E),
        .D(bdatw[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \timpsc_reg[14] 
       (.C(clk),
        .CE(E),
        .D(bdatw[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \timpsc_reg[15] 
       (.C(clk),
        .CE(E),
        .D(bdatw[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \timpsc_reg[1] 
       (.C(clk),
        .CE(E),
        .D(bdatw[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \timpsc_reg[2] 
       (.C(clk),
        .CE(E),
        .D(bdatw[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \timpsc_reg[3] 
       (.C(clk),
        .CE(E),
        .D(bdatw[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \timpsc_reg[4] 
       (.C(clk),
        .CE(E),
        .D(bdatw[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \timpsc_reg[5] 
       (.C(clk),
        .CE(E),
        .D(bdatw[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \timpsc_reg[6] 
       (.C(clk),
        .CE(E),
        .D(bdatw[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \timpsc_reg[7] 
       (.C(clk),
        .CE(E),
        .D(bdatw[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \timpsc_reg[8] 
       (.C(clk),
        .CE(E),
        .D(bdatw[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \timpsc_reg[9] 
       (.C(clk),
        .CE(E),
        .D(bdatw[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

module timr_rctl
   (timr_pwma,
    timr_pwmb,
    Q,
    E,
    \timctl_reg[0]_0 ,
    \timctl_reg[0]_1 ,
    \timctl_reg[0]_2 ,
    clk,
    timr_pwma_reg_0,
    timr_pwma1_out,
    rst_n,
    timr_pwmb_reg_0,
    timr_pwmb0_out,
    badr,
    \timctl_reg[0]_3 ,
    \timcnt_reg[15] ,
    CO,
    SR,
    bdatw);
  output timr_pwma;
  output timr_pwmb;
  output [4:0]Q;
  output [0:0]E;
  output [0:0]\timctl_reg[0]_0 ;
  output \timctl_reg[0]_1 ;
  output \timctl_reg[0]_2 ;
  input clk;
  input timr_pwma_reg_0;
  input timr_pwma1_out;
  input rst_n;
  input timr_pwmb_reg_0;
  input timr_pwmb0_out;
  input [3:0]badr;
  input \timctl_reg[0]_3 ;
  input \timcnt_reg[15] ;
  input [0:0]CO;
  input [0:0]SR;
  input [4:0]bdatw;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]CO;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire [4:0]bdatw;
  wire clk;
  wire rst_n;
  wire \timcnt_reg[15] ;
  wire [0:0]\timctl_reg[0]_0 ;
  wire \timctl_reg[0]_1 ;
  wire \timctl_reg[0]_2 ;
  wire \timctl_reg[0]_3 ;
  wire timr_pwma;
  wire timr_pwma1_out;
  wire timr_pwma_i_1_n_0;
  wire timr_pwma_reg_0;
  wire timr_pwmb;
  wire timr_pwmb0_out;
  wire timr_pwmb_i_1_n_0;
  wire timr_pwmb_reg_0;
  wire wr_timctl;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \psc[0]_i_1 
       (.I0(\timcnt_reg[15] ),
        .I1(Q[0]),
        .I2(rst_n),
        .I3(CO),
        .O(\timctl_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    rflg_cmbf_i_2
       (.I0(Q[0]),
        .I1(rst_n),
        .O(\timctl_reg[0]_2 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \timcnt[15]_i_1 
       (.I0(\timcnt_reg[15] ),
        .I1(Q[0]),
        .I2(CO),
        .O(\timctl_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \timctl[7]_i_2 
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(\timctl_reg[0]_3 ),
        .O(wr_timctl));
  FDRE \timctl_reg[0] 
       (.C(clk),
        .CE(wr_timctl),
        .D(bdatw[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \timctl_reg[4] 
       (.C(clk),
        .CE(wr_timctl),
        .D(bdatw[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \timctl_reg[5] 
       (.C(clk),
        .CE(wr_timctl),
        .D(bdatw[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \timctl_reg[6] 
       (.C(clk),
        .CE(wr_timctl),
        .D(bdatw[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \timctl_reg[7] 
       (.C(clk),
        .CE(wr_timctl),
        .D(bdatw[4]),
        .Q(Q[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \timpsc[15]_i_1 
       (.I0(badr[2]),
        .I1(badr[0]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(\timctl_reg[0]_3 ),
        .I5(Q[0]),
        .O(E));
  LUT6 #(
    .INIT(64'hA4FCE40000000000)) 
    timr_pwma_i_1
       (.I0(timr_pwma_reg_0),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(timr_pwma1_out),
        .I4(timr_pwma),
        .I5(rst_n),
        .O(timr_pwma_i_1_n_0));
  FDRE timr_pwma_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(timr_pwma_i_1_n_0),
        .Q(timr_pwma),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hA4FCE40000000000)) 
    timr_pwmb_i_1
       (.I0(timr_pwmb_reg_0),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(timr_pwmb0_out),
        .I4(timr_pwmb),
        .I5(rst_n),
        .O(timr_pwmb_i_1_n_0));
  FDRE timr_pwmb_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(timr_pwmb_i_1_n_0),
        .Q(timr_pwmb),
        .R(\<const0> ));
endmodule

module timr_rflg
   (\timprd_reg[15] ,
    \timcmx_reg[15] ,
    \timcmx_reg[15]_0 ,
    rflg_cmbf,
    rflg_cmaf,
    rflg_ovff,
    wr_timflg,
    D,
    timr_ovfr,
    rflg_ovfe,
    timr_cmar,
    rflg_cmae,
    timr_cmbr,
    rflg_cmbe,
    rflg_top_carry__0_0,
    S,
    rflg_cma_carry__0_0,
    timr_pwma_i_3,
    rflg_cmb_carry__0_0,
    timr_pwmb_i_3,
    rflg_cmbf_reg_0,
    clk,
    rflg_cmaf_reg_0,
    bdatw,
    CO,
    rflg_ovff_reg_0,
    badr,
    \timflg_reg[3]_0 ,
    \timcnt_reg[0] ,
    Q,
    rst_n);
  output [0:0]\timprd_reg[15] ;
  output [0:0]\timcmx_reg[15] ;
  output [0:0]\timcmx_reg[15]_0 ;
  output rflg_cmbf;
  output rflg_cmaf;
  output rflg_ovff;
  output wr_timflg;
  output [0:0]D;
  output timr_ovfr;
  output rflg_ovfe;
  output timr_cmar;
  output rflg_cmae;
  output timr_cmbr;
  output rflg_cmbe;
  input [3:0]rflg_top_carry__0_0;
  input [1:0]S;
  input [3:0]rflg_cma_carry__0_0;
  input [1:0]timr_pwma_i_3;
  input [3:0]rflg_cmb_carry__0_0;
  input [1:0]timr_pwmb_i_3;
  input rflg_cmbf_reg_0;
  input clk;
  input rflg_cmaf_reg_0;
  input [4:0]bdatw;
  input [0:0]CO;
  input rflg_ovff_reg_0;
  input [3:0]badr;
  input \timflg_reg[3]_0 ;
  input \timcnt_reg[0] ;
  input [0:0]Q;
  input rst_n;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]Q;
  wire [1:0]S;
  wire [3:0]badr;
  wire [4:0]bdatw;
  wire clk;
  wire [3:0]rflg_cma_carry__0_0;
  wire rflg_cma_carry__0_n_3;
  wire rflg_cma_carry_n_0;
  wire rflg_cma_carry_n_1;
  wire rflg_cma_carry_n_2;
  wire rflg_cma_carry_n_3;
  wire rflg_cmae;
  wire rflg_cmaf;
  wire rflg_cmaf_reg_0;
  wire [3:0]rflg_cmb_carry__0_0;
  wire rflg_cmb_carry__0_n_3;
  wire rflg_cmb_carry_n_0;
  wire rflg_cmb_carry_n_1;
  wire rflg_cmb_carry_n_2;
  wire rflg_cmb_carry_n_3;
  wire rflg_cmbe;
  wire rflg_cmbf;
  wire rflg_cmbf_reg_0;
  wire rflg_ovfe;
  wire rflg_ovff;
  wire rflg_ovff_i_1_n_0;
  wire rflg_ovff_reg_0;
  wire [3:0]rflg_top_carry__0_0;
  wire rflg_top_carry__0_n_3;
  wire rflg_top_carry_n_0;
  wire rflg_top_carry_n_1;
  wire rflg_top_carry_n_2;
  wire rflg_top_carry_n_3;
  wire rst_n;
  wire [0:0]\timcmx_reg[15] ;
  wire [0:0]\timcmx_reg[15]_0 ;
  wire \timcnt_reg[0] ;
  wire \timflg[1]_i_1_n_0 ;
  wire \timflg[2]_i_1_n_0 ;
  wire \timflg[3]_i_1_n_0 ;
  wire \timflg_reg[3]_0 ;
  wire [0:0]\timprd_reg[15] ;
  wire timr_cmar;
  wire timr_cmbr;
  wire timr_ovfr;
  wire [1:0]timr_pwma_i_3;
  wire [1:0]timr_pwmb_i_3;
  wire wr_timflg;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  CARRY4 rflg_cma_carry
       (.CI(\<const0> ),
        .CO({rflg_cma_carry_n_0,rflg_cma_carry_n_1,rflg_cma_carry_n_2,rflg_cma_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S(rflg_cma_carry__0_0));
  CARRY4 rflg_cma_carry__0
       (.CI(rflg_cma_carry_n_0),
        .CO({\timcmx_reg[15] ,rflg_cma_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,timr_pwma_i_3}));
  FDRE rflg_cmaf_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rflg_cmaf_reg_0),
        .Q(rflg_cmaf),
        .R(\<const0> ));
  CARRY4 rflg_cmb_carry
       (.CI(\<const0> ),
        .CO({rflg_cmb_carry_n_0,rflg_cmb_carry_n_1,rflg_cmb_carry_n_2,rflg_cmb_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S(rflg_cmb_carry__0_0));
  CARRY4 rflg_cmb_carry__0
       (.CI(rflg_cmb_carry_n_0),
        .CO({\timcmx_reg[15]_0 ,rflg_cmb_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,timr_pwmb_i_3}));
  FDRE rflg_cmbf_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rflg_cmbf_reg_0),
        .Q(rflg_cmbf),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000077777000)) 
    rflg_ovff_i_1
       (.I0(wr_timflg),
        .I1(bdatw[4]),
        .I2(CO),
        .I3(\timprd_reg[15] ),
        .I4(rflg_ovff),
        .I5(rflg_ovff_reg_0),
        .O(rflg_ovff_i_1_n_0));
  FDRE rflg_ovff_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rflg_ovff_i_1_n_0),
        .Q(rflg_ovff),
        .R(\<const0> ));
  CARRY4 rflg_top_carry
       (.CI(\<const0> ),
        .CO({rflg_top_carry_n_0,rflg_top_carry_n_1,rflg_top_carry_n_2,rflg_top_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S(rflg_top_carry__0_0));
  CARRY4 rflg_top_carry__0
       (.CI(rflg_top_carry_n_0),
        .CO({\timprd_reg[15] ,rflg_top_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,S}));
  LUT4 #(
    .INIT(16'h888B)) 
    \timcnt[0]_i_1 
       (.I0(bdatw[0]),
        .I1(\timcnt_reg[0] ),
        .I2(\timprd_reg[15] ),
        .I3(Q),
        .O(D));
  LUT4 #(
    .INIT(16'hE200)) 
    \timflg[1]_i_1 
       (.I0(rflg_cmbe),
        .I1(wr_timflg),
        .I2(bdatw[1]),
        .I3(rst_n),
        .O(\timflg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \timflg[2]_i_1 
       (.I0(rflg_cmae),
        .I1(wr_timflg),
        .I2(bdatw[2]),
        .I3(rst_n),
        .O(\timflg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \timflg[3]_i_1 
       (.I0(rflg_ovfe),
        .I1(wr_timflg),
        .I2(bdatw[3]),
        .I3(rst_n),
        .O(\timflg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \timflg[3]_i_2 
       (.I0(badr[0]),
        .I1(badr[1]),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(\timflg_reg[3]_0 ),
        .O(wr_timflg));
  FDRE \timflg_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\timflg[1]_i_1_n_0 ),
        .Q(rflg_cmbe),
        .R(\<const0> ));
  FDRE \timflg_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\timflg[2]_i_1_n_0 ),
        .Q(rflg_cmae),
        .R(\<const0> ));
  FDRE \timflg_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\timflg[3]_i_1_n_0 ),
        .Q(rflg_ovfe),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    timr_cmar_INST_0
       (.I0(rflg_cmaf),
        .I1(rflg_cmae),
        .O(timr_cmar));
  LUT2 #(
    .INIT(4'h8)) 
    timr_cmbr_INST_0
       (.I0(rflg_cmbf),
        .I1(rflg_cmbe),
        .O(timr_cmbr));
  LUT2 #(
    .INIT(4'h8)) 
    timr_ovfr_INST_0
       (.I0(rflg_ovff),
        .I1(rflg_ovfe),
        .O(timr_ovfr));
endmodule

module timr_tctl
   (bdatr,
    SR,
    brdy,
    clk,
    bcs_timr_n,
    bcmdr,
    badr,
    Q,
    \bdatr[15] ,
    \bdatr[15]_0 ,
    \bdatr[15]_1 ,
    \bdatr[15]_2 ,
    \bdatr[7] ,
    rflg_ovff,
    rflg_cmaf,
    rflg_cmbf,
    rflg_ovfe,
    rflg_cmae,
    rflg_cmbe);
  output [15:0]bdatr;
  input [0:0]SR;
  input brdy;
  input clk;
  input bcs_timr_n;
  input bcmdr;
  input [3:0]badr;
  input [15:0]Q;
  input [15:0]\bdatr[15] ;
  input [15:0]\bdatr[15]_0 ;
  input [15:0]\bdatr[15]_1 ;
  input [15:0]\bdatr[15]_2 ;
  input [4:0]\bdatr[7] ;
  input rflg_ovff;
  input rflg_cmaf;
  input rflg_cmbf;
  input rflg_ovfe;
  input rflg_cmae;
  input rflg_cmbe;

  wire [15:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire bcmdr;
  wire bcs_timr_n;
  wire [15:0]bdatr;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[0]_INST_0_i_2_n_0 ;
  wire \bdatr[10]_INST_0_i_1_n_0 ;
  wire \bdatr[11]_INST_0_i_1_n_0 ;
  wire \bdatr[12]_INST_0_i_1_n_0 ;
  wire \bdatr[13]_INST_0_i_1_n_0 ;
  wire \bdatr[14]_INST_0_i_1_n_0 ;
  wire [15:0]\bdatr[15] ;
  wire [15:0]\bdatr[15]_0 ;
  wire [15:0]\bdatr[15]_1 ;
  wire [15:0]\bdatr[15]_2 ;
  wire \bdatr[15]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_2_n_0 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_2_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_2_n_0 ;
  wire \bdatr[4]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_2_n_0 ;
  wire \bdatr[5]_INST_0_i_1_n_0 ;
  wire \bdatr[5]_INST_0_i_2_n_0 ;
  wire \bdatr[6]_INST_0_i_1_n_0 ;
  wire \bdatr[6]_INST_0_i_2_n_0 ;
  wire [4:0]\bdatr[7] ;
  wire \bdatr[7]_INST_0_i_1_n_0 ;
  wire \bdatr[7]_INST_0_i_2_n_0 ;
  wire \bdatr[8]_INST_0_i_1_n_0 ;
  wire \bdatr[9]_INST_0_i_1_n_0 ;
  wire brdy;
  wire clk;
  wire rd_timcma;
  wire rd_timcma0;
  wire rd_timcmb;
  wire rd_timcmb0;
  wire rd_timcnt;
  wire rd_timcnt0;
  wire rd_timctl;
  wire rd_timctl0;
  wire rd_timflg;
  wire rd_timflg0;
  wire rd_timprd;
  wire rd_timprd0;
  wire rd_timpsc;
  wire rd_timpsc0;
  wire rflg_cmae;
  wire rflg_cmaf;
  wire rflg_cmbe;
  wire rflg_cmbf;
  wire rflg_ovfe;
  wire rflg_ovff;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[0]_INST_0 
       (.I0(\bdatr[15]_1 [0]),
        .I1(rd_timcma),
        .I2(\bdatr[15]_2 [0]),
        .I3(rd_timcmb),
        .I4(\bdatr[0]_INST_0_i_1_n_0 ),
        .I5(\bdatr[0]_INST_0_i_2_n_0 ),
        .O(bdatr[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(rd_timprd),
        .I1(\bdatr[15]_0 [0]),
        .I2(rd_timctl),
        .I3(\bdatr[7] [0]),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[0]_INST_0_i_2 
       (.I0(rd_timpsc),
        .I1(\bdatr[15] [0]),
        .I2(rd_timcnt),
        .I3(Q[0]),
        .O(\bdatr[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatr[10]_INST_0 
       (.I0(Q[10]),
        .I1(rd_timcnt),
        .I2(\bdatr[15] [10]),
        .I3(rd_timpsc),
        .I4(\bdatr[10]_INST_0_i_1_n_0 ),
        .O(bdatr[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[10]_INST_0_i_1 
       (.I0(\bdatr[15]_0 [10]),
        .I1(rd_timprd),
        .I2(rd_timcma),
        .I3(\bdatr[15]_1 [10]),
        .I4(\bdatr[15]_2 [10]),
        .I5(rd_timcmb),
        .O(\bdatr[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatr[11]_INST_0 
       (.I0(Q[11]),
        .I1(rd_timcnt),
        .I2(\bdatr[15] [11]),
        .I3(rd_timpsc),
        .I4(\bdatr[11]_INST_0_i_1_n_0 ),
        .O(bdatr[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[11]_INST_0_i_1 
       (.I0(\bdatr[15]_0 [11]),
        .I1(rd_timprd),
        .I2(rd_timcma),
        .I3(\bdatr[15]_1 [11]),
        .I4(\bdatr[15]_2 [11]),
        .I5(rd_timcmb),
        .O(\bdatr[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatr[12]_INST_0 
       (.I0(Q[12]),
        .I1(rd_timcnt),
        .I2(\bdatr[15] [12]),
        .I3(rd_timpsc),
        .I4(\bdatr[12]_INST_0_i_1_n_0 ),
        .O(bdatr[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[12]_INST_0_i_1 
       (.I0(\bdatr[15]_0 [12]),
        .I1(rd_timprd),
        .I2(rd_timcma),
        .I3(\bdatr[15]_1 [12]),
        .I4(\bdatr[15]_2 [12]),
        .I5(rd_timcmb),
        .O(\bdatr[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatr[13]_INST_0 
       (.I0(Q[13]),
        .I1(rd_timcnt),
        .I2(\bdatr[15] [13]),
        .I3(rd_timpsc),
        .I4(\bdatr[13]_INST_0_i_1_n_0 ),
        .O(bdatr[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[13]_INST_0_i_1 
       (.I0(\bdatr[15]_0 [13]),
        .I1(rd_timprd),
        .I2(rd_timcma),
        .I3(\bdatr[15]_1 [13]),
        .I4(\bdatr[15]_2 [13]),
        .I5(rd_timcmb),
        .O(\bdatr[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatr[14]_INST_0 
       (.I0(Q[14]),
        .I1(rd_timcnt),
        .I2(\bdatr[15] [14]),
        .I3(rd_timpsc),
        .I4(\bdatr[14]_INST_0_i_1_n_0 ),
        .O(bdatr[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[14]_INST_0_i_1 
       (.I0(\bdatr[15]_0 [14]),
        .I1(rd_timprd),
        .I2(rd_timcma),
        .I3(\bdatr[15]_1 [14]),
        .I4(\bdatr[15]_2 [14]),
        .I5(rd_timcmb),
        .O(\bdatr[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatr[15]_INST_0 
       (.I0(rd_timcnt),
        .I1(Q[15]),
        .I2(\bdatr[15] [15]),
        .I3(rd_timpsc),
        .I4(\bdatr[15]_INST_0_i_1_n_0 ),
        .O(bdatr[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[15]_INST_0_i_1 
       (.I0(\bdatr[15]_0 [15]),
        .I1(rd_timprd),
        .I2(rd_timcma),
        .I3(\bdatr[15]_1 [15]),
        .I4(\bdatr[15]_2 [15]),
        .I5(rd_timcmb),
        .O(\bdatr[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[1]_INST_0 
       (.I0(rd_timcma),
        .I1(\bdatr[15]_1 [1]),
        .I2(rflg_cmbe),
        .I3(rd_timflg),
        .I4(\bdatr[1]_INST_0_i_1_n_0 ),
        .I5(\bdatr[1]_INST_0_i_2_n_0 ),
        .O(bdatr[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(rd_timprd),
        .I1(\bdatr[15]_0 [1]),
        .I2(rd_timcnt),
        .I3(Q[1]),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[1]_INST_0_i_2 
       (.I0(rd_timpsc),
        .I1(\bdatr[15] [1]),
        .I2(\bdatr[15]_2 [1]),
        .I3(rd_timcmb),
        .O(\bdatr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[2]_INST_0 
       (.I0(\bdatr[15] [2]),
        .I1(rd_timpsc),
        .I2(rd_timcma),
        .I3(\bdatr[15]_1 [2]),
        .I4(\bdatr[2]_INST_0_i_1_n_0 ),
        .I5(\bdatr[2]_INST_0_i_2_n_0 ),
        .O(bdatr[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(rd_timflg),
        .I1(rflg_cmae),
        .I2(rd_timcnt),
        .I3(Q[2]),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[2]_INST_0_i_2 
       (.I0(rd_timprd),
        .I1(\bdatr[15]_0 [2]),
        .I2(\bdatr[15]_2 [2]),
        .I3(rd_timcmb),
        .O(\bdatr[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[3]_INST_0 
       (.I0(Q[3]),
        .I1(rd_timcnt),
        .I2(rd_timcma),
        .I3(\bdatr[15]_1 [3]),
        .I4(\bdatr[3]_INST_0_i_1_n_0 ),
        .I5(\bdatr[3]_INST_0_i_2_n_0 ),
        .O(bdatr[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(rd_timprd),
        .I1(\bdatr[15]_0 [3]),
        .I2(\bdatr[15]_2 [3]),
        .I3(rd_timcmb),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[3]_INST_0_i_2 
       (.I0(rd_timpsc),
        .I1(\bdatr[15] [3]),
        .I2(rd_timflg),
        .I3(rflg_ovfe),
        .O(\bdatr[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bdatr[4]_INST_0 
       (.I0(rd_timcma),
        .I1(\bdatr[15]_1 [4]),
        .I2(rd_timcmb),
        .I3(\bdatr[15]_2 [4]),
        .I4(\bdatr[4]_INST_0_i_1_n_0 ),
        .I5(\bdatr[4]_INST_0_i_2_n_0 ),
        .O(bdatr[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(rd_timprd),
        .I1(\bdatr[15]_0 [4]),
        .I2(rd_timctl),
        .I3(\bdatr[7] [1]),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[4]_INST_0_i_2 
       (.I0(rd_timpsc),
        .I1(\bdatr[15] [4]),
        .I2(rd_timcnt),
        .I3(Q[4]),
        .O(\bdatr[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatr[5]_INST_0 
       (.I0(\bdatr[5]_INST_0_i_1_n_0 ),
        .I1(\bdatr[5]_INST_0_i_2_n_0 ),
        .I2(rd_timflg),
        .I3(rflg_cmbf),
        .I4(rd_timpsc),
        .I5(\bdatr[15] [5]),
        .O(bdatr[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(rd_timcnt),
        .I1(Q[5]),
        .I2(rd_timcma),
        .I3(\bdatr[15]_1 [5]),
        .I4(\bdatr[15]_0 [5]),
        .I5(rd_timprd),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[5]_INST_0_i_2 
       (.I0(rd_timctl),
        .I1(\bdatr[7] [2]),
        .I2(\bdatr[15]_2 [5]),
        .I3(rd_timcmb),
        .O(\bdatr[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatr[6]_INST_0 
       (.I0(\bdatr[6]_INST_0_i_1_n_0 ),
        .I1(\bdatr[6]_INST_0_i_2_n_0 ),
        .I2(rd_timflg),
        .I3(rflg_cmaf),
        .I4(rd_timpsc),
        .I5(\bdatr[15] [6]),
        .O(bdatr[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(rd_timctl),
        .I1(\bdatr[7] [3]),
        .I2(rd_timcmb),
        .I3(\bdatr[15]_2 [6]),
        .I4(rd_timcma),
        .I5(\bdatr[15]_1 [6]),
        .O(\bdatr[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[6]_INST_0_i_2 
       (.I0(rd_timcnt),
        .I1(Q[6]),
        .I2(rd_timprd),
        .I3(\bdatr[15]_0 [6]),
        .O(\bdatr[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \bdatr[7]_INST_0 
       (.I0(\bdatr[7]_INST_0_i_1_n_0 ),
        .I1(\bdatr[7]_INST_0_i_2_n_0 ),
        .I2(rd_timprd),
        .I3(\bdatr[15]_0 [7]),
        .I4(\bdatr[15]_1 [7]),
        .I5(rd_timcma),
        .O(bdatr[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(rd_timcnt),
        .I1(Q[7]),
        .I2(\bdatr[15] [7]),
        .I3(rd_timpsc),
        .I4(rflg_ovff),
        .I5(rd_timflg),
        .O(\bdatr[7]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bdatr[7]_INST_0_i_2 
       (.I0(rd_timctl),
        .I1(\bdatr[7] [4]),
        .I2(\bdatr[15]_2 [7]),
        .I3(rd_timcmb),
        .O(\bdatr[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatr[8]_INST_0 
       (.I0(Q[8]),
        .I1(rd_timcnt),
        .I2(\bdatr[15] [8]),
        .I3(rd_timpsc),
        .I4(\bdatr[8]_INST_0_i_1_n_0 ),
        .O(bdatr[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[8]_INST_0_i_1 
       (.I0(\bdatr[15]_0 [8]),
        .I1(rd_timprd),
        .I2(rd_timcma),
        .I3(\bdatr[15]_1 [8]),
        .I4(\bdatr[15]_2 [8]),
        .I5(rd_timcmb),
        .O(\bdatr[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bdatr[9]_INST_0 
       (.I0(Q[9]),
        .I1(rd_timcnt),
        .I2(\bdatr[15] [9]),
        .I3(rd_timpsc),
        .I4(\bdatr[9]_INST_0_i_1_n_0 ),
        .O(bdatr[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[9]_INST_0_i_1 
       (.I0(\bdatr[15]_0 [9]),
        .I1(rd_timprd),
        .I2(rd_timcma),
        .I3(\bdatr[15]_1 [9]),
        .I4(\bdatr[15]_2 [9]),
        .I5(rd_timcmb),
        .O(\bdatr[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    rd_timcma_i_1
       (.I0(bcs_timr_n),
        .I1(bcmdr),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(badr[0]),
        .I5(badr[1]),
        .O(rd_timcma0));
  FDRE rd_timcma_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_timcma0),
        .Q(rd_timcma),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    rd_timcmb_i_1
       (.I0(bcs_timr_n),
        .I1(bcmdr),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(badr[1]),
        .I5(badr[3]),
        .O(rd_timcmb0));
  FDRE rd_timcmb_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_timcmb0),
        .Q(rd_timcmb),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    rd_timcnt_i_1
       (.I0(bcs_timr_n),
        .I1(bcmdr),
        .I2(badr[3]),
        .I3(badr[2]),
        .I4(badr[0]),
        .I5(badr[1]),
        .O(rd_timcnt0));
  FDRE rd_timcnt_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_timcnt0),
        .Q(rd_timcnt),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    rd_timctl_i_1
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(bcs_timr_n),
        .I5(bcmdr),
        .O(rd_timctl0));
  FDRE rd_timctl_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_timctl0),
        .Q(rd_timctl),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    rd_timflg_i_1
       (.I0(bcs_timr_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[2]),
        .I5(badr[3]),
        .O(rd_timflg0));
  FDRE rd_timflg_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_timflg0),
        .Q(rd_timflg),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    rd_timprd_i_1
       (.I0(bcs_timr_n),
        .I1(bcmdr),
        .I2(badr[2]),
        .I3(badr[3]),
        .I4(badr[1]),
        .I5(badr[0]),
        .O(rd_timprd0));
  FDRE rd_timprd_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_timprd0),
        .Q(rd_timprd),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    rd_timpsc_i_1
       (.I0(bcs_timr_n),
        .I1(bcmdr),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(badr[1]),
        .I5(badr[3]),
        .O(rd_timpsc0));
  FDRE rd_timpsc_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_timpsc0),
        .Q(rd_timpsc),
        .R(SR));
endmodule
