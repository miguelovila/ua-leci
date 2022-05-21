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

-- DATE "03/26/2022 18:40:17"

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

ENTITY 	displaydemovhdl IS
    PORT (
	sw : IN std_logic_vector(3 DOWNTO 0);
	key : IN std_logic_vector(0 DOWNTO 0);
	hex0 : BUFFER std_logic_vector(6 DOWNTO 0);
	ledg : BUFFER std_logic_vector(3 DOWNTO 0);
	ledr : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END displaydemovhdl;

ARCHITECTURE structure OF displaydemovhdl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_key : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledg : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(6 DOWNTO 0);
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \ledg[0]~output_o\ : std_logic;
SIGNAL \ledg[1]~output_o\ : std_logic;
SIGNAL \ledg[2]~output_o\ : std_logic;
SIGNAL \ledg[3]~output_o\ : std_logic;
SIGNAL \ledr[0]~output_o\ : std_logic;
SIGNAL \ledr[1]~output_o\ : std_logic;
SIGNAL \ledr[2]~output_o\ : std_logic;
SIGNAL \ledr[3]~output_o\ : std_logic;
SIGNAL \ledr[4]~output_o\ : std_logic;
SIGNAL \ledr[5]~output_o\ : std_logic;
SIGNAL \ledr[6]~output_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \system_core|decout_n~6_combout\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \system_core|decout_n~7_combout\ : std_logic;
SIGNAL \system_core|decout_n~8_combout\ : std_logic;
SIGNAL \system_core|decout_n~9_combout\ : std_logic;
SIGNAL \system_core|decout_n~10_combout\ : std_logic;
SIGNAL \system_core|decout_n~11_combout\ : std_logic;
SIGNAL \system_core|decout_n~12_combout\ : std_logic;
SIGNAL \system_core|decout_n[3]~2_combout\ : std_logic;
SIGNAL \system_core|decout_n[3]~17_combout\ : std_logic;
SIGNAL \system_core|decout_n~13_combout\ : std_logic;
SIGNAL \system_core|decout_n~14_combout\ : std_logic;
SIGNAL \system_core|decout_n~15_combout\ : std_logic;
SIGNAL \system_core|decout_n~16_combout\ : std_logic;
SIGNAL \system_core|decout_n[6]~5_combout\ : std_logic;
SIGNAL \system_core|decout_n[6]~18_combout\ : std_logic;

BEGIN

ww_sw <= sw;
ww_key <= key;
hex0 <= ww_hex0;
ledg <= ww_ledg;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\hex0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~7_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

\hex0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~10_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

\hex0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~12_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

\hex0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n[3]~17_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

\hex0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~14_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

\hex0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~16_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

\hex0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n[6]~18_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

\ledg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[0]~input_o\,
	devoe => ww_devoe,
	o => \ledg[0]~output_o\);

\ledg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[1]~input_o\,
	devoe => ww_devoe,
	o => \ledg[1]~output_o\);

\ledg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[2]~input_o\,
	devoe => ww_devoe,
	o => \ledg[2]~output_o\);

\ledg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[3]~input_o\,
	devoe => ww_devoe,
	o => \ledg[3]~output_o\);

\ledr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~7_combout\,
	devoe => ww_devoe,
	o => \ledr[0]~output_o\);

\ledr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~10_combout\,
	devoe => ww_devoe,
	o => \ledr[1]~output_o\);

\ledr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~12_combout\,
	devoe => ww_devoe,
	o => \ledr[2]~output_o\);

\ledr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n[3]~17_combout\,
	devoe => ww_devoe,
	o => \ledr[3]~output_o\);

\ledr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~14_combout\,
	devoe => ww_devoe,
	o => \ledr[4]~output_o\);

\ledr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~16_combout\,
	devoe => ww_devoe,
	o => \ledr[5]~output_o\);

\ledr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n[6]~18_combout\,
	devoe => ww_devoe,
	o => \ledr[6]~output_o\);

\sw[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

\sw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

\system_core|decout_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~6_combout\ = (\sw[3]~input_o\ & (\sw[0]~input_o\ & (\sw[1]~input_o\ $ (\sw[2]~input_o\)))) # (!\sw[3]~input_o\ & (!\sw[1]~input_o\ & (\sw[0]~input_o\ $ (\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \system_core|decout_n~6_combout\);

\key[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

\system_core|decout_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~7_combout\ = (\system_core|decout_n~6_combout\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|decout_n~6_combout\,
	datad => \key[0]~input_o\,
	combout => \system_core|decout_n~7_combout\);

\system_core|decout_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~8_combout\ = (\sw[3]~input_o\ & (\sw[2]~input_o\ & ((\sw[1]~input_o\) # (!\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \system_core|decout_n~8_combout\);

\system_core|decout_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~9_combout\ = (\sw[3]~input_o\ & (\sw[1]~input_o\ & (\sw[0]~input_o\ & !\sw[2]~input_o\))) # (!\sw[3]~input_o\ & (\sw[2]~input_o\ & (\sw[1]~input_o\ $ (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \system_core|decout_n~9_combout\);

\system_core|decout_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~10_combout\ = (\system_core|decout_n~8_combout\) # ((\system_core|decout_n~9_combout\) # (!\key[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|decout_n~8_combout\,
	datab => \system_core|decout_n~9_combout\,
	datad => \key[0]~input_o\,
	combout => \system_core|decout_n~10_combout\);

\system_core|decout_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~11_combout\ = (\sw[1]~input_o\ & (!\sw[3]~input_o\ & (!\sw[0]~input_o\ & !\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \system_core|decout_n~11_combout\);

\system_core|decout_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~12_combout\ = (\system_core|decout_n~8_combout\) # ((\system_core|decout_n~11_combout\) # (!\key[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|decout_n~8_combout\,
	datab => \system_core|decout_n~11_combout\,
	datad => \key[0]~input_o\,
	combout => \system_core|decout_n~12_combout\);

\system_core|decout_n[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n[3]~2_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\sw[2]~input_o\))) # (!\sw[0]~input_o\ & (\sw[3]~input_o\ & !\sw[2]~input_o\)))) # (!\sw[1]~input_o\ & (!\sw[3]~input_o\ & (\sw[0]~input_o\ $ (\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \system_core|decout_n[3]~2_combout\);

\system_core|decout_n[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n[3]~17_combout\ = (\system_core|decout_n[3]~2_combout\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|decout_n[3]~2_combout\,
	datab => \key[0]~input_o\,
	combout => \system_core|decout_n[3]~17_combout\);

\system_core|decout_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~13_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & ((!\sw[3]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[2]~input_o\ & ((!\sw[3]~input_o\))) # (!\sw[2]~input_o\ & (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \system_core|decout_n~13_combout\);

\system_core|decout_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~14_combout\ = (\system_core|decout_n~13_combout\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|decout_n~13_combout\,
	datad => \key[0]~input_o\,
	combout => \system_core|decout_n~14_combout\);

\system_core|decout_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~15_combout\ = (\sw[0]~input_o\ & (\sw[3]~input_o\ $ (((\sw[1]~input_o\) # (!\sw[2]~input_o\))))) # (!\sw[0]~input_o\ & (!\sw[2]~input_o\ & (\sw[1]~input_o\ & !\sw[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \system_core|decout_n~15_combout\);

\system_core|decout_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~16_combout\ = (\system_core|decout_n~15_combout\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|decout_n~15_combout\,
	datad => \key[0]~input_o\,
	combout => \system_core|decout_n~16_combout\);

\system_core|decout_n[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n[6]~5_combout\ = (\sw[0]~input_o\ & (!\sw[3]~input_o\ & (\sw[2]~input_o\ $ (!\sw[1]~input_o\)))) # (!\sw[0]~input_o\ & (!\sw[1]~input_o\ & (\sw[2]~input_o\ $ (!\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \system_core|decout_n[6]~5_combout\);

\system_core|decout_n[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n[6]~18_combout\ = (\system_core|decout_n[6]~5_combout\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|decout_n[6]~5_combout\,
	datab => \key[0]~input_o\,
	combout => \system_core|decout_n[6]~18_combout\);

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_ledg(0) <= \ledg[0]~output_o\;

ww_ledg(1) <= \ledg[1]~output_o\;

ww_ledg(2) <= \ledg[2]~output_o\;

ww_ledg(3) <= \ledg[3]~output_o\;

ww_ledr(0) <= \ledr[0]~output_o\;

ww_ledr(1) <= \ledr[1]~output_o\;

ww_ledr(2) <= \ledr[2]~output_o\;

ww_ledr(3) <= \ledr[3]~output_o\;

ww_ledr(4) <= \ledr[4]~output_o\;

ww_ledr(5) <= \ledr[5]~output_o\;

ww_ledr(6) <= \ledr[6]~output_o\;
END structure;


