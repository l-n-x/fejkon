# TCL File Generated by Component Editor 19.1
# Sun Oct 20 13:01:33 CEST 2019
# DO NOT MODIFY


# 
# si570_ctrl "Si570 Clock Controller" v1.0
# bluecmd 2019.10.20.13:01:33
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module si570_ctrl
# 
set_module_property DESCRIPTION ""
set_module_property NAME si570_ctrl
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR bluecmd
set_module_property DISPLAY_NAME "Si570 Clock Controller"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL si570_ctrl
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE true
add_fileset_file si570_ctrl.sv SYSTEM_VERILOG PATH si570_ctrl.sv TOP_LEVEL_FILE
add_fileset_file i2c_master.v VERILOG PATH i2c_master.v
add_fileset_file i2c_util.sv SYSTEM_VERILOG PATH i2c_util.sv
add_fileset_file divider_intel.v VERILOG PATH divider_intel.v

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL si570_ctrl
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE true
add_fileset_file si570_ctrl.sv SYSTEM_VERILOG PATH si570_ctrl.sv
add_fileset_file i2c_master.v VERILOG PATH i2c_master.v
add_fileset_file i2c_util.sv SYSTEM_VERILOG PATH i2c_util.sv
add_fileset_file divider_intel.v VERILOG PATH divider_intel.v


# 
# parameters
# 
add_parameter InputClock POSITIVE 50000000 ""
set_parameter_property InputClock DEFAULT_VALUE 50000000
set_parameter_property InputClock DISPLAY_NAME InputClock
set_parameter_property InputClock TYPE POSITIVE
set_parameter_property InputClock VISIBLE false
set_parameter_property InputClock UNITS Hertz
set_parameter_property InputClock ALLOWED_RANGES 1:2147483647
set_parameter_property InputClock DESCRIPTION ""
set_parameter_property InputClock AFFECTS_GENERATION false
set_parameter_property InputClock HDL_PARAMETER true
set_parameter_property InputClock SYSTEM_INFO_TYPE CLOCK_RATE
set_parameter_property InputClock SYSTEM_INFO_ARG clk
add_parameter RecallFrequency POSITIVE 100000000 ""
set_parameter_property RecallFrequency DEFAULT_VALUE 100000000
set_parameter_property RecallFrequency DISPLAY_NAME "Recall Frequency"
set_parameter_property RecallFrequency WIDTH ""
set_parameter_property RecallFrequency TYPE POSITIVE
set_parameter_property RecallFrequency UNITS Hertz
set_parameter_property RecallFrequency ALLOWED_RANGES 1:1400000000
set_parameter_property RecallFrequency DESCRIPTION ""
set_parameter_property RecallFrequency AFFECTS_GENERATION false
set_parameter_property RecallFrequency HDL_PARAMETER true
add_parameter TargetFrequency POSITIVE 125000000 ""
set_parameter_property TargetFrequency DEFAULT_VALUE 125000000
set_parameter_property TargetFrequency DISPLAY_NAME "Target Frequency"
set_parameter_property TargetFrequency WIDTH ""
set_parameter_property TargetFrequency TYPE POSITIVE
set_parameter_property TargetFrequency UNITS Hertz
set_parameter_property TargetFrequency ALLOWED_RANGES 1:1400000000
set_parameter_property TargetFrequency DESCRIPTION ""
set_parameter_property TargetFrequency AFFECTS_GENERATION false
set_parameter_property TargetFrequency HDL_PARAMETER true
add_parameter I2CAddress INTEGER 0 ""
set_parameter_property I2CAddress DEFAULT_VALUE 0
set_parameter_property I2CAddress DISPLAY_NAME "I2C Address"
set_parameter_property I2CAddress WIDTH ""
set_parameter_property I2CAddress TYPE INTEGER
set_parameter_property I2CAddress UNITS None
set_parameter_property I2CAddress ALLOWED_RANGES 0:127
set_parameter_property I2CAddress DESCRIPTION ""
set_parameter_property I2CAddress DISPLAY_HINT hexadecimal
set_parameter_property I2CAddress AFFECTS_GENERATION false
set_parameter_property I2CAddress HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clk
# 
add_interface clk clock end
set_interface_property clk clockRate 0
set_interface_property clk ENABLED true
set_interface_property clk EXPORT_OF ""
set_interface_property clk PORT_NAME_MAP ""
set_interface_property clk CMSIS_SVD_VARIABLES ""
set_interface_property clk SVD_ADDRESS_GROUP ""

add_interface_port clk clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clk
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point reset_out
# 
add_interface reset_out reset start
set_interface_property reset_out associatedClock clk
set_interface_property reset_out associatedDirectReset ""
set_interface_property reset_out associatedResetSinks reset
set_interface_property reset_out synchronousEdges DEASSERT
set_interface_property reset_out ENABLED true
set_interface_property reset_out EXPORT_OF ""
set_interface_property reset_out PORT_NAME_MAP ""
set_interface_property reset_out CMSIS_SVD_VARIABLES ""
set_interface_property reset_out SVD_ADDRESS_GROUP ""

add_interface_port reset_out reset_out reset Output 1


# 
# connection point si570_i2c
# 
add_interface si570_i2c conduit end
set_interface_property si570_i2c associatedClock clk
set_interface_property si570_i2c associatedReset ""
set_interface_property si570_i2c ENABLED true
set_interface_property si570_i2c EXPORT_OF ""
set_interface_property si570_i2c PORT_NAME_MAP ""
set_interface_property si570_i2c CMSIS_SVD_VARIABLES ""
set_interface_property si570_i2c SVD_ADDRESS_GROUP ""

add_interface_port si570_i2c sda sda Bidir 1
add_interface_port si570_i2c scl scl Bidir 1

