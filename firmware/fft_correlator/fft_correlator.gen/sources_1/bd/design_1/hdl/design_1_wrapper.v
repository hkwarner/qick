//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Fri Aug 18 09:07:57 2023
//Host        : hkw-lonovo running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (M_AXIS_DOUT_0_tdata,
    M_AXIS_DOUT_0_tlast,
    M_AXIS_DOUT_0_tready,
    M_AXIS_DOUT_0_tvalid,
    aclk_2,
    aresetn_0,
    m_axis_dout_tdata_0,
    m_axis_dout_tvalid_0,
    s_axis_data_tdata_0,
    s_axis_data_tdata_1);
  output [79:0]M_AXIS_DOUT_0_tdata;
  output M_AXIS_DOUT_0_tlast;
  input M_AXIS_DOUT_0_tready;
  output M_AXIS_DOUT_0_tvalid;
  input aclk_2;
  input aresetn_0;
  output [79:0]m_axis_dout_tdata_0;
  output m_axis_dout_tvalid_0;
  input [63:0]s_axis_data_tdata_0;
  input [63:0]s_axis_data_tdata_1;

  wire [79:0]M_AXIS_DOUT_0_tdata;
  wire M_AXIS_DOUT_0_tlast;
  wire M_AXIS_DOUT_0_tready;
  wire M_AXIS_DOUT_0_tvalid;
  wire aclk_2;
  wire aresetn_0;
  wire [79:0]m_axis_dout_tdata_0;
  wire m_axis_dout_tvalid_0;
  wire [63:0]s_axis_data_tdata_0;
  wire [63:0]s_axis_data_tdata_1;

  design_1 design_1_i
       (.M_AXIS_DOUT_0_tdata(M_AXIS_DOUT_0_tdata),
        .M_AXIS_DOUT_0_tlast(M_AXIS_DOUT_0_tlast),
        .M_AXIS_DOUT_0_tready(M_AXIS_DOUT_0_tready),
        .M_AXIS_DOUT_0_tvalid(M_AXIS_DOUT_0_tvalid),
        .aclk_2(aclk_2),
        .aresetn_0(aresetn_0),
        .m_axis_dout_tdata_0(m_axis_dout_tdata_0),
        .m_axis_dout_tvalid_0(m_axis_dout_tvalid_0),
        .s_axis_data_tdata_0(s_axis_data_tdata_0),
        .s_axis_data_tdata_1(s_axis_data_tdata_1));
endmodule
