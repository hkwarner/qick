onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+zynq_ultra_ps_e_0 -L xilinx_vip -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.zynq_ultra_ps_e_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {zynq_ultra_ps_e_0.udo}

run -all

endsim

quit -force
