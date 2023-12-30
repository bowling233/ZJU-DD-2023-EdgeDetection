`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/07 10:49:21
// Design Name: 
// Module Name: HDMI_ProcessPipe
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module HDMI_Passthrough(
    sys_clk200_clk_p,
    sys_clk200_clk_n,
    reset,
    ddc_scl_io,
    ddc_sda_io,
    TMDS_IN_clk_n,
    TMDS_IN_clk_p,
    TMDS_IN_data_n,
    TMDS_IN_data_p,
    TMDS_OUT_clk_n,
    TMDS_OUT_clk_p,
    TMDS_OUT_data_n,
    TMDS_OUT_data_p
    );
    input TMDS_IN_clk_n;
    input TMDS_IN_clk_p;
    input [2:0] TMDS_IN_data_n;
    input [2:0] TMDS_IN_data_p;
    output TMDS_OUT_clk_n;
    output TMDS_OUT_clk_p;
    output [2:0] TMDS_OUT_data_n;
    output [2:0] TMDS_OUT_data_p;
    inout ddc_scl_io;
    inout ddc_sda_io;
    input reset;
    input sys_clk200_clk_n;
    input sys_clk200_clk_p;    

    wire sysclk200;
    wire clk200;
    wire ddc_scl_i;
    wire ddc_scl_io;
    wire ddc_scl_o;
    wire ddc_scl_t;
    wire ddc_sda_i;
    wire ddc_sda_io;
    wire ddc_sda_o;
    wire ddc_sda_t;
    
    wire PixelClk;
    wire PixelClkR;
    wire PixelClkLckd;
    wire hsync;
    wire vsync;
    wire blank;
    wire de;
    wire [23:0] rgb;
   // Pre-processing video bus    
    wire hsync_i;
    wire vsync_i;
    wire blank_i;
    wire de_i;
    wire [23:0] rgb_i;
   // Post-processing video bus
    wire hsync_o;
    wire vsync_o;
    wire blank_o;
    wire de_o;
    wire [23:0] rgb_o;
   // Cordinate-Video Input
     wire hstart_i;
     wire hend_i;
     wire vstart_i;
     wire vend_i;
     wire pixelstream_valid_i;
   // Cordinate-Video Output
      wire hstart_o;
      wire hend_o;
      wire vstart_o;
      wire vend_o;
      wire pixelstream_valid_o;
      wire [7:0] video_data;
      wire video_out_ready;
      wire [7:0] sobel_video_data_out;
   // Post-processing video bus
       wire hsync_o1;
       wire vsync_o1;
       wire blank_o1;
       wire de_o1;
   // Post-processing video bus
        wire hsync_o2;
        wire vsync_o2;
        wire blank_o2;
        wire de_o2;

// IBUFDS: Differential Input Buffer
//         Kintex-7
// Xilinx HDL Language Template, version 2014.4

IBUFDS #(
  .DIFF_TERM("FALSE"),       // Differential Termination
  .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE" 
  .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
) SYSCLK_BUFDS (
  .O(sysclk200),  // Buffer output
  .I(sys_clk200_clk_p),  // Diff_p buffer input (connect directly to top-level port)
  .IB(sys_clk200_clk_n) // Diff_n buffer input (connect directly to top-level port)
);

BUFG SYSCLK_BUFG (
  .O(clk200), // 1-bit output: Clock output
  .I(sysclk200)  // 1-bit input: Clock input
);


dvi2rgb_0 U1 (
  .TMDS_Clk_p(TMDS_IN_clk_p),        // input wire TMDS_Clk_p
  .TMDS_Clk_n(TMDS_IN_clk_n),        // input wire TMDS_Clk_n
  .TMDS_Data_p(TMDS_IN_data_p),      // input wire [2 : 0] TMDS_Data_p
  .TMDS_Data_n(TMDS_IN_data_n),      // input wire [2 : 0] TMDS_Data_n
  .RefClk(clk200),                // input wire RefClk
  .aRst_n(reset),                // input wire aRst_n
  .vid_pData(rgb),          // output wire [23 : 0] vid_pData
  .vid_pVDE(de_i),            // output wire vid_pVDE
  .vid_pHSync(hsync_i),        // output wire vid_pHSync
  .vid_pVSync(vsync_i),        // output wire vid_pVSync
  .PixelClk(PixelClk),            // output wire PixelClk
  .aPixelClkLckd(PixelClkLckd),  // output wire aPixelClkLckd
  .DDC_SDA_I(ddc_sda_i),          // input wire DDC_SDA_I
  .DDC_SDA_O(ddc_sda_o),          // output wire DDC_SDA_O
  .DDC_SDA_T(ddc_sda_t),          // output wire DDC_SDA_T
  .DDC_SCL_I(ddc_scl_i),          // input wire DDC_SCL_I
  .DDC_SCL_O(ddc_scl_o),          // output wire DDC_SCL_O
  .DDC_SCL_T(ddc_scl_t),          // output wire DDC_SCL_T
  .pRst_n(1'b1)                // input wire pRst_n
);

Graying_0 U3 (
  .clk(PixelClk),              // input wire clk
  .rst_n(reset),          // input wire rst_n
  .in_enable(de_i),  // input wire in_enable
  .in_data(rgb),      // input wire [23 : 0] in_data
  .out_ready(video_out_ready),  // output wire out_ready
  .out_data(video_data)    // output wire [7 : 0] out_data
);


vesa2pixelstream P1(
.clk(PixelClk),
.rst(~reset),
.hsync(hsync_i),
.vsync(vsync_i),
.blank_n_de(de_i),
.h_start(hstart_i),
.h_end(hend_i),
.v_start(vstart_i),
.v_end(vend_i),
.pixel_stream_valid(pixelstream_valid_i)
);

Pixel_Stream_HDL_Model U5(
.clk(PixelClk),
.reset(~reset),
.clk_enable(PixelClkLckd),
.pixelIn(video_data),
.ctrlIn_hStart(hstart_i),
.ctrlIn_hEnd(hend_i),
.ctrlIn_vStart(vstart_i),
.ctrlIn_vEnd(vend_i),
.ctrlIn_valid(pixelstream_valid_i),
.ce_out(),
.pixelOut(sobel_video_data_out),
.ctrlOut_hStart(hstart_o),
.ctrlOut_hEnd(hend_o),
.ctrlOut_vStart(vstart_o),
.ctrlOut_vEnd(vend_o),
.ctrlOut_valid(pixelstream_valid_o)
);

pixelstream2vesa P2(
.clk(PixelClk),
.rst(~reset),
.hsync(hsync),
.vsync(vsync),
.blank_n_de(de),
.h_start(hstart_o),
.h_end(hend_o),
.v_start(vstart_o),
.v_end(vend_o),
.pixel_stream_valid(pixelstream_valid_o)
);


rgb2dvi_0 U2 (
  .TMDS_Clk_p(TMDS_OUT_clk_p),    // output wire TMDS_Clk_p
  .TMDS_Clk_n(TMDS_OUT_clk_n),    // output wire TMDS_Clk_n
  .TMDS_Data_p(TMDS_OUT_data_p),  // output wire [2 : 0] TMDS_Data_p
  .TMDS_Data_n(TMDS_OUT_data_n),  // output wire [2 : 0] TMDS_Data_n
  .aRst_n(reset),            // input wire aRst_n
  .vid_pData({3{sobel_video_data_out}}),      // input wire [23 : 0] vid_pData
  .vid_pVDE(de),        // input wire vid_pVDE
  .vid_pHSync(hsync),    // input wire vid_pHSync
  .vid_pVSync(vsync),    // input wire vid_pVSync
  .PixelClk(PixelClk)        // input wire PixelClk
);


IOBUF ddc_scl_iobuf
   (.I(ddc_scl_o),
    .IO(ddc_scl_io),
    .O(ddc_scl_i),
    .T(ddc_scl_t));
IOBUF ddc_sda_iobuf
   (.I(ddc_sda_o),
    .IO(ddc_sda_io),
    .O(ddc_sda_i),
    .T(ddc_sda_t));
   
endmodule
