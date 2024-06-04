// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:zynq_ultra_ps_e:3.3
// IP Revision: 3

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
zynq_ultra_ps_e_0 your_instance_name (
  .maxihpm0_lpd_aclk(maxihpm0_lpd_aclk),  // input wire maxihpm0_lpd_aclk
  .maxigp2_awid(maxigp2_awid),            // output wire [15 : 0] maxigp2_awid
  .maxigp2_awaddr(maxigp2_awaddr),        // output wire [39 : 0] maxigp2_awaddr
  .maxigp2_awlen(maxigp2_awlen),          // output wire [7 : 0] maxigp2_awlen
  .maxigp2_awsize(maxigp2_awsize),        // output wire [2 : 0] maxigp2_awsize
  .maxigp2_awburst(maxigp2_awburst),      // output wire [1 : 0] maxigp2_awburst
  .maxigp2_awlock(maxigp2_awlock),        // output wire maxigp2_awlock
  .maxigp2_awcache(maxigp2_awcache),      // output wire [3 : 0] maxigp2_awcache
  .maxigp2_awprot(maxigp2_awprot),        // output wire [2 : 0] maxigp2_awprot
  .maxigp2_awvalid(maxigp2_awvalid),      // output wire maxigp2_awvalid
  .maxigp2_awuser(maxigp2_awuser),        // output wire [15 : 0] maxigp2_awuser
  .maxigp2_awready(maxigp2_awready),      // input wire maxigp2_awready
  .maxigp2_wdata(maxigp2_wdata),          // output wire [31 : 0] maxigp2_wdata
  .maxigp2_wstrb(maxigp2_wstrb),          // output wire [3 : 0] maxigp2_wstrb
  .maxigp2_wlast(maxigp2_wlast),          // output wire maxigp2_wlast
  .maxigp2_wvalid(maxigp2_wvalid),        // output wire maxigp2_wvalid
  .maxigp2_wready(maxigp2_wready),        // input wire maxigp2_wready
  .maxigp2_bid(maxigp2_bid),              // input wire [15 : 0] maxigp2_bid
  .maxigp2_bresp(maxigp2_bresp),          // input wire [1 : 0] maxigp2_bresp
  .maxigp2_bvalid(maxigp2_bvalid),        // input wire maxigp2_bvalid
  .maxigp2_bready(maxigp2_bready),        // output wire maxigp2_bready
  .maxigp2_arid(maxigp2_arid),            // output wire [15 : 0] maxigp2_arid
  .maxigp2_araddr(maxigp2_araddr),        // output wire [39 : 0] maxigp2_araddr
  .maxigp2_arlen(maxigp2_arlen),          // output wire [7 : 0] maxigp2_arlen
  .maxigp2_arsize(maxigp2_arsize),        // output wire [2 : 0] maxigp2_arsize
  .maxigp2_arburst(maxigp2_arburst),      // output wire [1 : 0] maxigp2_arburst
  .maxigp2_arlock(maxigp2_arlock),        // output wire maxigp2_arlock
  .maxigp2_arcache(maxigp2_arcache),      // output wire [3 : 0] maxigp2_arcache
  .maxigp2_arprot(maxigp2_arprot),        // output wire [2 : 0] maxigp2_arprot
  .maxigp2_arvalid(maxigp2_arvalid),      // output wire maxigp2_arvalid
  .maxigp2_aruser(maxigp2_aruser),        // output wire [15 : 0] maxigp2_aruser
  .maxigp2_arready(maxigp2_arready),      // input wire maxigp2_arready
  .maxigp2_rid(maxigp2_rid),              // input wire [15 : 0] maxigp2_rid
  .maxigp2_rdata(maxigp2_rdata),          // input wire [31 : 0] maxigp2_rdata
  .maxigp2_rresp(maxigp2_rresp),          // input wire [1 : 0] maxigp2_rresp
  .maxigp2_rlast(maxigp2_rlast),          // input wire maxigp2_rlast
  .maxigp2_rvalid(maxigp2_rvalid),        // input wire maxigp2_rvalid
  .maxigp2_rready(maxigp2_rready),        // output wire maxigp2_rready
  .maxigp2_awqos(maxigp2_awqos),          // output wire [3 : 0] maxigp2_awqos
  .maxigp2_arqos(maxigp2_arqos),          // output wire [3 : 0] maxigp2_arqos
  .pl_resetn0(pl_resetn0),                // output wire pl_resetn0
  .pl_clk0(pl_clk0)                      // output wire pl_clk0
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file zynq_ultra_ps_e_0.v when simulating
// the core, zynq_ultra_ps_e_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

