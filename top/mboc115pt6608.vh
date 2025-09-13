//
//	Moscovium / Nihonium / Tennessine On Chip
//		compile options definition module
//		(c) 2025	1YEN Toru
//
//
//	2025/02/22
//		MBOC115PT6608
//		MB-PT=Moscovium-BS, poly-core (4 / tetra-core) edition
//


`ifdef		MCOC_CMPL_OPT
`else	//	MCOC_CMPL_OPT
`define		MCOC_CMPL_OPT


`define		MCOC_TOP_NAME	mboc115pt6608
`define		MCOC_CODE_ED	"PT"


// Compile option
// CPU core
//`define		MCOC_CORE_TS
//`define		MCOC_CORE_NH
//`define		MCOC_CORE_NHSS
`define		MCOC_CORE_MCBS
//`define		MCOC_CORE_MCSS
//`define		MCOC_DUAL
//`define		MCOC_DUAL_AMP_TS
//`define		MCOC_DUAL_AMP_MC
`define		MCOC_POLY
//`define		MCOC_POLY_6
//`define		MCOC_POLY_8
//`define		MCOC_POLY_10
//`define		MCOC_POLY_12
//`define		MCOC_POLY_14
//`define		MCOC_FCPU_24M

// Co-processor
//`define		MCVM_COPR_NOMUL
//`define		MCVM_COPR_NODIV
//`define		MCVM_COPR_NOFPU
`define		MCVM_COPR_NOFPUS

// Memory unit
//`define		MCOC_ROM_8K
`define		MCOC_ROM_16K
//`define		MCOC_ROM_32K
//`define		MCOC_ROM_48K
//`define		MCOC_IRAM_4K
//`define		MCOC_RAM_LE1K	128		// 32~1024[B], power of 2
//`define		MCOC_RAM_16K
//`define		MCOC_RAM_24K
//`define		MCOC_RAM_32K
//`define		MCOC_RAM_40K
//`define		MCOC_ERAM	64			// 64~512[KB], power of 2
//`define		MCOC_SRAM_512K

// I/O unit
//`define		MCOC_NO_INTC
//`define		MCOC_NO_TIM0
`define		MCOC_NO_TIM1
//`define		MCOC_NO_STWS
`define		MCOC_NO_FNJP
`define		MCOC_NO_UAR1
`define		MCOC_NO_POR1
`define		MCOC_NO_UNSJ
`define		MCOC_NO_DIST
`define		MCOC_NO_RTC
`define		MCOC_NO_DAC
//`define		MCOC_NO_TIML
`define		MCOC_NO_SMPH
`define		MCOC_NO_ICFF
`define		MCOC_NO_ADCX
`define		MCOC_NO_TRNG
`define		MCOC_NO_SNDG

// I/O unit (PMOD connector)
`define		MCOC_NO_CM76
`define		MCOC_NO_STFT


// ================================
// Consistency of choices
// ================================
`include	"mcoc_option.vh"

`endif	//	MCOC_CMPL_OPT
