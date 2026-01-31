set_property SRC_FILE_INFO {cfile:c:/Users/cihem/CPRE-488-Labs/MP-0/MP-0CDrive/MP-0.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0/design_1_processing_system7_0_0_in_context.xdc rfile:../../../MP-0.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0/design_1_processing_system7_0_0_in_context.xdc id:1 order:EARLY scoped_inst:design_1_i/processing_system7_0} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/cihem/CPRE-488-Labs/MP-0/MP-0CDrive/MP-0.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_in_context.xdc rfile:../../../MP-0.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_in_context.xdc id:2 order:EARLY scoped_inst:design_1_i/clk_wiz_0} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/cihem/CPRE-488-Labs/MP-0/MP-0CDrive/docs/ZedBoard/zedboard_master.xdc rfile:../../../docs/ZedBoard/zedboard_master.xdc id:3} [current_design]
current_instance design_1_i/processing_system7_0
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
current_instance
current_instance design_1_i/clk_wiz_0
set_property src_info {type:SCOPED_XDC file:2 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports -no_traverse {}]
set_property src_info {type:SCOPED_XDC file:2 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 15.000 30.000} [get_ports {}]
current_instance
set_property src_info {type:XDC file:3 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y9 [get_ports {sys_clock}];  # "GCLK"
set_property src_info {type:XDC file:3 line:187 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y21  [get_ports {Dout_2[0]}];  # "VGA-B1"
set_property src_info {type:XDC file:3 line:188 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y20  [get_ports {Dout_2[1]}];  # "VGA-B2"
set_property src_info {type:XDC file:3 line:189 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB20 [get_ports {Dout_2[2]}];  # "VGA-B3"
set_property src_info {type:XDC file:3 line:190 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB19 [get_ports {Dout_2[3]}];  # "VGA-B4"
set_property src_info {type:XDC file:3 line:191 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB22 [get_ports {Dout_1[0]}];  # "VGA-G1"
set_property src_info {type:XDC file:3 line:192 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA22 [get_ports {Dout_1[1]}];  # "VGA-G2"
set_property src_info {type:XDC file:3 line:193 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB21 [get_ports {Dout_1[2]}];  # "VGA-G3"
set_property src_info {type:XDC file:3 line:194 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA21 [get_ports {Dout_1[3]}];  # "VGA-G4"
set_property src_info {type:XDC file:3 line:195 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA19 [get_ports {vid_hsync_0}];  # "VGA-HS"
set_property src_info {type:XDC file:3 line:196 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V20  [get_ports {Dout_0[0]}];  # "VGA-R1"
set_property src_info {type:XDC file:3 line:197 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U20  [get_ports {Dout_0[1]}];  # "VGA-R2"
set_property src_info {type:XDC file:3 line:198 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V19  [get_ports {Dout_0[2]}];  # "VGA-R3"
set_property src_info {type:XDC file:3 line:199 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V18  [get_ports {Dout_0[3]}];  # "VGA-R4"
set_property src_info {type:XDC file:3 line:200 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y19  [get_ports {vid_vsync_0}];  # "VGA-VS"
set_property src_info {type:XDC file:3 line:362 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];
set_property src_info {type:XDC file:3 line:367 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];
set_property src_info {type:XDC file:3 line:372 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];
set_property src_info {type:XDC file:3 line:375 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];
