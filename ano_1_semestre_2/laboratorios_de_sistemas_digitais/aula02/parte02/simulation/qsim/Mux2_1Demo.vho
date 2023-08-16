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

-- DATE "03/22/2022 12:42:52"

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

ENTITY 	mux4_1 IS
    PORT (
	selport : IN std_logic_vector(1 DOWNTO 0);
	inpport : IN std_logic_vector(3 DOWNTO 0);
	outport : OUT std_logic
	);
END mux4_1;

ARCHITECTURE structure OF mux4_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_selport : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_inpport : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_outport : std_logic;
SIGNAL \outport~output_o\ : std_logic;
SIGNAL \inpport[2]~input_o\ : std_logic;
SIGNAL \selport[1]~input_o\ : std_logic;
SIGNAL \inpport[1]~input_o\ : std_logic;
SIGNAL \selport[0]~input_o\ : std_logic;
SIGNAL \inpport[0]~input_o\ : std_logic;
SIGNAL \outport~0_combout\ : std_logic;
SIGNAL \inpport[3]~input_o\ : std_logic;
SIGNAL \outport~1_combout\ : std_logic;

BEGIN

ww_selport <= selport;
ww_inpport <= inpport;
outport <= ww_outport;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\outport~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport~1_combout\,
	devoe => ww_devoe,
	o => \outport~output_o\);

\inpport[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpport(2),
	o => \inpport[2]~input_o\);

\selport[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selport(1),
	o => \selport[1]~input_o\);

\inpport[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpport(1),
	o => \inpport[1]~input_o\);

\selport[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selport(0),
	o => \selport[0]~input_o\);

\inpport[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpport(0),
	o => \inpport[0]~input_o\);

\outport~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outport~0_combout\ = (\selport[1]~input_o\ & (((\selport[0]~input_o\)))) # (!\selport[1]~input_o\ & ((\selport[0]~input_o\ & (\inpport[1]~input_o\)) # (!\selport[0]~input_o\ & ((\inpport[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selport[1]~input_o\,
	datab => \inpport[1]~input_o\,
	datac => \selport[0]~input_o\,
	datad => \inpport[0]~input_o\,
	combout => \outport~0_combout\);

\inpport[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inpport(3),
	o => \inpport[3]~input_o\);

\outport~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outport~1_combout\ = (\selport[1]~input_o\ & ((\outport~0_combout\ & ((\inpport[3]~input_o\))) # (!\outport~0_combout\ & (\inpport[2]~input_o\)))) # (!\selport[1]~input_o\ & (((\outport~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inpport[2]~input_o\,
	datab => \selport[1]~input_o\,
	datac => \outport~0_combout\,
	datad => \inpport[3]~input_o\,
	combout => \outport~1_combout\);

ww_outport <= \outport~output_o\;
END structure;


