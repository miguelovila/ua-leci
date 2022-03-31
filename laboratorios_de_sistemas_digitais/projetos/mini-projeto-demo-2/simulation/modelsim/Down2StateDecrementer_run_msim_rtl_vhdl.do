transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/maomv/Repositories/laboratorio-de-sistemas-digitais/projetos/proj-demo-1/PulseGenerator2Hz.vhd}
vcom -93 -work work {/home/maomv/Repositories/laboratorio-de-sistemas-digitais/projetos/proj-demo-1/PulseGenerator1Hz.vhd}
vcom -93 -work work {/home/maomv/Repositories/laboratorio-de-sistemas-digitais/projetos/proj-demo-1/Down2StateDecrementer.vhd}
vcom -93 -work work {/home/maomv/Repositories/laboratorio-de-sistemas-digitais/projetos/proj-demo-1/DebounceUnit.vhd}
vcom -93 -work work {/home/maomv/Repositories/laboratorio-de-sistemas-digitais/projetos/proj-demo-1/Decrementer4Bit.vhd}
vcom -93 -work work {/home/maomv/Repositories/laboratorio-de-sistemas-digitais/projetos/proj-demo-1/Bin7SegDecoder.vhd}

