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

-- DATE "04/21/2022 11:25:33"

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

ENTITY 	combshiftunit IS
    PORT (
	datain : IN std_logic_vector(7 DOWNTO 0);
	shamount : IN std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic;
	loaden : IN std_logic;
	rotate : IN std_logic;
	dirleft : IN std_logic;
	sharith : IN std_logic;
	dataout : OUT std_logic_vector(7 DOWNTO 0)
	);
END combshiftunit;

ARCHITECTURE structure OF combshiftunit IS
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
SIGNAL ww_shamount : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
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
SIGNAL \shamount[0]~input_o\ : std_logic;
SIGNAL \rotate~input_o\ : std_logic;
SIGNAL \shamount[2]~input_o\ : std_logic;
SIGNAL \datain[3]~input_o\ : std_logic;
SIGNAL \datain[2]~input_o\ : std_logic;
SIGNAL \datain[1]~input_o\ : std_logic;
SIGNAL \datain[4]~input_o\ : std_logic;
SIGNAL \shamount[1]~input_o\ : std_logic;
SIGNAL \ShiftRight1~2_combout\ : std_logic;
SIGNAL \RotateRight0~1_combout\ : std_logic;
SIGNAL \ShiftRight1~3_combout\ : std_logic;
SIGNAL \RotateRight0~11_combout\ : std_logic;
SIGNAL \RotateLeft0~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \dirleft~input_o\ : std_logic;
SIGNAL \sharith~input_o\ : std_logic;
SIGNAL \s_shiftreg~27_combout\ : std_logic;
SIGNAL \s_shiftreg~28_combout\ : std_logic;
SIGNAL \RotateLeft0~3_combout\ : std_logic;
SIGNAL \RotateLeft0~4_combout\ : std_logic;
SIGNAL \RotateLeft0~5_combout\ : std_logic;
SIGNAL \RotateLeft0~15_combout\ : std_logic;
SIGNAL \s_shiftreg~29_combout\ : std_logic;
SIGNAL \loaden~input_o\ : std_logic;
SIGNAL \s_shiftreg~30_combout\ : std_logic;
SIGNAL \RotateLeft0~1_combout\ : std_logic;
SIGNAL \RotateLeft0~9_combout\ : std_logic;
SIGNAL \ShiftRight1~6_combout\ : std_logic;
SIGNAL \ShiftRight1~7_combout\ : std_logic;
SIGNAL \s_shiftreg[5]~31_combout\ : std_logic;
SIGNAL \s_shiftreg[5]~32_combout\ : std_logic;
SIGNAL \ShiftRight1~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \s_shiftreg[5]~33_combout\ : std_logic;
SIGNAL \s_shiftreg[5]~34_combout\ : std_logic;
SIGNAL \s_shiftreg~35_combout\ : std_logic;
SIGNAL \s_shiftreg~36_combout\ : std_logic;
SIGNAL \s_shiftreg[5]~37_combout\ : std_logic;
SIGNAL \RotateRight0~2_combout\ : std_logic;
SIGNAL \RotateRight0~3_combout\ : std_logic;
SIGNAL \s_shiftreg~38_combout\ : std_logic;
SIGNAL \RotateLeft0~6_combout\ : std_logic;
SIGNAL \RotateLeft0~7_combout\ : std_logic;
SIGNAL \s_shiftreg~39_combout\ : std_logic;
SIGNAL \s_shiftreg[5]~40_combout\ : std_logic;
SIGNAL \s_shiftreg[5]~1_combout\ : std_logic;
SIGNAL \datain[5]~input_o\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \ShiftRight0~2_combout\ : std_logic;
SIGNAL \s_shiftreg[1]~6_combout\ : std_logic;
SIGNAL \s_shiftreg[1]~7_combout\ : std_logic;
SIGNAL \s_shiftreg[1]~8_combout\ : std_logic;
SIGNAL \s_shiftreg[1]~9_combout\ : std_logic;
SIGNAL \s_shiftreg~10_combout\ : std_logic;
SIGNAL \s_shiftreg~11_combout\ : std_logic;
SIGNAL \s_shiftreg[1]~12_combout\ : std_logic;
SIGNAL \s_shiftreg~13_combout\ : std_logic;
SIGNAL \s_shiftreg~14_combout\ : std_logic;
SIGNAL \s_shiftreg~15_combout\ : std_logic;
SIGNAL \RotateLeft0~10_combout\ : std_logic;
SIGNAL \RotateLeft0~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ShiftRight1~8_combout\ : std_logic;
SIGNAL \RotateRight0~4_combout\ : std_logic;
SIGNAL \RotateRight0~5_combout\ : std_logic;
SIGNAL \s_shiftreg~16_combout\ : std_logic;
SIGNAL \s_shiftreg~17_combout\ : std_logic;
SIGNAL \ShiftRight0~3_combout\ : std_logic;
SIGNAL \s_shiftreg~18_combout\ : std_logic;
SIGNAL \RotateRight0~6_combout\ : std_logic;
SIGNAL \RotateRight0~7_combout\ : std_logic;
SIGNAL \s_shiftreg~19_combout\ : std_logic;
SIGNAL \s_shiftreg~20_combout\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \RotateLeft0~12_combout\ : std_logic;
SIGNAL \RotateLeft0~14_combout\ : std_logic;
SIGNAL \RotateRight0~8_combout\ : std_logic;
SIGNAL \s_shiftreg~21_combout\ : std_logic;
SIGNAL \RotateRight0~9_combout\ : std_logic;
SIGNAL \RotateRight0~10_combout\ : std_logic;
SIGNAL \s_shiftreg~22_combout\ : std_logic;
SIGNAL \s_shiftreg~23_combout\ : std_logic;
SIGNAL \s_shiftreg~24_combout\ : std_logic;
SIGNAL \s_shiftreg~25_combout\ : std_logic;
SIGNAL \s_shiftreg~26_combout\ : std_logic;
SIGNAL \RotateLeft0~8_combout\ : std_logic;
SIGNAL \RotateLeft0~13_combout\ : std_logic;
SIGNAL \s_shiftreg~41_combout\ : std_logic;
SIGNAL \s_shiftreg~42_combout\ : std_logic;
SIGNAL \s_shiftreg~43_combout\ : std_logic;
SIGNAL \s_shiftreg~44_combout\ : std_logic;
SIGNAL \s_shiftreg[6]~2_combout\ : std_logic;
SIGNAL \datain[6]~input_o\ : std_logic;
SIGNAL \RotateRight0~0_combout\ : std_logic;
SIGNAL \s_shiftreg~45_combout\ : std_logic;
SIGNAL \s_shiftreg~46_combout\ : std_logic;
SIGNAL \s_shiftreg~47_combout\ : std_logic;
SIGNAL \s_shiftreg~48_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \s_shiftreg[7]~3_combout\ : std_logic;
SIGNAL \datain[7]~input_o\ : std_logic;
SIGNAL \ShiftRight1~0_combout\ : std_logic;
SIGNAL \ShiftRight1~1_combout\ : std_logic;
SIGNAL \ShiftRight1~4_combout\ : std_logic;
SIGNAL \RotateLeft0~2_combout\ : std_logic;
SIGNAL \s_shiftreg~4_combout\ : std_logic;
SIGNAL \s_shiftreg~5_combout\ : std_logic;
SIGNAL \s_shiftreg[0]~0_combout\ : std_logic;
SIGNAL \datain[0]~input_o\ : std_logic;
SIGNAL s_shiftreg : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk~input_o\ : std_logic;

BEGIN

ww_datain <= datain;
ww_shamount <= shamount;
ww_clk <= clk;
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

\shamount[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamount(0),
	o => \shamount[0]~input_o\);

\rotate~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rotate,
	o => \rotate~input_o\);

\shamount[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamount(2),
	o => \shamount[2]~input_o\);

\datain[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(3),
	o => \datain[3]~input_o\);

\datain[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(2),
	o => \datain[2]~input_o\);

\datain[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(1),
	o => \datain[1]~input_o\);

\datain[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(4),
	o => \datain[4]~input_o\);

\shamount[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamount(1),
	o => \shamount[1]~input_o\);

\ShiftRight1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~2_combout\ = (\shamount[1]~input_o\ & (s_shiftreg(3))) # (!\shamount[1]~input_o\ & ((s_shiftreg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(3),
	datab => s_shiftreg(1),
	datad => \shamount[1]~input_o\,
	combout => \ShiftRight1~2_combout\);

\RotateRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~1_combout\ = (\shamount[1]~input_o\ & (s_shiftreg(2))) # (!\shamount[1]~input_o\ & ((s_shiftreg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(2),
	datab => s_shiftreg(0),
	datad => \shamount[1]~input_o\,
	combout => \RotateRight0~1_combout\);

\ShiftRight1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~3_combout\ = (\shamount[0]~input_o\ & (\ShiftRight1~2_combout\)) # (!\shamount[0]~input_o\ & ((\RotateRight0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~2_combout\,
	datab => \RotateRight0~1_combout\,
	datad => \shamount[0]~input_o\,
	combout => \ShiftRight1~3_combout\);

\RotateRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~11_combout\ = (\shamount[2]~input_o\ & (\ShiftRight1~3_combout\)) # (!\shamount[2]~input_o\ & ((\ShiftRight1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~3_combout\,
	datab => \ShiftRight1~1_combout\,
	datad => \shamount[2]~input_o\,
	combout => \RotateRight0~11_combout\);

\RotateLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~0_combout\ = (\shamount[1]~input_o\ & (s_shiftreg(1))) # (!\shamount[1]~input_o\ & ((s_shiftreg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(1),
	datab => s_shiftreg(3),
	datad => \shamount[1]~input_o\,
	combout => \RotateLeft0~0_combout\);

\ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (!\shamount[2]~input_o\ & ((\shamount[0]~input_o\ & (\RotateLeft0~0_combout\)) # (!\shamount[0]~input_o\ & ((\RotateLeft0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~0_combout\,
	datab => \RotateLeft0~1_combout\,
	datac => \shamount[0]~input_o\,
	datad => \shamount[2]~input_o\,
	combout => \ShiftLeft0~4_combout\);

\ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = (!\shamount[0]~input_o\ & !\shamount[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shamount[0]~input_o\,
	datad => \shamount[1]~input_o\,
	combout => \ShiftRight0~0_combout\);

\ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (\ShiftLeft0~4_combout\) # ((s_shiftreg(0) & (\shamount[2]~input_o\ & \ShiftRight0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => s_shiftreg(0),
	datac => \shamount[2]~input_o\,
	datad => \ShiftRight0~0_combout\,
	combout => \ShiftLeft0~5_combout\);

\dirleft~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dirleft,
	o => \dirleft~input_o\);

\sharith~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sharith,
	o => \sharith~input_o\);

\s_shiftreg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~27_combout\ = (\shamount[2]~input_o\ & (s_shiftreg(7) & (\sharith~input_o\))) # (!\shamount[2]~input_o\ & (((\ShiftRight1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(7),
	datab => \sharith~input_o\,
	datac => \ShiftRight1~1_combout\,
	datad => \shamount[2]~input_o\,
	combout => \s_shiftreg~27_combout\);

\s_shiftreg~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~28_combout\ = (\rotate~input_o\ & (((\dirleft~input_o\)))) # (!\rotate~input_o\ & ((\dirleft~input_o\ & (\ShiftLeft0~5_combout\)) # (!\dirleft~input_o\ & ((\s_shiftreg~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \ShiftLeft0~5_combout\,
	datac => \dirleft~input_o\,
	datad => \s_shiftreg~27_combout\,
	combout => \s_shiftreg~28_combout\);

\RotateLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~3_combout\ = (!\shamount[0]~input_o\ & ((\shamount[1]~input_o\ & (s_shiftreg(6))) # (!\shamount[1]~input_o\ & ((s_shiftreg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(6),
	datab => s_shiftreg(0),
	datac => \shamount[1]~input_o\,
	datad => \shamount[0]~input_o\,
	combout => \RotateLeft0~3_combout\);

\RotateLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~4_combout\ = (\shamount[1]~input_o\ & (s_shiftreg(5))) # (!\shamount[1]~input_o\ & ((s_shiftreg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(5),
	datab => s_shiftreg(7),
	datad => \shamount[1]~input_o\,
	combout => \RotateLeft0~4_combout\);

\RotateLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~5_combout\ = (\RotateLeft0~3_combout\) # ((\shamount[0]~input_o\ & \RotateLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~3_combout\,
	datab => \shamount[0]~input_o\,
	datac => \RotateLeft0~4_combout\,
	combout => \RotateLeft0~5_combout\);

\RotateLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~15_combout\ = (\ShiftLeft0~4_combout\) # ((\shamount[2]~input_o\ & \RotateLeft0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \shamount[2]~input_o\,
	datac => \RotateLeft0~5_combout\,
	combout => \RotateLeft0~15_combout\);

\s_shiftreg~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~29_combout\ = (\rotate~input_o\ & ((\s_shiftreg~28_combout\ & ((\RotateLeft0~15_combout\))) # (!\s_shiftreg~28_combout\ & (\RotateRight0~11_combout\)))) # (!\rotate~input_o\ & (((\s_shiftreg~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~11_combout\,
	datab => \rotate~input_o\,
	datac => \s_shiftreg~28_combout\,
	datad => \RotateLeft0~15_combout\,
	combout => \s_shiftreg~29_combout\);

\loaden~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_loaden,
	o => \loaden~input_o\);

\s_shiftreg~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~30_combout\ = (\loaden~input_o\ & (\datain[4]~input_o\)) # (!\loaden~input_o\ & ((\s_shiftreg~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datain[4]~input_o\,
	datab => \s_shiftreg~29_combout\,
	datad => \loaden~input_o\,
	combout => \s_shiftreg~30_combout\);

\s_shiftreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \s_shiftreg~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftreg(4));

\RotateLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~1_combout\ = (\shamount[1]~input_o\ & (s_shiftreg(2))) # (!\shamount[1]~input_o\ & ((s_shiftreg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(2),
	datab => s_shiftreg(4),
	datad => \shamount[1]~input_o\,
	combout => \RotateLeft0~1_combout\);

\RotateLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~9_combout\ = (\shamount[0]~input_o\ & (\RotateLeft0~1_combout\)) # (!\shamount[0]~input_o\ & ((\RotateLeft0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~1_combout\,
	datab => \RotateLeft0~8_combout\,
	datad => \shamount[0]~input_o\,
	combout => \RotateLeft0~9_combout\);

\ShiftRight1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~6_combout\ = (\shamount[1]~input_o\ & (s_shiftreg(4))) # (!\shamount[1]~input_o\ & ((s_shiftreg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(4),
	datab => s_shiftreg(2),
	datad => \shamount[1]~input_o\,
	combout => \ShiftRight1~6_combout\);

\ShiftRight1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~7_combout\ = (\shamount[0]~input_o\ & (\ShiftRight1~6_combout\)) # (!\shamount[0]~input_o\ & ((\ShiftRight1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~6_combout\,
	datab => \ShiftRight1~2_combout\,
	datad => \shamount[0]~input_o\,
	combout => \ShiftRight1~7_combout\);

\s_shiftreg[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[5]~31_combout\ = (\rotate~input_o\ & ((\shamount[2]~input_o\) # (\dirleft~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \shamount[2]~input_o\,
	datac => \dirleft~input_o\,
	combout => \s_shiftreg[5]~31_combout\);

\s_shiftreg[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[5]~32_combout\ = (\sharith~input_o\ & !\dirleft~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sharith~input_o\,
	datad => \dirleft~input_o\,
	combout => \s_shiftreg[5]~32_combout\);

\ShiftRight1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~5_combout\ = (\ShiftRight0~1_combout\) # ((s_shiftreg(7) & (\shamount[1]~input_o\ & !\shamount[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~1_combout\,
	datab => s_shiftreg(7),
	datac => \shamount[1]~input_o\,
	datad => \shamount[0]~input_o\,
	combout => \ShiftRight1~5_combout\);

\ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (!\shamount[1]~input_o\ & ((\shamount[0]~input_o\ & (s_shiftreg(0))) # (!\shamount[0]~input_o\ & ((s_shiftreg(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(0),
	datab => s_shiftreg(1),
	datac => \shamount[0]~input_o\,
	datad => \shamount[1]~input_o\,
	combout => \ShiftLeft0~0_combout\);

\s_shiftreg[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[5]~33_combout\ = (\dirleft~input_o\) # ((!\shamount[2]~input_o\ & !\sharith~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirleft~input_o\,
	datac => \shamount[2]~input_o\,
	datad => \sharith~input_o\,
	combout => \s_shiftreg[5]~33_combout\);

\s_shiftreg[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[5]~34_combout\ = (\dirleft~input_o\) # ((\shamount[2]~input_o\ & \sharith~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirleft~input_o\,
	datab => \shamount[2]~input_o\,
	datac => \sharith~input_o\,
	combout => \s_shiftreg[5]~34_combout\);

\s_shiftreg~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~35_combout\ = (\s_shiftreg[5]~33_combout\ & ((\s_shiftreg[5]~34_combout\ & ((\ShiftLeft0~0_combout\))) # (!\s_shiftreg[5]~34_combout\ & (\ShiftRight1~5_combout\)))) # (!\s_shiftreg[5]~33_combout\ & (((\s_shiftreg[5]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~5_combout\,
	datab => \ShiftLeft0~0_combout\,
	datac => \s_shiftreg[5]~33_combout\,
	datad => \s_shiftreg[5]~34_combout\,
	combout => \s_shiftreg~35_combout\);

\s_shiftreg~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~36_combout\ = (\s_shiftreg[5]~32_combout\ & ((\s_shiftreg~35_combout\ & ((s_shiftreg(7)))) # (!\s_shiftreg~35_combout\ & (\ShiftRight0~2_combout\)))) # (!\s_shiftreg[5]~32_combout\ & (((\s_shiftreg~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~2_combout\,
	datab => s_shiftreg(7),
	datac => \s_shiftreg[5]~32_combout\,
	datad => \s_shiftreg~35_combout\,
	combout => \s_shiftreg~36_combout\);

\s_shiftreg[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[5]~37_combout\ = (\dirleft~input_o\) # (!\rotate~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirleft~input_o\,
	datad => \rotate~input_o\,
	combout => \s_shiftreg[5]~37_combout\);

\RotateRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~2_combout\ = (\shamount[1]~input_o\ & ((\shamount[0]~input_o\ & (s_shiftreg(0))) # (!\shamount[0]~input_o\ & ((s_shiftreg(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamount[1]~input_o\,
	datab => s_shiftreg(0),
	datac => s_shiftreg(7),
	datad => \shamount[0]~input_o\,
	combout => \RotateRight0~2_combout\);

\RotateRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~3_combout\ = (\ShiftRight0~1_combout\) # (\RotateRight0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~1_combout\,
	datab => \RotateRight0~2_combout\,
	combout => \RotateRight0~3_combout\);

\s_shiftreg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~38_combout\ = (\s_shiftreg[5]~31_combout\ & (((\s_shiftreg[5]~37_combout\)))) # (!\s_shiftreg[5]~31_combout\ & ((\s_shiftreg[5]~37_combout\ & (\s_shiftreg~36_combout\)) # (!\s_shiftreg[5]~37_combout\ & ((\RotateRight0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftreg[5]~31_combout\,
	datab => \s_shiftreg~36_combout\,
	datac => \s_shiftreg[5]~37_combout\,
	datad => \RotateRight0~3_combout\,
	combout => \s_shiftreg~38_combout\);

\RotateLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~6_combout\ = (\shamount[1]~input_o\ & ((\shamount[0]~input_o\ & (s_shiftreg(6))) # (!\shamount[0]~input_o\ & ((s_shiftreg(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamount[1]~input_o\,
	datab => s_shiftreg(6),
	datac => s_shiftreg(7),
	datad => \shamount[0]~input_o\,
	combout => \RotateLeft0~6_combout\);

\RotateLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~7_combout\ = (\ShiftLeft0~0_combout\) # (\RotateLeft0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~0_combout\,
	datab => \RotateLeft0~6_combout\,
	combout => \RotateLeft0~7_combout\);

\s_shiftreg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~39_combout\ = (\s_shiftreg[5]~31_combout\ & ((\s_shiftreg~38_combout\ & ((\RotateLeft0~7_combout\))) # (!\s_shiftreg~38_combout\ & (\ShiftRight1~7_combout\)))) # (!\s_shiftreg[5]~31_combout\ & (((\s_shiftreg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~7_combout\,
	datab => \s_shiftreg[5]~31_combout\,
	datac => \s_shiftreg~38_combout\,
	datad => \RotateLeft0~7_combout\,
	combout => \s_shiftreg~39_combout\);

\s_shiftreg[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[5]~40_combout\ = (\shamount[2]~input_o\) # (!\dirleft~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamount[2]~input_o\,
	datad => \dirleft~input_o\,
	combout => \s_shiftreg[5]~40_combout\);

\s_shiftreg[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[5]~1_combout\ = (\s_shiftreg[5]~40_combout\ & ((\s_shiftreg~39_combout\))) # (!\s_shiftreg[5]~40_combout\ & (\RotateLeft0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~9_combout\,
	datab => \s_shiftreg~39_combout\,
	datad => \s_shiftreg[5]~40_combout\,
	combout => \s_shiftreg[5]~1_combout\);

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
	d => \s_shiftreg[5]~1_combout\,
	asdata => \datain[5]~input_o\,
	sload => \loaden~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftreg(5));

\ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = (!\shamount[1]~input_o\ & ((\shamount[0]~input_o\ & (s_shiftreg(6))) # (!\shamount[0]~input_o\ & ((s_shiftreg(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(6),
	datab => s_shiftreg(5),
	datac => \shamount[0]~input_o\,
	datad => \shamount[1]~input_o\,
	combout => \ShiftRight0~1_combout\);

\ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~2_combout\ = (\ShiftRight0~1_combout\) # ((s_shiftreg(7) & \shamount[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~1_combout\,
	datab => s_shiftreg(7),
	datac => \shamount[1]~input_o\,
	combout => \ShiftRight0~2_combout\);

\s_shiftreg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[1]~6_combout\ = (!\dirleft~input_o\ & (((\sharith~input_o\ & !\rotate~input_o\)) # (!\shamount[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sharith~input_o\,
	datab => \rotate~input_o\,
	datac => \shamount[2]~input_o\,
	datad => \dirleft~input_o\,
	combout => \s_shiftreg[1]~6_combout\);

\s_shiftreg[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[1]~7_combout\ = (\rotate~input_o\ & \dirleft~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \dirleft~input_o\,
	combout => \s_shiftreg[1]~7_combout\);

\s_shiftreg[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[1]~8_combout\ = (\rotate~input_o\ & ((!\dirleft~input_o\))) # (!\rotate~input_o\ & (!\shamount[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rotate~input_o\,
	datac => \shamount[2]~input_o\,
	datad => \dirleft~input_o\,
	combout => \s_shiftreg[1]~8_combout\);

\s_shiftreg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[1]~9_combout\ = (\rotate~input_o\ & ((\shamount[2]~input_o\) # (!\dirleft~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \shamount[2]~input_o\,
	datad => \dirleft~input_o\,
	combout => \s_shiftreg[1]~9_combout\);

\s_shiftreg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~10_combout\ = (\s_shiftreg[1]~8_combout\ & ((\s_shiftreg[1]~9_combout\ & ((\RotateRight0~3_combout\))) # (!\s_shiftreg[1]~9_combout\ & (\ShiftLeft0~0_combout\)))) # (!\s_shiftreg[1]~8_combout\ & (((\s_shiftreg[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~0_combout\,
	datab => \RotateRight0~3_combout\,
	datac => \s_shiftreg[1]~8_combout\,
	datad => \s_shiftreg[1]~9_combout\,
	combout => \s_shiftreg~10_combout\);

\s_shiftreg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~11_combout\ = (\s_shiftreg[1]~7_combout\ & ((\s_shiftreg~10_combout\ & ((\RotateLeft0~9_combout\))) # (!\s_shiftreg~10_combout\ & (\RotateLeft0~7_combout\)))) # (!\s_shiftreg[1]~7_combout\ & (((\s_shiftreg~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~7_combout\,
	datab => \RotateLeft0~9_combout\,
	datac => \s_shiftreg[1]~7_combout\,
	datad => \s_shiftreg~10_combout\,
	combout => \s_shiftreg~11_combout\);

\s_shiftreg[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[1]~12_combout\ = (\rotate~input_o\) # ((\dirleft~input_o\) # (!\shamount[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \dirleft~input_o\,
	datad => \shamount[2]~input_o\,
	combout => \s_shiftreg[1]~12_combout\);

\s_shiftreg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~13_combout\ = (\s_shiftreg[1]~6_combout\ & (((\s_shiftreg[1]~12_combout\)))) # (!\s_shiftreg[1]~6_combout\ & ((\s_shiftreg[1]~12_combout\ & (\s_shiftreg~11_combout\)) # (!\s_shiftreg[1]~12_combout\ & ((\ShiftRight1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftreg[1]~6_combout\,
	datab => \s_shiftreg~11_combout\,
	datac => \s_shiftreg[1]~12_combout\,
	datad => \ShiftRight1~5_combout\,
	combout => \s_shiftreg~13_combout\);

\s_shiftreg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~14_combout\ = (\s_shiftreg[1]~6_combout\ & ((\s_shiftreg~13_combout\ & ((\ShiftRight1~7_combout\))) # (!\s_shiftreg~13_combout\ & (\ShiftRight0~2_combout\)))) # (!\s_shiftreg[1]~6_combout\ & (((\s_shiftreg~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~2_combout\,
	datab => \s_shiftreg[1]~6_combout\,
	datac => \s_shiftreg~13_combout\,
	datad => \ShiftRight1~7_combout\,
	combout => \s_shiftreg~14_combout\);

\s_shiftreg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~15_combout\ = (\loaden~input_o\ & (\datain[1]~input_o\)) # (!\loaden~input_o\ & ((\s_shiftreg~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datain[1]~input_o\,
	datab => \s_shiftreg~14_combout\,
	datad => \loaden~input_o\,
	combout => \s_shiftreg~15_combout\);

\s_shiftreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \s_shiftreg~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftreg(1));

\RotateLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~10_combout\ = (\shamount[0]~input_o\ & ((\shamount[1]~input_o\ & (s_shiftreg(7))) # (!\shamount[1]~input_o\ & ((s_shiftreg(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamount[0]~input_o\,
	datab => s_shiftreg(7),
	datac => s_shiftreg(1),
	datad => \shamount[1]~input_o\,
	combout => \RotateLeft0~10_combout\);

\RotateLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~11_combout\ = (\RotateLeft0~10_combout\) # ((\ShiftLeft0~1_combout\ & !\shamount[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~10_combout\,
	datab => \ShiftLeft0~1_combout\,
	datad => \shamount[0]~input_o\,
	combout => \RotateLeft0~11_combout\);

\ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (\shamount[0]~input_o\ & (((s_shiftreg(1) & !\shamount[1]~input_o\)))) # (!\shamount[0]~input_o\ & (\ShiftLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~1_combout\,
	datab => s_shiftreg(1),
	datac => \shamount[0]~input_o\,
	datad => \shamount[1]~input_o\,
	combout => \ShiftLeft0~2_combout\);

\ShiftRight1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~8_combout\ = (!\shamount[1]~input_o\ & ((\shamount[0]~input_o\ & (s_shiftreg(7))) # (!\shamount[0]~input_o\ & ((s_shiftreg(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(7),
	datab => s_shiftreg(6),
	datac => \shamount[0]~input_o\,
	datad => \shamount[1]~input_o\,
	combout => \ShiftRight1~8_combout\);

\RotateRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~4_combout\ = (\shamount[1]~input_o\ & ((\shamount[0]~input_o\ & (s_shiftreg(1))) # (!\shamount[0]~input_o\ & ((s_shiftreg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamount[1]~input_o\,
	datab => s_shiftreg(1),
	datac => s_shiftreg(0),
	datad => \shamount[0]~input_o\,
	combout => \RotateRight0~4_combout\);

\RotateRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~5_combout\ = (\ShiftRight1~8_combout\) # (\RotateRight0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~8_combout\,
	datab => \RotateRight0~4_combout\,
	combout => \RotateRight0~5_combout\);

\s_shiftreg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~16_combout\ = (\s_shiftreg[1]~8_combout\ & ((\s_shiftreg[1]~9_combout\ & ((\RotateRight0~5_combout\))) # (!\s_shiftreg[1]~9_combout\ & (\ShiftLeft0~2_combout\)))) # (!\s_shiftreg[1]~8_combout\ & (((\s_shiftreg[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~2_combout\,
	datab => \RotateRight0~5_combout\,
	datac => \s_shiftreg[1]~8_combout\,
	datad => \s_shiftreg[1]~9_combout\,
	combout => \s_shiftreg~16_combout\);

\s_shiftreg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~17_combout\ = (\s_shiftreg[1]~7_combout\ & ((\s_shiftreg~16_combout\ & ((\RotateLeft0~13_combout\))) # (!\s_shiftreg~16_combout\ & (\RotateLeft0~11_combout\)))) # (!\s_shiftreg[1]~7_combout\ & (((\s_shiftreg~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~11_combout\,
	datab => \RotateLeft0~13_combout\,
	datac => \s_shiftreg[1]~7_combout\,
	datad => \s_shiftreg~16_combout\,
	combout => \s_shiftreg~17_combout\);

\ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~3_combout\ = (\shamount[0]~input_o\ & (s_shiftreg(7))) # (!\shamount[0]~input_o\ & ((\shamount[1]~input_o\ & (s_shiftreg(7))) # (!\shamount[1]~input_o\ & ((s_shiftreg(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(7),
	datab => s_shiftreg(6),
	datac => \shamount[0]~input_o\,
	datad => \shamount[1]~input_o\,
	combout => \ShiftRight0~3_combout\);

\s_shiftreg~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~18_combout\ = (\s_shiftreg[1]~12_combout\ & (((\s_shiftreg[1]~6_combout\)))) # (!\s_shiftreg[1]~12_combout\ & ((\s_shiftreg[1]~6_combout\ & (\ShiftRight0~3_combout\)) # (!\s_shiftreg[1]~6_combout\ & ((\ShiftRight1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftreg[1]~12_combout\,
	datab => \ShiftRight0~3_combout\,
	datac => \s_shiftreg[1]~6_combout\,
	datad => \ShiftRight1~8_combout\,
	combout => \s_shiftreg~18_combout\);

\RotateRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~6_combout\ = (\shamount[1]~input_o\ & (s_shiftreg(5))) # (!\shamount[1]~input_o\ & ((s_shiftreg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(5),
	datab => s_shiftreg(3),
	datad => \shamount[1]~input_o\,
	combout => \RotateRight0~6_combout\);

\RotateRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~7_combout\ = (\shamount[0]~input_o\ & (\RotateRight0~6_combout\)) # (!\shamount[0]~input_o\ & ((\ShiftRight1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~6_combout\,
	datab => \ShiftRight1~6_combout\,
	datad => \shamount[0]~input_o\,
	combout => \RotateRight0~7_combout\);

\s_shiftreg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~19_combout\ = (\s_shiftreg[1]~12_combout\ & ((\s_shiftreg~18_combout\ & ((\RotateRight0~7_combout\))) # (!\s_shiftreg~18_combout\ & (\s_shiftreg~17_combout\)))) # (!\s_shiftreg[1]~12_combout\ & (((\s_shiftreg~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftreg~17_combout\,
	datab => \s_shiftreg[1]~12_combout\,
	datac => \s_shiftreg~18_combout\,
	datad => \RotateRight0~7_combout\,
	combout => \s_shiftreg~19_combout\);

\s_shiftreg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~20_combout\ = (\loaden~input_o\ & (\datain[2]~input_o\)) # (!\loaden~input_o\ & ((\s_shiftreg~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datain[2]~input_o\,
	datab => \s_shiftreg~19_combout\,
	datad => \loaden~input_o\,
	combout => \s_shiftreg~20_combout\);

\s_shiftreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \s_shiftreg~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftreg(2));

\ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = (\shamount[1]~input_o\ & (s_shiftreg(0))) # (!\shamount[1]~input_o\ & ((s_shiftreg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(0),
	datab => s_shiftreg(2),
	datad => \shamount[1]~input_o\,
	combout => \ShiftLeft0~1_combout\);

\ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (!\shamount[2]~input_o\ & ((\shamount[0]~input_o\ & (\ShiftLeft0~1_combout\)) # (!\shamount[0]~input_o\ & ((\RotateLeft0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~1_combout\,
	datab => \RotateLeft0~0_combout\,
	datac => \shamount[0]~input_o\,
	datad => \shamount[2]~input_o\,
	combout => \ShiftLeft0~3_combout\);

\RotateLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~12_combout\ = (\shamount[1]~input_o\ & (s_shiftreg(4))) # (!\shamount[1]~input_o\ & ((s_shiftreg(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(4),
	datab => s_shiftreg(6),
	datad => \shamount[1]~input_o\,
	combout => \RotateLeft0~12_combout\);

\RotateLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~14_combout\ = (\shamount[0]~input_o\ & (\RotateLeft0~12_combout\)) # (!\shamount[0]~input_o\ & ((\RotateLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~12_combout\,
	datab => \RotateLeft0~4_combout\,
	datad => \shamount[0]~input_o\,
	combout => \RotateLeft0~14_combout\);

\RotateRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~8_combout\ = (!\shamount[2]~input_o\ & ((\shamount[0]~input_o\ & (\RotateRight0~0_combout\)) # (!\shamount[0]~input_o\ & ((\RotateRight0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~0_combout\,
	datab => \RotateRight0~6_combout\,
	datac => \shamount[0]~input_o\,
	datad => \shamount[2]~input_o\,
	combout => \RotateRight0~8_combout\);

\s_shiftreg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~21_combout\ = (\shamount[2]~input_o\ & ((s_shiftreg(7)) # (\rotate~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamount[2]~input_o\,
	datab => s_shiftreg(7),
	datac => \rotate~input_o\,
	combout => \s_shiftreg~21_combout\);

\RotateRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~9_combout\ = (!\shamount[0]~input_o\ & ((\shamount[1]~input_o\ & (s_shiftreg(1))) # (!\shamount[1]~input_o\ & ((s_shiftreg(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(1),
	datab => s_shiftreg(7),
	datac => \shamount[1]~input_o\,
	datad => \shamount[0]~input_o\,
	combout => \RotateRight0~9_combout\);

\RotateRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~10_combout\ = (\RotateRight0~9_combout\) # ((\shamount[0]~input_o\ & \RotateRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~9_combout\,
	datab => \shamount[0]~input_o\,
	datac => \RotateRight0~1_combout\,
	combout => \RotateRight0~10_combout\);

\s_shiftreg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~22_combout\ = (\sharith~input_o\) # ((!\shamount[0]~input_o\ & !\shamount[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sharith~input_o\,
	datac => \shamount[0]~input_o\,
	datad => \shamount[1]~input_o\,
	combout => \s_shiftreg~22_combout\);

\s_shiftreg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~23_combout\ = (\dirleft~input_o\ & (((\rotate~input_o\)))) # (!\dirleft~input_o\ & ((\rotate~input_o\ & (\RotateRight0~10_combout\)) # (!\rotate~input_o\ & ((\s_shiftreg~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~10_combout\,
	datab => \s_shiftreg~22_combout\,
	datac => \dirleft~input_o\,
	datad => \rotate~input_o\,
	combout => \s_shiftreg~23_combout\);

\s_shiftreg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~24_combout\ = (\RotateRight0~8_combout\ & (((\s_shiftreg~21_combout\ & \s_shiftreg~23_combout\)) # (!\dirleft~input_o\))) # (!\RotateRight0~8_combout\ & (\s_shiftreg~21_combout\ & ((\s_shiftreg~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~8_combout\,
	datab => \s_shiftreg~21_combout\,
	datac => \dirleft~input_o\,
	datad => \s_shiftreg~23_combout\,
	combout => \s_shiftreg~24_combout\);

\s_shiftreg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~25_combout\ = (\dirleft~input_o\ & ((\ShiftLeft0~3_combout\) # ((\RotateLeft0~14_combout\ & \s_shiftreg~24_combout\)))) # (!\dirleft~input_o\ & (((\s_shiftreg~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~3_combout\,
	datab => \RotateLeft0~14_combout\,
	datac => \dirleft~input_o\,
	datad => \s_shiftreg~24_combout\,
	combout => \s_shiftreg~25_combout\);

\s_shiftreg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~26_combout\ = (\loaden~input_o\ & (\datain[3]~input_o\)) # (!\loaden~input_o\ & ((\s_shiftreg~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datain[3]~input_o\,
	datab => \s_shiftreg~25_combout\,
	datad => \loaden~input_o\,
	combout => \s_shiftreg~26_combout\);

\s_shiftreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \s_shiftreg~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftreg(3));

\RotateLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~8_combout\ = (\shamount[1]~input_o\ & (s_shiftreg(3))) # (!\shamount[1]~input_o\ & ((s_shiftreg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(3),
	datab => s_shiftreg(5),
	datad => \shamount[1]~input_o\,
	combout => \RotateLeft0~8_combout\);

\RotateLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~13_combout\ = (\shamount[0]~input_o\ & (\RotateLeft0~8_combout\)) # (!\shamount[0]~input_o\ & ((\RotateLeft0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~8_combout\,
	datab => \RotateLeft0~12_combout\,
	datad => \shamount[0]~input_o\,
	combout => \RotateLeft0~13_combout\);

\s_shiftreg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~41_combout\ = (\s_shiftreg[5]~33_combout\ & ((\s_shiftreg[5]~34_combout\ & ((\ShiftLeft0~2_combout\))) # (!\s_shiftreg[5]~34_combout\ & (\ShiftRight1~8_combout\)))) # (!\s_shiftreg[5]~33_combout\ & (((\s_shiftreg[5]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~8_combout\,
	datab => \ShiftLeft0~2_combout\,
	datac => \s_shiftreg[5]~33_combout\,
	datad => \s_shiftreg[5]~34_combout\,
	combout => \s_shiftreg~41_combout\);

\s_shiftreg~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~42_combout\ = (\s_shiftreg[5]~32_combout\ & ((\s_shiftreg~41_combout\ & ((s_shiftreg(7)))) # (!\s_shiftreg~41_combout\ & (\ShiftRight0~3_combout\)))) # (!\s_shiftreg[5]~32_combout\ & (((\s_shiftreg~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~3_combout\,
	datab => s_shiftreg(7),
	datac => \s_shiftreg[5]~32_combout\,
	datad => \s_shiftreg~41_combout\,
	combout => \s_shiftreg~42_combout\);

\s_shiftreg~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~43_combout\ = (\s_shiftreg[5]~37_combout\ & (((\s_shiftreg[5]~31_combout\)))) # (!\s_shiftreg[5]~37_combout\ & ((\s_shiftreg[5]~31_combout\ & (\RotateRight0~7_combout\)) # (!\s_shiftreg[5]~31_combout\ & ((\RotateRight0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftreg[5]~37_combout\,
	datab => \RotateRight0~7_combout\,
	datac => \s_shiftreg[5]~31_combout\,
	datad => \RotateRight0~5_combout\,
	combout => \s_shiftreg~43_combout\);

\s_shiftreg~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~44_combout\ = (\s_shiftreg[5]~37_combout\ & ((\s_shiftreg~43_combout\ & ((\RotateLeft0~11_combout\))) # (!\s_shiftreg~43_combout\ & (\s_shiftreg~42_combout\)))) # (!\s_shiftreg[5]~37_combout\ & (((\s_shiftreg~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftreg~42_combout\,
	datab => \s_shiftreg[5]~37_combout\,
	datac => \s_shiftreg~43_combout\,
	datad => \RotateLeft0~11_combout\,
	combout => \s_shiftreg~44_combout\);

\s_shiftreg[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[6]~2_combout\ = (\s_shiftreg[5]~40_combout\ & ((\s_shiftreg~44_combout\))) # (!\s_shiftreg[5]~40_combout\ & (\RotateLeft0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~13_combout\,
	datab => \s_shiftreg~44_combout\,
	datad => \s_shiftreg[5]~40_combout\,
	combout => \s_shiftreg[6]~2_combout\);

\datain[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(6),
	o => \datain[6]~input_o\);

\s_shiftreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \s_shiftreg[6]~2_combout\,
	asdata => \datain[6]~input_o\,
	sload => \loaden~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftreg(6));

\RotateRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~0_combout\ = (\shamount[1]~input_o\ & (s_shiftreg(6))) # (!\shamount[1]~input_o\ & ((s_shiftreg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftreg(6),
	datab => s_shiftreg(4),
	datad => \shamount[1]~input_o\,
	combout => \RotateRight0~0_combout\);

\s_shiftreg~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~45_combout\ = (\shamount[2]~input_o\ & ((\shamount[0]~input_o\ & (\RotateRight0~0_combout\)) # (!\shamount[0]~input_o\ & ((\RotateRight0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamount[2]~input_o\,
	datab => \RotateRight0~0_combout\,
	datac => \RotateRight0~6_combout\,
	datad => \shamount[0]~input_o\,
	combout => \s_shiftreg~45_combout\);

\s_shiftreg~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~46_combout\ = (\rotate~input_o\ & ((\s_shiftreg~45_combout\) # ((\RotateRight0~10_combout\ & !\shamount[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \s_shiftreg~45_combout\,
	datac => \RotateRight0~10_combout\,
	datad => \shamount[2]~input_o\,
	combout => \s_shiftreg~46_combout\);

\s_shiftreg~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~47_combout\ = (\sharith~input_o\) # ((!\shamount[2]~input_o\ & (!\shamount[0]~input_o\ & !\shamount[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sharith~input_o\,
	datab => \shamount[2]~input_o\,
	datac => \shamount[0]~input_o\,
	datad => \shamount[1]~input_o\,
	combout => \s_shiftreg~47_combout\);

\s_shiftreg~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~48_combout\ = (\s_shiftreg~46_combout\) # ((s_shiftreg(7) & (\s_shiftreg~47_combout\ & !\rotate~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftreg~46_combout\,
	datab => s_shiftreg(7),
	datac => \s_shiftreg~47_combout\,
	datad => \rotate~input_o\,
	combout => \s_shiftreg~48_combout\);

\ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (\shamount[2]~input_o\ & ((\shamount[0]~input_o\ & (\ShiftLeft0~1_combout\)) # (!\shamount[0]~input_o\ & ((\RotateLeft0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamount[2]~input_o\,
	datab => \ShiftLeft0~1_combout\,
	datac => \RotateLeft0~0_combout\,
	datad => \shamount[0]~input_o\,
	combout => \ShiftLeft0~6_combout\);

\ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (\ShiftLeft0~6_combout\) # ((\RotateLeft0~14_combout\ & !\shamount[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~6_combout\,
	datab => \RotateLeft0~14_combout\,
	datad => \shamount[2]~input_o\,
	combout => \ShiftLeft0~7_combout\);

\s_shiftreg[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[7]~3_combout\ = (\dirleft~input_o\ & ((\ShiftLeft0~7_combout\))) # (!\dirleft~input_o\ & (\s_shiftreg~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftreg~48_combout\,
	datab => \ShiftLeft0~7_combout\,
	datad => \dirleft~input_o\,
	combout => \s_shiftreg[7]~3_combout\);

\datain[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(7),
	o => \datain[7]~input_o\);

\s_shiftreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \s_shiftreg[7]~3_combout\,
	asdata => \datain[7]~input_o\,
	sload => \loaden~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftreg(7));

\ShiftRight1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~0_combout\ = (\shamount[0]~input_o\ & ((\shamount[1]~input_o\ & (s_shiftreg(7))) # (!\shamount[1]~input_o\ & ((s_shiftreg(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamount[0]~input_o\,
	datab => s_shiftreg(7),
	datac => s_shiftreg(5),
	datad => \shamount[1]~input_o\,
	combout => \ShiftRight1~0_combout\);

\ShiftRight1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~1_combout\ = (\ShiftRight1~0_combout\) # ((\RotateRight0~0_combout\ & !\shamount[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~0_combout\,
	datab => \RotateRight0~0_combout\,
	datad => \shamount[0]~input_o\,
	combout => \ShiftRight1~1_combout\);

\ShiftRight1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~4_combout\ = (\shamount[2]~input_o\ & (\ShiftRight1~1_combout\)) # (!\shamount[2]~input_o\ & ((\ShiftRight1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~1_combout\,
	datab => \ShiftRight1~3_combout\,
	datad => \shamount[2]~input_o\,
	combout => \ShiftRight1~4_combout\);

\RotateLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~2_combout\ = (\shamount[0]~input_o\ & (\RotateLeft0~0_combout\)) # (!\shamount[0]~input_o\ & ((\RotateLeft0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~0_combout\,
	datab => \RotateLeft0~1_combout\,
	datad => \shamount[0]~input_o\,
	combout => \RotateLeft0~2_combout\);

\s_shiftreg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~4_combout\ = (\rotate~input_o\ & (\RotateLeft0~5_combout\)) # (!\rotate~input_o\ & (((s_shiftreg(0) & \ShiftRight0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~5_combout\,
	datab => s_shiftreg(0),
	datac => \ShiftRight0~0_combout\,
	datad => \rotate~input_o\,
	combout => \s_shiftreg~4_combout\);

\s_shiftreg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg~5_combout\ = (\shamount[2]~input_o\ & (\rotate~input_o\ & (\RotateLeft0~2_combout\))) # (!\shamount[2]~input_o\ & (((\s_shiftreg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \RotateLeft0~2_combout\,
	datac => \s_shiftreg~4_combout\,
	datad => \shamount[2]~input_o\,
	combout => \s_shiftreg~5_combout\);

\s_shiftreg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftreg[0]~0_combout\ = (\dirleft~input_o\ & ((\s_shiftreg~5_combout\))) # (!\dirleft~input_o\ & (\ShiftRight1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~4_combout\,
	datab => \s_shiftreg~5_combout\,
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


