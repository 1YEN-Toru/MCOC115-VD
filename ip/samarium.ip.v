module samarium (
input clk,
input rst_n,
input brdy,
input irq,
input [15:0] cpu_sts,
input [7:0] fdat,
input [15:0] bdatr,
output [15:0] fadr,
output [2:0] bcmd,
output [15:0] badr,
output [15:0] bdatw,
input crdy,
input [15:0] cbus_i,
output [4:0] ccmd,
output [15:0] abus_o,
output [15:0] bbus_o);
//
//	Samarium ultra-small CPU core
//		(c) 2026	1YEN Toru
//
//
//	2026/04/29	ver.1.00
//		16 bit data path
//		stack machine (LIFO stack 64 word)
//





`ifndef SAMA_STK_SIZ
`define SAMA_STK_SIZ 64
`endif
`define SAMA_IRQ_ENB
`ifdef SAMA_IRQ_NOT_ENB
`undef SAMA_IRQ_ENB
`endif


(* dont_touch = "yes" *)wire ctl_fetch;
(* dont_touch = "yes" *)wire [15:0] abus;
(* dont_touch = "yes" *)wire [15:0] bbus;
(* dont_touch = "yes" *)wire [15:0] cbus;
(* dont_touch = "yes" *)wire [15:0] stk_top;
wire [1:0] ctl_bacc;
wire [3:0] ctl_acmd;
wire [6:0] opc_imm7;
wire [15:0] rgf_sp;
wire [15:0] rgf_pc;
wire [15:0] rgf_iv;
wire [15:0] cbus_alu;


wire ctl_ccmd_en;
wire ctl_ccmd_lat;
wire ctl_ccmd_sel;
wire ctl_clrie;
wire ctl_memrd;
wire ctl_mmsp;
wire ctl_pop;
wire ctl_psei;
wire ctl_push;
wire ctl_selpc;
wire ctl_setie;
wire ctl_setiv;
wire ctl_setpc;
wire ctl_sldi;
wire ctl_sppp;
wire fch_iack;
wire fch_irqie;
wire rgf_ie;
wire stk_bool;


sama_ctrl ctl (
.clk(clk),
.rst_n(rst_n),
.brdy(brdy),
.crdy(crdy),
.irq(irq),
.fch_iack(fch_iack),
.rgf_ie(rgf_ie),
.stk_bool(stk_bool),
.rgf_pc(rgf_pc[15:0]),
.abus(abus[15:0]),
.bbus(bbus[15:0]),
.fdat(fdat[7:0]),
.fch_irqie(fch_irqie),
.ctl_fetch(ctl_fetch),
.ctl_sldi(ctl_sldi),
.ctl_psei(ctl_psei),
.ctl_memrd(ctl_memrd),
.ctl_setpc(ctl_setpc),
.ctl_setiv(ctl_setiv),
.ctl_setie(ctl_setie),
.ctl_clrie(ctl_clrie),
.ctl_selpc(ctl_selpc),
.ctl_sppp(ctl_sppp),
.ctl_mmsp(ctl_mmsp),
.ctl_pop(ctl_pop),
.ctl_push(ctl_push),
.ctl_ccmd_lat(ctl_ccmd_lat),
.ctl_ccmd_en(ctl_ccmd_en),
.ctl_ccmd_sel(ctl_ccmd_sel),
.ctl_bacc(ctl_bacc[1:0]),
.ctl_acmd(ctl_acmd[3:0]),
.opc_imm7(opc_imm7[6:0]),
.fadr(fadr[15:0]),
.bcmd(bcmd[2:0]),
.badr(badr[15:0]),
.bdatw(bdatw[15:0])
);

sama_pcnt pcnt (
.clk(clk),
.rst_n(rst_n),
.fch_irqie(fch_irqie),
.ctl_clrie(ctl_clrie),
.ctl_fetch(ctl_fetch),
.ctl_setpc(ctl_setpc),
.ctl_selpc(ctl_selpc),
.rgf_iv(rgf_iv[15:0]),
.stk_top(stk_top[15:0]),
.cbus(cbus[15:0]),
.fch_iack(fch_iack),
.rgf_pc(rgf_pc[15:0])
);

`ifdef SAMA_IRQ_ENB
sama_ivec ivec (
.clk(clk),
.rst_n(rst_n),
.ctl_setiv(ctl_setiv),
.ctl_setie(ctl_setie),
.ctl_clrie(ctl_clrie),
.stk_top(stk_top[15:0]),
.rgf_ie(rgf_ie),
.rgf_iv(rgf_iv[15:0])
);
`else
assign rgf_ie=1'b0;
assign rgf_iv[15:0]=16'h0;
`endif

sama_sptr sptr (
.clk(clk),
.rst_n(rst_n),
.ctl_sppp(ctl_sppp),
.ctl_mmsp(ctl_mmsp),
.rgf_sp(rgf_sp[15:0])
);

sama_stkb1 stkb1 (
.clk(clk),
.rst_n(rst_n),
.ctl_pop(ctl_pop),
.ctl_ccmd_lat(ctl_ccmd_lat),
.ctl_ccmd_en(ctl_ccmd_en),
.stk_top(stk_top[15:0]),
.ccmd(ccmd[4:0]),
.stk_b1(bbus[15:0])
);

sama_stka2 stka2 (
.ctl_sldi(ctl_sldi),
.ctl_psei(ctl_psei),
.ctl_selpc(ctl_selpc),
.ctl_memrd(ctl_memrd),
.ctl_bacc(ctl_bacc[1:0]),
.ctl_acmd(ctl_acmd[3:0]),
.opc_imm7(opc_imm7[6:0]),
.stk_top(stk_top[15:0]),
.rgf_sp(rgf_sp[15:0]),
.rgf_pc(rgf_pc[15:0]),
.rgf_iv(rgf_iv[15:0]),
.cpu_sts(cpu_sts[15:0]),
.bdatr(bdatr[15:0]),
.stk_bool(stk_bool),
.stk_a2(abus[15:0])
);

sama_lifo stk (
.clk(clk),
.ctl_push(ctl_push),
.rgf_sp(rgf_sp[15:0]),
.cbus(cbus[15:0]),
.stk_top(stk_top[15:0])
);

sama_alu alu (
.ctl_acmd(ctl_acmd[3:0]),
.abus(abus[15:0]),
.bbus(bbus[15:0]),
.cbus(cbus_alu[15:0])
);

assign abus_o[15:0]=(ctl_ccmd_en)? abus[15:0]: 16'h0;
assign bbus_o[15:0]=(ctl_ccmd_en)? bbus[15:0]: 16'h0;
assign cbus[15:0]=(ctl_ccmd_sel)? cbus_i[15:0]: cbus_alu[15:0];

endmodule


module sama_ctrl (
input clk,
input rst_n,
input brdy,
input crdy,
input irq,
input fch_iack,
input rgf_ie,
input stk_bool,
input [15:0] rgf_pc,
input [15:0] abus,
input [15:0] bbus,
input [7:0] fdat,
output fch_irqie,
output ctl_fetch,
output ctl_sldi,
output ctl_psei,
output ctl_memrd,
output ctl_setpc,
output ctl_setiv,
output ctl_setie,
output ctl_clrie,
output ctl_selpc,
output ctl_sppp,
output ctl_mmsp,
output ctl_pop,
output ctl_push,
output ctl_ccmd_lat,
output ctl_ccmd_en,
output ctl_ccmd_sel,
output [1:0] ctl_bacc,
output [3:0] ctl_acmd,
output [6:0] opc_imm7,
output [15:0] fadr,
output [2:0] bcmd,
output [15:0] badr,
output [15:0] bdatw);


parameter [3:0] SELC=4'he;

parameter [2:0] BNOP=3'b000;
parameter [2:0] RD_W=3'b001;
parameter [2:0] WR_W=3'b010;
parameter [2:0] RD_B=3'b101;
parameter [2:0] WR_B=3'b110;

parameter [7:0] SLDI=8'h80;
parameter [7:0] INTR=8'h01;


(* dont_touch = "yes" *)wire [7:0] ir;
wire [2:0] ctl_bcmd;


assign fadr[15:0]=rgf_pc[15:0];

assign fch_irqie=( irq && rgf_ie );

reg ctl_fetch_rg;
reg [7:0] ir_rg;
always @(posedge clk)
begin
if (!rst_n)
ctl_fetch_rg<=1'b0;
else
ctl_fetch_rg<=ctl_fetch;

if (!rst_n)
ir_rg[7:0]<=SLDI;
else if (ctl_fetch_rg)
ir_rg[7:0]<=(fch_iack)? INTR: fdat[7:0];
end
assign ir[7:0]=(fch_iack)? INTR: (ctl_fetch_rg)? fdat[7:0]: ir_rg[7:0];

reg [1:0] bacc;
always @(posedge clk)
begin
if (!rst_n)
bacc[1:0]<=2'b00;
else if (brdy)
bacc[1:0]<={ bcmd[2],badr[0] };
end
assign ctl_bacc[1:0]=bacc[1:0];
assign bcmd[2:0]=ctl_bcmd[2:0];
assign badr[15:0]=
(ctl_bcmd[2:0]==RD_W || ctl_bcmd[2:0]==RD_B)? abus[15:0]:
(ctl_bcmd[2:0]==WR_W || ctl_bcmd[2:0]==WR_B)? bbus[15:0]: 16'h0;
assign bdatw[15:0]=
(ctl_bcmd[2:0]==WR_W)? abus[15:0]:
(ctl_bcmd[2:0]==WR_B)? { abus[7:0],abus[7:0] }: 16'h0;

sama_fsm fsm (
.clk(clk),
.rst_n(rst_n),
.brdy(brdy),
.crdy(crdy),
.irq(irq),
.rgf_ie(rgf_ie),
.stk_bool(stk_bool),
.ir(ir[7:0]),
.ctl_fetch(ctl_fetch),
.ctl_sldi(ctl_sldi),
.ctl_psei(ctl_psei),
.ctl_memrd(ctl_memrd),
.ctl_setpc(ctl_setpc),
.ctl_setiv(ctl_setiv),
.ctl_setie(ctl_setie),
.ctl_clrie(ctl_clrie),
.ctl_selpc(ctl_selpc),
.ctl_sppp(ctl_sppp),
.ctl_mmsp(ctl_mmsp),
.ctl_pop(ctl_pop),
.ctl_push(ctl_push),
.ctl_ccmd_lat(ctl_ccmd_lat),
.ctl_ccmd_en(ctl_ccmd_en),
.ctl_bcmd(ctl_bcmd[2:0]),
.ctl_acmd(ctl_acmd[3:0]),
.opc_imm7(opc_imm7[6:0])
);
assign ctl_ccmd_sel=( ctl_acmd[3:0]==SELC );

endmodule


module sama_pcnt (
input clk,
input rst_n,
input fch_irqie,
input ctl_clrie,
input ctl_fetch,
input ctl_setpc,
input ctl_selpc,
input [15:0] rgf_iv,
input [15:0] stk_top,
input [15:0] cbus,
output fch_iack,
output [15:0] rgf_pc);


reg fch_iack_rg;
(* dont_touch = "yes" *)reg [15:0] pcnt;
wire [15:0] pcnt_inc=pcnt[15:0] + 16'h1;
always @(posedge clk)
begin
if (!rst_n)
pcnt[15:0]<=16'h0;
else if (ctl_fetch)
pcnt[15:0]<=(fch_irqie)? pcnt[15:0]: pcnt_inc[15:0];
else if (ctl_setpc)
pcnt[15:0]<=
(ctl_clrie)? rgf_iv[15:0]:
(ctl_selpc)? stk_top[15:0]:
cbus[15:0];

if (!rst_n)
fch_iack_rg<=1'b0;
else if (ctl_fetch)
fch_iack_rg<=fch_irqie;
end
assign fch_iack=fch_iack_rg;
assign rgf_pc[15:0]=pcnt[15:0];

endmodule


`ifdef SAMA_IRQ_ENB
module sama_ivec (
input clk,
input rst_n,
input ctl_setiv,
input ctl_setie,
input ctl_clrie,
input [15:0] stk_top,
output rgf_ie,
output [15:0] rgf_iv);


reg rgf_ie_rg;
(* dont_touch = "yes" *)reg [15:0] ivec;
always @(posedge clk)
begin
if (!rst_n)
begin
rgf_ie_rg<=1'b0;
ivec[15:0]<=16'h0;
end
else if (ctl_setiv)
begin
rgf_ie_rg<=( stk_top[15:0]!=16'h0 );
ivec[15:0]<=stk_top[15:0];
end
else if (ctl_setie || ctl_clrie)
begin
rgf_ie_rg<=( ctl_setie && ivec[15:0]!=16'h0 );
end
end
assign rgf_ie=rgf_ie_rg;
assign rgf_iv[15:0]=ivec[15:0];

endmodule
`endif


module sama_sptr (
input clk,
input rst_n,
input ctl_sppp,
input ctl_mmsp,
output [15:0] rgf_sp);


(* dont_touch = "yes" *)reg [15:0] sptr;
wire [15:0] sptr_inc=
(sptr[15:0]==`SAMA_STK_SIZ)?
sptr[15:0]:
sptr[15:0] + 1;
wire [15:0] sptr_dec=
(sptr[15:0]==0)?
sptr[15:0]:
sptr[15:0] - 1;
always @(posedge clk)
begin
if (!rst_n)
sptr[15:0]<=0;
else if (!ctl_mmsp && ctl_sppp)
sptr[15:0]<=sptr_inc[15:0];
else if (ctl_mmsp && !ctl_sppp)
sptr[15:0]<=sptr_dec[15:0];
end
assign rgf_sp[15:0]=
(ctl_mmsp)?
sptr_dec[15:0]:
sptr[15:0];

endmodule


module sama_stkb1 (
input clk,
input rst_n,
input ctl_pop,
input ctl_ccmd_lat,
input ctl_ccmd_en,
input [15:0] stk_top,
output [4:0] ccmd,
output [15:0] stk_b1);


reg [15:0] stk_b1_rg;
always @(posedge clk)
begin
if (!rst_n)
stk_b1_rg[15:0]<=16'h0;
else if (ctl_pop)
stk_b1_rg[15:0]<=stk_top[15:0];
end
assign stk_b1[15:0]=stk_b1_rg[15:0];

reg [15:0] stk_ccmd_rg;
always @(posedge clk)
begin
if (!rst_n)
stk_ccmd_rg[15:0]<=16'h0;
else if (ctl_ccmd_lat)
stk_ccmd_rg[15:0]<=stk_top[15:0];
end
assign ccmd[4:0]=(ctl_ccmd_en)? stk_ccmd_rg[4:0]: 5'h0;

endmodule


module sama_stka2 (
input ctl_sldi,
input ctl_psei,
input ctl_selpc,
input ctl_memrd,
input [1:0] ctl_bacc,
input [3:0] ctl_acmd,
input [6:0] opc_imm7,
input [15:0] stk_top,
input [15:0] rgf_sp,
input [15:0] rgf_pc,
input [15:0] rgf_iv,
input [15:0] cpu_sts,
input [15:0] bdatr,
output stk_bool,
output [15:0] stk_a2);


parameter [3:0] NEG=4'hc;
parameter [3:0] OUTB=4'hd;


wire [4:0] opc_eimm5=opc_imm7[4:0];


reg [15:0] stk_psei;
always @(opc_eimm5[4:0] or cpu_sts[15:0] or rgf_sp[15:0] or rgf_pc[15:0] or rgf_iv[15:0])
begin
case (opc_eimm5[4:0])
5'h00: stk_psei[15:0]=16'h0;
5'h01: stk_psei[15:0]=16'h1;
5'h02: stk_psei[15:0]=16'h2;
5'h03: stk_psei[15:0]=16'h3;
`ifdef SAMA_EIMM_IRIO
5'h04: stk_psei[15:0]=16'h0081;
5'h05: stk_psei[15:0]=16'h0082;
5'h06: stk_psei[15:0]=16'h0083;
5'h07: stk_psei[15:0]=16'h0084;
5'h08: stk_psei[15:0]=16'h0085;
5'h09: stk_psei[15:0]=16'h0086;
5'h0a: stk_psei[15:0]=16'h01e0;
5'h0b: stk_psei[15:0]=16'h01e1;
5'h0c: stk_psei[15:0]=16'h01e2;
5'h0d: stk_psei[15:0]=16'h01e3;
5'h0e: stk_psei[15:0]=16'h01e4;
5'h0f: stk_psei[15:0]=16'h01e5;
`else
5'h04: stk_psei[15:0]=16'h0;
5'h05: stk_psei[15:0]=16'h0;
5'h06: stk_psei[15:0]=16'h0;
5'h07: stk_psei[15:0]=16'h0;
5'h08: stk_psei[15:0]=16'h0;
5'h09: stk_psei[15:0]=16'h0;
5'h0a: stk_psei[15:0]=16'h0;
5'h0b: stk_psei[15:0]=16'h0;
5'h0c: stk_psei[15:0]=16'h0;
5'h0d: stk_psei[15:0]=16'h0;
5'h0e: stk_psei[15:0]=16'h0;
5'h0f: stk_psei[15:0]=16'h0;
`endif
5'h10: stk_psei[15:0]=16'hffff;
5'h11: stk_psei[15:0]=16'h7fff;
5'h12: stk_psei[15:0]=16'h8000;
5'h13: stk_psei[15:0]=16'h00ff;
5'h14: stk_psei[15:0]=16'h0080;
5'h15: stk_psei[15:0]=16'h0;
5'h16: stk_psei[15:0]=16'h0;
5'h17: stk_psei[15:0]=16'h0;
5'h18: stk_psei[15:0]=16'h0620;
5'h19: stk_psei[15:0]=`SAMA_STK_SIZ;
5'h1a: stk_psei[15:0]=rgf_sp[15:0];
5'h1b: stk_psei[15:0]=rgf_pc[15:0];
5'h1c: stk_psei[15:0]=rgf_iv[15:0];
5'h1d: stk_psei[15:0]=cpu_sts[15:0];
5'h1e: stk_psei[15:0]=16'h0;
5'h1f: stk_psei[15:0]=16'h0;
default: stk_psei[15:0]=16'h0;
endcase
end

assign stk_a2[15:0]=
(ctl_sldi)? { stk_top[8:0],opc_imm7[6:0] }:
(ctl_psei)? stk_psei[15:0]:
(ctl_selpc)? rgf_pc[15:0]:
(ctl_memrd && !ctl_bacc[1])? bdatr[15:0]:
(ctl_memrd && ctl_bacc[1:0]==2'b10)? { 8'h0,bdatr[15:8] }:
(ctl_memrd && ctl_bacc[1:0]==2'b11)? { 8'h0,bdatr[7:0] }:
(ctl_acmd[3:0]==NEG || ctl_acmd[3:0]==OUTB)? 16'h0:
stk_top[15:0];
assign stk_bool=( stk_top[15:0]!=16'h0 );

endmodule


module sama_lifo (
input clk,
input ctl_push,
input [15:0] rgf_sp,
input [15:0] cbus,
output [15:0] stk_top);


(* ram_style="distributed" *)
reg [15:0] mem[0:`SAMA_STK_SIZ - 1];
always @(posedge clk)
begin
if (ctl_push)
mem[rgf_sp[$clog2 (`SAMA_STK_SIZ) - 1:0]]<=cbus[15:0];
end
assign stk_top[15:0]=mem[rgf_sp[$clog2 (`SAMA_STK_SIZ) - 1:0]];

endmodule


module sama_fsm (
clk,
rst_n,
brdy,
crdy,
irq,
rgf_ie,
stk_bool,
ir,
ctl_fetch,
ctl_sldi,
ctl_psei,
ctl_memrd,
ctl_setpc,
ctl_setiv,
ctl_setie,
ctl_clrie,
ctl_selpc,
ctl_sppp,
ctl_mmsp,
ctl_pop,
ctl_push,
ctl_ccmd_lat,
ctl_ccmd_en,
ctl_bcmd,
ctl_acmd,
opc_imm7);

input clk;
input rst_n;
input brdy;
input crdy;
input irq;
input rgf_ie;
input stk_bool;
input [7:0] ir;
output ctl_fetch;
output ctl_sldi;
output ctl_psei;
output ctl_memrd;
output ctl_setpc;
output ctl_setiv;
output ctl_setie;
output ctl_clrie;
output ctl_selpc;
output ctl_sppp;
output ctl_mmsp;
output ctl_pop;
output ctl_push;
output ctl_ccmd_lat;
output ctl_ccmd_en;
output [2:0] ctl_bcmd;
output [3:0] ctl_acmd;
output [6:0] opc_imm7;


parameter [1:0] S0=2'h0;
parameter [1:0] S1=2'h1;
parameter [1:0] S2=2'h2;
parameter [1:0] S3=2'h3;

parameter [3:0] OUTA=4'h0;
parameter [3:0] NOT=4'h1;
parameter [3:0] CEND=4'h2;
parameter [3:0] LSL=4'h3;
parameter [3:0] LSR=4'h4;
parameter [3:0] ASR=4'h5;
parameter [3:0] AND=4'h6;
parameter [3:0] OR=4'h7;
parameter [3:0] EOR=4'h8;
parameter [3:0] ADD=4'h9;
parameter [3:0] SUB=4'ha;
parameter [3:0] CMP=4'hb;
parameter [3:0] NEG=4'hc;
parameter [3:0] OUTB=4'hd;
parameter [3:0] SELC=4'he;

parameter [2:0] BNOP=3'b000;
parameter [2:0] RD_W=3'b001;
parameter [2:0] WR_W=3'b010;
parameter [2:0] RD_B=3'b101;
parameter [2:0] WR_B=3'b110;

reg ctl_sldi;
reg ctl_psei;
reg ctl_fetch;
reg ctl_memrd;
reg ctl_setpc;
reg ctl_setiv;
reg ctl_setie;
reg ctl_clrie;
reg ctl_selpc;
reg ctl_sppp;
reg ctl_mmsp;
reg ctl_pop;
reg ctl_push;
reg ctl_ccmd_lat;
reg ctl_ccmd_en;
reg [2:0] ctl_bcmd;
reg [3:0] ctl_acmd;
reg [1:0] stat;
reg [1:0] stat_nx;
reg [7:0] dbg_cod;

wire opc_sldi=ir[7];
wire [1:0] opc_type=ir[6:5];
wire [4:0] opc_inst=ir[4:0];
assign opc_imm7[6:0]=ir[6:0];

always @(opc_sldi or opc_type[1:0] or opc_inst[4:0] or stat[1:0] or brdy or stk_bool or irq or rgf_ie or crdy)
begin
casez ({ opc_sldi,opc_type[1:0],opc_inst[4:0],stat[1:0],brdy,stk_bool,irq,rgf_ie,crdy })
`define COUT { dbg_cod[7:0],stat_nx[1:0],ctl_sldi,ctl_psei,ctl_fetch,ctl_memrd,ctl_setpc,ctl_selpc,ctl_setiv,ctl_setie,ctl_clrie,ctl_sppp,ctl_mmsp,ctl_pop,ctl_push,ctl_ccmd_lat,ctl_ccmd_en,ctl_bcmd[2:0],ctl_acmd[3:0] }
{ 1'b0,2'h0,5'h00,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h00,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h0,5'h01,S0,1'b?,1'b?,1'b0,1'b?,1'b? }: `COUT={ 8'h01,S0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h0,5'h01,S0,1'b?,1'b?,1'b1,1'b0,1'b? }: `COUT={ 8'h02,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h0,5'h01,S0,1'b?,1'b?,1'b1,1'b1,1'b? }: `COUT={ 8'h03,S1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h0,5'h01,S1,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h04,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h0,5'h02,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h05,S1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,BNOP,OUTA };
{ 1'b0,2'h0,5'h02,S1,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h06,S2,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h0,5'h02,S2,1'b?,1'b?,1'b?,1'b?,1'b0 }: `COUT={ 8'h07,S2,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h0,5'h02,S2,1'b?,1'b?,1'b?,1'b?,1'b1 }: `COUT={ 8'h08,S3,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,BNOP,OUTA };
{ 1'b0,2'h0,5'h02,S3,1'b?,1'b?,1'b?,1'b?,1'b0 }: `COUT={ 8'h09,S3,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h0,5'h02,S3,1'b?,1'b?,1'b?,1'b?,1'b1 }: `COUT={ 8'h0a,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,BNOP,SELC };
{ 1'b0,2'h1,5'h00,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h0b,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,BNOP,NOT };
{ 1'b0,2'h1,5'h01,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h0c,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,BNOP,CEND };
{ 1'b0,2'h1,5'h02,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h0d,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,BNOP,LSL };
{ 1'b0,2'h1,5'h03,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h0e,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,BNOP,LSR };
{ 1'b0,2'h1,5'h04,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h0f,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,BNOP,ASR };
{ 1'b0,2'h1,5'h05,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h10,S1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,BNOP,NEG };
{ 1'b0,2'h1,5'h05,S1,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h11,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,BNOP,NEG };
{ 1'b0,2'h1,5'h14,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h12,S1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h1,5'h14,S1,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h13,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h1,5'h15,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h14,S1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h1,5'h15,S1,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h15,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h1,5'h16,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h16,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h1,5'h17,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h17,S1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h1,5'h17,S1,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h18,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h1,5'h18,S0,1'b0,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h19,S0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h1,5'h18,S0,1'b1,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h1a,S1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,RD_B,OUTA };
{ 1'b0,2'h1,5'h18,S1,1'b0,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h1b,S1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h1,5'h18,S1,1'b1,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h1c,S0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h1,5'h19,S0,1'b0,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h1d,S0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h1,5'h19,S0,1'b1,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h1e,S1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,RD_W,OUTA };
{ 1'b0,2'h1,5'h19,S1,1'b0,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h1f,S1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h1,5'h19,S1,1'b1,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h20,S0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h1,5'h1c,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h21,S1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h1,5'h1c,S1,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h22,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,BNOP,OUTB };
{ 1'b0,2'h1,5'h1d,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h23,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h2,5'h00,S1,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h24,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,BNOP,AND };
{ 1'b0,2'h2,5'h01,S1,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h25,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,BNOP,OR };
{ 1'b0,2'h2,5'h02,S1,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h26,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,BNOP,EOR };
{ 1'b0,2'h2,5'h03,S1,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h27,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,BNOP,ADD };
{ 1'b0,2'h2,5'h04,S1,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h28,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,BNOP,SUB };
{ 1'b0,2'h2,5'h05,S1,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h29,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,BNOP,CMP };
{ 1'b0,2'h2,5'h14,S1,1'b?,1'b0,1'b?,1'b?,1'b? }: `COUT={ 8'h2a,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,BNOP,OUTB };
{ 1'b0,2'h2,5'h14,S1,1'b?,1'b1,1'b?,1'b?,1'b? }: `COUT={ 8'h2b,S2,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,BNOP,OUTB };
{ 1'b0,2'h2,5'h14,S2,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h2c,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h2,5'h15,S1,1'b?,1'b1,1'b?,1'b?,1'b? }: `COUT={ 8'h2d,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,BNOP,OUTB };
{ 1'b0,2'h2,5'h15,S1,1'b?,1'b0,1'b?,1'b?,1'b? }: `COUT={ 8'h2e,S2,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,BNOP,OUTB };
{ 1'b0,2'h2,5'h15,S2,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h2f,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h2,5'h18,S1,1'b0,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h30,S1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,WR_B,OUTA };
{ 1'b0,2'h2,5'h18,S1,1'b1,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h31,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,WR_B,OUTA };
{ 1'b0,2'h2,5'h19,S1,1'b0,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h32,S1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,WR_W,OUTA };
{ 1'b0,2'h2,5'h19,S1,1'b1,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h33,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,WR_W,OUTA };
{ 1'b0,2'h2,5'h1c,S1,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h34,S2,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,BNOP,OUTB };
{ 1'b0,2'h2,5'h1c,S2,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h35,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,BNOP,OUTB };
{ 1'b0,2'h2,5'h??,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h36,S1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,BNOP,OUTA };
{ 1'b0,2'h3,5'h??,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h37,S0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,BNOP,OUTA };
{ 1'b1,2'h?,5'h??,S0,1'b?,1'b?,1'b?,1'b?,1'b? }: `COUT={ 8'h38,S0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,BNOP,OUTA };
default: `COUT={ 8'hxx,S0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BNOP,OUTA };
`undef COUT
endcase
end

always @(posedge clk)
begin
if (!rst_n)
stat[1:0]<=S0;
else
stat[1:0]<=stat_nx[1:0];
end

endmodule


module sama_alu (
input [3:0] ctl_acmd,
input [15:0] abus,
input [15:0] bbus,
output [15:0] cbus);


wire [15:0] cbus_art;
wire [15:0] cbus_log;


sama_alu_art art (
.ctl_acmd(ctl_acmd[3:0]),
.abus(abus[15:0]),
.bbus(bbus[15:0]),
.cbus(cbus_art[15:0])
);

sama_alu_log log (
.ctl_acmd(ctl_acmd[3:0]),
.abus(abus[15:0]),
.bbus(bbus[15:0]),
.cbus(cbus_log[15:0])
);

assign cbus[15:0]=cbus_art[15:0] | cbus_log[15:0];

endmodule


module sama_alu_art (
input [3:0] ctl_acmd,
input [15:0] abus,
input [15:0] bbus,
output [15:0] cbus);


parameter [3:0] ADD=4'h9;
parameter [3:0] SUB=4'ha;
parameter [3:0] CMP=4'hb;
parameter [3:0] NEG=4'hc;
parameter [3:0] OUTB=4'hd;

parameter [4:0] CMP_NF=5'b1_0000;
parameter [4:0] CMP_CF=5'b0_1000;
parameter [4:0] CMP_VF=5'b0_0100;
parameter [4:0] CMP_ZF=5'b0_0010;
parameter [4:0] CMP_SF=5'b0_0001;


wire [15:0] ina=(ctl_acmd[3:0]==OUTB)? 16'h0: abus[15:0];
wire [16:0] inb;
wire [15:0] out;
wire [4:0] alu_sr_flag_add;


assign inb[16:0]=
(ctl_acmd[3:0]==SUB || ctl_acmd[3:0]==CMP || ctl_acmd[3:0]==NEG)?
{ (~bbus[15]),(~bbus[15:0]) }:
{ bbus[15], bbus[15:0] };
wire cin=( ctl_acmd[3:0]==SUB || ctl_acmd[3:0]==CMP || ctl_acmd[3:0]==NEG );

sama_alu_add add (
.cin(cin),
.ina(ina[15:0]),
.inb(inb[16:0]),
.out(out[15:0]),
.alu_sr_flag(alu_sr_flag_add[4:0])
);

wire [4:0] alu_sr_flag=
(ctl_acmd[3:0]==SUB || ctl_acmd[3:0]==CMP || ctl_acmd[3:0]==NEG)?
(alu_sr_flag_add[4:0] ^ CMP_CF[4:0]):
alu_sr_flag_add[4:0];

wire drv=(
ctl_acmd[3:0]==OUTB || ctl_acmd[3:0]==ADD ||
ctl_acmd[3:0]==SUB || ctl_acmd[3:0]==CMP || ctl_acmd[3:0]==NEG);
assign cbus[15:0]=
(!drv)? 16'h0:
(ctl_acmd[3:0]==CMP)? { 11'h0,alu_sr_flag[4:0] }:
out[15:0];

endmodule


module sama_alu_add (
input cin,
input [15:0] ina,
input [16:0] inb,
output [15:0] out,
output [4:0] alu_sr_flag);


wire [18:0] tina={ 1'b0, ina[15], ina[15:0], cin };
wire [18:0] tinb={ 1'b0, inb[16:0], cin };
wire [18:0] tout=tina[18:0] + tinb[18:0];

assign out[15:0]=tout[16:1];

assign alu_sr_flag[4:0]=
{
out[15],
tout[18],
(tina[17]&tinb[17]&(~out[15])) | ((~tina[17])&(~tinb[17])&out[15]),
(~|out[15:0]),
out[15] ^ (
(tina[17]&tinb[17]&(~out[15])) | ((~tina[17])&(~tinb[17])&out[15]))
};

endmodule


module sama_alu_log (
input [3:0] ctl_acmd,
input [15:0] abus,
input [15:0] bbus,
output reg [15:0] cbus);


parameter [3:0] OUTA=4'h0;
parameter [3:0] NOT=4'h1;
parameter [3:0] CEND=4'h2;
parameter [3:0] LSL=4'h3;
parameter [3:0] LSR=4'h4;
parameter [3:0] ASR=4'h5;
parameter [3:0] AND=4'h6;
parameter [3:0] OR=4'h7;
parameter [3:0] EOR=4'h8;


always @(ctl_acmd[3:0] or abus[15:0] or bbus[15:0])
begin
case (ctl_acmd[3:0])
OUTA: cbus[15:0]=abus[15:0];
NOT: cbus[15:0]=(~abus[15:0]);
CEND: cbus[15:0]={ abus[7:0],abus[15:8] };
LSL: cbus[15:0]={ abus[14:0],1'b0 };
LSR: cbus[15:0]={ 1'b0,abus[15:1] };
ASR: cbus[15:0]={ abus[15],abus[15:1] };
AND: cbus[15:0]=abus[15:0]&bbus[15:0];
OR: cbus[15:0]=abus[15:0] | bbus[15:0];
EOR: cbus[15:0]=abus[15:0] ^ bbus[15:0];
default: cbus[15:0]=16'h0;
endcase
end

endmodule
