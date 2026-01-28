connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248B9DB51" && level==0 && jtag_device_ctx=="jsn-Zed-210248B9DB51-23727093-0"}
fpga -file X:/cpre488/MP-0/MP-0-vitis/Zedboard_hell/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw X:/cpre488/MP-0/MP-0-vitis/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source X:/cpre488/MP-0/MP-0-vitis/Zedboard_hell/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow X:/cpre488/MP-0/MP-0-vitis/Zedboard_hell/Debug/Zedboard_hell.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
