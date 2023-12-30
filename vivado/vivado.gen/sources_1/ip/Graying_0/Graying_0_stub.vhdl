-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Sat Dec 30 21:29:28 2023
-- Host        : bowling-AP201 running 64-bit Ubuntu 23.04
-- Command     : write_vhdl -force -mode synth_stub
--               /home/bowling233/Code/_repo/FPGA_edge_detection/vivado/vivado.gen/sources_1/ip/Graying_0/Graying_0_stub.vhdl
-- Design      : Graying_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Graying_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    in_enable : in STD_LOGIC;
    in_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    out_ready : out STD_LOGIC;
    out_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end Graying_0;

architecture stub of Graying_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,in_enable,in_data[23:0],out_ready,out_data[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Graying,Vivado 2023.2";
begin
end;
