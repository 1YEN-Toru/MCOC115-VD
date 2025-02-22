
(* STRUCTURAL_NETLIST = "yes" *)
module tcmc16
   (clk,
    rst_n,
    brdy,
    bdatr,
    cpu_bcmd,
    cpu_badr,
    cpu_badrx,
    cpu_bdatw,
    tcm_bdatr,
    cpu_brdy,
    .tcm_brdy(\<const1> ),
    tcm_iram_n,
    tcm_rom_n,
    bcmd,
    badr,
    badrx,
    bdatw,
    cpu_bdatr,
    tcm_bcmd,
    tcm_badr,
    tcm_bdatw,
    bootmd,
    btm_bcmdw_rom,
    btm_badr,
    btm_bdatw);
//
//	Tightly coupled memory controller
//		(c) 2025	1YEN Toru
//
//
//	2025/02/22	ver.1.00
//		16 bit bus
//		bootmd=0:
//			[CPU] cpu_*		--	[TCMC] --	b* (memory bus)
//							+-	[TCMC] --	tcm_* [ROM/I-RAM]
//		bootmd=1:
//			[CPU] cpu_*		--	[TCMC] --	b* (memory bus)
//			b* (memory bus) --	[TCMC] --	tcm_* [ROM/I-RAM]
//
  input clk;
  input rst_n;
  input brdy;
  input [15:0]bdatr;
  input [2:0]cpu_bcmd;
  input [15:0]cpu_badr;
  input [15:0]cpu_badrx;
  input [15:0]cpu_bdatw;
  input [15:0]tcm_bdatr;
  output cpu_brdy;
  output tcm_iram_n;
  output tcm_rom_n;
  output [2:0]bcmd;
  output [15:0]badr;
  output [15:0]badrx;
  output [15:0]bdatw;
  output [15:0]cpu_bdatr;
  output [2:0]tcm_bcmd;
  output [15:0]tcm_badr;
  output [15:0]tcm_bdatw;
  input bootmd;
  input btm_bcmdw_rom;
  input [15:0]btm_badr;
  input [15:0]btm_bdatw;
  output \<const1> ;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]badr;
  wire [15:0]badrx;
  wire [2:0]bcmd;
  wire [15:0]bdatr;
  wire [15:0]bdatw;
  wire bootmd;
  wire brdy;
  wire [15:0]btm_badr;
  wire btm_bcmdw_rom;
  wire [15:0]btm_bdatw;
  wire clk;
  wire [15:0]cpu_badr;
  wire [15:0]cpu_badrx;
  wire [2:0]cpu_bcmd;
  wire cpu_bcmdv;
  wire [15:0]cpu_bdatr;
  wire [15:0]cpu_bdatw;
  wire cpu_brdy;
  wire cpu_brdy_INST_0_i_1_n_0;
  wire drv_bdatr;
  wire drv_bdatr_i_1_n_0;
  wire drv_tcm_bdatr;
  wire drv_tcm_bdatr_i_1_n_0;
  wire rst_n;
  wire [15:0]tcm_badr;
  wire [2:0]tcm_bcmd;
  wire tcm_bcmdv_dp;
  wire tcm_bcmdv_dp_i_1_n_0;
  wire [15:0]tcm_bdatr;
  wire [15:0]tcm_bdatw;
  wire tcm_iram_n;
  wire tcm_rom_n;
  wire tcm_rom_n1;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h5400)) 
    \badr[0]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badr[0]),
        .O(badr[0]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badr[10]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badr[10]),
        .O(badr[10]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badr[11]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badr[11]),
        .O(badr[11]));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \badr[12]_INST_0 
       (.I0(bootmd),
        .I1(cpu_badr[14]),
        .I2(cpu_badr[15]),
        .I3(cpu_bcmdv),
        .I4(cpu_badr[12]),
        .O(badr[12]));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \badr[13]_INST_0 
       (.I0(bootmd),
        .I1(cpu_badr[14]),
        .I2(cpu_badr[15]),
        .I3(cpu_bcmdv),
        .I4(cpu_badr[13]),
        .O(badr[13]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \badr[14]_INST_0 
       (.I0(bootmd),
        .I1(cpu_badr[13]),
        .I2(cpu_badr[12]),
        .I3(cpu_badr[15]),
        .I4(cpu_bcmdv),
        .I5(cpu_badr[14]),
        .O(badr[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \badr[15]_INST_0 
       (.I0(cpu_bcmdv),
        .I1(cpu_badr[15]),
        .O(badr[15]));
  LUT2 #(
    .INIT(4'hE)) 
    \badr[15]_INST_0_i_1 
       (.I0(cpu_bcmd[1]),
        .I1(cpu_bcmd[0]),
        .O(cpu_bcmdv));
  LUT4 #(
    .INIT(16'h5400)) 
    \badr[1]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badr[1]),
        .O(badr[1]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badr[2]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badr[2]),
        .O(badr[2]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badr[3]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badr[3]),
        .O(badr[3]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badr[4]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badr[4]),
        .O(badr[4]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badr[5]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badr[5]),
        .O(badr[5]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badr[6]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badr[6]),
        .O(badr[6]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badr[7]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badr[7]),
        .O(badr[7]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badr[8]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badr[8]),
        .O(badr[8]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badr[9]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badr[9]),
        .O(badr[9]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badrx[0]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badrx[0]),
        .O(badrx[0]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badrx[10]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badrx[10]),
        .O(badrx[10]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badrx[11]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badrx[11]),
        .O(badrx[11]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badrx[12]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badrx[12]),
        .O(badrx[12]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badrx[13]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badrx[13]),
        .O(badrx[13]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badrx[14]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badrx[14]),
        .O(badrx[14]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badrx[15]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badrx[15]),
        .O(badrx[15]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badrx[1]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badrx[1]),
        .O(badrx[1]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badrx[2]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badrx[2]),
        .O(badrx[2]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badrx[3]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badrx[3]),
        .O(badrx[3]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badrx[4]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badrx[4]),
        .O(badrx[4]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badrx[5]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badrx[5]),
        .O(badrx[5]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badrx[6]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badrx[6]),
        .O(badrx[6]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badrx[7]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badrx[7]),
        .O(badrx[7]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badrx[8]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badrx[8]),
        .O(badrx[8]));
  LUT4 #(
    .INIT(16'h5400)) 
    \badrx[9]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_badrx[9]),
        .O(badrx[9]));
  LUT2 #(
    .INIT(4'h4)) 
    \bcmd[0]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[0]),
        .O(bcmd[0]));
  LUT2 #(
    .INIT(4'h4)) 
    \bcmd[1]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .O(bcmd[1]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bcmd[2]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bcmd[2]),
        .O(bcmd[2]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bdatw[0]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bdatw[0]),
        .O(bdatw[0]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bdatw[10]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bdatw[10]),
        .O(bdatw[10]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bdatw[11]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bdatw[11]),
        .O(bdatw[11]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bdatw[12]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bdatw[12]),
        .O(bdatw[12]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bdatw[13]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bdatw[13]),
        .O(bdatw[13]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bdatw[14]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bdatw[14]),
        .O(bdatw[14]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bdatw[15]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bdatw[15]),
        .O(bdatw[15]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bdatw[1]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bdatw[1]),
        .O(bdatw[1]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bdatw[2]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bdatw[2]),
        .O(bdatw[2]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bdatw[3]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bdatw[3]),
        .O(bdatw[3]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bdatw[4]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bdatw[4]),
        .O(bdatw[4]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bdatw[5]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bdatw[5]),
        .O(bdatw[5]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bdatw[6]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bdatw[6]),
        .O(bdatw[6]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bdatw[7]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bdatw[7]),
        .O(bdatw[7]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bdatw[8]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bdatw[8]),
        .O(bdatw[8]));
  LUT4 #(
    .INIT(16'h5400)) 
    \bdatw[9]_INST_0 
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bdatw[9]),
        .O(bdatw[9]));
  LUT4 #(
    .INIT(16'hB888)) 
    \cpu_bdatr[0]_INST_0 
       (.I0(tcm_bdatr[0]),
        .I1(drv_tcm_bdatr),
        .I2(drv_bdatr),
        .I3(bdatr[0]),
        .O(cpu_bdatr[0]));
  LUT4 #(
    .INIT(16'hB888)) 
    \cpu_bdatr[10]_INST_0 
       (.I0(tcm_bdatr[10]),
        .I1(drv_tcm_bdatr),
        .I2(drv_bdatr),
        .I3(bdatr[10]),
        .O(cpu_bdatr[10]));
  LUT4 #(
    .INIT(16'hB888)) 
    \cpu_bdatr[11]_INST_0 
       (.I0(tcm_bdatr[11]),
        .I1(drv_tcm_bdatr),
        .I2(drv_bdatr),
        .I3(bdatr[11]),
        .O(cpu_bdatr[11]));
  LUT4 #(
    .INIT(16'hB888)) 
    \cpu_bdatr[12]_INST_0 
       (.I0(tcm_bdatr[12]),
        .I1(drv_tcm_bdatr),
        .I2(drv_bdatr),
        .I3(bdatr[12]),
        .O(cpu_bdatr[12]));
  LUT4 #(
    .INIT(16'hB888)) 
    \cpu_bdatr[13]_INST_0 
       (.I0(tcm_bdatr[13]),
        .I1(drv_tcm_bdatr),
        .I2(drv_bdatr),
        .I3(bdatr[13]),
        .O(cpu_bdatr[13]));
  LUT4 #(
    .INIT(16'hB888)) 
    \cpu_bdatr[14]_INST_0 
       (.I0(tcm_bdatr[14]),
        .I1(drv_tcm_bdatr),
        .I2(drv_bdatr),
        .I3(bdatr[14]),
        .O(cpu_bdatr[14]));
  LUT4 #(
    .INIT(16'hB888)) 
    \cpu_bdatr[15]_INST_0 
       (.I0(tcm_bdatr[15]),
        .I1(drv_tcm_bdatr),
        .I2(drv_bdatr),
        .I3(bdatr[15]),
        .O(cpu_bdatr[15]));
  LUT4 #(
    .INIT(16'hB888)) 
    \cpu_bdatr[1]_INST_0 
       (.I0(tcm_bdatr[1]),
        .I1(drv_tcm_bdatr),
        .I2(drv_bdatr),
        .I3(bdatr[1]),
        .O(cpu_bdatr[1]));
  LUT4 #(
    .INIT(16'hB888)) 
    \cpu_bdatr[2]_INST_0 
       (.I0(tcm_bdatr[2]),
        .I1(drv_tcm_bdatr),
        .I2(drv_bdatr),
        .I3(bdatr[2]),
        .O(cpu_bdatr[2]));
  LUT4 #(
    .INIT(16'hB888)) 
    \cpu_bdatr[3]_INST_0 
       (.I0(tcm_bdatr[3]),
        .I1(drv_tcm_bdatr),
        .I2(drv_bdatr),
        .I3(bdatr[3]),
        .O(cpu_bdatr[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    \cpu_bdatr[4]_INST_0 
       (.I0(tcm_bdatr[4]),
        .I1(drv_tcm_bdatr),
        .I2(drv_bdatr),
        .I3(bdatr[4]),
        .O(cpu_bdatr[4]));
  LUT4 #(
    .INIT(16'hB888)) 
    \cpu_bdatr[5]_INST_0 
       (.I0(tcm_bdatr[5]),
        .I1(drv_tcm_bdatr),
        .I2(drv_bdatr),
        .I3(bdatr[5]),
        .O(cpu_bdatr[5]));
  LUT4 #(
    .INIT(16'hB888)) 
    \cpu_bdatr[6]_INST_0 
       (.I0(tcm_bdatr[6]),
        .I1(drv_tcm_bdatr),
        .I2(drv_bdatr),
        .I3(bdatr[6]),
        .O(cpu_bdatr[6]));
  LUT4 #(
    .INIT(16'hB888)) 
    \cpu_bdatr[7]_INST_0 
       (.I0(tcm_bdatr[7]),
        .I1(drv_tcm_bdatr),
        .I2(drv_bdatr),
        .I3(bdatr[7]),
        .O(cpu_bdatr[7]));
  LUT4 #(
    .INIT(16'hB888)) 
    \cpu_bdatr[8]_INST_0 
       (.I0(tcm_bdatr[8]),
        .I1(drv_tcm_bdatr),
        .I2(drv_bdatr),
        .I3(bdatr[8]),
        .O(cpu_bdatr[8]));
  LUT4 #(
    .INIT(16'hB888)) 
    \cpu_bdatr[9]_INST_0 
       (.I0(tcm_bdatr[9]),
        .I1(drv_tcm_bdatr),
        .I2(drv_bdatr),
        .I3(bdatr[9]),
        .O(cpu_bdatr[9]));
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    cpu_brdy_INST_0
       (.I0(brdy),
        .I1(tcm_bcmdv_dp),
        .I2(cpu_bcmd[0]),
        .I3(cpu_bcmd[1]),
        .I4(cpu_brdy_INST_0_i_1_n_0),
        .O(cpu_brdy));
  LUT5 #(
    .INIT(32'h00000155)) 
    cpu_brdy_INST_0_i_1
       (.I0(cpu_badr[15]),
        .I1(cpu_badr[12]),
        .I2(cpu_badr[13]),
        .I3(cpu_badr[14]),
        .I4(bootmd),
        .O(cpu_brdy_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h2E220000)) 
    drv_bdatr_i_1
       (.I0(drv_bdatr),
        .I1(brdy),
        .I2(cpu_brdy_INST_0_i_1_n_0),
        .I3(cpu_bcmd[0]),
        .I4(rst_n),
        .O(drv_bdatr_i_1_n_0));
  FDRE drv_bdatr_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(drv_bdatr_i_1_n_0),
        .Q(drv_bdatr),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h0800)) 
    drv_tcm_bdatr_i_1
       (.I0(cpu_bcmd[0]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(bootmd),
        .I3(rst_n),
        .O(drv_tcm_bdatr_i_1_n_0));
  FDRE drv_tcm_bdatr_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(drv_tcm_bdatr_i_1_n_0),
        .Q(drv_tcm_bdatr),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_badr[0]_INST_0 
       (.I0(btm_badr[0]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_badr[0]),
        .I5(bootmd),
        .O(tcm_badr[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_badr[10]_INST_0 
       (.I0(btm_badr[10]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_badr[10]),
        .I5(bootmd),
        .O(tcm_badr[10]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_badr[11]_INST_0 
       (.I0(btm_badr[11]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_badr[11]),
        .I5(bootmd),
        .O(tcm_badr[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_badr[12]_INST_0 
       (.I0(btm_badr[12]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_badr[12]),
        .I5(bootmd),
        .O(tcm_badr[12]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_badr[13]_INST_0 
       (.I0(btm_badr[13]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_badr[13]),
        .I5(bootmd),
        .O(tcm_badr[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_badr[14]_INST_0 
       (.I0(btm_badr[14]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_badr[14]),
        .I5(bootmd),
        .O(tcm_badr[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_badr[15]_INST_0 
       (.I0(btm_badr[15]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_badr[15]),
        .I5(bootmd),
        .O(tcm_badr[15]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_badr[1]_INST_0 
       (.I0(btm_badr[1]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_badr[1]),
        .I5(bootmd),
        .O(tcm_badr[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_badr[2]_INST_0 
       (.I0(btm_badr[2]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_badr[2]),
        .I5(bootmd),
        .O(tcm_badr[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_badr[3]_INST_0 
       (.I0(btm_badr[3]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_badr[3]),
        .I5(bootmd),
        .O(tcm_badr[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_badr[4]_INST_0 
       (.I0(btm_badr[4]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_badr[4]),
        .I5(bootmd),
        .O(tcm_badr[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_badr[5]_INST_0 
       (.I0(btm_badr[5]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_badr[5]),
        .I5(bootmd),
        .O(tcm_badr[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_badr[6]_INST_0 
       (.I0(btm_badr[6]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_badr[6]),
        .I5(bootmd),
        .O(tcm_badr[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_badr[7]_INST_0 
       (.I0(btm_badr[7]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_badr[7]),
        .I5(bootmd),
        .O(tcm_badr[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_badr[8]_INST_0 
       (.I0(btm_badr[8]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_badr[8]),
        .I5(bootmd),
        .O(tcm_badr[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_badr[9]_INST_0 
       (.I0(btm_badr[9]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_badr[9]),
        .I5(bootmd),
        .O(tcm_badr[9]));
  LUT3 #(
    .INIT(8'h08)) 
    \tcm_bcmd[0]_INST_0 
       (.I0(cpu_bcmd[0]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(bootmd),
        .O(tcm_bcmd[0]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \tcm_bcmd[1]_INST_0 
       (.I0(btm_bcmdw_rom),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(bootmd),
        .O(tcm_bcmd[1]));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \tcm_bcmd[2]_INST_0 
       (.I0(cpu_bcmd[2]),
        .I1(cpu_bcmd[0]),
        .I2(cpu_bcmd[1]),
        .I3(cpu_brdy_INST_0_i_1_n_0),
        .I4(bootmd),
        .O(tcm_bcmd[2]));
  LUT4 #(
    .INIT(16'hA800)) 
    tcm_bcmdv_dp_i_1
       (.I0(cpu_brdy_INST_0_i_1_n_0),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(rst_n),
        .O(tcm_bcmdv_dp_i_1_n_0));
  FDRE tcm_bcmdv_dp_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(tcm_bcmdv_dp_i_1_n_0),
        .Q(tcm_bcmdv_dp),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_bdatw[0]_INST_0 
       (.I0(btm_bdatw[0]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bdatw[0]),
        .I5(bootmd),
        .O(tcm_bdatw[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_bdatw[10]_INST_0 
       (.I0(btm_bdatw[10]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bdatw[10]),
        .I5(bootmd),
        .O(tcm_bdatw[10]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_bdatw[11]_INST_0 
       (.I0(btm_bdatw[11]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bdatw[11]),
        .I5(bootmd),
        .O(tcm_bdatw[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_bdatw[12]_INST_0 
       (.I0(btm_bdatw[12]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bdatw[12]),
        .I5(bootmd),
        .O(tcm_bdatw[12]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_bdatw[13]_INST_0 
       (.I0(btm_bdatw[13]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bdatw[13]),
        .I5(bootmd),
        .O(tcm_bdatw[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_bdatw[14]_INST_0 
       (.I0(btm_bdatw[14]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bdatw[14]),
        .I5(bootmd),
        .O(tcm_bdatw[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_bdatw[15]_INST_0 
       (.I0(btm_bdatw[15]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bdatw[15]),
        .I5(bootmd),
        .O(tcm_bdatw[15]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_bdatw[1]_INST_0 
       (.I0(btm_bdatw[1]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bdatw[1]),
        .I5(bootmd),
        .O(tcm_bdatw[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_bdatw[2]_INST_0 
       (.I0(btm_bdatw[2]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bdatw[2]),
        .I5(bootmd),
        .O(tcm_bdatw[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_bdatw[3]_INST_0 
       (.I0(btm_bdatw[3]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bdatw[3]),
        .I5(bootmd),
        .O(tcm_bdatw[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_bdatw[4]_INST_0 
       (.I0(btm_bdatw[4]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bdatw[4]),
        .I5(bootmd),
        .O(tcm_bdatw[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_bdatw[5]_INST_0 
       (.I0(btm_bdatw[5]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bdatw[5]),
        .I5(bootmd),
        .O(tcm_bdatw[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_bdatw[6]_INST_0 
       (.I0(btm_bdatw[6]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bdatw[6]),
        .I5(bootmd),
        .O(tcm_bdatw[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_bdatw[7]_INST_0 
       (.I0(btm_bdatw[7]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bdatw[7]),
        .I5(bootmd),
        .O(tcm_bdatw[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_bdatw[8]_INST_0 
       (.I0(btm_bdatw[8]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bdatw[8]),
        .I5(bootmd),
        .O(tcm_bdatw[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC00000)) 
    \tcm_bdatw[9]_INST_0 
       (.I0(btm_bdatw[9]),
        .I1(cpu_brdy_INST_0_i_1_n_0),
        .I2(cpu_bcmd[1]),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bdatw[9]),
        .I5(bootmd),
        .O(tcm_bdatw[9]));
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    tcm_iram_n_INST_0
       (.I0(cpu_badr[14]),
        .I1(cpu_badr[13]),
        .I2(cpu_badr[12]),
        .I3(cpu_badr[15]),
        .I4(tcm_rom_n1),
        .O(tcm_iram_n));
  LUT4 #(
    .INIT(16'hAAFC)) 
    tcm_iram_n_INST_0_i_1
       (.I0(btm_bcmdw_rom),
        .I1(cpu_bcmd[1]),
        .I2(cpu_bcmd[0]),
        .I3(bootmd),
        .O(tcm_rom_n1));
  LUT6 #(
    .INIT(64'hEEEEEEEFFEFEFEFF)) 
    tcm_rom_n_INST_0
       (.I0(cpu_badr[14]),
        .I1(cpu_badr[15]),
        .I2(bootmd),
        .I3(cpu_bcmd[0]),
        .I4(cpu_bcmd[1]),
        .I5(btm_bcmdw_rom),
        .O(tcm_rom_n));
endmodule
