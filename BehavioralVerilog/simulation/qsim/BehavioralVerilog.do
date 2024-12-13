onerror {exit -code 1}
vlib work
vlog -work work BehavioralVerilog.vo
vlog -work work BasicBehavioralVerilog.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.BasicBehavioralVerilog_vlg_vec_tst -voptargs="+acc"
vcd file -direction BehavioralVerilog.msim.vcd
vcd add -internal BasicBehavioralVerilog_vlg_vec_tst/*
vcd add -internal BasicBehavioralVerilog_vlg_vec_tst/i1/*
run -all
quit -f
