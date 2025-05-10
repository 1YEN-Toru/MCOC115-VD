## This file is a general .xdc for the CmodA7 rev. B
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## 12 MHz Clock Signal
set_property -dict {PACKAGE_PIN L17 IOSTANDARD LVCMOS33} [get_ports sys_clock]
#create_clock -add -name sys_clk_pin -period 83.33 -waveform {0 41.66} [get_ports {sysclk}];
#create_clock -period 80.000 -name sys_clock -waveform {0.000 40.000} -add [get_ports sys_clock]
create_generated_clock -name clk -source [get_pins clkg/inst/mmcm_adv_inst/CLKIN1] -master_clock [get_clocks sys_clock] [get_pins clkg/inst/mmcm_adv_inst/CLKOUT0]

## LEDs
set_property -dict {PACKAGE_PIN A17 IOSTANDARD LVCMOS33} [get_ports tled_led1]
set_property -dict {PACKAGE_PIN C16 IOSTANDARD LVCMOS33} [get_ports tled_led2]

## RGB LED
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports tled_ledb_n]
set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS33} [get_ports tled_ledg_n]
set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS33} [get_ports tled_ledr_n]

## Buttons
set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS33} [get_ports sys_reset]
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports sys_bootr]

## Pmod Header JA
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {pmod_iop[0]}]
set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS33} [get_ports {pmod_iop[1]}]
set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33} [get_ports {pmod_iop[2]}]
set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVCMOS33} [get_ports {pmod_iop[3]}]
set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {pmod_iop[4]}]
set_property -dict {PACKAGE_PIN H19 IOSTANDARD LVCMOS33} [get_ports {pmod_iop[5]}]
set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS33} [get_ports {pmod_iop[6]}]
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports {pmod_iop[7]}]

## Analog XADC Pins
## Only declare these if you want to use pins 15 and 16 as single ended analog inputs. pin 15 -> vaux4, pin16 -> vaux12
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports adcx_ain0n]
set_property -dict {PACKAGE_PIN G3 IOSTANDARD LVCMOS33} [get_ports adcx_ain0p]
set_property -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS33} [get_ports adcx_ain1n]
set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS33} [get_ports adcx_ain1p]

## GPIO Pins
## Pins 15 and 16 should remain commented if using them as analog inputs
set_property -dict {PACKAGE_PIN M3 IOSTANDARD LVCMOS33} [get_ports {port_iop[0]}]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS33} [get_ports {port_iop[1]}]
set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVCMOS33} [get_ports {port_iop[2]}]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS33} [get_ports {port_iop[3]}]
set_property -dict {PACKAGE_PIN C15 IOSTANDARD LVCMOS33} [get_ports {port_iop[4]}]
set_property -dict {PACKAGE_PIN H1 IOSTANDARD LVCMOS33} [get_ports {port_iop[5]}]
set_property -dict {PACKAGE_PIN A15 IOSTANDARD LVCMOS33} [get_ports {port_iop[6]}]
set_property -dict {PACKAGE_PIN B15 IOSTANDARD LVCMOS33} [get_ports {port_iop[7]}]
set_property -dict {PACKAGE_PIN A14 IOSTANDARD LVCMOS33} [get_ports tim0_pwma]
set_property -dict {PACKAGE_PIN J3 IOSTANDARD LVCMOS33} [get_ports tim0_pwmb]
set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS33} [get_ports tim1_pwma]
set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS33} [get_ports tim1_pwmb]
set_property -dict {PACKAGE_PIN L1 IOSTANDARD LVCMOS33} [get_ports intc_int0]
set_property -dict {PACKAGE_PIN L2 IOSTANDARD LVCMOS33} [get_ports intc_int1]
set_property -dict {PACKAGE_PIN M1 IOSTANDARD LVCMOS33} [get_ports sys_mdsim]
set_property -dict {PACKAGE_PIN N3 IOSTANDARD LVCMOS33} [get_ports stws_scl]
set_property -dict {PACKAGE_PIN P3 IOSTANDARD LVCMOS33} [get_ports stws_sda]
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33} [get_ports uar1_rxd]
set_property -dict {PACKAGE_PIN N1 IOSTANDARD LVCMOS33} [get_ports uar1_txd]
set_property -dict {PACKAGE_PIN N2 IOSTANDARD LVCMOS33} [get_ports uar1_cts]
set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVCMOS33} [get_ports uar1_rts]
#set_property -dict { PACKAGE_PIN R3    IOSTANDARD LVCMOS33 } [get_ports { pio26 }]; #IO_L2P_T0_34 Sch=pio[26]
#set_property -dict { PACKAGE_PIN T3    IOSTANDARD LVCMOS33 } [get_ports { pio27 }]; #IO_L2N_T0_34 Sch=pio[27]
#set_property -dict { PACKAGE_PIN R2    IOSTANDARD LVCMOS33 } [get_ports { pio28 }]; #IO_L1P_T0_34 Sch=pio[28]
#set_property -dict { PACKAGE_PIN T1    IOSTANDARD LVCMOS33 } [get_ports { pio29 }]; #IO_L3P_T0_DQS_34 Sch=pio[29]
#set_property -dict { PACKAGE_PIN T2    IOSTANDARD LVCMOS33 } [get_ports { pio30 }]; #IO_L1N_T0_34 Sch=pio[30]
#set_property -dict { PACKAGE_PIN U1    IOSTANDARD LVCMOS33 } [get_ports { pio31 }]; #IO_L3N_T0_DQS_34 Sch=pio[31]
#set_property -dict { PACKAGE_PIN W2    IOSTANDARD LVCMOS33 } [get_ports { pio32 }]; #IO_L5N_T0_34 Sch=pio[32]
#set_property -dict { PACKAGE_PIN V2    IOSTANDARD LVCMOS33 } [get_ports { pio33 }]; #IO_L5P_T0_34 Sch=pio[33]
#set_property -dict { PACKAGE_PIN W3    IOSTANDARD LVCMOS33 } [get_ports { pio34 }]; #IO_L6N_T0_VREF_34 Sch=pio[34]
#set_property -dict { PACKAGE_PIN V3    IOSTANDARD LVCMOS33 } [get_ports { pio35 }]; #IO_L6P_T0_34 Sch=pio[35]
#set_property -dict { PACKAGE_PIN W5    IOSTANDARD LVCMOS33 } [get_ports { pio36 }]; #IO_L12P_T1_MRCC_34 Sch=pio[36]
#set_property -dict { PACKAGE_PIN V4    IOSTANDARD LVCMOS33 } [get_ports { pio37 }]; #IO_L11N_T1_SRCC_34 Sch=pio[37]
#set_property -dict { PACKAGE_PIN U4    IOSTANDARD LVCMOS33 } [get_ports { pio38 }]; #IO_L11P_T1_SRCC_34 Sch=pio[38]
#set_property -dict { PACKAGE_PIN V5    IOSTANDARD LVCMOS33 } [get_ports { pio39 }]; #IO_L16N_T2_34 Sch=pio[39]
#set_property -dict { PACKAGE_PIN W4    IOSTANDARD LVCMOS33 } [get_ports { pio40 }]; #IO_L12N_T1_MRCC_34 Sch=pio[40]
set_property -dict {PACKAGE_PIN U5 IOSTANDARD LVCMOS33} [get_ports {port_iop[15]}]
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {port_iop[14]}]
set_property -dict {PACKAGE_PIN W6 IOSTANDARD LVCMOS33} [get_ports {port_iop[13]}]
set_property -dict {PACKAGE_PIN U3 IOSTANDARD LVCMOS33} [get_ports {port_iop[12]}]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports {port_iop[11]}]
set_property -dict {PACKAGE_PIN W7 IOSTANDARD LVCMOS33} [get_ports {port_iop[10]}]
set_property -dict {PACKAGE_PIN U8 IOSTANDARD LVCMOS33} [get_ports {port_iop[9]}]
set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS33} [get_ports {port_iop[8]}]

## UART
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports uart_txd]
set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVCMOS33} [get_ports uart_rxd]

## Crypto 1 Wire Interface
#set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { crypto_sda }]; #IO_0_14 Sch=crypto_sda

## QSPI
#set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports { qspi_cs    }]; #IO_L6P_T0_FCS_B_14 Sch=qspi_cs
#set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[0] }]; #IO_L1P_T0_D00_MOSI_14 Sch=qspi_dq[0]
#set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[1] }]; #IO_L1N_T0_D01_DIN_14 Sch=qspi_dq[1]
#set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[2] }]; #IO_L2P_T0_D02_14 Sch=qspi_dq[2]
#set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[3] }]; #IO_L2N_T0_D03_14 Sch=qspi_dq[3]

## Cellular RAM
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports {sram_adr[0]}]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports {sram_adr[1]}]
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports {sram_adr[2]}]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports {sram_adr[3]}]
set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports {sram_adr[4]}]
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports {sram_adr[5]}]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {sram_adr[6]}]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {sram_adr[7]}]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {sram_adr[8]}]
set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS33} [get_ports {sram_adr[9]}]
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {sram_adr[10]}]
set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS33} [get_ports {sram_adr[11]}]
set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports {sram_adr[12]}]
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {sram_adr[13]}]
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {sram_adr[14]}]
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {sram_adr[15]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {sram_adr[16]}]
set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports {sram_adr[17]}]
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {sram_adr[18]}]
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports {sram_dq[0]}]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {sram_dq[1]}]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {sram_dq[2]}]
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports {sram_dq[3]}]
set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports {sram_dq[4]}]
set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports {sram_dq[5]}]
set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports {sram_dq[6]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {sram_dq[7]}]
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports sram_oen]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports sram_wen]
set_property -dict {PACKAGE_PIN N19 IOSTANDARD LVCMOS33} [get_ports sram_cen]


set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## input ports
set_property PULLTYPE PULLDOWN [get_ports sys_mdsim]
set_property PULLTYPE PULLUP [get_ports intc_int0]
set_property PULLTYPE PULLUP [get_ports intc_int1]
set_property PULLTYPE PULLUP [get_ports uar1_rxd]
set_property PULLTYPE PULLUP [get_ports uar1_cts]
set_property PULLTYPE PULLUP [get_ports stws_scl]
set_property PULLTYPE PULLUP [get_ports stws_sda]

## output ports
set_property DRIVE 4 [get_ports tled_led1]
set_property DRIVE 4 [get_ports tled_led2]
set_property DRIVE 4 [get_ports tled_ledb_n]
set_property DRIVE 4 [get_ports tled_ledg_n]
set_property DRIVE 4 [get_ports tled_ledr_n]

## on board SRAM I/F
set_output_delay -clock [get_clocks clk] -min -add_delay -4.000 [get_ports sram_oen]
set_output_delay -clock [get_clocks clk] -min -add_delay -5.000 [get_ports sram_wen]
set_output_delay -clock [get_clocks clk] -max -add_delay 0.000 [get_ports sram_adr*]

## OV7670 camera unit for PMOD connector
create_clock -period 32.000 -name pclk -waveform {0.000 16.000} [get_ports {pmod_iop[2]}]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {pmod_iop_IBUF[2]}]
set_false_path -from [get_clocks clk] -to [get_clocks pclk]
set_false_path -from [get_clocks pclk] -to [get_clocks clk]

## TRNG32 unit
set_false_path -from [get_clocks clk_out1_trng_pll2]
