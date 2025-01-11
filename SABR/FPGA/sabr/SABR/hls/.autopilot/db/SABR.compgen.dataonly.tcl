# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
S { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
S0 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
sigma_init { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
alpha { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
beta { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
rho { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
T { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
random_increments { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
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


