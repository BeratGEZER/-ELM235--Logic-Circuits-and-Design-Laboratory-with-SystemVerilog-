transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -sv -work work +incdir+. {lab4_g29_p3.svo}

vlog -sv -work work +incdir+D:/quartus_lab/lab4/lab4_g29_p3 {D:/quartus_lab/lab4/lab4_g29_p3/tb_alu.sv}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  tb_alu

add wave *
view structure
view signals
run -all
