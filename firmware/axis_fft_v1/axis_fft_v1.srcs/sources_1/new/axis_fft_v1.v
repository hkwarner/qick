// Signal Generator V4.
// s_axi_aclk	: clock for s_axi_*
// s0_axis_aclk	: clock for s0_axis_*
// aclk			: clock for s1_axis_* and m_axis_*
//
module axis_signal_gen_v5
	( 
		// AXI Slave I/F for configuration.
		s_axi_aclk		,
		s_axi_aresetn	,

		s_axi_awaddr	,
		s_axi_awprot	,
		s_axi_awvalid	,
		s_axi_awready	,

		s_axi_wdata		,
		s_axi_wstrb		,
		s_axi_wvalid	,
		s_axi_wready	,

		s_axi_bresp		,
		s_axi_bvalid	,
		s_axi_bready	,

		s_axi_araddr	,
		s_axi_arprot	,
		s_axi_arvalid	,
		s_axi_arready	,

		s_axi_rdata		,
		s_axi_rresp		,
		s_axi_rvalid	,
		s_axi_rready	,

    	// AXIS Slave to load memory samples.
		s0_axis_aclk	,
		s0_axis_aresetn	,
		s0_axis_tdata	,
		s0_axis_tvalid	,
		s0_axis_tready	,

		// s1_* and m_* reset/clock.
		aclk			,
		aresetn			,

    	// AXIS Slave to queue waveforms.
		s1_axis_tdata	,
		s1_axis_tvalid	,
		s1_axis_tready	,

		// AXIS Master for output.
		m_axis_tready	,
		m_axis_tvalid	,
		m_axis_tdata
	);
