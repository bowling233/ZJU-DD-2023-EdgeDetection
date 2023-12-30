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

module pixelstream2vesa (
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

  input   		h_start;
  input   		h_end;
  input   		v_start;
  input   		v_end;
  input		    pixel_stream_valid;
  output        hsync;
  output        vsync;
  output        blank_n_de;
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
  // This is hsync_trig.                             				  // 
  //******************************************************************//

  reg			h_start_d1;
  wire			hsync_trig;

  always @(posedge clk or posedge rst)
  begin 
    if (rst) begin
		h_start_d1 <= 1'b0;
	end
    else
    begin
      h_start_d1 <= h_start;
    end
  end

  assign hsync_trig = h_start & (!h_start_d1);

  //******************************************************************//
  // This is vsync_trig.                                              // 
  //******************************************************************//
  
  reg			v_start_d1;
  wire			vsync_trig;

  always @(posedge clk or posedge rst)
  begin
    if (rst) begin
		v_start_d1 <= 1'b0;
	end
    else
    begin
      v_start_d1 <= v_start;
    end
  end

  assign vsync_trig = v_start & (!v_start_d1);

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
      if (hsync_trig) hpos_cnt <= 12'h000;
      else if (hpos_cnt == (H_TOTAL - 1)) hpos_cnt <= 12'h000;          // Recovery VESA Timing counter
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
      if (vsync_trig) vpos_cnt <= 12'h000;
      else if ((vpos_cnt == (V_TOTAL - 1)) && (hpos_cnt == (H_TOTAL - 1))) vpos_cnt <= 12'h000;          // Recovery VESA Timing counter
      else if (hpos_cnt == (H_TOTAL - 1)) vpos_cnt <= vpos_cnt + 12'h001;
    end
  end
  
  
  //******************************************************************//
  // This is the counter control logic.                               // 
  //******************************************************************//
 

//  assign hpos_clr = (hpos_cnt >= (H_TOTAL - 2));
//  assign vpos_clr = (vpos_cnt >= (V_TOTAL - 2)) & hpos_clr;
  assign vpos_ena = hsync_trig;


  //******************************************************************//
  // Horizontal timing logic.                                         //
  //******************************************************************//
  wire pixel_valid_H;
  wire pixel_valid_V;

  assign pixel_valid_H = (hpos_cnt >= 0) && (hpos_cnt <= (H_ADDR - 1));
  assign pixel_valid_V = (vpos_cnt >= 0) && (vpos_cnt <= (V_ADDR - 1));
  
  assign hsync = (hpos_cnt >= (H_ADDR + H_RIGHT_BORDER + H_FP - 1)) && (hpos_cnt < (H_TOTAL - H_BP - H_LEFT_BORDER - 1));
  assign vsync = (vpos_cnt >= (V_ADDR + V_BOTTOM_BORDER + V_FP - 1)) && (vpos_cnt < (V_TOTAL - V_BP - V_TOP_BORDER - 1));

//  assign pixel_stream_valid = ~blank_n_de;
//  assign blank_n_de = pixel_valid_H && pixel_valid_V;
  assign blank_n_de = pixel_stream_valid;
//  assign h_start = h_start_i && pixel_stream_valid;
//  assign h_end = h_end_i && pixel_stream_valid;  
//  assign v_start = v_start_i && pixel_valid_V;
//  assign v_end = v_end_i && pixel_valid_V;  

endmodule
