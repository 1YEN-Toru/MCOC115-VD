
(* STRUCTURAL_NETLIST = "yes" *)
module cam7670
   (clk,
    rst_n,
    simumd,
    brdy,
    bcmdr,
    bcmdw,
    bcs_cm76_n,
    badr,
    bdatw,
    bdatr,
    cm76_pclk,
    cm76_vsync,
    cm76_href,
    cm76_dat,
    cm76_xclk,
    cm76_fempt,
    cm76_ffull,
    cm76_frest_bsy,
    cm76_fdatr,
    cm76_frest,
    cm76_fread,
    cm76_fwrit,
    cm76_fdatw);
//
//	OV7670 camera unit
//		(c) 2024	1YEN Toru
//
//
//	2024/06/15	ver.1.00
//		OV7670 camera I/F with PMOD connector
//		OV7670 I/F:
//			cm76_xclk: source clock (--> OV7670)
//			cm76_pclk: pixel clock (OV7670 -->)
//			cm76_vsync: vertical synchronization
//			cm76_href: horizontal reference
//			cm76_dat[3:0]: RGB222 (from xRGB4444) data
//				cm76_dat[3:0]={ xRGB4444[15:14],xRGB4444[11:10] }(xR) or
//				cm76_dat[3:0]={ xRGB4444[7:6],xRGB4444[3:2] }(GB)
//
  input clk;
  input rst_n;
  input simumd;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bcs_cm76_n;
  input [3:0]badr;
  input [15:0]bdatw;
  output [15:0]bdatr;
  input cm76_pclk;
  input cm76_vsync;
  input cm76_href;
  input [3:0]cm76_dat;
  output cm76_xclk;
  input cm76_fempt;
  input cm76_ffull;
  input cm76_frest_bsy;
  input [7:0]cm76_fdatr;
  output cm76_frest;
  output cm76_fread;
  output cm76_fwrit;
  output [7:0]cm76_fdatw;

  wire \<const0> ;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_cm76_n;
  wire [7:0]\^bdatr ;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire [3:0]cm76_dat;
  wire [7:0]cm76_fdatr;
  wire [7:0]cm76_fdatw;
  wire cm76_fempt;
  wire cm76_ffull;
  wire cm76_fread;
  wire cm76_frest;
  wire cm76_frest_bsy;
  wire cm76_fwrit;
  wire cm76_href;
  wire cm76_pclk;
  wire cm76_vsync;
  wire cm76_xclk;
  wire cmif_cenb;
  wire cmif_fwrit;
  wire cmif_pckv;
  wire ctrl_cenb;
  wire ctrl_ignl;
  wire ctrl_n_11;
  wire ctrl_n_15;
  wire rst_n;
  wire simumd;

  assign bdatr[15] = \<const0> ;
  assign bdatr[14] = \<const0> ;
  assign bdatr[13] = \<const0> ;
  assign bdatr[12] = \<const0> ;
  assign bdatr[11] = \<const0> ;
  assign bdatr[10] = \<const0> ;
  assign bdatr[9] = \<const0> ;
  assign bdatr[8] = \<const0> ;
  assign bdatr[7:0] = \^bdatr [7:0];
  GND GND
       (.G(\<const0> ));
  cm76_camif cmif
       (.D(cmif_pckv),
        .Q(cmif_cenb),
        .\ck_cnt_reg[0]_0 (ctrl_n_11),
        .cm76_dat(cm76_dat),
        .cm76_fdatw(cm76_fdatw),
        .cm76_ffull(cm76_ffull),
        .cm76_frest_bsy(cm76_frest_bsy),
        .cm76_href(cm76_href),
        .cm76_pclk(cm76_pclk),
        .cm76_vsync(cm76_vsync),
        .cmif_fwrit(cmif_fwrit),
        .ctrl_cenb(ctrl_cenb),
        .\ignl_sy_reg[0]_0 (ctrl_ignl),
        .simumd(simumd),
        .\stat_reg[0] (ctrl_n_15));
  cm76_ctrl ctrl
       (.D(cmif_pckv),
        .Q(cmif_cenb),
        .badr(badr),
        .bcmdr(bcmdr),
        .bcmdw(bcmdw),
        .bcs_cm76_n(bcs_cm76_n),
        .bdatr(\^bdatr ),
        .bdatw(bdatw[2:0]),
        .brdy(brdy),
        .clk(clk),
        .cm76_fdatr(cm76_fdatr),
        .cm76_fempt(cm76_fempt),
        .cm76_ffull(cm76_ffull),
        .cm76_fread(cm76_fread),
        .cm76_frest(cm76_frest),
        .cm76_frest_bsy(cm76_frest_bsy),
        .cm76_fwrit(cm76_fwrit),
        .cm76_xclk(cm76_xclk),
        .\cm76ctl_reg[0]_0 (ctrl_n_11),
        .\cm76ctl_reg[1]_0 (ctrl_n_15),
        .\cm76ctl_reg[2]_0 (ctrl_ignl),
        .cmif_fwrit(cmif_fwrit),
        .ctrl_cenb(ctrl_cenb),
        .rst_n(rst_n));
endmodule

module cm76_camif
   (cmif_fwrit,
    D,
    Q,
    cm76_fdatw,
    cm76_href,
    cm76_pclk,
    \stat_reg[0] ,
    cm76_vsync,
    \ck_cnt_reg[0]_0 ,
    cm76_ffull,
    simumd,
    cm76_frest_bsy,
    ctrl_cenb,
    cm76_dat,
    \ignl_sy_reg[0]_0 );
  output cmif_fwrit;
  output [0:0]D;
  output [0:0]Q;
  output [7:0]cm76_fdatw;
  input cm76_href;
  input cm76_pclk;
  input \stat_reg[0] ;
  input cm76_vsync;
  input \ck_cnt_reg[0]_0 ;
  input cm76_ffull;
  input simumd;
  input cm76_frest_bsy;
  input ctrl_cenb;
  input [3:0]cm76_dat;
  input [0:0]\ignl_sy_reg[0]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]D;
  wire [0:0]Q;
  wire \cenb_sy_reg_n_0_[0] ;
  wire \ck_cnt[0]_i_4_n_0 ;
  wire [15:0]ck_cnt_reg;
  wire \ck_cnt_reg[0]_0 ;
  wire \ck_cnt_reg[0]_i_2_n_0 ;
  wire \ck_cnt_reg[0]_i_2_n_1 ;
  wire \ck_cnt_reg[0]_i_2_n_2 ;
  wire \ck_cnt_reg[0]_i_2_n_3 ;
  wire \ck_cnt_reg[0]_i_2_n_4 ;
  wire \ck_cnt_reg[0]_i_2_n_5 ;
  wire \ck_cnt_reg[0]_i_2_n_6 ;
  wire \ck_cnt_reg[0]_i_2_n_7 ;
  wire \ck_cnt_reg[12]_i_1_n_1 ;
  wire \ck_cnt_reg[12]_i_1_n_2 ;
  wire \ck_cnt_reg[12]_i_1_n_3 ;
  wire \ck_cnt_reg[12]_i_1_n_4 ;
  wire \ck_cnt_reg[12]_i_1_n_5 ;
  wire \ck_cnt_reg[12]_i_1_n_6 ;
  wire \ck_cnt_reg[12]_i_1_n_7 ;
  wire \ck_cnt_reg[4]_i_1_n_0 ;
  wire \ck_cnt_reg[4]_i_1_n_1 ;
  wire \ck_cnt_reg[4]_i_1_n_2 ;
  wire \ck_cnt_reg[4]_i_1_n_3 ;
  wire \ck_cnt_reg[4]_i_1_n_4 ;
  wire \ck_cnt_reg[4]_i_1_n_5 ;
  wire \ck_cnt_reg[4]_i_1_n_6 ;
  wire \ck_cnt_reg[4]_i_1_n_7 ;
  wire \ck_cnt_reg[8]_i_1_n_0 ;
  wire \ck_cnt_reg[8]_i_1_n_1 ;
  wire \ck_cnt_reg[8]_i_1_n_2 ;
  wire \ck_cnt_reg[8]_i_1_n_3 ;
  wire \ck_cnt_reg[8]_i_1_n_4 ;
  wire \ck_cnt_reg[8]_i_1_n_5 ;
  wire \ck_cnt_reg[8]_i_1_n_6 ;
  wire \ck_cnt_reg[8]_i_1_n_7 ;
  wire [3:0]cm76_dat;
  wire [7:0]cm76_fdatw;
  wire cm76_ffull;
  wire cm76_frest_bsy;
  wire cm76_href;
  wire cm76_pclk;
  wire cm76_vsync;
  wire [3:0]cmif_dat;
  wire cmif_fwrit;
  wire cmif_href;
  wire cmif_href_pre;
  wire cmif_ignl;
  wire cmif_vsync;
  wire ctrl_cenb;
  wire \frbs_sy_reg_n_0_[0] ;
  wire fsm_n_3;
  wire fsm_n_4;
  wire href_1st;
  wire href_1st_i_1_n_0;
  wire hsync_det;
  wire [0:0]\ignl_sy_reg[0]_0 ;
  wire \ignl_sy_reg_n_0_[0] ;
  wire lat_pixh;
  wire lat_pixl;
  wire \pckv_sy[0]_i_2_n_0 ;
  wire \pckv_sy[0]_i_3_n_0 ;
  wire \pckv_sy[0]_i_4_n_0 ;
  wire \pckv_sy[0]_i_5_n_0 ;
  wire \pckv_sy[0]_i_6_n_0 ;
  wire \pckv_sy[0]_i_7_n_0 ;
  wire \pckv_sy[0]_i_8_n_0 ;
  wire \pix[4]_i_1_n_0 ;
  wire \pix[5]_i_1_n_0 ;
  wire \pix[7]_i_1_n_0 ;
  wire sel;
  wire sel00;
  wire simumd;
  wire \stat_reg[0] ;
  wire vsync_det;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \cenb_sy_reg[0] 
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .D(ctrl_cenb),
        .Q(\cenb_sy_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \cenb_sy_reg[1] 
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .D(\cenb_sy_reg_n_0_[0] ),
        .Q(Q),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFDF0F0)) 
    \ck_cnt[0]_i_1 
       (.I0(simumd),
        .I1(\pckv_sy[0]_i_6_n_0 ),
        .I2(\pckv_sy[0]_i_5_n_0 ),
        .I3(\pckv_sy[0]_i_4_n_0 ),
        .I4(\pckv_sy[0]_i_3_n_0 ),
        .I5(\pckv_sy[0]_i_2_n_0 ),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \ck_cnt[0]_i_4 
       (.I0(ck_cnt_reg[0]),
        .O(\ck_cnt[0]_i_4_n_0 ));
  FDCE \ck_cnt_reg[0] 
       (.C(cm76_pclk),
        .CE(sel),
        .CLR(\ck_cnt_reg[0]_0 ),
        .D(\ck_cnt_reg[0]_i_2_n_7 ),
        .Q(ck_cnt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ck_cnt_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\ck_cnt_reg[0]_i_2_n_0 ,\ck_cnt_reg[0]_i_2_n_1 ,\ck_cnt_reg[0]_i_2_n_2 ,\ck_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\ck_cnt_reg[0]_i_2_n_4 ,\ck_cnt_reg[0]_i_2_n_5 ,\ck_cnt_reg[0]_i_2_n_6 ,\ck_cnt_reg[0]_i_2_n_7 }),
        .S({ck_cnt_reg[3:1],\ck_cnt[0]_i_4_n_0 }));
  FDCE \ck_cnt_reg[10] 
       (.C(cm76_pclk),
        .CE(sel),
        .CLR(\ck_cnt_reg[0]_0 ),
        .D(\ck_cnt_reg[8]_i_1_n_5 ),
        .Q(ck_cnt_reg[10]));
  FDCE \ck_cnt_reg[11] 
       (.C(cm76_pclk),
        .CE(sel),
        .CLR(\ck_cnt_reg[0]_0 ),
        .D(\ck_cnt_reg[8]_i_1_n_4 ),
        .Q(ck_cnt_reg[11]));
  FDCE \ck_cnt_reg[12] 
       (.C(cm76_pclk),
        .CE(sel),
        .CLR(\ck_cnt_reg[0]_0 ),
        .D(\ck_cnt_reg[12]_i_1_n_7 ),
        .Q(ck_cnt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ck_cnt_reg[12]_i_1 
       (.CI(\ck_cnt_reg[8]_i_1_n_0 ),
        .CO({\ck_cnt_reg[12]_i_1_n_1 ,\ck_cnt_reg[12]_i_1_n_2 ,\ck_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\ck_cnt_reg[12]_i_1_n_4 ,\ck_cnt_reg[12]_i_1_n_5 ,\ck_cnt_reg[12]_i_1_n_6 ,\ck_cnt_reg[12]_i_1_n_7 }),
        .S(ck_cnt_reg[15:12]));
  FDCE \ck_cnt_reg[13] 
       (.C(cm76_pclk),
        .CE(sel),
        .CLR(\ck_cnt_reg[0]_0 ),
        .D(\ck_cnt_reg[12]_i_1_n_6 ),
        .Q(ck_cnt_reg[13]));
  FDCE \ck_cnt_reg[14] 
       (.C(cm76_pclk),
        .CE(sel),
        .CLR(\ck_cnt_reg[0]_0 ),
        .D(\ck_cnt_reg[12]_i_1_n_5 ),
        .Q(ck_cnt_reg[14]));
  FDCE \ck_cnt_reg[15] 
       (.C(cm76_pclk),
        .CE(sel),
        .CLR(\ck_cnt_reg[0]_0 ),
        .D(\ck_cnt_reg[12]_i_1_n_4 ),
        .Q(ck_cnt_reg[15]));
  FDCE \ck_cnt_reg[1] 
       (.C(cm76_pclk),
        .CE(sel),
        .CLR(\ck_cnt_reg[0]_0 ),
        .D(\ck_cnt_reg[0]_i_2_n_6 ),
        .Q(ck_cnt_reg[1]));
  FDCE \ck_cnt_reg[2] 
       (.C(cm76_pclk),
        .CE(sel),
        .CLR(\ck_cnt_reg[0]_0 ),
        .D(\ck_cnt_reg[0]_i_2_n_5 ),
        .Q(ck_cnt_reg[2]));
  FDCE \ck_cnt_reg[3] 
       (.C(cm76_pclk),
        .CE(sel),
        .CLR(\ck_cnt_reg[0]_0 ),
        .D(\ck_cnt_reg[0]_i_2_n_4 ),
        .Q(ck_cnt_reg[3]));
  FDCE \ck_cnt_reg[4] 
       (.C(cm76_pclk),
        .CE(sel),
        .CLR(\ck_cnt_reg[0]_0 ),
        .D(\ck_cnt_reg[4]_i_1_n_7 ),
        .Q(ck_cnt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ck_cnt_reg[4]_i_1 
       (.CI(\ck_cnt_reg[0]_i_2_n_0 ),
        .CO({\ck_cnt_reg[4]_i_1_n_0 ,\ck_cnt_reg[4]_i_1_n_1 ,\ck_cnt_reg[4]_i_1_n_2 ,\ck_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\ck_cnt_reg[4]_i_1_n_4 ,\ck_cnt_reg[4]_i_1_n_5 ,\ck_cnt_reg[4]_i_1_n_6 ,\ck_cnt_reg[4]_i_1_n_7 }),
        .S(ck_cnt_reg[7:4]));
  FDCE \ck_cnt_reg[5] 
       (.C(cm76_pclk),
        .CE(sel),
        .CLR(\ck_cnt_reg[0]_0 ),
        .D(\ck_cnt_reg[4]_i_1_n_6 ),
        .Q(ck_cnt_reg[5]));
  FDCE \ck_cnt_reg[6] 
       (.C(cm76_pclk),
        .CE(sel),
        .CLR(\ck_cnt_reg[0]_0 ),
        .D(\ck_cnt_reg[4]_i_1_n_5 ),
        .Q(ck_cnt_reg[6]));
  FDCE \ck_cnt_reg[7] 
       (.C(cm76_pclk),
        .CE(sel),
        .CLR(\ck_cnt_reg[0]_0 ),
        .D(\ck_cnt_reg[4]_i_1_n_4 ),
        .Q(ck_cnt_reg[7]));
  FDCE \ck_cnt_reg[8] 
       (.C(cm76_pclk),
        .CE(sel),
        .CLR(\ck_cnt_reg[0]_0 ),
        .D(\ck_cnt_reg[8]_i_1_n_7 ),
        .Q(ck_cnt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ck_cnt_reg[8]_i_1 
       (.CI(\ck_cnt_reg[4]_i_1_n_0 ),
        .CO({\ck_cnt_reg[8]_i_1_n_0 ,\ck_cnt_reg[8]_i_1_n_1 ,\ck_cnt_reg[8]_i_1_n_2 ,\ck_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\ck_cnt_reg[8]_i_1_n_4 ,\ck_cnt_reg[8]_i_1_n_5 ,\ck_cnt_reg[8]_i_1_n_6 ,\ck_cnt_reg[8]_i_1_n_7 }),
        .S(ck_cnt_reg[11:8]));
  FDCE \ck_cnt_reg[9] 
       (.C(cm76_pclk),
        .CE(sel),
        .CLR(\ck_cnt_reg[0]_0 ),
        .D(\ck_cnt_reg[8]_i_1_n_6 ),
        .Q(ck_cnt_reg[9]));
  FDCE \cmif_dat_reg[0] 
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .CLR(\stat_reg[0] ),
        .D(cm76_dat[0]),
        .Q(cmif_dat[0]));
  FDCE \cmif_dat_reg[1] 
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .CLR(\stat_reg[0] ),
        .D(cm76_dat[1]),
        .Q(cmif_dat[1]));
  FDCE \cmif_dat_reg[2] 
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .CLR(\stat_reg[0] ),
        .D(cm76_dat[2]),
        .Q(cmif_dat[2]));
  FDCE \cmif_dat_reg[3] 
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .CLR(\stat_reg[0] ),
        .D(cm76_dat[3]),
        .Q(cmif_dat[3]));
  FDCE cmif_href_pre_reg
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .CLR(\stat_reg[0] ),
        .D(cmif_href),
        .Q(cmif_href_pre));
  FDCE cmif_href_reg
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .CLR(\stat_reg[0] ),
        .D(cm76_href),
        .Q(cmif_href));
  FDCE cmif_vsync_reg
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .CLR(\stat_reg[0] ),
        .D(cm76_vsync),
        .Q(cmif_vsync));
  FDRE \frbs_sy_reg[0] 
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .D(cm76_frest_bsy),
        .Q(\frbs_sy_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \frbs_sy_reg[1] 
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .D(\frbs_sy_reg_n_0_[0] ),
        .Q(sel00),
        .R(\<const0> ));
  cm76_fsm fsm
       (.D(hsync_det),
        .E(lat_pixl),
        .Q(cmif_ignl),
        .cm76_ffull(cm76_ffull),
        .cm76_pclk(cm76_pclk),
        .cmif_fwrit(cmif_fwrit),
        .cmif_href(cmif_href),
        .cmif_href_pre(cmif_href_pre),
        .cmif_vsync(cmif_vsync),
        .cmif_vsync_reg(fsm_n_4),
        .href_1st(href_1st),
        .lat_pixh(lat_pixh),
        .\stat_reg[0]_0 (\stat_reg[0] ),
        .\stat_reg[0]_1 (sel00),
        .\stat_reg[1]_0 (fsm_n_3),
        .vsync_det(vsync_det));
  LUT4 #(
    .INIT(16'hEFAA)) 
    href_1st_i_1
       (.I0(cmif_vsync),
        .I1(cmif_href),
        .I2(cmif_href_pre),
        .I3(href_1st),
        .O(href_1st_i_1_n_0));
  FDCE href_1st_reg
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .CLR(\stat_reg[0] ),
        .D(href_1st_i_1_n_0),
        .Q(href_1st));
  FDCE hsync_det_reg
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .CLR(\stat_reg[0] ),
        .D(fsm_n_3),
        .Q(hsync_det));
  FDRE \ignl_sy_reg[0] 
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .D(\ignl_sy_reg[0]_0 ),
        .Q(\ignl_sy_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \ignl_sy_reg[1] 
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .D(\ignl_sy_reg_n_0_[0] ),
        .Q(cmif_ignl),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0011001F00110011)) 
    \pckv_sy[0]_i_1 
       (.I0(\pckv_sy[0]_i_2_n_0 ),
        .I1(\pckv_sy[0]_i_3_n_0 ),
        .I2(\pckv_sy[0]_i_4_n_0 ),
        .I3(\pckv_sy[0]_i_5_n_0 ),
        .I4(\pckv_sy[0]_i_6_n_0 ),
        .I5(simumd),
        .O(D));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pckv_sy[0]_i_2 
       (.I0(ck_cnt_reg[6]),
        .I1(ck_cnt_reg[7]),
        .I2(ck_cnt_reg[4]),
        .I3(ck_cnt_reg[5]),
        .O(\pckv_sy[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \pckv_sy[0]_i_3 
       (.I0(ck_cnt_reg[13]),
        .I1(ck_cnt_reg[12]),
        .I2(ck_cnt_reg[14]),
        .I3(ck_cnt_reg[15]),
        .I4(\pckv_sy[0]_i_7_n_0 ),
        .O(\pckv_sy[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pckv_sy[0]_i_4 
       (.I0(ck_cnt_reg[13]),
        .I1(ck_cnt_reg[12]),
        .I2(ck_cnt_reg[14]),
        .I3(ck_cnt_reg[15]),
        .I4(\pckv_sy[0]_i_8_n_0 ),
        .O(\pckv_sy[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pckv_sy[0]_i_5 
       (.I0(ck_cnt_reg[2]),
        .I1(ck_cnt_reg[3]),
        .I2(ck_cnt_reg[0]),
        .I3(ck_cnt_reg[1]),
        .O(\pckv_sy[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pckv_sy[0]_i_6 
       (.I0(ck_cnt_reg[6]),
        .I1(ck_cnt_reg[7]),
        .I2(ck_cnt_reg[4]),
        .I3(ck_cnt_reg[5]),
        .O(\pckv_sy[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pckv_sy[0]_i_7 
       (.I0(ck_cnt_reg[10]),
        .I1(ck_cnt_reg[11]),
        .I2(ck_cnt_reg[8]),
        .I3(ck_cnt_reg[9]),
        .O(\pckv_sy[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pckv_sy[0]_i_8 
       (.I0(ck_cnt_reg[10]),
        .I1(ck_cnt_reg[11]),
        .I2(ck_cnt_reg[8]),
        .I3(ck_cnt_reg[9]),
        .O(\pckv_sy[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pix[4]_i_1 
       (.I0(cmif_dat[0]),
        .I1(lat_pixh),
        .I2(cm76_fdatw[4]),
        .O(\pix[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pix[5]_i_1 
       (.I0(cmif_dat[1]),
        .I1(lat_pixh),
        .I2(cm76_fdatw[5]),
        .O(\pix[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pix[7]_i_1 
       (.I0(vsync_det),
        .I1(lat_pixh),
        .I2(cm76_fdatw[7]),
        .O(\pix[7]_i_1_n_0 ));
  FDCE \pix_reg[0] 
       (.C(cm76_pclk),
        .CE(lat_pixl),
        .CLR(\stat_reg[0] ),
        .D(cmif_dat[0]),
        .Q(cm76_fdatw[0]));
  FDCE \pix_reg[1] 
       (.C(cm76_pclk),
        .CE(lat_pixl),
        .CLR(\stat_reg[0] ),
        .D(cmif_dat[1]),
        .Q(cm76_fdatw[1]));
  FDCE \pix_reg[2] 
       (.C(cm76_pclk),
        .CE(lat_pixl),
        .CLR(\stat_reg[0] ),
        .D(cmif_dat[2]),
        .Q(cm76_fdatw[2]));
  FDCE \pix_reg[3] 
       (.C(cm76_pclk),
        .CE(lat_pixl),
        .CLR(\stat_reg[0] ),
        .D(cmif_dat[3]),
        .Q(cm76_fdatw[3]));
  FDCE \pix_reg[4] 
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .CLR(\stat_reg[0] ),
        .D(\pix[4]_i_1_n_0 ),
        .Q(cm76_fdatw[4]));
  FDCE \pix_reg[5] 
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .CLR(\stat_reg[0] ),
        .D(\pix[5]_i_1_n_0 ),
        .Q(cm76_fdatw[5]));
  FDCE \pix_reg[6] 
       (.C(cm76_pclk),
        .CE(lat_pixl),
        .CLR(\stat_reg[0] ),
        .D(hsync_det),
        .Q(cm76_fdatw[6]));
  FDCE \pix_reg[7] 
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .CLR(\stat_reg[0] ),
        .D(\pix[7]_i_1_n_0 ),
        .Q(cm76_fdatw[7]));
  FDCE vsync_det_reg
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .CLR(\stat_reg[0] ),
        .D(fsm_n_4),
        .Q(vsync_det));
endmodule

module cm76_ctrl
   (cm76_xclk,
    bdatr,
    cm76_frest,
    ctrl_cenb,
    \cm76ctl_reg[0]_0 ,
    cm76_fread,
    cm76_fwrit,
    \cm76ctl_reg[2]_0 ,
    \cm76ctl_reg[1]_0 ,
    clk,
    cm76_fempt,
    cm76_fdatr,
    brdy,
    bcmdw,
    bcs_cm76_n,
    badr,
    bcmdr,
    cm76_ffull,
    cmif_fwrit,
    rst_n,
    Q,
    bdatw,
    D,
    cm76_frest_bsy);
  output cm76_xclk;
  output [7:0]bdatr;
  output cm76_frest;
  output ctrl_cenb;
  output \cm76ctl_reg[0]_0 ;
  output cm76_fread;
  output cm76_fwrit;
  output [0:0]\cm76ctl_reg[2]_0 ;
  output \cm76ctl_reg[1]_0 ;
  input clk;
  input cm76_fempt;
  input [7:0]cm76_fdatr;
  input brdy;
  input bcmdw;
  input bcs_cm76_n;
  input [3:0]badr;
  input bcmdr;
  input cm76_ffull;
  input cmif_fwrit;
  input rst_n;
  input [0:0]Q;
  input [2:0]bdatw;
  input [0:0]D;
  input cm76_frest_bsy;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]D;
  wire [0:0]Q;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_cm76_n;
  wire [7:0]bdatr;
  wire [2:0]bdatw;
  wire brdy;
  wire clk;
  wire [7:0]cm76_fdatr;
  wire cm76_fempt;
  wire cm76_ffull;
  wire cm76_fread;
  wire cm76_frest;
  wire cm76_frest_bsy;
  wire cm76_fwrit;
  wire cm76_xclk;
  wire \cm76ctl[0]_i_1_n_0 ;
  wire \cm76ctl[1]_i_1_n_0 ;
  wire \cm76ctl[2]_i_1_n_0 ;
  wire \cm76ctl_reg[0]_0 ;
  wire \cm76ctl_reg[1]_0 ;
  wire [0:0]\cm76ctl_reg[2]_0 ;
  wire cmif_fwrit;
  wire ctrl_cenb;
  wire ctrl_fful;
  wire ctrl_frbs;
  wire ctrl_pckv;
  wire ctrl_xcke;
  wire \fful_sy_reg_n_0_[0] ;
  wire \frbs_sy_reg_n_0_[0] ;
  wire \pckv_sy_reg_n_0_[0] ;
  wire rd_cm76ctl;
  wire rd_cm76ctl1__1;
  wire rd_cm76ctl_i_1_n_0;
  wire rd_cm76pix;
  wire rd_cm76pix1__1;
  wire rd_cm76pix_i_1_n_0;
  wire rst_n;
  wire wr_cm76ctl;
  wire xclk_d_i_1_n_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[0]_INST_0 
       (.I0(ctrl_xcke),
        .I1(rd_cm76ctl),
        .I2(rd_cm76pix),
        .I3(cm76_fdatr[0]),
        .O(bdatr[0]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[1]_INST_0 
       (.I0(ctrl_cenb),
        .I1(rd_cm76ctl),
        .I2(rd_cm76pix),
        .I3(cm76_fdatr[1]),
        .O(bdatr[1]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[2]_INST_0 
       (.I0(\cm76ctl_reg[2]_0 ),
        .I1(rd_cm76ctl),
        .I2(rd_cm76pix),
        .I3(cm76_fdatr[2]),
        .O(bdatr[2]));
  LUT3 #(
    .INIT(8'h08)) 
    \bdatr[3]_INST_0 
       (.I0(cm76_fdatr[3]),
        .I1(rd_cm76pix),
        .I2(rd_cm76ctl),
        .O(bdatr[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[4]_INST_0 
       (.I0(ctrl_pckv),
        .I1(rd_cm76ctl),
        .I2(rd_cm76pix),
        .I3(cm76_fdatr[4]),
        .O(bdatr[4]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[5]_INST_0 
       (.I0(ctrl_frbs),
        .I1(rd_cm76ctl),
        .I2(rd_cm76pix),
        .I3(cm76_fdatr[5]),
        .O(bdatr[5]));
  LUT5 #(
    .INIT(32'h1F101010)) 
    \bdatr[6]_INST_0 
       (.I0(cm76_fempt),
        .I1(ctrl_fful),
        .I2(rd_cm76ctl),
        .I3(rd_cm76pix),
        .I4(cm76_fdatr[6]),
        .O(bdatr[6]));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[7]_INST_0 
       (.I0(ctrl_fful),
        .I1(rd_cm76ctl),
        .I2(rd_cm76pix),
        .I3(cm76_fdatr[7]),
        .O(bdatr[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \ck_cnt[0]_i_3 
       (.I0(ctrl_xcke),
        .O(\cm76ctl_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    cm76_fread_INST_0
       (.I0(rd_cm76pix1__1),
        .I1(cm76_fempt),
        .I2(bcmdr),
        .I3(bcs_cm76_n),
        .I4(ctrl_fful),
        .O(cm76_fread));
  LUT4 #(
    .INIT(16'h0010)) 
    cm76_fread_INST_0_i_1
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .O(rd_cm76pix1__1));
  LUT1 #(
    .INIT(2'h1)) 
    cm76_frest_INST_0
       (.I0(ctrl_cenb),
        .O(cm76_frest));
  LUT3 #(
    .INIT(8'h20)) 
    cm76_fwrit_INST_0
       (.I0(ctrl_cenb),
        .I1(cm76_ffull),
        .I2(cmif_fwrit),
        .O(cm76_fwrit));
  LUT4 #(
    .INIT(16'hE200)) 
    \cm76ctl[0]_i_1 
       (.I0(ctrl_xcke),
        .I1(wr_cm76ctl),
        .I2(bdatw[0]),
        .I3(rst_n),
        .O(\cm76ctl[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \cm76ctl[1]_i_1 
       (.I0(ctrl_cenb),
        .I1(wr_cm76ctl),
        .I2(bdatw[1]),
        .I3(rst_n),
        .O(\cm76ctl[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \cm76ctl[2]_i_1 
       (.I0(\cm76ctl_reg[2]_0 ),
        .I1(wr_cm76ctl),
        .I2(bdatw[2]),
        .I3(rst_n),
        .O(\cm76ctl[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \cm76ctl[2]_i_2 
       (.I0(rd_cm76ctl1__1),
        .I1(brdy),
        .I2(bcmdw),
        .I3(bcs_cm76_n),
        .O(wr_cm76ctl));
  FDRE \cm76ctl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\cm76ctl[0]_i_1_n_0 ),
        .Q(ctrl_xcke),
        .R(\<const0> ));
  FDRE \cm76ctl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\cm76ctl[1]_i_1_n_0 ),
        .Q(ctrl_cenb),
        .R(\<const0> ));
  FDRE \cm76ctl_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\cm76ctl[2]_i_1_n_0 ),
        .Q(\cm76ctl_reg[2]_0 ),
        .R(\<const0> ));
  FDRE \fful_sy_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(cm76_ffull),
        .Q(\fful_sy_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \fful_sy_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\fful_sy_reg_n_0_[0] ),
        .Q(ctrl_fful),
        .R(\<const0> ));
  FDRE \frbs_sy_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(cm76_frest_bsy),
        .Q(\frbs_sy_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \frbs_sy_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\frbs_sy_reg_n_0_[0] ),
        .Q(ctrl_frbs),
        .R(\<const0> ));
  FDRE \pckv_sy_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(D),
        .Q(\pckv_sy_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \pckv_sy_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\pckv_sy_reg_n_0_[0] ),
        .Q(ctrl_pckv),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h7)) 
    \pix[7]_i_2 
       (.I0(ctrl_cenb),
        .I1(Q),
        .O(\cm76ctl_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h2222E22200000000)) 
    rd_cm76ctl_i_1
       (.I0(rd_cm76ctl),
        .I1(brdy),
        .I2(rd_cm76ctl1__1),
        .I3(bcmdr),
        .I4(bcs_cm76_n),
        .I5(rst_n),
        .O(rd_cm76ctl_i_1_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    rd_cm76ctl_i_2
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .O(rd_cm76ctl1__1));
  FDRE rd_cm76ctl_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rd_cm76ctl_i_1_n_0),
        .Q(rd_cm76ctl),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h2222E22200000000)) 
    rd_cm76pix_i_1
       (.I0(rd_cm76pix),
        .I1(brdy),
        .I2(rd_cm76pix1__1),
        .I3(bcmdr),
        .I4(bcs_cm76_n),
        .I5(rst_n),
        .O(rd_cm76pix_i_1_n_0));
  FDRE rd_cm76pix_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rd_cm76pix_i_1_n_0),
        .Q(rd_cm76pix),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h08)) 
    xclk_d_i_1
       (.I0(ctrl_xcke),
        .I1(rst_n),
        .I2(cm76_xclk),
        .O(xclk_d_i_1_n_0));
  FDRE xclk_d_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(xclk_d_i_1_n_0),
        .Q(cm76_xclk),
        .R(\<const0> ));
endmodule

module cm76_fsm
   (cmif_fwrit,
    E,
    lat_pixh,
    \stat_reg[1]_0 ,
    cmif_vsync_reg,
    \stat_reg[0]_0 ,
    cm76_pclk,
    cmif_href,
    cm76_ffull,
    Q,
    href_1st,
    \stat_reg[0]_1 ,
    cmif_vsync,
    cmif_href_pre,
    D,
    vsync_det);
  output cmif_fwrit;
  output [0:0]E;
  output lat_pixh;
  output \stat_reg[1]_0 ;
  output cmif_vsync_reg;
  input \stat_reg[0]_0 ;
  input cm76_pclk;
  input cmif_href;
  input cm76_ffull;
  input [0:0]Q;
  input href_1st;
  input [0:0]\stat_reg[0]_1 ;
  input cmif_vsync;
  input cmif_href_pre;
  input [0:0]D;
  input vsync_det;

  wire \<const1> ;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire cm76_ffull;
  wire cm76_pclk;
  wire cmif_fwrit;
  wire cmif_href;
  wire cmif_href_pre;
  wire cmif_vsync;
  wire cmif_vsync_reg;
  wire href_1st;
  wire lat_pixh;
  wire [0:0]p_0_in;
  wire [2:0]stat;
  wire \stat[0]_i_2_n_0 ;
  wire [2:0]stat_nx;
  wire \stat_reg[0]_0 ;
  wire [0:0]\stat_reg[0]_1 ;
  wire \stat_reg[1]_0 ;
  wire vsync_det;

  VCC VCC
       (.P(\<const1> ));
  FDRE cmif_fwrit_reg
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .D(E),
        .Q(cmif_fwrit),
        .R(\stat_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFDFDFFFF00FD0000)) 
    hsync_det_i_1
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(stat[2]),
        .I3(cmif_href_pre),
        .I4(cmif_href),
        .I5(D),
        .O(\stat_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \pix[6]_i_1 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(cmif_href),
        .I3(stat[1]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \pix[7]_i_3 
       (.I0(stat[2]),
        .I1(stat[1]),
        .I2(stat[0]),
        .I3(cmif_href),
        .I4(cm76_ffull),
        .I5(p_0_in),
        .O(lat_pixh));
  LUT5 #(
    .INIT(32'hABFF0000)) 
    \stat[0]_i_1 
       (.I0(cm76_ffull),
        .I1(stat[1]),
        .I2(cmif_href),
        .I3(stat[0]),
        .I4(\stat[0]_i_2_n_0 ),
        .O(stat_nx[0]));
  LUT6 #(
    .INIT(64'h3333333333334744)) 
    \stat[0]_i_2 
       (.I0(cmif_href),
        .I1(stat[2]),
        .I2(\stat_reg[0]_1 ),
        .I3(cmif_vsync),
        .I4(stat[1]),
        .I5(stat[0]),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444400000040)) 
    \stat[1]_i_1 
       (.I0(stat[2]),
        .I1(stat[0]),
        .I2(cmif_href),
        .I3(stat[1]),
        .I4(p_0_in),
        .I5(cm76_ffull),
        .O(stat_nx[1]));
  LUT6 #(
    .INIT(64'h000A000A02000000)) 
    \stat[2]_i_1 
       (.I0(cmif_href),
        .I1(cm76_ffull),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(p_0_in),
        .I5(stat[2]),
        .O(stat_nx[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \stat[2]_i_2 
       (.I0(Q),
        .I1(href_1st),
        .O(p_0_in));
  FDRE \stat_reg[0] 
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(stat[0]),
        .R(\stat_reg[0]_0 ));
  FDRE \stat_reg[1] 
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(stat[1]),
        .R(\stat_reg[0]_0 ));
  FDRE \stat_reg[2] 
       (.C(cm76_pclk),
        .CE(\<const1> ),
        .D(stat_nx[2]),
        .Q(stat[2]),
        .R(\stat_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    vsync_det_i_1
       (.I0(lat_pixh),
        .I1(cmif_vsync),
        .I2(vsync_det),
        .O(cmif_vsync_reg));
endmodule
