
(* CPT = "2'b01" *) (* OHI = "2'b11" *) (* OLO = "2'b10" *) 
(* OPN = "2'b00" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module wform1r1t
   (clk,
    rst_n,
    brdy,
    bcmdr,
    bcmdw,
    bcmdb,
    bcs_wfrm_n,
    wfrm_inp,
    wfrm_cmnd_enb,
    wfrm_cmnd_abt,
    badr,
    bdatw,
    wfrm_enb,
    wfrm_out,
    wfrm_cenb,
    wfrm_cabt,
    bdatr,
    wfrx_empty,
    wfrx_full,
    wfrx_dato,
    wfrx_read,
    wfrx_frst,
    wfrx_write,
    wfrx_dati,
    wftx_empty,
    wftx_full,
    wftx_dato,
    wftx_read,
    wftx_frst,
    wftx_write,
    wftx_dati);
//
//	Waveform Receiver Transmitter unit
//		(c) 2026	1YEN Toru
//
//
//	2026/10/03	ver.1.00
//
  input clk;
  input rst_n;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bcmdb;
  input bcs_wfrm_n;
  input wfrm_inp;
  input wfrm_cmnd_enb;
  input wfrm_cmnd_abt;
  input [3:0]badr;
  input [15:0]bdatw;
  output wfrm_enb;
  output wfrm_out;
  output [3:0]wfrm_cenb;
  output [3:0]wfrm_cabt;
  output [15:0]bdatr;
  input wfrx_empty;
  input wfrx_full;
  input [7:0]wfrx_dato;
  output wfrx_read;
  output wfrx_frst;
  output wfrx_write;
  output [7:0]wfrx_dati;
  input wftx_empty;
  input wftx_full;
  input [7:0]wftx_dato;
  output wftx_read;
  output wftx_frst;
  output wftx_write;
  output [7:0]wftx_dati;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]badr;
  wire bcmdb;
  wire bcmdr;
  wire bcmdw;
  wire bcs_wfrm_n;
  wire [7:0]\^bdatr ;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_1_n_0 ;
  wire \bdatr[5]_INST_0_i_1_n_0 ;
  wire \bdatr[6]_INST_0_i_1_n_0 ;
  wire \bdatr[6]_INST_0_i_2_n_0 ;
  wire \bdatr[7]_INST_0_i_1_n_0 ;
  wire \bdatr[7]_INST_0_i_2_n_0 ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire rst_n;
  wire wctl_busy;
  wire wctl_capt;
  wire [7:0]wctl_data;
  wire wctl_data1;
  wire [2:0]wctl_data_cnt;
  wire \wctl_data_cnt[0]_i_1_n_0 ;
  wire \wctl_data_cnt[1]_i_1_n_0 ;
  wire \wctl_data_cnt[2]_i_2_n_0 ;
  wire [5:0]wctl_dur_cnt;
  wire \wctl_dur_cnt_reg_n_0_[0] ;
  wire \wctl_dur_cnt_reg_n_0_[1] ;
  wire \wctl_dur_cnt_reg_n_0_[2] ;
  wire \wctl_dur_cnt_reg_n_0_[3] ;
  wire \wctl_dur_cnt_reg_n_0_[4] ;
  wire \wctl_dur_cnt_reg_n_0_[5] ;
  wire wctl_frst;
  wire wctl_lfst;
  wire wctl_n_0;
  wire wctl_n_1;
  wire wctl_n_14;
  wire wctl_n_2;
  wire wctl_n_5;
  wire wctl_rxwr;
  wire wctl_wfrmctl_rd;
  wire wctl_wfrmctl_rd_i_1_n_0;
  wire wctl_wfrmpsc_rd;
  wire wctl_wfrmpsc_rd0;
  wire wctl_wfrmpsc_rd_i_1_n_0;
  wire wctl_wfrmrxd_rd;
  wire wctl_wfrmrxd_rd_i_1_n_0;
  wire [3:0]wfrm_cabt;
  wire [3:0]wfrm_cenb;
  wire wfrm_cmnd_abt;
  wire wfrm_cmnd_enb;
  wire wfrm_enb;
  wire wfrm_inp;
  wire wfrm_out;
  wire \wfrmctl[0]_i_1_n_0 ;
  wire \wfrmctl[11]_i_1_n_0 ;
  wire \wfrmctl[3]_i_1_n_0 ;
  wire \wfrmctl[7]_i_1_n_0 ;
  wire \wfrmctl[7]_i_2_n_0 ;
  wire \wfrmctl_reg_n_0_[0] ;
  wire [7:0]wfrmpsc;
  wire wfrmpsc0;
  wire \wfrmpsc[7]_i_3_n_0 ;
  wire \wfrmpsc[7]_i_4_n_0 ;
  wire [7:0]wfrx_dati;
  wire [7:0]wfrx_dato;
  wire wfrx_empty;
  wire wfrx_frst;
  wire wfrx_full;
  wire wfrx_read;
  wire wfrx_read_INST_0_i_1_n_0;
  wire wfrx_write;
  wire [7:0]wftx_dati;
  wire [7:0]wftx_dato;
  wire wftx_empty;
  wire wftx_full;
  wire wftx_read;
  wire wftx_write;
  wire \wpsc_cnt[5]_i_1_n_0 ;
  wire \wpsc_cnt[7]_i_3_n_0 ;
  wire [7:0]wpsc_cnt_nx;
  wire [7:0]wpsc_cnt_reg;

  assign bdatr[15] = \<const0> ;
  assign bdatr[14] = \<const0> ;
  assign bdatr[13] = \<const0> ;
  assign bdatr[12] = \<const0> ;
  assign bdatr[11] = \<const0> ;
  assign bdatr[10] = \<const0> ;
  assign bdatr[9] = \<const0> ;
  assign bdatr[8] = \<const0> ;
  assign bdatr[7:0] = \^bdatr [7:0];
  assign wftx_frst = wfrx_frst;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080808)) 
    \bdatr[0]_INST_0 
       (.I0(wfrmpsc[0]),
        .I1(wctl_wfrmpsc_rd),
        .I2(wctl_wfrmctl_rd),
        .I3(\bdatr[7]_INST_0_i_1_n_0 ),
        .I4(wfrx_dato[7]),
        .I5(\bdatr[0]_INST_0_i_1_n_0 ),
        .O(\^bdatr [0]));
  LUT6 #(
    .INIT(64'hFFFF000000080008)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(wfrx_dato[0]),
        .I1(wctl_wfrmrxd_rd),
        .I2(wctl_wfrmpsc_rd),
        .I3(wctl_lfst),
        .I4(\wfrmctl_reg_n_0_[0] ),
        .I5(wctl_wfrmctl_rd),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF808)) 
    \bdatr[2]_INST_0 
       (.I0(wfrmpsc[2]),
        .I1(wctl_wfrmpsc_rd),
        .I2(wctl_wfrmctl_rd),
        .I3(wfrm_inp),
        .I4(\bdatr[2]_INST_0_i_1_n_0 ),
        .O(\^bdatr [2]));
  LUT6 #(
    .INIT(64'h00000A0000000C00)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(wfrx_dato[5]),
        .I1(wfrx_dato[2]),
        .I2(wctl_wfrmctl_rd),
        .I3(wctl_wfrmrxd_rd),
        .I4(wctl_wfrmpsc_rd),
        .I5(wctl_lfst),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \bdatr[3]_INST_0 
       (.I0(wfrmpsc[3]),
        .I1(wctl_wfrmpsc_rd),
        .I2(wctl_wfrmctl_rd),
        .I3(\bdatr[3]_INST_0_i_1_n_0 ),
        .O(\^bdatr [3]));
  LUT6 #(
    .INIT(64'hF0F0FAF000000C00)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(wfrx_dato[4]),
        .I1(wfrx_dato[3]),
        .I2(wctl_wfrmctl_rd),
        .I3(wctl_wfrmrxd_rd),
        .I4(wctl_wfrmpsc_rd),
        .I5(wctl_lfst),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080808)) 
    \bdatr[4]_INST_0 
       (.I0(wfrmpsc[4]),
        .I1(wctl_wfrmpsc_rd),
        .I2(wctl_wfrmctl_rd),
        .I3(\bdatr[7]_INST_0_i_1_n_0 ),
        .I4(wfrx_dato[3]),
        .I5(\bdatr[4]_INST_0_i_1_n_0 ),
        .O(\^bdatr [4]));
  LUT6 #(
    .INIT(64'hFFFF000000080008)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(wfrx_dato[4]),
        .I1(wctl_wfrmrxd_rd),
        .I2(wctl_wfrmpsc_rd),
        .I3(wctl_lfst),
        .I4(wfrx_empty),
        .I5(wctl_wfrmctl_rd),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080808)) 
    \bdatr[5]_INST_0 
       (.I0(wfrmpsc[5]),
        .I1(wctl_wfrmpsc_rd),
        .I2(wctl_wfrmctl_rd),
        .I3(\bdatr[7]_INST_0_i_1_n_0 ),
        .I4(wfrx_dato[2]),
        .I5(\bdatr[5]_INST_0_i_1_n_0 ),
        .O(\^bdatr [5]));
  LUT6 #(
    .INIT(64'hFFFF000000080008)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(wfrx_dato[5]),
        .I1(wctl_wfrmrxd_rd),
        .I2(wctl_wfrmpsc_rd),
        .I3(wctl_lfst),
        .I4(wftx_full),
        .I5(wctl_wfrmctl_rd),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bdatr[6]_INST_0 
       (.I0(\bdatr[6]_INST_0_i_1_n_0 ),
        .I1(wfrx_dato[6]),
        .I2(\bdatr[7]_INST_0_i_1_n_0 ),
        .I3(wfrx_dato[1]),
        .I4(wfrmpsc[6]),
        .I5(\bdatr[6]_INST_0_i_2_n_0 ),
        .O(\^bdatr [6]));
  LUT4 #(
    .INIT(16'h0004)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(wctl_wfrmctl_rd),
        .I1(wctl_wfrmrxd_rd),
        .I2(wctl_wfrmpsc_rd),
        .I3(wctl_lfst),
        .O(\bdatr[6]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bdatr[6]_INST_0_i_2 
       (.I0(wctl_wfrmpsc_rd),
        .I1(wctl_wfrmctl_rd),
        .O(\bdatr[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080808)) 
    \bdatr[7]_INST_0 
       (.I0(wfrmpsc[7]),
        .I1(wctl_wfrmpsc_rd),
        .I2(wctl_wfrmctl_rd),
        .I3(\bdatr[7]_INST_0_i_1_n_0 ),
        .I4(wfrx_dato[0]),
        .I5(\bdatr[7]_INST_0_i_2_n_0 ),
        .O(\^bdatr [7]));
  LUT4 #(
    .INIT(16'h0400)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(wctl_wfrmctl_rd),
        .I1(wctl_wfrmrxd_rd),
        .I2(wctl_wfrmpsc_rd),
        .I3(wctl_lfst),
        .O(\bdatr[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000000080008)) 
    \bdatr[7]_INST_0_i_2 
       (.I0(wfrx_dato[7]),
        .I1(wctl_wfrmrxd_rd),
        .I2(wctl_wfrmpsc_rd),
        .I3(wctl_lfst),
        .I4(wctl_frst),
        .I5(wctl_wfrmctl_rd),
        .O(\bdatr[7]_INST_0_i_2_n_0 ));
  wfrm_fsm wctl
       (.D(wctl_dur_cnt),
        .E(wctl_busy),
        .Q(wfrmpsc),
        .SR(wctl_n_2),
        .bdatr(\^bdatr [1]),
        .clk(clk),
        .rst_n(rst_n),
        .rst_n_0(wctl_n_0),
        .rst_n_1(wctl_n_1),
        .\stat_reg[1]_0 (wctl_n_5),
        .\wctl_data_cnt_reg[0] (wctl_n_14),
        .\wctl_dur_cnt_reg[5] ({\wctl_dur_cnt_reg_n_0_[5] ,\wctl_dur_cnt_reg_n_0_[4] ,\wctl_dur_cnt_reg_n_0_[3] ,\wctl_dur_cnt_reg_n_0_[2] ,\wctl_dur_cnt_reg_n_0_[1] ,\wctl_dur_cnt_reg_n_0_[0] }),
        .wctl_lfst(wctl_lfst),
        .wctl_rxwr_reg(wctl_data_cnt),
        .wctl_wfrmctl_rd(wctl_wfrmctl_rd),
        .wctl_wfrmpsc_rd(wctl_wfrmpsc_rd),
        .wctl_wfrmrxd_rd(wctl_wfrmrxd_rd),
        .wfrm_enb(wfrm_enb),
        .wfrm_out(wfrm_out),
        .wfrx_dato({wfrx_dato[6],wfrx_dato[1]}),
        .wftx_dato(wftx_dato),
        .\wftx_dato[6] (wctl_capt),
        .wftx_empty(wftx_empty),
        .wftx_read(wftx_read),
        .wftx_read_INST_0_i_3_0(wpsc_cnt_reg),
        .\wpsc_cnt_reg[0] (\wfrmctl_reg_n_0_[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \wctl_data_cnt[0]_i_1 
       (.I0(wctl_data_cnt[0]),
        .O(\wctl_data_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wctl_data_cnt[1]_i_1 
       (.I0(wctl_data_cnt[0]),
        .I1(wctl_data_cnt[1]),
        .O(\wctl_data_cnt[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \wctl_data_cnt[2]_i_2 
       (.I0(wctl_data_cnt[1]),
        .I1(wctl_data_cnt[0]),
        .I2(wctl_data_cnt[2]),
        .O(\wctl_data_cnt[2]_i_2_n_0 ));
  FDRE \wctl_data_cnt_reg[0] 
       (.C(clk),
        .CE(wctl_capt),
        .D(\wctl_data_cnt[0]_i_1_n_0 ),
        .Q(wctl_data_cnt[0]),
        .R(wfrx_frst));
  FDRE \wctl_data_cnt_reg[1] 
       (.C(clk),
        .CE(wctl_capt),
        .D(\wctl_data_cnt[1]_i_1_n_0 ),
        .Q(wctl_data_cnt[1]),
        .R(wfrx_frst));
  FDRE \wctl_data_cnt_reg[2] 
       (.C(clk),
        .CE(wctl_capt),
        .D(\wctl_data_cnt[2]_i_2_n_0 ),
        .Q(wctl_data_cnt[2]),
        .R(wfrx_frst));
  FDRE \wctl_data_reg[0] 
       (.C(clk),
        .CE(wctl_capt),
        .D(wfrm_inp),
        .Q(wctl_data[0]),
        .R(wfrx_frst));
  FDRE \wctl_data_reg[1] 
       (.C(clk),
        .CE(wctl_capt),
        .D(wctl_data[0]),
        .Q(wctl_data[1]),
        .R(wfrx_frst));
  FDRE \wctl_data_reg[2] 
       (.C(clk),
        .CE(wctl_capt),
        .D(wctl_data[1]),
        .Q(wctl_data[2]),
        .R(wfrx_frst));
  FDRE \wctl_data_reg[3] 
       (.C(clk),
        .CE(wctl_capt),
        .D(wctl_data[2]),
        .Q(wctl_data[3]),
        .R(wfrx_frst));
  FDRE \wctl_data_reg[4] 
       (.C(clk),
        .CE(wctl_capt),
        .D(wctl_data[3]),
        .Q(wctl_data[4]),
        .R(wfrx_frst));
  FDRE \wctl_data_reg[5] 
       (.C(clk),
        .CE(wctl_capt),
        .D(wctl_data[4]),
        .Q(wctl_data[5]),
        .R(wfrx_frst));
  FDRE \wctl_data_reg[6] 
       (.C(clk),
        .CE(wctl_capt),
        .D(wctl_data[5]),
        .Q(wctl_data[6]),
        .R(wfrx_frst));
  FDRE \wctl_data_reg[7] 
       (.C(clk),
        .CE(wctl_capt),
        .D(wctl_data[6]),
        .Q(wctl_data[7]),
        .R(wfrx_frst));
  FDRE \wctl_dur_cnt_reg[0] 
       (.C(clk),
        .CE(wctl_n_5),
        .D(wctl_dur_cnt[0]),
        .Q(\wctl_dur_cnt_reg_n_0_[0] ),
        .R(wctl_data1));
  FDRE \wctl_dur_cnt_reg[1] 
       (.C(clk),
        .CE(wctl_n_5),
        .D(wctl_dur_cnt[1]),
        .Q(\wctl_dur_cnt_reg_n_0_[1] ),
        .R(wctl_data1));
  FDRE \wctl_dur_cnt_reg[2] 
       (.C(clk),
        .CE(wctl_n_5),
        .D(wctl_dur_cnt[2]),
        .Q(\wctl_dur_cnt_reg_n_0_[2] ),
        .R(wctl_data1));
  FDRE \wctl_dur_cnt_reg[3] 
       (.C(clk),
        .CE(wctl_n_5),
        .D(wctl_dur_cnt[3]),
        .Q(\wctl_dur_cnt_reg_n_0_[3] ),
        .R(wctl_data1));
  FDRE \wctl_dur_cnt_reg[4] 
       (.C(clk),
        .CE(wctl_n_5),
        .D(wctl_dur_cnt[4]),
        .Q(\wctl_dur_cnt_reg_n_0_[4] ),
        .R(wctl_data1));
  FDRE \wctl_dur_cnt_reg[5] 
       (.C(clk),
        .CE(wctl_n_5),
        .D(wctl_dur_cnt[5]),
        .Q(\wctl_dur_cnt_reg_n_0_[5] ),
        .R(wctl_data1));
  FDRE wctl_rxwr_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(wctl_n_14),
        .Q(wctl_rxwr),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h22222E2200000000)) 
    wctl_wfrmctl_rd_i_1
       (.I0(wctl_wfrmctl_rd),
        .I1(brdy),
        .I2(wfrx_read_INST_0_i_1_n_0),
        .I3(bcmdr),
        .I4(badr[2]),
        .I5(rst_n),
        .O(wctl_wfrmctl_rd_i_1_n_0));
  FDRE wctl_wfrmctl_rd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(wctl_wfrmctl_rd_i_1_n_0),
        .Q(wctl_wfrmctl_rd),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'hE200)) 
    wctl_wfrmpsc_rd_i_1
       (.I0(wctl_wfrmpsc_rd),
        .I1(brdy),
        .I2(wctl_wfrmpsc_rd0),
        .I3(rst_n),
        .O(wctl_wfrmpsc_rd_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    wctl_wfrmpsc_rd_i_2
       (.I0(bcmdr),
        .I1(badr[1]),
        .I2(badr[2]),
        .I3(bcs_wfrm_n),
        .I4(badr[0]),
        .I5(badr[3]),
        .O(wctl_wfrmpsc_rd0));
  FDRE wctl_wfrmpsc_rd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(wctl_wfrmpsc_rd_i_1_n_0),
        .Q(wctl_wfrmpsc_rd),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h2E22222200000000)) 
    wctl_wfrmrxd_rd_i_1
       (.I0(wctl_wfrmrxd_rd),
        .I1(brdy),
        .I2(wfrx_read_INST_0_i_1_n_0),
        .I3(bcmdr),
        .I4(badr[2]),
        .I5(rst_n),
        .O(wctl_wfrmrxd_rd_i_1_n_0));
  FDRE wctl_wfrmrxd_rd_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(wctl_wfrmrxd_rd_i_1_n_0),
        .Q(wctl_wfrmrxd_rd),
        .R(\<const0> ));
  FDRE wfrm_enb_rg_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(wctl_n_0),
        .Q(wfrm_enb),
        .R(\<const0> ));
  FDRE wfrm_out_rg_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(wctl_n_1),
        .Q(wfrm_out),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0F000E000F000200)) 
    \wfrmctl[0]_i_1 
       (.I0(bdatw[0]),
        .I1(\wfrmctl[7]_i_2_n_0 ),
        .I2(wfrm_cmnd_abt),
        .I3(rst_n),
        .I4(wfrm_cmnd_enb),
        .I5(\wfrmctl_reg_n_0_[0] ),
        .O(\wfrmctl[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \wfrmctl[11]_i_1 
       (.I0(wfrx_read_INST_0_i_1_n_0),
        .I1(brdy),
        .I2(bcmdw),
        .I3(badr[2]),
        .I4(rst_n),
        .O(\wfrmctl[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE020)) 
    \wfrmctl[3]_i_1 
       (.I0(bdatw[3]),
        .I1(\wfrmctl[7]_i_2_n_0 ),
        .I2(rst_n),
        .I3(wctl_lfst),
        .O(\wfrmctl[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE020)) 
    \wfrmctl[7]_i_1 
       (.I0(bdatw[7]),
        .I1(\wfrmctl[7]_i_2_n_0 ),
        .I2(rst_n),
        .I3(wctl_frst),
        .O(\wfrmctl[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \wfrmctl[7]_i_2 
       (.I0(bcmdb),
        .I1(bcmdw),
        .I2(brdy),
        .I3(wfrx_read_INST_0_i_1_n_0),
        .I4(badr[2]),
        .O(\wfrmctl[7]_i_2_n_0 ));
  FDRE \wfrmctl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\wfrmctl[0]_i_1_n_0 ),
        .Q(\wfrmctl_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \wfrmctl_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw[10]),
        .Q(wfrm_cenb[2]),
        .R(\wfrmctl[11]_i_1_n_0 ));
  FDRE \wfrmctl_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw[11]),
        .Q(wfrm_cenb[3]),
        .R(\wfrmctl[11]_i_1_n_0 ));
  FDRE \wfrmctl_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw[12]),
        .Q(wfrm_cabt[0]),
        .R(\wfrmctl[11]_i_1_n_0 ));
  FDRE \wfrmctl_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw[13]),
        .Q(wfrm_cabt[1]),
        .R(\wfrmctl[11]_i_1_n_0 ));
  FDRE \wfrmctl_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw[14]),
        .Q(wfrm_cabt[2]),
        .R(\wfrmctl[11]_i_1_n_0 ));
  FDRE \wfrmctl_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw[15]),
        .Q(wfrm_cabt[3]),
        .R(\wfrmctl[11]_i_1_n_0 ));
  FDRE \wfrmctl_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\wfrmctl[3]_i_1_n_0 ),
        .Q(wctl_lfst),
        .R(\<const0> ));
  FDRE \wfrmctl_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\wfrmctl[7]_i_1_n_0 ),
        .Q(wctl_frst),
        .R(\<const0> ));
  FDRE \wfrmctl_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw[8]),
        .Q(wfrm_cenb[0]),
        .R(\wfrmctl[11]_i_1_n_0 ));
  FDRE \wfrmctl_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bdatw[9]),
        .Q(wfrm_cenb[1]),
        .R(\wfrmctl[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wfrmpsc[7]_i_1 
       (.I0(rst_n),
        .O(wctl_data1));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \wfrmpsc[7]_i_2 
       (.I0(\wfrmpsc[7]_i_3_n_0 ),
        .I1(bcmdb),
        .I2(badr[1]),
        .I3(\wfrmctl_reg_n_0_[0] ),
        .I4(badr[2]),
        .I5(\wfrmpsc[7]_i_4_n_0 ),
        .O(wfrmpsc0));
  LUT2 #(
    .INIT(4'h7)) 
    \wfrmpsc[7]_i_3 
       (.I0(brdy),
        .I1(bcmdw),
        .O(\wfrmpsc[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \wfrmpsc[7]_i_4 
       (.I0(badr[3]),
        .I1(badr[0]),
        .I2(bcs_wfrm_n),
        .O(\wfrmpsc[7]_i_4_n_0 ));
  FDRE \wfrmpsc_reg[0] 
       (.C(clk),
        .CE(wfrmpsc0),
        .D(bdatw[0]),
        .Q(wfrmpsc[0]),
        .R(wctl_data1));
  FDRE \wfrmpsc_reg[1] 
       (.C(clk),
        .CE(wfrmpsc0),
        .D(bdatw[1]),
        .Q(wfrmpsc[1]),
        .R(wctl_data1));
  FDRE \wfrmpsc_reg[2] 
       (.C(clk),
        .CE(wfrmpsc0),
        .D(bdatw[2]),
        .Q(wfrmpsc[2]),
        .R(wctl_data1));
  FDRE \wfrmpsc_reg[3] 
       (.C(clk),
        .CE(wfrmpsc0),
        .D(bdatw[3]),
        .Q(wfrmpsc[3]),
        .R(wctl_data1));
  FDRE \wfrmpsc_reg[4] 
       (.C(clk),
        .CE(wfrmpsc0),
        .D(bdatw[4]),
        .Q(wfrmpsc[4]),
        .R(wctl_data1));
  FDRE \wfrmpsc_reg[5] 
       (.C(clk),
        .CE(wfrmpsc0),
        .D(bdatw[5]),
        .Q(wfrmpsc[5]),
        .R(wctl_data1));
  FDRE \wfrmpsc_reg[6] 
       (.C(clk),
        .CE(wfrmpsc0),
        .D(bdatw[6]),
        .Q(wfrmpsc[6]),
        .R(wctl_data1));
  FDRE \wfrmpsc_reg[7] 
       (.C(clk),
        .CE(wfrmpsc0),
        .D(bdatw[7]),
        .Q(wfrmpsc[7]),
        .R(wctl_data1));
  LUT3 #(
    .INIT(8'h40)) 
    \wfrx_dati[0]_INST_0 
       (.I0(wfrx_full),
        .I1(wctl_rxwr),
        .I2(wctl_data[0]),
        .O(wfrx_dati[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \wfrx_dati[1]_INST_0 
       (.I0(wfrx_full),
        .I1(wctl_rxwr),
        .I2(wctl_data[1]),
        .O(wfrx_dati[1]));
  LUT3 #(
    .INIT(8'h40)) 
    \wfrx_dati[2]_INST_0 
       (.I0(wfrx_full),
        .I1(wctl_rxwr),
        .I2(wctl_data[2]),
        .O(wfrx_dati[2]));
  LUT3 #(
    .INIT(8'h40)) 
    \wfrx_dati[3]_INST_0 
       (.I0(wfrx_full),
        .I1(wctl_rxwr),
        .I2(wctl_data[3]),
        .O(wfrx_dati[3]));
  LUT3 #(
    .INIT(8'h40)) 
    \wfrx_dati[4]_INST_0 
       (.I0(wfrx_full),
        .I1(wctl_rxwr),
        .I2(wctl_data[4]),
        .O(wfrx_dati[4]));
  LUT3 #(
    .INIT(8'h40)) 
    \wfrx_dati[5]_INST_0 
       (.I0(wfrx_full),
        .I1(wctl_rxwr),
        .I2(wctl_data[5]),
        .O(wfrx_dati[5]));
  LUT3 #(
    .INIT(8'h40)) 
    \wfrx_dati[6]_INST_0 
       (.I0(wfrx_full),
        .I1(wctl_rxwr),
        .I2(wctl_data[6]),
        .O(wfrx_dati[6]));
  LUT3 #(
    .INIT(8'h40)) 
    \wfrx_dati[7]_INST_0 
       (.I0(wfrx_full),
        .I1(wctl_rxwr),
        .I2(wctl_data[7]),
        .O(wfrx_dati[7]));
  LUT4 #(
    .INIT(16'h0040)) 
    wfrx_read_INST_0
       (.I0(wfrx_empty),
        .I1(bcmdr),
        .I2(badr[2]),
        .I3(wfrx_read_INST_0_i_1_n_0),
        .O(wfrx_read));
  LUT4 #(
    .INIT(16'hFFFE)) 
    wfrx_read_INST_0_i_1
       (.I0(bcs_wfrm_n),
        .I1(badr[0]),
        .I2(badr[3]),
        .I3(badr[1]),
        .O(wfrx_read_INST_0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    wfrx_write_INST_0
       (.I0(wctl_rxwr),
        .I1(wfrx_full),
        .O(wfrx_write));
  LUT2 #(
    .INIT(4'h8)) 
    \wftx_dati[0]_INST_0 
       (.I0(wftx_write),
        .I1(bdatw[0]),
        .O(wftx_dati[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \wftx_dati[1]_INST_0 
       (.I0(wftx_write),
        .I1(bdatw[1]),
        .O(wftx_dati[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \wftx_dati[2]_INST_0 
       (.I0(wftx_write),
        .I1(bdatw[2]),
        .O(wftx_dati[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \wftx_dati[3]_INST_0 
       (.I0(wftx_write),
        .I1(bdatw[3]),
        .O(wftx_dati[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \wftx_dati[4]_INST_0 
       (.I0(wftx_write),
        .I1(bdatw[4]),
        .O(wftx_dati[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \wftx_dati[5]_INST_0 
       (.I0(wftx_write),
        .I1(bdatw[5]),
        .O(wftx_dati[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \wftx_dati[6]_INST_0 
       (.I0(wftx_write),
        .I1(bdatw[6]),
        .O(wftx_dati[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \wftx_dati[7]_INST_0 
       (.I0(wftx_write),
        .I1(bdatw[7]),
        .O(wftx_dati[7]));
  LUT2 #(
    .INIT(4'hB)) 
    wftx_frst_INST_0
       (.I0(wctl_frst),
        .I1(rst_n),
        .O(wfrx_frst));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    wftx_write_INST_0
       (.I0(wftx_full),
        .I1(badr[2]),
        .I2(bcmdb),
        .I3(bcmdw),
        .I4(brdy),
        .I5(wfrx_read_INST_0_i_1_n_0),
        .O(wftx_write));
  LUT1 #(
    .INIT(2'h1)) 
    \wpsc_cnt[0]_i_1 
       (.I0(wpsc_cnt_reg[0]),
        .O(wpsc_cnt_nx[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \wpsc_cnt[1]_i_1 
       (.I0(wpsc_cnt_reg[0]),
        .I1(wpsc_cnt_reg[1]),
        .O(wpsc_cnt_nx[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \wpsc_cnt[2]_i_1 
       (.I0(wpsc_cnt_reg[1]),
        .I1(wpsc_cnt_reg[0]),
        .I2(wpsc_cnt_reg[2]),
        .O(wpsc_cnt_nx[2]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \wpsc_cnt[3]_i_1 
       (.I0(wpsc_cnt_reg[2]),
        .I1(wpsc_cnt_reg[0]),
        .I2(wpsc_cnt_reg[1]),
        .I3(wpsc_cnt_reg[3]),
        .O(wpsc_cnt_nx[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wpsc_cnt[4]_i_1 
       (.I0(wpsc_cnt_reg[3]),
        .I1(wpsc_cnt_reg[1]),
        .I2(wpsc_cnt_reg[0]),
        .I3(wpsc_cnt_reg[2]),
        .I4(wpsc_cnt_reg[4]),
        .O(wpsc_cnt_nx[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \wpsc_cnt[5]_i_1 
       (.I0(wpsc_cnt_reg[4]),
        .I1(wpsc_cnt_reg[2]),
        .I2(wpsc_cnt_reg[0]),
        .I3(wpsc_cnt_reg[1]),
        .I4(wpsc_cnt_reg[3]),
        .I5(wpsc_cnt_reg[5]),
        .O(\wpsc_cnt[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wpsc_cnt[6]_i_1 
       (.I0(\wpsc_cnt[7]_i_3_n_0 ),
        .I1(wpsc_cnt_reg[6]),
        .O(wpsc_cnt_nx[6]));
  LUT3 #(
    .INIT(8'hD2)) 
    \wpsc_cnt[7]_i_2 
       (.I0(wpsc_cnt_reg[6]),
        .I1(\wpsc_cnt[7]_i_3_n_0 ),
        .I2(wpsc_cnt_reg[7]),
        .O(wpsc_cnt_nx[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \wpsc_cnt[7]_i_3 
       (.I0(wpsc_cnt_reg[4]),
        .I1(wpsc_cnt_reg[2]),
        .I2(wpsc_cnt_reg[0]),
        .I3(wpsc_cnt_reg[1]),
        .I4(wpsc_cnt_reg[3]),
        .I5(wpsc_cnt_reg[5]),
        .O(\wpsc_cnt[7]_i_3_n_0 ));
  FDRE \wpsc_cnt_reg[0] 
       (.C(clk),
        .CE(wctl_busy),
        .D(wpsc_cnt_nx[0]),
        .Q(wpsc_cnt_reg[0]),
        .R(wctl_n_2));
  FDRE \wpsc_cnt_reg[1] 
       (.C(clk),
        .CE(wctl_busy),
        .D(wpsc_cnt_nx[1]),
        .Q(wpsc_cnt_reg[1]),
        .R(wctl_n_2));
  FDRE \wpsc_cnt_reg[2] 
       (.C(clk),
        .CE(wctl_busy),
        .D(wpsc_cnt_nx[2]),
        .Q(wpsc_cnt_reg[2]),
        .R(wctl_n_2));
  FDRE \wpsc_cnt_reg[3] 
       (.C(clk),
        .CE(wctl_busy),
        .D(wpsc_cnt_nx[3]),
        .Q(wpsc_cnt_reg[3]),
        .R(wctl_n_2));
  FDRE \wpsc_cnt_reg[4] 
       (.C(clk),
        .CE(wctl_busy),
        .D(wpsc_cnt_nx[4]),
        .Q(wpsc_cnt_reg[4]),
        .R(wctl_n_2));
  FDRE \wpsc_cnt_reg[5] 
       (.C(clk),
        .CE(wctl_busy),
        .D(\wpsc_cnt[5]_i_1_n_0 ),
        .Q(wpsc_cnt_reg[5]),
        .R(wctl_n_2));
  FDRE \wpsc_cnt_reg[6] 
       (.C(clk),
        .CE(wctl_busy),
        .D(wpsc_cnt_nx[6]),
        .Q(wpsc_cnt_reg[6]),
        .R(wctl_n_2));
  FDRE \wpsc_cnt_reg[7] 
       (.C(clk),
        .CE(wctl_busy),
        .D(wpsc_cnt_nx[7]),
        .Q(wpsc_cnt_reg[7]),
        .R(wctl_n_2));
endmodule

module wfrm_fsm
   (rst_n_0,
    rst_n_1,
    SR,
    bdatr,
    E,
    \stat_reg[1]_0 ,
    wftx_read,
    D,
    \wftx_dato[6] ,
    \wctl_data_cnt_reg[0] ,
    clk,
    rst_n,
    wfrm_enb,
    wftx_dato,
    wfrm_out,
    wctl_wfrmctl_rd,
    wctl_wfrmpsc_rd,
    Q,
    wftx_empty,
    \wpsc_cnt_reg[0] ,
    \wctl_dur_cnt_reg[5] ,
    wftx_read_INST_0_i_3_0,
    wfrx_dato,
    wctl_wfrmrxd_rd,
    wctl_lfst,
    wctl_rxwr_reg);
  output rst_n_0;
  output rst_n_1;
  output [0:0]SR;
  output [0:0]bdatr;
  output [0:0]E;
  output [0:0]\stat_reg[1]_0 ;
  output wftx_read;
  output [5:0]D;
  output [0:0]\wftx_dato[6] ;
  output \wctl_data_cnt_reg[0] ;
  input clk;
  input rst_n;
  input wfrm_enb;
  input [7:0]wftx_dato;
  input wfrm_out;
  input wctl_wfrmctl_rd;
  input wctl_wfrmpsc_rd;
  input [7:0]Q;
  input wftx_empty;
  input \wpsc_cnt_reg[0] ;
  input [5:0]\wctl_dur_cnt_reg[5] ;
  input [7:0]wftx_read_INST_0_i_3_0;
  input [1:0]wfrx_dato;
  input wctl_wfrmrxd_rd;
  input wctl_lfst;
  input [2:0]wctl_rxwr_reg;

  wire \<const0> ;
  wire \<const1> ;
  wire [5:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [0:0]bdatr;
  wire \bdatr[1]_INST_0_i_2_n_0 ;
  wire clk;
  wire [4:3]p_0_in;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_1;
  wire \stat[0]_i_1_n_0 ;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[1]_i_1_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire \stat[1]_i_4_n_0 ;
  wire \stat[1]_i_5_n_0 ;
  wire \stat[1]_i_6_n_0 ;
  wire [0:0]\stat_reg[1]_0 ;
  wire \wctl_data_cnt_reg[0] ;
  wire \wctl_dur_cnt[2]_i_2_n_0 ;
  wire \wctl_dur_cnt[3]_i_2_n_0 ;
  wire \wctl_dur_cnt[3]_i_3_n_0 ;
  wire \wctl_dur_cnt[3]_i_4_n_0 ;
  wire \wctl_dur_cnt[3]_i_5_n_0 ;
  wire \wctl_dur_cnt[4]_i_2_n_0 ;
  wire \wctl_dur_cnt[4]_i_3_n_0 ;
  wire \wctl_dur_cnt[4]_i_4_n_0 ;
  wire \wctl_dur_cnt[4]_i_5_n_0 ;
  wire \wctl_dur_cnt[4]_i_6_n_0 ;
  wire \wctl_dur_cnt[4]_i_7_n_0 ;
  wire \wctl_dur_cnt[4]_i_8_n_0 ;
  wire \wctl_dur_cnt[5]_i_10_n_0 ;
  wire \wctl_dur_cnt[5]_i_11_n_0 ;
  wire \wctl_dur_cnt[5]_i_3_n_0 ;
  wire \wctl_dur_cnt[5]_i_4_n_0 ;
  wire \wctl_dur_cnt[5]_i_5_n_0 ;
  wire \wctl_dur_cnt[5]_i_6_n_0 ;
  wire \wctl_dur_cnt[5]_i_7_n_0 ;
  wire \wctl_dur_cnt[5]_i_8_n_0 ;
  wire \wctl_dur_cnt[5]_i_9_n_0 ;
  wire [5:0]\wctl_dur_cnt_reg[5] ;
  wire wctl_lfst;
  wire wctl_rxwr_i_2_n_0;
  wire [2:0]wctl_rxwr_reg;
  wire wctl_wfrmctl_rd;
  wire wctl_wfrmpsc_rd;
  wire wctl_wfrmrxd_rd;
  wire wfrm_enb;
  wire wfrm_out;
  wire [1:0]wfrx_dato;
  wire [7:0]wftx_dato;
  wire [0:0]\wftx_dato[6] ;
  wire wftx_empty;
  wire wftx_read;
  wire wftx_read_INST_0_i_10_n_0;
  wire wftx_read_INST_0_i_11_n_0;
  wire wftx_read_INST_0_i_12_n_0;
  wire wftx_read_INST_0_i_1_n_0;
  wire wftx_read_INST_0_i_2_n_0;
  wire [7:0]wftx_read_INST_0_i_3_0;
  wire wftx_read_INST_0_i_3_n_0;
  wire wftx_read_INST_0_i_4_n_0;
  wire wftx_read_INST_0_i_5_n_0;
  wire wftx_read_INST_0_i_6_n_0;
  wire wftx_read_INST_0_i_7_n_0;
  wire wftx_read_INST_0_i_8_n_0;
  wire wftx_read_INST_0_i_9_n_0;
  wire \wpsc_cnt_reg[0] ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFFFFB888)) 
    \bdatr[1]_INST_0 
       (.I0(E),
        .I1(wctl_wfrmctl_rd),
        .I2(wctl_wfrmpsc_rd),
        .I3(Q[1]),
        .I4(\bdatr[1]_INST_0_i_2_n_0 ),
        .O(bdatr));
  LUT4 #(
    .INIT(16'h0FF4)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(wftx_empty),
        .I1(\wpsc_cnt_reg[0] ),
        .I2(p_0_in[4]),
        .I3(p_0_in[3]),
        .O(E));
  LUT6 #(
    .INIT(64'h00000A0000000C00)) 
    \bdatr[1]_INST_0_i_2 
       (.I0(wfrx_dato[1]),
        .I1(wfrx_dato[0]),
        .I2(wctl_wfrmctl_rd),
        .I3(wctl_wfrmrxd_rd),
        .I4(wctl_wfrmpsc_rd),
        .I5(wctl_lfst),
        .O(\bdatr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1055101000000000)) 
    \stat[0]_i_1 
       (.I0(wftx_read_INST_0_i_4_n_0),
        .I1(wftx_read_INST_0_i_3_n_0),
        .I2(\stat[0]_i_2_n_0 ),
        .I3(p_0_in[4]),
        .I4(wftx_read_INST_0_i_1_n_0),
        .I5(rst_n),
        .O(\stat[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0EFF)) 
    \stat[0]_i_2 
       (.I0(wftx_read_INST_0_i_7_n_0),
        .I1(wftx_read_INST_0_i_6_n_0),
        .I2(p_0_in[4]),
        .I3(p_0_in[3]),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA8EC00000000)) 
    \stat[1]_i_1 
       (.I0(wftx_read_INST_0_i_3_n_0),
        .I1(\stat[1]_i_2_n_0 ),
        .I2(\stat[1]_i_3_n_0 ),
        .I3(\stat[1]_i_4_n_0 ),
        .I4(\stat[1]_i_5_n_0 ),
        .I5(rst_n),
        .O(\stat[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[1]_i_2 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .O(\stat[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \stat[1]_i_3 
       (.I0(\stat[1]_i_6_n_0 ),
        .I1(wftx_read_INST_0_i_6_n_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\stat[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h66F6)) 
    \stat[1]_i_4 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(\wpsc_cnt_reg[0] ),
        .I3(wftx_empty),
        .O(\stat[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002030000)) 
    \stat[1]_i_5 
       (.I0(wftx_read_INST_0_i_5_n_0),
        .I1(wftx_read_INST_0_i_6_n_0),
        .I2(wftx_read_INST_0_i_7_n_0),
        .I3(wftx_dato[0]),
        .I4(p_0_in[3]),
        .I5(p_0_in[4]),
        .O(\stat[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[1]_i_6 
       (.I0(p_0_in[3]),
        .I1(p_0_in[4]),
        .O(\stat[1]_i_6_n_0 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\stat[0]_i_1_n_0 ),
        .Q(p_0_in[3]),
        .R(\<const0> ));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\stat[1]_i_1_n_0 ),
        .Q(p_0_in[4]),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h08)) 
    \wctl_data_cnt[2]_i_1 
       (.I0(wftx_dato[6]),
        .I1(p_0_in[3]),
        .I2(wftx_dato[7]),
        .O(\wftx_dato[6] ));
  LUT4 #(
    .INIT(16'hC535)) 
    \wctl_dur_cnt[0]_i_1 
       (.I0(\wctl_dur_cnt_reg[5] [0]),
        .I1(wftx_read_INST_0_i_2_n_0),
        .I2(p_0_in[3]),
        .I3(wftx_dato[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFF09999000F9999)) 
    \wctl_dur_cnt[1]_i_1 
       (.I0(\wctl_dur_cnt_reg[5] [0]),
        .I1(\wctl_dur_cnt_reg[5] [1]),
        .I2(wftx_read_INST_0_i_2_n_0),
        .I3(wftx_dato[0]),
        .I4(p_0_in[3]),
        .I5(wftx_dato[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAA88AA8D55775572)) 
    \wctl_dur_cnt[2]_i_1 
       (.I0(p_0_in[3]),
        .I1(wftx_dato[1]),
        .I2(\wctl_dur_cnt_reg[5] [1]),
        .I3(\wctl_dur_cnt[4]_i_4_n_0 ),
        .I4(\wctl_dur_cnt_reg[5] [0]),
        .I5(\wctl_dur_cnt[2]_i_2_n_0 ),
        .O(D[2]));
  LUT3 #(
    .INIT(8'h8B)) 
    \wctl_dur_cnt[2]_i_2 
       (.I0(wftx_dato[2]),
        .I1(p_0_in[3]),
        .I2(\wctl_dur_cnt_reg[5] [2]),
        .O(\wctl_dur_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \wctl_dur_cnt[3]_i_1 
       (.I0(\wctl_dur_cnt[4]_i_2_n_0 ),
        .I1(\wctl_dur_cnt_reg[5] [3]),
        .I2(\wctl_dur_cnt[3]_i_2_n_0 ),
        .I3(\wctl_dur_cnt[4]_i_4_n_0 ),
        .I4(wftx_dato[3]),
        .I5(\wctl_dur_cnt[3]_i_3_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \wctl_dur_cnt[3]_i_2 
       (.I0(\wctl_dur_cnt[3]_i_4_n_0 ),
        .I1(\wctl_dur_cnt[4]_i_8_n_0 ),
        .I2(p_0_in[3]),
        .I3(wftx_dato[0]),
        .I4(wftx_read_INST_0_i_7_n_0),
        .I5(wftx_read_INST_0_i_6_n_0),
        .O(\wctl_dur_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00E0E00000E0E0)) 
    \wctl_dur_cnt[3]_i_3 
       (.I0(\wctl_dur_cnt_reg[5] [1]),
        .I1(\wctl_dur_cnt_reg[5] [2]),
        .I2(\wctl_dur_cnt_reg[5] [3]),
        .I3(\wctl_dur_cnt[3]_i_5_n_0 ),
        .I4(p_0_in[3]),
        .I5(wftx_dato[3]),
        .O(\wctl_dur_cnt[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \wctl_dur_cnt[3]_i_4 
       (.I0(p_0_in[3]),
        .I1(\wctl_dur_cnt_reg[5] [0]),
        .I2(\wctl_dur_cnt_reg[5] [3]),
        .I3(\wctl_dur_cnt_reg[5] [1]),
        .I4(\wctl_dur_cnt_reg[5] [2]),
        .O(\wctl_dur_cnt[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \wctl_dur_cnt[3]_i_5 
       (.I0(wftx_dato[1]),
        .I1(wftx_dato[2]),
        .O(\wctl_dur_cnt[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \wctl_dur_cnt[4]_i_1 
       (.I0(\wctl_dur_cnt[4]_i_2_n_0 ),
        .I1(\wctl_dur_cnt_reg[5] [4]),
        .I2(\wctl_dur_cnt[4]_i_3_n_0 ),
        .I3(\wctl_dur_cnt[4]_i_4_n_0 ),
        .I4(wftx_dato[4]),
        .I5(\wctl_dur_cnt[4]_i_5_n_0 ),
        .O(D[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \wctl_dur_cnt[4]_i_2 
       (.I0(\wctl_dur_cnt_reg[5] [0]),
        .I1(p_0_in[3]),
        .O(\wctl_dur_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \wctl_dur_cnt[4]_i_3 
       (.I0(\wctl_dur_cnt[4]_i_6_n_0 ),
        .I1(\wctl_dur_cnt[5]_i_11_n_0 ),
        .I2(p_0_in[3]),
        .I3(wftx_dato[0]),
        .I4(wftx_read_INST_0_i_7_n_0),
        .I5(wftx_read_INST_0_i_6_n_0),
        .O(\wctl_dur_cnt[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \wctl_dur_cnt[4]_i_4 
       (.I0(wftx_dato[0]),
        .I1(wftx_read_INST_0_i_7_n_0),
        .I2(wftx_read_INST_0_i_6_n_0),
        .I3(p_0_in[3]),
        .O(\wctl_dur_cnt[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0880088)) 
    \wctl_dur_cnt[4]_i_5 
       (.I0(\wctl_dur_cnt[4]_i_7_n_0 ),
        .I1(\wctl_dur_cnt_reg[5] [4]),
        .I2(\wctl_dur_cnt[4]_i_8_n_0 ),
        .I3(p_0_in[3]),
        .I4(wftx_dato[4]),
        .O(\wctl_dur_cnt[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wctl_dur_cnt[4]_i_6 
       (.I0(p_0_in[3]),
        .I1(\wctl_dur_cnt_reg[5] [0]),
        .I2(\wctl_dur_cnt_reg[5] [4]),
        .I3(\wctl_dur_cnt_reg[5] [2]),
        .I4(\wctl_dur_cnt_reg[5] [1]),
        .I5(\wctl_dur_cnt_reg[5] [3]),
        .O(\wctl_dur_cnt[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \wctl_dur_cnt[4]_i_7 
       (.I0(\wctl_dur_cnt_reg[5] [2]),
        .I1(\wctl_dur_cnt_reg[5] [1]),
        .I2(\wctl_dur_cnt_reg[5] [3]),
        .O(\wctl_dur_cnt[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \wctl_dur_cnt[4]_i_8 
       (.I0(wftx_dato[2]),
        .I1(wftx_dato[1]),
        .I2(wftx_dato[3]),
        .O(\wctl_dur_cnt[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4454)) 
    \wctl_dur_cnt[5]_i_1 
       (.I0(\wctl_dur_cnt[5]_i_3_n_0 ),
        .I1(p_0_in[4]),
        .I2(\wpsc_cnt_reg[0] ),
        .I3(wftx_empty),
        .I4(p_0_in[3]),
        .O(\stat_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wctl_dur_cnt[5]_i_10 
       (.I0(\wctl_dur_cnt_reg[5] [3]),
        .I1(\wctl_dur_cnt_reg[5] [1]),
        .I2(\wctl_dur_cnt_reg[5] [2]),
        .I3(\wctl_dur_cnt_reg[5] [4]),
        .O(\wctl_dur_cnt[5]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wctl_dur_cnt[5]_i_11 
       (.I0(wftx_dato[3]),
        .I1(wftx_dato[1]),
        .I2(wftx_dato[2]),
        .I3(wftx_dato[4]),
        .O(\wctl_dur_cnt[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \wctl_dur_cnt[5]_i_2 
       (.I0(\wctl_dur_cnt[5]_i_4_n_0 ),
        .I1(\wctl_dur_cnt[5]_i_5_n_0 ),
        .I2(wftx_read_INST_0_i_5_n_0),
        .I3(\wctl_dur_cnt[5]_i_6_n_0 ),
        .I4(\wctl_dur_cnt[5]_i_7_n_0 ),
        .I5(\wctl_dur_cnt[5]_i_8_n_0 ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wctl_dur_cnt[5]_i_3 
       (.I0(wftx_read_INST_0_i_8_n_0),
        .I1(wftx_read_INST_0_i_9_n_0),
        .I2(wftx_read_INST_0_i_10_n_0),
        .I3(wftx_read_INST_0_i_11_n_0),
        .O(\wctl_dur_cnt[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \wctl_dur_cnt[5]_i_4 
       (.I0(p_0_in[3]),
        .I1(\wctl_dur_cnt_reg[5] [0]),
        .I2(\wctl_dur_cnt_reg[5] [5]),
        .O(\wctl_dur_cnt[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \wctl_dur_cnt[5]_i_5 
       (.I0(\wctl_dur_cnt[5]_i_9_n_0 ),
        .I1(\wctl_dur_cnt_reg[5] [5]),
        .I2(\wctl_dur_cnt_reg[5] [3]),
        .I3(\wctl_dur_cnt_reg[5] [1]),
        .I4(\wctl_dur_cnt_reg[5] [2]),
        .I5(\wctl_dur_cnt_reg[5] [4]),
        .O(\wctl_dur_cnt[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \wctl_dur_cnt[5]_i_6 
       (.I0(p_0_in[3]),
        .I1(wftx_dato[0]),
        .I2(wftx_read_INST_0_i_7_n_0),
        .I3(wftx_read_INST_0_i_6_n_0),
        .O(\wctl_dur_cnt[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    \wctl_dur_cnt[5]_i_7 
       (.I0(p_0_in[3]),
        .I1(wftx_read_INST_0_i_6_n_0),
        .I2(wftx_read_INST_0_i_7_n_0),
        .I3(wftx_dato[0]),
        .I4(wftx_dato[5]),
        .O(\wctl_dur_cnt[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF0880088)) 
    \wctl_dur_cnt[5]_i_8 
       (.I0(\wctl_dur_cnt[5]_i_10_n_0 ),
        .I1(\wctl_dur_cnt_reg[5] [5]),
        .I2(\wctl_dur_cnt[5]_i_11_n_0 ),
        .I3(p_0_in[3]),
        .I4(wftx_dato[5]),
        .O(\wctl_dur_cnt[5]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \wctl_dur_cnt[5]_i_9 
       (.I0(\wctl_dur_cnt_reg[5] [0]),
        .I1(p_0_in[3]),
        .O(\wctl_dur_cnt[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    wctl_rxwr_i_1
       (.I0(wctl_rxwr_reg[0]),
        .I1(wctl_rxwr_reg[1]),
        .I2(wftx_dato[6]),
        .I3(wctl_rxwr_reg[2]),
        .I4(wctl_rxwr_i_2_n_0),
        .I5(rst_n),
        .O(\wctl_data_cnt_reg[0] ));
  LUT2 #(
    .INIT(4'hB)) 
    wctl_rxwr_i_2
       (.I0(wftx_dato[7]),
        .I1(p_0_in[3]),
        .O(wctl_rxwr_i_2_n_0));
  LUT4 #(
    .INIT(16'hA808)) 
    wfrm_enb_rg_i_1
       (.I0(rst_n),
        .I1(wfrm_enb),
        .I2(p_0_in[3]),
        .I3(wftx_dato[7]),
        .O(rst_n_0));
  LUT5 #(
    .INIT(32'hA8080808)) 
    wfrm_out_rg_i_1
       (.I0(rst_n),
        .I1(wfrm_out),
        .I2(p_0_in[3]),
        .I3(wftx_dato[6]),
        .I4(wftx_dato[7]),
        .O(rst_n_1));
  LUT6 #(
    .INIT(64'h0000000022223F2F)) 
    wftx_read_INST_0
       (.I0(wftx_read_INST_0_i_1_n_0),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .I3(wftx_read_INST_0_i_2_n_0),
        .I4(wftx_read_INST_0_i_3_n_0),
        .I5(wftx_read_INST_0_i_4_n_0),
        .O(wftx_read));
  LUT5 #(
    .INIT(32'h0004FFFF)) 
    wftx_read_INST_0_i_1
       (.I0(wftx_read_INST_0_i_5_n_0),
        .I1(wftx_dato[0]),
        .I2(wftx_read_INST_0_i_6_n_0),
        .I3(wftx_read_INST_0_i_7_n_0),
        .I4(p_0_in[3]),
        .O(wftx_read_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    wftx_read_INST_0_i_10
       (.I0(wftx_read_INST_0_i_3_0[5]),
        .I1(Q[5]),
        .I2(wftx_read_INST_0_i_3_0[2]),
        .I3(Q[2]),
        .O(wftx_read_INST_0_i_10_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    wftx_read_INST_0_i_11
       (.I0(wftx_read_INST_0_i_3_0[4]),
        .I1(Q[4]),
        .I2(wftx_read_INST_0_i_3_0[3]),
        .I3(Q[3]),
        .O(wftx_read_INST_0_i_11_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    wftx_read_INST_0_i_12
       (.I0(\wctl_dur_cnt_reg[5] [4]),
        .I1(\wctl_dur_cnt_reg[5] [2]),
        .I2(\wctl_dur_cnt_reg[5] [1]),
        .I3(\wctl_dur_cnt_reg[5] [3]),
        .I4(\wctl_dur_cnt_reg[5] [5]),
        .O(wftx_read_INST_0_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    wftx_read_INST_0_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(wftx_read_INST_0_i_6_n_0),
        .O(wftx_read_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    wftx_read_INST_0_i_3
       (.I0(\wctl_dur_cnt_reg[5] [0]),
        .I1(wftx_read_INST_0_i_8_n_0),
        .I2(wftx_read_INST_0_i_9_n_0),
        .I3(wftx_read_INST_0_i_10_n_0),
        .I4(wftx_read_INST_0_i_11_n_0),
        .I5(wftx_read_INST_0_i_12_n_0),
        .O(wftx_read_INST_0_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    wftx_read_INST_0_i_4
       (.I0(wftx_empty),
        .I1(\wpsc_cnt_reg[0] ),
        .O(wftx_read_INST_0_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    wftx_read_INST_0_i_5
       (.I0(wftx_dato[4]),
        .I1(wftx_dato[2]),
        .I2(wftx_dato[1]),
        .I3(wftx_dato[3]),
        .I4(wftx_dato[5]),
        .O(wftx_read_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    wftx_read_INST_0_i_6
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[7]),
        .I3(Q[6]),
        .O(wftx_read_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    wftx_read_INST_0_i_7
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(wftx_read_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    wftx_read_INST_0_i_8
       (.I0(wftx_read_INST_0_i_3_0[1]),
        .I1(Q[1]),
        .I2(wftx_read_INST_0_i_3_0[0]),
        .I3(Q[0]),
        .O(wftx_read_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    wftx_read_INST_0_i_9
       (.I0(wftx_read_INST_0_i_3_0[7]),
        .I1(Q[7]),
        .I2(wftx_read_INST_0_i_3_0[6]),
        .I3(Q[6]),
        .O(wftx_read_INST_0_i_9_n_0));
  LUT6 #(
    .INIT(64'h575757575D5DFF5F)) 
    \wpsc_cnt[7]_i_1 
       (.I0(rst_n),
        .I1(p_0_in[3]),
        .I2(\wctl_dur_cnt[5]_i_3_n_0 ),
        .I3(wftx_read_INST_0_i_1_n_0),
        .I4(wftx_read_INST_0_i_4_n_0),
        .I5(p_0_in[4]),
        .O(SR));
endmodule
