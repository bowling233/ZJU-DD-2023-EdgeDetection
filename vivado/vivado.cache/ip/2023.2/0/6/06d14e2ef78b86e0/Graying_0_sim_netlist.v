// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Dec 30 21:29:28 2023
// Host        : bowling-AP201 running 64-bit Ubuntu 23.04
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Graying_0_sim_netlist.v
// Design      : Graying_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Graying
   (out_data,
    out_ready,
    rst_n,
    in_enable,
    clk,
    in_data);
  output [7:0]out_data;
  output out_ready;
  input rst_n;
  input in_enable;
  input clk;
  input [23:0]in_data;

  wire MulRed_i_1_n_0;
  wire clk;
  wire [2:0]con_enable;
  wire \con_enable[0]_i_1_n_0 ;
  wire \con_enable[1]_i_1_n_0 ;
  wire \con_enable[2]_i_1_n_0 ;
  wire \con_enable[2]_i_2_n_0 ;
  wire [23:0]in_data;
  wire in_enable;
  wire [7:0]mul_b;
  wire [7:0]mul_g;
  wire [7:0]mul_g_buffer;
  wire [7:0]mul_r;
  wire [7:0]out_data;
  wire out_ready;
  wire [7:0]reg_out_data;
  wire [7:0]reg_out_data0;
  wire \reg_out_data[3]_i_2_n_0 ;
  wire \reg_out_data[3]_i_3_n_0 ;
  wire \reg_out_data[3]_i_4_n_0 ;
  wire \reg_out_data[3]_i_5_n_0 ;
  wire \reg_out_data[7]_i_2_n_0 ;
  wire \reg_out_data[7]_i_3_n_0 ;
  wire \reg_out_data[7]_i_4_n_0 ;
  wire \reg_out_data[7]_i_5_n_0 ;
  wire \reg_out_data_reg[3]_i_1_n_0 ;
  wire \reg_out_data_reg[3]_i_1_n_1 ;
  wire \reg_out_data_reg[3]_i_1_n_2 ;
  wire \reg_out_data_reg[3]_i_1_n_3 ;
  wire \reg_out_data_reg[7]_i_1_n_1 ;
  wire \reg_out_data_reg[7]_i_1_n_2 ;
  wire \reg_out_data_reg[7]_i_1_n_3 ;
  wire rst_n;
  wire [7:0]sum_tmp;
  wire [7:0]sum_tmp0;
  wire \sum_tmp[3]_i_2_n_0 ;
  wire \sum_tmp[3]_i_3_n_0 ;
  wire \sum_tmp[3]_i_4_n_0 ;
  wire \sum_tmp[3]_i_5_n_0 ;
  wire \sum_tmp[7]_i_2_n_0 ;
  wire \sum_tmp[7]_i_3_n_0 ;
  wire \sum_tmp[7]_i_4_n_0 ;
  wire \sum_tmp[7]_i_5_n_0 ;
  wire \sum_tmp_reg[3]_i_1_n_0 ;
  wire \sum_tmp_reg[3]_i_1_n_1 ;
  wire \sum_tmp_reg[3]_i_1_n_2 ;
  wire \sum_tmp_reg[3]_i_1_n_3 ;
  wire \sum_tmp_reg[7]_i_1_n_1 ;
  wire \sum_tmp_reg[7]_i_1_n_2 ;
  wire \sum_tmp_reg[7]_i_1_n_3 ;
  wire [8:8]NLW_MulBlue_P_UNCONNECTED;
  wire [11:8]NLW_MulGreen_P_UNCONNECTED;
  wire [10:8]NLW_MulRed_P_UNCONNECTED;
  wire [3:3]\NLW_reg_out_data_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sum_tmp_reg[7]_i_1_CO_UNCONNECTED ;

  (* CHECK_LICENSE_TYPE = "MultiplierBluex0d114,mult_gen_v12_0_19,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_19,Vivado 2023.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MultiplierBluex0d114 MulBlue
       (.A({1'b0,1'b0,1'b0,1'b0,in_data[7:0]}),
        .CLK(clk),
        .P({NLW_MulBlue_P_UNCONNECTED[8],mul_b}),
        .SCLR(MulRed_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "MultiplierGreenx0d587,mult_gen_v12_0_19,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_19,Vivado 2023.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MultiplierGreenx0d587 MulGreen
       (.A({1'b0,1'b0,1'b0,1'b0,in_data[15:8]}),
        .CLK(clk),
        .P({NLW_MulGreen_P_UNCONNECTED[11:8],mul_g}),
        .SCLR(MulRed_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "MultiplierRedx0d299,mult_gen_v12_0_19,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_19,Vivado 2023.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MultiplierRedx0d299 MulRed
       (.A({1'b0,1'b0,1'b0,1'b0,in_data[23:16]}),
        .CLK(clk),
        .P({NLW_MulRed_P_UNCONNECTED[10:8],mul_r}),
        .SCLR(MulRed_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    MulRed_i_1
       (.I0(rst_n),
        .O(MulRed_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \con_enable[0]_i_1 
       (.I0(con_enable[1]),
        .I1(con_enable[2]),
        .I2(con_enable[0]),
        .O(\con_enable[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \con_enable[1]_i_1 
       (.I0(con_enable[1]),
        .I1(con_enable[0]),
        .O(\con_enable[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \con_enable[2]_i_1 
       (.I0(con_enable[1]),
        .I1(con_enable[2]),
        .I2(con_enable[0]),
        .O(\con_enable[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \con_enable[2]_i_2 
       (.I0(rst_n),
        .I1(in_enable),
        .O(\con_enable[2]_i_2_n_0 ));
  FDCE \con_enable_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\con_enable[2]_i_2_n_0 ),
        .D(\con_enable[0]_i_1_n_0 ),
        .Q(con_enable[0]));
  FDCE \con_enable_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\con_enable[2]_i_2_n_0 ),
        .D(\con_enable[1]_i_1_n_0 ),
        .Q(con_enable[1]));
  FDCE \con_enable_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\con_enable[2]_i_2_n_0 ),
        .D(\con_enable[2]_i_1_n_0 ),
        .Q(con_enable[2]));
  FDRE \mul_g_buffer_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(mul_g[0]),
        .Q(mul_g_buffer[0]),
        .R(1'b0));
  FDRE \mul_g_buffer_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(mul_g[1]),
        .Q(mul_g_buffer[1]),
        .R(1'b0));
  FDRE \mul_g_buffer_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(mul_g[2]),
        .Q(mul_g_buffer[2]),
        .R(1'b0));
  FDRE \mul_g_buffer_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(mul_g[3]),
        .Q(mul_g_buffer[3]),
        .R(1'b0));
  FDRE \mul_g_buffer_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(mul_g[4]),
        .Q(mul_g_buffer[4]),
        .R(1'b0));
  FDRE \mul_g_buffer_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(mul_g[5]),
        .Q(mul_g_buffer[5]),
        .R(1'b0));
  FDRE \mul_g_buffer_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(mul_g[6]),
        .Q(mul_g_buffer[6]),
        .R(1'b0));
  FDRE \mul_g_buffer_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(mul_g[7]),
        .Q(mul_g_buffer[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \out_data[0]_INST_0 
       (.I0(con_enable[0]),
        .I1(con_enable[2]),
        .I2(con_enable[1]),
        .I3(reg_out_data[0]),
        .O(out_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \out_data[1]_INST_0 
       (.I0(con_enable[0]),
        .I1(con_enable[2]),
        .I2(con_enable[1]),
        .I3(reg_out_data[1]),
        .O(out_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \out_data[2]_INST_0 
       (.I0(con_enable[0]),
        .I1(con_enable[2]),
        .I2(con_enable[1]),
        .I3(reg_out_data[2]),
        .O(out_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \out_data[3]_INST_0 
       (.I0(con_enable[0]),
        .I1(con_enable[2]),
        .I2(con_enable[1]),
        .I3(reg_out_data[3]),
        .O(out_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \out_data[4]_INST_0 
       (.I0(con_enable[0]),
        .I1(con_enable[2]),
        .I2(con_enable[1]),
        .I3(reg_out_data[4]),
        .O(out_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \out_data[5]_INST_0 
       (.I0(con_enable[0]),
        .I1(con_enable[2]),
        .I2(con_enable[1]),
        .I3(reg_out_data[5]),
        .O(out_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \out_data[6]_INST_0 
       (.I0(con_enable[0]),
        .I1(con_enable[2]),
        .I2(con_enable[1]),
        .I3(reg_out_data[6]),
        .O(out_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \out_data[7]_INST_0 
       (.I0(con_enable[0]),
        .I1(con_enable[2]),
        .I2(con_enable[1]),
        .I3(reg_out_data[7]),
        .O(out_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    out_ready__0
       (.I0(con_enable[1]),
        .I1(con_enable[2]),
        .I2(con_enable[0]),
        .O(out_ready));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out_data[3]_i_2 
       (.I0(sum_tmp[3]),
        .I1(mul_g_buffer[3]),
        .O(\reg_out_data[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out_data[3]_i_3 
       (.I0(sum_tmp[2]),
        .I1(mul_g_buffer[2]),
        .O(\reg_out_data[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out_data[3]_i_4 
       (.I0(sum_tmp[1]),
        .I1(mul_g_buffer[1]),
        .O(\reg_out_data[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out_data[3]_i_5 
       (.I0(sum_tmp[0]),
        .I1(mul_g_buffer[0]),
        .O(\reg_out_data[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out_data[7]_i_2 
       (.I0(sum_tmp[7]),
        .I1(mul_g_buffer[7]),
        .O(\reg_out_data[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out_data[7]_i_3 
       (.I0(sum_tmp[6]),
        .I1(mul_g_buffer[6]),
        .O(\reg_out_data[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out_data[7]_i_4 
       (.I0(sum_tmp[5]),
        .I1(mul_g_buffer[5]),
        .O(\reg_out_data[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out_data[7]_i_5 
       (.I0(sum_tmp[4]),
        .I1(mul_g_buffer[4]),
        .O(\reg_out_data[7]_i_5_n_0 ));
  FDCE \reg_out_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\con_enable[2]_i_2_n_0 ),
        .D(reg_out_data0[0]),
        .Q(reg_out_data[0]));
  FDCE \reg_out_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\con_enable[2]_i_2_n_0 ),
        .D(reg_out_data0[1]),
        .Q(reg_out_data[1]));
  FDCE \reg_out_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\con_enable[2]_i_2_n_0 ),
        .D(reg_out_data0[2]),
        .Q(reg_out_data[2]));
  FDCE \reg_out_data_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\con_enable[2]_i_2_n_0 ),
        .D(reg_out_data0[3]),
        .Q(reg_out_data[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_out_data_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\reg_out_data_reg[3]_i_1_n_0 ,\reg_out_data_reg[3]_i_1_n_1 ,\reg_out_data_reg[3]_i_1_n_2 ,\reg_out_data_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sum_tmp[3:0]),
        .O(reg_out_data0[3:0]),
        .S({\reg_out_data[3]_i_2_n_0 ,\reg_out_data[3]_i_3_n_0 ,\reg_out_data[3]_i_4_n_0 ,\reg_out_data[3]_i_5_n_0 }));
  FDCE \reg_out_data_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\con_enable[2]_i_2_n_0 ),
        .D(reg_out_data0[4]),
        .Q(reg_out_data[4]));
  FDCE \reg_out_data_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\con_enable[2]_i_2_n_0 ),
        .D(reg_out_data0[5]),
        .Q(reg_out_data[5]));
  FDCE \reg_out_data_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\con_enable[2]_i_2_n_0 ),
        .D(reg_out_data0[6]),
        .Q(reg_out_data[6]));
  FDCE \reg_out_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\con_enable[2]_i_2_n_0 ),
        .D(reg_out_data0[7]),
        .Q(reg_out_data[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_out_data_reg[7]_i_1 
       (.CI(\reg_out_data_reg[3]_i_1_n_0 ),
        .CO({\NLW_reg_out_data_reg[7]_i_1_CO_UNCONNECTED [3],\reg_out_data_reg[7]_i_1_n_1 ,\reg_out_data_reg[7]_i_1_n_2 ,\reg_out_data_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,sum_tmp[6:4]}),
        .O(reg_out_data0[7:4]),
        .S({\reg_out_data[7]_i_2_n_0 ,\reg_out_data[7]_i_3_n_0 ,\reg_out_data[7]_i_4_n_0 ,\reg_out_data[7]_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_tmp[3]_i_2 
       (.I0(mul_r[3]),
        .I1(mul_b[3]),
        .O(\sum_tmp[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_tmp[3]_i_3 
       (.I0(mul_r[2]),
        .I1(mul_b[2]),
        .O(\sum_tmp[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_tmp[3]_i_4 
       (.I0(mul_r[1]),
        .I1(mul_b[1]),
        .O(\sum_tmp[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_tmp[3]_i_5 
       (.I0(mul_r[0]),
        .I1(mul_b[0]),
        .O(\sum_tmp[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_tmp[7]_i_2 
       (.I0(mul_r[7]),
        .I1(mul_b[7]),
        .O(\sum_tmp[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_tmp[7]_i_3 
       (.I0(mul_r[6]),
        .I1(mul_b[6]),
        .O(\sum_tmp[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_tmp[7]_i_4 
       (.I0(mul_r[5]),
        .I1(mul_b[5]),
        .O(\sum_tmp[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_tmp[7]_i_5 
       (.I0(mul_r[4]),
        .I1(mul_b[4]),
        .O(\sum_tmp[7]_i_5_n_0 ));
  FDRE \sum_tmp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(sum_tmp0[0]),
        .Q(sum_tmp[0]),
        .R(1'b0));
  FDRE \sum_tmp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(sum_tmp0[1]),
        .Q(sum_tmp[1]),
        .R(1'b0));
  FDRE \sum_tmp_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(sum_tmp0[2]),
        .Q(sum_tmp[2]),
        .R(1'b0));
  FDRE \sum_tmp_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(sum_tmp0[3]),
        .Q(sum_tmp[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_tmp_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sum_tmp_reg[3]_i_1_n_0 ,\sum_tmp_reg[3]_i_1_n_1 ,\sum_tmp_reg[3]_i_1_n_2 ,\sum_tmp_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mul_r[3:0]),
        .O(sum_tmp0[3:0]),
        .S({\sum_tmp[3]_i_2_n_0 ,\sum_tmp[3]_i_3_n_0 ,\sum_tmp[3]_i_4_n_0 ,\sum_tmp[3]_i_5_n_0 }));
  FDRE \sum_tmp_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(sum_tmp0[4]),
        .Q(sum_tmp[4]),
        .R(1'b0));
  FDRE \sum_tmp_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(sum_tmp0[5]),
        .Q(sum_tmp[5]),
        .R(1'b0));
  FDRE \sum_tmp_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(sum_tmp0[6]),
        .Q(sum_tmp[6]),
        .R(1'b0));
  FDRE \sum_tmp_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(sum_tmp0[7]),
        .Q(sum_tmp[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_tmp_reg[7]_i_1 
       (.CI(\sum_tmp_reg[3]_i_1_n_0 ),
        .CO({\NLW_sum_tmp_reg[7]_i_1_CO_UNCONNECTED [3],\sum_tmp_reg[7]_i_1_n_1 ,\sum_tmp_reg[7]_i_1_n_2 ,\sum_tmp_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,mul_r[6:4]}),
        .O(sum_tmp0[7:4]),
        .S({\sum_tmp[7]_i_2_n_0 ,\sum_tmp[7]_i_3_n_0 ,\sum_tmp[7]_i_4_n_0 ,\sum_tmp[7]_i_5_n_0 }));
endmodule

(* CHECK_LICENSE_TYPE = "Graying_0,Graying,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Graying,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    in_enable,
    in_data,
    out_ready,
    out_data);
  input clk;
  input rst_n;
  input in_enable;
  input [23:0]in_data;
  output out_ready;
  output [7:0]out_data;

  wire clk;
  wire [23:0]in_data;
  wire in_enable;
  wire [7:0]out_data;
  wire out_ready;
  wire rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Graying inst
       (.clk(clk),
        .in_data(in_data),
        .in_enable(in_enable),
        .out_data(out_data),
        .out_ready(out_ready),
        .rst_n(rst_n));
endmodule

(* CHECK_LICENSE_TYPE = "MultiplierBluex0d114,mult_gen_v12_0_19,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "mult_gen_v12_0_19,Vivado 2023.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MultiplierBluex0d114
   (CLK,
    A,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [11:0]A;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [8:0]P;

  wire \<const0> ;
  wire [11:0]A;
  wire CLK;
  wire [7:0]\^P ;
  wire SCLR;
  wire [8:8]NLW_U0_P_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_EXT_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  assign P[8] = \<const0> ;
  assign P[7:0] = \^P [7:0];
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "12" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "111010010111100011010" *) 
  (* C_B_WIDTH = "21" *) 
  (* C_CCM_IMP = "2" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "2" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "32" *) 
  (* C_OUT_LOW = "24" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_19__parameterized3 U0
       (.A({1'b0,1'b0,1'b0,1'b0,A[7:0]}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .P({NLW_U0_P_UNCONNECTED[8],\^P }),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .PCASC_EXT(NLW_U0_PCASC_EXT_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* CHECK_LICENSE_TYPE = "MultiplierGreenx0d587,mult_gen_v12_0_19,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "mult_gen_v12_0_19,Vivado 2023.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MultiplierGreenx0d587
   (CLK,
    A,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [11:0]A;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [11:0]P;

  wire \<const0> ;
  wire [11:0]A;
  wire CLK;
  wire [7:0]\^P ;
  wire SCLR;
  wire [11:8]NLW_U0_P_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_EXT_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  assign P[11] = \<const0> ;
  assign P[10] = \<const0> ;
  assign P[9] = \<const0> ;
  assign P[8] = \<const0> ;
  assign P[7:0] = \^P [7:0];
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "12" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "100101100100010110100001" *) 
  (* C_B_WIDTH = "24" *) 
  (* C_CCM_IMP = "2" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "2" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "35" *) 
  (* C_OUT_LOW = "24" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_19__parameterized1 U0
       (.A({1'b0,1'b0,1'b0,1'b0,A[7:0]}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .P({NLW_U0_P_UNCONNECTED[11:8],\^P }),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .PCASC_EXT(NLW_U0_PCASC_EXT_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* CHECK_LICENSE_TYPE = "MultiplierRedx0d299,mult_gen_v12_0_19,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "mult_gen_v12_0_19,Vivado 2023.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MultiplierRedx0d299
   (CLK,
    A,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [11:0]A;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [10:0]P;

  wire \<const0> ;
  wire [11:0]A;
  wire CLK;
  wire [7:0]\^P ;
  wire SCLR;
  wire [10:8]NLW_U0_P_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_EXT_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  assign P[10] = \<const0> ;
  assign P[9] = \<const0> ;
  assign P[8] = \<const0> ;
  assign P[7:0] = \^P [7:0];
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "12" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10011001000101101000011" *) 
  (* C_B_WIDTH = "23" *) 
  (* C_CCM_IMP = "2" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "2" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "34" *) 
  (* C_OUT_LOW = "24" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_19 U0
       (.A({1'b0,1'b0,1'b0,1'b0,A[7:0]}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .P({NLW_U0_P_UNCONNECTED[10:8],\^P }),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .PCASC_EXT(NLW_U0_PCASC_EXT_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
fRQ1n63q04WLdAtEtSOEmy9ZGbscS6fFy5yO6y5ZlQzrdiMUnvb7/3/F73hiKUG2mcIxrkYBHHn3
r/6mGZ0luXBWGHl3bCAnUz3MhR6uJlDKuEbY7oQRlNqamRP4xJDckjrDcWogZMGA0PhP97MZgNIT
9PrQJcuS8jRFkf28pyI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Fi09OSNYSGUm+vv4XDp3Lpd3TC6da+NmFOX/Rkc9wPa1+7uycZYIx+AFBOT/9wcqpft1Ev0wFDlt
ka6kFyS9TgRbLJ5cI2/0vZiFdabpuWTTxGwPP9RMC38AvuayqscTAfsp6EXa6NvSdiJXDeoObAOy
XP9lHVIxmDWOP5N6v5+MRP65I4iWLQmiXuSEtItPTMeBTM8fDxZz1DkF2+x2xvHimOA1mVnOX5KB
rfQQQ52B6jHajZ2O8MA7eMkK0Ao9YKzeNzrmkWh6UJCvjL/pTysxyW3bzQdLvu+GnTywMpUPlfIn
09eY/0bScBV4QPs+gg3iotjF5LqIYQl8UwQgaA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oUIbaiS4xXlgdVGf5pZlT4AyGu+t1a9Z+2OM3Zukwll1YNCU966eyz4kmJLHRhplfS0gz/bke+AX
WYRyNGMLKwQtjrnA5AtI//Rv7u6X5y3IXqKeW7CZKSBSb0uuqjSgN91BIdav+om0wtbz8jlKjPQ+
cGucIbFBL98u70/+Qs4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Nx+f6H7px7SQttc0g8wy4MZ86SJNl/okadGDfk37L2BfwfaPWtD953eSnPmq35lDZl2AsvjrQ8cZ
vN2JhxDCTl8NA3hDreDJFEVOMik2uylxVe0RiakTijz6frbi2yQeqDC1m7akIJeYUWeFLsAYpUk5
BZBFAmSiYSxYPFmMaJpO4xCNt1xvC5I1EKF22Zuyb0dyeVxVJCM5RAOwxYLR1r5VEL6mU7oU++kL
DZkT6b0d9Vee34ARW0KL0KJ0O3tdnWiQENDTEtYgtJrZp83NrHw3x/5Vl8hQoT/8xrZ/zN6qRf/y
wS60mS2neVlut6RWtflt3zMt0A505DovGFMRwA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zfIuJdTwe0SBGWq2EXSf83d6hbWtH2QTx/8VP3nbxZNHgzC9DLK0Cl4RKSSUF3XY5XC1oeI4XdtZ
3XsNJ+ivKd2V6aixld+VMFFLcQ72egwYI8NFMpNB9567qk7NpsuVS2iJUq1QRgXX1SMOsxmYSYlK
LNML1d7uSzKG5nyn7qzqw5udS0z+sqJ/loi1S0bX7nXdVuEFfcgBBcv5oQNdyoxizVq/NOicYOF1
kstVwI8huL980/p59qbykXNOBmh619U0D7VpvYzOSYkUdxSygXjHHs4y7YnnBpWOJT/MJEJFs+Dn
F/OykmSVkEfAmYNKLhLi2kFT7W8FKtuu8wIxqg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OQeGNba4SsSd7ihH4qGbPJVKqOL1Y20nu8o20s6by2pl1A0klXKRRlnYubs0dIObxAu+7UdYQJuy
g0csy4DbtXJRqeaIJC4zQ3hfia8h9KUiM6fhYWIdAj7MXGCkYdKTYHZ5G8tBhBlcISWP1R+8+/qa
aHsfUH8Z0p8mJo7vC1tuW/++XUgMVQ990ZHuMhq/UFSavu9zu/nqRYyv5OZDKq1IU5gSpK0CvuNF
RQFTtPTTJymvGJIETV8b9z28O52o+kjRMJsx+eubnt+t0k/kqzzgBTvV2W7bJPdiJMYlCS6gfIae
8gvVzyVISfJaVrikGGYkAnHG0JNXROZykR6MAQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WSknhPkD4EwRMYExpBuSBIBgqIDfvKGa1gilESW/AYJ3tcD7hsNUtNVAMsM5PcGO92U1UOFVa7yU
JZaXKl6qO032ELRZpuVUhSToKG2/Xhfk+T/QmCeHqNYiGM01B+cIeXL3A1ZH+3NCVn1FebH75yOf
dyjWp2QugwXrGwiHpJsVmoCTpGnE2qaoRbfbdl9Gy18t6PrQUt8Tn72qmqCTIl+kodaX/7o696QY
EMwDg5h8AW9Y9vKMlcvCUKAPPesWw8/N/QP57c2R9HPbudmS2guZ+pw/TmTPVJTICiz+5ZD57mtd
aLnlhn9RuzKevwNcM8UvuQP/LQ6pLDrBGbp8+A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lniej/Hkmy+66CZgaH1uMaCnpOEMNU8MrASdTBtzw6Tfe2BVUYxsgsCfq6r0t0aMW/syVTYMmBp9
p2JTU122oBd3/XQKJEq2i0Z05NCmMiCugP/mJSN3JTVgGSUzy0aCQdb4NfYLO8XhXafcohk3jb1q
BW8foVgKCLc/9e8KKObzhsVuxbmZHJqk0CwkzfNn0Idq6iMoMuSFJIx3tjA+xl5Yh036tUB7s+5z
SC5T3wtygRf59HksFU/oMIqTadRFbtLFvEam7hOqHSMDlJRiJmBckdRxv1hxUTnL3jKHnDfSe5bF
8UQ5EOSfbrAFbT6xFFSaG4Gr78/NFcEXcjdXorFIFvpyWmvOtaBSdJGN5Rsr2d9/qRkES3Qt0fAI
KC1KKposQZFXMG40z9fbiWByujziF85DeDcJ1mJuKdSC+rb6wYQSqV9guws2IQsexOWCm8fwSFiH
8ISpbAdyhnlaMysLord+uBBma9EcM9PaaNQoRhtxGH1hEcoZpMeCUTU/

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h1z0waxRKpqulKUj8fJb5EH3JD2/zcX9U42SQyRNM2uaSdMfechWi4t/d7P9TnARaazFYyrO6NwP
mc78CrsonHMgMDtRCI9/fC2hizv7/jyZ94ffqspxTUueks8JmIWML9QRJF8fYdsJ3dj8MPAx2nga
68UCqbHI7Ny80d+6hHdzsHw2Ge99YBMTmJ0GwKPNhT+R4nIjL5cY/Du07YhnnmZI11m8lF1qNp5M
ye+HimEyc1PlnkszJLrLizivziq4oNINVh+FXQxJK7qR0sOzsEXYY//srLHUc33y8AaxpQMxOx3C
TpkdIYTAAmcN8hk0hmn335ZWjgIqR42AtqApgw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18400)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
fRQ1n63q04WLdAtEtSOEmy9ZGbscS6fFy5yO6y5ZlQzrdiMUnvb7/3/F73hiKUG2mcIxrkYBHHn3
r/6mGZ0luXBWGHl3bCAnUz3MhR6uJlDKuEbY7oQRlNqamRP4xJDckjrDcWogZMGA0PhP97MZgNIT
9PrQJcuS8jRFkf28pyI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Fi09OSNYSGUm+vv4XDp3Lpd3TC6da+NmFOX/Rkc9wPa1+7uycZYIx+AFBOT/9wcqpft1Ev0wFDlt
ka6kFyS9TgRbLJ5cI2/0vZiFdabpuWTTxGwPP9RMC38AvuayqscTAfsp6EXa6NvSdiJXDeoObAOy
XP9lHVIxmDWOP5N6v5+MRP65I4iWLQmiXuSEtItPTMeBTM8fDxZz1DkF2+x2xvHimOA1mVnOX5KB
rfQQQ52B6jHajZ2O8MA7eMkK0Ao9YKzeNzrmkWh6UJCvjL/pTysxyW3bzQdLvu+GnTywMpUPlfIn
09eY/0bScBV4QPs+gg3iotjF5LqIYQl8UwQgaA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oUIbaiS4xXlgdVGf5pZlT4AyGu+t1a9Z+2OM3Zukwll1YNCU966eyz4kmJLHRhplfS0gz/bke+AX
WYRyNGMLKwQtjrnA5AtI//Rv7u6X5y3IXqKeW7CZKSBSb0uuqjSgN91BIdav+om0wtbz8jlKjPQ+
cGucIbFBL98u70/+Qs4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Nx+f6H7px7SQttc0g8wy4MZ86SJNl/okadGDfk37L2BfwfaPWtD953eSnPmq35lDZl2AsvjrQ8cZ
vN2JhxDCTl8NA3hDreDJFEVOMik2uylxVe0RiakTijz6frbi2yQeqDC1m7akIJeYUWeFLsAYpUk5
BZBFAmSiYSxYPFmMaJpO4xCNt1xvC5I1EKF22Zuyb0dyeVxVJCM5RAOwxYLR1r5VEL6mU7oU++kL
DZkT6b0d9Vee34ARW0KL0KJ0O3tdnWiQENDTEtYgtJrZp83NrHw3x/5Vl8hQoT/8xrZ/zN6qRf/y
wS60mS2neVlut6RWtflt3zMt0A505DovGFMRwA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zfIuJdTwe0SBGWq2EXSf83d6hbWtH2QTx/8VP3nbxZNHgzC9DLK0Cl4RKSSUF3XY5XC1oeI4XdtZ
3XsNJ+ivKd2V6aixld+VMFFLcQ72egwYI8NFMpNB9567qk7NpsuVS2iJUq1QRgXX1SMOsxmYSYlK
LNML1d7uSzKG5nyn7qzqw5udS0z+sqJ/loi1S0bX7nXdVuEFfcgBBcv5oQNdyoxizVq/NOicYOF1
kstVwI8huL980/p59qbykXNOBmh619U0D7VpvYzOSYkUdxSygXjHHs4y7YnnBpWOJT/MJEJFs+Dn
F/OykmSVkEfAmYNKLhLi2kFT7W8FKtuu8wIxqg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OQeGNba4SsSd7ihH4qGbPJVKqOL1Y20nu8o20s6by2pl1A0klXKRRlnYubs0dIObxAu+7UdYQJuy
g0csy4DbtXJRqeaIJC4zQ3hfia8h9KUiM6fhYWIdAj7MXGCkYdKTYHZ5G8tBhBlcISWP1R+8+/qa
aHsfUH8Z0p8mJo7vC1tuW/++XUgMVQ990ZHuMhq/UFSavu9zu/nqRYyv5OZDKq1IU5gSpK0CvuNF
RQFTtPTTJymvGJIETV8b9z28O52o+kjRMJsx+eubnt+t0k/kqzzgBTvV2W7bJPdiJMYlCS6gfIae
8gvVzyVISfJaVrikGGYkAnHG0JNXROZykR6MAQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WSknhPkD4EwRMYExpBuSBIBgqIDfvKGa1gilESW/AYJ3tcD7hsNUtNVAMsM5PcGO92U1UOFVa7yU
JZaXKl6qO032ELRZpuVUhSToKG2/Xhfk+T/QmCeHqNYiGM01B+cIeXL3A1ZH+3NCVn1FebH75yOf
dyjWp2QugwXrGwiHpJsVmoCTpGnE2qaoRbfbdl9Gy18t6PrQUt8Tn72qmqCTIl+kodaX/7o696QY
EMwDg5h8AW9Y9vKMlcvCUKAPPesWw8/N/QP57c2R9HPbudmS2guZ+pw/TmTPVJTICiz+5ZD57mtd
aLnlhn9RuzKevwNcM8UvuQP/LQ6pLDrBGbp8+A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lniej/Hkmy+66CZgaH1uMaCnpOEMNU8MrASdTBtzw6Tfe2BVUYxsgsCfq6r0t0aMW/syVTYMmBp9
p2JTU122oBd3/XQKJEq2i0Z05NCmMiCugP/mJSN3JTVgGSUzy0aCQdb4NfYLO8XhXafcohk3jb1q
BW8foVgKCLc/9e8KKObzhsVuxbmZHJqk0CwkzfNn0Idq6iMoMuSFJIx3tjA+xl5Yh036tUB7s+5z
SC5T3wtygRf59HksFU/oMIqTadRFbtLFvEam7hOqHSMDlJRiJmBckdRxv1hxUTnL3jKHnDfSe5bF
8UQ5EOSfbrAFbT6xFFSaG4Gr78/NFcEXcjdXorFIFvpyWmvOtaBSdJGN5Rsr2d9/qRkES3Qt0fAI
KC1KKposQZFXMG40z9fbiWByujziF85DeDcJ1mJuKdSC+rb6wYQSqV9guws2IQsexOWCm8fwSFiH
8ISpbAdyhnlaMysLord+uBBma9EcM9PaaNQoRhtxGH1hEcoZpMeCUTU/

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h1z0waxRKpqulKUj8fJb5EH3JD2/zcX9U42SQyRNM2uaSdMfechWi4t/d7P9TnARaazFYyrO6NwP
mc78CrsonHMgMDtRCI9/fC2hizv7/jyZ94ffqspxTUueks8JmIWML9QRJF8fYdsJ3dj8MPAx2nga
68UCqbHI7Ny80d+6hHdzsHw2Ge99YBMTmJ0GwKPNhT+R4nIjL5cY/Du07YhnnmZI11m8lF1qNp5M
ye+HimEyc1PlnkszJLrLizivziq4oNINVh+FXQxJK7qR0sOzsEXYY//srLHUc33y8AaxpQMxOx3C
TpkdIYTAAmcN8hk0hmn335ZWjgIqR42AtqApgw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Knv93IoJASGXmN/qzN7eo110dORsW9CYZgKDcQ3Hpq0uq2RgEcDLIGqO0TnpanRlfkSZ2ohXFRRA
jqAtEDbmflDPnwF90D2M+bHHBpdoBxeSpI/7fsfL0YzB8CVJdbsszxkU6D4/EsV+72t5olnG5vE4
lwKi7WuNRKFx6vr2r9Ktw7vPkFT160iCnYPr4MKXqP+JZr/ZJ9Ku+m6pgIv0HvnJA01gXxPnz+8u
857h2lUtFT2vHYahaARQaM0ridUt6aAHDSmQLXdr1i7j3lyGP10JoeCWCk5ilZeP+2sDhHrSNjwY
3x5PSneHtCo9eRKNvLc2EIC+xnmRcfl3hZNmfA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1sj38hHIVo2O9sjr0eqvMMc7yoR6pVDP+MJ8mHOk4RsEJE/y6JRMBTWtqWzX1BWzfYtRcLfmVeYK
pXV1IGJtWbz1oP+/u8NiO5MKxZtpv4YK7+64eyHzfLwImeJ14ionc8f5KErkpP05QN5Lu15GB79I
vcj+F3r6/PnVuJl+6U+LDvuIIK+yXDLnUVcPW6+Wbsd6tro4GtMG2Y0jRNnzOxijhYAkoXk3SmM8
5RlZQh12iVFRfsglmGwI8oqaDioiq4AgNrU/ADXtVwM2lc2Dq9O2VlnPw5mzWOCJwcKyq/j5D/+d
TQI/iJE8CuTn8Pz1PDDs9d3LeeMyyKARXBLyBQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 36352)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
