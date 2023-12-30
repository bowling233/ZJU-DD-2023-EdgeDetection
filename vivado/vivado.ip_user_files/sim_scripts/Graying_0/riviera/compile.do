transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xbip_utils_v3_0_11
vlib riviera/xbip_pipe_v3_0_7
vlib riviera/xbip_bram18k_v3_0_7
vlib riviera/mult_gen_v12_0_19
vlib riviera/xil_defaultlib

vmap xbip_utils_v3_0_11 riviera/xbip_utils_v3_0_11
vmap xbip_pipe_v3_0_7 riviera/xbip_pipe_v3_0_7
vmap xbip_bram18k_v3_0_7 riviera/xbip_bram18k_v3_0_7
vmap mult_gen_v12_0_19 riviera/mult_gen_v12_0_19
vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xbip_utils_v3_0_11 -93  -incr \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_7 -93  -incr \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_7 -93  -incr \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_19 -93  -incr \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../vivado.gen/sources_1/ip/Graying_0/sources_1/ip/MultiplierBluex0d114/sim/MultiplierBluex0d114.vhd" \
"../../../../vivado.gen/sources_1/ip/Graying_0/sources_1/ip/MultiplierGreenx0d587/sim/MultiplierGreenx0d587.vhd" \
"../../../../vivado.gen/sources_1/ip/Graying_0/sources_1/ip/MultiplierRedx0d299/sim/MultiplierRedx0d299.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 -l xbip_utils_v3_0_11 -l xbip_pipe_v3_0_7 -l xbip_bram18k_v3_0_7 -l mult_gen_v12_0_19 -l xil_defaultlib \
"../../../../vivado.gen/sources_1/ip/Graying_0/sources_1/new/Graying.v" \
"../../../../vivado.gen/sources_1/ip/Graying_0/sim/Graying_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

