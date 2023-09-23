
(* STRUCTURAL_NETLIST = "yes" *)
module iomem16
   (clk,
    rst_n,
    brdy,
    bcmdr,
    bcmdw,
    bcmdb,
    bcs_iome_n,
    badr,
    bdatw,
    bdatr);
//
// I/O memory (16 bytes) unit
//		(c) 2023	1YEN Toru
//
//
//	2023/09/23	ver.1.02
//		Distributed RAM macro -> general RTL
//		bcmd[3:0] -> { bcmdb,bcmdw,bcmdr }
//
//	2023/03/11	ver.1.00
//		I/O register area memory (16 bytes) unit
//		access: byte / word
//
  input clk;
  input rst_n;
  input brdy;
  input bcmdr;
  input bcmdw;
  input bcmdb;
  input bcs_iome_n;
  input [3:0]badr;
  input [15:0]bdatw;
  output [15:0]bdatr;

  wire \<const0> ;
  wire GND_2;
  wire [3:0]badr;
  wire bcmdb;
  wire bcmdr;
  wire bcmdw;
  wire bcs_iome_n;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire brdy;
  wire clk;
  wire [7:0]dat_h;
  wire [7:0]dat_hf;
  wire [7:0]dat_l;
  wire [7:0]dat_lf;
  wire drv_h;
  wire drv_h0;
  wire drv_l;
  wire drv_l0;
  wire p_0_in;
  wire rst_n;
  wire wrt_h;
  wire wrt_l;

  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[0]_INST_0 
       (.I0(drv_l),
        .I1(dat_lf[0]),
        .O(bdatr[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[10]_INST_0 
       (.I0(drv_h),
        .I1(dat_hf[2]),
        .O(bdatr[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[11]_INST_0 
       (.I0(drv_h),
        .I1(dat_hf[3]),
        .O(bdatr[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[12]_INST_0 
       (.I0(drv_h),
        .I1(dat_hf[4]),
        .O(bdatr[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[13]_INST_0 
       (.I0(drv_h),
        .I1(dat_hf[5]),
        .O(bdatr[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[14]_INST_0 
       (.I0(drv_h),
        .I1(dat_hf[6]),
        .O(bdatr[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[15]_INST_0 
       (.I0(drv_h),
        .I1(dat_hf[7]),
        .O(bdatr[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[1]_INST_0 
       (.I0(drv_l),
        .I1(dat_lf[1]),
        .O(bdatr[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[2]_INST_0 
       (.I0(drv_l),
        .I1(dat_lf[2]),
        .O(bdatr[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[3]_INST_0 
       (.I0(drv_l),
        .I1(dat_lf[3]),
        .O(bdatr[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[4]_INST_0 
       (.I0(drv_l),
        .I1(dat_lf[4]),
        .O(bdatr[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[5]_INST_0 
       (.I0(drv_l),
        .I1(dat_lf[5]),
        .O(bdatr[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[6]_INST_0 
       (.I0(drv_l),
        .I1(dat_lf[6]),
        .O(bdatr[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[7]_INST_0 
       (.I0(drv_l),
        .I1(dat_lf[7]),
        .O(bdatr[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[8]_INST_0 
       (.I0(drv_h),
        .I1(dat_hf[0]),
        .O(bdatr[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \bdatr[9]_INST_0 
       (.I0(drv_h),
        .I1(dat_hf[1]),
        .O(bdatr[9]));
  FDRE \dat_hf_reg[0] 
       (.C(clk),
        .CE(brdy),
        .D(dat_h[0]),
        .Q(dat_hf[0]),
        .R(p_0_in));
  FDRE \dat_hf_reg[1] 
       (.C(clk),
        .CE(brdy),
        .D(dat_h[1]),
        .Q(dat_hf[1]),
        .R(p_0_in));
  FDRE \dat_hf_reg[2] 
       (.C(clk),
        .CE(brdy),
        .D(dat_h[2]),
        .Q(dat_hf[2]),
        .R(p_0_in));
  FDRE \dat_hf_reg[3] 
       (.C(clk),
        .CE(brdy),
        .D(dat_h[3]),
        .Q(dat_hf[3]),
        .R(p_0_in));
  FDRE \dat_hf_reg[4] 
       (.C(clk),
        .CE(brdy),
        .D(dat_h[4]),
        .Q(dat_hf[4]),
        .R(p_0_in));
  FDRE \dat_hf_reg[5] 
       (.C(clk),
        .CE(brdy),
        .D(dat_h[5]),
        .Q(dat_hf[5]),
        .R(p_0_in));
  FDRE \dat_hf_reg[6] 
       (.C(clk),
        .CE(brdy),
        .D(dat_h[6]),
        .Q(dat_hf[6]),
        .R(p_0_in));
  FDRE \dat_hf_reg[7] 
       (.C(clk),
        .CE(brdy),
        .D(dat_h[7]),
        .Q(dat_hf[7]),
        .R(p_0_in));
  FDRE \dat_lf_reg[0] 
       (.C(clk),
        .CE(brdy),
        .D(dat_l[0]),
        .Q(dat_lf[0]),
        .R(p_0_in));
  FDRE \dat_lf_reg[1] 
       (.C(clk),
        .CE(brdy),
        .D(dat_l[1]),
        .Q(dat_lf[1]),
        .R(p_0_in));
  FDRE \dat_lf_reg[2] 
       (.C(clk),
        .CE(brdy),
        .D(dat_l[2]),
        .Q(dat_lf[2]),
        .R(p_0_in));
  FDRE \dat_lf_reg[3] 
       (.C(clk),
        .CE(brdy),
        .D(dat_l[3]),
        .Q(dat_lf[3]),
        .R(p_0_in));
  FDRE \dat_lf_reg[4] 
       (.C(clk),
        .CE(brdy),
        .D(dat_l[4]),
        .Q(dat_lf[4]),
        .R(p_0_in));
  FDRE \dat_lf_reg[5] 
       (.C(clk),
        .CE(brdy),
        .D(dat_l[5]),
        .Q(dat_lf[5]),
        .R(p_0_in));
  FDRE \dat_lf_reg[6] 
       (.C(clk),
        .CE(brdy),
        .D(dat_l[6]),
        .Q(dat_lf[6]),
        .R(p_0_in));
  FDRE \dat_lf_reg[7] 
       (.C(clk),
        .CE(brdy),
        .D(dat_l[7]),
        .Q(dat_lf[7]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0444)) 
    drv_h_i_1
       (.I0(bcs_iome_n),
        .I1(bcmdr),
        .I2(badr[0]),
        .I3(bcmdb),
        .O(drv_h0));
  FDRE drv_h_reg
       (.C(clk),
        .CE(brdy),
        .D(drv_h0),
        .Q(drv_h),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    drv_l_i_1
       (.I0(rst_n),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h4404)) 
    drv_l_i_2
       (.I0(bcs_iome_n),
        .I1(bcmdr),
        .I2(bcmdb),
        .I3(badr[0]),
        .O(drv_l0));
  FDRE drv_l_reg
       (.C(clk),
        .CE(brdy),
        .D(drv_l0),
        .Q(drv_l),
        .R(p_0_in));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "memh_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    memh_reg_0_7_0_0
       (.A0(badr[1]),
        .A1(badr[2]),
        .A2(badr[3]),
        .A3(\<const0> ),
        .A4(GND_2),
        .D(bdatw[8]),
        .O(dat_h[0]),
        .WCLK(clk),
        .WE(wrt_h));
  LUT4 #(
    .INIT(16'h0444)) 
    memh_reg_0_7_0_0_i_1
       (.I0(bcs_iome_n),
        .I1(bcmdw),
        .I2(badr[0]),
        .I3(bcmdb),
        .O(wrt_h));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "memh_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    memh_reg_0_7_1_1
       (.A0(badr[1]),
        .A1(badr[2]),
        .A2(badr[3]),
        .A3(\<const0> ),
        .A4(GND_2),
        .D(bdatw[9]),
        .O(dat_h[1]),
        .WCLK(clk),
        .WE(wrt_h));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "memh_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    memh_reg_0_7_2_2
       (.A0(badr[1]),
        .A1(badr[2]),
        .A2(badr[3]),
        .A3(\<const0> ),
        .A4(GND_2),
        .D(bdatw[10]),
        .O(dat_h[2]),
        .WCLK(clk),
        .WE(wrt_h));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "memh_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    memh_reg_0_7_3_3
       (.A0(badr[1]),
        .A1(badr[2]),
        .A2(badr[3]),
        .A3(\<const0> ),
        .A4(GND_2),
        .D(bdatw[11]),
        .O(dat_h[3]),
        .WCLK(clk),
        .WE(wrt_h));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "memh_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    memh_reg_0_7_4_4
       (.A0(badr[1]),
        .A1(badr[2]),
        .A2(badr[3]),
        .A3(\<const0> ),
        .A4(GND_2),
        .D(bdatw[12]),
        .O(dat_h[4]),
        .WCLK(clk),
        .WE(wrt_h));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "memh_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    memh_reg_0_7_5_5
       (.A0(badr[1]),
        .A1(badr[2]),
        .A2(badr[3]),
        .A3(\<const0> ),
        .A4(GND_2),
        .D(bdatw[13]),
        .O(dat_h[5]),
        .WCLK(clk),
        .WE(wrt_h));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "memh_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    memh_reg_0_7_6_6
       (.A0(badr[1]),
        .A1(badr[2]),
        .A2(badr[3]),
        .A3(\<const0> ),
        .A4(GND_2),
        .D(bdatw[14]),
        .O(dat_h[6]),
        .WCLK(clk),
        .WE(wrt_h));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "memh_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    memh_reg_0_7_7_7
       (.A0(badr[1]),
        .A1(badr[2]),
        .A2(badr[3]),
        .A3(\<const0> ),
        .A4(GND_2),
        .D(bdatw[15]),
        .O(dat_h[7]),
        .WCLK(clk),
        .WE(wrt_h));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "meml_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    meml_reg_0_7_0_0
       (.A0(badr[1]),
        .A1(badr[2]),
        .A2(badr[3]),
        .A3(\<const0> ),
        .A4(GND_2),
        .D(bdatw[0]),
        .O(dat_l[0]),
        .WCLK(clk),
        .WE(wrt_l));
  LUT4 #(
    .INIT(16'h4404)) 
    meml_reg_0_7_0_0_i_1
       (.I0(bcs_iome_n),
        .I1(bcmdw),
        .I2(bcmdb),
        .I3(badr[0]),
        .O(wrt_l));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "meml_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    meml_reg_0_7_1_1
       (.A0(badr[1]),
        .A1(badr[2]),
        .A2(badr[3]),
        .A3(\<const0> ),
        .A4(GND_2),
        .D(bdatw[1]),
        .O(dat_l[1]),
        .WCLK(clk),
        .WE(wrt_l));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "meml_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    meml_reg_0_7_2_2
       (.A0(badr[1]),
        .A1(badr[2]),
        .A2(badr[3]),
        .A3(\<const0> ),
        .A4(GND_2),
        .D(bdatw[2]),
        .O(dat_l[2]),
        .WCLK(clk),
        .WE(wrt_l));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "meml_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    meml_reg_0_7_3_3
       (.A0(badr[1]),
        .A1(badr[2]),
        .A2(badr[3]),
        .A3(\<const0> ),
        .A4(GND_2),
        .D(bdatw[3]),
        .O(dat_l[3]),
        .WCLK(clk),
        .WE(wrt_l));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "meml_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    meml_reg_0_7_4_4
       (.A0(badr[1]),
        .A1(badr[2]),
        .A2(badr[3]),
        .A3(\<const0> ),
        .A4(GND_2),
        .D(bdatw[4]),
        .O(dat_l[4]),
        .WCLK(clk),
        .WE(wrt_l));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "meml_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    meml_reg_0_7_5_5
       (.A0(badr[1]),
        .A1(badr[2]),
        .A2(badr[3]),
        .A3(\<const0> ),
        .A4(GND_2),
        .D(bdatw[5]),
        .O(dat_l[5]),
        .WCLK(clk),
        .WE(wrt_l));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "meml_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    meml_reg_0_7_6_6
       (.A0(badr[1]),
        .A1(badr[2]),
        .A2(badr[3]),
        .A3(\<const0> ),
        .A4(GND_2),
        .D(bdatw[6]),
        .O(dat_l[6]),
        .WCLK(clk),
        .WE(wrt_l));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "meml_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    meml_reg_0_7_7_7
       (.A0(badr[1]),
        .A1(badr[2]),
        .A2(badr[3]),
        .A3(\<const0> ),
        .A4(GND_2),
        .D(bdatw[7]),
        .O(dat_l[7]),
        .WCLK(clk),
        .WE(wrt_l));
endmodule
