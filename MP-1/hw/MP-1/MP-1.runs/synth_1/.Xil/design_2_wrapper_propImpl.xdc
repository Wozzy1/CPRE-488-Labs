set_property SRC_FILE_INFO {cfile:c:/Users/diepw50/CPRE-488-Labs/MP-1/hw/MP-1/MP-1.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0/design_2_processing_system7_0_0/design_2_processing_system7_0_0_in_context.xdc rfile:../../../MP-1.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0/design_2_processing_system7_0_0/design_2_processing_system7_0_0_in_context.xdc id:1 order:EARLY scoped_inst:design_2_i/processing_system7_0} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/diepw50/CPRE-488-Labs/MP-1/docs/ZedBoard/zedboard_master.xdc rfile:../../../../../docs/ZedBoard/zedboard_master.xdc id:2} [current_design]
current_instance design_2_i/processing_system7_0
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
current_instance
set_property src_info {type:XDC file:2 line:112 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB6 [get_ports {s00_ppm_out_0}];  # "JC1_N"
set_property src_info {type:XDC file:2 line:124 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W7 [get_ports {s00_ppm_in_0}];  # "JD1_N"
set_property src_info {type:XDC file:2 line:362 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];
set_property src_info {type:XDC file:2 line:367 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];
set_property src_info {type:XDC file:2 line:372 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];
set_property src_info {type:XDC file:2 line:375 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];
