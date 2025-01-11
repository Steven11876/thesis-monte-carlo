set ModuleHierarchy {[{
"Name" : "SABR","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_SABR_Pipeline_VITIS_LOOP_12_1_fu_184","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_12_1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_SABR_Pipeline_VITIS_LOOP_17_2_fu_194","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_17_2","ID" : "4","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_pow_generic_double_s_fu_920","ID" : "5","Type" : "pipeline"},]},]},]
}]}