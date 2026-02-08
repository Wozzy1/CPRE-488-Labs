connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248B18B1E" && level==0 && jtag_device_ctx=="jsn-Zed-210248B18B1E-23727093-0"}
fpga -file C:/Users/diepw50/CPRE-488-Labs/Mp-0_New/nes3/nes/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/diepw50/CPRE-488-Labs/Mp-0_New/nes3/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/diepw50/CPRE-488-Labs/Mp-0_New/nes3/nes/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/diepw50/CPRE-488-Labs/Mp-0_New/nes3/nes/Debug/nes.elf
configparams force-mem-access 0
bpadd -addr &main
