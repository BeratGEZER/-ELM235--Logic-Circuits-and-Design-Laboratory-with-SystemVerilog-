transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/quartus_lab/lab4/lab4_g29_p3 {D:/quartus_lab/lab4/lab4_g29_p3/alu.sv}

vlog -sv -work work +incdir+D:/quartus_lab/lab4/lab4_g29_p3 {D:/quartus_lab/lab4/lab4_g29_p3/tb_alu.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb_alu

add wave *
view structure
view signals
run -all
