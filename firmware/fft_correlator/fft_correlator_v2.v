//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Fri Aug 18 09:07:57 2023
//Host        : hkw-lonovo running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

/* reset loop
FFT Channel 2 */
(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT_0, CLK_DOMAIN design_1_aclk_2, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 81913} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 80} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 81913} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xn_re {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_re} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 81873} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 1024} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} value 80} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 32} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}} field_xn_im {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_im} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 81873} bitoffset {attribs {resolve_type generated dependency xn_im_offset format long minimum {} maximum {}} value 40} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 1024} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} value 80} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 32} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}}} TDATA_WIDTH 80 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xk_index {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xk_index} enabled {attribs {resolve_type generated dependency xk_index_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xk_index_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_blk_exp {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value blk_exp} enabled {attribs {resolve_type generated dependency blk_exp_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type generated dependency blk_exp_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} field_ovflo {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value ovflo} enabled {attribs {resolve_type generated dependency ovflo_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type generated dependency ovflo_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}}} TUSER_WIDTH 0}, PHASE 0.000, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [79:0]M_AXIS_DOUT_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT_0 TLAST" *) output M_AXIS_DOUT_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT_0 TREADY" *) input M_AXIS_DOUT_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT_0 TVALID" *) output M_AXIS_DOUT_0_tvalid;
  /* input clock trigger */
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_2 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_2, ASSOCIATED_BUSIF M_AXIS_DOUT_0, ASSOCIATED_RESET aresetn_0, CLK_DOMAIN design_1_aclk_2, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input aclk_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_0;
  output [79:0]m_axis_dout_tdata_0;
  output m_axis_dout_tvalid_0;
  input [63:0]s_axis_data_tdata_0;
  input [63:0]s_axis_data_tdata_1;

  wire aclk_2_1;
  wire aresetn_0_1;
  wire [63:0]cmpy_0_m_axis_dout_tdata;
  wire cmpy_0_m_axis_dout_tvalid;
  wire [63:0]cmpy_1_M_AXIS_DOUT_TDATA;
  wire cmpy_1_M_AXIS_DOUT_TVALID;
  wire [63:0]s_axis_data_tdata_0_1;
  wire [63:0]s_axis_data_tdata_1_1;
  wire [63:0]xfft_0_M_AXIS_DATA_TDATA;
  wire xfft_0_M_AXIS_DATA_TVALID;
  wire [63:0]xfft_1_m_axis_data_tdata;
  wire [63:0]xfft_2_M_AXIS_DATA_TDATA;
  wire xfft_2_M_AXIS_DATA_TLAST;
  wire xfft_2_M_AXIS_DATA_TREADY;
  wire xfft_2_M_AXIS_DATA_TVALID;
  wire [63:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [63:0]xlconstant_2_dout;
  wire [0:0]xlconstant_3_dout;
  wire [63:0]xlconstant_4_dout;
  wire [0:0]xlconstant_5_dout;

  assign M_AXIS_DOUT_0_tdata[63:0] = xfft_2_M_AXIS_DATA_TDATA;
  assign M_AXIS_DOUT_0_tlast = xfft_2_M_AXIS_DATA_TLAST;
  assign M_AXIS_DOUT_0_tvalid = xfft_2_M_AXIS_DATA_TVALID;
  assign aclk_2_1 = aclk_2;
  assign aresetn_0_1 = aresetn_0;
  assign m_axis_dout_tdata_0[63:0] = cmpy_0_m_axis_dout_tdata;
  assign m_axis_dout_tvalid_0 = cmpy_0_m_axis_dout_tvalid;
  assign s_axis_data_tdata_0_1 = s_axis_data_tdata_0[63:0];
  assign s_axis_data_tdata_1_1 = s_axis_data_tdata_1[63:0];
  assign xfft_2_M_AXIS_DATA_TREADY = M_AXIS_DOUT_0_tready;
  design_1_cmpy_0_0 cmpy_0
       (.aclk(aclk_2_1),
        .m_axis_dout_tdata(cmpy_0_m_axis_dout_tdata),
        .m_axis_dout_tvalid(cmpy_0_m_axis_dout_tvalid),
        .s_axis_a_tdata(cmpy_1_M_AXIS_DOUT_TDATA),
        .s_axis_a_tvalid(cmpy_1_M_AXIS_DOUT_TVALID),
        .s_axis_b_tdata(xfft_0_M_AXIS_DATA_TDATA),
        .s_axis_b_tvalid(xfft_0_M_AXIS_DATA_TVALID));
  design_1_cmpy_0_1 cmpy_1  //Cmplx multiply to take conjugate of FFT1
       (.aclk(aclk_2_1),
        .m_axis_dout_tdata(cmpy_1_M_AXIS_DOUT_TDATA),
        .m_axis_dout_tvalid(cmpy_1_M_AXIS_DOUT_TVALID),
        .s_axis_a_tdata(xfft_1_m_axis_data_tdata),
        .s_axis_b_tdata({-1'b0,-1'b0,-1'b0,-1'b0,-1'b0,-1'b0,-1'b0,-1'b0,
                         -1'b0,-1'b0,-1'b0,-1'b0,-1'b0,-1'b0,-1'b0,-1'b0,
                         -1'b0,-1'b0,-1'b0,-1'b0,-1'b0,-1'b0,-1'b0,-1'b0,
                         -1'b0,-1'b0,-1'b0,-1'b0,-1'b0,-1'b0,-1'b0,-1'b0,
                         1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,
                         1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,
                         1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,
                         1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tvalid(1'b0));
  /* FFT channel 1 */
  design_1_xfft_0_0 xfft_0
       (.aclk(aclk_2_1),
        .aresetn(aresetn_0_1),
        .m_axis_data_tdata(xfft_0_M_AXIS_DATA_TDATA),
        .m_axis_data_tready(1'b1),
        .m_axis_data_tvalid(xfft_0_M_AXIS_DATA_TVALID),
        .s_axis_config_tdata(xlconstant_0_dout[15:0]),
        .s_axis_config_tvalid(xlconstant_1_dout),
        .s_axis_data_tdata(s_axis_data_tdata_1_1),
        .s_axis_data_tlast(1'b0),
        .s_axis_data_tvalid(1'b0));
  design_1_xfft_0_2 xfft_1
       (.aclk(aclk_2_1),
        .aresetn(aresetn_0_1),
        .m_axis_data_tdata(xfft_1_m_axis_data_tdata),
        .s_axis_config_tdata(xlconstant_2_dout[15:0]),
        .s_axis_config_tvalid(xlconstant_3_dout),
        .s_axis_data_tdata(s_axis_data_tdata_0_1),
        .s_axis_data_tlast(1'b0),
        .s_axis_data_tvalid(1'b0));
  design_1_xfft_1_0 xfft_2
       (.aclk(aclk_2_1),
        .aresetn(aresetn_0_1),
        .m_axis_data_tdata(xfft_2_M_AXIS_DATA_TDATA),
        .m_axis_data_tlast(xfft_2_M_AXIS_DATA_TLAST),
        .m_axis_data_tready(xfft_2_M_AXIS_DATA_TREADY),
        .m_axis_data_tvalid(xfft_2_M_AXIS_DATA_TVALID),
        .s_axis_config_tdata(xlconstant_4_dout[15:0]),
        .s_axis_config_tvalid(xlconstant_5_dout),
        .s_axis_data_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,
                            1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,
                            1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,
                            1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,
                            1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,
                            1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,
                            1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,
                            1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,
                            1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,
                            1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_data_tlast(1'b0),
        .s_axis_data_tvalid(1'b0));
  design_1_xlconstant_0_1 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  design_1_xlconstant_0_2 xlconstant_2
       (.dout(xlconstant_2_dout));
  design_1_xlconstant_1_1 xlconstant_3
       (.dout(xlconstant_3_dout));
  design_1_xlconstant_3_0 xlconstant_4
       (.dout(xlconstant_4_dout));
  design_1_xlconstant_4_0 xlconstant_5
       (.dout(xlconstant_5_dout));
endmodule
