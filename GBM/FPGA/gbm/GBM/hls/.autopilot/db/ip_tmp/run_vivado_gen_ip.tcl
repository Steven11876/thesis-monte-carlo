create_project prj -part xcku5p-ffva676-3-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "C:/Users/steve/thesis-monte-carlo/GBM/FPGA/gbm/GBM/hls/syn/verilog/GBM_dadddsub_64ns_64ns_64_5_full_dsp_1_ip.tcl"
source "C:/Users/steve/thesis-monte-carlo/GBM/FPGA/gbm/GBM/hls/syn/verilog/GBM_dadd_64ns_64ns_64_5_full_dsp_1_ip.tcl"
source "C:/Users/steve/thesis-monte-carlo/GBM/FPGA/gbm/GBM/hls/syn/verilog/GBM_ddiv_64ns_64ns_64_22_no_dsp_1_ip.tcl"
source "C:/Users/steve/thesis-monte-carlo/GBM/FPGA/gbm/GBM/hls/syn/verilog/GBM_dexp_64ns_64ns_64_12_full_dsp_1_ip.tcl"
source "C:/Users/steve/thesis-monte-carlo/GBM/FPGA/gbm/GBM/hls/syn/verilog/GBM_dmul_64ns_64ns_64_5_max_dsp_1_ip.tcl"
source "C:/Users/steve/thesis-monte-carlo/GBM/FPGA/gbm/GBM/hls/syn/verilog/GBM_dsqrt_64ns_64ns_64_21_no_dsp_1_ip.tcl"
