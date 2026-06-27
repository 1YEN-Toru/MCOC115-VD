
module spib_bctl_fsm
   (badr,
    \stat_reg[1]_0 ,
    bcmd,
    SR,
    \stat_reg[2]_0 ,
    Q,
    D,
    brdy,
    \stat_reg[1]_1 ,
    \bcmd[1] ,
    rst_n,
    bctl_bcmdr_bc,
    clk);
  output [14:0]badr;
  output \stat_reg[1]_0 ;
  output [0:0]bcmd;
  output [0:0]SR;
  output \stat_reg[2]_0 ;
  input [15:0]Q;
  input [1:0]D;
  input brdy;
  input [0:0]\stat_reg[1]_1 ;
  input [1:0]\bcmd[1] ;
  input rst_n;
  input bctl_bcmdr_bc;
  input clk;

  wire \<const1> ;
  wire [1:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire [14:0]badr;
  wire [0:0]bcmd;
  wire [1:0]\bcmd[1] ;
  wire bctl_adr_det__0;
  wire bctl_bcmdr_bc;
  wire bctl_dat_det__0;
  wire brdy;
  wire clk;
  wire rst_n;
  wire [2:0]stat;
  wire \stat[1]_i_1_n_0 ;
  wire \stat[1]_i_3_n_0 ;
  wire [2:0]stat_nx;
  wire \stat_reg[1]_0 ;
  wire [0:0]\stat_reg[1]_1 ;
  wire \stat_reg[2]_0 ;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFF40000000000000)) 
    \badr[10]_INST_0 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\stat_reg[1]_0 ),
        .I4(Q[10]),
        .I5(D[0]),
        .O(badr[9]));
  LUT6 #(
    .INIT(64'hFF40000000000000)) 
    \badr[11]_INST_0 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\stat_reg[1]_0 ),
        .I4(Q[11]),
        .I5(D[0]),
        .O(badr[10]));
  LUT6 #(
    .INIT(64'hFF40000000000000)) 
    \badr[12]_INST_0 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\stat_reg[1]_0 ),
        .I4(Q[12]),
        .I5(D[0]),
        .O(badr[11]));
  LUT6 #(
    .INIT(64'hFF40000000000000)) 
    \badr[13]_INST_0 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\stat_reg[1]_0 ),
        .I4(Q[13]),
        .I5(D[0]),
        .O(badr[12]));
  LUT6 #(
    .INIT(64'hFF40000000000000)) 
    \badr[14]_INST_0 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\stat_reg[1]_0 ),
        .I4(Q[14]),
        .I5(D[0]),
        .O(badr[13]));
  LUT6 #(
    .INIT(64'hFF40000000000000)) 
    \badr[15]_INST_0 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\stat_reg[1]_0 ),
        .I4(Q[15]),
        .I5(D[0]),
        .O(badr[14]));
  LUT6 #(
    .INIT(64'hFF40000000000000)) 
    \badr[1]_INST_0 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\stat_reg[1]_0 ),
        .I4(Q[1]),
        .I5(D[0]),
        .O(badr[0]));
  LUT6 #(
    .INIT(64'hFF40000000000000)) 
    \badr[2]_INST_0 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\stat_reg[1]_0 ),
        .I4(Q[2]),
        .I5(D[0]),
        .O(badr[1]));
  LUT6 #(
    .INIT(64'hFF40000000000000)) 
    \badr[3]_INST_0 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\stat_reg[1]_0 ),
        .I4(Q[3]),
        .I5(D[0]),
        .O(badr[2]));
  LUT6 #(
    .INIT(64'hFF40000000000000)) 
    \badr[4]_INST_0 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\stat_reg[1]_0 ),
        .I4(Q[4]),
        .I5(D[0]),
        .O(badr[3]));
  LUT6 #(
    .INIT(64'hFF40000000000000)) 
    \badr[5]_INST_0 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\stat_reg[1]_0 ),
        .I4(Q[5]),
        .I5(D[0]),
        .O(badr[4]));
  LUT6 #(
    .INIT(64'hFF40000000000000)) 
    \badr[6]_INST_0 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\stat_reg[1]_0 ),
        .I4(Q[6]),
        .I5(D[0]),
        .O(badr[5]));
  LUT6 #(
    .INIT(64'hFF40000000000000)) 
    \badr[7]_INST_0 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\stat_reg[1]_0 ),
        .I4(Q[7]),
        .I5(D[0]),
        .O(badr[6]));
  LUT6 #(
    .INIT(64'hFF40000000000000)) 
    \badr[8]_INST_0 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\stat_reg[1]_0 ),
        .I4(Q[8]),
        .I5(D[0]),
        .O(badr[7]));
  LUT6 #(
    .INIT(64'hFF40000000000000)) 
    \badr[9]_INST_0 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(\stat_reg[1]_0 ),
        .I4(Q[9]),
        .I5(D[0]),
        .O(badr[8]));
  LUT3 #(
    .INIT(8'h40)) 
    \bcmd[0]_INST_0 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .O(bcmd));
  LUT5 #(
    .INIT(32'h00002262)) 
    \bcmd[1]_INST_0 
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(\bcmd[1] [0]),
        .I3(\bcmd[1] [1]),
        .I4(stat[2]),
        .O(\stat_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    bctl_bcmdr_bc_i_1
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(stat[1]),
        .I3(brdy),
        .I4(bctl_bcmdr_bc),
        .O(\stat_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0004050450045504)) 
    \stat[0]_i_1 
       (.I0(stat[2]),
        .I1(bctl_adr_det__0),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(bctl_dat_det__0),
        .I5(brdy),
        .O(stat_nx[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[0]_i_2 
       (.I0(D[1]),
        .I1(\stat_reg[1]_1 ),
        .O(bctl_adr_det__0));
  LUT6 #(
    .INIT(64'h00000000555F404F)) 
    \stat[1]_i_1 
       (.I0(brdy),
        .I1(bctl_dat_det__0),
        .I2(stat[0]),
        .I3(\stat[1]_i_3_n_0 ),
        .I4(stat[1]),
        .I5(stat[2]),
        .O(\stat[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \stat[1]_i_2 
       (.I0(\bcmd[1] [0]),
        .I1(\bcmd[1] [1]),
        .O(bctl_dat_det__0));
  LUT6 #(
    .INIT(64'hBBBB8BBBBBBBBBBB)) 
    \stat[1]_i_3 
       (.I0(brdy),
        .I1(stat[1]),
        .I2(Q[0]),
        .I3(D[0]),
        .I4(\stat_reg[1]_1 ),
        .I5(D[1]),
        .O(\stat[1]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \stat[2]_i_1 
       (.I0(rst_n),
        .O(SR));
  LUT4 #(
    .INIT(16'h4002)) 
    \stat[2]_i_2 
       (.I0(stat[2]),
        .I1(stat[1]),
        .I2(stat[0]),
        .I3(brdy),
        .O(stat_nx[2]));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(stat[0]),
        .R(SR));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\stat[1]_i_1_n_0 ),
        .Q(stat[1]),
        .R(SR));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[2]),
        .Q(stat[2]),
        .R(SR));
endmodule

module spib_bus_ctrl
   (badr,
    \stat_reg[1] ,
    bcmd,
    \bctl_bdatr_rg_reg[15]_0 ,
    clk,
    Q,
    sctl_adr_det,
    brdy,
    rst_n,
    sctl_dat_det,
    bdatr);
  output [14:0]badr;
  output \stat_reg[1] ;
  output [0:0]bcmd;
  output [15:0]\bctl_bdatr_rg_reg[15]_0 ;
  input clk;
  input [15:0]Q;
  input sctl_adr_det;
  input brdy;
  input rst_n;
  input sctl_dat_det;
  input [15:0]bdatr;

  wire \<const1> ;
  wire [15:0]Q;
  wire [14:0]badr;
  wire [0:0]bcmd;
  wire \bctl_adr_det_syn_reg_n_0_[0] ;
  wire \bctl_adr_det_syn_reg_n_0_[2] ;
  wire bctl_bcmdr_bc;
  wire bctl_bdatr_rg0;
  wire [15:0]\bctl_bdatr_rg_reg[15]_0 ;
  wire [2:0]bctl_dat_det_syn;
  wire [15:0]bdatr;
  wire brdy;
  wire clk;
  wire ctrl_n_17;
  wire ctrl_n_18;
  wire p_0_in0_in;
  wire rst_n;
  wire sctl_adr_det;
  wire sctl_dat_det;
  wire \stat_reg[1] ;

  VCC VCC
       (.P(\<const1> ));
  FDRE \bctl_adr_det_syn_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_adr_det),
        .Q(\bctl_adr_det_syn_reg_n_0_[0] ),
        .R(ctrl_n_17));
  FDRE \bctl_adr_det_syn_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\bctl_adr_det_syn_reg_n_0_[0] ),
        .Q(p_0_in0_in),
        .R(ctrl_n_17));
  FDRE \bctl_adr_det_syn_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in0_in),
        .Q(\bctl_adr_det_syn_reg_n_0_[2] ),
        .R(ctrl_n_17));
  FDRE bctl_bcmdr_bc_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(ctrl_n_18),
        .Q(bctl_bcmdr_bc),
        .R(ctrl_n_17));
  LUT2 #(
    .INIT(4'h8)) 
    \bctl_bdatr_rg[15]_i_1 
       (.I0(bctl_bcmdr_bc),
        .I1(brdy),
        .O(bctl_bdatr_rg0));
  FDRE \bctl_bdatr_rg_reg[0] 
       (.C(clk),
        .CE(bctl_bdatr_rg0),
        .D(bdatr[0]),
        .Q(\bctl_bdatr_rg_reg[15]_0 [0]),
        .R(ctrl_n_17));
  FDRE \bctl_bdatr_rg_reg[10] 
       (.C(clk),
        .CE(bctl_bdatr_rg0),
        .D(bdatr[10]),
        .Q(\bctl_bdatr_rg_reg[15]_0 [10]),
        .R(ctrl_n_17));
  FDRE \bctl_bdatr_rg_reg[11] 
       (.C(clk),
        .CE(bctl_bdatr_rg0),
        .D(bdatr[11]),
        .Q(\bctl_bdatr_rg_reg[15]_0 [11]),
        .R(ctrl_n_17));
  FDRE \bctl_bdatr_rg_reg[12] 
       (.C(clk),
        .CE(bctl_bdatr_rg0),
        .D(bdatr[12]),
        .Q(\bctl_bdatr_rg_reg[15]_0 [12]),
        .R(ctrl_n_17));
  FDRE \bctl_bdatr_rg_reg[13] 
       (.C(clk),
        .CE(bctl_bdatr_rg0),
        .D(bdatr[13]),
        .Q(\bctl_bdatr_rg_reg[15]_0 [13]),
        .R(ctrl_n_17));
  FDRE \bctl_bdatr_rg_reg[14] 
       (.C(clk),
        .CE(bctl_bdatr_rg0),
        .D(bdatr[14]),
        .Q(\bctl_bdatr_rg_reg[15]_0 [14]),
        .R(ctrl_n_17));
  FDRE \bctl_bdatr_rg_reg[15] 
       (.C(clk),
        .CE(bctl_bdatr_rg0),
        .D(bdatr[15]),
        .Q(\bctl_bdatr_rg_reg[15]_0 [15]),
        .R(ctrl_n_17));
  FDRE \bctl_bdatr_rg_reg[1] 
       (.C(clk),
        .CE(bctl_bdatr_rg0),
        .D(bdatr[1]),
        .Q(\bctl_bdatr_rg_reg[15]_0 [1]),
        .R(ctrl_n_17));
  FDRE \bctl_bdatr_rg_reg[2] 
       (.C(clk),
        .CE(bctl_bdatr_rg0),
        .D(bdatr[2]),
        .Q(\bctl_bdatr_rg_reg[15]_0 [2]),
        .R(ctrl_n_17));
  FDRE \bctl_bdatr_rg_reg[3] 
       (.C(clk),
        .CE(bctl_bdatr_rg0),
        .D(bdatr[3]),
        .Q(\bctl_bdatr_rg_reg[15]_0 [3]),
        .R(ctrl_n_17));
  FDRE \bctl_bdatr_rg_reg[4] 
       (.C(clk),
        .CE(bctl_bdatr_rg0),
        .D(bdatr[4]),
        .Q(\bctl_bdatr_rg_reg[15]_0 [4]),
        .R(ctrl_n_17));
  FDRE \bctl_bdatr_rg_reg[5] 
       (.C(clk),
        .CE(bctl_bdatr_rg0),
        .D(bdatr[5]),
        .Q(\bctl_bdatr_rg_reg[15]_0 [5]),
        .R(ctrl_n_17));
  FDRE \bctl_bdatr_rg_reg[6] 
       (.C(clk),
        .CE(bctl_bdatr_rg0),
        .D(bdatr[6]),
        .Q(\bctl_bdatr_rg_reg[15]_0 [6]),
        .R(ctrl_n_17));
  FDRE \bctl_bdatr_rg_reg[7] 
       (.C(clk),
        .CE(bctl_bdatr_rg0),
        .D(bdatr[7]),
        .Q(\bctl_bdatr_rg_reg[15]_0 [7]),
        .R(ctrl_n_17));
  FDRE \bctl_bdatr_rg_reg[8] 
       (.C(clk),
        .CE(bctl_bdatr_rg0),
        .D(bdatr[8]),
        .Q(\bctl_bdatr_rg_reg[15]_0 [8]),
        .R(ctrl_n_17));
  FDRE \bctl_bdatr_rg_reg[9] 
       (.C(clk),
        .CE(bctl_bdatr_rg0),
        .D(bdatr[9]),
        .Q(\bctl_bdatr_rg_reg[15]_0 [9]),
        .R(ctrl_n_17));
  FDRE \bctl_dat_det_syn_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(sctl_dat_det),
        .Q(bctl_dat_det_syn[0]),
        .R(ctrl_n_17));
  FDRE \bctl_dat_det_syn_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bctl_dat_det_syn[0]),
        .Q(bctl_dat_det_syn[1]),
        .R(ctrl_n_17));
  FDRE \bctl_dat_det_syn_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(bctl_dat_det_syn[1]),
        .Q(bctl_dat_det_syn[2]),
        .R(ctrl_n_17));
  spib_bctl_fsm ctrl
       (.D({p_0_in0_in,sctl_adr_det}),
        .Q(Q),
        .SR(ctrl_n_17),
        .badr(badr),
        .bcmd(bcmd),
        .\bcmd[1] (bctl_dat_det_syn[2:1]),
        .bctl_bcmdr_bc(bctl_bcmdr_bc),
        .brdy(brdy),
        .clk(clk),
        .rst_n(rst_n),
        .\stat_reg[1]_0 (\stat_reg[1] ),
        .\stat_reg[1]_1 (\bctl_adr_det_syn_reg_n_0_[2] ),
        .\stat_reg[2]_0 (ctrl_n_18));
endmodule

module spib_sctl_fsm
   (sctl_adr_det,
    sctl_dat_det_reg_0,
    D,
    \bctl_bdatr_rg_reg[15] ,
    bdatw,
    E,
    \stat_reg[0]_0 ,
    \stat_reg[2]_0 ,
    CLK,
    Q,
    \sctl_cnt_reg[3] ,
    \sctl_dato_rg_reg[15] ,
    \sctl_dato_rg_reg[15]_0 ,
    .bdatw_0_sp_1(bdatw_0_sn_1),
    \bdatw[15] ,
    spis_ss,
    \stat_reg[1]_0 );
  output sctl_adr_det;
  output sctl_dat_det_reg_0;
  output [3:0]D;
  output [15:0]\bctl_bdatr_rg_reg[15] ;
  output [15:0]bdatw;
  output [0:0]E;
  output [0:0]\stat_reg[0]_0 ;
  output [0:0]\stat_reg[2]_0 ;
  input CLK;
  input [3:0]Q;
  input \sctl_cnt_reg[3] ;
  input [15:0]\sctl_dato_rg_reg[15] ;
  input [14:0]\sctl_dato_rg_reg[15]_0 ;
  input [15:0]\bdatw[15] ;
  input spis_ss;
  input [0:0]\stat_reg[1]_0 ;
  input bdatw_0_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [15:0]\bctl_bdatr_rg_reg[15] ;
  wire [15:0]bdatw;
  wire [15:0]\bdatw[15] ;
  wire bdatw_0_sn_1;
  wire [4:2]p_0_in;
  wire sctl_adr_det;
  wire sctl_adr_det_i_1_n_0;
  wire \sctl_cnt_reg[3] ;
  wire sctl_dat_det_i_1_n_0;
  wire sctl_dat_det_reg_0;
  wire [15:0]\sctl_dato_rg_reg[15] ;
  wire [14:0]\sctl_dato_rg_reg[15]_0 ;
  wire sctl_ovfl__2;
  wire spis_ss;
  wire \stat[0]_i_1__0_n_0 ;
  wire \stat[1]_i_1__0_n_0 ;
  wire \stat[2]_i_1__0_n_0 ;
  wire [0:0]\stat_reg[0]_0 ;
  wire [0:0]\stat_reg[1]_0 ;
  wire [0:0]\stat_reg[2]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[0]_INST_0 
       (.I0(bdatw_0_sn_1),
        .I1(\bdatw[15] [0]),
        .I2(sctl_dat_det_reg_0),
        .O(bdatw[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[10]_INST_0 
       (.I0(bdatw_0_sn_1),
        .I1(\bdatw[15] [10]),
        .I2(sctl_dat_det_reg_0),
        .O(bdatw[10]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[11]_INST_0 
       (.I0(bdatw_0_sn_1),
        .I1(\bdatw[15] [11]),
        .I2(sctl_dat_det_reg_0),
        .O(bdatw[11]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[12]_INST_0 
       (.I0(bdatw_0_sn_1),
        .I1(\bdatw[15] [12]),
        .I2(sctl_dat_det_reg_0),
        .O(bdatw[12]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[13]_INST_0 
       (.I0(bdatw_0_sn_1),
        .I1(\bdatw[15] [13]),
        .I2(sctl_dat_det_reg_0),
        .O(bdatw[13]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[14]_INST_0 
       (.I0(bdatw_0_sn_1),
        .I1(\bdatw[15] [14]),
        .I2(sctl_dat_det_reg_0),
        .O(bdatw[14]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[15]_INST_0 
       (.I0(bdatw_0_sn_1),
        .I1(\bdatw[15] [15]),
        .I2(sctl_dat_det_reg_0),
        .O(bdatw[15]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[1]_INST_0 
       (.I0(bdatw_0_sn_1),
        .I1(\bdatw[15] [1]),
        .I2(sctl_dat_det_reg_0),
        .O(bdatw[1]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[2]_INST_0 
       (.I0(bdatw_0_sn_1),
        .I1(\bdatw[15] [2]),
        .I2(sctl_dat_det_reg_0),
        .O(bdatw[2]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[3]_INST_0 
       (.I0(bdatw_0_sn_1),
        .I1(\bdatw[15] [3]),
        .I2(sctl_dat_det_reg_0),
        .O(bdatw[3]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[4]_INST_0 
       (.I0(bdatw_0_sn_1),
        .I1(\bdatw[15] [4]),
        .I2(sctl_dat_det_reg_0),
        .O(bdatw[4]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[5]_INST_0 
       (.I0(bdatw_0_sn_1),
        .I1(\bdatw[15] [5]),
        .I2(sctl_dat_det_reg_0),
        .O(bdatw[5]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[6]_INST_0 
       (.I0(bdatw_0_sn_1),
        .I1(\bdatw[15] [6]),
        .I2(sctl_dat_det_reg_0),
        .O(bdatw[6]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[7]_INST_0 
       (.I0(bdatw_0_sn_1),
        .I1(\bdatw[15] [7]),
        .I2(sctl_dat_det_reg_0),
        .O(bdatw[7]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[8]_INST_0 
       (.I0(bdatw_0_sn_1),
        .I1(\bdatw[15] [8]),
        .I2(sctl_dat_det_reg_0),
        .O(bdatw[8]));
  LUT3 #(
    .INIT(8'h80)) 
    \bdatw[9]_INST_0 
       (.I0(bdatw_0_sn_1),
        .I1(\bdatw[15] [9]),
        .I2(sctl_dat_det_reg_0),
        .O(bdatw[9]));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    sctl_adr_det_i_1
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(sctl_ovfl__2),
        .I3(p_0_in[4]),
        .I4(spis_ss),
        .O(sctl_adr_det_i_1_n_0));
  FDRE sctl_adr_det_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(sctl_adr_det_i_1_n_0),
        .Q(sctl_adr_det),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h01)) 
    \sctl_adr_rg[15]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[4]),
        .I2(spis_ss),
        .O(E));
  LUT5 #(
    .INIT(32'h00001555)) 
    \sctl_cnt[0]_i_1 
       (.I0(sctl_ovfl__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[4]),
        .I4(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0006060606060606)) 
    \sctl_cnt[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(sctl_ovfl__2),
        .I3(p_0_in[3]),
        .I4(p_0_in[2]),
        .I5(p_0_in[4]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h09999999)) 
    \sctl_cnt[2]_i_1 
       (.I0(Q[2]),
        .I1(\sctl_cnt_reg[3] ),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[4]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h00A2A2A2A2A2A2A2)) 
    \sctl_cnt[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\sctl_cnt_reg[3] ),
        .I3(p_0_in[3]),
        .I4(p_0_in[2]),
        .I5(p_0_in[4]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h0000FE80)) 
    sctl_dat_det_i_1
       (.I0(sctl_ovfl__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[4]),
        .I4(spis_ss),
        .O(sctl_dat_det_i_1_n_0));
  FDRE sctl_dat_det_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(sctl_dat_det_i_1_n_0),
        .Q(sctl_dat_det_reg_0),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h04)) 
    \sctl_dati_rg[15]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(spis_ss),
        .O(\stat_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \sctl_dato_rg[0]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(sctl_ovfl__2),
        .I3(\sctl_dato_rg_reg[15] [0]),
        .O(\bctl_bdatr_rg_reg[15] [0]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \sctl_dato_rg[10]_i_1 
       (.I0(\sctl_dato_rg_reg[15] [10]),
        .I1(sctl_ovfl__2),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\sctl_dato_rg_reg[15]_0 [9]),
        .O(\bctl_bdatr_rg_reg[15] [10]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \sctl_dato_rg[11]_i_1 
       (.I0(\sctl_dato_rg_reg[15] [11]),
        .I1(sctl_ovfl__2),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\sctl_dato_rg_reg[15]_0 [10]),
        .O(\bctl_bdatr_rg_reg[15] [11]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \sctl_dato_rg[12]_i_1 
       (.I0(\sctl_dato_rg_reg[15] [12]),
        .I1(sctl_ovfl__2),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\sctl_dato_rg_reg[15]_0 [11]),
        .O(\bctl_bdatr_rg_reg[15] [12]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \sctl_dato_rg[13]_i_1 
       (.I0(\sctl_dato_rg_reg[15] [13]),
        .I1(sctl_ovfl__2),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\sctl_dato_rg_reg[15]_0 [12]),
        .O(\bctl_bdatr_rg_reg[15] [13]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \sctl_dato_rg[14]_i_1 
       (.I0(\sctl_dato_rg_reg[15] [14]),
        .I1(sctl_ovfl__2),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\sctl_dato_rg_reg[15]_0 [13]),
        .O(\bctl_bdatr_rg_reg[15] [14]));
  LUT4 #(
    .INIT(16'h3E00)) 
    \sctl_dato_rg[15]_i_1 
       (.I0(sctl_ovfl__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[4]),
        .O(\stat_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \sctl_dato_rg[15]_i_2 
       (.I0(\sctl_dato_rg_reg[15] [15]),
        .I1(sctl_ovfl__2),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\sctl_dato_rg_reg[15]_0 [14]),
        .O(\bctl_bdatr_rg_reg[15] [15]));
  LUT4 #(
    .INIT(16'h4000)) 
    \sctl_dato_rg[15]_i_4 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(sctl_ovfl__2));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \sctl_dato_rg[1]_i_1 
       (.I0(\sctl_dato_rg_reg[15] [1]),
        .I1(sctl_ovfl__2),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\sctl_dato_rg_reg[15]_0 [0]),
        .O(\bctl_bdatr_rg_reg[15] [1]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \sctl_dato_rg[2]_i_1 
       (.I0(\sctl_dato_rg_reg[15] [2]),
        .I1(sctl_ovfl__2),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\sctl_dato_rg_reg[15]_0 [1]),
        .O(\bctl_bdatr_rg_reg[15] [2]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \sctl_dato_rg[3]_i_1 
       (.I0(\sctl_dato_rg_reg[15] [3]),
        .I1(sctl_ovfl__2),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\sctl_dato_rg_reg[15]_0 [2]),
        .O(\bctl_bdatr_rg_reg[15] [3]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \sctl_dato_rg[4]_i_1 
       (.I0(\sctl_dato_rg_reg[15] [4]),
        .I1(sctl_ovfl__2),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\sctl_dato_rg_reg[15]_0 [3]),
        .O(\bctl_bdatr_rg_reg[15] [4]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \sctl_dato_rg[5]_i_1 
       (.I0(\sctl_dato_rg_reg[15] [5]),
        .I1(sctl_ovfl__2),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\sctl_dato_rg_reg[15]_0 [4]),
        .O(\bctl_bdatr_rg_reg[15] [5]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \sctl_dato_rg[6]_i_1 
       (.I0(\sctl_dato_rg_reg[15] [6]),
        .I1(sctl_ovfl__2),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\sctl_dato_rg_reg[15]_0 [5]),
        .O(\bctl_bdatr_rg_reg[15] [6]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \sctl_dato_rg[7]_i_1 
       (.I0(\sctl_dato_rg_reg[15] [7]),
        .I1(sctl_ovfl__2),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\sctl_dato_rg_reg[15]_0 [6]),
        .O(\bctl_bdatr_rg_reg[15] [7]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \sctl_dato_rg[8]_i_1 
       (.I0(\sctl_dato_rg_reg[15] [8]),
        .I1(sctl_ovfl__2),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\sctl_dato_rg_reg[15]_0 [7]),
        .O(\bctl_bdatr_rg_reg[15] [8]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \sctl_dato_rg[9]_i_1 
       (.I0(\sctl_dato_rg_reg[15] [9]),
        .I1(sctl_ovfl__2),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(\sctl_dato_rg_reg[15]_0 [8]),
        .O(\bctl_bdatr_rg_reg[15] [9]));
  LUT6 #(
    .INIT(64'hCBCCCCCCCCCCCCCC)) 
    \stat[0]_i_1__0 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\stat[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFC0FF40)) 
    \stat[1]_i_1__0 
       (.I0(\stat_reg[1]_0 ),
        .I1(sctl_ovfl__2),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .O(\stat[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8FF00)) 
    \stat[2]_i_1__0 
       (.I0(sctl_ovfl__2),
        .I1(p_0_in[3]),
        .I2(\stat_reg[1]_0 ),
        .I3(p_0_in[4]),
        .I4(p_0_in[2]),
        .O(\stat[2]_i_1__0_n_0 ));
  FDCE \stat_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(spis_ss),
        .D(\stat[0]_i_1__0_n_0 ),
        .Q(p_0_in[2]));
  FDCE \stat_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(spis_ss),
        .D(\stat[1]_i_1__0_n_0 ),
        .Q(p_0_in[3]));
  FDCE \stat_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(spis_ss),
        .D(\stat[2]_i_1__0_n_0 ),
        .Q(p_0_in[4]));
endmodule

module spib_spi_ctrl
   (sctl_adr_det,
    sctl_dat_det,
    bdatw,
    Q,
    spis_miso,
    CLK,
    \sctl_dato_rg_reg[15]_0 ,
    .bdatw_0_sp_1(bdatw_0_sn_1),
    spis_ss,
    spis_sck,
    spis_mosi);
  output sctl_adr_det;
  output sctl_dat_det;
  output [15:0]bdatw;
  output [15:0]Q;
  output spis_miso;
  input CLK;
  input [15:0]\sctl_dato_rg_reg[15]_0 ;
  input spis_ss;
  input spis_sck;
  input spis_mosi;
  input bdatw_0_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [15:0]Q;
  wire [15:0]bdatw;
  wire bdatw_0_sn_1;
  wire ctrl_n_10;
  wire ctrl_n_11;
  wire ctrl_n_12;
  wire ctrl_n_13;
  wire ctrl_n_14;
  wire ctrl_n_15;
  wire ctrl_n_16;
  wire ctrl_n_17;
  wire ctrl_n_18;
  wire ctrl_n_19;
  wire ctrl_n_20;
  wire ctrl_n_21;
  wire ctrl_n_38;
  wire ctrl_n_39;
  wire ctrl_n_40;
  wire ctrl_n_5;
  wire ctrl_n_6;
  wire ctrl_n_7;
  wire ctrl_n_8;
  wire ctrl_n_9;
  wire [3:1]p_0_in;
  wire sctl_adr_det;
  wire \sctl_cnt[3]_i_2_n_0 ;
  wire [3:0]sctl_cnt_reg;
  wire [15:0]sctl_dat;
  wire sctl_dat_det;
  wire [14:0]sctl_dato_rg;
  wire [15:0]\sctl_dato_rg_reg[15]_0 ;
  wire spis_miso;
  wire spis_mosi;
  wire spis_sck;
  wire spis_ss;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  spib_sctl_fsm ctrl
       (.CLK(CLK),
        .D({p_0_in,ctrl_n_5}),
        .E(ctrl_n_38),
        .Q(sctl_cnt_reg),
        .\bctl_bdatr_rg_reg[15] ({ctrl_n_6,ctrl_n_7,ctrl_n_8,ctrl_n_9,ctrl_n_10,ctrl_n_11,ctrl_n_12,ctrl_n_13,ctrl_n_14,ctrl_n_15,ctrl_n_16,ctrl_n_17,ctrl_n_18,ctrl_n_19,ctrl_n_20,ctrl_n_21}),
        .bdatw(bdatw),
        .\bdatw[15] (sctl_dat),
        .bdatw_0_sp_1(bdatw_0_sn_1),
        .sctl_adr_det(sctl_adr_det),
        .\sctl_cnt_reg[3] (\sctl_cnt[3]_i_2_n_0 ),
        .sctl_dat_det_reg_0(sctl_dat_det),
        .\sctl_dato_rg_reg[15] (\sctl_dato_rg_reg[15]_0 ),
        .\sctl_dato_rg_reg[15]_0 (sctl_dato_rg),
        .spis_ss(spis_ss),
        .\stat_reg[0]_0 (ctrl_n_39),
        .\stat_reg[1]_0 (Q[0]),
        .\stat_reg[2]_0 (ctrl_n_40));
  FDRE \sctl_adr_rg_reg[0] 
       (.C(spis_sck),
        .CE(ctrl_n_38),
        .D(spis_mosi),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE \sctl_adr_rg_reg[10] 
       (.C(spis_sck),
        .CE(ctrl_n_38),
        .D(Q[9]),
        .Q(Q[10]),
        .R(\<const0> ));
  FDRE \sctl_adr_rg_reg[11] 
       (.C(spis_sck),
        .CE(ctrl_n_38),
        .D(Q[10]),
        .Q(Q[11]),
        .R(\<const0> ));
  FDRE \sctl_adr_rg_reg[12] 
       (.C(spis_sck),
        .CE(ctrl_n_38),
        .D(Q[11]),
        .Q(Q[12]),
        .R(\<const0> ));
  FDRE \sctl_adr_rg_reg[13] 
       (.C(spis_sck),
        .CE(ctrl_n_38),
        .D(Q[12]),
        .Q(Q[13]),
        .R(\<const0> ));
  FDRE \sctl_adr_rg_reg[14] 
       (.C(spis_sck),
        .CE(ctrl_n_38),
        .D(Q[13]),
        .Q(Q[14]),
        .R(\<const0> ));
  FDRE \sctl_adr_rg_reg[15] 
       (.C(spis_sck),
        .CE(ctrl_n_38),
        .D(Q[14]),
        .Q(Q[15]),
        .R(\<const0> ));
  FDRE \sctl_adr_rg_reg[1] 
       (.C(spis_sck),
        .CE(ctrl_n_38),
        .D(Q[0]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE \sctl_adr_rg_reg[2] 
       (.C(spis_sck),
        .CE(ctrl_n_38),
        .D(Q[1]),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE \sctl_adr_rg_reg[3] 
       (.C(spis_sck),
        .CE(ctrl_n_38),
        .D(Q[2]),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE \sctl_adr_rg_reg[4] 
       (.C(spis_sck),
        .CE(ctrl_n_38),
        .D(Q[3]),
        .Q(Q[4]),
        .R(\<const0> ));
  FDRE \sctl_adr_rg_reg[5] 
       (.C(spis_sck),
        .CE(ctrl_n_38),
        .D(Q[4]),
        .Q(Q[5]),
        .R(\<const0> ));
  FDRE \sctl_adr_rg_reg[6] 
       (.C(spis_sck),
        .CE(ctrl_n_38),
        .D(Q[5]),
        .Q(Q[6]),
        .R(\<const0> ));
  FDRE \sctl_adr_rg_reg[7] 
       (.C(spis_sck),
        .CE(ctrl_n_38),
        .D(Q[6]),
        .Q(Q[7]),
        .R(\<const0> ));
  FDRE \sctl_adr_rg_reg[8] 
       (.C(spis_sck),
        .CE(ctrl_n_38),
        .D(Q[7]),
        .Q(Q[8]),
        .R(\<const0> ));
  FDRE \sctl_adr_rg_reg[9] 
       (.C(spis_sck),
        .CE(ctrl_n_38),
        .D(Q[8]),
        .Q(Q[9]),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h7)) 
    \sctl_cnt[3]_i_2 
       (.I0(sctl_cnt_reg[0]),
        .I1(sctl_cnt_reg[1]),
        .O(\sctl_cnt[3]_i_2_n_0 ));
  FDCE \sctl_cnt_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(spis_ss),
        .D(ctrl_n_5),
        .Q(sctl_cnt_reg[0]));
  FDCE \sctl_cnt_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(spis_ss),
        .D(p_0_in[1]),
        .Q(sctl_cnt_reg[1]));
  FDCE \sctl_cnt_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(spis_ss),
        .D(p_0_in[2]),
        .Q(sctl_cnt_reg[2]));
  FDCE \sctl_cnt_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(spis_ss),
        .D(p_0_in[3]),
        .Q(sctl_cnt_reg[3]));
  FDRE \sctl_dati_rg_reg[0] 
       (.C(spis_sck),
        .CE(ctrl_n_40),
        .D(spis_mosi),
        .Q(sctl_dat[0]),
        .R(\<const0> ));
  FDRE \sctl_dati_rg_reg[10] 
       (.C(spis_sck),
        .CE(ctrl_n_40),
        .D(sctl_dat[9]),
        .Q(sctl_dat[10]),
        .R(\<const0> ));
  FDRE \sctl_dati_rg_reg[11] 
       (.C(spis_sck),
        .CE(ctrl_n_40),
        .D(sctl_dat[10]),
        .Q(sctl_dat[11]),
        .R(\<const0> ));
  FDRE \sctl_dati_rg_reg[12] 
       (.C(spis_sck),
        .CE(ctrl_n_40),
        .D(sctl_dat[11]),
        .Q(sctl_dat[12]),
        .R(\<const0> ));
  FDRE \sctl_dati_rg_reg[13] 
       (.C(spis_sck),
        .CE(ctrl_n_40),
        .D(sctl_dat[12]),
        .Q(sctl_dat[13]),
        .R(\<const0> ));
  FDRE \sctl_dati_rg_reg[14] 
       (.C(spis_sck),
        .CE(ctrl_n_40),
        .D(sctl_dat[13]),
        .Q(sctl_dat[14]),
        .R(\<const0> ));
  FDRE \sctl_dati_rg_reg[15] 
       (.C(spis_sck),
        .CE(ctrl_n_40),
        .D(sctl_dat[14]),
        .Q(sctl_dat[15]),
        .R(\<const0> ));
  FDRE \sctl_dati_rg_reg[1] 
       (.C(spis_sck),
        .CE(ctrl_n_40),
        .D(sctl_dat[0]),
        .Q(sctl_dat[1]),
        .R(\<const0> ));
  FDRE \sctl_dati_rg_reg[2] 
       (.C(spis_sck),
        .CE(ctrl_n_40),
        .D(sctl_dat[1]),
        .Q(sctl_dat[2]),
        .R(\<const0> ));
  FDRE \sctl_dati_rg_reg[3] 
       (.C(spis_sck),
        .CE(ctrl_n_40),
        .D(sctl_dat[2]),
        .Q(sctl_dat[3]),
        .R(\<const0> ));
  FDRE \sctl_dati_rg_reg[4] 
       (.C(spis_sck),
        .CE(ctrl_n_40),
        .D(sctl_dat[3]),
        .Q(sctl_dat[4]),
        .R(\<const0> ));
  FDRE \sctl_dati_rg_reg[5] 
       (.C(spis_sck),
        .CE(ctrl_n_40),
        .D(sctl_dat[4]),
        .Q(sctl_dat[5]),
        .R(\<const0> ));
  FDRE \sctl_dati_rg_reg[6] 
       (.C(spis_sck),
        .CE(ctrl_n_40),
        .D(sctl_dat[5]),
        .Q(sctl_dat[6]),
        .R(\<const0> ));
  FDRE \sctl_dati_rg_reg[7] 
       (.C(spis_sck),
        .CE(ctrl_n_40),
        .D(sctl_dat[6]),
        .Q(sctl_dat[7]),
        .R(\<const0> ));
  FDRE \sctl_dati_rg_reg[8] 
       (.C(spis_sck),
        .CE(ctrl_n_40),
        .D(sctl_dat[7]),
        .Q(sctl_dat[8]),
        .R(\<const0> ));
  FDRE \sctl_dati_rg_reg[9] 
       (.C(spis_sck),
        .CE(ctrl_n_40),
        .D(sctl_dat[8]),
        .Q(sctl_dat[9]),
        .R(\<const0> ));
  FDCE \sctl_dato_rg_reg[0] 
       (.C(CLK),
        .CE(ctrl_n_39),
        .CLR(spis_ss),
        .D(ctrl_n_21),
        .Q(sctl_dato_rg[0]));
  FDCE \sctl_dato_rg_reg[10] 
       (.C(CLK),
        .CE(ctrl_n_39),
        .CLR(spis_ss),
        .D(ctrl_n_11),
        .Q(sctl_dato_rg[10]));
  FDCE \sctl_dato_rg_reg[11] 
       (.C(CLK),
        .CE(ctrl_n_39),
        .CLR(spis_ss),
        .D(ctrl_n_10),
        .Q(sctl_dato_rg[11]));
  FDCE \sctl_dato_rg_reg[12] 
       (.C(CLK),
        .CE(ctrl_n_39),
        .CLR(spis_ss),
        .D(ctrl_n_9),
        .Q(sctl_dato_rg[12]));
  FDCE \sctl_dato_rg_reg[13] 
       (.C(CLK),
        .CE(ctrl_n_39),
        .CLR(spis_ss),
        .D(ctrl_n_8),
        .Q(sctl_dato_rg[13]));
  FDCE \sctl_dato_rg_reg[14] 
       (.C(CLK),
        .CE(ctrl_n_39),
        .CLR(spis_ss),
        .D(ctrl_n_7),
        .Q(sctl_dato_rg[14]));
  FDCE \sctl_dato_rg_reg[15] 
       (.C(CLK),
        .CE(ctrl_n_39),
        .CLR(spis_ss),
        .D(ctrl_n_6),
        .Q(spis_miso));
  FDCE \sctl_dato_rg_reg[1] 
       (.C(CLK),
        .CE(ctrl_n_39),
        .CLR(spis_ss),
        .D(ctrl_n_20),
        .Q(sctl_dato_rg[1]));
  FDCE \sctl_dato_rg_reg[2] 
       (.C(CLK),
        .CE(ctrl_n_39),
        .CLR(spis_ss),
        .D(ctrl_n_19),
        .Q(sctl_dato_rg[2]));
  FDCE \sctl_dato_rg_reg[3] 
       (.C(CLK),
        .CE(ctrl_n_39),
        .CLR(spis_ss),
        .D(ctrl_n_18),
        .Q(sctl_dato_rg[3]));
  FDCE \sctl_dato_rg_reg[4] 
       (.C(CLK),
        .CE(ctrl_n_39),
        .CLR(spis_ss),
        .D(ctrl_n_17),
        .Q(sctl_dato_rg[4]));
  FDCE \sctl_dato_rg_reg[5] 
       (.C(CLK),
        .CE(ctrl_n_39),
        .CLR(spis_ss),
        .D(ctrl_n_16),
        .Q(sctl_dato_rg[5]));
  FDCE \sctl_dato_rg_reg[6] 
       (.C(CLK),
        .CE(ctrl_n_39),
        .CLR(spis_ss),
        .D(ctrl_n_15),
        .Q(sctl_dato_rg[6]));
  FDCE \sctl_dato_rg_reg[7] 
       (.C(CLK),
        .CE(ctrl_n_39),
        .CLR(spis_ss),
        .D(ctrl_n_14),
        .Q(sctl_dato_rg[7]));
  FDCE \sctl_dato_rg_reg[8] 
       (.C(CLK),
        .CE(ctrl_n_39),
        .CLR(spis_ss),
        .D(ctrl_n_13),
        .Q(sctl_dato_rg[8]));
  FDCE \sctl_dato_rg_reg[9] 
       (.C(CLK),
        .CE(ctrl_n_39),
        .CLR(spis_ss),
        .D(ctrl_n_12),
        .Q(sctl_dato_rg[9]));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module spibus
   (clk,
    rst_n,
    brdy,
    spis_ss,
    spis_sck,
    spis_mosi,
    bdatr,
    spis_miso,
    bcmd,
    badr,
    bdatw);
//
//	SPI and memory bus bridge unit
//		(c) 2026	1YEN Toru
//
//
//	2026/06/27	ver.1.00
//
  input clk;
  input rst_n;
  input brdy;
  input spis_ss;
  input spis_sck;
  input spis_mosi;
  input [15:0]bdatr;
  output spis_miso;
  output [3:0]bcmd;
  output [15:0]badr;
  output [15:0]bdatw;

  wire \<const0> ;
  wire [15:1]\^badr ;
  wire [1:0]\^bcmd ;
  wire [15:0]bctl_bdatr;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire rst_n;
  wire [15:0]sctl_adr;
  wire sctl_adr_det;
  wire sctl_dat_det;
  wire \sctl_dato_rg_reg[15]_i_3_n_0 ;
  wire spis_miso;
  wire spis_mosi;
  wire spis_sck;
  wire spis_ss;

  assign badr[15:1] = \^badr [15:1];
  assign badr[0] = \<const0> ;
  assign bcmd[3] = \<const0> ;
  assign bcmd[2] = \<const0> ;
  assign bcmd[1:0] = \^bcmd [1:0];
  GND GND
       (.G(\<const0> ));
  spib_bus_ctrl bctl
       (.Q(sctl_adr),
        .badr(\^badr ),
        .bcmd(\^bcmd [0]),
        .\bctl_bdatr_rg_reg[15]_0 (bctl_bdatr),
        .bdatr(bdatr),
        .brdy(brdy),
        .clk(clk),
        .rst_n(rst_n),
        .sctl_adr_det(sctl_adr_det),
        .sctl_dat_det(sctl_dat_det),
        .\stat_reg[1] (\^bcmd [1]));
  spib_spi_ctrl sctl
       (.CLK(\sctl_dato_rg_reg[15]_i_3_n_0 ),
        .Q(sctl_adr),
        .bdatw(bdatw),
        .bdatw_0_sp_1(\^bcmd [1]),
        .sctl_adr_det(sctl_adr_det),
        .sctl_dat_det(sctl_dat_det),
        .\sctl_dato_rg_reg[15]_0 (bctl_bdatr),
        .spis_miso(spis_miso),
        .spis_mosi(spis_mosi),
        .spis_sck(spis_sck),
        .spis_ss(spis_ss));
  LUT1 #(
    .INIT(2'h1)) 
    \sctl_dato_rg_reg[15]_i_3 
       (.I0(spis_sck),
        .O(\sctl_dato_rg_reg[15]_i_3_n_0 ));
endmodule
