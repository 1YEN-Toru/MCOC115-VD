//
//	Moscovium / Nihonium / Tennessine On Chip
//		compile options definition module
//		(c) 2023	1YEN Toru
//
//
//	2023/11/18
//		NHOC113CA04128
//		NH-CA=Nihonium, Cmod A7 edition
//


`ifdef		MCOC_CMPL_OPT
`else	//	MCOC_CMPL_OPT
`define		MCOC_CMPL_OPT


`define		MCOC_TOP_NAME	nhoc113ca04128
`define		MCOC_CODE_ED	"CA"


// Compile option
// CPU core
//`define		MCOC_CORE_TS
`define		MCOC_CORE_NH
//`define		MCOC_CORE_NHSS
//`define		MCOC_CORE_MCBS
//`define		MCOC_CORE_MCSS
//`define		MCOC_DUAL
//`define		MCOC_DUAL_AMP_TS
//`define		MCOC_DUAL_AMP_MC
//`define		MCOC_POLY
//`define		MCOC_POLY_6
//`define		MCOC_POLY_8
//`define		MCOC_POLY_10
//`define		MCOC_POLY_12
//`define		MCOC_POLY_14
//`define		MCOC_FCPU_24M

// Co-processor
//`define		MCVM_COPR_MUL
//`define		MCVM_COPR_DIV
//`define		MCVM_COPR_FPUH
//`define		MCVM_COPR_FPUS

// Memory unit
//`define		MCOC_ROM_8K
//`define		MCOC_ROM_16K
//`define		MCOC_ROM_32K
//`define		MCOC_ROM_48K
//`define		MCOC_IRAM_4K
//`define		MCOC_RAM_LE1K	128		// 32~1024[B], power of 2
//`define		MCOC_RAM_16K
//`define		MCOC_RAM_24K
//`define		MCOC_RAM_32K
//`define		MCOC_RAM_40K
`define		MCOC_ERAM	128				// 64~512[KB], power of 2
//`define		MCOC_SRAM_512K

// I/O unit
`define		MCOC_INTC
`define		MCOC_TIM0
//`define		MCOC_TIM1
`define		MCOC_STWS
//`define		MCOC_FNJP
//`define		MCOC_UAR1
//`define		MCOC_POR1
//`define		MCOC_UNSJ
//`define		MCOC_DIST
//`define		MCOC_RTC
//`define		MCOC_DAC
`define		MCOC_TIML
//`define		MCOC_SMPH
//`define		MCOC_ICFF
//`define		MCOC_ADCX
//`define		MCOC_TRNG
//`define		MCOC_SNDG

// I/O unit (PMOD connector)
//`define		MCOC_CM76
//`define		MCOC_STFT


// ================================
// Consistency of choices
// ================================
`include	"mcoc_option.vh"

`endif	//	MCOC_CMPL_OPT
