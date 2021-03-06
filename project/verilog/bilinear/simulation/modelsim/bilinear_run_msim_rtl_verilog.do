transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Lenovo/Desktop/signal/bilinear {C:/Users/Lenovo/Desktop/signal/bilinear/mem_control.v}
vlog -vlog01compat -work work +incdir+C:/Users/Lenovo/Desktop/signal/bilinear {C:/Users/Lenovo/Desktop/signal/bilinear/coordinate_trans.v}
vlog -vlog01compat -work work +incdir+C:/Users/Lenovo/Desktop/signal/bilinear {C:/Users/Lenovo/Desktop/signal/bilinear/bilinear_cal.v}
vlog -vlog01compat -work work +incdir+C:/Users/Lenovo/Desktop/signal/bilinear {C:/Users/Lenovo/Desktop/signal/bilinear/bilinear.v}
vlog -vlog01compat -work work +incdir+C:/Users/Lenovo/Desktop/signal/bilinear {C:/Users/Lenovo/Desktop/signal/bilinear/ram_control.v}

vlog -vlog01compat -work work +incdir+C:/Users/Lenovo/Desktop/signal/bilinear/simulation/modelsim {C:/Users/Lenovo/Desktop/signal/bilinear/simulation/modelsim/bilinear.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  bilinear_vlg_tst

add wave *
view structure
view signals
run -all
