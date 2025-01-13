# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  #Adding Group
  set group_0 [ipgui::add_group $IPINST -name "group 0" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_0}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_0_ENABLE_ID_PORTS" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_0_ID_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_0_DATA_WIDTH" -parent ${group_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_0_ENABLE_USER_PORTS" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_0_AWUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_0_WUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_0_BUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_0_ARUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_0_RUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_0_USER_VALUE" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_0_PROT_VALUE" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_0_CACHE_VALUE" -parent ${group_0}

  #Adding Group
  set group_1 [ipgui::add_group $IPINST -name "group 1" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_1}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_1_ENABLE_ID_PORTS" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_1_ID_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_1_DATA_WIDTH" -parent ${group_1} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_1_ENABLE_USER_PORTS" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_1_AWUSER_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_1_WUSER_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_1_BUSER_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_1_ARUSER_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_1_RUSER_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_1_USER_VALUE" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_1_PROT_VALUE" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_1_CACHE_VALUE" -parent ${group_1}

  #Adding Group
  set group_2 [ipgui::add_group $IPINST -name "group 2" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_2}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_2_ENABLE_ID_PORTS" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_2_ID_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_2_DATA_WIDTH" -parent ${group_2} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_2_ENABLE_USER_PORTS" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_2_AWUSER_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_2_WUSER_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_2_BUSER_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_2_ARUSER_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_2_RUSER_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_2_USER_VALUE" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_2_PROT_VALUE" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_2_CACHE_VALUE" -parent ${group_2}

  #Adding Group
  set group_3 [ipgui::add_group $IPINST -name "group 3" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_3}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_3_ENABLE_ID_PORTS" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_3_ID_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_3_DATA_WIDTH" -parent ${group_3} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_3_ENABLE_USER_PORTS" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_3_AWUSER_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_3_WUSER_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_3_BUSER_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_3_ARUSER_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_3_RUSER_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_3_USER_VALUE" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_3_PROT_VALUE" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_3_CACHE_VALUE" -parent ${group_3}

  #Adding Group
  set group_4 [ipgui::add_group $IPINST -name "group 4" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_4}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_4_ENABLE_ID_PORTS" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_4_ID_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_4_DATA_WIDTH" -parent ${group_4} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_4_ENABLE_USER_PORTS" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_4_AWUSER_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_4_WUSER_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_4_BUSER_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_4_ARUSER_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_4_RUSER_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_4_USER_VALUE" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_4_PROT_VALUE" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_4_CACHE_VALUE" -parent ${group_4}

  #Adding Group
  set group_5 [ipgui::add_group $IPINST -name "group 5" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_5}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_5_ENABLE_ID_PORTS" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_5_ID_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_5_DATA_WIDTH" -parent ${group_5} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_5_ENABLE_USER_PORTS" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_5_AWUSER_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_5_WUSER_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_5_BUSER_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_5_ARUSER_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_5_RUSER_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_5_USER_VALUE" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_5_PROT_VALUE" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_5_CACHE_VALUE" -parent ${group_5}

  #Adding Group
  set group_6 [ipgui::add_group $IPINST -name "group 6" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_6}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_6_ENABLE_ID_PORTS" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_6_ID_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_6_DATA_WIDTH" -parent ${group_6} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_6_ENABLE_USER_PORTS" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_6_AWUSER_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_6_WUSER_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_6_BUSER_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_6_ARUSER_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_6_RUSER_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_6_USER_VALUE" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_6_PROT_VALUE" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_6_CACHE_VALUE" -parent ${group_6}

  #Adding Group
  set group_7 [ipgui::add_group $IPINST -name "group 7" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_7}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_7_ENABLE_ID_PORTS" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_7_ID_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_7_DATA_WIDTH" -parent ${group_7} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_7_ENABLE_USER_PORTS" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_7_AWUSER_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_7_WUSER_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_7_BUSER_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_7_ARUSER_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_7_RUSER_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_7_USER_VALUE" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_7_PROT_VALUE" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_7_CACHE_VALUE" -parent ${group_7}

  #Adding Group
  set group_8 [ipgui::add_group $IPINST -name "group 8" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_8}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_8_ENABLE_ID_PORTS" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_8_ID_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_8_DATA_WIDTH" -parent ${group_8} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_8_ENABLE_USER_PORTS" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_8_AWUSER_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_8_WUSER_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_8_BUSER_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_8_ARUSER_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_8_RUSER_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_8_USER_VALUE" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_8_PROT_VALUE" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_8_CACHE_VALUE" -parent ${group_8}

  #Adding Group
  set group_9 [ipgui::add_group $IPINST -name "group 9" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_9}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_9_ENABLE_ID_PORTS" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_9_ID_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_9_DATA_WIDTH" -parent ${group_9} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_9_ENABLE_USER_PORTS" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_9_AWUSER_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_9_WUSER_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_9_BUSER_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_9_ARUSER_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_9_RUSER_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_9_USER_VALUE" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_9_PROT_VALUE" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_9_CACHE_VALUE" -parent ${group_9}

  #Adding Group
  set group_10 [ipgui::add_group $IPINST -name "group 10" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_10}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_10_ENABLE_ID_PORTS" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_10_ID_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_10_DATA_WIDTH" -parent ${group_10} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_10_ENABLE_USER_PORTS" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_10_AWUSER_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_10_WUSER_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_10_BUSER_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_10_ARUSER_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_10_RUSER_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_10_USER_VALUE" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_10_PROT_VALUE" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_10_CACHE_VALUE" -parent ${group_10}

  #Adding Group
  set group_11 [ipgui::add_group $IPINST -name "group 11" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_11}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_11_ENABLE_ID_PORTS" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_11_ID_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_11_DATA_WIDTH" -parent ${group_11} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_11_ENABLE_USER_PORTS" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_11_AWUSER_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_11_WUSER_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_11_BUSER_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_11_ARUSER_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_11_RUSER_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_11_USER_VALUE" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_11_PROT_VALUE" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_11_CACHE_VALUE" -parent ${group_11}

  #Adding Group
  set group_12 [ipgui::add_group $IPINST -name "group 12" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_12}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_12_ENABLE_ID_PORTS" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_12_ID_WIDTH" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_12_DATA_WIDTH" -parent ${group_12} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_12_ENABLE_USER_PORTS" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_12_AWUSER_WIDTH" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_12_WUSER_WIDTH" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_12_BUSER_WIDTH" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_12_ARUSER_WIDTH" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_12_RUSER_WIDTH" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_12_USER_VALUE" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_12_PROT_VALUE" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_12_CACHE_VALUE" -parent ${group_12}

  #Adding Group
  set group_13 [ipgui::add_group $IPINST -name "group 13" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_13}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_13_ENABLE_ID_PORTS" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_13_ID_WIDTH" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_13_DATA_WIDTH" -parent ${group_13} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_13_ENABLE_USER_PORTS" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_13_AWUSER_WIDTH" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_13_WUSER_WIDTH" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_13_BUSER_WIDTH" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_13_ARUSER_WIDTH" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_13_RUSER_WIDTH" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_13_USER_VALUE" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_13_PROT_VALUE" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_13_CACHE_VALUE" -parent ${group_13}

  #Adding Group
  set group_14 [ipgui::add_group $IPINST -name "group 14" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_14}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_14_ENABLE_ID_PORTS" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_14_ID_WIDTH" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_14_DATA_WIDTH" -parent ${group_14} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_14_ENABLE_USER_PORTS" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_14_AWUSER_WIDTH" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_14_WUSER_WIDTH" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_14_BUSER_WIDTH" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_14_ARUSER_WIDTH" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_14_RUSER_WIDTH" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_14_USER_VALUE" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_14_PROT_VALUE" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_14_CACHE_VALUE" -parent ${group_14}

  #Adding Group
  set group_15 [ipgui::add_group $IPINST -name "group 15" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_15}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_15_ENABLE_ID_PORTS" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_15_ID_WIDTH" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_15_DATA_WIDTH" -parent ${group_15} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_15_ENABLE_USER_PORTS" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_15_AWUSER_WIDTH" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_15_WUSER_WIDTH" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_15_BUSER_WIDTH" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_15_ARUSER_WIDTH" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_15_RUSER_WIDTH" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_15_USER_VALUE" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_15_PROT_VALUE" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_15_CACHE_VALUE" -parent ${group_15}

  #Adding Group
  set group_16 [ipgui::add_group $IPINST -name "group 16" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_16}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_16_ENABLE_ID_PORTS" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_16_ID_WIDTH" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_16_DATA_WIDTH" -parent ${group_16} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_16_ENABLE_USER_PORTS" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_16_AWUSER_WIDTH" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_16_WUSER_WIDTH" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_16_BUSER_WIDTH" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_16_ARUSER_WIDTH" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_16_RUSER_WIDTH" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_16_USER_VALUE" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_16_PROT_VALUE" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_16_CACHE_VALUE" -parent ${group_16}

  #Adding Group
  set group_17 [ipgui::add_group $IPINST -name "group 17" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_17}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_17_ENABLE_ID_PORTS" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_17_ID_WIDTH" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_17_DATA_WIDTH" -parent ${group_17} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_17_ENABLE_USER_PORTS" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_17_AWUSER_WIDTH" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_17_WUSER_WIDTH" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_17_BUSER_WIDTH" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_17_ARUSER_WIDTH" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_17_RUSER_WIDTH" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_17_USER_VALUE" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_17_PROT_VALUE" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_17_CACHE_VALUE" -parent ${group_17}

  #Adding Group
  set group_18 [ipgui::add_group $IPINST -name "group 18" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_18}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_18_ENABLE_ID_PORTS" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_18_ID_WIDTH" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_18_DATA_WIDTH" -parent ${group_18} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_18_ENABLE_USER_PORTS" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_18_AWUSER_WIDTH" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_18_WUSER_WIDTH" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_18_BUSER_WIDTH" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_18_ARUSER_WIDTH" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_18_RUSER_WIDTH" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_18_USER_VALUE" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_18_PROT_VALUE" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_18_CACHE_VALUE" -parent ${group_18}

  #Adding Group
  set group_19 [ipgui::add_group $IPINST -name "group 19" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_19}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_19_ENABLE_ID_PORTS" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_19_ID_WIDTH" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_19_DATA_WIDTH" -parent ${group_19} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_19_ENABLE_USER_PORTS" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_19_AWUSER_WIDTH" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_19_WUSER_WIDTH" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_19_BUSER_WIDTH" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_19_ARUSER_WIDTH" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_19_RUSER_WIDTH" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_19_USER_VALUE" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_19_PROT_VALUE" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_19_CACHE_VALUE" -parent ${group_19}

  #Adding Group
  set group_20 [ipgui::add_group $IPINST -name "group 20" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_20}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_20_ENABLE_ID_PORTS" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_20_ID_WIDTH" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_20_DATA_WIDTH" -parent ${group_20} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_20_ENABLE_USER_PORTS" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_20_AWUSER_WIDTH" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_20_WUSER_WIDTH" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_20_BUSER_WIDTH" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_20_ARUSER_WIDTH" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_20_RUSER_WIDTH" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_20_USER_VALUE" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_20_PROT_VALUE" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_20_CACHE_VALUE" -parent ${group_20}

  #Adding Group
  set group_21 [ipgui::add_group $IPINST -name "group 21" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_21}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_21_ENABLE_ID_PORTS" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_21_ID_WIDTH" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_21_DATA_WIDTH" -parent ${group_21} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_21_ENABLE_USER_PORTS" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_21_AWUSER_WIDTH" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_21_WUSER_WIDTH" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_21_BUSER_WIDTH" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_21_ARUSER_WIDTH" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_21_RUSER_WIDTH" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_21_USER_VALUE" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_21_PROT_VALUE" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_21_CACHE_VALUE" -parent ${group_21}

  #Adding Group
  set group_22 [ipgui::add_group $IPINST -name "group 22" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_22}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_22_ENABLE_ID_PORTS" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_22_ID_WIDTH" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_22_DATA_WIDTH" -parent ${group_22} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_22_ENABLE_USER_PORTS" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_22_AWUSER_WIDTH" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_22_WUSER_WIDTH" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_22_BUSER_WIDTH" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_22_ARUSER_WIDTH" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_22_RUSER_WIDTH" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_22_USER_VALUE" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_22_PROT_VALUE" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_22_CACHE_VALUE" -parent ${group_22}

  #Adding Group
  set group_23 [ipgui::add_group $IPINST -name "group 23" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_23}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_23_ENABLE_ID_PORTS" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_23_ID_WIDTH" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_23_DATA_WIDTH" -parent ${group_23} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_23_ENABLE_USER_PORTS" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_23_AWUSER_WIDTH" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_23_WUSER_WIDTH" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_23_BUSER_WIDTH" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_23_ARUSER_WIDTH" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_23_RUSER_WIDTH" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_23_USER_VALUE" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_23_PROT_VALUE" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_23_CACHE_VALUE" -parent ${group_23}

  #Adding Group
  set group_24 [ipgui::add_group $IPINST -name "group 24" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_24}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_24_ENABLE_ID_PORTS" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_24_ID_WIDTH" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_24_DATA_WIDTH" -parent ${group_24} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_24_ENABLE_USER_PORTS" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_24_AWUSER_WIDTH" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_24_WUSER_WIDTH" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_24_BUSER_WIDTH" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_24_ARUSER_WIDTH" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_24_RUSER_WIDTH" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_24_USER_VALUE" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_24_PROT_VALUE" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_24_CACHE_VALUE" -parent ${group_24}

  #Adding Group
  set group_25 [ipgui::add_group $IPINST -name "group 25" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_25}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_25_ENABLE_ID_PORTS" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_25_ID_WIDTH" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_25_DATA_WIDTH" -parent ${group_25} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_25_ENABLE_USER_PORTS" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_25_AWUSER_WIDTH" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_25_WUSER_WIDTH" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_25_BUSER_WIDTH" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_25_ARUSER_WIDTH" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_25_RUSER_WIDTH" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_25_USER_VALUE" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_25_PROT_VALUE" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_25_CACHE_VALUE" -parent ${group_25}

  #Adding Group
  set group_26 [ipgui::add_group $IPINST -name "group 26" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_26}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_26_ENABLE_ID_PORTS" -parent ${group_26}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_26_ID_WIDTH" -parent ${group_26}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_26_DATA_WIDTH" -parent ${group_26} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_26_ENABLE_USER_PORTS" -parent ${group_26}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_26_AWUSER_WIDTH" -parent ${group_26}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_26_WUSER_WIDTH" -parent ${group_26}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_26_BUSER_WIDTH" -parent ${group_26}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_26_ARUSER_WIDTH" -parent ${group_26}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_26_RUSER_WIDTH" -parent ${group_26}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_26_USER_VALUE" -parent ${group_26}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_26_PROT_VALUE" -parent ${group_26}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_26_CACHE_VALUE" -parent ${group_26}

  #Adding Group
  set group_27 [ipgui::add_group $IPINST -name "group 27" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_27}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_27_ENABLE_ID_PORTS" -parent ${group_27}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_27_ID_WIDTH" -parent ${group_27}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_27_DATA_WIDTH" -parent ${group_27} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_27_ENABLE_USER_PORTS" -parent ${group_27}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_27_AWUSER_WIDTH" -parent ${group_27}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_27_WUSER_WIDTH" -parent ${group_27}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_27_BUSER_WIDTH" -parent ${group_27}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_27_ARUSER_WIDTH" -parent ${group_27}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_27_RUSER_WIDTH" -parent ${group_27}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_27_USER_VALUE" -parent ${group_27}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_27_PROT_VALUE" -parent ${group_27}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_27_CACHE_VALUE" -parent ${group_27}

  #Adding Group
  set group_28 [ipgui::add_group $IPINST -name "group 28" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_28}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_28_ENABLE_ID_PORTS" -parent ${group_28}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_28_ID_WIDTH" -parent ${group_28}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_28_DATA_WIDTH" -parent ${group_28} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_28_ENABLE_USER_PORTS" -parent ${group_28}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_28_AWUSER_WIDTH" -parent ${group_28}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_28_WUSER_WIDTH" -parent ${group_28}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_28_BUSER_WIDTH" -parent ${group_28}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_28_ARUSER_WIDTH" -parent ${group_28}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_28_RUSER_WIDTH" -parent ${group_28}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_28_USER_VALUE" -parent ${group_28}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_28_PROT_VALUE" -parent ${group_28}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_28_CACHE_VALUE" -parent ${group_28}

  #Adding Group
  set group_29 [ipgui::add_group $IPINST -name "group 29" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_29}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_29_ENABLE_ID_PORTS" -parent ${group_29}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_29_ID_WIDTH" -parent ${group_29}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_29_DATA_WIDTH" -parent ${group_29} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_29_ENABLE_USER_PORTS" -parent ${group_29}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_29_AWUSER_WIDTH" -parent ${group_29}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_29_WUSER_WIDTH" -parent ${group_29}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_29_BUSER_WIDTH" -parent ${group_29}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_29_ARUSER_WIDTH" -parent ${group_29}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_29_RUSER_WIDTH" -parent ${group_29}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_29_USER_VALUE" -parent ${group_29}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_29_PROT_VALUE" -parent ${group_29}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_29_CACHE_VALUE" -parent ${group_29}

  #Adding Group
  set group_30 [ipgui::add_group $IPINST -name "group 30" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_30}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_30_ENABLE_ID_PORTS" -parent ${group_30}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_30_ID_WIDTH" -parent ${group_30}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_30_DATA_WIDTH" -parent ${group_30} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_30_ENABLE_USER_PORTS" -parent ${group_30}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_30_AWUSER_WIDTH" -parent ${group_30}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_30_WUSER_WIDTH" -parent ${group_30}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_30_BUSER_WIDTH" -parent ${group_30}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_30_ARUSER_WIDTH" -parent ${group_30}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_30_RUSER_WIDTH" -parent ${group_30}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_30_USER_VALUE" -parent ${group_30}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_30_PROT_VALUE" -parent ${group_30}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_30_CACHE_VALUE" -parent ${group_30}

  #Adding Group
  set group_31 [ipgui::add_group $IPINST -name "group 31" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_31}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_31_ENABLE_ID_PORTS" -parent ${group_31}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_31_ID_WIDTH" -parent ${group_31}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_31_DATA_WIDTH" -parent ${group_31} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_31_ENABLE_USER_PORTS" -parent ${group_31}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_31_AWUSER_WIDTH" -parent ${group_31}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_31_WUSER_WIDTH" -parent ${group_31}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_31_BUSER_WIDTH" -parent ${group_31}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_31_ARUSER_WIDTH" -parent ${group_31}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_31_RUSER_WIDTH" -parent ${group_31}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_31_USER_VALUE" -parent ${group_31}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_31_PROT_VALUE" -parent ${group_31}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_31_CACHE_VALUE" -parent ${group_31}

  #Adding Group
  set group_32 [ipgui::add_group $IPINST -name "group 32" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_32}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_32_ENABLE_ID_PORTS" -parent ${group_32}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_32_ID_WIDTH" -parent ${group_32}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_32_DATA_WIDTH" -parent ${group_32} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_32_ENABLE_USER_PORTS" -parent ${group_32}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_32_AWUSER_WIDTH" -parent ${group_32}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_32_WUSER_WIDTH" -parent ${group_32}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_32_BUSER_WIDTH" -parent ${group_32}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_32_ARUSER_WIDTH" -parent ${group_32}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_32_RUSER_WIDTH" -parent ${group_32}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_32_USER_VALUE" -parent ${group_32}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_32_PROT_VALUE" -parent ${group_32}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_32_CACHE_VALUE" -parent ${group_32}

  #Adding Group
  set group_33 [ipgui::add_group $IPINST -name "group 33" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_33}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_33_ENABLE_ID_PORTS" -parent ${group_33}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_33_ID_WIDTH" -parent ${group_33}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_33_DATA_WIDTH" -parent ${group_33} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_33_ENABLE_USER_PORTS" -parent ${group_33}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_33_AWUSER_WIDTH" -parent ${group_33}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_33_WUSER_WIDTH" -parent ${group_33}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_33_BUSER_WIDTH" -parent ${group_33}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_33_ARUSER_WIDTH" -parent ${group_33}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_33_RUSER_WIDTH" -parent ${group_33}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_33_USER_VALUE" -parent ${group_33}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_33_PROT_VALUE" -parent ${group_33}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_33_CACHE_VALUE" -parent ${group_33}

  #Adding Group
  set group_34 [ipgui::add_group $IPINST -name "group 34" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_34}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_34_ENABLE_ID_PORTS" -parent ${group_34}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_34_ID_WIDTH" -parent ${group_34}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_34_DATA_WIDTH" -parent ${group_34} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_34_ENABLE_USER_PORTS" -parent ${group_34}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_34_AWUSER_WIDTH" -parent ${group_34}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_34_WUSER_WIDTH" -parent ${group_34}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_34_BUSER_WIDTH" -parent ${group_34}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_34_ARUSER_WIDTH" -parent ${group_34}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_34_RUSER_WIDTH" -parent ${group_34}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_34_USER_VALUE" -parent ${group_34}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_34_PROT_VALUE" -parent ${group_34}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_34_CACHE_VALUE" -parent ${group_34}

  #Adding Group
  set group_35 [ipgui::add_group $IPINST -name "group 35" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_35}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_35_ENABLE_ID_PORTS" -parent ${group_35}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_35_ID_WIDTH" -parent ${group_35}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_35_DATA_WIDTH" -parent ${group_35} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_35_ENABLE_USER_PORTS" -parent ${group_35}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_35_AWUSER_WIDTH" -parent ${group_35}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_35_WUSER_WIDTH" -parent ${group_35}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_35_BUSER_WIDTH" -parent ${group_35}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_35_ARUSER_WIDTH" -parent ${group_35}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_35_RUSER_WIDTH" -parent ${group_35}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_35_USER_VALUE" -parent ${group_35}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_35_PROT_VALUE" -parent ${group_35}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_35_CACHE_VALUE" -parent ${group_35}

  #Adding Group
  set group_36 [ipgui::add_group $IPINST -name "group 36" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_36}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_36_ENABLE_ID_PORTS" -parent ${group_36}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_36_ID_WIDTH" -parent ${group_36}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_36_DATA_WIDTH" -parent ${group_36} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_36_ENABLE_USER_PORTS" -parent ${group_36}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_36_AWUSER_WIDTH" -parent ${group_36}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_36_WUSER_WIDTH" -parent ${group_36}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_36_BUSER_WIDTH" -parent ${group_36}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_36_ARUSER_WIDTH" -parent ${group_36}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_36_RUSER_WIDTH" -parent ${group_36}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_36_USER_VALUE" -parent ${group_36}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_36_PROT_VALUE" -parent ${group_36}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_36_CACHE_VALUE" -parent ${group_36}

  #Adding Group
  set group_37 [ipgui::add_group $IPINST -name "group 37" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_37}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_37_ENABLE_ID_PORTS" -parent ${group_37}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_37_ID_WIDTH" -parent ${group_37}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_37_DATA_WIDTH" -parent ${group_37} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_37_ENABLE_USER_PORTS" -parent ${group_37}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_37_AWUSER_WIDTH" -parent ${group_37}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_37_WUSER_WIDTH" -parent ${group_37}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_37_BUSER_WIDTH" -parent ${group_37}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_37_ARUSER_WIDTH" -parent ${group_37}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_37_RUSER_WIDTH" -parent ${group_37}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_37_USER_VALUE" -parent ${group_37}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_37_PROT_VALUE" -parent ${group_37}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_37_CACHE_VALUE" -parent ${group_37}

  #Adding Group
  set group_38 [ipgui::add_group $IPINST -name "group 38" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_38}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_38_ENABLE_ID_PORTS" -parent ${group_38}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_38_ID_WIDTH" -parent ${group_38}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_38_DATA_WIDTH" -parent ${group_38} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_38_ENABLE_USER_PORTS" -parent ${group_38}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_38_AWUSER_WIDTH" -parent ${group_38}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_38_WUSER_WIDTH" -parent ${group_38}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_38_BUSER_WIDTH" -parent ${group_38}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_38_ARUSER_WIDTH" -parent ${group_38}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_38_RUSER_WIDTH" -parent ${group_38}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_38_USER_VALUE" -parent ${group_38}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_38_PROT_VALUE" -parent ${group_38}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_38_CACHE_VALUE" -parent ${group_38}

  #Adding Group
  set group_39 [ipgui::add_group $IPINST -name "group 39" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_39}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_39_ENABLE_ID_PORTS" -parent ${group_39}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_39_ID_WIDTH" -parent ${group_39}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_39_DATA_WIDTH" -parent ${group_39} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_39_ENABLE_USER_PORTS" -parent ${group_39}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_39_AWUSER_WIDTH" -parent ${group_39}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_39_WUSER_WIDTH" -parent ${group_39}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_39_BUSER_WIDTH" -parent ${group_39}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_39_ARUSER_WIDTH" -parent ${group_39}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_39_RUSER_WIDTH" -parent ${group_39}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_39_USER_VALUE" -parent ${group_39}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_39_PROT_VALUE" -parent ${group_39}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_39_CACHE_VALUE" -parent ${group_39}

  #Adding Group
  set group_40 [ipgui::add_group $IPINST -name "group 40" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_40}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_40_ENABLE_ID_PORTS" -parent ${group_40}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_40_ID_WIDTH" -parent ${group_40}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_40_DATA_WIDTH" -parent ${group_40} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_40_ENABLE_USER_PORTS" -parent ${group_40}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_40_AWUSER_WIDTH" -parent ${group_40}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_40_WUSER_WIDTH" -parent ${group_40}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_40_BUSER_WIDTH" -parent ${group_40}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_40_ARUSER_WIDTH" -parent ${group_40}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_40_RUSER_WIDTH" -parent ${group_40}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_40_USER_VALUE" -parent ${group_40}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_40_PROT_VALUE" -parent ${group_40}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_40_CACHE_VALUE" -parent ${group_40}

  #Adding Group
  set group_41 [ipgui::add_group $IPINST -name "group 41" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_41}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_41_ENABLE_ID_PORTS" -parent ${group_41}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_41_ID_WIDTH" -parent ${group_41}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_41_DATA_WIDTH" -parent ${group_41} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_41_ENABLE_USER_PORTS" -parent ${group_41}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_41_AWUSER_WIDTH" -parent ${group_41}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_41_WUSER_WIDTH" -parent ${group_41}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_41_BUSER_WIDTH" -parent ${group_41}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_41_ARUSER_WIDTH" -parent ${group_41}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_41_RUSER_WIDTH" -parent ${group_41}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_41_USER_VALUE" -parent ${group_41}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_41_PROT_VALUE" -parent ${group_41}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_41_CACHE_VALUE" -parent ${group_41}

  #Adding Group
  set group_42 [ipgui::add_group $IPINST -name "group 42" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_42}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_42_ENABLE_ID_PORTS" -parent ${group_42}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_42_ID_WIDTH" -parent ${group_42}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_42_DATA_WIDTH" -parent ${group_42} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_42_ENABLE_USER_PORTS" -parent ${group_42}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_42_AWUSER_WIDTH" -parent ${group_42}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_42_WUSER_WIDTH" -parent ${group_42}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_42_BUSER_WIDTH" -parent ${group_42}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_42_ARUSER_WIDTH" -parent ${group_42}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_42_RUSER_WIDTH" -parent ${group_42}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_42_USER_VALUE" -parent ${group_42}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_42_PROT_VALUE" -parent ${group_42}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_42_CACHE_VALUE" -parent ${group_42}

  #Adding Group
  set group_43 [ipgui::add_group $IPINST -name "group 43" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_43}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_43_ENABLE_ID_PORTS" -parent ${group_43}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_43_ID_WIDTH" -parent ${group_43}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_43_DATA_WIDTH" -parent ${group_43} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_43_ENABLE_USER_PORTS" -parent ${group_43}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_43_AWUSER_WIDTH" -parent ${group_43}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_43_WUSER_WIDTH" -parent ${group_43}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_43_BUSER_WIDTH" -parent ${group_43}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_43_ARUSER_WIDTH" -parent ${group_43}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_43_RUSER_WIDTH" -parent ${group_43}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_43_USER_VALUE" -parent ${group_43}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_43_PROT_VALUE" -parent ${group_43}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_43_CACHE_VALUE" -parent ${group_43}

  #Adding Group
  set group_44 [ipgui::add_group $IPINST -name "group 44" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_44}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_44_ENABLE_ID_PORTS" -parent ${group_44}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_44_ID_WIDTH" -parent ${group_44}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_44_DATA_WIDTH" -parent ${group_44} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_44_ENABLE_USER_PORTS" -parent ${group_44}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_44_AWUSER_WIDTH" -parent ${group_44}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_44_WUSER_WIDTH" -parent ${group_44}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_44_BUSER_WIDTH" -parent ${group_44}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_44_ARUSER_WIDTH" -parent ${group_44}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_44_RUSER_WIDTH" -parent ${group_44}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_44_USER_VALUE" -parent ${group_44}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_44_PROT_VALUE" -parent ${group_44}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_44_CACHE_VALUE" -parent ${group_44}

  #Adding Group
  set group_45 [ipgui::add_group $IPINST -name "group 45" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_45}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_45_ENABLE_ID_PORTS" -parent ${group_45}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_45_ID_WIDTH" -parent ${group_45}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_45_DATA_WIDTH" -parent ${group_45} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_45_ENABLE_USER_PORTS" -parent ${group_45}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_45_AWUSER_WIDTH" -parent ${group_45}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_45_WUSER_WIDTH" -parent ${group_45}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_45_BUSER_WIDTH" -parent ${group_45}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_45_ARUSER_WIDTH" -parent ${group_45}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_45_RUSER_WIDTH" -parent ${group_45}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_45_USER_VALUE" -parent ${group_45}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_45_PROT_VALUE" -parent ${group_45}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_45_CACHE_VALUE" -parent ${group_45}

  #Adding Group
  set group_46 [ipgui::add_group $IPINST -name "group 46" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_46}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_46_ENABLE_ID_PORTS" -parent ${group_46}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_46_ID_WIDTH" -parent ${group_46}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_46_DATA_WIDTH" -parent ${group_46} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_46_ENABLE_USER_PORTS" -parent ${group_46}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_46_AWUSER_WIDTH" -parent ${group_46}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_46_WUSER_WIDTH" -parent ${group_46}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_46_BUSER_WIDTH" -parent ${group_46}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_46_ARUSER_WIDTH" -parent ${group_46}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_46_RUSER_WIDTH" -parent ${group_46}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_46_USER_VALUE" -parent ${group_46}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_46_PROT_VALUE" -parent ${group_46}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_46_CACHE_VALUE" -parent ${group_46}

  #Adding Group
  set group_47 [ipgui::add_group $IPINST -name "group 47" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_47}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_47_ENABLE_ID_PORTS" -parent ${group_47}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_47_ID_WIDTH" -parent ${group_47}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_47_DATA_WIDTH" -parent ${group_47} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_47_ENABLE_USER_PORTS" -parent ${group_47}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_47_AWUSER_WIDTH" -parent ${group_47}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_47_WUSER_WIDTH" -parent ${group_47}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_47_BUSER_WIDTH" -parent ${group_47}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_47_ARUSER_WIDTH" -parent ${group_47}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_47_RUSER_WIDTH" -parent ${group_47}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_47_USER_VALUE" -parent ${group_47}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_47_PROT_VALUE" -parent ${group_47}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_47_CACHE_VALUE" -parent ${group_47}

  #Adding Group
  set group_48 [ipgui::add_group $IPINST -name "group 48" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_48}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_48_ENABLE_ID_PORTS" -parent ${group_48}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_48_ID_WIDTH" -parent ${group_48}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_48_DATA_WIDTH" -parent ${group_48} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_48_ENABLE_USER_PORTS" -parent ${group_48}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_48_AWUSER_WIDTH" -parent ${group_48}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_48_WUSER_WIDTH" -parent ${group_48}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_48_BUSER_WIDTH" -parent ${group_48}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_48_ARUSER_WIDTH" -parent ${group_48}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_48_RUSER_WIDTH" -parent ${group_48}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_48_USER_VALUE" -parent ${group_48}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_48_PROT_VALUE" -parent ${group_48}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_48_CACHE_VALUE" -parent ${group_48}

  #Adding Group
  set group_49 [ipgui::add_group $IPINST -name "group 49" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_49}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_49_ENABLE_ID_PORTS" -parent ${group_49}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_49_ID_WIDTH" -parent ${group_49}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_49_DATA_WIDTH" -parent ${group_49} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_49_ENABLE_USER_PORTS" -parent ${group_49}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_49_AWUSER_WIDTH" -parent ${group_49}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_49_WUSER_WIDTH" -parent ${group_49}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_49_BUSER_WIDTH" -parent ${group_49}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_49_ARUSER_WIDTH" -parent ${group_49}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_49_RUSER_WIDTH" -parent ${group_49}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_49_USER_VALUE" -parent ${group_49}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_49_PROT_VALUE" -parent ${group_49}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_49_CACHE_VALUE" -parent ${group_49}

  #Adding Group
  set group_50 [ipgui::add_group $IPINST -name "group 50" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_50}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_50_ENABLE_ID_PORTS" -parent ${group_50}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_50_ID_WIDTH" -parent ${group_50}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_50_DATA_WIDTH" -parent ${group_50} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_50_ENABLE_USER_PORTS" -parent ${group_50}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_50_AWUSER_WIDTH" -parent ${group_50}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_50_WUSER_WIDTH" -parent ${group_50}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_50_BUSER_WIDTH" -parent ${group_50}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_50_ARUSER_WIDTH" -parent ${group_50}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_50_RUSER_WIDTH" -parent ${group_50}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_50_USER_VALUE" -parent ${group_50}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_50_PROT_VALUE" -parent ${group_50}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_50_CACHE_VALUE" -parent ${group_50}

  #Adding Group
  set group_51 [ipgui::add_group $IPINST -name "group 51" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_51}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_51_ENABLE_ID_PORTS" -parent ${group_51}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_51_ID_WIDTH" -parent ${group_51}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_51_DATA_WIDTH" -parent ${group_51} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_51_ENABLE_USER_PORTS" -parent ${group_51}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_51_AWUSER_WIDTH" -parent ${group_51}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_51_WUSER_WIDTH" -parent ${group_51}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_51_BUSER_WIDTH" -parent ${group_51}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_51_ARUSER_WIDTH" -parent ${group_51}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_51_RUSER_WIDTH" -parent ${group_51}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_51_USER_VALUE" -parent ${group_51}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_51_PROT_VALUE" -parent ${group_51}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_51_CACHE_VALUE" -parent ${group_51}

  #Adding Group
  set group_52 [ipgui::add_group $IPINST -name "group 52" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_52}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_52_ENABLE_ID_PORTS" -parent ${group_52}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_52_ID_WIDTH" -parent ${group_52}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_52_DATA_WIDTH" -parent ${group_52} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_52_ENABLE_USER_PORTS" -parent ${group_52}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_52_AWUSER_WIDTH" -parent ${group_52}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_52_WUSER_WIDTH" -parent ${group_52}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_52_BUSER_WIDTH" -parent ${group_52}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_52_ARUSER_WIDTH" -parent ${group_52}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_52_RUSER_WIDTH" -parent ${group_52}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_52_USER_VALUE" -parent ${group_52}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_52_PROT_VALUE" -parent ${group_52}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_52_CACHE_VALUE" -parent ${group_52}

  #Adding Group
  set group_53 [ipgui::add_group $IPINST -name "group 53" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_53}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_53_ENABLE_ID_PORTS" -parent ${group_53}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_53_ID_WIDTH" -parent ${group_53}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_53_DATA_WIDTH" -parent ${group_53} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_53_ENABLE_USER_PORTS" -parent ${group_53}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_53_AWUSER_WIDTH" -parent ${group_53}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_53_WUSER_WIDTH" -parent ${group_53}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_53_BUSER_WIDTH" -parent ${group_53}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_53_ARUSER_WIDTH" -parent ${group_53}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_53_RUSER_WIDTH" -parent ${group_53}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_53_USER_VALUE" -parent ${group_53}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_53_PROT_VALUE" -parent ${group_53}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_53_CACHE_VALUE" -parent ${group_53}

  #Adding Group
  set group_54 [ipgui::add_group $IPINST -name "group 54" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_54}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_54_ENABLE_ID_PORTS" -parent ${group_54}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_54_ID_WIDTH" -parent ${group_54}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_54_DATA_WIDTH" -parent ${group_54} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_54_ENABLE_USER_PORTS" -parent ${group_54}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_54_AWUSER_WIDTH" -parent ${group_54}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_54_WUSER_WIDTH" -parent ${group_54}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_54_BUSER_WIDTH" -parent ${group_54}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_54_ARUSER_WIDTH" -parent ${group_54}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_54_RUSER_WIDTH" -parent ${group_54}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_54_USER_VALUE" -parent ${group_54}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_54_PROT_VALUE" -parent ${group_54}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_54_CACHE_VALUE" -parent ${group_54}

  #Adding Group
  set group_55 [ipgui::add_group $IPINST -name "group 55" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_55}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_55_ENABLE_ID_PORTS" -parent ${group_55}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_55_ID_WIDTH" -parent ${group_55}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_55_DATA_WIDTH" -parent ${group_55} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_55_ENABLE_USER_PORTS" -parent ${group_55}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_55_AWUSER_WIDTH" -parent ${group_55}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_55_WUSER_WIDTH" -parent ${group_55}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_55_BUSER_WIDTH" -parent ${group_55}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_55_ARUSER_WIDTH" -parent ${group_55}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_55_RUSER_WIDTH" -parent ${group_55}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_55_USER_VALUE" -parent ${group_55}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_55_PROT_VALUE" -parent ${group_55}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_55_CACHE_VALUE" -parent ${group_55}

  #Adding Group
  set group_56 [ipgui::add_group $IPINST -name "group 56" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_56}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_56_ENABLE_ID_PORTS" -parent ${group_56}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_56_ID_WIDTH" -parent ${group_56}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_56_DATA_WIDTH" -parent ${group_56} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_56_ENABLE_USER_PORTS" -parent ${group_56}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_56_AWUSER_WIDTH" -parent ${group_56}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_56_WUSER_WIDTH" -parent ${group_56}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_56_BUSER_WIDTH" -parent ${group_56}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_56_ARUSER_WIDTH" -parent ${group_56}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_56_RUSER_WIDTH" -parent ${group_56}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_56_USER_VALUE" -parent ${group_56}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_56_PROT_VALUE" -parent ${group_56}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_56_CACHE_VALUE" -parent ${group_56}

  #Adding Group
  set group_57 [ipgui::add_group $IPINST -name "group 57" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_57}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_57_ENABLE_ID_PORTS" -parent ${group_57}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_57_ID_WIDTH" -parent ${group_57}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_57_DATA_WIDTH" -parent ${group_57} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_57_ENABLE_USER_PORTS" -parent ${group_57}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_57_AWUSER_WIDTH" -parent ${group_57}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_57_WUSER_WIDTH" -parent ${group_57}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_57_BUSER_WIDTH" -parent ${group_57}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_57_ARUSER_WIDTH" -parent ${group_57}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_57_RUSER_WIDTH" -parent ${group_57}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_57_USER_VALUE" -parent ${group_57}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_57_PROT_VALUE" -parent ${group_57}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_57_CACHE_VALUE" -parent ${group_57}

  #Adding Group
  set group_58 [ipgui::add_group $IPINST -name "group 58" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_58}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_58_ENABLE_ID_PORTS" -parent ${group_58}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_58_ID_WIDTH" -parent ${group_58}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_58_DATA_WIDTH" -parent ${group_58} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_58_ENABLE_USER_PORTS" -parent ${group_58}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_58_AWUSER_WIDTH" -parent ${group_58}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_58_WUSER_WIDTH" -parent ${group_58}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_58_BUSER_WIDTH" -parent ${group_58}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_58_ARUSER_WIDTH" -parent ${group_58}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_58_RUSER_WIDTH" -parent ${group_58}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_58_USER_VALUE" -parent ${group_58}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_58_PROT_VALUE" -parent ${group_58}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_58_CACHE_VALUE" -parent ${group_58}

  #Adding Group
  set group_59 [ipgui::add_group $IPINST -name "group 59" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_59}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_59_ENABLE_ID_PORTS" -parent ${group_59}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_59_ID_WIDTH" -parent ${group_59}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_59_DATA_WIDTH" -parent ${group_59} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_59_ENABLE_USER_PORTS" -parent ${group_59}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_59_AWUSER_WIDTH" -parent ${group_59}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_59_WUSER_WIDTH" -parent ${group_59}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_59_BUSER_WIDTH" -parent ${group_59}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_59_ARUSER_WIDTH" -parent ${group_59}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_59_RUSER_WIDTH" -parent ${group_59}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_59_USER_VALUE" -parent ${group_59}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_59_PROT_VALUE" -parent ${group_59}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_59_CACHE_VALUE" -parent ${group_59}

  #Adding Group
  set group_60 [ipgui::add_group $IPINST -name "group 60" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_60}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_60_ENABLE_ID_PORTS" -parent ${group_60}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_60_ID_WIDTH" -parent ${group_60}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_60_DATA_WIDTH" -parent ${group_60} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_60_ENABLE_USER_PORTS" -parent ${group_60}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_60_AWUSER_WIDTH" -parent ${group_60}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_60_WUSER_WIDTH" -parent ${group_60}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_60_BUSER_WIDTH" -parent ${group_60}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_60_ARUSER_WIDTH" -parent ${group_60}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_60_RUSER_WIDTH" -parent ${group_60}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_60_USER_VALUE" -parent ${group_60}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_60_PROT_VALUE" -parent ${group_60}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_60_CACHE_VALUE" -parent ${group_60}

  #Adding Group
  set group_61 [ipgui::add_group $IPINST -name "group 61" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_61}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_61_ENABLE_ID_PORTS" -parent ${group_61}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_61_ID_WIDTH" -parent ${group_61}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_61_DATA_WIDTH" -parent ${group_61} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_61_ENABLE_USER_PORTS" -parent ${group_61}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_61_AWUSER_WIDTH" -parent ${group_61}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_61_WUSER_WIDTH" -parent ${group_61}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_61_BUSER_WIDTH" -parent ${group_61}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_61_ARUSER_WIDTH" -parent ${group_61}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_61_RUSER_WIDTH" -parent ${group_61}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_61_USER_VALUE" -parent ${group_61}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_61_PROT_VALUE" -parent ${group_61}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_61_CACHE_VALUE" -parent ${group_61}

  #Adding Group
  set group_62 [ipgui::add_group $IPINST -name "group 62" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_62}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_62_ENABLE_ID_PORTS" -parent ${group_62}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_62_ID_WIDTH" -parent ${group_62}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_62_DATA_WIDTH" -parent ${group_62} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_62_ENABLE_USER_PORTS" -parent ${group_62}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_62_AWUSER_WIDTH" -parent ${group_62}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_62_WUSER_WIDTH" -parent ${group_62}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_62_BUSER_WIDTH" -parent ${group_62}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_62_ARUSER_WIDTH" -parent ${group_62}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_62_RUSER_WIDTH" -parent ${group_62}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_62_USER_VALUE" -parent ${group_62}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_62_PROT_VALUE" -parent ${group_62}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_62_CACHE_VALUE" -parent ${group_62}

  #Adding Group
  set group_63 [ipgui::add_group $IPINST -name "group 63" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_63}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_63_ENABLE_ID_PORTS" -parent ${group_63}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_63_ID_WIDTH" -parent ${group_63}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_63_DATA_WIDTH" -parent ${group_63} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_63_ENABLE_USER_PORTS" -parent ${group_63}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_63_AWUSER_WIDTH" -parent ${group_63}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_63_WUSER_WIDTH" -parent ${group_63}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_63_BUSER_WIDTH" -parent ${group_63}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_63_ARUSER_WIDTH" -parent ${group_63}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_63_RUSER_WIDTH" -parent ${group_63}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_63_USER_VALUE" -parent ${group_63}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_63_PROT_VALUE" -parent ${group_63}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_63_CACHE_VALUE" -parent ${group_63}

  #Adding Group
  set group_64 [ipgui::add_group $IPINST -name "group 64" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_64}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_64_ENABLE_ID_PORTS" -parent ${group_64}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_64_ID_WIDTH" -parent ${group_64}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_64_DATA_WIDTH" -parent ${group_64} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_64_ENABLE_USER_PORTS" -parent ${group_64}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_64_AWUSER_WIDTH" -parent ${group_64}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_64_WUSER_WIDTH" -parent ${group_64}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_64_BUSER_WIDTH" -parent ${group_64}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_64_ARUSER_WIDTH" -parent ${group_64}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_64_RUSER_WIDTH" -parent ${group_64}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_64_USER_VALUE" -parent ${group_64}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_64_PROT_VALUE" -parent ${group_64}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_64_CACHE_VALUE" -parent ${group_64}

  #Adding Group
  set group_65 [ipgui::add_group $IPINST -name "group 65" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_65}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_65_ENABLE_ID_PORTS" -parent ${group_65}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_65_ID_WIDTH" -parent ${group_65}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_65_DATA_WIDTH" -parent ${group_65} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_65_ENABLE_USER_PORTS" -parent ${group_65}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_65_AWUSER_WIDTH" -parent ${group_65}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_65_WUSER_WIDTH" -parent ${group_65}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_65_BUSER_WIDTH" -parent ${group_65}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_65_ARUSER_WIDTH" -parent ${group_65}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_65_RUSER_WIDTH" -parent ${group_65}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_65_USER_VALUE" -parent ${group_65}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_65_PROT_VALUE" -parent ${group_65}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_65_CACHE_VALUE" -parent ${group_65}

  #Adding Group
  set group_66 [ipgui::add_group $IPINST -name "group 66" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_66}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_66_ENABLE_ID_PORTS" -parent ${group_66}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_66_ID_WIDTH" -parent ${group_66}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_66_DATA_WIDTH" -parent ${group_66} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_66_ENABLE_USER_PORTS" -parent ${group_66}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_66_AWUSER_WIDTH" -parent ${group_66}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_66_WUSER_WIDTH" -parent ${group_66}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_66_BUSER_WIDTH" -parent ${group_66}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_66_ARUSER_WIDTH" -parent ${group_66}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_66_RUSER_WIDTH" -parent ${group_66}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_66_USER_VALUE" -parent ${group_66}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_66_PROT_VALUE" -parent ${group_66}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_66_CACHE_VALUE" -parent ${group_66}

  #Adding Group
  set group_67 [ipgui::add_group $IPINST -name "group 67" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_67}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_67_ENABLE_ID_PORTS" -parent ${group_67}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_67_ID_WIDTH" -parent ${group_67}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_67_DATA_WIDTH" -parent ${group_67} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_67_ENABLE_USER_PORTS" -parent ${group_67}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_67_AWUSER_WIDTH" -parent ${group_67}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_67_WUSER_WIDTH" -parent ${group_67}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_67_BUSER_WIDTH" -parent ${group_67}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_67_ARUSER_WIDTH" -parent ${group_67}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_67_RUSER_WIDTH" -parent ${group_67}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_67_USER_VALUE" -parent ${group_67}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_67_PROT_VALUE" -parent ${group_67}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_67_CACHE_VALUE" -parent ${group_67}

  #Adding Group
  set group_68 [ipgui::add_group $IPINST -name "group 68" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_68}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_68_ENABLE_ID_PORTS" -parent ${group_68}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_68_ID_WIDTH" -parent ${group_68}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_68_DATA_WIDTH" -parent ${group_68} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_68_ENABLE_USER_PORTS" -parent ${group_68}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_68_AWUSER_WIDTH" -parent ${group_68}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_68_WUSER_WIDTH" -parent ${group_68}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_68_BUSER_WIDTH" -parent ${group_68}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_68_ARUSER_WIDTH" -parent ${group_68}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_68_RUSER_WIDTH" -parent ${group_68}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_68_USER_VALUE" -parent ${group_68}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_68_PROT_VALUE" -parent ${group_68}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_68_CACHE_VALUE" -parent ${group_68}

  #Adding Group
  set group_69 [ipgui::add_group $IPINST -name "group 69" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_69}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_69_ENABLE_ID_PORTS" -parent ${group_69}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_69_ID_WIDTH" -parent ${group_69}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_69_DATA_WIDTH" -parent ${group_69} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_69_ENABLE_USER_PORTS" -parent ${group_69}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_69_AWUSER_WIDTH" -parent ${group_69}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_69_WUSER_WIDTH" -parent ${group_69}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_69_BUSER_WIDTH" -parent ${group_69}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_69_ARUSER_WIDTH" -parent ${group_69}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_69_RUSER_WIDTH" -parent ${group_69}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_69_USER_VALUE" -parent ${group_69}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_69_PROT_VALUE" -parent ${group_69}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_69_CACHE_VALUE" -parent ${group_69}

  #Adding Group
  set group_70 [ipgui::add_group $IPINST -name "group 70" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_70}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_70_ENABLE_ID_PORTS" -parent ${group_70}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_70_ID_WIDTH" -parent ${group_70}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_70_DATA_WIDTH" -parent ${group_70} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_70_ENABLE_USER_PORTS" -parent ${group_70}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_70_AWUSER_WIDTH" -parent ${group_70}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_70_WUSER_WIDTH" -parent ${group_70}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_70_BUSER_WIDTH" -parent ${group_70}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_70_ARUSER_WIDTH" -parent ${group_70}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_70_RUSER_WIDTH" -parent ${group_70}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_70_USER_VALUE" -parent ${group_70}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_70_PROT_VALUE" -parent ${group_70}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_70_CACHE_VALUE" -parent ${group_70}

  #Adding Group
  set group_71 [ipgui::add_group $IPINST -name "group 71" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_71}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_71_ENABLE_ID_PORTS" -parent ${group_71}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_71_ID_WIDTH" -parent ${group_71}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_71_DATA_WIDTH" -parent ${group_71} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_71_ENABLE_USER_PORTS" -parent ${group_71}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_71_AWUSER_WIDTH" -parent ${group_71}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_71_WUSER_WIDTH" -parent ${group_71}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_71_BUSER_WIDTH" -parent ${group_71}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_71_ARUSER_WIDTH" -parent ${group_71}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_71_RUSER_WIDTH" -parent ${group_71}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_71_USER_VALUE" -parent ${group_71}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_71_PROT_VALUE" -parent ${group_71}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_71_CACHE_VALUE" -parent ${group_71}

  #Adding Group
  set group_72 [ipgui::add_group $IPINST -name "group 72" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_72}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_72_ENABLE_ID_PORTS" -parent ${group_72}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_72_ID_WIDTH" -parent ${group_72}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_72_DATA_WIDTH" -parent ${group_72} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_72_ENABLE_USER_PORTS" -parent ${group_72}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_72_AWUSER_WIDTH" -parent ${group_72}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_72_WUSER_WIDTH" -parent ${group_72}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_72_BUSER_WIDTH" -parent ${group_72}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_72_ARUSER_WIDTH" -parent ${group_72}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_72_RUSER_WIDTH" -parent ${group_72}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_72_USER_VALUE" -parent ${group_72}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_72_PROT_VALUE" -parent ${group_72}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_72_CACHE_VALUE" -parent ${group_72}

  #Adding Group
  set group_73 [ipgui::add_group $IPINST -name "group 73" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_73}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_73_ENABLE_ID_PORTS" -parent ${group_73}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_73_ID_WIDTH" -parent ${group_73}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_73_DATA_WIDTH" -parent ${group_73} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_73_ENABLE_USER_PORTS" -parent ${group_73}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_73_AWUSER_WIDTH" -parent ${group_73}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_73_WUSER_WIDTH" -parent ${group_73}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_73_BUSER_WIDTH" -parent ${group_73}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_73_ARUSER_WIDTH" -parent ${group_73}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_73_RUSER_WIDTH" -parent ${group_73}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_73_USER_VALUE" -parent ${group_73}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_73_PROT_VALUE" -parent ${group_73}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_73_CACHE_VALUE" -parent ${group_73}

  #Adding Group
  set group_74 [ipgui::add_group $IPINST -name "group 74" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_74}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_74_ENABLE_ID_PORTS" -parent ${group_74}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_74_ID_WIDTH" -parent ${group_74}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_74_DATA_WIDTH" -parent ${group_74} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_74_ENABLE_USER_PORTS" -parent ${group_74}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_74_AWUSER_WIDTH" -parent ${group_74}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_74_WUSER_WIDTH" -parent ${group_74}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_74_BUSER_WIDTH" -parent ${group_74}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_74_ARUSER_WIDTH" -parent ${group_74}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_74_RUSER_WIDTH" -parent ${group_74}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_74_USER_VALUE" -parent ${group_74}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_74_PROT_VALUE" -parent ${group_74}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_74_CACHE_VALUE" -parent ${group_74}

  #Adding Group
  set group_75 [ipgui::add_group $IPINST -name "group 75" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_75}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_75_ENABLE_ID_PORTS" -parent ${group_75}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_75_ID_WIDTH" -parent ${group_75}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_75_DATA_WIDTH" -parent ${group_75} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_75_ENABLE_USER_PORTS" -parent ${group_75}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_75_AWUSER_WIDTH" -parent ${group_75}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_75_WUSER_WIDTH" -parent ${group_75}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_75_BUSER_WIDTH" -parent ${group_75}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_75_ARUSER_WIDTH" -parent ${group_75}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_75_RUSER_WIDTH" -parent ${group_75}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_75_USER_VALUE" -parent ${group_75}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_75_PROT_VALUE" -parent ${group_75}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_75_CACHE_VALUE" -parent ${group_75}

  #Adding Group
  set group_76 [ipgui::add_group $IPINST -name "group 76" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_76}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_76_ENABLE_ID_PORTS" -parent ${group_76}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_76_ID_WIDTH" -parent ${group_76}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_76_DATA_WIDTH" -parent ${group_76} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_76_ENABLE_USER_PORTS" -parent ${group_76}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_76_AWUSER_WIDTH" -parent ${group_76}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_76_WUSER_WIDTH" -parent ${group_76}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_76_BUSER_WIDTH" -parent ${group_76}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_76_ARUSER_WIDTH" -parent ${group_76}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_76_RUSER_WIDTH" -parent ${group_76}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_76_USER_VALUE" -parent ${group_76}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_76_PROT_VALUE" -parent ${group_76}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_76_CACHE_VALUE" -parent ${group_76}

  #Adding Group
  set group_77 [ipgui::add_group $IPINST -name "group 77" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_77}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_77_ENABLE_ID_PORTS" -parent ${group_77}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_77_ID_WIDTH" -parent ${group_77}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_77_DATA_WIDTH" -parent ${group_77} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_77_ENABLE_USER_PORTS" -parent ${group_77}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_77_AWUSER_WIDTH" -parent ${group_77}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_77_WUSER_WIDTH" -parent ${group_77}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_77_BUSER_WIDTH" -parent ${group_77}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_77_ARUSER_WIDTH" -parent ${group_77}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_77_RUSER_WIDTH" -parent ${group_77}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_77_USER_VALUE" -parent ${group_77}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_77_PROT_VALUE" -parent ${group_77}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_77_CACHE_VALUE" -parent ${group_77}

  #Adding Group
  set group_78 [ipgui::add_group $IPINST -name "group 78" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_78}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_78_ENABLE_ID_PORTS" -parent ${group_78}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_78_ID_WIDTH" -parent ${group_78}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_78_DATA_WIDTH" -parent ${group_78} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_78_ENABLE_USER_PORTS" -parent ${group_78}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_78_AWUSER_WIDTH" -parent ${group_78}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_78_WUSER_WIDTH" -parent ${group_78}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_78_BUSER_WIDTH" -parent ${group_78}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_78_ARUSER_WIDTH" -parent ${group_78}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_78_RUSER_WIDTH" -parent ${group_78}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_78_USER_VALUE" -parent ${group_78}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_78_PROT_VALUE" -parent ${group_78}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_78_CACHE_VALUE" -parent ${group_78}

  #Adding Group
  set group_79 [ipgui::add_group $IPINST -name "group 79" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_79}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_79_ENABLE_ID_PORTS" -parent ${group_79}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_79_ID_WIDTH" -parent ${group_79}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_79_DATA_WIDTH" -parent ${group_79} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_79_ENABLE_USER_PORTS" -parent ${group_79}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_79_AWUSER_WIDTH" -parent ${group_79}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_79_WUSER_WIDTH" -parent ${group_79}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_79_BUSER_WIDTH" -parent ${group_79}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_79_ARUSER_WIDTH" -parent ${group_79}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_79_RUSER_WIDTH" -parent ${group_79}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_79_USER_VALUE" -parent ${group_79}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_79_PROT_VALUE" -parent ${group_79}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_79_CACHE_VALUE" -parent ${group_79}

  #Adding Group
  set group_80 [ipgui::add_group $IPINST -name "group 80" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_80}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_80_ENABLE_ID_PORTS" -parent ${group_80}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_80_ID_WIDTH" -parent ${group_80}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_80_DATA_WIDTH" -parent ${group_80} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_80_ENABLE_USER_PORTS" -parent ${group_80}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_80_AWUSER_WIDTH" -parent ${group_80}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_80_WUSER_WIDTH" -parent ${group_80}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_80_BUSER_WIDTH" -parent ${group_80}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_80_ARUSER_WIDTH" -parent ${group_80}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_80_RUSER_WIDTH" -parent ${group_80}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_80_USER_VALUE" -parent ${group_80}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_80_PROT_VALUE" -parent ${group_80}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_80_CACHE_VALUE" -parent ${group_80}

  #Adding Group
  set group_81 [ipgui::add_group $IPINST -name "group 81" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_81}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_81_ENABLE_ID_PORTS" -parent ${group_81}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_81_ID_WIDTH" -parent ${group_81}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_81_DATA_WIDTH" -parent ${group_81} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_81_ENABLE_USER_PORTS" -parent ${group_81}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_81_AWUSER_WIDTH" -parent ${group_81}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_81_WUSER_WIDTH" -parent ${group_81}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_81_BUSER_WIDTH" -parent ${group_81}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_81_ARUSER_WIDTH" -parent ${group_81}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_81_RUSER_WIDTH" -parent ${group_81}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_81_USER_VALUE" -parent ${group_81}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_81_PROT_VALUE" -parent ${group_81}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_81_CACHE_VALUE" -parent ${group_81}

  #Adding Group
  set group_82 [ipgui::add_group $IPINST -name "group 82" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_82}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_82_ENABLE_ID_PORTS" -parent ${group_82}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_82_ID_WIDTH" -parent ${group_82}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_82_DATA_WIDTH" -parent ${group_82} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_82_ENABLE_USER_PORTS" -parent ${group_82}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_82_AWUSER_WIDTH" -parent ${group_82}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_82_WUSER_WIDTH" -parent ${group_82}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_82_BUSER_WIDTH" -parent ${group_82}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_82_ARUSER_WIDTH" -parent ${group_82}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_82_RUSER_WIDTH" -parent ${group_82}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_82_USER_VALUE" -parent ${group_82}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_82_PROT_VALUE" -parent ${group_82}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_82_CACHE_VALUE" -parent ${group_82}

  #Adding Group
  set group_83 [ipgui::add_group $IPINST -name "group 83" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_83}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_83_ENABLE_ID_PORTS" -parent ${group_83}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_83_ID_WIDTH" -parent ${group_83}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_83_DATA_WIDTH" -parent ${group_83} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_83_ENABLE_USER_PORTS" -parent ${group_83}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_83_AWUSER_WIDTH" -parent ${group_83}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_83_WUSER_WIDTH" -parent ${group_83}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_83_BUSER_WIDTH" -parent ${group_83}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_83_ARUSER_WIDTH" -parent ${group_83}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_83_RUSER_WIDTH" -parent ${group_83}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_83_USER_VALUE" -parent ${group_83}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_83_PROT_VALUE" -parent ${group_83}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_83_CACHE_VALUE" -parent ${group_83}

  #Adding Group
  set group_84 [ipgui::add_group $IPINST -name "group 84" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_84}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_84_ENABLE_ID_PORTS" -parent ${group_84}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_84_ID_WIDTH" -parent ${group_84}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_84_DATA_WIDTH" -parent ${group_84} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_84_ENABLE_USER_PORTS" -parent ${group_84}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_84_AWUSER_WIDTH" -parent ${group_84}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_84_WUSER_WIDTH" -parent ${group_84}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_84_BUSER_WIDTH" -parent ${group_84}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_84_ARUSER_WIDTH" -parent ${group_84}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_84_RUSER_WIDTH" -parent ${group_84}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_84_USER_VALUE" -parent ${group_84}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_84_PROT_VALUE" -parent ${group_84}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_84_CACHE_VALUE" -parent ${group_84}

  #Adding Group
  set group_85 [ipgui::add_group $IPINST -name "group 85" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_85}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_85_ENABLE_ID_PORTS" -parent ${group_85}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_85_ID_WIDTH" -parent ${group_85}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_85_DATA_WIDTH" -parent ${group_85} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_85_ENABLE_USER_PORTS" -parent ${group_85}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_85_AWUSER_WIDTH" -parent ${group_85}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_85_WUSER_WIDTH" -parent ${group_85}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_85_BUSER_WIDTH" -parent ${group_85}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_85_ARUSER_WIDTH" -parent ${group_85}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_85_RUSER_WIDTH" -parent ${group_85}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_85_USER_VALUE" -parent ${group_85}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_85_PROT_VALUE" -parent ${group_85}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_85_CACHE_VALUE" -parent ${group_85}

  #Adding Group
  set group_86 [ipgui::add_group $IPINST -name "group 86" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_86}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_86_ENABLE_ID_PORTS" -parent ${group_86}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_86_ID_WIDTH" -parent ${group_86}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_86_DATA_WIDTH" -parent ${group_86} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_86_ENABLE_USER_PORTS" -parent ${group_86}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_86_AWUSER_WIDTH" -parent ${group_86}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_86_WUSER_WIDTH" -parent ${group_86}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_86_BUSER_WIDTH" -parent ${group_86}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_86_ARUSER_WIDTH" -parent ${group_86}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_86_RUSER_WIDTH" -parent ${group_86}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_86_USER_VALUE" -parent ${group_86}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_86_PROT_VALUE" -parent ${group_86}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_86_CACHE_VALUE" -parent ${group_86}

  #Adding Group
  set group_87 [ipgui::add_group $IPINST -name "group 87" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_87}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_87_ENABLE_ID_PORTS" -parent ${group_87}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_87_ID_WIDTH" -parent ${group_87}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_87_DATA_WIDTH" -parent ${group_87} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_87_ENABLE_USER_PORTS" -parent ${group_87}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_87_AWUSER_WIDTH" -parent ${group_87}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_87_WUSER_WIDTH" -parent ${group_87}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_87_BUSER_WIDTH" -parent ${group_87}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_87_ARUSER_WIDTH" -parent ${group_87}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_87_RUSER_WIDTH" -parent ${group_87}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_87_USER_VALUE" -parent ${group_87}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_87_PROT_VALUE" -parent ${group_87}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_87_CACHE_VALUE" -parent ${group_87}

  #Adding Group
  set group_88 [ipgui::add_group $IPINST -name "group 88" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_88}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_88_ENABLE_ID_PORTS" -parent ${group_88}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_88_ID_WIDTH" -parent ${group_88}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_88_DATA_WIDTH" -parent ${group_88} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_88_ENABLE_USER_PORTS" -parent ${group_88}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_88_AWUSER_WIDTH" -parent ${group_88}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_88_WUSER_WIDTH" -parent ${group_88}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_88_BUSER_WIDTH" -parent ${group_88}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_88_ARUSER_WIDTH" -parent ${group_88}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_88_RUSER_WIDTH" -parent ${group_88}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_88_USER_VALUE" -parent ${group_88}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_88_PROT_VALUE" -parent ${group_88}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_88_CACHE_VALUE" -parent ${group_88}

  #Adding Group
  set group_89 [ipgui::add_group $IPINST -name "group 89" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_89}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_89_ENABLE_ID_PORTS" -parent ${group_89}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_89_ID_WIDTH" -parent ${group_89}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_89_DATA_WIDTH" -parent ${group_89} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_89_ENABLE_USER_PORTS" -parent ${group_89}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_89_AWUSER_WIDTH" -parent ${group_89}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_89_WUSER_WIDTH" -parent ${group_89}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_89_BUSER_WIDTH" -parent ${group_89}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_89_ARUSER_WIDTH" -parent ${group_89}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_89_RUSER_WIDTH" -parent ${group_89}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_89_USER_VALUE" -parent ${group_89}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_89_PROT_VALUE" -parent ${group_89}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_89_CACHE_VALUE" -parent ${group_89}

  #Adding Group
  set group_90 [ipgui::add_group $IPINST -name "group 90" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_90}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_90_ENABLE_ID_PORTS" -parent ${group_90}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_90_ID_WIDTH" -parent ${group_90}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_90_DATA_WIDTH" -parent ${group_90} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_90_ENABLE_USER_PORTS" -parent ${group_90}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_90_AWUSER_WIDTH" -parent ${group_90}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_90_WUSER_WIDTH" -parent ${group_90}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_90_BUSER_WIDTH" -parent ${group_90}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_90_ARUSER_WIDTH" -parent ${group_90}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_90_RUSER_WIDTH" -parent ${group_90}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_90_USER_VALUE" -parent ${group_90}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_90_PROT_VALUE" -parent ${group_90}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_90_CACHE_VALUE" -parent ${group_90}

  #Adding Group
  set group_91 [ipgui::add_group $IPINST -name "group 91" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_91}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_91_ENABLE_ID_PORTS" -parent ${group_91}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_91_ID_WIDTH" -parent ${group_91}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_91_DATA_WIDTH" -parent ${group_91} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_91_ENABLE_USER_PORTS" -parent ${group_91}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_91_AWUSER_WIDTH" -parent ${group_91}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_91_WUSER_WIDTH" -parent ${group_91}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_91_BUSER_WIDTH" -parent ${group_91}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_91_ARUSER_WIDTH" -parent ${group_91}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_91_RUSER_WIDTH" -parent ${group_91}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_91_USER_VALUE" -parent ${group_91}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_91_PROT_VALUE" -parent ${group_91}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_91_CACHE_VALUE" -parent ${group_91}

  #Adding Group
  set group_92 [ipgui::add_group $IPINST -name "group 92" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_92}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_92_ENABLE_ID_PORTS" -parent ${group_92}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_92_ID_WIDTH" -parent ${group_92}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_92_DATA_WIDTH" -parent ${group_92} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_92_ENABLE_USER_PORTS" -parent ${group_92}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_92_AWUSER_WIDTH" -parent ${group_92}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_92_WUSER_WIDTH" -parent ${group_92}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_92_BUSER_WIDTH" -parent ${group_92}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_92_ARUSER_WIDTH" -parent ${group_92}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_92_RUSER_WIDTH" -parent ${group_92}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_92_USER_VALUE" -parent ${group_92}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_92_PROT_VALUE" -parent ${group_92}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_92_CACHE_VALUE" -parent ${group_92}

  #Adding Group
  set group_93 [ipgui::add_group $IPINST -name "group 93" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_93}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_93_ENABLE_ID_PORTS" -parent ${group_93}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_93_ID_WIDTH" -parent ${group_93}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_93_DATA_WIDTH" -parent ${group_93} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_93_ENABLE_USER_PORTS" -parent ${group_93}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_93_AWUSER_WIDTH" -parent ${group_93}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_93_WUSER_WIDTH" -parent ${group_93}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_93_BUSER_WIDTH" -parent ${group_93}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_93_ARUSER_WIDTH" -parent ${group_93}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_93_RUSER_WIDTH" -parent ${group_93}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_93_USER_VALUE" -parent ${group_93}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_93_PROT_VALUE" -parent ${group_93}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_93_CACHE_VALUE" -parent ${group_93}

  #Adding Group
  set group_94 [ipgui::add_group $IPINST -name "group 94" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_94}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_94_ENABLE_ID_PORTS" -parent ${group_94}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_94_ID_WIDTH" -parent ${group_94}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_94_DATA_WIDTH" -parent ${group_94} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_94_ENABLE_USER_PORTS" -parent ${group_94}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_94_AWUSER_WIDTH" -parent ${group_94}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_94_WUSER_WIDTH" -parent ${group_94}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_94_BUSER_WIDTH" -parent ${group_94}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_94_ARUSER_WIDTH" -parent ${group_94}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_94_RUSER_WIDTH" -parent ${group_94}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_94_USER_VALUE" -parent ${group_94}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_94_PROT_VALUE" -parent ${group_94}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_94_CACHE_VALUE" -parent ${group_94}

  #Adding Group
  set group_95 [ipgui::add_group $IPINST -name "group 95" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_95}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_95_ENABLE_ID_PORTS" -parent ${group_95}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_95_ID_WIDTH" -parent ${group_95}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_95_DATA_WIDTH" -parent ${group_95} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_95_ENABLE_USER_PORTS" -parent ${group_95}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_95_AWUSER_WIDTH" -parent ${group_95}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_95_WUSER_WIDTH" -parent ${group_95}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_95_BUSER_WIDTH" -parent ${group_95}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_95_ARUSER_WIDTH" -parent ${group_95}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_95_RUSER_WIDTH" -parent ${group_95}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_95_USER_VALUE" -parent ${group_95}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_95_PROT_VALUE" -parent ${group_95}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_95_CACHE_VALUE" -parent ${group_95}

  #Adding Group
  set group_96 [ipgui::add_group $IPINST -name "group 96" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_96}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_96_ENABLE_ID_PORTS" -parent ${group_96}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_96_ID_WIDTH" -parent ${group_96}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_96_DATA_WIDTH" -parent ${group_96} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_96_ENABLE_USER_PORTS" -parent ${group_96}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_96_AWUSER_WIDTH" -parent ${group_96}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_96_WUSER_WIDTH" -parent ${group_96}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_96_BUSER_WIDTH" -parent ${group_96}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_96_ARUSER_WIDTH" -parent ${group_96}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_96_RUSER_WIDTH" -parent ${group_96}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_96_USER_VALUE" -parent ${group_96}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_96_PROT_VALUE" -parent ${group_96}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_96_CACHE_VALUE" -parent ${group_96}

  #Adding Group
  set group_97 [ipgui::add_group $IPINST -name "group 97" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_97}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_97_ENABLE_ID_PORTS" -parent ${group_97}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_97_ID_WIDTH" -parent ${group_97}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_97_DATA_WIDTH" -parent ${group_97} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_97_ENABLE_USER_PORTS" -parent ${group_97}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_97_AWUSER_WIDTH" -parent ${group_97}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_97_WUSER_WIDTH" -parent ${group_97}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_97_BUSER_WIDTH" -parent ${group_97}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_97_ARUSER_WIDTH" -parent ${group_97}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_97_RUSER_WIDTH" -parent ${group_97}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_97_USER_VALUE" -parent ${group_97}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_97_PROT_VALUE" -parent ${group_97}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_97_CACHE_VALUE" -parent ${group_97}

  #Adding Group
  set group_98 [ipgui::add_group $IPINST -name "group 98" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_98}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_98_ENABLE_ID_PORTS" -parent ${group_98}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_98_ID_WIDTH" -parent ${group_98}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_98_DATA_WIDTH" -parent ${group_98} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_98_ENABLE_USER_PORTS" -parent ${group_98}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_98_AWUSER_WIDTH" -parent ${group_98}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_98_WUSER_WIDTH" -parent ${group_98}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_98_BUSER_WIDTH" -parent ${group_98}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_98_ARUSER_WIDTH" -parent ${group_98}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_98_RUSER_WIDTH" -parent ${group_98}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_98_USER_VALUE" -parent ${group_98}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_98_PROT_VALUE" -parent ${group_98}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_98_CACHE_VALUE" -parent ${group_98}

  #Adding Group
  set group_99 [ipgui::add_group $IPINST -name "group 99" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_gmem_99}]
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_99_ENABLE_ID_PORTS" -parent ${group_99}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_99_ID_WIDTH" -parent ${group_99}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_99_DATA_WIDTH" -parent ${group_99} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_99_ENABLE_USER_PORTS" -parent ${group_99}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_99_AWUSER_WIDTH" -parent ${group_99}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_99_WUSER_WIDTH" -parent ${group_99}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_99_BUSER_WIDTH" -parent ${group_99}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_99_ARUSER_WIDTH" -parent ${group_99}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_99_RUSER_WIDTH" -parent ${group_99}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_99_USER_VALUE" -parent ${group_99}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_99_PROT_VALUE" -parent ${group_99}
  ipgui::add_param $IPINST -name "C_M_AXI_GMEM_99_CACHE_VALUE" -parent ${group_99}



}

proc update_PARAM_VALUE.C_M_AXI_GMEM_0_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_0_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_0_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_0_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_0_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_0_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_0_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_0_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_0_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_0_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_0_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_0_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_0_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_0_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_0_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_0_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_0_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_0_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_0_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_0_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_0_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_0_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_0_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_0_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_0_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_0_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_0_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_0_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_0_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_0_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_0_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_0_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_0_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_0_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_0_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_0_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_0_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_0_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_0_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_0_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_0_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_0_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_0_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_0_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_0_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_0_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_0_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_0_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_0_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_0_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_0_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_0_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_0_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_0_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_0_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_0_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_0_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_0_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_0_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_0_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_0_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_0_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_0_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_0_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_0_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_0_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_0_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_0_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_0_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_0_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_0_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_0_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_1_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_1_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_1_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_1_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_1_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_1_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_1_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_1_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_1_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_1_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_1_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_1_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_1_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_1_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_1_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_1_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_1_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_1_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_1_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_1_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_1_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_1_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_1_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_1_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_1_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_1_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_1_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_1_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_1_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_1_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_1_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_1_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_1_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_1_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_1_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_1_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_1_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_1_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_1_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_1_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_1_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_1_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_1_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_1_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_1_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_1_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_1_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_1_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_1_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_1_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_1_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_1_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_1_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_1_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_1_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_1_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_1_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_1_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_2_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_2_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_2_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_2_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_2_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_2_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_2_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_2_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_2_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_2_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_2_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_2_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_2_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_2_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_2_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_2_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_2_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_2_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_2_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_2_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_2_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_2_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_2_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_2_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_2_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_2_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_2_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_2_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_2_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_2_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_2_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_2_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_2_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_2_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_2_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_2_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_2_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_2_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_2_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_2_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_2_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_2_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_2_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_2_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_2_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_2_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_2_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_2_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_2_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_2_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_2_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_2_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_2_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_2_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_2_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_2_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_2_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_2_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_3_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_3_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_3_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_3_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_3_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_3_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_3_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_3_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_3_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_3_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_3_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_3_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_3_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_3_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_3_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_3_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_3_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_3_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_3_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_3_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_3_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_3_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_3_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_3_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_3_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_3_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_3_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_3_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_3_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_3_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_3_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_3_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_3_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_3_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_3_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_3_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_3_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_3_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_3_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_3_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_3_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_3_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_3_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_3_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_3_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_3_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_3_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_3_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_3_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_3_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_3_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_3_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_3_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_3_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_3_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_3_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_3_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_3_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_3_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_3_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_3_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_3_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_3_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_3_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_3_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_3_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_3_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_3_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_3_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_3_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_3_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_3_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_4_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_4_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_4_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_4_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_4_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_4_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_4_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_4_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_4_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_4_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_4_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_4_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_4_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_4_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_4_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_4_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_4_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_4_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_4_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_4_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_4_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_4_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_4_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_4_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_4_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_4_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_4_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_4_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_4_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_4_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_4_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_4_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_4_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_4_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_4_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_4_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_4_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_4_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_4_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_4_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_4_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_4_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_4_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_4_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_4_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_4_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_4_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_4_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_4_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_4_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_4_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_4_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_4_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_4_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_4_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_4_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_4_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_4_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_4_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_4_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_4_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_4_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_4_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_4_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_4_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_4_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_4_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_4_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_4_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_4_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_4_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_4_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_5_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_5_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_5_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_5_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_5_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_5_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_5_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_5_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_5_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_5_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_5_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_5_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_5_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_5_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_5_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_5_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_5_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_5_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_5_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_5_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_5_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_5_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_5_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_5_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_5_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_5_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_5_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_5_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_5_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_5_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_5_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_5_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_5_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_5_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_5_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_5_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_5_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_5_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_5_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_5_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_5_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_5_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_5_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_5_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_5_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_5_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_5_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_5_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_5_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_5_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_5_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_5_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_5_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_5_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_5_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_5_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_5_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_5_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_5_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_5_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_5_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_5_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_5_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_5_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_5_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_5_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_5_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_5_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_5_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_5_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_5_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_5_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_6_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_6_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_6_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_6_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_6_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_6_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_6_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_6_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_6_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_6_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_6_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_6_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_6_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_6_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_6_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_6_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_6_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_6_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_6_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_6_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_6_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_6_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_6_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_6_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_6_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_6_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_6_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_6_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_6_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_6_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_6_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_6_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_6_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_6_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_6_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_6_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_6_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_6_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_6_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_6_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_6_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_6_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_6_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_6_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_6_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_6_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_6_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_6_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_6_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_6_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_6_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_6_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_6_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_6_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_6_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_6_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_6_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_6_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_6_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_6_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_6_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_6_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_6_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_6_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_6_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_6_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_6_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_6_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_6_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_6_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_6_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_6_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_7_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_7_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_7_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_7_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_7_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_7_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_7_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_7_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_7_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_7_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_7_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_7_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_7_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_7_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_7_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_7_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_7_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_7_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_7_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_7_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_7_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_7_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_7_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_7_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_7_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_7_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_7_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_7_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_7_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_7_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_7_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_7_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_7_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_7_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_7_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_7_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_7_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_7_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_7_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_7_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_7_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_7_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_7_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_7_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_7_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_7_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_7_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_7_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_7_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_7_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_7_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_7_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_7_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_7_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_7_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_7_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_7_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_7_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_7_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_7_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_7_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_7_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_7_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_7_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_7_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_7_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_7_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_7_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_7_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_7_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_7_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_7_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_8_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_8_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_8_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_8_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_8_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_8_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_8_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_8_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_8_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_8_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_8_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_8_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_8_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_8_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_8_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_8_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_8_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_8_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_8_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_8_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_8_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_8_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_8_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_8_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_8_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_8_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_8_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_8_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_8_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_8_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_8_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_8_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_8_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_8_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_8_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_8_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_8_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_8_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_8_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_8_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_8_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_8_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_8_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_8_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_8_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_8_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_8_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_8_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_8_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_8_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_8_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_8_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_8_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_8_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_8_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_8_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_8_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_8_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_8_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_8_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_8_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_8_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_8_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_8_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_8_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_8_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_8_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_8_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_8_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_8_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_8_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_8_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_9_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_9_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_9_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_9_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_9_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_9_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_9_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_9_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_9_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_9_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_9_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_9_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_9_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_9_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_9_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_9_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_9_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_9_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_9_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_9_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_9_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_9_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_9_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_9_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_9_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_9_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_9_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_9_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_9_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_9_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_9_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_9_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_9_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_9_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_9_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_9_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_9_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_9_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_9_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_9_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_9_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_9_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_9_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_9_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_9_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_9_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_9_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_9_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_9_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_9_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_9_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_9_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_9_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_9_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_9_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_9_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_9_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_9_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_9_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_9_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_9_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_9_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_9_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_9_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_9_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_9_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_9_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_9_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_9_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_9_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_9_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_9_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_10_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_10_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_10_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_10_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_10_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_10_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_10_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_10_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_10_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_10_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_10_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_10_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_10_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_10_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_10_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_10_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_10_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_10_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_10_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_10_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_10_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_10_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_10_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_10_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_10_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_10_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_10_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_10_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_10_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_10_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_10_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_10_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_10_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_10_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_10_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_10_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_10_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_10_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_10_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_10_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_10_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_10_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_10_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_10_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_10_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_10_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_10_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_10_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_10_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_10_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_10_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_10_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_10_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_10_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_10_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_10_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_10_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_10_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_10_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_10_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_10_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_10_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_10_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_10_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_10_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_10_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_10_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_10_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_10_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_10_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_10_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_10_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_11_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_11_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_11_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_11_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_11_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_11_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_11_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_11_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_11_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_11_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_11_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_11_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_11_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_11_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_11_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_11_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_11_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_11_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_11_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_11_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_11_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_11_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_11_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_11_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_11_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_11_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_11_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_11_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_11_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_11_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_11_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_11_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_11_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_11_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_11_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_11_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_11_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_11_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_11_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_11_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_11_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_11_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_11_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_11_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_11_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_11_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_11_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_11_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_11_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_11_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_11_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_11_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_11_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_11_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_11_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_11_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_11_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_11_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_11_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_11_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_11_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_11_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_11_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_11_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_11_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_11_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_11_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_11_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_11_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_11_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_11_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_11_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_12_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_12_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_12_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_12_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_12_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_12_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_12_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_12_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_12_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_12_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_12_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_12_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_12_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_12_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_12_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_12_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_12_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_12_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_12_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_12_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_12_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_12_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_12_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_12_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_12_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_12_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_12_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_12_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_12_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_12_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_12_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_12_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_12_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_12_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_12_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_12_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_12_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_12_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_12_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_12_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_12_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_12_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_12_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_12_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_12_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_12_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_12_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_12_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_12_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_12_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_12_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_12_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_12_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_12_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_12_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_12_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_12_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_12_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_12_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_12_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_12_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_12_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_12_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_12_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_12_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_12_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_12_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_12_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_12_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_12_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_12_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_12_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_13_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_13_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_13_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_13_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_13_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_13_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_13_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_13_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_13_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_13_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_13_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_13_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_13_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_13_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_13_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_13_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_13_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_13_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_13_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_13_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_13_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_13_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_13_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_13_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_13_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_13_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_13_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_13_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_13_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_13_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_13_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_13_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_13_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_13_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_13_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_13_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_13_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_13_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_13_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_13_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_13_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_13_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_13_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_13_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_13_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_13_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_13_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_13_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_13_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_13_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_13_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_13_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_13_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_13_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_13_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_13_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_13_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_13_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_13_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_13_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_13_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_13_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_13_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_13_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_13_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_13_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_13_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_13_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_13_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_13_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_13_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_13_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_14_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_14_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_14_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_14_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_14_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_14_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_14_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_14_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_14_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_14_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_14_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_14_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_14_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_14_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_14_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_14_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_14_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_14_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_14_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_14_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_14_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_14_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_14_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_14_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_14_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_14_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_14_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_14_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_14_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_14_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_14_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_14_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_14_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_14_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_14_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_14_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_14_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_14_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_14_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_14_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_14_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_14_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_14_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_14_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_14_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_14_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_14_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_14_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_14_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_14_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_14_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_14_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_14_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_14_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_14_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_14_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_14_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_14_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_14_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_14_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_14_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_14_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_14_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_14_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_14_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_14_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_14_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_14_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_14_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_14_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_14_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_14_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_15_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_15_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_15_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_15_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_15_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_15_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_15_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_15_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_15_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_15_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_15_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_15_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_15_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_15_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_15_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_15_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_15_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_15_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_15_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_15_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_15_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_15_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_15_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_15_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_15_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_15_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_15_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_15_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_15_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_15_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_15_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_15_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_15_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_15_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_15_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_15_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_15_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_15_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_15_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_15_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_15_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_15_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_15_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_15_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_15_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_15_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_15_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_15_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_15_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_15_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_15_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_15_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_15_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_15_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_15_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_15_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_15_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_15_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_15_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_15_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_15_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_15_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_15_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_15_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_15_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_15_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_15_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_15_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_15_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_15_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_15_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_15_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_16_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_16_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_16_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_16_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_16_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_16_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_16_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_16_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_16_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_16_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_16_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_16_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_16_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_16_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_16_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_16_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_16_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_16_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_16_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_16_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_16_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_16_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_16_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_16_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_16_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_16_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_16_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_16_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_16_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_16_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_16_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_16_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_16_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_16_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_16_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_16_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_16_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_16_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_16_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_16_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_16_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_16_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_16_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_16_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_16_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_16_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_16_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_16_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_16_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_16_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_16_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_16_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_16_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_16_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_16_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_16_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_16_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_16_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_16_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_16_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_16_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_16_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_16_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_16_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_16_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_16_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_16_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_16_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_16_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_16_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_16_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_16_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_17_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_17_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_17_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_17_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_17_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_17_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_17_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_17_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_17_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_17_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_17_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_17_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_17_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_17_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_17_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_17_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_17_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_17_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_17_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_17_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_17_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_17_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_17_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_17_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_17_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_17_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_17_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_17_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_17_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_17_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_17_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_17_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_17_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_17_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_17_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_17_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_17_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_17_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_17_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_17_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_17_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_17_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_17_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_17_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_17_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_17_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_17_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_17_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_17_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_17_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_17_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_17_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_17_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_17_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_17_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_17_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_17_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_17_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_17_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_17_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_17_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_17_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_17_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_17_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_17_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_17_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_17_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_17_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_17_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_17_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_17_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_17_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_18_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_18_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_18_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_18_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_18_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_18_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_18_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_18_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_18_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_18_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_18_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_18_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_18_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_18_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_18_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_18_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_18_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_18_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_18_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_18_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_18_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_18_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_18_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_18_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_18_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_18_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_18_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_18_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_18_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_18_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_18_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_18_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_18_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_18_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_18_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_18_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_18_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_18_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_18_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_18_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_18_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_18_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_18_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_18_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_18_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_18_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_18_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_18_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_18_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_18_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_18_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_18_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_18_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_18_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_18_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_18_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_18_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_18_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_18_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_18_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_18_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_18_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_18_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_18_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_18_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_18_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_18_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_18_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_18_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_18_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_18_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_18_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_19_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_19_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_19_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_19_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_19_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_19_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_19_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_19_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_19_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_19_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_19_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_19_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_19_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_19_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_19_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_19_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_19_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_19_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_19_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_19_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_19_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_19_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_19_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_19_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_19_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_19_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_19_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_19_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_19_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_19_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_19_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_19_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_19_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_19_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_19_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_19_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_19_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_19_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_19_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_19_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_19_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_19_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_19_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_19_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_19_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_19_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_19_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_19_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_19_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_19_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_19_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_19_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_19_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_19_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_19_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_19_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_19_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_19_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_19_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_19_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_19_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_19_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_19_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_19_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_19_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_19_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_19_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_19_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_19_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_19_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_19_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_19_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_20_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_20_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_20_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_20_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_20_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_20_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_20_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_20_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_20_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_20_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_20_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_20_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_20_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_20_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_20_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_20_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_20_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_20_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_20_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_20_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_20_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_20_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_20_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_20_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_20_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_20_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_20_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_20_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_20_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_20_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_20_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_20_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_20_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_20_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_20_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_20_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_20_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_20_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_20_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_20_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_20_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_20_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_20_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_20_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_20_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_20_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_20_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_20_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_20_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_20_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_20_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_20_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_20_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_20_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_20_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_20_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_20_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_20_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_20_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_20_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_20_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_20_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_20_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_20_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_20_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_20_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_20_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_20_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_20_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_20_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_20_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_20_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_21_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_21_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_21_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_21_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_21_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_21_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_21_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_21_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_21_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_21_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_21_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_21_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_21_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_21_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_21_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_21_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_21_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_21_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_21_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_21_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_21_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_21_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_21_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_21_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_21_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_21_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_21_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_21_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_21_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_21_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_21_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_21_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_21_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_21_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_21_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_21_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_21_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_21_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_21_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_21_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_21_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_21_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_21_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_21_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_21_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_21_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_21_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_21_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_21_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_21_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_21_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_21_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_21_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_21_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_21_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_21_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_21_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_21_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_21_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_21_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_21_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_21_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_21_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_21_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_21_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_21_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_21_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_21_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_21_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_21_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_21_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_21_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_22_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_22_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_22_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_22_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_22_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_22_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_22_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_22_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_22_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_22_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_22_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_22_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_22_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_22_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_22_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_22_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_22_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_22_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_22_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_22_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_22_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_22_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_22_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_22_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_22_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_22_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_22_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_22_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_22_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_22_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_22_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_22_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_22_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_22_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_22_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_22_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_22_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_22_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_22_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_22_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_22_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_22_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_22_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_22_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_22_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_22_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_22_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_22_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_22_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_22_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_22_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_22_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_22_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_22_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_22_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_22_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_22_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_22_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_22_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_22_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_22_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_22_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_22_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_22_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_22_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_22_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_22_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_22_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_22_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_22_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_22_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_22_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_23_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_23_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_23_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_23_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_23_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_23_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_23_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_23_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_23_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_23_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_23_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_23_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_23_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_23_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_23_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_23_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_23_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_23_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_23_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_23_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_23_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_23_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_23_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_23_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_23_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_23_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_23_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_23_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_23_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_23_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_23_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_23_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_23_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_23_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_23_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_23_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_23_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_23_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_23_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_23_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_23_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_23_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_23_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_23_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_23_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_23_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_23_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_23_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_23_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_23_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_23_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_23_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_23_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_23_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_23_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_23_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_23_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_23_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_23_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_23_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_23_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_23_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_23_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_23_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_23_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_23_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_23_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_23_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_23_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_23_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_23_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_23_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_24_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_24_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_24_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_24_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_24_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_24_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_24_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_24_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_24_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_24_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_24_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_24_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_24_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_24_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_24_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_24_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_24_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_24_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_24_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_24_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_24_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_24_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_24_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_24_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_24_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_24_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_24_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_24_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_24_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_24_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_24_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_24_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_24_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_24_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_24_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_24_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_24_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_24_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_24_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_24_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_24_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_24_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_24_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_24_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_24_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_24_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_24_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_24_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_24_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_24_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_24_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_24_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_24_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_24_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_24_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_24_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_24_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_24_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_24_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_24_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_24_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_24_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_24_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_24_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_24_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_24_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_24_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_24_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_24_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_24_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_24_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_24_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_25_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_25_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_25_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_25_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_25_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_25_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_25_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_25_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_25_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_25_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_25_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_25_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_25_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_25_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_25_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_25_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_25_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_25_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_25_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_25_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_25_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_25_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_25_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_25_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_25_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_25_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_25_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_25_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_25_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_25_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_25_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_25_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_25_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_25_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_25_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_25_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_25_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_25_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_25_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_25_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_25_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_25_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_25_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_25_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_25_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_25_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_25_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_25_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_25_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_25_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_25_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_25_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_25_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_25_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_25_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_25_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_25_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_25_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_25_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_25_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_25_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_25_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_25_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_25_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_25_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_25_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_25_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_25_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_25_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_25_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_25_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_25_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_26_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_26_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_26_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_26_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_26_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_26_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_26_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_26_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_26_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_26_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_26_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_26_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_26_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_26_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_26_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_26_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_26_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_26_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_26_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_26_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_26_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_26_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_26_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_26_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_26_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_26_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_26_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_26_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_26_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_26_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_26_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_26_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_26_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_26_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_26_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_26_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_26_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_26_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_26_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_26_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_26_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_26_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_26_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_26_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_26_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_26_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_26_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_26_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_26_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_26_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_26_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_26_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_26_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_26_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_26_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_26_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_26_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_26_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_26_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_26_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_26_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_26_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_26_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_26_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_26_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_26_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_26_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_26_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_26_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_26_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_26_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_26_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_27_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_27_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_27_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_27_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_27_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_27_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_27_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_27_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_27_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_27_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_27_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_27_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_27_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_27_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_27_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_27_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_27_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_27_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_27_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_27_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_27_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_27_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_27_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_27_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_27_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_27_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_27_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_27_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_27_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_27_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_27_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_27_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_27_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_27_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_27_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_27_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_27_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_27_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_27_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_27_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_27_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_27_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_27_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_27_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_27_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_27_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_27_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_27_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_27_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_27_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_27_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_27_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_27_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_27_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_27_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_27_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_27_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_27_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_27_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_27_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_27_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_27_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_27_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_27_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_27_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_27_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_27_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_27_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_27_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_27_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_27_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_27_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_28_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_28_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_28_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_28_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_28_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_28_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_28_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_28_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_28_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_28_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_28_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_28_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_28_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_28_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_28_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_28_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_28_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_28_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_28_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_28_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_28_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_28_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_28_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_28_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_28_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_28_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_28_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_28_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_28_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_28_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_28_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_28_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_28_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_28_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_28_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_28_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_28_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_28_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_28_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_28_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_28_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_28_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_28_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_28_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_28_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_28_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_28_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_28_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_28_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_28_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_28_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_28_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_28_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_28_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_28_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_28_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_28_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_28_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_28_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_28_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_28_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_28_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_28_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_28_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_28_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_28_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_28_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_28_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_28_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_28_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_28_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_28_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_29_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_29_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_29_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_29_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_29_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_29_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_29_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_29_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_29_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_29_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_29_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_29_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_29_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_29_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_29_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_29_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_29_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_29_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_29_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_29_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_29_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_29_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_29_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_29_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_29_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_29_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_29_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_29_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_29_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_29_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_29_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_29_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_29_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_29_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_29_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_29_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_29_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_29_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_29_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_29_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_29_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_29_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_29_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_29_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_29_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_29_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_29_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_29_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_29_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_29_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_29_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_29_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_29_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_29_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_29_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_29_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_29_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_29_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_29_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_29_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_29_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_29_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_29_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_29_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_29_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_29_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_29_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_29_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_29_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_29_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_29_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_29_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_30_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_30_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_30_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_30_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_30_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_30_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_30_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_30_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_30_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_30_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_30_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_30_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_30_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_30_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_30_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_30_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_30_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_30_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_30_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_30_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_30_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_30_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_30_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_30_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_30_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_30_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_30_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_30_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_30_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_30_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_30_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_30_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_30_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_30_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_30_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_30_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_30_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_30_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_30_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_30_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_30_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_30_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_30_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_30_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_30_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_30_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_30_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_30_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_30_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_30_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_30_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_30_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_30_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_30_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_30_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_30_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_30_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_30_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_30_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_30_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_30_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_30_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_30_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_30_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_30_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_30_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_30_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_30_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_30_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_30_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_30_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_30_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_31_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_31_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_31_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_31_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_31_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_31_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_31_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_31_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_31_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_31_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_31_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_31_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_31_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_31_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_31_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_31_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_31_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_31_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_31_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_31_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_31_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_31_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_31_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_31_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_31_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_31_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_31_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_31_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_31_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_31_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_31_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_31_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_31_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_31_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_31_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_31_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_31_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_31_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_31_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_31_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_31_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_31_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_31_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_31_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_31_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_31_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_31_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_31_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_31_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_31_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_31_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_31_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_31_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_31_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_31_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_31_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_31_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_31_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_31_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_31_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_31_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_31_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_31_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_31_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_31_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_31_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_31_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_31_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_31_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_31_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_31_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_31_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_32_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_32_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_32_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_32_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_32_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_32_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_32_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_32_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_32_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_32_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_32_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_32_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_32_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_32_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_32_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_32_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_32_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_32_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_32_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_32_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_32_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_32_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_32_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_32_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_32_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_32_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_32_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_32_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_32_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_32_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_32_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_32_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_32_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_32_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_32_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_32_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_32_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_32_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_32_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_32_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_32_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_32_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_32_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_32_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_32_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_32_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_32_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_32_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_32_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_32_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_32_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_32_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_32_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_32_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_32_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_32_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_32_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_32_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_32_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_32_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_32_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_32_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_32_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_32_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_32_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_32_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_32_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_32_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_32_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_32_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_32_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_32_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_33_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_33_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_33_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_33_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_33_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_33_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_33_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_33_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_33_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_33_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_33_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_33_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_33_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_33_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_33_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_33_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_33_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_33_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_33_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_33_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_33_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_33_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_33_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_33_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_33_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_33_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_33_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_33_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_33_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_33_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_33_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_33_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_33_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_33_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_33_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_33_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_33_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_33_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_33_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_33_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_33_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_33_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_33_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_33_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_33_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_33_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_33_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_33_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_33_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_33_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_33_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_33_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_33_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_33_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_33_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_33_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_33_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_33_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_33_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_33_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_33_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_33_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_33_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_33_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_33_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_33_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_33_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_33_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_33_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_33_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_33_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_33_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_34_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_34_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_34_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_34_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_34_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_34_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_34_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_34_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_34_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_34_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_34_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_34_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_34_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_34_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_34_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_34_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_34_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_34_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_34_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_34_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_34_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_34_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_34_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_34_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_34_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_34_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_34_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_34_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_34_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_34_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_34_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_34_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_34_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_34_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_34_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_34_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_34_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_34_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_34_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_34_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_34_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_34_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_34_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_34_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_34_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_34_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_34_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_34_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_34_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_34_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_34_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_34_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_34_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_34_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_34_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_34_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_34_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_34_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_34_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_34_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_34_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_34_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_34_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_34_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_34_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_34_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_34_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_34_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_34_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_34_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_34_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_34_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_35_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_35_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_35_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_35_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_35_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_35_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_35_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_35_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_35_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_35_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_35_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_35_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_35_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_35_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_35_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_35_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_35_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_35_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_35_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_35_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_35_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_35_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_35_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_35_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_35_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_35_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_35_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_35_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_35_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_35_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_35_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_35_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_35_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_35_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_35_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_35_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_35_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_35_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_35_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_35_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_35_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_35_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_35_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_35_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_35_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_35_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_35_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_35_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_35_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_35_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_35_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_35_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_35_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_35_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_35_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_35_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_35_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_35_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_35_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_35_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_35_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_35_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_35_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_35_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_35_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_35_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_35_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_35_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_35_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_35_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_35_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_35_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_36_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_36_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_36_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_36_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_36_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_36_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_36_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_36_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_36_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_36_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_36_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_36_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_36_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_36_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_36_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_36_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_36_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_36_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_36_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_36_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_36_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_36_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_36_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_36_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_36_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_36_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_36_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_36_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_36_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_36_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_36_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_36_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_36_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_36_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_36_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_36_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_36_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_36_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_36_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_36_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_36_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_36_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_36_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_36_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_36_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_36_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_36_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_36_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_36_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_36_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_36_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_36_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_36_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_36_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_36_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_36_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_36_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_36_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_36_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_36_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_36_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_36_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_36_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_36_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_36_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_36_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_36_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_36_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_36_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_36_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_36_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_36_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_37_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_37_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_37_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_37_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_37_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_37_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_37_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_37_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_37_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_37_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_37_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_37_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_37_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_37_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_37_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_37_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_37_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_37_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_37_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_37_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_37_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_37_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_37_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_37_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_37_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_37_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_37_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_37_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_37_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_37_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_37_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_37_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_37_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_37_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_37_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_37_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_37_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_37_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_37_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_37_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_37_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_37_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_37_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_37_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_37_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_37_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_37_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_37_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_37_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_37_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_37_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_37_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_37_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_37_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_37_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_37_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_37_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_37_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_37_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_37_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_37_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_37_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_37_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_37_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_37_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_37_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_37_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_37_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_37_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_37_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_37_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_37_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_38_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_38_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_38_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_38_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_38_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_38_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_38_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_38_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_38_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_38_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_38_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_38_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_38_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_38_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_38_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_38_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_38_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_38_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_38_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_38_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_38_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_38_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_38_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_38_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_38_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_38_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_38_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_38_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_38_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_38_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_38_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_38_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_38_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_38_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_38_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_38_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_38_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_38_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_38_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_38_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_38_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_38_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_38_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_38_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_38_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_38_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_38_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_38_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_38_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_38_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_38_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_38_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_38_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_38_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_38_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_38_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_38_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_38_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_38_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_38_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_38_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_38_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_38_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_38_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_38_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_38_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_38_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_38_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_38_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_38_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_38_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_38_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_39_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_39_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_39_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_39_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_39_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_39_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_39_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_39_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_39_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_39_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_39_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_39_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_39_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_39_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_39_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_39_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_39_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_39_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_39_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_39_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_39_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_39_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_39_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_39_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_39_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_39_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_39_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_39_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_39_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_39_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_39_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_39_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_39_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_39_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_39_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_39_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_39_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_39_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_39_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_39_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_39_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_39_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_39_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_39_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_39_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_39_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_39_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_39_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_39_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_39_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_39_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_39_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_39_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_39_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_39_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_39_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_39_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_39_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_39_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_39_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_39_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_39_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_39_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_39_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_39_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_39_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_39_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_39_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_39_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_39_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_39_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_39_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_40_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_40_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_40_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_40_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_40_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_40_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_40_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_40_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_40_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_40_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_40_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_40_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_40_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_40_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_40_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_40_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_40_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_40_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_40_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_40_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_40_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_40_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_40_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_40_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_40_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_40_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_40_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_40_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_40_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_40_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_40_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_40_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_40_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_40_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_40_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_40_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_40_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_40_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_40_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_40_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_40_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_40_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_40_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_40_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_40_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_40_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_40_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_40_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_40_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_40_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_40_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_40_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_40_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_40_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_40_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_40_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_40_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_40_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_40_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_40_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_40_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_40_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_40_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_40_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_40_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_40_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_40_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_40_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_40_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_40_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_40_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_40_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_41_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_41_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_41_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_41_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_41_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_41_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_41_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_41_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_41_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_41_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_41_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_41_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_41_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_41_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_41_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_41_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_41_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_41_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_41_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_41_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_41_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_41_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_41_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_41_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_41_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_41_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_41_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_41_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_41_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_41_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_41_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_41_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_41_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_41_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_41_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_41_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_41_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_41_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_41_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_41_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_41_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_41_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_41_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_41_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_41_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_41_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_41_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_41_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_41_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_41_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_41_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_41_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_41_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_41_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_41_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_41_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_41_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_41_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_41_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_41_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_41_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_41_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_41_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_41_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_41_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_41_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_41_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_41_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_41_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_41_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_41_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_41_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_42_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_42_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_42_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_42_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_42_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_42_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_42_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_42_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_42_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_42_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_42_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_42_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_42_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_42_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_42_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_42_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_42_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_42_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_42_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_42_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_42_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_42_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_42_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_42_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_42_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_42_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_42_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_42_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_42_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_42_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_42_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_42_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_42_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_42_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_42_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_42_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_42_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_42_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_42_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_42_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_42_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_42_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_42_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_42_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_42_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_42_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_42_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_42_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_42_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_42_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_42_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_42_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_42_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_42_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_42_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_42_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_42_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_42_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_42_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_42_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_42_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_42_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_42_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_42_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_42_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_42_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_42_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_42_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_42_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_42_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_42_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_42_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_43_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_43_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_43_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_43_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_43_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_43_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_43_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_43_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_43_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_43_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_43_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_43_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_43_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_43_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_43_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_43_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_43_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_43_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_43_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_43_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_43_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_43_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_43_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_43_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_43_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_43_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_43_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_43_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_43_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_43_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_43_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_43_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_43_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_43_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_43_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_43_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_43_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_43_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_43_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_43_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_43_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_43_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_43_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_43_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_43_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_43_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_43_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_43_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_43_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_43_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_43_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_43_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_43_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_43_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_43_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_43_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_43_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_43_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_43_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_43_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_43_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_43_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_43_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_43_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_43_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_43_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_43_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_43_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_43_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_43_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_43_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_43_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_44_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_44_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_44_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_44_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_44_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_44_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_44_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_44_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_44_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_44_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_44_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_44_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_44_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_44_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_44_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_44_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_44_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_44_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_44_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_44_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_44_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_44_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_44_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_44_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_44_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_44_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_44_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_44_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_44_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_44_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_44_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_44_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_44_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_44_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_44_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_44_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_44_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_44_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_44_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_44_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_44_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_44_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_44_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_44_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_44_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_44_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_44_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_44_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_44_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_44_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_44_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_44_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_44_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_44_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_44_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_44_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_44_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_44_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_44_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_44_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_44_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_44_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_44_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_44_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_44_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_44_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_44_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_44_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_44_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_44_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_44_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_44_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_45_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_45_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_45_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_45_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_45_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_45_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_45_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_45_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_45_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_45_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_45_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_45_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_45_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_45_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_45_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_45_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_45_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_45_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_45_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_45_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_45_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_45_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_45_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_45_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_45_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_45_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_45_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_45_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_45_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_45_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_45_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_45_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_45_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_45_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_45_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_45_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_45_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_45_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_45_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_45_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_45_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_45_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_45_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_45_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_45_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_45_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_45_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_45_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_45_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_45_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_45_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_45_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_45_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_45_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_45_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_45_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_45_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_45_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_45_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_45_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_45_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_45_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_45_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_45_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_45_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_45_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_45_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_45_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_45_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_45_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_45_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_45_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_46_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_46_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_46_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_46_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_46_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_46_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_46_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_46_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_46_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_46_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_46_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_46_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_46_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_46_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_46_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_46_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_46_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_46_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_46_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_46_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_46_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_46_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_46_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_46_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_46_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_46_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_46_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_46_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_46_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_46_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_46_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_46_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_46_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_46_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_46_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_46_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_46_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_46_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_46_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_46_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_46_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_46_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_46_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_46_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_46_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_46_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_46_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_46_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_46_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_46_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_46_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_46_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_46_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_46_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_46_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_46_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_46_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_46_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_46_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_46_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_46_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_46_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_46_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_46_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_46_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_46_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_46_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_46_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_46_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_46_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_46_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_46_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_47_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_47_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_47_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_47_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_47_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_47_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_47_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_47_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_47_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_47_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_47_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_47_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_47_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_47_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_47_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_47_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_47_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_47_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_47_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_47_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_47_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_47_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_47_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_47_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_47_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_47_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_47_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_47_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_47_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_47_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_47_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_47_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_47_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_47_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_47_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_47_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_47_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_47_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_47_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_47_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_47_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_47_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_47_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_47_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_47_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_47_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_47_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_47_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_47_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_47_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_47_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_47_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_47_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_47_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_47_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_47_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_47_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_47_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_47_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_47_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_47_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_47_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_47_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_47_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_47_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_47_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_47_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_47_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_47_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_47_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_47_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_47_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_48_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_48_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_48_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_48_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_48_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_48_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_48_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_48_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_48_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_48_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_48_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_48_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_48_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_48_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_48_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_48_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_48_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_48_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_48_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_48_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_48_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_48_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_48_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_48_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_48_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_48_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_48_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_48_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_48_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_48_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_48_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_48_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_48_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_48_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_48_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_48_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_48_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_48_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_48_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_48_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_48_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_48_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_48_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_48_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_48_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_48_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_48_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_48_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_48_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_48_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_48_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_48_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_48_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_48_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_48_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_48_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_48_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_48_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_48_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_48_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_48_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_48_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_48_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_48_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_48_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_48_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_48_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_48_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_48_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_48_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_48_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_48_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_49_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_49_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_49_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_49_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_49_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_49_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_49_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_49_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_49_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_49_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_49_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_49_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_49_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_49_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_49_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_49_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_49_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_49_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_49_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_49_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_49_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_49_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_49_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_49_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_49_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_49_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_49_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_49_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_49_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_49_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_49_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_49_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_49_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_49_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_49_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_49_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_49_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_49_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_49_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_49_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_49_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_49_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_49_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_49_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_49_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_49_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_49_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_49_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_49_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_49_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_49_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_49_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_49_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_49_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_49_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_49_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_49_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_49_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_49_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_49_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_49_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_49_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_49_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_49_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_49_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_49_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_49_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_49_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_49_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_49_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_49_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_49_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_50_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_50_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_50_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_50_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_50_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_50_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_50_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_50_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_50_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_50_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_50_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_50_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_50_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_50_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_50_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_50_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_50_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_50_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_50_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_50_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_50_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_50_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_50_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_50_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_50_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_50_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_50_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_50_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_50_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_50_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_50_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_50_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_50_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_50_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_50_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_50_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_50_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_50_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_50_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_50_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_50_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_50_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_50_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_50_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_50_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_50_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_50_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_50_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_50_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_50_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_50_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_50_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_50_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_50_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_50_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_50_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_50_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_50_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_50_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_50_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_50_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_50_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_50_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_50_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_50_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_50_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_50_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_50_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_50_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_50_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_50_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_50_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_51_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_51_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_51_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_51_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_51_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_51_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_51_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_51_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_51_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_51_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_51_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_51_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_51_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_51_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_51_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_51_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_51_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_51_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_51_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_51_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_51_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_51_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_51_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_51_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_51_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_51_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_51_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_51_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_51_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_51_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_51_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_51_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_51_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_51_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_51_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_51_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_51_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_51_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_51_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_51_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_51_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_51_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_51_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_51_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_51_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_51_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_51_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_51_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_51_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_51_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_51_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_51_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_51_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_51_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_51_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_51_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_51_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_51_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_51_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_51_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_51_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_51_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_51_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_51_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_51_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_51_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_51_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_51_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_51_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_51_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_51_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_51_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_52_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_52_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_52_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_52_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_52_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_52_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_52_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_52_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_52_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_52_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_52_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_52_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_52_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_52_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_52_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_52_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_52_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_52_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_52_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_52_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_52_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_52_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_52_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_52_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_52_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_52_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_52_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_52_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_52_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_52_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_52_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_52_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_52_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_52_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_52_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_52_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_52_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_52_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_52_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_52_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_52_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_52_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_52_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_52_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_52_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_52_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_52_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_52_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_52_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_52_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_52_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_52_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_52_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_52_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_52_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_52_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_52_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_52_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_52_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_52_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_52_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_52_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_52_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_52_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_52_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_52_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_52_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_52_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_52_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_52_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_52_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_52_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_53_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_53_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_53_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_53_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_53_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_53_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_53_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_53_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_53_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_53_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_53_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_53_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_53_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_53_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_53_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_53_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_53_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_53_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_53_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_53_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_53_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_53_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_53_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_53_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_53_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_53_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_53_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_53_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_53_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_53_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_53_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_53_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_53_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_53_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_53_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_53_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_53_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_53_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_53_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_53_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_53_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_53_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_53_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_53_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_53_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_53_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_53_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_53_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_53_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_53_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_53_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_53_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_53_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_53_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_53_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_53_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_53_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_53_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_53_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_53_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_53_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_53_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_53_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_53_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_53_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_53_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_53_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_53_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_53_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_53_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_53_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_53_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_54_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_54_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_54_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_54_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_54_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_54_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_54_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_54_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_54_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_54_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_54_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_54_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_54_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_54_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_54_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_54_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_54_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_54_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_54_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_54_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_54_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_54_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_54_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_54_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_54_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_54_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_54_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_54_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_54_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_54_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_54_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_54_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_54_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_54_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_54_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_54_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_54_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_54_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_54_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_54_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_54_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_54_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_54_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_54_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_54_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_54_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_54_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_54_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_54_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_54_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_54_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_54_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_54_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_54_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_54_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_54_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_54_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_54_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_54_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_54_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_54_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_54_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_54_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_54_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_54_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_54_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_54_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_54_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_54_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_54_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_54_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_54_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_55_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_55_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_55_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_55_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_55_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_55_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_55_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_55_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_55_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_55_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_55_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_55_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_55_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_55_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_55_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_55_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_55_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_55_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_55_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_55_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_55_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_55_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_55_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_55_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_55_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_55_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_55_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_55_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_55_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_55_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_55_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_55_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_55_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_55_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_55_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_55_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_55_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_55_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_55_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_55_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_55_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_55_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_55_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_55_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_55_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_55_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_55_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_55_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_55_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_55_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_55_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_55_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_55_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_55_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_55_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_55_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_55_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_55_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_55_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_55_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_55_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_55_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_55_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_55_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_55_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_55_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_55_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_55_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_55_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_55_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_55_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_55_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_56_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_56_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_56_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_56_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_56_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_56_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_56_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_56_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_56_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_56_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_56_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_56_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_56_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_56_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_56_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_56_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_56_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_56_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_56_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_56_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_56_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_56_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_56_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_56_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_56_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_56_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_56_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_56_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_56_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_56_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_56_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_56_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_56_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_56_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_56_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_56_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_56_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_56_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_56_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_56_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_56_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_56_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_56_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_56_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_56_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_56_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_56_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_56_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_56_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_56_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_56_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_56_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_56_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_56_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_56_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_56_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_56_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_56_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_56_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_56_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_56_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_56_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_56_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_56_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_56_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_56_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_56_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_56_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_56_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_56_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_56_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_56_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_57_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_57_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_57_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_57_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_57_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_57_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_57_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_57_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_57_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_57_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_57_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_57_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_57_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_57_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_57_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_57_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_57_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_57_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_57_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_57_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_57_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_57_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_57_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_57_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_57_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_57_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_57_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_57_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_57_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_57_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_57_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_57_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_57_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_57_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_57_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_57_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_57_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_57_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_57_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_57_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_57_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_57_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_57_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_57_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_57_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_57_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_57_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_57_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_57_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_57_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_57_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_57_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_57_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_57_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_57_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_57_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_57_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_57_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_57_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_57_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_57_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_57_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_57_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_57_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_57_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_57_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_57_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_57_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_57_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_57_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_57_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_57_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_58_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_58_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_58_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_58_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_58_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_58_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_58_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_58_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_58_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_58_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_58_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_58_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_58_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_58_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_58_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_58_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_58_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_58_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_58_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_58_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_58_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_58_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_58_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_58_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_58_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_58_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_58_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_58_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_58_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_58_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_58_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_58_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_58_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_58_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_58_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_58_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_58_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_58_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_58_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_58_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_58_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_58_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_58_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_58_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_58_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_58_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_58_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_58_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_58_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_58_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_58_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_58_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_58_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_58_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_58_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_58_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_58_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_58_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_58_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_58_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_58_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_58_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_58_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_58_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_58_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_58_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_58_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_58_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_58_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_58_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_58_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_58_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_59_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_59_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_59_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_59_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_59_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_59_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_59_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_59_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_59_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_59_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_59_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_59_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_59_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_59_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_59_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_59_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_59_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_59_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_59_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_59_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_59_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_59_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_59_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_59_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_59_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_59_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_59_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_59_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_59_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_59_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_59_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_59_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_59_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_59_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_59_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_59_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_59_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_59_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_59_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_59_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_59_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_59_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_59_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_59_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_59_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_59_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_59_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_59_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_59_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_59_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_59_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_59_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_59_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_59_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_59_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_59_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_59_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_59_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_59_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_59_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_59_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_59_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_59_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_59_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_59_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_59_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_59_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_59_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_59_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_59_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_59_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_59_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_60_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_60_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_60_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_60_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_60_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_60_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_60_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_60_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_60_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_60_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_60_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_60_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_60_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_60_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_60_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_60_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_60_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_60_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_60_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_60_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_60_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_60_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_60_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_60_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_60_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_60_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_60_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_60_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_60_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_60_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_60_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_60_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_60_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_60_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_60_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_60_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_60_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_60_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_60_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_60_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_60_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_60_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_60_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_60_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_60_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_60_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_60_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_60_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_60_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_60_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_60_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_60_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_60_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_60_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_60_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_60_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_60_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_60_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_60_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_60_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_60_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_60_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_60_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_60_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_60_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_60_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_60_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_60_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_60_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_60_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_60_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_60_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_61_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_61_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_61_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_61_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_61_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_61_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_61_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_61_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_61_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_61_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_61_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_61_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_61_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_61_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_61_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_61_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_61_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_61_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_61_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_61_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_61_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_61_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_61_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_61_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_61_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_61_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_61_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_61_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_61_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_61_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_61_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_61_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_61_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_61_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_61_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_61_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_61_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_61_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_61_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_61_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_61_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_61_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_61_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_61_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_61_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_61_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_61_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_61_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_61_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_61_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_61_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_61_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_61_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_61_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_61_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_61_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_61_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_61_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_61_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_61_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_61_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_61_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_61_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_61_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_61_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_61_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_61_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_61_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_61_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_61_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_61_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_61_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_62_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_62_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_62_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_62_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_62_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_62_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_62_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_62_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_62_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_62_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_62_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_62_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_62_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_62_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_62_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_62_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_62_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_62_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_62_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_62_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_62_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_62_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_62_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_62_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_62_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_62_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_62_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_62_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_62_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_62_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_62_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_62_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_62_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_62_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_62_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_62_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_62_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_62_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_62_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_62_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_62_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_62_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_62_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_62_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_62_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_62_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_62_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_62_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_62_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_62_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_62_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_62_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_62_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_62_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_62_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_62_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_62_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_62_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_62_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_62_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_62_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_62_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_62_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_62_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_62_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_62_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_62_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_62_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_62_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_62_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_62_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_62_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_63_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_63_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_63_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_63_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_63_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_63_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_63_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_63_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_63_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_63_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_63_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_63_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_63_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_63_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_63_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_63_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_63_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_63_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_63_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_63_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_63_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_63_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_63_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_63_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_63_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_63_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_63_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_63_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_63_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_63_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_63_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_63_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_63_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_63_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_63_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_63_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_63_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_63_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_63_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_63_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_63_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_63_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_63_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_63_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_63_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_63_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_63_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_63_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_63_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_63_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_63_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_63_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_63_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_63_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_63_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_63_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_63_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_63_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_63_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_63_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_63_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_63_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_63_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_63_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_63_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_63_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_63_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_63_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_63_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_63_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_63_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_63_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_64_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_64_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_64_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_64_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_64_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_64_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_64_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_64_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_64_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_64_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_64_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_64_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_64_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_64_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_64_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_64_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_64_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_64_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_64_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_64_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_64_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_64_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_64_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_64_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_64_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_64_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_64_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_64_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_64_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_64_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_64_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_64_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_64_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_64_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_64_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_64_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_64_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_64_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_64_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_64_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_64_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_64_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_64_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_64_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_64_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_64_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_64_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_64_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_64_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_64_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_64_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_64_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_64_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_64_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_64_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_64_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_64_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_64_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_64_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_64_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_64_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_64_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_64_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_64_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_64_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_64_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_64_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_64_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_64_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_64_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_64_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_64_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_65_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_65_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_65_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_65_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_65_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_65_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_65_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_65_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_65_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_65_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_65_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_65_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_65_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_65_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_65_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_65_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_65_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_65_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_65_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_65_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_65_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_65_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_65_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_65_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_65_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_65_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_65_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_65_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_65_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_65_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_65_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_65_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_65_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_65_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_65_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_65_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_65_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_65_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_65_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_65_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_65_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_65_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_65_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_65_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_65_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_65_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_65_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_65_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_65_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_65_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_65_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_65_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_65_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_65_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_65_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_65_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_65_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_65_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_65_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_65_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_65_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_65_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_65_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_65_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_65_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_65_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_65_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_65_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_65_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_65_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_65_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_65_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_66_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_66_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_66_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_66_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_66_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_66_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_66_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_66_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_66_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_66_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_66_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_66_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_66_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_66_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_66_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_66_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_66_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_66_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_66_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_66_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_66_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_66_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_66_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_66_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_66_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_66_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_66_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_66_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_66_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_66_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_66_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_66_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_66_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_66_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_66_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_66_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_66_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_66_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_66_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_66_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_66_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_66_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_66_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_66_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_66_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_66_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_66_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_66_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_66_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_66_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_66_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_66_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_66_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_66_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_66_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_66_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_66_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_66_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_66_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_66_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_66_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_66_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_66_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_66_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_66_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_66_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_66_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_66_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_66_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_66_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_66_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_66_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_67_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_67_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_67_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_67_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_67_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_67_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_67_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_67_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_67_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_67_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_67_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_67_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_67_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_67_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_67_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_67_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_67_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_67_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_67_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_67_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_67_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_67_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_67_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_67_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_67_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_67_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_67_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_67_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_67_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_67_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_67_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_67_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_67_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_67_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_67_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_67_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_67_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_67_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_67_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_67_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_67_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_67_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_67_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_67_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_67_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_67_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_67_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_67_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_67_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_67_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_67_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_67_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_67_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_67_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_67_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_67_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_67_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_67_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_67_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_67_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_67_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_67_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_67_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_67_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_67_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_67_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_67_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_67_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_67_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_67_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_67_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_67_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_68_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_68_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_68_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_68_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_68_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_68_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_68_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_68_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_68_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_68_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_68_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_68_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_68_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_68_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_68_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_68_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_68_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_68_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_68_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_68_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_68_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_68_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_68_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_68_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_68_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_68_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_68_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_68_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_68_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_68_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_68_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_68_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_68_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_68_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_68_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_68_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_68_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_68_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_68_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_68_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_68_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_68_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_68_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_68_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_68_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_68_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_68_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_68_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_68_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_68_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_68_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_68_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_68_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_68_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_68_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_68_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_68_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_68_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_68_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_68_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_68_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_68_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_68_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_68_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_68_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_68_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_68_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_68_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_68_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_68_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_68_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_68_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_69_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_69_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_69_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_69_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_69_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_69_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_69_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_69_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_69_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_69_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_69_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_69_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_69_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_69_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_69_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_69_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_69_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_69_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_69_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_69_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_69_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_69_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_69_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_69_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_69_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_69_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_69_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_69_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_69_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_69_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_69_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_69_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_69_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_69_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_69_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_69_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_69_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_69_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_69_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_69_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_69_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_69_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_69_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_69_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_69_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_69_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_69_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_69_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_69_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_69_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_69_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_69_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_69_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_69_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_69_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_69_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_69_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_69_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_69_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_69_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_69_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_69_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_69_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_69_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_69_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_69_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_69_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_69_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_69_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_69_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_69_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_69_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_70_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_70_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_70_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_70_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_70_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_70_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_70_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_70_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_70_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_70_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_70_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_70_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_70_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_70_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_70_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_70_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_70_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_70_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_70_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_70_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_70_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_70_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_70_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_70_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_70_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_70_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_70_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_70_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_70_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_70_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_70_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_70_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_70_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_70_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_70_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_70_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_70_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_70_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_70_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_70_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_70_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_70_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_70_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_70_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_70_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_70_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_70_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_70_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_70_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_70_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_70_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_70_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_70_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_70_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_70_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_70_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_70_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_70_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_70_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_70_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_70_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_70_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_70_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_70_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_70_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_70_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_70_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_70_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_70_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_70_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_70_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_70_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_71_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_71_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_71_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_71_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_71_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_71_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_71_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_71_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_71_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_71_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_71_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_71_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_71_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_71_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_71_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_71_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_71_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_71_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_71_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_71_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_71_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_71_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_71_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_71_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_71_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_71_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_71_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_71_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_71_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_71_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_71_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_71_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_71_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_71_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_71_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_71_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_71_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_71_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_71_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_71_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_71_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_71_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_71_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_71_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_71_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_71_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_71_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_71_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_71_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_71_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_71_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_71_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_71_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_71_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_71_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_71_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_71_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_71_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_71_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_71_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_71_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_71_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_71_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_71_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_71_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_71_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_71_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_71_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_71_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_71_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_71_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_71_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_72_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_72_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_72_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_72_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_72_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_72_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_72_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_72_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_72_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_72_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_72_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_72_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_72_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_72_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_72_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_72_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_72_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_72_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_72_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_72_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_72_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_72_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_72_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_72_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_72_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_72_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_72_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_72_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_72_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_72_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_72_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_72_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_72_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_72_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_72_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_72_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_72_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_72_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_72_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_72_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_72_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_72_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_72_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_72_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_72_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_72_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_72_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_72_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_72_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_72_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_72_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_72_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_72_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_72_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_72_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_72_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_72_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_72_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_72_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_72_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_72_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_72_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_72_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_72_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_72_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_72_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_72_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_72_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_72_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_72_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_72_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_72_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_73_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_73_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_73_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_73_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_73_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_73_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_73_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_73_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_73_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_73_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_73_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_73_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_73_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_73_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_73_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_73_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_73_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_73_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_73_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_73_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_73_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_73_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_73_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_73_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_73_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_73_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_73_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_73_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_73_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_73_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_73_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_73_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_73_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_73_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_73_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_73_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_73_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_73_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_73_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_73_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_73_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_73_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_73_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_73_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_73_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_73_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_73_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_73_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_73_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_73_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_73_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_73_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_73_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_73_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_73_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_73_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_73_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_73_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_73_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_73_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_73_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_73_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_73_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_73_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_73_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_73_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_73_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_73_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_73_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_73_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_73_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_73_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_74_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_74_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_74_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_74_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_74_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_74_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_74_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_74_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_74_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_74_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_74_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_74_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_74_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_74_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_74_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_74_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_74_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_74_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_74_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_74_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_74_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_74_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_74_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_74_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_74_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_74_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_74_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_74_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_74_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_74_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_74_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_74_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_74_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_74_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_74_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_74_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_74_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_74_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_74_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_74_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_74_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_74_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_74_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_74_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_74_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_74_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_74_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_74_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_74_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_74_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_74_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_74_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_74_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_74_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_74_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_74_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_74_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_74_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_74_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_74_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_74_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_74_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_74_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_74_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_74_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_74_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_74_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_74_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_74_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_74_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_74_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_74_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_75_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_75_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_75_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_75_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_75_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_75_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_75_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_75_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_75_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_75_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_75_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_75_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_75_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_75_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_75_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_75_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_75_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_75_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_75_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_75_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_75_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_75_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_75_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_75_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_75_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_75_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_75_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_75_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_75_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_75_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_75_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_75_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_75_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_75_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_75_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_75_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_75_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_75_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_75_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_75_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_75_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_75_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_75_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_75_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_75_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_75_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_75_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_75_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_75_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_75_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_75_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_75_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_75_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_75_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_75_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_75_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_75_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_75_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_75_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_75_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_75_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_75_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_75_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_75_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_75_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_75_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_75_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_75_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_75_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_75_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_75_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_75_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_76_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_76_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_76_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_76_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_76_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_76_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_76_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_76_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_76_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_76_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_76_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_76_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_76_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_76_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_76_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_76_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_76_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_76_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_76_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_76_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_76_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_76_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_76_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_76_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_76_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_76_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_76_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_76_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_76_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_76_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_76_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_76_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_76_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_76_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_76_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_76_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_76_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_76_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_76_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_76_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_76_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_76_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_76_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_76_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_76_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_76_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_76_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_76_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_76_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_76_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_76_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_76_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_76_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_76_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_76_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_76_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_76_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_76_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_76_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_76_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_76_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_76_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_76_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_76_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_76_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_76_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_76_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_76_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_76_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_76_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_76_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_76_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_77_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_77_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_77_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_77_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_77_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_77_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_77_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_77_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_77_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_77_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_77_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_77_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_77_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_77_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_77_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_77_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_77_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_77_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_77_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_77_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_77_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_77_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_77_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_77_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_77_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_77_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_77_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_77_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_77_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_77_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_77_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_77_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_77_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_77_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_77_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_77_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_77_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_77_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_77_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_77_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_77_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_77_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_77_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_77_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_77_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_77_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_77_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_77_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_77_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_77_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_77_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_77_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_77_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_77_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_77_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_77_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_77_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_77_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_77_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_77_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_77_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_77_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_77_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_77_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_77_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_77_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_77_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_77_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_77_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_77_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_77_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_77_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_78_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_78_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_78_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_78_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_78_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_78_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_78_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_78_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_78_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_78_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_78_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_78_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_78_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_78_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_78_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_78_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_78_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_78_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_78_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_78_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_78_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_78_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_78_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_78_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_78_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_78_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_78_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_78_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_78_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_78_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_78_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_78_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_78_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_78_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_78_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_78_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_78_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_78_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_78_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_78_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_78_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_78_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_78_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_78_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_78_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_78_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_78_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_78_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_78_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_78_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_78_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_78_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_78_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_78_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_78_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_78_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_78_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_78_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_78_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_78_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_78_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_78_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_78_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_78_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_78_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_78_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_78_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_78_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_78_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_78_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_78_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_78_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_79_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_79_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_79_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_79_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_79_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_79_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_79_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_79_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_79_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_79_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_79_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_79_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_79_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_79_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_79_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_79_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_79_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_79_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_79_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_79_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_79_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_79_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_79_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_79_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_79_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_79_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_79_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_79_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_79_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_79_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_79_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_79_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_79_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_79_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_79_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_79_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_79_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_79_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_79_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_79_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_79_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_79_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_79_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_79_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_79_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_79_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_79_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_79_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_79_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_79_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_79_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_79_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_79_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_79_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_79_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_79_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_79_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_79_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_79_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_79_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_79_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_79_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_79_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_79_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_79_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_79_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_79_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_79_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_79_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_79_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_79_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_79_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_80_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_80_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_80_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_80_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_80_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_80_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_80_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_80_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_80_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_80_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_80_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_80_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_80_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_80_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_80_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_80_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_80_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_80_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_80_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_80_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_80_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_80_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_80_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_80_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_80_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_80_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_80_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_80_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_80_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_80_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_80_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_80_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_80_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_80_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_80_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_80_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_80_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_80_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_80_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_80_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_80_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_80_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_80_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_80_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_80_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_80_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_80_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_80_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_80_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_80_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_80_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_80_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_80_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_80_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_80_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_80_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_80_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_80_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_80_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_80_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_80_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_80_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_80_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_80_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_80_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_80_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_80_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_80_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_80_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_80_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_80_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_80_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_81_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_81_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_81_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_81_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_81_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_81_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_81_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_81_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_81_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_81_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_81_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_81_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_81_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_81_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_81_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_81_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_81_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_81_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_81_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_81_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_81_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_81_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_81_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_81_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_81_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_81_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_81_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_81_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_81_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_81_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_81_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_81_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_81_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_81_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_81_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_81_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_81_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_81_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_81_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_81_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_81_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_81_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_81_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_81_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_81_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_81_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_81_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_81_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_81_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_81_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_81_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_81_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_81_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_81_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_81_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_81_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_81_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_81_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_81_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_81_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_81_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_81_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_81_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_81_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_81_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_81_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_81_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_81_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_81_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_81_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_81_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_81_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_82_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_82_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_82_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_82_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_82_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_82_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_82_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_82_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_82_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_82_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_82_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_82_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_82_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_82_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_82_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_82_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_82_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_82_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_82_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_82_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_82_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_82_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_82_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_82_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_82_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_82_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_82_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_82_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_82_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_82_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_82_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_82_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_82_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_82_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_82_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_82_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_82_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_82_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_82_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_82_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_82_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_82_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_82_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_82_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_82_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_82_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_82_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_82_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_82_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_82_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_82_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_82_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_82_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_82_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_82_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_82_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_82_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_82_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_82_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_82_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_82_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_82_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_82_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_82_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_82_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_82_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_82_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_82_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_82_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_82_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_82_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_82_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_83_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_83_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_83_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_83_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_83_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_83_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_83_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_83_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_83_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_83_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_83_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_83_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_83_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_83_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_83_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_83_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_83_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_83_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_83_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_83_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_83_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_83_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_83_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_83_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_83_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_83_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_83_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_83_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_83_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_83_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_83_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_83_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_83_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_83_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_83_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_83_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_83_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_83_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_83_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_83_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_83_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_83_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_83_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_83_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_83_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_83_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_83_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_83_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_83_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_83_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_83_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_83_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_83_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_83_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_83_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_83_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_83_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_83_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_83_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_83_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_83_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_83_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_83_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_83_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_83_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_83_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_83_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_83_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_83_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_83_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_83_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_83_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_84_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_84_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_84_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_84_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_84_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_84_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_84_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_84_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_84_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_84_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_84_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_84_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_84_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_84_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_84_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_84_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_84_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_84_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_84_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_84_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_84_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_84_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_84_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_84_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_84_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_84_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_84_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_84_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_84_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_84_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_84_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_84_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_84_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_84_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_84_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_84_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_84_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_84_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_84_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_84_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_84_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_84_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_84_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_84_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_84_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_84_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_84_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_84_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_84_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_84_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_84_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_84_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_84_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_84_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_84_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_84_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_84_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_84_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_84_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_84_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_84_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_84_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_84_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_84_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_84_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_84_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_84_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_84_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_84_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_84_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_84_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_84_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_85_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_85_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_85_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_85_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_85_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_85_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_85_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_85_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_85_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_85_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_85_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_85_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_85_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_85_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_85_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_85_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_85_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_85_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_85_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_85_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_85_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_85_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_85_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_85_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_85_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_85_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_85_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_85_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_85_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_85_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_85_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_85_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_85_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_85_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_85_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_85_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_85_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_85_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_85_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_85_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_85_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_85_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_85_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_85_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_85_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_85_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_85_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_85_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_85_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_85_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_85_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_85_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_85_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_85_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_85_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_85_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_85_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_85_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_85_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_85_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_85_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_85_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_85_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_85_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_85_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_85_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_85_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_85_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_85_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_85_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_85_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_85_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_86_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_86_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_86_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_86_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_86_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_86_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_86_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_86_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_86_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_86_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_86_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_86_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_86_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_86_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_86_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_86_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_86_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_86_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_86_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_86_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_86_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_86_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_86_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_86_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_86_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_86_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_86_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_86_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_86_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_86_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_86_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_86_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_86_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_86_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_86_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_86_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_86_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_86_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_86_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_86_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_86_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_86_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_86_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_86_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_86_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_86_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_86_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_86_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_86_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_86_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_86_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_86_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_86_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_86_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_86_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_86_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_86_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_86_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_86_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_86_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_86_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_86_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_86_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_86_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_86_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_86_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_86_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_86_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_86_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_86_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_86_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_86_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_87_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_87_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_87_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_87_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_87_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_87_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_87_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_87_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_87_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_87_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_87_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_87_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_87_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_87_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_87_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_87_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_87_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_87_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_87_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_87_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_87_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_87_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_87_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_87_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_87_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_87_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_87_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_87_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_87_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_87_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_87_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_87_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_87_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_87_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_87_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_87_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_87_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_87_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_87_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_87_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_87_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_87_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_87_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_87_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_87_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_87_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_87_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_87_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_87_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_87_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_87_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_87_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_87_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_87_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_87_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_87_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_87_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_87_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_87_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_87_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_87_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_87_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_87_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_87_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_87_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_87_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_87_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_87_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_87_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_87_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_87_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_87_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_88_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_88_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_88_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_88_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_88_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_88_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_88_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_88_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_88_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_88_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_88_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_88_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_88_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_88_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_88_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_88_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_88_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_88_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_88_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_88_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_88_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_88_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_88_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_88_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_88_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_88_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_88_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_88_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_88_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_88_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_88_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_88_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_88_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_88_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_88_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_88_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_88_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_88_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_88_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_88_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_88_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_88_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_88_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_88_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_88_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_88_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_88_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_88_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_88_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_88_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_88_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_88_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_88_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_88_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_88_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_88_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_88_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_88_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_88_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_88_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_88_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_88_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_88_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_88_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_88_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_88_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_88_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_88_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_88_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_88_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_88_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_88_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_89_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_89_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_89_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_89_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_89_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_89_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_89_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_89_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_89_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_89_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_89_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_89_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_89_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_89_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_89_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_89_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_89_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_89_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_89_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_89_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_89_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_89_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_89_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_89_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_89_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_89_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_89_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_89_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_89_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_89_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_89_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_89_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_89_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_89_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_89_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_89_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_89_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_89_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_89_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_89_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_89_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_89_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_89_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_89_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_89_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_89_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_89_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_89_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_89_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_89_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_89_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_89_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_89_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_89_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_89_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_89_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_89_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_89_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_89_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_89_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_89_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_89_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_89_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_89_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_89_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_89_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_89_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_89_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_89_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_89_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_89_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_89_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_90_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_90_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_90_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_90_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_90_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_90_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_90_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_90_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_90_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_90_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_90_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_90_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_90_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_90_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_90_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_90_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_90_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_90_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_90_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_90_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_90_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_90_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_90_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_90_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_90_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_90_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_90_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_90_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_90_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_90_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_90_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_90_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_90_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_90_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_90_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_90_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_90_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_90_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_90_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_90_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_90_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_90_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_90_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_90_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_90_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_90_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_90_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_90_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_90_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_90_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_90_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_90_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_90_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_90_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_90_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_90_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_90_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_90_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_90_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_90_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_90_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_90_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_90_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_90_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_90_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_90_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_90_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_90_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_90_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_90_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_90_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_90_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_91_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_91_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_91_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_91_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_91_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_91_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_91_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_91_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_91_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_91_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_91_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_91_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_91_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_91_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_91_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_91_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_91_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_91_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_91_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_91_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_91_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_91_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_91_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_91_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_91_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_91_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_91_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_91_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_91_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_91_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_91_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_91_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_91_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_91_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_91_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_91_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_91_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_91_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_91_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_91_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_91_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_91_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_91_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_91_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_91_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_91_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_91_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_91_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_91_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_91_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_91_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_91_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_91_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_91_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_91_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_91_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_91_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_91_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_91_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_91_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_91_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_91_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_91_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_91_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_91_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_91_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_91_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_91_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_91_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_91_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_91_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_91_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_92_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_92_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_92_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_92_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_92_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_92_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_92_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_92_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_92_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_92_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_92_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_92_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_92_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_92_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_92_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_92_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_92_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_92_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_92_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_92_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_92_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_92_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_92_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_92_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_92_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_92_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_92_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_92_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_92_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_92_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_92_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_92_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_92_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_92_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_92_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_92_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_92_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_92_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_92_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_92_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_92_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_92_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_92_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_92_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_92_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_92_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_92_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_92_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_92_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_92_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_92_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_92_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_92_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_92_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_92_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_92_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_92_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_92_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_92_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_92_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_92_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_92_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_92_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_92_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_92_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_92_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_92_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_92_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_92_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_92_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_92_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_92_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_93_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_93_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_93_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_93_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_93_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_93_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_93_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_93_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_93_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_93_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_93_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_93_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_93_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_93_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_93_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_93_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_93_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_93_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_93_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_93_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_93_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_93_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_93_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_93_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_93_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_93_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_93_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_93_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_93_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_93_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_93_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_93_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_93_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_93_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_93_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_93_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_93_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_93_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_93_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_93_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_93_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_93_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_93_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_93_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_93_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_93_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_93_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_93_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_93_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_93_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_93_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_93_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_93_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_93_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_93_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_93_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_93_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_93_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_93_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_93_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_93_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_93_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_93_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_93_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_93_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_93_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_93_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_93_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_93_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_93_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_93_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_93_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_94_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_94_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_94_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_94_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_94_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_94_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_94_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_94_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_94_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_94_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_94_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_94_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_94_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_94_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_94_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_94_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_94_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_94_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_94_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_94_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_94_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_94_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_94_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_94_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_94_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_94_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_94_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_94_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_94_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_94_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_94_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_94_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_94_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_94_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_94_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_94_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_94_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_94_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_94_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_94_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_94_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_94_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_94_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_94_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_94_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_94_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_94_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_94_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_94_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_94_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_94_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_94_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_94_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_94_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_94_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_94_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_94_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_94_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_94_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_94_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_94_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_94_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_94_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_94_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_94_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_94_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_94_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_94_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_94_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_94_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_94_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_94_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_95_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_95_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_95_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_95_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_95_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_95_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_95_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_95_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_95_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_95_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_95_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_95_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_95_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_95_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_95_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_95_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_95_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_95_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_95_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_95_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_95_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_95_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_95_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_95_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_95_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_95_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_95_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_95_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_95_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_95_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_95_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_95_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_95_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_95_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_95_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_95_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_95_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_95_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_95_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_95_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_95_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_95_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_95_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_95_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_95_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_95_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_95_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_95_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_95_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_95_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_95_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_95_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_95_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_95_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_95_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_95_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_95_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_95_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_95_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_95_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_95_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_95_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_95_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_95_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_95_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_95_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_95_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_95_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_95_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_95_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_95_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_95_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_96_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_96_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_96_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_96_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_96_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_96_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_96_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_96_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_96_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_96_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_96_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_96_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_96_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_96_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_96_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_96_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_96_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_96_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_96_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_96_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_96_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_96_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_96_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_96_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_96_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_96_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_96_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_96_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_96_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_96_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_96_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_96_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_96_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_96_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_96_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_96_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_96_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_96_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_96_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_96_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_96_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_96_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_96_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_96_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_96_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_96_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_96_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_96_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_96_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_96_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_96_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_96_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_96_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_96_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_96_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_96_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_96_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_96_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_96_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_96_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_96_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_96_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_96_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_96_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_96_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_96_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_96_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_96_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_96_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_96_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_96_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_96_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_97_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_97_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_97_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_97_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_97_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_97_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_97_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_97_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_97_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_97_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_97_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_97_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_97_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_97_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_97_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_97_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_97_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_97_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_97_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_97_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_97_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_97_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_97_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_97_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_97_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_97_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_97_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_97_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_97_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_97_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_97_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_97_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_97_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_97_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_97_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_97_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_97_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_97_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_97_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_97_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_97_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_97_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_97_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_97_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_97_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_97_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_97_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_97_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_97_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_97_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_97_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_97_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_97_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_97_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_97_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_97_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_97_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_97_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_97_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_97_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_97_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_97_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_97_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_97_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_97_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_97_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_97_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_97_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_97_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_97_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_97_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_97_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_98_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_98_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_98_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_98_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_98_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_98_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_98_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_98_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_98_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_98_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_98_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_98_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_98_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_98_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_98_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_98_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_98_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_98_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_98_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_98_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_98_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_98_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_98_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_98_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_98_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_98_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_98_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_98_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_98_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_98_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_98_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_98_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_98_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_98_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_98_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_98_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_98_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_98_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_98_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_98_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_98_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_98_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_98_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_98_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_98_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_98_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_98_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_98_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_98_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_98_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_98_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_98_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_98_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_98_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_98_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_98_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_98_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_98_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_98_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_98_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_98_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_98_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_98_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_98_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_98_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_98_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_98_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_98_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_98_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_98_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_98_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_98_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_99_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_99_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_99_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_99_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_GMEM_99_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_99_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_99_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_99_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_99_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_99_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_99_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_99_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_99_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_99_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_99_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_99_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_99_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_99_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_99_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_99_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_GMEM_99_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_99_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_GMEM_99_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_GMEM_99_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_99_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_99_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_99_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_99_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_99_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_99_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_99_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_99_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_99_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_99_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_99_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_99_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_99_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_99_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_99_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_99_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_99_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_99_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_99_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_99_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_99_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_99_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_99_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_99_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_99_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_99_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_99_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_99_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_99_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_99_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_99_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_99_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_99_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_99_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_99_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_99_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_99_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_99_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_99_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_99_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_99_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_99_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_99_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_99_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_99_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_99_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_99_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_99_CACHE_VALUE
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXI_CONTROL_ADDR_WIDTH". Setting updated value from the model parameter.
set_property value 12 ${MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_0_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_0_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_0_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_0_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_0_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_0_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_0_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_0_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_0_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_0_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_0_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_0_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_0_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_0_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_0_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_0_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_0_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_0_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_0_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_0_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_0_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_0_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_0_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_0_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_0_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_0_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_0_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_0_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_0_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_0_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_0_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_0_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_0_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_0_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_0_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_0_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_0_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_0_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_0_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_0_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_0_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_0_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_0_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_0_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_0_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_0_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_0_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_0_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_0_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_0_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_1_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_1_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_1_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_1_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_1_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_1_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_1_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_1_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_1_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_1_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_1_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_1_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_1_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_1_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_1_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_1_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_1_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_1_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_1_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_1_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_1_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_1_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_1_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_1_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_1_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_1_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_1_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_1_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_1_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_1_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_1_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_1_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_1_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_1_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_1_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_1_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_1_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_1_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_1_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_1_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_1_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_1_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_1_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_1_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_1_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_1_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_1_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_1_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_1_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_1_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_2_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_2_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_2_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_2_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_2_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_2_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_2_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_2_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_2_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_2_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_2_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_2_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_2_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_2_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_2_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_2_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_2_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_2_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_2_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_2_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_2_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_2_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_2_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_2_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_2_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_2_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_2_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_2_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_2_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_2_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_2_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_2_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_2_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_2_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_2_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_2_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_2_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_2_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_2_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_2_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_2_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_2_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_2_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_2_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_2_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_2_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_2_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_2_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_2_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_2_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_3_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_3_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_3_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_3_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_3_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_3_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_3_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_3_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_3_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_3_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_3_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_3_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_3_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_3_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_3_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_3_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_3_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_3_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_3_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_3_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_3_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_3_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_3_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_3_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_3_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_3_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_3_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_3_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_3_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_3_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_3_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_3_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_3_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_3_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_3_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_3_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_3_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_3_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_3_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_3_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_3_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_3_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_3_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_3_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_3_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_3_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_3_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_3_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_3_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_3_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_4_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_4_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_4_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_4_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_4_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_4_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_4_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_4_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_4_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_4_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_4_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_4_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_4_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_4_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_4_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_4_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_4_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_4_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_4_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_4_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_4_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_4_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_4_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_4_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_4_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_4_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_4_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_4_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_4_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_4_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_4_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_4_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_4_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_4_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_4_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_4_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_4_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_4_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_4_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_4_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_4_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_4_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_4_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_4_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_4_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_4_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_4_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_4_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_4_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_4_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_5_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_5_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_5_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_5_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_5_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_5_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_5_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_5_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_5_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_5_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_5_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_5_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_5_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_5_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_5_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_5_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_5_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_5_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_5_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_5_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_5_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_5_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_5_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_5_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_5_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_5_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_5_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_5_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_5_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_5_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_5_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_5_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_5_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_5_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_5_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_5_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_5_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_5_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_5_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_5_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_5_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_5_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_5_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_5_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_5_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_5_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_5_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_5_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_5_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_5_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_6_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_6_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_6_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_6_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_6_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_6_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_6_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_6_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_6_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_6_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_6_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_6_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_6_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_6_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_6_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_6_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_6_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_6_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_6_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_6_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_6_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_6_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_6_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_6_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_6_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_6_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_6_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_6_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_6_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_6_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_6_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_6_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_6_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_6_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_6_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_6_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_6_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_6_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_6_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_6_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_6_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_6_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_6_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_6_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_6_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_6_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_6_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_6_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_6_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_6_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_7_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_7_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_7_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_7_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_7_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_7_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_7_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_7_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_7_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_7_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_7_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_7_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_7_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_7_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_7_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_7_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_7_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_7_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_7_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_7_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_7_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_7_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_7_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_7_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_7_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_7_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_7_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_7_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_7_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_7_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_7_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_7_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_7_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_7_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_7_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_7_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_7_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_7_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_7_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_7_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_7_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_7_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_7_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_7_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_7_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_7_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_7_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_7_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_7_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_7_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_8_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_8_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_8_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_8_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_8_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_8_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_8_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_8_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_8_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_8_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_8_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_8_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_8_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_8_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_8_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_8_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_8_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_8_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_8_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_8_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_8_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_8_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_8_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_8_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_8_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_8_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_8_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_8_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_8_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_8_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_8_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_8_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_8_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_8_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_8_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_8_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_8_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_8_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_8_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_8_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_8_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_8_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_8_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_8_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_8_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_8_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_8_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_8_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_8_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_8_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_9_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_9_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_9_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_9_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_9_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_9_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_9_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_9_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_9_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_9_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_9_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_9_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_9_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_9_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_9_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_9_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_9_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_9_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_9_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_9_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_9_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_9_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_9_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_9_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_9_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_9_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_9_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_9_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_9_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_9_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_9_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_9_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_9_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_9_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_9_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_9_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_9_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_9_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_9_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_9_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_9_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_9_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_9_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_9_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_9_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_9_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_9_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_9_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_9_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_9_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_10_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_10_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_10_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_10_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_10_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_10_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_10_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_10_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_10_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_10_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_10_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_10_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_10_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_10_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_10_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_10_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_10_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_10_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_10_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_10_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_10_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_10_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_10_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_10_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_10_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_10_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_10_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_10_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_10_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_10_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_10_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_10_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_10_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_10_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_10_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_10_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_10_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_10_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_10_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_10_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_10_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_10_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_10_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_10_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_10_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_10_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_10_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_10_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_10_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_10_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_11_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_11_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_11_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_11_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_11_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_11_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_11_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_11_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_11_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_11_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_11_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_11_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_11_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_11_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_11_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_11_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_11_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_11_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_11_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_11_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_11_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_11_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_11_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_11_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_11_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_11_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_11_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_11_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_11_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_11_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_11_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_11_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_11_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_11_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_11_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_11_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_11_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_11_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_11_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_11_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_11_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_11_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_11_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_11_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_11_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_11_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_11_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_11_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_11_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_11_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_12_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_12_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_12_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_12_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_12_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_12_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_12_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_12_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_12_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_12_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_12_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_12_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_12_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_12_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_12_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_12_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_12_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_12_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_12_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_12_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_12_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_12_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_12_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_12_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_12_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_12_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_12_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_12_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_12_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_12_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_12_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_12_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_12_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_12_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_12_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_12_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_12_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_12_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_12_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_12_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_12_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_12_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_12_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_12_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_12_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_12_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_12_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_12_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_12_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_12_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_13_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_13_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_13_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_13_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_13_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_13_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_13_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_13_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_13_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_13_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_13_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_13_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_13_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_13_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_13_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_13_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_13_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_13_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_13_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_13_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_13_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_13_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_13_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_13_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_13_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_13_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_13_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_13_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_13_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_13_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_13_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_13_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_13_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_13_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_13_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_13_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_13_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_13_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_13_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_13_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_13_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_13_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_13_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_13_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_13_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_13_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_13_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_13_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_13_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_13_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_14_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_14_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_14_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_14_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_14_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_14_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_14_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_14_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_14_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_14_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_14_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_14_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_14_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_14_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_14_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_14_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_14_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_14_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_14_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_14_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_14_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_14_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_14_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_14_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_14_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_14_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_14_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_14_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_14_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_14_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_14_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_14_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_14_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_14_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_14_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_14_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_14_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_14_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_14_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_14_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_14_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_14_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_14_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_14_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_14_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_14_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_14_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_14_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_14_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_14_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_15_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_15_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_15_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_15_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_15_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_15_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_15_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_15_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_15_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_15_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_15_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_15_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_15_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_15_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_15_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_15_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_15_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_15_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_15_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_15_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_15_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_15_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_15_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_15_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_15_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_15_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_15_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_15_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_15_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_15_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_15_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_15_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_15_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_15_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_15_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_15_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_15_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_15_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_15_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_15_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_15_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_15_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_15_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_15_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_15_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_15_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_15_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_15_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_15_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_15_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_16_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_16_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_16_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_16_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_16_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_16_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_16_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_16_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_16_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_16_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_16_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_16_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_16_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_16_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_16_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_16_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_16_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_16_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_16_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_16_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_16_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_16_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_16_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_16_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_16_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_16_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_16_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_16_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_16_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_16_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_16_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_16_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_16_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_16_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_16_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_16_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_16_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_16_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_16_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_16_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_16_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_16_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_16_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_16_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_16_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_16_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_16_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_16_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_16_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_16_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_17_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_17_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_17_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_17_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_17_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_17_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_17_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_17_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_17_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_17_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_17_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_17_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_17_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_17_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_17_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_17_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_17_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_17_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_17_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_17_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_17_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_17_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_17_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_17_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_17_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_17_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_17_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_17_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_17_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_17_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_17_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_17_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_17_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_17_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_17_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_17_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_17_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_17_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_17_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_17_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_17_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_17_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_17_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_17_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_17_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_17_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_17_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_17_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_17_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_17_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_18_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_18_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_18_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_18_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_18_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_18_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_18_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_18_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_18_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_18_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_18_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_18_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_18_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_18_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_18_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_18_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_18_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_18_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_18_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_18_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_18_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_18_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_18_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_18_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_18_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_18_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_18_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_18_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_18_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_18_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_18_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_18_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_18_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_18_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_18_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_18_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_18_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_18_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_18_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_18_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_18_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_18_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_18_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_18_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_18_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_18_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_18_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_18_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_18_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_18_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_19_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_19_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_19_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_19_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_19_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_19_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_19_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_19_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_19_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_19_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_19_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_19_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_19_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_19_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_19_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_19_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_19_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_19_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_19_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_19_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_19_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_19_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_19_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_19_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_19_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_19_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_19_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_19_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_19_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_19_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_19_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_19_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_19_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_19_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_19_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_19_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_19_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_19_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_19_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_19_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_19_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_19_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_19_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_19_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_19_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_19_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_19_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_19_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_19_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_19_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_20_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_20_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_20_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_20_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_20_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_20_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_20_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_20_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_20_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_20_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_20_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_20_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_20_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_20_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_20_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_20_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_20_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_20_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_20_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_20_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_20_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_20_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_20_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_20_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_20_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_20_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_20_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_20_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_20_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_20_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_20_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_20_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_20_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_20_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_20_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_20_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_20_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_20_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_20_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_20_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_20_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_20_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_20_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_20_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_20_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_20_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_20_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_20_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_20_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_20_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_21_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_21_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_21_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_21_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_21_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_21_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_21_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_21_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_21_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_21_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_21_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_21_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_21_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_21_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_21_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_21_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_21_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_21_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_21_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_21_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_21_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_21_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_21_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_21_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_21_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_21_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_21_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_21_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_21_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_21_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_21_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_21_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_21_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_21_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_21_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_21_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_21_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_21_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_21_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_21_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_21_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_21_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_21_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_21_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_21_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_21_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_21_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_21_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_21_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_21_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_22_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_22_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_22_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_22_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_22_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_22_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_22_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_22_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_22_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_22_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_22_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_22_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_22_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_22_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_22_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_22_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_22_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_22_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_22_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_22_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_22_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_22_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_22_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_22_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_22_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_22_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_22_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_22_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_22_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_22_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_22_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_22_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_22_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_22_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_22_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_22_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_22_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_22_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_22_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_22_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_22_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_22_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_22_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_22_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_22_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_22_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_22_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_22_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_22_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_22_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_23_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_23_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_23_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_23_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_23_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_23_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_23_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_23_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_23_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_23_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_23_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_23_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_23_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_23_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_23_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_23_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_23_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_23_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_23_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_23_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_23_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_23_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_23_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_23_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_23_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_23_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_23_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_23_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_23_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_23_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_23_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_23_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_23_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_23_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_23_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_23_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_23_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_23_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_23_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_23_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_23_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_23_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_23_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_23_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_23_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_23_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_23_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_23_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_23_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_23_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_24_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_24_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_24_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_24_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_24_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_24_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_24_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_24_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_24_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_24_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_24_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_24_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_24_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_24_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_24_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_24_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_24_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_24_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_24_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_24_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_24_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_24_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_24_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_24_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_24_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_24_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_24_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_24_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_24_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_24_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_24_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_24_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_24_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_24_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_24_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_24_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_24_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_24_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_24_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_24_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_24_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_24_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_24_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_24_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_24_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_24_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_24_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_24_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_24_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_24_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_25_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_25_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_25_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_25_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_25_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_25_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_25_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_25_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_25_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_25_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_25_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_25_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_25_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_25_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_25_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_25_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_25_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_25_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_25_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_25_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_25_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_25_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_25_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_25_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_25_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_25_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_25_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_25_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_25_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_25_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_25_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_25_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_25_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_25_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_25_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_25_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_25_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_25_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_25_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_25_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_25_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_25_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_25_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_25_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_25_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_25_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_25_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_25_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_25_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_25_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_26_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_26_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_26_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_26_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_26_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_26_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_26_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_26_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_26_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_26_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_26_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_26_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_26_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_26_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_26_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_26_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_26_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_26_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_26_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_26_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_26_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_26_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_26_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_26_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_26_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_26_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_26_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_26_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_26_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_26_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_26_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_26_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_26_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_26_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_26_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_26_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_26_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_26_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_26_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_26_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_26_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_26_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_26_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_26_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_26_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_26_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_26_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_26_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_26_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_26_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_27_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_27_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_27_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_27_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_27_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_27_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_27_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_27_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_27_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_27_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_27_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_27_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_27_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_27_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_27_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_27_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_27_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_27_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_27_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_27_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_27_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_27_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_27_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_27_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_27_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_27_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_27_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_27_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_27_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_27_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_27_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_27_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_27_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_27_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_27_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_27_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_27_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_27_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_27_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_27_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_27_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_27_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_27_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_27_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_27_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_27_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_27_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_27_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_27_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_27_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_28_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_28_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_28_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_28_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_28_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_28_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_28_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_28_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_28_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_28_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_28_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_28_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_28_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_28_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_28_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_28_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_28_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_28_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_28_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_28_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_28_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_28_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_28_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_28_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_28_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_28_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_28_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_28_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_28_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_28_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_28_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_28_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_28_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_28_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_28_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_28_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_28_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_28_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_28_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_28_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_28_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_28_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_28_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_28_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_28_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_28_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_28_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_28_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_28_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_28_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_29_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_29_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_29_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_29_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_29_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_29_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_29_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_29_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_29_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_29_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_29_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_29_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_29_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_29_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_29_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_29_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_29_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_29_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_29_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_29_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_29_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_29_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_29_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_29_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_29_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_29_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_29_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_29_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_29_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_29_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_29_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_29_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_29_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_29_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_29_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_29_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_29_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_29_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_29_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_29_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_29_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_29_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_29_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_29_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_29_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_29_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_29_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_29_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_29_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_29_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_30_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_30_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_30_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_30_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_30_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_30_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_30_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_30_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_30_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_30_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_30_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_30_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_30_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_30_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_30_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_30_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_30_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_30_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_30_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_30_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_30_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_30_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_30_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_30_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_30_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_30_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_30_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_30_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_30_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_30_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_30_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_30_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_30_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_30_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_30_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_30_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_30_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_30_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_30_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_30_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_30_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_30_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_30_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_30_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_30_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_30_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_30_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_30_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_30_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_30_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_31_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_31_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_31_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_31_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_31_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_31_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_31_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_31_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_31_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_31_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_31_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_31_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_31_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_31_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_31_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_31_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_31_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_31_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_31_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_31_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_31_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_31_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_31_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_31_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_31_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_31_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_31_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_31_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_31_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_31_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_31_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_31_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_31_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_31_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_31_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_31_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_31_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_31_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_31_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_31_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_31_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_31_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_31_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_31_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_31_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_31_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_31_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_31_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_31_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_31_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_32_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_32_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_32_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_32_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_32_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_32_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_32_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_32_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_32_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_32_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_32_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_32_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_32_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_32_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_32_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_32_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_32_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_32_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_32_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_32_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_32_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_32_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_32_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_32_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_32_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_32_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_32_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_32_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_32_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_32_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_32_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_32_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_32_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_32_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_32_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_32_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_32_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_32_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_32_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_32_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_32_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_32_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_32_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_32_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_32_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_32_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_32_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_32_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_32_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_32_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_33_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_33_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_33_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_33_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_33_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_33_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_33_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_33_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_33_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_33_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_33_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_33_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_33_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_33_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_33_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_33_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_33_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_33_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_33_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_33_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_33_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_33_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_33_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_33_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_33_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_33_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_33_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_33_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_33_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_33_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_33_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_33_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_33_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_33_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_33_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_33_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_33_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_33_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_33_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_33_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_33_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_33_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_33_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_33_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_33_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_33_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_33_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_33_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_33_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_33_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_34_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_34_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_34_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_34_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_34_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_34_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_34_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_34_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_34_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_34_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_34_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_34_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_34_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_34_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_34_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_34_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_34_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_34_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_34_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_34_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_34_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_34_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_34_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_34_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_34_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_34_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_34_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_34_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_34_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_34_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_34_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_34_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_34_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_34_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_34_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_34_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_34_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_34_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_34_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_34_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_34_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_34_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_34_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_34_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_34_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_34_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_34_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_34_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_34_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_34_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_35_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_35_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_35_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_35_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_35_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_35_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_35_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_35_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_35_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_35_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_35_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_35_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_35_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_35_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_35_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_35_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_35_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_35_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_35_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_35_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_35_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_35_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_35_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_35_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_35_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_35_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_35_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_35_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_35_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_35_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_35_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_35_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_35_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_35_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_35_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_35_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_35_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_35_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_35_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_35_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_35_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_35_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_35_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_35_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_35_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_35_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_35_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_35_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_35_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_35_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_36_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_36_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_36_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_36_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_36_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_36_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_36_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_36_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_36_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_36_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_36_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_36_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_36_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_36_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_36_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_36_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_36_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_36_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_36_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_36_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_36_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_36_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_36_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_36_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_36_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_36_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_36_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_36_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_36_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_36_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_36_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_36_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_36_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_36_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_36_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_36_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_36_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_36_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_36_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_36_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_36_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_36_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_36_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_36_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_36_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_36_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_36_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_36_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_36_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_36_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_37_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_37_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_37_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_37_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_37_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_37_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_37_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_37_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_37_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_37_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_37_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_37_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_37_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_37_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_37_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_37_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_37_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_37_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_37_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_37_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_37_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_37_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_37_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_37_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_37_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_37_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_37_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_37_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_37_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_37_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_37_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_37_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_37_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_37_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_37_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_37_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_37_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_37_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_37_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_37_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_37_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_37_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_37_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_37_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_37_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_37_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_37_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_37_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_37_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_37_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_38_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_38_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_38_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_38_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_38_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_38_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_38_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_38_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_38_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_38_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_38_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_38_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_38_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_38_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_38_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_38_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_38_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_38_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_38_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_38_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_38_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_38_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_38_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_38_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_38_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_38_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_38_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_38_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_38_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_38_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_38_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_38_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_38_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_38_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_38_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_38_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_38_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_38_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_38_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_38_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_38_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_38_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_38_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_38_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_38_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_38_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_38_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_38_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_38_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_38_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_39_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_39_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_39_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_39_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_39_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_39_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_39_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_39_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_39_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_39_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_39_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_39_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_39_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_39_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_39_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_39_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_39_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_39_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_39_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_39_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_39_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_39_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_39_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_39_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_39_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_39_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_39_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_39_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_39_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_39_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_39_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_39_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_39_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_39_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_39_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_39_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_39_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_39_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_39_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_39_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_39_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_39_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_39_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_39_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_39_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_39_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_39_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_39_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_39_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_39_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_40_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_40_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_40_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_40_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_40_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_40_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_40_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_40_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_40_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_40_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_40_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_40_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_40_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_40_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_40_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_40_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_40_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_40_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_40_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_40_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_40_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_40_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_40_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_40_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_40_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_40_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_40_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_40_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_40_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_40_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_40_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_40_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_40_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_40_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_40_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_40_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_40_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_40_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_40_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_40_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_40_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_40_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_40_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_40_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_40_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_40_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_40_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_40_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_40_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_40_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_41_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_41_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_41_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_41_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_41_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_41_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_41_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_41_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_41_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_41_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_41_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_41_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_41_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_41_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_41_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_41_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_41_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_41_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_41_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_41_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_41_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_41_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_41_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_41_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_41_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_41_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_41_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_41_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_41_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_41_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_41_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_41_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_41_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_41_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_41_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_41_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_41_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_41_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_41_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_41_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_41_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_41_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_41_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_41_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_41_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_41_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_41_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_41_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_41_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_41_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_42_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_42_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_42_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_42_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_42_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_42_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_42_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_42_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_42_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_42_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_42_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_42_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_42_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_42_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_42_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_42_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_42_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_42_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_42_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_42_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_42_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_42_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_42_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_42_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_42_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_42_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_42_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_42_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_42_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_42_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_42_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_42_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_42_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_42_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_42_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_42_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_42_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_42_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_42_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_42_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_42_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_42_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_42_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_42_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_42_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_42_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_42_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_42_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_42_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_42_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_43_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_43_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_43_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_43_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_43_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_43_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_43_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_43_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_43_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_43_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_43_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_43_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_43_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_43_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_43_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_43_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_43_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_43_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_43_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_43_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_43_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_43_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_43_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_43_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_43_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_43_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_43_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_43_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_43_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_43_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_43_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_43_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_43_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_43_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_43_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_43_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_43_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_43_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_43_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_43_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_43_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_43_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_43_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_43_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_43_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_43_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_43_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_43_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_43_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_43_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_44_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_44_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_44_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_44_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_44_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_44_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_44_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_44_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_44_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_44_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_44_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_44_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_44_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_44_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_44_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_44_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_44_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_44_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_44_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_44_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_44_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_44_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_44_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_44_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_44_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_44_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_44_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_44_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_44_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_44_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_44_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_44_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_44_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_44_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_44_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_44_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_44_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_44_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_44_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_44_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_44_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_44_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_44_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_44_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_44_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_44_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_44_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_44_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_44_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_44_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_45_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_45_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_45_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_45_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_45_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_45_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_45_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_45_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_45_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_45_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_45_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_45_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_45_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_45_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_45_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_45_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_45_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_45_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_45_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_45_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_45_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_45_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_45_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_45_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_45_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_45_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_45_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_45_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_45_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_45_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_45_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_45_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_45_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_45_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_45_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_45_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_45_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_45_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_45_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_45_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_45_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_45_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_45_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_45_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_45_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_45_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_45_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_45_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_45_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_45_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_46_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_46_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_46_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_46_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_46_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_46_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_46_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_46_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_46_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_46_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_46_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_46_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_46_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_46_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_46_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_46_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_46_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_46_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_46_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_46_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_46_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_46_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_46_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_46_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_46_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_46_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_46_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_46_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_46_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_46_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_46_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_46_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_46_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_46_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_46_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_46_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_46_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_46_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_46_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_46_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_46_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_46_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_46_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_46_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_46_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_46_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_46_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_46_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_46_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_46_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_47_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_47_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_47_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_47_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_47_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_47_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_47_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_47_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_47_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_47_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_47_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_47_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_47_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_47_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_47_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_47_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_47_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_47_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_47_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_47_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_47_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_47_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_47_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_47_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_47_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_47_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_47_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_47_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_47_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_47_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_47_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_47_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_47_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_47_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_47_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_47_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_47_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_47_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_47_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_47_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_47_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_47_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_47_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_47_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_47_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_47_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_47_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_47_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_47_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_47_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_48_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_48_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_48_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_48_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_48_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_48_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_48_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_48_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_48_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_48_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_48_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_48_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_48_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_48_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_48_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_48_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_48_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_48_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_48_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_48_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_48_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_48_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_48_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_48_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_48_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_48_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_48_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_48_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_48_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_48_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_48_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_48_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_48_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_48_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_48_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_48_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_48_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_48_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_48_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_48_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_48_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_48_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_48_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_48_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_48_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_48_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_48_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_48_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_48_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_48_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_49_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_49_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_49_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_49_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_49_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_49_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_49_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_49_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_49_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_49_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_49_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_49_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_49_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_49_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_49_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_49_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_49_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_49_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_49_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_49_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_49_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_49_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_49_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_49_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_49_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_49_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_49_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_49_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_49_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_49_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_49_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_49_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_49_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_49_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_49_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_49_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_49_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_49_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_49_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_49_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_49_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_49_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_49_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_49_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_49_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_49_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_49_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_49_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_49_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_49_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_50_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_50_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_50_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_50_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_50_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_50_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_50_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_50_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_50_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_50_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_50_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_50_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_50_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_50_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_50_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_50_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_50_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_50_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_50_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_50_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_50_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_50_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_50_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_50_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_50_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_50_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_50_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_50_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_50_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_50_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_50_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_50_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_50_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_50_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_50_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_50_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_50_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_50_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_50_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_50_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_50_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_50_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_50_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_50_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_50_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_50_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_50_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_50_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_50_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_50_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_51_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_51_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_51_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_51_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_51_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_51_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_51_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_51_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_51_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_51_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_51_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_51_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_51_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_51_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_51_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_51_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_51_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_51_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_51_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_51_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_51_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_51_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_51_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_51_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_51_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_51_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_51_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_51_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_51_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_51_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_51_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_51_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_51_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_51_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_51_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_51_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_51_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_51_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_51_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_51_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_51_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_51_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_51_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_51_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_51_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_51_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_51_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_51_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_51_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_51_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_52_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_52_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_52_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_52_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_52_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_52_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_52_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_52_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_52_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_52_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_52_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_52_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_52_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_52_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_52_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_52_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_52_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_52_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_52_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_52_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_52_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_52_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_52_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_52_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_52_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_52_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_52_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_52_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_52_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_52_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_52_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_52_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_52_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_52_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_52_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_52_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_52_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_52_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_52_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_52_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_52_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_52_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_52_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_52_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_52_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_52_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_52_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_52_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_52_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_52_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_53_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_53_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_53_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_53_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_53_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_53_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_53_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_53_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_53_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_53_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_53_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_53_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_53_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_53_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_53_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_53_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_53_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_53_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_53_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_53_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_53_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_53_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_53_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_53_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_53_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_53_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_53_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_53_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_53_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_53_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_53_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_53_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_53_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_53_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_53_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_53_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_53_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_53_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_53_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_53_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_53_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_53_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_53_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_53_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_53_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_53_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_53_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_53_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_53_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_53_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_54_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_54_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_54_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_54_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_54_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_54_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_54_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_54_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_54_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_54_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_54_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_54_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_54_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_54_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_54_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_54_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_54_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_54_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_54_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_54_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_54_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_54_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_54_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_54_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_54_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_54_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_54_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_54_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_54_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_54_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_54_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_54_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_54_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_54_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_54_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_54_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_54_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_54_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_54_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_54_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_54_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_54_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_54_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_54_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_54_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_54_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_54_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_54_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_54_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_54_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_55_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_55_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_55_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_55_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_55_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_55_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_55_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_55_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_55_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_55_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_55_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_55_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_55_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_55_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_55_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_55_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_55_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_55_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_55_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_55_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_55_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_55_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_55_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_55_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_55_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_55_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_55_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_55_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_55_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_55_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_55_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_55_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_55_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_55_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_55_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_55_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_55_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_55_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_55_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_55_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_55_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_55_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_55_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_55_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_55_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_55_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_55_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_55_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_55_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_55_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_56_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_56_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_56_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_56_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_56_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_56_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_56_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_56_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_56_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_56_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_56_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_56_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_56_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_56_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_56_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_56_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_56_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_56_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_56_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_56_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_56_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_56_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_56_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_56_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_56_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_56_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_56_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_56_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_56_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_56_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_56_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_56_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_56_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_56_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_56_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_56_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_56_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_56_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_56_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_56_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_56_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_56_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_56_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_56_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_56_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_56_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_56_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_56_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_56_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_56_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_57_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_57_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_57_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_57_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_57_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_57_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_57_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_57_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_57_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_57_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_57_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_57_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_57_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_57_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_57_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_57_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_57_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_57_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_57_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_57_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_57_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_57_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_57_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_57_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_57_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_57_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_57_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_57_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_57_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_57_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_57_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_57_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_57_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_57_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_57_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_57_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_57_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_57_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_57_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_57_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_57_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_57_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_57_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_57_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_57_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_57_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_57_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_57_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_57_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_57_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_58_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_58_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_58_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_58_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_58_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_58_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_58_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_58_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_58_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_58_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_58_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_58_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_58_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_58_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_58_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_58_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_58_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_58_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_58_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_58_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_58_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_58_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_58_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_58_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_58_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_58_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_58_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_58_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_58_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_58_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_58_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_58_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_58_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_58_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_58_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_58_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_58_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_58_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_58_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_58_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_58_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_58_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_58_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_58_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_58_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_58_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_58_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_58_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_58_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_58_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_59_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_59_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_59_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_59_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_59_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_59_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_59_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_59_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_59_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_59_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_59_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_59_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_59_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_59_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_59_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_59_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_59_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_59_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_59_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_59_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_59_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_59_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_59_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_59_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_59_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_59_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_59_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_59_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_59_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_59_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_59_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_59_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_59_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_59_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_59_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_59_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_59_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_59_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_59_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_59_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_59_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_59_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_59_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_59_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_59_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_59_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_59_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_59_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_59_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_59_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_60_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_60_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_60_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_60_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_60_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_60_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_60_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_60_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_60_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_60_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_60_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_60_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_60_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_60_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_60_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_60_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_60_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_60_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_60_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_60_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_60_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_60_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_60_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_60_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_60_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_60_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_60_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_60_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_60_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_60_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_60_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_60_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_60_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_60_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_60_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_60_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_60_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_60_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_60_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_60_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_60_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_60_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_60_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_60_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_60_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_60_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_60_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_60_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_60_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_60_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_61_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_61_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_61_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_61_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_61_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_61_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_61_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_61_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_61_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_61_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_61_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_61_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_61_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_61_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_61_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_61_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_61_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_61_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_61_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_61_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_61_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_61_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_61_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_61_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_61_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_61_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_61_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_61_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_61_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_61_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_61_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_61_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_61_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_61_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_61_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_61_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_61_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_61_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_61_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_61_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_61_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_61_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_61_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_61_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_61_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_61_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_61_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_61_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_61_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_61_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_62_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_62_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_62_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_62_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_62_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_62_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_62_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_62_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_62_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_62_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_62_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_62_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_62_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_62_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_62_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_62_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_62_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_62_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_62_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_62_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_62_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_62_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_62_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_62_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_62_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_62_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_62_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_62_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_62_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_62_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_62_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_62_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_62_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_62_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_62_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_62_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_62_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_62_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_62_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_62_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_62_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_62_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_62_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_62_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_62_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_62_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_62_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_62_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_62_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_62_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_63_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_63_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_63_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_63_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_63_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_63_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_63_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_63_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_63_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_63_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_63_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_63_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_63_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_63_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_63_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_63_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_63_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_63_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_63_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_63_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_63_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_63_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_63_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_63_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_63_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_63_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_63_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_63_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_63_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_63_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_63_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_63_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_63_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_63_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_63_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_63_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_63_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_63_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_63_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_63_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_63_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_63_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_63_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_63_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_63_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_63_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_63_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_63_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_63_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_63_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_64_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_64_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_64_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_64_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_64_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_64_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_64_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_64_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_64_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_64_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_64_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_64_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_64_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_64_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_64_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_64_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_64_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_64_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_64_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_64_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_64_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_64_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_64_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_64_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_64_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_64_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_64_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_64_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_64_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_64_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_64_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_64_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_64_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_64_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_64_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_64_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_64_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_64_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_64_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_64_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_64_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_64_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_64_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_64_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_64_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_64_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_64_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_64_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_64_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_64_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_65_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_65_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_65_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_65_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_65_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_65_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_65_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_65_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_65_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_65_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_65_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_65_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_65_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_65_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_65_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_65_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_65_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_65_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_65_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_65_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_65_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_65_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_65_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_65_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_65_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_65_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_65_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_65_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_65_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_65_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_65_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_65_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_65_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_65_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_65_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_65_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_65_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_65_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_65_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_65_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_65_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_65_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_65_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_65_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_65_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_65_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_65_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_65_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_65_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_65_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_66_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_66_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_66_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_66_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_66_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_66_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_66_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_66_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_66_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_66_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_66_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_66_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_66_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_66_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_66_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_66_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_66_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_66_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_66_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_66_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_66_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_66_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_66_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_66_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_66_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_66_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_66_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_66_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_66_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_66_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_66_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_66_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_66_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_66_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_66_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_66_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_66_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_66_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_66_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_66_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_66_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_66_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_66_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_66_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_66_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_66_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_66_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_66_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_66_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_66_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_67_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_67_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_67_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_67_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_67_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_67_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_67_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_67_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_67_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_67_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_67_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_67_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_67_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_67_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_67_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_67_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_67_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_67_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_67_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_67_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_67_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_67_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_67_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_67_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_67_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_67_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_67_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_67_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_67_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_67_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_67_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_67_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_67_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_67_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_67_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_67_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_67_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_67_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_67_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_67_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_67_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_67_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_67_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_67_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_67_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_67_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_67_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_67_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_67_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_67_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_68_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_68_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_68_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_68_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_68_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_68_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_68_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_68_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_68_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_68_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_68_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_68_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_68_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_68_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_68_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_68_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_68_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_68_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_68_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_68_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_68_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_68_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_68_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_68_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_68_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_68_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_68_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_68_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_68_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_68_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_68_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_68_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_68_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_68_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_68_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_68_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_68_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_68_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_68_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_68_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_68_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_68_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_68_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_68_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_68_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_68_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_68_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_68_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_68_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_68_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_69_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_69_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_69_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_69_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_69_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_69_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_69_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_69_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_69_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_69_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_69_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_69_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_69_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_69_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_69_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_69_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_69_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_69_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_69_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_69_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_69_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_69_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_69_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_69_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_69_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_69_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_69_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_69_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_69_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_69_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_69_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_69_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_69_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_69_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_69_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_69_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_69_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_69_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_69_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_69_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_69_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_69_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_69_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_69_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_69_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_69_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_69_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_69_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_69_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_69_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_70_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_70_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_70_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_70_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_70_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_70_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_70_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_70_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_70_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_70_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_70_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_70_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_70_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_70_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_70_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_70_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_70_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_70_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_70_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_70_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_70_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_70_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_70_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_70_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_70_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_70_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_70_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_70_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_70_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_70_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_70_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_70_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_70_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_70_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_70_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_70_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_70_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_70_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_70_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_70_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_70_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_70_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_70_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_70_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_70_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_70_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_70_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_70_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_70_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_70_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_71_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_71_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_71_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_71_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_71_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_71_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_71_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_71_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_71_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_71_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_71_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_71_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_71_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_71_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_71_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_71_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_71_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_71_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_71_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_71_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_71_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_71_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_71_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_71_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_71_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_71_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_71_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_71_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_71_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_71_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_71_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_71_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_71_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_71_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_71_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_71_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_71_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_71_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_71_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_71_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_71_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_71_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_71_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_71_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_71_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_71_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_71_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_71_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_71_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_71_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_72_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_72_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_72_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_72_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_72_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_72_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_72_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_72_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_72_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_72_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_72_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_72_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_72_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_72_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_72_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_72_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_72_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_72_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_72_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_72_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_72_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_72_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_72_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_72_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_72_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_72_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_72_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_72_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_72_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_72_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_72_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_72_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_72_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_72_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_72_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_72_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_72_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_72_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_72_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_72_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_72_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_72_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_72_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_72_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_72_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_72_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_72_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_72_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_72_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_72_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_73_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_73_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_73_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_73_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_73_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_73_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_73_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_73_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_73_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_73_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_73_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_73_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_73_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_73_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_73_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_73_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_73_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_73_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_73_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_73_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_73_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_73_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_73_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_73_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_73_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_73_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_73_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_73_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_73_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_73_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_73_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_73_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_73_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_73_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_73_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_73_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_73_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_73_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_73_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_73_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_73_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_73_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_73_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_73_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_73_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_73_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_73_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_73_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_73_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_73_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_74_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_74_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_74_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_74_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_74_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_74_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_74_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_74_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_74_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_74_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_74_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_74_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_74_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_74_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_74_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_74_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_74_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_74_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_74_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_74_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_74_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_74_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_74_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_74_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_74_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_74_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_74_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_74_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_74_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_74_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_74_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_74_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_74_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_74_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_74_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_74_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_74_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_74_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_74_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_74_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_74_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_74_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_74_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_74_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_74_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_74_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_74_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_74_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_74_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_74_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_75_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_75_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_75_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_75_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_75_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_75_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_75_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_75_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_75_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_75_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_75_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_75_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_75_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_75_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_75_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_75_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_75_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_75_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_75_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_75_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_75_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_75_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_75_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_75_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_75_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_75_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_75_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_75_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_75_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_75_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_75_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_75_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_75_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_75_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_75_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_75_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_75_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_75_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_75_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_75_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_75_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_75_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_75_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_75_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_75_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_75_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_75_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_75_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_75_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_75_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_76_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_76_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_76_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_76_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_76_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_76_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_76_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_76_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_76_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_76_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_76_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_76_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_76_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_76_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_76_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_76_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_76_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_76_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_76_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_76_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_76_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_76_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_76_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_76_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_76_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_76_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_76_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_76_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_76_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_76_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_76_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_76_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_76_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_76_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_76_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_76_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_76_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_76_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_76_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_76_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_76_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_76_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_76_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_76_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_76_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_76_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_76_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_76_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_76_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_76_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_77_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_77_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_77_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_77_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_77_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_77_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_77_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_77_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_77_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_77_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_77_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_77_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_77_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_77_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_77_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_77_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_77_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_77_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_77_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_77_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_77_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_77_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_77_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_77_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_77_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_77_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_77_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_77_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_77_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_77_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_77_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_77_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_77_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_77_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_77_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_77_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_77_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_77_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_77_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_77_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_77_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_77_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_77_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_77_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_77_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_77_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_77_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_77_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_77_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_77_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_78_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_78_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_78_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_78_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_78_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_78_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_78_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_78_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_78_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_78_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_78_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_78_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_78_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_78_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_78_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_78_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_78_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_78_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_78_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_78_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_78_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_78_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_78_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_78_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_78_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_78_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_78_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_78_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_78_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_78_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_78_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_78_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_78_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_78_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_78_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_78_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_78_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_78_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_78_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_78_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_78_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_78_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_78_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_78_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_78_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_78_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_78_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_78_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_78_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_78_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_79_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_79_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_79_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_79_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_79_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_79_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_79_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_79_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_79_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_79_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_79_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_79_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_79_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_79_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_79_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_79_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_79_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_79_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_79_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_79_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_79_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_79_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_79_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_79_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_79_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_79_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_79_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_79_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_79_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_79_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_79_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_79_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_79_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_79_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_79_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_79_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_79_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_79_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_79_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_79_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_79_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_79_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_79_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_79_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_79_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_79_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_79_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_79_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_79_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_79_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_80_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_80_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_80_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_80_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_80_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_80_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_80_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_80_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_80_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_80_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_80_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_80_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_80_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_80_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_80_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_80_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_80_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_80_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_80_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_80_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_80_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_80_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_80_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_80_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_80_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_80_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_80_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_80_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_80_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_80_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_80_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_80_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_80_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_80_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_80_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_80_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_80_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_80_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_80_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_80_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_80_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_80_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_80_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_80_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_80_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_80_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_80_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_80_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_80_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_80_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_81_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_81_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_81_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_81_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_81_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_81_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_81_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_81_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_81_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_81_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_81_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_81_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_81_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_81_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_81_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_81_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_81_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_81_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_81_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_81_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_81_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_81_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_81_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_81_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_81_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_81_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_81_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_81_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_81_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_81_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_81_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_81_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_81_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_81_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_81_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_81_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_81_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_81_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_81_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_81_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_81_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_81_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_81_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_81_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_81_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_81_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_81_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_81_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_81_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_81_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_82_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_82_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_82_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_82_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_82_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_82_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_82_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_82_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_82_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_82_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_82_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_82_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_82_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_82_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_82_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_82_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_82_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_82_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_82_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_82_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_82_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_82_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_82_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_82_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_82_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_82_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_82_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_82_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_82_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_82_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_82_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_82_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_82_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_82_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_82_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_82_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_82_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_82_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_82_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_82_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_82_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_82_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_82_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_82_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_82_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_82_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_82_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_82_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_82_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_82_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_83_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_83_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_83_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_83_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_83_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_83_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_83_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_83_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_83_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_83_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_83_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_83_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_83_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_83_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_83_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_83_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_83_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_83_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_83_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_83_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_83_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_83_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_83_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_83_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_83_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_83_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_83_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_83_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_83_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_83_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_83_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_83_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_83_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_83_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_83_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_83_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_83_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_83_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_83_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_83_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_83_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_83_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_83_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_83_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_83_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_83_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_83_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_83_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_83_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_83_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_84_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_84_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_84_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_84_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_84_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_84_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_84_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_84_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_84_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_84_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_84_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_84_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_84_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_84_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_84_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_84_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_84_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_84_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_84_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_84_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_84_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_84_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_84_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_84_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_84_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_84_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_84_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_84_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_84_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_84_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_84_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_84_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_84_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_84_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_84_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_84_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_84_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_84_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_84_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_84_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_84_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_84_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_84_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_84_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_84_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_84_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_84_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_84_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_84_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_84_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_85_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_85_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_85_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_85_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_85_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_85_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_85_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_85_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_85_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_85_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_85_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_85_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_85_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_85_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_85_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_85_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_85_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_85_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_85_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_85_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_85_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_85_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_85_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_85_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_85_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_85_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_85_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_85_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_85_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_85_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_85_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_85_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_85_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_85_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_85_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_85_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_85_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_85_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_85_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_85_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_85_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_85_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_85_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_85_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_85_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_85_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_85_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_85_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_85_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_85_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_86_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_86_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_86_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_86_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_86_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_86_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_86_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_86_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_86_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_86_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_86_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_86_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_86_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_86_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_86_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_86_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_86_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_86_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_86_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_86_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_86_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_86_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_86_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_86_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_86_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_86_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_86_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_86_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_86_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_86_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_86_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_86_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_86_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_86_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_86_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_86_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_86_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_86_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_86_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_86_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_86_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_86_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_86_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_86_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_86_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_86_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_86_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_86_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_86_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_86_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_87_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_87_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_87_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_87_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_87_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_87_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_87_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_87_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_87_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_87_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_87_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_87_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_87_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_87_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_87_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_87_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_87_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_87_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_87_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_87_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_87_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_87_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_87_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_87_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_87_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_87_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_87_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_87_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_87_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_87_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_87_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_87_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_87_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_87_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_87_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_87_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_87_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_87_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_87_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_87_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_87_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_87_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_87_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_87_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_87_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_87_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_87_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_87_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_87_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_87_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_88_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_88_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_88_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_88_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_88_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_88_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_88_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_88_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_88_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_88_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_88_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_88_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_88_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_88_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_88_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_88_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_88_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_88_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_88_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_88_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_88_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_88_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_88_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_88_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_88_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_88_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_88_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_88_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_88_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_88_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_88_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_88_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_88_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_88_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_88_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_88_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_88_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_88_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_88_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_88_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_88_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_88_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_88_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_88_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_88_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_88_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_88_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_88_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_88_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_88_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_89_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_89_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_89_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_89_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_89_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_89_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_89_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_89_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_89_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_89_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_89_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_89_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_89_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_89_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_89_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_89_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_89_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_89_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_89_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_89_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_89_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_89_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_89_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_89_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_89_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_89_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_89_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_89_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_89_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_89_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_89_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_89_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_89_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_89_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_89_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_89_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_89_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_89_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_89_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_89_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_89_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_89_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_89_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_89_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_89_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_89_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_89_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_89_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_89_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_89_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_90_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_90_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_90_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_90_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_90_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_90_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_90_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_90_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_90_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_90_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_90_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_90_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_90_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_90_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_90_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_90_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_90_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_90_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_90_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_90_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_90_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_90_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_90_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_90_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_90_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_90_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_90_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_90_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_90_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_90_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_90_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_90_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_90_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_90_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_90_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_90_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_90_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_90_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_90_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_90_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_90_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_90_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_90_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_90_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_90_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_90_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_90_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_90_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_90_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_90_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_91_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_91_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_91_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_91_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_91_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_91_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_91_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_91_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_91_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_91_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_91_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_91_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_91_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_91_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_91_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_91_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_91_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_91_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_91_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_91_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_91_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_91_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_91_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_91_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_91_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_91_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_91_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_91_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_91_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_91_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_91_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_91_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_91_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_91_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_91_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_91_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_91_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_91_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_91_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_91_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_91_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_91_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_91_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_91_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_91_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_91_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_91_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_91_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_91_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_91_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_92_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_92_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_92_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_92_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_92_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_92_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_92_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_92_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_92_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_92_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_92_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_92_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_92_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_92_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_92_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_92_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_92_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_92_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_92_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_92_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_92_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_92_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_92_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_92_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_92_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_92_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_92_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_92_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_92_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_92_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_92_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_92_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_92_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_92_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_92_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_92_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_92_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_92_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_92_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_92_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_92_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_92_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_92_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_92_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_92_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_92_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_92_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_92_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_92_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_92_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_93_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_93_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_93_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_93_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_93_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_93_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_93_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_93_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_93_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_93_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_93_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_93_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_93_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_93_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_93_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_93_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_93_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_93_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_93_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_93_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_93_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_93_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_93_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_93_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_93_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_93_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_93_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_93_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_93_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_93_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_93_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_93_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_93_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_93_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_93_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_93_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_93_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_93_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_93_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_93_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_93_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_93_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_93_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_93_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_93_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_93_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_93_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_93_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_93_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_93_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_94_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_94_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_94_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_94_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_94_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_94_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_94_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_94_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_94_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_94_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_94_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_94_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_94_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_94_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_94_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_94_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_94_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_94_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_94_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_94_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_94_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_94_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_94_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_94_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_94_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_94_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_94_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_94_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_94_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_94_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_94_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_94_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_94_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_94_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_94_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_94_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_94_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_94_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_94_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_94_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_94_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_94_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_94_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_94_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_94_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_94_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_94_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_94_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_94_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_94_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_95_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_95_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_95_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_95_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_95_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_95_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_95_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_95_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_95_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_95_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_95_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_95_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_95_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_95_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_95_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_95_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_95_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_95_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_95_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_95_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_95_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_95_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_95_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_95_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_95_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_95_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_95_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_95_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_95_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_95_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_95_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_95_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_95_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_95_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_95_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_95_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_95_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_95_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_95_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_95_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_95_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_95_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_95_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_95_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_95_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_95_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_95_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_95_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_95_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_95_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_96_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_96_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_96_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_96_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_96_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_96_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_96_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_96_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_96_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_96_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_96_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_96_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_96_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_96_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_96_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_96_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_96_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_96_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_96_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_96_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_96_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_96_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_96_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_96_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_96_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_96_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_96_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_96_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_96_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_96_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_96_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_96_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_96_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_96_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_96_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_96_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_96_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_96_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_96_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_96_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_96_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_96_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_96_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_96_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_96_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_96_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_96_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_96_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_96_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_96_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_97_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_97_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_97_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_97_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_97_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_97_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_97_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_97_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_97_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_97_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_97_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_97_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_97_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_97_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_97_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_97_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_97_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_97_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_97_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_97_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_97_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_97_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_97_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_97_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_97_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_97_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_97_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_97_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_97_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_97_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_97_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_97_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_97_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_97_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_97_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_97_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_97_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_97_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_97_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_97_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_97_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_97_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_97_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_97_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_97_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_97_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_97_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_97_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_97_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_97_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_98_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_98_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_98_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_98_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_98_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_98_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_98_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_98_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_98_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_98_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_98_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_98_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_98_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_98_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_98_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_98_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_98_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_98_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_98_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_98_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_98_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_98_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_98_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_98_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_98_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_98_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_98_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_98_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_98_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_98_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_98_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_98_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_98_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_98_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_98_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_98_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_98_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_98_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_98_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_98_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_98_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_98_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_98_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_98_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_98_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_98_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_98_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_98_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_98_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_98_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_99_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_99_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_99_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_99_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_99_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_99_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_99_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_99_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_99_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_99_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_99_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_99_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_99_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_99_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_99_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_99_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_99_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_99_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_99_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_99_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_99_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_99_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_99_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_99_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_99_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_99_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_99_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_99_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_99_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_99_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_99_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_99_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_99_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_99_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_99_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_99_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_99_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_99_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_99_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_99_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_99_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_99_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_99_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_99_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_99_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_99_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_99_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_99_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_99_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_99_CACHE_VALUE}
}

