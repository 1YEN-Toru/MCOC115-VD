//
//	Moscovium / Nihonium / Tennessine On Chip
//		compile options definition module
//		(c) 2023	1YEN Toru
//
//
//	2022/09/03
//		NHOC113DM0408
//		NH-DM=Nihonium, distance measuring edition
//


`ifdef		MCOC_CMPL_OPT
`else	//	MCOC_CMPL_OPT
`define		MCOC_CMPL_OPT


`define		MCOC_TOP_NAME	nhoc113dm0408
`define		MCOC_CODE_ED	"DM"


// Compile option
// CPU core
//`define		MCOC_CORE_TS
`define		MCOC_CORE_NH
//`define		MCOC_CORE_NHSS
//`define		MCOC_CORE_MCSS
//`define		MCOC_DUAL
//`define		MCOC_FCPU_24M

// Coprocessor
`define		MCVM_COPR_NOMUL
`define		MCVM_COPR_NODIV
`define		MCVM_COPR_NOFPU
`define		MCVM_COPR_NOFPUS

// I/O unit
//`define		MCOC_NO_INTC
//`define		MCOC_NO_TIM0
`define		MCOC_NO_TIM1
`define		MCOC_NO_LOGA
//`define		MCOC_NO_STWS
//`define		MCOC_NO_FNJP
`define		MCOC_NO_UAR1
`define		MCOC_NO_POR1
`define		MCOC_NO_ADC
`define		MCOC_NO_UNSJ
//`define		MCOC_NO_DIST
`define		MCOC_NO_RTC
`define		MCOC_NO_DAC0
`define		MCOC_NO_DAC1
`define		MCOC_NO_TIML
`define		MCOC_NO_SMPH
`define		MCOC_NO_ICFF

// Memory unit
//`define		MCOC_ROM_8K
//`define		MCOC_ROM_16K
//`define		MCOC_IRAM_4K
//`define		MCOC_RAM_LE1K	128		// 32~1024[B], power of 2
//`define		MCOC_RAM_16K
//`define		MCOC_RAM_24K
//`define		MCOC_RAM_32K
//`define		MCOC_RAM_40K
//`define		MCOC_ERAM	64			// 64~512[KB], power of 2


// ================================
// Consistency of choices
//		*) Do not edit anything below this line
// ================================
`ifdef		MCOC_CORE_TS
`define		CPU_CORE		tennessinec
`undef		MCOC_CORE_NH
`undef		MCOC_CORE_NHSS
`undef		MCOC_CORE_MCSS
`undef		MCOC_DUAL
`define		MCVM_COPR_NOMUL
`define		MCVM_COPR_NODIV
`define		MCVM_COPR_NOFPU
`define		MCVM_COPR_NOFPUS
`undef		MCOC_ERAM

`elsif		MCOC_CORE_NH
`define		CPU_CORE		nihoniumc
`undef		MCOC_CORE_MCSS
`define		MCVM_COPR_NOMUL
`define		MCVM_COPR_NODIV

`else
`define		CPU_CORE		moscoviumc
`undef		MCOC_CORE_NHSS
`define		MCVM_COPR_NOFPUS
`endif

`ifdef		MCOC_DUAL
`else	//	MCOC_DUAL
`define		MCOC_NO_SMPH
`define		MCOC_NO_ICFF
`endif	//	MCOC_DUAL

`ifdef		MCVM_COPR_NOFPUS
`else	//	MCVM_COPR_NOFPUS
`define		MCVM_COPR_NOFPU
`endif	//	MCVM_COPR_NOFPUS

`ifdef		MCOC_FCPU_32M
`define		MCOC_FCPU_MHZ	8'h32
`else
`define		MCOC_FCPU_24M
`define		MCOC_FCPU_MHZ	8'h24
`endif

`ifdef		MCOC_ERAM
`undef		MCOC_RAM_LE1K
`endif	//	MCOC_ERAM

`define		MCOC_PORT_HIZO				// default now

`endif	//	MCOC_CMPL_OPT
