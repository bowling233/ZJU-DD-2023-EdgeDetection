// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Dec 30 21:29:28 2023
// Host        : bowling-AP201 running 64-bit Ubuntu 23.04
// Command     : write_verilog -force -mode funcsim
//               /home/bowling233/Code/_repo/FPGA_edge_detection/vivado/vivado.gen/sources_1/ip/Graying_0/Graying_0_sim_netlist.v
// Design      : Graying_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Graying_0,Graying,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Graying,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module Graying_0
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

  Graying_0_Graying inst
       (.clk(clk),
        .in_data(in_data),
        .in_enable(in_enable),
        .out_data(out_data),
        .out_ready(out_ready),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "Graying" *) 
module Graying_0_Graying
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
  Graying_0_MultiplierBluex0d114 MulBlue
       (.A({1'b0,1'b0,1'b0,1'b0,in_data[7:0]}),
        .CLK(clk),
        .P({NLW_MulBlue_P_UNCONNECTED[8],mul_b}),
        .SCLR(MulRed_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "MultiplierGreenx0d587,mult_gen_v12_0_19,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_19,Vivado 2023.2" *) 
  Graying_0_MultiplierGreenx0d587 MulGreen
       (.A({1'b0,1'b0,1'b0,1'b0,in_data[15:8]}),
        .CLK(clk),
        .P({NLW_MulGreen_P_UNCONNECTED[11:8],mul_g}),
        .SCLR(MulRed_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "MultiplierRedx0d299,mult_gen_v12_0_19,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_19,Vivado 2023.2" *) 
  Graying_0_MultiplierRedx0d299 MulRed
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

(* CHECK_LICENSE_TYPE = "MultiplierBluex0d114,mult_gen_v12_0_19,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "MultiplierBluex0d114" *) 
(* X_CORE_INFO = "mult_gen_v12_0_19,Vivado 2023.2" *) 
module Graying_0_MultiplierBluex0d114
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
  Graying_0_mult_gen_v12_0_19__parameterized3 U0
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

(* CHECK_LICENSE_TYPE = "MultiplierGreenx0d587,mult_gen_v12_0_19,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "MultiplierGreenx0d587" *) 
(* X_CORE_INFO = "mult_gen_v12_0_19,Vivado 2023.2" *) 
module Graying_0_MultiplierGreenx0d587
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
  Graying_0_mult_gen_v12_0_19__parameterized1 U0
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

(* CHECK_LICENSE_TYPE = "MultiplierRedx0d299,mult_gen_v12_0_19,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "MultiplierRedx0d299" *) 
(* X_CORE_INFO = "mult_gen_v12_0_19,Vivado 2023.2" *) 
module Graying_0_MultiplierRedx0d299
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
  Graying_0_mult_gen_v12_0_19 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18240)
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
WQHG878fhIcm2vclrXdB+0vZnWN0CD8x+6i9IJ04Fy1/b1sRpcACnrJx6R9RwZ8ZS5wpJ9tJBGAH
hvtusSU41Mjrq8lfja3cqEvHUTVa2/LLJzc3ZwUK7WrSV7q4PX+Ax/uUu03dd+Q1T50kewg4nv9O
dwAw/7QR8nbTLaSmTXcIIxt7+bP8MutKKMs64pDjACOUq+2BmsYVo+cBeoLa8JGmZ5yYxHuvMl4H
zM7JrqiS0lCL6YBCJbBYCWtc0zkaXVzcvxitsZyOceEQWMKi+lcr/0rDAcUsoLuE27YF8ldhT0Ze
4kbu6zrsJGmH/eritszgYxlk9tmDeYpQEwnl1Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QtvBLkKMaTaRAX7BGrVFKROvfWEwmJTo5U5gI8TU6sxdtTak93KOtQs88NeAx35YmiBDMuiVDI5u
F0Y+hW7TFutWm9qEizWiZZljdKZybILsz1o0dbqc1CE7hAX2e/qHwDKRTJD5pMmFq72/fO897eC3
QiVvyfbKq6V/i7ctyXPNqiV3HkCzVn9KAk4c7Ct5yXEPa/7xQmt+f/LqwbHErV10B+TTYA0ZO/fq
cBVM6scQVMZqIimgsWvRFGQqTwBFySkNS2heHnNcQwZh16JeQCavtN9hTnKvdy6y/jdvo3HRRDBq
3K80nVh6NBuRBxzOIR6OrlqbTC3CgEzWBp3LyA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 35968)
`pragma protect data_block
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
nA==
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
