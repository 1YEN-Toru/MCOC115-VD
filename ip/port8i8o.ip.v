
(* STRUCTURAL_NETLIST = "yes" *)
module port8i8o
   (clk,
    rst_n,
    port_init_hizo,
    brdy,
    bcmdr,
    bcmdw,
    bcs_port_n,
    badr,
    bdatw,
    port_inp,
    bdatr,
    port_enb,
    port_sel,
    port_out);
//
//	PORT Unit (General Purpose 8 Inputs / 8 Outputs)
//		(c) 2021	1YEN Toru
//
//
//	2021/08/14	ver.1.02
//		corresponding to bi-directional port and open drain output port
//		new i/o register: pordir, porode, porsel
//		initial value of pordir register:
//			port_init_hizo=0: pordir=16'h0000; (for backward compatibility)
//			port_init_hizo=1: pordir=16'h00ff; (port_out initial drive high-z)
//
//	2021/03/27	ver.1.00
//		8 inputs / 8 outputs edition
//
  input clk;
  input rst_n;
  input port_init_hizo;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bcs_port_n;
  input [3:0]badr;
  input [7:0]bdatw;
  input [7:0]port_inp;
  output [15:0]bdatr;
  output [7:0]port_enb;
  output [7:0]port_sel;
  output [7:0]port_out;

  wire \<const0> ;
  wire [3:0]badr;
  wire bcmdr;
  wire bcmdw;
  wire bcs_port_n;
  wire [7:0]\^bdatr ;
  wire [7:0]bdatw;
  wire brdy;
  wire clk;
  wire p_0_in;
  wire p_12_in;
  wire [7:0]porin2;
  wire [7:0]port_dir;
  wire [7:0]port_enb;
  wire port_init_hizo;
  wire [7:0]port_inp;
  wire [7:0]port_ode;
  wire [7:0]port_out;
  wire [7:0]port_sel;
  wire rst_n;

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
  port_pctl pctl
       (.Q(porin2),
        .SR(p_0_in),
        .badr(badr),
        .bcmdr(bcmdr),
        .bcs_port_n(bcs_port_n),
        .bdatr(\^bdatr ),
        .\bdatr[7] (port_ode),
        .\bdatr[7]_0 (port_out),
        .brdy(brdy),
        .clk(clk),
        .port_dir(port_dir),
        .port_inp(port_inp),
        .port_sel(port_sel));
  port_pordir pordir
       (.Q(port_ode),
        .SR(p_0_in),
        .badr(badr),
        .bcmdw(bcmdw),
        .bcs_port_n(bcs_port_n),
        .bdatw(bdatw),
        .brdy(brdy),
        .clk(clk),
        .p_12_in(p_12_in),
        .port_dir(port_dir),
        .port_enb(port_enb),
        .\port_enb[7] (port_out),
        .port_init_hizo(port_init_hizo),
        .port_sel(port_sel),
        .rst_n(rst_n));
  port_porin porin
       (.Q(porin2),
        .SR(p_0_in),
        .clk(clk),
        .port_inp(port_inp),
        .rst_n(rst_n));
  port_porout porout
       (.Q(port_out),
        .SR(p_0_in),
        .badr(badr),
        .bdatw(bdatw),
        .clk(clk),
        .p_12_in(p_12_in));
endmodule

module port_pctl
   (bdatr,
    SR,
    brdy,
    clk,
    bcs_port_n,
    bcmdr,
    badr,
    port_sel,
    Q,
    port_dir,
    \bdatr[7] ,
    \bdatr[7]_0 ,
    port_inp);
  output [7:0]bdatr;
  input [0:0]SR;
  input brdy;
  input clk;
  input bcs_port_n;
  input bcmdr;
  input [3:0]badr;
  input [7:0]port_sel;
  input [7:0]Q;
  input [7:0]port_dir;
  input [7:0]\bdatr[7] ;
  input [7:0]\bdatr[7]_0 ;
  input [7:0]port_inp;

  wire [7:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire bcmdr;
  wire bcs_port_n;
  wire [7:0]bdatr;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[0]_INST_0_i_2_n_0 ;
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
  wire [7:0]\bdatr[7] ;
  wire [7:0]\bdatr[7]_0 ;
  wire \bdatr[7]_INST_0_i_1_n_0 ;
  wire \bdatr[7]_INST_0_i_2_n_0 ;
  wire brdy;
  wire clk;
  wire [7:0]port_dir;
  wire [7:0]port_inp;
  wire port_pordir_rd;
  wire port_pordir_rd0;
  wire port_porin_rd;
  wire port_porin_rd0;
  wire port_porind_rd;
  wire port_porind_rd0;
  wire port_porode_rd;
  wire port_porode_rd0;
  wire port_porout_rd;
  wire port_porout_rd0;
  wire port_porsel_rd;
  wire port_porsel_rd0;
  wire [7:0]port_sel;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatr[0]_INST_0 
       (.I0(\bdatr[0]_INST_0_i_1_n_0 ),
        .I1(port_porsel_rd),
        .I2(port_sel[0]),
        .I3(port_porin_rd),
        .I4(Q[0]),
        .I5(\bdatr[0]_INST_0_i_2_n_0 ),
        .O(bdatr[0]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(\bdatr[7]_0 [0]),
        .I1(port_porout_rd),
        .I2(port_inp[0]),
        .I3(port_porind_rd),
        .I4(port_porin_rd),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AC00A0)) 
    \bdatr[0]_INST_0_i_2 
       (.I0(port_dir[0]),
        .I1(\bdatr[7] [0]),
        .I2(port_pordir_rd),
        .I3(port_porsel_rd),
        .I4(port_porode_rd),
        .O(\bdatr[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatr[1]_INST_0 
       (.I0(\bdatr[1]_INST_0_i_1_n_0 ),
        .I1(port_porsel_rd),
        .I2(port_sel[1]),
        .I3(port_porin_rd),
        .I4(Q[1]),
        .I5(\bdatr[1]_INST_0_i_2_n_0 ),
        .O(bdatr[1]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(\bdatr[7]_0 [1]),
        .I1(port_porout_rd),
        .I2(port_inp[1]),
        .I3(port_porind_rd),
        .I4(port_porin_rd),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AC00A0)) 
    \bdatr[1]_INST_0_i_2 
       (.I0(port_dir[1]),
        .I1(\bdatr[7] [1]),
        .I2(port_pordir_rd),
        .I3(port_porsel_rd),
        .I4(port_porode_rd),
        .O(\bdatr[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatr[2]_INST_0 
       (.I0(\bdatr[2]_INST_0_i_1_n_0 ),
        .I1(port_porsel_rd),
        .I2(port_sel[2]),
        .I3(port_porin_rd),
        .I4(Q[2]),
        .I5(\bdatr[2]_INST_0_i_2_n_0 ),
        .O(bdatr[2]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(\bdatr[7]_0 [2]),
        .I1(port_porout_rd),
        .I2(port_inp[2]),
        .I3(port_porind_rd),
        .I4(port_porin_rd),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AC00A0)) 
    \bdatr[2]_INST_0_i_2 
       (.I0(port_dir[2]),
        .I1(\bdatr[7] [2]),
        .I2(port_pordir_rd),
        .I3(port_porsel_rd),
        .I4(port_porode_rd),
        .O(\bdatr[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatr[3]_INST_0 
       (.I0(\bdatr[3]_INST_0_i_1_n_0 ),
        .I1(port_porsel_rd),
        .I2(port_sel[3]),
        .I3(port_porin_rd),
        .I4(Q[3]),
        .I5(\bdatr[3]_INST_0_i_2_n_0 ),
        .O(bdatr[3]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(\bdatr[7]_0 [3]),
        .I1(port_porout_rd),
        .I2(port_inp[3]),
        .I3(port_porind_rd),
        .I4(port_porin_rd),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AC00A0)) 
    \bdatr[3]_INST_0_i_2 
       (.I0(port_dir[3]),
        .I1(\bdatr[7] [3]),
        .I2(port_pordir_rd),
        .I3(port_porsel_rd),
        .I4(port_porode_rd),
        .O(\bdatr[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatr[4]_INST_0 
       (.I0(\bdatr[4]_INST_0_i_1_n_0 ),
        .I1(port_porsel_rd),
        .I2(port_sel[4]),
        .I3(port_porin_rd),
        .I4(Q[4]),
        .I5(\bdatr[4]_INST_0_i_2_n_0 ),
        .O(bdatr[4]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(\bdatr[7]_0 [4]),
        .I1(port_porout_rd),
        .I2(port_inp[4]),
        .I3(port_porind_rd),
        .I4(port_porin_rd),
        .O(\bdatr[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AC00A0)) 
    \bdatr[4]_INST_0_i_2 
       (.I0(port_dir[4]),
        .I1(\bdatr[7] [4]),
        .I2(port_pordir_rd),
        .I3(port_porsel_rd),
        .I4(port_porode_rd),
        .O(\bdatr[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatr[5]_INST_0 
       (.I0(\bdatr[5]_INST_0_i_1_n_0 ),
        .I1(port_porsel_rd),
        .I2(port_sel[5]),
        .I3(port_porin_rd),
        .I4(Q[5]),
        .I5(\bdatr[5]_INST_0_i_2_n_0 ),
        .O(bdatr[5]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(\bdatr[7]_0 [5]),
        .I1(port_porout_rd),
        .I2(port_inp[5]),
        .I3(port_porind_rd),
        .I4(port_porin_rd),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AC00A0)) 
    \bdatr[5]_INST_0_i_2 
       (.I0(port_dir[5]),
        .I1(\bdatr[7] [5]),
        .I2(port_pordir_rd),
        .I3(port_porsel_rd),
        .I4(port_porode_rd),
        .O(\bdatr[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatr[6]_INST_0 
       (.I0(\bdatr[6]_INST_0_i_1_n_0 ),
        .I1(port_porsel_rd),
        .I2(port_sel[6]),
        .I3(port_porin_rd),
        .I4(Q[6]),
        .I5(\bdatr[6]_INST_0_i_2_n_0 ),
        .O(bdatr[6]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(\bdatr[7]_0 [6]),
        .I1(port_porout_rd),
        .I2(port_inp[6]),
        .I3(port_porind_rd),
        .I4(port_porin_rd),
        .O(\bdatr[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AC00A0)) 
    \bdatr[6]_INST_0_i_2 
       (.I0(port_dir[6]),
        .I1(\bdatr[7] [6]),
        .I2(port_pordir_rd),
        .I3(port_porsel_rd),
        .I4(port_porode_rd),
        .O(\bdatr[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \bdatr[7]_INST_0 
       (.I0(\bdatr[7]_INST_0_i_1_n_0 ),
        .I1(port_porsel_rd),
        .I2(port_sel[7]),
        .I3(port_porin_rd),
        .I4(Q[7]),
        .I5(\bdatr[7]_INST_0_i_2_n_0 ),
        .O(bdatr[7]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(\bdatr[7]_0 [7]),
        .I1(port_porout_rd),
        .I2(port_inp[7]),
        .I3(port_porind_rd),
        .I4(port_porin_rd),
        .O(\bdatr[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AC00A0)) 
    \bdatr[7]_INST_0_i_2 
       (.I0(port_dir[7]),
        .I1(\bdatr[7] [7]),
        .I2(port_pordir_rd),
        .I3(port_porsel_rd),
        .I4(port_porode_rd),
        .O(\bdatr[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    port_pordir_rd_i_1
       (.I0(bcs_port_n),
        .I1(bcmdr),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(badr[1]),
        .I5(badr[3]),
        .O(port_pordir_rd0));
  FDRE port_pordir_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(port_pordir_rd0),
        .Q(port_pordir_rd),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    port_porin_rd_i_1
       (.I0(bcmdr),
        .I1(bcs_port_n),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[2]),
        .I5(badr[0]),
        .O(port_porin_rd0));
  FDRE port_porin_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(port_porin_rd0),
        .Q(port_porin_rd),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    port_porind_rd_i_1
       (.I0(bcmdr),
        .I1(bcs_port_n),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[2]),
        .I5(badr[0]),
        .O(port_porind_rd0));
  FDRE port_porind_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(port_porind_rd0),
        .Q(port_porind_rd),
        .R(SR));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    port_porode_rd_i_1
       (.I0(bcs_port_n),
        .I1(bcmdr),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(badr[1]),
        .I5(badr[3]),
        .O(port_porode_rd0));
  FDRE port_porode_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(port_porode_rd0),
        .Q(port_porode_rd),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    port_porout_rd_i_1
       (.I0(bcs_port_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(badr[3]),
        .I5(badr[1]),
        .O(port_porout_rd0));
  FDRE port_porout_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(port_porout_rd0),
        .Q(port_porout_rd),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    port_porsel_rd_i_1
       (.I0(bcs_port_n),
        .I1(bcmdr),
        .I2(badr[2]),
        .I3(badr[0]),
        .I4(badr[1]),
        .I5(badr[3]),
        .O(port_porsel_rd0));
  FDRE port_porsel_rd_reg
       (.C(clk),
        .CE(brdy),
        .D(port_porsel_rd0),
        .Q(port_porsel_rd),
        .R(SR));
endmodule

module port_pordir
   (p_12_in,
    port_enb,
    Q,
    port_dir,
    port_sel,
    badr,
    rst_n,
    bcs_port_n,
    bcmdw,
    brdy,
    \port_enb[7] ,
    bdatw,
    SR,
    clk,
    port_init_hizo);
  output p_12_in;
  output [7:0]port_enb;
  output [7:0]Q;
  output [7:0]port_dir;
  output [7:0]port_sel;
  input [3:0]badr;
  input rst_n;
  input bcs_port_n;
  input bcmdw;
  input brdy;
  input [7:0]\port_enb[7] ;
  input [7:0]bdatw;
  input [0:0]SR;
  input clk;
  input port_init_hizo;

  wire [7:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire bcmdw;
  wire bcs_port_n;
  wire [7:0]bdatw;
  wire brdy;
  wire clk;
  wire p_12_in;
  wire [7:0]port_dir;
  wire \port_dir[0]_i_1_n_0 ;
  wire \port_dir[1]_i_1_n_0 ;
  wire \port_dir[2]_i_1_n_0 ;
  wire \port_dir[3]_i_1_n_0 ;
  wire \port_dir[4]_i_1_n_0 ;
  wire \port_dir[5]_i_1_n_0 ;
  wire \port_dir[6]_i_1_n_0 ;
  wire \port_dir[7]_i_1_n_0 ;
  wire \port_dir[7]_i_2_n_0 ;
  wire \port_dir[7]_i_3_n_0 ;
  wire [7:0]port_enb;
  wire [7:0]\port_enb[7] ;
  wire port_init_hizo;
  wire port_porode_wr;
  wire port_porsel_wr;
  wire [7:0]port_sel;
  wire rst_n;

  LUT2 #(
    .INIT(4'h8)) 
    \port_dir[0]_i_1 
       (.I0(bdatw[0]),
        .I1(rst_n),
        .O(\port_dir[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \port_dir[1]_i_1 
       (.I0(bdatw[1]),
        .I1(rst_n),
        .O(\port_dir[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \port_dir[2]_i_1 
       (.I0(bdatw[2]),
        .I1(rst_n),
        .O(\port_dir[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \port_dir[3]_i_1 
       (.I0(bdatw[3]),
        .I1(rst_n),
        .O(\port_dir[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \port_dir[4]_i_1 
       (.I0(bdatw[4]),
        .I1(rst_n),
        .O(\port_dir[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \port_dir[5]_i_1 
       (.I0(bdatw[5]),
        .I1(rst_n),
        .O(\port_dir[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \port_dir[6]_i_1 
       (.I0(bdatw[6]),
        .I1(rst_n),
        .O(\port_dir[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \port_dir[7]_i_1 
       (.I0(port_init_hizo),
        .I1(rst_n),
        .O(\port_dir[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04000000FFFFFFFF)) 
    \port_dir[7]_i_2 
       (.I0(badr[3]),
        .I1(badr[1]),
        .I2(badr[0]),
        .I3(badr[2]),
        .I4(p_12_in),
        .I5(rst_n),
        .O(\port_dir[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \port_dir[7]_i_3 
       (.I0(bdatw[7]),
        .I1(rst_n),
        .O(\port_dir[7]_i_3_n_0 ));
  FDSE \port_dir_reg[0] 
       (.C(clk),
        .CE(\port_dir[7]_i_2_n_0 ),
        .D(\port_dir[0]_i_1_n_0 ),
        .Q(port_dir[0]),
        .S(\port_dir[7]_i_1_n_0 ));
  FDSE \port_dir_reg[1] 
       (.C(clk),
        .CE(\port_dir[7]_i_2_n_0 ),
        .D(\port_dir[1]_i_1_n_0 ),
        .Q(port_dir[1]),
        .S(\port_dir[7]_i_1_n_0 ));
  FDSE \port_dir_reg[2] 
       (.C(clk),
        .CE(\port_dir[7]_i_2_n_0 ),
        .D(\port_dir[2]_i_1_n_0 ),
        .Q(port_dir[2]),
        .S(\port_dir[7]_i_1_n_0 ));
  FDSE \port_dir_reg[3] 
       (.C(clk),
        .CE(\port_dir[7]_i_2_n_0 ),
        .D(\port_dir[3]_i_1_n_0 ),
        .Q(port_dir[3]),
        .S(\port_dir[7]_i_1_n_0 ));
  FDSE \port_dir_reg[4] 
       (.C(clk),
        .CE(\port_dir[7]_i_2_n_0 ),
        .D(\port_dir[4]_i_1_n_0 ),
        .Q(port_dir[4]),
        .S(\port_dir[7]_i_1_n_0 ));
  FDSE \port_dir_reg[5] 
       (.C(clk),
        .CE(\port_dir[7]_i_2_n_0 ),
        .D(\port_dir[5]_i_1_n_0 ),
        .Q(port_dir[5]),
        .S(\port_dir[7]_i_1_n_0 ));
  FDSE \port_dir_reg[6] 
       (.C(clk),
        .CE(\port_dir[7]_i_2_n_0 ),
        .D(\port_dir[6]_i_1_n_0 ),
        .Q(port_dir[6]),
        .S(\port_dir[7]_i_1_n_0 ));
  FDSE \port_dir_reg[7] 
       (.C(clk),
        .CE(\port_dir[7]_i_2_n_0 ),
        .D(\port_dir[7]_i_3_n_0 ),
        .Q(port_dir[7]),
        .S(\port_dir[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \port_enb[0]_INST_0 
       (.I0(Q[0]),
        .I1(\port_enb[7] [0]),
        .I2(port_dir[0]),
        .O(port_enb[0]));
  LUT3 #(
    .INIT(8'h07)) 
    \port_enb[1]_INST_0 
       (.I0(Q[1]),
        .I1(\port_enb[7] [1]),
        .I2(port_dir[1]),
        .O(port_enb[1]));
  LUT3 #(
    .INIT(8'h07)) 
    \port_enb[2]_INST_0 
       (.I0(Q[2]),
        .I1(\port_enb[7] [2]),
        .I2(port_dir[2]),
        .O(port_enb[2]));
  LUT3 #(
    .INIT(8'h07)) 
    \port_enb[3]_INST_0 
       (.I0(Q[3]),
        .I1(\port_enb[7] [3]),
        .I2(port_dir[3]),
        .O(port_enb[3]));
  LUT3 #(
    .INIT(8'h07)) 
    \port_enb[4]_INST_0 
       (.I0(Q[4]),
        .I1(\port_enb[7] [4]),
        .I2(port_dir[4]),
        .O(port_enb[4]));
  LUT3 #(
    .INIT(8'h07)) 
    \port_enb[5]_INST_0 
       (.I0(Q[5]),
        .I1(\port_enb[7] [5]),
        .I2(port_dir[5]),
        .O(port_enb[5]));
  LUT3 #(
    .INIT(8'h07)) 
    \port_enb[6]_INST_0 
       (.I0(Q[6]),
        .I1(\port_enb[7] [6]),
        .I2(port_dir[6]),
        .O(port_enb[6]));
  LUT3 #(
    .INIT(8'h07)) 
    \port_enb[7]_INST_0 
       (.I0(Q[7]),
        .I1(\port_enb[7] [7]),
        .I2(port_dir[7]),
        .O(port_enb[7]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \port_ode[7]_i_1 
       (.I0(p_12_in),
        .I1(badr[2]),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .O(port_porode_wr));
  FDRE \port_ode_reg[0] 
       (.C(clk),
        .CE(port_porode_wr),
        .D(bdatw[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \port_ode_reg[1] 
       (.C(clk),
        .CE(port_porode_wr),
        .D(bdatw[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \port_ode_reg[2] 
       (.C(clk),
        .CE(port_porode_wr),
        .D(bdatw[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \port_ode_reg[3] 
       (.C(clk),
        .CE(port_porode_wr),
        .D(bdatw[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \port_ode_reg[4] 
       (.C(clk),
        .CE(port_porode_wr),
        .D(bdatw[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \port_ode_reg[5] 
       (.C(clk),
        .CE(port_porode_wr),
        .D(bdatw[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \port_ode_reg[6] 
       (.C(clk),
        .CE(port_porode_wr),
        .D(bdatw[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \port_ode_reg[7] 
       (.C(clk),
        .CE(port_porode_wr),
        .D(bdatw[7]),
        .Q(Q[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000008)) 
    \port_sel[7]_i_2 
       (.I0(p_12_in),
        .I1(badr[2]),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[3]),
        .O(port_porsel_wr));
  LUT3 #(
    .INIT(8'h40)) 
    \port_sel[7]_i_3 
       (.I0(bcs_port_n),
        .I1(bcmdw),
        .I2(brdy),
        .O(p_12_in));
  FDRE \port_sel_reg[0] 
       (.C(clk),
        .CE(port_porsel_wr),
        .D(bdatw[0]),
        .Q(port_sel[0]),
        .R(SR));
  FDRE \port_sel_reg[1] 
       (.C(clk),
        .CE(port_porsel_wr),
        .D(bdatw[1]),
        .Q(port_sel[1]),
        .R(SR));
  FDRE \port_sel_reg[2] 
       (.C(clk),
        .CE(port_porsel_wr),
        .D(bdatw[2]),
        .Q(port_sel[2]),
        .R(SR));
  FDRE \port_sel_reg[3] 
       (.C(clk),
        .CE(port_porsel_wr),
        .D(bdatw[3]),
        .Q(port_sel[3]),
        .R(SR));
  FDRE \port_sel_reg[4] 
       (.C(clk),
        .CE(port_porsel_wr),
        .D(bdatw[4]),
        .Q(port_sel[4]),
        .R(SR));
  FDRE \port_sel_reg[5] 
       (.C(clk),
        .CE(port_porsel_wr),
        .D(bdatw[5]),
        .Q(port_sel[5]),
        .R(SR));
  FDRE \port_sel_reg[6] 
       (.C(clk),
        .CE(port_porsel_wr),
        .D(bdatw[6]),
        .Q(port_sel[6]),
        .R(SR));
  FDRE \port_sel_reg[7] 
       (.C(clk),
        .CE(port_porsel_wr),
        .D(bdatw[7]),
        .Q(port_sel[7]),
        .R(SR));
endmodule

module port_porin
   (SR,
    Q,
    rst_n,
    port_inp,
    clk);
  output [0:0]SR;
  output [7:0]Q;
  input rst_n;
  input [7:0]port_inp;
  input clk;

  wire \<const1> ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [7:0]porin1;
  wire [7:0]port_inp;
  wire rst_n;

  VCC VCC
       (.P(\<const1> ));
  FDRE \porin1_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(port_inp[0]),
        .Q(porin1[0]),
        .R(SR));
  FDRE \porin1_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(port_inp[1]),
        .Q(porin1[1]),
        .R(SR));
  FDRE \porin1_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(port_inp[2]),
        .Q(porin1[2]),
        .R(SR));
  FDRE \porin1_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(port_inp[3]),
        .Q(porin1[3]),
        .R(SR));
  FDRE \porin1_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(port_inp[4]),
        .Q(porin1[4]),
        .R(SR));
  FDRE \porin1_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(port_inp[5]),
        .Q(porin1[5]),
        .R(SR));
  FDRE \porin1_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(port_inp[6]),
        .Q(porin1[6]),
        .R(SR));
  FDRE \porin1_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(port_inp[7]),
        .Q(porin1[7]),
        .R(SR));
  FDRE \porin2_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(porin1[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \porin2_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(porin1[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \porin2_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(porin1[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \porin2_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(porin1[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \porin2_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(porin1[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \porin2_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(porin1[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \porin2_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(porin1[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \porin2_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(porin1[7]),
        .Q(Q[7]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \port_sel[7]_i_1 
       (.I0(rst_n),
        .O(SR));
endmodule

module port_porout
   (Q,
    p_12_in,
    badr,
    bdatw,
    SR,
    clk);
  output [7:0]Q;
  input p_12_in;
  input [3:0]badr;
  input [7:0]bdatw;
  input [0:0]SR;
  input clk;

  wire [7:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire [7:0]bdatw;
  wire clk;
  wire p_12_in;
  wire [7:0]p_2_in;
  wire \port_out[7]_i_1_n_0 ;

  LUT5 #(
    .INIT(32'h11FE1100)) 
    \port_out[0]_i_1 
       (.I0(badr[0]),
        .I1(badr[2]),
        .I2(badr[1]),
        .I3(bdatw[0]),
        .I4(Q[0]),
        .O(p_2_in[0]));
  LUT5 #(
    .INIT(32'h11FE1100)) 
    \port_out[1]_i_1 
       (.I0(badr[0]),
        .I1(badr[2]),
        .I2(badr[1]),
        .I3(bdatw[1]),
        .I4(Q[1]),
        .O(p_2_in[1]));
  LUT5 #(
    .INIT(32'h11FE1100)) 
    \port_out[2]_i_1 
       (.I0(badr[0]),
        .I1(badr[2]),
        .I2(badr[1]),
        .I3(bdatw[2]),
        .I4(Q[2]),
        .O(p_2_in[2]));
  LUT5 #(
    .INIT(32'h11FE1100)) 
    \port_out[3]_i_1 
       (.I0(badr[0]),
        .I1(badr[2]),
        .I2(badr[1]),
        .I3(bdatw[3]),
        .I4(Q[3]),
        .O(p_2_in[3]));
  LUT5 #(
    .INIT(32'h11FE1100)) 
    \port_out[4]_i_1 
       (.I0(badr[0]),
        .I1(badr[2]),
        .I2(badr[1]),
        .I3(bdatw[4]),
        .I4(Q[4]),
        .O(p_2_in[4]));
  LUT5 #(
    .INIT(32'h11FE1100)) 
    \port_out[5]_i_1 
       (.I0(badr[0]),
        .I1(badr[2]),
        .I2(badr[1]),
        .I3(bdatw[5]),
        .I4(Q[5]),
        .O(p_2_in[5]));
  LUT5 #(
    .INIT(32'h11FE1100)) 
    \port_out[6]_i_1 
       (.I0(badr[0]),
        .I1(badr[2]),
        .I2(badr[1]),
        .I3(bdatw[6]),
        .I4(Q[6]),
        .O(p_2_in[6]));
  LUT5 #(
    .INIT(32'h002000A0)) 
    \port_out[7]_i_1 
       (.I0(p_12_in),
        .I1(badr[1]),
        .I2(badr[3]),
        .I3(badr[0]),
        .I4(badr[2]),
        .O(\port_out[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11FE1100)) 
    \port_out[7]_i_2 
       (.I0(badr[0]),
        .I1(badr[2]),
        .I2(badr[1]),
        .I3(bdatw[7]),
        .I4(Q[7]),
        .O(p_2_in[7]));
  FDRE \port_out_reg[0] 
       (.C(clk),
        .CE(\port_out[7]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \port_out_reg[1] 
       (.C(clk),
        .CE(\port_out[7]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \port_out_reg[2] 
       (.C(clk),
        .CE(\port_out[7]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \port_out_reg[3] 
       (.C(clk),
        .CE(\port_out[7]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \port_out_reg[4] 
       (.C(clk),
        .CE(\port_out[7]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \port_out_reg[5] 
       (.C(clk),
        .CE(\port_out[7]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \port_out_reg[6] 
       (.C(clk),
        .CE(\port_out[7]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \port_out_reg[7] 
       (.C(clk),
        .CE(\port_out[7]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(Q[7]),
        .R(SR));
endmodule
