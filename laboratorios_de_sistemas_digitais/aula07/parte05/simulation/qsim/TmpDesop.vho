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

-- DATE "05/06/2022 18:09:07"

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

ENTITY 	freqdivider IS
    PORT (
	clkin : IN std_logic;
	clkout : OUT std_logic
	);
END freqdivider;

ARCHITECTURE structure OF freqdivider IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin : std_logic;
SIGNAL ww_clkout : std_logic;
SIGNAL \clkout~output_o\ : std_logic;
SIGNAL \clkin~input_o\ : std_logic;
SIGNAL \s_divcounter[0]~26_combout\ : std_logic;
SIGNAL \s_divcounter[0]~27\ : std_logic;
SIGNAL \s_divcounter[1]~28_combout\ : std_logic;
SIGNAL \s_divcounter[1]~29\ : std_logic;
SIGNAL \s_divcounter[2]~30_combout\ : std_logic;
SIGNAL \s_divcounter[2]~31\ : std_logic;
SIGNAL \s_divcounter[3]~32_combout\ : std_logic;
SIGNAL \s_divcounter[3]~33\ : std_logic;
SIGNAL \s_divcounter[4]~34_combout\ : std_logic;
SIGNAL \s_divcounter[4]~35\ : std_logic;
SIGNAL \s_divcounter[5]~36_combout\ : std_logic;
SIGNAL \s_divcounter[5]~37\ : std_logic;
SIGNAL \s_divcounter[6]~38_combout\ : std_logic;
SIGNAL \s_divcounter[6]~39\ : std_logic;
SIGNAL \s_divcounter[7]~40_combout\ : std_logic;
SIGNAL \s_divcounter[7]~41\ : std_logic;
SIGNAL \s_divcounter[8]~42_combout\ : std_logic;
SIGNAL \s_divcounter[8]~43\ : std_logic;
SIGNAL \s_divcounter[9]~44_combout\ : std_logic;
SIGNAL \s_divcounter[9]~45\ : std_logic;
SIGNAL \s_divcounter[10]~46_combout\ : std_logic;
SIGNAL \clkout~0_combout\ : std_logic;
SIGNAL \s_divcounter[10]~47\ : std_logic;
SIGNAL \s_divcounter[11]~48_combout\ : std_logic;
SIGNAL \s_divcounter[11]~49\ : std_logic;
SIGNAL \s_divcounter[12]~50_combout\ : std_logic;
SIGNAL \s_divcounter[12]~51\ : std_logic;
SIGNAL \s_divcounter[13]~52_combout\ : std_logic;
SIGNAL \s_divcounter[13]~53\ : std_logic;
SIGNAL \s_divcounter[14]~54_combout\ : std_logic;
SIGNAL \s_divcounter[14]~55\ : std_logic;
SIGNAL \s_divcounter[15]~56_combout\ : std_logic;
SIGNAL \s_divcounter[15]~57\ : std_logic;
SIGNAL \s_divcounter[16]~58_combout\ : std_logic;
SIGNAL \s_divcounter[16]~59\ : std_logic;
SIGNAL \s_divcounter[17]~60_combout\ : std_logic;
SIGNAL \s_divcounter[17]~61\ : std_logic;
SIGNAL \s_divcounter[18]~62_combout\ : std_logic;
SIGNAL \s_divcounter[18]~63\ : std_logic;
SIGNAL \s_divcounter[19]~64_combout\ : std_logic;
SIGNAL \s_divcounter[19]~65\ : std_logic;
SIGNAL \s_divcounter[20]~66_combout\ : std_logic;
SIGNAL \s_divcounter[20]~67\ : std_logic;
SIGNAL \s_divcounter[21]~68_combout\ : std_logic;
SIGNAL \s_divcounter[21]~69\ : std_logic;
SIGNAL \s_divcounter[22]~70_combout\ : std_logic;
SIGNAL \s_divcounter[22]~71\ : std_logic;
SIGNAL \s_divcounter[23]~72_combout\ : std_logic;
SIGNAL \s_divcounter[23]~73\ : std_logic;
SIGNAL \s_divcounter[24]~74_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \clkout~1_combout\ : std_logic;
SIGNAL \clkout~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \clkout~3_combout\ : std_logic;
SIGNAL \s_divcounter[24]~75\ : std_logic;
SIGNAL \s_divcounter[25]~76_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \clkout~4_combout\ : std_logic;
SIGNAL \clkout~5_combout\ : std_logic;
SIGNAL \clkout~6_combout\ : std_logic;
SIGNAL \clkout~7_combout\ : std_logic;
SIGNAL \clkout~8_combout\ : std_logic;
SIGNAL \clkout~9_combout\ : std_logic;
SIGNAL \clkout~reg0_q\ : std_logic;
SIGNAL s_divcounter : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_clkin <= clkin;
clkout <= ww_clkout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clkout~reg0_q\,
	devoe => ww_devoe,
	o => \clkout~output_o\);

\clkin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin,
	o => \clkin~input_o\);

\s_divcounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[0]~26_combout\ = s_divcounter(0) $ (VCC)
-- \s_divcounter[0]~27\ = CARRY(s_divcounter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(0),
	datad => VCC,
	combout => \s_divcounter[0]~26_combout\,
	cout => \s_divcounter[0]~27\);

\s_divcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[0]~26_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(0));

\s_divcounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[1]~28_combout\ = (s_divcounter(1) & (!\s_divcounter[0]~27\)) # (!s_divcounter(1) & ((\s_divcounter[0]~27\) # (GND)))
-- \s_divcounter[1]~29\ = CARRY((!\s_divcounter[0]~27\) # (!s_divcounter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(1),
	datad => VCC,
	cin => \s_divcounter[0]~27\,
	combout => \s_divcounter[1]~28_combout\,
	cout => \s_divcounter[1]~29\);

\s_divcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[1]~28_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(1));

\s_divcounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[2]~30_combout\ = (s_divcounter(2) & (\s_divcounter[1]~29\ $ (GND))) # (!s_divcounter(2) & (!\s_divcounter[1]~29\ & VCC))
-- \s_divcounter[2]~31\ = CARRY((s_divcounter(2) & !\s_divcounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(2),
	datad => VCC,
	cin => \s_divcounter[1]~29\,
	combout => \s_divcounter[2]~30_combout\,
	cout => \s_divcounter[2]~31\);

\s_divcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[2]~30_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(2));

\s_divcounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[3]~32_combout\ = (s_divcounter(3) & (!\s_divcounter[2]~31\)) # (!s_divcounter(3) & ((\s_divcounter[2]~31\) # (GND)))
-- \s_divcounter[3]~33\ = CARRY((!\s_divcounter[2]~31\) # (!s_divcounter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(3),
	datad => VCC,
	cin => \s_divcounter[2]~31\,
	combout => \s_divcounter[3]~32_combout\,
	cout => \s_divcounter[3]~33\);

\s_divcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[3]~32_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(3));

\s_divcounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[4]~34_combout\ = (s_divcounter(4) & (\s_divcounter[3]~33\ $ (GND))) # (!s_divcounter(4) & (!\s_divcounter[3]~33\ & VCC))
-- \s_divcounter[4]~35\ = CARRY((s_divcounter(4) & !\s_divcounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(4),
	datad => VCC,
	cin => \s_divcounter[3]~33\,
	combout => \s_divcounter[4]~34_combout\,
	cout => \s_divcounter[4]~35\);

\s_divcounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[4]~34_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(4));

\s_divcounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[5]~36_combout\ = (s_divcounter(5) & (!\s_divcounter[4]~35\)) # (!s_divcounter(5) & ((\s_divcounter[4]~35\) # (GND)))
-- \s_divcounter[5]~37\ = CARRY((!\s_divcounter[4]~35\) # (!s_divcounter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(5),
	datad => VCC,
	cin => \s_divcounter[4]~35\,
	combout => \s_divcounter[5]~36_combout\,
	cout => \s_divcounter[5]~37\);

\s_divcounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[5]~36_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(5));

\s_divcounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[6]~38_combout\ = (s_divcounter(6) & (\s_divcounter[5]~37\ $ (GND))) # (!s_divcounter(6) & (!\s_divcounter[5]~37\ & VCC))
-- \s_divcounter[6]~39\ = CARRY((s_divcounter(6) & !\s_divcounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(6),
	datad => VCC,
	cin => \s_divcounter[5]~37\,
	combout => \s_divcounter[6]~38_combout\,
	cout => \s_divcounter[6]~39\);

\s_divcounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[6]~38_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(6));

\s_divcounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[7]~40_combout\ = (s_divcounter(7) & (!\s_divcounter[6]~39\)) # (!s_divcounter(7) & ((\s_divcounter[6]~39\) # (GND)))
-- \s_divcounter[7]~41\ = CARRY((!\s_divcounter[6]~39\) # (!s_divcounter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(7),
	datad => VCC,
	cin => \s_divcounter[6]~39\,
	combout => \s_divcounter[7]~40_combout\,
	cout => \s_divcounter[7]~41\);

\s_divcounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[7]~40_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(7));

\s_divcounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[8]~42_combout\ = (s_divcounter(8) & (\s_divcounter[7]~41\ $ (GND))) # (!s_divcounter(8) & (!\s_divcounter[7]~41\ & VCC))
-- \s_divcounter[8]~43\ = CARRY((s_divcounter(8) & !\s_divcounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(8),
	datad => VCC,
	cin => \s_divcounter[7]~41\,
	combout => \s_divcounter[8]~42_combout\,
	cout => \s_divcounter[8]~43\);

\s_divcounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[8]~42_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(8));

\s_divcounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[9]~44_combout\ = (s_divcounter(9) & (!\s_divcounter[8]~43\)) # (!s_divcounter(9) & ((\s_divcounter[8]~43\) # (GND)))
-- \s_divcounter[9]~45\ = CARRY((!\s_divcounter[8]~43\) # (!s_divcounter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(9),
	datad => VCC,
	cin => \s_divcounter[8]~43\,
	combout => \s_divcounter[9]~44_combout\,
	cout => \s_divcounter[9]~45\);

\s_divcounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[9]~44_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(9));

\s_divcounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[10]~46_combout\ = (s_divcounter(10) & (\s_divcounter[9]~45\ $ (GND))) # (!s_divcounter(10) & (!\s_divcounter[9]~45\ & VCC))
-- \s_divcounter[10]~47\ = CARRY((s_divcounter(10) & !\s_divcounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(10),
	datad => VCC,
	cin => \s_divcounter[9]~45\,
	combout => \s_divcounter[10]~46_combout\,
	cout => \s_divcounter[10]~47\);

\s_divcounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[10]~46_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(10));

\clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~0_combout\ = (!s_divcounter(7) & (!s_divcounter(8) & (!s_divcounter(9) & !s_divcounter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(7),
	datab => s_divcounter(8),
	datac => s_divcounter(9),
	datad => s_divcounter(10),
	combout => \clkout~0_combout\);

\s_divcounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[11]~48_combout\ = (s_divcounter(11) & (!\s_divcounter[10]~47\)) # (!s_divcounter(11) & ((\s_divcounter[10]~47\) # (GND)))
-- \s_divcounter[11]~49\ = CARRY((!\s_divcounter[10]~47\) # (!s_divcounter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(11),
	datad => VCC,
	cin => \s_divcounter[10]~47\,
	combout => \s_divcounter[11]~48_combout\,
	cout => \s_divcounter[11]~49\);

\s_divcounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[11]~48_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(11));

\s_divcounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[12]~50_combout\ = (s_divcounter(12) & (\s_divcounter[11]~49\ $ (GND))) # (!s_divcounter(12) & (!\s_divcounter[11]~49\ & VCC))
-- \s_divcounter[12]~51\ = CARRY((s_divcounter(12) & !\s_divcounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(12),
	datad => VCC,
	cin => \s_divcounter[11]~49\,
	combout => \s_divcounter[12]~50_combout\,
	cout => \s_divcounter[12]~51\);

\s_divcounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[12]~50_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(12));

\s_divcounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[13]~52_combout\ = (s_divcounter(13) & (!\s_divcounter[12]~51\)) # (!s_divcounter(13) & ((\s_divcounter[12]~51\) # (GND)))
-- \s_divcounter[13]~53\ = CARRY((!\s_divcounter[12]~51\) # (!s_divcounter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(13),
	datad => VCC,
	cin => \s_divcounter[12]~51\,
	combout => \s_divcounter[13]~52_combout\,
	cout => \s_divcounter[13]~53\);

\s_divcounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[13]~52_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(13));

\s_divcounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[14]~54_combout\ = (s_divcounter(14) & (\s_divcounter[13]~53\ $ (GND))) # (!s_divcounter(14) & (!\s_divcounter[13]~53\ & VCC))
-- \s_divcounter[14]~55\ = CARRY((s_divcounter(14) & !\s_divcounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(14),
	datad => VCC,
	cin => \s_divcounter[13]~53\,
	combout => \s_divcounter[14]~54_combout\,
	cout => \s_divcounter[14]~55\);

\s_divcounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[14]~54_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(14));

\s_divcounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[15]~56_combout\ = (s_divcounter(15) & (!\s_divcounter[14]~55\)) # (!s_divcounter(15) & ((\s_divcounter[14]~55\) # (GND)))
-- \s_divcounter[15]~57\ = CARRY((!\s_divcounter[14]~55\) # (!s_divcounter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(15),
	datad => VCC,
	cin => \s_divcounter[14]~55\,
	combout => \s_divcounter[15]~56_combout\,
	cout => \s_divcounter[15]~57\);

\s_divcounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[15]~56_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(15));

\s_divcounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[16]~58_combout\ = (s_divcounter(16) & (\s_divcounter[15]~57\ $ (GND))) # (!s_divcounter(16) & (!\s_divcounter[15]~57\ & VCC))
-- \s_divcounter[16]~59\ = CARRY((s_divcounter(16) & !\s_divcounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(16),
	datad => VCC,
	cin => \s_divcounter[15]~57\,
	combout => \s_divcounter[16]~58_combout\,
	cout => \s_divcounter[16]~59\);

\s_divcounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[16]~58_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(16));

\s_divcounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[17]~60_combout\ = (s_divcounter(17) & (!\s_divcounter[16]~59\)) # (!s_divcounter(17) & ((\s_divcounter[16]~59\) # (GND)))
-- \s_divcounter[17]~61\ = CARRY((!\s_divcounter[16]~59\) # (!s_divcounter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(17),
	datad => VCC,
	cin => \s_divcounter[16]~59\,
	combout => \s_divcounter[17]~60_combout\,
	cout => \s_divcounter[17]~61\);

\s_divcounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[17]~60_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(17));

\s_divcounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[18]~62_combout\ = (s_divcounter(18) & (\s_divcounter[17]~61\ $ (GND))) # (!s_divcounter(18) & (!\s_divcounter[17]~61\ & VCC))
-- \s_divcounter[18]~63\ = CARRY((s_divcounter(18) & !\s_divcounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(18),
	datad => VCC,
	cin => \s_divcounter[17]~61\,
	combout => \s_divcounter[18]~62_combout\,
	cout => \s_divcounter[18]~63\);

\s_divcounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[18]~62_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(18));

\s_divcounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[19]~64_combout\ = (s_divcounter(19) & (!\s_divcounter[18]~63\)) # (!s_divcounter(19) & ((\s_divcounter[18]~63\) # (GND)))
-- \s_divcounter[19]~65\ = CARRY((!\s_divcounter[18]~63\) # (!s_divcounter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(19),
	datad => VCC,
	cin => \s_divcounter[18]~63\,
	combout => \s_divcounter[19]~64_combout\,
	cout => \s_divcounter[19]~65\);

\s_divcounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[19]~64_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(19));

\s_divcounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[20]~66_combout\ = (s_divcounter(20) & (\s_divcounter[19]~65\ $ (GND))) # (!s_divcounter(20) & (!\s_divcounter[19]~65\ & VCC))
-- \s_divcounter[20]~67\ = CARRY((s_divcounter(20) & !\s_divcounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(20),
	datad => VCC,
	cin => \s_divcounter[19]~65\,
	combout => \s_divcounter[20]~66_combout\,
	cout => \s_divcounter[20]~67\);

\s_divcounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[20]~66_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(20));

\s_divcounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[21]~68_combout\ = (s_divcounter(21) & (!\s_divcounter[20]~67\)) # (!s_divcounter(21) & ((\s_divcounter[20]~67\) # (GND)))
-- \s_divcounter[21]~69\ = CARRY((!\s_divcounter[20]~67\) # (!s_divcounter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(21),
	datad => VCC,
	cin => \s_divcounter[20]~67\,
	combout => \s_divcounter[21]~68_combout\,
	cout => \s_divcounter[21]~69\);

\s_divcounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[21]~68_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(21));

\s_divcounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[22]~70_combout\ = (s_divcounter(22) & (\s_divcounter[21]~69\ $ (GND))) # (!s_divcounter(22) & (!\s_divcounter[21]~69\ & VCC))
-- \s_divcounter[22]~71\ = CARRY((s_divcounter(22) & !\s_divcounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(22),
	datad => VCC,
	cin => \s_divcounter[21]~69\,
	combout => \s_divcounter[22]~70_combout\,
	cout => \s_divcounter[22]~71\);

\s_divcounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[22]~70_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(22));

\s_divcounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[23]~72_combout\ = (s_divcounter(23) & (!\s_divcounter[22]~71\)) # (!s_divcounter(23) & ((\s_divcounter[22]~71\) # (GND)))
-- \s_divcounter[23]~73\ = CARRY((!\s_divcounter[22]~71\) # (!s_divcounter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(23),
	datad => VCC,
	cin => \s_divcounter[22]~71\,
	combout => \s_divcounter[23]~72_combout\,
	cout => \s_divcounter[23]~73\);

\s_divcounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[23]~72_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(23));

\s_divcounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[24]~74_combout\ = (s_divcounter(24) & (\s_divcounter[23]~73\ $ (GND))) # (!s_divcounter(24) & (!\s_divcounter[23]~73\ & VCC))
-- \s_divcounter[24]~75\ = CARRY((s_divcounter(24) & !\s_divcounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(24),
	datad => VCC,
	cin => \s_divcounter[23]~73\,
	combout => \s_divcounter[24]~74_combout\,
	cout => \s_divcounter[24]~75\);

\s_divcounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[24]~74_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(24));

\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!s_divcounter(11) & (!s_divcounter(16) & (!s_divcounter(18) & !s_divcounter(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(11),
	datab => s_divcounter(16),
	datac => s_divcounter(18),
	datad => s_divcounter(24),
	combout => \LessThan0~0_combout\);

\clkout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~1_combout\ = (s_divcounter(0) & (s_divcounter(1) & (s_divcounter(2) & s_divcounter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(0),
	datab => s_divcounter(1),
	datac => s_divcounter(2),
	datad => s_divcounter(3),
	combout => \clkout~1_combout\);

\clkout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~2_combout\ = (\clkout~1_combout\ & (s_divcounter(4) & s_divcounter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkout~1_combout\,
	datab => s_divcounter(4),
	datac => s_divcounter(5),
	combout => \clkout~2_combout\);

\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\clkout~0_combout\ & (\LessThan0~0_combout\ & ((!s_divcounter(6)) # (!\clkout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkout~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => \clkout~2_combout\,
	datad => s_divcounter(6),
	combout => \LessThan0~1_combout\);

\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!s_divcounter(17) & !s_divcounter(18))) # (!s_divcounter(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_divcounter(17),
	datac => s_divcounter(18),
	datad => s_divcounter(23),
	combout => \LessThan0~2_combout\);

\clkout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~3_combout\ = (s_divcounter(19) & (s_divcounter(20) & (s_divcounter(21) & s_divcounter(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(19),
	datab => s_divcounter(20),
	datac => s_divcounter(21),
	datad => s_divcounter(22),
	combout => \clkout~3_combout\);

\s_divcounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_divcounter[25]~76_combout\ = s_divcounter(25) $ (\s_divcounter[24]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(25),
	cin => \s_divcounter[24]~75\,
	combout => \s_divcounter[25]~76_combout\);

\s_divcounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_divcounter[25]~76_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_divcounter(25));

\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((!s_divcounter(24) & ((\LessThan0~2_combout\) # (!\clkout~3_combout\)))) # (!s_divcounter(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \clkout~3_combout\,
	datac => s_divcounter(24),
	datad => s_divcounter(25),
	combout => \LessThan0~3_combout\);

\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!s_divcounter(16) & (!s_divcounter(18) & !s_divcounter(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_divcounter(16),
	datac => s_divcounter(18),
	datad => s_divcounter(24),
	combout => \LessThan0~4_combout\);

\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((!s_divcounter(15)) # (!s_divcounter(14))) # (!s_divcounter(13))) # (!s_divcounter(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(12),
	datab => s_divcounter(13),
	datac => s_divcounter(14),
	datad => s_divcounter(15),
	combout => \LessThan0~5_combout\);

\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!\LessThan0~1_combout\ & (!\LessThan0~3_combout\ & ((!\LessThan0~5_combout\) # (!\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~3_combout\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

\clkout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~4_combout\ = (s_divcounter(12) & (s_divcounter(13) & (s_divcounter(14) & !s_divcounter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(12),
	datab => s_divcounter(13),
	datac => s_divcounter(14),
	datad => s_divcounter(6),
	combout => \clkout~4_combout\);

\clkout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~5_combout\ = (s_divcounter(11) & (s_divcounter(16) & (!s_divcounter(15) & !s_divcounter(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(11),
	datab => s_divcounter(16),
	datac => s_divcounter(15),
	datad => s_divcounter(17),
	combout => \clkout~5_combout\);

\clkout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~6_combout\ = (s_divcounter(18) & (s_divcounter(24) & (!s_divcounter(23) & !s_divcounter(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_divcounter(18),
	datab => s_divcounter(24),
	datac => s_divcounter(23),
	datad => s_divcounter(25),
	combout => \clkout~6_combout\);

\clkout~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~7_combout\ = (\clkout~4_combout\ & (\clkout~5_combout\ & \clkout~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkout~4_combout\,
	datab => \clkout~5_combout\,
	datac => \clkout~6_combout\,
	combout => \clkout~7_combout\);

\clkout~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~8_combout\ = (\clkout~2_combout\ & (\clkout~0_combout\ & (\clkout~3_combout\ & \clkout~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkout~2_combout\,
	datab => \clkout~0_combout\,
	datac => \clkout~3_combout\,
	datad => \clkout~7_combout\,
	combout => \clkout~8_combout\);

\clkout~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~9_combout\ = (!\LessThan0~6_combout\ & ((\clkout~reg0_q\) # (\clkout~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \clkout~reg0_q\,
	datac => \clkout~8_combout\,
	combout => \clkout~9_combout\);

\clkout~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \clkout~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkout~reg0_q\);

ww_clkout <= \clkout~output_o\;
END structure;


