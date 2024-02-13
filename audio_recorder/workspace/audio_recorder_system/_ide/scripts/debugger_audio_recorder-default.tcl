# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\saz5\Downloads\audio_recorder\workspace\audio_recorder_system\_ide\scripts\debugger_audio_recorder-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\saz5\Downloads\audio_recorder\workspace\audio_recorder_system\_ide\scripts\debugger_audio_recorder-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248469541" && level==0 && jtag_device_ctx=="jsn-Zed-210248469541-03727093-0"}
fpga -file C:/Users/saz5/Downloads/audio_recorder/workspace/audio_recorder/_ide/bitstream/audio_recorder_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/saz5/Downloads/audio_recorder/workspace/audio_recorder_wrapper/export/audio_recorder_wrapper/hw/audio_recorder_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/saz5/Downloads/audio_recorder/workspace/audio_recorder/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/saz5/Downloads/audio_recorder/workspace/audio_recorder/Debug/audio_recorder.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
