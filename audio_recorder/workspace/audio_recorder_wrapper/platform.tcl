# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct S:\Documents\ENSC452\Milestone0\audio_recorder\workspace\audio_recorder_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source S:\Documents\ENSC452\Milestone0\audio_recorder\workspace\audio_recorder_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {audio_recorder_wrapper}\
-hw {S:\Documents\ENSC452\Milestone0\audio_recorder\audio_recorder_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {S:/Documents/ENSC452/Milestone0/audio_recorder/workspace}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {audio_recorder_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform config -updatehw {S:/Documents/ENSC452/Milestone0/audio_recorder/audio_recorder_wrapper.xsa}
platform generate -domains 
platform active {audio_recorder_wrapper}
platform config -updatehw {S:/Documents/ENSC452/Milestone0/audio_recorder/audio_recorder_wrapper.xsa}
platform generate -domains 
platform config -updatehw {S:/Documents/ENSC452/Milestone0/audio_recorder/audio_recorder_wrapper.xsa}
platform generate -domains 
platform config -updatehw {S:/Documents/ENSC452/Milestone0/audio_recorder/audio_recorder_wrapper.xsa}
platform generate -domains 
platform active {audio_recorder_wrapper}
platform config -updatehw {S:/Documents/ENSC452/Milestone0/audio_recorder/audio_recorder_wrapper.xsa}
platform generate -domains 
platform active {audio_recorder_wrapper}
platform config -updatehw {S:/Documents/ENSC452/Milestone0/audio_recorder/audio_recorder_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
platform config -updatehw {S:/Documents/ENSC452/Milestone0/audio_recorder/audio_recorder_wrapper.xsa}
platform generate -domains 
platform clean
platform config -updatehw {S:/Documents/ENSC452/Milestone0/audio_recorder/audio_recorder_wrapper.xsa}
platform generate
platform clean
platform config -updatehw {S:/Documents/ENSC452/Milestone0/audio_recorder/audio_recorder_wrapper.xsa}
platform generate
platform active {audio_recorder_wrapper}
platform config -updatehw {S:/Documents/ENSC452/Milestone0/audio_recorder/audio_recorder_wrapper.xsa}
platform clean
platform generate
platform config -updatehw {S:/Documents/ENSC452/Milestone0/audio_recorder/audio_recorder_wrapper.xsa}
platform clean
platform generate
platform generate
