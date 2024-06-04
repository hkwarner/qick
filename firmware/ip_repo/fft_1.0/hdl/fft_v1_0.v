
`timescale 1 ns / 1 ps

	module fft_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI_fft_0
		parameter integer C_S00_AXI_fft_0_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_fft_0_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI_fft_0
		input wire  s00_axi_fft_0_aclk,
		input wire  s00_axi_fft_0_aresetn,
		input wire [C_S00_AXI_fft_0_ADDR_WIDTH-1 : 0] s00_axi_fft_0_awaddr,
		input wire [2 : 0] s00_axi_fft_0_awprot,
		input wire  s00_axi_fft_0_awvalid,
		output wire  s00_axi_fft_0_awready,
		input wire [C_S00_AXI_fft_0_DATA_WIDTH-1 : 0] s00_axi_fft_0_wdata,
		input wire [(C_S00_AXI_fft_0_DATA_WIDTH/8)-1 : 0] s00_axi_fft_0_wstrb,
		input wire  s00_axi_fft_0_wvalid,
		output wire  s00_axi_fft_0_wready,
		output wire [1 : 0] s00_axi_fft_0_bresp,
		output wire  s00_axi_fft_0_bvalid,
		input wire  s00_axi_fft_0_bready,
		input wire [C_S00_AXI_fft_0_ADDR_WIDTH-1 : 0] s00_axi_fft_0_araddr,
		input wire [2 : 0] s00_axi_fft_0_arprot,
		input wire  s00_axi_fft_0_arvalid,
		output wire  s00_axi_fft_0_arready,
		output wire [C_S00_AXI_fft_0_DATA_WIDTH-1 : 0] s00_axi_fft_0_rdata,
		output wire [1 : 0] s00_axi_fft_0_rresp,
		output wire  s00_axi_fft_0_rvalid,
		input wire  s00_axi_fft_0_rready
	);
// Instantiation of Axi Bus Interface S00_AXI_fft_0
	fft_v1_0_S00_AXI_fft_0 # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_fft_0_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_fft_0_ADDR_WIDTH)
	) fft_v1_0_S00_AXI_fft_0_inst (
		.S_AXI_ACLK(s00_axi_fft_0_aclk),
		.S_AXI_ARESETN(s00_axi_fft_0_aresetn),
		.S_AXI_AWADDR(s00_axi_fft_0_awaddr),
		.S_AXI_AWPROT(s00_axi_fft_0_awprot),
		.S_AXI_AWVALID(s00_axi_fft_0_awvalid),
		.S_AXI_AWREADY(s00_axi_fft_0_awready),
		.S_AXI_WDATA(s00_axi_fft_0_wdata),
		.S_AXI_WSTRB(s00_axi_fft_0_wstrb),
		.S_AXI_WVALID(s00_axi_fft_0_wvalid),
		.S_AXI_WREADY(s00_axi_fft_0_wready),
		.S_AXI_BRESP(s00_axi_fft_0_bresp),
		.S_AXI_BVALID(s00_axi_fft_0_bvalid),
		.S_AXI_BREADY(s00_axi_fft_0_bready),
		.S_AXI_ARADDR(s00_axi_fft_0_araddr),
		.S_AXI_ARPROT(s00_axi_fft_0_arprot),
		.S_AXI_ARVALID(s00_axi_fft_0_arvalid),
		.S_AXI_ARREADY(s00_axi_fft_0_arready),
		.S_AXI_RDATA(s00_axi_fft_0_rdata),
		.S_AXI_RRESP(s00_axi_fft_0_rresp),
		.S_AXI_RVALID(s00_axi_fft_0_rvalid),
		.S_AXI_RREADY(s00_axi_fft_0_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
