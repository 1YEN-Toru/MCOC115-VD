//
//	Moscovium / Nihonium / Tennessine On Chip
//		make the choice of options consistency module
//		(c) 2025	1YEN Toru
//
//
//	2025/02/22
//		new
//


// ================================
// Consistency of choices
//		*) Do not edit anything below this line
// ================================
`ifdef		MCOC_POLY_14
`define		MCOC_POLY_12
`define		MCOC_POLY_10
`define		MCOC_POLY_8
`define		MCOC_POLY_6
`define		MCOC_POLY

`elsif		MCOC_POLY_12
`define		MCOC_POLY_10
`define		MCOC_POLY_8
`define		MCOC_POLY_6
`define		MCOC_POLY

`elsif		MCOC_POLY_10
`define		MCOC_POLY_8
`define		MCOC_POLY_6
`define		MCOC_POLY

`elsif		MCOC_POLY_8
`define		MCOC_POLY_6
`define		MCOC_POLY

`elsif		MCOC_POLY_6
`define		MCOC_POLY
`endif

`ifdef		MCOC_POLY
`define		MCOC_CORE_MCBS
`undef		MCOC_CORE_NH
`undef		MCOC_CORE_NHSS
`undef		MCOC_CORE_MCSS
`undef		MCOC_DUAL_AMP_TS
`undef		MCOC_DUAL_AMP_MC
`undef		MCOC_ROM_32K
`undef		MCOC_ROM_48K
`undef		MCOC_IRAM_4K
`endif	//	MCOC_POLY

`ifdef		MCOC_CORE_TS
`define		CPU_CORE		tennessinec
`undef		MCOC_CORE_NH
`undef		MCOC_CORE_NHSS
`undef		MCOC_CORE_MCBS
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
`undef		MCOC_CORE_MCBS
`undef		MCOC_CORE_MCSS
`define		MCVM_COPR_NOMUL
`define		MCVM_COPR_NODIV

`else
`define		CPU_CORE		moscoviumc
`undef		MCOC_CORE_NHSS
`define		MCVM_COPR_NOFPUS

`ifdef		MCOC_CORE_MCSS
`undef		MCOC_CORE_MCBS
`endif	//	MCOC_CORE_MCSS

`endif

`ifdef		MCOC_POLY
`undef		CPU_CORE
`define		CPU_CORE		polycorec
`define		MCOC_DUAL
`endif	//	MCOC_POLY

`ifdef		MCOC_DUAL

`ifdef		MCOC_POLY
`else	//	MCOC_POLY
`undef		MCOC_CORE_MCBS
`endif	//	MCOC_POLY

`else	//	MCOC_DUAL
`define		MCOC_NO_SMPH
`define		MCOC_NO_ICFF
`undef		MCOC_DUAL_AMP_TS
`undef		MCOC_DUAL_AMP_MC
`endif	//	MCOC_DUAL

`undef		CPU_CORE2

`ifdef		MCOC_DUAL_AMP_TS
`undef		MCOC_CORE_MCBS
`undef		MCOC_DUAL_AMP_MC
`define		CPU_CORE2		tennessinea
`endif	//	MCOC_DUAL_AMP_TS

`ifdef		MCOC_DUAL_AMP_MC
`undef		MCOC_CORE_MCBS
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

