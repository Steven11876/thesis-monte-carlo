create_project prj -part xc7s15-cpga196-2 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "C:/Users/steve/thesis-monte-carlo/SABR/sabr/sabr/SABR/hls/syn/verilog/SABR_dadddsub_64ns_64ns_64_6_full_dsp_1_ip.tcl"
source "C:/Users/steve/thesis-monte-carlo/SABR/sabr/sabr/SABR/hls/syn/verilog/SABR_dadd_64ns_64ns_64_6_full_dsp_1_ip.tcl"
source "C:/Users/steve/thesis-monte-carlo/SABR/sabr/sabr/SABR/hls/syn/verilog/SABR_ddiv_64ns_64ns_64_31_no_dsp_1_ip.tcl"
source "C:/Users/steve/thesis-monte-carlo/SABR/sabr/sabr/SABR/hls/syn/verilog/SABR_dexp_64ns_64ns_64_18_full_dsp_1_ip.tcl"
source "C:/Users/steve/thesis-monte-carlo/SABR/sabr/sabr/SABR/hls/syn/verilog/SABR_dmul_64ns_64ns_64_6_max_dsp_1_ip.tcl"
source "C:/Users/steve/thesis-monte-carlo/SABR/sabr/sabr/SABR/hls/syn/verilog/SABR_dsqrt_64ns_64ns_64_57_no_dsp_1_ip.tcl"
