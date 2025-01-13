//
//	Moscovium / Nihonium / Tennessine On Chip
//		compile options definition module
//		(c) 2023	1YEN Toru
//
//
//	2024/01/20
//		add: ADCX122
//
//	2023/12/16
//		NHOC113SR0408
//		NH-SR=Nihonium, external sram edition
//


`ifdef		MCOC_CMPL_OPT
`else	//	MCOC_CMPL_OPT
`define		MCOC_CMPL_OPT


`define		MCOC_TOP_NAME	nhoc113sr0408
`define		MCOC_CODE_ED	"SR"


// Compile option
// CPU core
//`define		MCOC_CORE_TS
`define		MCOC_CORE_NH
//`define		MCOC_CORE_NHSS
//`define		MCOC_CORE_MCSS
//`define		MCOC_DUAL
//`define		MCOC_DUAL_AMP_TS
//`define		MCOC_DUAL_AMP_MC
//`define		MCOC_FCPU_24M

// Co-processor
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
`define		MCOC_NO_FNJP
`define		MCOC_NO_UAR1
`define		MCOC_NO_POR1
`define		MCOC_NO_UNSJ
`define		MCOC_NO_DIST
`define		MCOC_NO_RTC
//`define		MCOC_NO_DAC0
//`define		MCOC_NO_DAC1
//`define		MCOC_NO_TIML
`define		MCOC_NO_SMPH
`define		MCOC_NO_ICFF
//`define		MCOC_NO_ADCX

// I/O unit (PMOD connector)
`define		MCOC_NO_CM76
`define		MCOC_NO_STFT

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
//`define		MCOC_ERAM	64			// 64~512[KB], power of 2
`define		MCOC_SRAM_512K


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
`undef		MCOC_SRAM_512K

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

`undef		CPU_CORE2

`ifdef		MCOC_DUAL
`else	//	MCOC_DUAL
`define		MCOC_NO_SMPH
`define		MCOC_NO_ICFF
`undef		MCOC_DUAL_AMP_TS
`undef		MCOC_DUAL_AMP_MC
`endif	//	MCOC_DUAL

`ifdef		MCOC_DUAL_AMP_TS
`undef		MCOC_DUAL_AMP_MC
`define		CPU_CORE2		tennessinea
`endif	//	MCOC_DUAL_AMP_TS

`ifdef		MCOC_DUAL_AMP_MC
`define		CPU_CORE2		moscoviuma
`endif	//	MCOC_DUAL_AMP_MC

`ifdef		CPU_CORE2
`else	//	CPU_CORE2
`define		CPU_CORE2		`CPU_CORE
`endif	//	CPU_CORE2

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

`ifdef		MCOC_ROM_32K
`undef		MCOC_RAM_32K
`undef		MCOC_RAM_40K
`endif	//	MCOC_ROM_32K

`ifdef		MCOC_ROM_48K
`undef		MCOC_RAM_16K
`undef		MCOC_RAM_24K
`undef		MCOC_RAM_32K
`undef		MCOC_RAM_40K
`endif	//	MCOC_ROM_48K

`ifdef		MCOC_ERAM
`undef		MCOC_RAM_LE1K
`undef		MCOC_RAM_4K
`endif	//	MCOC_ERAM

`ifdef		MCOC_NO_STFT61
`else	//	MCOC_NO_STFT61
`define		MCOC_NO_CM76
`endif	//	MCOC_NO_STFT61

`define		MCOC_PORT_HIZO				// default now

`endif	//	MCOC_CMPL_OPT

