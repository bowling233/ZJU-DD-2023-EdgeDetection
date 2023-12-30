// File:  timing.v
// Date:  01/01/2005
// Name:  Eric Crabill
//
// This is an implementation of a video timing
// controller for a 1280x720@60fps non-interlaced
// raster display.  It is derived from the standard
// 1280x720@60fps Video mode.  It is hardly optimal;
// a quick kludge to simplify a previously written
// module.

`timescale 1 ns / 1 ps

module vesa2pixelstream (
                clk,
                rst,
                hsync,
                vsync,
                blank_n_de,
                h_start,
				h_end,
				v_start,
				v_end,
                pixel_stream_valid
                );

  output   		h_start;
  output   		h_end;
  output   		v_start;
  output   		v_end;
  output		pixel_stream_valid;
  input         hsync;
  input        	vsync;
  input        	blank_n_de;
  input         clk;
  input         rst;

  //******************************************************************//
  // This is the starndard VESA Monitor Timing parameters.            // 
  // for 1280x720@60fps AND fully visible Acording to DMT v1r13		  //
  //******************************************************************//
  parameter        H_LEFT_BORDER = 0;  
  parameter        H_SYNC = 40;
  parameter        H_RIGHT_BORDER = 0;  
  parameter        H_FP = 110;  
  parameter        H_BP = 220;
  parameter        H_BLANK = 370;                    // H_BLANK = SUM(H_* Above H_BLANK)                     
  parameter        H_ADDR = 1280;
  parameter        H_TOTAL = 1650;                    // H_TOTAL = H_BLANK + H_ADDR    
  
  parameter        V_TOP_BORDER = 0; 
  parameter        V_SYNC = 5;
  parameter        V_BOTTOM_BORDER = 0; 
  parameter        V_FP = 5;  
  parameter        V_BP = 20;
  parameter        V_BLANK = 30;                    // V_BLANK = SUM(V_* Above V_BLANK)
  parameter        V_ADDR = 720;
  parameter        V_TOTAL = 750;                    // V_TOTAL = V_BLANK + V_ADDR				
  
  //******************************************************************//
  // This is hsync_start.                           				  // 
  //******************************************************************//

  reg			hsync_d1;
  wire			hsync_start;

  always @(posedge clk or posedge rst)
  begin 
    if (rst) begin
		hsync_d1 <= 1'b0;
	end
    else
    begin
      hsync_d1 <= hsync;
    end
  end

  assign hsync_start = hsync & (!hsync_d1);

  //******************************************************************//
  // This is vsync_start.                                             // 
  //******************************************************************//
  
  reg			vsync_d1;
  wire			vsync_start;

  always @(posedge clk or posedge rst)
  begin
    if (rst) begin
		vsync_d1 <= 1'b0;
	end
    else
    begin
      vsync_d1 <= vsync;
    end
  end

  assign vsync_start = vsync & (!vsync_d1);

  //******************************************************************//
  // This is the 12-bit horizontal counter.                           // 
  //******************************************************************//
 
 
  reg    [11:0] hpos_cnt;
  wire          hpos_clr;

  always @(posedge clk or posedge rst)
  begin : hcounter
    if (rst) hpos_cnt <= 12'h000;
    else
    begin
      if (hsync_start) hpos_cnt <= 12'h000;
      else hpos_cnt <= hpos_cnt + 12'h001;
    end
  end  

  //******************************************************************//
  // This is the 12-bit vertical counter.                             // 
  //******************************************************************//


  reg    [11:0] vpos_cnt;
  wire          vpos_clr;
  wire          vpos_ena;

  always @(posedge clk or posedge rst)
  begin : vcounter
    if (rst) vpos_cnt <= 12'h000;
    else
    begin
      if (vsync_start) vpos_cnt <= 12'h000;
      else if (vpos_ena) vpos_cnt <= vpos_cnt + 12'h001;
    end
  end
  
  
  //******************************************************************//
  // This is the counter control logic.                               // 
  //******************************************************************//
 

//  assign hpos_clr = (hpos_cnt >= (H_TOTAL - 2));
//  assign vpos_clr = (vpos_cnt >= (V_TOTAL - 2)) & hpos_clr;
  assign vpos_ena = hsync_start;


  //******************************************************************//
  // Horizontal timing logic.                                         //
  //******************************************************************//
  wire pixel_valid_H;
  wire pixel_valid_V;
  wire h_start_i;
  wire h_end_i;
  wire v_start_i;
  wire v_end_i;
    
  assign h_start_i = (hpos_cnt == (H_SYNC + H_BP + H_LEFT_BORDER- 1))? 1'b1 : 1'b0;
  assign h_end_i = (hpos_cnt == (H_SYNC + H_BP + H_LEFT_BORDER + H_ADDR - 2))? 1'b1 : 1'b0;

  assign v_start_i = (vpos_cnt == (V_SYNC + V_BP + V_TOP_BORDER)) && (hpos_cnt == (H_SYNC + H_BP + H_LEFT_BORDER - 1))? 1'b1 : 1'b0;
  assign v_end_i = (vpos_cnt == (V_SYNC + V_BP + V_TOP_BORDER + V_ADDR - 1)) && (hpos_cnt == (H_SYNC + H_BP + H_LEFT_BORDER + H_ADDR - 2))? 1'b1 : 1'b0;
  
  assign pixel_valid_H = (hpos_cnt >= (H_SYNC + H_BP + H_LEFT_BORDER - 1)) && (hpos_cnt < (H_TOTAL - H_FP - H_RIGHT_BORDER - 1));
  assign pixel_valid_V = (vpos_cnt >= (V_SYNC + V_BP + V_TOP_BORDER)) && (vpos_cnt < (V_TOTAL - V_FP - V_BOTTOM_BORDER));

  assign pixel_stream_valid = blank_n_de;
//  assign pixel_stream_valid = pixel_valid_H && pixel_valid_V && blank_n_de;
  assign h_start = h_start_i && pixel_stream_valid;
  assign h_end = h_end_i && pixel_stream_valid;  
  assign v_start = v_start_i && pixel_stream_valid;
  assign v_end = v_end_i && pixel_stream_valid;  

endmodule
