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

-- DATE "04/11/2022 09:52:35"

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

ENTITY 	counterupdown4 IS
    PORT (
	reset : IN std_logic;
	updow : IN std_logic;
	clock : IN std_logic;
	count : OUT std_logic_vector(3 DOWNTO 0)
	);
END counterupdown4;

ARCHITECTURE structure OF counterupdown4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_updow : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \snum~3_combout\ : std_logic;
SIGNAL \updow~input_o\ : std_logic;
SIGNAL \snum[1]~5_cout\ : std_logic;
SIGNAL \snum[1]~6_combout\ : std_logic;
SIGNAL \snum[1]~7\ : std_logic;
SIGNAL \snum[2]~8_combout\ : std_logic;
SIGNAL \snum[2]~9\ : std_logic;
SIGNAL \snum[3]~10_combout\ : std_logic;
SIGNAL snum : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_updow <= updow;
ww_clock <= clock;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => snum(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

\count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => snum(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

\count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => snum(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

\count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => snum(3),
	devoe => ww_devoe,
	o => \count[3]~output_o\);

\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\snum~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \snum~3_combout\ = (!snum(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => snum(0),
	datab => \reset~input_o\,
	combout => \snum~3_combout\);

\snum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \snum~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => snum(0));

\updow~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_updow,
	o => \updow~input_o\);

\snum[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \snum[1]~5_cout\ = CARRY(snum(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => snum(0),
	datad => VCC,
	cout => \snum[1]~5_cout\);

\snum[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \snum[1]~6_combout\ = (\updow~input_o\ & ((snum(1) & (\snum[1]~5_cout\ & VCC)) # (!snum(1) & (!\snum[1]~5_cout\)))) # (!\updow~input_o\ & ((snum(1) & (!\snum[1]~5_cout\)) # (!snum(1) & ((\snum[1]~5_cout\) # (GND)))))
-- \snum[1]~7\ = CARRY((\updow~input_o\ & (!snum(1) & !\snum[1]~5_cout\)) # (!\updow~input_o\ & ((!\snum[1]~5_cout\) # (!snum(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \updow~input_o\,
	datab => snum(1),
	datad => VCC,
	cin => \snum[1]~5_cout\,
	combout => \snum[1]~6_combout\,
	cout => \snum[1]~7\);

\snum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \snum[1]~6_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => snum(1));

\snum[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \snum[2]~8_combout\ = ((\updow~input_o\ $ (snum(2) $ (!\snum[1]~7\)))) # (GND)
-- \snum[2]~9\ = CARRY((\updow~input_o\ & ((snum(2)) # (!\snum[1]~7\))) # (!\updow~input_o\ & (snum(2) & !\snum[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \updow~input_o\,
	datab => snum(2),
	datad => VCC,
	cin => \snum[1]~7\,
	combout => \snum[2]~8_combout\,
	cout => \snum[2]~9\);

\snum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \snum[2]~8_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => snum(2));

\snum[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \snum[3]~10_combout\ = \updow~input_o\ $ (snum(3) $ (\snum[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \updow~input_o\,
	datab => snum(3),
	cin => \snum[2]~9\,
	combout => \snum[3]~10_combout\);

\snum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \snum[3]~10_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => snum(3));

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;
END structure;


