# This script segment is generated automatically by AutoPilot

set name SABR_dadddsub_64ns_64ns_64_5_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dsub} IMPL {fulldsp} LATENCY 4 ALLOW_PRAGMA 1
}


set name SABR_dmul_64ns_64ns_64_5_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dmul} IMPL {maxdsp} LATENCY 4 ALLOW_PRAGMA 1
}


set name SABR_ddiv_64ns_64ns_64_22_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {ddiv} IMPL {fabric} LATENCY 21 ALLOW_PRAGMA 1
}


set name SABR_dsqrt_64ns_64ns_64_21_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dsqrt} IMPL {fabric} LATENCY 20 ALLOW_PRAGMA 1
}


set name SABR_dexp_64ns_64ns_64_12_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dexp} IMPL {fulldsp} LATENCY 11 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_0_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_1_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_2_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_3_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_4_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_5_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_6_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_7_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_8_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_9_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_10_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_11_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_12_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_13_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_14_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_15_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_16_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_17_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_18_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_19_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_20_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_21_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_22_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_23_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_24_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_25_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_26_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_27_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_28_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_29_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_30_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_31_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_32_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_33_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_34_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_35_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_36_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_37_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_38_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_39_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_40_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_41_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_42_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_43_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_44_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_45_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_46_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_47_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_48_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_49_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_50_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_51_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_52_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_53_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_54_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_55_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_56_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_57_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_58_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_59_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_60_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_61_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_62_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_63_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_64_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_65_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_66_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_67_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_68_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_69_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_70_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_71_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_72_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_73_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_74_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_75_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_76_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_77_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_78_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_79_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_80_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_81_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_82_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_83_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_84_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_85_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_86_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_87_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_88_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_89_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_90_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_91_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_92_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_93_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_94_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_95_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_96_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_97_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_98_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_gmem_99_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
S_0 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
S_1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
S_2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
S_3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
S_4 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
S_5 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
S_6 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
S_7 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
S_8 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
S_9 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
}
S_10 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 136
	offset_end 147
}
S_11 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 148
	offset_end 159
}
S_12 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 160
	offset_end 171
}
S_13 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 172
	offset_end 183
}
S_14 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 184
	offset_end 195
}
S_15 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 196
	offset_end 207
}
S_16 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 208
	offset_end 219
}
S_17 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 220
	offset_end 231
}
S_18 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 232
	offset_end 243
}
S_19 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 244
	offset_end 255
}
S_20 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 256
	offset_end 267
}
S_21 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 268
	offset_end 279
}
S_22 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 280
	offset_end 291
}
S_23 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 292
	offset_end 303
}
S_24 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 304
	offset_end 315
}
S_25 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 316
	offset_end 327
}
S_26 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 328
	offset_end 339
}
S_27 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 340
	offset_end 351
}
S_28 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 352
	offset_end 363
}
S_29 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 364
	offset_end 375
}
S_30 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 376
	offset_end 387
}
S_31 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 388
	offset_end 399
}
S_32 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 400
	offset_end 411
}
S_33 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 412
	offset_end 423
}
S_34 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 424
	offset_end 435
}
S_35 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 436
	offset_end 447
}
S_36 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 448
	offset_end 459
}
S_37 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 460
	offset_end 471
}
S_38 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 472
	offset_end 483
}
S_39 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 484
	offset_end 495
}
S_40 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 496
	offset_end 507
}
S_41 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 508
	offset_end 519
}
S_42 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 520
	offset_end 531
}
S_43 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 532
	offset_end 543
}
S_44 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 544
	offset_end 555
}
S_45 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 556
	offset_end 567
}
S_46 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 568
	offset_end 579
}
S_47 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 580
	offset_end 591
}
S_48 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 592
	offset_end 603
}
S_49 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 604
	offset_end 615
}
S_50 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 616
	offset_end 627
}
S_51 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 628
	offset_end 639
}
S_52 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 640
	offset_end 651
}
S_53 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 652
	offset_end 663
}
S_54 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 664
	offset_end 675
}
S_55 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 676
	offset_end 687
}
S_56 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 688
	offset_end 699
}
S_57 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 700
	offset_end 711
}
S_58 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 712
	offset_end 723
}
S_59 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 724
	offset_end 735
}
S_60 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 736
	offset_end 747
}
S_61 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 748
	offset_end 759
}
S_62 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 760
	offset_end 771
}
S_63 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 772
	offset_end 783
}
S_64 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 784
	offset_end 795
}
S_65 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 796
	offset_end 807
}
S_66 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 808
	offset_end 819
}
S_67 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 820
	offset_end 831
}
S_68 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 832
	offset_end 843
}
S_69 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 844
	offset_end 855
}
S_70 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 856
	offset_end 867
}
S_71 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 868
	offset_end 879
}
S_72 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 880
	offset_end 891
}
S_73 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 892
	offset_end 903
}
S_74 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 904
	offset_end 915
}
S_75 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 916
	offset_end 927
}
S_76 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 928
	offset_end 939
}
S_77 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 940
	offset_end 951
}
S_78 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 952
	offset_end 963
}
S_79 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 964
	offset_end 975
}
S_80 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 976
	offset_end 987
}
S_81 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 988
	offset_end 999
}
S_82 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1000
	offset_end 1011
}
S_83 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1012
	offset_end 1023
}
S_84 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1024
	offset_end 1035
}
S_85 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1036
	offset_end 1047
}
S_86 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1048
	offset_end 1059
}
S_87 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1060
	offset_end 1071
}
S_88 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1072
	offset_end 1083
}
S_89 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1084
	offset_end 1095
}
S_90 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1096
	offset_end 1107
}
S_91 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1108
	offset_end 1119
}
S_92 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1120
	offset_end 1131
}
S_93 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1132
	offset_end 1143
}
S_94 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1144
	offset_end 1155
}
S_95 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1156
	offset_end 1167
}
S_96 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1168
	offset_end 1179
}
S_97 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1180
	offset_end 1191
}
S_98 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1192
	offset_end 1203
}
S_99 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1204
	offset_end 1215
}
V_0 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1216
	offset_end 1227
}
V_1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1228
	offset_end 1239
}
V_2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1240
	offset_end 1251
}
V_3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1252
	offset_end 1263
}
V_4 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1264
	offset_end 1275
}
V_5 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1276
	offset_end 1287
}
V_6 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1288
	offset_end 1299
}
V_7 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1300
	offset_end 1311
}
V_8 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1312
	offset_end 1323
}
V_9 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1324
	offset_end 1335
}
V_10 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1336
	offset_end 1347
}
V_11 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1348
	offset_end 1359
}
V_12 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1360
	offset_end 1371
}
V_13 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1372
	offset_end 1383
}
V_14 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1384
	offset_end 1395
}
V_15 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1396
	offset_end 1407
}
V_16 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1408
	offset_end 1419
}
V_17 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1420
	offset_end 1431
}
V_18 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1432
	offset_end 1443
}
V_19 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1444
	offset_end 1455
}
V_20 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1456
	offset_end 1467
}
V_21 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1468
	offset_end 1479
}
V_22 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1480
	offset_end 1491
}
V_23 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1492
	offset_end 1503
}
V_24 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1504
	offset_end 1515
}
V_25 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1516
	offset_end 1527
}
V_26 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1528
	offset_end 1539
}
V_27 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1540
	offset_end 1551
}
V_28 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1552
	offset_end 1563
}
V_29 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1564
	offset_end 1575
}
V_30 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1576
	offset_end 1587
}
V_31 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1588
	offset_end 1599
}
V_32 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1600
	offset_end 1611
}
V_33 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1612
	offset_end 1623
}
V_34 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1624
	offset_end 1635
}
V_35 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1636
	offset_end 1647
}
V_36 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1648
	offset_end 1659
}
V_37 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1660
	offset_end 1671
}
V_38 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1672
	offset_end 1683
}
V_39 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1684
	offset_end 1695
}
V_40 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1696
	offset_end 1707
}
V_41 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1708
	offset_end 1719
}
V_42 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1720
	offset_end 1731
}
V_43 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1732
	offset_end 1743
}
V_44 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1744
	offset_end 1755
}
V_45 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1756
	offset_end 1767
}
V_46 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1768
	offset_end 1779
}
V_47 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1780
	offset_end 1791
}
V_48 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1792
	offset_end 1803
}
V_49 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1804
	offset_end 1815
}
V_50 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1816
	offset_end 1827
}
V_51 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1828
	offset_end 1839
}
V_52 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1840
	offset_end 1851
}
V_53 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1852
	offset_end 1863
}
V_54 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1864
	offset_end 1875
}
V_55 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1876
	offset_end 1887
}
V_56 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1888
	offset_end 1899
}
V_57 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1900
	offset_end 1911
}
V_58 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1912
	offset_end 1923
}
V_59 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1924
	offset_end 1935
}
V_60 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1936
	offset_end 1947
}
V_61 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1948
	offset_end 1959
}
V_62 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1960
	offset_end 1971
}
V_63 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1972
	offset_end 1983
}
V_64 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1984
	offset_end 1995
}
V_65 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 1996
	offset_end 2007
}
V_66 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2008
	offset_end 2019
}
V_67 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2020
	offset_end 2031
}
V_68 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2032
	offset_end 2043
}
V_69 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2044
	offset_end 2055
}
V_70 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2056
	offset_end 2067
}
V_71 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2068
	offset_end 2079
}
V_72 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2080
	offset_end 2091
}
V_73 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2092
	offset_end 2103
}
V_74 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2104
	offset_end 2115
}
V_75 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2116
	offset_end 2127
}
V_76 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2128
	offset_end 2139
}
V_77 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2140
	offset_end 2151
}
V_78 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2152
	offset_end 2163
}
V_79 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2164
	offset_end 2175
}
V_80 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2176
	offset_end 2187
}
V_81 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2188
	offset_end 2199
}
V_82 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2200
	offset_end 2211
}
V_83 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2212
	offset_end 2223
}
V_84 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2224
	offset_end 2235
}
V_85 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2236
	offset_end 2247
}
V_86 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2248
	offset_end 2259
}
V_87 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2260
	offset_end 2271
}
V_88 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2272
	offset_end 2283
}
V_89 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2284
	offset_end 2295
}
V_90 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2296
	offset_end 2307
}
V_91 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2308
	offset_end 2319
}
V_92 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2320
	offset_end 2331
}
V_93 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2332
	offset_end 2343
}
V_94 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2344
	offset_end 2355
}
V_95 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2356
	offset_end 2367
}
V_96 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2368
	offset_end 2379
}
V_97 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2380
	offset_end 2391
}
V_98 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2392
	offset_end 2403
}
V_99 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2404
	offset_end 2415
}
S0 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2416
	offset_end 2427
}
r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2428
	offset_end 2439
}
sigma_init { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2440
	offset_end 2451
}
alpha { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2452
	offset_end 2463
}
beta { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2464
	offset_end 2475
}
rho { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2476
	offset_end 2487
}
T { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2488
	offset_end 2499
}
random_increments_0 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2500
	offset_end 2511
}
random_increments_1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2512
	offset_end 2523
}
random_increments_2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2524
	offset_end 2535
}
random_increments_3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2536
	offset_end 2547
}
random_increments_4 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2548
	offset_end 2559
}
random_increments_5 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2560
	offset_end 2571
}
random_increments_6 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2572
	offset_end 2583
}
random_increments_7 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2584
	offset_end 2595
}
random_increments_8 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2596
	offset_end 2607
}
random_increments_9 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2608
	offset_end 2619
}
random_increments_10 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2620
	offset_end 2631
}
random_increments_11 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2632
	offset_end 2643
}
random_increments_12 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2644
	offset_end 2655
}
random_increments_13 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2656
	offset_end 2667
}
random_increments_14 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2668
	offset_end 2679
}
random_increments_15 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2680
	offset_end 2691
}
random_increments_16 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2692
	offset_end 2703
}
random_increments_17 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2704
	offset_end 2715
}
random_increments_18 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2716
	offset_end 2727
}
random_increments_19 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2728
	offset_end 2739
}
random_increments_20 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2740
	offset_end 2751
}
random_increments_21 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2752
	offset_end 2763
}
random_increments_22 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2764
	offset_end 2775
}
random_increments_23 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2776
	offset_end 2787
}
random_increments_24 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2788
	offset_end 2799
}
random_increments_25 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2800
	offset_end 2811
}
random_increments_26 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2812
	offset_end 2823
}
random_increments_27 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2824
	offset_end 2835
}
random_increments_28 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2836
	offset_end 2847
}
random_increments_29 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2848
	offset_end 2859
}
random_increments_30 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2860
	offset_end 2871
}
random_increments_31 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2872
	offset_end 2883
}
random_increments_32 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2884
	offset_end 2895
}
random_increments_33 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2896
	offset_end 2907
}
random_increments_34 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2908
	offset_end 2919
}
random_increments_35 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2920
	offset_end 2931
}
random_increments_36 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2932
	offset_end 2943
}
random_increments_37 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2944
	offset_end 2955
}
random_increments_38 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2956
	offset_end 2967
}
random_increments_39 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2968
	offset_end 2979
}
random_increments_40 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2980
	offset_end 2991
}
random_increments_41 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 2992
	offset_end 3003
}
random_increments_42 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3004
	offset_end 3015
}
random_increments_43 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3016
	offset_end 3027
}
random_increments_44 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3028
	offset_end 3039
}
random_increments_45 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3040
	offset_end 3051
}
random_increments_46 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3052
	offset_end 3063
}
random_increments_47 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3064
	offset_end 3075
}
random_increments_48 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3076
	offset_end 3087
}
random_increments_49 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3088
	offset_end 3099
}
random_increments_50 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3100
	offset_end 3111
}
random_increments_51 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3112
	offset_end 3123
}
random_increments_52 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3124
	offset_end 3135
}
random_increments_53 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3136
	offset_end 3147
}
random_increments_54 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3148
	offset_end 3159
}
random_increments_55 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3160
	offset_end 3171
}
random_increments_56 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3172
	offset_end 3183
}
random_increments_57 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3184
	offset_end 3195
}
random_increments_58 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3196
	offset_end 3207
}
random_increments_59 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3208
	offset_end 3219
}
random_increments_60 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3220
	offset_end 3231
}
random_increments_61 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3232
	offset_end 3243
}
random_increments_62 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3244
	offset_end 3255
}
random_increments_63 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3256
	offset_end 3267
}
random_increments_64 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3268
	offset_end 3279
}
random_increments_65 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3280
	offset_end 3291
}
random_increments_66 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3292
	offset_end 3303
}
random_increments_67 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3304
	offset_end 3315
}
random_increments_68 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3316
	offset_end 3327
}
random_increments_69 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3328
	offset_end 3339
}
random_increments_70 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3340
	offset_end 3351
}
random_increments_71 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3352
	offset_end 3363
}
random_increments_72 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3364
	offset_end 3375
}
random_increments_73 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3376
	offset_end 3387
}
random_increments_74 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3388
	offset_end 3399
}
random_increments_75 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3400
	offset_end 3411
}
random_increments_76 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3412
	offset_end 3423
}
random_increments_77 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3424
	offset_end 3435
}
random_increments_78 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3436
	offset_end 3447
}
random_increments_79 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3448
	offset_end 3459
}
random_increments_80 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3460
	offset_end 3471
}
random_increments_81 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3472
	offset_end 3483
}
random_increments_82 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3484
	offset_end 3495
}
random_increments_83 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3496
	offset_end 3507
}
random_increments_84 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3508
	offset_end 3519
}
random_increments_85 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3520
	offset_end 3531
}
random_increments_86 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3532
	offset_end 3543
}
random_increments_87 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3544
	offset_end 3555
}
random_increments_88 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3556
	offset_end 3567
}
random_increments_89 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3568
	offset_end 3579
}
random_increments_90 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3580
	offset_end 3591
}
random_increments_91 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3592
	offset_end 3603
}
random_increments_92 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3604
	offset_end 3615
}
random_increments_93 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3616
	offset_end 3627
}
random_increments_94 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3628
	offset_end 3639
}
random_increments_95 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3640
	offset_end 3651
}
random_increments_96 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3652
	offset_end 3663
}
random_increments_97 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3664
	offset_end 3675
}
random_increments_98 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3676
	offset_end 3687
}
random_increments_99 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 3688
	offset_end 3699
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 1666 \
			corename SABR_control_axilite \
			name SABR_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler SABR_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


