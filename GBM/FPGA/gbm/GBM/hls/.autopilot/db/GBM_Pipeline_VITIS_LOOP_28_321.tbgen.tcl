set moduleName GBM_Pipeline_VITIS_LOOP_28_321
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 103
set C_modelName {GBM_Pipeline_VITIS_LOOP_28_321}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ S0 double 64 regular  }
	{ gmem_21 int 64 regular {axi_master 0}  }
	{ sext_ln28_21 int 61 regular  }
	{ sigma double 64 regular  }
	{ sqrt_deltat double 64 regular  }
	{ drift double 64 regular  }
	{ mul204_21_out double 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "S0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_21", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "S_21","offset": { "type": "dynamic","port_name": "S_21","bundle": "control"},"direction": "WRITEONLY"},{"cName": "random_increments_21","offset": { "type": "dynamic","port_name": "random_increments_21","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln28_21", "interface" : "wire", "bitwidth" : 61, "direction" : "READONLY"} , 
 	{ "Name" : "sigma", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sqrt_deltat", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "drift", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mul204_21_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ S0 sc_in sc_lv 64 signal 0 } 
	{ m_axi_gmem_21_0_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_21_0_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_21_0_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_21_0_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_21_0_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_21_0_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_21_0_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_21_0_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_21_0_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_21_0_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_21_0_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_21_0_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_21_0_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_21_0_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_21_0_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_21_0_WDATA sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_21_0_WSTRB sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_21_0_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_21_0_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_21_0_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_21_0_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_21_0_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_21_0_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_21_0_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_21_0_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_21_0_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_21_0_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_21_0_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_21_0_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_21_0_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_21_0_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_21_0_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_21_0_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_21_0_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_21_0_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_21_0_RDATA sc_in sc_lv 64 signal 1 } 
	{ m_axi_gmem_21_0_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_21_0_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_21_0_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_gmem_21_0_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_21_0_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_21_0_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_21_0_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_21_0_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_21_0_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_21_0_BUSER sc_in sc_lv 1 signal 1 } 
	{ sext_ln28_21 sc_in sc_lv 61 signal 2 } 
	{ sigma sc_in sc_lv 64 signal 3 } 
	{ sqrt_deltat sc_in sc_lv 64 signal 4 } 
	{ drift sc_in sc_lv 64 signal 5 } 
	{ mul204_21_out sc_out sc_lv 64 signal 6 } 
	{ mul204_21_out_ap_vld sc_out sc_logic 1 outvld 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "S0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "S0", "role": "default" }} , 
 	{ "name": "m_axi_gmem_21_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_21_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_21_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_21_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_21_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_21_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_21_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_21_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_21_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_21_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_21_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_21_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_21_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_21_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_21_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_21_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_21_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_21_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_21_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_21_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_21_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_21_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_21_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_21_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_21_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_21_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_21_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_21_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_21_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_21_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_21_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_21_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_21_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_21_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_21_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_21_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_21_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_21_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_21_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_21_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_21_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_21_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_21_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_21_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_21_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_21_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "0_BUSER" }} , 
 	{ "name": "sext_ln28_21", "direction": "in", "datatype": "sc_lv", "bitwidth":61, "type": "signal", "bundle":{"name": "sext_ln28_21", "role": "default" }} , 
 	{ "name": "sigma", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sigma", "role": "default" }} , 
 	{ "name": "sqrt_deltat", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sqrt_deltat", "role": "default" }} , 
 	{ "name": "drift", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "drift", "role": "default" }} , 
 	{ "name": "mul204_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mul204_21_out", "role": "default" }} , 
 	{ "name": "mul204_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mul204_21_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "GBM_Pipeline_VITIS_LOOP_28_321",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "227", "EstimateLatencyMax" : "227",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "S0", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_21", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_21_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln28_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "sigma", "Type" : "None", "Direction" : "I"},
			{"Name" : "sqrt_deltat", "Type" : "None", "Direction" : "I"},
			{"Name" : "drift", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul204_21_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U214", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U215", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dexp_64ns_64ns_64_12_full_dsp_1_U216", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	GBM_Pipeline_VITIS_LOOP_28_321 {
		S0 {Type I LastRead 0 FirstWrite -1}
		gmem_21 {Type I LastRead 1 FirstWrite -1}
		sext_ln28_21 {Type I LastRead 0 FirstWrite -1}
		sigma {Type I LastRead 0 FirstWrite -1}
		sqrt_deltat {Type I LastRead 0 FirstWrite -1}
		drift {Type I LastRead 0 FirstWrite -1}
		mul204_21_out {Type O LastRead -1 FirstWrite 29}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "227", "Max" : "227"}
	, {"Name" : "Interval", "Min" : "227", "Max" : "227"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	S0 { ap_none {  { S0 in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem_21_0_AWVALID VALID 1 1 }  { m_axi_gmem_21_0_AWREADY READY 0 1 }  { m_axi_gmem_21_0_AWADDR ADDR 1 64 }  { m_axi_gmem_21_0_AWID ID 1 1 }  { m_axi_gmem_21_0_AWLEN SIZE 1 32 }  { m_axi_gmem_21_0_AWSIZE BURST 1 3 }  { m_axi_gmem_21_0_AWBURST LOCK 1 2 }  { m_axi_gmem_21_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_21_0_AWCACHE PROT 1 4 }  { m_axi_gmem_21_0_AWPROT QOS 1 3 }  { m_axi_gmem_21_0_AWQOS REGION 1 4 }  { m_axi_gmem_21_0_AWREGION USER 1 4 }  { m_axi_gmem_21_0_AWUSER DATA 1 1 }  { m_axi_gmem_21_0_WVALID VALID 1 1 }  { m_axi_gmem_21_0_WREADY READY 0 1 }  { m_axi_gmem_21_0_WDATA FIFONUM 1 64 }  { m_axi_gmem_21_0_WSTRB STRB 1 8 }  { m_axi_gmem_21_0_WLAST LAST 1 1 }  { m_axi_gmem_21_0_WID ID 1 1 }  { m_axi_gmem_21_0_WUSER DATA 1 1 }  { m_axi_gmem_21_0_ARVALID VALID 1 1 }  { m_axi_gmem_21_0_ARREADY READY 0 1 }  { m_axi_gmem_21_0_ARADDR ADDR 1 64 }  { m_axi_gmem_21_0_ARID ID 1 1 }  { m_axi_gmem_21_0_ARLEN SIZE 1 32 }  { m_axi_gmem_21_0_ARSIZE BURST 1 3 }  { m_axi_gmem_21_0_ARBURST LOCK 1 2 }  { m_axi_gmem_21_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_21_0_ARCACHE PROT 1 4 }  { m_axi_gmem_21_0_ARPROT QOS 1 3 }  { m_axi_gmem_21_0_ARQOS REGION 1 4 }  { m_axi_gmem_21_0_ARREGION USER 1 4 }  { m_axi_gmem_21_0_ARUSER DATA 1 1 }  { m_axi_gmem_21_0_RVALID VALID 0 1 }  { m_axi_gmem_21_0_RREADY READY 1 1 }  { m_axi_gmem_21_0_RDATA FIFONUM 0 64 }  { m_axi_gmem_21_0_RLAST LAST 0 1 }  { m_axi_gmem_21_0_RID ID 0 1 }  { m_axi_gmem_21_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_21_0_RUSER DATA 0 1 }  { m_axi_gmem_21_0_RRESP RESP 0 2 }  { m_axi_gmem_21_0_BVALID VALID 0 1 }  { m_axi_gmem_21_0_BREADY READY 1 1 }  { m_axi_gmem_21_0_BRESP RESP 0 2 }  { m_axi_gmem_21_0_BID ID 0 1 }  { m_axi_gmem_21_0_BUSER DATA 0 1 } } }
	sext_ln28_21 { ap_none {  { sext_ln28_21 in_data 0 61 } } }
	sigma { ap_none {  { sigma in_data 0 64 } } }
	sqrt_deltat { ap_none {  { sqrt_deltat in_data 0 64 } } }
	drift { ap_none {  { drift in_data 0 64 } } }
	mul204_21_out { ap_vld {  { mul204_21_out out_data 1 64 }  { mul204_21_out_ap_vld out_vld 1 1 } } }
}
