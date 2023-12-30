vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xbip_utils_v3_0_11
vlib modelsim_lib/msim/xbip_pipe_v3_0_7
vlib modelsim_lib/msim/xbip_bram18k_v3_0_7
vlib modelsim_lib/msim/mult_gen_v12_0_19
vlib modelsim_lib/msim/xil_defaultlib

vmap xbip_utils_v3_0_11 modelsim_lib/msim/xbip_utils_v3_0_11
vmap xbip_pipe_v3_0_7 modelsim_lib/msim/xbip_pipe_v3_0_7
vmap xbip_bram18k_v3_0_7 modelsim_lib/msim/xbip_bram18k_v3_0_7
vmap mult_gen_v12_0_19 modelsim_lib/msim/mult_gen_v12_0_19
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xbip_utils_v3_0_11 -64 -93  \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_7 -64 -93  \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_7 -64 -93  \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_19 -64 -93  \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../../vivado.gen/sources_1/ip/Graying_0/sources_1/ip/MultiplierBluex0d114/sim/MultiplierBluex0d114.vhd" \
"../../../../vivado.gen/sources_1/ip/Graying_0/sources_1/ip/MultiplierGreenx0d587/sim/MultiplierGreenx0d587.vhd" \
"../../../../vivado.gen/sources_1/ip/Graying_0/sources_1/ip/MultiplierRedx0d299/sim/MultiplierRedx0d299.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../vivado.gen/sources_1/ip/Graying_0/sources_1/new/Graying.v" \
"../../../../vivado.gen/sources_1/ip/Graying_0/sim/Graying_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

