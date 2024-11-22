onerror {exit -code 1}
vlib work
vlog -work work Elevator.vo
vlog -work work Elevator.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Elevator_vlg_vec_tst -voptargs="+acc"
vcd file -direction Elevator.msim.vcd
vcd add -internal Elevator_vlg_vec_tst/*
vcd add -internal Elevator_vlg_vec_tst/i1/*
run -all
quit -f
