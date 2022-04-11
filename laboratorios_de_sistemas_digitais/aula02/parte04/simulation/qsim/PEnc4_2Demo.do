onerror {exit -code 1}
vlib work
vcom -work work PEnc4_2Demo.vho
vcom -work work Penc4_2Sim.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.PEnc4_2_vhd_vec_tst
vcd file -direction PEnc4_2Demo.msim.vcd
vcd add -internal PEnc4_2_vhd_vec_tst/*
vcd add -internal PEnc4_2_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
