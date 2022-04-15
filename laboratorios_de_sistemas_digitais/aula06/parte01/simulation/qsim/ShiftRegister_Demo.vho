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

-- DATE "04/21/2022 08:07:48"

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

ENTITY 	shiftregister4 IS
    PORT (
	serialin : IN std_logic;
	clockin : IN std_logic;
	dataout : OUT std_logic_vector(3 DOWNTO 0)
	);
END shiftregister4;

ARCHITECTURE structure OF shiftregister4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_serialin : std_logic;
SIGNAL ww_clockin : std_logic;
SIGNAL ww_dataout : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataout[0]~output_o\ : std_logic;
SIGNAL \dataout[1]~output_o\ : std_logic;
SIGNAL \dataout[2]~output_o\ : std_logic;
SIGNAL \dataout[3]~output_o\ : std_logic;
SIGNAL \clockin~input_o\ : std_logic;
SIGNAL \serialin~input_o\ : std_logic;
SIGNAL sdataout : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_serialin <= serialin;
ww_clockin <= clockin;
dataout <= ww_dataout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dataout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sdataout(0),
	devoe => ww_devoe,
	o => \dataout[0]~output_o\);

\dataout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sdataout(1),
	devoe => ww_devoe,
	o => \dataout[1]~output_o\);

\dataout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sdataout(2),
	devoe => ww_devoe,
	o => \dataout[2]~output_o\);

\dataout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sdataout(3),
	devoe => ww_devoe,
	o => \dataout[3]~output_o\);

\clockin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clockin,
	o => \clockin~input_o\);

\serialin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_serialin,
	o => \serialin~input_o\);

\sdataout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~input_o\,
	d => \serialin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdataout(0));

\sdataout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~input_o\,
	d => sdataout(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdataout(1));

\sdataout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~input_o\,
	d => sdataout(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdataout(2));

\sdataout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockin~input_o\,
	d => sdataout(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdataout(3));

ww_dataout(0) <= \dataout[0]~output_o\;

ww_dataout(1) <= \dataout[1]~output_o\;

ww_dataout(2) <= \dataout[2]~output_o\;

ww_dataout(3) <= \dataout[3]~output_o\;
END structure;


