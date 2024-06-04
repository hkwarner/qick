

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "fft" "NUM_INSTANCES" "DEVICE_ID"  "C_S00_AXI_fft_0_BASEADDR" "C_S00_AXI_fft_0_HIGHADDR"
}
