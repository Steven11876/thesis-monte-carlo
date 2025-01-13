# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name sigma_init \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sigma_init \
    op interface \
    ports { sigma_init { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name S0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_S0 \
    op interface \
    ports { S0 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name gmem_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_16 \
    op interface \
    ports { m_axi_gmem_16_0_AWVALID { O 1 bit } m_axi_gmem_16_0_AWREADY { I 1 bit } m_axi_gmem_16_0_AWADDR { O 64 vector } m_axi_gmem_16_0_AWID { O 1 vector } m_axi_gmem_16_0_AWLEN { O 32 vector } m_axi_gmem_16_0_AWSIZE { O 3 vector } m_axi_gmem_16_0_AWBURST { O 2 vector } m_axi_gmem_16_0_AWLOCK { O 2 vector } m_axi_gmem_16_0_AWCACHE { O 4 vector } m_axi_gmem_16_0_AWPROT { O 3 vector } m_axi_gmem_16_0_AWQOS { O 4 vector } m_axi_gmem_16_0_AWREGION { O 4 vector } m_axi_gmem_16_0_AWUSER { O 1 vector } m_axi_gmem_16_0_WVALID { O 1 bit } m_axi_gmem_16_0_WREADY { I 1 bit } m_axi_gmem_16_0_WDATA { O 128 vector } m_axi_gmem_16_0_WSTRB { O 16 vector } m_axi_gmem_16_0_WLAST { O 1 bit } m_axi_gmem_16_0_WID { O 1 vector } m_axi_gmem_16_0_WUSER { O 1 vector } m_axi_gmem_16_0_ARVALID { O 1 bit } m_axi_gmem_16_0_ARREADY { I 1 bit } m_axi_gmem_16_0_ARADDR { O 64 vector } m_axi_gmem_16_0_ARID { O 1 vector } m_axi_gmem_16_0_ARLEN { O 32 vector } m_axi_gmem_16_0_ARSIZE { O 3 vector } m_axi_gmem_16_0_ARBURST { O 2 vector } m_axi_gmem_16_0_ARLOCK { O 2 vector } m_axi_gmem_16_0_ARCACHE { O 4 vector } m_axi_gmem_16_0_ARPROT { O 3 vector } m_axi_gmem_16_0_ARQOS { O 4 vector } m_axi_gmem_16_0_ARREGION { O 4 vector } m_axi_gmem_16_0_ARUSER { O 1 vector } m_axi_gmem_16_0_RVALID { I 1 bit } m_axi_gmem_16_0_RREADY { O 1 bit } m_axi_gmem_16_0_RDATA { I 128 vector } m_axi_gmem_16_0_RLAST { I 1 bit } m_axi_gmem_16_0_RID { I 1 vector } m_axi_gmem_16_0_RFIFONUM { I 9 vector } m_axi_gmem_16_0_RUSER { I 1 vector } m_axi_gmem_16_0_RRESP { I 2 vector } m_axi_gmem_16_0_BVALID { I 1 bit } m_axi_gmem_16_0_BREADY { O 1 bit } m_axi_gmem_16_0_BRESP { I 2 vector } m_axi_gmem_16_0_BID { I 1 vector } m_axi_gmem_16_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name sext_ln31_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln31_16 \
    op interface \
    ports { sext_ln31_16 { I 60 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name sqrt_deltat \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sqrt_deltat \
    op interface \
    ports { sqrt_deltat { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name rho \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rho \
    op interface \
    ports { rho { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name sqrt_one_minus_rho_sq \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sqrt_one_minus_rho_sq \
    op interface \
    ports { sqrt_one_minus_rho_sq { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name beta \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_beta \
    op interface \
    ports { beta { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name one_plus_r_deltat \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_one_plus_r_deltat \
    op interface \
    ports { one_plus_r_deltat { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name alpha \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_alpha \
    op interface \
    ports { alpha { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name neg_half_alpha_sq_dt \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_neg_half_alpha_sq_dt \
    op interface \
    ports { neg_half_alpha_sq_dt { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name p_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out \
    op interface \
    ports { p_out { O 64 vector } p_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name x_assign_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_16_out \
    op interface \
    ports { x_assign_16_out { O 64 vector } x_assign_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName SABR_flow_control_loop_pipe_sequential_init_U
set CompName SABR_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix SABR_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


