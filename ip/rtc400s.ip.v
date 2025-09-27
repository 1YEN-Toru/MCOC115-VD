
(* STRUCTURAL_NETLIST = "yes" *)
module rtc400s
   (clk,
    rst_n,
    simumd,
    brdy,
    bcmdw,
    bcmdr,
    bcs_rtcu_n,
    clk_mhz,
    badr,
    bdatw,
    rtc_rtcr,
    .bdatr({\<const0> ,\^bdatr [14],\^bdatr [13],\^bdatr [12],\^bdatr [11],\^bdatr [10],\^bdatr [9],\^bdatr [8],\^bdatr [7],\^bdatr [6],\^bdatr [5],\^bdatr [4],\^bdatr [3],\^bdatr [2],\^bdatr [1],\^bdatr [0]}));
//
//	Real Time Clock (RTC400S) Unit
//		(c) 2025	1YEN Toru
//
//
//	2025/09/27	ver.1.00
//		Real Time Clock
//			full 400 years of leap year support
//			synchronized clock edition
//
// ================================
//
//	2022/10/08	ver.1.00
//		Real Time Clock
//			full 400 years of leap year support
//			32kHz clock edition
//
  input clk;
  input rst_n;
  input simumd;
  input brdy;
  input bcmdw;
  input bcmdr;
  input bcs_rtcu_n;
  input [7:0]clk_mhz;
  input [3:0]badr;
  input [15:0]bdatw;
  output rtc_rtcr;
  output \<const0> ;
     output [14:0]\^bdatr ;

  wire \<const0> ;
  wire [3:0]badr;
  wire [5:0]bcd_day;
  wire bcd_sec;
  wire bcmdr;
  wire bcmdw;
  wire bcs_rtcu_n;
  wire [14:0]\^bdatr ;
  wire [15:0]bdatw;
  wire [3:0]bin_yea1;
  wire [4:3]bin_yea310_in;
  wire brdy;
  wire clk;
  wire [7:0]clk_mhz;
  wire [9:0]data2;
  wire [6:0]p_1_in;
  wire [5:0]p_1_in2_in;
  wire rclk_n_10;
  wire rclk_n_11;
  wire rclk_n_12;
  wire rclk_n_13;
  wire rclk_n_14;
  wire rclk_n_15;
  wire rclk_n_16;
  wire rclk_n_17;
  wire rclk_n_18;
  wire rclk_n_19;
  wire rclk_n_2;
  wire rclk_n_20;
  wire rclk_n_21;
  wire rclk_n_22;
  wire rclk_n_23;
  wire rclk_n_24;
  wire rclk_n_26;
  wire rclk_n_28;
  wire rclk_n_3;
  wire rclk_n_4;
  wire rclk_n_5;
  wire rclk_n_6;
  wire rclk_n_7;
  wire rclk_n_8;
  wire rclk_n_9;
  wire rcnt_n_10;
  wire rcnt_n_11;
  wire rcnt_n_12;
  wire rcnt_n_13;
  wire rcnt_n_15;
  wire rcnt_n_16;
  wire rcnt_n_17;
  wire rcnt_n_28;
  wire rcnt_n_29;
  wire rcnt_n_30;
  wire rcnt_n_31;
  wire rcnt_n_32;
  wire rcnt_n_33;
  wire rcnt_n_34;
  wire rcnt_n_35;
  wire rcnt_n_36;
  wire rcnt_n_37;
  wire rcnt_n_38;
  wire rcnt_n_39;
  wire rcnt_n_40;
  wire rcnt_n_41;
  wire rcnt_n_42;
  wire rcnt_n_43;
  wire rcnt_n_44;
  wire rcnt_n_45;
  wire rcnt_n_52;
  wire rcnt_n_53;
  wire rcnt_n_54;
  wire rcnt_n_55;
  wire rcnt_n_56;
  wire rcnt_n_57;
  wire rcnt_n_58;
  wire rcnt_n_59;
  wire rcnt_n_60;
  wire rcnt_n_61;
  wire rcnt_n_62;
  wire rcnt_n_63;
  wire rcnt_n_64;
  wire rcnt_n_65;
  wire rcnt_n_66;
  wire rcnt_n_67;
  wire rcnt_n_68;
  wire rcnt_n_69;
  wire rcnt_n_70;
  wire rcnt_n_71;
  wire rcnt_n_72;
  wire rcnt_n_73;
  wire rcnt_n_74;
  wire rcnt_n_75;
  wire rcnt_n_76;
  wire rcnt_n_77;
  wire rcnt_n_78;
  wire rcnt_n_79;
  wire rcnt_n_80;
  wire rcnt_n_81;
  wire rcnt_n_82;
  wire rcnt_n_83;
  wire rcnt_n_84;
  wire rcnt_n_85;
  wire rcnt_n_86;
  wire rcnt_n_9;
  wire [1:0]rcnt_psc_mil;
  wire rcnt_psc_mil_ovf;
  wire rcnt_sec_cnte;
  wire rcnt_synce;
  wire rctl_houf;
  wire rctl_minf;
  wire rctl_n_10;
  wire rctl_n_3;
  wire rctl_n_4;
  wire rctl_n_5;
  wire rctl_snap;
  wire rctl_wrt_req;
  wire rd_rtchrmi;
  wire rd_rtcscps;
  wire rdup_leap_r;
  wire rdup_leap_r_0;
  wire rdup_n_1;
  wire rdup_n_13;
  wire rdup_n_14;
  wire rdup_n_15;
  wire rdup_n_16;
  wire rdup_n_17;
  wire rdup_n_18;
  wire rdup_n_19;
  wire rdup_n_2;
  wire rdup_n_3;
  wire rdup_n_35;
  wire rdup_n_36;
  wire rdup_n_37;
  wire rdup_n_38;
  wire rdup_n_4;
  wire rdup_n_47;
  wire rdup_n_48;
  wire rdup_n_49;
  wire rdup_n_5;
  wire rdup_n_50;
  wire rdup_n_51;
  wire rdup_n_52;
  wire rdup_n_6;
  wire [1:1]\rfsm/p_0_in ;
  wire rst_n;
  wire [23:16]rsub_reg;
  wire rsub_wrt_ack;
  wire rsub_wrt_req;
  wire [23:16]rsys_reg;
  wire [60:0]rsys_reg_0;
  wire rtc_rtcr;
  wire [13:0]rtchrmi;
  wire [12:0]rtcmody;
  wire [14:0]rtcscps;
  wire [9:0]rtcyear;
  wire simumd;

  GND GND
       (.G(\<const0> ));
  rtc_sub_ctrl rclk
       (.D({rclk_n_2,rclk_n_3,rclk_n_4}),
        .E(bcd_sec),
        .Q(rsub_wrt_req),
        .SR(rclk_n_28),
        .\bcd_day_reg[2] (rcnt_n_80),
        .\bcd_hou_reg[0] (rcnt_n_81),
        .\bcd_hou_reg[2] (rcnt_n_58),
        .\bcd_hou_reg[2]_0 (rcnt_n_57),
        .\bcd_hou_reg[4] (rcnt_n_82),
        .\bcd_hou_reg[5] ({p_1_in2_in[5:4],p_1_in2_in[2],p_1_in2_in[0],rdup_n_15,rdup_n_17,rdup_n_19}),
        .\bcd_hou_reg[5]_0 (rcnt_n_59),
        .\bcd_hou_reg[5]_1 (rcnt_n_60),
        .\bcd_min_reg[0] (rcnt_n_83),
        .\bcd_min_reg[2] (rcnt_n_36),
        .\bcd_min_reg[4] ({rcnt_n_39,rcnt_n_41}),
        .\bcd_min_reg[4]_0 (rcnt_n_52),
        .\bcd_mon_reg[2] (rcnt_n_78),
        .\bcd_mon_reg[3] (rcnt_n_72),
        .\bcd_mon_reg[4] ({rsys_reg_0[60:58],rdup_n_50}),
        .\bcd_mon_reg[4]_0 (rcnt_n_77),
        .\bcd_mon_reg[4]_1 (rcnt_n_79),
        .\bcd_sec_reg[4] ({p_1_in[4],p_1_in[0],rsys_reg[23:22]}),
        .\bcd_sec_reg[4]_0 ({rcnt_n_31,rcnt_n_35}),
        .\bcd_sec_reg[4]_1 (rcnt_n_84),
        .\bcd_yea_reg[1] (rcnt_n_86),
        .\bcd_yea_reg[2] (rcnt_n_76),
        .\bcd_yea_reg[3] (rcnt_n_73),
        .\bcd_yea_reg[4] (rcnt_n_44),
        .\bcd_yea_reg[7] (rcnt_n_74),
        .\bcd_yea_reg[7]_0 (rcnt_n_75),
        .\bcd_yea_reg[8] ({data2[8:7],data2[4:1]}),
        .\bcd_yea_reg[8]_0 ({bin_yea310_in[3],bin_yea1[0],rcnt_n_10}),
        .\bcd_yea_reg[8]_1 (rcnt_n_45),
        .clk(clk),
        .p_0_in(\rfsm/p_0_in ),
        .rcnt_psc_mil_ovf(rcnt_psc_mil_ovf),
        .\rcnt_psc_mil_reg[0] (rcnt_n_56),
        .\rcnt_psc_mil_reg[8] ({rsub_reg[22],rcnt_psc_mil}),
        .\rcnt_psc_mil_reg[8]_0 (rcnt_n_28),
        .rcnt_sec_cnte(rcnt_sec_cnte),
        .\rctl_wrt_req_s_reg[0]_0 (rctl_wrt_req),
        .\rctl_wrt_req_s_reg[1]_0 (rclk_n_26),
        .\rtchrmi_reg[13] ({rclk_n_16,rclk_n_17,rclk_n_18,rclk_n_19}),
        .\rtchrmi_reg[4] ({rclk_n_13,rclk_n_14,rclk_n_15}),
        .\rtcmody_reg[12] ({rclk_n_22,rclk_n_23,rclk_n_24}),
        .\rtcmody_reg[2] (rclk_n_12),
        .\rtcscps_reg[12] ({rclk_n_20,rclk_n_21}),
        .\rtcyear_reg[8] ({rclk_n_6,rclk_n_7,rclk_n_8,rclk_n_9,rclk_n_10,rclk_n_11}),
        .\stat_reg[0] (rclk_n_5),
        .\stat_reg[0]_0 (rsub_wrt_ack));
  rtc_sub_cntr rcnt
       (.D({rclk_n_22,rclk_n_23,rclk_n_24}),
        .E(rcnt_n_13),
        .Q({bin_yea310_in,bin_yea1,rcnt_n_9,rcnt_n_10,rcnt_n_11,rcnt_n_12}),
        .SR(rclk_n_28),
        .badr(badr),
        .\badr[1] (rcnt_n_15),
        .\badr[1]_0 (rcnt_n_17),
        .badr_0_sp_1(rcnt_n_16),
        .\bcd_day_reg[2]_0 (rcnt_n_80),
        .\bcd_day_reg[2]_1 (rclk_n_12),
        .\bcd_day_reg[5]_0 (bcd_day),
        .\bcd_hou_reg[0]_0 (rcnt_n_81),
        .\bcd_hou_reg[2]_0 (rcnt_n_58),
        .\bcd_hou_reg[3]_0 (rcnt_n_57),
        .\bcd_hou_reg[3]_1 ({p_1_in2_in[3],p_1_in2_in[1],rdup_n_13,rdup_n_14,rdup_n_16,rdup_n_18}),
        .\bcd_hou_reg[4]_0 (rcnt_n_82),
        .\bcd_hou_reg[5]_0 (rcnt_n_59),
        .\bcd_hou_reg[5]_1 (rcnt_n_60),
        .\bcd_hou_reg[5]_2 ({rcnt_n_61,rcnt_n_62,rcnt_n_63,rcnt_n_64,rcnt_n_65,rcnt_n_66}),
        .\bcd_hou_reg[5]_3 ({rclk_n_16,rclk_n_17,rclk_n_18,rclk_n_19}),
        .\bcd_min_reg[0]_0 (rcnt_n_83),
        .\bcd_min_reg[3]_0 (rcnt_n_52),
        .\bcd_min_reg[4]_0 ({rclk_n_13,rclk_n_14,rclk_n_15}),
        .\bcd_min_reg[6]_0 ({rcnt_n_37,rcnt_n_38,rcnt_n_39,rcnt_n_40,rcnt_n_41,rcnt_n_42,rcnt_n_43}),
        .\bcd_mon_reg[0]_0 (rcnt_n_79),
        .\bcd_mon_reg[1]_0 ({rsys_reg_0[57:56],rdup_n_47,rdup_n_48,rdup_n_49,rdup_n_51,rdup_n_52}),
        .\bcd_mon_reg[2]_0 (rcnt_n_78),
        .\bcd_mon_reg[4]_0 ({rcnt_n_67,rcnt_n_68,rcnt_n_69,rcnt_n_70,rcnt_n_71}),
        .\bcd_mon_reg[4]_1 (rcnt_n_72),
        .\bcd_mon_reg[4]_2 (rcnt_n_77),
        .\bcd_mon_reg[4]_3 (bcd_sec),
        .\bcd_sec_reg[1]_0 (rcnt_n_84),
        .\bcd_sec_reg[4]_0 ({rclk_n_20,rclk_n_21}),
        .\bcd_sec_reg[5]_0 (rcnt_n_36),
        .\bcd_sec_reg[6]_0 ({rcnt_n_29,rcnt_n_30,rcnt_n_31,rcnt_n_32,rcnt_n_33,rcnt_n_34,rcnt_n_35}),
        .\bcd_sec_reg[6]_1 ({p_1_in[6:5],p_1_in[3:1],rsys_reg[23],rsys_reg[21:16]}),
        .\bcd_wee_reg[2]_0 ({rcnt_n_53,rcnt_n_54,rcnt_n_55}),
        .\bcd_yea_reg[1]_0 (rcnt_n_76),
        .\bcd_yea_reg[1]_1 (rcnt_n_86),
        .\bcd_yea_reg[2]_0 (rcnt_n_44),
        .\bcd_yea_reg[2]_1 (rcnt_n_73),
        .\bcd_yea_reg[6]_0 (rcnt_n_45),
        .\bcd_yea_reg[6]_1 (rcnt_n_74),
        .\bcd_yea_reg[7]_0 (rcnt_n_75),
        .\bcd_yea_reg[8]_0 ({rclk_n_6,rclk_n_7,rclk_n_8,rclk_n_9,rclk_n_10,rclk_n_11}),
        .\bcd_yea_reg[9]_0 ({data2[9],data2[6:5],data2[0]}),
        .clk(clk),
        .clk_mhz(clk_mhz),
        .p_0_in(\rfsm/p_0_in ),
        .\rcnt_psc_bcd_reg[0]_0 (rsub_wrt_req),
        .rcnt_psc_mil_ovf(rcnt_psc_mil_ovf),
        .\rcnt_psc_mil_reg[6]_0 (rcnt_n_28),
        .\rcnt_psc_mil_reg[8]_0 ({rclk_n_2,rclk_n_3,rclk_n_4}),
        .\rcnt_psc_mil_reg[9]_0 ({rsub_reg,rcnt_psc_mil}),
        .\rcnt_psc_mil_reg[9]_1 (rclk_n_26),
        .\rcnt_psc_mil_reg[9]_2 (rclk_n_5),
        .rcnt_sec_cnte(rcnt_sec_cnte),
        .rcnt_synce(rcnt_synce),
        .rcnt_synce_r_reg_0(rcnt_n_85),
        .rctl_snap(rctl_snap),
        .rdup_leap_r(rdup_leap_r),
        .rdup_leap_r_0(rdup_leap_r_0),
        .rsys_reg_0(rsys_reg_0[2:0]),
        .\rtcyear_reg[9] (rctl_n_4),
        .simumd(simumd),
        .simumd_0(rcnt_n_56));
  rtc_sys_ctrl rctl
       (.D(rtcscps),
        .E(rctl_n_3),
        .Q({rctl_houf,rctl_minf,rctl_n_10}),
        .badr(badr),
        .badr_0_sp_1(rctl_n_5),
        .bcmdr(bcmdr),
        .bcmdw(bcmdw),
        .bcmdw_0(rctl_n_4),
        .bcs_rtcu_n(bcs_rtcu_n),
        .bdatr(\^bdatr ),
        .\bdatr[12] ({rsys_reg_0[60:56],rdup_n_47,rdup_n_48,rdup_n_49,rdup_n_50,rdup_n_51,rdup_n_52}),
        .\bdatr[12]_0 (rdup_n_35),
        .\bdatr[14] ({p_1_in[6],p_1_in[1:0],rsys_reg[23:21],rsys_reg[19:16]}),
        .\bdatr[9] (data2),
        .\bdatr[9]_0 ({p_1_in2_in[1:0],rdup_n_13,rdup_n_14,rdup_n_16,rdup_n_17,rdup_n_18,rdup_n_19}),
        .bdatr_10_sp_1(rdup_n_37),
        .bdatr_11_sp_1(rdup_n_36),
        .bdatr_13_sp_1(rdup_n_6),
        .bdatr_4_sp_1(rdup_n_38),
        .bdatw(bdatw[14:0]),
        .\bdatw[12] ({rtcmody[12:8],rtcmody[5:0]}),
        .\bdatw[13] ({rtchrmi[13:8],rtchrmi[6:0]}),
        .\bdatw[9] (rtcyear),
        .brdy(brdy),
        .clk(clk),
        .rctl_snap(rctl_snap),
        .rd_rtchrmi(rd_rtchrmi),
        .rd_rtcscps(rd_rtcscps),
        .rdup_leap_r(rdup_leap_r),
        .rdup_leap_r_0(rdup_leap_r_0),
        .\rsub_wrt_ack_s_reg[0]_0 (rsub_wrt_ack),
        .rsys_reg_0(rsys_reg_0[2:0]),
        .rtc_rtcr(rtc_rtcr),
        .\rtchrmi_reg[13] ({rcnt_n_61,rcnt_n_62,rcnt_n_63,rcnt_n_64,rcnt_n_65,rcnt_n_66}),
        .\rtchrmi_reg[6] ({rcnt_n_37,rcnt_n_38,rcnt_n_39,rcnt_n_40,rcnt_n_41,rcnt_n_42,rcnt_n_43}),
        .\rtcintc_reg[2]_0 ({rdup_n_2,rdup_n_3,rdup_n_4}),
        .\rtcintc_reg[6]_0 (rdup_n_5),
        .\rtcmody_reg[12] ({rcnt_n_67,rcnt_n_68,rcnt_n_69,rcnt_n_70,rcnt_n_71}),
        .\rtcmody_reg[5] (bcd_day),
        .\rtcscps_reg[14] ({rcnt_n_29,rcnt_n_30,rcnt_n_31,rcnt_n_32,rcnt_n_33,rcnt_n_34,rcnt_n_35}),
        .\rtcscps_reg[7] (rsub_reg),
        .\rtcyear_reg[9] ({bin_yea310_in,bin_yea1,rcnt_n_9,rcnt_n_10,rcnt_n_11,rcnt_n_12}),
        .\stat_reg[0] (rdup_n_1),
        .\stat_reg[2] (rctl_wrt_req));
  rtc_sys_dupli rdup
       (.D(rtcscps),
        .E(rcnt_n_17),
        .Q({rctl_houf,rctl_minf,rctl_n_10}),
        .SR(rdup_n_1),
        .bdatw(bdatw[2:0]),
        .\bdatw[2] ({rdup_n_2,rdup_n_3,rdup_n_4}),
        .clk(clk),
        .rcnt_synce(rcnt_synce),
        .rctl_snap(rctl_snap),
        .rd_rtchrmi(rd_rtchrmi),
        .rd_rtcscps(rd_rtcscps),
        .rdup_leap_r(rdup_leap_r),
        .rdup_leap_r_reg_0(rcnt_n_85),
        .rdup_set_houf_r_reg_0({rcnt_n_61,rcnt_n_62,rcnt_n_63,rcnt_n_64,rcnt_n_65,rcnt_n_66}),
        .rdup_set_minf_r_reg_0({rcnt_n_37,rcnt_n_38,rcnt_n_39,rcnt_n_40,rcnt_n_41,rcnt_n_42,rcnt_n_43}),
        .rdup_set_secf_r_reg_0(rdup_n_5),
        .rdup_set_secf_r_reg_1({rcnt_n_29,rcnt_n_30,rcnt_n_31,rcnt_n_32,rcnt_n_33,rcnt_n_34,rcnt_n_35}),
        .rst_n(rst_n),
        .rsys_reg_0({rsys_reg_0[60:56],rsys_reg_0[2:0]}),
        .\rtchrmi_reg[10]_0 (rdup_n_37),
        .\rtchrmi_reg[11]_0 (rdup_n_36),
        .\rtchrmi_reg[12]_0 (rdup_n_35),
        .\rtchrmi_reg[13]_0 (rdup_n_6),
        .\rtchrmi_reg[13]_1 ({p_1_in2_in,rdup_n_13,rdup_n_14,rdup_n_15,rdup_n_16,rdup_n_17,rdup_n_18,rdup_n_19}),
        .\rtchrmi_reg[13]_2 (rctl_n_3),
        .\rtchrmi_reg[13]_3 ({rtchrmi[13:8],rtchrmi[6:0]}),
        .\rtchrmi_reg[4]_0 (rdup_n_38),
        .\rtcintc_reg[0] (rctl_n_5),
        .\rtcmody_reg[12]_0 (rcnt_n_15),
        .\rtcmody_reg[12]_1 ({rtcmody[12:8],rtcmody[5:0]}),
        .\rtcmody_reg[5]_0 ({rdup_n_47,rdup_n_48,rdup_n_49,rdup_n_50,rdup_n_51,rdup_n_52}),
        .\rtcscps_reg[14]_0 ({p_1_in,rsys_reg}),
        .\rtcweek_reg[2]_0 ({rcnt_n_53,rcnt_n_54,rcnt_n_55}),
        .\rtcweek_reg[2]_1 (rcnt_n_16),
        .\rtcyear_reg[9]_0 (data2),
        .\rtcyear_reg[9]_1 (rcnt_n_13),
        .\rtcyear_reg[9]_2 (rtcyear));
endmodule

module rtc_sub_cntr
   (rcnt_synce,
    rcnt_sec_cnte,
    rcnt_psc_mil_ovf,
    Q,
    E,
    rdup_leap_r_0,
    \badr[1] ,
    .badr_0_sp_1(badr_0_sn_1),
    \badr[1]_0 ,
    \rcnt_psc_mil_reg[9]_0 ,
    \rcnt_psc_mil_reg[6]_0 ,
    \bcd_sec_reg[6]_0 ,
    \bcd_sec_reg[5]_0 ,
    \bcd_min_reg[6]_0 ,
    \bcd_yea_reg[2]_0 ,
    \bcd_yea_reg[6]_0 ,
    \bcd_day_reg[5]_0 ,
    \bcd_min_reg[3]_0 ,
    \bcd_wee_reg[2]_0 ,
    simumd_0,
    \bcd_hou_reg[3]_0 ,
    \bcd_hou_reg[2]_0 ,
    \bcd_hou_reg[5]_0 ,
    \bcd_hou_reg[5]_1 ,
    \bcd_hou_reg[5]_2 ,
    \bcd_mon_reg[4]_0 ,
    \bcd_mon_reg[4]_1 ,
    \bcd_yea_reg[2]_1 ,
    \bcd_yea_reg[6]_1 ,
    \bcd_yea_reg[7]_0 ,
    \bcd_yea_reg[1]_0 ,
    \bcd_mon_reg[4]_2 ,
    \bcd_mon_reg[2]_0 ,
    \bcd_mon_reg[0]_0 ,
    \bcd_day_reg[2]_0 ,
    \bcd_hou_reg[0]_0 ,
    \bcd_hou_reg[4]_0 ,
    \bcd_min_reg[0]_0 ,
    \bcd_sec_reg[1]_0 ,
    rcnt_synce_r_reg_0,
    \bcd_yea_reg[1]_1 ,
    clk,
    \rtcyear_reg[9] ,
    badr,
    rctl_snap,
    \rcnt_psc_bcd_reg[0]_0 ,
    p_0_in,
    simumd,
    \bcd_mon_reg[1]_0 ,
    \rcnt_psc_mil_reg[9]_1 ,
    \bcd_sec_reg[6]_1 ,
    \rcnt_psc_mil_reg[9]_2 ,
    \bcd_hou_reg[3]_1 ,
    \bcd_yea_reg[9]_0 ,
    rsys_reg_0,
    clk_mhz,
    rdup_leap_r,
    \bcd_mon_reg[4]_3 ,
    D,
    SR,
    \rcnt_psc_mil_reg[8]_0 ,
    \bcd_sec_reg[4]_0 ,
    \bcd_hou_reg[5]_3 ,
    \bcd_min_reg[4]_0 ,
    \bcd_day_reg[2]_1 ,
    \bcd_yea_reg[8]_0 );
  output rcnt_synce;
  output rcnt_sec_cnte;
  output rcnt_psc_mil_ovf;
  output [9:0]Q;
  output [0:0]E;
  output rdup_leap_r_0;
  output [0:0]\badr[1] ;
  output [0:0]\badr[1]_0 ;
  output [9:0]\rcnt_psc_mil_reg[9]_0 ;
  output \rcnt_psc_mil_reg[6]_0 ;
  output [6:0]\bcd_sec_reg[6]_0 ;
  output \bcd_sec_reg[5]_0 ;
  output [6:0]\bcd_min_reg[6]_0 ;
  output \bcd_yea_reg[2]_0 ;
  output \bcd_yea_reg[6]_0 ;
  output [5:0]\bcd_day_reg[5]_0 ;
  output \bcd_min_reg[3]_0 ;
  output [2:0]\bcd_wee_reg[2]_0 ;
  output simumd_0;
  output \bcd_hou_reg[3]_0 ;
  output \bcd_hou_reg[2]_0 ;
  output \bcd_hou_reg[5]_0 ;
  output \bcd_hou_reg[5]_1 ;
  output [5:0]\bcd_hou_reg[5]_2 ;
  output [4:0]\bcd_mon_reg[4]_0 ;
  output \bcd_mon_reg[4]_1 ;
  output \bcd_yea_reg[2]_1 ;
  output \bcd_yea_reg[6]_1 ;
  output \bcd_yea_reg[7]_0 ;
  output \bcd_yea_reg[1]_0 ;
  output \bcd_mon_reg[4]_2 ;
  output \bcd_mon_reg[2]_0 ;
  output \bcd_mon_reg[0]_0 ;
  output \bcd_day_reg[2]_0 ;
  output \bcd_hou_reg[0]_0 ;
  output \bcd_hou_reg[4]_0 ;
  output \bcd_min_reg[0]_0 ;
  output \bcd_sec_reg[1]_0 ;
  output rcnt_synce_r_reg_0;
  output \bcd_yea_reg[1]_1 ;
  input clk;
  input \rtcyear_reg[9] ;
  input [3:0]badr;
  input rctl_snap;
  input [0:0]\rcnt_psc_bcd_reg[0]_0 ;
  input [0:0]p_0_in;
  input simumd;
  input [6:0]\bcd_mon_reg[1]_0 ;
  input \rcnt_psc_mil_reg[9]_1 ;
  input [11:0]\bcd_sec_reg[6]_1 ;
  input \rcnt_psc_mil_reg[9]_2 ;
  input [5:0]\bcd_hou_reg[3]_1 ;
  input [3:0]\bcd_yea_reg[9]_0 ;
  input [2:0]rsys_reg_0;
  input [7:0]clk_mhz;
  input rdup_leap_r;
  input [0:0]\bcd_mon_reg[4]_3 ;
  input [2:0]D;
  input [0:0]SR;
  input [2:0]\rcnt_psc_mil_reg[8]_0 ;
  input [1:0]\bcd_sec_reg[4]_0 ;
  input [3:0]\bcd_hou_reg[5]_3 ;
  input [2:0]\bcd_min_reg[4]_0 ;
  input [0:0]\bcd_day_reg[2]_1 ;
  input [5:0]\bcd_yea_reg[8]_0 ;
  output badr_0_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]D;
  wire [0:0]E;
  wire [9:0]Q;
  wire [0:0]SR;
  wire [3:0]badr;
  wire [0:0]\badr[1] ;
  wire [0:0]\badr[1]_0 ;
  wire badr_0_sn_1;
  wire \bcd_day[0]_i_1_n_0 ;
  wire \bcd_day[1]_i_1_n_0 ;
  wire \bcd_day[1]_i_2_n_0 ;
  wire \bcd_day[1]_i_3_n_0 ;
  wire \bcd_day[3]_i_1_n_0 ;
  wire \bcd_day[3]_i_2_n_0 ;
  wire \bcd_day[3]_i_3_n_0 ;
  wire \bcd_day[4]_i_1_n_0 ;
  wire \bcd_day[5]_i_1_n_0 ;
  wire \bcd_day[5]_i_2_n_0 ;
  wire \bcd_day_reg[2]_0 ;
  wire [0:0]\bcd_day_reg[2]_1 ;
  wire [5:0]\bcd_day_reg[5]_0 ;
  wire \bcd_hou[1]_i_1_n_0 ;
  wire \bcd_hou[1]_i_2_n_0 ;
  wire \bcd_hou[3]_i_1_n_0 ;
  wire \bcd_hou[3]_i_3_n_0 ;
  wire \bcd_hou[3]_i_4_n_0 ;
  wire \bcd_hou[3]_i_5_n_0 ;
  wire \bcd_hou[5]_i_4_n_0 ;
  wire \bcd_hou[5]_i_5_n_0 ;
  wire \bcd_hou[5]_i_6_n_0 ;
  wire \bcd_hou_reg[0]_0 ;
  wire \bcd_hou_reg[2]_0 ;
  wire \bcd_hou_reg[3]_0 ;
  wire [5:0]\bcd_hou_reg[3]_1 ;
  wire \bcd_hou_reg[4]_0 ;
  wire \bcd_hou_reg[5]_0 ;
  wire \bcd_hou_reg[5]_1 ;
  wire [5:0]\bcd_hou_reg[5]_2 ;
  wire [3:0]\bcd_hou_reg[5]_3 ;
  wire \bcd_min[1]_i_1_n_0 ;
  wire \bcd_min[1]_i_2_n_0 ;
  wire \bcd_min[3]_i_1_n_0 ;
  wire \bcd_min[3]_i_2_n_0 ;
  wire \bcd_min[4]_i_3_n_0 ;
  wire \bcd_min[4]_i_4_n_0 ;
  wire \bcd_min[5]_i_1_n_0 ;
  wire \bcd_min[6]_i_1_n_0 ;
  wire \bcd_min[6]_i_2_n_0 ;
  wire \bcd_min[6]_i_3_n_0 ;
  wire \bcd_min_reg[0]_0 ;
  wire \bcd_min_reg[3]_0 ;
  wire [2:0]\bcd_min_reg[4]_0 ;
  wire [6:0]\bcd_min_reg[6]_0 ;
  wire \bcd_mon[0]_i_10_n_0 ;
  wire \bcd_mon[0]_i_11_n_0 ;
  wire \bcd_mon[0]_i_1_n_0 ;
  wire \bcd_mon[0]_i_2_n_0 ;
  wire \bcd_mon[0]_i_3_n_0 ;
  wire \bcd_mon[0]_i_4_n_0 ;
  wire \bcd_mon[0]_i_5_n_0 ;
  wire \bcd_mon[0]_i_6_n_0 ;
  wire \bcd_mon[0]_i_7_n_0 ;
  wire \bcd_mon[0]_i_8_n_0 ;
  wire \bcd_mon[0]_i_9_n_0 ;
  wire \bcd_mon[1]_i_1_n_0 ;
  wire \bcd_mon[1]_i_2_n_0 ;
  wire \bcd_mon[1]_i_3_n_0 ;
  wire \bcd_mon_reg[0]_0 ;
  wire [6:0]\bcd_mon_reg[1]_0 ;
  wire \bcd_mon_reg[2]_0 ;
  wire [4:0]\bcd_mon_reg[4]_0 ;
  wire \bcd_mon_reg[4]_1 ;
  wire \bcd_mon_reg[4]_2 ;
  wire [0:0]\bcd_mon_reg[4]_3 ;
  wire \bcd_sec[1]_i_1_n_0 ;
  wire \bcd_sec[2]_i_1_n_0 ;
  wire \bcd_sec[3]_i_1_n_0 ;
  wire \bcd_sec[3]_i_2_n_0 ;
  wire \bcd_sec[3]_i_3_n_0 ;
  wire \bcd_sec[5]_i_1_n_0 ;
  wire \bcd_sec[6]_i_1_n_0 ;
  wire \bcd_sec[6]_i_2_n_0 ;
  wire \bcd_sec_reg[1]_0 ;
  wire [1:0]\bcd_sec_reg[4]_0 ;
  wire \bcd_sec_reg[5]_0 ;
  wire [6:0]\bcd_sec_reg[6]_0 ;
  wire [11:0]\bcd_sec_reg[6]_1 ;
  wire \bcd_wee[0]_i_1_n_0 ;
  wire \bcd_wee[1]_i_1_n_0 ;
  wire \bcd_wee[2]_i_1_n_0 ;
  wire \bcd_wee[2]_i_3_n_0 ;
  wire [2:0]\bcd_wee_reg[2]_0 ;
  wire \bcd_yea[0]_i_1_n_0 ;
  wire \bcd_yea[0]_i_2_n_0 ;
  wire \bcd_yea[5]_i_1_n_0 ;
  wire \bcd_yea[6]_i_1_n_0 ;
  wire \bcd_yea[9]_i_1_n_0 ;
  wire \bcd_yea_reg[1]_0 ;
  wire \bcd_yea_reg[1]_1 ;
  wire \bcd_yea_reg[2]_0 ;
  wire \bcd_yea_reg[2]_1 ;
  wire \bcd_yea_reg[6]_0 ;
  wire \bcd_yea_reg[6]_1 ;
  wire \bcd_yea_reg[7]_0 ;
  wire [5:0]\bcd_yea_reg[8]_0 ;
  wire [3:0]\bcd_yea_reg[9]_0 ;
  wire [8:7]bin_yea10_in;
  wire bin_yea__0_carry__0_i_2_n_0;
  wire bin_yea__0_carry__0_i_3_n_0;
  wire bin_yea__0_carry__0_i_4_n_0;
  wire bin_yea__0_carry__0_i_5_n_0;
  wire bin_yea__0_carry__0_i_6_n_0;
  wire bin_yea__0_carry__0_i_7_n_0;
  wire bin_yea__0_carry__0_i_8_n_0;
  wire bin_yea__0_carry__0_n_0;
  wire bin_yea__0_carry__0_n_1;
  wire bin_yea__0_carry__0_n_2;
  wire bin_yea__0_carry__0_n_3;
  wire bin_yea__0_carry__0_n_4;
  wire bin_yea__0_carry__0_n_5;
  wire bin_yea__0_carry__0_n_6;
  wire bin_yea__0_carry__0_n_7;
  wire bin_yea__0_carry__1_n_7;
  wire bin_yea__0_carry_i_1_n_0;
  wire bin_yea__0_carry_i_2_n_0;
  wire bin_yea__0_carry_i_3_n_0;
  wire bin_yea__0_carry_n_0;
  wire bin_yea__0_carry_n_1;
  wire bin_yea__0_carry_n_2;
  wire bin_yea__0_carry_n_3;
  wire bin_yea__0_carry_n_4;
  wire bin_yea__0_carry_n_5;
  wire bin_yea__0_carry_n_6;
  wire bin_yea__0_carry_n_7;
  wire clk;
  wire [7:0]clk_mhz;
  wire [7:0]data0;
  wire [0:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire [7:0]rcnt_psc_bcd;
  wire \rcnt_psc_bcd[7]_i_1_n_0 ;
  wire \rcnt_psc_bcd[7]_i_3_n_0 ;
  wire \rcnt_psc_bcd[7]_i_4_n_0 ;
  wire rcnt_psc_bcd_ovf0;
  wire rcnt_psc_bcd_ovf0_carry_i_1_n_0;
  wire rcnt_psc_bcd_ovf0_carry_i_2_n_0;
  wire rcnt_psc_bcd_ovf0_carry_i_3_n_0;
  wire rcnt_psc_bcd_ovf0_carry_i_4_n_0;
  wire rcnt_psc_bcd_ovf0_carry_i_5_n_0;
  wire rcnt_psc_bcd_ovf0_carry_i_6_n_0;
  wire rcnt_psc_bcd_ovf0_carry_i_7_n_0;
  wire rcnt_psc_bcd_ovf0_carry_i_8_n_0;
  wire rcnt_psc_bcd_ovf0_carry_i_9_n_0;
  wire rcnt_psc_bcd_ovf0_carry_n_1;
  wire rcnt_psc_bcd_ovf0_carry_n_2;
  wire rcnt_psc_bcd_ovf0_carry_n_3;
  wire [0:0]\rcnt_psc_bcd_reg[0]_0 ;
  wire \rcnt_psc_mcr[9]_i_1_n_0 ;
  wire \rcnt_psc_mcr[9]_i_3_n_0 ;
  wire [9:0]rcnt_psc_mcr_reg;
  wire \rcnt_psc_mil[2]_i_1_n_0 ;
  wire \rcnt_psc_mil[3]_i_1_n_0 ;
  wire \rcnt_psc_mil[4]_i_1_n_0 ;
  wire \rcnt_psc_mil[4]_i_2_n_0 ;
  wire \rcnt_psc_mil[5]_i_1_n_0 ;
  wire \rcnt_psc_mil[5]_i_2_n_0 ;
  wire \rcnt_psc_mil[6]_i_1_n_0 ;
  wire \rcnt_psc_mil[7]_i_1_n_0 ;
  wire \rcnt_psc_mil[7]_i_2_n_0 ;
  wire \rcnt_psc_mil[9]_i_2_n_0 ;
  wire \rcnt_psc_mil[9]_i_6_n_0 ;
  wire \rcnt_psc_mil[9]_i_7_n_0 ;
  wire rcnt_psc_mil_ovf;
  wire \rcnt_psc_mil_reg[6]_0 ;
  wire [2:0]\rcnt_psc_mil_reg[8]_0 ;
  wire [9:0]\rcnt_psc_mil_reg[9]_0 ;
  wire \rcnt_psc_mil_reg[9]_1 ;
  wire \rcnt_psc_mil_reg[9]_2 ;
  wire rcnt_sec_cnte;
  wire rcnt_synce;
  wire rcnt_synce_r0;
  wire rcnt_synce_r_i_2_n_0;
  wire rcnt_synce_r_i_3_n_0;
  wire rcnt_synce_r_reg_0;
  wire rctl_snap;
  wire rdup_leap_r;
  wire rdup_leap_r_0;
  wire rdup_leap_r_i_3_n_0;
  wire rdup_leap_r_i_4_n_0;
  wire rsub_leap;
  wire [2:0]rsys_reg_0;
  wire \rtcyear_reg[9] ;
  wire simumd;
  wire simumd_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h08FBFB08FBFBFBFB)) 
    \bcd_day[0]_i_1 
       (.I0(\bcd_mon_reg[1]_0 [0]),
        .I1(\rcnt_psc_bcd_reg[0]_0 ),
        .I2(p_0_in),
        .I3(\bcd_wee[2]_i_3_n_0 ),
        .I4(\bcd_day_reg[5]_0 [0]),
        .I5(\bcd_mon[0]_i_2_n_0 ),
        .O(\bcd_day[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h080808080808FB08)) 
    \bcd_day[1]_i_1 
       (.I0(\bcd_mon_reg[1]_0 [1]),
        .I1(\rcnt_psc_bcd_reg[0]_0 ),
        .I2(p_0_in),
        .I3(\bcd_mon[0]_i_2_n_0 ),
        .I4(\bcd_day[3]_i_3_n_0 ),
        .I5(\bcd_day[1]_i_2_n_0 ),
        .O(\bcd_day[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555955555555)) 
    \bcd_day[1]_i_2 
       (.I0(\bcd_day_reg[5]_0 [1]),
        .I1(\bcd_hou_reg[2]_0 ),
        .I2(\bcd_hou[3]_i_3_n_0 ),
        .I3(\bcd_hou_reg[5]_0 ),
        .I4(\bcd_day[1]_i_3_n_0 ),
        .I5(\bcd_day_reg[5]_0 [0]),
        .O(\bcd_day[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bcd_day[1]_i_3 
       (.I0(\bcd_hou[1]_i_2_n_0 ),
        .I1(\bcd_hou_reg[0]_0 ),
        .I2(\bcd_hou_reg[5]_2 [4]),
        .O(\bcd_day[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bcd_day[2]_i_2 
       (.I0(\bcd_day_reg[5]_0 [2]),
        .I1(\bcd_day_reg[5]_0 [0]),
        .I2(\bcd_wee[2]_i_3_n_0 ),
        .I3(\bcd_day_reg[5]_0 [1]),
        .O(\bcd_day_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h08080808FB080808)) 
    \bcd_day[3]_i_1 
       (.I0(\bcd_mon_reg[1]_0 [2]),
        .I1(\rcnt_psc_bcd_reg[0]_0 ),
        .I2(p_0_in),
        .I3(\bcd_mon[0]_i_2_n_0 ),
        .I4(\bcd_day[3]_i_2_n_0 ),
        .I5(\bcd_day[3]_i_3_n_0 ),
        .O(\bcd_day[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \bcd_day[3]_i_2 
       (.I0(\bcd_day_reg[5]_0 [3]),
        .I1(\bcd_day_reg[5]_0 [1]),
        .I2(\bcd_wee[2]_i_3_n_0 ),
        .I3(\bcd_day_reg[5]_0 [0]),
        .I4(\bcd_day_reg[5]_0 [2]),
        .O(\bcd_day[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \bcd_day[3]_i_3 
       (.I0(\bcd_day[5]_i_2_n_0 ),
        .I1(\bcd_day_reg[5]_0 [5]),
        .I2(\bcd_day_reg[5]_0 [4]),
        .O(\bcd_day[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08FBFB0808080808)) 
    \bcd_day[4]_i_1 
       (.I0(\bcd_mon_reg[1]_0 [3]),
        .I1(\rcnt_psc_bcd_reg[0]_0 ),
        .I2(p_0_in),
        .I3(\bcd_day[5]_i_2_n_0 ),
        .I4(\bcd_day_reg[5]_0 [4]),
        .I5(\bcd_mon[0]_i_2_n_0 ),
        .O(\bcd_day[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8B8B8B8888888)) 
    \bcd_day[5]_i_1 
       (.I0(\bcd_mon_reg[1]_0 [4]),
        .I1(\rcnt_psc_mil_reg[9]_1 ),
        .I2(\bcd_mon[0]_i_2_n_0 ),
        .I3(\bcd_day_reg[5]_0 [4]),
        .I4(\bcd_day[5]_i_2_n_0 ),
        .I5(\bcd_day_reg[5]_0 [5]),
        .O(\bcd_day[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002008)) 
    \bcd_day[5]_i_2 
       (.I0(\bcd_day_reg[5]_0 [3]),
        .I1(\bcd_day_reg[5]_0 [1]),
        .I2(\bcd_wee[2]_i_3_n_0 ),
        .I3(\bcd_day_reg[5]_0 [0]),
        .I4(\bcd_day_reg[5]_0 [2]),
        .O(\bcd_day[5]_i_2_n_0 ));
  FDRE \bcd_day_reg[0] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_day[0]_i_1_n_0 ),
        .Q(\bcd_day_reg[5]_0 [0]),
        .R(\<const0> ));
  FDRE \bcd_day_reg[1] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_day[1]_i_1_n_0 ),
        .Q(\bcd_day_reg[5]_0 [1]),
        .R(\<const0> ));
  FDRE \bcd_day_reg[2] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_day_reg[2]_1 ),
        .Q(\bcd_day_reg[5]_0 [2]),
        .R(\<const0> ));
  FDRE \bcd_day_reg[3] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_day[3]_i_1_n_0 ),
        .Q(\bcd_day_reg[5]_0 [3]),
        .R(\<const0> ));
  FDRE \bcd_day_reg[4] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_day[4]_i_1_n_0 ),
        .Q(\bcd_day_reg[5]_0 [4]),
        .R(\<const0> ));
  FDRE \bcd_day_reg[5] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_day[5]_i_1_n_0 ),
        .Q(\bcd_day_reg[5]_0 [5]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hA9AA6AAA)) 
    \bcd_hou[0]_i_2 
       (.I0(\bcd_hou_reg[5]_2 [0]),
        .I1(\bcd_min_reg[3]_0 ),
        .I2(\bcd_min_reg[6]_0 [4]),
        .I3(\bcd_min_reg[6]_0 [6]),
        .I4(\bcd_min_reg[6]_0 [5]),
        .O(\bcd_hou_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h11F100F011010000)) 
    \bcd_hou[1]_i_1 
       (.I0(\bcd_hou_reg[5]_1 ),
        .I1(\bcd_hou_reg[3]_0 ),
        .I2(\rcnt_psc_bcd_reg[0]_0 ),
        .I3(p_0_in),
        .I4(\bcd_hou[1]_i_2_n_0 ),
        .I5(\bcd_hou_reg[3]_1 [4]),
        .O(\bcd_hou[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAA6AAAAAAAAA)) 
    \bcd_hou[1]_i_2 
       (.I0(\bcd_hou_reg[5]_2 [1]),
        .I1(\bcd_min_reg[6]_0 [5]),
        .I2(\bcd_min_reg[6]_0 [6]),
        .I3(\bcd_min_reg[6]_0 [4]),
        .I4(\bcd_min_reg[3]_0 ),
        .I5(\bcd_hou_reg[5]_2 [0]),
        .O(\bcd_hou[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bcd_hou[2]_i_2 
       (.I0(\bcd_hou_reg[5]_2 [2]),
        .I1(\bcd_hou[3]_i_5_n_0 ),
        .O(\bcd_hou_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h11F100F011010000)) 
    \bcd_hou[3]_i_1 
       (.I0(\bcd_hou_reg[5]_1 ),
        .I1(\bcd_hou_reg[3]_0 ),
        .I2(\rcnt_psc_bcd_reg[0]_0 ),
        .I3(p_0_in),
        .I4(\bcd_hou[3]_i_3_n_0 ),
        .I5(\bcd_hou_reg[3]_1 [5]),
        .O(\bcd_hou[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0006)) 
    \bcd_hou[3]_i_2 
       (.I0(\bcd_hou[3]_i_3_n_0 ),
        .I1(\bcd_hou_reg[2]_0 ),
        .I2(\bcd_hou[3]_i_4_n_0 ),
        .I3(\bcd_hou_reg[5]_0 ),
        .O(\bcd_hou_reg[3]_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \bcd_hou[3]_i_3 
       (.I0(\bcd_hou_reg[5]_2 [3]),
        .I1(\bcd_hou_reg[5]_2 [2]),
        .I2(\bcd_hou[3]_i_5_n_0 ),
        .O(\bcd_hou[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFF6F6FFFFCF)) 
    \bcd_hou[3]_i_4 
       (.I0(\bcd_hou_reg[5]_2 [3]),
        .I1(\bcd_hou_reg[5]_2 [4]),
        .I2(\bcd_hou_reg[5]_2 [2]),
        .I3(\bcd_hou_reg[5]_2 [0]),
        .I4(\bcd_hou[5]_i_6_n_0 ),
        .I5(\bcd_hou_reg[5]_2 [1]),
        .O(\bcd_hou[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2000008000000000)) 
    \bcd_hou[3]_i_5 
       (.I0(\bcd_hou_reg[5]_2 [1]),
        .I1(\bcd_min_reg[6]_0 [5]),
        .I2(\bcd_min_reg[6]_0 [6]),
        .I3(\bcd_min_reg[6]_0 [4]),
        .I4(\bcd_min_reg[3]_0 ),
        .I5(\bcd_hou_reg[5]_2 [0]),
        .O(\bcd_hou[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA9AAAAAA)) 
    \bcd_hou[4]_i_2 
       (.I0(\bcd_hou_reg[5]_2 [4]),
        .I1(\bcd_hou_reg[0]_0 ),
        .I2(\bcd_hou_reg[5]_2 [2]),
        .I3(\bcd_hou_reg[5]_2 [3]),
        .I4(\bcd_hou[1]_i_2_n_0 ),
        .O(\bcd_hou_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h5559555555555555)) 
    \bcd_hou[5]_i_2 
       (.I0(\bcd_hou_reg[5]_2 [5]),
        .I1(\bcd_hou_reg[5]_2 [4]),
        .I2(\bcd_hou_reg[0]_0 ),
        .I3(\bcd_hou_reg[5]_2 [2]),
        .I4(\bcd_hou_reg[5]_2 [3]),
        .I5(\bcd_hou[1]_i_2_n_0 ),
        .O(\bcd_hou_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0004000202000004)) 
    \bcd_hou[5]_i_3 
       (.I0(\bcd_hou_reg[2]_0 ),
        .I1(\bcd_hou[3]_i_3_n_0 ),
        .I2(\bcd_hou[5]_i_4_n_0 ),
        .I3(\bcd_hou_reg[5]_2 [5]),
        .I4(\bcd_hou[5]_i_5_n_0 ),
        .I5(\bcd_hou_reg[5]_2 [4]),
        .O(\bcd_hou_reg[5]_1 ));
  LUT4 #(
    .INIT(16'hFE3D)) 
    \bcd_hou[5]_i_4 
       (.I0(\bcd_hou_reg[5]_2 [1]),
        .I1(\bcd_hou[5]_i_6_n_0 ),
        .I2(\bcd_hou_reg[5]_2 [0]),
        .I3(\bcd_hou_reg[5]_2 [2]),
        .O(\bcd_hou[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \bcd_hou[5]_i_5 
       (.I0(\bcd_hou_reg[0]_0 ),
        .I1(\bcd_hou_reg[5]_2 [2]),
        .I2(\bcd_hou_reg[5]_2 [3]),
        .I3(\bcd_hou[1]_i_2_n_0 ),
        .O(\bcd_hou[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4008)) 
    \bcd_hou[5]_i_6 
       (.I0(\bcd_min_reg[6]_0 [5]),
        .I1(\bcd_min_reg[6]_0 [6]),
        .I2(\bcd_min_reg[6]_0 [4]),
        .I3(\bcd_min_reg[3]_0 ),
        .O(\bcd_hou[5]_i_6_n_0 ));
  FDRE \bcd_hou_reg[0] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_hou_reg[5]_3 [0]),
        .Q(\bcd_hou_reg[5]_2 [0]),
        .R(\<const0> ));
  FDRE \bcd_hou_reg[1] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_hou[1]_i_1_n_0 ),
        .Q(\bcd_hou_reg[5]_2 [1]),
        .R(\<const0> ));
  FDRE \bcd_hou_reg[2] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_hou_reg[5]_3 [1]),
        .Q(\bcd_hou_reg[5]_2 [2]),
        .R(\<const0> ));
  FDRE \bcd_hou_reg[3] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_hou[3]_i_1_n_0 ),
        .Q(\bcd_hou_reg[5]_2 [3]),
        .R(\<const0> ));
  FDRE \bcd_hou_reg[4] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_hou_reg[5]_3 [2]),
        .Q(\bcd_hou_reg[5]_2 [4]),
        .R(\<const0> ));
  FDRE \bcd_hou_reg[5] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_hou_reg[5]_3 [3]),
        .Q(\bcd_hou_reg[5]_2 [5]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hA9AA6AAA)) 
    \bcd_min[0]_i_2 
       (.I0(\bcd_min_reg[6]_0 [0]),
        .I1(\bcd_sec_reg[1]_0 ),
        .I2(\bcd_sec_reg[6]_0 [4]),
        .I3(\bcd_sec_reg[6]_0 [6]),
        .I4(\bcd_sec_reg[6]_0 [5]),
        .O(\bcd_min_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8B8888888B8B8B8B)) 
    \bcd_min[1]_i_1 
       (.I0(\bcd_hou_reg[3]_1 [0]),
        .I1(\rcnt_psc_mil_reg[9]_1 ),
        .I2(\bcd_min[1]_i_2_n_0 ),
        .I3(\bcd_min_reg[6]_0 [6]),
        .I4(\bcd_min_reg[6]_0 [5]),
        .I5(\bcd_min_reg[3]_0 ),
        .O(\bcd_min[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6555559555555555)) 
    \bcd_min[1]_i_2 
       (.I0(\bcd_min_reg[6]_0 [1]),
        .I1(\bcd_sec_reg[6]_0 [5]),
        .I2(\bcd_sec_reg[6]_0 [6]),
        .I3(\bcd_sec_reg[6]_0 [4]),
        .I4(\bcd_sec_reg[1]_0 ),
        .I5(\bcd_min_reg[6]_0 [0]),
        .O(\bcd_min[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA3A0A3A3A0A3A0A0)) 
    \bcd_min[3]_i_1 
       (.I0(\bcd_hou_reg[3]_1 [1]),
        .I1(\bcd_min[3]_i_2_n_0 ),
        .I2(\rcnt_psc_mil_reg[9]_1 ),
        .I3(\bcd_sec_reg[5]_0 ),
        .I4(\bcd_min_reg[6]_0 [2]),
        .I5(\bcd_min_reg[6]_0 [3]),
        .O(\bcd_min[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \bcd_min[3]_i_2 
       (.I0(\bcd_min_reg[3]_0 ),
        .I1(\bcd_min_reg[6]_0 [5]),
        .I2(\bcd_min_reg[6]_0 [6]),
        .O(\bcd_min[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFF7FFFFFFFFFFFF)) 
    \bcd_min[3]_i_3 
       (.I0(\bcd_sec_reg[6]_0 [5]),
        .I1(\bcd_sec_reg[6]_0 [6]),
        .I2(\bcd_sec_reg[6]_0 [4]),
        .I3(\bcd_sec_reg[1]_0 ),
        .I4(\bcd_min_reg[6]_0 [0]),
        .I5(\bcd_min_reg[6]_0 [1]),
        .O(\bcd_sec_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0000000000208808)) 
    \bcd_min[4]_i_2 
       (.I0(\bcd_min_reg[6]_0 [3]),
        .I1(\bcd_min_reg[6]_0 [1]),
        .I2(\bcd_min[4]_i_3_n_0 ),
        .I3(\bcd_min[4]_i_4_n_0 ),
        .I4(\bcd_min_reg[6]_0 [0]),
        .I5(\bcd_min_reg[6]_0 [2]),
        .O(\bcd_min_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAAAA9AAAAAAAAAAA)) 
    \bcd_min[4]_i_3 
       (.I0(\bcd_sec_reg[6]_0 [5]),
        .I1(\bcd_sec_reg[6]_0 [1]),
        .I2(\bcd_sec_reg[6]_0 [0]),
        .I3(\bcd_sec_reg[6]_0 [3]),
        .I4(\bcd_sec_reg[6]_0 [2]),
        .I5(\bcd_sec_reg[6]_0 [4]),
        .O(\bcd_min[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF0040FFFFFFFF)) 
    \bcd_min[4]_i_4 
       (.I0(\bcd_sec_reg[6]_0 [1]),
        .I1(\bcd_sec_reg[6]_0 [0]),
        .I2(\bcd_sec_reg[6]_0 [3]),
        .I3(\bcd_sec_reg[6]_0 [2]),
        .I4(\bcd_sec_reg[6]_0 [4]),
        .I5(\bcd_sec_reg[6]_0 [6]),
        .O(\bcd_min[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h080808FBFB08FB08)) 
    \bcd_min[5]_i_1 
       (.I0(\bcd_hou_reg[3]_1 [2]),
        .I1(\rcnt_psc_bcd_reg[0]_0 ),
        .I2(p_0_in),
        .I3(\bcd_min_reg[6]_0 [5]),
        .I4(\bcd_min_reg[6]_0 [6]),
        .I5(\bcd_min[6]_i_2_n_0 ),
        .O(\bcd_min[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0808FBFBFB080808)) 
    \bcd_min[6]_i_1 
       (.I0(\bcd_hou_reg[3]_1 [3]),
        .I1(\rcnt_psc_bcd_reg[0]_0 ),
        .I2(p_0_in),
        .I3(\bcd_min_reg[6]_0 [5]),
        .I4(\bcd_min[6]_i_2_n_0 ),
        .I5(\bcd_min_reg[6]_0 [6]),
        .O(\bcd_min[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002200000000000)) 
    \bcd_min[6]_i_2 
       (.I0(\bcd_min_reg[6]_0 [4]),
        .I1(\bcd_min_reg[6]_0 [2]),
        .I2(\bcd_min_reg[6]_0 [0]),
        .I3(\bcd_min[6]_i_3_n_0 ),
        .I4(\bcd_min_reg[6]_0 [1]),
        .I5(\bcd_min_reg[6]_0 [3]),
        .O(\bcd_min[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4008)) 
    \bcd_min[6]_i_3 
       (.I0(\bcd_sec_reg[6]_0 [5]),
        .I1(\bcd_sec_reg[6]_0 [6]),
        .I2(\bcd_sec_reg[6]_0 [4]),
        .I3(\bcd_sec_reg[1]_0 ),
        .O(\bcd_min[6]_i_3_n_0 ));
  FDRE \bcd_min_reg[0] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_min_reg[4]_0 [0]),
        .Q(\bcd_min_reg[6]_0 [0]),
        .R(\<const0> ));
  FDRE \bcd_min_reg[1] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_min[1]_i_1_n_0 ),
        .Q(\bcd_min_reg[6]_0 [1]),
        .R(\<const0> ));
  FDRE \bcd_min_reg[2] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_min_reg[4]_0 [1]),
        .Q(\bcd_min_reg[6]_0 [2]),
        .R(\<const0> ));
  FDRE \bcd_min_reg[3] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_min[3]_i_1_n_0 ),
        .Q(\bcd_min_reg[6]_0 [3]),
        .R(\<const0> ));
  FDRE \bcd_min_reg[4] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_min_reg[4]_0 [2]),
        .Q(\bcd_min_reg[6]_0 [4]),
        .R(\<const0> ));
  FDRE \bcd_min_reg[5] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_min[5]_i_1_n_0 ),
        .Q(\bcd_min_reg[6]_0 [5]),
        .R(\<const0> ));
  FDRE \bcd_min_reg[6] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_min[6]_i_1_n_0 ),
        .Q(\bcd_min_reg[6]_0 [6]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h9999F099)) 
    \bcd_mon[0]_i_1 
       (.I0(\bcd_mon_reg[4]_0 [0]),
        .I1(\bcd_mon[0]_i_2_n_0 ),
        .I2(\bcd_mon_reg[1]_0 [5]),
        .I3(\rcnt_psc_bcd_reg[0]_0 ),
        .I4(p_0_in),
        .O(\bcd_mon[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \bcd_mon[0]_i_10 
       (.I0(\bcd_mon_reg[4]_0 [4]),
        .I1(\bcd_mon_reg[4]_0 [3]),
        .I2(\bcd_mon_reg[4]_0 [1]),
        .I3(\bcd_mon_reg[4]_0 [0]),
        .O(\bcd_mon[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00040430)) 
    \bcd_mon[0]_i_11 
       (.I0(\bcd_mon_reg[4]_0 [1]),
        .I1(\bcd_mon_reg[4]_0 [0]),
        .I2(\bcd_mon_reg[4]_0 [2]),
        .I3(\bcd_mon_reg[4]_0 [4]),
        .I4(\bcd_mon_reg[4]_0 [3]),
        .O(\bcd_mon[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFBFEFFFEFF)) 
    \bcd_mon[0]_i_2 
       (.I0(\bcd_mon[0]_i_3_n_0 ),
        .I1(\bcd_day[3]_i_2_n_0 ),
        .I2(\bcd_mon[0]_i_4_n_0 ),
        .I3(\bcd_mon[0]_i_5_n_0 ),
        .I4(rsub_leap),
        .I5(\bcd_mon[0]_i_6_n_0 ),
        .O(\bcd_mon[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFEFEBF)) 
    \bcd_mon[0]_i_3 
       (.I0(\bcd_day_reg[5]_0 [2]),
        .I1(\bcd_day_reg[5]_0 [1]),
        .I2(\bcd_mon[0]_i_7_n_0 ),
        .I3(\bcd_day_reg[5]_0 [0]),
        .I4(\bcd_wee[2]_i_3_n_0 ),
        .O(\bcd_mon[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5655555955555555)) 
    \bcd_mon[0]_i_4 
       (.I0(\bcd_day_reg[5]_0 [5]),
        .I1(\bcd_day_reg[5]_0 [3]),
        .I2(\bcd_mon[0]_i_8_n_0 ),
        .I3(\bcd_day_reg[5]_0 [2]),
        .I4(\bcd_mon[0]_i_9_n_0 ),
        .I5(\bcd_day_reg[5]_0 [4]),
        .O(\bcd_mon[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAA99AAAAAAAAAAA)) 
    \bcd_mon[0]_i_5 
       (.I0(\bcd_day_reg[5]_0 [4]),
        .I1(\bcd_day_reg[5]_0 [2]),
        .I2(\bcd_day_reg[5]_0 [0]),
        .I3(\bcd_wee[2]_i_3_n_0 ),
        .I4(\bcd_day_reg[5]_0 [1]),
        .I5(\bcd_day_reg[5]_0 [3]),
        .O(\bcd_mon[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \bcd_mon[0]_i_6 
       (.I0(\bcd_mon_reg[4]_0 [2]),
        .I1(\bcd_mon_reg[4]_0 [0]),
        .I2(\bcd_mon_reg[4]_0 [1]),
        .I3(\bcd_mon_reg[4]_0 [3]),
        .I4(\bcd_mon_reg[4]_0 [4]),
        .O(\bcd_mon[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF02)) 
    \bcd_mon[0]_i_7 
       (.I0(rdup_leap_r_i_3_n_0),
        .I1(bin_yea__0_carry_n_7),
        .I2(bin_yea__0_carry_n_6),
        .I3(\bcd_mon[0]_i_10_n_0 ),
        .I4(\bcd_mon[0]_i_11_n_0 ),
        .O(\bcd_mon[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB5555555D)) 
    \bcd_mon[0]_i_8 
       (.I0(\bcd_day_reg[5]_0 [1]),
        .I1(\bcd_hou_reg[2]_0 ),
        .I2(\bcd_hou[3]_i_3_n_0 ),
        .I3(\bcd_hou_reg[5]_0 ),
        .I4(\bcd_day[1]_i_3_n_0 ),
        .I5(\bcd_day_reg[5]_0 [0]),
        .O(\bcd_mon[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \bcd_mon[0]_i_9 
       (.I0(\bcd_day_reg[5]_0 [1]),
        .I1(\bcd_hou_reg[2]_0 ),
        .I2(\bcd_hou[3]_i_3_n_0 ),
        .I3(\bcd_hou_reg[5]_0 ),
        .I4(\bcd_day[1]_i_3_n_0 ),
        .I5(\bcd_day_reg[5]_0 [0]),
        .O(\bcd_mon[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0A003A33)) 
    \bcd_mon[1]_i_1 
       (.I0(\bcd_mon_reg[1]_0 [6]),
        .I1(\bcd_mon[1]_i_2_n_0 ),
        .I2(p_0_in),
        .I3(\rcnt_psc_bcd_reg[0]_0 ),
        .I4(\bcd_mon[1]_i_3_n_0 ),
        .O(\bcd_mon[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0210012020022002)) 
    \bcd_mon[1]_i_2 
       (.I0(\bcd_mon_reg[4]_0 [4]),
        .I1(\bcd_mon_reg[4]_0 [2]),
        .I2(\bcd_mon[0]_i_2_n_0 ),
        .I3(\bcd_mon_reg[4]_0 [0]),
        .I4(\bcd_mon_reg[4]_0 [1]),
        .I5(\bcd_mon_reg[4]_0 [3]),
        .O(\bcd_mon[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h59)) 
    \bcd_mon[1]_i_3 
       (.I0(\bcd_mon_reg[4]_0 [1]),
        .I1(\bcd_mon_reg[4]_0 [0]),
        .I2(\bcd_mon[0]_i_2_n_0 ),
        .O(\bcd_mon[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9AAA)) 
    \bcd_mon[2]_i_2 
       (.I0(\bcd_mon_reg[4]_0 [2]),
        .I1(\bcd_mon[0]_i_2_n_0 ),
        .I2(\bcd_mon_reg[4]_0 [0]),
        .I3(\bcd_mon_reg[4]_0 [1]),
        .O(\bcd_mon_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hF3EFFEFF0C000000)) 
    \bcd_mon[3]_i_2 
       (.I0(\bcd_mon_reg[4]_0 [4]),
        .I1(\bcd_mon_reg[4]_0 [2]),
        .I2(\bcd_mon[0]_i_2_n_0 ),
        .I3(\bcd_mon_reg[4]_0 [0]),
        .I4(\bcd_mon_reg[4]_0 [1]),
        .I5(\bcd_mon_reg[4]_0 [3]),
        .O(\bcd_mon_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hAAAAA69AAAAAAAAA)) 
    \bcd_mon[4]_i_3 
       (.I0(\bcd_mon_reg[4]_0 [4]),
        .I1(\bcd_mon_reg[4]_0 [1]),
        .I2(\bcd_mon_reg[4]_0 [0]),
        .I3(\bcd_mon[0]_i_2_n_0 ),
        .I4(\bcd_mon_reg[4]_0 [2]),
        .I5(\bcd_mon_reg[4]_0 [3]),
        .O(\bcd_mon_reg[4]_2 ));
  LUT5 #(
    .INIT(32'h00090000)) 
    \bcd_mon[4]_i_4 
       (.I0(\bcd_mon[0]_i_2_n_0 ),
        .I1(\bcd_mon_reg[4]_0 [0]),
        .I2(\bcd_mon_reg[4]_0 [3]),
        .I3(\bcd_mon_reg[4]_0 [2]),
        .I4(\bcd_mon_reg[4]_0 [1]),
        .O(\bcd_mon_reg[0]_0 ));
  FDRE \bcd_mon_reg[0] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_mon[0]_i_1_n_0 ),
        .Q(\bcd_mon_reg[4]_0 [0]),
        .R(\<const0> ));
  FDRE \bcd_mon_reg[1] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_mon[1]_i_1_n_0 ),
        .Q(\bcd_mon_reg[4]_0 [1]),
        .R(\<const0> ));
  FDRE \bcd_mon_reg[2] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(D[0]),
        .Q(\bcd_mon_reg[4]_0 [2]),
        .R(\<const0> ));
  FDRE \bcd_mon_reg[3] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(D[1]),
        .Q(\bcd_mon_reg[4]_0 [3]),
        .R(\<const0> ));
  FDRE \bcd_mon_reg[4] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(D[2]),
        .Q(\bcd_mon_reg[4]_0 [4]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h20FFFF2020202020)) 
    \bcd_sec[1]_i_1 
       (.I0(\rcnt_psc_bcd_reg[0]_0 ),
        .I1(p_0_in),
        .I2(\bcd_sec_reg[6]_1 [7]),
        .I3(\bcd_sec_reg[6]_0 [1]),
        .I4(\bcd_sec_reg[6]_0 [0]),
        .I5(\bcd_sec[3]_i_3_n_0 ),
        .O(\bcd_sec[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08FBFB08FB08FB08)) 
    \bcd_sec[2]_i_1 
       (.I0(\bcd_sec_reg[6]_1 [8]),
        .I1(\rcnt_psc_bcd_reg[0]_0 ),
        .I2(p_0_in),
        .I3(\bcd_sec_reg[6]_0 [2]),
        .I4(\bcd_sec_reg[6]_0 [0]),
        .I5(\bcd_sec_reg[6]_0 [1]),
        .O(\bcd_sec[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FF8F8F888888888)) 
    \bcd_sec[3]_i_1 
       (.I0(\rcnt_psc_mil_reg[9]_1 ),
        .I1(\bcd_sec_reg[6]_1 [9]),
        .I2(\bcd_sec_reg[6]_0 [3]),
        .I3(\bcd_sec[3]_i_2_n_0 ),
        .I4(\bcd_sec_reg[6]_0 [2]),
        .I5(\bcd_sec[3]_i_3_n_0 ),
        .O(\bcd_sec[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bcd_sec[3]_i_2 
       (.I0(\bcd_sec_reg[6]_0 [1]),
        .I1(\bcd_sec_reg[6]_0 [0]),
        .O(\bcd_sec[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB000BBBB)) 
    \bcd_sec[3]_i_3 
       (.I0(p_0_in),
        .I1(\rcnt_psc_bcd_reg[0]_0 ),
        .I2(\bcd_sec_reg[6]_0 [6]),
        .I3(\bcd_sec_reg[6]_0 [5]),
        .I4(\bcd_sec_reg[1]_0 ),
        .O(\bcd_sec[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \bcd_sec[4]_i_2 
       (.I0(\bcd_sec_reg[6]_0 [1]),
        .I1(\bcd_sec_reg[6]_0 [0]),
        .I2(\bcd_sec_reg[6]_0 [3]),
        .I3(\bcd_sec_reg[6]_0 [2]),
        .O(\bcd_sec_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0808FB0808FBFB08)) 
    \bcd_sec[5]_i_1 
       (.I0(\bcd_sec_reg[6]_1 [10]),
        .I1(\rcnt_psc_bcd_reg[0]_0 ),
        .I2(p_0_in),
        .I3(\bcd_sec_reg[6]_0 [5]),
        .I4(\bcd_sec[6]_i_2_n_0 ),
        .I5(\bcd_sec_reg[6]_0 [6]),
        .O(\bcd_sec[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6464FF6464640064)) 
    \bcd_sec[6]_i_1 
       (.I0(\bcd_sec[6]_i_2_n_0 ),
        .I1(\bcd_sec_reg[6]_0 [6]),
        .I2(\bcd_sec_reg[6]_0 [5]),
        .I3(\rcnt_psc_bcd_reg[0]_0 ),
        .I4(p_0_in),
        .I5(\bcd_sec_reg[6]_1 [11]),
        .O(\bcd_sec[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \bcd_sec[6]_i_2 
       (.I0(\bcd_sec_reg[6]_0 [4]),
        .I1(\bcd_sec_reg[6]_0 [2]),
        .I2(\bcd_sec_reg[6]_0 [3]),
        .I3(\bcd_sec_reg[6]_0 [0]),
        .I4(\bcd_sec_reg[6]_0 [1]),
        .O(\bcd_sec[6]_i_2_n_0 ));
  FDRE \bcd_sec_reg[0] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_sec_reg[4]_0 [0]),
        .Q(\bcd_sec_reg[6]_0 [0]),
        .R(\<const0> ));
  FDRE \bcd_sec_reg[1] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_sec[1]_i_1_n_0 ),
        .Q(\bcd_sec_reg[6]_0 [1]),
        .R(\<const0> ));
  FDRE \bcd_sec_reg[2] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_sec[2]_i_1_n_0 ),
        .Q(\bcd_sec_reg[6]_0 [2]),
        .R(\<const0> ));
  FDRE \bcd_sec_reg[3] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_sec[3]_i_1_n_0 ),
        .Q(\bcd_sec_reg[6]_0 [3]),
        .R(\<const0> ));
  FDRE \bcd_sec_reg[4] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_sec_reg[4]_0 [1]),
        .Q(\bcd_sec_reg[6]_0 [4]),
        .R(\<const0> ));
  FDRE \bcd_sec_reg[5] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_sec[5]_i_1_n_0 ),
        .Q(\bcd_sec_reg[6]_0 [5]),
        .R(\<const0> ));
  FDRE \bcd_sec_reg[6] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_sec[6]_i_1_n_0 ),
        .Q(\bcd_sec_reg[6]_0 [6]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h88888BB88BB88BB8)) 
    \bcd_wee[0]_i_1 
       (.I0(rsys_reg_0[0]),
        .I1(\rcnt_psc_mil_reg[9]_1 ),
        .I2(\bcd_wee[2]_i_3_n_0 ),
        .I3(\bcd_wee_reg[2]_0 [0]),
        .I4(\bcd_wee_reg[2]_0 [1]),
        .I5(\bcd_wee_reg[2]_0 [2]),
        .O(\bcd_wee[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888B8BBBBB888888)) 
    \bcd_wee[1]_i_1 
       (.I0(rsys_reg_0[1]),
        .I1(\rcnt_psc_mil_reg[9]_1 ),
        .I2(\bcd_wee_reg[2]_0 [2]),
        .I3(\bcd_wee_reg[2]_0 [0]),
        .I4(\bcd_wee[2]_i_3_n_0 ),
        .I5(\bcd_wee_reg[2]_0 [1]),
        .O(\bcd_wee[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888BB888BBBB8888)) 
    \bcd_wee[2]_i_1 
       (.I0(rsys_reg_0[2]),
        .I1(\rcnt_psc_mil_reg[9]_1 ),
        .I2(\bcd_wee_reg[2]_0 [0]),
        .I3(\bcd_wee[2]_i_3_n_0 ),
        .I4(\bcd_wee_reg[2]_0 [2]),
        .I5(\bcd_wee_reg[2]_0 [1]),
        .O(\bcd_wee[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bcd_wee[2]_i_3 
       (.I0(\bcd_hou_reg[2]_0 ),
        .I1(\bcd_hou[3]_i_3_n_0 ),
        .I2(\bcd_hou_reg[5]_0 ),
        .I3(\bcd_hou_reg[5]_2 [4]),
        .I4(\bcd_hou_reg[0]_0 ),
        .I5(\bcd_hou[1]_i_2_n_0 ),
        .O(\bcd_wee[2]_i_3_n_0 ));
  FDRE \bcd_wee_reg[0] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_wee[0]_i_1_n_0 ),
        .Q(\bcd_wee_reg[2]_0 [0]),
        .R(\<const0> ));
  FDRE \bcd_wee_reg[1] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_wee[1]_i_1_n_0 ),
        .Q(\bcd_wee_reg[2]_0 [1]),
        .R(\<const0> ));
  FDRE \bcd_wee_reg[2] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_wee[2]_i_1_n_0 ),
        .Q(\bcd_wee_reg[2]_0 [2]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h6666F066)) 
    \bcd_yea[0]_i_1 
       (.I0(Q[0]),
        .I1(\bcd_yea[0]_i_2_n_0 ),
        .I2(\bcd_yea_reg[9]_0 [0]),
        .I3(\rcnt_psc_bcd_reg[0]_0 ),
        .I4(p_0_in),
        .O(\bcd_yea[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000008)) 
    \bcd_yea[0]_i_2 
       (.I0(\bcd_mon_reg[4]_0 [4]),
        .I1(\bcd_mon_reg[4]_0 [1]),
        .I2(\bcd_mon_reg[4]_0 [2]),
        .I3(\bcd_mon_reg[4]_0 [3]),
        .I4(\bcd_mon_reg[4]_0 [0]),
        .I5(\bcd_mon[0]_i_2_n_0 ),
        .O(\bcd_yea[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h95)) 
    \bcd_yea[1]_i_2 
       (.I0(Q[1]),
        .I1(\bcd_yea[0]_i_2_n_0 ),
        .I2(Q[0]),
        .O(\bcd_yea_reg[1]_1 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \bcd_yea[2]_i_2 
       (.I0(Q[1]),
        .I1(\bcd_yea[0]_i_2_n_0 ),
        .I2(Q[0]),
        .O(\bcd_yea_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h7EBF8000)) 
    \bcd_yea[3]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\bcd_yea[0]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\bcd_yea_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h888888888BBBB888)) 
    \bcd_yea[5]_i_1 
       (.I0(\bcd_yea_reg[9]_0 [1]),
        .I1(\rcnt_psc_mil_reg[9]_1 ),
        .I2(Q[4]),
        .I3(\bcd_yea_reg[2]_0 ),
        .I4(Q[5]),
        .I5(\bcd_yea_reg[6]_0 ),
        .O(\bcd_yea[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \bcd_yea[6]_i_1 
       (.I0(\bcd_yea_reg[9]_0 [2]),
        .I1(\rcnt_psc_mil_reg[9]_1 ),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(\bcd_yea_reg[2]_0 ),
        .I5(Q[5]),
        .O(\bcd_yea[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01400000)) 
    \bcd_yea[6]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\bcd_yea[0]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\bcd_yea_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hFEBF)) 
    \bcd_yea[7]_i_2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\bcd_yea_reg[2]_0 ),
        .I3(Q[5]),
        .O(\bcd_yea_reg[6]_1 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \bcd_yea[7]_i_3 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\bcd_yea_reg[2]_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(\bcd_yea_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h08FBFB08FB08FB08)) 
    \bcd_yea[9]_i_1 
       (.I0(\bcd_yea_reg[9]_0 [3]),
        .I1(\rcnt_psc_bcd_reg[0]_0 ),
        .I2(p_0_in),
        .I3(Q[9]),
        .I4(\bcd_yea_reg[6]_0 ),
        .I5(Q[8]),
        .O(\bcd_yea[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01400000)) 
    \bcd_yea[9]_i_2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\bcd_yea_reg[2]_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .O(\bcd_yea_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_yea_reg[0] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_yea[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_yea_reg[1] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_yea_reg[8]_0 [0]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_yea_reg[2] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_yea_reg[8]_0 [1]),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_yea_reg[3] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_yea_reg[8]_0 [2]),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_yea_reg[4] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_yea_reg[8]_0 [3]),
        .Q(Q[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_yea_reg[5] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_yea[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_yea_reg[6] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_yea[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_yea_reg[7] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_yea_reg[8]_0 [4]),
        .Q(Q[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_yea_reg[8] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_yea_reg[8]_0 [5]),
        .Q(Q[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_yea_reg[9] 
       (.C(clk),
        .CE(\bcd_mon_reg[4]_3 ),
        .D(\bcd_yea[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bin_yea__0_carry
       (.CI(\<const0> ),
        .CO({bin_yea__0_carry_n_0,bin_yea__0_carry_n_1,bin_yea__0_carry_n_2,bin_yea__0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({Q[4],Q[2:1],\<const0> }),
        .O({bin_yea__0_carry_n_4,bin_yea__0_carry_n_5,bin_yea__0_carry_n_6,bin_yea__0_carry_n_7}),
        .S({bin_yea__0_carry_i_1_n_0,bin_yea__0_carry_i_2_n_0,bin_yea__0_carry_i_3_n_0,Q[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bin_yea__0_carry__0
       (.CI(bin_yea__0_carry_n_0),
        .CO({bin_yea__0_carry__0_n_0,bin_yea__0_carry__0_n_1,bin_yea__0_carry__0_n_2,bin_yea__0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({bin_yea10_in[7],bin_yea__0_carry__0_i_2_n_0,bin_yea__0_carry__0_i_3_n_0,bin_yea__0_carry__0_i_4_n_0}),
        .O({bin_yea__0_carry__0_n_4,bin_yea__0_carry__0_n_5,bin_yea__0_carry__0_n_6,bin_yea__0_carry__0_n_7}),
        .S({bin_yea__0_carry__0_i_5_n_0,bin_yea__0_carry__0_i_6_n_0,bin_yea__0_carry__0_i_7_n_0,bin_yea__0_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'h0E1A7070)) 
    bin_yea__0_carry__0_i_1
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[9]),
        .I3(Q[5]),
        .I4(Q[8]),
        .O(bin_yea10_in[7]));
  LUT5 #(
    .INIT(32'h02580070)) 
    bin_yea__0_carry__0_i_2
       (.I0(Q[8]),
        .I1(Q[5]),
        .I2(Q[9]),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(bin_yea__0_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h24444222)) 
    bin_yea__0_carry__0_i_3
       (.I0(Q[8]),
        .I1(Q[5]),
        .I2(Q[9]),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(bin_yea__0_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h96660000)) 
    bin_yea__0_carry__0_i_4
       (.I0(Q[9]),
        .I1(Q[6]),
        .I2(Q[8]),
        .I3(Q[5]),
        .I4(Q[3]),
        .O(bin_yea__0_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'hAADA5870)) 
    bin_yea__0_carry__0_i_5
       (.I0(Q[8]),
        .I1(Q[5]),
        .I2(Q[9]),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(bin_yea__0_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h5B6DDADA)) 
    bin_yea__0_carry__0_i_6
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[9]),
        .I3(Q[5]),
        .I4(Q[8]),
        .O(bin_yea__0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h5A59A6969A5A9A5A)) 
    bin_yea__0_carry__0_i_7
       (.I0(bin_yea__0_carry__0_i_3_n_0),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[9]),
        .I4(Q[5]),
        .I5(Q[8]),
        .O(bin_yea__0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6669966669999666)) 
    bin_yea__0_carry__0_i_8
       (.I0(bin_yea__0_carry__0_i_4_n_0),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[9]),
        .I4(Q[5]),
        .I5(Q[8]),
        .O(bin_yea__0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bin_yea__0_carry__1
       (.CI(bin_yea__0_carry__0_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(bin_yea__0_carry__1_n_7),
        .S({\<const0> ,\<const0> ,\<const0> ,bin_yea10_in[8]}));
  LUT5 #(
    .INIT(32'hF0E08080)) 
    bin_yea__0_carry__1_i_1
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[9]),
        .I3(Q[5]),
        .I4(Q[8]),
        .O(bin_yea10_in[8]));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    bin_yea__0_carry_i_1
       (.I0(Q[5]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(Q[9]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(bin_yea__0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    bin_yea__0_carry_i_2
       (.I0(Q[2]),
        .I1(Q[5]),
        .I2(Q[8]),
        .O(bin_yea__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    bin_yea__0_carry_i_3
       (.I0(Q[1]),
        .I1(Q[4]),
        .O(bin_yea__0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \rcnt_psc_bcd[0]_i_1 
       (.I0(rcnt_psc_bcd[0]),
        .O(data0[0]));
  LUT4 #(
    .INIT(16'h6626)) 
    \rcnt_psc_bcd[1]_i_1 
       (.I0(rcnt_psc_bcd[1]),
        .I1(rcnt_psc_bcd[0]),
        .I2(rcnt_psc_bcd[3]),
        .I3(rcnt_psc_bcd[2]),
        .O(data0[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \rcnt_psc_bcd[2]_i_1 
       (.I0(rcnt_psc_bcd[2]),
        .I1(rcnt_psc_bcd[0]),
        .I2(rcnt_psc_bcd[1]),
        .O(data0[2]));
  LUT4 #(
    .INIT(16'h6F80)) 
    \rcnt_psc_bcd[3]_i_1 
       (.I0(rcnt_psc_bcd[1]),
        .I1(rcnt_psc_bcd[2]),
        .I2(rcnt_psc_bcd[0]),
        .I3(rcnt_psc_bcd[3]),
        .O(data0[3]));
  LUT5 #(
    .INIT(32'hA9AAAAAA)) 
    \rcnt_psc_bcd[4]_i_1 
       (.I0(rcnt_psc_bcd[4]),
        .I1(rcnt_psc_bcd[1]),
        .I2(rcnt_psc_bcd[2]),
        .I3(rcnt_psc_bcd[0]),
        .I4(rcnt_psc_bcd[3]),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'hFDFFFFFF02000000)) 
    \rcnt_psc_bcd[5]_i_1 
       (.I0(rcnt_psc_bcd[4]),
        .I1(rcnt_psc_bcd[1]),
        .I2(rcnt_psc_bcd[2]),
        .I3(rcnt_psc_bcd[0]),
        .I4(rcnt_psc_bcd[3]),
        .I5(rcnt_psc_bcd[5]),
        .O(data0[5]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rcnt_psc_bcd[6]_i_1 
       (.I0(rcnt_psc_bcd[6]),
        .I1(rcnt_psc_bcd[5]),
        .I2(rcnt_psc_bcd[4]),
        .I3(\rcnt_psc_bcd[7]_i_4_n_0 ),
        .O(data0[6]));
  LUT5 #(
    .INIT(32'hFFFFFFAE)) 
    \rcnt_psc_bcd[7]_i_1 
       (.I0(\rcnt_psc_bcd[7]_i_3_n_0 ),
        .I1(\rcnt_psc_bcd_reg[0]_0 ),
        .I2(p_0_in),
        .I3(simumd),
        .I4(rcnt_psc_bcd_ovf0),
        .O(\rcnt_psc_bcd[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rcnt_psc_bcd[7]_i_2 
       (.I0(rcnt_psc_bcd[7]),
        .I1(\rcnt_psc_bcd[7]_i_4_n_0 ),
        .I2(rcnt_psc_bcd[4]),
        .I3(rcnt_psc_bcd[5]),
        .I4(rcnt_psc_bcd[6]),
        .O(data0[7]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \rcnt_psc_bcd[7]_i_3 
       (.I0(\rcnt_psc_bcd[7]_i_4_n_0 ),
        .I1(rcnt_psc_bcd[4]),
        .I2(rcnt_psc_bcd[6]),
        .I3(rcnt_psc_bcd[7]),
        .I4(rcnt_psc_bcd[5]),
        .O(\rcnt_psc_bcd[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \rcnt_psc_bcd[7]_i_4 
       (.I0(rcnt_psc_bcd[3]),
        .I1(rcnt_psc_bcd[0]),
        .I2(rcnt_psc_bcd[2]),
        .I3(rcnt_psc_bcd[1]),
        .O(\rcnt_psc_bcd[7]_i_4_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rcnt_psc_bcd_ovf0_carry
       (.CI(\<const0> ),
        .CO({rcnt_psc_bcd_ovf0,rcnt_psc_bcd_ovf0_carry_n_1,rcnt_psc_bcd_ovf0_carry_n_2,rcnt_psc_bcd_ovf0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({rcnt_psc_bcd_ovf0_carry_i_1_n_0,rcnt_psc_bcd_ovf0_carry_i_2_n_0,rcnt_psc_bcd_ovf0_carry_i_3_n_0,rcnt_psc_bcd_ovf0_carry_i_4_n_0}),
        .S({rcnt_psc_bcd_ovf0_carry_i_5_n_0,rcnt_psc_bcd_ovf0_carry_i_6_n_0,rcnt_psc_bcd_ovf0_carry_i_7_n_0,rcnt_psc_bcd_ovf0_carry_i_8_n_0}));
  LUT6 #(
    .INIT(64'h154051003D54F150)) 
    rcnt_psc_bcd_ovf0_carry_i_1
       (.I0(clk_mhz[7]),
        .I1(rcnt_psc_bcd_ovf0_carry_i_9_n_0),
        .I2(rcnt_psc_bcd[6]),
        .I3(rcnt_psc_bcd[7]),
        .I4(rcnt_psc_bcd[5]),
        .I5(clk_mhz[6]),
        .O(rcnt_psc_bcd_ovf0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000144405501DD4)) 
    rcnt_psc_bcd_ovf0_carry_i_2
       (.I0(clk_mhz[5]),
        .I1(rcnt_psc_bcd[5]),
        .I2(\rcnt_psc_bcd[7]_i_4_n_0 ),
        .I3(rcnt_psc_bcd[4]),
        .I4(\rcnt_psc_bcd[7]_i_3_n_0 ),
        .I5(clk_mhz[4]),
        .O(rcnt_psc_bcd_ovf0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h144444041DD4DD04)) 
    rcnt_psc_bcd_ovf0_carry_i_3
       (.I0(clk_mhz[3]),
        .I1(rcnt_psc_bcd[3]),
        .I2(rcnt_psc_bcd[0]),
        .I3(rcnt_psc_bcd[2]),
        .I4(rcnt_psc_bcd[1]),
        .I5(clk_mhz[2]),
        .O(rcnt_psc_bcd_ovf0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h141404141D1D0D1D)) 
    rcnt_psc_bcd_ovf0_carry_i_4
       (.I0(clk_mhz[1]),
        .I1(rcnt_psc_bcd[1]),
        .I2(rcnt_psc_bcd[0]),
        .I3(rcnt_psc_bcd[3]),
        .I4(rcnt_psc_bcd[2]),
        .I5(clk_mhz[0]),
        .O(rcnt_psc_bcd_ovf0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0990909060030909)) 
    rcnt_psc_bcd_ovf0_carry_i_5
       (.I0(rcnt_psc_bcd[7]),
        .I1(clk_mhz[7]),
        .I2(rcnt_psc_bcd[6]),
        .I3(rcnt_psc_bcd[5]),
        .I4(rcnt_psc_bcd_ovf0_carry_i_9_n_0),
        .I5(clk_mhz[6]),
        .O(rcnt_psc_bcd_ovf0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h004B4B001E00004B)) 
    rcnt_psc_bcd_ovf0_carry_i_6
       (.I0(\rcnt_psc_bcd[7]_i_3_n_0 ),
        .I1(rcnt_psc_bcd[5]),
        .I2(clk_mhz[5]),
        .I3(rcnt_psc_bcd[4]),
        .I4(\rcnt_psc_bcd[7]_i_4_n_0 ),
        .I5(clk_mhz[4]),
        .O(rcnt_psc_bcd_ovf0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0990909060090309)) 
    rcnt_psc_bcd_ovf0_carry_i_7
       (.I0(rcnt_psc_bcd[3]),
        .I1(clk_mhz[3]),
        .I2(rcnt_psc_bcd[2]),
        .I3(rcnt_psc_bcd[0]),
        .I4(rcnt_psc_bcd[1]),
        .I5(clk_mhz[2]),
        .O(rcnt_psc_bcd_ovf0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h00000BF4F00F0000)) 
    rcnt_psc_bcd_ovf0_carry_i_8
       (.I0(rcnt_psc_bcd[2]),
        .I1(rcnt_psc_bcd[3]),
        .I2(rcnt_psc_bcd[1]),
        .I3(clk_mhz[1]),
        .I4(clk_mhz[0]),
        .I5(rcnt_psc_bcd[0]),
        .O(rcnt_psc_bcd_ovf0_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    rcnt_psc_bcd_ovf0_carry_i_9
       (.I0(rcnt_psc_bcd[4]),
        .I1(rcnt_psc_bcd[1]),
        .I2(rcnt_psc_bcd[2]),
        .I3(rcnt_psc_bcd[0]),
        .I4(rcnt_psc_bcd[3]),
        .O(rcnt_psc_bcd_ovf0_carry_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_bcd_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[0]),
        .Q(rcnt_psc_bcd[0]),
        .R(\rcnt_psc_bcd[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_bcd_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[1]),
        .Q(rcnt_psc_bcd[1]),
        .R(\rcnt_psc_bcd[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_bcd_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[2]),
        .Q(rcnt_psc_bcd[2]),
        .R(\rcnt_psc_bcd[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_bcd_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[3]),
        .Q(rcnt_psc_bcd[3]),
        .R(\rcnt_psc_bcd[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_bcd_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[4]),
        .Q(rcnt_psc_bcd[4]),
        .R(\rcnt_psc_bcd[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_bcd_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[5]),
        .Q(rcnt_psc_bcd[5]),
        .R(\rcnt_psc_bcd[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_bcd_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[6]),
        .Q(rcnt_psc_bcd[6]),
        .R(\rcnt_psc_bcd[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_bcd_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(data0[7]),
        .Q(rcnt_psc_bcd[7]),
        .R(\rcnt_psc_bcd[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rcnt_psc_mcr[0]_i_1 
       (.I0(rcnt_psc_mcr_reg[0]),
        .O(p_0_in__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \rcnt_psc_mcr[1]_i_1 
       (.I0(rcnt_psc_mcr_reg[1]),
        .I1(rcnt_psc_mcr_reg[0]),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \rcnt_psc_mcr[2]_i_1 
       (.I0(rcnt_psc_mcr_reg[2]),
        .I1(rcnt_psc_mcr_reg[0]),
        .I2(rcnt_psc_mcr_reg[1]),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rcnt_psc_mcr[3]_i_1 
       (.I0(rcnt_psc_mcr_reg[3]),
        .I1(rcnt_psc_mcr_reg[1]),
        .I2(rcnt_psc_mcr_reg[0]),
        .I3(rcnt_psc_mcr_reg[2]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rcnt_psc_mcr[4]_i_1 
       (.I0(rcnt_psc_mcr_reg[4]),
        .I1(rcnt_psc_mcr_reg[2]),
        .I2(rcnt_psc_mcr_reg[0]),
        .I3(rcnt_psc_mcr_reg[1]),
        .I4(rcnt_psc_mcr_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rcnt_psc_mcr[5]_i_1 
       (.I0(rcnt_psc_mcr_reg[5]),
        .I1(rcnt_psc_mcr_reg[3]),
        .I2(rcnt_psc_mcr_reg[1]),
        .I3(rcnt_psc_mcr_reg[0]),
        .I4(rcnt_psc_mcr_reg[2]),
        .I5(rcnt_psc_mcr_reg[4]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \rcnt_psc_mcr[6]_i_1 
       (.I0(rcnt_psc_mcr_reg[6]),
        .I1(\rcnt_psc_mcr[9]_i_3_n_0 ),
        .O(p_0_in__0[6]));
  LUT3 #(
    .INIT(8'h6A)) 
    \rcnt_psc_mcr[7]_i_1 
       (.I0(rcnt_psc_mcr_reg[7]),
        .I1(\rcnt_psc_mcr[9]_i_3_n_0 ),
        .I2(rcnt_psc_mcr_reg[6]),
        .O(p_0_in__0[7]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rcnt_psc_mcr[8]_i_1 
       (.I0(rcnt_psc_mcr_reg[8]),
        .I1(rcnt_psc_mcr_reg[7]),
        .I2(rcnt_psc_mcr_reg[6]),
        .I3(\rcnt_psc_mcr[9]_i_3_n_0 ),
        .O(p_0_in__0[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \rcnt_psc_mcr[9]_i_1 
       (.I0(simumd),
        .I1(rcnt_psc_bcd_ovf0),
        .O(\rcnt_psc_mcr[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rcnt_psc_mcr[9]_i_2 
       (.I0(rcnt_psc_mcr_reg[9]),
        .I1(\rcnt_psc_mcr[9]_i_3_n_0 ),
        .I2(rcnt_psc_mcr_reg[6]),
        .I3(rcnt_psc_mcr_reg[7]),
        .I4(rcnt_psc_mcr_reg[8]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rcnt_psc_mcr[9]_i_3 
       (.I0(rcnt_psc_mcr_reg[5]),
        .I1(rcnt_psc_mcr_reg[3]),
        .I2(rcnt_psc_mcr_reg[1]),
        .I3(rcnt_psc_mcr_reg[0]),
        .I4(rcnt_psc_mcr_reg[2]),
        .I5(rcnt_psc_mcr_reg[4]),
        .O(\rcnt_psc_mcr[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mcr_reg[0] 
       (.C(clk),
        .CE(\rcnt_psc_mcr[9]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(rcnt_psc_mcr_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mcr_reg[1] 
       (.C(clk),
        .CE(\rcnt_psc_mcr[9]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(rcnt_psc_mcr_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mcr_reg[2] 
       (.C(clk),
        .CE(\rcnt_psc_mcr[9]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(rcnt_psc_mcr_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mcr_reg[3] 
       (.C(clk),
        .CE(\rcnt_psc_mcr[9]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(rcnt_psc_mcr_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mcr_reg[4] 
       (.C(clk),
        .CE(\rcnt_psc_mcr[9]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(rcnt_psc_mcr_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mcr_reg[5] 
       (.C(clk),
        .CE(\rcnt_psc_mcr[9]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(rcnt_psc_mcr_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mcr_reg[6] 
       (.C(clk),
        .CE(\rcnt_psc_mcr[9]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(rcnt_psc_mcr_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mcr_reg[7] 
       (.C(clk),
        .CE(\rcnt_psc_mcr[9]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(rcnt_psc_mcr_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mcr_reg[8] 
       (.C(clk),
        .CE(\rcnt_psc_mcr[9]_i_1_n_0 ),
        .D(p_0_in__0[8]),
        .Q(rcnt_psc_mcr_reg[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mcr_reg[9] 
       (.C(clk),
        .CE(\rcnt_psc_mcr[9]_i_1_n_0 ),
        .D(p_0_in__0[9]),
        .Q(rcnt_psc_mcr_reg[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h888888888BBBB888)) 
    \rcnt_psc_mil[2]_i_1 
       (.I0(\bcd_sec_reg[6]_1 [0]),
        .I1(\rcnt_psc_mil_reg[9]_1 ),
        .I2(\rcnt_psc_mil_reg[9]_0 [0]),
        .I3(\rcnt_psc_mil_reg[9]_0 [1]),
        .I4(\rcnt_psc_mil_reg[9]_0 [2]),
        .I5(rcnt_psc_mil_ovf),
        .O(\rcnt_psc_mil[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808FBFB08)) 
    \rcnt_psc_mil[3]_i_1 
       (.I0(\bcd_sec_reg[6]_1 [1]),
        .I1(\rcnt_psc_bcd_reg[0]_0 ),
        .I2(p_0_in),
        .I3(\rcnt_psc_mil[4]_i_2_n_0 ),
        .I4(\rcnt_psc_mil_reg[9]_0 [3]),
        .I5(rcnt_psc_mil_ovf),
        .O(\rcnt_psc_mil[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BBBB888)) 
    \rcnt_psc_mil[4]_i_1 
       (.I0(\bcd_sec_reg[6]_1 [2]),
        .I1(\rcnt_psc_mil_reg[9]_1 ),
        .I2(\rcnt_psc_mil_reg[9]_0 [3]),
        .I3(\rcnt_psc_mil[4]_i_2_n_0 ),
        .I4(\rcnt_psc_mil_reg[9]_0 [4]),
        .I5(rcnt_psc_mil_ovf),
        .O(\rcnt_psc_mil[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \rcnt_psc_mil[4]_i_2 
       (.I0(\rcnt_psc_mil_reg[9]_0 [2]),
        .I1(\rcnt_psc_mil_reg[9]_0 [1]),
        .I2(\rcnt_psc_mil_reg[9]_0 [0]),
        .O(\rcnt_psc_mil[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808FBFB08)) 
    \rcnt_psc_mil[5]_i_1 
       (.I0(\bcd_sec_reg[6]_1 [3]),
        .I1(\rcnt_psc_bcd_reg[0]_0 ),
        .I2(p_0_in),
        .I3(\rcnt_psc_mil[5]_i_2_n_0 ),
        .I4(\rcnt_psc_mil_reg[9]_0 [5]),
        .I5(rcnt_psc_mil_ovf),
        .O(\rcnt_psc_mil[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \rcnt_psc_mil[5]_i_2 
       (.I0(\rcnt_psc_mil_reg[9]_0 [4]),
        .I1(\rcnt_psc_mil_reg[9]_0 [2]),
        .I2(\rcnt_psc_mil_reg[9]_0 [1]),
        .I3(\rcnt_psc_mil_reg[9]_0 [0]),
        .I4(\rcnt_psc_mil_reg[9]_0 [3]),
        .O(\rcnt_psc_mil[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808FBFB08)) 
    \rcnt_psc_mil[6]_i_1 
       (.I0(\bcd_sec_reg[6]_1 [4]),
        .I1(\rcnt_psc_bcd_reg[0]_0 ),
        .I2(p_0_in),
        .I3(\rcnt_psc_mil[7]_i_2_n_0 ),
        .I4(\rcnt_psc_mil_reg[9]_0 [6]),
        .I5(rcnt_psc_mil_ovf),
        .O(\rcnt_psc_mil[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BBBB888)) 
    \rcnt_psc_mil[7]_i_1 
       (.I0(\bcd_sec_reg[6]_1 [5]),
        .I1(\rcnt_psc_mil_reg[9]_1 ),
        .I2(\rcnt_psc_mil_reg[9]_0 [6]),
        .I3(\rcnt_psc_mil[7]_i_2_n_0 ),
        .I4(\rcnt_psc_mil_reg[9]_0 [7]),
        .I5(rcnt_psc_mil_ovf),
        .O(\rcnt_psc_mil[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rcnt_psc_mil[7]_i_2 
       (.I0(\rcnt_psc_mil_reg[9]_0 [5]),
        .I1(\rcnt_psc_mil_reg[9]_0 [3]),
        .I2(\rcnt_psc_mil_reg[9]_0 [0]),
        .I3(\rcnt_psc_mil_reg[9]_0 [1]),
        .I4(\rcnt_psc_mil_reg[9]_0 [2]),
        .I5(\rcnt_psc_mil_reg[9]_0 [4]),
        .O(\rcnt_psc_mil[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FF8F8F888888888)) 
    \rcnt_psc_mil[9]_i_2 
       (.I0(\rcnt_psc_mil_reg[9]_1 ),
        .I1(\bcd_sec_reg[6]_1 [6]),
        .I2(\rcnt_psc_mil_reg[9]_0 [9]),
        .I3(\rcnt_psc_mil_reg[6]_0 ),
        .I4(\rcnt_psc_mil_reg[9]_0 [8]),
        .I5(\rcnt_psc_mil_reg[9]_2 ),
        .O(\rcnt_psc_mil[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44444445)) 
    \rcnt_psc_mil[9]_i_3 
       (.I0(simumd),
        .I1(\rcnt_psc_mil[9]_i_6_n_0 ),
        .I2(rcnt_psc_mcr_reg[4]),
        .I3(\rcnt_psc_mil[9]_i_7_n_0 ),
        .I4(rcnt_psc_mcr_reg[3]),
        .O(simumd_0));
  LUT3 #(
    .INIT(8'h80)) 
    \rcnt_psc_mil[9]_i_4 
       (.I0(\rcnt_psc_mil[7]_i_2_n_0 ),
        .I1(\rcnt_psc_mil_reg[9]_0 [6]),
        .I2(\rcnt_psc_mil_reg[9]_0 [7]),
        .O(\rcnt_psc_mil_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \rcnt_psc_mil[9]_i_6 
       (.I0(rcnt_psc_mcr_reg[6]),
        .I1(rcnt_psc_mcr_reg[7]),
        .I2(rcnt_psc_mcr_reg[9]),
        .I3(rcnt_psc_mcr_reg[8]),
        .I4(rcnt_psc_bcd_ovf0),
        .I5(rcnt_psc_mcr_reg[5]),
        .O(\rcnt_psc_mil[9]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \rcnt_psc_mil[9]_i_7 
       (.I0(rcnt_psc_mcr_reg[2]),
        .I1(rcnt_psc_mcr_reg[0]),
        .I2(rcnt_psc_mcr_reg[1]),
        .O(\rcnt_psc_mil[9]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mil_reg[0] 
       (.C(clk),
        .CE(SR),
        .D(\rcnt_psc_mil_reg[8]_0 [0]),
        .Q(\rcnt_psc_mil_reg[9]_0 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mil_reg[1] 
       (.C(clk),
        .CE(SR),
        .D(\rcnt_psc_mil_reg[8]_0 [1]),
        .Q(\rcnt_psc_mil_reg[9]_0 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mil_reg[2] 
       (.C(clk),
        .CE(SR),
        .D(\rcnt_psc_mil[2]_i_1_n_0 ),
        .Q(\rcnt_psc_mil_reg[9]_0 [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mil_reg[3] 
       (.C(clk),
        .CE(SR),
        .D(\rcnt_psc_mil[3]_i_1_n_0 ),
        .Q(\rcnt_psc_mil_reg[9]_0 [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mil_reg[4] 
       (.C(clk),
        .CE(SR),
        .D(\rcnt_psc_mil[4]_i_1_n_0 ),
        .Q(\rcnt_psc_mil_reg[9]_0 [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mil_reg[5] 
       (.C(clk),
        .CE(SR),
        .D(\rcnt_psc_mil[5]_i_1_n_0 ),
        .Q(\rcnt_psc_mil_reg[9]_0 [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mil_reg[6] 
       (.C(clk),
        .CE(SR),
        .D(\rcnt_psc_mil[6]_i_1_n_0 ),
        .Q(\rcnt_psc_mil_reg[9]_0 [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mil_reg[7] 
       (.C(clk),
        .CE(SR),
        .D(\rcnt_psc_mil[7]_i_1_n_0 ),
        .Q(\rcnt_psc_mil_reg[9]_0 [7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mil_reg[8] 
       (.C(clk),
        .CE(SR),
        .D(\rcnt_psc_mil_reg[8]_0 [2]),
        .Q(\rcnt_psc_mil_reg[9]_0 [8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rcnt_psc_mil_reg[9] 
       (.C(clk),
        .CE(SR),
        .D(\rcnt_psc_mil[9]_i_2_n_0 ),
        .Q(\rcnt_psc_mil_reg[9]_0 [9]),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h2)) 
    rcnt_sec_cnte_i_1
       (.I0(rcnt_synce_r_i_2_n_0),
        .I1(simumd_0),
        .O(rcnt_psc_mil_ovf));
  FDRE rcnt_sec_cnte_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rcnt_psc_mil_ovf),
        .Q(rcnt_sec_cnte),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hAAAABAAA)) 
    rcnt_synce_r_i_1
       (.I0(rcnt_sec_cnte),
        .I1(simumd_0),
        .I2(\rcnt_psc_mil_reg[9]_0 [1]),
        .I3(\rcnt_psc_mil_reg[9]_0 [0]),
        .I4(rcnt_synce_r_i_2_n_0),
        .O(rcnt_synce_r0));
  LUT6 #(
    .INIT(64'h00000000FFFFEAAA)) 
    rcnt_synce_r_i_2
       (.I0(\rcnt_psc_mil_reg[9]_0 [3]),
        .I1(\rcnt_psc_mil_reg[9]_0 [0]),
        .I2(\rcnt_psc_mil_reg[9]_0 [1]),
        .I3(\rcnt_psc_mil_reg[9]_0 [2]),
        .I4(\rcnt_psc_mil_reg[9]_0 [4]),
        .I5(rcnt_synce_r_i_3_n_0),
        .O(rcnt_synce_r_i_2_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    rcnt_synce_r_i_3
       (.I0(\rcnt_psc_mil_reg[9]_0 [6]),
        .I1(\rcnt_psc_mil_reg[9]_0 [7]),
        .I2(\rcnt_psc_mil_reg[9]_0 [8]),
        .I3(\rcnt_psc_mil_reg[9]_0 [9]),
        .I4(\rcnt_psc_mil_reg[9]_0 [5]),
        .O(rcnt_synce_r_i_3_n_0));
  FDRE rcnt_synce_r_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rcnt_synce_r0),
        .Q(rcnt_synce),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'hFB08)) 
    rdup_leap_r_i_1
       (.I0(rsub_leap),
        .I1(rcnt_synce),
        .I2(rctl_snap),
        .I3(rdup_leap_r),
        .O(rcnt_synce_r_reg_0));
  LUT3 #(
    .INIT(8'h02)) 
    rdup_leap_r_i_2
       (.I0(rdup_leap_r_i_3_n_0),
        .I1(bin_yea__0_carry_n_7),
        .I2(bin_yea__0_carry_n_6),
        .O(rsub_leap));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFF777)) 
    rdup_leap_r_i_3
       (.I0(bin_yea__0_carry__0_n_6),
        .I1(bin_yea__0_carry_n_5),
        .I2(bin_yea__0_carry__0_n_5),
        .I3(bin_yea__0_carry_n_4),
        .I4(bin_yea__0_carry__0_n_4),
        .I5(rdup_leap_r_i_4_n_0),
        .O(rdup_leap_r_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFD3)) 
    rdup_leap_r_i_4
       (.I0(bin_yea__0_carry_n_4),
        .I1(bin_yea__0_carry__0_n_5),
        .I2(bin_yea__0_carry__1_n_7),
        .I3(bin_yea__0_carry__0_n_7),
        .O(rdup_leap_r_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \rtcmody[12]_i_1 
       (.I0(rdup_leap_r_0),
        .I1(\rtcyear_reg[9] ),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(badr[2]),
        .I5(badr[3]),
        .O(\badr[1] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \rtcscps[14]_i_1 
       (.I0(rdup_leap_r_0),
        .I1(\rtcyear_reg[9] ),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(badr[3]),
        .I5(badr[2]),
        .O(\badr[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rtcscps[14]_i_3 
       (.I0(rcnt_synce),
        .I1(rctl_snap),
        .O(rdup_leap_r_0));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \rtcweek[2]_i_2 
       (.I0(rdup_leap_r_0),
        .I1(\rtcyear_reg[9] ),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[2]),
        .I5(badr[3]),
        .O(badr_0_sn_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \rtcyear[9]_i_1 
       (.I0(rdup_leap_r_0),
        .I1(\rtcyear_reg[9] ),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(badr[2]),
        .I5(badr[3]),
        .O(E));
endmodule

module rtc_sub_ctrl
   (p_0_in,
    Q,
    D,
    \stat_reg[0] ,
    \rtcyear_reg[8] ,
    \rtcmody_reg[2] ,
    \rtchrmi_reg[4] ,
    \rtchrmi_reg[13] ,
    \rtcscps_reg[12] ,
    \rtcmody_reg[12] ,
    E,
    \rctl_wrt_req_s_reg[1]_0 ,
    \stat_reg[0]_0 ,
    SR,
    clk,
    \bcd_sec_reg[4] ,
    \rcnt_psc_mil_reg[8] ,
    \rcnt_psc_mil_reg[8]_0 ,
    \bcd_yea_reg[8] ,
    \bcd_yea_reg[1] ,
    \bcd_yea_reg[4] ,
    \bcd_yea_reg[2] ,
    \bcd_yea_reg[8]_0 ,
    \bcd_yea_reg[3] ,
    \bcd_yea_reg[7] ,
    \bcd_yea_reg[7]_0 ,
    \bcd_yea_reg[8]_1 ,
    \bcd_mon_reg[4] ,
    \bcd_day_reg[2] ,
    \bcd_hou_reg[5] ,
    \bcd_min_reg[0] ,
    \bcd_min_reg[4] ,
    \bcd_min_reg[2] ,
    \bcd_min_reg[4]_0 ,
    \bcd_hou_reg[0] ,
    \bcd_hou_reg[2] ,
    \bcd_hou_reg[2]_0 ,
    \bcd_hou_reg[4] ,
    \bcd_hou_reg[5]_0 ,
    \bcd_hou_reg[5]_1 ,
    \bcd_sec_reg[4]_0 ,
    \bcd_sec_reg[4]_1 ,
    \bcd_mon_reg[2] ,
    \bcd_mon_reg[3] ,
    \bcd_mon_reg[4]_0 ,
    \bcd_mon_reg[4]_1 ,
    rcnt_sec_cnte,
    \rcnt_psc_mil_reg[0] ,
    rcnt_psc_mil_ovf,
    \rctl_wrt_req_s_reg[0]_0 );
  output [0:0]p_0_in;
  output [0:0]Q;
  output [2:0]D;
  output \stat_reg[0] ;
  output [5:0]\rtcyear_reg[8] ;
  output [0:0]\rtcmody_reg[2] ;
  output [2:0]\rtchrmi_reg[4] ;
  output [3:0]\rtchrmi_reg[13] ;
  output [1:0]\rtcscps_reg[12] ;
  output [2:0]\rtcmody_reg[12] ;
  output [0:0]E;
  output \rctl_wrt_req_s_reg[1]_0 ;
  output [0:0]\stat_reg[0]_0 ;
  output [0:0]SR;
  input clk;
  input [3:0]\bcd_sec_reg[4] ;
  input [2:0]\rcnt_psc_mil_reg[8] ;
  input \rcnt_psc_mil_reg[8]_0 ;
  input [5:0]\bcd_yea_reg[8] ;
  input \bcd_yea_reg[1] ;
  input \bcd_yea_reg[4] ;
  input \bcd_yea_reg[2] ;
  input [2:0]\bcd_yea_reg[8]_0 ;
  input \bcd_yea_reg[3] ;
  input \bcd_yea_reg[7] ;
  input \bcd_yea_reg[7]_0 ;
  input \bcd_yea_reg[8]_1 ;
  input [3:0]\bcd_mon_reg[4] ;
  input \bcd_day_reg[2] ;
  input [6:0]\bcd_hou_reg[5] ;
  input \bcd_min_reg[0] ;
  input [1:0]\bcd_min_reg[4] ;
  input \bcd_min_reg[2] ;
  input \bcd_min_reg[4]_0 ;
  input \bcd_hou_reg[0] ;
  input \bcd_hou_reg[2] ;
  input \bcd_hou_reg[2]_0 ;
  input \bcd_hou_reg[4] ;
  input \bcd_hou_reg[5]_0 ;
  input \bcd_hou_reg[5]_1 ;
  input [1:0]\bcd_sec_reg[4]_0 ;
  input \bcd_sec_reg[4]_1 ;
  input \bcd_mon_reg[2] ;
  input \bcd_mon_reg[3] ;
  input \bcd_mon_reg[4]_0 ;
  input \bcd_mon_reg[4]_1 ;
  input rcnt_sec_cnte;
  input \rcnt_psc_mil_reg[0] ;
  input rcnt_psc_mil_ovf;
  input [0:0]\rctl_wrt_req_s_reg[0]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \bcd_day_reg[2] ;
  wire \bcd_hou_reg[0] ;
  wire \bcd_hou_reg[2] ;
  wire \bcd_hou_reg[2]_0 ;
  wire \bcd_hou_reg[4] ;
  wire [6:0]\bcd_hou_reg[5] ;
  wire \bcd_hou_reg[5]_0 ;
  wire \bcd_hou_reg[5]_1 ;
  wire \bcd_min_reg[0] ;
  wire \bcd_min_reg[2] ;
  wire [1:0]\bcd_min_reg[4] ;
  wire \bcd_min_reg[4]_0 ;
  wire \bcd_mon_reg[2] ;
  wire \bcd_mon_reg[3] ;
  wire [3:0]\bcd_mon_reg[4] ;
  wire \bcd_mon_reg[4]_0 ;
  wire \bcd_mon_reg[4]_1 ;
  wire [3:0]\bcd_sec_reg[4] ;
  wire [1:0]\bcd_sec_reg[4]_0 ;
  wire \bcd_sec_reg[4]_1 ;
  wire \bcd_yea_reg[1] ;
  wire \bcd_yea_reg[2] ;
  wire \bcd_yea_reg[3] ;
  wire \bcd_yea_reg[4] ;
  wire \bcd_yea_reg[7] ;
  wire \bcd_yea_reg[7]_0 ;
  wire [5:0]\bcd_yea_reg[8] ;
  wire [2:0]\bcd_yea_reg[8]_0 ;
  wire \bcd_yea_reg[8]_1 ;
  wire clk;
  wire [0:0]p_0_in;
  wire rcnt_psc_mil_ovf;
  wire \rcnt_psc_mil_reg[0] ;
  wire [2:0]\rcnt_psc_mil_reg[8] ;
  wire \rcnt_psc_mil_reg[8]_0 ;
  wire rcnt_sec_cnte;
  wire [0:0]rctl_wrt_req_s;
  wire [0:0]\rctl_wrt_req_s_reg[0]_0 ;
  wire \rctl_wrt_req_s_reg[1]_0 ;
  wire [3:0]\rtchrmi_reg[13] ;
  wire [2:0]\rtchrmi_reg[4] ;
  wire [2:0]\rtcmody_reg[12] ;
  wire [0:0]\rtcmody_reg[2] ;
  wire [1:0]\rtcscps_reg[12] ;
  wire [5:0]\rtcyear_reg[8] ;
  wire \stat_reg[0] ;
  wire [0:0]\stat_reg[0]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \rctl_wrt_req_s_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rctl_wrt_req_s_reg[0]_0 ),
        .Q(rctl_wrt_req_s),
        .R(\<const0> ));
  FDRE \rctl_wrt_req_s_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(rctl_wrt_req_s),
        .Q(Q),
        .R(\<const0> ));
  rtc_sub_fsm rfsm
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .\bcd_day_reg[2] (\bcd_day_reg[2] ),
        .\bcd_hou_reg[0] (\bcd_hou_reg[0] ),
        .\bcd_hou_reg[2] (\bcd_hou_reg[2] ),
        .\bcd_hou_reg[2]_0 (\bcd_hou_reg[2]_0 ),
        .\bcd_hou_reg[4] (\bcd_hou_reg[4] ),
        .\bcd_hou_reg[5] (\bcd_hou_reg[5] ),
        .\bcd_hou_reg[5]_0 (\bcd_hou_reg[5]_0 ),
        .\bcd_hou_reg[5]_1 (\bcd_hou_reg[5]_1 ),
        .\bcd_min_reg[0] (\bcd_min_reg[0] ),
        .\bcd_min_reg[2] (\bcd_min_reg[2] ),
        .\bcd_min_reg[4] (\bcd_min_reg[4] ),
        .\bcd_min_reg[4]_0 (\bcd_min_reg[4]_0 ),
        .\bcd_mon_reg[2] (\bcd_mon_reg[2] ),
        .\bcd_mon_reg[3] (\bcd_mon_reg[3] ),
        .\bcd_mon_reg[4] (\bcd_mon_reg[4] ),
        .\bcd_mon_reg[4]_0 (\bcd_mon_reg[4]_0 ),
        .\bcd_mon_reg[4]_1 (\bcd_mon_reg[4]_1 ),
        .\bcd_sec_reg[4] (\bcd_sec_reg[4] ),
        .\bcd_sec_reg[4]_0 (\bcd_sec_reg[4]_0 ),
        .\bcd_sec_reg[4]_1 (\bcd_sec_reg[4]_1 ),
        .\bcd_yea_reg[1] (\bcd_yea_reg[1] ),
        .\bcd_yea_reg[2] (\bcd_yea_reg[2] ),
        .\bcd_yea_reg[3] (\bcd_yea_reg[3] ),
        .\bcd_yea_reg[4] (\bcd_yea_reg[4] ),
        .\bcd_yea_reg[7] (\bcd_yea_reg[7] ),
        .\bcd_yea_reg[7]_0 (\bcd_yea_reg[7]_0 ),
        .\bcd_yea_reg[8] (\bcd_yea_reg[8] ),
        .\bcd_yea_reg[8]_0 (\bcd_yea_reg[8]_0 ),
        .\bcd_yea_reg[8]_1 (\bcd_yea_reg[8]_1 ),
        .clk(clk),
        .rcnt_psc_mil_ovf(rcnt_psc_mil_ovf),
        .\rcnt_psc_mil_reg[0] (\rcnt_psc_mil_reg[0] ),
        .\rcnt_psc_mil_reg[8] (\rcnt_psc_mil_reg[8] ),
        .\rcnt_psc_mil_reg[8]_0 (\rcnt_psc_mil_reg[8]_0 ),
        .rcnt_sec_cnte(rcnt_sec_cnte),
        .\rctl_wrt_req_s_reg[1] (\rctl_wrt_req_s_reg[1]_0 ),
        .\rtchrmi_reg[13] (\rtchrmi_reg[13] ),
        .\rtchrmi_reg[4] (\rtchrmi_reg[4] ),
        .\rtcmody_reg[12] (\rtcmody_reg[12] ),
        .\rtcmody_reg[2] (\rtcmody_reg[2] ),
        .\rtcscps_reg[12] (\rtcscps_reg[12] ),
        .\rtcyear_reg[8] (\rtcyear_reg[8] ),
        .\stat_reg[0]_0 (p_0_in),
        .\stat_reg[0]_1 (\stat_reg[0] ),
        .\stat_reg[0]_2 (\stat_reg[0]_0 ));
endmodule

module rtc_sub_fsm
   (\stat_reg[0]_0 ,
    D,
    \stat_reg[0]_1 ,
    \rtcyear_reg[8] ,
    \rtcmody_reg[2] ,
    \rtchrmi_reg[4] ,
    \rtchrmi_reg[13] ,
    \rtcscps_reg[12] ,
    \rtcmody_reg[12] ,
    E,
    \rctl_wrt_req_s_reg[1] ,
    \stat_reg[0]_2 ,
    SR,
    Q,
    clk,
    \bcd_sec_reg[4] ,
    \rcnt_psc_mil_reg[8] ,
    \rcnt_psc_mil_reg[8]_0 ,
    \bcd_yea_reg[8] ,
    \bcd_yea_reg[1] ,
    \bcd_yea_reg[4] ,
    \bcd_yea_reg[2] ,
    \bcd_yea_reg[8]_0 ,
    \bcd_yea_reg[3] ,
    \bcd_yea_reg[7] ,
    \bcd_yea_reg[7]_0 ,
    \bcd_yea_reg[8]_1 ,
    \bcd_mon_reg[4] ,
    \bcd_day_reg[2] ,
    \bcd_hou_reg[5] ,
    \bcd_min_reg[0] ,
    \bcd_min_reg[4] ,
    \bcd_min_reg[2] ,
    \bcd_min_reg[4]_0 ,
    \bcd_hou_reg[0] ,
    \bcd_hou_reg[2] ,
    \bcd_hou_reg[2]_0 ,
    \bcd_hou_reg[4] ,
    \bcd_hou_reg[5]_0 ,
    \bcd_hou_reg[5]_1 ,
    \bcd_sec_reg[4]_0 ,
    \bcd_sec_reg[4]_1 ,
    \bcd_mon_reg[2] ,
    \bcd_mon_reg[3] ,
    \bcd_mon_reg[4]_0 ,
    \bcd_mon_reg[4]_1 ,
    rcnt_sec_cnte,
    \rcnt_psc_mil_reg[0] ,
    rcnt_psc_mil_ovf);
  output \stat_reg[0]_0 ;
  output [2:0]D;
  output \stat_reg[0]_1 ;
  output [5:0]\rtcyear_reg[8] ;
  output [0:0]\rtcmody_reg[2] ;
  output [2:0]\rtchrmi_reg[4] ;
  output [3:0]\rtchrmi_reg[13] ;
  output [1:0]\rtcscps_reg[12] ;
  output [2:0]\rtcmody_reg[12] ;
  output [0:0]E;
  output \rctl_wrt_req_s_reg[1] ;
  output [0:0]\stat_reg[0]_2 ;
  output [0:0]SR;
  input [0:0]Q;
  input clk;
  input [3:0]\bcd_sec_reg[4] ;
  input [2:0]\rcnt_psc_mil_reg[8] ;
  input \rcnt_psc_mil_reg[8]_0 ;
  input [5:0]\bcd_yea_reg[8] ;
  input \bcd_yea_reg[1] ;
  input \bcd_yea_reg[4] ;
  input \bcd_yea_reg[2] ;
  input [2:0]\bcd_yea_reg[8]_0 ;
  input \bcd_yea_reg[3] ;
  input \bcd_yea_reg[7] ;
  input \bcd_yea_reg[7]_0 ;
  input \bcd_yea_reg[8]_1 ;
  input [3:0]\bcd_mon_reg[4] ;
  input \bcd_day_reg[2] ;
  input [6:0]\bcd_hou_reg[5] ;
  input \bcd_min_reg[0] ;
  input [1:0]\bcd_min_reg[4] ;
  input \bcd_min_reg[2] ;
  input \bcd_min_reg[4]_0 ;
  input \bcd_hou_reg[0] ;
  input \bcd_hou_reg[2] ;
  input \bcd_hou_reg[2]_0 ;
  input \bcd_hou_reg[4] ;
  input \bcd_hou_reg[5]_0 ;
  input \bcd_hou_reg[5]_1 ;
  input [1:0]\bcd_sec_reg[4]_0 ;
  input \bcd_sec_reg[4]_1 ;
  input \bcd_mon_reg[2] ;
  input \bcd_mon_reg[3] ;
  input \bcd_mon_reg[4]_0 ;
  input \bcd_mon_reg[4]_1 ;
  input rcnt_sec_cnte;
  input \rcnt_psc_mil_reg[0] ;
  input rcnt_psc_mil_ovf;

  wire \<const0> ;
  wire \<const1> ;
  wire [2:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \bcd_day_reg[2] ;
  wire \bcd_hou_reg[0] ;
  wire \bcd_hou_reg[2] ;
  wire \bcd_hou_reg[2]_0 ;
  wire \bcd_hou_reg[4] ;
  wire [6:0]\bcd_hou_reg[5] ;
  wire \bcd_hou_reg[5]_0 ;
  wire \bcd_hou_reg[5]_1 ;
  wire \bcd_min_reg[0] ;
  wire \bcd_min_reg[2] ;
  wire [1:0]\bcd_min_reg[4] ;
  wire \bcd_min_reg[4]_0 ;
  wire \bcd_mon_reg[2] ;
  wire \bcd_mon_reg[3] ;
  wire [3:0]\bcd_mon_reg[4] ;
  wire \bcd_mon_reg[4]_0 ;
  wire \bcd_mon_reg[4]_1 ;
  wire [3:0]\bcd_sec_reg[4] ;
  wire [1:0]\bcd_sec_reg[4]_0 ;
  wire \bcd_sec_reg[4]_1 ;
  wire \bcd_yea_reg[1] ;
  wire \bcd_yea_reg[2] ;
  wire \bcd_yea_reg[3] ;
  wire \bcd_yea_reg[4] ;
  wire \bcd_yea_reg[7] ;
  wire \bcd_yea_reg[7]_0 ;
  wire [5:0]\bcd_yea_reg[8] ;
  wire [2:0]\bcd_yea_reg[8]_0 ;
  wire \bcd_yea_reg[8]_1 ;
  wire clk;
  wire rcnt_psc_mil_ovf;
  wire \rcnt_psc_mil_reg[0] ;
  wire [2:0]\rcnt_psc_mil_reg[8] ;
  wire \rcnt_psc_mil_reg[8]_0 ;
  wire rcnt_sec_cnte;
  wire \rctl_wrt_req_s_reg[1] ;
  wire [3:0]\rtchrmi_reg[13] ;
  wire [2:0]\rtchrmi_reg[4] ;
  wire [2:0]\rtcmody_reg[12] ;
  wire [0:0]\rtcmody_reg[2] ;
  wire [1:0]\rtcscps_reg[12] ;
  wire [5:0]\rtcyear_reg[8] ;
  wire \stat_reg[0]_0 ;
  wire \stat_reg[0]_1 ;
  wire [0:0]\stat_reg[0]_2 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bcd_day[2]_i_1 
       (.I0(\bcd_mon_reg[4] [0]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_day_reg[2] ),
        .O(\rtcmody_reg[2] ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bcd_hou[0]_i_1 
       (.I0(\bcd_hou_reg[5] [3]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_hou_reg[0] ),
        .O(\rtchrmi_reg[13] [0]));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \bcd_hou[2]_i_1 
       (.I0(\bcd_hou_reg[5] [4]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_hou_reg[2] ),
        .I4(\bcd_hou_reg[2]_0 ),
        .O(\rtchrmi_reg[13] [1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bcd_hou[4]_i_1 
       (.I0(\bcd_hou_reg[5] [5]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_hou_reg[4] ),
        .O(\rtchrmi_reg[13] [2]));
  LUT5 #(
    .INIT(32'h080808FB)) 
    \bcd_hou[5]_i_1 
       (.I0(\bcd_hou_reg[5] [6]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_hou_reg[5]_0 ),
        .I4(\bcd_hou_reg[5]_1 ),
        .O(\rtchrmi_reg[13] [3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bcd_min[0]_i_1 
       (.I0(\bcd_hou_reg[5] [0]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_min_reg[0] ),
        .O(\rtchrmi_reg[4] [0]));
  LUT5 #(
    .INIT(32'hFB0808FB)) 
    \bcd_min[2]_i_1 
       (.I0(\bcd_hou_reg[5] [1]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_min_reg[4] [0]),
        .I4(\bcd_min_reg[2] ),
        .O(\rtchrmi_reg[4] [1]));
  LUT5 #(
    .INIT(32'h08FBFB08)) 
    \bcd_min[4]_i_1 
       (.I0(\bcd_hou_reg[5] [2]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_min_reg[4] [1]),
        .I4(\bcd_min_reg[4]_0 ),
        .O(\rtchrmi_reg[4] [2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bcd_mon[2]_i_1 
       (.I0(\bcd_mon_reg[4] [1]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_mon_reg[2] ),
        .O(\rtcmody_reg[12] [0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bcd_mon[3]_i_1 
       (.I0(\bcd_mon_reg[4] [2]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_mon_reg[3] ),
        .O(\rtcmody_reg[12] [1]));
  LUT3 #(
    .INIT(8'hBA)) 
    \bcd_mon[4]_i_1 
       (.I0(rcnt_sec_cnte),
        .I1(\stat_reg[0]_0 ),
        .I2(Q),
        .O(E));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \bcd_mon[4]_i_2 
       (.I0(\bcd_mon_reg[4] [3]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_mon_reg[4]_0 ),
        .I4(\bcd_mon_reg[4]_1 ),
        .O(\rtcmody_reg[12] [2]));
  LUT4 #(
    .INIT(16'h08FB)) 
    \bcd_sec[0]_i_1 
       (.I0(\bcd_sec_reg[4] [2]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_sec_reg[4]_0 [0]),
        .O(\rtcscps_reg[12] [0]));
  LUT5 #(
    .INIT(32'h08FBFB08)) 
    \bcd_sec[4]_i_1 
       (.I0(\bcd_sec_reg[4] [3]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_sec_reg[4]_0 [1]),
        .I4(\bcd_sec_reg[4]_1 ),
        .O(\rtcscps_reg[12] [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \bcd_wee[2]_i_2 
       (.I0(Q),
        .I1(\stat_reg[0]_0 ),
        .O(\rctl_wrt_req_s_reg[1] ));
  LUT5 #(
    .INIT(32'h080808FB)) 
    \bcd_yea[1]_i_1 
       (.I0(\bcd_yea_reg[8] [0]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_yea_reg[1] ),
        .I4(\bcd_yea_reg[4] ),
        .O(\rtcyear_reg[8] [0]));
  LUT5 #(
    .INIT(32'hFB0808FB)) 
    \bcd_yea[2]_i_1 
       (.I0(\bcd_yea_reg[8] [1]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_yea_reg[2] ),
        .I4(\bcd_yea_reg[8]_0 [0]),
        .O(\rtcyear_reg[8] [1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bcd_yea[3]_i_1 
       (.I0(\bcd_yea_reg[8] [2]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_yea_reg[3] ),
        .O(\rtcyear_reg[8] [2]));
  LUT5 #(
    .INIT(32'h08FBFB08)) 
    \bcd_yea[4]_i_1 
       (.I0(\bcd_yea_reg[8] [3]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_yea_reg[8]_0 [1]),
        .I4(\bcd_yea_reg[4] ),
        .O(\rtcyear_reg[8] [3]));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \bcd_yea[7]_i_1 
       (.I0(\bcd_yea_reg[8] [4]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_yea_reg[7] ),
        .I4(\bcd_yea_reg[7]_0 ),
        .O(\rtcyear_reg[8] [4]));
  LUT5 #(
    .INIT(32'h08FBFB08)) 
    \bcd_yea[8]_i_1 
       (.I0(\bcd_yea_reg[8] [5]),
        .I1(Q),
        .I2(\stat_reg[0]_0 ),
        .I3(\bcd_yea_reg[8]_0 [2]),
        .I4(\bcd_yea_reg[8]_1 ),
        .O(\rtcyear_reg[8] [5]));
  LUT5 #(
    .INIT(32'h20FF2020)) 
    \rcnt_psc_mil[0]_i_1 
       (.I0(Q),
        .I1(\stat_reg[0]_0 ),
        .I2(\bcd_sec_reg[4] [0]),
        .I3(\rcnt_psc_mil_reg[8] [0]),
        .I4(\stat_reg[0]_1 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h20FFFF2020202020)) 
    \rcnt_psc_mil[1]_i_1 
       (.I0(Q),
        .I1(\stat_reg[0]_0 ),
        .I2(\bcd_sec_reg[4] [1]),
        .I3(\rcnt_psc_mil_reg[8] [0]),
        .I4(\rcnt_psc_mil_reg[8] [1]),
        .I5(\stat_reg[0]_1 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h20FFFF2020202020)) 
    \rcnt_psc_mil[8]_i_1 
       (.I0(Q),
        .I1(\stat_reg[0]_0 ),
        .I2(\bcd_sec_reg[4] [0]),
        .I3(\rcnt_psc_mil_reg[8] [2]),
        .I4(\rcnt_psc_mil_reg[8]_0 ),
        .I5(\stat_reg[0]_1 ),
        .O(D[2]));
  LUT3 #(
    .INIT(8'h4F)) 
    \rcnt_psc_mil[9]_i_1 
       (.I0(\stat_reg[0]_0 ),
        .I1(Q),
        .I2(\rcnt_psc_mil_reg[0] ),
        .O(SR));
  LUT3 #(
    .INIT(8'h0B)) 
    \rcnt_psc_mil[9]_i_5 
       (.I0(\stat_reg[0]_0 ),
        .I1(Q),
        .I2(rcnt_psc_mil_ovf),
        .O(\stat_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rsub_wrt_ack_s[0]_i_1 
       (.I0(\stat_reg[0]_0 ),
        .I1(Q),
        .O(\stat_reg[0]_2 ));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(Q),
        .Q(\stat_reg[0]_0 ),
        .R(\<const0> ));
endmodule

module rtc_sys_ctrl
   (rd_rtcscps,
    rd_rtchrmi,
    rctl_snap,
    E,
    bcmdw_0,
    .badr_0_sp_1(badr_0_sn_1),
    \stat_reg[2] ,
    rtc_rtcr,
    Q,
    D,
    \bdatw[13] ,
    \bdatw[12] ,
    \bdatw[9] ,
    bdatr,
    \stat_reg[0] ,
    brdy,
    clk,
    badr,
    rdup_leap_r_0,
    bcmdw,
    bcs_rtcu_n,
    bdatw,
    \rtcscps_reg[14] ,
    \rtcscps_reg[7] ,
    \rtchrmi_reg[13] ,
    \rtchrmi_reg[6] ,
    \rtcmody_reg[12] ,
    \rtcmody_reg[5] ,
    \rtcyear_reg[9] ,
    \bdatr[14] ,
    \bdatr[12] ,
    \bdatr[9] ,
    \bdatr[9]_0 ,
    .bdatr_4_sp_1(bdatr_4_sn_1),
    rdup_leap_r,
    rsys_reg_0,
    bcmdr,
    .bdatr_10_sp_1(bdatr_10_sn_1),
    .bdatr_11_sp_1(bdatr_11_sn_1),
    \bdatr[12]_0 ,
    .bdatr_13_sp_1(bdatr_13_sn_1),
    \rsub_wrt_ack_s_reg[0]_0 ,
    \rtcintc_reg[6]_0 ,
    \rtcintc_reg[2]_0 );
  output rd_rtcscps;
  output rd_rtchrmi;
  output rctl_snap;
  output [0:0]E;
  output bcmdw_0;
  output [0:0]\stat_reg[2] ;
  output rtc_rtcr;
  output [2:0]Q;
  output [14:0]D;
  output [12:0]\bdatw[13] ;
  output [10:0]\bdatw[12] ;
  output [9:0]\bdatw[9] ;
  output [14:0]bdatr;
  input \stat_reg[0] ;
  input brdy;
  input clk;
  input [3:0]badr;
  input rdup_leap_r_0;
  input bcmdw;
  input bcs_rtcu_n;
  input [14:0]bdatw;
  input [6:0]\rtcscps_reg[14] ;
  input [7:0]\rtcscps_reg[7] ;
  input [5:0]\rtchrmi_reg[13] ;
  input [6:0]\rtchrmi_reg[6] ;
  input [4:0]\rtcmody_reg[12] ;
  input [5:0]\rtcmody_reg[5] ;
  input [9:0]\rtcyear_reg[9] ;
  input [9:0]\bdatr[14] ;
  input [10:0]\bdatr[12] ;
  input [9:0]\bdatr[9] ;
  input [7:0]\bdatr[9]_0 ;
  input rdup_leap_r;
  input [2:0]rsys_reg_0;
  input bcmdr;
  input \bdatr[12]_0 ;
  input [0:0]\rsub_wrt_ack_s_reg[0]_0 ;
  input [0:0]\rtcintc_reg[6]_0 ;
  input [2:0]\rtcintc_reg[2]_0 ;
  output badr_0_sn_1;
  input bdatr_4_sn_1;
  input bdatr_10_sn_1;
  input bdatr_11_sn_1;
  input bdatr_13_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [14:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]badr;
  wire badr_0_sn_1;
  wire bcmdr;
  wire bcmdw;
  wire bcmdw_0;
  wire bcs_rtcu_n;
  wire [14:0]bdatr;
  wire \bdatr[0]_INST_0_i_1_n_0 ;
  wire \bdatr[0]_INST_0_i_2_n_0 ;
  wire \bdatr[0]_INST_0_i_3_n_0 ;
  wire [10:0]\bdatr[12] ;
  wire \bdatr[12]_0 ;
  wire [9:0]\bdatr[14] ;
  wire \bdatr[14]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_1_n_0 ;
  wire \bdatr[1]_INST_0_i_2_n_0 ;
  wire \bdatr[1]_INST_0_i_3_n_0 ;
  wire \bdatr[2]_INST_0_i_1_n_0 ;
  wire \bdatr[2]_INST_0_i_2_n_0 ;
  wire \bdatr[3]_INST_0_i_1_n_0 ;
  wire \bdatr[4]_INST_0_i_2_n_0 ;
  wire \bdatr[5]_INST_0_i_1_n_0 ;
  wire \bdatr[5]_INST_0_i_2_n_0 ;
  wire \bdatr[5]_INST_0_i_3_n_0 ;
  wire \bdatr[6]_INST_0_i_1_n_0 ;
  wire \bdatr[7]_INST_0_i_1_n_0 ;
  wire \bdatr[8]_INST_0_i_1_n_0 ;
  wire [9:0]\bdatr[9] ;
  wire [7:0]\bdatr[9]_0 ;
  wire \bdatr[9]_INST_0_i_1_n_0 ;
  wire bdatr_10_sn_1;
  wire bdatr_11_sn_1;
  wire bdatr_13_sn_1;
  wire bdatr_4_sn_1;
  wire [14:0]bdatw;
  wire [10:0]\bdatw[12] ;
  wire [12:0]\bdatw[13] ;
  wire [9:0]\bdatw[9] ;
  wire brdy;
  wire clk;
  wire [5:3]p_0_in;
  wire rctl_mine;
  wire rctl_rtcw;
  wire rctl_sece;
  wire rctl_snap;
  wire rctl_wrt_ack;
  wire rd_rtcctl;
  wire rd_rtcctl_i_1_n_0;
  wire rd_rtchrmi;
  wire rd_rtchrmi_i_1_n_0;
  wire rd_rtcintc;
  wire rd_rtcintc_i_1_n_0;
  wire rd_rtcmody;
  wire rd_rtcmody_i_1_n_0;
  wire rd_rtcscps;
  wire rd_rtcscps_i_1_n_0;
  wire rd_rtcweek;
  wire rd_rtcweek_i_1_n_0;
  wire rd_rtcyear;
  wire rd_rtcyear_i_1_n_0;
  wire rdup_leap_r;
  wire rdup_leap_r_0;
  wire [0:0]rsub_wrt_ack_s;
  wire [0:0]\rsub_wrt_ack_s_reg[0]_0 ;
  wire [2:0]rsys_reg_0;
  wire rtc_rtcr;
  wire \rtcctl[0]_i_1_n_0 ;
  wire \rtcctl[1]_i_2_n_0 ;
  wire \rtcctl[1]_i_3_n_0 ;
  wire \rtcctl[1]_i_4_n_0 ;
  wire [5:0]\rtchrmi_reg[13] ;
  wire [6:0]\rtchrmi_reg[6] ;
  wire \rtcintc[4]_i_1_n_0 ;
  wire \rtcintc[5]_i_1_n_0 ;
  wire \rtcintc[6]_i_2_n_0 ;
  wire \rtcintc[6]_i_4_n_0 ;
  wire [2:0]\rtcintc_reg[2]_0 ;
  wire [0:0]\rtcintc_reg[6]_0 ;
  wire \rtcintc_reg_n_0_[6] ;
  wire [4:0]\rtcmody_reg[12] ;
  wire [5:0]\rtcmody_reg[5] ;
  wire [6:0]\rtcscps_reg[14] ;
  wire [7:0]\rtcscps_reg[7] ;
  wire [9:0]\rtcyear_reg[9] ;
  wire \stat_reg[0] ;
  wire [0:0]\stat_reg[2] ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hB888B8B8)) 
    \bdatr[0]_INST_0 
       (.I0(rctl_snap),
        .I1(rd_rtcctl),
        .I2(\bdatr[0]_INST_0_i_1_n_0 ),
        .I3(\bdatr[0]_INST_0_i_2_n_0 ),
        .I4(\bdatr[0]_INST_0_i_3_n_0 ),
        .O(bdatr[0]));
  LUT6 #(
    .INIT(64'hCCCCF0AACCCCF0FF)) 
    \bdatr[0]_INST_0_i_1 
       (.I0(\bdatr[12] [0]),
        .I1(Q[0]),
        .I2(\bdatr[9] [0]),
        .I3(rd_rtcyear),
        .I4(rd_rtcintc),
        .I5(rd_rtcmody),
        .O(\bdatr[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \bdatr[0]_INST_0_i_2 
       (.I0(rd_rtcmody),
        .I1(rd_rtcintc),
        .I2(rd_rtcyear),
        .I3(rd_rtchrmi),
        .I4(\bdatr[9]_0 [0]),
        .O(\bdatr[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAABFFFBF)) 
    \bdatr[0]_INST_0_i_3 
       (.I0(rd_rtchrmi),
        .I1(rd_rtcweek),
        .I2(rsys_reg_0[0]),
        .I3(rd_rtcscps),
        .I4(\bdatr[14] [0]),
        .O(\bdatr[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0005000400010000)) 
    \bdatr[10]_INST_0 
       (.I0(rd_rtcctl),
        .I1(rd_rtcmody),
        .I2(rd_rtcintc),
        .I3(rd_rtcyear),
        .I4(bdatr_10_sn_1),
        .I5(\bdatr[12] [8]),
        .O(bdatr[10]));
  LUT6 #(
    .INIT(64'h0005000400010000)) 
    \bdatr[11]_INST_0 
       (.I0(rd_rtcctl),
        .I1(rd_rtcmody),
        .I2(rd_rtcintc),
        .I3(rd_rtcyear),
        .I4(bdatr_11_sn_1),
        .I5(\bdatr[12] [9]),
        .O(bdatr[11]));
  LUT6 #(
    .INIT(64'h0005000400010000)) 
    \bdatr[12]_INST_0 
       (.I0(rd_rtcctl),
        .I1(rd_rtcmody),
        .I2(rd_rtcintc),
        .I3(rd_rtcyear),
        .I4(\bdatr[12]_0 ),
        .I5(\bdatr[12] [10]),
        .O(bdatr[12]));
  LUT5 #(
    .INIT(32'h05010500)) 
    \bdatr[13]_INST_0 
       (.I0(rd_rtcctl),
        .I1(rd_rtcmody),
        .I2(rd_rtcintc),
        .I3(rd_rtcyear),
        .I4(bdatr_13_sn_1),
        .O(bdatr[13]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \bdatr[14]_INST_0 
       (.I0(\bdatr[14]_INST_0_i_1_n_0 ),
        .I1(rd_rtcscps),
        .I2(rd_rtchrmi),
        .I3(\bdatr[14] [9]),
        .I4(rd_rtcctl),
        .O(bdatr[14]));
  LUT3 #(
    .INIT(8'h01)) 
    \bdatr[14]_INST_0_i_1 
       (.I0(rd_rtcyear),
        .I1(rd_rtcintc),
        .I2(rd_rtcmody),
        .O(\bdatr[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB888B8B8)) 
    \bdatr[1]_INST_0 
       (.I0(rctl_rtcw),
        .I1(rd_rtcctl),
        .I2(\bdatr[1]_INST_0_i_1_n_0 ),
        .I3(\bdatr[1]_INST_0_i_2_n_0 ),
        .I4(\bdatr[1]_INST_0_i_3_n_0 ),
        .O(bdatr[1]));
  LUT6 #(
    .INIT(64'hCFC0CACACFC0CFCF)) 
    \bdatr[1]_INST_0_i_1 
       (.I0(\bdatr[12] [1]),
        .I1(Q[1]),
        .I2(rd_rtcintc),
        .I3(\bdatr[9] [1]),
        .I4(rd_rtcyear),
        .I5(rd_rtcmody),
        .O(\bdatr[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \bdatr[1]_INST_0_i_2 
       (.I0(rd_rtcmody),
        .I1(rd_rtcintc),
        .I2(rd_rtcyear),
        .I3(rd_rtchrmi),
        .I4(\bdatr[9]_0 [1]),
        .O(\bdatr[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAABFFFBF)) 
    \bdatr[1]_INST_0_i_3 
       (.I0(rd_rtchrmi),
        .I1(rd_rtcweek),
        .I2(rsys_reg_0[1]),
        .I3(rd_rtcscps),
        .I4(\bdatr[14] [1]),
        .O(\bdatr[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A222AAAA)) 
    \bdatr[2]_INST_0 
       (.I0(\bdatr[2]_INST_0_i_1_n_0 ),
        .I1(\bdatr[2]_INST_0_i_2_n_0 ),
        .I2(\bdatr[9]_0 [2]),
        .I3(rd_rtchrmi),
        .I4(\bdatr[14]_INST_0_i_1_n_0 ),
        .I5(rd_rtcctl),
        .O(bdatr[2]));
  LUT6 #(
    .INIT(64'hCFC0CACACFC0CFCF)) 
    \bdatr[2]_INST_0_i_1 
       (.I0(\bdatr[12] [2]),
        .I1(Q[2]),
        .I2(rd_rtcintc),
        .I3(\bdatr[9] [2]),
        .I4(rd_rtcyear),
        .I5(rd_rtcmody),
        .O(\bdatr[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAABFFFBF)) 
    \bdatr[2]_INST_0_i_2 
       (.I0(rd_rtchrmi),
        .I1(rd_rtcweek),
        .I2(rsys_reg_0[2]),
        .I3(rd_rtcscps),
        .I4(\bdatr[14] [2]),
        .O(\bdatr[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DFD5D5D5)) 
    \bdatr[3]_INST_0 
       (.I0(\bdatr[14]_INST_0_i_1_n_0 ),
        .I1(\bdatr[9]_0 [3]),
        .I2(rd_rtchrmi),
        .I3(\bdatr[14] [3]),
        .I4(rd_rtcscps),
        .I5(\bdatr[3]_INST_0_i_1_n_0 ),
        .O(bdatr[3]));
  LUT6 #(
    .INIT(64'hFAFBFAFAFEFFFEFE)) 
    \bdatr[3]_INST_0_i_1 
       (.I0(rd_rtcctl),
        .I1(rd_rtcyear),
        .I2(rd_rtcintc),
        .I3(\bdatr[12] [3]),
        .I4(rd_rtcmody),
        .I5(\bdatr[9] [3]),
        .O(\bdatr[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333333033333322)) 
    \bdatr[4]_INST_0 
       (.I0(bdatr_4_sn_1),
        .I1(\bdatr[4]_INST_0_i_2_n_0 ),
        .I2(\bdatr[12] [4]),
        .I3(rd_rtcintc),
        .I4(rd_rtcyear),
        .I5(rd_rtcmody),
        .O(bdatr[4]));
  LUT5 #(
    .INIT(32'hFFFF02F2)) 
    \bdatr[4]_INST_0_i_2 
       (.I0(rd_rtcyear),
        .I1(\bdatr[9] [4]),
        .I2(rd_rtcintc),
        .I3(rctl_sece),
        .I4(rd_rtcctl),
        .O(\bdatr[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888FFF888888888)) 
    \bdatr[5]_INST_0 
       (.I0(rdup_leap_r),
        .I1(rd_rtcctl),
        .I2(\bdatr[5]_INST_0_i_1_n_0 ),
        .I3(\bdatr[12] [5]),
        .I4(\bdatr[5]_INST_0_i_2_n_0 ),
        .I5(\bdatr[5]_INST_0_i_3_n_0 ),
        .O(bdatr[5]));
  LUT3 #(
    .INIT(8'hFD)) 
    \bdatr[5]_INST_0_i_1 
       (.I0(rd_rtcmody),
        .I1(rd_rtcyear),
        .I2(rd_rtcintc),
        .O(\bdatr[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF02F2)) 
    \bdatr[5]_INST_0_i_2 
       (.I0(rd_rtcyear),
        .I1(\bdatr[9] [5]),
        .I2(rd_rtcintc),
        .I3(rctl_mine),
        .I4(rd_rtcctl),
        .O(\bdatr[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF808FFFF)) 
    \bdatr[5]_INST_0_i_3 
       (.I0(rd_rtcscps),
        .I1(\bdatr[14] [4]),
        .I2(rd_rtchrmi),
        .I3(\bdatr[9]_0 [4]),
        .I4(\bdatr[14]_INST_0_i_1_n_0 ),
        .O(\bdatr[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5455544454445444)) 
    \bdatr[6]_INST_0 
       (.I0(rd_rtcctl),
        .I1(\bdatr[6]_INST_0_i_1_n_0 ),
        .I2(\rtcintc_reg_n_0_[6] ),
        .I3(rd_rtcintc),
        .I4(rd_rtcyear),
        .I5(\bdatr[9] [6]),
        .O(bdatr[6]));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \bdatr[6]_INST_0_i_1 
       (.I0(\bdatr[14]_INST_0_i_1_n_0 ),
        .I1(rd_rtcscps),
        .I2(\bdatr[14] [5]),
        .I3(rd_rtchrmi),
        .I4(\bdatr[9]_0 [5]),
        .O(\bdatr[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555004000400040)) 
    \bdatr[7]_INST_0 
       (.I0(rd_rtcctl),
        .I1(\bdatr[9] [7]),
        .I2(rd_rtcyear),
        .I3(rd_rtcintc),
        .I4(\bdatr[14] [6]),
        .I5(\bdatr[7]_INST_0_i_1_n_0 ),
        .O(bdatr[7]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \bdatr[7]_INST_0_i_1 
       (.I0(rd_rtchrmi),
        .I1(rd_rtcscps),
        .I2(rd_rtcmody),
        .I3(rd_rtcintc),
        .I4(rd_rtcyear),
        .O(\bdatr[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DFD5D5D5)) 
    \bdatr[8]_INST_0 
       (.I0(\bdatr[14]_INST_0_i_1_n_0 ),
        .I1(\bdatr[9]_0 [6]),
        .I2(rd_rtchrmi),
        .I3(\bdatr[14] [7]),
        .I4(rd_rtcscps),
        .I5(\bdatr[8]_INST_0_i_1_n_0 ),
        .O(bdatr[8]));
  LUT6 #(
    .INIT(64'hFAFBFAFAFEFFFEFE)) 
    \bdatr[8]_INST_0_i_1 
       (.I0(rd_rtcctl),
        .I1(rd_rtcyear),
        .I2(rd_rtcintc),
        .I3(\bdatr[12] [6]),
        .I4(rd_rtcmody),
        .I5(\bdatr[9] [8]),
        .O(\bdatr[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DFD5D5D5)) 
    \bdatr[9]_INST_0 
       (.I0(\bdatr[14]_INST_0_i_1_n_0 ),
        .I1(\bdatr[9]_0 [7]),
        .I2(rd_rtchrmi),
        .I3(\bdatr[14] [8]),
        .I4(rd_rtcscps),
        .I5(\bdatr[9]_INST_0_i_1_n_0 ),
        .O(bdatr[9]));
  LUT6 #(
    .INIT(64'hFAFBFAFAFEFFFEFE)) 
    \bdatr[9]_INST_0_i_1 
       (.I0(rd_rtcctl),
        .I1(rd_rtcyear),
        .I2(rd_rtcintc),
        .I3(\bdatr[12] [7]),
        .I4(rd_rtcmody),
        .I5(\bdatr[9] [9]),
        .O(\bdatr[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    rd_rtcctl_i_1
       (.I0(badr[1]),
        .I1(badr[0]),
        .I2(badr[3]),
        .I3(badr[2]),
        .I4(bcs_rtcu_n),
        .I5(bcmdr),
        .O(rd_rtcctl_i_1_n_0));
  FDRE rd_rtcctl_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_rtcctl_i_1_n_0),
        .Q(rd_rtcctl),
        .R(\stat_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    rd_rtchrmi_i_1
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(bcs_rtcu_n),
        .I5(bcmdr),
        .O(rd_rtchrmi_i_1_n_0));
  FDRE rd_rtchrmi_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_rtchrmi_i_1_n_0),
        .Q(rd_rtchrmi),
        .R(\stat_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    rd_rtcintc_i_1
       (.I0(badr[0]),
        .I1(badr[1]),
        .I2(badr[3]),
        .I3(badr[2]),
        .I4(bcs_rtcu_n),
        .I5(bcmdr),
        .O(rd_rtcintc_i_1_n_0));
  FDRE rd_rtcintc_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_rtcintc_i_1_n_0),
        .Q(rd_rtcintc),
        .R(\stat_reg[0] ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    rd_rtcmody_i_1
       (.I0(badr[3]),
        .I1(badr[2]),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(bcs_rtcu_n),
        .I5(bcmdr),
        .O(rd_rtcmody_i_1_n_0));
  FDRE rd_rtcmody_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_rtcmody_i_1_n_0),
        .Q(rd_rtcmody),
        .R(\stat_reg[0] ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    rd_rtcscps_i_1
       (.I0(badr[2]),
        .I1(badr[3]),
        .I2(badr[0]),
        .I3(badr[1]),
        .I4(bcs_rtcu_n),
        .I5(bcmdr),
        .O(rd_rtcscps_i_1_n_0));
  FDRE rd_rtcscps_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_rtcscps_i_1_n_0),
        .Q(rd_rtcscps),
        .R(\stat_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    rd_rtcweek_i_1
       (.I0(badr[3]),
        .I1(badr[2]),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(bcs_rtcu_n),
        .I5(bcmdr),
        .O(rd_rtcweek_i_1_n_0));
  FDRE rd_rtcweek_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_rtcweek_i_1_n_0),
        .Q(rd_rtcweek),
        .R(\stat_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    rd_rtcyear_i_1
       (.I0(badr[3]),
        .I1(badr[2]),
        .I2(badr[1]),
        .I3(badr[0]),
        .I4(bcs_rtcu_n),
        .I5(bcmdr),
        .O(rd_rtcyear_i_1_n_0));
  FDRE rd_rtcyear_reg
       (.C(clk),
        .CE(brdy),
        .D(rd_rtcyear_i_1_n_0),
        .Q(rd_rtcyear),
        .R(\stat_reg[0] ));
  rtc_sys_fsm rfsm
       (.Q(rctl_wrt_ack),
        .clk(clk),
        .rctl_rtcw(rctl_rtcw),
        .\stat_reg[0]_0 (\stat_reg[0] ),
        .\stat_reg[2]_0 (p_0_in),
        .\stat_reg[2]_1 (\stat_reg[2] ),
        .\stat_reg[2]_2 (rctl_snap));
  FDRE \rsub_wrt_ack_s_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rsub_wrt_ack_s_reg[0]_0 ),
        .Q(rsub_wrt_ack_s),
        .R(\<const0> ));
  FDRE \rsub_wrt_ack_s_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(rsub_wrt_ack_s),
        .Q(rctl_wrt_ack),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    rtc_rtcr_INST_0
       (.I0(Q[2]),
        .I1(\rtcintc_reg_n_0_[6] ),
        .I2(rctl_mine),
        .I3(Q[1]),
        .I4(rctl_sece),
        .I5(Q[0]),
        .O(rtc_rtcr));
  LUT6 #(
    .INIT(64'hBBBB8BBB88888888)) 
    \rtcctl[0]_i_1 
       (.I0(bdatw[0]),
        .I1(\rtcctl[1]_i_3_n_0 ),
        .I2(p_0_in[3]),
        .I3(p_0_in[4]),
        .I4(p_0_in[5]),
        .I5(rctl_snap),
        .O(\rtcctl[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8BBB88888888)) 
    \rtcctl[1]_i_2 
       (.I0(bdatw[1]),
        .I1(\rtcctl[1]_i_3_n_0 ),
        .I2(p_0_in[3]),
        .I3(p_0_in[4]),
        .I4(p_0_in[5]),
        .I5(rctl_rtcw),
        .O(\rtcctl[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \rtcctl[1]_i_3 
       (.I0(\rtcctl[1]_i_4_n_0 ),
        .I1(badr[3]),
        .I2(badr[2]),
        .I3(bcmdw),
        .I4(bcs_rtcu_n),
        .I5(brdy),
        .O(\rtcctl[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rtcctl[1]_i_4 
       (.I0(badr[1]),
        .I1(badr[0]),
        .O(\rtcctl[1]_i_4_n_0 ));
  FDRE \rtcctl_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rtcctl[0]_i_1_n_0 ),
        .Q(rctl_snap),
        .R(\stat_reg[0] ));
  FDRE \rtcctl_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rtcctl[1]_i_2_n_0 ),
        .Q(rctl_rtcw),
        .R(\stat_reg[0] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtchrmi[0]_i_1 
       (.I0(bdatw[0]),
        .I1(rctl_snap),
        .I2(\rtchrmi_reg[6] [0]),
        .O(\bdatw[13] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtchrmi[10]_i_1 
       (.I0(bdatw[10]),
        .I1(rctl_snap),
        .I2(\rtchrmi_reg[13] [2]),
        .O(\bdatw[13] [9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtchrmi[11]_i_1 
       (.I0(bdatw[11]),
        .I1(rctl_snap),
        .I2(\rtchrmi_reg[13] [3]),
        .O(\bdatw[13] [10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtchrmi[12]_i_1 
       (.I0(bdatw[12]),
        .I1(rctl_snap),
        .I2(\rtchrmi_reg[13] [4]),
        .O(\bdatw[13] [11]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    \rtchrmi[13]_i_1 
       (.I0(bcmdw_0),
        .I1(badr[0]),
        .I2(badr[1]),
        .I3(badr[3]),
        .I4(badr[2]),
        .I5(rdup_leap_r_0),
        .O(E));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtchrmi[13]_i_2 
       (.I0(bdatw[13]),
        .I1(rctl_snap),
        .I2(\rtchrmi_reg[13] [5]),
        .O(\bdatw[13] [12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtchrmi[1]_i_1 
       (.I0(bdatw[1]),
        .I1(rctl_snap),
        .I2(\rtchrmi_reg[6] [1]),
        .O(\bdatw[13] [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtchrmi[2]_i_1 
       (.I0(bdatw[2]),
        .I1(rctl_snap),
        .I2(\rtchrmi_reg[6] [2]),
        .O(\bdatw[13] [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtchrmi[3]_i_1 
       (.I0(bdatw[3]),
        .I1(rctl_snap),
        .I2(\rtchrmi_reg[6] [3]),
        .O(\bdatw[13] [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtchrmi[4]_i_1 
       (.I0(bdatw[4]),
        .I1(rctl_snap),
        .I2(\rtchrmi_reg[6] [4]),
        .O(\bdatw[13] [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtchrmi[5]_i_1 
       (.I0(bdatw[5]),
        .I1(rctl_snap),
        .I2(\rtchrmi_reg[6] [5]),
        .O(\bdatw[13] [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtchrmi[6]_i_1 
       (.I0(bdatw[6]),
        .I1(rctl_snap),
        .I2(\rtchrmi_reg[6] [6]),
        .O(\bdatw[13] [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtchrmi[8]_i_1 
       (.I0(bdatw[8]),
        .I1(rctl_snap),
        .I2(\rtchrmi_reg[13] [0]),
        .O(\bdatw[13] [7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtchrmi[9]_i_1 
       (.I0(bdatw[9]),
        .I1(rctl_snap),
        .I2(\rtchrmi_reg[13] [1]),
        .O(\bdatw[13] [8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcintc[4]_i_1 
       (.I0(bdatw[4]),
        .I1(badr_0_sn_1),
        .I2(rctl_sece),
        .O(\rtcintc[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcintc[5]_i_1 
       (.I0(bdatw[5]),
        .I1(badr_0_sn_1),
        .I2(rctl_mine),
        .O(\rtcintc[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcintc[6]_i_2 
       (.I0(bdatw[6]),
        .I1(badr_0_sn_1),
        .I2(\rtcintc_reg_n_0_[6] ),
        .O(\rtcintc[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \rtcintc[6]_i_3 
       (.I0(badr[0]),
        .I1(badr[1]),
        .I2(badr[3]),
        .I3(badr[2]),
        .I4(\rtcintc[6]_i_4_n_0 ),
        .O(badr_0_sn_1));
  LUT3 #(
    .INIT(8'hDF)) 
    \rtcintc[6]_i_4 
       (.I0(brdy),
        .I1(bcs_rtcu_n),
        .I2(bcmdw),
        .O(\rtcintc[6]_i_4_n_0 ));
  FDRE \rtcintc_reg[0] 
       (.C(clk),
        .CE(\rtcintc_reg[6]_0 ),
        .D(\rtcintc_reg[2]_0 [0]),
        .Q(Q[0]),
        .R(\stat_reg[0] ));
  FDRE \rtcintc_reg[1] 
       (.C(clk),
        .CE(\rtcintc_reg[6]_0 ),
        .D(\rtcintc_reg[2]_0 [1]),
        .Q(Q[1]),
        .R(\stat_reg[0] ));
  FDRE \rtcintc_reg[2] 
       (.C(clk),
        .CE(\rtcintc_reg[6]_0 ),
        .D(\rtcintc_reg[2]_0 [2]),
        .Q(Q[2]),
        .R(\stat_reg[0] ));
  FDRE \rtcintc_reg[4] 
       (.C(clk),
        .CE(\rtcintc_reg[6]_0 ),
        .D(\rtcintc[4]_i_1_n_0 ),
        .Q(rctl_sece),
        .R(\stat_reg[0] ));
  FDRE \rtcintc_reg[5] 
       (.C(clk),
        .CE(\rtcintc_reg[6]_0 ),
        .D(\rtcintc[5]_i_1_n_0 ),
        .Q(rctl_mine),
        .R(\stat_reg[0] ));
  FDRE \rtcintc_reg[6] 
       (.C(clk),
        .CE(\rtcintc_reg[6]_0 ),
        .D(\rtcintc[6]_i_2_n_0 ),
        .Q(\rtcintc_reg_n_0_[6] ),
        .R(\stat_reg[0] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcmody[0]_i_1 
       (.I0(bdatw[0]),
        .I1(rctl_snap),
        .I2(\rtcmody_reg[5] [0]),
        .O(\bdatw[12] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcmody[10]_i_1 
       (.I0(bdatw[10]),
        .I1(rctl_snap),
        .I2(\rtcmody_reg[12] [2]),
        .O(\bdatw[12] [8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcmody[11]_i_1 
       (.I0(bdatw[11]),
        .I1(rctl_snap),
        .I2(\rtcmody_reg[12] [3]),
        .O(\bdatw[12] [9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcmody[12]_i_2 
       (.I0(bdatw[12]),
        .I1(rctl_snap),
        .I2(\rtcmody_reg[12] [4]),
        .O(\bdatw[12] [10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcmody[1]_i_1 
       (.I0(bdatw[1]),
        .I1(rctl_snap),
        .I2(\rtcmody_reg[5] [1]),
        .O(\bdatw[12] [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcmody[2]_i_1 
       (.I0(bdatw[2]),
        .I1(rctl_snap),
        .I2(\rtcmody_reg[5] [2]),
        .O(\bdatw[12] [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcmody[3]_i_1 
       (.I0(bdatw[3]),
        .I1(rctl_snap),
        .I2(\rtcmody_reg[5] [3]),
        .O(\bdatw[12] [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcmody[4]_i_1 
       (.I0(bdatw[4]),
        .I1(rctl_snap),
        .I2(\rtcmody_reg[5] [4]),
        .O(\bdatw[12] [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcmody[5]_i_1 
       (.I0(bdatw[5]),
        .I1(rctl_snap),
        .I2(\rtcmody_reg[5] [5]),
        .O(\bdatw[12] [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcmody[8]_i_1 
       (.I0(bdatw[8]),
        .I1(rctl_snap),
        .I2(\rtcmody_reg[12] [0]),
        .O(\bdatw[12] [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcmody[9]_i_1 
       (.I0(bdatw[9]),
        .I1(rctl_snap),
        .I2(\rtcmody_reg[12] [1]),
        .O(\bdatw[12] [7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcscps[0]_i_1 
       (.I0(bdatw[0]),
        .I1(rctl_snap),
        .I2(\rtcscps_reg[7] [0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcscps[10]_i_1 
       (.I0(bdatw[10]),
        .I1(rctl_snap),
        .I2(\rtcscps_reg[14] [2]),
        .O(D[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcscps[11]_i_1 
       (.I0(bdatw[11]),
        .I1(rctl_snap),
        .I2(\rtcscps_reg[14] [3]),
        .O(D[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcscps[12]_i_1 
       (.I0(bdatw[12]),
        .I1(rctl_snap),
        .I2(\rtcscps_reg[14] [4]),
        .O(D[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcscps[13]_i_1 
       (.I0(bdatw[13]),
        .I1(rctl_snap),
        .I2(\rtcscps_reg[14] [5]),
        .O(D[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcscps[14]_i_2 
       (.I0(bdatw[14]),
        .I1(rctl_snap),
        .I2(\rtcscps_reg[14] [6]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \rtcscps[14]_i_4 
       (.I0(bcmdw),
        .I1(bcs_rtcu_n),
        .I2(brdy),
        .I3(rctl_snap),
        .I4(rctl_rtcw),
        .O(bcmdw_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcscps[1]_i_1 
       (.I0(bdatw[1]),
        .I1(rctl_snap),
        .I2(\rtcscps_reg[7] [1]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcscps[2]_i_1 
       (.I0(bdatw[2]),
        .I1(rctl_snap),
        .I2(\rtcscps_reg[7] [2]),
        .O(D[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcscps[3]_i_1 
       (.I0(bdatw[3]),
        .I1(rctl_snap),
        .I2(\rtcscps_reg[7] [3]),
        .O(D[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcscps[4]_i_1 
       (.I0(bdatw[4]),
        .I1(rctl_snap),
        .I2(\rtcscps_reg[7] [4]),
        .O(D[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcscps[5]_i_1 
       (.I0(bdatw[5]),
        .I1(rctl_snap),
        .I2(\rtcscps_reg[7] [5]),
        .O(D[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcscps[6]_i_1 
       (.I0(bdatw[6]),
        .I1(rctl_snap),
        .I2(\rtcscps_reg[7] [6]),
        .O(D[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcscps[7]_i_1 
       (.I0(bdatw[7]),
        .I1(rctl_snap),
        .I2(\rtcscps_reg[7] [7]),
        .O(D[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcscps[8]_i_1 
       (.I0(bdatw[8]),
        .I1(rctl_snap),
        .I2(\rtcscps_reg[14] [0]),
        .O(D[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcscps[9]_i_1 
       (.I0(bdatw[9]),
        .I1(rctl_snap),
        .I2(\rtcscps_reg[14] [1]),
        .O(D[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcyear[0]_i_1 
       (.I0(bdatw[0]),
        .I1(rctl_snap),
        .I2(\rtcyear_reg[9] [0]),
        .O(\bdatw[9] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcyear[1]_i_1 
       (.I0(bdatw[1]),
        .I1(rctl_snap),
        .I2(\rtcyear_reg[9] [1]),
        .O(\bdatw[9] [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcyear[2]_i_1 
       (.I0(bdatw[2]),
        .I1(rctl_snap),
        .I2(\rtcyear_reg[9] [2]),
        .O(\bdatw[9] [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcyear[3]_i_1 
       (.I0(bdatw[3]),
        .I1(rctl_snap),
        .I2(\rtcyear_reg[9] [3]),
        .O(\bdatw[9] [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcyear[4]_i_1 
       (.I0(bdatw[4]),
        .I1(rctl_snap),
        .I2(\rtcyear_reg[9] [4]),
        .O(\bdatw[9] [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcyear[5]_i_1 
       (.I0(bdatw[5]),
        .I1(rctl_snap),
        .I2(\rtcyear_reg[9] [5]),
        .O(\bdatw[9] [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcyear[6]_i_1 
       (.I0(bdatw[6]),
        .I1(rctl_snap),
        .I2(\rtcyear_reg[9] [6]),
        .O(\bdatw[9] [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcyear[7]_i_1 
       (.I0(bdatw[7]),
        .I1(rctl_snap),
        .I2(\rtcyear_reg[9] [7]),
        .O(\bdatw[9] [7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcyear[8]_i_1 
       (.I0(bdatw[8]),
        .I1(rctl_snap),
        .I2(\rtcyear_reg[9] [8]),
        .O(\bdatw[9] [8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtcyear[9]_i_2 
       (.I0(bdatw[9]),
        .I1(rctl_snap),
        .I2(\rtcyear_reg[9] [9]),
        .O(\bdatw[9] [9]));
endmodule

module rtc_sys_dupli
   (rdup_leap_r,
    SR,
    \bdatw[2] ,
    rdup_set_secf_r_reg_0,
    \rtchrmi_reg[13]_0 ,
    \rtchrmi_reg[13]_1 ,
    \rtcscps_reg[14]_0 ,
    \rtchrmi_reg[12]_0 ,
    \rtchrmi_reg[11]_0 ,
    \rtchrmi_reg[10]_0 ,
    \rtchrmi_reg[4]_0 ,
    rsys_reg_0,
    \rtcmody_reg[5]_0 ,
    \rtcyear_reg[9]_0 ,
    rdup_leap_r_reg_0,
    clk,
    bdatw,
    \rtcintc_reg[0] ,
    Q,
    rst_n,
    rd_rtchrmi,
    rd_rtcscps,
    rdup_set_secf_r_reg_1,
    rdup_set_minf_r_reg_0,
    rdup_set_houf_r_reg_0,
    rcnt_synce,
    rctl_snap,
    \rtcweek_reg[2]_0 ,
    \rtcweek_reg[2]_1 ,
    E,
    D,
    \rtchrmi_reg[13]_2 ,
    \rtchrmi_reg[13]_3 ,
    \rtcmody_reg[12]_0 ,
    \rtcmody_reg[12]_1 ,
    \rtcyear_reg[9]_1 ,
    \rtcyear_reg[9]_2 );
  output rdup_leap_r;
  output [0:0]SR;
  output [2:0]\bdatw[2] ;
  output [0:0]rdup_set_secf_r_reg_0;
  output \rtchrmi_reg[13]_0 ;
  output [12:0]\rtchrmi_reg[13]_1 ;
  output [14:0]\rtcscps_reg[14]_0 ;
  output \rtchrmi_reg[12]_0 ;
  output \rtchrmi_reg[11]_0 ;
  output \rtchrmi_reg[10]_0 ;
  output \rtchrmi_reg[4]_0 ;
  output [7:0]rsys_reg_0;
  output [5:0]\rtcmody_reg[5]_0 ;
  output [9:0]\rtcyear_reg[9]_0 ;
  input rdup_leap_r_reg_0;
  input clk;
  input [2:0]bdatw;
  input \rtcintc_reg[0] ;
  input [2:0]Q;
  input rst_n;
  input rd_rtchrmi;
  input rd_rtcscps;
  input [6:0]rdup_set_secf_r_reg_1;
  input [6:0]rdup_set_minf_r_reg_0;
  input [5:0]rdup_set_houf_r_reg_0;
  input rcnt_synce;
  input rctl_snap;
  input [2:0]\rtcweek_reg[2]_0 ;
  input \rtcweek_reg[2]_1 ;
  input [0:0]E;
  input [14:0]D;
  input [0:0]\rtchrmi_reg[13]_2 ;
  input [12:0]\rtchrmi_reg[13]_3 ;
  input [0:0]\rtcmody_reg[12]_0 ;
  input [10:0]\rtcmody_reg[12]_1 ;
  input [0:0]\rtcyear_reg[9]_1 ;
  input [9:0]\rtcyear_reg[9]_2 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [14:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [2:0]bdatw;
  wire [2:0]\bdatw[2] ;
  wire clk;
  wire rcnt_synce;
  wire rctl_snap;
  wire rd_rtchrmi;
  wire rd_rtcscps;
  wire rdup_leap_r;
  wire rdup_leap_r_reg_0;
  wire rdup_set_houf;
  wire rdup_set_houf_r_i_1_n_0;
  wire rdup_set_houf_r_i_2_n_0;
  wire rdup_set_houf_r_i_3_n_0;
  wire [5:0]rdup_set_houf_r_reg_0;
  wire rdup_set_minf;
  wire rdup_set_minf_r_i_1_n_0;
  wire rdup_set_minf_r_i_2_n_0;
  wire rdup_set_minf_r_i_3_n_0;
  wire rdup_set_minf_r_i_4_n_0;
  wire [6:0]rdup_set_minf_r_reg_0;
  wire rdup_set_secf;
  wire rdup_set_secf_r_i_1_n_0;
  wire rdup_set_secf_r_i_2_n_0;
  wire rdup_set_secf_r_i_3_n_0;
  wire rdup_set_secf_r_i_4_n_0;
  wire [0:0]rdup_set_secf_r_reg_0;
  wire [6:0]rdup_set_secf_r_reg_1;
  wire rst_n;
  wire [7:0]rsys_reg_0;
  wire \rtchrmi_reg[10]_0 ;
  wire \rtchrmi_reg[11]_0 ;
  wire \rtchrmi_reg[12]_0 ;
  wire \rtchrmi_reg[13]_0 ;
  wire [12:0]\rtchrmi_reg[13]_1 ;
  wire [0:0]\rtchrmi_reg[13]_2 ;
  wire [12:0]\rtchrmi_reg[13]_3 ;
  wire \rtchrmi_reg[4]_0 ;
  wire \rtcintc_reg[0] ;
  wire [0:0]\rtcmody_reg[12]_0 ;
  wire [10:0]\rtcmody_reg[12]_1 ;
  wire [5:0]\rtcmody_reg[5]_0 ;
  wire [14:0]\rtcscps_reg[14]_0 ;
  wire \rtcweek[0]_i_1_n_0 ;
  wire \rtcweek[1]_i_1_n_0 ;
  wire \rtcweek[2]_i_1_n_0 ;
  wire [2:0]\rtcweek_reg[2]_0 ;
  wire \rtcweek_reg[2]_1 ;
  wire [9:0]\rtcyear_reg[9]_0 ;
  wire [0:0]\rtcyear_reg[9]_1 ;
  wire [9:0]\rtcyear_reg[9]_2 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[10]_INST_0_i_1 
       (.I0(\rtchrmi_reg[13]_1 [9]),
        .I1(rd_rtchrmi),
        .I2(\rtcscps_reg[14]_0 [10]),
        .I3(rd_rtcscps),
        .O(\rtchrmi_reg[10]_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[11]_INST_0_i_1 
       (.I0(\rtchrmi_reg[13]_1 [10]),
        .I1(rd_rtchrmi),
        .I2(\rtcscps_reg[14]_0 [11]),
        .I3(rd_rtcscps),
        .O(\rtchrmi_reg[11]_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[12]_INST_0_i_1 
       (.I0(\rtchrmi_reg[13]_1 [11]),
        .I1(rd_rtchrmi),
        .I2(\rtcscps_reg[14]_0 [12]),
        .I3(rd_rtcscps),
        .O(\rtchrmi_reg[12]_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[13]_INST_0_i_1 
       (.I0(\rtchrmi_reg[13]_1 [12]),
        .I1(rd_rtchrmi),
        .I2(\rtcscps_reg[14]_0 [13]),
        .I3(rd_rtcscps),
        .O(\rtchrmi_reg[13]_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \bdatr[4]_INST_0_i_1 
       (.I0(\rtchrmi_reg[13]_1 [4]),
        .I1(rd_rtchrmi),
        .I2(\rtcscps_reg[14]_0 [4]),
        .I3(rd_rtcscps),
        .O(\rtchrmi_reg[4]_0 ));
  FDSE rdup_leap_r_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rdup_leap_r_reg_0),
        .Q(rdup_leap_r),
        .S(SR));
  LUT5 #(
    .INIT(32'h00E00000)) 
    rdup_set_houf_r_i_1
       (.I0(rdup_set_houf_r_i_2_n_0),
        .I1(rdup_set_houf_r_i_3_n_0),
        .I2(rcnt_synce),
        .I3(rctl_snap),
        .I4(rst_n),
        .O(rdup_set_houf_r_i_1_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    rdup_set_houf_r_i_2
       (.I0(\rtchrmi_reg[13]_1 [10]),
        .I1(rdup_set_houf_r_reg_0[3]),
        .I2(rdup_set_houf_r_reg_0[4]),
        .I3(\rtchrmi_reg[13]_1 [11]),
        .I4(rdup_set_houf_r_reg_0[5]),
        .I5(\rtchrmi_reg[13]_1 [12]),
        .O(rdup_set_houf_r_i_2_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    rdup_set_houf_r_i_3
       (.I0(\rtchrmi_reg[13]_1 [7]),
        .I1(rdup_set_houf_r_reg_0[0]),
        .I2(rdup_set_houf_r_reg_0[1]),
        .I3(\rtchrmi_reg[13]_1 [8]),
        .I4(rdup_set_houf_r_reg_0[2]),
        .I5(\rtchrmi_reg[13]_1 [9]),
        .O(rdup_set_houf_r_i_3_n_0));
  FDRE rdup_set_houf_r_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rdup_set_houf_r_i_1_n_0),
        .Q(rdup_set_houf),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000FE0000000000)) 
    rdup_set_minf_r_i_1
       (.I0(rdup_set_minf_r_i_2_n_0),
        .I1(rdup_set_minf_r_i_3_n_0),
        .I2(rdup_set_minf_r_i_4_n_0),
        .I3(rcnt_synce),
        .I4(rctl_snap),
        .I5(rst_n),
        .O(rdup_set_minf_r_i_1_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    rdup_set_minf_r_i_2
       (.I0(\rtchrmi_reg[13]_1 [2]),
        .I1(rdup_set_minf_r_reg_0[2]),
        .I2(\rtchrmi_reg[13]_1 [6]),
        .I3(rdup_set_minf_r_reg_0[6]),
        .O(rdup_set_minf_r_i_2_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    rdup_set_minf_r_i_3
       (.I0(\rtchrmi_reg[13]_1 [4]),
        .I1(rdup_set_minf_r_reg_0[4]),
        .I2(\rtchrmi_reg[13]_1 [5]),
        .I3(rdup_set_minf_r_reg_0[5]),
        .O(rdup_set_minf_r_i_3_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    rdup_set_minf_r_i_4
       (.I0(\rtchrmi_reg[13]_1 [3]),
        .I1(rdup_set_minf_r_reg_0[3]),
        .I2(rdup_set_minf_r_reg_0[0]),
        .I3(\rtchrmi_reg[13]_1 [0]),
        .I4(rdup_set_minf_r_reg_0[1]),
        .I5(\rtchrmi_reg[13]_1 [1]),
        .O(rdup_set_minf_r_i_4_n_0));
  FDRE rdup_set_minf_r_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rdup_set_minf_r_i_1_n_0),
        .Q(rdup_set_minf),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000FE0000000000)) 
    rdup_set_secf_r_i_1
       (.I0(rdup_set_secf_r_i_2_n_0),
        .I1(rdup_set_secf_r_i_3_n_0),
        .I2(rdup_set_secf_r_i_4_n_0),
        .I3(rcnt_synce),
        .I4(rctl_snap),
        .I5(rst_n),
        .O(rdup_set_secf_r_i_1_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    rdup_set_secf_r_i_2
       (.I0(\rtcscps_reg[14]_0 [12]),
        .I1(rdup_set_secf_r_reg_1[4]),
        .I2(\rtcscps_reg[14]_0 [13]),
        .I3(rdup_set_secf_r_reg_1[5]),
        .O(rdup_set_secf_r_i_2_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    rdup_set_secf_r_i_3
       (.I0(\rtcscps_reg[14]_0 [14]),
        .I1(rdup_set_secf_r_reg_1[6]),
        .I2(\rtcscps_reg[14]_0 [9]),
        .I3(rdup_set_secf_r_reg_1[1]),
        .O(rdup_set_secf_r_i_3_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    rdup_set_secf_r_i_4
       (.I0(\rtcscps_reg[14]_0 [11]),
        .I1(rdup_set_secf_r_reg_1[3]),
        .I2(rdup_set_secf_r_reg_1[2]),
        .I3(\rtcscps_reg[14]_0 [10]),
        .I4(rdup_set_secf_r_reg_1[0]),
        .I5(\rtcscps_reg[14]_0 [8]),
        .O(rdup_set_secf_r_i_4_n_0));
  FDRE rdup_set_secf_r_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rdup_set_secf_r_i_1_n_0),
        .Q(rdup_set_secf),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \rtcctl[1]_i_1 
       (.I0(rst_n),
        .O(SR));
  FDRE \rtchrmi_reg[0] 
       (.C(clk),
        .CE(\rtchrmi_reg[13]_2 ),
        .D(\rtchrmi_reg[13]_3 [0]),
        .Q(\rtchrmi_reg[13]_1 [0]),
        .R(SR));
  FDRE \rtchrmi_reg[10] 
       (.C(clk),
        .CE(\rtchrmi_reg[13]_2 ),
        .D(\rtchrmi_reg[13]_3 [9]),
        .Q(\rtchrmi_reg[13]_1 [9]),
        .R(SR));
  FDRE \rtchrmi_reg[11] 
       (.C(clk),
        .CE(\rtchrmi_reg[13]_2 ),
        .D(\rtchrmi_reg[13]_3 [10]),
        .Q(\rtchrmi_reg[13]_1 [10]),
        .R(SR));
  FDRE \rtchrmi_reg[12] 
       (.C(clk),
        .CE(\rtchrmi_reg[13]_2 ),
        .D(\rtchrmi_reg[13]_3 [11]),
        .Q(\rtchrmi_reg[13]_1 [11]),
        .R(SR));
  FDRE \rtchrmi_reg[13] 
       (.C(clk),
        .CE(\rtchrmi_reg[13]_2 ),
        .D(\rtchrmi_reg[13]_3 [12]),
        .Q(\rtchrmi_reg[13]_1 [12]),
        .R(SR));
  FDRE \rtchrmi_reg[1] 
       (.C(clk),
        .CE(\rtchrmi_reg[13]_2 ),
        .D(\rtchrmi_reg[13]_3 [1]),
        .Q(\rtchrmi_reg[13]_1 [1]),
        .R(SR));
  FDRE \rtchrmi_reg[2] 
       (.C(clk),
        .CE(\rtchrmi_reg[13]_2 ),
        .D(\rtchrmi_reg[13]_3 [2]),
        .Q(\rtchrmi_reg[13]_1 [2]),
        .R(SR));
  FDRE \rtchrmi_reg[3] 
       (.C(clk),
        .CE(\rtchrmi_reg[13]_2 ),
        .D(\rtchrmi_reg[13]_3 [3]),
        .Q(\rtchrmi_reg[13]_1 [3]),
        .R(SR));
  FDRE \rtchrmi_reg[4] 
       (.C(clk),
        .CE(\rtchrmi_reg[13]_2 ),
        .D(\rtchrmi_reg[13]_3 [4]),
        .Q(\rtchrmi_reg[13]_1 [4]),
        .R(SR));
  FDRE \rtchrmi_reg[5] 
       (.C(clk),
        .CE(\rtchrmi_reg[13]_2 ),
        .D(\rtchrmi_reg[13]_3 [5]),
        .Q(\rtchrmi_reg[13]_1 [5]),
        .R(SR));
  FDRE \rtchrmi_reg[6] 
       (.C(clk),
        .CE(\rtchrmi_reg[13]_2 ),
        .D(\rtchrmi_reg[13]_3 [6]),
        .Q(\rtchrmi_reg[13]_1 [6]),
        .R(SR));
  FDRE \rtchrmi_reg[8] 
       (.C(clk),
        .CE(\rtchrmi_reg[13]_2 ),
        .D(\rtchrmi_reg[13]_3 [7]),
        .Q(\rtchrmi_reg[13]_1 [7]),
        .R(SR));
  FDRE \rtchrmi_reg[9] 
       (.C(clk),
        .CE(\rtchrmi_reg[13]_2 ),
        .D(\rtchrmi_reg[13]_3 [8]),
        .Q(\rtchrmi_reg[13]_1 [8]),
        .R(SR));
  LUT4 #(
    .INIT(16'h7730)) 
    \rtcintc[0]_i_1 
       (.I0(bdatw[0]),
        .I1(\rtcintc_reg[0] ),
        .I2(rdup_set_secf),
        .I3(Q[0]),
        .O(\bdatw[2] [0]));
  LUT4 #(
    .INIT(16'h7730)) 
    \rtcintc[1]_i_1 
       (.I0(bdatw[1]),
        .I1(\rtcintc_reg[0] ),
        .I2(rdup_set_minf),
        .I3(Q[1]),
        .O(\bdatw[2] [1]));
  LUT4 #(
    .INIT(16'h7730)) 
    \rtcintc[2]_i_1 
       (.I0(bdatw[2]),
        .I1(\rtcintc_reg[0] ),
        .I2(rdup_set_houf),
        .I3(Q[2]),
        .O(\bdatw[2] [2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rtcintc[6]_i_1 
       (.I0(\rtcintc_reg[0] ),
        .I1(rdup_set_secf),
        .I2(rdup_set_minf),
        .I3(rdup_set_houf),
        .O(rdup_set_secf_r_reg_0));
  FDRE \rtcmody_reg[0] 
       (.C(clk),
        .CE(\rtcmody_reg[12]_0 ),
        .D(\rtcmody_reg[12]_1 [0]),
        .Q(\rtcmody_reg[5]_0 [0]),
        .R(SR));
  FDRE \rtcmody_reg[10] 
       (.C(clk),
        .CE(\rtcmody_reg[12]_0 ),
        .D(\rtcmody_reg[12]_1 [8]),
        .Q(rsys_reg_0[5]),
        .R(SR));
  FDRE \rtcmody_reg[11] 
       (.C(clk),
        .CE(\rtcmody_reg[12]_0 ),
        .D(\rtcmody_reg[12]_1 [9]),
        .Q(rsys_reg_0[6]),
        .R(SR));
  FDRE \rtcmody_reg[12] 
       (.C(clk),
        .CE(\rtcmody_reg[12]_0 ),
        .D(\rtcmody_reg[12]_1 [10]),
        .Q(rsys_reg_0[7]),
        .R(SR));
  FDRE \rtcmody_reg[1] 
       (.C(clk),
        .CE(\rtcmody_reg[12]_0 ),
        .D(\rtcmody_reg[12]_1 [1]),
        .Q(\rtcmody_reg[5]_0 [1]),
        .R(SR));
  FDRE \rtcmody_reg[2] 
       (.C(clk),
        .CE(\rtcmody_reg[12]_0 ),
        .D(\rtcmody_reg[12]_1 [2]),
        .Q(\rtcmody_reg[5]_0 [2]),
        .R(SR));
  FDRE \rtcmody_reg[3] 
       (.C(clk),
        .CE(\rtcmody_reg[12]_0 ),
        .D(\rtcmody_reg[12]_1 [3]),
        .Q(\rtcmody_reg[5]_0 [3]),
        .R(SR));
  FDRE \rtcmody_reg[4] 
       (.C(clk),
        .CE(\rtcmody_reg[12]_0 ),
        .D(\rtcmody_reg[12]_1 [4]),
        .Q(\rtcmody_reg[5]_0 [4]),
        .R(SR));
  FDRE \rtcmody_reg[5] 
       (.C(clk),
        .CE(\rtcmody_reg[12]_0 ),
        .D(\rtcmody_reg[12]_1 [5]),
        .Q(\rtcmody_reg[5]_0 [5]),
        .R(SR));
  FDRE \rtcmody_reg[8] 
       (.C(clk),
        .CE(\rtcmody_reg[12]_0 ),
        .D(\rtcmody_reg[12]_1 [6]),
        .Q(rsys_reg_0[3]),
        .R(SR));
  FDRE \rtcmody_reg[9] 
       (.C(clk),
        .CE(\rtcmody_reg[12]_0 ),
        .D(\rtcmody_reg[12]_1 [7]),
        .Q(rsys_reg_0[4]),
        .R(SR));
  FDRE \rtcscps_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(\rtcscps_reg[14]_0 [0]),
        .R(SR));
  FDRE \rtcscps_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(\rtcscps_reg[14]_0 [10]),
        .R(SR));
  FDRE \rtcscps_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(\rtcscps_reg[14]_0 [11]),
        .R(SR));
  FDRE \rtcscps_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(\rtcscps_reg[14]_0 [12]),
        .R(SR));
  FDRE \rtcscps_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(\rtcscps_reg[14]_0 [13]),
        .R(SR));
  FDRE \rtcscps_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(\rtcscps_reg[14]_0 [14]),
        .R(SR));
  FDRE \rtcscps_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(\rtcscps_reg[14]_0 [1]),
        .R(SR));
  FDRE \rtcscps_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(\rtcscps_reg[14]_0 [2]),
        .R(SR));
  FDRE \rtcscps_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(\rtcscps_reg[14]_0 [3]),
        .R(SR));
  FDRE \rtcscps_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(\rtcscps_reg[14]_0 [4]),
        .R(SR));
  FDRE \rtcscps_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(\rtcscps_reg[14]_0 [5]),
        .R(SR));
  FDRE \rtcscps_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(\rtcscps_reg[14]_0 [6]),
        .R(SR));
  FDRE \rtcscps_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(\rtcscps_reg[14]_0 [7]),
        .R(SR));
  FDRE \rtcscps_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(\rtcscps_reg[14]_0 [8]),
        .R(SR));
  FDRE \rtcscps_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(\rtcscps_reg[14]_0 [9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rtcweek[0]_i_1 
       (.I0(bdatw[0]),
        .I1(rctl_snap),
        .I2(\rtcweek_reg[2]_0 [0]),
        .I3(\rtcweek_reg[2]_1 ),
        .I4(rsys_reg_0[0]),
        .O(\rtcweek[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rtcweek[1]_i_1 
       (.I0(bdatw[1]),
        .I1(rctl_snap),
        .I2(\rtcweek_reg[2]_0 [1]),
        .I3(\rtcweek_reg[2]_1 ),
        .I4(rsys_reg_0[1]),
        .O(\rtcweek[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rtcweek[2]_i_1 
       (.I0(bdatw[2]),
        .I1(rctl_snap),
        .I2(\rtcweek_reg[2]_0 [2]),
        .I3(\rtcweek_reg[2]_1 ),
        .I4(rsys_reg_0[2]),
        .O(\rtcweek[2]_i_1_n_0 ));
  FDRE \rtcweek_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rtcweek[0]_i_1_n_0 ),
        .Q(rsys_reg_0[0]),
        .R(SR));
  FDRE \rtcweek_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rtcweek[1]_i_1_n_0 ),
        .Q(rsys_reg_0[1]),
        .R(SR));
  FDRE \rtcweek_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\rtcweek[2]_i_1_n_0 ),
        .Q(rsys_reg_0[2]),
        .R(SR));
  FDRE \rtcyear_reg[0] 
       (.C(clk),
        .CE(\rtcyear_reg[9]_1 ),
        .D(\rtcyear_reg[9]_2 [0]),
        .Q(\rtcyear_reg[9]_0 [0]),
        .R(SR));
  FDRE \rtcyear_reg[1] 
       (.C(clk),
        .CE(\rtcyear_reg[9]_1 ),
        .D(\rtcyear_reg[9]_2 [1]),
        .Q(\rtcyear_reg[9]_0 [1]),
        .R(SR));
  FDRE \rtcyear_reg[2] 
       (.C(clk),
        .CE(\rtcyear_reg[9]_1 ),
        .D(\rtcyear_reg[9]_2 [2]),
        .Q(\rtcyear_reg[9]_0 [2]),
        .R(SR));
  FDRE \rtcyear_reg[3] 
       (.C(clk),
        .CE(\rtcyear_reg[9]_1 ),
        .D(\rtcyear_reg[9]_2 [3]),
        .Q(\rtcyear_reg[9]_0 [3]),
        .R(SR));
  FDRE \rtcyear_reg[4] 
       (.C(clk),
        .CE(\rtcyear_reg[9]_1 ),
        .D(\rtcyear_reg[9]_2 [4]),
        .Q(\rtcyear_reg[9]_0 [4]),
        .R(SR));
  FDRE \rtcyear_reg[5] 
       (.C(clk),
        .CE(\rtcyear_reg[9]_1 ),
        .D(\rtcyear_reg[9]_2 [5]),
        .Q(\rtcyear_reg[9]_0 [5]),
        .R(SR));
  FDRE \rtcyear_reg[6] 
       (.C(clk),
        .CE(\rtcyear_reg[9]_1 ),
        .D(\rtcyear_reg[9]_2 [6]),
        .Q(\rtcyear_reg[9]_0 [6]),
        .R(SR));
  FDRE \rtcyear_reg[7] 
       (.C(clk),
        .CE(\rtcyear_reg[9]_1 ),
        .D(\rtcyear_reg[9]_2 [7]),
        .Q(\rtcyear_reg[9]_0 [7]),
        .R(SR));
  FDRE \rtcyear_reg[8] 
       (.C(clk),
        .CE(\rtcyear_reg[9]_1 ),
        .D(\rtcyear_reg[9]_2 [8]),
        .Q(\rtcyear_reg[9]_0 [8]),
        .R(SR));
  FDRE \rtcyear_reg[9] 
       (.C(clk),
        .CE(\rtcyear_reg[9]_1 ),
        .D(\rtcyear_reg[9]_2 [9]),
        .Q(\rtcyear_reg[9]_0 [9]),
        .R(SR));
endmodule

module rtc_sys_fsm
   (\stat_reg[2]_0 ,
    \stat_reg[2]_1 ,
    Q,
    rctl_rtcw,
    \stat_reg[2]_2 ,
    \stat_reg[0]_0 ,
    clk);
  output [2:0]\stat_reg[2]_0 ;
  output [0:0]\stat_reg[2]_1 ;
  input [0:0]Q;
  input rctl_rtcw;
  input \stat_reg[2]_2 ;
  input \stat_reg[0]_0 ;
  input clk;

  wire \<const1> ;
  wire [0:0]Q;
  wire clk;
  wire rctl_rtcw;
  wire [2:0]stat_nx;
  wire \stat_reg[0]_0 ;
  wire [2:0]\stat_reg[2]_0 ;
  wire [0:0]\stat_reg[2]_1 ;
  wire \stat_reg[2]_2 ;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \rctl_wrt_req_s[0]_i_1 
       (.I0(\stat_reg[2]_0 [2]),
        .I1(rctl_rtcw),
        .I2(\stat_reg[2]_0 [0]),
        .I3(Q),
        .I4(\stat_reg[2]_0 [1]),
        .O(\stat_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0317030003140300)) 
    \stat[0]_i_1 
       (.I0(Q),
        .I1(\stat_reg[2]_0 [0]),
        .I2(\stat_reg[2]_0 [1]),
        .I3(\stat_reg[2]_0 [2]),
        .I4(rctl_rtcw),
        .I5(\stat_reg[2]_2 ),
        .O(stat_nx[0]));
  LUT5 #(
    .INIT(32'h02200200)) 
    \stat[1]_i_1 
       (.I0(rctl_rtcw),
        .I1(\stat_reg[2]_0 [2]),
        .I2(\stat_reg[2]_0 [0]),
        .I3(\stat_reg[2]_0 [1]),
        .I4(Q),
        .O(stat_nx[1]));
  LUT5 #(
    .INIT(32'h000000F2)) 
    \stat[2]_i_1 
       (.I0(rctl_rtcw),
        .I1(\stat_reg[2]_2 ),
        .I2(\stat_reg[2]_0 [2]),
        .I3(\stat_reg[2]_0 [1]),
        .I4(\stat_reg[2]_0 [0]),
        .O(stat_nx[2]));
  FDRE \stat_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[0]),
        .Q(\stat_reg[2]_0 [0]),
        .R(\stat_reg[0]_0 ));
  FDRE \stat_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[1]),
        .Q(\stat_reg[2]_0 [1]),
        .R(\stat_reg[0]_0 ));
  FDRE \stat_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(stat_nx[2]),
        .Q(\stat_reg[2]_0 [2]),
        .R(\stat_reg[0]_0 ));
endmodule
