set moduleName SABR_Pipeline_VITIS_LOOP_31_374
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
set cdfgNum 104
set C_modelName {SABR_Pipeline_VITIS_LOOP_31_374}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ sigma_init double 64 regular  }
	{ S0 double 64 regular  }
	{ gmem_74 int 128 regular {axi_master 0}  }
	{ sext_ln31_74 int 60 regular  }
	{ sqrt_deltat double 64 regular  }
	{ rho double 64 regular  }
	{ sqrt_one_minus_rho_sq double 64 regular  }
	{ beta double 64 regular  }
	{ one_plus_r_deltat double 64 regular  }
	{ alpha double 64 regular  }
	{ neg_half_alpha_sq_dt double 64 regular  }
	{ p_out double 64 regular {pointer 1}  }
	{ x_assign_74_out double 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "sigma_init", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "S0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_74", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "S_74","offset": { "type": "dynamic","port_name": "S_74","bundle": "control"},"direction": "WRITEONLY"},{"cName": "V_74","offset": { "type": "dynamic","port_name": "V_74","bundle": "control"},"direction": "WRITEONLY"},{"cName": "random_increments_74","offset": { "type": "dynamic","port_name": "random_increments_74","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln31_74", "interface" : "wire", "bitwidth" : 60, "direction" : "READONLY"} , 
 	{ "Name" : "sqrt_deltat", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rho", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sqrt_one_minus_rho_sq", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "beta", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "one_plus_r_deltat", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "alpha", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "neg_half_alpha_sq_dt", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_assign_74_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 87
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sigma_init sc_in sc_lv 64 signal 0 } 
	{ S0 sc_in sc_lv 64 signal 1 } 
	{ m_axi_gmem_74_0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_74_0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_74_0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_74_0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_74_0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_74_0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_74_0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_74_0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_74_0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_74_0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_74_0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_74_0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_74_0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_74_0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_74_0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_74_0_WDATA sc_out sc_lv 128 signal 2 } 
	{ m_axi_gmem_74_0_WSTRB sc_out sc_lv 16 signal 2 } 
	{ m_axi_gmem_74_0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_74_0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_74_0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_74_0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_74_0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_74_0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_74_0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_74_0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_74_0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_74_0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_74_0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_74_0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_74_0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_74_0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_74_0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_74_0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_74_0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_74_0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_74_0_RDATA sc_in sc_lv 128 signal 2 } 
	{ m_axi_gmem_74_0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_74_0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_74_0_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_gmem_74_0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_74_0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_74_0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_74_0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_74_0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_74_0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_74_0_BUSER sc_in sc_lv 1 signal 2 } 
	{ sext_ln31_74 sc_in sc_lv 60 signal 3 } 
	{ sqrt_deltat sc_in sc_lv 64 signal 4 } 
	{ rho sc_in sc_lv 64 signal 5 } 
	{ sqrt_one_minus_rho_sq sc_in sc_lv 64 signal 6 } 
	{ beta sc_in sc_lv 64 signal 7 } 
	{ one_plus_r_deltat sc_in sc_lv 64 signal 8 } 
	{ alpha sc_in sc_lv 64 signal 9 } 
	{ neg_half_alpha_sq_dt sc_in sc_lv 64 signal 10 } 
	{ p_out sc_out sc_lv 64 signal 11 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ x_assign_74_out sc_out sc_lv 64 signal 12 } 
	{ x_assign_74_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ grp_fu_14271_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_14271_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_14271_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_14271_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_14271_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_14277_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_14277_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_14277_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_14277_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_28629_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_28629_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_28629_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_28629_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_pow_generic_double_s_fu_28633_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_pow_generic_double_s_fu_28633_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_pow_generic_double_s_fu_28633_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_pow_generic_double_s_fu_28633_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_pow_generic_double_s_fu_28633_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_pow_generic_double_s_fu_28633_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_pow_generic_double_s_fu_28633_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_pow_generic_double_s_fu_28633_p_idle sc_in sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sigma_init", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sigma_init", "role": "default" }} , 
 	{ "name": "S0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "S0", "role": "default" }} , 
 	{ "name": "m_axi_gmem_74_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_74_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_74_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_74_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_74_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_74_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_74_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_74_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_74_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_74_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_74_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_74_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_74_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_74_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_74_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_74_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_74_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_74_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_74_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_74_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_74_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_74_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_74_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_74_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_74_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_74_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_74_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_74_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_74_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_74_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_74_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_74_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_74_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_74_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_74_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_74_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_74_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_74_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_74_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_74_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_74_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_74_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_74_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_74_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_74_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_74_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_74", "role": "0_BUSER" }} , 
 	{ "name": "sext_ln31_74", "direction": "in", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "sext_ln31_74", "role": "default" }} , 
 	{ "name": "sqrt_deltat", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sqrt_deltat", "role": "default" }} , 
 	{ "name": "rho", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rho", "role": "default" }} , 
 	{ "name": "sqrt_one_minus_rho_sq", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sqrt_one_minus_rho_sq", "role": "default" }} , 
 	{ "name": "beta", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "beta", "role": "default" }} , 
 	{ "name": "one_plus_r_deltat", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "one_plus_r_deltat", "role": "default" }} , 
 	{ "name": "alpha", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "alpha", "role": "default" }} , 
 	{ "name": "neg_half_alpha_sq_dt", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "neg_half_alpha_sq_dt", "role": "default" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "x_assign_74_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_assign_74_out", "role": "default" }} , 
 	{ "name": "x_assign_74_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_assign_74_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_14271_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_14271_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_14271_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_14271_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_14271_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_14271_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_14271_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_14271_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_14271_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_14271_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_14277_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_14277_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_14277_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_14277_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_14277_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_14277_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_14277_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_14277_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_28629_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_28629_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_28629_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_28629_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_28629_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_28629_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_28629_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_28629_p_ce", "role": "default" }} , 
 	{ "name": "grp_pow_generic_double_s_fu_28633_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_pow_generic_double_s_fu_28633_p_din1", "role": "default" }} , 
 	{ "name": "grp_pow_generic_double_s_fu_28633_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_pow_generic_double_s_fu_28633_p_din2", "role": "default" }} , 
 	{ "name": "grp_pow_generic_double_s_fu_28633_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_pow_generic_double_s_fu_28633_p_dout0", "role": "default" }} , 
 	{ "name": "grp_pow_generic_double_s_fu_28633_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_pow_generic_double_s_fu_28633_p_ce", "role": "default" }} , 
 	{ "name": "grp_pow_generic_double_s_fu_28633_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_pow_generic_double_s_fu_28633_p_start", "role": "default" }} , 
 	{ "name": "grp_pow_generic_double_s_fu_28633_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_pow_generic_double_s_fu_28633_p_ready", "role": "default" }} , 
 	{ "name": "grp_pow_generic_double_s_fu_28633_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_pow_generic_double_s_fu_28633_p_done", "role": "default" }} , 
 	{ "name": "grp_pow_generic_double_s_fu_28633_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_pow_generic_double_s_fu_28633_p_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "SABR_Pipeline_VITIS_LOOP_31_374",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1678", "EstimateLatencyMax" : "1678",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sigma_init", "Type" : "None", "Direction" : "I"},
			{"Name" : "S0", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_74", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_74_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln31_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "sqrt_deltat", "Type" : "None", "Direction" : "I"},
			{"Name" : "rho", "Type" : "None", "Direction" : "I"},
			{"Name" : "sqrt_one_minus_rho_sq", "Type" : "None", "Direction" : "I"},
			{"Name" : "beta", "Type" : "None", "Direction" : "I"},
			{"Name" : "one_plus_r_deltat", "Type" : "None", "Direction" : "I"},
			{"Name" : "alpha", "Type" : "None", "Direction" : "I"},
			{"Name" : "neg_half_alpha_sq_dt", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_assign_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log0_lut_table_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "34", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage10", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage10_subdone", "QuitState" : "ap_ST_fsm_pp0_stage10", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage10_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	SABR_Pipeline_VITIS_LOOP_31_374 {
		sigma_init {Type I LastRead 0 FirstWrite -1}
		S0 {Type I LastRead 0 FirstWrite -1}
		gmem_74 {Type I LastRead 1 FirstWrite -1}
		sext_ln31_74 {Type I LastRead 0 FirstWrite -1}
		sqrt_deltat {Type I LastRead 0 FirstWrite -1}
		rho {Type I LastRead 0 FirstWrite -1}
		sqrt_one_minus_rho_sq {Type I LastRead 0 FirstWrite -1}
		beta {Type I LastRead 0 FirstWrite -1}
		one_plus_r_deltat {Type I LastRead 0 FirstWrite -1}
		alpha {Type I LastRead 0 FirstWrite -1}
		neg_half_alpha_sq_dt {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 10}
		x_assign_74_out {Type O LastRead -1 FirstWrite 10}
		pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log0_lut_table_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1678", "Max" : "1678"}
	, {"Name" : "Interval", "Min" : "1678", "Max" : "1678"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sigma_init { ap_none {  { sigma_init in_data 0 64 } } }
	S0 { ap_none {  { S0 in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem_74_0_AWVALID VALID 1 1 }  { m_axi_gmem_74_0_AWREADY READY 0 1 }  { m_axi_gmem_74_0_AWADDR ADDR 1 64 }  { m_axi_gmem_74_0_AWID ID 1 1 }  { m_axi_gmem_74_0_AWLEN SIZE 1 32 }  { m_axi_gmem_74_0_AWSIZE BURST 1 3 }  { m_axi_gmem_74_0_AWBURST LOCK 1 2 }  { m_axi_gmem_74_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_74_0_AWCACHE PROT 1 4 }  { m_axi_gmem_74_0_AWPROT QOS 1 3 }  { m_axi_gmem_74_0_AWQOS REGION 1 4 }  { m_axi_gmem_74_0_AWREGION USER 1 4 }  { m_axi_gmem_74_0_AWUSER DATA 1 1 }  { m_axi_gmem_74_0_WVALID VALID 1 1 }  { m_axi_gmem_74_0_WREADY READY 0 1 }  { m_axi_gmem_74_0_WDATA FIFONUM 1 128 }  { m_axi_gmem_74_0_WSTRB STRB 1 16 }  { m_axi_gmem_74_0_WLAST LAST 1 1 }  { m_axi_gmem_74_0_WID ID 1 1 }  { m_axi_gmem_74_0_WUSER DATA 1 1 }  { m_axi_gmem_74_0_ARVALID VALID 1 1 }  { m_axi_gmem_74_0_ARREADY READY 0 1 }  { m_axi_gmem_74_0_ARADDR ADDR 1 64 }  { m_axi_gmem_74_0_ARID ID 1 1 }  { m_axi_gmem_74_0_ARLEN SIZE 1 32 }  { m_axi_gmem_74_0_ARSIZE BURST 1 3 }  { m_axi_gmem_74_0_ARBURST LOCK 1 2 }  { m_axi_gmem_74_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_74_0_ARCACHE PROT 1 4 }  { m_axi_gmem_74_0_ARPROT QOS 1 3 }  { m_axi_gmem_74_0_ARQOS REGION 1 4 }  { m_axi_gmem_74_0_ARREGION USER 1 4 }  { m_axi_gmem_74_0_ARUSER DATA 1 1 }  { m_axi_gmem_74_0_RVALID VALID 0 1 }  { m_axi_gmem_74_0_RREADY READY 1 1 }  { m_axi_gmem_74_0_RDATA FIFONUM 0 128 }  { m_axi_gmem_74_0_RLAST LAST 0 1 }  { m_axi_gmem_74_0_RID ID 0 1 }  { m_axi_gmem_74_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_74_0_RUSER DATA 0 1 }  { m_axi_gmem_74_0_RRESP RESP 0 2 }  { m_axi_gmem_74_0_BVALID VALID 0 1 }  { m_axi_gmem_74_0_BREADY READY 1 1 }  { m_axi_gmem_74_0_BRESP RESP 0 2 }  { m_axi_gmem_74_0_BID ID 0 1 }  { m_axi_gmem_74_0_BUSER DATA 0 1 } } }
	sext_ln31_74 { ap_none {  { sext_ln31_74 in_data 0 60 } } }
	sqrt_deltat { ap_none {  { sqrt_deltat in_data 0 64 } } }
	rho { ap_none {  { rho in_data 0 64 } } }
	sqrt_one_minus_rho_sq { ap_none {  { sqrt_one_minus_rho_sq in_data 0 64 } } }
	beta { ap_none {  { beta in_data 0 64 } } }
	one_plus_r_deltat { ap_none {  { one_plus_r_deltat in_data 0 64 } } }
	alpha { ap_none {  { alpha in_data 0 64 } } }
	neg_half_alpha_sq_dt { ap_none {  { neg_half_alpha_sq_dt in_data 0 64 } } }
	p_out { ap_vld {  { p_out out_data 1 64 }  { p_out_ap_vld out_vld 1 1 } } }
	x_assign_74_out { ap_vld {  { x_assign_74_out out_data 1 64 }  { x_assign_74_out_ap_vld out_vld 1 1 } } }
}
