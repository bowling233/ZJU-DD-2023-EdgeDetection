transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Graying_0  -L xbip_utils_v3_0_11 -L xbip_pipe_v3_0_7 -L xbip_bram18k_v3_0_7 -L mult_gen_v12_0_19 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Graying_0 xil_defaultlib.glbl

do {Graying_0.udo}

run 1000ns

endsim

quit -force
