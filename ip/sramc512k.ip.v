
module sram_fsm
   (bwait_n,
    SR,
    .sram_dqi_0_sp_1(sram_dqi_0_sn_1),
    \stat_reg[1]_0 ,
    bdatr,
    sram_oen,
    rst_n_0,
    rst_n_1,
    rst_n_2,
    rst_n_3,
    sram_we_f0,
    ftgl_f_reg,
    sram_dqo,
    sram_adr,
    clk,
    sram_dqi,
    rst_n,
    data4,
    ftgl_f,
    sram_we_r,
    Q,
    sram_cyc,
    data1,
    brdy,
    bcmd,
    \sram_adr_low_reg[1]_0 ,
    badr,
    \sram_dqo[7] ,
    bcs_sram_n);
  output bwait_n;
  output [0:0]SR;
  output \stat_reg[1]_0 ;
  output [31:0]bdatr;
  output sram_oen;
  output rst_n_0;
  output rst_n_1;
  output rst_n_2;
  output rst_n_3;
  output sram_we_f0;
  output ftgl_f_reg;
  output [7:0]sram_dqo;
  output [1:0]sram_adr;
  input clk;
  input [7:0]sram_dqi;
  input rst_n;
  input [23:0]data4;
  input ftgl_f;
  input sram_we_r;
  input [3:0]Q;
  input sram_cyc;
  input [7:0]data1;
  input brdy;
  input [3:0]bcmd;
  input [1:0]\sram_adr_low_reg[1]_0 ;
  input [1:0]badr;
  input [31:0]\sram_dqo[7] ;
  input bcs_sram_n;
  output sram_dqi_0_sn_1;

  wire \<const1> ;
  wire [1:0]A_nx;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [1:0]badr;
  wire [3:0]bcmd;
  wire bcs_sram_n;
  wire [31:0]bdatr;
  wire \bdatr[15]_INST_0_i_1_n_0 ;
  wire \bdatr[15]_INST_0_i_2_n_0 ;
  wire \bdatr[23]_INST_0_i_1_n_0 ;
  wire \bdatr[23]_INST_0_i_2_n_0 ;
  wire \bdatr[31]_INST_0_i_1_n_0 ;
  wire \bdatr[31]_INST_0_i_2_n_0 ;
  wire \bdatr[31]_INST_0_i_3_n_0 ;
  wire \bdatr[7]_INST_0_i_1_n_0 ;
  wire \bdatr[7]_INST_0_i_2_n_0 ;
  wire brdy;
  wire bwait_n;
  wire bwait_n_i_3_n_0;
  wire bwait_n_t;
  wire clk;
  wire [7:0]data1;
  wire [23:0]data4;
  wire ftgl_f;
  wire ftgl_f_reg;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_1;
  wire rst_n_2;
  wire rst_n_3;
  wire [1:0]sram_adr;
  wire \sram_adr_low[0]_i_2_n_0 ;
  wire \sram_adr_low[0]_i_3_n_0 ;
  wire \sram_adr_low[0]_i_4_n_0 ;
  wire \sram_adr_low[0]_i_5_n_0 ;
  wire \sram_adr_low[0]_i_6_n_0 ;
  wire \sram_adr_low[1]_i_2_n_0 ;
  wire \sram_adr_low[1]_i_3_n_0 ;
  wire \sram_adr_low[1]_i_4_n_0 ;
  wire \sram_adr_low[1]_i_5_n_0 ;
  wire [0:0]sram_adr_low_0;
  wire [1:0]\sram_adr_low_reg[1]_0 ;
  wire \sram_adr_low_reg_n_0_[1] ;
  wire sram_cyc;
  wire [7:0]sram_dqi;
  wire sram_dqi_0_sn_1;
  wire [7:0]sram_dqo;
  wire \sram_dqo[0]_INST_0_i_1_n_0 ;
  wire \sram_dqo[1]_INST_0_i_1_n_0 ;
  wire \sram_dqo[2]_INST_0_i_1_n_0 ;
  wire \sram_dqo[3]_INST_0_i_1_n_0 ;
  wire \sram_dqo[4]_INST_0_i_1_n_0 ;
  wire \sram_dqo[5]_INST_0_i_1_n_0 ;
  wire \sram_dqo[6]_INST_0_i_1_n_0 ;
  wire [31:0]\sram_dqo[7] ;
  wire \sram_dqo[7]_INST_0_i_1_n_0 ;
  wire \sram_dqo[7]_INST_0_i_2_n_0 ;
  wire \sram_dqo[7]_INST_0_i_3_n_0 ;
  wire sram_oen;
  wire sram_we_f0;
  wire sram_we_f_i_2_n_0;
  wire sram_we_r;
  wire [3:0]stat;
  wire \stat[0]_i_2_n_0 ;
  wire \stat[1]_i_2_n_0 ;
  wire \stat[2]_i_2_n_0 ;
  wire \stat[3]_i_2_n_0 ;
  wire [3:0]stat_nx;
  wire \stat_reg[1]_0 ;

  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[0]_INST_0 
       (.I0(data4[0]),
        .I1(\bdatr[7]_INST_0_i_1_n_0 ),
        .I2(\bdatr[7]_INST_0_i_2_n_0 ),
        .I3(sram_dqi[0]),
        .O(bdatr[0]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[10]_INST_0 
       (.I0(data1[2]),
        .I1(\bdatr[15]_INST_0_i_1_n_0 ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(sram_dqi[2]),
        .O(bdatr[10]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[11]_INST_0 
       (.I0(data1[3]),
        .I1(\bdatr[15]_INST_0_i_1_n_0 ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(sram_dqi[3]),
        .O(bdatr[11]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[12]_INST_0 
       (.I0(data1[4]),
        .I1(\bdatr[15]_INST_0_i_1_n_0 ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(sram_dqi[4]),
        .O(bdatr[12]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[13]_INST_0 
       (.I0(data1[5]),
        .I1(\bdatr[15]_INST_0_i_1_n_0 ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(sram_dqi[5]),
        .O(bdatr[13]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[14]_INST_0 
       (.I0(data1[6]),
        .I1(\bdatr[15]_INST_0_i_1_n_0 ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(sram_dqi[6]),
        .O(bdatr[14]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[15]_INST_0 
       (.I0(data1[7]),
        .I1(\bdatr[15]_INST_0_i_1_n_0 ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(sram_dqi[7]),
        .O(bdatr[15]));
  LUT5 #(
    .INIT(32'h00D00000)) 
    \bdatr[15]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(sram_adr_low_0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(sram_cyc),
        .O(\bdatr[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    \bdatr[15]_INST_0_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(sram_cyc),
        .I3(sram_adr_low_0),
        .I4(\bdatr[31]_INST_0_i_3_n_0 ),
        .O(\bdatr[15]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \bdatr[16]_INST_0 
       (.I0(\bdatr[23]_INST_0_i_1_n_0 ),
        .I1(sram_dqi[0]),
        .I2(data4[8]),
        .I3(\bdatr[23]_INST_0_i_2_n_0 ),
        .O(bdatr[16]));
  LUT4 #(
    .INIT(16'hF444)) 
    \bdatr[17]_INST_0 
       (.I0(\bdatr[23]_INST_0_i_1_n_0 ),
        .I1(sram_dqi[1]),
        .I2(data4[9]),
        .I3(\bdatr[23]_INST_0_i_2_n_0 ),
        .O(bdatr[17]));
  LUT4 #(
    .INIT(16'hF444)) 
    \bdatr[18]_INST_0 
       (.I0(\bdatr[23]_INST_0_i_1_n_0 ),
        .I1(sram_dqi[2]),
        .I2(data4[10]),
        .I3(\bdatr[23]_INST_0_i_2_n_0 ),
        .O(bdatr[18]));
  LUT4 #(
    .INIT(16'hF444)) 
    \bdatr[19]_INST_0 
       (.I0(\bdatr[23]_INST_0_i_1_n_0 ),
        .I1(sram_dqi[3]),
        .I2(data4[11]),
        .I3(\bdatr[23]_INST_0_i_2_n_0 ),
        .O(bdatr[19]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[1]_INST_0 
       (.I0(data4[1]),
        .I1(\bdatr[7]_INST_0_i_1_n_0 ),
        .I2(\bdatr[7]_INST_0_i_2_n_0 ),
        .I3(sram_dqi[1]),
        .O(bdatr[1]));
  LUT4 #(
    .INIT(16'hF444)) 
    \bdatr[20]_INST_0 
       (.I0(\bdatr[23]_INST_0_i_1_n_0 ),
        .I1(sram_dqi[4]),
        .I2(data4[12]),
        .I3(\bdatr[23]_INST_0_i_2_n_0 ),
        .O(bdatr[20]));
  LUT4 #(
    .INIT(16'hF444)) 
    \bdatr[21]_INST_0 
       (.I0(\bdatr[23]_INST_0_i_1_n_0 ),
        .I1(sram_dqi[5]),
        .I2(data4[13]),
        .I3(\bdatr[23]_INST_0_i_2_n_0 ),
        .O(bdatr[21]));
  LUT4 #(
    .INIT(16'hF444)) 
    \bdatr[22]_INST_0 
       (.I0(\bdatr[23]_INST_0_i_1_n_0 ),
        .I1(sram_dqi[6]),
        .I2(data4[14]),
        .I3(\bdatr[23]_INST_0_i_2_n_0 ),
        .O(bdatr[22]));
  LUT4 #(
    .INIT(16'hF444)) 
    \bdatr[23]_INST_0 
       (.I0(\bdatr[23]_INST_0_i_1_n_0 ),
        .I1(sram_dqi[7]),
        .I2(data4[15]),
        .I3(\bdatr[23]_INST_0_i_2_n_0 ),
        .O(bdatr[23]));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \bdatr[23]_INST_0_i_1 
       (.I0(sram_adr_low_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(sram_cyc),
        .I4(\bdatr[31]_INST_0_i_3_n_0 ),
        .O(\bdatr[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002030)) 
    \bdatr[23]_INST_0_i_2 
       (.I0(\sram_adr_low_reg_n_0_[1] ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(sram_adr_low_0),
        .I4(sram_oen),
        .O(\bdatr[23]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \bdatr[24]_INST_0 
       (.I0(\bdatr[31]_INST_0_i_1_n_0 ),
        .I1(sram_dqi[0]),
        .I2(data4[16]),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .O(bdatr[24]));
  LUT4 #(
    .INIT(16'hF444)) 
    \bdatr[25]_INST_0 
       (.I0(\bdatr[31]_INST_0_i_1_n_0 ),
        .I1(sram_dqi[1]),
        .I2(data4[17]),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .O(bdatr[25]));
  LUT4 #(
    .INIT(16'hF444)) 
    \bdatr[26]_INST_0 
       (.I0(\bdatr[31]_INST_0_i_1_n_0 ),
        .I1(sram_dqi[2]),
        .I2(data4[18]),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .O(bdatr[26]));
  LUT4 #(
    .INIT(16'hF444)) 
    \bdatr[27]_INST_0 
       (.I0(\bdatr[31]_INST_0_i_1_n_0 ),
        .I1(sram_dqi[3]),
        .I2(data4[19]),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .O(bdatr[27]));
  LUT4 #(
    .INIT(16'hF444)) 
    \bdatr[28]_INST_0 
       (.I0(\bdatr[31]_INST_0_i_1_n_0 ),
        .I1(sram_dqi[4]),
        .I2(data4[20]),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .O(bdatr[28]));
  LUT4 #(
    .INIT(16'hF444)) 
    \bdatr[29]_INST_0 
       (.I0(\bdatr[31]_INST_0_i_1_n_0 ),
        .I1(sram_dqi[5]),
        .I2(data4[21]),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .O(bdatr[29]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[2]_INST_0 
       (.I0(data4[2]),
        .I1(\bdatr[7]_INST_0_i_1_n_0 ),
        .I2(\bdatr[7]_INST_0_i_2_n_0 ),
        .I3(sram_dqi[2]),
        .O(bdatr[2]));
  LUT4 #(
    .INIT(16'hF444)) 
    \bdatr[30]_INST_0 
       (.I0(\bdatr[31]_INST_0_i_1_n_0 ),
        .I1(sram_dqi[6]),
        .I2(data4[22]),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .O(bdatr[30]));
  LUT4 #(
    .INIT(16'hF444)) 
    \bdatr[31]_INST_0 
       (.I0(\bdatr[31]_INST_0_i_1_n_0 ),
        .I1(sram_dqi[7]),
        .I2(data4[23]),
        .I3(\bdatr[31]_INST_0_i_2_n_0 ),
        .O(bdatr[31]));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \bdatr[31]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(sram_cyc),
        .I3(sram_adr_low_0),
        .I4(\bdatr[31]_INST_0_i_3_n_0 ),
        .O(\bdatr[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00300020)) 
    \bdatr[31]_INST_0_i_2 
       (.I0(\sram_adr_low_reg_n_0_[1] ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(sram_oen),
        .I4(sram_adr_low_0),
        .O(\bdatr[31]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \bdatr[31]_INST_0_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\sram_adr_low_reg_n_0_[1] ),
        .O(\bdatr[31]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[3]_INST_0 
       (.I0(data4[3]),
        .I1(\bdatr[7]_INST_0_i_1_n_0 ),
        .I2(\bdatr[7]_INST_0_i_2_n_0 ),
        .I3(sram_dqi[3]),
        .O(bdatr[3]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[4]_INST_0 
       (.I0(data4[4]),
        .I1(\bdatr[7]_INST_0_i_1_n_0 ),
        .I2(\bdatr[7]_INST_0_i_2_n_0 ),
        .I3(sram_dqi[4]),
        .O(bdatr[4]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[5]_INST_0 
       (.I0(data4[5]),
        .I1(\bdatr[7]_INST_0_i_1_n_0 ),
        .I2(\bdatr[7]_INST_0_i_2_n_0 ),
        .I3(sram_dqi[5]),
        .O(bdatr[5]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[6]_INST_0 
       (.I0(data4[6]),
        .I1(\bdatr[7]_INST_0_i_1_n_0 ),
        .I2(\bdatr[7]_INST_0_i_2_n_0 ),
        .I3(sram_dqi[6]),
        .O(bdatr[6]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[7]_INST_0 
       (.I0(data4[7]),
        .I1(\bdatr[7]_INST_0_i_1_n_0 ),
        .I2(\bdatr[7]_INST_0_i_2_n_0 ),
        .I3(sram_dqi[7]),
        .O(bdatr[7]));
  LUT5 #(
    .INIT(32'h04000C00)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(\bdatr[31]_INST_0_i_3_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(sram_cyc),
        .I4(sram_adr_low_0),
        .O(\bdatr[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \bdatr[7]_INST_0_i_2 
       (.I0(sram_adr_low_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(sram_cyc),
        .I4(\bdatr[31]_INST_0_i_3_n_0 ),
        .O(\bdatr[7]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[8]_INST_0 
       (.I0(data1[0]),
        .I1(\bdatr[15]_INST_0_i_1_n_0 ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(sram_dqi[0]),
        .O(bdatr[8]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \bdatr[9]_INST_0 
       (.I0(data1[1]),
        .I1(\bdatr[15]_INST_0_i_1_n_0 ),
        .I2(\bdatr[15]_INST_0_i_2_n_0 ),
        .I3(sram_dqi[1]),
        .O(bdatr[9]));
  LUT1 #(
    .INIT(2'h1)) 
    bwait_n_i_1
       (.I0(rst_n),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFCF9989BBBBDDCD)) 
    bwait_n_i_2
       (.I0(stat[2]),
        .I1(stat[3]),
        .I2(brdy),
        .I3(bwait_n_i_3_n_0),
        .I4(stat[1]),
        .I5(stat[0]),
        .O(bwait_n_t));
  LUT5 #(
    .INIT(32'hFFF0F2FF)) 
    bwait_n_i_3
       (.I0(bcmd[2]),
        .I1(bcmd[3]),
        .I2(bcs_sram_n),
        .I3(bcmd[0]),
        .I4(bcmd[1]),
        .O(bwait_n_i_3_n_0));
  FDSE bwait_n_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(bwait_n_t),
        .Q(bwait_n),
        .S(SR));
  LUT6 #(
    .INIT(64'h0000044404440040)) 
    ftgl_f_i_1
       (.I0(ftgl_f),
        .I1(sram_we_f_i_2_n_0),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(stat[2]),
        .I5(stat[3]),
        .O(ftgl_f_reg));
  LUT6 #(
    .INIT(64'h0772000000000000)) 
    ftgl_r_i_1
       (.I0(stat[1]),
        .I1(stat[0]),
        .I2(stat[2]),
        .I3(stat[3]),
        .I4(ftgl_f),
        .I5(sram_we_r),
        .O(\stat_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hE020)) 
    \rdat[0]_i_1 
       (.I0(sram_dqi[0]),
        .I1(\bdatr[7]_INST_0_i_2_n_0 ),
        .I2(rst_n),
        .I3(data4[0]),
        .O(sram_dqi_0_sn_1));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \rdat[15]_i_1 
       (.I0(rst_n),
        .I1(\bdatr[31]_INST_0_i_3_n_0 ),
        .I2(sram_adr_low_0),
        .I3(sram_cyc),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \rdat[23]_i_1 
       (.I0(rst_n),
        .I1(\bdatr[31]_INST_0_i_3_n_0 ),
        .I2(sram_cyc),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(sram_adr_low_0),
        .O(rst_n_3));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \rdat[31]_i_1 
       (.I0(rst_n),
        .I1(\bdatr[31]_INST_0_i_3_n_0 ),
        .I2(sram_adr_low_0),
        .I3(sram_cyc),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(rst_n_1));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \rdat[7]_i_1 
       (.I0(rst_n),
        .I1(\bdatr[31]_INST_0_i_3_n_0 ),
        .I2(sram_cyc),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(sram_adr_low_0),
        .O(rst_n_2));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[0]_INST_0 
       (.I0(sram_adr_low_0),
        .I1(sram_cyc),
        .O(sram_adr[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[1]_INST_0 
       (.I0(\sram_adr_low_reg_n_0_[1] ),
        .I1(sram_cyc),
        .O(sram_adr[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF88A8)) 
    \sram_adr_low[0]_i_1 
       (.I0(\sram_adr_low[0]_i_2_n_0 ),
        .I1(\sram_adr_low[0]_i_3_n_0 ),
        .I2(bcmd[2]),
        .I3(bcmd[3]),
        .I4(\sram_adr_low[0]_i_4_n_0 ),
        .I5(\sram_adr_low[0]_i_5_n_0 ),
        .O(A_nx[0]));
  LUT5 #(
    .INIT(32'h00008A00)) 
    \sram_adr_low[0]_i_2 
       (.I0(badr[0]),
        .I1(stat[1]),
        .I2(stat[2]),
        .I3(brdy),
        .I4(stat[3]),
        .O(\sram_adr_low[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF9)) 
    \sram_adr_low[0]_i_3 
       (.I0(bcmd[1]),
        .I1(bcmd[0]),
        .I2(bcs_sram_n),
        .O(\sram_adr_low[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2000200000002000)) 
    \sram_adr_low[0]_i_4 
       (.I0(\sram_adr_low[1]_i_4_n_0 ),
        .I1(stat[0]),
        .I2(brdy),
        .I3(badr[0]),
        .I4(\sram_adr_low[0]_i_6_n_0 ),
        .I5(stat[3]),
        .O(\sram_adr_low[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h020200020F0F0F22)) 
    \sram_adr_low[0]_i_5 
       (.I0(\sram_adr_low_reg[1]_0 [0]),
        .I1(brdy),
        .I2(stat[3]),
        .I3(stat[2]),
        .I4(stat[1]),
        .I5(stat[0]),
        .O(\sram_adr_low[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sram_adr_low[0]_i_6 
       (.I0(bcmd[2]),
        .I1(bcmd[3]),
        .O(\sram_adr_low[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEEFEEAAAEFAEE)) 
    \sram_adr_low[1]_i_1 
       (.I0(\sram_adr_low[1]_i_2_n_0 ),
        .I1(\sram_adr_low[1]_i_3_n_0 ),
        .I2(stat[1]),
        .I3(stat[2]),
        .I4(stat[3]),
        .I5(stat[0]),
        .O(A_nx[1]));
  LUT6 #(
    .INIT(64'hAA000000C0000000)) 
    \sram_adr_low[1]_i_2 
       (.I0(\sram_adr_low[1]_i_4_n_0 ),
        .I1(\sram_adr_low[1]_i_5_n_0 ),
        .I2(stat[0]),
        .I3(badr[1]),
        .I4(brdy),
        .I5(stat[3]),
        .O(\sram_adr_low[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \sram_adr_low[1]_i_3 
       (.I0(badr[1]),
        .I1(stat[0]),
        .I2(brdy),
        .I3(\sram_adr_low_reg[1]_0 [1]),
        .O(\sram_adr_low[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sram_adr_low[1]_i_4 
       (.I0(stat[2]),
        .I1(stat[1]),
        .O(\sram_adr_low[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFDFDFF)) 
    \sram_adr_low[1]_i_5 
       (.I0(bcmd[3]),
        .I1(bcmd[2]),
        .I2(bcs_sram_n),
        .I3(bcmd[0]),
        .I4(bcmd[1]),
        .O(\sram_adr_low[1]_i_5_n_0 ));
  FDRE \sram_adr_low_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(A_nx[0]),
        .Q(sram_adr_low_0),
        .R(SR));
  FDRE \sram_adr_low_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(A_nx[1]),
        .Q(\sram_adr_low_reg_n_0_[1] ),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \sram_dqo[0]_INST_0 
       (.I0(\sram_dqo[7]_INST_0_i_1_n_0 ),
        .I1(\sram_dqo[7] [24]),
        .I2(\sram_dqo[7]_INST_0_i_2_n_0 ),
        .I3(\sram_dqo[7] [8]),
        .I4(\sram_dqo[0]_INST_0_i_1_n_0 ),
        .O(sram_dqo[0]));
  LUT6 #(
    .INIT(64'h0000C0000000A000)) 
    \sram_dqo[0]_INST_0_i_1 
       (.I0(\sram_dqo[7] [16]),
        .I1(\sram_dqo[7] [0]),
        .I2(sram_adr_low_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bdatr[31]_INST_0_i_3_n_0 ),
        .O(\sram_dqo[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \sram_dqo[1]_INST_0 
       (.I0(\sram_dqo[7]_INST_0_i_1_n_0 ),
        .I1(\sram_dqo[7] [25]),
        .I2(\sram_dqo[7]_INST_0_i_2_n_0 ),
        .I3(\sram_dqo[7] [9]),
        .I4(\sram_dqo[1]_INST_0_i_1_n_0 ),
        .O(sram_dqo[1]));
  LUT6 #(
    .INIT(64'h0000C0000000A000)) 
    \sram_dqo[1]_INST_0_i_1 
       (.I0(\sram_dqo[7] [17]),
        .I1(\sram_dqo[7] [1]),
        .I2(sram_adr_low_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bdatr[31]_INST_0_i_3_n_0 ),
        .O(\sram_dqo[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \sram_dqo[2]_INST_0 
       (.I0(\sram_dqo[7]_INST_0_i_1_n_0 ),
        .I1(\sram_dqo[7] [26]),
        .I2(\sram_dqo[7]_INST_0_i_2_n_0 ),
        .I3(\sram_dqo[7] [10]),
        .I4(\sram_dqo[2]_INST_0_i_1_n_0 ),
        .O(sram_dqo[2]));
  LUT6 #(
    .INIT(64'h0000C0000000A000)) 
    \sram_dqo[2]_INST_0_i_1 
       (.I0(\sram_dqo[7] [18]),
        .I1(\sram_dqo[7] [2]),
        .I2(sram_adr_low_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bdatr[31]_INST_0_i_3_n_0 ),
        .O(\sram_dqo[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \sram_dqo[3]_INST_0 
       (.I0(\sram_dqo[7]_INST_0_i_1_n_0 ),
        .I1(\sram_dqo[7] [27]),
        .I2(\sram_dqo[7]_INST_0_i_2_n_0 ),
        .I3(\sram_dqo[7] [11]),
        .I4(\sram_dqo[3]_INST_0_i_1_n_0 ),
        .O(sram_dqo[3]));
  LUT6 #(
    .INIT(64'h0000C0000000A000)) 
    \sram_dqo[3]_INST_0_i_1 
       (.I0(\sram_dqo[7] [19]),
        .I1(\sram_dqo[7] [3]),
        .I2(sram_adr_low_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bdatr[31]_INST_0_i_3_n_0 ),
        .O(\sram_dqo[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \sram_dqo[4]_INST_0 
       (.I0(\sram_dqo[7]_INST_0_i_1_n_0 ),
        .I1(\sram_dqo[7] [28]),
        .I2(\sram_dqo[7]_INST_0_i_2_n_0 ),
        .I3(\sram_dqo[7] [12]),
        .I4(\sram_dqo[4]_INST_0_i_1_n_0 ),
        .O(sram_dqo[4]));
  LUT6 #(
    .INIT(64'h0000C0000000A000)) 
    \sram_dqo[4]_INST_0_i_1 
       (.I0(\sram_dqo[7] [20]),
        .I1(\sram_dqo[7] [4]),
        .I2(sram_adr_low_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bdatr[31]_INST_0_i_3_n_0 ),
        .O(\sram_dqo[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \sram_dqo[5]_INST_0 
       (.I0(\sram_dqo[7]_INST_0_i_1_n_0 ),
        .I1(\sram_dqo[7] [29]),
        .I2(\sram_dqo[7]_INST_0_i_2_n_0 ),
        .I3(\sram_dqo[7] [13]),
        .I4(\sram_dqo[5]_INST_0_i_1_n_0 ),
        .O(sram_dqo[5]));
  LUT6 #(
    .INIT(64'h0000C0000000A000)) 
    \sram_dqo[5]_INST_0_i_1 
       (.I0(\sram_dqo[7] [21]),
        .I1(\sram_dqo[7] [5]),
        .I2(sram_adr_low_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bdatr[31]_INST_0_i_3_n_0 ),
        .O(\sram_dqo[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \sram_dqo[6]_INST_0 
       (.I0(\sram_dqo[7]_INST_0_i_1_n_0 ),
        .I1(\sram_dqo[7] [30]),
        .I2(\sram_dqo[7]_INST_0_i_2_n_0 ),
        .I3(\sram_dqo[7] [14]),
        .I4(\sram_dqo[6]_INST_0_i_1_n_0 ),
        .O(sram_dqo[6]));
  LUT6 #(
    .INIT(64'h0000C0000000A000)) 
    \sram_dqo[6]_INST_0_i_1 
       (.I0(\sram_dqo[7] [22]),
        .I1(\sram_dqo[7] [6]),
        .I2(sram_adr_low_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bdatr[31]_INST_0_i_3_n_0 ),
        .O(\sram_dqo[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \sram_dqo[7]_INST_0 
       (.I0(\sram_dqo[7]_INST_0_i_1_n_0 ),
        .I1(\sram_dqo[7] [31]),
        .I2(\sram_dqo[7]_INST_0_i_2_n_0 ),
        .I3(\sram_dqo[7] [15]),
        .I4(\sram_dqo[7]_INST_0_i_3_n_0 ),
        .O(sram_dqo[7]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \sram_dqo[7]_INST_0_i_1 
       (.I0(sram_adr_low_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\sram_adr_low_reg_n_0_[1] ),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\sram_dqo[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0404040004040404)) 
    \sram_dqo[7]_INST_0_i_2 
       (.I0(sram_adr_low_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\sram_adr_low_reg_n_0_[1] ),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\sram_dqo[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0000000A000)) 
    \sram_dqo[7]_INST_0_i_3 
       (.I0(\sram_dqo[7] [23]),
        .I1(\sram_dqo[7] [7]),
        .I2(sram_adr_low_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bdatr[31]_INST_0_i_3_n_0 ),
        .O(\sram_dqo[7]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    sram_oen_INST_0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(sram_cyc),
        .O(sram_oen));
  LUT6 #(
    .INIT(64'h0000088808880080)) 
    sram_we_f_i_1
       (.I0(sram_cyc),
        .I1(sram_we_f_i_2_n_0),
        .I2(stat[1]),
        .I3(stat[0]),
        .I4(stat[2]),
        .I5(stat[3]),
        .O(sram_we_f0));
  LUT2 #(
    .INIT(4'h2)) 
    sram_we_f_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(sram_we_f_i_2_n_0));
  LUT6 #(
    .INIT(64'hF111F1111111F444)) 
    \stat[0]_i_1 
       (.I0(stat[0]),
        .I1(stat[3]),
        .I2(\stat[0]_i_2_n_0 ),
        .I3(\stat[3]_i_2_n_0 ),
        .I4(stat[2]),
        .I5(stat[1]),
        .O(stat_nx[0]));
  LUT4 #(
    .INIT(16'h0290)) 
    \stat[0]_i_2 
       (.I0(bcmd[2]),
        .I1(bcmd[3]),
        .I2(bcmd[1]),
        .I3(bcmd[0]),
        .O(\stat[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF111F4442222F222)) 
    \stat[1]_i_1 
       (.I0(stat[1]),
        .I1(stat[3]),
        .I2(\stat[1]_i_2_n_0 ),
        .I3(\stat[3]_i_2_n_0 ),
        .I4(stat[2]),
        .I5(stat[0]),
        .O(stat_nx[1]));
  LUT4 #(
    .INIT(16'h0490)) 
    \stat[1]_i_2 
       (.I0(bcmd[2]),
        .I1(bcmd[3]),
        .I2(bcmd[0]),
        .I3(bcmd[1]),
        .O(\stat[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888F88F88888F8F8)) 
    \stat[2]_i_1 
       (.I0(\stat[2]_i_2_n_0 ),
        .I1(\stat[3]_i_2_n_0 ),
        .I2(stat[2]),
        .I3(stat[0]),
        .I4(stat[3]),
        .I5(stat[1]),
        .O(stat_nx[2]));
  LUT6 #(
    .INIT(64'h0040004000000040)) 
    \stat[2]_i_2 
       (.I0(bcmd[2]),
        .I1(bcmd[3]),
        .I2(bcmd[0]),
        .I3(bcmd[1]),
        .I4(stat[1]),
        .I5(stat[0]),
        .O(\stat[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0808000800000008)) 
    \stat[3]_i_1 
       (.I0(\stat[3]_i_2_n_0 ),
        .I1(bcmd[1]),
        .I2(bcmd[0]),
        .I3(stat[2]),
        .I4(stat[1]),
        .I5(stat[0]),
        .O(stat_nx[3]));
  LUT3 #(
    .INIT(8'h02)) 
    \stat[3]_i_2 
       (.I0(brdy),
        .I1(stat[3]),
        .I2(bcs_sram_n),
        .O(\stat[3]_i_2_n_0 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(stat[0]),
        .R(SR));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(stat[1]),
        .R(SR));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[2]),
        .Q(stat[2]),
        .R(SR));
  FDRE \stat_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[3]),
        .Q(stat[3]),
        .R(SR));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module sramc512k
   (clk,
    rst_n,
    brdy,
    bcs_sram_n,
    bcmd,
    badr,
    bdatw,
    bwait_n,
    bdatr,
    sram_dqi,
    sram_cen,
    sram_oen,
    sram_wen,
    sram_dqo_e,
    sram_dqo,
    sram_adr);
//
//	External SRAM 512KB memory unit
//		(c) 2023	1YEN Toru
//
//
//	2024/05/11	ver.1.02
//		fixed: add sram_cyc for bdatr output condition
//
//	2023/12/16	ver.1.00
//		for Cmod A7 on board SRAM 512K (IS61WV5128BLL)
//
  input clk;
  input rst_n;
  input brdy;
  input bcs_sram_n;
  input [3:0]bcmd;
  input [18:0]badr;
  input [31:0]bdatw;
  output bwait_n;
  output [31:0]bdatr;
  input [7:0]sram_dqi;
  output sram_cen;
  output sram_oen;
  output sram_wen;
  output sram_dqo_e;
  output [7:0]sram_dqo;
  output [18:0]sram_adr;

  wire \<const0> ;
  wire \<const1> ;
  wire [18:0]badr;
  wire [1:0]badr_bc;
  wire [18:2]badr_bc__0;
  wire [3:0]bcmd;
  wire \bcmd_bc_reg_n_0_[0] ;
  wire bcs_sram_n;
  wire [31:0]bdatr;
  wire [31:0]bdatw;
  wire \bdatw_bc_reg_n_0_[0] ;
  wire \bdatw_bc_reg_n_0_[1] ;
  wire \bdatw_bc_reg_n_0_[2] ;
  wire \bdatw_bc_reg_n_0_[3] ;
  wire \bdatw_bc_reg_n_0_[4] ;
  wire \bdatw_bc_reg_n_0_[5] ;
  wire \bdatw_bc_reg_n_0_[6] ;
  wire \bdatw_bc_reg_n_0_[7] ;
  wire brdy;
  wire bwait_n;
  wire clk;
  wire ctrl_n_1;
  wire ctrl_n_2;
  wire ctrl_n_3;
  wire ctrl_n_37;
  wire ctrl_n_38;
  wire ctrl_n_39;
  wire ctrl_n_40;
  wire ctrl_n_42;
  wire [7:0]data0;
  wire [15:8]data1;
  wire [7:0]data2;
  wire [7:0]data3;
  wire [31:0]data4;
  wire ftgl_f;
  wire ftgl_r;
  wire p_0_in25_in;
  wire p_1_in19_in;
  wire p_1_in22_in;
  wire rst_n;
  wire [18:0]sram_adr;
  wire sram_cen;
  wire sram_cyc;
  wire sram_cyc0;
  wire [7:0]sram_dqi;
  wire [7:0]sram_dqo;
  wire sram_dqo_e;
  wire sram_oen;
  wire sram_we_f0;
  wire sram_we_r;
  wire sram_wen;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \badr_bc_reg[0] 
       (.C(clk),
        .CE(brdy),
        .D(badr[0]),
        .Q(badr_bc[0]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[10] 
       (.C(clk),
        .CE(brdy),
        .D(badr[10]),
        .Q(badr_bc__0[10]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[11] 
       (.C(clk),
        .CE(brdy),
        .D(badr[11]),
        .Q(badr_bc__0[11]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[12] 
       (.C(clk),
        .CE(brdy),
        .D(badr[12]),
        .Q(badr_bc__0[12]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[13] 
       (.C(clk),
        .CE(brdy),
        .D(badr[13]),
        .Q(badr_bc__0[13]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[14] 
       (.C(clk),
        .CE(brdy),
        .D(badr[14]),
        .Q(badr_bc__0[14]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[15] 
       (.C(clk),
        .CE(brdy),
        .D(badr[15]),
        .Q(badr_bc__0[15]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[16] 
       (.C(clk),
        .CE(brdy),
        .D(badr[16]),
        .Q(badr_bc__0[16]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[17] 
       (.C(clk),
        .CE(brdy),
        .D(badr[17]),
        .Q(badr_bc__0[17]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[18] 
       (.C(clk),
        .CE(brdy),
        .D(badr[18]),
        .Q(badr_bc__0[18]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[1] 
       (.C(clk),
        .CE(brdy),
        .D(badr[1]),
        .Q(badr_bc[1]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[2] 
       (.C(clk),
        .CE(brdy),
        .D(badr[2]),
        .Q(badr_bc__0[2]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[3] 
       (.C(clk),
        .CE(brdy),
        .D(badr[3]),
        .Q(badr_bc__0[3]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[4] 
       (.C(clk),
        .CE(brdy),
        .D(badr[4]),
        .Q(badr_bc__0[4]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[5] 
       (.C(clk),
        .CE(brdy),
        .D(badr[5]),
        .Q(badr_bc__0[5]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[6] 
       (.C(clk),
        .CE(brdy),
        .D(badr[6]),
        .Q(badr_bc__0[6]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[7] 
       (.C(clk),
        .CE(brdy),
        .D(badr[7]),
        .Q(badr_bc__0[7]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[8] 
       (.C(clk),
        .CE(brdy),
        .D(badr[8]),
        .Q(badr_bc__0[8]),
        .R(ctrl_n_1));
  FDRE \badr_bc_reg[9] 
       (.C(clk),
        .CE(brdy),
        .D(badr[9]),
        .Q(badr_bc__0[9]),
        .R(ctrl_n_1));
  FDRE \bcmd_bc_reg[0] 
       (.C(clk),
        .CE(brdy),
        .D(bcmd[0]),
        .Q(\bcmd_bc_reg_n_0_[0] ),
        .R(ctrl_n_1));
  FDRE \bcmd_bc_reg[1] 
       (.C(clk),
        .CE(brdy),
        .D(bcmd[1]),
        .Q(p_1_in19_in),
        .R(ctrl_n_1));
  FDRE \bcmd_bc_reg[2] 
       (.C(clk),
        .CE(brdy),
        .D(bcmd[2]),
        .Q(p_0_in25_in),
        .R(ctrl_n_1));
  FDRE \bcmd_bc_reg[3] 
       (.C(clk),
        .CE(brdy),
        .D(bcmd[3]),
        .Q(p_1_in22_in),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[0] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[0]),
        .Q(\bdatw_bc_reg_n_0_[0] ),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[10] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[10]),
        .Q(data0[2]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[11] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[11]),
        .Q(data0[3]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[12] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[12]),
        .Q(data0[4]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[13] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[13]),
        .Q(data0[5]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[14] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[14]),
        .Q(data0[6]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[15] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[15]),
        .Q(data0[7]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[16] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[16]),
        .Q(data3[0]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[17] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[17]),
        .Q(data3[1]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[18] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[18]),
        .Q(data3[2]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[19] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[19]),
        .Q(data3[3]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[1] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[1]),
        .Q(\bdatw_bc_reg_n_0_[1] ),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[20] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[20]),
        .Q(data3[4]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[21] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[21]),
        .Q(data3[5]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[22] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[22]),
        .Q(data3[6]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[23] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[23]),
        .Q(data3[7]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[24] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[24]),
        .Q(data2[0]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[25] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[25]),
        .Q(data2[1]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[26] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[26]),
        .Q(data2[2]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[27] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[27]),
        .Q(data2[3]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[28] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[28]),
        .Q(data2[4]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[29] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[29]),
        .Q(data2[5]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[2] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[2]),
        .Q(\bdatw_bc_reg_n_0_[2] ),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[30] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[30]),
        .Q(data2[6]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[31] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[31]),
        .Q(data2[7]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[3] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[3]),
        .Q(\bdatw_bc_reg_n_0_[3] ),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[4] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[4]),
        .Q(\bdatw_bc_reg_n_0_[4] ),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[5] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[5]),
        .Q(\bdatw_bc_reg_n_0_[5] ),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[6] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[6]),
        .Q(\bdatw_bc_reg_n_0_[6] ),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[7] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[7]),
        .Q(\bdatw_bc_reg_n_0_[7] ),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[8] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[8]),
        .Q(data0[0]),
        .R(ctrl_n_1));
  FDRE \bdatw_bc_reg[9] 
       (.C(clk),
        .CE(brdy),
        .D(bdatw[9]),
        .Q(data0[1]),
        .R(ctrl_n_1));
  sram_fsm ctrl
       (.Q({p_1_in22_in,p_0_in25_in,p_1_in19_in,\bcmd_bc_reg_n_0_[0] }),
        .SR(ctrl_n_1),
        .badr(badr[1:0]),
        .bcmd(bcmd),
        .bcs_sram_n(bcs_sram_n),
        .bdatr(bdatr),
        .brdy(brdy),
        .bwait_n(bwait_n),
        .clk(clk),
        .data1(data1),
        .data4({data4[31:16],data4[7:0]}),
        .ftgl_f(ftgl_f),
        .ftgl_f_reg(ctrl_n_42),
        .rst_n(rst_n),
        .rst_n_0(ctrl_n_37),
        .rst_n_1(ctrl_n_38),
        .rst_n_2(ctrl_n_39),
        .rst_n_3(ctrl_n_40),
        .sram_adr(sram_adr[1:0]),
        .\sram_adr_low_reg[1]_0 (badr_bc),
        .sram_cyc(sram_cyc),
        .sram_dqi(sram_dqi),
        .sram_dqi_0_sp_1(ctrl_n_2),
        .sram_dqo(sram_dqo),
        .\sram_dqo[7] ({data2,data3,data0,\bdatw_bc_reg_n_0_[7] ,\bdatw_bc_reg_n_0_[6] ,\bdatw_bc_reg_n_0_[5] ,\bdatw_bc_reg_n_0_[4] ,\bdatw_bc_reg_n_0_[3] ,\bdatw_bc_reg_n_0_[2] ,\bdatw_bc_reg_n_0_[1] ,\bdatw_bc_reg_n_0_[0] }),
        .sram_oen(sram_oen),
        .sram_we_f0(sram_we_f0),
        .sram_we_r(sram_we_r),
        .\stat_reg[1]_0 (ctrl_n_3));
  FDRE ftgl_f_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(ctrl_n_42),
        .Q(ftgl_f),
        .R(\<const0> ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    ftgl_r_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(ctrl_n_3),
        .Q(ftgl_r),
        .R(\<const0> ));
  FDRE \rdat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ctrl_n_2),
        .Q(data4[0]),
        .R(\<const0> ));
  FDRE \rdat_reg[10] 
       (.C(clk),
        .CE(ctrl_n_37),
        .D(sram_dqi[2]),
        .Q(data1[10]),
        .R(\<const0> ));
  FDRE \rdat_reg[11] 
       (.C(clk),
        .CE(ctrl_n_37),
        .D(sram_dqi[3]),
        .Q(data1[11]),
        .R(\<const0> ));
  FDRE \rdat_reg[12] 
       (.C(clk),
        .CE(ctrl_n_37),
        .D(sram_dqi[4]),
        .Q(data1[12]),
        .R(\<const0> ));
  FDRE \rdat_reg[13] 
       (.C(clk),
        .CE(ctrl_n_37),
        .D(sram_dqi[5]),
        .Q(data1[13]),
        .R(\<const0> ));
  FDRE \rdat_reg[14] 
       (.C(clk),
        .CE(ctrl_n_37),
        .D(sram_dqi[6]),
        .Q(data1[14]),
        .R(\<const0> ));
  FDRE \rdat_reg[15] 
       (.C(clk),
        .CE(ctrl_n_37),
        .D(sram_dqi[7]),
        .Q(data1[15]),
        .R(\<const0> ));
  FDRE \rdat_reg[16] 
       (.C(clk),
        .CE(ctrl_n_40),
        .D(sram_dqi[0]),
        .Q(data4[16]),
        .R(\<const0> ));
  FDRE \rdat_reg[17] 
       (.C(clk),
        .CE(ctrl_n_40),
        .D(sram_dqi[1]),
        .Q(data4[17]),
        .R(\<const0> ));
  FDRE \rdat_reg[18] 
       (.C(clk),
        .CE(ctrl_n_40),
        .D(sram_dqi[2]),
        .Q(data4[18]),
        .R(\<const0> ));
  FDRE \rdat_reg[19] 
       (.C(clk),
        .CE(ctrl_n_40),
        .D(sram_dqi[3]),
        .Q(data4[19]),
        .R(\<const0> ));
  FDRE \rdat_reg[1] 
       (.C(clk),
        .CE(ctrl_n_39),
        .D(sram_dqi[1]),
        .Q(data4[1]),
        .R(\<const0> ));
  FDRE \rdat_reg[20] 
       (.C(clk),
        .CE(ctrl_n_40),
        .D(sram_dqi[4]),
        .Q(data4[20]),
        .R(\<const0> ));
  FDRE \rdat_reg[21] 
       (.C(clk),
        .CE(ctrl_n_40),
        .D(sram_dqi[5]),
        .Q(data4[21]),
        .R(\<const0> ));
  FDRE \rdat_reg[22] 
       (.C(clk),
        .CE(ctrl_n_40),
        .D(sram_dqi[6]),
        .Q(data4[22]),
        .R(\<const0> ));
  FDRE \rdat_reg[23] 
       (.C(clk),
        .CE(ctrl_n_40),
        .D(sram_dqi[7]),
        .Q(data4[23]),
        .R(\<const0> ));
  FDRE \rdat_reg[24] 
       (.C(clk),
        .CE(ctrl_n_38),
        .D(sram_dqi[0]),
        .Q(data4[24]),
        .R(\<const0> ));
  FDRE \rdat_reg[25] 
       (.C(clk),
        .CE(ctrl_n_38),
        .D(sram_dqi[1]),
        .Q(data4[25]),
        .R(\<const0> ));
  FDRE \rdat_reg[26] 
       (.C(clk),
        .CE(ctrl_n_38),
        .D(sram_dqi[2]),
        .Q(data4[26]),
        .R(\<const0> ));
  FDRE \rdat_reg[27] 
       (.C(clk),
        .CE(ctrl_n_38),
        .D(sram_dqi[3]),
        .Q(data4[27]),
        .R(\<const0> ));
  FDRE \rdat_reg[28] 
       (.C(clk),
        .CE(ctrl_n_38),
        .D(sram_dqi[4]),
        .Q(data4[28]),
        .R(\<const0> ));
  FDRE \rdat_reg[29] 
       (.C(clk),
        .CE(ctrl_n_38),
        .D(sram_dqi[5]),
        .Q(data4[29]),
        .R(\<const0> ));
  FDRE \rdat_reg[2] 
       (.C(clk),
        .CE(ctrl_n_39),
        .D(sram_dqi[2]),
        .Q(data4[2]),
        .R(\<const0> ));
  FDRE \rdat_reg[30] 
       (.C(clk),
        .CE(ctrl_n_38),
        .D(sram_dqi[6]),
        .Q(data4[30]),
        .R(\<const0> ));
  FDRE \rdat_reg[31] 
       (.C(clk),
        .CE(ctrl_n_38),
        .D(sram_dqi[7]),
        .Q(data4[31]),
        .R(\<const0> ));
  FDRE \rdat_reg[3] 
       (.C(clk),
        .CE(ctrl_n_39),
        .D(sram_dqi[3]),
        .Q(data4[3]),
        .R(\<const0> ));
  FDRE \rdat_reg[4] 
       (.C(clk),
        .CE(ctrl_n_39),
        .D(sram_dqi[4]),
        .Q(data4[4]),
        .R(\<const0> ));
  FDRE \rdat_reg[5] 
       (.C(clk),
        .CE(ctrl_n_39),
        .D(sram_dqi[5]),
        .Q(data4[5]),
        .R(\<const0> ));
  FDRE \rdat_reg[6] 
       (.C(clk),
        .CE(ctrl_n_39),
        .D(sram_dqi[6]),
        .Q(data4[6]),
        .R(\<const0> ));
  FDRE \rdat_reg[7] 
       (.C(clk),
        .CE(ctrl_n_39),
        .D(sram_dqi[7]),
        .Q(data4[7]),
        .R(\<const0> ));
  FDRE \rdat_reg[8] 
       (.C(clk),
        .CE(ctrl_n_37),
        .D(sram_dqi[0]),
        .Q(data1[8]),
        .R(\<const0> ));
  FDRE \rdat_reg[9] 
       (.C(clk),
        .CE(ctrl_n_37),
        .D(sram_dqi[1]),
        .Q(data1[9]),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[10]_INST_0 
       (.I0(badr_bc__0[10]),
        .I1(sram_cyc),
        .O(sram_adr[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[11]_INST_0 
       (.I0(badr_bc__0[11]),
        .I1(sram_cyc),
        .O(sram_adr[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[12]_INST_0 
       (.I0(badr_bc__0[12]),
        .I1(sram_cyc),
        .O(sram_adr[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[13]_INST_0 
       (.I0(badr_bc__0[13]),
        .I1(sram_cyc),
        .O(sram_adr[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[14]_INST_0 
       (.I0(badr_bc__0[14]),
        .I1(sram_cyc),
        .O(sram_adr[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[15]_INST_0 
       (.I0(badr_bc__0[15]),
        .I1(sram_cyc),
        .O(sram_adr[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[16]_INST_0 
       (.I0(badr_bc__0[16]),
        .I1(sram_cyc),
        .O(sram_adr[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[17]_INST_0 
       (.I0(badr_bc__0[17]),
        .I1(sram_cyc),
        .O(sram_adr[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[18]_INST_0 
       (.I0(badr_bc__0[18]),
        .I1(sram_cyc),
        .O(sram_adr[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[2]_INST_0 
       (.I0(badr_bc__0[2]),
        .I1(sram_cyc),
        .O(sram_adr[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[3]_INST_0 
       (.I0(badr_bc__0[3]),
        .I1(sram_cyc),
        .O(sram_adr[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[4]_INST_0 
       (.I0(badr_bc__0[4]),
        .I1(sram_cyc),
        .O(sram_adr[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[5]_INST_0 
       (.I0(badr_bc__0[5]),
        .I1(sram_cyc),
        .O(sram_adr[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[6]_INST_0 
       (.I0(badr_bc__0[6]),
        .I1(sram_cyc),
        .O(sram_adr[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[7]_INST_0 
       (.I0(badr_bc__0[7]),
        .I1(sram_cyc),
        .O(sram_adr[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[8]_INST_0 
       (.I0(badr_bc__0[8]),
        .I1(sram_cyc),
        .O(sram_adr[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \sram_adr[9]_INST_0 
       (.I0(badr_bc__0[9]),
        .I1(sram_cyc),
        .O(sram_adr[9]));
  LUT1 #(
    .INIT(2'h1)) 
    sram_cen_INST_0
       (.I0(sram_cyc),
        .O(sram_cen));
  LUT1 #(
    .INIT(2'h1)) 
    sram_cyc_i_1
       (.I0(bcs_sram_n),
        .O(sram_cyc0));
  FDRE sram_cyc_reg
       (.C(clk),
        .CE(brdy),
        .D(sram_cyc0),
        .Q(sram_cyc),
        .R(ctrl_n_1));
  FDRE sram_we_f_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sram_we_f0),
        .Q(sram_dqo_e),
        .R(\<const0> ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    sram_we_r_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(sram_we_f0),
        .Q(sram_we_r),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h87)) 
    sram_wen_INST_0
       (.I0(ftgl_f),
        .I1(sram_we_r),
        .I2(ftgl_r),
        .O(sram_wen));
endmodule
