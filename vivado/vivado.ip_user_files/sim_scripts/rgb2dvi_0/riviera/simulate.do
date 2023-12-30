transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+rgb2dvi_0  -L xil_defaultlib -L secureip -O5 xil_defaultlib.rgb2dvi_0

do {rgb2dvi_0.udo}

run 1000ns

endsim

quit -force
