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

-- DATE "03/23/2022 22:03:28"

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

ENTITY 	penc4_2 IS
    PORT (
	inputport : IN std_logic_vector(3 DOWNTO 0);
	outpuport : OUT std_logic_vector(1 DOWNTO 0);
	validoutp : OUT std_logic
	);
END penc4_2;

ARCHITECTURE structure OF penc4_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inputport : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_outpuport : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_validoutp : std_logic;
SIGNAL \outpuport[0]~output_o\ : std_logic;
SIGNAL \outpuport[1]~output_o\ : std_logic;
SIGNAL \validoutp~output_o\ : std_logic;
SIGNAL \inputport[3]~input_o\ : std_logic;
SIGNAL \inputport[1]~input_o\ : std_logic;
SIGNAL \inputport[2]~input_o\ : std_logic;
SIGNAL \outpuport~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \inputport[0]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;

BEGIN

ww_inputport <= inputport;
outpuport <= ww_outpuport;
validoutp <= ww_validoutp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;

\outpuport[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outpuport~0_combout\,
	devoe => ww_devoe,
	o => \outpuport[0]~output_o\);

\outpuport[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \outpuport[1]~output_o\);

\validoutp~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~1_combout\,
	devoe => ww_devoe,
	o => \validoutp~output_o\);

\inputport[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputport(3),
	o => \inputport[3]~input_o\);

\inputport[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputport(1),
	o => \inputport[1]~input_o\);

\inputport[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputport(2),
	o => \inputport[2]~input_o\);

\outpuport~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outpuport~0_combout\ = (\inputport[3]~input_o\) # ((\inputport[1]~input_o\ & !\inputport[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputport[3]~input_o\,
	datab => \inputport[1]~input_o\,
	datad => \inputport[2]~input_o\,
	combout => \outpuport~0_combout\);

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\inputport[3]~input_o\ & !\inputport[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inputport[3]~input_o\,
	datad => \inputport[2]~input_o\,
	combout => \Equal0~0_combout\);

\inputport[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputport(0),
	o => \inputport[0]~input_o\);

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\inputport[3]~input_o\ & (!\inputport[1]~input_o\ & (!\inputport[2]~input_o\ & !\inputport[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputport[3]~input_o\,
	datab => \inputport[1]~input_o\,
	datac => \inputport[2]~input_o\,
	datad => \inputport[0]~input_o\,
	combout => \Equal0~1_combout\);

ww_outpuport(0) <= \outpuport[0]~output_o\;

ww_outpuport(1) <= \outpuport[1]~output_o\;

ww_validoutp <= \validoutp~output_o\;
END structure;


