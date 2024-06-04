
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu28dr-ffvg1517-2-e
   set_property BOARD_PART xilinx.com:zcu111:part0:1.4 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

  # Add USER_COMMENTS on $design_name
  set_property USER_COMMENTS.comment_1 "reset loop" [get_bd_designs $design_name]
  set_property USER_COMMENTS.comment_3 "FFT Channel 2" [get_bd_designs $design_name]

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set M_AXIS_DOUT_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_DOUT_0 ]


  # Create ports
  set aclk_2 [ create_bd_port -dir I -type clk aclk_2 ]
  set_property USER_COMMENTS.comment_0 "input clock trigger" [get_bd_ports /aclk_2]
  set aresetn_0 [ create_bd_port -dir I -type rst aresetn_0 ]
  set m_axis_dout_tdata_0 [ create_bd_port -dir O -from 79 -to 0 m_axis_dout_tdata_0 ]
  set m_axis_dout_tvalid_0 [ create_bd_port -dir O m_axis_dout_tvalid_0 ]
  set s_axis_data_tdata_0 [ create_bd_port -dir I -from 63 -to 0 s_axis_data_tdata_0 ]
  set s_axis_data_tdata_1 [ create_bd_port -dir I -from 63 -to 0 s_axis_data_tdata_1 ]

  # Create instance: cmpy_0, and set properties
  set cmpy_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:cmpy:6.0 cmpy_0 ]

  # Create instance: cmpy_1, and set properties
  set cmpy_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:cmpy:6.0 cmpy_1 ]

  # Create instance: xfft_0, and set properties
  set xfft_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.1 xfft_0 ]
  set_property USER_COMMENTS.comment_2 "FFT channel 1" [get_bd_cells /xfft_0]
  set_property -dict [ list \
   CONFIG.aresetn {true} \
   CONFIG.channels {1} \
   CONFIG.data_format {fixed_point} \
   CONFIG.implementation_options {automatically_select} \
   CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {3} \
   CONFIG.output_ordering {natural_order} \
   CONFIG.phase_factor_width {24} \
   CONFIG.target_data_throughput {50} \
   CONFIG.transform_length {1024} \
 ] $xfft_0

  # Create instance: xfft_1, and set properties
  set xfft_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.1 xfft_1 ]
  set_property -dict [ list \
   CONFIG.aresetn {true} \
   CONFIG.channels {1} \
   CONFIG.data_format {fixed_point} \
   CONFIG.implementation_options {automatically_select} \
   CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {3} \
   CONFIG.output_ordering {natural_order} \
   CONFIG.phase_factor_width {24} \
   CONFIG.target_data_throughput {50} \
   CONFIG.transform_length {1024} \
 ] $xfft_1

  # Create instance: xfft_2, and set properties
  set xfft_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.1 xfft_2 ]
  set_property -dict [ list \
   CONFIG.aresetn {true} \
   CONFIG.channels {1} \
   CONFIG.data_format {fixed_point} \
   CONFIG.implementation_options {pipelined_streaming_io} \
   CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {3} \
   CONFIG.output_ordering {natural_order} \
   CONFIG.phase_factor_width {24} \
   CONFIG.target_data_throughput {50} \
   CONFIG.transform_length {1024} \
 ] $xfft_2

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {1024} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {1024} \
 ] $xlconstant_2

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_3

  # Create instance: xlconstant_4, and set properties
  set xlconstant_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_4 ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {1024} \
 ] $xlconstant_4

  # Create instance: xlconstant_5, and set properties
  set xlconstant_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_5 ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_5

  # Create interface connections
  connect_bd_intf_net -intf_net cmpy_0_M_AXIS_DOUT [get_bd_intf_pins cmpy_0/M_AXIS_DOUT] [get_bd_intf_pins xfft_2/S_AXIS_DATA]
  connect_bd_intf_net -intf_net cmpy_1_M_AXIS_DOUT [get_bd_intf_pins cmpy_0/S_AXIS_A] [get_bd_intf_pins cmpy_1/M_AXIS_DOUT]
  connect_bd_intf_net -intf_net xfft_0_M_AXIS_DATA [get_bd_intf_pins cmpy_0/S_AXIS_B] [get_bd_intf_pins xfft_0/M_AXIS_DATA]
  connect_bd_intf_net -intf_net xfft_2_M_AXIS_DATA [get_bd_intf_ports M_AXIS_DOUT_0] [get_bd_intf_pins xfft_2/M_AXIS_DATA]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins cmpy_1/s_axis_a_tvalid] [get_bd_pins xfft_1/m_axis_data_tready]
  connect_bd_net -net aclk_2_1 [get_bd_ports aclk_2] [get_bd_pins cmpy_0/aclk] [get_bd_pins cmpy_1/aclk] [get_bd_pins xfft_0/aclk] [get_bd_pins xfft_1/aclk] [get_bd_pins xfft_2/aclk]
  connect_bd_net -net aresetn_0_1 [get_bd_ports aresetn_0] [get_bd_pins xfft_0/aresetn] [get_bd_pins xfft_1/aresetn] [get_bd_pins xfft_2/aresetn]
  connect_bd_net -net cmpy_0_m_axis_dout_tdata [get_bd_ports m_axis_dout_tdata_0] [get_bd_pins cmpy_0/m_axis_dout_tdata]
  connect_bd_net -net cmpy_0_m_axis_dout_tvalid [get_bd_ports m_axis_dout_tvalid_0] [get_bd_pins cmpy_0/m_axis_dout_tvalid]
  connect_bd_net -net s_axis_data_tdata_0_1 [get_bd_ports s_axis_data_tdata_0] [get_bd_pins xfft_1/s_axis_data_tdata]
  connect_bd_net -net s_axis_data_tdata_1_1 [get_bd_ports s_axis_data_tdata_1] [get_bd_pins xfft_0/s_axis_data_tdata]
  connect_bd_net -net xfft_1_m_axis_data_tdata [get_bd_pins cmpy_1/s_axis_a_tdata] [get_bd_pins xfft_1/m_axis_data_tdata]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins xfft_0/s_axis_config_tdata] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins xfft_0/s_axis_config_tvalid] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins xfft_1/s_axis_config_tdata] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins xfft_1/s_axis_config_tvalid] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlconstant_4_dout [get_bd_pins xfft_2/s_axis_config_tdata] [get_bd_pins xlconstant_4/dout]
  connect_bd_net -net xlconstant_5_dout [get_bd_pins xfft_2/s_axis_config_tvalid] [get_bd_pins xlconstant_5/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


