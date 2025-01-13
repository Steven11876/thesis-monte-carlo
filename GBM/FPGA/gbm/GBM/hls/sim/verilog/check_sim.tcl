# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
# Tool Version Limit: 2024.11
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
proc sc_sim_check {ret err logfile} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        while {[gets $fl line] >= 0} {
            if {[string first "AESL_mErrNo = " $line] == 0} {
                set mismatch_num [string range $line [string length "AESL_mErrNo = "] end]
                if {$mismatch_num != 0} {
                    ::AP::printMsg ERR COSIM 403 COSIM_403_986 ${mismatch_num}
                    break
                }
            }
        }
    }
    if {$ret || $err != ""} {
        if { [lindex $::errorCode 0] eq "CHILDSTATUS"} {
            set status [lindex $::errorCode 2]
            if {$status != ""} {
                ::AP::printMsg ERR COSIM 404 COSIM_404_987 $status
            } else {
                ::AP::printMsg ERR COSIM 405 COSIM_405_988
            }
        } else {
            ::AP::printMsg ERR COSIM 405 COSIM_405_989
        }
    }
    if {[file exists $logfile]} {
        set cmdret [catch {eval exec "grep \"Error:\" $logfile"} err]
        file delete -force $logfile
        if {$cmdret == 0} {
            ::AP::printMsg ERR COSIM 405 COSIM_405_990
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc rtl_sim_check {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        set unmatch_num 0
        while {[gets $fl line] >= 0} {
            if {[string first "unmatched" $line] != -1} {
                set unmatch_num [expr $unmatch_num + 1]
            }
        }
        if {$unmatch_num != 0} {
            ::AP::printMsg ERR COSIM 406 COSIM_406_991 ${unmatch_num}
        }
    }
    if {[file exists ".aesl_error"]} {
        set errfl [open ".aesl_error" r]
        gets $errfl line
        if {$line != 0} {
            ::AP::printMsg ERR COSIM 407 COSIM_407_992 $line
        }
    }
    if {[file exists ".exit.err"]} {
        ::AP::printMsg ERR COSIM 405 COSIM_405_993
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc check_tvin_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "c.GBM.autotvin_gmem_0.dat"
         "c.GBM.autotvin_gmem_1.dat"
         "c.GBM.autotvin_gmem_2.dat"
         "c.GBM.autotvin_gmem_3.dat"
         "c.GBM.autotvin_gmem_4.dat"
         "c.GBM.autotvin_gmem_5.dat"
         "c.GBM.autotvin_gmem_6.dat"
         "c.GBM.autotvin_gmem_7.dat"
         "c.GBM.autotvin_gmem_8.dat"
         "c.GBM.autotvin_gmem_9.dat"
         "c.GBM.autotvin_gmem_10.dat"
         "c.GBM.autotvin_gmem_11.dat"
         "c.GBM.autotvin_gmem_12.dat"
         "c.GBM.autotvin_gmem_13.dat"
         "c.GBM.autotvin_gmem_14.dat"
         "c.GBM.autotvin_gmem_15.dat"
         "c.GBM.autotvin_gmem_16.dat"
         "c.GBM.autotvin_gmem_17.dat"
         "c.GBM.autotvin_gmem_18.dat"
         "c.GBM.autotvin_gmem_19.dat"
         "c.GBM.autotvin_gmem_20.dat"
         "c.GBM.autotvin_gmem_21.dat"
         "c.GBM.autotvin_gmem_22.dat"
         "c.GBM.autotvin_gmem_23.dat"
         "c.GBM.autotvin_gmem_24.dat"
         "c.GBM.autotvin_gmem_25.dat"
         "c.GBM.autotvin_gmem_26.dat"
         "c.GBM.autotvin_gmem_27.dat"
         "c.GBM.autotvin_gmem_28.dat"
         "c.GBM.autotvin_gmem_29.dat"
         "c.GBM.autotvin_gmem_30.dat"
         "c.GBM.autotvin_gmem_31.dat"
         "c.GBM.autotvin_gmem_32.dat"
         "c.GBM.autotvin_gmem_33.dat"
         "c.GBM.autotvin_gmem_34.dat"
         "c.GBM.autotvin_gmem_35.dat"
         "c.GBM.autotvin_gmem_36.dat"
         "c.GBM.autotvin_gmem_37.dat"
         "c.GBM.autotvin_gmem_38.dat"
         "c.GBM.autotvin_gmem_39.dat"
         "c.GBM.autotvin_gmem_40.dat"
         "c.GBM.autotvin_gmem_41.dat"
         "c.GBM.autotvin_gmem_42.dat"
         "c.GBM.autotvin_gmem_43.dat"
         "c.GBM.autotvin_gmem_44.dat"
         "c.GBM.autotvin_gmem_45.dat"
         "c.GBM.autotvin_gmem_46.dat"
         "c.GBM.autotvin_gmem_47.dat"
         "c.GBM.autotvin_gmem_48.dat"
         "c.GBM.autotvin_gmem_49.dat"
         "c.GBM.autotvin_gmem_50.dat"
         "c.GBM.autotvin_gmem_51.dat"
         "c.GBM.autotvin_gmem_52.dat"
         "c.GBM.autotvin_gmem_53.dat"
         "c.GBM.autotvin_gmem_54.dat"
         "c.GBM.autotvin_gmem_55.dat"
         "c.GBM.autotvin_gmem_56.dat"
         "c.GBM.autotvin_gmem_57.dat"
         "c.GBM.autotvin_gmem_58.dat"
         "c.GBM.autotvin_gmem_59.dat"
         "c.GBM.autotvin_gmem_60.dat"
         "c.GBM.autotvin_gmem_61.dat"
         "c.GBM.autotvin_gmem_62.dat"
         "c.GBM.autotvin_gmem_63.dat"
         "c.GBM.autotvin_gmem_64.dat"
         "c.GBM.autotvin_gmem_65.dat"
         "c.GBM.autotvin_gmem_66.dat"
         "c.GBM.autotvin_gmem_67.dat"
         "c.GBM.autotvin_gmem_68.dat"
         "c.GBM.autotvin_gmem_69.dat"
         "c.GBM.autotvin_gmem_70.dat"
         "c.GBM.autotvin_gmem_71.dat"
         "c.GBM.autotvin_gmem_72.dat"
         "c.GBM.autotvin_gmem_73.dat"
         "c.GBM.autotvin_gmem_74.dat"
         "c.GBM.autotvin_gmem_75.dat"
         "c.GBM.autotvin_gmem_76.dat"
         "c.GBM.autotvin_gmem_77.dat"
         "c.GBM.autotvin_gmem_78.dat"
         "c.GBM.autotvin_gmem_79.dat"
         "c.GBM.autotvin_gmem_80.dat"
         "c.GBM.autotvin_gmem_81.dat"
         "c.GBM.autotvin_gmem_82.dat"
         "c.GBM.autotvin_gmem_83.dat"
         "c.GBM.autotvin_gmem_84.dat"
         "c.GBM.autotvin_gmem_85.dat"
         "c.GBM.autotvin_gmem_86.dat"
         "c.GBM.autotvin_gmem_87.dat"
         "c.GBM.autotvin_gmem_88.dat"
         "c.GBM.autotvin_gmem_89.dat"
         "c.GBM.autotvin_gmem_90.dat"
         "c.GBM.autotvin_gmem_91.dat"
         "c.GBM.autotvin_gmem_92.dat"
         "c.GBM.autotvin_gmem_93.dat"
         "c.GBM.autotvin_gmem_94.dat"
         "c.GBM.autotvin_gmem_95.dat"
         "c.GBM.autotvin_gmem_96.dat"
         "c.GBM.autotvin_gmem_97.dat"
         "c.GBM.autotvin_gmem_98.dat"
         "c.GBM.autotvin_gmem_99.dat"
         "c.GBM.autotvin_S_0.dat"
         "c.GBM.autotvin_S_1.dat"
         "c.GBM.autotvin_S_2.dat"
         "c.GBM.autotvin_S_3.dat"
         "c.GBM.autotvin_S_4.dat"
         "c.GBM.autotvin_S_5.dat"
         "c.GBM.autotvin_S_6.dat"
         "c.GBM.autotvin_S_7.dat"
         "c.GBM.autotvin_S_8.dat"
         "c.GBM.autotvin_S_9.dat"
         "c.GBM.autotvin_S_10.dat"
         "c.GBM.autotvin_S_11.dat"
         "c.GBM.autotvin_S_12.dat"
         "c.GBM.autotvin_S_13.dat"
         "c.GBM.autotvin_S_14.dat"
         "c.GBM.autotvin_S_15.dat"
         "c.GBM.autotvin_S_16.dat"
         "c.GBM.autotvin_S_17.dat"
         "c.GBM.autotvin_S_18.dat"
         "c.GBM.autotvin_S_19.dat"
         "c.GBM.autotvin_S_20.dat"
         "c.GBM.autotvin_S_21.dat"
         "c.GBM.autotvin_S_22.dat"
         "c.GBM.autotvin_S_23.dat"
         "c.GBM.autotvin_S_24.dat"
         "c.GBM.autotvin_S_25.dat"
         "c.GBM.autotvin_S_26.dat"
         "c.GBM.autotvin_S_27.dat"
         "c.GBM.autotvin_S_28.dat"
         "c.GBM.autotvin_S_29.dat"
         "c.GBM.autotvin_S_30.dat"
         "c.GBM.autotvin_S_31.dat"
         "c.GBM.autotvin_S_32.dat"
         "c.GBM.autotvin_S_33.dat"
         "c.GBM.autotvin_S_34.dat"
         "c.GBM.autotvin_S_35.dat"
         "c.GBM.autotvin_S_36.dat"
         "c.GBM.autotvin_S_37.dat"
         "c.GBM.autotvin_S_38.dat"
         "c.GBM.autotvin_S_39.dat"
         "c.GBM.autotvin_S_40.dat"
         "c.GBM.autotvin_S_41.dat"
         "c.GBM.autotvin_S_42.dat"
         "c.GBM.autotvin_S_43.dat"
         "c.GBM.autotvin_S_44.dat"
         "c.GBM.autotvin_S_45.dat"
         "c.GBM.autotvin_S_46.dat"
         "c.GBM.autotvin_S_47.dat"
         "c.GBM.autotvin_S_48.dat"
         "c.GBM.autotvin_S_49.dat"
         "c.GBM.autotvin_S_50.dat"
         "c.GBM.autotvin_S_51.dat"
         "c.GBM.autotvin_S_52.dat"
         "c.GBM.autotvin_S_53.dat"
         "c.GBM.autotvin_S_54.dat"
         "c.GBM.autotvin_S_55.dat"
         "c.GBM.autotvin_S_56.dat"
         "c.GBM.autotvin_S_57.dat"
         "c.GBM.autotvin_S_58.dat"
         "c.GBM.autotvin_S_59.dat"
         "c.GBM.autotvin_S_60.dat"
         "c.GBM.autotvin_S_61.dat"
         "c.GBM.autotvin_S_62.dat"
         "c.GBM.autotvin_S_63.dat"
         "c.GBM.autotvin_S_64.dat"
         "c.GBM.autotvin_S_65.dat"
         "c.GBM.autotvin_S_66.dat"
         "c.GBM.autotvin_S_67.dat"
         "c.GBM.autotvin_S_68.dat"
         "c.GBM.autotvin_S_69.dat"
         "c.GBM.autotvin_S_70.dat"
         "c.GBM.autotvin_S_71.dat"
         "c.GBM.autotvin_S_72.dat"
         "c.GBM.autotvin_S_73.dat"
         "c.GBM.autotvin_S_74.dat"
         "c.GBM.autotvin_S_75.dat"
         "c.GBM.autotvin_S_76.dat"
         "c.GBM.autotvin_S_77.dat"
         "c.GBM.autotvin_S_78.dat"
         "c.GBM.autotvin_S_79.dat"
         "c.GBM.autotvin_S_80.dat"
         "c.GBM.autotvin_S_81.dat"
         "c.GBM.autotvin_S_82.dat"
         "c.GBM.autotvin_S_83.dat"
         "c.GBM.autotvin_S_84.dat"
         "c.GBM.autotvin_S_85.dat"
         "c.GBM.autotvin_S_86.dat"
         "c.GBM.autotvin_S_87.dat"
         "c.GBM.autotvin_S_88.dat"
         "c.GBM.autotvin_S_89.dat"
         "c.GBM.autotvin_S_90.dat"
         "c.GBM.autotvin_S_91.dat"
         "c.GBM.autotvin_S_92.dat"
         "c.GBM.autotvin_S_93.dat"
         "c.GBM.autotvin_S_94.dat"
         "c.GBM.autotvin_S_95.dat"
         "c.GBM.autotvin_S_96.dat"
         "c.GBM.autotvin_S_97.dat"
         "c.GBM.autotvin_S_98.dat"
         "c.GBM.autotvin_S_99.dat"
         "c.GBM.autotvin_S0.dat"
         "c.GBM.autotvin_r.dat"
         "c.GBM.autotvin_sigma.dat"
         "c.GBM.autotvin_T.dat"
         "c.GBM.autotvin_random_increments_0.dat"
         "c.GBM.autotvin_random_increments_1.dat"
         "c.GBM.autotvin_random_increments_2.dat"
         "c.GBM.autotvin_random_increments_3.dat"
         "c.GBM.autotvin_random_increments_4.dat"
         "c.GBM.autotvin_random_increments_5.dat"
         "c.GBM.autotvin_random_increments_6.dat"
         "c.GBM.autotvin_random_increments_7.dat"
         "c.GBM.autotvin_random_increments_8.dat"
         "c.GBM.autotvin_random_increments_9.dat"
         "c.GBM.autotvin_random_increments_10.dat"
         "c.GBM.autotvin_random_increments_11.dat"
         "c.GBM.autotvin_random_increments_12.dat"
         "c.GBM.autotvin_random_increments_13.dat"
         "c.GBM.autotvin_random_increments_14.dat"
         "c.GBM.autotvin_random_increments_15.dat"
         "c.GBM.autotvin_random_increments_16.dat"
         "c.GBM.autotvin_random_increments_17.dat"
         "c.GBM.autotvin_random_increments_18.dat"
         "c.GBM.autotvin_random_increments_19.dat"
         "c.GBM.autotvin_random_increments_20.dat"
         "c.GBM.autotvin_random_increments_21.dat"
         "c.GBM.autotvin_random_increments_22.dat"
         "c.GBM.autotvin_random_increments_23.dat"
         "c.GBM.autotvin_random_increments_24.dat"
         "c.GBM.autotvin_random_increments_25.dat"
         "c.GBM.autotvin_random_increments_26.dat"
         "c.GBM.autotvin_random_increments_27.dat"
         "c.GBM.autotvin_random_increments_28.dat"
         "c.GBM.autotvin_random_increments_29.dat"
         "c.GBM.autotvin_random_increments_30.dat"
         "c.GBM.autotvin_random_increments_31.dat"
         "c.GBM.autotvin_random_increments_32.dat"
         "c.GBM.autotvin_random_increments_33.dat"
         "c.GBM.autotvin_random_increments_34.dat"
         "c.GBM.autotvin_random_increments_35.dat"
         "c.GBM.autotvin_random_increments_36.dat"
         "c.GBM.autotvin_random_increments_37.dat"
         "c.GBM.autotvin_random_increments_38.dat"
         "c.GBM.autotvin_random_increments_39.dat"
         "c.GBM.autotvin_random_increments_40.dat"
         "c.GBM.autotvin_random_increments_41.dat"
         "c.GBM.autotvin_random_increments_42.dat"
         "c.GBM.autotvin_random_increments_43.dat"
         "c.GBM.autotvin_random_increments_44.dat"
         "c.GBM.autotvin_random_increments_45.dat"
         "c.GBM.autotvin_random_increments_46.dat"
         "c.GBM.autotvin_random_increments_47.dat"
         "c.GBM.autotvin_random_increments_48.dat"
         "c.GBM.autotvin_random_increments_49.dat"
         "c.GBM.autotvin_random_increments_50.dat"
         "c.GBM.autotvin_random_increments_51.dat"
         "c.GBM.autotvin_random_increments_52.dat"
         "c.GBM.autotvin_random_increments_53.dat"
         "c.GBM.autotvin_random_increments_54.dat"
         "c.GBM.autotvin_random_increments_55.dat"
         "c.GBM.autotvin_random_increments_56.dat"
         "c.GBM.autotvin_random_increments_57.dat"
         "c.GBM.autotvin_random_increments_58.dat"
         "c.GBM.autotvin_random_increments_59.dat"
         "c.GBM.autotvin_random_increments_60.dat"
         "c.GBM.autotvin_random_increments_61.dat"
         "c.GBM.autotvin_random_increments_62.dat"
         "c.GBM.autotvin_random_increments_63.dat"
         "c.GBM.autotvin_random_increments_64.dat"
         "c.GBM.autotvin_random_increments_65.dat"
         "c.GBM.autotvin_random_increments_66.dat"
         "c.GBM.autotvin_random_increments_67.dat"
         "c.GBM.autotvin_random_increments_68.dat"
         "c.GBM.autotvin_random_increments_69.dat"
         "c.GBM.autotvin_random_increments_70.dat"
         "c.GBM.autotvin_random_increments_71.dat"
         "c.GBM.autotvin_random_increments_72.dat"
         "c.GBM.autotvin_random_increments_73.dat"
         "c.GBM.autotvin_random_increments_74.dat"
         "c.GBM.autotvin_random_increments_75.dat"
         "c.GBM.autotvin_random_increments_76.dat"
         "c.GBM.autotvin_random_increments_77.dat"
         "c.GBM.autotvin_random_increments_78.dat"
         "c.GBM.autotvin_random_increments_79.dat"
         "c.GBM.autotvin_random_increments_80.dat"
         "c.GBM.autotvin_random_increments_81.dat"
         "c.GBM.autotvin_random_increments_82.dat"
         "c.GBM.autotvin_random_increments_83.dat"
         "c.GBM.autotvin_random_increments_84.dat"
         "c.GBM.autotvin_random_increments_85.dat"
         "c.GBM.autotvin_random_increments_86.dat"
         "c.GBM.autotvin_random_increments_87.dat"
         "c.GBM.autotvin_random_increments_88.dat"
         "c.GBM.autotvin_random_increments_89.dat"
         "c.GBM.autotvin_random_increments_90.dat"
         "c.GBM.autotvin_random_increments_91.dat"
         "c.GBM.autotvin_random_increments_92.dat"
         "c.GBM.autotvin_random_increments_93.dat"
         "c.GBM.autotvin_random_increments_94.dat"
         "c.GBM.autotvin_random_increments_95.dat"
         "c.GBM.autotvin_random_increments_96.dat"
         "c.GBM.autotvin_random_increments_97.dat"
         "c.GBM.autotvin_random_increments_98.dat"
         "c.GBM.autotvin_random_increments_99.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ::AP::printMsg ERR COSIM 320 COSIM_320_994
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}

proc check_tvout_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "rtl.GBM.autotvout_gmem_0.dat"
         "rtl.GBM.autotvout_gmem_1.dat"
         "rtl.GBM.autotvout_gmem_2.dat"
         "rtl.GBM.autotvout_gmem_3.dat"
         "rtl.GBM.autotvout_gmem_4.dat"
         "rtl.GBM.autotvout_gmem_5.dat"
         "rtl.GBM.autotvout_gmem_6.dat"
         "rtl.GBM.autotvout_gmem_7.dat"
         "rtl.GBM.autotvout_gmem_8.dat"
         "rtl.GBM.autotvout_gmem_9.dat"
         "rtl.GBM.autotvout_gmem_10.dat"
         "rtl.GBM.autotvout_gmem_11.dat"
         "rtl.GBM.autotvout_gmem_12.dat"
         "rtl.GBM.autotvout_gmem_13.dat"
         "rtl.GBM.autotvout_gmem_14.dat"
         "rtl.GBM.autotvout_gmem_15.dat"
         "rtl.GBM.autotvout_gmem_16.dat"
         "rtl.GBM.autotvout_gmem_17.dat"
         "rtl.GBM.autotvout_gmem_18.dat"
         "rtl.GBM.autotvout_gmem_19.dat"
         "rtl.GBM.autotvout_gmem_20.dat"
         "rtl.GBM.autotvout_gmem_21.dat"
         "rtl.GBM.autotvout_gmem_22.dat"
         "rtl.GBM.autotvout_gmem_23.dat"
         "rtl.GBM.autotvout_gmem_24.dat"
         "rtl.GBM.autotvout_gmem_25.dat"
         "rtl.GBM.autotvout_gmem_26.dat"
         "rtl.GBM.autotvout_gmem_27.dat"
         "rtl.GBM.autotvout_gmem_28.dat"
         "rtl.GBM.autotvout_gmem_29.dat"
         "rtl.GBM.autotvout_gmem_30.dat"
         "rtl.GBM.autotvout_gmem_31.dat"
         "rtl.GBM.autotvout_gmem_32.dat"
         "rtl.GBM.autotvout_gmem_33.dat"
         "rtl.GBM.autotvout_gmem_34.dat"
         "rtl.GBM.autotvout_gmem_35.dat"
         "rtl.GBM.autotvout_gmem_36.dat"
         "rtl.GBM.autotvout_gmem_37.dat"
         "rtl.GBM.autotvout_gmem_38.dat"
         "rtl.GBM.autotvout_gmem_39.dat"
         "rtl.GBM.autotvout_gmem_40.dat"
         "rtl.GBM.autotvout_gmem_41.dat"
         "rtl.GBM.autotvout_gmem_42.dat"
         "rtl.GBM.autotvout_gmem_43.dat"
         "rtl.GBM.autotvout_gmem_44.dat"
         "rtl.GBM.autotvout_gmem_45.dat"
         "rtl.GBM.autotvout_gmem_46.dat"
         "rtl.GBM.autotvout_gmem_47.dat"
         "rtl.GBM.autotvout_gmem_48.dat"
         "rtl.GBM.autotvout_gmem_49.dat"
         "rtl.GBM.autotvout_gmem_50.dat"
         "rtl.GBM.autotvout_gmem_51.dat"
         "rtl.GBM.autotvout_gmem_52.dat"
         "rtl.GBM.autotvout_gmem_53.dat"
         "rtl.GBM.autotvout_gmem_54.dat"
         "rtl.GBM.autotvout_gmem_55.dat"
         "rtl.GBM.autotvout_gmem_56.dat"
         "rtl.GBM.autotvout_gmem_57.dat"
         "rtl.GBM.autotvout_gmem_58.dat"
         "rtl.GBM.autotvout_gmem_59.dat"
         "rtl.GBM.autotvout_gmem_60.dat"
         "rtl.GBM.autotvout_gmem_61.dat"
         "rtl.GBM.autotvout_gmem_62.dat"
         "rtl.GBM.autotvout_gmem_63.dat"
         "rtl.GBM.autotvout_gmem_64.dat"
         "rtl.GBM.autotvout_gmem_65.dat"
         "rtl.GBM.autotvout_gmem_66.dat"
         "rtl.GBM.autotvout_gmem_67.dat"
         "rtl.GBM.autotvout_gmem_68.dat"
         "rtl.GBM.autotvout_gmem_69.dat"
         "rtl.GBM.autotvout_gmem_70.dat"
         "rtl.GBM.autotvout_gmem_71.dat"
         "rtl.GBM.autotvout_gmem_72.dat"
         "rtl.GBM.autotvout_gmem_73.dat"
         "rtl.GBM.autotvout_gmem_74.dat"
         "rtl.GBM.autotvout_gmem_75.dat"
         "rtl.GBM.autotvout_gmem_76.dat"
         "rtl.GBM.autotvout_gmem_77.dat"
         "rtl.GBM.autotvout_gmem_78.dat"
         "rtl.GBM.autotvout_gmem_79.dat"
         "rtl.GBM.autotvout_gmem_80.dat"
         "rtl.GBM.autotvout_gmem_81.dat"
         "rtl.GBM.autotvout_gmem_82.dat"
         "rtl.GBM.autotvout_gmem_83.dat"
         "rtl.GBM.autotvout_gmem_84.dat"
         "rtl.GBM.autotvout_gmem_85.dat"
         "rtl.GBM.autotvout_gmem_86.dat"
         "rtl.GBM.autotvout_gmem_87.dat"
         "rtl.GBM.autotvout_gmem_88.dat"
         "rtl.GBM.autotvout_gmem_89.dat"
         "rtl.GBM.autotvout_gmem_90.dat"
         "rtl.GBM.autotvout_gmem_91.dat"
         "rtl.GBM.autotvout_gmem_92.dat"
         "rtl.GBM.autotvout_gmem_93.dat"
         "rtl.GBM.autotvout_gmem_94.dat"
         "rtl.GBM.autotvout_gmem_95.dat"
         "rtl.GBM.autotvout_gmem_96.dat"
         "rtl.GBM.autotvout_gmem_97.dat"
         "rtl.GBM.autotvout_gmem_98.dat"
         "rtl.GBM.autotvout_gmem_99.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ::AP::printMsg ERR COSIM 303 COSIM_303_996
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}
