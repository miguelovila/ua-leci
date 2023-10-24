transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/run/media/miguelovila/Expansion/Development/ua-leci/ano_1_semestre_2/laboratorio_de_sistemas_digitais/aula06/parte03/CombShiftUnit.vhd}
vcom -93 -work work {/run/media/miguelovila/Expansion/Development/ua-leci/ano_1_semestre_2/laboratorio_de_sistemas_digitais/aula06/parte03/CombShiftUnit_Demo.vhd}
vcom -93 -work work {/run/media/miguelovila/Expansion/Development/ua-leci/ano_1_semestre_2/laboratorio_de_sistemas_digitais/aula06/parte03/ClockDividerN.vhd}

