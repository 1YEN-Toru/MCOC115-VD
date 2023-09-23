
(* STRUCTURAL_NETLIST = "yes" *)
module uart8n1
   (clk,
    rst_n,
    simumd,
    uart_rxd,
    uart_cts,
    bcs_uart_n,
    brdy,
    bcmdr,
    bcmdw,
    badr,
    bdatw,
    uart_txd,
    uart_rts,
    uart_brdr,
    bdatr,
    urxf_empty,
    urxf_aempty,
    urxf_full,
    urxf_afull,
    urxf_dato,
    urxf_read,
    urxf_frst,
    urxf_write,
    urxf_dati);
//
//	UART Unit (Format 8N1, LSB first)
//		(c) 2021	1YEN Toru
//
//
//	2023/09/23	ver.1.04
//		corresponding to simulation mode (simumd)
//
//	2021/11/06	ver.1.02
//		corresponding to hardware flow control (cts, rts)
//		revised: baud rate detection function
//
//	2021/03/27	ver.1.00
//		frame format was fixed: 8 bit lsb first, no parity, 1 stop bit
//		baud rate is variable by setting uartbaud register.
//
  input clk;
  input rst_n;
  input simumd;
  input uart_rxd;
  input uart_cts;
  input bcs_uart_n;
  input brdy;
  input bcmdr;
  input bcmdw;
  input [3:0]badr;
  input [15:0]bdatw;
  output uart_txd;
  output uart_rts;
  output uart_brdr;
  output [15:0]bdatr;
  input urxf_empty;
  input urxf_aempty;
  input urxf_full;
  input urxf_afull;
  input [7:0]urxf_dato;
  output urxf_read;
  output urxf_frst;
  output urxf_write;
  output [7:0]urxf_dati;

  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_uart_n;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire brdy;
  wire bwcnt1;
  wire clk;
  wire p_12_in;
  wire p_6_in;
  wire rst_n;
  wire simumd;
  wire uart_brdr;
  wire uart_cts;
  wire uart_rts;
  wire uart_rxd;
  wire uart_txd;
  wire [15:0]uartbaud;
  wire [15:0]uartbres;
  wire ubr_n_1;
  wire uctl_brdf;
  wire uctl_n_40;
  wire uctl_rx_enb;
  wire uctl_tx_enb;
  wire urx_rxd;
  wire urxf_aempty;
  wire urxf_afull;
  wire [7:0]urxf_dati;
  wire [7:0]urxf_dato;
  wire urxf_empty;
  wire urxf_frst;
  wire urxf_full;
  wire urxf_read;
  wire urxf_write;
  wire utx_full;

  uart_br ubr
       (.Q(uartbres),
        .SR(bwcnt1),
        .bdatw(bdatw[5]),
        .\bdatw[5] (ubr_n_1),
        .clk(clk),
        .p_6_in(p_6_in),
        .rst_n(rst_n),
        .simumd(simumd),
        .uctl_brdf(uctl_brdf),
        .urx_rxd(urx_rxd));
  uart_uctl uctl
       (.Q({uctl_rx_enb,uctl_tx_enb}),
        .SR(bwcnt1),
        .badr(badr),
        .bcmdr(bcmdr),
        .bcmdw(bcmdw),
        .bcs_uart_n(bcs_uart_n),
        .bdatr(bdatr),
        .\bdatr[15] (uartbres),
        .bdatw(bdatw),
        .brdy(brdy),
        .clk(clk),
        .p_12_in(p_12_in),
        .p_6_in(p_6_in),
        .rst_n(rst_n),
        .uart_brdr(uart_brdr),
        .uart_cts(uart_cts),
        .uart_rts(uart_rts),
        .\uartbaud_reg[15]_0 (uartbaud),
        .\uartctl_reg[0]_0 (uctl_n_40),
        .uctl_brdf(uctl_brdf),
        .uctl_brdf_reg_0(ubr_n_1),
        .urxf_aempty(urxf_aempty),
        .urxf_afull(urxf_afull),
        .urxf_dato(urxf_dato),
        .urxf_empty(urxf_empty),
        .urxf_frst(urxf_frst),
        .urxf_full(urxf_full),
        .urxf_read(urxf_read),
        .utx_full(utx_full));
  uart_rx urx
       (.Q(uctl_rx_enb),
        .SR(bwcnt1),
        .clk(clk),
        .rst_n(rst_n),
        .uart_rxd(uart_rxd),
        .urx_ovfl_carry__0_0(uartbaud),
        .urx_rxd(urx_rxd),
        .urxf_dati(urxf_dati),
        .urxf_full(urxf_full),
        .urxf_write(urxf_write));
  uart_tx utx
       (.Q(uctl_tx_enb),
        .SR(bwcnt1),
        .badr(badr),
        .bdatw(bdatw[7:0]),
        .clk(clk),
        .p_12_in(p_12_in),
        .rst_n(rst_n),
        .uart_txd(uart_txd),
        .utx_full(utx_full),
        .utx_ovfl_carry__0_0(uartbaud),
        .\utx_tran_reg[9] (uctl_n_40));
endmodule

module uart_br
   (SR,
    \bdatw[5] ,
    Q,
    clk,
    urx_rxd,
    rst_n,
    simumd,
    bdatw,
    p_6_in,
    uctl_brdf);
  output [0:0]SR;
  output \bdatw[5] ;
  output [15:0]Q;
  input clk;
  input urx_rxd;
  input rst_n;
  input simumd;
  input [0:0]bdatw;
  input p_6_in;
  input uctl_brdf;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]Q;
  wire [0:0]SR;
  wire [0:0]bdatw;
  wire \bdatw[5] ;
  wire bitr_det;
  wire [16:0]bitr_diff;
  wire bitr_diff_carry__0_i_1_n_0;
  wire bitr_diff_carry__0_i_2_n_0;
  wire bitr_diff_carry__0_i_3_n_0;
  wire bitr_diff_carry__0_i_4_n_0;
  wire bitr_diff_carry__0_n_0;
  wire bitr_diff_carry__0_n_1;
  wire bitr_diff_carry__0_n_2;
  wire bitr_diff_carry__0_n_3;
  wire bitr_diff_carry__1_i_1_n_0;
  wire bitr_diff_carry__1_i_2_n_0;
  wire bitr_diff_carry__1_i_3_n_0;
  wire bitr_diff_carry__1_i_4_n_0;
  wire bitr_diff_carry__1_n_0;
  wire bitr_diff_carry__1_n_1;
  wire bitr_diff_carry__1_n_2;
  wire bitr_diff_carry__1_n_3;
  wire bitr_diff_carry__2_i_1_n_0;
  wire bitr_diff_carry__2_i_2_n_0;
  wire bitr_diff_carry__2_i_3_n_0;
  wire bitr_diff_carry__2_i_4_n_0;
  wire bitr_diff_carry__2_n_0;
  wire bitr_diff_carry__2_n_1;
  wire bitr_diff_carry__2_n_2;
  wire bitr_diff_carry__2_n_3;
  wire bitr_diff_carry_i_1_n_0;
  wire bitr_diff_carry_i_2_n_0;
  wire bitr_diff_carry_i_3_n_0;
  wire bitr_diff_carry_i_4_n_0;
  wire bitr_diff_carry_n_0;
  wire bitr_diff_carry_n_1;
  wire bitr_diff_carry_n_2;
  wire bitr_diff_carry_n_3;
  wire bitr_fovf;
  wire bitr_fovf_carry__0_n_2;
  wire bitr_fovf_carry__0_n_3;
  wire bitr_fovf_carry_i_1_n_0;
  wire bitr_fovf_carry_i_2_n_0;
  wire bitr_fovf_carry_i_3_n_0;
  wire bitr_fovf_carry_i_4_n_0;
  wire bitr_fovf_carry_n_0;
  wire bitr_fovf_carry_n_1;
  wire bitr_fovf_carry_n_2;
  wire bitr_fovf_carry_n_3;
  wire bitr_late;
  wire bitr_ovf;
  wire bitr_ovf_carry__0_n_3;
  wire bitr_ovf_carry_i_1_n_0;
  wire bitr_ovf_carry_i_2_n_0;
  wire bitr_ovf_carry_i_3_n_0;
  wire bitr_ovf_carry_i_4_n_0;
  wire bitr_ovf_carry_n_0;
  wire bitr_ovf_carry_n_1;
  wire bitr_ovf_carry_n_2;
  wire bitr_ovf_carry_n_3;
  wire bitr_same0_carry__0_i_1_n_0;
  wire bitr_same0_carry__0_i_2_n_0;
  wire bitr_same0_carry__0_i_3_n_0;
  wire bitr_same0_carry__0_i_4_n_0;
  wire bitr_same0_carry__0_i_5_n_0;
  wire bitr_same0_carry__0_i_6_n_0;
  wire bitr_same0_carry__0_i_7_n_0;
  wire bitr_same0_carry__0_n_0;
  wire bitr_same0_carry__0_n_1;
  wire bitr_same0_carry__0_n_2;
  wire bitr_same0_carry__0_n_3;
  wire bitr_same0_carry__1_n_3;
  wire bitr_same0_carry_i_1_n_0;
  wire bitr_same0_carry_i_2_n_0;
  wire bitr_same0_carry_i_3_n_0;
  wire bitr_same0_carry_i_4_n_0;
  wire bitr_same0_carry_i_5_n_0;
  wire bitr_same0_carry_i_6_n_0;
  wire bitr_same0_carry_i_7_n_0;
  wire bitr_same0_carry_i_8_n_0;
  wire bitr_same0_carry_n_0;
  wire bitr_same0_carry_n_1;
  wire bitr_same0_carry_n_2;
  wire bitr_same0_carry_n_3;
  wire \bitr_same0_inferred__0/i__carry__0_n_0 ;
  wire \bitr_same0_inferred__0/i__carry__0_n_1 ;
  wire \bitr_same0_inferred__0/i__carry__0_n_2 ;
  wire \bitr_same0_inferred__0/i__carry__0_n_3 ;
  wire \bitr_same0_inferred__0/i__carry__1_n_3 ;
  wire \bitr_same0_inferred__0/i__carry_n_0 ;
  wire \bitr_same0_inferred__0/i__carry_n_1 ;
  wire \bitr_same0_inferred__0/i__carry_n_2 ;
  wire \bitr_same0_inferred__0/i__carry_n_3 ;
  wire [12:0]bitr_same1;
  wire bitr_same1_carry__0_i_1_n_0;
  wire bitr_same1_carry__0_i_2_n_0;
  wire bitr_same1_carry__0_i_3_n_0;
  wire bitr_same1_carry__0_i_4_n_0;
  wire bitr_same1_carry__0_n_0;
  wire bitr_same1_carry__0_n_1;
  wire bitr_same1_carry__0_n_2;
  wire bitr_same1_carry__0_n_3;
  wire bitr_same1_carry__1_i_1_n_0;
  wire bitr_same1_carry__1_i_2_n_0;
  wire bitr_same1_carry__1_i_3_n_0;
  wire bitr_same1_carry__1_i_4_n_0;
  wire bitr_same1_carry__1_n_0;
  wire bitr_same1_carry__1_n_1;
  wire bitr_same1_carry__1_n_2;
  wire bitr_same1_carry__1_n_3;
  wire bitr_same1_carry__2_i_1_n_0;
  wire bitr_same1_carry__2_n_2;
  wire bitr_same1_carry_i_1_n_0;
  wire bitr_same1_carry_i_2_n_0;
  wire bitr_same1_carry_i_3_n_0;
  wire bitr_same1_carry_n_0;
  wire bitr_same1_carry_n_1;
  wire bitr_same1_carry_n_2;
  wire bitr_same1_carry_n_3;
  wire [3:0]bitr_sft;
  wire bitr_tgl;
  wire \brcnt[0]_i_7_n_0 ;
  wire [15:0]brcnt_f;
  wire [15:0]brcnt_f0;
  wire brcnt_f1_carry__0_i_1_n_0;
  wire brcnt_f1_carry__0_i_2_n_0;
  wire brcnt_f1_carry__0_i_3_n_0;
  wire brcnt_f1_carry__0_i_4_n_0;
  wire brcnt_f1_carry__0_n_0;
  wire brcnt_f1_carry__0_n_1;
  wire brcnt_f1_carry__0_n_2;
  wire brcnt_f1_carry__0_n_3;
  wire brcnt_f1_carry__1_i_1_n_0;
  wire brcnt_f1_carry__1_i_2_n_0;
  wire brcnt_f1_carry__1_i_3_n_0;
  wire brcnt_f1_carry__1_i_4_n_0;
  wire brcnt_f1_carry__1_n_0;
  wire brcnt_f1_carry__1_n_1;
  wire brcnt_f1_carry__1_n_2;
  wire brcnt_f1_carry__1_n_3;
  wire brcnt_f1_carry__2_i_1_n_0;
  wire brcnt_f1_carry__2_i_2_n_0;
  wire brcnt_f1_carry__2_i_3_n_0;
  wire brcnt_f1_carry__2_i_4_n_0;
  wire brcnt_f1_carry__2_n_1;
  wire brcnt_f1_carry__2_n_2;
  wire brcnt_f1_carry__2_n_3;
  wire brcnt_f1_carry_i_1_n_0;
  wire brcnt_f1_carry_i_2_n_0;
  wire brcnt_f1_carry_i_3_n_0;
  wire brcnt_f1_carry_i_4_n_0;
  wire brcnt_f1_carry_n_0;
  wire brcnt_f1_carry_n_1;
  wire brcnt_f1_carry_n_2;
  wire brcnt_f1_carry_n_3;
  wire \brcnt_reg[0]_i_3_n_0 ;
  wire \brcnt_reg[0]_i_3_n_1 ;
  wire \brcnt_reg[0]_i_3_n_2 ;
  wire \brcnt_reg[0]_i_3_n_3 ;
  wire \brcnt_reg[0]_i_3_n_4 ;
  wire \brcnt_reg[0]_i_3_n_5 ;
  wire \brcnt_reg[0]_i_3_n_6 ;
  wire \brcnt_reg[0]_i_3_n_7 ;
  wire \brcnt_reg[12]_i_1_n_0 ;
  wire \brcnt_reg[12]_i_1_n_1 ;
  wire \brcnt_reg[12]_i_1_n_2 ;
  wire \brcnt_reg[12]_i_1_n_3 ;
  wire \brcnt_reg[12]_i_1_n_4 ;
  wire \brcnt_reg[12]_i_1_n_5 ;
  wire \brcnt_reg[12]_i_1_n_6 ;
  wire \brcnt_reg[12]_i_1_n_7 ;
  wire \brcnt_reg[16]_i_1_n_2 ;
  wire \brcnt_reg[16]_i_1_n_3 ;
  wire \brcnt_reg[16]_i_1_n_5 ;
  wire \brcnt_reg[16]_i_1_n_6 ;
  wire \brcnt_reg[16]_i_1_n_7 ;
  wire \brcnt_reg[4]_i_1_n_0 ;
  wire \brcnt_reg[4]_i_1_n_1 ;
  wire \brcnt_reg[4]_i_1_n_2 ;
  wire \brcnt_reg[4]_i_1_n_3 ;
  wire \brcnt_reg[4]_i_1_n_4 ;
  wire \brcnt_reg[4]_i_1_n_5 ;
  wire \brcnt_reg[4]_i_1_n_6 ;
  wire \brcnt_reg[4]_i_1_n_7 ;
  wire \brcnt_reg[8]_i_1_n_0 ;
  wire \brcnt_reg[8]_i_1_n_1 ;
  wire \brcnt_reg[8]_i_1_n_2 ;
  wire \brcnt_reg[8]_i_1_n_3 ;
  wire \brcnt_reg[8]_i_1_n_4 ;
  wire \brcnt_reg[8]_i_1_n_5 ;
  wire \brcnt_reg[8]_i_1_n_6 ;
  wire \brcnt_reg[8]_i_1_n_7 ;
  wire \brcnt_reg_n_0_[0] ;
  wire \brcnt_reg_n_0_[1] ;
  wire \brcnt_reg_n_0_[2] ;
  wire \bwcnt[0]_i_1_n_0 ;
  wire \bwcnt[0]_i_2_n_0 ;
  wire \bwcnt[0]_i_4_n_0 ;
  wire [15:0]bwcnt_reg;
  wire \bwcnt_reg[0]_i_3_n_0 ;
  wire \bwcnt_reg[0]_i_3_n_1 ;
  wire \bwcnt_reg[0]_i_3_n_2 ;
  wire \bwcnt_reg[0]_i_3_n_3 ;
  wire \bwcnt_reg[0]_i_3_n_4 ;
  wire \bwcnt_reg[0]_i_3_n_5 ;
  wire \bwcnt_reg[0]_i_3_n_6 ;
  wire \bwcnt_reg[0]_i_3_n_7 ;
  wire \bwcnt_reg[12]_i_1_n_1 ;
  wire \bwcnt_reg[12]_i_1_n_2 ;
  wire \bwcnt_reg[12]_i_1_n_3 ;
  wire \bwcnt_reg[12]_i_1_n_4 ;
  wire \bwcnt_reg[12]_i_1_n_5 ;
  wire \bwcnt_reg[12]_i_1_n_6 ;
  wire \bwcnt_reg[12]_i_1_n_7 ;
  wire \bwcnt_reg[4]_i_1_n_0 ;
  wire \bwcnt_reg[4]_i_1_n_1 ;
  wire \bwcnt_reg[4]_i_1_n_2 ;
  wire \bwcnt_reg[4]_i_1_n_3 ;
  wire \bwcnt_reg[4]_i_1_n_4 ;
  wire \bwcnt_reg[4]_i_1_n_5 ;
  wire \bwcnt_reg[4]_i_1_n_6 ;
  wire \bwcnt_reg[4]_i_1_n_7 ;
  wire \bwcnt_reg[8]_i_1_n_0 ;
  wire \bwcnt_reg[8]_i_1_n_1 ;
  wire \bwcnt_reg[8]_i_1_n_2 ;
  wire \bwcnt_reg[8]_i_1_n_3 ;
  wire \bwcnt_reg[8]_i_1_n_4 ;
  wire \bwcnt_reg[8]_i_1_n_5 ;
  wire \bwcnt_reg[8]_i_1_n_6 ;
  wire \bwcnt_reg[8]_i_1_n_7 ;
  wire [15:0]bwdat0;
  wire [15:0]bwdat1;
  wire clk;
  wire fsm_n_12;
  wire fsm_n_13;
  wire fsm_n_14;
  wire fsm_n_2;
  wire fsm_n_4;
  wire fsm_n_5;
  wire fsm_n_6;
  wire fsm_n_7;
  wire fsm_n_8;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [15:0]p_0_in1_in;
  wire p_6_in;
  wire rst_n;
  wire sel;
  wire simumd;
  wire uctl_brdf;
  wire urx_rxd;
  wire [3:0]NLW_bitr_same1_carry__2_CO_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  CARRY4 bitr_diff_carry
       (.CI(\<const0> ),
        .CO({bitr_diff_carry_n_0,bitr_diff_carry_n_1,bitr_diff_carry_n_2,bitr_diff_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI(bwdat0[3:0]),
        .O(bitr_diff[3:0]),
        .S({bitr_diff_carry_i_1_n_0,bitr_diff_carry_i_2_n_0,bitr_diff_carry_i_3_n_0,bitr_diff_carry_i_4_n_0}));
  CARRY4 bitr_diff_carry__0
       (.CI(bitr_diff_carry_n_0),
        .CO({bitr_diff_carry__0_n_0,bitr_diff_carry__0_n_1,bitr_diff_carry__0_n_2,bitr_diff_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(bwdat0[7:4]),
        .O(bitr_diff[7:4]),
        .S({bitr_diff_carry__0_i_1_n_0,bitr_diff_carry__0_i_2_n_0,bitr_diff_carry__0_i_3_n_0,bitr_diff_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    bitr_diff_carry__0_i_1
       (.I0(bwdat0[7]),
        .I1(bwdat1[7]),
        .O(bitr_diff_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bitr_diff_carry__0_i_2
       (.I0(bwdat0[6]),
        .I1(bwdat1[6]),
        .O(bitr_diff_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bitr_diff_carry__0_i_3
       (.I0(bwdat0[5]),
        .I1(bwdat1[5]),
        .O(bitr_diff_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bitr_diff_carry__0_i_4
       (.I0(bwdat0[4]),
        .I1(bwdat1[4]),
        .O(bitr_diff_carry__0_i_4_n_0));
  CARRY4 bitr_diff_carry__1
       (.CI(bitr_diff_carry__0_n_0),
        .CO({bitr_diff_carry__1_n_0,bitr_diff_carry__1_n_1,bitr_diff_carry__1_n_2,bitr_diff_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(bwdat0[11:8]),
        .O(bitr_diff[11:8]),
        .S({bitr_diff_carry__1_i_1_n_0,bitr_diff_carry__1_i_2_n_0,bitr_diff_carry__1_i_3_n_0,bitr_diff_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    bitr_diff_carry__1_i_1
       (.I0(bwdat0[11]),
        .I1(bwdat1[11]),
        .O(bitr_diff_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bitr_diff_carry__1_i_2
       (.I0(bwdat0[10]),
        .I1(bwdat1[10]),
        .O(bitr_diff_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bitr_diff_carry__1_i_3
       (.I0(bwdat0[9]),
        .I1(bwdat1[9]),
        .O(bitr_diff_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bitr_diff_carry__1_i_4
       (.I0(bwdat0[8]),
        .I1(bwdat1[8]),
        .O(bitr_diff_carry__1_i_4_n_0));
  CARRY4 bitr_diff_carry__2
       (.CI(bitr_diff_carry__1_n_0),
        .CO({bitr_diff_carry__2_n_0,bitr_diff_carry__2_n_1,bitr_diff_carry__2_n_2,bitr_diff_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(bwdat0[15:12]),
        .O(bitr_diff[15:12]),
        .S({bitr_diff_carry__2_i_1_n_0,bitr_diff_carry__2_i_2_n_0,bitr_diff_carry__2_i_3_n_0,bitr_diff_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    bitr_diff_carry__2_i_1
       (.I0(bwdat0[15]),
        .I1(bwdat1[15]),
        .O(bitr_diff_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bitr_diff_carry__2_i_2
       (.I0(bwdat0[14]),
        .I1(bwdat1[14]),
        .O(bitr_diff_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bitr_diff_carry__2_i_3
       (.I0(bwdat0[13]),
        .I1(bwdat1[13]),
        .O(bitr_diff_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bitr_diff_carry__2_i_4
       (.I0(bwdat0[12]),
        .I1(bwdat1[12]),
        .O(bitr_diff_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bitr_diff_carry_i_1
       (.I0(bwdat0[3]),
        .I1(bwdat1[3]),
        .O(bitr_diff_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bitr_diff_carry_i_2
       (.I0(bwdat0[2]),
        .I1(bwdat1[2]),
        .O(bitr_diff_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bitr_diff_carry_i_3
       (.I0(bwdat0[1]),
        .I1(bwdat1[1]),
        .O(bitr_diff_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bitr_diff_carry_i_4
       (.I0(bwdat0[0]),
        .I1(bwdat1[0]),
        .O(bitr_diff_carry_i_4_n_0));
  CARRY4 bitr_fovf_carry
       (.CI(\<const0> ),
        .CO({bitr_fovf_carry_n_0,bitr_fovf_carry_n_1,bitr_fovf_carry_n_2,bitr_fovf_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({bitr_fovf_carry_i_1_n_0,bitr_fovf_carry_i_2_n_0,bitr_fovf_carry_i_3_n_0,bitr_fovf_carry_i_4_n_0}));
  CARRY4 bitr_fovf_carry__0
       (.CI(bitr_fovf_carry_n_0),
        .CO({bitr_fovf,bitr_fovf_carry__0_n_2,bitr_fovf_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,fsm_n_4,fsm_n_5,fsm_n_6}));
  LUT4 #(
    .INIT(16'h2800)) 
    bitr_fovf_carry_i_1
       (.I0(p_0_in1_in[6]),
        .I1(simumd),
        .I2(p_0_in1_in[8]),
        .I3(p_0_in1_in[7]),
        .O(bitr_fovf_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    bitr_fovf_carry_i_2
       (.I0(p_0_in1_in[3]),
        .I1(p_0_in1_in[5]),
        .I2(p_0_in1_in[4]),
        .O(bitr_fovf_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    bitr_fovf_carry_i_3
       (.I0(p_0_in1_in[0]),
        .I1(p_0_in1_in[2]),
        .I2(p_0_in1_in[1]),
        .O(bitr_fovf_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    bitr_fovf_carry_i_4
       (.I0(\brcnt_reg_n_0_[0] ),
        .I1(\brcnt_reg_n_0_[2] ),
        .I2(\brcnt_reg_n_0_[1] ),
        .O(bitr_fovf_carry_i_4_n_0));
  CARRY4 bitr_ovf_carry
       (.CI(\<const0> ),
        .CO({bitr_ovf_carry_n_0,bitr_ovf_carry_n_1,bitr_ovf_carry_n_2,bitr_ovf_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({bitr_ovf_carry_i_1_n_0,bitr_ovf_carry_i_2_n_0,bitr_ovf_carry_i_3_n_0,bitr_ovf_carry_i_4_n_0}));
  CARRY4 bitr_ovf_carry__0
       (.CI(bitr_ovf_carry_n_0),
        .CO({bitr_ovf,bitr_ovf_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,fsm_n_7,fsm_n_8}));
  LUT4 #(
    .INIT(16'h2004)) 
    bitr_ovf_carry_i_1
       (.I0(bwcnt_reg[9]),
        .I1(simumd),
        .I2(bwcnt_reg[11]),
        .I3(bwcnt_reg[10]),
        .O(bitr_ovf_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2800)) 
    bitr_ovf_carry_i_2
       (.I0(bwcnt_reg[6]),
        .I1(simumd),
        .I2(bwcnt_reg[8]),
        .I3(bwcnt_reg[7]),
        .O(bitr_ovf_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    bitr_ovf_carry_i_3
       (.I0(bwcnt_reg[3]),
        .I1(bwcnt_reg[5]),
        .I2(bwcnt_reg[4]),
        .O(bitr_ovf_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    bitr_ovf_carry_i_4
       (.I0(bwcnt_reg[0]),
        .I1(bwcnt_reg[2]),
        .I2(bwcnt_reg[1]),
        .O(bitr_ovf_carry_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 bitr_same0_carry
       (.CI(\<const0> ),
        .CO({bitr_same0_carry_n_0,bitr_same0_carry_n_1,bitr_same0_carry_n_2,bitr_same0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({bitr_same0_carry_i_1_n_0,bitr_same0_carry_i_2_n_0,bitr_same0_carry_i_3_n_0,bitr_same0_carry_i_4_n_0}),
        .S({bitr_same0_carry_i_5_n_0,bitr_same0_carry_i_6_n_0,bitr_same0_carry_i_7_n_0,bitr_same0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 bitr_same0_carry__0
       (.CI(bitr_same0_carry_n_0),
        .CO({bitr_same0_carry__0_n_0,bitr_same0_carry__0_n_1,bitr_same0_carry__0_n_2,bitr_same0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,bitr_same0_carry__0_i_1_n_0,bitr_same0_carry__0_i_2_n_0,bitr_same0_carry__0_i_3_n_0}),
        .S({bitr_same0_carry__0_i_4_n_0,bitr_same0_carry__0_i_5_n_0,bitr_same0_carry__0_i_6_n_0,bitr_same0_carry__0_i_7_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    bitr_same0_carry__0_i_1
       (.I0(bitr_diff[12]),
        .I1(bwdat1[15]),
        .I2(bitr_diff[13]),
        .O(bitr_same0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bitr_same0_carry__0_i_2
       (.I0(bwdat1[13]),
        .I1(bitr_diff[10]),
        .I2(bitr_diff[11]),
        .I3(bwdat1[14]),
        .O(bitr_same0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bitr_same0_carry__0_i_3
       (.I0(bwdat1[11]),
        .I1(bitr_diff[8]),
        .I2(bitr_diff[9]),
        .I3(bwdat1[12]),
        .O(bitr_same0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bitr_same0_carry__0_i_4
       (.I0(bitr_diff[14]),
        .I1(bitr_diff[15]),
        .O(bitr_same0_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    bitr_same0_carry__0_i_5
       (.I0(bwdat1[15]),
        .I1(bitr_diff[12]),
        .I2(bitr_diff[13]),
        .O(bitr_same0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bitr_same0_carry__0_i_6
       (.I0(bwdat1[13]),
        .I1(bitr_diff[10]),
        .I2(bwdat1[14]),
        .I3(bitr_diff[11]),
        .O(bitr_same0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bitr_same0_carry__0_i_7
       (.I0(bwdat1[11]),
        .I1(bitr_diff[8]),
        .I2(bwdat1[12]),
        .I3(bitr_diff[9]),
        .O(bitr_same0_carry__0_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 bitr_same0_carry__1
       (.CI(bitr_same0_carry__0_n_0),
        .CO(bitr_same0_carry__1_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,bitr_diff[16]}),
        .S({\<const0> ,\<const0> ,\<const0> ,fsm_n_2}));
  LUT4 #(
    .INIT(16'h2F02)) 
    bitr_same0_carry_i_1
       (.I0(bwdat1[9]),
        .I1(bitr_diff[6]),
        .I2(bitr_diff[7]),
        .I3(bwdat1[10]),
        .O(bitr_same0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bitr_same0_carry_i_2
       (.I0(bwdat1[7]),
        .I1(bitr_diff[4]),
        .I2(bitr_diff[5]),
        .I3(bwdat1[8]),
        .O(bitr_same0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bitr_same0_carry_i_3
       (.I0(bwdat1[5]),
        .I1(bitr_diff[2]),
        .I2(bitr_diff[3]),
        .I3(bwdat1[6]),
        .O(bitr_same0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bitr_same0_carry_i_4
       (.I0(bwdat1[3]),
        .I1(bitr_diff[0]),
        .I2(bitr_diff[1]),
        .I3(bwdat1[4]),
        .O(bitr_same0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bitr_same0_carry_i_5
       (.I0(bwdat1[9]),
        .I1(bitr_diff[6]),
        .I2(bwdat1[10]),
        .I3(bitr_diff[7]),
        .O(bitr_same0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bitr_same0_carry_i_6
       (.I0(bwdat1[7]),
        .I1(bitr_diff[4]),
        .I2(bwdat1[8]),
        .I3(bitr_diff[5]),
        .O(bitr_same0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bitr_same0_carry_i_7
       (.I0(bwdat1[5]),
        .I1(bitr_diff[2]),
        .I2(bwdat1[6]),
        .I3(bitr_diff[3]),
        .O(bitr_same0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bitr_same0_carry_i_8
       (.I0(bwdat1[3]),
        .I1(bitr_diff[0]),
        .I2(bwdat1[4]),
        .I3(bitr_diff[1]),
        .O(bitr_same0_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \bitr_same0_inferred__0/i__carry 
       (.CI(\<const0> ),
        .CO({\bitr_same0_inferred__0/i__carry_n_0 ,\bitr_same0_inferred__0/i__carry_n_1 ,\bitr_same0_inferred__0/i__carry_n_2 ,\bitr_same0_inferred__0/i__carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \bitr_same0_inferred__0/i__carry__0 
       (.CI(\bitr_same0_inferred__0/i__carry_n_0 ),
        .CO({\bitr_same0_inferred__0/i__carry__0_n_0 ,\bitr_same0_inferred__0/i__carry__0_n_1 ,\bitr_same0_inferred__0/i__carry__0_n_2 ,\bitr_same0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \bitr_same0_inferred__0/i__carry__1 
       (.CI(\bitr_same0_inferred__0/i__carry__0_n_0 ),
        .CO(\bitr_same0_inferred__0/i__carry__1_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,fsm_n_14}),
        .S({\<const0> ,\<const0> ,\<const0> ,fsm_n_13}));
  CARRY4 bitr_same1_carry
       (.CI(\<const0> ),
        .CO({bitr_same1_carry_n_0,bitr_same1_carry_n_1,bitr_same1_carry_n_2,bitr_same1_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O(bitr_same1[3:0]),
        .S({bitr_same1_carry_i_1_n_0,bitr_same1_carry_i_2_n_0,bitr_same1_carry_i_3_n_0,bwdat1[3]}));
  CARRY4 bitr_same1_carry__0
       (.CI(bitr_same1_carry_n_0),
        .CO({bitr_same1_carry__0_n_0,bitr_same1_carry__0_n_1,bitr_same1_carry__0_n_2,bitr_same1_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(bitr_same1[7:4]),
        .S({bitr_same1_carry__0_i_1_n_0,bitr_same1_carry__0_i_2_n_0,bitr_same1_carry__0_i_3_n_0,bitr_same1_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    bitr_same1_carry__0_i_1
       (.I0(bwdat1[10]),
        .O(bitr_same1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    bitr_same1_carry__0_i_2
       (.I0(bwdat1[9]),
        .O(bitr_same1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    bitr_same1_carry__0_i_3
       (.I0(bwdat1[8]),
        .O(bitr_same1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    bitr_same1_carry__0_i_4
       (.I0(bwdat1[7]),
        .O(bitr_same1_carry__0_i_4_n_0));
  CARRY4 bitr_same1_carry__1
       (.CI(bitr_same1_carry__0_n_0),
        .CO({bitr_same1_carry__1_n_0,bitr_same1_carry__1_n_1,bitr_same1_carry__1_n_2,bitr_same1_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(bitr_same1[11:8]),
        .S({bitr_same1_carry__1_i_1_n_0,bitr_same1_carry__1_i_2_n_0,bitr_same1_carry__1_i_3_n_0,bitr_same1_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    bitr_same1_carry__1_i_1
       (.I0(bwdat1[14]),
        .O(bitr_same1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    bitr_same1_carry__1_i_2
       (.I0(bwdat1[13]),
        .O(bitr_same1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    bitr_same1_carry__1_i_3
       (.I0(bwdat1[12]),
        .O(bitr_same1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    bitr_same1_carry__1_i_4
       (.I0(bwdat1[11]),
        .O(bitr_same1_carry__1_i_4_n_0));
  CARRY4 bitr_same1_carry__2
       (.CI(bitr_same1_carry__1_n_0),
        .CO({bitr_same1_carry__2_n_2,NLW_bitr_same1_carry__2_CO_UNCONNECTED[0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(bitr_same1[12]),
        .S({\<const0> ,\<const0> ,\<const1> ,bitr_same1_carry__2_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    bitr_same1_carry__2_i_1
       (.I0(bwdat1[15]),
        .O(bitr_same1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    bitr_same1_carry_i_1
       (.I0(bwdat1[6]),
        .O(bitr_same1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    bitr_same1_carry_i_2
       (.I0(bwdat1[5]),
        .O(bitr_same1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    bitr_same1_carry_i_3
       (.I0(bwdat1[4]),
        .O(bitr_same1_carry_i_3_n_0));
  FDSE \bitr_sft_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(urx_rxd),
        .Q(bitr_sft[0]),
        .S(SR));
  FDSE \bitr_sft_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bitr_sft[0]),
        .Q(bitr_sft[1]),
        .S(SR));
  FDSE \bitr_sft_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bitr_sft[1]),
        .Q(bitr_sft[2]),
        .S(SR));
  FDSE \bitr_sft_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bitr_sft[2]),
        .Q(bitr_sft[3]),
        .S(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \brcnt[0]_i_2 
       (.I0(bitr_fovf),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \brcnt[0]_i_7 
       (.I0(\brcnt_reg_n_0_[0] ),
        .O(\brcnt[0]_i_7_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 brcnt_f1_carry
       (.CI(\<const0> ),
        .CO({brcnt_f1_carry_n_0,brcnt_f1_carry_n_1,brcnt_f1_carry_n_2,brcnt_f1_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI(p_0_in1_in[3:0]),
        .O(brcnt_f0[3:0]),
        .S({brcnt_f1_carry_i_1_n_0,brcnt_f1_carry_i_2_n_0,brcnt_f1_carry_i_3_n_0,brcnt_f1_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 brcnt_f1_carry__0
       (.CI(brcnt_f1_carry_n_0),
        .CO({brcnt_f1_carry__0_n_0,brcnt_f1_carry__0_n_1,brcnt_f1_carry__0_n_2,brcnt_f1_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(p_0_in1_in[7:4]),
        .O(brcnt_f0[7:4]),
        .S({brcnt_f1_carry__0_i_1_n_0,brcnt_f1_carry__0_i_2_n_0,brcnt_f1_carry__0_i_3_n_0,brcnt_f1_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    brcnt_f1_carry__0_i_1
       (.I0(p_0_in1_in[7]),
        .O(brcnt_f1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    brcnt_f1_carry__0_i_2
       (.I0(p_0_in1_in[6]),
        .O(brcnt_f1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    brcnt_f1_carry__0_i_3
       (.I0(p_0_in1_in[5]),
        .O(brcnt_f1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    brcnt_f1_carry__0_i_4
       (.I0(p_0_in1_in[4]),
        .O(brcnt_f1_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 brcnt_f1_carry__1
       (.CI(brcnt_f1_carry__0_n_0),
        .CO({brcnt_f1_carry__1_n_0,brcnt_f1_carry__1_n_1,brcnt_f1_carry__1_n_2,brcnt_f1_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(p_0_in1_in[11:8]),
        .O(brcnt_f0[11:8]),
        .S({brcnt_f1_carry__1_i_1_n_0,brcnt_f1_carry__1_i_2_n_0,brcnt_f1_carry__1_i_3_n_0,brcnt_f1_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    brcnt_f1_carry__1_i_1
       (.I0(p_0_in1_in[11]),
        .O(brcnt_f1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    brcnt_f1_carry__1_i_2
       (.I0(p_0_in1_in[10]),
        .O(brcnt_f1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    brcnt_f1_carry__1_i_3
       (.I0(p_0_in1_in[9]),
        .O(brcnt_f1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    brcnt_f1_carry__1_i_4
       (.I0(p_0_in1_in[8]),
        .O(brcnt_f1_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 brcnt_f1_carry__2
       (.CI(brcnt_f1_carry__1_n_0),
        .CO({brcnt_f1_carry__2_n_1,brcnt_f1_carry__2_n_2,brcnt_f1_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,p_0_in1_in[14:12]}),
        .O(brcnt_f0[15:12]),
        .S({brcnt_f1_carry__2_i_1_n_0,brcnt_f1_carry__2_i_2_n_0,brcnt_f1_carry__2_i_3_n_0,brcnt_f1_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    brcnt_f1_carry__2_i_1
       (.I0(p_0_in1_in[15]),
        .O(brcnt_f1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    brcnt_f1_carry__2_i_2
       (.I0(p_0_in1_in[14]),
        .O(brcnt_f1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    brcnt_f1_carry__2_i_3
       (.I0(p_0_in1_in[13]),
        .O(brcnt_f1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    brcnt_f1_carry__2_i_4
       (.I0(p_0_in1_in[12]),
        .O(brcnt_f1_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    brcnt_f1_carry_i_1
       (.I0(p_0_in1_in[3]),
        .O(brcnt_f1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    brcnt_f1_carry_i_2
       (.I0(p_0_in1_in[2]),
        .O(brcnt_f1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    brcnt_f1_carry_i_3
       (.I0(p_0_in1_in[1]),
        .O(brcnt_f1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    brcnt_f1_carry_i_4
       (.I0(p_0_in1_in[0]),
        .I1(\brcnt_reg_n_0_[2] ),
        .O(brcnt_f1_carry_i_4_n_0));
  FDRE \brcnt_f_reg[0] 
       (.C(clk),
        .CE(bitr_late),
        .D(brcnt_f0[0]),
        .Q(brcnt_f[0]),
        .R(SR));
  FDRE \brcnt_f_reg[10] 
       (.C(clk),
        .CE(bitr_late),
        .D(brcnt_f0[10]),
        .Q(brcnt_f[10]),
        .R(SR));
  FDRE \brcnt_f_reg[11] 
       (.C(clk),
        .CE(bitr_late),
        .D(brcnt_f0[11]),
        .Q(brcnt_f[11]),
        .R(SR));
  FDRE \brcnt_f_reg[12] 
       (.C(clk),
        .CE(bitr_late),
        .D(brcnt_f0[12]),
        .Q(brcnt_f[12]),
        .R(SR));
  FDRE \brcnt_f_reg[13] 
       (.C(clk),
        .CE(bitr_late),
        .D(brcnt_f0[13]),
        .Q(brcnt_f[13]),
        .R(SR));
  FDRE \brcnt_f_reg[14] 
       (.C(clk),
        .CE(bitr_late),
        .D(brcnt_f0[14]),
        .Q(brcnt_f[14]),
        .R(SR));
  FDRE \brcnt_f_reg[15] 
       (.C(clk),
        .CE(bitr_late),
        .D(brcnt_f0[15]),
        .Q(brcnt_f[15]),
        .R(SR));
  FDRE \brcnt_f_reg[1] 
       (.C(clk),
        .CE(bitr_late),
        .D(brcnt_f0[1]),
        .Q(brcnt_f[1]),
        .R(SR));
  FDRE \brcnt_f_reg[2] 
       (.C(clk),
        .CE(bitr_late),
        .D(brcnt_f0[2]),
        .Q(brcnt_f[2]),
        .R(SR));
  FDRE \brcnt_f_reg[3] 
       (.C(clk),
        .CE(bitr_late),
        .D(brcnt_f0[3]),
        .Q(brcnt_f[3]),
        .R(SR));
  FDRE \brcnt_f_reg[4] 
       (.C(clk),
        .CE(bitr_late),
        .D(brcnt_f0[4]),
        .Q(brcnt_f[4]),
        .R(SR));
  FDRE \brcnt_f_reg[5] 
       (.C(clk),
        .CE(bitr_late),
        .D(brcnt_f0[5]),
        .Q(brcnt_f[5]),
        .R(SR));
  FDRE \brcnt_f_reg[6] 
       (.C(clk),
        .CE(bitr_late),
        .D(brcnt_f0[6]),
        .Q(brcnt_f[6]),
        .R(SR));
  FDRE \brcnt_f_reg[7] 
       (.C(clk),
        .CE(bitr_late),
        .D(brcnt_f0[7]),
        .Q(brcnt_f[7]),
        .R(SR));
  FDRE \brcnt_f_reg[8] 
       (.C(clk),
        .CE(bitr_late),
        .D(brcnt_f0[8]),
        .Q(brcnt_f[8]),
        .R(SR));
  FDRE \brcnt_f_reg[9] 
       (.C(clk),
        .CE(bitr_late),
        .D(brcnt_f0[9]),
        .Q(brcnt_f[9]),
        .R(SR));
  FDRE \brcnt_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[0]_i_3_n_7 ),
        .Q(\brcnt_reg_n_0_[0] ),
        .R(fsm_n_12));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \brcnt_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({\brcnt_reg[0]_i_3_n_0 ,\brcnt_reg[0]_i_3_n_1 ,\brcnt_reg[0]_i_3_n_2 ,\brcnt_reg[0]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\brcnt_reg[0]_i_3_n_4 ,\brcnt_reg[0]_i_3_n_5 ,\brcnt_reg[0]_i_3_n_6 ,\brcnt_reg[0]_i_3_n_7 }),
        .S({p_0_in1_in[0],\brcnt_reg_n_0_[2] ,\brcnt_reg_n_0_[1] ,\brcnt[0]_i_7_n_0 }));
  FDRE \brcnt_reg[10] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[8]_i_1_n_5 ),
        .Q(p_0_in1_in[7]),
        .R(fsm_n_12));
  FDRE \brcnt_reg[11] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[8]_i_1_n_4 ),
        .Q(p_0_in1_in[8]),
        .R(fsm_n_12));
  FDRE \brcnt_reg[12] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[12]_i_1_n_7 ),
        .Q(p_0_in1_in[9]),
        .R(fsm_n_12));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \brcnt_reg[12]_i_1 
       (.CI(\brcnt_reg[8]_i_1_n_0 ),
        .CO({\brcnt_reg[12]_i_1_n_0 ,\brcnt_reg[12]_i_1_n_1 ,\brcnt_reg[12]_i_1_n_2 ,\brcnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\brcnt_reg[12]_i_1_n_4 ,\brcnt_reg[12]_i_1_n_5 ,\brcnt_reg[12]_i_1_n_6 ,\brcnt_reg[12]_i_1_n_7 }),
        .S(p_0_in1_in[12:9]));
  FDRE \brcnt_reg[13] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[12]_i_1_n_6 ),
        .Q(p_0_in1_in[10]),
        .R(fsm_n_12));
  FDRE \brcnt_reg[14] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[12]_i_1_n_5 ),
        .Q(p_0_in1_in[11]),
        .R(fsm_n_12));
  FDRE \brcnt_reg[15] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[12]_i_1_n_4 ),
        .Q(p_0_in1_in[12]),
        .R(fsm_n_12));
  FDRE \brcnt_reg[16] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[16]_i_1_n_7 ),
        .Q(p_0_in1_in[13]),
        .R(fsm_n_12));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \brcnt_reg[16]_i_1 
       (.CI(\brcnt_reg[12]_i_1_n_0 ),
        .CO({\brcnt_reg[16]_i_1_n_2 ,\brcnt_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\brcnt_reg[16]_i_1_n_5 ,\brcnt_reg[16]_i_1_n_6 ,\brcnt_reg[16]_i_1_n_7 }),
        .S({\<const0> ,p_0_in1_in[15:13]}));
  FDRE \brcnt_reg[17] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[16]_i_1_n_6 ),
        .Q(p_0_in1_in[14]),
        .R(fsm_n_12));
  FDRE \brcnt_reg[18] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[16]_i_1_n_5 ),
        .Q(p_0_in1_in[15]),
        .R(fsm_n_12));
  FDRE \brcnt_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[0]_i_3_n_6 ),
        .Q(\brcnt_reg_n_0_[1] ),
        .R(fsm_n_12));
  FDRE \brcnt_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[0]_i_3_n_5 ),
        .Q(\brcnt_reg_n_0_[2] ),
        .R(fsm_n_12));
  FDRE \brcnt_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[0]_i_3_n_4 ),
        .Q(p_0_in1_in[0]),
        .R(fsm_n_12));
  FDRE \brcnt_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[4]_i_1_n_7 ),
        .Q(p_0_in1_in[1]),
        .R(fsm_n_12));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \brcnt_reg[4]_i_1 
       (.CI(\brcnt_reg[0]_i_3_n_0 ),
        .CO({\brcnt_reg[4]_i_1_n_0 ,\brcnt_reg[4]_i_1_n_1 ,\brcnt_reg[4]_i_1_n_2 ,\brcnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\brcnt_reg[4]_i_1_n_4 ,\brcnt_reg[4]_i_1_n_5 ,\brcnt_reg[4]_i_1_n_6 ,\brcnt_reg[4]_i_1_n_7 }),
        .S(p_0_in1_in[4:1]));
  FDRE \brcnt_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[4]_i_1_n_6 ),
        .Q(p_0_in1_in[2]),
        .R(fsm_n_12));
  FDRE \brcnt_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[4]_i_1_n_5 ),
        .Q(p_0_in1_in[3]),
        .R(fsm_n_12));
  FDRE \brcnt_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[4]_i_1_n_4 ),
        .Q(p_0_in1_in[4]),
        .R(fsm_n_12));
  FDRE \brcnt_reg[8] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[8]_i_1_n_7 ),
        .Q(p_0_in1_in[5]),
        .R(fsm_n_12));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \brcnt_reg[8]_i_1 
       (.CI(\brcnt_reg[4]_i_1_n_0 ),
        .CO({\brcnt_reg[8]_i_1_n_0 ,\brcnt_reg[8]_i_1_n_1 ,\brcnt_reg[8]_i_1_n_2 ,\brcnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\brcnt_reg[8]_i_1_n_4 ,\brcnt_reg[8]_i_1_n_5 ,\brcnt_reg[8]_i_1_n_6 ,\brcnt_reg[8]_i_1_n_7 }),
        .S(p_0_in1_in[8:5]));
  FDRE \brcnt_reg[9] 
       (.C(clk),
        .CE(sel),
        .D(\brcnt_reg[8]_i_1_n_6 ),
        .Q(p_0_in1_in[6]),
        .R(fsm_n_12));
  LUT3 #(
    .INIT(8'h6F)) 
    \bwcnt[0]_i_1 
       (.I0(bitr_sft[3]),
        .I1(bitr_sft[2]),
        .I2(rst_n),
        .O(\bwcnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bwcnt[0]_i_2 
       (.I0(bitr_ovf),
        .O(\bwcnt[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bwcnt[0]_i_4 
       (.I0(bwcnt_reg[0]),
        .O(\bwcnt[0]_i_4_n_0 ));
  FDRE \bwcnt_reg[0] 
       (.C(clk),
        .CE(\bwcnt[0]_i_2_n_0 ),
        .D(\bwcnt_reg[0]_i_3_n_7 ),
        .Q(bwcnt_reg[0]),
        .R(\bwcnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bwcnt_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({\bwcnt_reg[0]_i_3_n_0 ,\bwcnt_reg[0]_i_3_n_1 ,\bwcnt_reg[0]_i_3_n_2 ,\bwcnt_reg[0]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\bwcnt_reg[0]_i_3_n_4 ,\bwcnt_reg[0]_i_3_n_5 ,\bwcnt_reg[0]_i_3_n_6 ,\bwcnt_reg[0]_i_3_n_7 }),
        .S({bwcnt_reg[3:1],\bwcnt[0]_i_4_n_0 }));
  FDRE \bwcnt_reg[10] 
       (.C(clk),
        .CE(\bwcnt[0]_i_2_n_0 ),
        .D(\bwcnt_reg[8]_i_1_n_5 ),
        .Q(bwcnt_reg[10]),
        .R(\bwcnt[0]_i_1_n_0 ));
  FDRE \bwcnt_reg[11] 
       (.C(clk),
        .CE(\bwcnt[0]_i_2_n_0 ),
        .D(\bwcnt_reg[8]_i_1_n_4 ),
        .Q(bwcnt_reg[11]),
        .R(\bwcnt[0]_i_1_n_0 ));
  FDRE \bwcnt_reg[12] 
       (.C(clk),
        .CE(\bwcnt[0]_i_2_n_0 ),
        .D(\bwcnt_reg[12]_i_1_n_7 ),
        .Q(bwcnt_reg[12]),
        .R(\bwcnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bwcnt_reg[12]_i_1 
       (.CI(\bwcnt_reg[8]_i_1_n_0 ),
        .CO({\bwcnt_reg[12]_i_1_n_1 ,\bwcnt_reg[12]_i_1_n_2 ,\bwcnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bwcnt_reg[12]_i_1_n_4 ,\bwcnt_reg[12]_i_1_n_5 ,\bwcnt_reg[12]_i_1_n_6 ,\bwcnt_reg[12]_i_1_n_7 }),
        .S(bwcnt_reg[15:12]));
  FDRE \bwcnt_reg[13] 
       (.C(clk),
        .CE(\bwcnt[0]_i_2_n_0 ),
        .D(\bwcnt_reg[12]_i_1_n_6 ),
        .Q(bwcnt_reg[13]),
        .R(\bwcnt[0]_i_1_n_0 ));
  FDRE \bwcnt_reg[14] 
       (.C(clk),
        .CE(\bwcnt[0]_i_2_n_0 ),
        .D(\bwcnt_reg[12]_i_1_n_5 ),
        .Q(bwcnt_reg[14]),
        .R(\bwcnt[0]_i_1_n_0 ));
  FDRE \bwcnt_reg[15] 
       (.C(clk),
        .CE(\bwcnt[0]_i_2_n_0 ),
        .D(\bwcnt_reg[12]_i_1_n_4 ),
        .Q(bwcnt_reg[15]),
        .R(\bwcnt[0]_i_1_n_0 ));
  FDRE \bwcnt_reg[1] 
       (.C(clk),
        .CE(\bwcnt[0]_i_2_n_0 ),
        .D(\bwcnt_reg[0]_i_3_n_6 ),
        .Q(bwcnt_reg[1]),
        .R(\bwcnt[0]_i_1_n_0 ));
  FDRE \bwcnt_reg[2] 
       (.C(clk),
        .CE(\bwcnt[0]_i_2_n_0 ),
        .D(\bwcnt_reg[0]_i_3_n_5 ),
        .Q(bwcnt_reg[2]),
        .R(\bwcnt[0]_i_1_n_0 ));
  FDRE \bwcnt_reg[3] 
       (.C(clk),
        .CE(\bwcnt[0]_i_2_n_0 ),
        .D(\bwcnt_reg[0]_i_3_n_4 ),
        .Q(bwcnt_reg[3]),
        .R(\bwcnt[0]_i_1_n_0 ));
  FDRE \bwcnt_reg[4] 
       (.C(clk),
        .CE(\bwcnt[0]_i_2_n_0 ),
        .D(\bwcnt_reg[4]_i_1_n_7 ),
        .Q(bwcnt_reg[4]),
        .R(\bwcnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bwcnt_reg[4]_i_1 
       (.CI(\bwcnt_reg[0]_i_3_n_0 ),
        .CO({\bwcnt_reg[4]_i_1_n_0 ,\bwcnt_reg[4]_i_1_n_1 ,\bwcnt_reg[4]_i_1_n_2 ,\bwcnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bwcnt_reg[4]_i_1_n_4 ,\bwcnt_reg[4]_i_1_n_5 ,\bwcnt_reg[4]_i_1_n_6 ,\bwcnt_reg[4]_i_1_n_7 }),
        .S(bwcnt_reg[7:4]));
  FDRE \bwcnt_reg[5] 
       (.C(clk),
        .CE(\bwcnt[0]_i_2_n_0 ),
        .D(\bwcnt_reg[4]_i_1_n_6 ),
        .Q(bwcnt_reg[5]),
        .R(\bwcnt[0]_i_1_n_0 ));
  FDRE \bwcnt_reg[6] 
       (.C(clk),
        .CE(\bwcnt[0]_i_2_n_0 ),
        .D(\bwcnt_reg[4]_i_1_n_5 ),
        .Q(bwcnt_reg[6]),
        .R(\bwcnt[0]_i_1_n_0 ));
  FDRE \bwcnt_reg[7] 
       (.C(clk),
        .CE(\bwcnt[0]_i_2_n_0 ),
        .D(\bwcnt_reg[4]_i_1_n_4 ),
        .Q(bwcnt_reg[7]),
        .R(\bwcnt[0]_i_1_n_0 ));
  FDRE \bwcnt_reg[8] 
       (.C(clk),
        .CE(\bwcnt[0]_i_2_n_0 ),
        .D(\bwcnt_reg[8]_i_1_n_7 ),
        .Q(bwcnt_reg[8]),
        .R(\bwcnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bwcnt_reg[8]_i_1 
       (.CI(\bwcnt_reg[4]_i_1_n_0 ),
        .CO({\bwcnt_reg[8]_i_1_n_0 ,\bwcnt_reg[8]_i_1_n_1 ,\bwcnt_reg[8]_i_1_n_2 ,\bwcnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bwcnt_reg[8]_i_1_n_4 ,\bwcnt_reg[8]_i_1_n_5 ,\bwcnt_reg[8]_i_1_n_6 ,\bwcnt_reg[8]_i_1_n_7 }),
        .S(bwcnt_reg[11:8]));
  FDRE \bwcnt_reg[9] 
       (.C(clk),
        .CE(\bwcnt[0]_i_2_n_0 ),
        .D(\bwcnt_reg[8]_i_1_n_6 ),
        .Q(bwcnt_reg[9]),
        .R(\bwcnt[0]_i_1_n_0 ));
  FDRE \bwdat0_reg[0] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwcnt_reg[0]),
        .Q(bwdat0[0]),
        .R(SR));
  FDRE \bwdat0_reg[10] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwcnt_reg[10]),
        .Q(bwdat0[10]),
        .R(SR));
  FDRE \bwdat0_reg[11] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwcnt_reg[11]),
        .Q(bwdat0[11]),
        .R(SR));
  FDRE \bwdat0_reg[12] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwcnt_reg[12]),
        .Q(bwdat0[12]),
        .R(SR));
  FDRE \bwdat0_reg[13] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwcnt_reg[13]),
        .Q(bwdat0[13]),
        .R(SR));
  FDRE \bwdat0_reg[14] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwcnt_reg[14]),
        .Q(bwdat0[14]),
        .R(SR));
  FDRE \bwdat0_reg[15] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwcnt_reg[15]),
        .Q(bwdat0[15]),
        .R(SR));
  FDRE \bwdat0_reg[1] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwcnt_reg[1]),
        .Q(bwdat0[1]),
        .R(SR));
  FDRE \bwdat0_reg[2] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwcnt_reg[2]),
        .Q(bwdat0[2]),
        .R(SR));
  FDRE \bwdat0_reg[3] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwcnt_reg[3]),
        .Q(bwdat0[3]),
        .R(SR));
  FDRE \bwdat0_reg[4] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwcnt_reg[4]),
        .Q(bwdat0[4]),
        .R(SR));
  FDRE \bwdat0_reg[5] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwcnt_reg[5]),
        .Q(bwdat0[5]),
        .R(SR));
  FDRE \bwdat0_reg[6] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwcnt_reg[6]),
        .Q(bwdat0[6]),
        .R(SR));
  FDRE \bwdat0_reg[7] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwcnt_reg[7]),
        .Q(bwdat0[7]),
        .R(SR));
  FDRE \bwdat0_reg[8] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwcnt_reg[8]),
        .Q(bwdat0[8]),
        .R(SR));
  FDRE \bwdat0_reg[9] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwcnt_reg[9]),
        .Q(bwdat0[9]),
        .R(SR));
  FDRE \bwdat1_reg[0] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwdat0[0]),
        .Q(bwdat1[0]),
        .R(SR));
  FDRE \bwdat1_reg[10] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwdat0[10]),
        .Q(bwdat1[10]),
        .R(SR));
  FDRE \bwdat1_reg[11] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwdat0[11]),
        .Q(bwdat1[11]),
        .R(SR));
  FDRE \bwdat1_reg[12] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwdat0[12]),
        .Q(bwdat1[12]),
        .R(SR));
  FDRE \bwdat1_reg[13] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwdat0[13]),
        .Q(bwdat1[13]),
        .R(SR));
  FDRE \bwdat1_reg[14] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwdat0[14]),
        .Q(bwdat1[14]),
        .R(SR));
  FDRE \bwdat1_reg[15] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwdat0[15]),
        .Q(bwdat1[15]),
        .R(SR));
  FDRE \bwdat1_reg[1] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwdat0[1]),
        .Q(bwdat1[1]),
        .R(SR));
  FDRE \bwdat1_reg[2] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwdat0[2]),
        .Q(bwdat1[2]),
        .R(SR));
  FDRE \bwdat1_reg[3] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwdat0[3]),
        .Q(bwdat1[3]),
        .R(SR));
  FDRE \bwdat1_reg[4] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwdat0[4]),
        .Q(bwdat1[4]),
        .R(SR));
  FDRE \bwdat1_reg[5] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwdat0[5]),
        .Q(bwdat1[5]),
        .R(SR));
  FDRE \bwdat1_reg[6] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwdat0[6]),
        .Q(bwdat1[6]),
        .R(SR));
  FDRE \bwdat1_reg[7] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwdat0[7]),
        .Q(bwdat1[7]),
        .R(SR));
  FDRE \bwdat1_reg[8] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwdat0[8]),
        .Q(bwdat1[8]),
        .R(SR));
  FDRE \bwdat1_reg[9] 
       (.C(clk),
        .CE(bitr_tgl),
        .D(bwdat0[9]),
        .Q(bwdat1[9]),
        .R(SR));
  uart_br_fsm fsm
       (.CO(fsm_n_2),
        .D({bitr_sft[2],urx_rxd}),
        .DI(bitr_diff[16]),
        .E(bitr_late),
        .Q(bitr_sft[3]),
        .S({fsm_n_4,fsm_n_5,fsm_n_6}),
        .SR(SR),
        .bdatw(bdatw),
        .\bdatw[5] (\bdatw[5] ),
        .bitr_late_reg_0(bitr_ovf),
        .bitr_late_reg_1(bitr_fovf),
        .bitr_ovf_carry__0(bwcnt_reg[15:12]),
        .bitr_same0_carry__1(bitr_diff_carry__2_n_0),
        .\bitr_same0_inferred__0/i__carry__1 (bitr_same1_carry__2_n_2),
        .bitr_same1_carry__2(fsm_n_13),
        .bitr_same1_carry__2_0(fsm_n_14),
        .bitr_tgl(bitr_tgl),
        .\brcnt_reg[18] (\bitr_same0_inferred__0/i__carry__1_n_3 ),
        .\brcnt_reg[18]_0 (bitr_same0_carry__1_n_3),
        .clk(clk),
        .p_0_in1_in(p_0_in1_in[15:9]),
        .p_6_in(p_6_in),
        .rst_n(rst_n),
        .simumd(simumd),
        .simumd_0({fsm_n_7,fsm_n_8}),
        .\stat_reg[1]_0 (bitr_det),
        .\stat_reg[3]_0 (fsm_n_12),
        .uctl_brdf(uctl_brdf));
  LUT3 #(
    .INIT(8'hE0)) 
    i__carry__0_i_1
       (.I0(bitr_diff[14]),
        .I1(bitr_diff[15]),
        .I2(bitr_same1_carry__2_n_2),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hF220)) 
    i__carry__0_i_2
       (.I0(bitr_diff[12]),
        .I1(bitr_same1[12]),
        .I2(bitr_diff[13]),
        .I3(bitr_same1_carry__2_n_2),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3
       (.I0(bitr_diff[10]),
        .I1(bitr_same1[10]),
        .I2(bitr_same1[11]),
        .I3(bitr_diff[11]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4
       (.I0(bitr_diff[8]),
        .I1(bitr_same1[8]),
        .I2(bitr_same1[9]),
        .I3(bitr_diff[9]),
        .O(i__carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    i__carry__0_i_5
       (.I0(bitr_diff[14]),
        .I1(bitr_diff[15]),
        .I2(bitr_same1_carry__2_n_2),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h0990)) 
    i__carry__0_i_6
       (.I0(bitr_diff[12]),
        .I1(bitr_same1[12]),
        .I2(bitr_diff[13]),
        .I3(bitr_same1_carry__2_n_2),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(bitr_diff[10]),
        .I1(bitr_same1[10]),
        .I2(bitr_diff[11]),
        .I3(bitr_same1[11]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(bitr_diff[8]),
        .I1(bitr_same1[8]),
        .I2(bitr_diff[9]),
        .I3(bitr_same1[9]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(bitr_diff[6]),
        .I1(bitr_same1[6]),
        .I2(bitr_same1[7]),
        .I3(bitr_diff[7]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(bitr_diff[4]),
        .I1(bitr_same1[4]),
        .I2(bitr_same1[5]),
        .I3(bitr_diff[5]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(bitr_diff[2]),
        .I1(bitr_same1[2]),
        .I2(bitr_same1[3]),
        .I3(bitr_diff[3]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4
       (.I0(bitr_diff[0]),
        .I1(bitr_same1[0]),
        .I2(bitr_same1[1]),
        .I3(bitr_diff[1]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(bitr_diff[6]),
        .I1(bitr_same1[6]),
        .I2(bitr_diff[7]),
        .I3(bitr_same1[7]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(bitr_diff[4]),
        .I1(bitr_same1[4]),
        .I2(bitr_diff[5]),
        .I3(bitr_same1[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(bitr_diff[2]),
        .I1(bitr_same1[2]),
        .I2(bitr_diff[3]),
        .I3(bitr_same1[3]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(bitr_diff[0]),
        .I1(bitr_same1[0]),
        .I2(bitr_diff[1]),
        .I3(bitr_same1[1]),
        .O(i__carry_i_8_n_0));
  FDRE \uartbres_reg[0] 
       (.C(clk),
        .CE(bitr_det),
        .D(brcnt_f[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \uartbres_reg[10] 
       (.C(clk),
        .CE(bitr_det),
        .D(brcnt_f[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \uartbres_reg[11] 
       (.C(clk),
        .CE(bitr_det),
        .D(brcnt_f[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \uartbres_reg[12] 
       (.C(clk),
        .CE(bitr_det),
        .D(brcnt_f[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \uartbres_reg[13] 
       (.C(clk),
        .CE(bitr_det),
        .D(brcnt_f[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \uartbres_reg[14] 
       (.C(clk),
        .CE(bitr_det),
        .D(brcnt_f[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \uartbres_reg[15] 
       (.C(clk),
        .CE(bitr_det),
        .D(brcnt_f[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \uartbres_reg[1] 
       (.C(clk),
        .CE(bitr_det),
        .D(brcnt_f[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \uartbres_reg[2] 
       (.C(clk),
        .CE(bitr_det),
        .D(brcnt_f[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \uartbres_reg[3] 
       (.C(clk),
        .CE(bitr_det),
        .D(brcnt_f[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \uartbres_reg[4] 
       (.C(clk),
        .CE(bitr_det),
        .D(brcnt_f[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \uartbres_reg[5] 
       (.C(clk),
        .CE(bitr_det),
        .D(brcnt_f[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \uartbres_reg[6] 
       (.C(clk),
        .CE(bitr_det),
        .D(brcnt_f[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \uartbres_reg[7] 
       (.C(clk),
        .CE(bitr_det),
        .D(brcnt_f[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \uartbres_reg[8] 
       (.C(clk),
        .CE(bitr_det),
        .D(brcnt_f[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \uartbres_reg[9] 
       (.C(clk),
        .CE(bitr_det),
        .D(brcnt_f[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

module uart_br_fsm
   (E,
    SR,
    CO,
    bitr_tgl,
    S,
    simumd_0,
    DI,
    \stat_reg[1]_0 ,
    \bdatw[5] ,
    \stat_reg[3]_0 ,
    bitr_same1_carry__2,
    bitr_same1_carry__2_0,
    clk,
    bitr_same0_carry__1,
    D,
    bitr_late_reg_0,
    bitr_late_reg_1,
    \brcnt_reg[18] ,
    \brcnt_reg[18]_0 ,
    Q,
    rst_n,
    p_0_in1_in,
    simumd,
    bitr_ovf_carry__0,
    bdatw,
    p_6_in,
    uctl_brdf,
    \bitr_same0_inferred__0/i__carry__1 );
  output [0:0]E;
  output [0:0]SR;
  output [0:0]CO;
  output bitr_tgl;
  output [2:0]S;
  output [1:0]simumd_0;
  output [0:0]DI;
  output [0:0]\stat_reg[1]_0 ;
  output \bdatw[5] ;
  output \stat_reg[3]_0 ;
  output [0:0]bitr_same1_carry__2;
  output [0:0]bitr_same1_carry__2_0;
  input clk;
  input [0:0]bitr_same0_carry__1;
  input [1:0]D;
  input [0:0]bitr_late_reg_0;
  input [0:0]bitr_late_reg_1;
  input [0:0]\brcnt_reg[18] ;
  input [0:0]\brcnt_reg[18]_0 ;
  input [0:0]Q;
  input rst_n;
  input [6:0]p_0_in1_in;
  input simumd;
  input [3:0]bitr_ovf_carry__0;
  input [0:0]bdatw;
  input p_6_in;
  input uctl_brdf;
  input [0:0]\bitr_same0_inferred__0/i__carry__1 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [0:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire [0:0]bdatw;
  wire \bdatw[5] ;
  wire bitr_late_i_2_n_0;
  wire [0:0]bitr_late_reg_0;
  wire [0:0]bitr_late_reg_1;
  wire bitr_late_t;
  wire bitr_ovf0;
  wire [3:0]bitr_ovf_carry__0;
  wire [0:0]bitr_same0_carry__1;
  wire [0:0]\bitr_same0_inferred__0/i__carry__1 ;
  wire [0:0]bitr_same1_carry__2;
  wire [0:0]bitr_same1_carry__2_0;
  wire bitr_same__0;
  wire bitr_tgl;
  wire \brcnt[0]_i_4_n_0 ;
  wire \brcnt[0]_i_5_n_0 ;
  wire \brcnt[0]_i_6_n_0 ;
  wire [0:0]\brcnt_reg[18] ;
  wire [0:0]\brcnt_reg[18]_0 ;
  wire clk;
  wire [6:0]p_0_in1_in;
  wire p_6_in;
  wire rst_n;
  wire simumd;
  wire [1:0]simumd_0;
  wire [3:0]stat;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[0]_i_3_n_0 ;
  wire \stat[0]_i_4_n_0 ;
  wire \stat[0]_i_5_n_0 ;
  wire \stat[0]_i_6_n_0 ;
  wire \stat[0]_i_7_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[1]_i_6_n_0 ;
  wire \stat[2]_i_2_n_0 ;
  wire \stat[2]_i_3_n_0 ;
  wire \stat[2]_i_5_n_0 ;
  wire \stat[2]_i_6_n_0 ;
  wire \stat[3]_i_2_n_0 ;
  wire \stat[3]_i_3_n_0 ;
  wire \stat[3]_i_4_n_0 ;
  wire \stat[3]_i_6_n_0 ;
  wire [3:0]stat_nx;
  wire [0:0]\stat_reg[1]_0 ;
  wire \stat_reg[3]_0 ;
  wire uctl_brdf;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h6)) 
    bitr_fovf_carry__0_i_1
       (.I0(simumd),
        .I1(p_0_in1_in[6]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h2004)) 
    bitr_fovf_carry__0_i_2
       (.I0(p_0_in1_in[3]),
        .I1(simumd),
        .I2(p_0_in1_in[5]),
        .I3(p_0_in1_in[4]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h2004)) 
    bitr_fovf_carry__0_i_3
       (.I0(p_0_in1_in[0]),
        .I1(simumd),
        .I2(p_0_in1_in[2]),
        .I3(p_0_in1_in[1]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h00000010)) 
    bitr_late_i_1
       (.I0(bitr_late_reg_1),
        .I1(bitr_late_reg_0),
        .I2(stat[3]),
        .I3(stat[2]),
        .I4(bitr_late_i_2_n_0),
        .O(bitr_late_t));
  LUT6 #(
    .INIT(64'h9FFFFFFFFFFFFFFF)) 
    bitr_late_i_2
       (.I0(D[1]),
        .I1(Q),
        .I2(\brcnt_reg[18] ),
        .I3(\brcnt_reg[18]_0 ),
        .I4(stat[1]),
        .I5(stat[0]),
        .O(bitr_late_i_2_n_0));
  FDRE bitr_late_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(bitr_late_t),
        .Q(E),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    bitr_ovf_carry__0_i_1
       (.I0(simumd),
        .I1(bitr_ovf_carry__0[3]),
        .O(simumd_0[1]));
  LUT4 #(
    .INIT(16'h2004)) 
    bitr_ovf_carry__0_i_2
       (.I0(bitr_ovf_carry__0[0]),
        .I1(simumd),
        .I2(bitr_ovf_carry__0[2]),
        .I3(bitr_ovf_carry__0[1]),
        .O(simumd_0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    bitr_same0_carry__1_i_1
       (.I0(CO),
        .O(DI));
  CARRY4 bitr_same0_carry__1_i_2
       (.CI(bitr_same0_carry__1),
        .CO(CO),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,\<const0> ,\<const1> }));
  LUT6 #(
    .INIT(64'hFFF100F1FFFFFFFF)) 
    \brcnt[0]_i_1 
       (.I0(stat[3]),
        .I1(\brcnt[0]_i_4_n_0 ),
        .I2(\brcnt[0]_i_5_n_0 ),
        .I3(stat[2]),
        .I4(\brcnt[0]_i_6_n_0 ),
        .I5(rst_n),
        .O(\stat_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hDDD57777DDD5FFFF)) 
    \brcnt[0]_i_4 
       (.I0(bitr_tgl),
        .I1(stat[0]),
        .I2(bitr_late_reg_0),
        .I3(bitr_late_reg_1),
        .I4(stat[1]),
        .I5(D[0]),
        .O(\brcnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5455555500000000)) 
    \brcnt[0]_i_5 
       (.I0(stat[0]),
        .I1(bitr_late_reg_0),
        .I2(bitr_late_reg_1),
        .I3(\brcnt_reg[18] ),
        .I4(\brcnt_reg[18]_0 ),
        .I5(stat[3]),
        .O(\brcnt[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1B1B1B1B13130212)) 
    \brcnt[0]_i_6 
       (.I0(stat[3]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(bitr_same__0),
        .I4(bitr_late_reg_0),
        .I5(bitr_late_reg_1),
        .O(\brcnt[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bwdat0[15]_i_1 
       (.I0(D[1]),
        .I1(Q),
        .O(bitr_tgl));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_1
       (.I0(CO),
        .I1(\bitr_same0_inferred__0/i__carry__1 ),
        .O(bitr_same1_carry__2_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(CO),
        .I1(\bitr_same0_inferred__0/i__carry__1 ),
        .O(bitr_same1_carry__2));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \stat[0]_i_1 
       (.I0(\stat[0]_i_2_n_0 ),
        .I1(\stat[0]_i_3_n_0 ),
        .I2(stat[2]),
        .I3(\stat[0]_i_4_n_0 ),
        .I4(stat[0]),
        .I5(\stat[0]_i_5_n_0 ),
        .O(stat_nx[0]));
  LUT6 #(
    .INIT(64'hAAF8FFF8AAA8AAA8)) 
    \stat[0]_i_2 
       (.I0(\stat[0]_i_6_n_0 ),
        .I1(bitr_tgl),
        .I2(bitr_same__0),
        .I3(stat[0]),
        .I4(bitr_late_reg_1),
        .I5(\stat[3]_i_6_n_0 ),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAA6A)) 
    \stat[0]_i_3 
       (.I0(stat[0]),
        .I1(bitr_tgl),
        .I2(bitr_same__0),
        .I3(bitr_late_reg_0),
        .I4(bitr_late_reg_1),
        .I5(stat[3]),
        .O(\stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFF75557FF57)) 
    \stat[0]_i_4 
       (.I0(bitr_tgl),
        .I1(D[0]),
        .I2(stat[1]),
        .I3(stat[3]),
        .I4(bitr_same__0),
        .I5(bitr_ovf0),
        .O(\stat[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA00A2000000A2)) 
    \stat[0]_i_5 
       (.I0(bitr_tgl),
        .I1(bitr_late_reg_1),
        .I2(stat[1]),
        .I3(D[0]),
        .I4(stat[3]),
        .I5(\stat[0]_i_7_n_0 ),
        .O(\stat[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    \stat[0]_i_6 
       (.I0(stat[3]),
        .I1(bitr_late_reg_0),
        .I2(bitr_late_reg_1),
        .I3(stat[1]),
        .I4(\brcnt_reg[18] ),
        .I5(\brcnt_reg[18]_0 ),
        .O(\stat[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \stat[0]_i_7 
       (.I0(\brcnt_reg[18]_0 ),
        .I1(\brcnt_reg[18] ),
        .I2(bitr_late_reg_1),
        .I3(bitr_late_reg_0),
        .O(\stat[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8A8A800A8A8A8)) 
    \stat[1]_i_1 
       (.I0(\stat[1]_i_2_n_0 ),
        .I1(\stat[1]_i_3_n_0 ),
        .I2(\stat[1]_i_4_n_0 ),
        .I3(\stat[1]_i_5_n_0 ),
        .I4(stat[2]),
        .I5(\stat[1]_i_6_n_0 ),
        .O(stat_nx[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF9FF)) 
    \stat[1]_i_2 
       (.I0(Q),
        .I1(D[1]),
        .I2(stat[2]),
        .I3(D[0]),
        .I4(stat[0]),
        .I5(stat[3]),
        .O(\stat[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1320570000005700)) 
    \stat[1]_i_3 
       (.I0(stat[0]),
        .I1(bitr_ovf0),
        .I2(bitr_tgl),
        .I3(stat[1]),
        .I4(stat[3]),
        .I5(bitr_same__0),
        .O(\stat[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00090000)) 
    \stat[1]_i_4 
       (.I0(Q),
        .I1(D[1]),
        .I2(stat[0]),
        .I3(stat[3]),
        .I4(bitr_late_reg_1),
        .O(\stat[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFDFCFDFDFFFFFFFF)) 
    \stat[1]_i_5 
       (.I0(stat[1]),
        .I1(bitr_ovf0),
        .I2(stat[3]),
        .I3(stat[0]),
        .I4(bitr_tgl),
        .I5(bitr_same__0),
        .O(\stat[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \stat[1]_i_6 
       (.I0(stat[3]),
        .I1(bitr_late_reg_0),
        .I2(bitr_late_reg_1),
        .I3(bitr_tgl),
        .I4(\brcnt_reg[18] ),
        .I5(\brcnt_reg[18]_0 ),
        .O(\stat[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2022000000000000)) 
    \stat[2]_i_2 
       (.I0(bitr_tgl),
        .I1(bitr_ovf0),
        .I2(bitr_same__0),
        .I3(stat[3]),
        .I4(stat[0]),
        .I5(stat[1]),
        .O(\stat[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h202020202020202F)) 
    \stat[2]_i_3 
       (.I0(\stat[2]_i_5_n_0 ),
        .I1(stat[1]),
        .I2(stat[3]),
        .I3(bitr_late_reg_1),
        .I4(bitr_late_reg_0),
        .I5(\stat[2]_i_6_n_0 ),
        .O(\stat[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \stat[2]_i_4 
       (.I0(bitr_late_reg_0),
        .I1(bitr_late_reg_1),
        .O(bitr_ovf0));
  LUT6 #(
    .INIT(64'h09FF090009000900)) 
    \stat[2]_i_5 
       (.I0(Q),
        .I1(D[1]),
        .I2(bitr_late_reg_1),
        .I3(stat[0]),
        .I4(\brcnt_reg[18] ),
        .I5(\brcnt_reg[18]_0 ),
        .O(\stat[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0EEE8EEE8EEE0EEE)) 
    \stat[2]_i_6 
       (.I0(stat[0]),
        .I1(stat[1]),
        .I2(\brcnt_reg[18]_0 ),
        .I3(\brcnt_reg[18] ),
        .I4(Q),
        .I5(D[1]),
        .O(\stat[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \stat[3]_i_2 
       (.I0(bitr_late_reg_1),
        .I1(bitr_late_reg_0),
        .I2(\brcnt_reg[18] ),
        .I3(\brcnt_reg[18]_0 ),
        .I4(stat[3]),
        .O(\stat[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8BFF8B0088008800)) 
    \stat[3]_i_3 
       (.I0(\stat[3]_i_4_n_0 ),
        .I1(bitr_tgl),
        .I2(bitr_late_reg_1),
        .I3(stat[0]),
        .I4(bitr_same__0),
        .I5(\stat[3]_i_6_n_0 ),
        .O(\stat[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \stat[3]_i_4 
       (.I0(stat[3]),
        .I1(bitr_late_reg_0),
        .I2(bitr_late_reg_1),
        .I3(\brcnt_reg[18] ),
        .I4(\brcnt_reg[18]_0 ),
        .I5(stat[1]),
        .O(\stat[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \stat[3]_i_5 
       (.I0(\brcnt_reg[18] ),
        .I1(\brcnt_reg[18]_0 ),
        .O(bitr_same__0));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[3]_i_6 
       (.I0(stat[3]),
        .I1(stat[1]),
        .O(\stat[3]_i_6_n_0 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(stat[0]),
        .R(SR));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(stat[1]),
        .R(SR));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[2]),
        .Q(stat[2]),
        .R(SR));
  MUXF7 \stat_reg[2]_i_1 
       (.I0(\stat[2]_i_2_n_0 ),
        .I1(\stat[2]_i_3_n_0 ),
        .O(stat_nx[2]),
        .S(stat[2]));
  FDRE \stat_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[3]),
        .Q(stat[3]),
        .R(SR));
  MUXF7 \stat_reg[3]_i_1 
       (.I0(\stat[3]_i_2_n_0 ),
        .I1(\stat[3]_i_3_n_0 ),
        .O(stat_nx[3]),
        .S(stat[2]));
  LUT5 #(
    .INIT(32'h40000000)) 
    \uartbres[15]_i_1 
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(bitr_late_reg_1),
        .I3(stat[2]),
        .I4(stat[3]),
        .O(\stat_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hBFAA)) 
    uctl_brdf_i_1
       (.I0(\stat_reg[1]_0 ),
        .I1(bdatw),
        .I2(p_6_in),
        .I3(uctl_brdf),
        .O(\bdatw[5] ));
  LUT1 #(
    .INIT(2'h1)) 
    urxf_write_i_1
       (.I0(rst_n),
        .O(SR));
endmodule

module uart_rx
   (urxf_write,
    urxf_dati,
    urx_rxd,
    SR,
    clk,
    urxf_full,
    urx_ovfl_carry__0_0,
    rst_n,
    Q,
    uart_rxd);
  output urxf_write;
  output [7:0]urxf_dati;
  output urx_rxd;
  input [0:0]SR;
  input clk;
  input urxf_full;
  input [15:0]urx_ovfl_carry__0_0;
  input rst_n;
  input [0:0]Q;
  input uart_rxd;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire bcnt0;
  wire \bcnt[0]_i_3__0_n_0 ;
  wire [15:0]bcnt_reg;
  wire \bcnt_reg[0]_i_2__0_n_0 ;
  wire \bcnt_reg[0]_i_2__0_n_1 ;
  wire \bcnt_reg[0]_i_2__0_n_2 ;
  wire \bcnt_reg[0]_i_2__0_n_3 ;
  wire \bcnt_reg[0]_i_2__0_n_4 ;
  wire \bcnt_reg[0]_i_2__0_n_5 ;
  wire \bcnt_reg[0]_i_2__0_n_6 ;
  wire \bcnt_reg[0]_i_2__0_n_7 ;
  wire \bcnt_reg[12]_i_1__0_n_1 ;
  wire \bcnt_reg[12]_i_1__0_n_2 ;
  wire \bcnt_reg[12]_i_1__0_n_3 ;
  wire \bcnt_reg[12]_i_1__0_n_4 ;
  wire \bcnt_reg[12]_i_1__0_n_5 ;
  wire \bcnt_reg[12]_i_1__0_n_6 ;
  wire \bcnt_reg[12]_i_1__0_n_7 ;
  wire \bcnt_reg[4]_i_1__0_n_0 ;
  wire \bcnt_reg[4]_i_1__0_n_1 ;
  wire \bcnt_reg[4]_i_1__0_n_2 ;
  wire \bcnt_reg[4]_i_1__0_n_3 ;
  wire \bcnt_reg[4]_i_1__0_n_4 ;
  wire \bcnt_reg[4]_i_1__0_n_5 ;
  wire \bcnt_reg[4]_i_1__0_n_6 ;
  wire \bcnt_reg[4]_i_1__0_n_7 ;
  wire \bcnt_reg[8]_i_1__0_n_0 ;
  wire \bcnt_reg[8]_i_1__0_n_1 ;
  wire \bcnt_reg[8]_i_1__0_n_2 ;
  wire \bcnt_reg[8]_i_1__0_n_3 ;
  wire \bcnt_reg[8]_i_1__0_n_4 ;
  wire \bcnt_reg[8]_i_1__0_n_5 ;
  wire \bcnt_reg[8]_i_1__0_n_6 ;
  wire \bcnt_reg[8]_i_1__0_n_7 ;
  wire clk;
  wire rst_n;
  wire rxctl_n_1;
  wire rxctl_n_10;
  wire rxctl_n_11;
  wire rxctl_n_12;
  wire rxctl_n_13;
  wire rxctl_n_14;
  wire rxctl_n_15;
  wire rxctl_n_16;
  wire rxctl_n_17;
  wire rxctl_n_18;
  wire rxctl_n_2;
  wire rxctl_n_20;
  wire rxctl_n_3;
  wire rxctl_n_4;
  wire rxctl_n_5;
  wire rxctl_n_6;
  wire rxctl_n_7;
  wire rxctl_n_8;
  wire rxctl_n_9;
  wire [3:0]sync_rxd;
  wire uart_rxd;
  wire urx_half;
  wire urx_half_carry__0_n_3;
  wire urx_half_carry_i_1_n_0;
  wire urx_half_carry_i_2_n_0;
  wire urx_half_carry_i_3_n_0;
  wire urx_half_carry_i_4_n_0;
  wire urx_half_carry_n_0;
  wire urx_half_carry_n_1;
  wire urx_half_carry_n_2;
  wire urx_half_carry_n_3;
  wire urx_ovfl;
  wire [15:0]urx_ovfl_carry__0_0;
  wire urx_ovfl_carry__0_n_1;
  wire urx_ovfl_carry__0_n_2;
  wire urx_ovfl_carry__0_n_3;
  wire urx_ovfl_carry_i_1_n_0;
  wire urx_ovfl_carry_i_2_n_0;
  wire urx_ovfl_carry_i_3_n_0;
  wire urx_ovfl_carry_i_4_n_0;
  wire urx_ovfl_carry_i_5_n_0;
  wire urx_ovfl_carry_i_6_n_0;
  wire urx_ovfl_carry_i_7_n_0;
  wire urx_ovfl_carry_i_8_n_0;
  wire urx_ovfl_carry_n_0;
  wire urx_ovfl_carry_n_1;
  wire urx_ovfl_carry_n_2;
  wire urx_ovfl_carry_n_3;
  wire urx_rxd;
  wire [7:0]urxf_dati;
  wire urxf_full;
  wire urxf_write;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \bcnt[0]_i_3__0 
       (.I0(bcnt_reg[0]),
        .O(\bcnt[0]_i_3__0_n_0 ));
  FDRE \bcnt_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[0]_i_2__0_n_7 ),
        .Q(bcnt_reg[0]),
        .R(bcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bcnt_reg[0]_i_2__0 
       (.CI(\<const0> ),
        .CO({\bcnt_reg[0]_i_2__0_n_0 ,\bcnt_reg[0]_i_2__0_n_1 ,\bcnt_reg[0]_i_2__0_n_2 ,\bcnt_reg[0]_i_2__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\bcnt_reg[0]_i_2__0_n_4 ,\bcnt_reg[0]_i_2__0_n_5 ,\bcnt_reg[0]_i_2__0_n_6 ,\bcnt_reg[0]_i_2__0_n_7 }),
        .S({bcnt_reg[3:1],\bcnt[0]_i_3__0_n_0 }));
  FDRE \bcnt_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[8]_i_1__0_n_5 ),
        .Q(bcnt_reg[10]),
        .R(bcnt0));
  FDRE \bcnt_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[8]_i_1__0_n_4 ),
        .Q(bcnt_reg[11]),
        .R(bcnt0));
  FDRE \bcnt_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[12]_i_1__0_n_7 ),
        .Q(bcnt_reg[12]),
        .R(bcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bcnt_reg[12]_i_1__0 
       (.CI(\bcnt_reg[8]_i_1__0_n_0 ),
        .CO({\bcnt_reg[12]_i_1__0_n_1 ,\bcnt_reg[12]_i_1__0_n_2 ,\bcnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bcnt_reg[12]_i_1__0_n_4 ,\bcnt_reg[12]_i_1__0_n_5 ,\bcnt_reg[12]_i_1__0_n_6 ,\bcnt_reg[12]_i_1__0_n_7 }),
        .S(bcnt_reg[15:12]));
  FDRE \bcnt_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[12]_i_1__0_n_6 ),
        .Q(bcnt_reg[13]),
        .R(bcnt0));
  FDRE \bcnt_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[12]_i_1__0_n_5 ),
        .Q(bcnt_reg[14]),
        .R(bcnt0));
  FDRE \bcnt_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[12]_i_1__0_n_4 ),
        .Q(bcnt_reg[15]),
        .R(bcnt0));
  FDRE \bcnt_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[0]_i_2__0_n_6 ),
        .Q(bcnt_reg[1]),
        .R(bcnt0));
  FDRE \bcnt_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[0]_i_2__0_n_5 ),
        .Q(bcnt_reg[2]),
        .R(bcnt0));
  FDRE \bcnt_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[0]_i_2__0_n_4 ),
        .Q(bcnt_reg[3]),
        .R(bcnt0));
  FDRE \bcnt_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[4]_i_1__0_n_7 ),
        .Q(bcnt_reg[4]),
        .R(bcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bcnt_reg[4]_i_1__0 
       (.CI(\bcnt_reg[0]_i_2__0_n_0 ),
        .CO({\bcnt_reg[4]_i_1__0_n_0 ,\bcnt_reg[4]_i_1__0_n_1 ,\bcnt_reg[4]_i_1__0_n_2 ,\bcnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bcnt_reg[4]_i_1__0_n_4 ,\bcnt_reg[4]_i_1__0_n_5 ,\bcnt_reg[4]_i_1__0_n_6 ,\bcnt_reg[4]_i_1__0_n_7 }),
        .S(bcnt_reg[7:4]));
  FDRE \bcnt_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[4]_i_1__0_n_6 ),
        .Q(bcnt_reg[5]),
        .R(bcnt0));
  FDRE \bcnt_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[4]_i_1__0_n_5 ),
        .Q(bcnt_reg[6]),
        .R(bcnt0));
  FDRE \bcnt_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[4]_i_1__0_n_4 ),
        .Q(bcnt_reg[7]),
        .R(bcnt0));
  FDRE \bcnt_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[8]_i_1__0_n_7 ),
        .Q(bcnt_reg[8]),
        .R(bcnt0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bcnt_reg[8]_i_1__0 
       (.CI(\bcnt_reg[4]_i_1__0_n_0 ),
        .CO({\bcnt_reg[8]_i_1__0_n_0 ,\bcnt_reg[8]_i_1__0_n_1 ,\bcnt_reg[8]_i_1__0_n_2 ,\bcnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bcnt_reg[8]_i_1__0_n_4 ,\bcnt_reg[8]_i_1__0_n_5 ,\bcnt_reg[8]_i_1__0_n_6 ,\bcnt_reg[8]_i_1__0_n_7 }),
        .S(bcnt_reg[11:8]));
  FDRE \bcnt_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[8]_i_1__0_n_6 ),
        .Q(bcnt_reg[9]),
        .R(bcnt0));
  LUT3 #(
    .INIT(8'hE8)) 
    \bitr_sft[0]_i_1 
       (.I0(sync_rxd[1]),
        .I1(sync_rxd[3]),
        .I2(sync_rxd[2]),
        .O(urx_rxd));
  uart_rx_fsm rxctl
       (.CO(urx_ovfl),
        .D({rxctl_n_11,rxctl_n_12,rxctl_n_13,rxctl_n_14,rxctl_n_15,rxctl_n_16,rxctl_n_17,rxctl_n_18}),
        .DI({rxctl_n_5,rxctl_n_6,rxctl_n_7,rxctl_n_8}),
        .E(rxctl_n_20),
        .Q(sync_rxd[3:1]),
        .S({rxctl_n_1,rxctl_n_2,rxctl_n_3,rxctl_n_4}),
        .SR(SR),
        .bcnt0(bcnt0),
        .bcnt_reg(bcnt_reg[15:8]),
        .\bcnt_reg[15] ({rxctl_n_9,rxctl_n_10}),
        .clk(clk),
        .rst_n(rst_n),
        .urx_cnte_reg_0(urx_half),
        .urx_cnte_reg_1(Q),
        .urx_ovfl_carry__0(urx_ovfl_carry__0_0[15:8]),
        .urx_rxd(urx_rxd),
        .urxf_dati(urxf_dati),
        .urxf_full(urxf_full),
        .urxf_write(urxf_write));
  FDSE \sync_rxd_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(uart_rxd),
        .Q(sync_rxd[0]),
        .S(SR));
  FDSE \sync_rxd_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sync_rxd[0]),
        .Q(sync_rxd[1]),
        .S(SR));
  FDSE \sync_rxd_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sync_rxd[1]),
        .Q(sync_rxd[2]),
        .S(SR));
  FDSE \sync_rxd_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sync_rxd[2]),
        .Q(sync_rxd[3]),
        .S(SR));
  CARRY4 urx_half_carry
       (.CI(\<const0> ),
        .CO({urx_half_carry_n_0,urx_half_carry_n_1,urx_half_carry_n_2,urx_half_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({urx_half_carry_i_1_n_0,urx_half_carry_i_2_n_0,urx_half_carry_i_3_n_0,urx_half_carry_i_4_n_0}));
  CARRY4 urx_half_carry__0
       (.CI(urx_half_carry_n_0),
        .CO({urx_half,urx_half_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,rxctl_n_9,rxctl_n_10}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    urx_half_carry_i_1
       (.I0(bcnt_reg[9]),
        .I1(urx_ovfl_carry__0_0[10]),
        .I2(urx_ovfl_carry__0_0[12]),
        .I3(bcnt_reg[11]),
        .I4(urx_ovfl_carry__0_0[11]),
        .I5(bcnt_reg[10]),
        .O(urx_half_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    urx_half_carry_i_2
       (.I0(bcnt_reg[6]),
        .I1(urx_ovfl_carry__0_0[7]),
        .I2(urx_ovfl_carry__0_0[9]),
        .I3(bcnt_reg[8]),
        .I4(urx_ovfl_carry__0_0[8]),
        .I5(bcnt_reg[7]),
        .O(urx_half_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    urx_half_carry_i_3
       (.I0(bcnt_reg[3]),
        .I1(urx_ovfl_carry__0_0[4]),
        .I2(urx_ovfl_carry__0_0[6]),
        .I3(bcnt_reg[5]),
        .I4(urx_ovfl_carry__0_0[5]),
        .I5(bcnt_reg[4]),
        .O(urx_half_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    urx_half_carry_i_4
       (.I0(bcnt_reg[0]),
        .I1(urx_ovfl_carry__0_0[1]),
        .I2(urx_ovfl_carry__0_0[3]),
        .I3(bcnt_reg[2]),
        .I4(urx_ovfl_carry__0_0[2]),
        .I5(bcnt_reg[1]),
        .O(urx_half_carry_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 urx_ovfl_carry
       (.CI(\<const0> ),
        .CO({urx_ovfl_carry_n_0,urx_ovfl_carry_n_1,urx_ovfl_carry_n_2,urx_ovfl_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({urx_ovfl_carry_i_1_n_0,urx_ovfl_carry_i_2_n_0,urx_ovfl_carry_i_3_n_0,urx_ovfl_carry_i_4_n_0}),
        .S({urx_ovfl_carry_i_5_n_0,urx_ovfl_carry_i_6_n_0,urx_ovfl_carry_i_7_n_0,urx_ovfl_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 urx_ovfl_carry__0
       (.CI(urx_ovfl_carry_n_0),
        .CO({urx_ovfl,urx_ovfl_carry__0_n_1,urx_ovfl_carry__0_n_2,urx_ovfl_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({rxctl_n_5,rxctl_n_6,rxctl_n_7,rxctl_n_8}),
        .S({rxctl_n_1,rxctl_n_2,rxctl_n_3,rxctl_n_4}));
  LUT4 #(
    .INIT(16'h2F02)) 
    urx_ovfl_carry_i_1
       (.I0(bcnt_reg[6]),
        .I1(urx_ovfl_carry__0_0[6]),
        .I2(urx_ovfl_carry__0_0[7]),
        .I3(bcnt_reg[7]),
        .O(urx_ovfl_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    urx_ovfl_carry_i_2
       (.I0(bcnt_reg[4]),
        .I1(urx_ovfl_carry__0_0[4]),
        .I2(urx_ovfl_carry__0_0[5]),
        .I3(bcnt_reg[5]),
        .O(urx_ovfl_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    urx_ovfl_carry_i_3
       (.I0(bcnt_reg[2]),
        .I1(urx_ovfl_carry__0_0[2]),
        .I2(urx_ovfl_carry__0_0[3]),
        .I3(bcnt_reg[3]),
        .O(urx_ovfl_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    urx_ovfl_carry_i_4
       (.I0(bcnt_reg[0]),
        .I1(urx_ovfl_carry__0_0[0]),
        .I2(urx_ovfl_carry__0_0[1]),
        .I3(bcnt_reg[1]),
        .O(urx_ovfl_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    urx_ovfl_carry_i_5
       (.I0(bcnt_reg[6]),
        .I1(urx_ovfl_carry__0_0[6]),
        .I2(bcnt_reg[7]),
        .I3(urx_ovfl_carry__0_0[7]),
        .O(urx_ovfl_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    urx_ovfl_carry_i_6
       (.I0(bcnt_reg[4]),
        .I1(urx_ovfl_carry__0_0[4]),
        .I2(bcnt_reg[5]),
        .I3(urx_ovfl_carry__0_0[5]),
        .O(urx_ovfl_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    urx_ovfl_carry_i_7
       (.I0(bcnt_reg[2]),
        .I1(urx_ovfl_carry__0_0[2]),
        .I2(bcnt_reg[3]),
        .I3(urx_ovfl_carry__0_0[3]),
        .O(urx_ovfl_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    urx_ovfl_carry_i_8
       (.I0(bcnt_reg[0]),
        .I1(urx_ovfl_carry__0_0[0]),
        .I2(bcnt_reg[1]),
        .I3(urx_ovfl_carry__0_0[1]),
        .O(urx_ovfl_carry_i_8_n_0));
  FDRE \urxf_dati_reg[0] 
       (.C(clk),
        .CE(rxctl_n_20),
        .D(rxctl_n_18),
        .Q(urxf_dati[0]),
        .R(SR));
  FDRE \urxf_dati_reg[1] 
       (.C(clk),
        .CE(rxctl_n_20),
        .D(rxctl_n_17),
        .Q(urxf_dati[1]),
        .R(SR));
  FDRE \urxf_dati_reg[2] 
       (.C(clk),
        .CE(rxctl_n_20),
        .D(rxctl_n_16),
        .Q(urxf_dati[2]),
        .R(SR));
  FDRE \urxf_dati_reg[3] 
       (.C(clk),
        .CE(rxctl_n_20),
        .D(rxctl_n_15),
        .Q(urxf_dati[3]),
        .R(SR));
  FDRE \urxf_dati_reg[4] 
       (.C(clk),
        .CE(rxctl_n_20),
        .D(rxctl_n_14),
        .Q(urxf_dati[4]),
        .R(SR));
  FDRE \urxf_dati_reg[5] 
       (.C(clk),
        .CE(rxctl_n_20),
        .D(rxctl_n_13),
        .Q(urxf_dati[5]),
        .R(SR));
  FDRE \urxf_dati_reg[6] 
       (.C(clk),
        .CE(rxctl_n_20),
        .D(rxctl_n_12),
        .Q(urxf_dati[6]),
        .R(SR));
  FDRE \urxf_dati_reg[7] 
       (.C(clk),
        .CE(rxctl_n_20),
        .D(rxctl_n_11),
        .Q(urxf_dati[7]),
        .R(SR));
endmodule

module uart_rx_fsm
   (urxf_write,
    S,
    DI,
    \bcnt_reg[15] ,
    D,
    bcnt0,
    E,
    SR,
    clk,
    urxf_full,
    bcnt_reg,
    urx_ovfl_carry__0,
    CO,
    urx_cnte_reg_0,
    urxf_dati,
    Q,
    rst_n,
    urx_cnte_reg_1,
    urx_rxd);
  output urxf_write;
  output [3:0]S;
  output [3:0]DI;
  output [1:0]\bcnt_reg[15] ;
  output [7:0]D;
  output bcnt0;
  output [0:0]E;
  input [0:0]SR;
  input clk;
  input urxf_full;
  input [7:0]bcnt_reg;
  input [7:0]urx_ovfl_carry__0;
  input [0:0]CO;
  input [0:0]urx_cnte_reg_0;
  input [7:0]urxf_dati;
  input [2:0]Q;
  input rst_n;
  input [0:0]urx_cnte_reg_1;
  input urx_rxd;

  wire \<const1> ;
  wire [0:0]CO;
  wire [7:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire bcnt0;
  wire [7:0]bcnt_reg;
  wire [1:0]\bcnt_reg[15] ;
  wire clk;
  wire rst_n;
  wire urx_cnte;
  wire urx_cnte_i_2_n_0;
  wire [0:0]urx_cnte_reg_0;
  wire [0:0]urx_cnte_reg_1;
  wire urx_cnte_t;
  wire [3:0]urx_next;
  wire [7:0]urx_ovfl_carry__0;
  wire [7:0]urx_recv_0;
  wire [7:0]urx_recv_t;
  wire urx_rxd;
  wire [3:0]urx_stat;
  wire \urx_stat[0]_i_2_n_0 ;
  wire \urx_stat[0]_i_3_n_0 ;
  wire \urx_stat[1]_i_2_n_0 ;
  wire \urx_stat[1]_i_3_n_0 ;
  wire [7:0]urxf_dati;
  wire \urxf_dati[7]_i_3_n_0 ;
  wire urxf_full;
  wire urxf_write;
  wire urxf_write_i_2_n_0;
  wire urxf_write_i_3_n_0;

  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'hDF)) 
    \bcnt[0]_i_1 
       (.I0(urx_cnte),
        .I1(CO),
        .I2(rst_n),
        .O(bcnt0));
  LUT6 #(
    .INIT(64'h0000FFFF7F7FFF00)) 
    urx_cnte_i_1
       (.I0(urx_stat[0]),
        .I1(urx_cnte_reg_0),
        .I2(urx_stat[1]),
        .I3(urx_cnte_i_2_n_0),
        .I4(urx_stat[3]),
        .I5(urx_stat[2]),
        .O(urx_cnte_t));
  LUT6 #(
    .INIT(64'hAAAAAAEAAAEAEAEA)) 
    urx_cnte_i_2
       (.I0(urx_stat[1]),
        .I1(urx_cnte_reg_1),
        .I2(urx_stat[0]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(urx_cnte_i_2_n_0));
  FDRE urx_cnte_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(urx_cnte_t),
        .Q(urx_cnte),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    urx_half_carry__0_i_1
       (.I0(bcnt_reg[7]),
        .O(\bcnt_reg[15] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    urx_half_carry__0_i_2
       (.I0(bcnt_reg[4]),
        .I1(urx_ovfl_carry__0[5]),
        .I2(urx_ovfl_carry__0[7]),
        .I3(bcnt_reg[6]),
        .I4(urx_ovfl_carry__0[6]),
        .I5(bcnt_reg[5]),
        .O(\bcnt_reg[15] [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    urx_ovfl_carry__0_i_1
       (.I0(bcnt_reg[6]),
        .I1(urx_ovfl_carry__0[6]),
        .I2(urx_ovfl_carry__0[7]),
        .I3(bcnt_reg[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    urx_ovfl_carry__0_i_2
       (.I0(bcnt_reg[4]),
        .I1(urx_ovfl_carry__0[4]),
        .I2(urx_ovfl_carry__0[5]),
        .I3(bcnt_reg[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    urx_ovfl_carry__0_i_3
       (.I0(bcnt_reg[2]),
        .I1(urx_ovfl_carry__0[2]),
        .I2(urx_ovfl_carry__0[3]),
        .I3(bcnt_reg[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    urx_ovfl_carry__0_i_4
       (.I0(bcnt_reg[0]),
        .I1(urx_ovfl_carry__0[0]),
        .I2(urx_ovfl_carry__0[1]),
        .I3(bcnt_reg[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    urx_ovfl_carry__0_i_5
       (.I0(bcnt_reg[6]),
        .I1(urx_ovfl_carry__0[6]),
        .I2(bcnt_reg[7]),
        .I3(urx_ovfl_carry__0[7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    urx_ovfl_carry__0_i_6
       (.I0(bcnt_reg[4]),
        .I1(urx_ovfl_carry__0[4]),
        .I2(bcnt_reg[5]),
        .I3(urx_ovfl_carry__0[5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    urx_ovfl_carry__0_i_7
       (.I0(bcnt_reg[2]),
        .I1(urx_ovfl_carry__0[2]),
        .I2(bcnt_reg[3]),
        .I3(urx_ovfl_carry__0[3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    urx_ovfl_carry__0_i_8
       (.I0(bcnt_reg[0]),
        .I1(urx_ovfl_carry__0[0]),
        .I2(bcnt_reg[1]),
        .I3(urx_ovfl_carry__0[1]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \urx_recv[0]_i_1 
       (.I0(urx_stat[2]),
        .I1(urx_stat[0]),
        .I2(urx_cnte_reg_0),
        .I3(urx_stat[3]),
        .I4(urx_stat[1]),
        .O(urx_recv_t[0]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \urx_recv[1]_i_1 
       (.I0(urx_cnte_reg_0),
        .I1(urx_stat[1]),
        .I2(urx_stat[2]),
        .I3(urx_stat[0]),
        .I4(urx_stat[3]),
        .O(urx_recv_t[1]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \urx_recv[2]_i_1 
       (.I0(urx_stat[1]),
        .I1(urx_stat[0]),
        .I2(urx_cnte_reg_0),
        .I3(urx_stat[3]),
        .I4(urx_stat[2]),
        .O(urx_recv_t[2]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \urx_recv[3]_i_1 
       (.I0(urx_stat[0]),
        .I1(urx_stat[1]),
        .I2(urx_cnte_reg_0),
        .I3(urx_stat[3]),
        .I4(urx_stat[2]),
        .O(urx_recv_t[3]));
  LUT5 #(
    .INIT(32'h40000000)) 
    \urx_recv[4]_i_1 
       (.I0(urx_stat[3]),
        .I1(urx_stat[0]),
        .I2(urx_cnte_reg_0),
        .I3(urx_stat[2]),
        .I4(urx_stat[1]),
        .O(urx_recv_t[4]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \urx_recv[5]_i_1 
       (.I0(urx_cnte_reg_0),
        .I1(urx_stat[1]),
        .I2(urx_stat[3]),
        .I3(urx_stat[2]),
        .I4(urx_stat[0]),
        .O(urx_recv_t[5]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \urx_recv[6]_i_1 
       (.I0(urx_stat[2]),
        .I1(urx_stat[0]),
        .I2(urx_cnte_reg_0),
        .I3(urx_stat[1]),
        .I4(urx_stat[3]),
        .O(urx_recv_t[6]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \urx_recv[7]_i_1 
       (.I0(urx_stat[2]),
        .I1(urx_stat[1]),
        .I2(urx_cnte_reg_0),
        .I3(urx_stat[0]),
        .I4(urx_stat[3]),
        .O(urx_recv_t[7]));
  FDRE \urx_recv_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(urx_recv_t[0]),
        .Q(urx_recv_0[0]),
        .R(SR));
  FDRE \urx_recv_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(urx_recv_t[1]),
        .Q(urx_recv_0[1]),
        .R(SR));
  FDRE \urx_recv_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(urx_recv_t[2]),
        .Q(urx_recv_0[2]),
        .R(SR));
  FDRE \urx_recv_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(urx_recv_t[3]),
        .Q(urx_recv_0[3]),
        .R(SR));
  FDRE \urx_recv_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(urx_recv_t[4]),
        .Q(urx_recv_0[4]),
        .R(SR));
  FDRE \urx_recv_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(urx_recv_t[5]),
        .Q(urx_recv_0[5]),
        .R(SR));
  FDRE \urx_recv_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(urx_recv_t[6]),
        .Q(urx_recv_0[6]),
        .R(SR));
  FDRE \urx_recv_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(urx_recv_t[7]),
        .Q(urx_recv_0[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00A6FFFF00A60000)) 
    \urx_stat[0]_i_1 
       (.I0(urx_stat[0]),
        .I1(CO),
        .I2(urx_cnte_reg_0),
        .I3(urx_stat[3]),
        .I4(urx_stat[2]),
        .I5(\urx_stat[0]_i_2_n_0 ),
        .O(urx_next[0]));
  LUT6 #(
    .INIT(64'h6730DFF567308AA0)) 
    \urx_stat[0]_i_2 
       (.I0(urx_stat[1]),
        .I1(urx_cnte_reg_0),
        .I2(CO),
        .I3(urx_stat[0]),
        .I4(urx_stat[3]),
        .I5(\urx_stat[0]_i_3_n_0 ),
        .O(\urx_stat[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE800)) 
    \urx_stat[0]_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(urx_cnte_reg_1),
        .O(\urx_stat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBAFFBAABAAAFAA)) 
    \urx_stat[1]_i_1 
       (.I0(\urx_stat[1]_i_2_n_0 ),
        .I1(urx_stat[2]),
        .I2(urx_stat[0]),
        .I3(urx_stat[1]),
        .I4(urx_stat[3]),
        .I5(\urx_stat[1]_i_3_n_0 ),
        .O(urx_next[1]));
  LUT6 #(
    .INIT(64'h0D020D003D003D00)) 
    \urx_stat[1]_i_2 
       (.I0(CO),
        .I1(urx_cnte_reg_0),
        .I2(urx_stat[3]),
        .I3(urx_stat[1]),
        .I4(urx_stat[0]),
        .I5(urx_stat[2]),
        .O(\urx_stat[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000455040004)) 
    \urx_stat[1]_i_3 
       (.I0(urx_stat[1]),
        .I1(urx_cnte_reg_1),
        .I2(urx_rxd),
        .I3(urx_stat[3]),
        .I4(CO),
        .I5(urx_cnte_reg_0),
        .O(\urx_stat[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5500550015405500)) 
    \urx_stat[2]_i_1 
       (.I0(urx_stat[3]),
        .I1(urx_stat[1]),
        .I2(urx_stat[0]),
        .I3(urx_stat[2]),
        .I4(CO),
        .I5(urx_cnte_reg_0),
        .O(urx_next[2]));
  LUT6 #(
    .INIT(64'h0030383030303030)) 
    \urx_stat[3]_i_1 
       (.I0(CO),
        .I1(urx_stat[2]),
        .I2(urx_stat[3]),
        .I3(urx_stat[1]),
        .I4(urx_cnte_reg_0),
        .I5(urx_stat[0]),
        .O(urx_next[3]));
  FDRE \urx_stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(urx_next[0]),
        .Q(urx_stat[0]),
        .R(SR));
  FDRE \urx_stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(urx_next[1]),
        .Q(urx_stat[1]),
        .R(SR));
  FDRE \urx_stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(urx_next[2]),
        .Q(urx_stat[2]),
        .R(SR));
  FDRE \urx_stat_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(urx_next[3]),
        .Q(urx_stat[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'hEEE2E222)) 
    \urxf_dati[0]_i_1 
       (.I0(urxf_dati[0]),
        .I1(urx_recv_0[0]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hEEE2E222)) 
    \urxf_dati[1]_i_1 
       (.I0(urxf_dati[1]),
        .I1(urx_recv_0[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hEEE2E222)) 
    \urxf_dati[2]_i_1 
       (.I0(urxf_dati[2]),
        .I1(urx_recv_0[2]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hEEE2E222)) 
    \urxf_dati[3]_i_1 
       (.I0(urxf_dati[3]),
        .I1(urx_recv_0[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hEEE2E222)) 
    \urxf_dati[4]_i_1 
       (.I0(urxf_dati[4]),
        .I1(urx_recv_0[4]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hEEE2E222)) 
    \urxf_dati[5]_i_1 
       (.I0(urxf_dati[5]),
        .I1(urx_recv_0[5]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hEEE2E222)) 
    \urxf_dati[6]_i_1 
       (.I0(urxf_dati[6]),
        .I1(urx_recv_0[6]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \urxf_dati[7]_i_1 
       (.I0(urx_recv_0[2]),
        .I1(urx_recv_0[3]),
        .I2(urx_recv_0[0]),
        .I3(urx_recv_0[1]),
        .I4(\urxf_dati[7]_i_3_n_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'hEEE2E222)) 
    \urxf_dati[7]_i_2 
       (.I0(urxf_dati[7]),
        .I1(urx_recv_0[7]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \urxf_dati[7]_i_3 
       (.I0(urx_recv_0[5]),
        .I1(urx_recv_0[4]),
        .I2(urx_recv_0[7]),
        .I3(urx_recv_0[6]),
        .O(\urxf_dati[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    urxf_write_i_2
       (.I0(urxf_write_i_3_n_0),
        .I1(urx_stat[2]),
        .I2(urx_stat[3]),
        .I3(urxf_full),
        .O(urxf_write_i_2_n_0));
  LUT6 #(
    .INIT(64'h7F7F7FFF7FFFFFFF)) 
    urxf_write_i_3
       (.I0(urx_stat[0]),
        .I1(urx_stat[1]),
        .I2(urx_cnte_reg_0),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(urxf_write_i_3_n_0));
  FDRE urxf_write_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(urxf_write_i_2_n_0),
        .Q(urxf_write),
        .R(SR));
endmodule

module uart_tx
   (utx_full,
    uart_txd,
    clk,
    Q,
    rst_n,
    badr,
    p_12_in,
    \utx_tran_reg[9] ,
    utx_ovfl_carry__0_0,
    SR,
    bdatw);
  output utx_full;
  output uart_txd;
  input clk;
  input [0:0]Q;
  input rst_n;
  input [3:0]badr;
  input p_12_in;
  input \utx_tran_reg[9] ;
  input [15:0]utx_ovfl_carry__0_0;
  input [0:0]SR;
  input [7:0]bdatw;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire \bcnt[0]_i_3_n_0 ;
  wire [15:0]bcnt_reg;
  wire \bcnt_reg[0]_i_2_n_0 ;
  wire \bcnt_reg[0]_i_2_n_1 ;
  wire \bcnt_reg[0]_i_2_n_2 ;
  wire \bcnt_reg[0]_i_2_n_3 ;
  wire \bcnt_reg[0]_i_2_n_4 ;
  wire \bcnt_reg[0]_i_2_n_5 ;
  wire \bcnt_reg[0]_i_2_n_6 ;
  wire \bcnt_reg[0]_i_2_n_7 ;
  wire \bcnt_reg[12]_i_1_n_1 ;
  wire \bcnt_reg[12]_i_1_n_2 ;
  wire \bcnt_reg[12]_i_1_n_3 ;
  wire \bcnt_reg[12]_i_1_n_4 ;
  wire \bcnt_reg[12]_i_1_n_5 ;
  wire \bcnt_reg[12]_i_1_n_6 ;
  wire \bcnt_reg[12]_i_1_n_7 ;
  wire \bcnt_reg[4]_i_1_n_0 ;
  wire \bcnt_reg[4]_i_1_n_1 ;
  wire \bcnt_reg[4]_i_1_n_2 ;
  wire \bcnt_reg[4]_i_1_n_3 ;
  wire \bcnt_reg[4]_i_1_n_4 ;
  wire \bcnt_reg[4]_i_1_n_5 ;
  wire \bcnt_reg[4]_i_1_n_6 ;
  wire \bcnt_reg[4]_i_1_n_7 ;
  wire \bcnt_reg[8]_i_1_n_0 ;
  wire \bcnt_reg[8]_i_1_n_1 ;
  wire \bcnt_reg[8]_i_1_n_2 ;
  wire \bcnt_reg[8]_i_1_n_3 ;
  wire \bcnt_reg[8]_i_1_n_4 ;
  wire \bcnt_reg[8]_i_1_n_5 ;
  wire \bcnt_reg[8]_i_1_n_6 ;
  wire \bcnt_reg[8]_i_1_n_7 ;
  wire [7:0]bdatw;
  wire clk;
  wire p_10_in;
  wire p_12_in;
  wire p_12_in_0;
  wire p_2_in;
  wire p_4_in;
  wire p_6_in;
  wire p_8_in;
  wire rst_n;
  wire txctl_n_0;
  wire txctl_n_1;
  wire txctl_n_2;
  wire txctl_n_3;
  wire txctl_n_4;
  wire txctl_n_5;
  wire txctl_n_6;
  wire txctl_n_7;
  wire txctl_n_8;
  wire txctl_n_9;
  wire uart_txd;
  wire uart_txd_INST_0_i_1_n_0;
  wire uart_txd_INST_0_i_2_n_0;
  wire uart_txd_INST_0_i_3_n_0;
  wire uarttdat0;
  wire \uarttdat_reg_n_0_[0] ;
  wire \uarttdat_reg_n_0_[7] ;
  wire utx_avail0;
  wire utx_full;
  wire utx_ovfl;
  wire [15:0]utx_ovfl_carry__0_0;
  wire utx_ovfl_carry__0_n_1;
  wire utx_ovfl_carry__0_n_2;
  wire utx_ovfl_carry__0_n_3;
  wire utx_ovfl_carry_i_1_n_0;
  wire utx_ovfl_carry_i_2_n_0;
  wire utx_ovfl_carry_i_3_n_0;
  wire utx_ovfl_carry_i_4_n_0;
  wire utx_ovfl_carry_i_5_n_0;
  wire utx_ovfl_carry_i_6_n_0;
  wire utx_ovfl_carry_i_7_n_0;
  wire utx_ovfl_carry_i_8_n_0;
  wire utx_ovfl_carry_n_0;
  wire utx_ovfl_carry_n_1;
  wire utx_ovfl_carry_n_2;
  wire utx_ovfl_carry_n_3;
  wire [9:1]utx_tran;
  wire \utx_tran_reg[9] ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \bcnt[0]_i_3 
       (.I0(bcnt_reg[0]),
        .O(\bcnt[0]_i_3_n_0 ));
  FDRE \bcnt_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[0]_i_2_n_7 ),
        .Q(bcnt_reg[0]),
        .R(txctl_n_9));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bcnt_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\bcnt_reg[0]_i_2_n_0 ,\bcnt_reg[0]_i_2_n_1 ,\bcnt_reg[0]_i_2_n_2 ,\bcnt_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\bcnt_reg[0]_i_2_n_4 ,\bcnt_reg[0]_i_2_n_5 ,\bcnt_reg[0]_i_2_n_6 ,\bcnt_reg[0]_i_2_n_7 }),
        .S({bcnt_reg[3:1],\bcnt[0]_i_3_n_0 }));
  FDRE \bcnt_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[8]_i_1_n_5 ),
        .Q(bcnt_reg[10]),
        .R(txctl_n_9));
  FDRE \bcnt_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[8]_i_1_n_4 ),
        .Q(bcnt_reg[11]),
        .R(txctl_n_9));
  FDRE \bcnt_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[12]_i_1_n_7 ),
        .Q(bcnt_reg[12]),
        .R(txctl_n_9));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bcnt_reg[12]_i_1 
       (.CI(\bcnt_reg[8]_i_1_n_0 ),
        .CO({\bcnt_reg[12]_i_1_n_1 ,\bcnt_reg[12]_i_1_n_2 ,\bcnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bcnt_reg[12]_i_1_n_4 ,\bcnt_reg[12]_i_1_n_5 ,\bcnt_reg[12]_i_1_n_6 ,\bcnt_reg[12]_i_1_n_7 }),
        .S(bcnt_reg[15:12]));
  FDRE \bcnt_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[12]_i_1_n_6 ),
        .Q(bcnt_reg[13]),
        .R(txctl_n_9));
  FDRE \bcnt_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[12]_i_1_n_5 ),
        .Q(bcnt_reg[14]),
        .R(txctl_n_9));
  FDRE \bcnt_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[12]_i_1_n_4 ),
        .Q(bcnt_reg[15]),
        .R(txctl_n_9));
  FDRE \bcnt_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[0]_i_2_n_6 ),
        .Q(bcnt_reg[1]),
        .R(txctl_n_9));
  FDRE \bcnt_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[0]_i_2_n_5 ),
        .Q(bcnt_reg[2]),
        .R(txctl_n_9));
  FDRE \bcnt_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[0]_i_2_n_4 ),
        .Q(bcnt_reg[3]),
        .R(txctl_n_9));
  FDRE \bcnt_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[4]_i_1_n_7 ),
        .Q(bcnt_reg[4]),
        .R(txctl_n_9));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bcnt_reg[4]_i_1 
       (.CI(\bcnt_reg[0]_i_2_n_0 ),
        .CO({\bcnt_reg[4]_i_1_n_0 ,\bcnt_reg[4]_i_1_n_1 ,\bcnt_reg[4]_i_1_n_2 ,\bcnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bcnt_reg[4]_i_1_n_4 ,\bcnt_reg[4]_i_1_n_5 ,\bcnt_reg[4]_i_1_n_6 ,\bcnt_reg[4]_i_1_n_7 }),
        .S(bcnt_reg[7:4]));
  FDRE \bcnt_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[4]_i_1_n_6 ),
        .Q(bcnt_reg[5]),
        .R(txctl_n_9));
  FDRE \bcnt_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[4]_i_1_n_5 ),
        .Q(bcnt_reg[6]),
        .R(txctl_n_9));
  FDRE \bcnt_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[4]_i_1_n_4 ),
        .Q(bcnt_reg[7]),
        .R(txctl_n_9));
  FDRE \bcnt_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[8]_i_1_n_7 ),
        .Q(bcnt_reg[8]),
        .R(txctl_n_9));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bcnt_reg[8]_i_1 
       (.CI(\bcnt_reg[4]_i_1_n_0 ),
        .CO({\bcnt_reg[8]_i_1_n_0 ,\bcnt_reg[8]_i_1_n_1 ,\bcnt_reg[8]_i_1_n_2 ,\bcnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bcnt_reg[8]_i_1_n_4 ,\bcnt_reg[8]_i_1_n_5 ,\bcnt_reg[8]_i_1_n_6 ,\bcnt_reg[8]_i_1_n_7 }),
        .S(bcnt_reg[11:8]));
  FDRE \bcnt_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bcnt_reg[8]_i_1_n_6 ),
        .Q(bcnt_reg[9]),
        .R(txctl_n_9));
  uart_tx_fsm txctl
       (.CO(utx_ovfl),
        .DI({txctl_n_5,txctl_n_6,txctl_n_7,txctl_n_8}),
        .Q(Q),
        .S({txctl_n_1,txctl_n_2,txctl_n_3,txctl_n_4}),
        .SR(SR),
        .bcnt_reg(bcnt_reg[15:8]),
        .clk(clk),
        .rst_n(rst_n),
        .utx_avail0(utx_avail0),
        .utx_avail_reg(txctl_n_0),
        .utx_full(utx_full),
        .utx_ovfl_carry__0(utx_ovfl_carry__0_0[15:8]),
        .\utx_stat_reg[2]_0 (txctl_n_9),
        .\utx_tran_reg[9]_0 (utx_tran),
        .\utx_tran_reg[9]_1 (\utx_tran_reg[9] ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    uart_txd_INST_0
       (.I0(uart_txd_INST_0_i_1_n_0),
        .I1(\uarttdat_reg_n_0_[0] ),
        .I2(utx_tran[1]),
        .I3(uart_txd_INST_0_i_2_n_0),
        .I4(uart_txd_INST_0_i_3_n_0),
        .O(uart_txd));
  LUT3 #(
    .INIT(8'hF8)) 
    uart_txd_INST_0_i_1
       (.I0(utx_tran[8]),
        .I1(\uarttdat_reg_n_0_[7] ),
        .I2(utx_tran[9]),
        .O(uart_txd_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    uart_txd_INST_0_i_2
       (.I0(p_12_in_0),
        .I1(utx_tran[2]),
        .I2(p_10_in),
        .I3(utx_tran[3]),
        .I4(utx_tran[4]),
        .I5(p_8_in),
        .O(uart_txd_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    uart_txd_INST_0_i_3
       (.I0(p_6_in),
        .I1(utx_tran[5]),
        .I2(p_4_in),
        .I3(utx_tran[6]),
        .I4(utx_tran[7]),
        .I5(p_2_in),
        .O(uart_txd_INST_0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \uarttdat[7]_i_1 
       (.I0(utx_avail0),
        .I1(Q),
        .O(uarttdat0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \uarttdat[7]_i_2 
       (.I0(badr[3]),
        .I1(badr[0]),
        .I2(badr[2]),
        .I3(badr[1]),
        .I4(p_12_in),
        .I5(utx_full),
        .O(utx_avail0));
  FDRE \uarttdat_reg[0] 
       (.C(clk),
        .CE(uarttdat0),
        .D(bdatw[0]),
        .Q(\uarttdat_reg_n_0_[0] ),
        .R(SR));
  FDRE \uarttdat_reg[1] 
       (.C(clk),
        .CE(uarttdat0),
        .D(bdatw[1]),
        .Q(p_12_in_0),
        .R(SR));
  FDRE \uarttdat_reg[2] 
       (.C(clk),
        .CE(uarttdat0),
        .D(bdatw[2]),
        .Q(p_10_in),
        .R(SR));
  FDRE \uarttdat_reg[3] 
       (.C(clk),
        .CE(uarttdat0),
        .D(bdatw[3]),
        .Q(p_8_in),
        .R(SR));
  FDRE \uarttdat_reg[4] 
       (.C(clk),
        .CE(uarttdat0),
        .D(bdatw[4]),
        .Q(p_6_in),
        .R(SR));
  FDRE \uarttdat_reg[5] 
       (.C(clk),
        .CE(uarttdat0),
        .D(bdatw[5]),
        .Q(p_4_in),
        .R(SR));
  FDRE \uarttdat_reg[6] 
       (.C(clk),
        .CE(uarttdat0),
        .D(bdatw[6]),
        .Q(p_2_in),
        .R(SR));
  FDRE \uarttdat_reg[7] 
       (.C(clk),
        .CE(uarttdat0),
        .D(bdatw[7]),
        .Q(\uarttdat_reg_n_0_[7] ),
        .R(SR));
  FDRE utx_avail_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(txctl_n_0),
        .Q(utx_full),
        .R(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 utx_ovfl_carry
       (.CI(\<const0> ),
        .CO({utx_ovfl_carry_n_0,utx_ovfl_carry_n_1,utx_ovfl_carry_n_2,utx_ovfl_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({utx_ovfl_carry_i_1_n_0,utx_ovfl_carry_i_2_n_0,utx_ovfl_carry_i_3_n_0,utx_ovfl_carry_i_4_n_0}),
        .S({utx_ovfl_carry_i_5_n_0,utx_ovfl_carry_i_6_n_0,utx_ovfl_carry_i_7_n_0,utx_ovfl_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 utx_ovfl_carry__0
       (.CI(utx_ovfl_carry_n_0),
        .CO({utx_ovfl,utx_ovfl_carry__0_n_1,utx_ovfl_carry__0_n_2,utx_ovfl_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({txctl_n_5,txctl_n_6,txctl_n_7,txctl_n_8}),
        .S({txctl_n_1,txctl_n_2,txctl_n_3,txctl_n_4}));
  LUT4 #(
    .INIT(16'h2F02)) 
    utx_ovfl_carry_i_1
       (.I0(bcnt_reg[6]),
        .I1(utx_ovfl_carry__0_0[6]),
        .I2(utx_ovfl_carry__0_0[7]),
        .I3(bcnt_reg[7]),
        .O(utx_ovfl_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    utx_ovfl_carry_i_2
       (.I0(bcnt_reg[4]),
        .I1(utx_ovfl_carry__0_0[4]),
        .I2(utx_ovfl_carry__0_0[5]),
        .I3(bcnt_reg[5]),
        .O(utx_ovfl_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    utx_ovfl_carry_i_3
       (.I0(bcnt_reg[2]),
        .I1(utx_ovfl_carry__0_0[2]),
        .I2(utx_ovfl_carry__0_0[3]),
        .I3(bcnt_reg[3]),
        .O(utx_ovfl_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    utx_ovfl_carry_i_4
       (.I0(bcnt_reg[0]),
        .I1(utx_ovfl_carry__0_0[0]),
        .I2(utx_ovfl_carry__0_0[1]),
        .I3(bcnt_reg[1]),
        .O(utx_ovfl_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    utx_ovfl_carry_i_5
       (.I0(bcnt_reg[6]),
        .I1(utx_ovfl_carry__0_0[6]),
        .I2(bcnt_reg[7]),
        .I3(utx_ovfl_carry__0_0[7]),
        .O(utx_ovfl_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    utx_ovfl_carry_i_6
       (.I0(bcnt_reg[4]),
        .I1(utx_ovfl_carry__0_0[4]),
        .I2(bcnt_reg[5]),
        .I3(utx_ovfl_carry__0_0[5]),
        .O(utx_ovfl_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    utx_ovfl_carry_i_7
       (.I0(bcnt_reg[2]),
        .I1(utx_ovfl_carry__0_0[2]),
        .I2(bcnt_reg[3]),
        .I3(utx_ovfl_carry__0_0[3]),
        .O(utx_ovfl_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    utx_ovfl_carry_i_8
       (.I0(bcnt_reg[0]),
        .I1(utx_ovfl_carry__0_0[0]),
        .I2(bcnt_reg[1]),
        .I3(utx_ovfl_carry__0_0[1]),
        .O(utx_ovfl_carry_i_8_n_0));
endmodule

module uart_tx_fsm
   (utx_avail_reg,
    S,
    DI,
    \utx_stat_reg[2]_0 ,
    \utx_tran_reg[9]_0 ,
    utx_full,
    utx_avail0,
    rst_n,
    CO,
    \utx_tran_reg[9]_1 ,
    bcnt_reg,
    utx_ovfl_carry__0,
    Q,
    SR,
    clk);
  output utx_avail_reg;
  output [3:0]S;
  output [3:0]DI;
  output \utx_stat_reg[2]_0 ;
  output [8:0]\utx_tran_reg[9]_0 ;
  input utx_full;
  input utx_avail0;
  input rst_n;
  input [0:0]CO;
  input \utx_tran_reg[9]_1 ;
  input [7:0]bcnt_reg;
  input [7:0]utx_ovfl_carry__0;
  input [0:0]Q;
  input [0:0]SR;
  input clk;

  wire \<const1> ;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [0:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [7:0]bcnt_reg;
  wire clk;
  wire rst_n;
  wire utx_avail0;
  wire utx_avail_i_2_n_0;
  wire utx_avail_reg;
  wire utx_full;
  wire [3:0]utx_next;
  wire [7:0]utx_ovfl_carry__0;
  wire [3:0]utx_stat;
  wire \utx_stat[2]_i_1_n_0 ;
  wire \utx_stat_reg[2]_0 ;
  wire \utx_tran[6]_i_1_n_0 ;
  wire [8:0]\utx_tran_reg[9]_0 ;
  wire \utx_tran_reg[9]_1 ;
  wire [9:1]utx_tran_t;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFFFFE0A1FFFFFFFF)) 
    \bcnt[0]_i_1__0 
       (.I0(utx_stat[2]),
        .I1(utx_stat[0]),
        .I2(utx_stat[3]),
        .I3(utx_stat[1]),
        .I4(CO),
        .I5(rst_n),
        .O(\utx_stat_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h00E0)) 
    utx_avail_i_1
       (.I0(utx_full),
        .I1(utx_avail0),
        .I2(rst_n),
        .I3(utx_avail_i_2_n_0),
        .O(utx_avail_reg));
  LUT6 #(
    .INIT(64'h00002000FFFFFFFF)) 
    utx_avail_i_2
       (.I0(utx_stat[3]),
        .I1(utx_stat[1]),
        .I2(utx_stat[0]),
        .I3(CO),
        .I4(utx_stat[2]),
        .I5(Q),
        .O(utx_avail_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    utx_ovfl_carry__0_i_1
       (.I0(bcnt_reg[6]),
        .I1(utx_ovfl_carry__0[6]),
        .I2(utx_ovfl_carry__0[7]),
        .I3(bcnt_reg[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    utx_ovfl_carry__0_i_2
       (.I0(bcnt_reg[4]),
        .I1(utx_ovfl_carry__0[4]),
        .I2(utx_ovfl_carry__0[5]),
        .I3(bcnt_reg[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    utx_ovfl_carry__0_i_3
       (.I0(bcnt_reg[2]),
        .I1(utx_ovfl_carry__0[2]),
        .I2(utx_ovfl_carry__0[3]),
        .I3(bcnt_reg[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    utx_ovfl_carry__0_i_4
       (.I0(bcnt_reg[0]),
        .I1(utx_ovfl_carry__0[0]),
        .I2(utx_ovfl_carry__0[1]),
        .I3(bcnt_reg[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    utx_ovfl_carry__0_i_5
       (.I0(bcnt_reg[6]),
        .I1(utx_ovfl_carry__0[6]),
        .I2(bcnt_reg[7]),
        .I3(utx_ovfl_carry__0[7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    utx_ovfl_carry__0_i_6
       (.I0(bcnt_reg[4]),
        .I1(utx_ovfl_carry__0[4]),
        .I2(bcnt_reg[5]),
        .I3(utx_ovfl_carry__0[5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    utx_ovfl_carry__0_i_7
       (.I0(bcnt_reg[2]),
        .I1(utx_ovfl_carry__0[2]),
        .I2(bcnt_reg[3]),
        .I3(utx_ovfl_carry__0[3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    utx_ovfl_carry__0_i_8
       (.I0(bcnt_reg[0]),
        .I1(utx_ovfl_carry__0[0]),
        .I2(bcnt_reg[1]),
        .I3(utx_ovfl_carry__0[1]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h1212121212124A5B)) 
    \utx_stat[0]_i_1 
       (.I0(utx_stat[0]),
        .I1(utx_stat[3]),
        .I2(CO),
        .I3(\utx_tran_reg[9]_1 ),
        .I4(utx_stat[2]),
        .I5(utx_stat[1]),
        .O(utx_next[0]));
  LUT5 #(
    .INIT(32'h132017A0)) 
    \utx_stat[1]_i_1 
       (.I0(CO),
        .I1(utx_stat[3]),
        .I2(utx_stat[0]),
        .I3(utx_stat[1]),
        .I4(utx_stat[2]),
        .O(utx_next[1]));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \utx_stat[2]_i_1 
       (.I0(utx_stat[2]),
        .I1(CO),
        .I2(utx_stat[0]),
        .I3(utx_stat[1]),
        .I4(utx_stat[3]),
        .O(\utx_stat[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h400002AA)) 
    \utx_stat[3]_i_1 
       (.I0(utx_stat[3]),
        .I1(CO),
        .I2(utx_stat[0]),
        .I3(utx_stat[1]),
        .I4(utx_stat[2]),
        .O(utx_next[3]));
  FDRE \utx_stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(utx_next[0]),
        .Q(utx_stat[0]),
        .R(SR));
  FDRE \utx_stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(utx_next[1]),
        .Q(utx_stat[1]),
        .R(SR));
  FDRE \utx_stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\utx_stat[2]_i_1_n_0 ),
        .Q(utx_stat[2]),
        .R(SR));
  FDRE \utx_stat_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(utx_next[3]),
        .Q(utx_stat[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00100100)) 
    \utx_tran[1]_i_1 
       (.I0(utx_stat[2]),
        .I1(utx_stat[3]),
        .I2(utx_stat[0]),
        .I3(utx_stat[1]),
        .I4(CO),
        .O(utx_tran_t[1]));
  LUT5 #(
    .INIT(32'h01100000)) 
    \utx_tran[2]_i_1 
       (.I0(utx_stat[3]),
        .I1(utx_stat[2]),
        .I2(CO),
        .I3(utx_stat[0]),
        .I4(utx_stat[1]),
        .O(utx_tran_t[2]));
  LUT5 #(
    .INIT(32'h10000004)) 
    \utx_tran[3]_i_1 
       (.I0(utx_stat[3]),
        .I1(utx_stat[2]),
        .I2(utx_stat[1]),
        .I3(utx_stat[0]),
        .I4(CO),
        .O(utx_tran_t[3]));
  LUT5 #(
    .INIT(32'h01100000)) 
    \utx_tran[4]_i_1 
       (.I0(utx_stat[3]),
        .I1(utx_stat[1]),
        .I2(CO),
        .I3(utx_stat[0]),
        .I4(utx_stat[2]),
        .O(utx_tran_t[4]));
  LUT5 #(
    .INIT(32'h00400400)) 
    \utx_tran[5]_i_1 
       (.I0(utx_stat[3]),
        .I1(utx_stat[2]),
        .I2(utx_stat[0]),
        .I3(utx_stat[1]),
        .I4(CO),
        .O(utx_tran_t[5]));
  LUT5 #(
    .INIT(32'h04400000)) 
    \utx_tran[6]_i_1 
       (.I0(utx_stat[3]),
        .I1(utx_stat[2]),
        .I2(CO),
        .I3(utx_stat[0]),
        .I4(utx_stat[1]),
        .O(\utx_tran[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800100)) 
    \utx_tran[7]_i_1 
       (.I0(utx_stat[0]),
        .I1(CO),
        .I2(utx_stat[2]),
        .I3(utx_stat[3]),
        .I4(utx_stat[1]),
        .O(utx_tran_t[7]));
  LUT5 #(
    .INIT(32'h01100000)) 
    \utx_tran[8]_i_1 
       (.I0(utx_stat[1]),
        .I1(utx_stat[2]),
        .I2(CO),
        .I3(utx_stat[0]),
        .I4(utx_stat[3]),
        .O(utx_tran_t[8]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCC8380)) 
    \utx_tran[9]_i_1 
       (.I0(CO),
        .I1(utx_stat[3]),
        .I2(utx_stat[0]),
        .I3(\utx_tran_reg[9]_1 ),
        .I4(utx_stat[1]),
        .I5(utx_stat[2]),
        .O(utx_tran_t[9]));
  FDRE \utx_tran_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(utx_tran_t[1]),
        .Q(\utx_tran_reg[9]_0 [0]),
        .R(SR));
  FDRE \utx_tran_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(utx_tran_t[2]),
        .Q(\utx_tran_reg[9]_0 [1]),
        .R(SR));
  FDRE \utx_tran_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(utx_tran_t[3]),
        .Q(\utx_tran_reg[9]_0 [2]),
        .R(SR));
  FDRE \utx_tran_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(utx_tran_t[4]),
        .Q(\utx_tran_reg[9]_0 [3]),
        .R(SR));
  FDRE \utx_tran_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(utx_tran_t[5]),
        .Q(\utx_tran_reg[9]_0 [4]),
        .R(SR));
  FDRE \utx_tran_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\utx_tran[6]_i_1_n_0 ),
        .Q(\utx_tran_reg[9]_0 [5]),
        .R(SR));
  FDRE \utx_tran_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(utx_tran_t[7]),
        .Q(\utx_tran_reg[9]_0 [6]),
        .R(SR));
  FDRE \utx_tran_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(utx_tran_t[8]),
        .Q(\utx_tran_reg[9]_0 [7]),
        .R(SR));
  FDSE \utx_tran_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(utx_tran_t[9]),
        .Q(\utx_tran_reg[9]_0 [8]),
        .S(SR));
endmodule

module uart_uctl
   (urxf_read,
    uart_rts,
    uctl_brdf,
    p_6_in,
    Q,
    p_12_in,
    uart_brdr,
    bdatr,
    \uartbaud_reg[15]_0 ,
    \uartctl_reg[0]_0 ,
    urxf_frst,
    SR,
    brdy,
    clk,
    uctl_brdf_reg_0,
    urxf_aempty,
    urxf_afull,
    rst_n,
    bdatw,
    badr,
    bcs_uart_n,
    bcmdr,
    urxf_dato,
    \bdatr[15] ,
    urxf_empty,
    utx_full,
    bcmdw,
    urxf_full,
    uart_cts);
  output urxf_read;
  output uart_rts;
  output uctl_brdf;
  output p_6_in;
  output [1:0]Q;
  output p_12_in;
  output uart_brdr;
  output [15:0]bdatr;
  output [15:0]\uartbaud_reg[15]_0 ;
  output \uartctl_reg[0]_0 ;
  output urxf_frst;
  input [0:0]SR;
  input brdy;
  input clk;
  input uctl_brdf_reg_0;
  input urxf_aempty;
  input urxf_afull;
  input rst_n;
  input [15:0]bdatw;
  input [3:0]badr;
  input bcs_uart_n;
  input bcmdr;
  input [7:0]urxf_dato;
  input [15:0]\bdatr[15] ;
  input urxf_empty;
  input utx_full;
  input bcmdw;
  input urxf_full;
  input uart_cts;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_uart_n;
  wire [15:0]bdatr;
  wire [15:0]\bdatr[15] ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire [2:0]p_0_in;
  wire p_12_in;
  wire [7:0]p_2_in;
  wire p_6_in;
  wire rst_n;
  wire uart_brdr;
  wire uart_cts;
  wire uart_rts;
  wire uart_rts_i_1_n_0;
  wire [15:0]\uartbaud_reg[15]_0 ;
  wire \uartctl[0]_i_1_n_0 ;
  wire \uartctl[1]_i_1_n_0 ;
  wire \uartctl[2]_i_1_n_0 ;
  wire \uartctl[3]_i_1_n_0 ;
  wire \uartctl_reg[0]_0 ;
  wire \uartctl_reg_n_0_[3] ;
  wire \uartflow_reg_n_0_[0] ;
  wire \uartflow_reg_n_0_[1] ;
  wire uctl_brde;
  wire uctl_brdf;
  wire uctl_brdf_reg_0;
  wire \uctl_cts_sft_reg_n_0_[0] ;
  wire uctl_ctsp;
  wire uctl_rtsp;
  wire uctl_uartbaud_rd;
  wire uctl_uartbaud_rd0;
  wire uctl_uartbaud_wr;
  wire uctl_uartbres_rd;
  wire uctl_uartbres_rd0;
  wire uctl_uartctl_rd;
  wire uctl_uartctl_rd0;
  wire uctl_uartflow_rd;
  wire uctl_uartflow_rd0;
  wire uctl_uartflow_wr;
  wire urxf_aempty;
  wire urxf_afull;
  wire [7:0]urxf_dato;
  wire urxf_drive;
  wire urxf_empty;
  wire urxf_frst;
  wire urxf_full;
  wire urxf_read;
  wire urxf_read_INST_0_i_1_n_0;
  wire urxf_read_INST_0_i_2_n_0;
  wire \utx/utx_avail00_out__0 ;
  wire utx_full;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \bdatr[0]_INST_0 
       (.I0(urxf_dato[0]),
        .I1(urxf_drive),
        .I2(p_2_in[0]),
        .I3(uctl_uartbres_rd),
        .I4(\bdatr[15] [0]),
        .O(bdatr[0]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(uctl_uartctl_rd),
        .I2(\uartflow_reg_n_0_[0] ),
        .I3(uctl_uartflow_rd),
        .I4(uctl_uartbaud_rd),
        .I5(\uartbaud_reg[15]_0 [0]),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \bdatr[10]_INST_0 
       (.I0(\bdatr[15] [10]),
        .I1(uctl_uartbres_rd),
        .I2(uctl_uartctl_rd),
        .I3(\uartbaud_reg[15]_0 [10]),
        .I4(uctl_uartbaud_rd),
        .I5(uctl_uartflow_rd),
        .O(bdatr[10]));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \bdatr[11]_INST_0 
       (.I0(\bdatr[15] [11]),
        .I1(uctl_uartbres_rd),
        .I2(uctl_uartctl_rd),
        .I3(\uartbaud_reg[15]_0 [11]),
        .I4(uctl_uartbaud_rd),
        .I5(uctl_uartflow_rd),
        .O(bdatr[11]));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \bdatr[12]_INST_0 
       (.I0(\bdatr[15] [12]),
        .I1(uctl_uartbres_rd),
        .I2(uctl_uartctl_rd),
        .I3(\uartbaud_reg[15]_0 [12]),
        .I4(uctl_uartbaud_rd),
        .I5(uctl_uartflow_rd),
        .O(bdatr[12]));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \bdatr[13]_INST_0 
       (.I0(\bdatr[15] [13]),
        .I1(uctl_uartbres_rd),
        .I2(uctl_uartctl_rd),
        .I3(\uartbaud_reg[15]_0 [13]),
        .I4(uctl_uartbaud_rd),
        .I5(uctl_uartflow_rd),
        .O(bdatr[13]));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \bdatr[14]_INST_0 
       (.I0(\bdatr[15] [14]),
        .I1(uctl_uartbres_rd),
        .I2(uctl_uartctl_rd),
        .I3(\uartbaud_reg[15]_0 [14]),
        .I4(uctl_uartbaud_rd),
        .I5(uctl_uartflow_rd),
        .O(bdatr[14]));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \bdatr[15]_INST_0 
       (.I0(\bdatr[15] [15]),
        .I1(uctl_uartbres_rd),
        .I2(uctl_uartctl_rd),
        .I3(\uartbaud_reg[15]_0 [15]),
        .I4(uctl_uartbaud_rd),
        .I5(uctl_uartflow_rd),
        .O(bdatr[15]));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \bdatr[1]_INST_0 
       (.I0(urxf_dato[1]),
        .I1(urxf_drive),
        .I2(p_2_in[1]),
        .I3(uctl_uartbres_rd),
        .I4(\bdatr[15] [1]),
        .O(bdatr[1]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(Q[1]),
        .I1(uctl_uartctl_rd),
        .I2(\uartflow_reg_n_0_[1] ),
        .I3(uctl_uartflow_rd),
        .I4(uctl_uartbaud_rd),
        .I5(\uartbaud_reg[15]_0 [1]),
        .O(p_2_in[1]));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \bdatr[2]_INST_0 
       (.I0(urxf_dato[2]),
        .I1(urxf_drive),
        .I2(p_2_in[2]),
        .I3(uctl_uartbres_rd),
        .I4(\bdatr[15] [2]),
        .O(bdatr[2]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(uctl_brde),
        .I1(uctl_uartctl_rd),
        .I2(uctl_rtsp),
        .I3(uctl_uartflow_rd),
        .I4(uctl_uartbaud_rd),
        .I5(\uartbaud_reg[15]_0 [2]),
        .O(p_2_in[2]));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \bdatr[3]_INST_0 
       (.I0(urxf_dato[3]),
        .I1(urxf_drive),
        .I2(p_2_in[3]),
        .I3(uctl_uartbres_rd),
        .I4(\bdatr[15] [3]),
        .O(bdatr[3]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(\uartctl_reg_n_0_[3] ),
        .I1(uctl_uartctl_rd),
        .I2(uctl_ctsp),
        .I3(uctl_uartflow_rd),
        .I4(uctl_uartbaud_rd),
        .I5(\uartbaud_reg[15]_0 [3]),
        .O(p_2_in[3]));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \bdatr[4]_INST_0 
       (.I0(urxf_dato[4]),
        .I1(urxf_drive),
        .I2(p_2_in[4]),
        .I3(uctl_uartbres_rd),
        .I4(\bdatr[15] [4]),
        .O(bdatr[4]));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(utx_full),
        .I1(uctl_uartctl_rd),
        .I2(\uartbaud_reg[15]_0 [4]),
        .I3(uctl_uartbaud_rd),
        .I4(uctl_uartflow_rd),
        .O(p_2_in[4]));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \bdatr[5]_INST_0 
       (.I0(urxf_dato[5]),
        .I1(urxf_drive),
        .I2(p_2_in[5]),
        .I3(uctl_uartbres_rd),
        .I4(\bdatr[15] [5]),
        .O(bdatr[5]));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(uctl_brdf),
        .I1(uctl_uartctl_rd),
        .I2(\uartbaud_reg[15]_0 [5]),
        .I3(uctl_uartbaud_rd),
        .I4(uctl_uartflow_rd),
        .O(p_2_in[5]));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \bdatr[6]_INST_0 
       (.I0(urxf_dato[6]),
        .I1(urxf_drive),
        .I2(p_2_in[6]),
        .I3(uctl_uartbres_rd),
        .I4(\bdatr[15] [6]),
        .O(bdatr[6]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(urxf_full),
        .I1(uctl_uartctl_rd),
        .I2(uart_rts),
        .I3(uctl_uartflow_rd),
        .I4(uctl_uartbaud_rd),
        .I5(\uartbaud_reg[15]_0 [6]),
        .O(p_2_in[6]));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \bdatr[7]_INST_0 
       (.I0(urxf_dato[7]),
        .I1(urxf_drive),
        .I2(p_2_in[7]),
        .I3(uctl_uartbres_rd),
        .I4(\bdatr[15] [7]),
        .O(bdatr[7]));
  LUT6 #(
    .INIT(64'h7477744474447444)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(urxf_empty),
        .I1(uctl_uartctl_rd),
        .I2(p_0_in[0]),
        .I3(uctl_uartflow_rd),
        .I4(uctl_uartbaud_rd),
        .I5(\uartbaud_reg[15]_0 [7]),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \bdatr[8]_INST_0 
       (.I0(\bdatr[15] [8]),
        .I1(uctl_uartbres_rd),
        .I2(uctl_uartctl_rd),
        .I3(\uartbaud_reg[15]_0 [8]),
        .I4(uctl_uartbaud_rd),
        .I5(uctl_uartflow_rd),
        .O(bdatr[8]));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \bdatr[9]_INST_0 
       (.I0(\bdatr[15] [9]),
        .I1(uctl_uartbres_rd),
        .I2(uctl_uartctl_rd),
        .I3(\uartbaud_reg[15]_0 [9]),
        .I4(uctl_uartbaud_rd),
        .I5(uctl_uartflow_rd),
        .O(bdatr[9]));
  LUT2 #(
    .INIT(4'h8)) 
    uart_brdr_INST_0
       (.I0(uctl_brde),
        .I1(uctl_brdf),
        .O(uart_brdr));
  LUT6 #(
    .INIT(64'h0FE2F0F0F0F0F0F0)) 
    uart_rts_i_1
       (.I0(uart_rts),
        .I1(urxf_aempty),
        .I2(uctl_rtsp),
        .I3(urxf_afull),
        .I4(\uartflow_reg_n_0_[0] ),
        .I5(rst_n),
        .O(uart_rts_i_1_n_0));
  FDRE uart_rts_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(uart_rts_i_1_n_0),
        .Q(uart_rts),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \uartbaud[15]_i_1 
       (.I0(p_12_in),
        .I1(badr[0]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[2]),
        .O(uctl_uartbaud_wr));
  FDRE \uartbaud_reg[0] 
       (.C(clk),
        .CE(uctl_uartbaud_wr),
        .D(bdatw[0]),
        .Q(\uartbaud_reg[15]_0 [0]),
        .R(SR));
  FDRE \uartbaud_reg[10] 
       (.C(clk),
        .CE(uctl_uartbaud_wr),
        .D(bdatw[10]),
        .Q(\uartbaud_reg[15]_0 [10]),
        .R(SR));
  FDRE \uartbaud_reg[11] 
       (.C(clk),
        .CE(uctl_uartbaud_wr),
        .D(bdatw[11]),
        .Q(\uartbaud_reg[15]_0 [11]),
        .R(SR));
  FDRE \uartbaud_reg[12] 
       (.C(clk),
        .CE(uctl_uartbaud_wr),
        .D(bdatw[12]),
        .Q(\uartbaud_reg[15]_0 [12]),
        .R(SR));
  FDRE \uartbaud_reg[13] 
       (.C(clk),
        .CE(uctl_uartbaud_wr),
        .D(bdatw[13]),
        .Q(\uartbaud_reg[15]_0 [13]),
        .R(SR));
  FDRE \uartbaud_reg[14] 
       (.C(clk),
        .CE(uctl_uartbaud_wr),
        .D(bdatw[14]),
        .Q(\uartbaud_reg[15]_0 [14]),
        .R(SR));
  FDRE \uartbaud_reg[15] 
       (.C(clk),
        .CE(uctl_uartbaud_wr),
        .D(bdatw[15]),
        .Q(\uartbaud_reg[15]_0 [15]),
        .R(SR));
  FDRE \uartbaud_reg[1] 
       (.C(clk),
        .CE(uctl_uartbaud_wr),
        .D(bdatw[1]),
        .Q(\uartbaud_reg[15]_0 [1]),
        .R(SR));
  FDRE \uartbaud_reg[2] 
       (.C(clk),
        .CE(uctl_uartbaud_wr),
        .D(bdatw[2]),
        .Q(\uartbaud_reg[15]_0 [2]),
        .R(SR));
  FDRE \uartbaud_reg[3] 
       (.C(clk),
        .CE(uctl_uartbaud_wr),
        .D(bdatw[3]),
        .Q(\uartbaud_reg[15]_0 [3]),
        .R(SR));
  FDRE \uartbaud_reg[4] 
       (.C(clk),
        .CE(uctl_uartbaud_wr),
        .D(bdatw[4]),
        .Q(\uartbaud_reg[15]_0 [4]),
        .R(SR));
  FDRE \uartbaud_reg[5] 
       (.C(clk),
        .CE(uctl_uartbaud_wr),
        .D(bdatw[5]),
        .Q(\uartbaud_reg[15]_0 [5]),
        .R(SR));
  FDRE \uartbaud_reg[6] 
       (.C(clk),
        .CE(uctl_uartbaud_wr),
        .D(bdatw[6]),
        .Q(\uartbaud_reg[15]_0 [6]),
        .R(SR));
  FDRE \uartbaud_reg[7] 
       (.C(clk),
        .CE(uctl_uartbaud_wr),
        .D(bdatw[7]),
        .Q(\uartbaud_reg[15]_0 [7]),
        .R(SR));
  FDRE \uartbaud_reg[8] 
       (.C(clk),
        .CE(uctl_uartbaud_wr),
        .D(bdatw[8]),
        .Q(\uartbaud_reg[15]_0 [8]),
        .R(SR));
  FDRE \uartbaud_reg[9] 
       (.C(clk),
        .CE(uctl_uartbaud_wr),
        .D(bdatw[9]),
        .Q(\uartbaud_reg[15]_0 [9]),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \uartctl[0]_i_1 
       (.I0(bdatw[0]),
        .I1(p_6_in),
        .I2(Q[0]),
        .O(\uartctl[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \uartctl[1]_i_1 
       (.I0(bdatw[1]),
        .I1(p_6_in),
        .I2(Q[1]),
        .O(\uartctl[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \uartctl[2]_i_1 
       (.I0(bdatw[2]),
        .I1(p_6_in),
        .I2(uctl_brde),
        .O(\uartctl[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \uartctl[2]_i_2 
       (.I0(p_12_in),
        .I1(badr[0]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[2]),
        .O(p_6_in));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \uartctl[3]_i_1 
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(p_12_in),
        .I5(bdatw[3]),
        .O(\uartctl[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \uartctl[3]_i_2 
       (.I0(bcmdw),
        .I1(bcs_uart_n),
        .I2(brdy),
        .O(p_12_in));
  FDRE \uartctl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\uartctl[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \uartctl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\uartctl[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \uartctl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\uartctl[2]_i_1_n_0 ),
        .Q(uctl_brde),
        .R(SR));
  FDRE \uartctl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\uartctl[3]_i_1_n_0 ),
        .Q(\uartctl_reg_n_0_[3] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000020)) 
    \uartflow[3]_i_1 
       (.I0(p_12_in),
        .I1(badr[0]),
        .I2(badr[3]),
        .I3(badr[1]),
        .I4(badr[2]),
        .O(uctl_uartflow_wr));
  FDRE \uartflow_reg[0] 
       (.C(clk),
        .CE(uctl_uartflow_wr),
        .D(bdatw[0]),
        .Q(\uartflow_reg_n_0_[0] ),
        .R(SR));
  FDRE \uartflow_reg[1] 
       (.C(clk),
        .CE(uctl_uartflow_wr),
        .D(bdatw[1]),
        .Q(\uartflow_reg_n_0_[1] ),
        .R(SR));
  FDRE \uartflow_reg[2] 
       (.C(clk),
        .CE(uctl_uartflow_wr),
        .D(bdatw[2]),
        .Q(uctl_rtsp),
        .R(SR));
  FDRE \uartflow_reg[3] 
       (.C(clk),
        .CE(uctl_uartflow_wr),
        .D(bdatw[3]),
        .Q(uctl_ctsp),
        .R(SR));
  FDRE uctl_brdf_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(uctl_brdf_reg_0),
        .Q(uctl_brdf),
        .R(SR));
  FDRE \uctl_cts_sft_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(uart_cts),
        .Q(\uctl_cts_sft_reg_n_0_[0] ),
        .R(SR));
  FDRE \uctl_cts_sft_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\uctl_cts_sft_reg_n_0_[0] ),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \uctl_cts_sft_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[0]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \uctl_cts_sft_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    uctl_uartbaud_rd_i_1
       (.I0(bcs_uart_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .I5(badr[2]),
        .O(uctl_uartbaud_rd0));
  FDRE uctl_uartbaud_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(uctl_uartbaud_rd0),
        .Q(uctl_uartbaud_rd),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    uctl_uartbres_rd_i_1
       (.I0(bcs_uart_n),
        .I1(bcmdr),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[0]),
        .I5(badr[2]),
        .O(uctl_uartbres_rd0));
  FDRE uctl_uartbres_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(uctl_uartbres_rd0),
        .Q(uctl_uartbres_rd),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    uctl_uartctl_rd_i_1
       (.I0(bcs_uart_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .I5(badr[2]),
        .O(uctl_uartctl_rd0));
  FDRE uctl_uartctl_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(uctl_uartctl_rd0),
        .Q(uctl_uartctl_rd),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    uctl_uartflow_rd_i_1
       (.I0(bcs_uart_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[3]),
        .I4(badr[1]),
        .I5(badr[2]),
        .O(uctl_uartflow_rd0));
  FDRE uctl_uartflow_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(uctl_uartflow_rd0),
        .Q(uctl_uartflow_rd),
        .R(SR));
  FDRE urxf_drive_reg
       (.C(clk),
        .CE(brdy),
        .D(urxf_read),
        .Q(urxf_drive),
        .R(SR));
  LUT2 #(
    .INIT(4'hB)) 
    urxf_frst_INST_0
       (.I0(\uartctl_reg_n_0_[3] ),
        .I1(rst_n),
        .O(urxf_frst));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    urxf_read_INST_0
       (.I0(urxf_read_INST_0_i_1_n_0),
        .I1(urxf_empty),
        .I2(urxf_read_INST_0_i_2_n_0),
        .I3(badr[1]),
        .I4(badr[2]),
        .I5(brdy),
        .O(urxf_read));
  LUT2 #(
    .INIT(4'h2)) 
    urxf_read_INST_0_i_1
       (.I0(bcmdr),
        .I1(bcs_uart_n),
        .O(urxf_read_INST_0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    urxf_read_INST_0_i_2
       (.I0(badr[0]),
        .I1(badr[3]),
        .O(urxf_read_INST_0_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    \utx_stat[0]_i_2 
       (.I0(\utx/utx_avail00_out__0 ),
        .I1(Q[0]),
        .O(\uartctl_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hA880022AAAAAAAAA)) 
    \utx_stat[0]_i_3 
       (.I0(utx_full),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(uctl_ctsp),
        .I5(\uartflow_reg_n_0_[1] ),
        .O(\utx/utx_avail00_out__0 ));
endmodule
