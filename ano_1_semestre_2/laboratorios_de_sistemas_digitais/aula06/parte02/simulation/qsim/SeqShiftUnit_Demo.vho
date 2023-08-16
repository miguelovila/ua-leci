-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "04/21/2022 10:30:32"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	seqshiftunit IS
    PORT (
	datain : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	sileft : IN std_logic;
	siright : IN std_logic;
	loaden : IN std_logic;
	rotate : IN std_logic;
	dirleft : IN std_logic;
	sharith : IN std_logic;
	dataout : OUT std_logic_vector(7 DOWNTO 0)
	);
END seqshiftunit;

ARCHITECTURE structure OF seqshiftunit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_datain : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_sileft : std_logic;
SIGNAL ww_siright : std_logic;
SIGNAL ww_loaden : std_logic;
SIGNAL ww_rotate : std_logic;
SIGNAL ww_dirleft : std_logic;
SIGNAL ww_sharith : std_logic;
SIGNAL ww_dataout : std_logic_vector(7 DOWNTO 0);
SIGNAL \dataout[0]~output_o\ : std_logic;
SIGNAL \dataout[1]~output_o\ : std_logic;
SIGNAL \dataout[2]~output_o\ : std_logic;
SIGNAL \dataout[3]~output_o\ : std_logic;
SIGNAL \dataout[4]~output_o\ : std_logic;
SIGNAL \dataout[5]~output_o\ : std_logic;
SIGNAL \dataout[6]~output_o\ : std_logic;
SIGNAL \dataout[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \siright~input_o\ : std_logic;
SIGNAL \sharith~input_o\ : std_logic;
SIGNAL \dirleft~input_o\ : std_logic;
SIGNAL \s_shiftreg~10_combout\ : std_logic;
SIGNAL \s_shiftreg~11_combout\ : std_logic;
SIGNAL \rotate~input_o\ : std_logic;
SIGNAL \s_shiftreg[7]~7_combout\ : std_logic;
SIGNAL \datain[7]~input_o\ : std_logic;
SIGNAL \loaden~input_o\ : std_logic;
SIGNAL \s_shiftreg[6]~6_combout\ : std_logic;
SIGNAL \datain[6]~input_o\ : std_logic;
SIGNAL \s_shiftreg[1]~9_combout\ : std_logic;
SIGNAL \s_shiftreg[5]~5_combout\ : std_logic;
SIGNAL \datain[5]~input_o\ : std_logic;
SIGNAL \s_shiftreg[4]~4_combout\ : std_logic;
SIGNAL \datain[4]~input_o\ : std_logic;
SIGNAL \s_shiftreg[3]~3_combout\ : std_logic;
SIGNAL \datain[3]~input_o\ : std_logic;
SIGNAL \s_shiftreg[2]~2_combout\ : std_logic;
SIGNAL \datain[2]~input_o\ : std_logic;
SIGNAL \s_shiftreg[1]~1_combout\ : std_logic;
SIGNAL \datain[1]~input_o\ : std_logic;
SIGNAL \sileft~input_o\ : std_logic;
SIGNAL \s_shiftreg~8_combout\ : std_logic;
SIGNAL \s_shiftreg[0]~0_combout\ : std_logic;
SIGNAL \datain[0]~input_o\ : std_logic;
SIGNAL s_shiftreg : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk~input_o\ : std_logic;

BEGIN

ww_datain <= datain;
ww_clk <= clk;
ww_sileft <= sileft;
ww_siright <= siright;
ww_loaden <= loaden;
ww_rotate <= rotate;
ww_dirleft <= dirleft;
ww_sharith <= sharith;
dataout <= ww_dataout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;

\dataout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftreg(0),
	devoe => ww_devoe,
	o => \dataout[0]~output_o\);

\dataout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftreg(1),
	devoe => ww_devoe,
	o => \dataout[1]~output_o\);

\dataout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftreg(2),
	devoe => ww_devoe,
	o => \dataout[2]~output_o\);

\dataout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftreg(3),
	devoe => ww_devoe,
	o => \dataout[3]~output_o\);

\dataout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftreg(4),
	devoe => ww_devoe,
	o => \dataout[4]~output_o\);

\dataout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftreg(5),
	devoe => ww_devoe,
	o => \dataout[5]~output_o\);

\dataout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftreg(6),
	devoe => ww_devoe,
	o => \dataout[6]~output_o\);

\dataout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftreg(7),
	devoe => ww_devoe,
	o => \dataout[7]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\siright~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_siright,
	o => \siright~input_o\);

\sharith~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sharith,
	o => \sharith~input_o\);

\dirleft~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dirleft,
	o => \dirleft~input_o\);

\s_shiftreg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~10_combout\ = (\sharith~input_o\ & (s_shiftreg(7))) # (!\sharith~input_o\ & ((\dirleft~input_o\ & (s_shiftreg(7))) # (!\dirleft~input_o\ & ((\siright~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(7),
	datab => \siright~input_o\,
	datac => \sharith~input_o\,
	datad => \dirleft~input_o\,
	combout => \s_shiftreg~10_combout\);

\s_shiftreg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~11_combout\ = (\dirleft~input_o\ & (s_shiftreg(6))) # (!\dirleft~input_o\ & ((s_shiftreg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(6),
	datab => s_shiftreg(0),
	datad => \dirleft~input_o\,
	combout => \s_shiftreg~11_combout\);

\rotate~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rotate,
	o => \rotate~input_o\);

\s_shiftreg[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[7]~7_combout\ = (\rotate~input_o\ & ((\s_shiftreg~11_combout\))) # (!\rotate~input_o\ & (\s_shiftreg~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftreg~10_combout\,
	datab => \s_shiftreg~11_combout\,
	datad => \rotate~input_o\,
	combout => \s_shiftreg[7]~7_combout\);

\datain[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(7),
	o => \datain[7]~input_o\);

\loaden~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_loaden,
	o => \loaden~input_o\);

\s_shiftreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \s_shiftreg[7]~7_combout\,
	asdata => \datain[7]~input_o\,
	sload => \loaden~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftreg(7));

\s_shiftreg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[6]~6_combout\ = (\dirleft~input_o\ & ((s_shiftreg(5)))) # (!\dirleft~input_o\ & (s_shiftreg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(7),
	datab => s_shiftreg(5),
	datad => \dirleft~input_o\,
	combout => \s_shiftreg[6]~6_combout\);

\datain[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(6),
	o => \datain[6]~input_o\);

\s_shiftreg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[1]~9_combout\ = (\rotate~input_o\) # ((\loaden~input_o\) # (!\dirleft~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \loaden~input_o\,
	datad => \dirleft~input_o\,
	combout => \s_shiftreg[1]~9_combout\);

\s_shiftreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \s_shiftreg[6]~6_combout\,
	asdata => \datain[6]~input_o\,
	sload => \loaden~input_o\,
	ena => \s_shiftreg[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftreg(6));

\s_shiftreg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[5]~5_combout\ = (\dirleft~input_o\ & ((s_shiftreg(4)))) # (!\dirleft~input_o\ & (s_shiftreg(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(6),
	datab => s_shiftreg(4),
	datad => \dirleft~input_o\,
	combout => \s_shiftreg[5]~5_combout\);

\datain[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(5),
	o => \datain[5]~input_o\);

\s_shiftreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \s_shiftreg[5]~5_combout\,
	asdata => \datain[5]~input_o\,
	sload => \loaden~input_o\,
	ena => \s_shiftreg[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftreg(5));

\s_shiftreg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[4]~4_combout\ = (\dirleft~input_o\ & ((s_shiftreg(3)))) # (!\dirleft~input_o\ & (s_shiftreg(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(5),
	datab => s_shiftreg(3),
	datad => \dirleft~input_o\,
	combout => \s_shiftreg[4]~4_combout\);

\datain[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(4),
	o => \datain[4]~input_o\);

\s_shiftreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \s_shiftreg[4]~4_combout\,
	asdata => \datain[4]~input_o\,
	sload => \loaden~input_o\,
	ena => \s_shiftreg[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftreg(4));

\s_shiftreg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[3]~3_combout\ = (\dirleft~input_o\ & ((s_shiftreg(2)))) # (!\dirleft~input_o\ & (s_shiftreg(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(4),
	datab => s_shiftreg(2),
	datad => \dirleft~input_o\,
	combout => \s_shiftreg[3]~3_combout\);

\datain[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(3),
	o => \datain[3]~input_o\);

\s_shiftreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \s_shiftreg[3]~3_combout\,
	asdata => \datain[3]~input_o\,
	sload => \loaden~input_o\,
	ena => \s_shiftreg[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftreg(3));

\s_shiftreg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[2]~2_combout\ = (\dirleft~input_o\ & ((s_shiftreg(1)))) # (!\dirleft~input_o\ & (s_shiftreg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(3),
	datab => s_shiftreg(1),
	datad => \dirleft~input_o\,
	combout => \s_shiftreg[2]~2_combout\);

\datain[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(2),
	o => \datain[2]~input_o\);

\s_shiftreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \s_shiftreg[2]~2_combout\,
	asdata => \datain[2]~input_o\,
	sload => \loaden~input_o\,
	ena => \s_shiftreg[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftreg(2));

\s_shiftreg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[1]~1_combout\ = (\dirleft~input_o\ & ((s_shiftreg(0)))) # (!\dirleft~input_o\ & (s_shiftreg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(2),
	datab => s_shiftreg(0),
	datad => \dirleft~input_o\,
	combout => \s_shiftreg[1]~1_combout\);

\datain[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(1),
	o => \datain[1]~input_o\);

\s_shiftreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \s_shiftreg[1]~1_combout\,
	asdata => \datain[1]~input_o\,
	sload => \loaden~input_o\,
	ena => \s_shiftreg[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftreg(1));

\sileft~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sileft,
	o => \sileft~input_o\);

\s_shiftreg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~8_combout\ = (\rotate~input_o\ & (s_shiftreg(7))) # (!\rotate~input_o\ & (((\sileft~input_o\ & !\sharith~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(7),
	datab => \rotate~input_o\,
	datac => \sileft~input_o\,
	datad => \sharith~input_o\,
	combout => \s_shiftreg~8_combout\);

\s_shiftreg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[0]~0_combout\ = (\dirleft~input_o\ & ((\s_shiftreg~8_combout\))) # (!\dirleft~input_o\ & (s_shiftreg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(1),
	datab => \s_shiftreg~8_combout\,
	datad => \dirleft~input_o\,
	combout => \s_shiftreg[0]~0_combout\);

\datain[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(0),
	o => \datain[0]~input_o\);

\s_shiftreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \s_shiftreg[0]~0_combout\,
	asdata => \datain[0]~input_o\,
	sload => \loaden~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftreg(0));

ww_dataout(0) <= \dataout[0]~output_o\;

ww_dataout(1) <= \dataout[1]~output_o\;

ww_dataout(2) <= \dataout[2]~output_o\;

ww_dataout(3) <= \dataout[3]~output_o\;

ww_dataout(4) <= \dataout[4]~output_o\;

ww_dataout(5) <= \dataout[5]~output_o\;

ww_dataout(6) <= \dataout[6]~output_o\;

ww_dataout(7) <= \dataout[7]~output_o\;
END structure;


