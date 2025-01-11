set SynModuleInfo {
  {SRCNAME SABR_Pipeline_VITIS_LOOP_12_1 MODELNAME SABR_Pipeline_VITIS_LOOP_12_1 RTLNAME SABR_SABR_Pipeline_VITIS_LOOP_12_1
    SUBMODULES {
      {MODELNAME SABR_flow_control_loop_pipe_sequential_init RTLNAME SABR_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME SABR_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME pow_generic<double> MODELNAME pow_generic_double_s RTLNAME SABR_pow_generic_double_s
    SUBMODULES {
      {MODELNAME SABR_mul_12s_80ns_90_5_0 RTLNAME SABR_mul_12s_80ns_90_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME SABR_mul_13s_71s_71_5_0 RTLNAME SABR_mul_13s_71s_71_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME SABR_mul_40ns_40ns_79_2_0 RTLNAME SABR_mul_40ns_40ns_79_2_0 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME SABR_mul_43ns_36ns_79_2_0 RTLNAME SABR_mul_43ns_36ns_79_2_0 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME SABR_mul_49ns_44ns_93_3_0 RTLNAME SABR_mul_49ns_44ns_93_3_0 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SABR_mul_50ns_50ns_99_3_0 RTLNAME SABR_mul_50ns_50ns_99_3_0 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SABR_mul_54s_6ns_54_3_0 RTLNAME SABR_mul_54s_6ns_54_3_0 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SABR_mul_73ns_6ns_79_5_0 RTLNAME SABR_mul_73ns_6ns_79_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME SABR_mul_77ns_6ns_82_5_0 RTLNAME SABR_mul_77ns_6ns_82_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME SABR_mul_78s_54s_131_5_0 RTLNAME SABR_mul_78s_54s_131_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME SABR_mul_82ns_6ns_87_5_0 RTLNAME SABR_mul_82ns_6ns_87_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME SABR_mul_83ns_6ns_89_5_0 RTLNAME SABR_mul_83ns_6ns_89_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME SABR_mul_87ns_6ns_92_5_0 RTLNAME SABR_mul_87ns_6ns_92_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME SABR_mul_92ns_6ns_97_5_0 RTLNAME SABR_mul_92ns_6ns_97_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME SABR_mul_71ns_4ns_75_5_0 RTLNAME SABR_mul_71ns_4ns_75_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME SABR_bitselect_1ns_52ns_32s_1_1_0 RTLNAME SABR_bitselect_1ns_52ns_32s_1_1_0 BINDTYPE op TYPE bitselect IMPL auto}
      {MODELNAME SABR_sparsemux_7_2_1_1_0 RTLNAME SABR_sparsemux_7_2_1_1_0 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME SABR_sparsemux_19_8_64_1_0 RTLNAME SABR_sparsemux_19_8_64_1_0 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME SABR_mac_muladd_16s_15ns_19s_31_4_0 RTLNAME SABR_mac_muladd_16s_15ns_19s_31_4_0 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log_inverse_lut_table_powbkb RTLNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log_inverse_lut_table_powbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log0_lut_table_array_ROM_cud RTLNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log0_lut_table_array_ROM_cud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_dEe RTLNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_dEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_eOg RTLNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_eOg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12fYi RTLNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12fYi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17g8j RTLNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17g8j BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22hbi RTLNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22hbi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27ibs RTLNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27ibs BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32jbC RTLNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32jbC BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_arkbM RTLNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_arkbM BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_arralbW RTLNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_arralbW BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_arramb6 RTLNAME SABR_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_arramb6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME SABR_Pipeline_VITIS_LOOP_17_2 MODELNAME SABR_Pipeline_VITIS_LOOP_17_2 RTLNAME SABR_SABR_Pipeline_VITIS_LOOP_17_2
    SUBMODULES {
      {MODELNAME SABR_dadd_64ns_64ns_64_6_full_dsp_1 RTLNAME SABR_dadd_64ns_64ns_64_6_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME SABR_dmul_64ns_64ns_64_6_max_dsp_1 RTLNAME SABR_dmul_64ns_64ns_64_6_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME SABR_dexp_64ns_64ns_64_18_full_dsp_1 RTLNAME SABR_dexp_64ns_64ns_64_18_full_dsp_1 BINDTYPE op TYPE dexp IMPL fulldsp LATENCY 17 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME SABR MODELNAME SABR RTLNAME SABR IS_TOP 1
    SUBMODULES {
      {MODELNAME SABR_dadddsub_64ns_64ns_64_6_full_dsp_1 RTLNAME SABR_dadddsub_64ns_64ns_64_6_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME SABR_ddiv_64ns_64ns_64_31_no_dsp_1 RTLNAME SABR_ddiv_64ns_64ns_64_31_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 30 ALLOW_PRAGMA 1}
      {MODELNAME SABR_dsqrt_64ns_64ns_64_57_no_dsp_1 RTLNAME SABR_dsqrt_64ns_64ns_64_57_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 56 ALLOW_PRAGMA 1}
      {MODELNAME SABR_gmem_m_axi RTLNAME SABR_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME SABR_control_s_axi RTLNAME SABR_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
