set SynModuleInfo {
  {SRCNAME GBM_Pipeline_VITIS_LOOP_11_1 MODELNAME GBM_Pipeline_VITIS_LOOP_11_1 RTLNAME GBM_GBM_Pipeline_VITIS_LOOP_11_1
    SUBMODULES {
      {MODELNAME GBM_flow_control_loop_pipe_sequential_init RTLNAME GBM_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME GBM_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME GBM_Pipeline_VITIS_LOOP_15_2 MODELNAME GBM_Pipeline_VITIS_LOOP_15_2 RTLNAME GBM_GBM_Pipeline_VITIS_LOOP_15_2
    SUBMODULES {
      {MODELNAME GBM_dadd_64ns_64ns_64_6_full_dsp_1 RTLNAME GBM_dadd_64ns_64ns_64_6_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME GBM_dmul_64ns_64ns_64_6_max_dsp_1 RTLNAME GBM_dmul_64ns_64ns_64_6_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME GBM_dexp_64ns_64ns_64_18_full_dsp_1 RTLNAME GBM_dexp_64ns_64ns_64_18_full_dsp_1 BINDTYPE op TYPE dexp IMPL fulldsp LATENCY 17 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME GBM MODELNAME GBM RTLNAME GBM IS_TOP 1
    SUBMODULES {
      {MODELNAME GBM_dadddsub_64ns_64ns_64_6_full_dsp_1 RTLNAME GBM_dadddsub_64ns_64ns_64_6_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME GBM_ddiv_64ns_64ns_64_31_no_dsp_1 RTLNAME GBM_ddiv_64ns_64ns_64_31_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 30 ALLOW_PRAGMA 1}
      {MODELNAME GBM_dsqrt_64ns_64ns_64_57_no_dsp_1 RTLNAME GBM_dsqrt_64ns_64ns_64_57_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 56 ALLOW_PRAGMA 1}
      {MODELNAME GBM_gmem_m_axi RTLNAME GBM_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME GBM_control_s_axi RTLNAME GBM_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
