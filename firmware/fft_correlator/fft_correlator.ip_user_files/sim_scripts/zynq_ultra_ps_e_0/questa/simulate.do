onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib zynq_ultra_ps_e_0_opt

do {wave.do}

view wave
view structure
view signals

do {zynq_ultra_ps_e_0.udo}

run -all

quit -force
