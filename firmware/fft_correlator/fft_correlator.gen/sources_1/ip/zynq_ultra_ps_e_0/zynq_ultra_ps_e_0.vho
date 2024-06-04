-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:zynq_ultra_ps_e:3.3
-- IP Revision: 3

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT zynq_ultra_ps_e_0
  PORT (
    maxihpm0_lpd_aclk : IN STD_LOGIC;
    maxigp2_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    maxigp2_awaddr : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
    maxigp2_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    maxigp2_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    maxigp2_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    maxigp2_awlock : OUT STD_LOGIC;
    maxigp2_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    maxigp2_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    maxigp2_awvalid : OUT STD_LOGIC;
    maxigp2_awuser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    maxigp2_awready : IN STD_LOGIC;
    maxigp2_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    maxigp2_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    maxigp2_wlast : OUT STD_LOGIC;
    maxigp2_wvalid : OUT STD_LOGIC;
    maxigp2_wready : IN STD_LOGIC;
    maxigp2_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    maxigp2_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    maxigp2_bvalid : IN STD_LOGIC;
    maxigp2_bready : OUT STD_LOGIC;
    maxigp2_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    maxigp2_araddr : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
    maxigp2_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    maxigp2_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    maxigp2_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    maxigp2_arlock : OUT STD_LOGIC;
    maxigp2_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    maxigp2_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    maxigp2_arvalid : OUT STD_LOGIC;
    maxigp2_aruser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    maxigp2_arready : IN STD_LOGIC;
    maxigp2_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    maxigp2_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    maxigp2_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    maxigp2_rlast : IN STD_LOGIC;
    maxigp2_rvalid : IN STD_LOGIC;
    maxigp2_rready : OUT STD_LOGIC;
    maxigp2_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    maxigp2_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pl_resetn0 : OUT STD_LOGIC;
    pl_clk0 : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : zynq_ultra_ps_e_0
  PORT MAP (
    maxihpm0_lpd_aclk => maxihpm0_lpd_aclk,
    maxigp2_awid => maxigp2_awid,
    maxigp2_awaddr => maxigp2_awaddr,
    maxigp2_awlen => maxigp2_awlen,
    maxigp2_awsize => maxigp2_awsize,
    maxigp2_awburst => maxigp2_awburst,
    maxigp2_awlock => maxigp2_awlock,
    maxigp2_awcache => maxigp2_awcache,
    maxigp2_awprot => maxigp2_awprot,
    maxigp2_awvalid => maxigp2_awvalid,
    maxigp2_awuser => maxigp2_awuser,
    maxigp2_awready => maxigp2_awready,
    maxigp2_wdata => maxigp2_wdata,
    maxigp2_wstrb => maxigp2_wstrb,
    maxigp2_wlast => maxigp2_wlast,
    maxigp2_wvalid => maxigp2_wvalid,
    maxigp2_wready => maxigp2_wready,
    maxigp2_bid => maxigp2_bid,
    maxigp2_bresp => maxigp2_bresp,
    maxigp2_bvalid => maxigp2_bvalid,
    maxigp2_bready => maxigp2_bready,
    maxigp2_arid => maxigp2_arid,
    maxigp2_araddr => maxigp2_araddr,
    maxigp2_arlen => maxigp2_arlen,
    maxigp2_arsize => maxigp2_arsize,
    maxigp2_arburst => maxigp2_arburst,
    maxigp2_arlock => maxigp2_arlock,
    maxigp2_arcache => maxigp2_arcache,
    maxigp2_arprot => maxigp2_arprot,
    maxigp2_arvalid => maxigp2_arvalid,
    maxigp2_aruser => maxigp2_aruser,
    maxigp2_arready => maxigp2_arready,
    maxigp2_rid => maxigp2_rid,
    maxigp2_rdata => maxigp2_rdata,
    maxigp2_rresp => maxigp2_rresp,
    maxigp2_rlast => maxigp2_rlast,
    maxigp2_rvalid => maxigp2_rvalid,
    maxigp2_rready => maxigp2_rready,
    maxigp2_awqos => maxigp2_awqos,
    maxigp2_arqos => maxigp2_arqos,
    pl_resetn0 => pl_resetn0,
    pl_clk0 => pl_clk0
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file zynq_ultra_ps_e_0.vhd when simulating
-- the core, zynq_ultra_ps_e_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

