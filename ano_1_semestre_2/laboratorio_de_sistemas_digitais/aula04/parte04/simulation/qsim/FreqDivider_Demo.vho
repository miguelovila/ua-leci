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

-- DATE "04/11/2022 11:55:12"

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
	k : IN std_logic_vector(31 DOWNTO 0);
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
SIGNAL ww_k : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clkout : std_logic;
SIGNAL \clkout~output_o\ : std_logic;
SIGNAL \clkin~input_o\ : std_logic;
SIGNAL \s_counter[0]~93_combout\ : std_logic;
SIGNAL \k[2]~input_o\ : std_logic;
SIGNAL \s_counter[1]~31_combout\ : std_logic;
SIGNAL \k[1]~input_o\ : std_logic;
SIGNAL \clkout~0_combout\ : std_logic;
SIGNAL \k[3]~input_o\ : std_logic;
SIGNAL \k[4]~input_o\ : std_logic;
SIGNAL \s_counter[1]~32\ : std_logic;
SIGNAL \s_counter[2]~33_combout\ : std_logic;
SIGNAL \s_counter[2]~34\ : std_logic;
SIGNAL \s_counter[3]~35_combout\ : std_logic;
SIGNAL \clkout~1_combout\ : std_logic;
SIGNAL \k[5]~input_o\ : std_logic;
SIGNAL \k[6]~input_o\ : std_logic;
SIGNAL \s_counter[3]~36\ : std_logic;
SIGNAL \s_counter[4]~37_combout\ : std_logic;
SIGNAL \s_counter[4]~38\ : std_logic;
SIGNAL \s_counter[5]~39_combout\ : std_logic;
SIGNAL \clkout~2_combout\ : std_logic;
SIGNAL \k[7]~input_o\ : std_logic;
SIGNAL \k[8]~input_o\ : std_logic;
SIGNAL \s_counter[5]~40\ : std_logic;
SIGNAL \s_counter[6]~41_combout\ : std_logic;
SIGNAL \s_counter[6]~42\ : std_logic;
SIGNAL \s_counter[7]~43_combout\ : std_logic;
SIGNAL \clkout~3_combout\ : std_logic;
SIGNAL \clkout~4_combout\ : std_logic;
SIGNAL \k[9]~input_o\ : std_logic;
SIGNAL \k[10]~input_o\ : std_logic;
SIGNAL \s_counter[7]~44\ : std_logic;
SIGNAL \s_counter[8]~45_combout\ : std_logic;
SIGNAL \s_counter[8]~46\ : std_logic;
SIGNAL \s_counter[9]~47_combout\ : std_logic;
SIGNAL \clkout~5_combout\ : std_logic;
SIGNAL \k[11]~input_o\ : std_logic;
SIGNAL \k[12]~input_o\ : std_logic;
SIGNAL \s_counter[9]~48\ : std_logic;
SIGNAL \s_counter[10]~49_combout\ : std_logic;
SIGNAL \s_counter[10]~50\ : std_logic;
SIGNAL \s_counter[11]~51_combout\ : std_logic;
SIGNAL \clkout~6_combout\ : std_logic;
SIGNAL \k[13]~input_o\ : std_logic;
SIGNAL \k[14]~input_o\ : std_logic;
SIGNAL \s_counter[11]~52\ : std_logic;
SIGNAL \s_counter[12]~53_combout\ : std_logic;
SIGNAL \s_counter[12]~54\ : std_logic;
SIGNAL \s_counter[13]~55_combout\ : std_logic;
SIGNAL \clkout~7_combout\ : std_logic;
SIGNAL \k[15]~input_o\ : std_logic;
SIGNAL \k[16]~input_o\ : std_logic;
SIGNAL \s_counter[13]~56\ : std_logic;
SIGNAL \s_counter[14]~57_combout\ : std_logic;
SIGNAL \s_counter[14]~58\ : std_logic;
SIGNAL \s_counter[15]~59_combout\ : std_logic;
SIGNAL \clkout~8_combout\ : std_logic;
SIGNAL \clkout~9_combout\ : std_logic;
SIGNAL \k[17]~input_o\ : std_logic;
SIGNAL \k[18]~input_o\ : std_logic;
SIGNAL \s_counter[15]~60\ : std_logic;
SIGNAL \s_counter[16]~61_combout\ : std_logic;
SIGNAL \s_counter[16]~62\ : std_logic;
SIGNAL \s_counter[17]~63_combout\ : std_logic;
SIGNAL \clkout~10_combout\ : std_logic;
SIGNAL \k[19]~input_o\ : std_logic;
SIGNAL \k[20]~input_o\ : std_logic;
SIGNAL \s_counter[17]~64\ : std_logic;
SIGNAL \s_counter[18]~65_combout\ : std_logic;
SIGNAL \s_counter[18]~66\ : std_logic;
SIGNAL \s_counter[19]~67_combout\ : std_logic;
SIGNAL \clkout~11_combout\ : std_logic;
SIGNAL \k[21]~input_o\ : std_logic;
SIGNAL \k[22]~input_o\ : std_logic;
SIGNAL \s_counter[19]~68\ : std_logic;
SIGNAL \s_counter[20]~69_combout\ : std_logic;
SIGNAL \s_counter[20]~70\ : std_logic;
SIGNAL \s_counter[21]~71_combout\ : std_logic;
SIGNAL \clkout~12_combout\ : std_logic;
SIGNAL \k[23]~input_o\ : std_logic;
SIGNAL \k[24]~input_o\ : std_logic;
SIGNAL \s_counter[21]~72\ : std_logic;
SIGNAL \s_counter[22]~73_combout\ : std_logic;
SIGNAL \s_counter[22]~74\ : std_logic;
SIGNAL \s_counter[23]~75_combout\ : std_logic;
SIGNAL \clkout~13_combout\ : std_logic;
SIGNAL \clkout~14_combout\ : std_logic;
SIGNAL \k[25]~input_o\ : std_logic;
SIGNAL \k[26]~input_o\ : std_logic;
SIGNAL \s_counter[23]~76\ : std_logic;
SIGNAL \s_counter[24]~77_combout\ : std_logic;
SIGNAL \s_counter[24]~78\ : std_logic;
SIGNAL \s_counter[25]~79_combout\ : std_logic;
SIGNAL \clkout~15_combout\ : std_logic;
SIGNAL \k[27]~input_o\ : std_logic;
SIGNAL \k[28]~input_o\ : std_logic;
SIGNAL \s_counter[25]~80\ : std_logic;
SIGNAL \s_counter[26]~81_combout\ : std_logic;
SIGNAL \s_counter[26]~82\ : std_logic;
SIGNAL \s_counter[27]~83_combout\ : std_logic;
SIGNAL \clkout~16_combout\ : std_logic;
SIGNAL \k[29]~input_o\ : std_logic;
SIGNAL \k[30]~input_o\ : std_logic;
SIGNAL \s_counter[27]~84\ : std_logic;
SIGNAL \s_counter[28]~85_combout\ : std_logic;
SIGNAL \s_counter[28]~86\ : std_logic;
SIGNAL \s_counter[29]~87_combout\ : std_logic;
SIGNAL \clkout~17_combout\ : std_logic;
SIGNAL \k[31]~input_o\ : std_logic;
SIGNAL \s_counter[29]~88\ : std_logic;
SIGNAL \s_counter[30]~89_combout\ : std_logic;
SIGNAL \s_counter[30]~90\ : std_logic;
SIGNAL \s_counter[31]~91_combout\ : std_logic;
SIGNAL \clkout~18_combout\ : std_logic;
SIGNAL \clkout~19_combout\ : std_logic;
SIGNAL \clkout~20_combout\ : std_logic;
SIGNAL \k[0]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Equal1~11_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Equal1~12_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Equal1~13_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Equal1~14_combout\ : std_logic;
SIGNAL \Equal1~15_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Equal1~16_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Equal1~17_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Equal1~18_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Equal1~19_combout\ : std_logic;
SIGNAL \Equal1~20_combout\ : std_logic;
SIGNAL \clkout~21_combout\ : std_logic;
SIGNAL \clkout~reg0_q\ : std_logic;
SIGNAL s_counter : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clkin <= clkin;
ww_k <= k;
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

\s_counter[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[0]~93_combout\ = !s_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(0),
	combout => \s_counter[0]~93_combout\);

\s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[0]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(0));

\k[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(2),
	o => \k[2]~input_o\);

\s_counter[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[1]~31_combout\ = (s_counter(0) & (s_counter(1) $ (VCC))) # (!s_counter(0) & (s_counter(1) & VCC))
-- \s_counter[1]~32\ = CARRY((s_counter(0) & s_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(0),
	datab => s_counter(1),
	datad => VCC,
	combout => \s_counter[1]~31_combout\,
	cout => \s_counter[1]~32\);

\s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(1));

\k[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(1),
	o => \k[1]~input_o\);

\clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~0_combout\ = (s_counter(0) & (\k[1]~input_o\ & (\k[2]~input_o\ $ (!s_counter(1))))) # (!s_counter(0) & (!\k[1]~input_o\ & (\k[2]~input_o\ $ (!s_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(0),
	datab => \k[2]~input_o\,
	datac => s_counter(1),
	datad => \k[1]~input_o\,
	combout => \clkout~0_combout\);

\k[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(3),
	o => \k[3]~input_o\);

\k[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(4),
	o => \k[4]~input_o\);

\s_counter[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[2]~33_combout\ = (s_counter(2) & (!\s_counter[1]~32\)) # (!s_counter(2) & ((\s_counter[1]~32\) # (GND)))
-- \s_counter[2]~34\ = CARRY((!\s_counter[1]~32\) # (!s_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(2),
	datad => VCC,
	cin => \s_counter[1]~32\,
	combout => \s_counter[2]~33_combout\,
	cout => \s_counter[2]~34\);

\s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(2));

\s_counter[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[3]~35_combout\ = (s_counter(3) & (\s_counter[2]~34\ $ (GND))) # (!s_counter(3) & (!\s_counter[2]~34\ & VCC))
-- \s_counter[3]~36\ = CARRY((s_counter(3) & !\s_counter[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(3),
	datad => VCC,
	cin => \s_counter[2]~34\,
	combout => \s_counter[3]~35_combout\,
	cout => \s_counter[3]~36\);

\s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(3));

\clkout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~1_combout\ = (\k[3]~input_o\ & (s_counter(2) & (\k[4]~input_o\ $ (!s_counter(3))))) # (!\k[3]~input_o\ & (!s_counter(2) & (\k[4]~input_o\ $ (!s_counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[3]~input_o\,
	datab => \k[4]~input_o\,
	datac => s_counter(3),
	datad => s_counter(2),
	combout => \clkout~1_combout\);

\k[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(5),
	o => \k[5]~input_o\);

\k[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(6),
	o => \k[6]~input_o\);

\s_counter[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[4]~37_combout\ = (s_counter(4) & (!\s_counter[3]~36\)) # (!s_counter(4) & ((\s_counter[3]~36\) # (GND)))
-- \s_counter[4]~38\ = CARRY((!\s_counter[3]~36\) # (!s_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(4),
	datad => VCC,
	cin => \s_counter[3]~36\,
	combout => \s_counter[4]~37_combout\,
	cout => \s_counter[4]~38\);

\s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(4));

\s_counter[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[5]~39_combout\ = (s_counter(5) & (\s_counter[4]~38\ $ (GND))) # (!s_counter(5) & (!\s_counter[4]~38\ & VCC))
-- \s_counter[5]~40\ = CARRY((s_counter(5) & !\s_counter[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(5),
	datad => VCC,
	cin => \s_counter[4]~38\,
	combout => \s_counter[5]~39_combout\,
	cout => \s_counter[5]~40\);

\s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(5));

\clkout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~2_combout\ = (\k[5]~input_o\ & (s_counter(4) & (\k[6]~input_o\ $ (!s_counter(5))))) # (!\k[5]~input_o\ & (!s_counter(4) & (\k[6]~input_o\ $ (!s_counter(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[5]~input_o\,
	datab => \k[6]~input_o\,
	datac => s_counter(5),
	datad => s_counter(4),
	combout => \clkout~2_combout\);

\k[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(7),
	o => \k[7]~input_o\);

\k[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(8),
	o => \k[8]~input_o\);

\s_counter[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[6]~41_combout\ = (s_counter(6) & (!\s_counter[5]~40\)) # (!s_counter(6) & ((\s_counter[5]~40\) # (GND)))
-- \s_counter[6]~42\ = CARRY((!\s_counter[5]~40\) # (!s_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(6),
	datad => VCC,
	cin => \s_counter[5]~40\,
	combout => \s_counter[6]~41_combout\,
	cout => \s_counter[6]~42\);

\s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[6]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(6));

\s_counter[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[7]~43_combout\ = (s_counter(7) & (\s_counter[6]~42\ $ (GND))) # (!s_counter(7) & (!\s_counter[6]~42\ & VCC))
-- \s_counter[7]~44\ = CARRY((s_counter(7) & !\s_counter[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(7),
	datad => VCC,
	cin => \s_counter[6]~42\,
	combout => \s_counter[7]~43_combout\,
	cout => \s_counter[7]~44\);

\s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(7));

\clkout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~3_combout\ = (\k[7]~input_o\ & (s_counter(6) & (\k[8]~input_o\ $ (!s_counter(7))))) # (!\k[7]~input_o\ & (!s_counter(6) & (\k[8]~input_o\ $ (!s_counter(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[7]~input_o\,
	datab => \k[8]~input_o\,
	datac => s_counter(7),
	datad => s_counter(6),
	combout => \clkout~3_combout\);

\clkout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~4_combout\ = (\clkout~0_combout\ & (\clkout~1_combout\ & (\clkout~2_combout\ & \clkout~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkout~0_combout\,
	datab => \clkout~1_combout\,
	datac => \clkout~2_combout\,
	datad => \clkout~3_combout\,
	combout => \clkout~4_combout\);

\k[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(9),
	o => \k[9]~input_o\);

\k[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(10),
	o => \k[10]~input_o\);

\s_counter[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[8]~45_combout\ = (s_counter(8) & (!\s_counter[7]~44\)) # (!s_counter(8) & ((\s_counter[7]~44\) # (GND)))
-- \s_counter[8]~46\ = CARRY((!\s_counter[7]~44\) # (!s_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(8),
	datad => VCC,
	cin => \s_counter[7]~44\,
	combout => \s_counter[8]~45_combout\,
	cout => \s_counter[8]~46\);

\s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[8]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(8));

\s_counter[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[9]~47_combout\ = (s_counter(9) & (\s_counter[8]~46\ $ (GND))) # (!s_counter(9) & (!\s_counter[8]~46\ & VCC))
-- \s_counter[9]~48\ = CARRY((s_counter(9) & !\s_counter[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(9),
	datad => VCC,
	cin => \s_counter[8]~46\,
	combout => \s_counter[9]~47_combout\,
	cout => \s_counter[9]~48\);

\s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(9));

\clkout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~5_combout\ = (\k[9]~input_o\ & (s_counter(8) & (\k[10]~input_o\ $ (!s_counter(9))))) # (!\k[9]~input_o\ & (!s_counter(8) & (\k[10]~input_o\ $ (!s_counter(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[9]~input_o\,
	datab => \k[10]~input_o\,
	datac => s_counter(9),
	datad => s_counter(8),
	combout => \clkout~5_combout\);

\k[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(11),
	o => \k[11]~input_o\);

\k[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(12),
	o => \k[12]~input_o\);

\s_counter[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[10]~49_combout\ = (s_counter(10) & (!\s_counter[9]~48\)) # (!s_counter(10) & ((\s_counter[9]~48\) # (GND)))
-- \s_counter[10]~50\ = CARRY((!\s_counter[9]~48\) # (!s_counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(10),
	datad => VCC,
	cin => \s_counter[9]~48\,
	combout => \s_counter[10]~49_combout\,
	cout => \s_counter[10]~50\);

\s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[10]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(10));

\s_counter[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[11]~51_combout\ = (s_counter(11) & (\s_counter[10]~50\ $ (GND))) # (!s_counter(11) & (!\s_counter[10]~50\ & VCC))
-- \s_counter[11]~52\ = CARRY((s_counter(11) & !\s_counter[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(11),
	datad => VCC,
	cin => \s_counter[10]~50\,
	combout => \s_counter[11]~51_combout\,
	cout => \s_counter[11]~52\);

\s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[11]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(11));

\clkout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~6_combout\ = (\k[11]~input_o\ & (s_counter(10) & (\k[12]~input_o\ $ (!s_counter(11))))) # (!\k[11]~input_o\ & (!s_counter(10) & (\k[12]~input_o\ $ (!s_counter(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[11]~input_o\,
	datab => \k[12]~input_o\,
	datac => s_counter(11),
	datad => s_counter(10),
	combout => \clkout~6_combout\);

\k[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(13),
	o => \k[13]~input_o\);

\k[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(14),
	o => \k[14]~input_o\);

\s_counter[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[12]~53_combout\ = (s_counter(12) & (!\s_counter[11]~52\)) # (!s_counter(12) & ((\s_counter[11]~52\) # (GND)))
-- \s_counter[12]~54\ = CARRY((!\s_counter[11]~52\) # (!s_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(12),
	datad => VCC,
	cin => \s_counter[11]~52\,
	combout => \s_counter[12]~53_combout\,
	cout => \s_counter[12]~54\);

\s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[12]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(12));

\s_counter[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[13]~55_combout\ = (s_counter(13) & (\s_counter[12]~54\ $ (GND))) # (!s_counter(13) & (!\s_counter[12]~54\ & VCC))
-- \s_counter[13]~56\ = CARRY((s_counter(13) & !\s_counter[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(13),
	datad => VCC,
	cin => \s_counter[12]~54\,
	combout => \s_counter[13]~55_combout\,
	cout => \s_counter[13]~56\);

\s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(13));

\clkout~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~7_combout\ = (\k[13]~input_o\ & (s_counter(12) & (\k[14]~input_o\ $ (!s_counter(13))))) # (!\k[13]~input_o\ & (!s_counter(12) & (\k[14]~input_o\ $ (!s_counter(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[13]~input_o\,
	datab => \k[14]~input_o\,
	datac => s_counter(13),
	datad => s_counter(12),
	combout => \clkout~7_combout\);

\k[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(15),
	o => \k[15]~input_o\);

\k[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(16),
	o => \k[16]~input_o\);

\s_counter[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[14]~57_combout\ = (s_counter(14) & (!\s_counter[13]~56\)) # (!s_counter(14) & ((\s_counter[13]~56\) # (GND)))
-- \s_counter[14]~58\ = CARRY((!\s_counter[13]~56\) # (!s_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(14),
	datad => VCC,
	cin => \s_counter[13]~56\,
	combout => \s_counter[14]~57_combout\,
	cout => \s_counter[14]~58\);

\s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(14));

\s_counter[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[15]~59_combout\ = (s_counter(15) & (\s_counter[14]~58\ $ (GND))) # (!s_counter(15) & (!\s_counter[14]~58\ & VCC))
-- \s_counter[15]~60\ = CARRY((s_counter(15) & !\s_counter[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(15),
	datad => VCC,
	cin => \s_counter[14]~58\,
	combout => \s_counter[15]~59_combout\,
	cout => \s_counter[15]~60\);

\s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[15]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(15));

\clkout~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~8_combout\ = (\k[15]~input_o\ & (s_counter(14) & (\k[16]~input_o\ $ (!s_counter(15))))) # (!\k[15]~input_o\ & (!s_counter(14) & (\k[16]~input_o\ $ (!s_counter(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[15]~input_o\,
	datab => \k[16]~input_o\,
	datac => s_counter(15),
	datad => s_counter(14),
	combout => \clkout~8_combout\);

\clkout~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~9_combout\ = (\clkout~5_combout\ & (\clkout~6_combout\ & (\clkout~7_combout\ & \clkout~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkout~5_combout\,
	datab => \clkout~6_combout\,
	datac => \clkout~7_combout\,
	datad => \clkout~8_combout\,
	combout => \clkout~9_combout\);

\k[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(17),
	o => \k[17]~input_o\);

\k[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(18),
	o => \k[18]~input_o\);

\s_counter[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[16]~61_combout\ = (s_counter(16) & (!\s_counter[15]~60\)) # (!s_counter(16) & ((\s_counter[15]~60\) # (GND)))
-- \s_counter[16]~62\ = CARRY((!\s_counter[15]~60\) # (!s_counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(16),
	datad => VCC,
	cin => \s_counter[15]~60\,
	combout => \s_counter[16]~61_combout\,
	cout => \s_counter[16]~62\);

\s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[16]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(16));

\s_counter[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[17]~63_combout\ = (s_counter(17) & (\s_counter[16]~62\ $ (GND))) # (!s_counter(17) & (!\s_counter[16]~62\ & VCC))
-- \s_counter[17]~64\ = CARRY((s_counter(17) & !\s_counter[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(17),
	datad => VCC,
	cin => \s_counter[16]~62\,
	combout => \s_counter[17]~63_combout\,
	cout => \s_counter[17]~64\);

\s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[17]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(17));

\clkout~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~10_combout\ = (\k[17]~input_o\ & (s_counter(16) & (\k[18]~input_o\ $ (!s_counter(17))))) # (!\k[17]~input_o\ & (!s_counter(16) & (\k[18]~input_o\ $ (!s_counter(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[17]~input_o\,
	datab => \k[18]~input_o\,
	datac => s_counter(17),
	datad => s_counter(16),
	combout => \clkout~10_combout\);

\k[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(19),
	o => \k[19]~input_o\);

\k[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(20),
	o => \k[20]~input_o\);

\s_counter[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[18]~65_combout\ = (s_counter(18) & (!\s_counter[17]~64\)) # (!s_counter(18) & ((\s_counter[17]~64\) # (GND)))
-- \s_counter[18]~66\ = CARRY((!\s_counter[17]~64\) # (!s_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(18),
	datad => VCC,
	cin => \s_counter[17]~64\,
	combout => \s_counter[18]~65_combout\,
	cout => \s_counter[18]~66\);

\s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(18));

\s_counter[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[19]~67_combout\ = (s_counter(19) & (\s_counter[18]~66\ $ (GND))) # (!s_counter(19) & (!\s_counter[18]~66\ & VCC))
-- \s_counter[19]~68\ = CARRY((s_counter(19) & !\s_counter[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(19),
	datad => VCC,
	cin => \s_counter[18]~66\,
	combout => \s_counter[19]~67_combout\,
	cout => \s_counter[19]~68\);

\s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[19]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(19));

\clkout~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~11_combout\ = (\k[19]~input_o\ & (s_counter(18) & (\k[20]~input_o\ $ (!s_counter(19))))) # (!\k[19]~input_o\ & (!s_counter(18) & (\k[20]~input_o\ $ (!s_counter(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[19]~input_o\,
	datab => \k[20]~input_o\,
	datac => s_counter(19),
	datad => s_counter(18),
	combout => \clkout~11_combout\);

\k[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(21),
	o => \k[21]~input_o\);

\k[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(22),
	o => \k[22]~input_o\);

\s_counter[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[20]~69_combout\ = (s_counter(20) & (!\s_counter[19]~68\)) # (!s_counter(20) & ((\s_counter[19]~68\) # (GND)))
-- \s_counter[20]~70\ = CARRY((!\s_counter[19]~68\) # (!s_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(20),
	datad => VCC,
	cin => \s_counter[19]~68\,
	combout => \s_counter[20]~69_combout\,
	cout => \s_counter[20]~70\);

\s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[20]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(20));

\s_counter[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[21]~71_combout\ = (s_counter(21) & (\s_counter[20]~70\ $ (GND))) # (!s_counter(21) & (!\s_counter[20]~70\ & VCC))
-- \s_counter[21]~72\ = CARRY((s_counter(21) & !\s_counter[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(21),
	datad => VCC,
	cin => \s_counter[20]~70\,
	combout => \s_counter[21]~71_combout\,
	cout => \s_counter[21]~72\);

\s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[21]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(21));

\clkout~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~12_combout\ = (\k[21]~input_o\ & (s_counter(20) & (\k[22]~input_o\ $ (!s_counter(21))))) # (!\k[21]~input_o\ & (!s_counter(20) & (\k[22]~input_o\ $ (!s_counter(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[21]~input_o\,
	datab => \k[22]~input_o\,
	datac => s_counter(21),
	datad => s_counter(20),
	combout => \clkout~12_combout\);

\k[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(23),
	o => \k[23]~input_o\);

\k[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(24),
	o => \k[24]~input_o\);

\s_counter[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[22]~73_combout\ = (s_counter(22) & (!\s_counter[21]~72\)) # (!s_counter(22) & ((\s_counter[21]~72\) # (GND)))
-- \s_counter[22]~74\ = CARRY((!\s_counter[21]~72\) # (!s_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(22),
	datad => VCC,
	cin => \s_counter[21]~72\,
	combout => \s_counter[22]~73_combout\,
	cout => \s_counter[22]~74\);

\s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[22]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(22));

\s_counter[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[23]~75_combout\ = (s_counter(23) & (\s_counter[22]~74\ $ (GND))) # (!s_counter(23) & (!\s_counter[22]~74\ & VCC))
-- \s_counter[23]~76\ = CARRY((s_counter(23) & !\s_counter[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(23),
	datad => VCC,
	cin => \s_counter[22]~74\,
	combout => \s_counter[23]~75_combout\,
	cout => \s_counter[23]~76\);

\s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[23]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(23));

\clkout~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~13_combout\ = (\k[23]~input_o\ & (s_counter(22) & (\k[24]~input_o\ $ (!s_counter(23))))) # (!\k[23]~input_o\ & (!s_counter(22) & (\k[24]~input_o\ $ (!s_counter(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[23]~input_o\,
	datab => \k[24]~input_o\,
	datac => s_counter(23),
	datad => s_counter(22),
	combout => \clkout~13_combout\);

\clkout~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~14_combout\ = (\clkout~10_combout\ & (\clkout~11_combout\ & (\clkout~12_combout\ & \clkout~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkout~10_combout\,
	datab => \clkout~11_combout\,
	datac => \clkout~12_combout\,
	datad => \clkout~13_combout\,
	combout => \clkout~14_combout\);

\k[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(25),
	o => \k[25]~input_o\);

\k[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(26),
	o => \k[26]~input_o\);

\s_counter[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[24]~77_combout\ = (s_counter(24) & (!\s_counter[23]~76\)) # (!s_counter(24) & ((\s_counter[23]~76\) # (GND)))
-- \s_counter[24]~78\ = CARRY((!\s_counter[23]~76\) # (!s_counter(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(24),
	datad => VCC,
	cin => \s_counter[23]~76\,
	combout => \s_counter[24]~77_combout\,
	cout => \s_counter[24]~78\);

\s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[24]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(24));

\s_counter[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[25]~79_combout\ = (s_counter(25) & (\s_counter[24]~78\ $ (GND))) # (!s_counter(25) & (!\s_counter[24]~78\ & VCC))
-- \s_counter[25]~80\ = CARRY((s_counter(25) & !\s_counter[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(25),
	datad => VCC,
	cin => \s_counter[24]~78\,
	combout => \s_counter[25]~79_combout\,
	cout => \s_counter[25]~80\);

\s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[25]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(25));

\clkout~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~15_combout\ = (\k[25]~input_o\ & (s_counter(24) & (\k[26]~input_o\ $ (!s_counter(25))))) # (!\k[25]~input_o\ & (!s_counter(24) & (\k[26]~input_o\ $ (!s_counter(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[25]~input_o\,
	datab => \k[26]~input_o\,
	datac => s_counter(25),
	datad => s_counter(24),
	combout => \clkout~15_combout\);

\k[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(27),
	o => \k[27]~input_o\);

\k[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(28),
	o => \k[28]~input_o\);

\s_counter[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[26]~81_combout\ = (s_counter(26) & (!\s_counter[25]~80\)) # (!s_counter(26) & ((\s_counter[25]~80\) # (GND)))
-- \s_counter[26]~82\ = CARRY((!\s_counter[25]~80\) # (!s_counter(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(26),
	datad => VCC,
	cin => \s_counter[25]~80\,
	combout => \s_counter[26]~81_combout\,
	cout => \s_counter[26]~82\);

\s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[26]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(26));

\s_counter[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[27]~83_combout\ = (s_counter(27) & (\s_counter[26]~82\ $ (GND))) # (!s_counter(27) & (!\s_counter[26]~82\ & VCC))
-- \s_counter[27]~84\ = CARRY((s_counter(27) & !\s_counter[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(27),
	datad => VCC,
	cin => \s_counter[26]~82\,
	combout => \s_counter[27]~83_combout\,
	cout => \s_counter[27]~84\);

\s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[27]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(27));

\clkout~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~16_combout\ = (\k[27]~input_o\ & (s_counter(26) & (\k[28]~input_o\ $ (!s_counter(27))))) # (!\k[27]~input_o\ & (!s_counter(26) & (\k[28]~input_o\ $ (!s_counter(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[27]~input_o\,
	datab => \k[28]~input_o\,
	datac => s_counter(27),
	datad => s_counter(26),
	combout => \clkout~16_combout\);

\k[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(29),
	o => \k[29]~input_o\);

\k[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(30),
	o => \k[30]~input_o\);

\s_counter[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[28]~85_combout\ = (s_counter(28) & (!\s_counter[27]~84\)) # (!s_counter(28) & ((\s_counter[27]~84\) # (GND)))
-- \s_counter[28]~86\ = CARRY((!\s_counter[27]~84\) # (!s_counter(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(28),
	datad => VCC,
	cin => \s_counter[27]~84\,
	combout => \s_counter[28]~85_combout\,
	cout => \s_counter[28]~86\);

\s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[28]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(28));

\s_counter[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[29]~87_combout\ = (s_counter(29) & (\s_counter[28]~86\ $ (GND))) # (!s_counter(29) & (!\s_counter[28]~86\ & VCC))
-- \s_counter[29]~88\ = CARRY((s_counter(29) & !\s_counter[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(29),
	datad => VCC,
	cin => \s_counter[28]~86\,
	combout => \s_counter[29]~87_combout\,
	cout => \s_counter[29]~88\);

\s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[29]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(29));

\clkout~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~17_combout\ = (\k[29]~input_o\ & (s_counter(28) & (\k[30]~input_o\ $ (!s_counter(29))))) # (!\k[29]~input_o\ & (!s_counter(28) & (\k[30]~input_o\ $ (!s_counter(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[29]~input_o\,
	datab => \k[30]~input_o\,
	datac => s_counter(29),
	datad => s_counter(28),
	combout => \clkout~17_combout\);

\k[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(31),
	o => \k[31]~input_o\);

\s_counter[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[30]~89_combout\ = (s_counter(30) & (!\s_counter[29]~88\)) # (!s_counter(30) & ((\s_counter[29]~88\) # (GND)))
-- \s_counter[30]~90\ = CARRY((!\s_counter[29]~88\) # (!s_counter(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(30),
	datad => VCC,
	cin => \s_counter[29]~88\,
	combout => \s_counter[30]~89_combout\,
	cout => \s_counter[30]~90\);

\s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[30]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(30));

\s_counter[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[31]~91_combout\ = s_counter(31) $ (!\s_counter[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(31),
	cin => \s_counter[30]~90\,
	combout => \s_counter[31]~91_combout\);

\s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \s_counter[31]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(31));

\clkout~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~18_combout\ = (\clkout~17_combout\ & (!s_counter(31) & (\k[31]~input_o\ $ (!s_counter(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkout~17_combout\,
	datab => \k[31]~input_o\,
	datac => s_counter(30),
	datad => s_counter(31),
	combout => \clkout~18_combout\);

\clkout~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~19_combout\ = (\clkout~14_combout\ & (\clkout~15_combout\ & (\clkout~16_combout\ & \clkout~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkout~14_combout\,
	datab => \clkout~15_combout\,
	datac => \clkout~16_combout\,
	datad => \clkout~18_combout\,
	combout => \clkout~19_combout\);

\clkout~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~20_combout\ = (\clkout~reg0_q\) # ((\clkout~4_combout\ & (\clkout~9_combout\ & \clkout~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkout~reg0_q\,
	datab => \clkout~4_combout\,
	datac => \clkout~9_combout\,
	datad => \clkout~19_combout\,
	combout => \clkout~20_combout\);

\k[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(0),
	o => \k[0]~input_o\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \k[0]~input_o\ $ (VCC)
-- \Add0~1\ = CARRY(\k[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\k[1]~input_o\ & (\Add0~1\ & VCC)) # (!\k[1]~input_o\ & (!\Add0~1\))
-- \Add0~3\ = CARRY((!\k[1]~input_o\ & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (s_counter(0) & (\Add0~0_combout\ & (s_counter(1) $ (!\Add0~2_combout\)))) # (!s_counter(0) & (!\Add0~0_combout\ & (s_counter(1) $ (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(0),
	datab => s_counter(1),
	datac => \Add0~2_combout\,
	datad => \Add0~0_combout\,
	combout => \Equal1~0_combout\);

\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\k[2]~input_o\ & ((GND) # (!\Add0~3\))) # (!\k[2]~input_o\ & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((\k[2]~input_o\) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\k[3]~input_o\ & (\Add0~5\ & VCC)) # (!\k[3]~input_o\ & (!\Add0~5\))
-- \Add0~7\ = CARRY((!\k[3]~input_o\ & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (s_counter(2) & (\Add0~4_combout\ & (s_counter(3) $ (!\Add0~6_combout\)))) # (!s_counter(2) & (!\Add0~4_combout\ & (s_counter(3) $ (!\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(2),
	datab => s_counter(3),
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \Equal1~1_combout\);

\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\k[4]~input_o\ & ((GND) # (!\Add0~7\))) # (!\k[4]~input_o\ & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((\k[4]~input_o\) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\k[5]~input_o\ & (\Add0~9\ & VCC)) # (!\k[5]~input_o\ & (!\Add0~9\))
-- \Add0~11\ = CARRY((!\k[5]~input_o\ & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (s_counter(4) & (\Add0~8_combout\ & (s_counter(5) $ (!\Add0~10_combout\)))) # (!s_counter(4) & (!\Add0~8_combout\ & (s_counter(5) $ (!\Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(4),
	datab => s_counter(5),
	datac => \Add0~10_combout\,
	datad => \Add0~8_combout\,
	combout => \Equal1~2_combout\);

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\k[6]~input_o\ & ((GND) # (!\Add0~11\))) # (!\k[6]~input_o\ & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((\k[6]~input_o\) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\k[7]~input_o\ & (\Add0~13\ & VCC)) # (!\k[7]~input_o\ & (!\Add0~13\))
-- \Add0~15\ = CARRY((!\k[7]~input_o\ & !\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (s_counter(6) & (\Add0~12_combout\ & (s_counter(7) $ (!\Add0~14_combout\)))) # (!s_counter(6) & (!\Add0~12_combout\ & (s_counter(7) $ (!\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(6),
	datab => s_counter(7),
	datac => \Add0~14_combout\,
	datad => \Add0~12_combout\,
	combout => \Equal1~3_combout\);

\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~0_combout\ & (\Equal1~1_combout\ & (\Equal1~2_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\k[8]~input_o\ & ((GND) # (!\Add0~15\))) # (!\k[8]~input_o\ & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((\k[8]~input_o\) # (!\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[8]~input_o\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\k[9]~input_o\ & (\Add0~17\ & VCC)) # (!\k[9]~input_o\ & (!\Add0~17\))
-- \Add0~19\ = CARRY((!\k[9]~input_o\ & !\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[9]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (s_counter(8) & (\Add0~16_combout\ & (s_counter(9) $ (!\Add0~18_combout\)))) # (!s_counter(8) & (!\Add0~16_combout\ & (s_counter(9) $ (!\Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(8),
	datab => s_counter(9),
	datac => \Add0~18_combout\,
	datad => \Add0~16_combout\,
	combout => \Equal1~5_combout\);

\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\k[10]~input_o\ & ((GND) # (!\Add0~19\))) # (!\k[10]~input_o\ & (\Add0~19\ $ (GND)))
-- \Add0~21\ = CARRY((\k[10]~input_o\) # (!\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[10]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\k[11]~input_o\ & (\Add0~21\ & VCC)) # (!\k[11]~input_o\ & (!\Add0~21\))
-- \Add0~23\ = CARRY((!\k[11]~input_o\ & !\Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[11]~input_o\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (s_counter(10) & (\Add0~20_combout\ & (s_counter(11) $ (!\Add0~22_combout\)))) # (!s_counter(10) & (!\Add0~20_combout\ & (s_counter(11) $ (!\Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(10),
	datab => s_counter(11),
	datac => \Add0~22_combout\,
	datad => \Add0~20_combout\,
	combout => \Equal1~6_combout\);

\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\k[12]~input_o\ & ((GND) # (!\Add0~23\))) # (!\k[12]~input_o\ & (\Add0~23\ $ (GND)))
-- \Add0~25\ = CARRY((\k[12]~input_o\) # (!\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[12]~input_o\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\k[13]~input_o\ & (\Add0~25\ & VCC)) # (!\k[13]~input_o\ & (!\Add0~25\))
-- \Add0~27\ = CARRY((!\k[13]~input_o\ & !\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[13]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (s_counter(12) & (\Add0~24_combout\ & (s_counter(13) $ (!\Add0~26_combout\)))) # (!s_counter(12) & (!\Add0~24_combout\ & (s_counter(13) $ (!\Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(12),
	datab => s_counter(13),
	datac => \Add0~26_combout\,
	datad => \Add0~24_combout\,
	combout => \Equal1~7_combout\);

\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\k[14]~input_o\ & ((GND) # (!\Add0~27\))) # (!\k[14]~input_o\ & (\Add0~27\ $ (GND)))
-- \Add0~29\ = CARRY((\k[14]~input_o\) # (!\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[14]~input_o\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\k[15]~input_o\ & (\Add0~29\ & VCC)) # (!\k[15]~input_o\ & (!\Add0~29\))
-- \Add0~31\ = CARRY((!\k[15]~input_o\ & !\Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[15]~input_o\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = s_counter(14) $ (\Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_counter(14),
	datad => \Add0~28_combout\,
	combout => \Equal1~8_combout\);

\Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~7_combout\ & (!\Equal1~8_combout\ & (s_counter(15) $ (!\Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7_combout\,
	datab => s_counter(15),
	datac => \Add0~30_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal1~9_combout\);

\Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~4_combout\ & (\Equal1~5_combout\ & (\Equal1~6_combout\ & \Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal1~5_combout\,
	datac => \Equal1~6_combout\,
	datad => \Equal1~9_combout\,
	combout => \Equal1~10_combout\);

\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\k[16]~input_o\ & ((GND) # (!\Add0~31\))) # (!\k[16]~input_o\ & (\Add0~31\ $ (GND)))
-- \Add0~33\ = CARRY((\k[16]~input_o\) # (!\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[16]~input_o\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\k[17]~input_o\ & (\Add0~33\ & VCC)) # (!\k[17]~input_o\ & (!\Add0~33\))
-- \Add0~35\ = CARRY((!\k[17]~input_o\ & !\Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[17]~input_o\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

\Equal1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~11_combout\ = (s_counter(16) & (\Add0~32_combout\ & (s_counter(17) $ (!\Add0~34_combout\)))) # (!s_counter(16) & (!\Add0~32_combout\ & (s_counter(17) $ (!\Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(16),
	datab => s_counter(17),
	datac => \Add0~34_combout\,
	datad => \Add0~32_combout\,
	combout => \Equal1~11_combout\);

\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\k[18]~input_o\ & ((GND) # (!\Add0~35\))) # (!\k[18]~input_o\ & (\Add0~35\ $ (GND)))
-- \Add0~37\ = CARRY((\k[18]~input_o\) # (!\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[18]~input_o\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\k[19]~input_o\ & (\Add0~37\ & VCC)) # (!\k[19]~input_o\ & (!\Add0~37\))
-- \Add0~39\ = CARRY((!\k[19]~input_o\ & !\Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[19]~input_o\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

\Equal1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~12_combout\ = (s_counter(18) & (\Add0~36_combout\ & (s_counter(19) $ (!\Add0~38_combout\)))) # (!s_counter(18) & (!\Add0~36_combout\ & (s_counter(19) $ (!\Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(18),
	datab => s_counter(19),
	datac => \Add0~38_combout\,
	datad => \Add0~36_combout\,
	combout => \Equal1~12_combout\);

\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\k[20]~input_o\ & ((GND) # (!\Add0~39\))) # (!\k[20]~input_o\ & (\Add0~39\ $ (GND)))
-- \Add0~41\ = CARRY((\k[20]~input_o\) # (!\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[20]~input_o\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\k[21]~input_o\ & (\Add0~41\ & VCC)) # (!\k[21]~input_o\ & (!\Add0~41\))
-- \Add0~43\ = CARRY((!\k[21]~input_o\ & !\Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[21]~input_o\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

\Equal1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~13_combout\ = (s_counter(20) & (\Add0~40_combout\ & (s_counter(21) $ (!\Add0~42_combout\)))) # (!s_counter(20) & (!\Add0~40_combout\ & (s_counter(21) $ (!\Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(20),
	datab => s_counter(21),
	datac => \Add0~42_combout\,
	datad => \Add0~40_combout\,
	combout => \Equal1~13_combout\);

\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\k[22]~input_o\ & ((GND) # (!\Add0~43\))) # (!\k[22]~input_o\ & (\Add0~43\ $ (GND)))
-- \Add0~45\ = CARRY((\k[22]~input_o\) # (!\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[22]~input_o\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\k[23]~input_o\ & (\Add0~45\ & VCC)) # (!\k[23]~input_o\ & (!\Add0~45\))
-- \Add0~47\ = CARRY((!\k[23]~input_o\ & !\Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[23]~input_o\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

\Equal1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~14_combout\ = (s_counter(22) & (\Add0~44_combout\ & (s_counter(23) $ (!\Add0~46_combout\)))) # (!s_counter(22) & (!\Add0~44_combout\ & (s_counter(23) $ (!\Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(22),
	datab => s_counter(23),
	datac => \Add0~46_combout\,
	datad => \Add0~44_combout\,
	combout => \Equal1~14_combout\);

\Equal1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~15_combout\ = (\Equal1~11_combout\ & (\Equal1~12_combout\ & (\Equal1~13_combout\ & \Equal1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~11_combout\,
	datab => \Equal1~12_combout\,
	datac => \Equal1~13_combout\,
	datad => \Equal1~14_combout\,
	combout => \Equal1~15_combout\);

\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\k[24]~input_o\ & ((GND) # (!\Add0~47\))) # (!\k[24]~input_o\ & (\Add0~47\ $ (GND)))
-- \Add0~49\ = CARRY((\k[24]~input_o\) # (!\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[24]~input_o\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\k[25]~input_o\ & (\Add0~49\ & VCC)) # (!\k[25]~input_o\ & (!\Add0~49\))
-- \Add0~51\ = CARRY((!\k[25]~input_o\ & !\Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[25]~input_o\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

\Equal1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~16_combout\ = (s_counter(24) & (\Add0~48_combout\ & (s_counter(25) $ (!\Add0~50_combout\)))) # (!s_counter(24) & (!\Add0~48_combout\ & (s_counter(25) $ (!\Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(24),
	datab => s_counter(25),
	datac => \Add0~50_combout\,
	datad => \Add0~48_combout\,
	combout => \Equal1~16_combout\);

\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\k[26]~input_o\ & ((GND) # (!\Add0~51\))) # (!\k[26]~input_o\ & (\Add0~51\ $ (GND)))
-- \Add0~53\ = CARRY((\k[26]~input_o\) # (!\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[26]~input_o\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\k[27]~input_o\ & (\Add0~53\ & VCC)) # (!\k[27]~input_o\ & (!\Add0~53\))
-- \Add0~55\ = CARRY((!\k[27]~input_o\ & !\Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[27]~input_o\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

\Equal1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~17_combout\ = (s_counter(26) & (\Add0~52_combout\ & (s_counter(27) $ (!\Add0~54_combout\)))) # (!s_counter(26) & (!\Add0~52_combout\ & (s_counter(27) $ (!\Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(26),
	datab => s_counter(27),
	datac => \Add0~54_combout\,
	datad => \Add0~52_combout\,
	combout => \Equal1~17_combout\);

\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\k[28]~input_o\ & ((GND) # (!\Add0~55\))) # (!\k[28]~input_o\ & (\Add0~55\ $ (GND)))
-- \Add0~57\ = CARRY((\k[28]~input_o\) # (!\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[28]~input_o\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\k[29]~input_o\ & (\Add0~57\ & VCC)) # (!\k[29]~input_o\ & (!\Add0~57\))
-- \Add0~59\ = CARRY((!\k[29]~input_o\ & !\Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[29]~input_o\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

\Equal1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~18_combout\ = (s_counter(28) & (\Add0~56_combout\ & (s_counter(29) $ (!\Add0~58_combout\)))) # (!s_counter(28) & (!\Add0~56_combout\ & (s_counter(29) $ (!\Add0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(28),
	datab => s_counter(29),
	datac => \Add0~58_combout\,
	datad => \Add0~56_combout\,
	combout => \Equal1~18_combout\);

\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (\k[30]~input_o\ & ((GND) # (!\Add0~59\))) # (!\k[30]~input_o\ & (\Add0~59\ $ (GND)))
-- \Add0~61\ = CARRY((\k[30]~input_o\) # (!\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[30]~input_o\,
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \k[31]~input_o\ $ (!\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[31]~input_o\,
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

\Equal1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~19_combout\ = (s_counter(30) & (\Add0~60_combout\ & (s_counter(31) $ (!\Add0~62_combout\)))) # (!s_counter(30) & (!\Add0~60_combout\ & (s_counter(31) $ (!\Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(30),
	datab => s_counter(31),
	datac => \Add0~62_combout\,
	datad => \Add0~60_combout\,
	combout => \Equal1~19_combout\);

\Equal1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~20_combout\ = (\Equal1~16_combout\ & (\Equal1~17_combout\ & (\Equal1~18_combout\ & \Equal1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~16_combout\,
	datab => \Equal1~17_combout\,
	datac => \Equal1~18_combout\,
	datad => \Equal1~19_combout\,
	combout => \Equal1~20_combout\);

\clkout~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkout~21_combout\ = (\clkout~20_combout\ & (((!\Equal1~20_combout\) # (!\Equal1~15_combout\)) # (!\Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkout~20_combout\,
	datab => \Equal1~10_combout\,
	datac => \Equal1~15_combout\,
	datad => \Equal1~20_combout\,
	combout => \clkout~21_combout\);

\clkout~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~input_o\,
	d => \clkout~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkout~reg0_q\);

ww_clkout <= \clkout~output_o\;
END structure;


