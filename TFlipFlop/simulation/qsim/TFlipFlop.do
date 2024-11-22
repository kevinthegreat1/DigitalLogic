onerror {exit -code 1}
vlib work
vlog -work work TFlipFlop.vo
vlog -work work BinaryCounter.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.BinaryCounter_vlg_vec_tst -voptargs="+acc"
vcd file -direction TFlipFlop.msim.vcd
vcd add -internal BinaryCounter_vlg_vec_tst/*
vcd add -internal BinaryCounter_vlg_vec_tst/i1/*
run -all
quit -f
