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

-- DATE "03/29/2022 14:51:49"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	addsub4 IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	sub : IN std_logic;
	sum : OUT std_logic_vector(3 DOWNTO 0);
	cout : OUT std_logic
	);
END addsub4;

ARCHITECTURE structure OF addsub4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sub : std_logic;
SIGNAL ww_sum : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \sum[0]~output_o\ : std_logic;
SIGNAL \sum[1]~output_o\ : std_logic;
SIGNAL \sum[2]~output_o\ : std_logic;
SIGNAL \sum[3]~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \adder|bit0|s~0_combout\ : std_logic;
SIGNAL \sub~input_o\ : std_logic;
SIGNAL \adder|bit0|cout~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \adder|bit1|s~1_cout\ : std_logic;
SIGNAL \adder|bit1|s~2_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \s_b[2]~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \adder|bit1|s~3\ : std_logic;
SIGNAL \adder|bit1|s~4_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \s_b[3]~1_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \adder|bit1|s~5\ : std_logic;
SIGNAL \adder|bit1|s~6_combout\ : std_logic;
SIGNAL \adder|bit1|s~7\ : std_logic;
SIGNAL \adder|bit1|s~8_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_sub <= sub;
sum <= ww_sum;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sum[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|bit0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[0]~output_o\);

\sum[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|bit1|s~2_combout\,
	devoe => ww_devoe,
	o => \sum[1]~output_o\);

\sum[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|bit1|s~4_combout\,
	devoe => ww_devoe,
	o => \sum[2]~output_o\);

\sum[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|bit1|s~6_combout\,
	devoe => ww_devoe,
	o => \sum[3]~output_o\);

\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|bit1|s~8_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

\adder|bit0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|bit0|s~0_combout\ = \a[0]~input_o\ $ (\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \adder|bit0|s~0_combout\);

\sub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sub,
	o => \sub~input_o\);

\adder|bit0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|bit0|cout~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\)) # (!\b[0]~input_o\ & ((\sub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \sub~input_o\,
	datad => \b[0]~input_o\,
	combout => \adder|bit0|cout~0_combout\);

\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

\adder|bit1|s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|bit1|s~1_cout\ = CARRY(\b[1]~input_o\ $ (\sub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \sub~input_o\,
	datad => VCC,
	cout => \adder|bit1|s~1_cout\);

\adder|bit1|s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|bit1|s~2_combout\ = (\adder|bit0|cout~0_combout\ & ((\a[1]~input_o\ & (\adder|bit1|s~1_cout\ & VCC)) # (!\a[1]~input_o\ & (!\adder|bit1|s~1_cout\)))) # (!\adder|bit0|cout~0_combout\ & ((\a[1]~input_o\ & (!\adder|bit1|s~1_cout\)) # (!\a[1]~input_o\ 
-- & ((\adder|bit1|s~1_cout\) # (GND)))))
-- \adder|bit1|s~3\ = CARRY((\adder|bit0|cout~0_combout\ & (!\a[1]~input_o\ & !\adder|bit1|s~1_cout\)) # (!\adder|bit0|cout~0_combout\ & ((!\adder|bit1|s~1_cout\) # (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adder|bit0|cout~0_combout\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \adder|bit1|s~1_cout\,
	combout => \adder|bit1|s~2_combout\,
	cout => \adder|bit1|s~3\);

\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

\s_b[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_b[2]~0_combout\ = \sub~input_o\ $ (\b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub~input_o\,
	datad => \b[2]~input_o\,
	combout => \s_b[2]~0_combout\);

\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

\adder|bit1|s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|bit1|s~4_combout\ = ((\s_b[2]~0_combout\ $ (\a[2]~input_o\ $ (!\adder|bit1|s~3\)))) # (GND)
-- \adder|bit1|s~5\ = CARRY((\s_b[2]~0_combout\ & ((\a[2]~input_o\) # (!\adder|bit1|s~3\))) # (!\s_b[2]~0_combout\ & (\a[2]~input_o\ & !\adder|bit1|s~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_b[2]~0_combout\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \adder|bit1|s~3\,
	combout => \adder|bit1|s~4_combout\,
	cout => \adder|bit1|s~5\);

\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

\s_b[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_b[3]~1_combout\ = \sub~input_o\ $ (\b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub~input_o\,
	datad => \b[3]~input_o\,
	combout => \s_b[3]~1_combout\);

\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

\adder|bit1|s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|bit1|s~6_combout\ = (\s_b[3]~1_combout\ & ((\a[3]~input_o\ & (\adder|bit1|s~5\ & VCC)) # (!\a[3]~input_o\ & (!\adder|bit1|s~5\)))) # (!\s_b[3]~1_combout\ & ((\a[3]~input_o\ & (!\adder|bit1|s~5\)) # (!\a[3]~input_o\ & ((\adder|bit1|s~5\) # (GND)))))
-- \adder|bit1|s~7\ = CARRY((\s_b[3]~1_combout\ & (!\a[3]~input_o\ & !\adder|bit1|s~5\)) # (!\s_b[3]~1_combout\ & ((!\adder|bit1|s~5\) # (!\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_b[3]~1_combout\,
	datab => \a[3]~input_o\,
	datad => VCC,
	cin => \adder|bit1|s~5\,
	combout => \adder|bit1|s~6_combout\,
	cout => \adder|bit1|s~7\);

\adder|bit1|s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|bit1|s~8_combout\ = !\adder|bit1|s~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \adder|bit1|s~7\,
	combout => \adder|bit1|s~8_combout\);

ww_sum(0) <= \sum[0]~output_o\;

ww_sum(1) <= \sum[1]~output_o\;

ww_sum(2) <= \sum[2]~output_o\;

ww_sum(3) <= \sum[3]~output_o\;

ww_cout <= \cout~output_o\;
END structure;


